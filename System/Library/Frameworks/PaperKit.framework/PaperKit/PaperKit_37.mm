__C::CGRect __swiftcall ReflowTextLine.caretRect(at:)(CGPoint at)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[8];
  v5 = v1[7] - v2;
  v6 = ((at.x - v2) * v5 + (at.y - v3) * (v4 - v3)) / (v5 * v5 + (v4 - v3) * (v4 - v3));
  v7 = v5 * v6;
  v8 = (v4 - v3) * v6;
  v9 = v2 + v7;
  v10 = v3 + v8;
  v11 = (v3 + v4) * 0.5 - (v1[10] + v1[12]) * 0.5;
  v12 = v10 - v11;
  v13 = 0.0;
  result.size.height = v11;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v9;
  return result;
}

uint64_t specialized Sequence.dropLast(_:)(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v2 = a2;
  v3 = a1;
  if (a1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    v20 = MEMORY[0x1E69E7CC0];
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (!(a2 >> 62))
    {
      v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_29;
    }

LABEL_28:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
LABEL_5:
      v6 = 0;
      v18 = 0;
      while (1)
      {
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x1DA6CE0C0](v6, v2);
            v8 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }
          }

          else
          {
            if (v6 >= *(v4 + 16))
            {
              __break(1u);
              goto LABEL_27;
            }

            v7 = *(v2 + 8 * v6 + 32);

            v8 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              goto LABEL_23;
            }
          }

          v9 = v19;
          v10 = *(v19 + 16);
          if (v10 >= v3)
          {
            break;
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v6;
          if (v8 == v5)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v10)
        {
          break;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v19);
          v19 = v9;
        }

        if (v18 >= *(v9 + 16))
        {
          goto LABEL_32;
        }

        *(v9 + 8 * v18 + 32) = v7;

        specialized ContiguousArray._endMutation()();
        if ((v18 + 1) < v3)
        {
          v11 = v18 + 1;
        }

        else
        {
          v11 = 0;
        }

        v18 = v11;
        v6 = v8;
        if (v8 == v5)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_29:

    v12 = v20;

    return v12;
  }

LABEL_24:
  if (!(v2 >> 62))
  {
    return v2 & 0xFFFFFFFFFFFFFF8;
  }

LABEL_33:
  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
LABEL_36:

    return MEMORY[0x1E69E7CC0];
  }

  v15 = v14;
  v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8PaperKit20AnyCanvasElementViewC_Tt1g5(v14, 0);
  specialized Array._copyContents(initializing:)(v12 + 32, v15, v2);
  v17 = v16;

  if (v17 != v15)
  {
    __break(1u);
    goto LABEL_36;
  }

  return v12;
}

uint64_t Array<A>.nonOverlappingElements.getter(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_43:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v1 & 0xC000000000000001;
  v6 = MEMORY[0x1E69E7CC0];
  while (v4)
  {
    if (__OFSUB__(v4--, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v5)
    {
      v9 = MEMORY[0x1DA6CE0C0](v4, v1);
      v8 = v9;
    }

    else
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }

      if (v4 >= *(v2 + 16))
      {
        goto LABEL_42;
      }

      v8 = *(v1 + 32 + 8 * v4);
    }

    v10 = (*(*v8 + 144))(v9);

    if ((v10 & 1) == 0)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
      }

      else if ((v11 & 0x8000000000000000) == 0)
      {
        if (!v3)
        {
          v12 = *(v2 + 16);
          goto LABEL_22;
        }

        if (v1 < 0)
        {
          v6 = v1;
        }

        else
        {
          v6 = v2;
        }

        if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
        {
          v12 = __CocoaSet.count.getter();
LABEL_22:
          if (v12 >= v11)
          {
            if (v5)
            {
              type metadata accessor for ReflowElement();

              v13 = 0;
              do
              {
                v14 = v13 + 1;
                _ArrayBuffer._typeCheckSlowPath(_:)(v13);
                v13 = v14;
              }

              while (v4 + 1 != v14);
              if (!v3)
              {
LABEL_27:
                v1 = 0;
                v15 = v2 + 32;
                v11 = (2 * v11) | 1;
                if ((v11 & 1) == 0)
                {
                  goto LABEL_31;
                }

LABEL_32:
                v6 = v15;
                type metadata accessor for __ContiguousArrayStorageBase();
                swift_unknownObjectRetain_n();
                v19 = swift_dynamicCastClass();
                if (!v19)
                {
                  swift_unknownObjectRelease();
                  v19 = MEMORY[0x1E69E7CC0];
                }

                v20 = *(v19 + 16);

                if (!__OFSUB__(v11 >> 1, v1))
                {
                  if (v20 == (v11 >> 1) - v1)
                  {
                    v6 = swift_dynamicCastClass();
                    swift_unknownObjectRelease();
                    if (v6)
                    {
                      return v6;
                    }

                    v6 = MEMORY[0x1E69E7CC0];
                    goto LABEL_38;
                  }

LABEL_49:
                  swift_unknownObjectRelease();
                  v15 = v6;
LABEL_31:
                  specialized _copyCollectionToContiguousArray<A>(_:)(v2, v15, v1, v11);
                  v6 = v18;
LABEL_38:
                  swift_unknownObjectRelease();
                  return v6;
                }

LABEL_48:
                __break(1u);
                goto LABEL_49;
              }
            }

            else
            {

              if (!v3)
              {
                goto LABEL_27;
              }
            }

            v2 = _CocoaArrayWrapper.subscript.getter();
            v1 = v16;
            v11 = v17;
            if (v17)
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }

LABEL_46:
          __break(1u);
        }

        __break(1u);
        goto LABEL_48;
      }

      __break(1u);
      goto LABEL_46;
    }
  }

  return v6;
}

uint64_t Array<A>.applyFrames(_:lineIndex:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = a3 & 0xFFFFFFFFFFFFFF8;
    if (a3 >> 62)
    {
      goto LABEL_16;
    }

    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v7 = 0;
      v8 = a2;
      v9 = (result + 48);
      while (v3 != v7)
      {
        if (v6 == v7)
        {
          return result;
        }

        v14 = *v9;
        v15 = *(v9 - 1);
        if ((a3 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1DA6CE0C0](v7, a3);
        }

        else
        {
          if (v7 >= *(v5 + 16))
          {
            goto LABEL_15;
          }
        }

        ++v7;
        *(v10 + 48) = v15;
        *(v10 + 64) = v14;
        *(v10 + 80) = v8;

        v9 += 2;
        if (v3 == v7)
        {
          return result;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v11 = result;
      v12 = a2;
      v13 = __CocoaSet.count.getter();
      a2 = v12;
      v6 = v13;
      result = v11;
    }
  }

  return result;
}

uint64_t _ss10ArraySliceV12arrayLiteralAByxGxd_tcfC8PaperKit13ReflowElementC_Tt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8PaperKit20AnyCanvasElementViewC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

unint64_t ReflowTextLine.addWithSpacingAdjustment(_:textScalePercentage:spacingAdjustment:maxWidth:previousLine:adjustment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v10 = v6;
  v408 = a5;
  v411 = a2;
  v15 = *v10;
  *&v16 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd));
  *&v17 = COERCE_DOUBLE(swift_initStackObject());
  v428 = xmmword_1D405CEB0;
  *(v17 + 16) = xmmword_1D405CEB0;
  *(v17 + 32) = a1;
  *&v429 = v15;
  v410 = v15;

  v407 = a1;

  specialized Array.append<A>(contentsOf:)(v17);
  v18 = v15;
  v19 = v15 >> 62;
  if (v15 >> 62)
  {
    goto LABEL_312;
  }

  v20 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  *&v21 = COERCE_DOUBLE(&v429);
  v423 = v10;
  if (*&v20 != 0.0)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      goto LABEL_313;
    }

    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v18 + 32);

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_315;
  }

  v10 = *a3;
  outlined init with copy of ReflowSpacingAdjustment(a3, &v429);
LABEL_16:
  v17 = *(v423 + 8);
  if (*&v17 != 0.0)
  {
    v7 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 >> 62)
    {
LABEL_315:
      v26 = __CocoaSet.count.getter();
      if (v26)
      {
LABEL_19:
        v27 = __OFSUB__(v26, 1);
        v28 = v26 - 1;
        if (v27)
        {
          goto LABEL_538;
        }

        if ((v17 & 0xC000000000000001) != 0)
        {
          goto LABEL_539;
        }

        if ((v28 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v28 < *(v7 + 16))
        {
          v17 = *(v17 + 8 * v28 + 32);
          goto LABEL_24;
        }

        __break(1u);
LABEL_542:
        __break(1u);
LABEL_543:
        __break(1u);
LABEL_544:
        __break(1u);
LABEL_545:
        __break(1u);
LABEL_546:
        __break(1u);
        goto LABEL_547;
      }
    }

    else
    {
      v26 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        goto LABEL_19;
      }
    }
  }

  outlined destroy of ReflowSpacingAdjustment(a3);
  while (1)
  {
    if (*(a3 + 56))
    {
      goto LABEL_329;
    }

    v239 = *(a3 + 48);
    v240 = *(*a3 + 120);
    if (v239 != v240)
    {
      break;
    }

    a6 = *(a3 + 32);
    v9 = *(a3 + 16);
    if (a6 >= v9)
    {
      break;
    }

    result = specialized Collection<>.firstIndex(of:)(v10, v18);
    if (v241)
    {
      goto LABEL_588;
    }

    v242 = *(a3 + 8);
    v7 = result + v242;
    if (__OFADD__(result, v242))
    {
      goto LABEL_554;
    }

    *&v427 = a4;
    v421 = v16;
    if (v7 < 0)
    {
      goto LABEL_555;
    }

    specialized Array._checkIndex(_:)(0, v18);
    specialized Array._checkIndex(_:)(v7, v18);
    *&v17 = COERCE_DOUBLE(specialized _ArrayBuffer.subscript.getter(0, v7, v18));
    v244 = v243;
    v21 = v245;
    v16 = v246;
    v247 = specialized _SliceBuffer.requestNativeBuffer()(v17, v243, v245, v246);
    if (!v247)
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(v17, v244, v21, v16);
    }

    a4 = v247;
    swift_unknownObjectRelease();
    if (*&v19 == 0.0)
    {
      if (v7 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_394;
      }
    }

    else if (v7 < __CocoaSet.count.getter())
    {
LABEL_394:
      if (v20 < v7)
      {
        goto LABEL_567;
      }

      specialized Array._checkIndex(_:)(v20, v18);
      *&v17 = COERCE_DOUBLE(specialized _ArrayBuffer.subscript.getter(v7, v20, v18));
      v278 = v277;
      v280 = v279;
      v282 = v281;

      v283 = swift_unknownObjectRetain();
      v10 = specialized _SliceBuffer.requestNativeBuffer()(v283, v278, v280, v282);
      swift_unknownObjectRelease();
      if (!v10)
      {
        specialized _copyCollectionToContiguousArray<A>(_:)(v17, v278, v280, v282);
        v10 = v284;
      }

      *&v28 = COERCE_DOUBLE(swift_unknownObjectRelease());
      goto LABEL_398;
    }

    *&v28 = COERCE_DOUBLE();
    v10 = MEMORY[0x1E69E7CC0];
LABEL_398:
    v21 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
      goto LABEL_556;
    }

    v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_400:
    *&v20 = 0.0;
    v19 = v10 & 0xC000000000000001;
    while (v16 != v20)
    {
      if (*&v19 == 0.0)
      {
        if (v20 >= *(v21 + 16))
        {
          goto LABEL_535;
        }

        v18 = *(v10 + 8 * v20 + 32);
        *&v285 = COERCE_DOUBLE();
      }

      else
      {
        *&v285 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v20, v10));
        v18 = v285;
      }

      *&v17 = COERCE_DOUBLE((*(*v18 + 144))(v285));
      *&v28 = COERCE_DOUBLE();
      if ((v17 & 1) == 0)
      {
        goto LABEL_411;
      }

      v27 = __OFADD__(v20++, 1);
      if (v27)
      {
        goto LABEL_536;
      }
    }

    v20 = v16;
LABEL_411:
    if (v16 < v20)
    {
      __break(1u);
LABEL_558:
      __break(1u);
LABEL_559:
      __break(1u);
      goto LABEL_560;
    }

    specialized Array._checkIndex(_:)(v20, v10);
    specialized Array._checkIndex(_:)(v16, v10);
    *&v17 = COERCE_DOUBLE(specialized _ArrayBuffer.subscript.getter(v20, v16, v10));
    v287 = v286;
    v289 = v288;
    v291 = v290;

    v292 = swift_unknownObjectRetain();
    v293 = specialized _SliceBuffer.requestNativeBuffer()(v292, v287, v289, v291);
    swift_unknownObjectRelease();
    if (v293)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(v17, v287, v289, v291);

      swift_unknownObjectRelease();
    }

    v21 = v421;
    v294 = v423;
    v20 = *(v423 + 160);
    v8 = *(v423 + 40);
    v295 = *(v423 + 48);
    v296 = *(v423 + 56);
    v297 = *(v423 + 64);
    specialized static ReflowTextLine.layoutTextAdjustingBackwards(_:textScalePercentage:spacingAdjustment:lineIndex:baseline:previousLine:)(a4, v411, a3, v20, v427, v8, v295, v296, v297);

    a3 = v410;
    if (specialized Array._getCount()(v410) < v7)
    {
      *&a3 = COERCE_DOUBLE(swift_allocObject());
      *(a3 + 16) = v428;
      *(a3 + 32) = v407;

      goto LABEL_511;
    }

    v298 = specialized Array._getCount()(a3);
    if (v298 < v7)
    {
      goto LABEL_568;
    }

    v299 = v298;
    specialized Array._checkIndex(_:)(v7, a3);
    specialized Array._checkIndex(_:)(v299, a3);
    v300 = specialized _ArrayBuffer.subscript.getter(v7, v299, a3);
    v302 = v301;
    v304 = v303;
    v306 = v305;
    inited = swift_initStackObject();
    *(inited + 16) = v428;
    *(inited + 32) = v407;
    *&v429 = v300;
    *(&v429 + 1) = v302;
    *&v430 = v304;
    *(&v430 + 1) = v306;

    *&v18 = COERCE_DOUBLE(&v429);
    *&v28 = COERCE_DOUBLE(specialized ArraySlice.append<A>(contentsOf:)(inited));
    v21 = *(&v429 + 1);
    v10 = v429;
    v7 = *(&v430 + 1);
    v17 = *&v430;
    v16 = *(&v430 + 1) >> 1;
    if (v430 == *(&v430 + 1) >> 1)
    {
      a3 = *&v430;
LABEL_420:
      v147 = v16 < a3;
      v16 = a3;
      if (v147)
      {
        __break(1u);
        goto LABEL_423;
      }

LABEL_507:
      if (v16 >= v17)
      {
        v371 = swift_unknownObjectRetain();
        *&a3 = COERCE_DOUBLE(specialized _SliceBuffer.requestNativeBuffer()(v371, v21, v16, v7));
        swift_unknownObjectRelease();
        if (*&a3 == 0.0)
        {
          specialized _copyCollectionToContiguousArray<A>(_:)(v10, v21, v16, v7);
          a3 = v372;
        }

        swift_unknownObjectRelease();
        v294 = v423;
LABEL_511:
        if (!specialized Array._getCount()(a3))
        {
          goto LABEL_525;
        }

        v373 = vabdd_f64(v9, a6);
        v17 = a3 & 0xC000000000000001;
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a3 & 0xC000000000000001) == 0, a3);
        *&v426 = v295;
        v425 = v296;
        v424 = v297;
        v374 = v8;
        if ((a3 & 0xC000000000000001) != 0)
        {
          v375 = MEMORY[0x1DA6CE0C0](0, a3);
        }

        else
        {
        }

        v376 = v375[2];
        v377 = v375[3];
        v378 = v375[4];
        v379 = v375[5];

        v452.origin.x = v376;
        v452.origin.y = v377;
        v452.size.width = v378;
        v452.size.height = v379;
        v380 = v373 / (CGRectGetMinX(v452) - v9);
        if (v380 >= 0.0)
        {
          v381 = fmin(v380, 1.0);
          if (*&v17 == 0.0)
          {
            goto LABEL_518;
          }

LABEL_516:
          v382 = MEMORY[0x1DA6CE0C0](0, a3);
        }

        else
        {
          v381 = 0.0;
          if (*&v17 != 0.0)
          {
            goto LABEL_516;
          }

LABEL_518:
        }

        v8 = *(v382 + 16);
        v383 = *(v382 + 24);
        v384 = *(v382 + 32);
        v385 = *(v382 + 40);

        v453.origin.x = v8;
        v453.origin.y = v383;
        v453.size.width = v384;
        v453.size.height = v385;
        MinX = CGRectGetMinX(v453);
        v387 = MinX + v381 * (a6 + 15.0 - MinX);
        if (v387 < 0.0)
        {
          v387 = 0.0;
        }

        v388 = v408 - *(v294 + 32);
        if (v387 <= v388)
        {
          v389 = specialized static ReflowTextLine.layout(_:textScalePercentage:span:lineIndex:baseline:hardHeadIndent:softHeadIndent:canCompress:canOverflow:isWholeLine:isReversed:)(a3, v411, v20, 1, 1, 1, 0, v387, v388, v374, *&v426, v425, v424, 0.0, 0.0);
          v391 = specialized Array._getCount()(v390);

          if (v391)
          {

            goto LABEL_329;
          }

          specialized Array.append(_:)();
          Array<A>.applyFrames(_:lineIndex:)(v389, v20, a3);

          goto LABEL_525;
        }

        __break(1u);
LABEL_566:
        __break(1u);
LABEL_567:
        __break(1u);
LABEL_568:
        __break(1u);
      }

      __break(1u);
LABEL_570:
      __break(1u);
LABEL_571:
      v365 = MEMORY[0x1DA6CE0C0](0, v20);
LABEL_495:
      a6 = *(v365 + 16);
      v9 = *(v365 + 24);
      v46 = *(v365 + 32);
      v366 = *(v365 + 40);

      v451.origin.x = a6;
      v451.origin.y = v9;
      v451.size.width = v46;
      v451.size.height = v366;
      v367 = CGRectGetMinX(v451);
      if (v367 <= v399)
      {
        v367 = v399;
      }

      if (v367 <= v8)
      {
        v368 = specialized static ReflowTextLine.layout(_:textScalePercentage:span:lineIndex:baseline:hardHeadIndent:softHeadIndent:canCompress:canOverflow:isWholeLine:isReversed:)(v20, v411, v16, 1, 1, 0, 0, v367, v8, v403, v402, v401, v400, 0.0, 0.0);
        v370 = specialized Array._getCount()(v369);

        if (v370)
        {
          goto LABEL_296;
        }

        specialized Array.append(_:)();
        Array<A>.applyFrames(_:lineIndex:)(v368, v16, v20);

        goto LABEL_525;
      }

      __break(1u);
LABEL_573:
      __break(1u);
LABEL_574:
      __break(1u);
      goto LABEL_575;
    }

    if (v430 <= *(&v430 + 1) >> 1)
    {
      a4 = *(&v430 + 1) >> 1;
    }

    else
    {
      a4 = *&v430;
    }

    a3 = *&v430;
    while (a4 != a3)
    {
      v18 = *(v21 + 8 * a3);
      *&v28 = COERCE_DOUBLE((*(*v18 + 144))(v28));
      if ((v28 & 1) == 0)
      {
        goto LABEL_420;
      }

      if (v16 == ++a3)
      {
        goto LABEL_507;
      }
    }

LABEL_537:
    __break(1u);
LABEL_538:
    __break(1u);
LABEL_539:
    *&v17 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v28, v17));
    swift_unknownObjectRelease();
LABEL_24:
    outlined destroy of ReflowSpacingAdjustment(a3);
    if (v17 == v10 && *(a3 + 8) == 1)
    {

      v30 = v410;
      v19 = a4;
      v18 = v410 & 0xFFFFFFFFFFFFFF8;
      if (v410 >> 62)
      {
        goto LABEL_563;
      }

      v17 = *((v410 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
      *&v20 = 0.0;
      a4 = v30 & 0xC000000000000001;
      v406 = v30 & 0xC000000000000001;
      while (2)
      {
        if (v17 == v20)
        {
          *(v21 + 43) = 0u;
          v430 = 0u;
          v431 = 0u;
          v429 = 0u;
          v25 = ReflowTextLine.add(_:textScalePercentage:spacingAdjustment:maxWidth:previousLine:adjustment:)(v407, v411, &v429, v19, v408, a6);
          return v25 & 1;
        }

        v7 = v30 + 8 * v20;
        if (*&a4 == 0.0)
        {
          if (v20 >= *(v18 + 16))
          {
            goto LABEL_311;
          }

          if (*(v7 + 32) != v10)
          {
            goto LABEL_33;
          }

LABEL_38:
          v33 = *(a3 + 16);
          v402 = *(a3 + 32);
          if (v33 <= v402 && ((*(*v407 + 144))(v29) & 1) == 0)
          {
LABEL_330:
            v25 = 0;
            return v25 & 1;
          }

          v17 = v410;
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v20, a4 == 0, v410);
          v400 = v33;
          if (*&a4 == 0.0)
          {
          }

          else
          {
            v34 = MEMORY[0x1DA6CE0C0](v20, v17);
          }

          v8 = *(v34 + 16);
          a6 = *(v34 + 24);
          v9 = *(v34 + 32);
          v35 = *(v34 + 40);

          v432.origin.x = v8;
          v432.origin.y = a6;
          v432.size.width = v9;
          v432.size.height = v35;
          MaxX = CGRectGetMaxX(v432);
          v7 = v20 + 1;
          v37 = __OFADD__(v20, 1);
          LODWORD(v399) = v37;
          if (MaxX > v402)
          {
            if (!v37)
            {
              v38 = v410;
              specialized Array._checkIndex(_:)(0, v410);
              specialized Array._checkIndex(_:)(v20 + 1, v38);
              v39 = specialized _ArrayBuffer.subscript.getter(0, v20 + 1, v38);
              v41 = v40;
              v43 = v42;
              v21 = v44;
              v45 = specialized _SliceBuffer.requestNativeBuffer()(v39, v40, v42, v44);
              v46 = v400;
              if (!v45)
              {
                specialized _copyCollectionToContiguousArray<A>(_:)(v39, v41, v43, v21);
              }

              v17 = v45;
              swift_unknownObjectRelease();
              v47 = *(v423 + 40);
              v48 = *(v423 + 48);
              v49 = *(v423 + 56);
              v50 = *(v423 + 64);
              v425 = *(v423 + 160);
              v398 = v47;
              v397 = v48;
              v396 = v49;
              v395 = v50;
              specialized static ReflowTextLine.layoutTextAdjustingBackwards(_:textScalePercentage:spacingAdjustment:lineIndex:baseline:previousLine:)(v17, v411, a3, *&v425, v19, v47, v48, v49, v50);

              *&a3 = 0.0;
              goto LABEL_167;
            }

            __break(1u);
LABEL_582:
            __break(1u);
            goto LABEL_583;
          }

          v401 = *&v18;
          if (v37)
          {
            goto LABEL_582;
          }

          v51 = v410;
          specialized Array._checkIndex(_:)(0, v410);
          specialized Array._checkIndex(_:)(v20 + 1, v51);
          *&v17 = COERCE_DOUBLE(specialized _ArrayBuffer.subscript.getter(0, v20 + 1, v51));
          v18 = v52;
          v54 = v53;
          v56 = v55;
          v57 = specialized _SliceBuffer.requestNativeBuffer()(v17, v52, v53, v55);
          if (v57)
          {
            v58 = v57;
            swift_unknownObjectRelease();
            a3 = v58;
          }

          else
          {
            specialized _copyCollectionToContiguousArray<A>(_:)(v17, v18, v54, v56);
            a3 = v59;
            swift_unknownObjectRelease();
          }

          v403 = v408 - *(v423 + 32);
          if (v403 < 0.0)
          {
LABEL_583:
            __break(1u);
          }

          else
          {
            v425 = *(v423 + 160);
            v60 = *(v423 + 48);
            v398 = *(v423 + 40);
            v397 = v60;
            v61 = *(v423 + 64);
            v396 = *(v423 + 56);
            v395 = v61;
            a6 = *(v423 + 24);
            v404 = *(v423 + 16);
            *&v62 = COERCE_DOUBLE(specialized Array._getCount()(a3));
            v19 = v62;
            v419 = *&a3;
            if (*&v62 == 0.0)
            {

              goto LABEL_65;
            }

            v17 = v62 - 1;
            if (!__OFSUB__(v62, 1))
            {
              specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v62 - 1, (a3 & 0xC000000000000001) == 0, a3);
              if ((a3 & 0xC000000000000001) == 0)
              {
                v18 = *(a3 + 8 * v17 + 32);

                *&v63 = COERCE_DOUBLE();
                goto LABEL_62;
              }

LABEL_585:

              *&v63 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v17, a3));
              v18 = v63;
LABEL_62:
              *&v17 = COERCE_DOUBLE((*(*v18 + 144))(v63));

              if (v17)
              {

                *&a3 = COERCE_DOUBLE(specialized Sequence.dropLast(_:)(1, a3));
                goto LABEL_66;
              }

LABEL_65:

LABEL_66:
              v64 = specialized Array._getCount()(a3);
              v420 = 0.0;
              v9 = 0.0;
              v65 = 0.0;
              if (!v64)
              {
                goto LABEL_86;
              }

              v10 = v64;
              v66 = v7;
              *&v17 = 0.0;
              v21 = a3 & 0xC000000000000001;
              v7 = a3 & 0xFFFFFFFFFFFFFF8;
              while (2)
              {
                if (*&v21 != 0.0)
                {
                  v67 = MEMORY[0x1DA6CE0C0](v17, a3);
                  v18 = v17 + 1;
                  if (__OFADD__(v17, 1))
                  {
                    break;
                  }

                  goto LABEL_71;
                }

                if (v17 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_544;
                }

                v18 = v17 + 1;
                if (!__OFADD__(v17, 1))
                {
LABEL_71:
                  v8 = *(v67 + 32);

                  v9 = v9 + v8;
                  ++v17;
                  if (v18 == v10)
                  {
                    goto LABEL_76;
                  }

                  continue;
                }

                break;
              }

              __break(1u);
LABEL_76:
              v68 = 0;
              v65 = 0.0;
              while (2)
              {
                if (*&v21 != 0.0)
                {
                  *&v18 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v68, a3));
                  v17 = v68 + 1;
                  if (__OFADD__(v68, 1))
                  {
                    break;
                  }

                  goto LABEL_80;
                }

                if (v68 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_546;
                }

                v18 = *(a3 + 8 * v68 + 32);

                v17 = v68 + 1;
                if (!__OFADD__(v68, 1))
                {
LABEL_80:
                  v8 = (*(*v18 + 152))();

                  v65 = v65 + v8;
                  ++v68;
                  if (v17 == v10)
                  {
                    goto LABEL_85;
                  }

                  continue;
                }

                break;
              }

              __break(1u);
LABEL_85:
              v7 = v66;
              a4 = v406;
LABEL_86:
              *&v427 = v411 / 100.0;
              v8 = *&v427 * (v404 + a6 + v9);

              if (v403 >= v8)
              {
                v10 = *&v419;
              }

              else
              {
                v10 = *&v419;
                if (v8 - v403 <= a6)
                {
                  a6 = a6 - (v8 - v403);
                }

                else
                {
                  v420 = fmin((v8 - a6 - v403) / (v8 - a6 - *&v427 * (v404 + v65)), 1.0);
                  a6 = 0.0;
                }
              }

              v394 = v7;
              if (*&v19 != 0.0)
              {
                v69 = 1.0 - v420;
                v8 = *&v427;
                v416 = *&v427 * v398;
                v415 = *&v427 * v397;
                v70 = sqrt((v396 - v398) * (v396 - v398) + (v395 - v397) * (v395 - v397));
                v413 = (v395 - v397) / v70;
                sinval = (v396 - v398) / v70;
                v71 = atan2(v413, sinval);
                v417 = v69;
                v9 = v69 * (v8 * a6) + 0.0;
                *&v418 = v10 & 0xC000000000000001;
                *&v408 = v10 + 32;
                v72 = __sincos_stret(v71);
                v412 = *&v72.__sinval;
                cosval = v72.__cosval;
                v73 = 0;
                *&a3 = 0.0;
                *&v7 = MEMORY[0x1E69E7CC0];
                v405 = *&v19;
                v421 = v16;
                while (1)
                {
                  if (v418 == 0.0)
                  {
                    if (v73 >= *(v10 + 16))
                    {
                      goto LABEL_549;
                    }

                    v18 = *(*&v408 + 8 * v73);

                    v19 = v73 + 1;
                    if (__OFADD__(v73, 1))
                    {
                      goto LABEL_548;
                    }
                  }

                  else
                  {
                    *&v18 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v73, v10));
                    v19 = v73 + 1;
                    if (__OFADD__(v73, 1))
                    {
                      goto LABEL_548;
                    }
                  }

                  v74 = *(v18 + 40);
                  v75 = *&v427;
                  v76 = v417 * (*&v427 * *(v18 + 32));
                  v77 = v76 + v420 * (v75 * (*(*v18 + 152))());
                  if (!v73)
                  {
                    v78 = v403 - v77;
                    if (v403 - v77 >= v404)
                    {
                      v78 = v404;
                    }

                    if (v78 < 0.0)
                    {
                      v78 = 0.0;
                    }

                    v9 = v9 + v78;
                  }

                  v79 = *(v18 + 120);
                  v80 = *v18;
                  *&v426 = v77;
                  if (*&v425 == v79)
                  {
                    (*(v80 + 240))();
                  }

                  else
                  {
                    v81 = (*(v80 + 272))();
                  }

                  v83 = v81;
                  v424 = v82;
                  v422 = v9;
                  v84 = v416 + sinval * (v9 / cosval);
                  v85 = v415 + v413 * (v9 / cosval);
                  v86 = *&v427;
                  v9 = *&v427 * v74;
                  v87 = *(v18 + 32);
                  v88 = *(v18 + 40);
                  v433.origin.x = 0.0;
                  v433.origin.y = 0.0;
                  v433.size.width = v87;
                  v433.size.height = v88;
                  v89 = CGRectGetMinX(v433);
                  v434.origin.x = 0.0;
                  v434.origin.y = 0.0;
                  v434.size.width = v87;
                  v434.size.height = v88;
                  v90 = v89 + v83 * CGRectGetWidth(v434);
                  v435.origin.x = 0.0;
                  v435.origin.y = 0.0;
                  v435.size.width = v87;
                  v435.size.height = v88;
                  MinY = CGRectGetMinY(v435);
                  v436.origin.x = 0.0;
                  v436.origin.y = 0.0;
                  v436.size.width = v87;
                  v436.size.height = v88;
                  v92 = v86 * (MinY + v424 * CGRectGetHeight(v436));
                  v93 = v84 - v86 * v90;
                  v94 = v85 - (v92 - *&v412 * (v86 * v90));
                  v96 = *(v18 + 16);
                  v95 = *(v18 + 24);
                  v98 = *(v18 + 32);
                  v97 = *(v18 + 40);
                  v437.origin.x = v93;
                  v437.origin.y = v94;
                  v99 = *&v426;
                  *&v437.size.width = v426;
                  v437.size.height = v9;
                  IsNull = CGRectIsNull(v437);
                  v438.origin.x = v96;
                  v438.origin.y = v95;
                  v438.size.width = v98;
                  v438.size.height = v97;
                  v101 = CGRectIsNull(v438);
                  if (IsNull)
                  {
                    v102 = v101 == 0;
                  }

                  else
                  {
                    v102 = 1;
                  }

                  if (!v102 || ((v103 = vabdd_f64(v93, v96), IsNull == v101) ? (v104 = v103 < 2.0) : (v104 = 0), (v105 = vabdd_f64(v94, v95), v104) ? (v106 = v105 < 2.0) : (v106 = 0), (v107 = vabdd_f64(v99, v98), v106) ? (v108 = v107 < 2.0) : (v108 = 0), (v109 = vabdd_f64(v9, v97), v108) ? (v110 = v109 < 2.0) : (v110 = 0), v110))
                  {
                    v93 = *(v18 + 16);
                    v94 = *(v18 + 24);
                    v99 = *(v18 + 32);
                    v9 = *(v18 + 40);
                  }

                  v111 = floor(v93 + v93);
                  v112 = ceil(v93 + v93);
                  if (v93 + v93 - v111 < 0.49)
                  {
                    a6 = v111;
                  }

                  else
                  {
                    a6 = v112;
                  }

                  v113 = floor(v94 + v94);
                  v114 = ceil(v94 + v94);
                  if (v94 + v94 - v113 < 0.49)
                  {
                    v8 = v113;
                  }

                  else
                  {
                    v8 = v114;
                  }

                  if (v73)
                  {
                    specialized Array._checkIndex(_:)(0, v10);
                    specialized Array._checkIndex(_:)(v73, v10);
                    v115 = specialized _ArrayBuffer.subscript.getter(0, v73, v10);
                    v10 = v115;
                    v17 = v116;
                    v16 = v117;
                    *&v429 = v115;
                    *(&v429 + 1) = v116;
                    *&v430 = v117;
                    *(&v430 + 1) = v118;
                    a4 = v118 >> 1;
                    while (1)
                    {
                      v119 = a4;
                      if (v16 == a4)
                      {
                        break;
                      }

                      --a4;
                      if (__OFSUB__(v119, 1))
                      {
LABEL_309:
                        __break(1u);
LABEL_310:
                        __break(1u);
LABEL_311:
                        __break(1u);
LABEL_312:
                        *&v20 = COERCE_DOUBLE(__CocoaSet.count.getter());
                        goto LABEL_3;
                      }

                      if (a4 < v16)
                      {
                        goto LABEL_310;
                      }

                      type metadata accessor for ReflowWord();
                      v115 = swift_dynamicCastClass();
                      if (v115)
                      {
                        goto LABEL_140;
                      }
                    }

                    *&a4 = 0.0;
LABEL_140:
                    v120 = v9;
                    *&v21 = COERCE_DOUBLE(&v394);
                    MEMORY[0x1EEE9AC00](v115);
                    v393 = &v429;
                    v122 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8PaperKit13ReflowElementCTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v392, a4, v121);
                    swift_unknownObjectRelease();
                    if (v122)
                    {
                      type metadata accessor for ReflowWord();
                      v123 = swift_dynamicCastClass();
                      v16 = v421;
                      a4 = v406;
                      v124 = v422;
                      if (!v123)
                      {
                      }

                      goto LABEL_145;
                    }

                    v16 = v421;
                    a4 = v406;
                  }

                  else
                  {
                    v120 = v9;
                  }

                  v124 = v422;
LABEL_145:
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    *&v7 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7));
                  }

                  v126 = *(v7 + 16);
                  v125 = *(v7 + 24);
                  v17 = v126 + 1;
                  if (v126 >= v125 >> 1)
                  {
                    *&v7 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v125 > 1), v126 + 1, 1, v7));
                  }

                  *(v7 + 16) = *&v17;
                  v127 = v7 + 32 * v126;
                  *(v127 + 32) = a6 * 0.5;
                  *(v127 + 40) = v8 * 0.5;
                  *(v127 + 48) = v99;
                  *(v127 + 56) = v120;
                  v9 = v124 + v99;
                  v73 = v19;
                  v10 = *&v419;
                  if (v19 == *&v405)
                  {
                    goto LABEL_155;
                  }
                }
              }

              *&a3 = 0.0;
              *&v7 = MEMORY[0x1E69E7CC0];
LABEL_155:

              v17 = *(v7 + 16);
              if (*&v17 == 0.0)
              {

                v46 = v400;
              }

              else
              {
                v128 = specialized Array._getCount()(v410);
                v129 = 0;
                v8 = *&v425;
                v20 = v7 + 48;
                v46 = v400;
                do
                {
                  if (v129 >= *(v7 + 16))
                  {
                    goto LABEL_558;
                  }

                  if (v128 == v129)
                  {
                    break;
                  }

                  v132 = *v20;
                  v427 = *(v20 - 16);
                  v426 = v132;
                  if (*&a4 == 0.0)
                  {
                    if (v129 >= *(*&v401 + 16))
                    {
                      goto LABEL_573;
                    }
                  }

                  else
                  {
                    v130 = MEMORY[0x1DA6CE0C0](v129, v410);
                  }

                  ++v129;
                  v131 = v426;
                  *(v130 + 48) = v427;
                  *(v130 + 64) = v131;
                  *(v130 + 80) = v8;

                  v20 += 32;
                }

                while (v17 != v129);
              }

              v7 = v394;
LABEL_167:
              v133 = v402 + 15.0;
              if (v402 + 15.0 >= v46)
              {
                v133 = v46;
              }

              if (v133 < 0.0)
              {
                a6 = 0.0;
              }

              else
              {
                a6 = v133;
              }

              if (a6 > v46)
              {
                goto LABEL_574;
              }

              v134 = v410;
              if (LOBYTE(v399))
              {
LABEL_575:
                __break(1u);
              }

              else
              {
                v135 = specialized Array._getCount()(v410);
                if (v135 >= v7)
                {
                  v136 = v135;
                  specialized Array._checkIndex(_:)(v7, v134);
                  specialized Array._checkIndex(_:)(v136, v134);
                  v137 = specialized _ArrayBuffer.subscript.getter(v7, v136, v134);
                  v139 = v138;
                  v141 = v140;
                  v143 = v142;
                  v144 = swift_initStackObject();
                  *(v144 + 16) = v428;
                  *(v144 + 32) = v407;
                  *&v429 = v137;
                  *(&v429 + 1) = v139;
                  *&v430 = v141;
                  *(&v430 + 1) = v143;

                  *&v18 = COERCE_DOUBLE(&v429);
                  v145 = specialized ArraySlice.append<A>(contentsOf:)(v144);
                  v146 = *(&v429 + 1);
                  v10 = v429;
                  v7 = *(&v430 + 1);
                  v17 = *&v430;
                  v16 = *(&v430 + 1) >> 1;
                  v147 = v430 <= *(&v430 + 1) >> 1;
                  if (v430 == *(&v430 + 1) >> 1)
                  {
                    v21 = *&v430;
LABEL_177:
                    v147 = v16 < v21;
                    v16 = v21;
                    if (!v147)
                    {
LABEL_187:
                      if (v16 >= v17)
                      {
                        v149 = swift_unknownObjectRetain();
                        *&v19 = COERCE_DOUBLE(specialized _SliceBuffer.requestNativeBuffer()(v149, v146, v16, v7));
                        swift_unknownObjectRelease();
                        if (*&v19 == 0.0)
                        {
                          specialized _copyCollectionToContiguousArray<A>(_:)(v10, v146, v16, v7);
                          v19 = v150;
                        }

                        swift_unknownObjectRelease();
                        *&v151 = COERCE_DOUBLE(specialized Array._getCount()(v19));
                        if (*&v151 == 0.0)
                        {

                          v25 = 1;
                          return v25 & 1;
                        }

                        v21 = v151;
                        v17 = v151 - 1;
                        if (!__OFSUB__(v151, 1))
                        {
                          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v151 - 1, (v19 & 0xC000000000000001) == 0, v19);
                          *&v422 = v19 & 0xC000000000000001;
                          if ((v19 & 0xC000000000000001) == 0)
                          {
                            v18 = *(v19 + 8 * v17 + 32);

                            *&v152 = COERCE_DOUBLE();
LABEL_194:
                            *&v17 = COERCE_DOUBLE((*(*v18 + 144))(v152));

                            if (v17)
                            {

                              v10 = specialized Sequence.dropLast(_:)(1, v19);
                            }

                            else
                            {

                              v10 = v19;
                            }

                            v153 = specialized Array._getCount()(v10);
                            v412 = v21;
                            if (!v153)
                            {
                              v9 = 0.0;
                              v8 = 0.0;
                              goto LABEL_219;
                            }

                            v154 = v153;
                            *&v18 = 0.0;
                            v17 = v10 & 0xC000000000000001;
                            v21 = v10 & 0xFFFFFFFFFFFFFF8;
                            v8 = 0.0;
                            while (1)
                            {
                              if (*&v17 == 0.0)
                              {
                                if (v18 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                {
                                  goto LABEL_542;
                                }

                                v7 = v18 + 1;
                                if (__OFADD__(v18, 1))
                                {
LABEL_207:
                                  __break(1u);
LABEL_208:
                                  v156 = v46;
                                  *&v7 = 0.0;
                                  v157 = 0.0;
                                  v9 = v8 + 0.0;
                                  while (1)
                                  {
                                    if (*&v17 == 0.0)
                                    {
                                      if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                      {
                                        goto LABEL_543;
                                      }

                                      v18 = *(v10 + 8 * v7 + 32);

                                      v16 = v7 + 1;
                                      if (__OFADD__(v7, 1))
                                      {
LABEL_216:
                                        __break(1u);
LABEL_217:
                                        v8 = v157 + 0.0;
                                        v46 = v156;
LABEL_219:
                                        v158 = v411 / 100.0;
                                        v159 = v158 * v9;

                                        v160 = v46 - a6;
                                        v161 = v159 - (v46 - a6);
                                        v147 = v161 > 0.0;
                                        v162 = fmin(v161 / (v159 - v158 * v8), 1.0);
                                        v163 = 0.0 - v161;
                                        if (v147)
                                        {
                                          v163 = 0.0;
                                        }

                                        else
                                        {
                                          v162 = 0.0;
                                        }

                                        v164 = v160 < v159;
                                        if (v160 < v159)
                                        {
                                          v165 = v162;
                                        }

                                        else
                                        {
                                          v165 = 0.0;
                                        }

                                        if (v164)
                                        {
                                          v166 = v163;
                                        }

                                        else
                                        {
                                          v166 = 0.0;
                                        }

                                        v420 = v165;
                                        v419 = 1.0 - v165;
                                        v9 = a6 + (1.0 - v165) * (v158 * v166);
                                        v418 = v158 * v398;
                                        *&v421 = v158;
                                        v417 = v158 * v397;
                                        v167 = sqrt((v395 - v397) * (v395 - v397) + (v396 - v398) * (v396 - v398));
                                        v415 = (v395 - v397) / v167;
                                        v416 = (v396 - v398) / v167;
                                        v168 = atan2(v415, v416);
                                        v411 = v19 + 32;
                                        v169 = __sincos_stret(v168);
                                        sinval = v169.__sinval;
                                        v413 = v169.__cosval;
                                        *&a4 = 0.0;
                                        *&v7 = MEMORY[0x1E69E7CC0];
                                        cosval = v46 + 0.1;
                                        v410 = v19;
                                        while (1)
                                        {
                                          if (v422 == 0.0)
                                          {
                                            if (a4 >= *(v19 + 16))
                                            {
                                              __break(1u);
LABEL_562:
                                              __break(1u);
LABEL_563:
                                              v29 = __CocoaSet.count.getter();
                                              v17 = v29;
                                              v30 = v410;
                                              goto LABEL_28;
                                            }

                                            v18 = *(v411 + 8 * a4);

                                            v21 = a4 + 1;
                                            if (__OFADD__(a4, 1))
                                            {
                                              goto LABEL_545;
                                            }
                                          }

                                          else
                                          {
                                            *&v18 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](a4, v19));
                                            v21 = a4 + 1;
                                            if (__OFADD__(a4, 1))
                                            {
                                              goto LABEL_545;
                                            }
                                          }

                                          v171 = *(v18 + 32);
                                          v170 = *(v18 + 40);
                                          v172 = (*(*v18 + 152))();
                                          if (*&a4 == 0.0)
                                          {
                                            v173 = v9 + 0.0;
                                          }

                                          else
                                          {
                                            v173 = v9;
                                          }

                                          v174 = *(v18 + 120);
                                          v175 = *v18;
                                          v424 = v9;
                                          if (*&v425 == v174)
                                          {
                                            (*(v175 + 240))();
                                          }

                                          else
                                          {
                                            v176 = (*(v175 + 272))();
                                          }

                                          v178 = v176;
                                          *&v427 = v177;
                                          v179 = *&v421;
                                          *&v426 = v419 * (v179 * v171) + v420 * (v179 * v172);
                                          *&v428 = v173;
                                          v180 = v173 / v413;
                                          v181 = v418 + v416 * (v173 / v413);
                                          v182 = v417 + v415 * v180;
                                          v183 = *&v421 * v170;
                                          v184 = *(v18 + 32);
                                          v185 = *(v18 + 40);
                                          v439.origin.x = 0.0;
                                          v439.origin.y = 0.0;
                                          v439.size.width = v184;
                                          v439.size.height = v185;
                                          v186 = CGRectGetMinX(v439);
                                          v440.origin.x = 0.0;
                                          v440.origin.y = 0.0;
                                          v440.size.width = v184;
                                          v440.size.height = v185;
                                          v187 = v186 + v178 * CGRectGetWidth(v440);
                                          v441.origin.x = 0.0;
                                          v441.origin.y = 0.0;
                                          v441.size.width = v184;
                                          v441.size.height = v185;
                                          v188 = CGRectGetMinY(v441);
                                          v442.origin.x = 0.0;
                                          v442.origin.y = 0.0;
                                          v442.size.width = v184;
                                          v442.size.height = v185;
                                          Height = CGRectGetHeight(v442);
                                          v190 = v179 * v187;
                                          v191 = v181 - v179 * v187;
                                          v192 = v182 - (v179 * (v188 + *&v427 * Height) - sinval * v190);
                                          v193 = *&v426;
                                          v195 = *(v18 + 16);
                                          v194 = *(v18 + 24);
                                          v197 = *(v18 + 32);
                                          v196 = *(v18 + 40);
                                          v443.origin.x = v191;
                                          v443.origin.y = v192;
                                          *&v443.size.width = v426;
                                          v443.size.height = v183;
                                          v198 = CGRectIsNull(v443);
                                          v444.origin.x = v195;
                                          v444.origin.y = v194;
                                          v444.size.width = v197;
                                          v444.size.height = v196;
                                          v199 = CGRectIsNull(v444);
                                          if (v198)
                                          {
                                            v200 = v199 == 0;
                                          }

                                          else
                                          {
                                            v200 = 1;
                                          }

                                          if (!v200 || ((v201 = vabdd_f64(v191, v195), v198 == v199) ? (v202 = v201 < 2.0) : (v202 = 0), (v203 = vabdd_f64(v192, v194), v202) ? (v204 = v203 < 2.0) : (v204 = 0), (v205 = vabdd_f64(v193, v197), v204) ? (v206 = v205 < 2.0) : (v206 = 0), (v207 = vabdd_f64(v183, v196), v206) ? (v208 = v207 < 2.0) : (v208 = 0), v208))
                                          {
                                            v191 = *(v18 + 16);
                                            v192 = *(v18 + 24);
                                            v193 = *(v18 + 32);
                                            v183 = *(v18 + 40);
                                          }

                                          v209 = floor(v191 + v191);
                                          v210 = ceil(v191 + v191);
                                          if (v191 + v191 - v209 < 0.49)
                                          {
                                            v8 = v209;
                                          }

                                          else
                                          {
                                            v8 = v210;
                                          }

                                          v211 = floor(v192 + v192);
                                          v212 = ceil(v192 + v192);
                                          if (v192 + v192 - v211 < 0.49)
                                          {
                                            a6 = v211;
                                          }

                                          else
                                          {
                                            a6 = v212;
                                          }

                                          if (*&a4 == 0.0)
                                          {
                                            v10 = 0;
                                            v46 = *&v428;
                                          }

                                          else
                                          {
                                            *&v427 = v7;
                                            specialized Array._checkIndex(_:)(0, v19);
                                            specialized Array._checkIndex(_:)(a4, v19);
                                            v213 = specialized _ArrayBuffer.subscript.getter(0, a4, v19);
                                            v10 = v213;
                                            v17 = v214;
                                            v7 = v215;
                                            *&v429 = v213;
                                            *(&v429 + 1) = v214;
                                            *&v430 = v215;
                                            *(&v430 + 1) = v216;
                                            v217 = v216 >> 1;
                                            v9 = v424;
                                            v46 = *&v428;
                                            while (1)
                                            {
                                              v19 = v217;
                                              if (v7 == v217)
                                              {
                                                break;
                                              }

                                              --v217;
                                              if (__OFSUB__(v19, 1))
                                              {
                                                __break(1u);
LABEL_308:
                                                __break(1u);
                                                goto LABEL_309;
                                              }

                                              if (v217 < v7)
                                              {
                                                goto LABEL_308;
                                              }

                                              v16 = *(v17 + 8 * v217);
                                              type metadata accessor for ReflowWord();
                                              v213 = swift_dynamicCastClass();
                                              if (v213)
                                              {
                                                goto LABEL_276;
                                              }
                                            }

                                            *&v217 = 0.0;
LABEL_276:
                                            *&v16 = COERCE_DOUBLE(&v394);
                                            MEMORY[0x1EEE9AC00](v213);
                                            v393 = &v429;
                                            v219 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8PaperKit13ReflowElementCTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v392, v217, v218);
                                            v220 = swift_unknownObjectRelease();
                                            if (v219)
                                            {
                                              type metadata accessor for ReflowWord();
                                              v220 = swift_dynamicCastClass();
                                              v10 = v220;
                                              v7 = *&v427;
                                              if (!v220)
                                              {
                                              }

                                              v19 = v410;
                                            }

                                            else
                                            {
                                              v10 = 0;
                                              v19 = v410;
                                              v7 = *&v427;
                                            }

                                            if (((*(*v18 + 144))(v220) & 1) == 0 && (cosval < v9 + *(v18 + 64) || v10 && *(v10 + 136) == 1))
                                            {

                                              v21 = v412;
                                              if (v412 >= a4)
                                              {
                                                specialized Array._checkIndex(_:)(a4, v19);
                                                specialized Array._checkIndex(_:)(v21, v19);
                                                v224 = specialized _ArrayBuffer.subscript.getter(a4, v21, v19);
                                                v226 = v225;
                                                v20 = v227;
                                                v229 = v228;

                                                v230 = swift_unknownObjectRetain();
                                                *&v16 = COERCE_DOUBLE(specialized _SliceBuffer.requestNativeBuffer()(v230, v226, v20, v229));
                                                swift_unknownObjectRelease();
                                                if (*&v16 == 0.0)
                                                {
                                                  specialized _copyCollectionToContiguousArray<A>(_:)(v224, v226, v20, v229);
                                                  v16 = v231;
                                                }

                                                swift_unknownObjectRelease();

                                                *&v7 = MEMORY[0x1E69E7CC0];
LABEL_295:

                                                v232 = specialized Array._getCount()(v16);

                                                if (v232)
                                                {
LABEL_296:

LABEL_329:

                                                  goto LABEL_330;
                                                }

                                                v234 = v423;
                                                MEMORY[0x1DA6CD190](v233);
                                                specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*((*v234 & 0xFFFFFFFFFFFFFF8) + 0x10));
                                                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                                                v235 = *(v7 + 16);
                                                if (v235)
                                                {
                                                  *&v17 = 0.0;
                                                  v8 = *&v425;
                                                  a3 = v7 + 48;
                                                  while (v17 < *(v7 + 16))
                                                  {
                                                    if (v21 == v17)
                                                    {
                                                      goto LABEL_306;
                                                    }

                                                    v238 = *a3;
                                                    v428 = *(a3 - 16);
                                                    v427 = v238;
                                                    if (v422 == 0.0)
                                                    {
                                                      if (v17 >= *(v19 + 16))
                                                      {
                                                        goto LABEL_578;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v236 = MEMORY[0x1DA6CE0C0](v17, v19);
                                                    }

                                                    ++v17;
                                                    v237 = v427;
                                                    *(v236 + 48) = v428;
                                                    *(v236 + 64) = v237;
                                                    *(v236 + 80) = v8;

                                                    a3 += 32;
                                                    if (v235 == v17)
                                                    {
                                                      goto LABEL_306;
                                                    }
                                                  }

                                                  goto LABEL_570;
                                                }

LABEL_306:

LABEL_525:

                                                v25 = 1;
                                                return v25 & 1;
                                              }

                                              __break(1u);
LABEL_587:
                                              __break(1u);
LABEL_588:
                                              __break(1u);
                                              return result;
                                            }
                                          }

                                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                          {
                                            *&v7 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7));
                                          }

                                          v20 = *(v7 + 16);
                                          v221 = *(v7 + 24);
                                          v17 = v20 + 1;
                                          if (v20 >= v221 >> 1)
                                          {
                                            *&v7 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v221 > 1), v20 + 1, 1, v7));
                                          }

                                          *(v7 + 16) = *&v17;
                                          v222 = (v7 + 32 * v20);
                                          v222[4] = v8 * 0.5;
                                          v222[5] = a6 * 0.5;
                                          v222[6] = v193;
                                          v222[7] = v183;
                                          v9 = v46 + v193;
                                          a4 = v21;
                                          if (v21 == v412)
                                          {
                                            v21 = v412;
                                            *&v16 = MEMORY[0x1E69E7CC0];
                                            goto LABEL_295;
                                          }
                                        }
                                      }
                                    }

                                    else
                                    {
                                      *&v18 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v7, v10));
                                      v16 = v7 + 1;
                                      if (__OFADD__(v7, 1))
                                      {
                                        goto LABEL_216;
                                      }
                                    }

                                    v8 = (*(*v18 + 152))();

                                    v157 = v157 + v8;
                                    ++v7;
                                    if (v16 == v154)
                                    {
                                      goto LABEL_217;
                                    }
                                  }
                                }
                              }

                              else
                              {
                                v155 = MEMORY[0x1DA6CE0C0](v18, v10);
                                v7 = v18 + 1;
                                if (__OFADD__(v18, 1))
                                {
                                  goto LABEL_207;
                                }
                              }

                              v9 = *(v155 + 32);

                              v8 = v8 + v9;
                              ++v18;
                              if (v7 == v154)
                              {
                                goto LABEL_208;
                              }
                            }
                          }

LABEL_580:

                          *&v152 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v17, v19));
                          v18 = v152;
                          goto LABEL_194;
                        }

LABEL_579:
                        __break(1u);
                        goto LABEL_580;
                      }

LABEL_577:
                      __break(1u);
LABEL_578:
                      __break(1u);
                      goto LABEL_579;
                    }

                    __break(1u);
                  }

                  if (v147)
                  {
                    v148 = v16;
                  }

                  else
                  {
                    v148 = v17;
                  }

                  v21 = v17;
                  while (v148 != v21)
                  {
                    v18 = *(v146 + 8 * v21);
                    v145 = (*(*v18 + 144))(v145);
                    if ((v145 & 1) == 0)
                    {
                      goto LABEL_177;
                    }

                    if (v16 == ++v21)
                    {
                      goto LABEL_187;
                    }
                  }

LABEL_547:
                  __break(1u);
LABEL_548:
                  __break(1u);
LABEL_549:
                  __break(1u);
LABEL_550:
                  __break(1u);
                  goto LABEL_551;
                }
              }

              __break(1u);
              goto LABEL_577;
            }
          }

          __break(1u);
          goto LABEL_585;
        }

        v31 = v18;
        v32 = MEMORY[0x1DA6CE0C0](v20, v410);
        v29 = swift_unknownObjectRelease();
        v30 = v410;
        v102 = v32 == v10;
        v18 = v31;
        a4 = v406;
        if (v102)
        {
          goto LABEL_38;
        }

LABEL_33:
        v27 = __OFADD__(v20++, 1);
        if (!v27)
        {
          continue;
        }

        break;
      }

      __break(1u);
LABEL_313:
      *&v17 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](0, v18));
LABEL_7:
      v10 = *a3;
      outlined init with copy of ReflowSpacingAdjustment(a3, &v429);
      outlined init with copy of ReflowSpacingAdjustment(a3, &v429);

      outlined destroy of ReflowSpacingAdjustment(a3);
      if (v17 == v10 && (*(a3 + 8) & 1) == 0)
      {
        outlined destroy of ReflowSpacingAdjustment(a3);

        v22 = *(a3 + 32);
        v23 = v408 - *(v423 + 32);
        if (v23 <= v22)
        {
          goto LABEL_330;
        }

        v24 = *(v423 + 16);
        if (v24 > v22)
        {
          v22 = *(v423 + 16);
        }

        if (v22 <= v23)
        {
          if (v24 >= v22)
          {
            *(v21 + 43) = 0u;
            v430 = 0u;
            v431 = 0u;
            v429 = 0u;
            v25 = ReflowTextLine.add(_:textScalePercentage:spacingAdjustment:maxWidth:previousLine:adjustment:)(v407, v411, &v429, a4, v408, a6);
          }

          else
          {
            v25 = specialized ReflowTextLine.addLayoutAndApply(_:textScalePercentage:span:hardHeadIndent:softHeadIndent:canCompress:canOverflow:isWholeLine:)(v407, v411, v22, v23, 0.0, 0.0);
          }

          return v25 & 1;
        }

        goto LABEL_566;
      }

      goto LABEL_16;
    }
  }

  if (v239 < v240)
  {
    goto LABEL_329;
  }

  result = specialized Collection<>.firstIndex(of:)(v10, v18);
  if (v248)
  {
    goto LABEL_587;
  }

  v249 = *(a3 + 8);
  v10 = result + v249;
  if (__OFADD__(result, v249))
  {
    goto LABEL_550;
  }

  if (v10 < 0)
  {
LABEL_551:
    __break(1u);
LABEL_552:
    *&v28 = COERCE_DOUBLE(__CocoaSet.count.getter());
    v20 = v28;
    goto LABEL_347;
  }

  specialized Array._checkIndex(_:)(0, v18);
  specialized Array._checkIndex(_:)(v10, v18);
  *&v17 = COERCE_DOUBLE(specialized _ArrayBuffer.subscript.getter(0, v10, v18));
  v21 = v250;
  v16 = v251;
  v253 = v252;
  *&v254 = COERCE_DOUBLE(specialized _SliceBuffer.requestNativeBuffer()(v17, v250, v251, v252));
  if (*&v254 == 0.0)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v17, v21, v16, v253);
  }

  v7 = v254;
  swift_unknownObjectRelease();
  if (*&v19 == 0.0)
  {
    if (v10 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_339;
    }

LABEL_341:
    if (v20 < v10)
    {
      goto LABEL_562;
    }

    specialized Array._checkIndex(_:)(v20, v18);

    *&v17 = COERCE_DOUBLE(specialized _ArrayBuffer.subscript.getter(v10, v20, v18));
    v256 = v255;
    v258 = v257;
    v260 = v259;

    v261 = swift_unknownObjectRetain();
    v10 = specialized _SliceBuffer.requestNativeBuffer()(v261, v256, v258, v260);
    swift_unknownObjectRelease();
    if (!v10)
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(v17, v256, v258, v260);
      v10 = v262;
    }

    *&v28 = COERCE_DOUBLE(swift_unknownObjectRelease());
  }

  else
  {
    if (v10 < __CocoaSet.count.getter())
    {
      goto LABEL_341;
    }

LABEL_339:

    *&v28 = COERCE_DOUBLE();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v21 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    goto LABEL_552;
  }

  v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_347:
  *&v16 = 0.0;
  a4 = v10 & 0xC000000000000001;
  while (v20 != v16)
  {
    if (*&a4 == 0.0)
    {
      if (v16 >= *(v21 + 16))
      {
        goto LABEL_531;
      }

      v18 = *(v10 + 8 * v16 + 32);
      *&v263 = COERCE_DOUBLE();
    }

    else
    {
      *&v263 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v16, v10));
      v18 = v263;
    }

    *&v17 = COERCE_DOUBLE((*(*v18 + 144))(v263));
    *&v28 = COERCE_DOUBLE();
    if ((v17 & 1) == 0)
    {
      goto LABEL_358;
    }

    v27 = __OFADD__(v16++, 1);
    if (v27)
    {
      goto LABEL_532;
    }
  }

  v16 = v20;
LABEL_358:
  if (v20 < v16)
  {
    __break(1u);
LABEL_554:
    __break(1u);
LABEL_555:
    __break(1u);
LABEL_556:
    *&v28 = COERCE_DOUBLE(__CocoaSet.count.getter());
    v16 = v28;
    goto LABEL_400;
  }

  specialized Array._checkIndex(_:)(v16, v10);
  specialized Array._checkIndex(_:)(v20, v10);
  *&v17 = COERCE_DOUBLE(specialized _ArrayBuffer.subscript.getter(v16, v20, v10));
  v18 = v264;
  v20 = v265;
  v21 = v266;

  v267 = swift_unknownObjectRetain();
  *&v268 = COERCE_DOUBLE(specialized _SliceBuffer.requestNativeBuffer()(v267, v18, v20, v21));
  swift_unknownObjectRelease();
  v404 = *&v268;
  if (*&v268 == 0.0)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v17, v18, v20, v21);
    v404 = v269;
  }

  swift_unknownObjectRelease();
  v270 = 0.0;
  v399 = *(a3 + 32);
  if (v399 >= 0.0)
  {
    v270 = v399;
  }

  v405 = v270;
  v16 = *(v423 + 160);
  v271 = *(v423 + 48);
  v403 = *(v423 + 40);
  v402 = v271;
  v272 = *(v423 + 64);
  v401 = *(v423 + 56);
  v400 = v272;
  a6 = *(v423 + 24);
  v406 = *(v423 + 16);
  v424 = COERCE_DOUBLE(specialized Array._getCount()(v7));
  if (v424 == 0.0)
  {
    goto LABEL_369;
  }

  v17 = *&v424 - 1;
  if (__OFSUB__(*&v424, 1))
  {
    goto LABEL_559;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(*&v424 - 1, (v7 & 0xC000000000000001) == 0, v7);
  if ((v7 & 0xC000000000000001) == 0)
  {
    v18 = *(v7 + 8 * v17 + 32);
    *&v273 = COERCE_DOUBLE();
    goto LABEL_367;
  }

LABEL_560:
  *&v273 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v17, v7));
  v18 = v273;
LABEL_367:
  *&v17 = COERCE_DOUBLE((*(*v18 + 144))(v273));

  if (v17)
  {

    *&a3 = COERCE_DOUBLE(specialized Sequence.dropLast(_:)(1, v7));
    goto LABEL_370;
  }

LABEL_369:

  a3 = v7;
LABEL_370:
  *&v28 = COERCE_DOUBLE(specialized Array._getCount()(a3));
  v422 = 0.0;
  v9 = 0.0;
  v274 = 0.0;
  v412 = v16;
  if (*&v28 == 0.0)
  {
    goto LABEL_390;
  }

  v10 = v28;
  *&v17 = 0.0;
  v21 = a3 & 0xC000000000000001;
  v16 = a3 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (*&v21 == 0.0)
    {
      if (v17 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_529:
        __break(1u);
LABEL_530:
        __break(1u);
LABEL_531:
        __break(1u);
LABEL_532:
        __break(1u);
LABEL_533:
        __break(1u);
LABEL_534:
        __break(1u);
LABEL_535:
        __break(1u);
LABEL_536:
        __break(1u);
        goto LABEL_537;
      }

      *&v28 = COERCE_DOUBLE();
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      goto LABEL_375;
    }

    *&v28 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v17, a3));
    v18 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
LABEL_375:
      v8 = *(v28 + 32);
      *&v28 = COERCE_DOUBLE();
      v9 = v9 + v8;
      ++v17;
      if (v18 == v10)
      {
        goto LABEL_380;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_380:
  *&v20 = 0.0;
  v274 = 0.0;
  while (2)
  {
    if (*&v21 != 0.0)
    {
      *&v18 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v20, a3));
      v17 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      goto LABEL_384;
    }

    if (v20 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_530;
    }

    v18 = *(a3 + 8 * v20 + 32);

    v17 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
LABEL_384:
      v8 = (*(*v18 + 152))();
      *&v28 = COERCE_DOUBLE();
      v274 = v274 + v8;
      ++v20;
      if (v17 == v10)
      {
        goto LABEL_389;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_389:
  v16 = v412;
LABEL_390:
  *&v428 = v411 / 100.0;
  v275 = *&v428 * (*&v406 + a6 + v9);

  if (v405 < v275)
  {
    v276 = v275 - v405;
    if (v275 - v405 > a6)
    {
      v422 = fmin((v275 - a6 - v405) / (v275 - a6 - *&v428 * (*&v406 + v274)), 1.0);
      a6 = 0.0;
      goto LABEL_424;
    }

LABEL_423:
    a6 = a6 - v276;
  }

LABEL_424:
  if (v424 != 0.0)
  {
    v9 = 1.0 - v422;
    v8 = *&v428;
    v419 = *&v428 * v403;
    v418 = *&v428 * v402;
    v308 = sqrt((v401 - v403) * (v401 - v403) + (v400 - v402) * (v400 - v402));
    v416 = (v400 - v402) / v308;
    v417 = (v401 - v403) / v308;
    v309 = atan2(v416, v417);
    v420 = v9;
    a6 = v9 * (v8 * a6) + 0.0;
    v421 = v7 & 0xC000000000000001;
    *&v413 = v7 + 32;
    v310 = __sincos_stret(v309);
    v415 = v310.__sinval;
    sinval = v310.__cosval;
    v10 = 0;
    *&a3 = 0.0;
    *&v20 = MEMORY[0x1E69E7CC0];
    cosval = *&v7;
    while (1)
    {
      if (*&v421 == 0.0)
      {
        if (v10 >= *(v7 + 16))
        {
          goto LABEL_534;
        }

        v18 = *(*&v413 + 8 * v10);
        *&v28 = COERCE_DOUBLE();
        v19 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_533;
        }
      }

      else
      {
        *&v28 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v10, v7));
        v18 = v28;
        v19 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_533;
        }
      }

      v311 = *(v18 + 40);
      v312 = *&v428;
      v313 = v420 * (*&v428 * *(v18 + 32));
      v314 = v313 + v422 * (v312 * (*(*v18 + 152))());
      if (!v10)
      {
        v315 = v405 - v314;
        if (v405 - v314 >= *&v406)
        {
          v315 = *&v406;
        }

        if (v315 < 0.0)
        {
          v315 = 0.0;
        }

        a6 = a6 + v315;
      }

      v316 = *(v18 + 120);
      v317 = *v18;
      *&v427 = v314;
      if (v16 == v316)
      {
        (*(v317 + 240))();
      }

      else
      {
        v318 = (*(v317 + 272))();
      }

      v320 = v318;
      *&v426 = v319;
      v425 = a6;
      v321 = v419 + v417 * (a6 / sinval);
      v322 = v418 + v416 * (a6 / sinval);
      v323 = *&v428;
      v324 = *&v428 * v311;
      v325 = *(v18 + 32);
      v326 = *(v18 + 40);
      v445.origin.x = 0.0;
      v445.origin.y = 0.0;
      v445.size.width = v325;
      v445.size.height = v326;
      v327 = CGRectGetMinX(v445);
      v446.origin.x = 0.0;
      v446.origin.y = 0.0;
      v446.size.width = v325;
      v446.size.height = v326;
      v328 = v327 + v320 * CGRectGetWidth(v446);
      v447.origin.x = 0.0;
      v447.origin.y = 0.0;
      v447.size.width = v325;
      v447.size.height = v326;
      v329 = CGRectGetMinY(v447);
      v448.origin.x = 0.0;
      v448.origin.y = 0.0;
      v448.size.width = v325;
      v448.size.height = v326;
      v330 = CGRectGetHeight(v448);
      v331 = v323 * v328;
      v332 = v323 * (v329 + *&v426 * v330);
      a6 = v324;
      v333 = v321 - v331;
      v334 = v322 - (v332 - v415 * v331);
      v335 = *(v18 + 16);
      v336 = *(v18 + 24);
      v338 = *(v18 + 32);
      v337 = *(v18 + 40);
      v449.origin.x = v333;
      v449.origin.y = v334;
      v339 = *&v427;
      *&v449.size.width = v427;
      v449.size.height = a6;
      v340 = CGRectIsNull(v449);
      v450.origin.x = v335;
      v450.origin.y = v336;
      v450.size.width = v338;
      v450.size.height = v337;
      v341 = CGRectIsNull(v450);
      if (v340)
      {
        v342 = v341 == 0;
      }

      else
      {
        v342 = 1;
      }

      if (!v342 || ((v343 = vabdd_f64(v333, v335), v340 == v341) ? (v344 = v343 < 2.0) : (v344 = 0), (v345 = vabdd_f64(v334, v336), v344) ? (v346 = v345 < 2.0) : (v346 = 0), (v347 = vabdd_f64(v339, v338), v346) ? (v348 = v347 < 2.0) : (v348 = 0), (v349 = vabdd_f64(a6, v337), v348) ? (v350 = v349 < 2.0) : (v350 = 0), v350))
      {
        v333 = *(v18 + 16);
        v334 = *(v18 + 24);
        v339 = *(v18 + 32);
        a6 = *(v18 + 40);
      }

      v351 = floor(v333 + v333);
      v352 = ceil(v333 + v333);
      if (v333 + v333 - v351 < 0.49)
      {
        v8 = v351;
      }

      else
      {
        v8 = v352;
      }

      v353 = floor(v334 + v334);
      v354 = ceil(v334 + v334);
      if (v334 + v334 - v353 < 0.49)
      {
        v9 = v353;
      }

      else
      {
        v9 = v354;
      }

      if (v10)
      {
        specialized Array._checkIndex(_:)(0, v7);
        specialized Array._checkIndex(_:)(v10, v7);
        *&v28 = COERCE_DOUBLE(specialized _ArrayBuffer.subscript.getter(0, v10, v7));
        v10 = v28;
        v21 = v355;
        v17 = v356;
        *&v429 = v28;
        *(&v429 + 1) = v355;
        *&v430 = v356;
        *(&v430 + 1) = v357;
        v7 = v357 >> 1;
        while (1)
        {
          v16 = v7;
          if (v17 == v7)
          {
            break;
          }

          --v7;
          if (__OFSUB__(v16, 1))
          {
            __break(1u);
LABEL_528:
            __break(1u);
            goto LABEL_529;
          }

          if (v7 < v17)
          {
            goto LABEL_528;
          }

          a4 = *(v21 + 8 * v7);
          type metadata accessor for ReflowWord();
          *&v28 = COERCE_DOUBLE(swift_dynamicCastClass());
          if (*&v28 != 0.0)
          {
            goto LABEL_473;
          }
        }

        *&v7 = 0.0;
LABEL_473:
        v358 = a6;
        MEMORY[0x1EEE9AC00](v28);
        v393 = &v429;
        v360 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8PaperKit13ReflowElementCTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v392, v7, v359);
        swift_unknownObjectRelease();
        if (!v360)
        {
          *&v7 = cosval;
          v16 = v412;
          goto LABEL_478;
        }

        type metadata accessor for ReflowWord();
        v361 = swift_dynamicCastClass();
        *&v7 = cosval;
        v362 = v425;
        if (!v361)
        {
        }

        v16 = v412;
      }

      else
      {
        v358 = a6;
LABEL_478:
        v362 = v425;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v20 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20));
      }

      v21 = *(v20 + 16);
      v363 = *(v20 + 24);
      v17 = v21 + 1;
      if (v21 >= v363 >> 1)
      {
        *&v20 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v363 > 1), v21 + 1, 1, v20));
      }

      *&v28 = COERCE_DOUBLE();
      *(v20 + 16) = *&v17;
      v364 = (v20 + 32 * v21);
      v364[4] = v8 * 0.5;
      v364[5] = v9 * 0.5;
      v364[6] = v339;
      v364[7] = v358;
      a6 = v362 + v339;
      v10 = v19;
      if (v19 == *&v424)
      {
        goto LABEL_489;
      }
    }
  }

  *&v20 = MEMORY[0x1E69E7CC0];
LABEL_489:

  Array<A>.applyFrames(_:lineIndex:)(v20, v16, v410);

  *&v20 = v404;
  if (specialized Array._getCount()(*&v404))
  {
    v8 = v408 - *(v423 + 32);
    if (v8 < v399)
    {

      goto LABEL_330;
    }

    v17 = v20 & 0xC000000000000001;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v20 & 0xC000000000000001) == 0, v20);
    if ((v20 & 0xC000000000000001) == 0)
    {

      goto LABEL_495;
    }

    goto LABEL_571;
  }

  specialized Array.append(_:)();
  v25 = 1;
  return v25 & 1;
}

uint64_t outlined destroy of ReflowSpacingAdjustment?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL specialized ReflowTextLine.addLayoutAndApply(_:textScalePercentage:span:hardHeadIndent:softHeadIndent:canCompress:canOverflow:isWholeLine:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, CGFloat a6)
{
  v8 = v6;
  v132 = a5;
  v133 = a4;
  *&v151 = a3;
  v12 = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D405CEB0;
  *(inited + 32) = a1;
  v153[0] = v12;

  v128[5] = a1;

  v14 = v153;
  specialized Array.append<A>(contentsOf:)(inited);
  v15 = v153[0];
  v146 = *(v8 + 160);
  v16 = *(v8 + 40);
  v17 = *(v8 + 48);
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v129 = v8;
  v20 = v153[0] >> 62;
  if (v153[0] >> 62)
  {
    v21 = __CocoaSet.count.getter();
    if (!v21)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = *((v153[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
LABEL_11:

      v26 = v15;
      goto LABEL_12;
    }
  }

  v22 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if ((v15 & 0xC000000000000001) == 0)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v15 + 8 * v22 + 32);

      goto LABEL_8;
    }

    __break(1u);
LABEL_179:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_160:
    v22 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v15 = *(v7 + 2);
    if (!v15)
    {
      goto LABEL_172;
    }

    v20 = v7;
    v96 = *v14;
    v21 = *v14 & 0xFFFFFFFFFFFFFF8;
    if (*v14 >> 62)
    {
      goto LABEL_183;
    }

    v120 = *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_163:
    v121 = 0;
    v122 = v146;
    v123 = (v20 + 48);
    while (v121 < *(v20 + 16))
    {
      if (v120 == v121)
      {
        goto LABEL_172;
      }

      v124 = *v123;
      v152 = *(v123 - 1);
      v151 = v124;
      if ((*&v96 & 0xC000000000000001) != 0)
      {
        v125 = MEMORY[0x1DA6CE0C0](v121, *&v96);
      }

      else
      {
        if (v121 >= *(v21 + 16))
        {
          goto LABEL_174;
        }
      }

      ++v121;
      v126 = v151;
      *(v125 + 48) = v152;
      *(v125 + 64) = v126;
      *(v125 + 80) = v122;

      v123 += 2;
      if (v15 == v121)
      {
        goto LABEL_172;
      }
    }

    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

LABEL_176:
  v24 = MEMORY[0x1DA6CE0C0](v22, v15);
  v23 = v24;
LABEL_8:
  v25 = (*(*v23 + 144))(v24);

  if ((v25 & 1) == 0)
  {
    goto LABEL_11;
  }

  v26 = specialized Sequence.dropLast(_:)(1, v15);
LABEL_12:
  if (v26 >> 62)
  {
LABEL_157:
    v27 = __CocoaSet.count.getter();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v136 = v21;
  v135 = v20;
  if (!v27)
  {
    v35 = 0.0;
    v34 = a6 + 0.0;
    goto LABEL_35;
  }

  v28 = 0;
  v21 = v26 & 0xC000000000000001;
  v20 = v26 & 0xFFFFFFFFFFFFFF8;
  v29 = 0.0;
  while (!v21)
  {
    if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_23;
    }

LABEL_19:
    v32 = *(v30 + 32);

    v29 = v29 + v32;
    ++v28;
    if (v31 == v27)
    {
      goto LABEL_24;
    }
  }

  v30 = MEMORY[0x1DA6CE0C0](v28, v26);
  v31 = v28 + 1;
  if (!__OFADD__(v28, 1))
  {
    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  v33 = 0;
  v34 = v29 + a6;
  v35 = 0.0;
  while (2)
  {
    if (v21)
    {
      v36 = MEMORY[0x1DA6CE0C0](v33, v26);
      v37 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      goto LABEL_28;
    }

    if (v33 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_152;
    }

    v36 = *(v26 + 8 * v33 + 32);

    v37 = v33 + 1;
    if (!__OFADD__(v33, 1))
    {
LABEL_28:
      v38 = (*(*v36 + 152))();

      v35 = v35 + v38;
      ++v33;
      if (v37 == v27)
      {
        goto LABEL_33;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_33:
  v21 = v136;
  v20 = v135;
LABEL_35:
  *&v152 = a2 / 100.0;
  v39 = *&v152 * (v34 + v132);

  v40 = v133 - *&v151;
  v147 = 0.0;
  if (v133 - *&v151 >= v39)
  {
LABEL_38:
    if (!v21)
    {
      goto LABEL_121;
    }
  }

  else
  {
    if (v39 - v40 > a6)
    {
      v147 = fmin((v39 - a6 - v40) / (v39 - a6 - *&v152 * (v35 + v132)), 1.0);
      a6 = 0.0;
      goto LABEL_38;
    }

    a6 = a6 - (v39 - v40);
    if (!v21)
    {
LABEL_121:
      *&v7 = MEMORY[0x1E69E7CC0];
LABEL_122:

      v107 = MEMORY[0x1E69E7CC0];
      goto LABEL_146;
    }
  }

  v41 = 1.0 - v147;
  v42 = *&v152;
  v143 = *&v152 * v16;
  v142 = *&v152 * v17;
  v43 = sqrt((v19 - v16) * (v19 - v16) + (v18 - v17) * (v18 - v17));
  v140 = (v18 - v17) / v43;
  v141 = (v19 - v16) / v43;
  v44 = atan2(v140, v141);
  v144 = v41;
  v45 = v41 * (v42 * a6) + *&v151;
  v148 = v15 & 0xC000000000000001;
  v46 = v15 & 0xFFFFFFFFFFFFFF8;
  v137 = v15 + 32;
  v47 = __sincos_stret(v44);
  sinval = v47.__sinval;
  cosval = v47.__cosval;
  v48 = 0;
  a2 = 0;
  if (v15 < 0)
  {
    v49 = v15;
  }

  else
  {
    v49 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  v134 = v49;
  v130 = v46 + 32;
  v131 = v133 + 0.1;
  *&v7 = MEMORY[0x1E69E7CC0];
  v145 = v15 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v148)
    {
      v50 = MEMORY[0x1DA6CE0C0](v48, v15);
      if (__OFADD__(v48, 1))
      {
        goto LABEL_153;
      }
    }

    else
    {
      if (v48 >= *(v46 + 16))
      {
        goto LABEL_154;
      }

      v50 = *(v137 + 8 * v48);

      if (__OFADD__(v48, 1))
      {
        goto LABEL_153;
      }
    }

    v51 = v50[5];
    v52 = *&v152;
    v53 = v144 * (*&v152 * v50[4]);
    v54 = v53 + v147 * (v52 * (*(*v50 + 152))());
    if (!v48)
    {
      v55 = v133 - v54;
      if (v133 - v54 >= v132)
      {
        v55 = v132;
      }

      if (v55 < 0.0)
      {
        v55 = 0.0;
      }

      v45 = v45 + v55;
    }

    v56 = *(v50 + 15);
    v57 = *v50;
    v150 = v54;
    if (v146 == v56)
    {
      (*(v57 + 240))();
    }

    else
    {
      v58 = (*(v57 + 272))();
    }

    v60 = v58;
    v149 = v59;
    *&v151 = v45;
    v61 = v143 + v141 * (v45 / cosval);
    v62 = v142 + v140 * (v45 / cosval);
    v63 = *&v152;
    v64 = *&v152 * v51;
    v65 = v50[4];
    v66 = v50[5];
    v154.origin.x = 0.0;
    v154.origin.y = 0.0;
    v154.size.width = v65;
    v154.size.height = v66;
    MinX = CGRectGetMinX(v154);
    v155.origin.x = 0.0;
    v155.origin.y = 0.0;
    v155.size.width = v65;
    v155.size.height = v66;
    v68 = MinX + v60 * CGRectGetWidth(v155);
    v156.origin.x = 0.0;
    v156.origin.y = 0.0;
    v156.size.width = v65;
    v156.size.height = v66;
    MinY = CGRectGetMinY(v156);
    v157.origin.x = 0.0;
    v157.origin.y = 0.0;
    v157.size.width = v65;
    v157.size.height = v66;
    Height = CGRectGetHeight(v157);
    v71 = v63 * v68;
    v72 = v63 * (MinY + v149 * Height);
    v73 = v64;
    v74 = v61 - v71;
    v75 = v62 - (v72 - sinval * v71);
    v76 = v50[2];
    v16 = v50[3];
    a6 = v50[4];
    v17 = v50[5];
    v158.origin.x = v74;
    v158.origin.y = v75;
    v19 = v150;
    v158.size.width = v150;
    v158.size.height = v73;
    IsNull = CGRectIsNull(v158);
    v159.origin.x = v76;
    v159.origin.y = v16;
    v159.size.width = a6;
    v159.size.height = v17;
    v78 = CGRectIsNull(v159);
    if (IsNull)
    {
      v79 = v78 == 0;
    }

    else
    {
      v79 = 1;
    }

    if (!v79 || ((v80 = vabdd_f64(v74, v76), IsNull == v78) ? (v81 = v80 < 2.0) : (v81 = 0), (v82 = vabdd_f64(v75, v16), v81) ? (v83 = v82 < 2.0) : (v83 = 0), (v84 = vabdd_f64(v19, a6), v83) ? (v85 = v84 < 2.0) : (v85 = 0), (v86 = vabdd_f64(v73, v17), v85) ? (v87 = v86 < 2.0) : (v87 = 0), v87))
    {
      v74 = v50[2];
      v75 = v50[3];
      v19 = v50[4];
      v73 = v50[5];
    }

    v88 = floor(v74 + v74);
    v89 = ceil(v74 + v74);
    if (v74 + v74 - v88 < 0.49)
    {
      v90 = v88;
    }

    else
    {
      v90 = v89;
    }

    v91 = floor(v75 + v75);
    v92 = ceil(v75 + v75);
    if (v75 + v75 - v91 < 0.49)
    {
      v18 = v91;
    }

    else
    {
      v18 = v92;
    }

    if (!v48)
    {
      v95 = 0;
      v96 = *&v7;
      v93 = *&v151;
      goto LABEL_107;
    }

    v93 = *&v151;
    if (v20)
    {
      v21 = v134;
      if (__CocoaSet.count.getter() < 0)
      {
        goto LABEL_156;
      }

      v94 = __CocoaSet.count.getter();
    }

    else
    {
      v94 = *(v46 + 16);
      v21 = v134;
    }

    if (v94 < v48)
    {
      goto LABEL_155;
    }

    v150 = *&v7;
    if (!v148)
    {

      if (!v20)
      {
        goto LABEL_92;
      }

      goto LABEL_94;
    }

    type metadata accessor for ReflowElement();

    v97 = 0;
    do
    {
      v98 = v97 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v97);
      v97 = v98;
    }

    while (v48 != v98);
    if (v20)
    {
LABEL_94:

      v97 = _CocoaArrayWrapper.subscript.getter();
      v46 = v97;
      v26 = v101;
      v99 = v102;
      goto LABEL_95;
    }

LABEL_92:
    v99 = 0;
    v26 = v130;
    v100 = (2 * v48) | 1;
LABEL_95:
    v153[0] = v46;
    v153[1] = v26;
    v20 = v100 >> 1;
    v153[2] = v99;
    v153[3] = v100;
    while (1)
    {
      v21 = v20;
      if (v99 == v20)
      {
        break;
      }

      --v20;
      if (__OFSUB__(v21, 1))
      {
        __break(1u);
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      if (v20 < v99)
      {
        goto LABEL_150;
      }

      type metadata accessor for ReflowWord();
      v97 = swift_dynamicCastClass();
      if (v97)
      {
        goto LABEL_102;
      }
    }

    v20 = 0;
LABEL_102:
    MEMORY[0x1EEE9AC00](v97);
    v128[2] = v153;
    v104 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8PaperKit13ReflowElementCTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v128, v20, v103);
    swift_unknownObjectRelease();
    if (v104)
    {
      type metadata accessor for ReflowWord();
      v95 = swift_dynamicCastClass();
      v21 = v136;
      v20 = v135;
      if (!v95)
      {
      }
    }

    else
    {
      v95 = 0;
      v21 = v136;
      v20 = v135;
    }

    v96 = v150;
LABEL_107:
    if (((*(*v50 + 144))() & 1) != 0 || v131 >= v93 + v50[8] && (!v95 || *(v95 + 136) != 1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v96 + 16) + 1, 1, *&v96));
      }

      v26 = *(*&v96 + 16);
      v105 = *(*&v96 + 24);
      *&v7 = v96;
      if (v26 >= v105 >> 1)
      {
        *&v7 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v26 + 1, 1, *&v96));
      }

      ++v48;

      *(v7 + 2) = v26 + 1;
      v106 = &v7[32 * v26];
      v106[4] = v90 * 0.5;
      v106[5] = v18 * 0.5;
      v106[6] = v19;
      v106[7] = v73;
      v45 = v93 + v19;
      v46 = v145;
      if (v48 == v21)
      {
        goto LABEL_122;
      }

      continue;
    }

    break;
  }

  if (v21 < v48)
  {
    __break(1u);
    goto LABEL_181;
  }

  if (v20)
  {
    if (__CocoaSet.count.getter() < v48)
    {
      goto LABEL_181;
    }

    v108 = __CocoaSet.count.getter();
  }

  else
  {
    v108 = *(v145 + 16);
    if (v108 < v48)
    {
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      v22 = __CocoaSet.count.getter();
      v120 = v22;
      goto LABEL_163;
    }
  }

  if (v108 < v21)
  {
    goto LABEL_182;
  }

  if (v148)
  {
    type metadata accessor for ReflowElement();

    v109 = v48;
    do
    {
      v110 = v109 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v109);
      v109 = v110;
    }

    while (v21 != v110);
    if (!v20)
    {
LABEL_134:
      v111 = (2 * v21) | 1;
      goto LABEL_138;
    }
  }

  else
  {

    if (!v20)
    {
      goto LABEL_134;
    }
  }

  v145 = _CocoaArrayWrapper.subscript.getter();
  v130 = v112;
  v48 = v113;
  v111 = v114;
  if ((v114 & 1) == 0)
  {
LABEL_137:
    specialized _copyCollectionToContiguousArray<A>(_:)(v145, v130, v48, v111);
    v116 = v115;

    swift_unknownObjectRelease();

    goto LABEL_145;
  }

LABEL_138:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v117 = swift_dynamicCastClass();
  if (!v117)
  {
    swift_unknownObjectRelease();
    v117 = MEMORY[0x1E69E7CC0];
  }

  v118 = *(v117 + 16);

  if (__OFSUB__(v111 >> 1, v48))
  {
    __break(1u);
    goto LABEL_185;
  }

  if (v118 != (v111 >> 1) - v48)
  {
LABEL_185:
    swift_unknownObjectRelease();
    goto LABEL_137;
  }

  v116 = swift_dynamicCastClass();

  if (!v116)
  {
    swift_unknownObjectRelease();
    v116 = MEMORY[0x1E69E7CC0];
  }

  swift_unknownObjectRelease();
LABEL_145:
  v107 = v116;
  *&v7 = MEMORY[0x1E69E7CC0];
LABEL_146:
  v14 = v129;
  if (v107 >> 62)
  {
    a2 = __CocoaSet.count.getter();

    if (a2)
    {
      goto LABEL_172;
    }

LABEL_159:

    MEMORY[0x1DA6CD190](v119);
    if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_179;
    }

    goto LABEL_160;
  }

  a2 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!a2)
  {
    goto LABEL_159;
  }

LABEL_172:

  return a2 == 0;
}

uint64_t specialized static ReflowTextLine.layoutBackwards(_:textScalePercentage:span:lineIndex:baseline:)(unint64_t a1, int64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, CGFloat a8, double a9)
{
  v148 = a3;
  v136 = a5;
  v154 = a4;
  v16 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);
  v17 = v16;
  LODWORD(v18) = v16 < 0 || (v16 & 0x4000000000000000) != 0;
  if (v18 == 1)
  {
    goto LABEL_160;
  }

  v19 = *(v16 + 16);
  if (!v19)
  {
    goto LABEL_161;
  }

LABEL_6:
  v150 = v17 & 0xC000000000000001;
  if ((v17 & 0xC000000000000001) == 0)
  {
    if (*(v17 + 16))
    {
      v20 = *(v17 + 32);

      goto LABEL_9;
    }

    goto LABEL_164;
  }

LABEL_162:

  v20 = MEMORY[0x1DA6CE0C0](0, v17);
LABEL_9:
  v21 = v20[2];
  v22 = v20[3];
  v24 = v20[4];
  v23 = v20[5];

  v156.origin.x = v21;
  v156.origin.y = v22;
  v156.size.width = v24;
  v156.size.height = v23;
  v25 = v136 - CGRectGetMaxX(v156);
  if (v25 < 0.0)
  {
    v25 = 0.0;
  }

  v134 = v25;
  v26 = v19 - 1;
  if (__OFSUB__(v19, 1))
  {
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    v10 = __CocoaSet.count.getter();
    goto LABEL_22;
  }

  if (v150)
  {
    v27 = MEMORY[0x1DA6CE0C0](v26, v17);
  }

  else
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    if (v26 >= *(v17 + 16))
    {
      goto LABEL_167;
    }

    v27 = *(v17 + 8 * v26 + 32);
  }

  v138 = v19;
  v28 = (*(*v27 + 144))();

  if (v28)
  {

    v9 = specialized Sequence.dropLast(_:)(1, v17);
  }

  else
  {

    v9 = v17;
  }

  if (v9 >> 62)
  {
    goto LABEL_165;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:
  v29 = 0.0;
  v30 = 0.0;
  if (!v10)
  {
    goto LABEL_41;
  }

  v31 = 0;
  v32 = v9 & 0xC000000000000001;
  v33 = 0.0;
  while (1)
  {
    if (!v32)
    {
      if (v31 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        v35 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        goto LABEL_27;
      }

LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      v19 = __CocoaSet.count.getter();
      if (v19)
      {
        goto LABEL_6;
      }

LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    v34 = MEMORY[0x1DA6CE0C0](v31, v9);
    v35 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

LABEL_27:
    v36 = *(v34 + 32);

    v33 = v33 + v36;
    ++v31;
    if (v35 == v10)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_32:
  v37 = 0;
  v30 = 0.0;
  v29 = v33 + 0.0;
  while (2)
  {
    if (v32)
    {
      v38 = MEMORY[0x1DA6CE0C0](v37, v9);
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      goto LABEL_36;
    }

    if (v37 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_155;
    }

    v38 = *(v9 + 8 * v37 + 32);

    v39 = v37 + 1;
    if (!__OFADD__(v37, 1))
    {
LABEL_36:
      v40 = (*(*v38 + 152))();

      v30 = v30 + v40;
      ++v37;
      if (v39 == v10)
      {
        goto LABEL_41;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_41:
  v41 = sqrt((a8 - a6) * (a8 - a6) + (a9 - a7) * (a9 - a7));
  v42 = (a8 - a6) / v41;
  v43 = (a9 - a7) / v41;
  v44 = v136;
  v45 = v42 * v136 + a6;
  a8 = v43 * v136 + a7;
  v152 = a7 - v43;
  v153 = a6 - v42;
  a7 = a2 / 100.0;
  a6 = v154;
  a9 = v134;
  v46 = a7 * (v134 + v29);

  v47 = v44 - a6;
  v48 = v46 - (v44 - a6);
  v49 = v48 > 0.0;
  v50 = fmin(v48 / (v46 - a7 * (a9 + v30)), 1.0);
  v51 = 0.0 - v48;
  if (v49)
  {
    v51 = 0.0;
  }

  else
  {
    v50 = 0.0;
  }

  v52 = v47 < v46;
  if (v47 < v46)
  {
    v53 = v50;
  }

  else
  {
    v53 = 0.0;
  }

  if (v52)
  {
    v54 = v51;
  }

  else
  {
    v54 = 0.0;
  }

  v147 = v53;
  v146 = 1.0 - v53;
  v55 = (1.0 - v53) * (a7 * v54) + a6;
  v145 = a7 * v45;
  v154 = a2 / 100.0;
  v144 = a7 * a8;
  v56 = v153;
  v57 = sqrt((v56 - v45) * (v56 - v45) + (v152 - a8) * (v152 - a8));
  v143 = (v153 - v45) / v57;
  v142 = (v152 - a8) / v57;
  v58 = sqrt((v45 - v56) * (v45 - v56) + (a8 - v152) * (a8 - v152));
  v59 = atan2((a8 - v152) / v58, (v45 - v153) / v58);
  v139 = v17 + 32;
  v60 = __sincos_stret(v59);
  sinval = v60.__sinval;
  cosval = v60.__cosval;
  v10 = 0;
  a2 = 0;
  v61 = MEMORY[0x1E69E7CC0];
  v135 = v44 + 0.1;
  v9 = v138;
  v137 = v18;
  while (2)
  {
    if (v150)
    {
      v62 = MEMORY[0x1DA6CE0C0](v10, v17);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_156;
      }
    }

    else
    {
      if (v10 >= *(v17 + 16))
      {
        goto LABEL_158;
      }

      v62 = *(v139 + 8 * v10);

      if (__OFADD__(v10, 1))
      {
        goto LABEL_156;
      }
    }

    v63 = v62[5];
    v64 = v154;
    v65 = v146 * (v154 * v62[4]);
    v66 = v65 + v147 * (v64 * (*(*v62 + 152))());
    if (!v10)
    {
      v67 = v136 - v66;
      if (v136 - v66 >= v134)
      {
        v67 = v134;
      }

      if (v67 < 0.0)
      {
        v67 = 0.0;
      }

      v55 = v55 + v67;
    }

    v68 = *(v62 + 15);
    v69 = *v62;
    v152 = v66;
    if (v68 == v148)
    {
      (*(v69 + 240))();
    }

    else
    {
      (*(v69 + 272))();
    }

    v72 = v70;
    v151 = v71;
    v153 = v55;
    v73 = v145 + v143 * (v55 / cosval);
    v74 = v144 + v142 * (v55 / cosval);
    v75 = v154;
    v76 = v154 * v63;
    v77 = v62[4];
    v78 = v62[5];
    v157.origin.x = 0.0;
    v157.origin.y = 0.0;
    v157.size.width = v77;
    v157.size.height = v78;
    MinX = CGRectGetMinX(v157);
    v158.origin.x = 0.0;
    v158.origin.y = 0.0;
    v158.size.width = v77;
    v158.size.height = v78;
    v80 = MinX + v72 * CGRectGetWidth(v158);
    v159.origin.x = 0.0;
    v159.origin.y = 0.0;
    v159.size.width = v77;
    v159.size.height = v78;
    MinY = CGRectGetMinY(v159);
    v160.origin.x = 0.0;
    v160.origin.y = 0.0;
    v160.size.width = v77;
    v160.size.height = v78;
    Height = CGRectGetHeight(v160);
    v83 = v75 * v80;
    v84 = v75 * (MinY + v151 * Height);
    v85 = v76;
    v86 = v73 - v83;
    a8 = v74 - (v84 - sinval * v83);
    v88 = v62[2];
    v87 = v62[3];
    v89 = v62[4];
    v90 = v62[5];
    v161.origin.x = v86;
    v161.origin.y = a8;
    a6 = v152;
    v161.size.width = v152;
    v161.size.height = v85;
    IsNull = CGRectIsNull(v161);
    v162.origin.x = v88;
    v162.origin.y = v87;
    v162.size.width = v89;
    v162.size.height = v90;
    v92 = CGRectIsNull(v162);
    if (IsNull)
    {
      v93 = v92 == 0;
    }

    else
    {
      v93 = 1;
    }

    if (!v93 || ((v94 = vabdd_f64(v86, v88), IsNull == v92) ? (v95 = v94 < 2.0) : (v95 = 0), (v96 = vabdd_f64(a8, v87), v95) ? (v97 = v96 < 2.0) : (v97 = 0), (v98 = vabdd_f64(a6, v89), v97) ? (v99 = v98 < 2.0) : (v99 = 0), (v100 = vabdd_f64(v85, v90), v99) ? (v101 = v100 < 2.0) : (v101 = 0), v101))
    {
      v86 = v62[2];
      a8 = v62[3];
      a6 = v62[4];
      v85 = v62[5];
    }

    a7 = v85;
    v102 = floor(v86 + v86);
    v103 = ceil(v86 + v86);
    if (v86 + v86 - v102 < 0.49)
    {
      v104 = v102;
    }

    else
    {
      v104 = v103;
    }

    v105 = floor(a8 + a8);
    v106 = ceil(a8 + a8);
    if (a8 + a8 - v105 < 0.49)
    {
      a9 = v105;
    }

    else
    {
      a9 = v106;
    }

    if (!v10)
    {
      v109 = 0;
      v107 = v153;
      goto LABEL_117;
    }

    v107 = v153;
    if (v18)
    {
      if (__CocoaSet.count.getter() < 0)
      {
        goto LABEL_159;
      }

      v108 = __CocoaSet.count.getter();
    }

    else
    {
      v108 = *(v17 + 16);
    }

    if (v108 < v10)
    {
      goto LABEL_157;
    }

    if (!v150)
    {

      v149 = v61;
      if (v18)
      {
        goto LABEL_103;
      }

      goto LABEL_105;
    }

    type metadata accessor for ReflowElement();

    v110 = 0;
    do
    {
      v111 = v110 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v110);
      v110 = v111;
    }

    while (v10 != v111);
    v149 = v61;
    if (!v18)
    {
LABEL_105:
      v18 = 0;
      v113 = v17;
      v9 = v139;
      v112 = (2 * v10) | 1;
      goto LABEL_106;
    }

LABEL_103:

    v110 = _CocoaArrayWrapper.subscript.getter();
    v113 = v110;
    v9 = v114;
    v18 = v115;
LABEL_106:
    v155[0] = v113;
    v155[1] = v9;
    v116 = v112 >> 1;
    v155[2] = v18;
    v155[3] = v112;
    while (1)
    {
      v117 = v116;
      if (v18 == v116)
      {
        break;
      }

      --v116;
      if (__OFSUB__(v117, 1))
      {
        __break(1u);
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      if (v116 < v18)
      {
        goto LABEL_153;
      }

      type metadata accessor for ReflowWord();
      v110 = swift_dynamicCastClass();
      if (v110)
      {
        goto LABEL_113;
      }
    }

    v116 = 0;
LABEL_113:
    MEMORY[0x1EEE9AC00](v110);
    v133[2] = v155;
    v119 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8PaperKit13ReflowElementCTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v133, v116, v118);
    swift_unknownObjectRelease();
    if (v119)
    {
      type metadata accessor for ReflowWord();
      v109 = swift_dynamicCastClass();
      LODWORD(v18) = v137;
      v9 = v138;
      v61 = v149;
      if (!v109)
      {
      }
    }

    else
    {
      v109 = 0;
      LODWORD(v18) = v137;
      v9 = v138;
      v61 = v149;
    }

LABEL_117:
    if (((*(*v62 + 144))() & 1) != 0 || v135 >= v107 + v62[8] && (!v109 || *(v109 + 136) != 1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
      }

      v121 = *(v61 + 2);
      v120 = *(v61 + 3);
      if (v121 >= v120 >> 1)
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1, v61);
      }

      ++v10;

      *(v61 + 2) = v121 + 1;
      v122 = &v61[32 * v121];
      v122[4] = v104 * 0.5;
      v122[5] = a9 * 0.5;
      v122[6] = a6;
      v122[7] = a7;
      v55 = v107 + a6;
      if (v10 == v9)
      {

        return specialized Sequence.reversed()(v61);
      }

      continue;
    }

    break;
  }

  if (v9 < v10)
  {
    goto LABEL_168;
  }

  if (v18)
  {
    if (__CocoaSet.count.getter() >= v10)
    {
      a2 = __CocoaSet.count.getter();
      goto LABEL_132;
    }

LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  a2 = *(v17 + 16);
  if (a2 < v10)
  {
    goto LABEL_169;
  }

LABEL_132:

  if (a2 < v9)
  {
    goto LABEL_170;
  }

  if (v150)
  {
    type metadata accessor for ReflowElement();

    v123 = v10;
    do
    {
      v124 = v123 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v123);
      v123 = v124;
    }

    while (v9 != v124);
  }

  else
  {
  }

  if (!v18)
  {
    a2 = (2 * v9) | 1;
    goto LABEL_143;
  }

  v125 = _CocoaArrayWrapper.subscript.getter();
  v139 = v126;
  v10 = v127;
  a2 = v128;

  v17 = v125;
  if (a2)
  {
LABEL_143:
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v129 = swift_dynamicCastClass();
    if (!v129)
    {
      swift_unknownObjectRelease();
      v129 = MEMORY[0x1E69E7CC0];
    }

    v130 = *(v129 + 16);

    if (__OFSUB__(a2 >> 1, v10))
    {
      goto LABEL_171;
    }

    if (v130 == (a2 >> 1) - v10)
    {
      v131 = swift_dynamicCastClass();

      swift_unknownObjectRelease();
      if (!v131)
      {
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      goto LABEL_150;
    }

LABEL_172:
    swift_unknownObjectRelease_n();
  }

  specialized _copyCollectionToContiguousArray<A>(_:)(v17, v139, v10, a2);
  swift_unknownObjectRelease();

LABEL_150:
  v61 = MEMORY[0x1E69E7CC0];
  return specialized Sequence.reversed()(v61);
}

uint64_t specialized static ReflowTextLine.layoutTextAdjustingBackwards(_:textScalePercentage:spacingAdjustment:lineIndex:baseline:previousLine:)(unint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6, double MaxX, CGFloat a8, double a9)
{
  v153 = a5;
  v154 = a2;
  v17 = a1;
  v158 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_94;
  }

  v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    if (!v18)
    {
      v22 = MEMORY[0x1E69E7CC0];
      goto LABEL_75;
    }

    if (*(a3 + 32) < 0.0)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = *(a3 + 32);
    }

    v21 = specialized static ReflowTextLine.layoutBackwards(_:textScalePercentage:span:lineIndex:baseline:)(v20, v154, a4, 0.0, v11, a6, MaxX, a8, a9);

    v10 = *(v21 + 16);
    if (!v10)
    {
      while (1)
      {
        v30 = v19;

        v31 = v17 >> 62;
        if (v17 >> 62)
        {
          v32 = __CocoaSet.count.getter();
          if (!v32)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v32 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v32)
          {
            goto LABEL_88;
          }
        }

        v9 = v17 & 0xC000000000000001;
        if ((v17 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x1DA6CE0C0](0, v17);
        }

        else
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_89;
          }
        }

        MEMORY[0x1DA6CD190](v33);
        if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if (v32 < 0)
        {
          goto LABEL_242;
        }

        v22 = v158;
        if (v31)
        {
          if (__CocoaSet.count.getter() < 1)
          {
            goto LABEL_90;
          }

          v35 = __CocoaSet.count.getter();
        }

        else
        {
          v35 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v35)
          {
            goto LABEL_90;
          }
        }

        if (v35 < v32)
        {
          goto LABEL_91;
        }

        if (!v9 || v32 == 1)
        {
        }

        else
        {
          type metadata accessor for ReflowElement();

          v36 = 1;
          do
          {
            v37 = v36 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v36);
            v36 = v37;
          }

          while (v32 != v37);
        }

        if (v31)
        {
          _CocoaArrayWrapper.subscript.getter();
          v39 = v42;
          v44 = v43;

          v9 = v44 >> 1;
          if ((v44 & 1) == 0)
          {
LABEL_50:
            v10 = v9 - v39;
            if (__OFSUB__(v9, v39))
            {
              goto LABEL_92;
            }

            if (v10)
            {
              goto LABEL_52;
            }

LABEL_63:
            v17 = MEMORY[0x1E69E7CC0];
LABEL_64:
            v19 = v30;
LABEL_65:
            swift_unknownObjectRelease();
            goto LABEL_66;
          }
        }

        else
        {
          v38 = (2 * v32) | 1;
          v39 = 1;
          v9 = v38 >> 1;
          if ((v38 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        v17 = type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v40 = swift_dynamicCastClass();
        if (!v40)
        {
          swift_unknownObjectRelease();
          v40 = MEMORY[0x1E69E7CC0];
        }

        v41 = *(v40 + 16);

        v10 = v9 - v39;
        if (__OFSUB__(v9, v39))
        {
          goto LABEL_93;
        }

        if (v41 != v10)
        {
          result = swift_unknownObjectRelease_n();
          if (!v10)
          {
            goto LABEL_63;
          }

LABEL_52:
          if (v10 < 1)
          {
            v17 = MEMORY[0x1E69E7CC0];
            if (v39 == v9)
            {
              goto LABEL_243;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
            v17 = swift_allocObject();
            result = _swift_stdlib_malloc_size_0(v17);
            v45 = result - 32;
            if (result < 32)
            {
              v45 = result - 25;
            }

            *(v17 + 16) = v10;
            *(v17 + 24) = (2 * (v45 >> 3)) | 1;
            if (v39 == v9)
            {
              goto LABEL_243;
            }
          }

          type metadata accessor for ReflowElement();
          swift_arrayInitWithCopy();
          goto LABEL_64;
        }

        v17 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        v19 = v30;
        if (!v17)
        {
          v17 = MEMORY[0x1E69E7CC0];
          goto LABEL_65;
        }

LABEL_66:
        if ((v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
        {
          if (!__CocoaSet.count.getter())
          {
LABEL_72:

            goto LABEL_75;
          }
        }

        else if (!*(v17 + 16))
        {
          goto LABEL_72;
        }

        v21 = specialized static ReflowTextLine.layoutBackwards(_:textScalePercentage:span:lineIndex:baseline:)(v17, v154, a4, 0.0, v11, a6, MaxX, a8, a9);

        v10 = *(v21 + 16);
        if (v10)
        {
          goto LABEL_9;
        }
      }
    }

    v22 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v23 = *(v153 + 160);
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
    }

    else
    {
      v9 = v17 & 0xFFFFFFFFFFFFFF8;
      if (!(v17 >> 62))
      {
        a4 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_12;
      }
    }

    a4 = __CocoaSet.count.getter();
LABEL_12:
    v25 = 0;
    a9 = v24;
    v26 = (v21 + 48);
    do
    {
      if (v25 >= *(v21 + 16))
      {
        goto LABEL_86;
      }

      if (a4 == v25)
      {
        break;
      }

      v27 = *(v26 - 1);
      v155 = *v26;
      v156 = v27;
      if ((v17 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1DA6CE0C0](v25, v17);
      }

      else
      {
        if (v25 >= *(v9 + 16))
        {
          goto LABEL_87;
        }
      }

      ++v25;
      v29 = v155;
      *(v28 + 48) = v156;
      *(v28 + 64) = v29;
      *(v28 + 80) = a9;

      v26 += 2;
    }

    while (v10 != v25);

    v19 = MEMORY[0x1E69E7CC0];
LABEL_75:
    v151 = v22 >> 62;
    if (v22 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_220;
      }
    }

    else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_220;
    }

    v46 = *v153;
    if (*v153 >> 62)
    {
      break;
    }

    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v47)
    {
      goto LABEL_98;
    }

LABEL_79:
    v48 = __OFSUB__(v47, 1);
    result = v47 - 1;
    if (v48)
    {
      __break(1u);
LABEL_235:
      v49 = MEMORY[0x1DA6CE0C0](result, v46);
      goto LABEL_84;
    }

    if ((v46 & 0xC000000000000001) != 0)
    {
      goto LABEL_235;
    }

    if (result < 0)
    {
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
      goto LABEL_239;
    }

    if (result >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_238;
    }

LABEL_84:
    a9 = *(v49 + 48);
    a8 = *(v49 + 56);
    v50 = *(v49 + 64);
    a6 = *(v49 + 72);

    v159.origin.x = a9;
    v159.origin.y = a8;
    v159.size.width = v50;
    v159.size.height = a6;
    MaxX = CGRectGetMaxX(v159);
    if (MaxX <= 1.79769313e308)
    {
      goto LABEL_99;
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    v51 = a3;
    v18 = __CocoaSet.count.getter();
    a3 = v51;
  }

  v47 = __CocoaSet.count.getter();
  if (v47)
  {
    goto LABEL_79;
  }

LABEL_98:
  MaxX = 0.0;
LABEL_99:
  v150 = *(v153 + 160);
  a9 = *(v153 + 40);
  a8 = *(v153 + 48);
  a6 = *(v153 + 56);
  v11 = *(v153 + 64);
  if (v151)
  {
    v10 = __CocoaSet.count.getter();
    if (!v10)
    {
      goto LABEL_109;
    }
  }

  else
  {
    v10 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
LABEL_109:

      v55 = v22;
      goto LABEL_110;
    }
  }

  result = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_237;
  }

  if ((v22 & 0xC000000000000001) == 0)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else if (result < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v52 = *(v22 + 8 * result + 32);

      goto LABEL_106;
    }

    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
    return result;
  }

LABEL_239:
  v53 = MEMORY[0x1DA6CE0C0](result, v22);
  v52 = v53;
LABEL_106:
  v54 = (*(*v52 + 144))(v53);

  if ((v54 & 1) == 0)
  {
    goto LABEL_109;
  }

  v55 = specialized Sequence.dropLast(_:)(1, v22);
LABEL_110:
  if (v55 >> 62)
  {
    goto LABEL_134;
  }

  v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v56)
  {
    while (1)
    {
      v57 = 0;
      v58 = v55 & 0xC000000000000001;
      while (v58)
      {
        MEMORY[0x1DA6CE0C0](v57, v55);
        swift_unknownObjectRelease();
        v48 = __OFADD__(v57++, 1);
        if (v48)
        {
          __break(1u);
LABEL_122:
          v59 = 0;
          while (1)
          {
            if (v58)
            {
              v60 = MEMORY[0x1DA6CE0C0](v59, v55);
              v61 = v59 + 1;
              if (__OFADD__(v59, 1))
              {
                goto LABEL_130;
              }
            }

            else
            {
              if (v59 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_133;
              }

              v60 = *(v55 + 8 * v59 + 32);

              v61 = v59 + 1;
              if (__OFADD__(v59, 1))
              {
LABEL_130:
                __break(1u);
LABEL_131:
                __break(1u);
                goto LABEL_132;
              }
            }

            (*(*v60 + 152))();

            ++v59;
            if (v61 == v56)
            {
              goto LABEL_135;
            }
          }
        }

LABEL_117:
        if (v57 == v56)
        {
          goto LABEL_122;
        }
      }

      if ((v57 & 0x8000000000000000) != 0)
      {
        goto LABEL_131;
      }

      if (v57 < *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      v56 = __CocoaSet.count.getter();
      if (!v56)
      {
        goto LABEL_135;
      }
    }

    ++v57;
    goto LABEL_117;
  }

LABEL_135:

  if (v10)
  {
    v62 = v154 / 100.0;
    v147 = v62 * a9;
    v146 = v62 * a8;
    v63 = sqrt((a6 - a9) * (a6 - a9) + (v11 - a8) * (v11 - a8));
    v144 = (v11 - a8) / v63;
    v145 = (a6 - a9) / v63;
    v64 = atan2(v144, v145);
    v148 = v62;
    v65 = v62 * 0.0 + MaxX;
    v153 = v22 & 0xC000000000000001;
    v140 = v22 + 32;
    v66 = __sincos_stret(v64);
    sinval = v66.__sinval;
    cosval = v66.__cosval;
    v67 = 0;
    if ((v22 & 0x8000000000000000) != 0)
    {
      v68 = v22;
    }

    else
    {
      v68 = v22 & 0xFFFFFFFFFFFFFF8;
    }

    v149 = v68;
    v152 = v22 & 0xFFFFFFFFFFFFFF8;
    v138 = (v22 & 0xFFFFFFFFFFFFFF8) + 32;
    v19 = MEMORY[0x1E69E7CC0];
    v141 = 0.49;
    v139 = v10;
    while (1)
    {
      if (v153)
      {
        v69 = MEMORY[0x1DA6CE0C0](v67, v22);
        if (__OFADD__(v67, 1))
        {
          goto LABEL_225;
        }
      }

      else
      {
        if (v67 >= *(v152 + 16))
        {
          goto LABEL_226;
        }

        v69 = *(v140 + 8 * v67);

        if (__OFADD__(v67, 1))
        {
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          v136 = __CocoaSet.count.getter();
          goto LABEL_222;
        }
      }

      v71 = *(v69 + 32);
      v70 = *(v69 + 40);
      v72 = (*(*v69 + 152))();
      if (!v67)
      {
        v65 = v65 + 0.0;
      }

      v73 = *v69;
      if (v150 == *(v69 + 120))
      {
        (*(v73 + 240))();
      }

      else
      {
        v74 = (*(v73 + 272))();
      }

      v76 = v74;
      *&v156 = v75;
      v77 = v148;
      *&v155 = v77 * v71 + v77 * v72 * 0.0;
      *&v154 = v65;
      v78 = v147 + v145 * (v65 / cosval);
      v79 = v146 + v144 * (v65 / cosval);
      v80 = v148 * v70;
      v81 = *(v69 + 32);
      v82 = *(v69 + 40);
      v160.origin.x = 0.0;
      v160.origin.y = 0.0;
      v160.size.width = v81;
      v160.size.height = v82;
      MinX = CGRectGetMinX(v160);
      v161.origin.x = 0.0;
      v161.origin.y = 0.0;
      v161.size.width = v81;
      v161.size.height = v82;
      v84 = MinX + v76 * CGRectGetWidth(v161);
      v162.origin.x = 0.0;
      v162.origin.y = 0.0;
      v162.size.width = v81;
      v162.size.height = v82;
      MinY = CGRectGetMinY(v162);
      v163.origin.x = 0.0;
      v163.origin.y = 0.0;
      v163.size.width = v81;
      v163.size.height = v82;
      Height = CGRectGetHeight(v163);
      v87 = v77 * v84;
      v88 = v78 - v77 * v84;
      v89 = v79 - (v77 * (MinY + *&v156 * Height) - sinval * v87);
      v90 = *&v155;
      v92 = *(v69 + 16);
      v91 = *(v69 + 24);
      v94 = *(v69 + 32);
      v93 = *(v69 + 40);
      v164.origin.x = v88;
      v164.origin.y = v89;
      *&v164.size.width = v155;
      v164.size.height = v80;
      IsNull = CGRectIsNull(v164);
      v165.origin.x = v92;
      v165.origin.y = v91;
      v165.size.width = v94;
      v165.size.height = v93;
      v96 = CGRectIsNull(v165);
      if (IsNull)
      {
        v97 = v96 == 0;
      }

      else
      {
        v97 = 1;
      }

      if (!v97 || ((v98 = vabdd_f64(v88, v92), IsNull == v96) ? (v99 = v98 < 2.0) : (v99 = 0), (v100 = vabdd_f64(v89, v91), v99) ? (v101 = v100 < 2.0) : (v101 = 0), (v102 = vabdd_f64(v90, v94), v101) ? (v103 = v102 < 2.0) : (v103 = 0), (v104 = vabdd_f64(v80, v93), v103) ? (v105 = v104 < 2.0) : (v105 = 0), v105))
      {
        v88 = *(v69 + 16);
        v89 = *(v69 + 24);
        v90 = *(v69 + 32);
        v80 = *(v69 + 40);
      }

      v106 = floor(v88 + v88);
      v107 = ceil(v88 + v88);
      if (v88 + v88 - v106 < v141)
      {
        v108 = v106;
      }

      else
      {
        v108 = v107;
      }

      v109 = floor(v89 + v89);
      v110 = ceil(v89 + v89);
      if (v89 + v89 - v109 < v141)
      {
        v111 = v109;
      }

      else
      {
        v111 = v110;
      }

      if (v67)
      {
        if (v151)
        {
          if (__CocoaSet.count.getter() < 0)
          {
            goto LABEL_230;
          }

          v112 = __CocoaSet.count.getter();
        }

        else
        {
          v112 = *(v152 + 16);
        }

        if (v112 < v67)
        {
          goto LABEL_229;
        }

        if (v153)
        {
          type metadata accessor for ReflowElement();

          v113 = 0;
          do
          {
            v114 = v113 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v113);
            v113 = v114;
          }

          while (v67 != v114);
        }

        else
        {
        }

        *&v156 = v19;
        if (v151)
        {

          v113 = _CocoaArrayWrapper.subscript.getter();
          v116 = v113;
          v117 = v119;
          v115 = v120;
        }

        else
        {
          v115 = 0;
          v116 = v152;
          v117 = v138;
          v118 = (2 * v67) | 1;
        }

        v157[0] = v116;
        v157[1] = v117;
        v121 = v118 >> 1;
        v157[2] = v115;
        v157[3] = v118;
        while (1)
        {
          v122 = v121;
          if (v115 == v121)
          {
            break;
          }

          --v121;
          if (__OFSUB__(v122, 1))
          {
            __break(1u);
LABEL_224:
            __break(1u);
            goto LABEL_225;
          }

          if (v121 < v115)
          {
            goto LABEL_224;
          }

          type metadata accessor for ReflowWord();
          v113 = swift_dynamicCastClass();
          if (v113)
          {
            goto LABEL_196;
          }
        }

        v121 = 0;
LABEL_196:
        MEMORY[0x1EEE9AC00](v113);
        v137[2] = v157;
        v124 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8PaperKit13ReflowElementCTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v137, v121, v123);
        swift_unknownObjectRelease();
        if (v124)
        {
          type metadata accessor for ReflowWord();
          v125 = swift_dynamicCastClass();
          v19 = v156;
          if (!v125)
          {
          }
        }

        else
        {
          v19 = v156;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
      }

      v127 = *(v19 + 2);
      v126 = *(v19 + 3);
      v128 = v127 + 1;
      if (v127 >= v126 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v19);
      }

      ++v67;

      *(v19 + 2) = v128;
      v129 = &v19[32 * v127];
      v129[4] = v108 * 0.5;
      v129[5] = v111 * 0.5;
      v129[6] = v90;
      v129[7] = v80;
      v65 = *&v154 + v90;
      v10 = v139;
      if (v67 == v139)
      {
        goto LABEL_210;
      }
    }
  }

  v128 = *(v19 + 2);
  if (v128)
  {
LABEL_210:
    v130 = 0;
    v131 = v150;
    v132 = (v19 + 48);
    while (v130 < *(v19 + 2))
    {
      if (v10 == v130)
      {
        goto LABEL_219;
      }

      v133 = *(v132 - 1);
      v155 = *v132;
      v156 = v133;
      if ((v22 & 0xC000000000000001) != 0)
      {
        v134 = MEMORY[0x1DA6CE0C0](v130, v22);
      }

      else
      {
        if (v130 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_228;
        }
      }

      ++v130;
      v135 = v155;
      *(v134 + 48) = v156;
      *(v134 + 64) = v135;
      *(v134 + 80) = v131;

      v132 += 2;
      if (v128 == v130)
      {
        goto LABEL_219;
      }
    }

    goto LABEL_227;
  }

LABEL_219:

LABEL_220:
  if (v151)
  {
    goto LABEL_231;
  }

  v136 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_222:

  return v136;
}

char *specialized static ReflowTextLine.layout(_:textScalePercentage:span:lineIndex:baseline:hardHeadIndent:softHeadIndent:canCompress:canOverflow:isWholeLine:isReversed:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, int a6, int a7, double a8, double a9, CGFloat a10, CGFloat a11, double a12, double a13, double a14, double a15)
{
  v141 = a7;
  v122 = a6;
  LODWORD(v17) = a5;
  v139 = a3;
  v123 = a14;
  v124 = a9;
  v146 = a8;
  v25 = a1;
  v142 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v127 = v26;
  if (!v26)
  {
    goto LABEL_11;
  }

  v27 = v127 - 1;
  if (__OFSUB__(v127, 1))
  {
LABEL_157:
    __break(1u);
  }

  else if ((v25 & 0xC000000000000001) == 0)
  {
    if (v27 < 0)
    {
      __break(1u);
    }

    else if (v27 < *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(v25 + 8 * v27 + 32);

      goto LABEL_9;
    }

    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v29 = MEMORY[0x1DA6CE0C0](v27, v25);
  v28 = v29;
LABEL_9:
  v30 = (*(*v28 + 144))(v29);

  if ((v30 & 1) == 0)
  {
LABEL_11:

    v31 = v25;
    goto LABEL_12;
  }

  v31 = specialized Sequence.dropLast(_:)(1, v25);
LABEL_12:
  LODWORD(v145) = v17;
  if (v31 >> 62)
  {
    v15 = __CocoaSet.count.getter();
    if (v15)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v15 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_14:
      v32 = 0;
      v33 = v31 & 0xC000000000000001;
      v16 = v31 & 0xFFFFFFFFFFFFFF8;
      v34 = 0.0;
      while (1)
      {
        if (v33)
        {
          v35 = MEMORY[0x1DA6CE0C0](v32, v31);
          v17 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v17 = 0;
            v37 = v34 + a15;
            v38 = 0.0;
            while (1)
            {
              if (v33)
              {
                v39 = MEMORY[0x1DA6CE0C0](v17, v31);
                v40 = v17 + 1;
                if (__OFADD__(v17, 1))
                {
                  goto LABEL_31;
                }
              }

              else
              {
                if (v17 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_33;
                }

                v39 = *(v31 + 8 * v17 + 32);

                v40 = v17 + 1;
                if (__OFADD__(v17, 1))
                {
LABEL_31:
                  __break(1u);
                  goto LABEL_32;
                }
              }

              v41 = (*(*v39 + 152))();

              v38 = v38 + v41;
              ++v17;
              if (v40 == v15)
              {
                goto LABEL_37;
              }
            }
          }
        }

        else
        {
          if (v32 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            v26 = __CocoaSet.count.getter();
            goto LABEL_3;
          }

          v17 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_22;
          }
        }

        v36 = *(v35 + 32);

        v34 = v34 + v36;
        ++v32;
        if (v17 == v15)
        {
          goto LABEL_23;
        }
      }
    }
  }

  v38 = 0.0;
  v37 = a15 + 0.0;
LABEL_37:
  v42 = a2 / 100.0;

  v140 = 0.0;
  if (a4)
  {
    v43 = v42 * (v37 + v123);
    v44 = v124 - v146;
    a2 = v127;
    v45 = v42;
    if (v124 - v146 < v43)
    {
      if (v43 - v44 <= a15)
      {
        a15 = a15 - (v43 - v44);
      }

      else
      {
        v140 = fmin((v43 - a15 - v44) / (v43 - a15 - v42 * (v38 + v123)), 1.0);
        a15 = 0.0;
      }
    }
  }

  else
  {
    a2 = v127;
    v45 = v42;
  }

  v46 = sqrt((a12 - a10) * (a12 - a10) + (a13 - a11) * (a13 - a11));
  v137 = (a13 - a11) / v46;
  v138 = (a12 - a10) / v46;
  v47 = atan2(v137, v138);
  if (v141)
  {
    v48 = sqrt((a10 - a12) * (a10 - a12) + (a11 - a13) * (a11 - a13));
    v47 = atan2((a11 - a13) / v48, (a10 - a12) / v48);
  }

  if (!a2)
  {
    *&v51 = MEMORY[0x1E69E7CC0];
    return v51;
  }

  v135 = 1.0 - v140;
  a13 = (1.0 - v140) * (v45 * a15) + v146;
  v134 = v45 * a10;
  v133 = v45 * a11;
  v143 = v25 & 0xC000000000000001;
  v15 = v25 & 0xFFFFFFFFFFFFFF8;
  v129 = v25 + 32;
  v49 = __sincos_stret(v47);
  sinval = v49.__sinval;
  cosval = v49.__cosval;
  v16 = 0;
  a4 = 0;
  if ((v25 & 0x8000000000000000) != 0)
  {
    v50 = v25;
  }

  else
  {
    v50 = v25 & 0xFFFFFFFFFFFFFF8;
  }

  v126 = v50;
  v121 = v15 + 32;
  v128 = LODWORD(v145) ^ 1;
  v120 = v124 + 0.1;
  *&v51 = MEMORY[0x1E69E7CC0];
  v130 = 0.49;
  v125 = v25 & 0xFFFFFFFFFFFFFF8;
  v136 = v45;
  while (1)
  {
    if (v143)
    {
      v27 = MEMORY[0x1DA6CE0C0](v16, v25);
      v52 = v27;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_153;
      }
    }

    else
    {
      if (v16 >= *(v15 + 16))
      {
        goto LABEL_154;
      }

      v52 = *(v129 + 8 * v16);

      if (__OFADD__(v16, 1))
      {
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }
    }

    v53 = v52[5];
    v54 = v135 * (v45 * v52[4]);
    v55 = v54 + v140 * (v45 * (*(*v52 + 152))());
    if (!v16)
    {
      v56 = v124 - v55;
      if (v124 - v55 >= v123)
      {
        v56 = v123;
      }

      if (v56 < 0.0)
      {
        v56 = 0.0;
      }

      a13 = a13 + v56;
    }

    v57 = *(v52 + 15);
    v58 = *v52;
    v145 = v55;
    if (v57 == v139)
    {
      (*(v58 + 240))();
      if ((v141 & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else
    {
      (*(v58 + 272))();
      if ((v141 & 1) == 0)
      {
LABEL_61:
        v63 = v59;
        v144 = v60;
        goto LABEL_64;
      }
    }

    v63 = v61;
    v144 = v62;
LABEL_64:
    v146 = a13;
    v64 = v134 + v138 * (a13 / cosval);
    v65 = v133 + v137 * (a13 / cosval);
    v66 = v45 * v53;
    v67 = v45;
    v68 = v52[4];
    v69 = v52[5];
    v148.origin.x = 0.0;
    v148.origin.y = 0.0;
    v148.size.width = v68;
    v148.size.height = v69;
    MinX = CGRectGetMinX(v148);
    v149.origin.x = 0.0;
    v149.origin.y = 0.0;
    v149.size.width = v68;
    v149.size.height = v69;
    v71 = MinX + v63 * CGRectGetWidth(v149);
    v150.origin.x = 0.0;
    v150.origin.y = 0.0;
    v150.size.width = v68;
    v150.size.height = v69;
    MinY = CGRectGetMinY(v150);
    v151.origin.x = 0.0;
    v151.origin.y = 0.0;
    v151.size.width = v68;
    v151.size.height = v69;
    v73 = v67 * (MinY + v144 * CGRectGetHeight(v151));
    v74 = v64 - v67 * v71;
    v75 = v65 - (v73 - sinval * (v67 * v71));
    v77 = v52[2];
    v76 = v52[3];
    a10 = v52[4];
    a11 = v52[5];
    v152.origin.x = v74;
    v152.origin.y = v75;
    a15 = v145;
    v152.size.width = v145;
    v152.size.height = v66;
    IsNull = CGRectIsNull(v152);
    v153.origin.x = v77;
    v153.origin.y = v76;
    v153.size.width = a10;
    v153.size.height = a11;
    v79 = CGRectIsNull(v153);
    if (IsNull && (v79 & 1) != 0 || ((v80 = vabdd_f64(v74, v77), IsNull == v79) ? (v81 = v80 < 2.0) : (v81 = 0), (v82 = vabdd_f64(v75, v76), v81) ? (v83 = v82 < 2.0) : (v83 = 0), (v84 = vabdd_f64(a15, a10), v83) ? (v85 = v84 < 2.0) : (v85 = 0), (v86 = vabdd_f64(v66, a11), v85) ? (v87 = v86 < 2.0) : (v87 = 0), v87))
    {
      v74 = v52[2];
      v75 = v52[3];
      a15 = v52[4];
      v66 = v52[5];
    }

    v88 = v66;
    v89 = floor(v74 + v74);
    v90 = ceil(v74 + v74);
    if (v74 + v74 - v89 < v130)
    {
      v91 = v89;
    }

    else
    {
      v91 = v90;
    }

    v92 = floor(v75 + v75);
    v93 = ceil(v75 + v75);
    if (v75 + v75 - v92 < v130)
    {
      a12 = v92;
    }

    else
    {
      a12 = v93;
    }

    if (!v16)
    {
      v94 = 0;
      v95 = v122;
      v45 = v136;
      a13 = v146;
      goto LABEL_112;
    }

    v45 = v136;
    a13 = v146;
    if (v142)
    {
      a2 = v126;
      v27 = __CocoaSet.count.getter();
      if (v27 < 0)
      {
        goto LABEL_156;
      }

      v27 = __CocoaSet.count.getter();
    }

    else
    {
      v27 = *(v15 + 16);
      a2 = v126;
    }

    if (v27 < v16)
    {
      goto LABEL_155;
    }

    v145 = *&v51;
    if (v143)
    {
      type metadata accessor for ReflowElement();

      v96 = 0;
      do
      {
        v97 = v96 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v96);
        v96 = v97;
      }

      while (v16 != v97);
      if (!v142)
      {
LABEL_97:
        v98 = 0;
        v99 = v15;
        a2 = v121;
        v100 = (2 * v16) | 1;
        goto LABEL_100;
      }
    }

    else
    {

      if (!v142)
      {
        goto LABEL_97;
      }
    }

    v96 = _CocoaArrayWrapper.subscript.getter();
    v99 = v96;
    a2 = v101;
    v98 = v102;
LABEL_100:
    v147[0] = v99;
    v147[1] = a2;
    v103 = v100 >> 1;
    v147[2] = v98;
    v147[3] = v100;
    while (1)
    {
      v104 = v103;
      if (v98 == v103)
      {
        break;
      }

      --v103;
      if (__OFSUB__(v104, 1))
      {
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      if (v103 < v98)
      {
        goto LABEL_140;
      }

      v15 = *(a2 + 8 * v103);
      type metadata accessor for ReflowWord();
      v96 = swift_dynamicCastClass();
      if (v96)
      {
        goto LABEL_107;
      }
    }

    v103 = 0;
LABEL_107:
    MEMORY[0x1EEE9AC00](v96);
    v119[2] = v147;
    v106 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8PaperKit13ReflowElementCTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v119, v103, v105);
    swift_unknownObjectRelease();
    if (v106)
    {
      type metadata accessor for ReflowWord();
      v94 = swift_dynamicCastClass();
      a2 = v127;
      v15 = v125;
      *&v51 = v145;
      if (!v94)
      {
      }

      v95 = 0;
    }

    else
    {
      v95 = 0;
      v94 = 0;
      a2 = v127;
      v15 = v125;
      *&v51 = v145;
    }

LABEL_112:
    if (((v95 | v128) & 1) == 0 && ((*(*v52 + 144))() & 1) == 0 && (v120 < a13 + v52[8] || v94 && *(v94 + 136) == 1))
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      *&v51 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51));
    }

    v17 = *(v51 + 2);
    v107 = *(v51 + 3);
    if (v17 >= v107 >> 1)
    {
      *&v51 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v17 + 1, 1, v51));
    }

    ++v16;

    *(v51 + 2) = v17 + 1;
    v108 = &v51[32 * v17];
    *(v108 + 4) = v91 * 0.5;
    *(v108 + 5) = a12 * 0.5;
    *(v108 + 6) = a15;
    *(v108 + 7) = v88;
    a13 = a13 + a15;
    if (v16 == a2)
    {
      return v51;
    }
  }

  if (a2 < v16)
  {
    goto LABEL_161;
  }

  if (v142)
  {
    if (__CocoaSet.count.getter() < v16)
    {
      goto LABEL_162;
    }

    v109 = __CocoaSet.count.getter();
  }

  else
  {
    v109 = *(v15 + 16);
    if (v109 < v16)
    {
      goto LABEL_162;
    }
  }

  if (v109 < a2)
  {
    goto LABEL_163;
  }

  if (v143)
  {
    type metadata accessor for ReflowElement();

    v110 = v16;
    do
    {
      v111 = v110 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v110);
      v110 = v111;
    }

    while (a2 != v111);
    if (!v142)
    {
LABEL_138:
      v25 = (2 * a2) | 1;
      goto LABEL_144;
    }
  }

  else
  {
LABEL_141:

    if (!v142)
    {
      goto LABEL_138;
    }
  }

  v15 = _CocoaArrayWrapper.subscript.getter();
  v121 = v112;
  v16 = v113;
  v25 = v114;
  if ((v114 & 1) == 0)
  {
    goto LABEL_143;
  }

LABEL_144:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v115 = swift_dynamicCastClass();
  if (!v115)
  {
    swift_unknownObjectRelease();
    v115 = MEMORY[0x1E69E7CC0];
  }

  v116 = *(v115 + 16);

  if (!__OFSUB__(v25 >> 1, v16))
  {
    if (v116 != (v25 >> 1) - v16)
    {
      goto LABEL_165;
    }

    v117 = swift_dynamicCastClass();

    if (!v117)
    {
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    goto LABEL_151;
  }

LABEL_164:
  __break(1u);
LABEL_165:
  swift_unknownObjectRelease();
LABEL_143:
  specialized _copyCollectionToContiguousArray<A>(_:)(v15, v121, v16, v25);
  swift_unknownObjectRelease();

LABEL_151:
  *&v51 = MEMORY[0x1E69E7CC0];
  return v51;
}

uint64_t ContentsBounds.bounds.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ContentsBounds(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  v8 = result;
  if (result)
  {
    result = outlined destroy of ContentsBounds(v6);
    v9 = 0uLL;
    v10 = 0uLL;
  }

  else
  {
    v9 = *v6;
    v10 = v6[1];
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v8 != 0;
  return result;
}

uint64_t outlined init with copy of ContentsBounds(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentsBounds(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ContentsBounds(uint64_t a1)
{
  v2 = type metadata accessor for ContentsBounds(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContentsBounds.quad.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of ContentsBounds(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v8 = 0;
    v11[0] = 0;
    v9 = v6[1];
    *a1 = *v6;
    *(a1 + 16) = v9;
    v10 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v10;
  }

  else
  {
    result = outlined destroy of ContentsBounds(v6);
    v8 = 1;
    v11[8] = 1;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
  }

  *(a1 + 64) = v8;
  return result;
}

uint64_t ContentsBounds.unknown.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ContentsBounds(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd) + 48);
    v8 = type metadata accessor for AnyCRValue();
    v9 = *(v8 - 8);
    (*(v9 + 32))(a1, &v6[v7], v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  else
  {
    outlined destroy of ContentsBounds(v6);
    v11 = type metadata accessor for AnyCRValue();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t ContentsBounds.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v50 = a2;
  v53 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = type metadata accessor for CRValueObservableDifference();
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v48 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsO_ACtMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v48 - v24;
  v27 = (&v48 + *(v26 + 56) - v24);
  outlined init with copy of ContentsBounds(v4, &v48 - v24);
  outlined init with copy of ContentsBounds(a1, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of ContentsBounds(v25, v19);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v27[1];
        v54 = *v27;
        v55 = v29;
        v30 = v27[3];
        v56 = v27[2];
        v57 = v30;
        v31 = v19[1];
        v58 = *v19;
        v59 = v31;
        v32 = v19[3];
        v60 = v19[2];
        v61 = v32;
        lazy protocol witness table accessor for type Quad and conformance Quad();
        lazy protocol witness table accessor for type Quad and conformance Quad();
        CRValue<>.observableDifference(from:with:)();
        v34 = v51;
        v33 = v52;
        if ((*(v51 + 48))(v8, 1, v52) != 1)
        {
          v35 = *(v34 + 32);
          v36 = v49;
          v35(v49, v8, v33);
          v37 = v53;
          v35(v53, v36, v33);
          v38 = type metadata accessor for ContentsBounds.ObservableDifference(0);
LABEL_13:
          swift_storeEnumTagMultiPayload();
          (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
          return outlined destroy of ContentsBounds(v25);
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
    outlined init with copy of ContentsBounds(v25, v22);
    if (!swift_getEnumCaseMultiPayload())
    {
      v42 = v22[1];
      v58 = *v22;
      v59 = v42;
      v43 = v27[1];
      v54 = *v27;
      v55 = v43;
      type metadata accessor for CGRect(0);
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_7(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_7(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
      CRValue<>.observableDifference(from:with:)();
      v45 = v51;
      v44 = v52;
      if ((*(v51 + 48))(v11, 1, v52) != 1)
      {
        v47 = *(v45 + 32);
        v47(v16, v11, v44);
        v37 = v53;
        v47(v53, v16, v44);
        v38 = type metadata accessor for ContentsBounds.ObservableDifference(0);
        goto LABEL_13;
      }

      v8 = v11;
LABEL_11:
      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence27CRValueObservableDifferenceOSgMd);
      outlined destroy of ContentsBounds(v25);
      v46 = type metadata accessor for ContentsBounds.ObservableDifference(0);
      return (*(*(v46 - 8) + 56))(v53, 1, 1, v46);
    }
  }

  v39 = type metadata accessor for ContentsBounds.ObservableDifference(0);
  v40 = v53;
  swift_storeEnumTagMultiPayload();
  (*(*(v39 - 8) + 56))(v40, 0, 1, v39);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s8PaperKit14ContentsBoundsO_ACtMd);
}

uint64_t ContentsBounds.visitReferences(_:)()
{
  v1 = type metadata accessor for AnyCRValue();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ContentsBounds(v0, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result >= 2)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
    (*(v2 + 32))(v4, &v7[*(v9 + 48)], v1);
    AnyCRValue.visitReferences(_:)();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t ContentsBounds.copy(renamingReferences:)@<X0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for AnyCRValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ContentsBounds(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *(v9 + 1);
      *a1 = *v9;
      a1[1] = v11;
      v12 = *(v9 + 3);
      a1[2] = *(v9 + 2);
      a1[3] = v12;
    }

    else
    {
      v14 = *v9;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
      (*(v4 + 32))(v6, &v9[*(v15 + 48)], v3);
      *a1 = v14;
      AnyCRValue.copy(renamingReferences:)();
      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    v13 = *(v9 + 1);
    *a1 = *v9;
    a1[1] = v13;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t ContentsBounds.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v18 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v18 - v10);
  dispatch thunk of CRDecoder.valueContainer()();
  if (v1)
  {
  }

  v22 = a1;
  v12 = dispatch thunk of CRDecoder.CRValueContainer.decodeTaggedContainer()();

  if (v12 == 1)
  {
    lazy protocol witness table accessor for type Quad and conformance Quad();
    lazy protocol witness table accessor for type Quad and conformance Quad();
    CRValue<>.init(from:)();

    v16 = v19;
    *v8 = v18;
    v8[1] = v16;
    v17 = v21;
    v8[2] = v20;
    v8[3] = v17;
    swift_storeEnumTagMultiPayload();
    v15 = v8;
  }

  else if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
    *v5 = v12;
    AnyCRValue.init(from:)();

    swift_storeEnumTagMultiPayload();
    v15 = v5;
  }

  else
  {
    type metadata accessor for CGRect(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_7(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_7(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    CRValue<>.init(from:)();

    v14 = v19;
    *v11 = v18;
    v11[1] = v14;
    swift_storeEnumTagMultiPayload();
    v15 = v11;
  }

  return outlined init with take of ContentsBounds(v15, v22);
}

uint64_t ContentsBounds.encode(to:)()
{
  v2 = type metadata accessor for AnyCRValue();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of CREncoder.valueContainer()();
  if (!v1)
  {
    outlined init with copy of ContentsBounds(v0, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v13 = *(v8 + 1);
      v15 = *v8;
      v16 = v13;
      type metadata accessor for CGRect(0);
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_7(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
      dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v11 = *(v8 + 1);
      v15 = *v8;
      v16 = v11;
      v12 = *(v8 + 3);
      v17 = *(v8 + 2);
      v18 = v12;
      lazy protocol witness table accessor for type Quad and conformance Quad();
      dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
LABEL_6:
      dispatch thunk of CREncoder.CRValueContainer.encode(tag:)();
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
    (*(v3 + 32))(v5, &v8[*(v14 + 48)], v2);
    dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
    dispatch thunk of CREncoder.CRValueContainer.encode(tag:)();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t ContentsBounds.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995278];
  v3 = type metadata accessor for CRCodableVersion();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t protocol witness for CRType.visitReferences(_:) in conformance ContentsBounds()
{
  v1 = type metadata accessor for AnyCRValue();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ContentsBounds(v0, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result >= 2)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
    (*(v2 + 32))(v4, &v7[*(v9 + 48)], v1);
    AnyCRValue.visitReferences(_:)();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t specialized static ContentsBounds.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCRValue();
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v44 - v8;
  v9 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v44 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v44 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsO_ACtMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v44 - v19;
  v22 = &v44 + *(v21 + 56) - v19;
  outlined init with copy of ContentsBounds(a1, &v44 - v19);
  outlined init with copy of ContentsBounds(a2, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of ContentsBounds(v20, v17);
    if (!swift_getEnumCaseMultiPayload())
    {
      v34 = CGRectEqualToRect(*v17, *v22);
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of ContentsBounds(v20, v11);
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd) + 48);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v45 = *v11;
      v36 = *v22;
      v37 = v47;
      v38 = *(v47 + 32);
      v39 = &v11[v35];
      v40 = v46;
      v38(v46, v39, v4);
      v38(v6, &v22[v35], v4);
      if (v45 == v36)
      {
        v34 = static AnyCRValue.== infix(_:_:)();
        v41 = *(v37 + 8);
        v41(v6, v4);
        v41(v40, v4);
        goto LABEL_10;
      }

      v43 = *(v37 + 8);
      v43(v6, v4);
      v43(v40, v4);
      outlined destroy of ContentsBounds(v20);
LABEL_13:
      v34 = 0;
      return v34 & 1;
    }

    (*(v47 + 8))(&v11[v35], v4);
LABEL_12:
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s8PaperKit14ContentsBoundsO_ACtMd);
    goto LABEL_13;
  }

  outlined init with copy of ContentsBounds(v20, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_12;
  }

  v24 = *(v22 + 1);
  v48 = *v22;
  v49 = v24;
  v25 = *(v22 + 3);
  v50 = *(v22 + 2);
  v51 = v25;
  v26 = v14[1];
  v52 = *v14;
  v53 = v26;
  v27 = v14[3];
  v54 = v14[2];
  v55 = v27;
  v28 = Quad.rawValue.getter();
  v30 = v29;
  v31 = Quad.rawValue.getter();
  v33 = v32;
  v34 = specialized static Data.== infix(_:_:)(v28, v30, v31, v32);
  outlined consume of Data._Representation(v31, v33);
  outlined consume of Data._Representation(v28, v30);
LABEL_10:
  outlined destroy of ContentsBounds(v20);
  return v34 & 1;
}

uint64_t outlined init with take of ContentsBounds(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentsBounds(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for ContentsBounds()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (Int, AnyCRValue)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t specialized CanvasElementView.beginLiveEdit()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v26 - v6;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F8);
  swift_beginAccess();
  outlined init with copy of Date?(&v0[v9], v7, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
  if (v12 == 1)
  {
    v14 = *((*v8 & *v0) + 0x3F0);
    swift_beginAccess();
    (*(v11 + 16))(v4, &v1[v14], v10);
    (*(v11 + 56))(v4, 0, 1, v10);
    swift_beginAccess();
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v4, &v1[v9], &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
    v15 = swift_endAccess();
    v16 = (*((*v8 & *v1) + 0x90))(v15);
    if (!v16)
    {
      goto LABEL_10;
    }

    v17 = v16;
    v18 = off_1F4F60E88;
    type metadata accessor for AnyCanvas();
    v19 = v18();
    v20 = AnyCanvas.isLiveEditing()();
    if (v20 == v17[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing])
    {
      v17[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing] = v20;
      if ((v19 & 1) == 0)
      {
LABEL_9:

LABEL_10:
        v22 = outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
        v23 = (*((*v8 & *v1) + 0x1A8))(v22);
        v24 = *((*v8 & *v1) + 0x418);
        v25 = *&v1[v24];
        *&v1[v24] = v23;

        result = os_variant_has_internal_ui();
        if (result)
        {
          type metadata accessor for PPKSignpost();
          swift_allocObject();
          *&v1[*((*v8 & *v1) + 0x420)] = PPKSignpost.init(name:identifier:message:)("PPKCanvasElementLiveEdit", 24, 2u, 0, 1, 0, 0);
        }

        return result;
      }
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v26[1] = v26;
      MEMORY[0x1EEE9AC00](KeyPath);
      v26[-2] = v17;
      LOBYTE(v26[-1]) = v20;
      v26[3] = v17;
      lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    if ((v18() & 1) == 0)
    {
      specialized LiveEditable.resumeLiveEditingContinuations()();
    }

    goto LABEL_9;
  }

  return result;
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v26 - v6;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F8);
  swift_beginAccess();
  outlined init with copy of Date?(&v0[v9], v7, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
  if (v12 == 1)
  {
    v14 = *((*v8 & *v0) + 0x3F0);
    swift_beginAccess();
    (*(v11 + 16))(v4, &v1[v14], v10);
    (*(v11 + 56))(v4, 0, 1, v10);
    swift_beginAccess();
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v4, &v1[v9], &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
    v15 = swift_endAccess();
    v16 = (*((*v8 & *v1) + 0x90))(v15);
    if (!v16)
    {
      goto LABEL_10;
    }

    v17 = v16;
    v18 = off_1F4F60E88;
    type metadata accessor for AnyCanvas();
    v19 = v18();
    v20 = AnyCanvas.isLiveEditing()();
    if (v20 == v17[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing])
    {
      v17[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing] = v20;
      if ((v19 & 1) == 0)
      {
LABEL_9:

LABEL_10:
        v22 = outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
        v23 = (*((*v8 & *v1) + 0x1A8))(v22);
        v24 = *((*v8 & *v1) + 0x418);
        v25 = *&v1[v24];
        *&v1[v24] = v23;

        result = os_variant_has_internal_ui();
        if (result)
        {
          type metadata accessor for PPKSignpost();
          swift_allocObject();
          *&v1[*((*v8 & *v1) + 0x420)] = PPKSignpost.init(name:identifier:message:)("PPKCanvasElementLiveEdit", 24, 2u, 0, 1, 0, 0);
        }

        return result;
      }
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v26[1] = v26;
      MEMORY[0x1EEE9AC00](KeyPath);
      v26[-2] = v17;
      LOBYTE(v26[-1]) = v20;
      v26[3] = v17;
      lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    if ((v18() & 1) == 0)
    {
      specialized LiveEditable.resumeLiveEditingContinuations()();
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t specialized Capsule<>.isFormField.getter()
{
  v0 = type metadata accessor for CRKeyPath();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  Capsule.root.getter();
  Capsule.rootID.getter();
  off_1F4F68468(v3, v9);
  (*(v1 + 8))(v3, v0);
  outlined destroy of TextBoxViewAttributes(v6, type metadata accessor for Shape);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    goto LABEL_7;
  }

  lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  SharedTagged_10.subscript.getter();
  (*(v11 + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CanvasElement_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12ShapeTextBox_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_7;
  }

  if (!*(&v17 + 1))
  {
LABEL_7:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v16, &_s8PaperKit12ShapeTextBox_pSgMd);
    v14 = 0;
    return v14 & 1;
  }

  outlined init with take of PaperKitHashable(&v16, v19);
  v12 = v20;
  v13 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v14 = (*(v13 + 72))(v12, v13);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v14 & 1;
}

{
  v0 = type metadata accessor for CRKeyPath();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TextBox(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  Capsule.root.getter();
  Capsule.rootID.getter();
  off_1F4F5C860(v3, v9);
  (*(v1 + 8))(v3, v0);
  outlined destroy of TextBoxViewAttributes(v6, type metadata accessor for TextBox);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    goto LABEL_7;
  }

  lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
  SharedTagged_10.subscript.getter();
  (*(v11 + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CanvasElement_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12ShapeTextBox_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_7;
  }

  if (!*(&v17 + 1))
  {
LABEL_7:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v16, &_s8PaperKit12ShapeTextBox_pSgMd);
    v14 = 0;
    return v14 & 1;
  }

  outlined init with take of PaperKitHashable(&v16, v19);
  v12 = v20;
  v13 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v14 = (*(v13 + 72))(v12, v13);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v14 & 1;
}

uint64_t specialized Capsule<>.isFixedWidth.getter()
{
  v0 = type metadata accessor for CRKeyPath();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  Capsule.root.getter();
  Capsule.rootID.getter();
  off_1F4F68468(v3, v9);
  (*(v1 + 8))(v3, v0);
  outlined destroy of TextBoxViewAttributes(v6, type metadata accessor for Shape);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    goto LABEL_7;
  }

  lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  SharedTagged_10.subscript.getter();
  (*(v11 + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CanvasElement_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12ShapeTextBox_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_7;
  }

  if (!*(&v17 + 1))
  {
LABEL_7:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v16, &_s8PaperKit12ShapeTextBox_pSgMd);
    v14 = 0;
    return v14 & 1;
  }

  outlined init with take of PaperKitHashable(&v16, v19);
  v12 = v20;
  v13 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v14 = (*(v13 + 64))(v12, v13);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v14 & 1;
}

uint64_t TextBoxCanvasElementView.isFormField.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = *(v0 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (v8 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v10 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x3F0);
    v11 = Strong;
    swift_beginAccess();
    (*(v2 + 16))(v4, &v11[v10], v1);
    v12 = v8;

    (*(v2 + 32))(v7, v4, v1);
    v13 = specialized Capsule<>.isFormField.getter();

    (*(v2 + 8))(v7, v1);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t TextBoxCanvasElementView.isFixedWidth.getter()
{
  v1 = *(v0 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = specialized TextBoxView.isFixedWidth.getter();

  return v3 & 1;
}

void @objc TextBoxCanvasElementView.init(coder:)(uint64_t a1)
{
  *(a1 + direct field offset for TextBoxCanvasElementView._textBoxView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *TextBoxCanvasElementView.textBoxView.getter()
{
  v1 = *(v0 + direct field offset for TextBoxCanvasElementView._textBoxView);
  v2 = v1;
  return v1;
}

id @objc TextBoxCanvasElementView.becomeFirstResponder()(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = *(a1 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (result)
  {
    return [result *a3];
  }

  return result;
}

id TextBoxCanvasElementView.isElementFirstResponder.getter()
{
  v1 = *(v0 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (!v1)
  {
    return 0;
  }

  result = *(v1 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView);
  if (result)
  {
    return [result isFirstResponder];
  }

  return result;
}

void __swiftcall TextBoxCanvasElementView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  y = _.y;
  x = _.x;
  v6 = *&v3[direct field offset for TextBoxCanvasElementView._textBoxView];
  if (!v6 || (isa = with.value.super.isa, v8 = v6, [v3 convertPoint:v8 toView:{x, y}], v9 = objc_msgSend(v8, sel_hitTest_withEvent_, isa), v8, !v9))
  {
    [v3 bounds];
    v11.x = x;
    v11.y = y;
    if (CGRectContainsPoint(v12, v11))
    {
      v10 = v3;
    }
  }
}

id @objc TextBoxCanvasElementView.hitTest(_:with:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v16.value.super.isa = a5;
  TextBoxCanvasElementView.hitTest(_:with:)(v11, __PAIR128__(*&a3, *&a2), v16);
  v13 = v12;

  return v13;
}

id TextBoxCanvasElementView.didZoom(in:)()
{
  result = *(v0 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (result)
  {
    return [result setNeedsLayout];
  }

  return result;
}

Swift::Int TextBoxCanvasElementView.resizeHandles.getter()
{
  v1 = *(v0 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView);
    if (v2)
    {
      if ([v2 isFirstResponder])
      {
        return MEMORY[0x1E69E7CD0];
      }
    }
  }

  return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC8PaperKit16ResizeHandleTypeO_Tt0g5Tf4g_n(&outlined read-only object #0 of TextBoxCanvasElementView.resizeHandles.getter);
}

uint64_t TextBoxCanvasElementView.modifiableProperties.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - v3;
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v5], v1);
  v9[0] = type metadata accessor for TextBox(0);
  v9[1] = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
  v9[2] = &protocol witness table for TextBox;
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v2 + 8))(v4, v1);
  v6 = 13;
  if ((v10 & 0x80) == 0)
  {
    v6 = 15;
  }

  v7 = 5;
  if ((v10 & 0x80) == 0)
  {
    v7 = 7;
  }

  if ((v10 & 0x10) != 0)
  {
    v6 = v7;
  }

  if ((v10 & 4) != 0)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t TextBoxCanvasElementView.isSelected.setter(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for TextBox(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  *(v2 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isSelected) = a1;
  specialized CanvasElementView.isSelected.didset(v9);
  v12 = direct field offset for TextBoxCanvasElementView._textBoxView;
  v13 = *(v2 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (v13)
  {
    v14 = v13;
    specialized TextBoxView.updateSelected()();

    v15 = *(v2 + v12);
    if (v15)
    {
      v16 = v15;
      specialized TextBoxView.updateUI()(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR, type metadata accessor for TextBox, &lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox, &protocol witness table for TextBox, specialized TextBoxView.finalizeLastUndoActionIfPossible(closeUndoGroup:), specialized TextBoxUndoSnapshot.snapshot.modify, partial apply for specialized closure #1 in TextBoxView.resetUndoActionIfPossible());
    }
  }

  specialized CanvasElementView.updateGestures()();
  v17 = *(v2 + v12);
  if (v17)
  {
    [v17 setNeedsLayout];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v20 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x928))();
  }

  v21 = *((*v19 & *v2) + 0x3F0);
  swift_beginAccess();
  (*(v8 + 16))(v11, v2 + v21, v7);
  Capsule.root.getter();
  outlined destroy of TextBoxViewAttributes(v6, type metadata accessor for TextBox);
  return (*(v8 + 8))(v11, v7);
}

void @objc TextBoxCanvasElementView.layoutSubviews()(char *a1, uint64_t a2, SEL *a3)
{
  v5 = *&a1[direct field offset for TextBoxCanvasElementView._textBoxView];
  v6 = a1;
  if (v5)
  {
    [v5 *a3];
  }

  v7.receiver = a1;
  v7.super_class = type metadata accessor for TextBoxCanvasElementView();
  objc_msgSendSuper2(&v7, *a3);
}

Swift::Void __swiftcall TextBoxCanvasElementView.updateUI()()
{
  v1 = v0;
  v2 = type metadata accessor for TextBox(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = direct field offset for TextBoxCanvasElementView._textBoxView;
  v10 = *&v0[direct field offset for TextBoxCanvasElementView._textBoxView];
  if (v10)
  {
    v11 = v10;
    specialized TextBoxView.updateUI()(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR, type metadata accessor for TextBox, &lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox, &protocol witness table for TextBox, specialized TextBoxView.finalizeLastUndoActionIfPossible(closeUndoGroup:), specialized TextBoxUndoSnapshot.snapshot.modify, partial apply for specialized closure #1 in TextBoxView.resetUndoActionIfPossible());
  }

  specialized CanvasElementView.updateGestures()();
  v12 = *&v1[v9];
  if (v12)
  {
    [v12 setNeedsLayout];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v15 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x928))();
  }

  v16 = *((*v14 & *v1) + 0x3F0);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v16], v5);
  Capsule.root.getter();
  outlined destroy of TextBoxViewAttributes(v4, type metadata accessor for TextBox);
  (*(v6 + 8))(v8, v5);
}

Swift::Void __swiftcall TextBoxCanvasElementView.beginLiveEdit()()
{
  v1 = *(v0 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (v1)
  {
    v2 = v1;
    specialized TextBoxView.beginLiveEdit()();
  }

  specialized CanvasElementView.beginLiveEdit()();
}

Swift::Void __swiftcall TextBoxCanvasElementView.endLiveEdit(undoable:discard:)(Swift::Bool undoable, Swift::Bool discard)
{
  v5 = *(v2 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (v5)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x1B8);
      v8 = Strong;
      v9 = v5;
      LOBYTE(v7) = v7();

      if (v7)
      {
        v10 = &v9[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_liveUneditedModelCoordinateSpace];
        *(v10 + 1) = 0u;
        *(v10 + 2) = 0u;
        *v10 = 0u;
        v10[48] = 1;
      }
    }
  }

  specialized CanvasElementView.endLiveEdit(undoable:discard:)(undoable, discard);
}

CGPathRef TextBoxCanvasElementView.modelHitTestPath.getter()
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &transform - v3;
  v5 = *&v0[direct field offset for TextBoxCanvasElementView._textBoxView];
  if (v5)
  {
    v6 = v5;
    specialized TextBoxView.selectionCoordinateSpace.getter(&transform);
    v13.origin.x = 0.0;
    v13.origin.y = 0.0;
    v13.size.width = 1.0;
    v13.size.height = 1.0;
    v7 = CGPathCreateWithRect(v13, &transform);
  }

  else
  {
    v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
    swift_beginAccess();
    v9 = (*(v2 + 16))(v4, &v0[v8], v1);
    MEMORY[0x1EEE9AC00](v9);
    *(&transform - 4) = type metadata accessor for TextBox(0);
    *(&transform - 3) = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
    *(&transform - 2) = &protocol witness table for TextBox;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v2 + 8))(v4, v1);
    v14.origin.x = 0.0;
    v14.origin.y = 0.0;
    v14.size.width = 1.0;
    v14.size.height = 1.0;
    return CGPathCreateWithRect(v14, &transform);
  }

  return v7;
}

void TextBoxCanvasElementView.uneditedModelCoordinateSpace.getter(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - v8;
  v10 = *&v1[direct field offset for TextBoxCanvasElementView._textBoxView];
  if (v10 && (v11 = (v10 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_liveUneditedModelCoordinateSpace), (v11[3] & 1) == 0))
  {
    v17 = v11[1];
    v19 = v11[2];
    v18 = *v11;
  }

  else
  {
    v12 = MEMORY[0x1E69E7D40];
    v13 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F8);
    swift_beginAccess();
    outlined init with copy of Date?(&v1[v13], v5, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
    v14 = *(v7 + 48);
    if (v14(v5, 1, v6) == 1)
    {
      v15 = *((*v12 & *v1) + 0x3F0);
      swift_beginAccess();
      (*(v7 + 16))(v9, &v1[v15], v6);
      v16 = v14(v5, 1, v6);
      if (v16 != 1)
      {
        v16 = outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
      }
    }

    else
    {
      v16 = (*(v7 + 32))(v9, v5, v6);
    }

    MEMORY[0x1EEE9AC00](v16);
    *&v20[-2] = type metadata accessor for TextBox(0);
    *(&v20[-2] + 1) = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
    *&v20[-1] = &protocol witness table for TextBox;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v7 + 8))(v9, v6);
    v18 = v20[0];
    v17 = v20[1];
    v19 = v20[2];
  }

  *a1 = v18;
  a1[1] = v17;
  a1[2] = v19;
}

void TextBoxCanvasElementView.selectionCoordinateSpace.getter(__int128 *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *&v1[direct field offset for TextBoxCanvasElementView._textBoxView];
  if (v7)
  {
    v8 = v7;
    specialized TextBoxView.selectionCoordinateSpace.getter(&v17);
    v15 = v18;
    v16 = v17;
    v14 = v19;

    v10 = v14;
    v9 = v15;
    v11 = v16;
  }

  else
  {
    v12 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
    swift_beginAccess();
    v13 = (*(v4 + 16))(v6, &v1[v12], v3);
    MEMORY[0x1EEE9AC00](v13);
    *(&v14 - 4) = type metadata accessor for TextBox(0);
    *(&v14 - 3) = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
    *(&v14 - 2) = &protocol witness table for TextBox;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v4 + 8))(v6, v3);
    v11 = v17;
    v9 = v18;
    v10 = v19;
  }

  *a1 = v11;
  a1[1] = v9;
  a1[2] = v10;
}

void @objc TextBoxCanvasElementView.textBoxViewUpdateModelFrame(_:modelFrame:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = a1;
  specialized CanvasElementView.modelFrame.setter(a2, a3, a4, a5);
}

Swift::OpaquePointer_optional __swiftcall TextBoxCanvasElementView.pasteboardRepresentation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static UTType.plainText.getter();
  v14 = UTType.identifier.getter();
  v28 = v15;
  v29 = v14;
  (*(v11 + 8))(v13, v10);
  v16 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, &v1[v16], v6);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v7 + 8))(v9, v6);
  v17 = CRAttributedString.attributedString.getter();
  (*(v3 + 8))(v5, v2);
  v18 = [v17 string];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v33 = MEMORY[0x1E69E6158];
  *&v32 = v19;
  *(&v32 + 1) = v21;
  outlined init with take of Any(&v32, v31);
  v22 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v22;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v29, v28, isUniquelyReferenced_nonNull_native);

  v25 = v30;
  result.value._rawValue = v25;
  result.is_nil = v24;
  return result;
}

id @objc TextBoxCanvasElementView.contextMenuInteraction(_:previewForHighlightingMenuWithConfiguration:)(void *a1)
{
  v1 = a1;
  v2 = [v1 window];
  if (v2)
  {

    v3 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id TextBoxCanvasElementView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextBoxCanvasElementView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TextBoxCanvasElementView()
{
  result = type metadata singleton initialization cache for TextBoxCanvasElementView;
  if (!type metadata singleton initialization cache for TextBoxCanvasElementView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*specialized TextBoxUndoSnapshot.snapshot.modify())()
{
  swift_beginAccess();
  return PaperMarkupViewController._directTouchMode.modify;
}

{
  swift_beginAccess();
  return PaperMarkupViewController._markup.modify;
}

char *specialized TextBoxView.isFixedWidth.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *((*MEMORY[0x1E69E7D40] & *result) + 0x3F0);
    v9 = result;
    swift_beginAccess();
    (*(v1 + 16))(v3, &v9[v8], v0);

    v10 = (*(v1 + 32))(v6, v3, v0);
    MEMORY[0x1EEE9AC00](v10);
    *(&v11 - 4) = type metadata accessor for TextBox(0);
    *(&v11 - 3) = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
    *(&v11 - 2) = &protocol witness table for TextBox;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v1 + 8))(v6, v0);
    return ((v11 & 1) == 0);
  }

  return result;
}

void specialized TextBoxView.updateSelected()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x200))() & 1) == 0)
    {
      v3 = OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView;
      v4 = *&v1[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
      if (v4)
      {
        [v4 removeFromSuperview];
        v5 = *&v1[v3];
      }

      else
      {
        v5 = 0;
      }

      *&v1[v3] = 0;

      v1[direct field offset for TextBoxView.hideText] = 0;
      [v1 setNeedsDisplay];
    }
  }
}

void specialized TextBoxView.updateUI()(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void, __n128), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6, void (*a7)(void), unint64_t a8, uint64_t (*a9)(char *), uint64_t a10)
{
  v211 = a8;
  v231 = a7;
  v229 = a6;
  v230 = a5;
  v14 = v10;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence11CursorRangeVyAA18CRAttributedStringV0B0Vy8PaperKit18TextAttributeScopeV_GGMd);
  v201 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v210 = &v195 - v15;
  v236 = type metadata accessor for Color(0);
  v228 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v17 = &v195 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v234 = (&v195 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v233 = &v195 - v21;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd);
  v215 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v232 = &v195 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v240 = &v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v235 = &v195 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v239 = &v195 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAJ5ColorV_GMd);
  MEMORY[0x1EEE9AC00](v29);
  v238 = &v195 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v213 = &v195 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMd);
  MEMORY[0x1EEE9AC00](v33);
  v214 = &v195 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v227 = &v195 - v36;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v226 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v212 = &v195 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v225 = &v195 - v39;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v216 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v41 = &v195 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v220 = &v195 - v43;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v218 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v45 = &v195 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v195 - v47;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v50 = Strong;
    v207 = v33;
    v208 = v29;
    v221 = a3;
    v222 = a4;
    v51 = *&v14[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
    v219 = v14;
    v209 = v17;
    v217 = Strong;
    v206 = v41;
    v205 = v45;
    if (v51)
    {
      v199 = v51;
      v52 = [v14 undoManager];
      if (v52 && (v53 = v52, v54 = [v52 isUndoing], v53, (v54 & 1) != 0) || (v55 = objc_msgSend(v14, sel_undoManager)) != 0 && (v56 = v55, v57 = objc_msgSend(v55, sel_isRedoing), v56, (v57 & 1) != 0))
      {
        v58 = *&v14[direct field offset for TextBoxView.textStorage];
        v59 = *v50;
        v60 = *MEMORY[0x1E69E7D40];
        v210 = (v50 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000);
        v61 = *((v60 & v59) + 0x3F0);
        swift_beginAccess();
        v62 = v218;
        v63 = *(v218 + 16);
        v211 = (v218 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v64 = v48;
        v65 = v224;
        v200 = v63;
        v66 = v63(v48, v50 + v61, v224);
        v67 = MEMORY[0x1EEE9AC00](v66);
        v204 = v221(0, v67);
        *(&v195 - 4) = v204;
        v68 = lazy protocol witness table accessor for type TextBox and conformance TextBox(v222, v230);
        v69 = v231;
        *(&v195 - 3) = v68;
        *(&v195 - 2) = v69;
        swift_getKeyPath();
        v70 = v58;
        v71 = v220;
        Capsule.subscript.getter();

        v203 = *(v62 + 8);
        v203(v64, v65);
        v72 = CRTextStorage.merge(string:)(v71);
        v74 = v73;
        LOBYTE(v61) = v75;

        v76 = v216[1];
        v202 = (v216 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v77 = v76;
        (v76)(v71, v223);
        v216 = v77;
        if (v61)
        {
        }

        else
        {
          v131 = v199;
          [v199 setSelectedRange_];
        }

        v220 = 0;
        v97 = v223;
        v85 = v224;
        v93 = MEMORY[0x1E69E7D40];
        v94 = v200;
        v96 = v204;
        v50 = v217;
      }

      else
      {
        (v211)(0);
        v198 = direct field offset for TextBoxView.textStorage;
        v98 = *&v14[direct field offset for TextBoxView.textStorage];
        v99 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString;
        swift_beginAccess();
        v100 = v216;
        v101 = v216[2];
        v102 = v223;
        v197 = v216 + 2;
        v196 = v101;
        v101(v220, v98 + v99, v223);
        v103 = v199;
        v104 = [v103 selectedRange];
        v199 = v103;
        v105 = [v103 selectedRange];
        v107 = __OFADD__(v105, v106);
        v108 = &v105[v106];
        if (v107)
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        if (v108 < v104)
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v109 = v220;
        CRAttributedString.cursor(range:)();
        v216 = v100[1];
        (v216)(v109, v102);
        v203 = *&v219[v198];
        v110 = *((*MEMORY[0x1E69E7D40] & *v50) + 0x3F0);
        swift_beginAccess();
        v111 = v218;
        v112 = v48;
        v113 = v224;
        v200 = *(v218 + 16);
        v211 = v218 + 16;
        v114 = v200(v48, (v50 + v110), v224);
        v115 = MEMORY[0x1EEE9AC00](v114);
        v204 = v221(0, v115);
        *(&v195 - 4) = v204;
        v116 = lazy protocol witness table accessor for type TextBox and conformance TextBox(v222, v230);
        v117 = v231;
        *(&v195 - 3) = v116;
        *(&v195 - 2) = v117;
        swift_getKeyPath();
        v118 = (v100 + 1);
        v119 = v203;
        Capsule.subscript.getter();

        v120 = *(v111 + 8);
        v121 = v113;
        v122 = v210;
        v195 = v111 + 8;
        v203 = v120;
        v120(v112, v121);
        CRTextStorage.merge(string:)(v109);

        v123 = v216;
        (v216)(v109, v102);
        v124 = *&v219[v198];
        v125 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString;
        swift_beginAccess();
        v196(v109, v124 + v125, v102);
        v126 = CRAttributedString.range(of:)();
        v128 = v127;
        LOBYTE(v119) = v129;
        v123(v109, v102);
        if (v119)
        {
          (*(v201 + 8))(v122, v202);
          v130 = v199;
        }

        else
        {
          if (__OFSUB__(v128, v126))
          {
LABEL_54:
            __break(1u);
            return;
          }

          v130 = v199;
          [v199 setSelectedRange_];

          (*(v201 + 8))(v122, v202);
        }

        v132 = v219;
        v202 = v118 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (*&v219[direct field offset for TextBoxView.currentUndoAction])
        {
          v211 = v211 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;

          v133 = a9(v242);
          v85 = v224;
          v135 = (*(v218 + 48))(v134, 1, v224);
          v94 = v200;
          if (v135)
          {
            v133(v242, 0);

            v220 = 0;
          }

          else
          {
            MEMORY[0x1EEE9AC00](a10);
            *(&v195 - 2) = v132;
            Capsule.callAsFunction<A>(_:)();
            v220 = 0;
            v85 = v224;
            v94 = v200;
            v133(v242, 0);
          }

          v97 = v223;
          v93 = MEMORY[0x1E69E7D40];
        }

        else
        {

          v220 = 0;
          v97 = v223;
          v85 = v224;
          v93 = MEMORY[0x1E69E7D40];
          v94 = v200;
        }

        v50 = v217;
        v96 = v204;
      }
    }

    else
    {
      v78 = *&v14[direct field offset for TextBoxView.textStorage];
      v79 = *Strong;
      v80 = *MEMORY[0x1E69E7D40];
      v210 = (Strong & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000);
      v81 = *((v80 & v79) + 0x3F0);
      swift_beginAccess();
      v82 = v218;
      v83 = *(v218 + 16);
      v211 = (v218 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v84 = v48;
      v85 = v224;
      v86 = v83(v48, v50 + v81, v224);
      v87 = MEMORY[0x1EEE9AC00](v86);
      v204 = v221(0, v87);
      *(&v195 - 4) = v204;
      v88 = lazy protocol witness table accessor for type TextBox and conformance TextBox(v222, v230);
      v89 = v231;
      *(&v195 - 3) = v88;
      *(&v195 - 2) = v89;
      swift_getKeyPath();
      v90 = v78;
      v91 = v220;
      Capsule.subscript.getter();

      v203 = *(v82 + 8);
      v92 = v84;
      v93 = MEMORY[0x1E69E7D40];
      v203(v92, v85);
      v94 = v83;
      CRTextStorage.merge(string:)(v91);

      v95 = v91;
      v96 = v204;
      v97 = v223;
      v216 = v216[1];
      (v216)(v95, v223);
      v220 = 0;
    }

    v136 = *((*v93 & *v50) + 0x3F0);
    swift_beginAccess();
    v137 = (v50 + v136);
    v138 = v205;
    v139 = v94(v205, v137, v85);
    v140 = MEMORY[0x1EEE9AC00](v139);
    v221(0, v140);
    *(&v195 - 4) = v96;
    v141 = lazy protocol witness table accessor for type TextBox and conformance TextBox(v222, v230);
    v142 = v231;
    *(&v195 - 3) = v141;
    *(&v195 - 2) = v142;
    swift_getKeyPath();
    v143 = v206;
    Capsule.subscript.getter();

    v203(v138, v85);
    v144 = v225;
    CRAttributedString.runs.getter();
    (v216)(v143, v97);
    v145 = v226;
    v146 = v213;
    v147 = v237;
    (*(v226 + 16))(v213, v144, v237);
    v148 = *(v145 + 32);
    v149 = v227;
    v148(v227, v146, v147);
    v150 = v207;
    v151 = (v149 + *(v207 + 44));
    *v151 = closure #1 in CRAttributedString.Runs<>.fontColors.getter;
    v151[1] = 0;
    v243 = MEMORY[0x1E69E7CD0];
    v152 = v149;
    v153 = v214;
    outlined init with copy of Date?(v152, v214, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMd);
    v148(v212, v153, v147);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
    v154 = v238;
    dispatch thunk of Sequence.makeIterator()();
    v155 = (v153 + *(v150 + 44));
    v156 = *v155;
    v157 = v155[1];
    v158 = (v154 + *(v208 + 44));
    v231 = v156;
    *v158 = v156;
    v158[1] = v157;
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs);
    v159 = (v215 + 48);
    v160 = (v215 + 32);
    v161 = (v215 + 8);
    v162 = (v228 + 56);
    v163 = (v228 + 48);
    while (1)
    {
      v164 = v235;
      dispatch thunk of IteratorProtocol.next()();
      v165 = v164;
      v166 = v240;
      outlined init with take of CRAttributedString<TextAttributeScope>.Runs.Run?(v165, v240);
      v167 = 1;
      if ((*v159)(v166, 1, v241) != 1)
      {
        v168 = v232;
        v169 = v241;
        (*v160)(v232, v240, v241);
        v231(v168);
        (*v161)(v168, v169);
        v167 = 0;
      }

      v170 = v239;
      v171 = v167;
      v172 = v236;
      (*v162)(v239, v171, 1, v236);
      if ((*v163)(v170, 1, v172) == 1)
      {
        break;
      }

      v173 = v170;
      v174 = v234;
      outlined init with take of Color(v173, v234);
      v175 = v233;
      specialized Set._Variant.insert(_:)(v233, v174);
      outlined destroy of TextBoxViewAttributes(v175, type metadata accessor for Color);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v238, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAJ5ColorV_GMd);
    v176 = v243;
    outlined destroy of StocksKitCurrencyCache.Provider?(v227, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMd);
    (*(v226 + 8))(v225, v237);
    v177 = 1 << *(v176 + 32);
    v178 = -1;
    if (v177 < 64)
    {
      v178 = ~(-1 << v177);
    }

    v179 = v178 & *(v176 + 56);
    v180 = (v177 + 63) >> 6;

    v181 = 0;
    v182 = v209;
    v183 = v228;
    v184 = v217;
    while (v179)
    {
LABEL_40:
      outlined init with copy of Color(*(v176 + 48) + *(v183 + 72) * (__clz(__rbit64(v179)) | (v181 << 6)), v182);
      CGColorGetContentHeadroom();
      if (v186 > 1.0)
      {

        goto LABEL_46;
      }

      v187 = CGColorRef.components.getter();
      if (v187)
      {
        v188 = *(v187 + 16);
        v189 = 32;
        do
        {
          if (!v188)
          {

            goto LABEL_34;
          }

          v190 = *(v187 + v189);
          v189 += 8;
          --v188;
        }

        while (v190 <= 1.0);

LABEL_46:
        outlined destroy of TextBoxViewAttributes(v182, type metadata accessor for Color);
        v191 = MEMORY[0x1E69792A0];
LABEL_48:
        v192 = v219;

        v193 = [v192 layer];
        v194 = *v191;
        [v193 setPreferredDynamicRange_];

        [v192 setNeedsLayout];
        [v192 setNeedsDisplay];

        return;
      }

LABEL_34:
      v179 &= v179 - 1;
      outlined destroy of TextBoxViewAttributes(v182, type metadata accessor for Color);
    }

    while (1)
    {
      v185 = v181 + 1;
      if (__OFADD__(v181, 1))
      {
        break;
      }

      if (v185 >= v180)
      {

        v191 = MEMORY[0x1E69792A8];
        goto LABEL_48;
      }

      v179 = *(v176 + 56 + 8 * v185);
      ++v181;
      if (v179)
      {
        v181 = v185;
        goto LABEL_40;
      }
    }

    __break(1u);
    goto LABEL_52;
  }
}

void specialized TextBoxView.beginLiveEdit()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - v4;
  v6 = v0 + direct field offset for TextBoxView.delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      ObjectType = swift_getObjectType();
      v11 = (*(v7 + 8))(v1, ObjectType, v7);
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = v18;
        AnyCanvasElementView.paperBoundsTransform()(&v52);
        v48 = *&v52.a;
        v47 = *&v52.c;
        v46 = *&v52.tx;

        v20 = v46;
        v21 = v48;
        v22 = v47;
      }

      else
      {
        v22 = xmmword_1D4059310;
        v21 = xmmword_1D4059320;
        v20 = 0uLL;
      }

      *&t1.a = v21;
      *&t1.c = v22;
      *&t1.tx = v20;
      CGAffineTransformInvert(&t2, &t1);
      t1 = t2;
      v54.origin.x = v11;
      v54.origin.y = v13;
      v54.size.width = v15;
      v54.size.height = v17;
      v55 = CGRectApplyAffineTransform(v54, &t1);
      x = v55.origin.x;
      y = v55.origin.y;
      width = v55.size.width;
      height = v55.size.height;
      v27 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x3F0);
      swift_beginAccess();
      v28 = (*(v3 + 16))(v5, &v9[v27], v2);
      MEMORY[0x1EEE9AC00](v28);
      *(&v43 - 4) = type metadata accessor for TextBox(0);
      *(&v43 - 3) = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
      *(&v43 - 2) = &protocol witness table for TextBox;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v3 + 8))(v5, v2);
      a = t1.a;
      *&v48 = x - width * 0.0;
      *&v47 = y - height * 0.0;
      v56.origin.x = x;
      v56.origin.y = y;
      v56.size.width = width;
      v45 = width;
      v56.size.height = height;
      *&v46 = height;
      MidX = CGRectGetMidX(v56);
      v57.origin.x = x;
      v57.origin.y = y;
      v57.size.width = width;
      v57.size.height = height;
      MidY = CGRectGetMidY(v57);
      CGAffineTransformMakeRotation(&t1, a);
      v32 = *&t1.tx;
      v44 = *&t1.a;
      v43 = *&t1.c;
      CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
      v33 = *&t1.a;
      c = t1.c;
      d = t1.d;
      v36 = *&t1.tx;
      *&t2.c = v43;
      *&t2.a = v44;
      *&t2.tx = v32;
      CGAffineTransformConcat(&v49, &t1, &t2);
      tx = v49.tx;
      ty = v49.ty;
      v44 = *&v49.a;
      v43 = *&v49.c;
      *&t1.a = v33;
      t1.c = c;
      t1.d = d;
      *&t1.tx = v36;
      CGAffineTransformInvert(&t2, &t1);
      *&t1.a = v44;
      *&t1.c = v43;
      t1.tx = tx;
      t1.ty = ty;
      CGAffineTransformConcat(&v49, &t1, &t2);
      t1.a = v45;
      t1.b = 0.0;
      t1.c = 0.0;
      *&t1.d = v46;
      *&t1.tx = v48;
      *&t1.ty = v47;
      t2 = v49;
      CGAffineTransformConcat(&v49, &t1, &t2);
      v39 = v49.tx;
      v40 = v49.ty;
      v48 = *&v49.a;
      v47 = *&v49.c;
      swift_unknownObjectRelease();

      v41 = v1 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_liveUneditedModelCoordinateSpace;
      v42 = v47;
      *v41 = v48;
      *(v41 + 16) = v42;
      *(v41 + 32) = v39;
      *(v41 + 40) = v40;
      *(v41 + 48) = 0;
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - v4;
  v6 = v0 + direct field offset for TextBoxView.delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      ObjectType = swift_getObjectType();
      v11 = (*(v7 + 8))(v1, ObjectType, v7);
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = v18;
        AnyCanvasElementView.paperBoundsTransform()(&v52);
        v48 = *&v52.a;
        v47 = *&v52.c;
        v46 = *&v52.tx;

        v20 = v46;
        v21 = v48;
        v22 = v47;
      }

      else
      {
        v22 = xmmword_1D4059310;
        v21 = xmmword_1D4059320;
        v20 = 0uLL;
      }

      *&t1.a = v21;
      *&t1.c = v22;
      *&t1.tx = v20;
      CGAffineTransformInvert(&t2, &t1);
      t1 = t2;
      v54.origin.x = v11;
      v54.origin.y = v13;
      v54.size.width = v15;
      v54.size.height = v17;
      v55 = CGRectApplyAffineTransform(v54, &t1);
      x = v55.origin.x;
      y = v55.origin.y;
      width = v55.size.width;
      height = v55.size.height;
      v27 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x3F0);
      swift_beginAccess();
      v28 = (*(v3 + 16))(v5, &v9[v27], v2);
      MEMORY[0x1EEE9AC00](v28);
      *(&v43 - 4) = type metadata accessor for Shape(0);
      *(&v43 - 3) = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
      *(&v43 - 2) = &protocol witness table for Shape;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v3 + 8))(v5, v2);
      a = t1.a;
      *&v48 = x - width * 0.0;
      *&v47 = y - height * 0.0;
      v56.origin.x = x;
      v56.origin.y = y;
      v56.size.width = width;
      v45 = width;
      v56.size.height = height;
      *&v46 = height;
      MidX = CGRectGetMidX(v56);
      v57.origin.x = x;
      v57.origin.y = y;
      v57.size.width = width;
      v57.size.height = height;
      MidY = CGRectGetMidY(v57);
      CGAffineTransformMakeRotation(&t1, a);
      v32 = *&t1.tx;
      v44 = *&t1.a;
      v43 = *&t1.c;
      CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
      v33 = *&t1.a;
      c = t1.c;
      d = t1.d;
      v36 = *&t1.tx;
      *&t2.c = v43;
      *&t2.a = v44;
      *&t2.tx = v32;
      CGAffineTransformConcat(&v49, &t1, &t2);
      tx = v49.tx;
      ty = v49.ty;
      v44 = *&v49.a;
      v43 = *&v49.c;
      *&t1.a = v33;
      t1.c = c;
      t1.d = d;
      *&t1.tx = v36;
      CGAffineTransformInvert(&t2, &t1);
      *&t1.a = v44;
      *&t1.c = v43;
      t1.tx = tx;
      t1.ty = ty;
      CGAffineTransformConcat(&v49, &t1, &t2);
      t1.a = v45;
      t1.b = 0.0;
      t1.c = 0.0;
      *&t1.d = v46;
      *&t1.tx = v48;
      *&t1.ty = v47;
      t2 = v49;
      CGAffineTransformConcat(&v49, &t1, &t2);
      v39 = v49.tx;
      v40 = v49.ty;
      v48 = *&v49.a;
      v47 = *&v49.c;
      swift_unknownObjectRelease();

      v41 = v1 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_liveUneditedModelCoordinateSpace;
      v42 = v47;
      *v41 = v48;
      *(v41 + 16) = v42;
      *(v41 + 32) = v39;
      *(v41 + 40) = v40;
      *(v41 + 48) = 0;
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void specialized TextBoxView.selectionCoordinateSpace.getter(__int128 *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TextBoxViewAttributes();
  MEMORY[0x1EEE9AC00](v4);
  *&v134 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v122 - v8;
  v10 = direct field offset for TextBoxView.canvasElementView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v15 = xmmword_1D4059310;
    v16 = xmmword_1D4059320;
    v17 = 0uLL;
LABEL_47:
    *a1 = v16;
    a1[1] = v15;
    a1[2] = v17;
    return;
  }

  v12 = Strong;
  v124 = v4;
  v128 = a1;
  v13 = *&v2[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
  *&v135 = v7;
  *&v126 = v10;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    [v2 bounds];
    v14 = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame:*&v2[direct field offset for TextBoxView.textContainer] textContainer:{v18, v19, v20, v21}];
    v13 = 0;
  }

  v22 = v13;
  v23 = [v14 setTextContainerInset_];
  v24 = MEMORY[0x1E69E7D40];
  v25 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x280);
  v26 = (v25)(v23);
  v28 = v27;
  v29 = (*((*v24 & *v12) + 0x118))(v26);
  v127 = v14;
  if ((v29 & 1) == 0)
  {
    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39 && (v40 = v39, v41 = (*((*v24 & *v39) + 0x90))(), v40, v41))
    {
      v42 = (*((*v24 & *v41) + 0x440))();
      v43 = (*((*v24 & *v42) + 0x280))();
      v45 = v44;
      v47 = v46;
      v49 = v48;

      v143.origin.x = v43;
      v143.origin.y = v45;
      v143.size.width = v47;
      v143.size.height = v49;
      Width = CGRectGetWidth(v143);

      v51 = Width + -48.0;
    }

    else
    {
      v51 = 1.79769313e308;
    }

    [v14 sizeThatFits_];
    v53 = v52;
    Height = v54;
    [*&v2[direct field offset for TextBoxView.textContainer] lineFragmentPadding];
    v28 = v53 + v55 + v55;
    goto LABEL_19;
  }

  v30 = [v14 sizeThatFits_];
  Height = v31;
  if (((*((*v24 & *v12) + 0x128))(v30) & 1) == 0)
  {
    goto LABEL_19;
  }

  v141.origin.x = v25();
  if (Height < CGRectGetHeight(v141))
  {
LABEL_13:
    v142.origin.x = (v25)(v33);
    Height = CGRectGetHeight(v142);
    goto LABEL_19;
  }

  v34 = [v14 text];
  if (v34)
  {
    v35 = v34;
    *&v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = v133 & 0xFFFFFFFFFFFFLL;
    }

    if (!v38)
    {
      goto LABEL_13;
    }

LABEL_19:
    v56 = *((*v24 & *v12) + 0x3F0);
    swift_beginAccess();
    v57 = v135;
    v58 = *(v135 + 16);
    *&v133 = v56;
    *&v132 = v58;
    v129 = v135 + 16;
    v59 = v58(v9, &v12[v56], v6);
    MEMORY[0x1EEE9AC00](v59);
    v131 = type metadata accessor for TextBox(0);
    *(&v122 - 4) = v131;
    v130 = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
    *(&v122 - 3) = v130;
    *(&v122 - 2) = &protocol witness table for TextBox;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v62 = *(v57 + 8);
    v61 = v57 + 8;
    v60 = *&v62;
    v62(v9, v6);
    a = v140.a;
    b = v140.b;
    c = v140.c;
    d = v140.d;
    if (vabdd_f64(v140.c, v28) < 0.1 && vabdd_f64(v140.d, Height) < 0.1)
    {
      v28 = v140.c;
      Height = v140.d;
LABEL_46:
      v125 = v28;
      *&v126 = Height;
      v107 = (v132)(v9, &v12[v133], v6);
      MEMORY[0x1EEE9AC00](v107);
      v108 = v130;
      *(&v122 - 4) = v131;
      *(&v122 - 3) = v108;
      *(&v122 - 2) = &protocol witness table for TextBox;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*&v60)(v9, v6);
      v109 = v139;
      *&v135 = a - v28 * 0.0;
      *&v134 = b - Height * 0.0;
      v151.origin.x = a;
      v151.origin.y = b;
      v151.size.width = v28;
      v151.size.height = Height;
      MidX = CGRectGetMidX(v151);
      v152.origin.x = a;
      v152.origin.y = b;
      v152.size.width = v28;
      v152.size.height = Height;
      MidY = CGRectGetMidY(v152);
      CGAffineTransformMakeRotation(&v138, v109);
      tx = v138.tx;
      ty = v138.ty;
      v132 = *&v138.c;
      v133 = *&v138.a;
      CGAffineTransformMakeTranslation(&v138, -MidX, -MidY);
      v114 = v138.a;
      v115 = v138.b;
      v117 = v138.c;
      v116 = v138.d;
      v118 = v138.tx;
      v119 = v138.ty;
      *&v137.a = v133;
      *&v137.c = v132;
      v137.tx = tx;
      v137.ty = ty;
      CGAffineTransformConcat(&v136, &v138, &v137);
      v120 = v136.tx;
      v121 = v136.ty;
      v132 = *&v136.c;
      v133 = *&v136.a;
      v138.a = v114;
      v138.b = v115;
      v138.c = v117;
      v138.d = v116;
      v138.tx = v118;
      v138.ty = v119;
      CGAffineTransformInvert(&v137, &v138);
      *&v138.a = v133;
      *&v138.c = v132;
      v138.tx = v120;
      v138.ty = v121;
      CGAffineTransformConcat(&v136, &v138, &v137);
      v138.a = v125;
      v138.b = 0.0;
      v138.c = 0.0;
      *&v138.d = v126;
      *&v138.tx = v135;
      *&v138.ty = v134;
      v137 = v136;
      CGAffineTransformConcat(&v136, &v138, &v137);
      v134 = *&v136.c;
      v135 = *&v136.a;
      v133 = *&v136.tx;

      v17 = v133;
      v15 = v134;
      v16 = v135;
      a1 = v128;
      goto LABEL_47;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D405CEB0;
    *&v135 = v61;
    v125 = v60;
    *(inited + 32) = v2;
    v68 = v2;
    v69 = v134;
    Array<A>.displayAttributes()(inited, v134);
    swift_setDeallocating();
    swift_arrayDestroy();
    v70 = (v132)(v9, &v12[v133], v6);
    MEMORY[0x1EEE9AC00](v70);
    v71 = v130;
    *(&v122 - 4) = v131;
    *(&v122 - 3) = v71;
    *(&v122 - 2) = &protocol witness table for TextBox;
    swift_getKeyPath();
    Capsule.subscript.getter();
    v60 = v125;

    (*&v60)(v9, v6);
    if (!*&v140.a)
    {
      v144.origin.x = a;
      v144.origin.y = b;
      v144.size.width = c;
      v144.size.height = d;
      v88 = CGRectGetWidth(v144);
      if (v28 >= v88)
      {
        v28 = v88;
      }

      v145.origin.x = a;
      v145.origin.y = b;
      v145.size.width = c;
      v145.size.height = d;
      v89 = CGRectGetHeight(v145);
      if (Height >= v89)
      {
        Height = v89;
      }

      v146.origin.x = a;
      v146.origin.y = b;
      v146.size.width = c;
      v146.size.height = d;
      v90 = CGRectGetMidX(v146);
      v147.origin.x = a;
      v147.origin.y = b;
      v147.size.width = c;
      v147.size.height = d;
      v91 = CGRectGetMidY(v147);
      outlined destroy of TextBoxViewAttributes(v69, type metadata accessor for TextBoxViewAttributes);
      a = v90 - v28 * 0.5;
      b = v91 - Height * 0.5;
      goto LABEL_46;
    }

    v72 = OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_isScribbling;
    if (v68[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_isScribbling] == 1)
    {
      v73 = swift_unknownObjectWeakLoadStrong();
      if (v73)
      {
        v74 = v73;
        [v73 frame];
        v76 = v75;
        v78 = v77;
        v80 = v79;
        v82 = v81;
        v83 = swift_unknownObjectWeakLoadStrong();
        if (v83)
        {
          v84 = v83;
          AnyCanvasElementView.paperBoundsTransform()(&v140);
          v126 = *&v140.a;
          v122 = *&v140.tx;
          v123 = *&v140.c;

          v86 = v122;
          v85 = v123;
          v87 = v126;
        }

        else
        {
          v85 = xmmword_1D4059310;
          v87 = xmmword_1D4059320;
          v86 = 0uLL;
        }

        *&v138.a = v87;
        *&v138.c = v85;
        *&v138.tx = v86;
        CGAffineTransformInvert(&v137, &v138);
        v138 = v137;
        v148.origin.x = v76;
        v148.origin.y = v78;
        v148.size.width = v80;
        v148.size.height = v82;
        v149 = CGRectApplyAffineTransform(v148, &v138);
        a = v149.origin.x;
        b = v149.origin.y;
        c = v149.size.width;
        d = v149.size.height;
      }

      else
      {
        a = 0.0;
        b = 0.0;
        c = 0.0;
        d = 0.0;
      }

      if (v68[v72] == 1)
      {
        v92 = [v68 traitCollection];
        v93 = [v92 layoutDirection];

        if (v68[v72] == 1)
        {
          v94 = [v68 traitCollection];
          v95 = [v94 layoutDirection];

          v96 = v95 == 1;
          if (v93)
          {
            v97 = v134;
            v60 = v125;
LABEL_40:
            v98 = v97 + *(v124 + 32);
            v99 = *v98;
            v100 = *(v98 + 8);
            if ((v100 & 1) != 0 || v99)
            {
              v101 = a;
              v102 = b;
              v103 = c;
              v104 = d;
              if ((v96 | (v99 == 2) & ~v100) == 1)
              {
                v105 = CGRectGetWidth(*&v101);
                outlined destroy of TextBoxViewAttributes(v97, type metadata accessor for TextBoxViewAttributes);
                a = a - (v28 - v105);
              }

              else
              {
                v106 = CGRectGetMidX(*&v101) + v28 * -0.5;
                v150.origin.x = a;
                v150.origin.y = b;
                v150.size.width = c;
                v150.size.height = d;
                b = CGRectGetMinY(v150);
                outlined destroy of TextBoxViewAttributes(v97, type metadata accessor for TextBoxViewAttributes);
                a = v106;
              }

              goto LABEL_46;
            }

            goto LABEL_42;
          }

          v97 = v134;
          v60 = v125;
        }

        else
        {
          v97 = v134;
          v60 = v125;
          if (v93)
          {
            v96 = 0;
            goto LABEL_40;
          }
        }

LABEL_42:
        outlined destroy of TextBoxViewAttributes(v97, type metadata accessor for TextBoxViewAttributes);
        goto LABEL_46;
      }
    }

    v96 = 0;
    v97 = v134;
    goto LABEL_40;
  }

  __break(1u);
}

{
  v3 = type metadata accessor for TextBoxViewAttributes();
  MEMORY[0x1EEE9AC00](v3);
  v142 = (&v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v135 - v7;
  v9 = direct field offset for TextBoxView.canvasElementView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v14 = xmmword_1D4059310;
    v15 = xmmword_1D4059320;
    v16 = 0uLL;
LABEL_55:
    *a1 = v15;
    a1[1] = v14;
    a1[2] = v16;
    return;
  }

  v11 = Strong;
  v138 = a1;
  v12 = *&v1[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
  v136 = v3;
  *&v137 = v9;
  *&v141 = v1;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    [v1 bounds];
    v13 = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame:*&v1[direct field offset for TextBoxView.textContainer] textContainer:{v17, v18, v19, v20}];
    v12 = 0;
  }

  v145 = v13;
  v21 = v12;
  v22 = [v13 setTextContainerInset_];
  v23 = MEMORY[0x1E69E7D40];
  v24 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x280);
  v139 = (*MEMORY[0x1E69E7D40] & *v11) + 640;
  v140 = v24;
  v24(v22);
  v26 = v25;
  v27 = *((*v23 & *v11) + 0x3F0);
  swift_beginAccess();
  v28 = *(v6 + 16);
  v28(v8, &v11[*&v27], v5);
  v29 = v8;
  v30 = specialized Capsule<>.isFixedWidth.getter();
  v31 = v11;
  v32 = *(v6 + 8);
  v32(v29, v5);
  v143 = v27;
  v144 = *&v32;
  *&v150 = v29;
  v147 = v31;
  *&v148 = v6 + 8;
  *&v149 = v28;
  *&v146 = v6 + 16;
  if ((v30 & 1) == 0)
  {
    v52 = swift_unknownObjectWeakLoadStrong();
    if (v52)
    {
      v53 = v52;
      v54 = MEMORY[0x1E69E7D40];
      v55 = (*((*MEMORY[0x1E69E7D40] & *v52) + 0x90))();

      v51 = v144;
      if (v55)
      {
        v56 = (*((*v54 & *v55) + 0x440))();
        v57 = (*((*v54 & *v56) + 0x280))();
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v158.origin.x = v57;
        v158.origin.y = v59;
        v158.size.width = v61;
        v158.size.height = v63;
        Width = CGRectGetWidth(v158);

        v65 = Width + -48.0;
      }

      else
      {
        v65 = 1.79769313e308;
      }

      v43 = v142;
    }

    else
    {
      v65 = 1.79769313e308;
      v43 = v142;
      v51 = v144;
    }

    [v145 sizeThatFits_];
    v67 = v66;
    v36 = v68;
    [*(v141 + direct field offset for TextBoxView.textContainer) lineFragmentPadding];
    v26 = v67 + v69 + v69;
    v39 = v31;
    v42 = v143;
LABEL_23:
    v70 = v150;
    v71 = (v149)(v150, &v39[*&v42], v5);
    MEMORY[0x1EEE9AC00](v71);
    v140 = type metadata accessor for Shape(0);
    *(&v135 - 4) = v140;
    v139 = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
    *(&v135 - 3) = v139;
    *(&v135 - 2) = &protocol witness table for Shape;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*&v51)(v70, v5);
    a = v155.a;
    b = v155.b;
    c = v155.c;
    d = v155.d;
    if (vabdd_f64(v155.c, v26) < 0.1 && vabdd_f64(v155.d, v36) < 0.1)
    {
      v26 = v155.c;
      v36 = v155.d;
      v76 = v145;
LABEL_36:
      v103 = v149;
LABEL_54:
      v143 = v26;
      v144 = v36;
      v118 = v147;
      v119 = v150;
      v120 = v103(v150, &v147[*&v42], v5);
      MEMORY[0x1EEE9AC00](v120);
      v121 = v139;
      *(&v135 - 4) = v140;
      *(&v135 - 3) = v121;
      *(&v135 - 2) = &protocol witness table for Shape;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*&v51)(v119, v5);
      v122 = v154;
      *&v150 = a - v26 * 0.0;
      *&v149 = b - v36 * 0.0;
      v166.origin.x = a;
      v166.origin.y = b;
      v166.size.width = v26;
      v166.size.height = v36;
      MidX = CGRectGetMidX(v166);
      v167.origin.x = a;
      v167.origin.y = b;
      v167.size.width = v26;
      v167.size.height = v36;
      MidY = CGRectGetMidY(v167);
      CGAffineTransformMakeRotation(&v153, v122);
      tx = v153.tx;
      ty = v153.ty;
      v148 = *&v153.a;
      v146 = *&v153.c;
      CGAffineTransformMakeTranslation(&v153, -MidX, -MidY);
      v127 = v153.a;
      v128 = v153.b;
      v130 = v153.c;
      v129 = v153.d;
      v131 = v153.tx;
      v132 = v153.ty;
      *&v152.a = v148;
      *&v152.c = v146;
      v152.tx = tx;
      v152.ty = ty;
      CGAffineTransformConcat(&v151, &v153, &v152);
      v133 = v151.tx;
      v134 = v151.ty;
      v148 = *&v151.a;
      v146 = *&v151.c;
      v153.a = v127;
      v153.b = v128;
      v153.c = v130;
      v153.d = v129;
      v153.tx = v131;
      v153.ty = v132;
      CGAffineTransformInvert(&v152, &v153);
      *&v153.a = v148;
      *&v153.c = v146;
      v153.tx = v133;
      v153.ty = v134;
      CGAffineTransformConcat(&v151, &v153, &v152);
      v153.a = v143;
      v153.b = 0.0;
      v153.c = 0.0;
      v153.d = v144;
      *&v153.tx = v150;
      *&v153.ty = v149;
      v152 = v151;
      CGAffineTransformConcat(&v151, &v153, &v152);
      v149 = *&v151.c;
      v150 = *&v151.a;
      v148 = *&v151.tx;

      v16 = v148;
      v14 = v149;
      v15 = v150;
      a1 = v138;
      goto LABEL_55;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D405CEB0;
    v78 = v141;
    *(inited + 32) = v141;
    v79 = v78;
    Array<A>.displayAttributes()(inited, v43);
    swift_setDeallocating();
    swift_arrayDestroy();
    v80 = v150;
    v81 = (v149)(v150, &v147[*&v42], v5);
    MEMORY[0x1EEE9AC00](v81);
    v82 = v139;
    *(&v135 - 4) = v140;
    *(&v135 - 3) = v82;
    *(&v135 - 2) = &protocol witness table for Shape;
    swift_getKeyPath();
    Capsule.subscript.getter();
    v51 = v144;

    (*&v51)(v80, v5);
    if (!*&v155.a)
    {
      v159.origin.x = a;
      v159.origin.y = b;
      v159.size.width = c;
      v159.size.height = d;
      v99 = CGRectGetWidth(v159);
      if (v26 >= v99)
      {
        v26 = v99;
      }

      v160.origin.x = a;
      v160.origin.y = b;
      v160.size.width = c;
      v160.size.height = d;
      Height = CGRectGetHeight(v160);
      if (v36 >= Height)
      {
        v36 = Height;
      }

      v161.origin.x = a;
      v161.origin.y = b;
      v161.size.width = c;
      v161.size.height = d;
      v101 = CGRectGetMidX(v161);
      v162.origin.x = a;
      v162.origin.y = b;
      v162.size.width = c;
      v162.size.height = d;
      v102 = CGRectGetMidY(v162);
      outlined destroy of TextBoxViewAttributes(v43, type metadata accessor for TextBoxViewAttributes);
      a = v101 - v26 * 0.5;
      b = v102 - v36 * 0.5;
      v76 = v145;
      v42 = v143;
      goto LABEL_36;
    }

    v83 = OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_isScribbling;
    if (v79[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_isScribbling] == 1)
    {
      v84 = swift_unknownObjectWeakLoadStrong();
      v42 = v143;
      if (v84)
      {
        v85 = v84;
        [v84 frame];
        v87 = v86;
        v89 = v88;
        v91 = v90;
        v93 = v92;
        v94 = swift_unknownObjectWeakLoadStrong();
        if (v94)
        {
          v95 = v94;
          AnyCanvasElementView.paperBoundsTransform()(&v155);
          v141 = *&v155.a;
          v137 = *&v155.c;
          v135 = *&v155.tx;

          v96 = v135;
          v97 = v141;
          v98 = v137;
        }

        else
        {
          v98 = xmmword_1D4059310;
          v97 = xmmword_1D4059320;
          v96 = 0uLL;
        }

        *&v153.a = v97;
        *&v153.c = v98;
        *&v153.tx = v96;
        CGAffineTransformInvert(&v152, &v153);
        v153 = v152;
        v163.origin.x = v87;
        v163.origin.y = v89;
        v163.size.width = v91;
        v163.size.height = v93;
        v164 = CGRectApplyAffineTransform(v163, &v153);
        a = v164.origin.x;
        b = v164.origin.y;
        c = v164.size.width;
        d = v164.size.height;
      }

      else
      {
        a = 0.0;
        b = 0.0;
        c = 0.0;
        d = 0.0;
      }

      if (v79[v83] != 1)
      {
        v104 = 0;
        v76 = v145;
        v43 = v142;
        goto LABEL_47;
      }

      v105 = [v79 traitCollection];
      v106 = [v105 layoutDirection];

      if (v79[v83] == 1)
      {
        v107 = [v79 traitCollection];
        v108 = [v107 layoutDirection];

        v104 = v108 == 1;
        v76 = v145;
        if (v106)
        {
          v43 = v142;
          v51 = v144;
          goto LABEL_38;
        }

        v43 = v142;
        v42 = v143;
        v51 = v144;
        v103 = v149;
      }

      else
      {
        v51 = v144;
        v76 = v145;
        v43 = v142;
        v42 = v143;
        v103 = v149;
        if (v106)
        {
          v104 = 0;
          goto LABEL_48;
        }
      }

LABEL_50:
      outlined destroy of TextBoxViewAttributes(v43, type metadata accessor for TextBoxViewAttributes);
      goto LABEL_54;
    }

    v104 = 0;
    v76 = v145;
LABEL_38:
    v42 = v143;
LABEL_47:
    v103 = v149;
LABEL_48:
    v109 = v43 + *(v136 + 32);
    v110 = *v109;
    v111 = v109[8];
    if ((v111 & 1) != 0 || v110)
    {
      v112 = a;
      v113 = b;
      v114 = c;
      v115 = d;
      if ((v104 | (v110 == 2) & ~v111) == 1)
      {
        v116 = CGRectGetWidth(*&v112);
        outlined destroy of TextBoxViewAttributes(v43, type metadata accessor for TextBoxViewAttributes);
        a = a - (v26 - v116);
      }

      else
      {
        v117 = CGRectGetMidX(*&v112) + v26 * -0.5;
        v165.origin.x = a;
        v165.origin.y = b;
        v165.size.width = c;
        v165.size.height = d;
        b = CGRectGetMinY(v165);
        outlined destroy of TextBoxViewAttributes(v43, type metadata accessor for TextBoxViewAttributes);
        a = v117;
      }

      goto LABEL_54;
    }

    goto LABEL_50;
  }

  v33 = v31;
  v34 = v145;
  [v145 sizeThatFits_];
  v36 = v35;
  v28(v29, &v33[*&v27], v5);
  LOBYTE(v33) = specialized Capsule<>.isFormField.getter();
  *&v135 = v5;
  v37 = (v32)(v29, v5);
  if ((v33 & 1) == 0)
  {
    v39 = v147;
    v43 = v142;
    v42 = v143;
    v51 = v144;
    v5 = v135;
    goto LABEL_23;
  }

  v38 = v34;
  v39 = v147;
  v156.origin.x = v140(v37);
  v41 = CGRectGetHeight(v156);
  v43 = v142;
  v42 = v143;
  v5 = v135;
  if (v36 < v41)
  {
LABEL_13:
    v157.origin.x = v140(v40);
    v36 = CGRectGetHeight(v157);
LABEL_14:
    v51 = v144;
    goto LABEL_23;
  }

  v44 = v39;
  v45 = [v38 text];
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v50 = v47 & 0xFFFFFFFFFFFFLL;
    }

    v39 = v44;
    if (v50)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  __break(1u);
}

void specialized TextBoxView.finalizeLastUndoActionIfPossible(closeUndoGroup:)(int a1)
{
  v2 = v1;
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v40 - v4;
  v6 = type metadata accessor for CapsuleUndoAction();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v47 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v49 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v40 - v21;
  v23 = *(v2 + direct field offset for TextBoxView.currentUndoAction);
  if (v23)
  {
    v46 = v7;
    v44 = direct field offset for TextBoxView.currentUndoAction;
    v24 = *(*v23 + 104);
    swift_beginAccess();
    v45 = v24;
    outlined init with copy of Date?(v23 + v24, v15, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
    }

    else
    {
      v41 = *(v17 + 32);
      v42 = v17 + 32;
      v41(v22, v15, v16);
      v25 = (*(v17 + 16))(v19, v22, v16);
      MEMORY[0x1EEE9AC00](v25);
      v43 = v2;
      v40[-2] = v2;

      Capsule.callAsFunction<A>(_:)();
      Capsule.actionUndoingDifference(from:)();
      v26 = v46;
      if ((*(v46 + 48))(v5, 1, v6) == 1)
      {
        v27 = *(v17 + 8);
        v27(v22, v16);
        outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence17CapsuleUndoActionVSgMd);
      }

      else
      {
        v28 = v48;
        v40[0] = *(v26 + 32);
        v40[1] = v26 + 32;
        (v40[0])(v48, v5, v6);
        (*(v26 + 16))(v47, v28, v6);
        v29 = *(*v23 + 112);
        swift_beginAccess();
        v30 = *(v23 + v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v23 + v29) = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1, v30);
          *(v23 + v29) = v30;
        }

        v33 = v30[2];
        v32 = v30[3];
        if (v33 >= v32 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v30);
        }

        v30[2] = v33 + 1;
        v34 = v46;
        (v40[0])(v30 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v33, v47, v6);
        *(v23 + v29) = v30;
        swift_endAccess();
        (*(v34 + 8))(v48, v6);
        v27 = *(v17 + 8);
        v27(v22, v16);
      }

      v35 = v43;
      if (v50)
      {
        v27(v19, v16);
        v36 = v49;
        (*(v17 + 56))(v49, 1, 1, v16);
        v37 = v45;
        swift_beginAccess();
        outlined assign with take of UUID?(v36, v23 + v37, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
        swift_endAccess();

        *(v35 + v44) = 0;
      }

      else
      {
        v38 = v49;
        v41(v49, v19, v16);
        (*(v17 + 56))(v38, 0, 1, v16);
        v39 = v45;
        swift_beginAccess();
        outlined assign with take of UUID?(v38, v23 + v39, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd);
        swift_endAccess();
      }
    }
  }
}

{
  v2 = v1;
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v40 - v4;
  v6 = type metadata accessor for CapsuleUndoAction();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v47 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v49 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v40 - v21;
  v23 = *(v2 + direct field offset for TextBoxView.currentUndoAction);
  if (v23)
  {
    v46 = v7;
    v44 = direct field offset for TextBoxView.currentUndoAction;
    v24 = *(*v23 + 104);
    swift_beginAccess();
    v45 = v24;
    outlined init with copy of Date?(v23 + v24, v15, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
    }

    else
    {
      v41 = *(v17 + 32);
      v42 = v17 + 32;
      v41(v22, v15, v16);
      v25 = (*(v17 + 16))(v19, v22, v16);
      MEMORY[0x1EEE9AC00](v25);
      v43 = v2;
      v40[-2] = v2;

      Capsule.callAsFunction<A>(_:)();
      Capsule.actionUndoingDifference(from:)();
      v26 = v46;
      if ((*(v46 + 48))(v5, 1, v6) == 1)
      {
        v27 = *(v17 + 8);
        v27(v22, v16);
        outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence17CapsuleUndoActionVSgMd);
      }

      else
      {
        v28 = v48;
        v40[0] = *(v26 + 32);
        v40[1] = v26 + 32;
        (v40[0])(v48, v5, v6);
        (*(v26 + 16))(v47, v28, v6);
        v29 = *(*v23 + 112);
        swift_beginAccess();
        v30 = *(v23 + v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v23 + v29) = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1, v30);
          *(v23 + v29) = v30;
        }

        v33 = v30[2];
        v32 = v30[3];
        if (v33 >= v32 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v30);
        }

        v30[2] = v33 + 1;
        v34 = v46;
        (v40[0])(v30 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v33, v47, v6);
        *(v23 + v29) = v30;
        swift_endAccess();
        (*(v34 + 8))(v48, v6);
        v27 = *(v17 + 8);
        v27(v22, v16);
      }

      v35 = v43;
      if (v50)
      {
        v27(v19, v16);
        v36 = v49;
        (*(v17 + 56))(v49, 1, 1, v16);
        v37 = v45;
        swift_beginAccess();
        outlined assign with take of UUID?(v36, v23 + v37, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
        swift_endAccess();

        *(v35 + v44) = 0;
      }

      else
      {
        v38 = v49;
        v41(v49, v19, v16);
        (*(v17 + 56))(v38, 0, 1, v16);
        v39 = v45;
        swift_beginAccess();
        outlined assign with take of UUID?(v38, v23 + v39, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
        swift_endAccess();
      }
    }
  }
}

uint64_t specialized closure #1 in TextBoxView.finalizeLastUndoActionIfPossible(closeUndoGroup:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-v5 - 8];
  v7 = *(a2 + direct field offset for TextBoxView.textStorage);
  v8 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString;
  swift_beginAccess();
  (*(v4 + 16))(v6, v7 + v8, v3);
  v9 = Capsule.Ref.root.modify();
  v11 = v10;
  v12 = type metadata accessor for TextBox(0);
  (*(v4 + 40))(v11 + *(v12 + 24), v6, v3);
  return v9(v15, 0);
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v18 = *(a2 + direct field offset for TextBoxView.textStorage);
  v19 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString;
  swift_beginAccess();
  v20 = *(v8 + 16);
  v20(v17, v18 + v19, v7);
  v53 = Capsule.Ref.root.modify();
  v22 = v21;
  v47 = type metadata accessor for Shape(0);
  v23 = *(v47 + 52);
  v56 = v8;
  v24 = v8;
  v25 = v7;
  v26 = v23;
  v27 = *(v24 + 24);
  v54 = v17;
  v28 = v17;
  v29 = v22;
  v27(v22 + v23, v28, v25);
  v50 = v20;
  v20(v14, v22 + v26, v25);
  v30 = CRAttributedString.attributedString.getter();
  v31 = [v30 string];

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (v32)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34 == 0xE000000000000000;
  }

  if (v35)
  {

    v37 = *(v56 + 8);
    v37(v14, v25);
LABEL_8:
    v37(v54, v25);
    return v53(v55, 0);
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v37 = *(v56 + 8);
  v37(v14, v25);
  if (v36)
  {
    goto LABEL_8;
  }

  v38 = v52;
  v39 = v50;
  v50(v52, v29 + v26, v25);
  v40 = v51;
  v39(v51, v29 + v26, v25);
  v41 = CRAttributedString.attributedString.getter();
  v37(v40, v25);
  v42 = [v41 length];

  result = v42 - 1;
  if (!__OFSUB__(v42, 1))
  {
    v44 = v25;
    v45 = v48;
    CRAttributedString.attributes(at:effectiveRange:)();
    v37(v38, v44);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    outlined init with copy of Date?(v45, v49, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v37(v54, v44);
    return v53(v55, 0);
  }

  __break(1u);
  return result;
}