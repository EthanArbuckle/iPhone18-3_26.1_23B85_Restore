id SDFLayer.SDFSubset.elementLayer(at:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (v2 >> 62)
  {
    v5 = a1;
    v6 = __CocoaSet.count.getter();
    a1 = v5;
    if (v6 > v5)
    {
LABEL_3:
      if ((v2 & 0xC000000000000001) != 0)
      {
      }

      else
      {
        if (a1 < 0)
        {
          __break(1u);
        }

        else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
        {
          v3 = *(v2 + 8 * a1 + 32);

          return v3;
        }

        __break(1u);
      }

      JUMPOUT(0x193AC03C0);
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    goto LABEL_3;
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E6979438]) init];
  [v7 setHitTestsAsFill_];
  [v7 setAnchorPoint_];
  [v7 setSDFCoordinatedAnimationDelegate];
  [*(v1 + 16) addSublayer_];
  v8 = v7;
  MEMORY[0x193ABF170]();
  if (*((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v8;
}

uint64_t SDFLayer.backdropObserver.didset(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_backdropObserver);
  if (v2)
  {
    if (v2 != result)
    {
      *(v1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_needsUpdate) = 1;
      v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_currentLuminance);
      v4 = *(*v2 + 80);

      v4(v3);
    }
  }

  else if (result)
  {
    *(v1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_needsUpdate) = 1;
  }

  return result;
}

id SDFLayer.init(layer:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentLayer] = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUI8SDFLayer_backdropObserver] = 0;
  v4 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfStyle;
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  *&v1[v4] = v5 | 0x8000000000000000;
  *&v1[OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects] = v6;
  *&v1[OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfSubsets] = v6;
  *&v1[OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfElements] = v6;
  v7 = &v1[OBJC_IVAR____TtC7SwiftUI8SDFLayer_distanceRange];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  *&v1[OBJC_IVAR____TtC7SwiftUI8SDFLayer_renderer] = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUI8SDFLayer_ovalization] = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUI8SDFLayer_currentLuminance] = 2143289344;
  *(v5 + 32) = 0x80;
  v1[OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentGroup] = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 40) = v6;
  *(v5 + 48) = v6;
  v8 = &v1[OBJC_IVAR____TtC7SwiftUI8SDFLayer_shapeBounds];
  *v8 = 0u;
  v8[1] = 0u;
  v1[OBJC_IVAR____TtC7SwiftUI8SDFLayer_needsUpdate] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = _bridgeAnythingToObjectiveC<A>(_:)();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithLayer_, v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t SDFLayer.ensureSDFElement(at:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfElements;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (*(v5 + 2) == a1)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v3) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 + 1, 1, v5);
      *(v1 + v3) = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    v9 = &v5[40 * v8];
    *(v9 + 2) = 0u;
    *(v9 + 3) = 0u;
    *(v9 + 32) = 248;
    *(v1 + v3) = v5;
    return swift_endAccess();
  }

  return result;
}

uint64_t SDFLayer.finishUpdatingStyle(_:in:elementCount:backdropGroupID:)(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = *a2;
  v10 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfElements;
  swift_beginAccess();
  v11 = *(*&v6[v10] + 16);
  if (v11 < a3)
  {
    goto LABEL_47;
  }

  v53 = a4;
  swift_beginAccess();
  specialized Array.replaceSubrange<A>(_:with:)(a3, v11);
  swift_endAccess();
  v12 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfSubsets;
  swift_beginAccess();
  v13 = *&v6[v12];
  v14 = *(v13 + 2);
  if (v14)
  {
    v15 = 0;
    v5 = 40;
    v55 = v12;
    do
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v6[v12] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
        *&v6[v12] = v13;
      }

      if (v15 >= *(v13 + 2))
      {
        goto LABEL_45;
      }

      v17 = &v13[40 * v15];
      v20 = *(v17 + 8);
      v19 = (v17 + 64);
      v18 = v20;
      if (v20 >> 62)
      {
        v21 = __CocoaSet.count.getter();
        v22 = v21 == a3;
        if (v21 < a3)
        {
LABEL_20:
          __break(1u);
          break;
        }
      }

      else
      {
        v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v22 = v21 == a3;
        if (v21 < a3)
        {
          goto LABEL_20;
        }
      }

      if (!v22)
      {
        v23 = a3;
        a3 = v6;
        v6 = v14;
        v24 = v23;
        v5 = v23;
        if (v21 <= v23)
        {
          goto LABEL_46;
        }

        while (1)
        {
          v25 = *v19;
          if ((*v19 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x193AC03C0](v24);
          }

          else
          {
            if ((v24 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              swift_once();
LABEL_30:
              v56 = static Material.Layer.SDFLayer.GroupLayer.Blend.normal;
              outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(static Material.Layer.SDFLayer.GroupLayer.Blend.normal);
              SDFLayer.updateSDFEffects(for:at:in:backdropGroupID:blend:opacity:options:gain:maxColorComponent:)(a1, &v58, &v57, v53, &v56, 4, 1.0, 1.0, INFINITY);
              outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v56);
              if (v6[OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentLayer] == 1 && (v6[OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentGroup] & 1) == 0)
              {
                if (one-time initialization token for defaultContentGroup != -1)
                {
                  swift_once();
                }

                v41 = static SDFStyle.defaultContentGroup;
                v57 = v9;
                v56 = static Material.Layer.SDFLayer.GroupLayer.Blend.normal;
                outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(static Material.Layer.SDFLayer.GroupLayer.Blend.normal);
                SDFLayer.updateSDFEffects(for:at:in:backdropGroupID:blend:opacity:options:gain:maxColorComponent:)(v41, &v58, &v57, v53, &v56, 0, 1.0, 1.0, INFINITY);
                outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v56);
              }

              [v6 setNeedsLayout];
              v42 = *&v6[v5];
              v43 = *(v42 + 16);
              if (v43)
              {

                v44 = (v42 + 40);
                v45 = (v42 + 40);
                do
                {
                  v47 = *v45;
                  v45 += 4;
                  v46 = v47;
                  if (v47)
                  {
                    v48 = *(v44 - 1);
                    v49 = v46;
                    v50 = v48;
                    v51 = MEMORY[0x193ABEC20](a3, 0xE600000000000000);
                    [v50 didChangeValueForKey_];
                  }

                  v44 = v45;
                  --v43;
                }

                while (v43);
              }

              v28 = v55;
              goto LABEL_42;
            }

            if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v26 = *(v25 + 8 * v24 + 32);
          }

          v27 = v26;
          ++v24;
          [v26 removeFromSuperlayer];

          if (v21 == v24)
          {
            specialized Array.replaceSubrange<A>(_:with:)(v5, v21);
            v14 = v6;
            v6 = a3;
            a3 = v5;
            v12 = v55;
            v5 = 40;
            break;
          }
        }
      }

      ++v15;
      *&v6[v12] = v13;
      swift_endAccess();
    }

    while (v15 != v14);
  }

  v28 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_needsUpdate;
  if ((v6[OBJC_IVAR____TtC7SwiftUI8SDFLayer_needsUpdate] & 1) != 0 || (v29 = *&v6[OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfStyle], , v30 = static SDFStyle.== infix(_:_:)(a1, v29), , (v30 & 1) == 0))
  {
    v55 = v28;
    a3 = 0x746365666665;
    v5 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
    swift_beginAccess();
    v31 = *&v6[v5];
    v32 = *(v31 + 16);
    if (v32)
    {

      v33 = (v31 + 40);
      v34 = (v31 + 40);
      do
      {
        v36 = *v34;
        v34 += 4;
        v35 = v36;
        if (v36)
        {
          v37 = *(v33 - 1);
          v38 = v35;
          v39 = v37;
          v40 = MEMORY[0x193ABEC20](0x746365666665, 0xE600000000000000);
          [v39 willChangeValueForKey_];
        }

        v33 = v34;
        --v32;
      }

      while (v32);
    }

    v58 = 0;
    v57 = v9;
    if (one-time initialization token for normal != -1)
    {
      goto LABEL_48;
    }

    goto LABEL_30;
  }

LABEL_42:
  *&v6[OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfStyle] = a1;

  v6[v28] = 0;
  return result;
}

uint64_t closure #1 in SDFLayer.update(list:size:style:options:in:backdropGroupID:)(uint64_t *a1, char *a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_renderer;
  if (*&a2[OBJC_IVAR____TtC7SwiftUI8SDFLayer_renderer])
  {
    if (a3 != 0.0)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (a4 == 0.0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v18 = 2;
  type metadata accessor for DisplayList.GraphicsRenderer();
  swift_allocObject();
  *&a2[v14] = DisplayList.GraphicsRenderer.init(platformViewMode:)(&v18);

  if (a3 == 0.0)
  {
    goto LABEL_5;
  }

LABEL_6:
  GraphicsContext.copyOnWrite()();
  RBDrawingStateTranslateCTM();
LABEL_7:
  GraphicsContext.copyOnWrite()();
  v15 = *a1;
  RBDrawingStateAddDistanceFilter2();
  v16 = a2;

  specialized GraphicsContext.drawLayer(flags:content:)(0, v15, v16, a7, a8 & 0xFFFFFFFF0000FFFFLL);
}

uint64_t closure #1 in closure #1 in SDFLayer.update(list:size:style:options:in:backdropGroupID:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_renderer);
  if (v4)
  {
    v5 = result;
    v6 = *(v4 + 64);
    *(v4 + 72) = xmmword_18DDAB910;
    v11 = a3;
    v12 = a4;
    v13 = HIDWORD(a4);

    v7 = *(v4 + 48);
    v8 = *(v4 + 56);
    DisplayList.GraphicsRenderer.render(list:in:)(&v11, v5);
    swift_beginAccess();

    v9 = MEMORY[0x1E69E7CC8];
    *(v4 + 16) = MEMORY[0x1E69E7CC8];

    swift_beginAccess();
    v10 = *(v4 + 32);
    *(v4 + 32) = v9;
    *(v4 + 40) = v9;
    *(v4 + 16) = v10;
    swift_endAccess();
    *(v4 + 48) = v7;
    *(v4 + 56) = v8;
    *(v4 + 64) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void SDFLayer.updateSDFEffects(for:at:in:backdropGroupID:blend:opacity:options:gain:maxColorComponent:)(unint64_t a1, char **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, char *a6, float a7, float a8, float a9)
{
  v17 = v9;
  *&v18 = a9;
  *&v19 = a8;
  v20 = a6;
  *&v21 = a7;
  v22 = a2;
  v23 = *a5;
  v24 = a1 >> 60;
  if ((a1 >> 60) <= 4)
  {
    if (v24 <= 1)
    {
      if (v24)
      {
        v218 = a6;
        v15 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v246 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v247 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v20 = *a2;
        v10 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
        swift_beginAccess();
        if ((v20 & 0x8000000000000000) == 0)
        {
          v91 = *(v9 + v10);
          if (v20 < *(v91 + 16))
          {
            v92 = v91 + 32 * v20;
            v93 = *(v92 + 32);
            objc_opt_self();
            v94 = swift_dynamicCastObjCClassUnconditional();
            v95 = *(v92 + 40);
            if (!v95)
            {
LABEL_189:
              __break(1u);
              goto LABEL_190;
            }

            v96 = v94;
            v33 = v23;
            objc_opt_self();
            v12 = swift_dynamicCastObjCClassUnconditional();
            v220 = v93;
            v216 = v95;
            [v96 setEffectOffset_];
            if (one-time initialization token for cache != -1)
            {
              swift_once();
            }

            v97 = specialized ObjectCache.subscript.getter(&v246);
            v11 = MEMORY[0x1E69E7CA0];
            type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>);
            v23 = swift_allocObject();
            *(v23 + 16) = xmmword_18DDAF080;
            if (one-time initialization token for cache != -1)
            {
              swift_once();
            }

            specialized ObjectCache.subscript.getter(0.0, 0.0, 0.0, 0.0);
            v99 = v98;
            type metadata accessor for CGColorRef(0);
            *(v23 + 32) = v99;
            *(v23 + 56) = v100;
            *(v23 + 64) = v97;
            *(v23 + 120) = v100;
            *(v23 + 88) = v100;
            *(v23 + 96) = v97;
            v101 = v97;
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v12 setColors_];

            v14 = -v15;
            v103 = 0.0;
            if (v13 >= 0.0)
            {
              v103 = v13;
            }

            v25 = v103 * 0.5;
            type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
            v104 = swift_allocObject();
            *(v104 + 16) = xmmword_18DDF8920;
            v13 = v14 - v25;
            *(v104 + 32) = CGFloat._bridgeToObjectiveC()();
            *(v104 + 40) = CGFloat._bridgeToObjectiveC()();
            *(v104 + 48) = CGFloat._bridgeToObjectiveC()();
            type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
            v105 = Array._bridgeToObjectiveC()().super.isa;

            [v12 setDistances_];

            v106 = *(v17 + v10);
            if (v20 >= *(v106 + 16))
            {
              __break(1u);
              goto LABEL_180;
            }

            v107 = *(v106 + 32 * v20 + 32);

            *a2 = v20 + 1;
            v10 = v107;
            LODWORD(v12) = 0;
            v11 = MEMORY[0x1E69E7CC0];
            LODWORD(v20) = v218;
            v23 = v33;
            goto LABEL_136;
          }

LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

      v13 = *(a1 + 16);
      v246 = *(a1 + 24);
      v247 = *(a1 + 40);
      v50 = *a2;
      v51 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
      swift_beginAccess();
      if ((v50 & 0x8000000000000000) != 0)
      {
LABEL_161:
        __break(1u);
        goto LABEL_162;
      }

      v52 = *(v17 + v51);
      if (v50 >= *(v52 + 16))
      {
LABEL_171:
        __break(1u);
        goto LABEL_172;
      }

      v53 = v52 + 32 * v50;
      v54 = *(v53 + 32);
      objc_opt_self();
      v55 = swift_dynamicCastObjCClassUnconditional();
      v56 = *(v53 + 40);
      if (!v56)
      {
LABEL_186:
        __break(1u);
        goto LABEL_187;
      }

      v10 = v55;
      objc_opt_self();
      v57 = swift_dynamicCastObjCClassUnconditional();
      *v22 = v50 + 1;
      v58 = v54;
      v59 = v56;
      [v10 setEffectOffset_];
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v60 = specialized ObjectCache.subscript.getter(&v246);
      [v57 setColor_];

      v61 = v58;
    }

    else
    {
      if (v24 == 2)
      {
        v215 = *a5;
        v217 = a6;
        v20 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v62 = *a2;
        v63 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
        swift_beginAccess();
        if ((*&v62 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        v64 = *(v17 + v63);
        if (*&v62 >= *(v64 + 16))
        {
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        v65 = *(v64 + 32 * *&v62 + 40);
        if (!v65)
        {
LABEL_187:
          __break(1u);
          goto LABEL_188;
        }

        v206 = v63;
        objc_opt_self();
        v211 = swift_dynamicCastObjCClassUnconditional();
        v213 = v22;
        v12 = *(v20 + 2);
        v209 = v62;
        v203 = v65;
        if (!v12)
        {

          v144 = v65;
LABEL_94:
          v145 = Array._bridgeToObjectiveC()().super.isa;

          v12 = v211;
          [v211 setColors_];

          v146 = *(v23 + 16);
          LODWORD(v20) = v217;
          if (v146)
          {
            *&v237 = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray.reserveCapacity(_:)();
            v22 = 32;
            do
            {
              CGFloat._bridgeToObjectiveC()();
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v22 += 8;
              --v146;
            }

            while (v146);
          }

          type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
          v147 = Array._bridgeToObjectiveC()().super.isa;

          [v211 setDistances_];

          v10 = *(v11 + 2);
          if (v10)
          {
            *&v237 = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray.reserveCapacity(_:)();
            v22 = 32;
            do
            {
              v222 = *&v11[v22];
              v148 = v222 >> 32;
              LODWORD(v14) = HIDWORD(v148);
              LODWORD(v13) = v148;
              v149 = objc_allocWithZone(MEMORY[0x1E69793D0]);
              LODWORD(v150) = DWORD1(v222);
              LODWORD(v151) = HIDWORD(v148);
              LODWORD(v152) = HIDWORD(v222);
              [v149 initWithControlPoints__:*&v222 :{v150, v151, v152}];
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v22 += 16;
              --v10;
            }

            while (v10);

            v12 = v211;
          }

          else
          {
          }

          type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CAMediaTimingFunction);
          v153 = Array._bridgeToObjectiveC()().super.isa;

          [v12 setInterpolations_];

          v154 = *(v17 + v206);
          v23 = v215;
          if (*&v209 >= *(v154 + 16))
          {
            goto LABEL_177;
          }

          v155 = *(v154 + 32 * *&v209 + 32);

          *v213 = *&v209 + 1;
          v10 = v155;
          goto LABEL_104;
        }

        v208 = v17;
        *&v230 = MEMORY[0x1E69E7CC0];

        v66 = v65;

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
        v10 = v230;
        if (one-time initialization token for cache == -1)
        {
LABEL_36:
          v22 = 32;
          do
          {
            v246 = *&v20[v22];
            v247 = *&v20[v22 + 16];
            v67 = specialized ObjectCache.subscript.getter(&v246);
            type metadata accessor for CGColorRef(0);
            *(&v238 + 1) = v68;
            *&v237 = v67;
            *&v230 = v10;
            v70 = *(v10 + 16);
            v69 = *(v10 + 24);
            if (v70 >= v69 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1);
              v10 = v230;
            }

            *(v10 + 16) = v70 + 1;
            outlined init with take of Any(&v237, (v10 + 32 * v70 + 32));
            v22 += 20;
            --v12;
          }

          while (v12);

          v17 = v208;
          goto LABEL_94;
        }

LABEL_183:
        swift_once();
        goto LABEL_36;
      }

      if (v24 == 3)
      {
        v37 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v246 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v247 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v15 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
        v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x48);
        v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x49);
        v38 = *a2;
        v39 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
        swift_beginAccess();
        if ((v38 & 0x8000000000000000) == 0)
        {
          v40 = *(v17 + v39);
          if (v38 < *(v40 + 16))
          {
            v215 = v23;
            v41 = v40 + 32 * v38;
            v42 = *(v41 + 32);
            objc_opt_self();
            v43 = swift_dynamicCastObjCClassUnconditional();
            v44 = *(v41 + 40);
            if (!v44)
            {
LABEL_185:
              __break(1u);
              goto LABEL_186;
            }

            v10 = v43;
            objc_opt_self();
            v17 = swift_dynamicCastObjCClassUnconditional();
            *v22 = v38 + 1;
            v22 = v42;
            v23 = v44;
            [v10 setEffectOffset_];
            if (one-time initialization token for cache == -1)
            {
              goto LABEL_17;
            }

            goto LABEL_178;
          }

          goto LABEL_169;
        }

        goto LABEL_159;
      }

      v85 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v86 = *a2;
      v87 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
      swift_beginAccess();
      if ((v86 & 0x8000000000000000) != 0)
      {
LABEL_160:
        __break(1u);
        goto LABEL_161;
      }

      v88 = *(v17 + v87);
      if (v86 >= *(v88 + 16))
      {
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      v89 = *(v88 + 32 * v86 + 32);
      *v22 = v86 + 1;
      v90 = *(*v85 + 96);
      v10 = v89;

      v90(v10);
    }

LABEL_104:
    LODWORD(v12) = 0;
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_136;
  }

  if (v24 > 7)
  {
    v10 = a4;
    v48 = *a3;
    if (v24 != 8)
    {
      if (v24 == 9)
      {
        v49 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        *&v237 = *a3;
        *&v230 = v23;

        SDFLayer.updateSDFEffects(for:at:in:backdropGroupID:blend:opacity:options:gain:maxColorComponent:)(v49, v22, &v237, v10, &v230, v20 & 0xC, *&v21, 1.0, INFINITY);
        *&v237 = v48;
        if (one-time initialization token for normal == -1)
        {
LABEL_23:
          *&v230 = static Material.Layer.SDFLayer.GroupLayer.Blend.normal;
          outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(static Material.Layer.SDFLayer.GroupLayer.Blend.normal);
          SDFLayer.updateSDFEffects(for:at:in:backdropGroupID:blend:opacity:options:gain:maxColorComponent:)(v12, v22, &v237, v10, &v230, 4, 1.0, 1.0, INFINITY);

          outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v230);
          return;
        }

LABEL_164:
        swift_once();
        goto LABEL_23;
      }

      v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v11 = *a2;
      v125 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
      swift_beginAccess();
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_166;
      }

      v126 = *(v9 + v125);
      if (v11 >= *(v126 + 16))
      {
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      v127 = *(v126 + 32 * v11 + 32);
      objc_opt_self();
      v10 = swift_dynamicCastObjCClassUnconditional();
      v80 = v127;
      [v10 setEffectOffset_];
      v128 = *(v17 + v125);
      if (v11 >= *(v128 + 16))
      {
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        swift_once();
LABEL_17:
        v45 = specialized ObjectCache.subscript.getter(&v246);
        [v17 setColor_];

        v46 = 0.0;
        if (v15 >= 0.0)
        {
          v46 = v15;
        }

        [v17 setRadius_];
        [v17 setOffset_];
        [v17 setPunchout_];
        [v17 setInvert_];

        v47 = v22;
        LODWORD(v12) = 0;
        v11 = MEMORY[0x1E69E7CC0];
LABEL_135:
        v23 = v215;
        goto LABEL_136;
      }

      v129 = *(v128 + 32 * v11 + 40);
      if (!v129)
      {
LABEL_191:
        __break(1u);
        return;
      }

      objc_opt_self();
      v130 = swift_dynamicCastObjCClassUnconditional();
      v131 = v129;
      [v130 setMinimum_];
      [v130 setMaximum_];

      *v22 = v11 + 1;
      goto LABEL_79;
    }

    v82 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v83 = v82 >> 6;
    if (v82 >> 6 == 2)
    {
      v12 = 0;
      v84 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == 2 && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == 0;
      if (v84 && v82 == 128)
      {
        if (*(v9 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentLayer) != 1)
        {
          return;
        }

        v12 = 1;
      }
    }

    else
    {
      v12 = 0;
    }

    v209 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v211 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    LODWORD(v206) = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v221 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v133 = *a2;
    v134 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
    swift_beginAccess();
    if ((v133 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v215 = v23;
      v135 = *(v17 + v134);
      if (v133 < *(v135 + 16))
      {
        v136 = *(v135 + 32 * v133 + 32);
        v137 = v221;
        v219 = v20;
        if (v83 > 1)
        {
          if (v83 == 3 || v211 != 3 || v209 != 0.0 || v206 != 128)
          {
            v143 = v136;

LABEL_121:
            v166 = v22;
            *v22 = v133 + 1;
            v169 = v211 == 1 && *&v209 == 0 && v206 == 128;
            [v136 setAllowsGroupOpacity_];
            [v136 setAllowsGroupBlending_];
            v170 = *(v137 + 16);
            if (v170)
            {

              v171 = (v137 + 80);
              do
              {
                v172 = *(v171 - 6);
                v173 = *(v171 - 5);
                v174 = *(v171 - 8);
                v175 = *(v171 - 2);
                v176 = *(v171 - 1);
                v177 = *v171;
                *&v237 = v48;
                *&v230 = v173;

                outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v173);
                outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v173);
                SDFLayer.updateSDFEffects(for:at:in:backdropGroupID:blend:opacity:options:gain:maxColorComponent:)(v172, v166, &v237, v10, &v230, v175, v174, v176, v177);

                outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v173);
                outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v230);
                v171 += 14;
                --v170;
              }

              while (v170);
            }

            v10 = v136;
            LODWORD(v20) = v219;
            goto LABEL_135;
          }
        }

        else if (v83)
        {
          v138 = v209;
          objc_opt_self();
          v139 = swift_dynamicCastObjCClassUnconditional();
          v204 = v136;

          v140 = [v139 tracksLuma];
          v141 = 0;
          if ((v211 & 0x100000000) != 0)
          {
            v141 = *(v17 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_backdropObserver) != 0;
          }

          [v139 setTracksLuma_];

          if (v140)
          {
            v137 = v221;
            if (!v141)
            {
              *(v17 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_currentLuminance) = 2143289344;
            }

            v142 = v206;
          }

          else
          {
            v142 = v206;
            v137 = v221;
          }

          goto LABEL_109;
        }

        v156 = v136;

        v138 = 0.0;
        v142 = v206;
LABEL_109:
        objc_opt_self();
        v157 = swift_dynamicCastObjCClassUnconditional();
        *&v237 = v211;
        *(&v237 + 1) = v209;
        LOBYTE(v238) = v142;
        *(&v238 + 1) = v137;
        *&v239 = v11;
        v205 = v136;
        [v157 setMarginWidth_];
        v158 = 0;
        if ((~v10 & 0xF000000000000007) != 0)
        {
          if (v10 < 0)
          {
            v161 = *((v10 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
            v160 = *((v10 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
          }

          else
          {
            *&v237 = 0x3A49557466697753;
            *(&v237 + 1) = 0xE800000000000000;
            v230 = *(v10 + 16);
            v159 = DisplayList.Index.ID.string.getter();
            MEMORY[0x193ABEDD0](v159);

            v160 = 0xE800000000000000;
            v161 = 0x3A49557466697753;
          }

          v158 = MEMORY[0x193ABEC20](v161, v160);
        }

        [v157 setGroupName_];

        if (v138 != 0.0 && [v157 respondsToSelector_])
        {
          v162 = CGFloat._bridgeToObjectiveC()().super.super.isa;
          v163 = MEMORY[0x193ABEC20](0x6152657461647075, 0xEA00000000006574);
          [v157 setValue:v162 forKey:v163];
        }

        if ([v157 respondsToSelector_])
        {
          v164 = Bool._bridgeToObjectiveC()().super.super.isa;
          v165 = MEMORY[0x193ABEC20](0x4D65737265766E69, 0xED00006465687365);
          [v157 setValue:v164 forKey:v165];
        }

        else
        {
        }

        v137 = v221;
        goto LABEL_121;
      }
    }

    __break(1u);
    goto LABEL_183;
  }

  if (v24 == 5)
  {
    v71 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v72 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v17 = a2;
    v22 = *a2;
    v73 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
    swift_beginAccess();
    if ((v22 & 0x8000000000000000) == 0)
    {
      v74 = *(v9 + v73);
      if (v22 >= *(v74 + 16))
      {
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      v75 = v74 + 32 * v22;
      v76 = *(v75 + 32);
      objc_opt_self();
      v77 = swift_dynamicCastObjCClassUnconditional();
      v78 = *(v75 + 40);
      if (!v78)
      {
LABEL_188:
        __break(1u);
        goto LABEL_189;
      }

      v10 = v77;
      objc_opt_self();
      v79 = swift_dynamicCastObjCClassUnconditional();
      *v17 = v22 + 1;
      v80 = v76;
      v81 = v78;
      [v10 setEffectOffset_];
      [v79 setHeight_];
      [v79 setCurvature_];
      [v79 setAngle_];
      [v79 setMaskOffset_];

LABEL_79:
      v132 = v80;
      goto LABEL_104;
    }

    goto LABEL_158;
  }

  *&v220 = a8;
  if (v24 == 6)
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v246 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v247 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v16 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
    v15 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v25 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x48);
    v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
    v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x58);
    v26 = *a2;
    v27 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
    swift_beginAccess();
    if ((v26 & 0x8000000000000000) == 0)
    {
      v28 = *(v17 + v27);
      if (v26 < *(v28 + 16))
      {
        v29 = v28 + 32 * v26;
        v30 = *(v29 + 32);
        objc_opt_self();
        v31 = swift_dynamicCastObjCClassUnconditional();
        v32 = *(v29 + 40);
        if (v32)
        {
          v10 = v31;
          objc_opt_self();
          v17 = swift_dynamicCastObjCClassUnconditional();
          *v22 = v26 + 1;
          v33 = v30;
          v12 = v32;
          [v10 setEffectOffset_];
          if (one-time initialization token for cache == -1)
          {
LABEL_9:
            v34 = specialized ObjectCache.subscript.getter(&v246);
            [v17 setColor_];

            [v17 setHeight_];
            [v17 setAngle_];
            [v17 setGlobal_];
            [v17 setSpread_];
            [v17 setAmount_];
            [v17 setCurvature_];

            v35 = v33;
            LODWORD(v12) = 0;
            v11 = MEMORY[0x1E69E7CC0];
            LODWORD(v19) = v220;
            goto LABEL_136;
          }

LABEL_180:
          swift_once();
          goto LABEL_9;
        }

        __break(1u);
        goto LABEL_185;
      }

      goto LABEL_173;
    }

    goto LABEL_163;
  }

  *&v215 = a9;
  v108 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v109 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v15 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v246 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v247 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
  v110 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
  v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x48);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
  v21 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x58);
  v244 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
  v245 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
  v19 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x78);
  v18 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
  v207 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x88);
  v210 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
  v111 = *a2;
  v112 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
  swift_beginAccess();
  if ((v111 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v113 = *(v17 + v112);
  if (v111 >= *(v113 + 16))
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v114 = v22;
  v115 = v113 + 32 * v111;
  v116 = *(v115 + 32);
  objc_opt_self();
  v117 = swift_dynamicCastObjCClassUnconditional();
  v118 = *(v115 + 40);
  if (!v118)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  v10 = v117;
  objc_opt_self();
  v119 = swift_dynamicCastObjCClassUnconditional();
  *v114 = v111 + 1;
  v120 = v116;
  v121 = v118;
  [v10 setEffectOffset_];
  [v119 setCurvature_];
  [v119 setGlobal_];
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v122 = specialized ObjectCache.subscript.getter(&v246);
  [v119 setKeyColor_];

  [v119 setKeyHeight_];
  [v119 setKeyAngle_];
  [v119 setKeySpread_];
  [v119 setKeyAmount_];
  v123 = specialized ObjectCache.subscript.getter(&v244);
  [v119 setFillColor_];

  [v119 setFillHeight_];
  [v119 setFillAngle_];
  [v119 setFillSpread_];
  [v119 setFillAmount_];

  v124 = v120;
  LODWORD(v12) = 0;
  v11 = MEMORY[0x1E69E7CC0];
  LODWORD(v18) = v215;
  *&v21 = a7;
  LODWORD(v19) = v220;
LABEL_136:
  LODWORD(v36) = LODWORD(v21);
  [v10 setOpacity_];
  LODWORD(v178) = LODWORD(v19);
  [v10 setGain_];
  [v10 setAllowsHitTesting_];
  [v10 setSkipHitTesting_];

  if (v23 >> 62)
  {
    if (v23 >> 62 == 1)
    {
      v179 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v231 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v232 = v179;
      v180 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v233 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v234 = v180;
      v230 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      [v10 setCompositingFilter_];
      v181 = (v20 >> 3) & 2;
    }

    else
    {
      v182 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v231 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v232 = v182;
      v183 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v233 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v234 = v183;
      v230 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      [v10 setCompositingFilter_];
      if ((v20 & 0x10) != 0)
      {
        LOBYTE(v181) = 3;
      }

      else
      {
        LOBYTE(v181) = 1;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    }

    v185 = *(v11 + 2);
    v184 = *(v11 + 3);
    if (v185 >= v184 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v184 > 1), v185 + 1, 1, v11);
    }

    v239 = v232;
    v240 = v233;
    v241 = v234;
    v237 = v230;
    v238 = v231;
    LODWORD(v242) = LODWORD(v18);
    BYTE4(v242) = v181;
    _s7SwiftUI14GraphicsFilterOWOi14_(&v237);
    *(v11 + 2) = v185 + 1;
    v186 = &v11[128 * v185];
    v187 = v237;
    v188 = v238;
    v189 = v240;
    *(v186 + 4) = v239;
    *(v186 + 5) = v189;
    *(v186 + 2) = v187;
    *(v186 + 3) = v188;
    v190 = v241;
    v191 = v242;
    v192 = v243[0];
    *(v186 + 140) = *(v243 + 12);
    *(v186 + 7) = v191;
    *(v186 + 8) = v192;
    *(v186 + 6) = v190;
    if (*(v11 + 2))
    {
      goto LABEL_149;
    }

LABEL_140:
    [v10 setFilters_];

    return;
  }

  [v10 setCompositingFilter_];
  swift_unknownObjectRelease();
  if (!*(v11 + 2))
  {
    goto LABEL_140;
  }

LABEL_149:
  v193 = _CAFilterArrayCreate();
  v194 = *(v11 + 2);
  if (v194)
  {
    v195 = (v11 + 32);
    do
    {
      v196 = *v195;
      v197 = v195[1];
      v198 = v195[3];
      v232 = v195[2];
      v233 = v198;
      v230 = v196;
      v231 = v197;
      v199 = v195[4];
      v200 = v195[5];
      v201 = v195[6];
      *(v236 + 12) = *(v195 + 108);
      v235 = v200;
      v236[0] = v201;
      v234 = v199;
      v227 = v199;
      v228 = v200;
      *v229 = v201;
      *&v229[12] = *(v236 + 12);
      v223 = v196;
      v224 = v197;
      v225 = v232;
      v226 = v233;
      outlined init with copy of GraphicsFilter(&v230, &v237);
      v202 = GraphicsFilter.makeCAFilter()();
      v241 = v227;
      v242 = v228;
      v243[0] = *v229;
      *(v243 + 12) = *&v229[12];
      v237 = v223;
      v238 = v224;
      v239 = v225;
      v240 = v226;
      outlined destroy of GraphicsFilter(&v237);
      if (v202)
      {
        _CAFilterArrayAppend(v193, v202);
      }

      v195 += 8;
      --v194;
    }

    while (v194);
  }

  CoreViewSetFilters(0, v10, v193);
}

void addEffect #1 (_:layer:for:) in SDFLayer.makeSDFEffects(for:shapeFilter:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v10 = a1;
    v11 = a2;
    v12 = SDFLayer.makeSDFSubset(for:)(a3, a4);
    [v11 addSublayer_];
  }

  else
  {
    v13 = a2;
  }

  v14 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
  swift_beginAccess();
  v15 = *(a5 + v14);
  v16 = a2;
  v17 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + v14) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    *(a5 + v14) = v15;
  }

  v20 = *(v15 + 2);
  v19 = *(v15 + 3);
  if (v20 >= v19 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v15);
  }

  *(v15 + 2) = v20 + 1;
  v21 = &v15[32 * v20];
  *(v21 + 4) = v16;
  *(v21 + 5) = a1;
  *(v21 + 6) = a3;
  *(v21 + 7) = a4;
  *(a5 + v14) = v15;
  swift_endAccess();
}

objc_class *SDFLayer.makeSDFSubset(for:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfSubsets;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (*(v6 + v8 * 8 + 32) != a1 || *(v6 + v8 * 8 + 40) != a2)
    {
      ++v9;
      v8 += 5;
      if (v7 == v9)
      {
        goto LABEL_8;
      }
    }

    v13 = type metadata accessor for SDFPortalLayer();
    v19 = [objc_allocWithZone(v13) init];
    [v19 setAnchorPoint_];
    [v19 setNoAnimationDelegate];
    v20 = *(v2 + v5);
    if (v9 >= *(v20 + 16))
    {
      __break(1u);
    }

    else
    {
      a1 = *(v20 + v8 * 8 + 48);
      v24.receiver = v19;
      v24.super_class = v13;
      v13 = v19;
      objc_msgSendSuper2(&v24, sel_setSourceLayer_, a1);
      swift_beginAccess();
      v19 = *(v2 + v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v5) = v19;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }
    }

    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
    v19 = isUniquelyReferenced_nonNull_native;
    *(v2 + v5) = isUniquelyReferenced_nonNull_native;
LABEL_15:
    if (v9 >= v19[2])
    {
      __break(1u);
    }

    else
    {
      a1 = v2;
      MEMORY[0x193ABF170](isUniquelyReferenced_nonNull_native, v22);
      if (*((v19[v8 + 7] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v19[v8 + 7] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_17:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        *(a1 + v5) = v19;
        swift_endAccess();

        return v13;
      }
    }

    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_17;
  }

LABEL_8:
  v11 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  [v11 setAnchorPoint_];
  [v11 setNoAnimationDelegate];

  swift_beginAccess();
  v12 = *(v2 + v5);
  v13 = v11;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v5) = v12;
  if ((v14 & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
    *(v2 + v5) = v12;
  }

  v16 = *(v12 + 2);
  v15 = *(v12 + 3);
  if (v16 >= v15 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v12);
  }

  *(v12 + 2) = v16 + 1;
  v17 = MEMORY[0x1E69E7CC0];
  v18 = &v12[40 * v16];
  *(v18 + 4) = a1;
  *(v18 + 5) = a2;
  *(v18 + 6) = v13;
  *(v18 + 7) = v17;
  *(v18 + 8) = v17;
  *(v2 + v5) = v12;
  swift_endAccess();
  return v13;
}

id SDFPortalLayer.sourceContextId.getter()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v7, sel_sourceLayer);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 context];
  if (v3 || (v3 = [objc_opt_self() currentContext]) != 0)
  {
    v4 = v3;
    v5 = [v3 contextId];

    v2 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t initializeWithCopy for SDFLayer.SDFElement(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3 <= 0xF7)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = *(a2 + 24);
    v9 = result;
    outlined copy of SDFLayer.SDFElement.Contents(*a2, v6, v7, v8, v3);
    result = v9;
    *v9 = v5;
    *(v9 + 8) = v6;
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    *(v9 + 32) = v3;
  }

  else
  {
    v4 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v4;
    *(result + 32) = *(a2 + 32);
  }

  *(result + 33) = *(a2 + 33);
  return result;
}

uint64_t assignWithCopy for SDFLayer.SDFElement(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 32);
  if (*(a1 + 32) <= 0xF7u)
  {
    if (v4 <= 0xF7)
    {
      v13 = *a2;
      v14 = *(a2 + 1);
      v15 = *(a2 + 2);
      v16 = *(a2 + 3);
      outlined copy of SDFLayer.SDFElement.Contents(*a2, v14, v15, v16, v4);
      v17 = *a1;
      v18 = *(a1 + 8);
      v19 = *(a1 + 16);
      v20 = *(a1 + 24);
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 24) = v16;
      v21 = *(a1 + 32);
      *(a1 + 32) = v4;
      outlined consume of SDFLayer.SDFElement.Contents(v17, v18, v19, v20, v21);
    }

    else
    {
      outlined destroy of SDFLayer.SDFElement.Contents(a1);
      v7 = *(a2 + 32);
      v8 = a2[1];
      *a1 = *a2;
      *(a1 + 16) = v8;
      *(a1 + 32) = v7;
    }
  }

  else if (v4 <= 0xF7)
  {
    v9 = *a2;
    v10 = *(a2 + 1);
    v11 = *(a2 + 2);
    v12 = *(a2 + 3);
    outlined copy of SDFLayer.SDFElement.Contents(*a2, v10, v11, v12, v4);
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v11;
    *(a1 + 24) = v12;
    *(a1 + 32) = v4;
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(a1 + 32) = *(a2 + 32);
    *a1 = v5;
    *(a1 + 16) = v6;
  }

  *(a1 + 33) = *(a2 + 33);
  return a1;
}

uint64_t assignWithTake for SDFLayer.SDFElement(uint64_t result, uint64_t a2)
{
  v3 = *(result + 32);
  if (v3 <= 0xF7)
  {
    v5 = *(a2 + 32);
    if (v5 <= 0xF7)
    {
      v9 = *result;
      v8 = *(result + 8);
      v10 = *(result + 16);
      v11 = *(result + 24);
      v12 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v12;
      *(result + 32) = v5;
      v13 = result;
      outlined consume of SDFLayer.SDFElement.Contents(v9, v8, v10, v11, v3);
      result = v13;
    }

    else
    {
      v6 = result;
      outlined destroy of SDFLayer.SDFElement.Contents(result);
      result = v6;
      v7 = *(a2 + 16);
      *v6 = *a2;
      *(v6 + 16) = v7;
      *(v6 + 32) = *(a2 + 32);
    }
  }

  else
  {
    v4 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v4;
    *(result + 32) = *(a2 + 32);
  }

  *(result + 33) = *(a2 + 33);
  return result;
}

uint64_t getEnumTagSinglePayload for SDFLayer.SDFElement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SDFLayer.SDFElement(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeWithCopy for SDFLayer.SDFElement.Contents(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of SDFLayer.SDFElement.Contents(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for SDFLayer.SDFElement.Contents(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of SDFLayer.SDFElement.Contents(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  outlined consume of SDFLayer.SDFElement.Contents(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for SDFLayer.SDFElement.Contents(uint64_t a1, uint64_t a2)
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
  outlined consume of SDFLayer.SDFElement.Contents(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for SDFLayer.SDFElement.Contents(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F && *(a1 + 33))
  {
    return (*a1 + 31);
  }

  v3 = ((*(a1 + 32) >> 2) & 0x1E | (*(a1 + 32) >> 7)) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SDFLayer.SDFElement.Contents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 31;
    *(result + 8) = 0;
    if (a3 >= 0x1F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t destroy for SDFLayer.SDFSubset(uint64_t a1)
{
}

uint64_t initializeWithCopy for SDFLayer.SDFSubset(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = v3;

  return a1;
}

void *assignWithCopy for SDFLayer.SDFSubset(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = a2[2];
  v5 = a1[2];
  a1[2] = v4;
  v6 = v4;

  a1[3] = a2[3];

  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for SDFLayer.SDFSubset(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for SDFLayer.SDFSubset(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SDFLayer.SDFSubset(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for SDFLayer.SDFEffect(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t assignWithCopy for SDFLayer.SDFEffect(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for SDFLayer.SDFEffect(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = a2[1];
  return a1;
}

void specialized SDFLayer.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentLayer) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_backdropObserver) = 0;
  v1 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfStyle;
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + v1) = v2 | 0x8000000000000000;
  *(v0 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects) = v3;
  *(v0 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfSubsets) = v3;
  *(v0 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfElements) = v3;
  v4 = v0 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_distanceRange;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_renderer) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_ovalization) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_currentLuminance) = 2143289344;
  *(v2 + 32) = 0x80;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = v3;
  *(v2 + 48) = v3;
  *(v0 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentGroup) = 0;
  v5 = (v0 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_shapeBounds);
  *v5 = 0u;
  v5[1] = 0u;
  *(v0 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_needsUpdate) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void (*LazyState.wrappedValue.modify(void *a1, uint64_t a2))(void **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  LazyState.getValue(forReading:)(1, a2, v11);
  return LazyState.wrappedValue.modify;
}

void LazyState.wrappedValue.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *v2;
    v3 = v2[1];
    (*(v2[3] + 16))(v2[4], v2[5], v2[2]);
    v5 = *(v3 + *(v4 + 28));
    if (v5)
    {
      (*(*v5 + 128))(v2[4], 0);
    }

    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = *(v2[3] + 8);
    v9(v7, v8);
    v9(v6, v8);
  }

  else
  {
    v10 = *(v2[1] + *(*v2 + 28));
    if (v10)
    {
      (*(*v10 + 128))(v2[5], 0);
    }

    v7 = v2[4];
    v6 = v2[5];
    (*(v2[3] + 8))(v6, v2[2]);
  }

  free(v6);
  free(v7);

  free(v2);
}

uint64_t LazyState2.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LazyState();

  return LazyState.getValue(forReading:)(1, v2, a1);
}

uint64_t LazyState.wrappedValue.setter(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(*(a2 + 16) - 8) + 8);

  return v5(a1);
}

void (*LazyState2.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v7[5] = v11;
  v13 = type metadata accessor for LazyState();
  LazyState.getValue(forReading:)(1, v13, v12);
  return LazyState2.wrappedValue.modify;
}

void LazyState2.wrappedValue.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    specialized LazyState2.wrappedValue.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    specialized LazyState2.wrappedValue.setter(*(*a1 + 40));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t LazyState2.projectedValue.getter@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LazyState();

  return LazyState.projectedValue.getter(v2, a1);
}

uint64_t LazyState<A>.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  return LazyState.init(wrappedValue:)(a3, v8, a4);
}

uint64_t specialized LazyState2.wrappedValue.setter(uint64_t a1)
{
  result = type metadata accessor for LazyState();
  v4 = *(v1 + *(result + 28));
  if (v4)
  {
    return (*(*v4 + 128))(a1, 0);
  }

  return result;
}

_OWORD *initializeWithTake for LazyState(_OWORD *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x10uLL)
  {
    v4 = 16;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 < 2)
  {
    goto LABEL_18;
  }

  if (v4 <= 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 4;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *a2;
  }

  else if (v7 == 2)
  {
    v8 = *a2;
  }

  else if (v7 == 3)
  {
    v8 = *a2 | (a2[2] << 16);
  }

  else
  {
    v8 = *a2;
  }

  v9 = (v8 | (v6 << (8 * v4))) + 2;
  v5 = v8 + 2;
  if (v4 < 4)
  {
    v5 = v9;
  }

LABEL_18:
  if (v5 == 1)
  {
    v10 = result;
    (*(*(*(a3 + 16) - 8) + 32))(result, a2);
    result = v10;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    *result = *a2;
  }

  *(result + v4) = v11;
  *((result + v4 + 8) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v4 + 8] & 0xFFFFFFFFFFFFFFF8);
  return result;
}

unsigned __int8 *assignWithTake for LazyState(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 != a2)
  {
    if (*(v6 + 64) <= 0x10uLL)
    {
      v7 = 16;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (a1[2] << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 2;
      v8 = v11 + 2;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
    }

    v13 = *(a2 + v7);
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v16 = *a2;
        }

        else if (v15 == 3)
        {
          v16 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v16 = *a2;
        }

LABEL_34:
        v17 = (v16 | (v14 << (8 * v7))) + 2;
        v13 = v16 + 2;
        if (v7 < 4)
        {
          v13 = v17;
        }

        goto LABEL_36;
      }

      if (v15)
      {
        v16 = *a2;
        goto LABEL_34;
      }
    }

LABEL_36:
    if (v13 == 1)
    {
      (*(v6 + 32))(a1, a2, v5);
      v18 = 1;
    }

    else
    {
      v18 = 0;
      *a1 = *a2;
    }

    a1[v7] = v18;
  }

  v19 = *(v6 + 64);
  if (v19 <= 0x10)
  {
    v19 = 16;
  }

  *(&a1[v19 + 8] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v19 + 8) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for LazyState(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 0x10)
  {
    v3 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_23;
  }

  v4 = (v3 & 0xFFFFFFFFFFFFFFF8) + 16;
  v5 = v4 & 0xFFFFFFF8;
  v6 = a2 - 2147483645;
  if ((v4 & 0xFFFFFFF8) != 0)
  {
    v6 = 2;
  }

  if (v6 >= 0x10000)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  if (v6 < 0x100)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == 4)
  {
    v9 = *(a1 + v4);
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_23:
    v12 = *((a1 + v3 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    if ((v12 + 1) >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  if (v8 != 2)
  {
    v9 = *(a1 + v4);
    if (v9)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v9 = *(a1 + v4);
  if (!v9)
  {
    goto LABEL_23;
  }

LABEL_19:
  v11 = v9 - 1;
  if (v5)
  {
    v11 = 0;
    LODWORD(v5) = *a1;
  }

  return (v5 | v11) + 0x7FFFFFFF;
}

unsigned int *storeEnumTagSinglePayload for LazyState(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0x7FFFFFFF)
  {
    v8 = 0;
  }

  else
  {
    v6 = a3 - 2147483645;
    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v6 = 2;
    }

    if (v6 >= 0x10000)
    {
      v7 = 4;
    }

    else
    {
      v7 = 2;
    }

    if (v6 < 0x100)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }
  }

  if (a2 > 0x7FFFFFFE)
  {
    if ((v4 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = a2 - 2147483646;
    }

    else
    {
      v9 = 1;
    }

    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v10 = a2 - 0x7FFFFFFF;
      v11 = result;
      bzero(result, v5);
      result = v11;
      *v11 = v10;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(result + v5) = v9;
      }

      else
      {
        *(result + v5) = v9;
      }
    }

    else if (v8)
    {
      *(result + v5) = v9;
    }
  }

  else
  {
    if (v8 <= 1)
    {
      if (v8)
      {
        *(result + v5) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_29:
        *((result + v4 + 8) & 0xFFFFFFFFFFFFFFF8) = a2;
        return result;
      }

LABEL_28:
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

    if (v8 == 2)
    {
      *(result + v5) = 0;
      goto LABEL_28;
    }

    *(result + v5) = 0;
    if (a2)
    {
      goto LABEL_29;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for LazyState.Storage(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 0x10uLL)
  {
    v5 = 16;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
LABEL_27:

    return v3;
  }

  v9 = a2[v5];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v5 <= 3)
    {
      v11 = v5;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v5))) + 2;
    v9 = v12 + 2;
    if (v5 < 4)
    {
      v9 = v13;
    }
  }

LABEL_24:
  if (v9 != 1)
  {
    v14 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v14;
    *(v3 + v5) = 0;
    goto LABEL_27;
  }

  (*(v4 + 16))(a1);
  *(v3 + v5) = 1;
  return v3;
}

unsigned __int8 *assignWithCopy for LazyState.Storage(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 0x10uLL)
    {
      v7 = 16;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (a1[2] << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 2;
      v8 = v11 + 2;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 < 2)
    {
      goto LABEL_36;
    }

    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
LABEL_36:
        if (v13 == 1)
        {
          (*(v6 + 16))(a1, a2, v5);
          a1[v7] = 1;
        }

        else
        {
          v18 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v18;
          a1[v7] = 0;
        }

        return a1;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << (8 * v7))) + 2;
    v13 = v16 + 2;
    if (v7 < 4)
    {
      v13 = v17;
    }

    goto LABEL_36;
  }

  return a1;
}

_OWORD *initializeWithTake for LazyState.Storage(_OWORD *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x10uLL)
  {
    v3 = 16;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 < 2)
  {
    goto LABEL_18;
  }

  if (v3 <= 3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 4;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *a2;
  }

  else if (v6 == 2)
  {
    v7 = *a2;
  }

  else if (v6 == 3)
  {
    v7 = *a2 | (a2[2] << 16);
  }

  else
  {
    v7 = *a2;
  }

  v8 = (v7 | (v5 << (8 * v3))) + 2;
  v4 = v7 + 2;
  if (v3 < 4)
  {
    v4 = v8;
  }

LABEL_18:
  if (v4 == 1)
  {
    v9 = result;
    (*(*(*(a3 + 16) - 8) + 32))();
    result = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *result = *a2;
  }

  *(result + v3) = v10;
  return result;
}

uint64_t getEnumTagSinglePayload for LazyState.Storage(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void storeEnumTagSinglePayload for LazyState.Storage(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTag for LazyState.Storage(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 16;
  if (*(v2 + 64) > 0x10uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    LODWORD(v4) = v7 + 2;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void destructiveInjectEnumTag for LazyState.Storage(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x10uLL)
  {
    v3 = 16;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t type metadata completion function for LazyState2()
{
  result = type metadata accessor for LazyState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for LazyState(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 + 16) - 8);
  if (*(v5 + 64) <= 0x10uLL)
  {
    v6 = 16;
  }

  else
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  v7 = *(v5 + 80);
  if ((v7 & 0x1000F8) != 0 || (v6 & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v9 = *a2;
    *v4 = *a2;
    v4 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
    goto LABEL_28;
  }

  v10 = *(a2 + v6);
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v6 <= 3)
    {
      v12 = v6;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = *a2;
      }

      else if (v12 == 3)
      {
        v13 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v13 = *a2;
      }

LABEL_22:
      v14 = (v13 | (v11 << (8 * v6))) + 2;
      v10 = v13 + 2;
      if (v6 < 4)
      {
        v10 = v14;
      }

      goto LABEL_24;
    }

    if (v12)
    {
      v13 = *a2;
      goto LABEL_22;
    }
  }

LABEL_24:
  if (v10 == 1)
  {
    (*(v5 + 16))(a1, a2);
    v15 = 1;
  }

  else
  {
    v16 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v16;

    v15 = 0;
  }

  *(v4 + v6) = v15;
  *((v4 + v6 + 8) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v6 + 8) & 0xFFFFFFFFFFFFFFF8);
LABEL_28:

  return v4;
}

unsigned __int8 *HoverEffectContext.appendValue(_:source:)(unsigned __int8 *result)
{
  v2 = *result;
  if (v2 != 2 && (v2 & 1) != 0 && (*(v1 + 32) & 1) == 0)
  {
    *(v1 + 32) = 1;
  }

  return result;
}

SwiftUI::HoverEffectContext::State __swiftcall HoverEffectContext.State.init()()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  return result;
}

Swift::Void __swiftcall HoverEffectContext.State.appendDisabled(_:)(Swift::Bool a1)
{
  if (a1 && (*v1 & 1) == 0)
  {
    *v1 = 1;
  }
}

BOOL static HoverEffectContext.Source.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      return v2 == v3;
    }

    return 0;
  }

  return v4 == 2 && v3 == 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance HoverEffectContext.Source(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      return v2 == v3;
    }

    return 0;
  }

  return v4 == 2 && v3 == 0;
}

void HoverEffectContext.source.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t HoverEffectContext.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

__n128 HoverEffectContext.init(source:implicitAccessibilityID:isModifyingImageView:shouldApplySystemEffectAsBackground:inheritedState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *a5;
  *a6 = *a1;
  *(a6 + 8) = v6;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 25) = a4;
  *(a6 + 32) = v7;
  result = *(a5 + 8);
  *(a6 + 40) = result;
  return result;
}

BOOL static HoverEffectContext.Value.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance HoverEffectContext.Value(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

SwiftUI::HoverEffectContext::Properties __swiftcall HoverEffectContext.Properties.init()()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t HoverEffectContext.Properties.sceneIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t HoverEffectContext.State.leafContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

Swift::Void __swiftcall HoverEffectContext.State.appendSceneIdentifier(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;

  *(v1 + 8) = countAndFlagsBits;
  *(v1 + 16) = object;
}

Swift::Void __swiftcall HoverEffectContext.appendDisabled(_:)(Swift::Bool a1)
{
  if (a1 && (*(v1 + 32) & 1) == 0)
  {
    *(v1 + 32) = 1;
  }
}

Swift::Void __swiftcall HoverEffectContext.appendSceneIdentifier(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;

  *(v1 + 40) = countAndFlagsBits;
  *(v1 + 48) = object;
}

uint64_t assignWithTake for HoverEffectContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for HoverEffectContext.Source(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for HoverEffectContext.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for HoverEffectContext.Source(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for HoverEffectContext.Source(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t ResolvedStyledText.TextLayoutManager.__allocating_init(storage:layoutProperties:layoutMargins:stylePadding:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:scaleFactorOverride:links:)(void *a1, __int128 *a2, uint64_t a3, char *a4, char a5, __int16 *a6, uint64_t a7, uint64_t *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14)
{
  v15 = specialized ResolvedStyledText.TextLayoutManager.__allocating_init(storage:layoutProperties:layoutMargins:stylePadding:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:scaleFactorOverride:links:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);

  return v15;
}

void closure #1 in ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:)(int a1, Swift::Int at, double a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a6)
  {
    v9.value = NSAttributedString.kitFont(at:)(at).value;
    if (v9.value)
    {
      value = v9.value;
      if (a3 == 1.0)
      {
        v11 = v9.value;
      }

      else
      {
        v12 = CTFontCopyFontDescriptor(v9.value);
        v13 = CTFontDescriptorRef.scaled(by:toMultipleOf:maintainedVisualWeight:)(0, 1, 0, 1, a3);

        v14 = CTFontCreateWithFontDescriptor(v13, 0.0, 0);
        v11 = v14;
      }

      v15 = v11;
      if (one-time initialization token for kitFont != -1)
      {
        swift_once();
      }

      [a7 addAttribute:static NSAttributedStringKey.kitFont value:? range:?];
    }
  }
}

void ResolvedStyledText.TextLayoutManager.drawingScale(size:)(double a1, double a2)
{
  swift_beginAccess();
  if (*(v2 + 208) == 1)
  {
    swift_beginAccess();
    if (*(v2 + 48) != 1.0)
    {
      if (*(v2 + 97))
      {
        v5 = a1;
      }

      else
      {
        v5 = a2;
      }

      if (*(v2 + 97))
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      specialized ResolvedStyledText.TextLayoutManager.metrics(in:layoutMargins:)(*(v2 + 97) ^ 1, v7, v6, v5);
    }
  }
}

__n128 ResolvedStyledText.TextLayoutManager.metrics(in:layoutMargins:)@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  swift_beginAccess();
  if (*(v3 + 97))
  {
    v7 = a2;
  }

  else
  {
    v7 = a3;
  }

  if (*(v3 + 97))
  {
    v8 = a3;
  }

  else
  {
    v8 = a2;
  }

  specialized ResolvedStyledText.TextLayoutManager.metrics(in:layoutMargins:)(*(v3 + 97) ^ 1, v11, v8, v7);
  v9 = v11[3];
  *(a1 + 32) = v11[2];
  *(a1 + 48) = v9;
  *(a1 + 64) = v12;
  result = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = result;
  return result;
}

void Text.Layout.truncateLast(_:width:)()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *v0 + 48 * v1;
    v4 = *(v2 - 16);
    v3 = *(v2 - 8);
    v5 = *v2;
    v6 = *(v2 + 8);
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    v11 = v4;
    v12 = v3;
    LOBYTE(v13) = v5;
    v14 = v6;
    v15 = v7;
    v16 = v8;
    outlined copy of Text.Layout.Line.Line(v4);
    v9 = Text.Layout.Line.lastRunAttributes.getter();
    if (v9)
    {
      v10 = v9;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for NSAttributedStringKey(0);
        lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
        static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
      }

      outlined consume of Text.Layout.Line.Line(v4);
    }

    else
    {
      outlined consume of Text.Layout.Line.Line(v4);
    }
  }
}

CGSize __swiftcall ResolvedStyledText.TextLayoutManager.size(in:)(CGSize in)
{
  height = in.height;
  width = in.width;
  swift_beginAccess();
  if (*(v1 + 97))
  {
    v4 = width;
  }

  else
  {
    v4 = height;
  }

  if (*(v1 + 97))
  {
    v5 = height;
  }

  else
  {
    v5 = width;
  }

  specialized ResolvedStyledText.TextLayoutManager.metrics(in:layoutMargins:)(*(v1 + 97) ^ 1, v9, v5, v4);
  v6 = *v9;
  v7 = *&v9[1];
  result.height = v7;
  result.width = v6;
  return result;
}

CGSize __swiftcall ResolvedStyledText.TextLayoutManager.frameSize(in:)(CGSize in)
{
  height = in.height;
  width = in.width;
  swift_beginAccess();
  v4 = *(v1 + 416);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 56);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      if (v7 == width && v8 == height)
      {
        break;
      }

      v6 += 11;
      if (!--v5)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    swift_beginAccess();
    if (*(v1 + 97))
    {
      v10 = width;
    }

    else
    {
      v10 = height;
    }

    if (*(v1 + 97))
    {
      v11 = height;
    }

    else
    {
      v11 = width;
    }

    specialized ResolvedStyledText.TextLayoutManager.metrics(in:layoutMargins:)(*(v1 + 97) ^ 1, v13, v11, v10);
    v7 = *v13;
    v8 = *&v13[1];
  }

  result.height = v8;
  result.width = v7;
  return result;
}

BOOL closure #3 in ResolvedStyledText.TextLayoutManager.drawImplementation(in:with:applyingMarginOffsets:containsResolvable:context:renderer:)(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = [a1 state];
  if (v8 == 3)
  {
    [a1 layoutFragmentFrame];
    [a1 drawAtPoint:a2 inContext:{v9 + a3, v10 + a4}];
  }

  return v8 == 3;
}

uint64_t ResolvedStyledText.TextLayoutManager.linkURL(at:in:)@<X0>(_BYTE *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v7 = *(v5 + 216);
  if (!v7)
  {
    v13 = type metadata accessor for URL();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }

  v12 = v7;
  ResolvedStyledText.TextLayoutManager.prepareLayoutManager(in:with:applyingMarginOffsets:)(0, v39, a4, a5);
  v45 = v39[6];
  v46 = v39[7];
  v41[2] = v39[2];
  v42 = v39[3];
  v47 = v40;
  v43 = v39[4];
  v44 = v39[5];
  v41[0] = v39[0];
  v41[1] = v39[1];
  if (_sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOg(v41) == 1)
  {

LABEL_27:
    v36 = type metadata accessor for URL();
    return (*(*(v36 - 8) + 56))(a1, 1, 1, v36);
  }

  v16 = *(v41 + 1);
  v17 = *v41 + 0.0;
  swift_beginAccess();
  if (*(v5 + 97) == 1)
  {
    CGAffineTransformMakeTranslation(&v38, a4, 0.0);
    CGAffineTransformRotate(&v37, &v38, 1.57079633);
    v38 = v37;
    CGAffineTransformInvert(&v37, &v38);
    v19 = *&v37.a;
    v18 = *&v37.c;
    v20 = *&v37.tx;
  }

  else
  {
    v18 = xmmword_18DDAB500;
    v19 = xmmword_18DDAA020;
    v20 = 0uLL;
  }

  v49.y = a3;
  v49.x = a2;
  *&v38.a = v19;
  *&v38.c = v18;
  *&v38.tx = v20;
  v21 = CGPointApplyAffineTransform(v49, &v38);
  v22 = *(&v42 + 1);
  swift_beginAccess();
  v23 = ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:)(v7, v22);
  swift_endAccess();
  outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(v39);
  v24 = [v23 textSelectionNavigation];
  v25 = [v23 documentRange];
  v26 = [v25 location];

  v27 = [v24 textSelectionForSelectionGranularity:0 enclosingPoint:v26 inContainerAtLocation:{v21.x - v17, v21.y - v16}];
  swift_unknownObjectRelease();
  if (!v27)
  {
LABEL_22:

    goto LABEL_27;
  }

  v28 = [v27 textRanges];
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextRange);
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v29 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_13;
    }

LABEL_26:

    goto LABEL_27;
  }

  result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x193AC03C0](0, v29);
    goto LABEL_16;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v29 + 32);
LABEL_16:
    v31 = v30;

    v32 = [v31 location];

    if (v32)
    {
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        v34 = v33;
        v35 = [v33 characterIndex];
        if (v35 < [v12 length] && objc_msgSend(v12, sel_attribute_atIndex_effectiveRange_, *MEMORY[0x1E69DB670], objc_msgSend(v34, sel_characterIndex), 0))
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          outlined init with take of Any(&v37, &v38);
          outlined init with copy of Any(&v38, &v37);
          URL.init(urlValue:)(&v37, a1);

          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(&v38);
        }

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      goto LABEL_27;
    }

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void ResolvedStyledText.TextLayoutManager.__ivar_destroyer()
{
  outlined consume of ResolvedTextSuffix(*(v0 + 352), *(v0 + 360), *(v0 + 368), *(v0 + 376), *(v0 + 384), *(v0 + 392));

  v1 = *(v0 + 496);
  v2 = *(v0 + 520);

  v3 = *(v0 + 576);
}

uint64_t vtable thunk for ResolvedStyledText.__allocating_init(storage:layoutProperties:layoutMargins:stylePadding:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:scaleFactorOverride:links:) dispatching to ResolvedStyledText.TextLayoutManager.__allocating_init(storage:layoutProperties:layoutMargins:stylePadding:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:scaleFactorOverride:links:)(void *a1, __int128 *a2, uint64_t a3, __int16 *a4, char a5, __int16 *a6, uint64_t a7, uint64_t *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14)
{
  v18 = *a4;
  v17 = *a6;
  v15 = specialized ResolvedStyledText.TextLayoutManager.__allocating_init(storage:layoutProperties:layoutMargins:stylePadding:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:scaleFactorOverride:links:)(a1, a2, a3, &v18, a5, &v17, a7, a8, a9, a10, a11, a12, a13, a14);

  return v15;
}

void destroy for ResolvedStyledText.TextLayoutManager.LayoutManager(uint64_t a1)
{
  v2 = *(a1 + 24);
}

uint64_t initializeWithCopy for ResolvedStyledText.TextLayoutManager.LayoutManager(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  return a1;
}

uint64_t assignWithCopy for ResolvedStyledText.TextLayoutManager.LayoutManager(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  *(a1 + 16) = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a1 + 24);
  *(a1 + 24) = v10;
  v12 = v10;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v13 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v13;
  return a1;
}

uint64_t assignWithTake for ResolvedStyledText.TextLayoutManager.LayoutManager(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t initializeWithCopy for ResolvedStyledText.TextLayoutManager.Cache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithCopy for ResolvedStyledText.TextLayoutManager.Cache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  return a1;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for ResolvedStyledText.TextLayoutManager.Cache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolvedStyledText.TextLayoutManager.Cache(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t storeEnumTagSinglePayload for ResolvedStyledText.TextLayoutManager.Cache(uint64_t result, int a2, int a3)
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
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double _sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 1;
  return result;
}

void *outlined consume of Text.Layout.Line?(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of Text.Layout.Line.Line(a1);
  }

  return a1;
}

uint64_t specialized ResolvedStyledText.TextLayoutManager.__allocating_init(storage:layoutProperties:layoutMargins:stylePadding:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:scaleFactorOverride:links:)(void *a1, __int128 *a2, uint64_t a3, char *a4, char a5, __int16 *a6, uint64_t a7, uint64_t *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14)
{
  type metadata accessor for ResolvedStyledText.TextLayoutManager();
  v24 = swift_allocObject();
  v25 = a2[7];
  v94 = a2[6];
  v95 = v25;
  v96 = a2[8];
  v97 = *(a2 + 144);
  v26 = a2[3];
  v90 = a2[2];
  v91 = v26;
  v27 = a2[5];
  v92 = a2[4];
  v93 = v27;
  v28 = a2[1];
  v88 = *a2;
  v89 = v28;
  v65 = a4[1];
  v66 = *a4;
  v74 = *a6;
  v75 = *a7;
  v29 = *(a7 + 16);
  v71 = *(a7 + 8);
  v72 = *(a7 + 24);
  v31 = *(a7 + 32);
  v30 = *(a7 + 40);
  v32 = *(a7 + 48);
  v33 = *a8;
  *(v24 + 416) = MEMORY[0x1E69E7CC0];
  *(v24 + 424) = 0u;
  *(v24 + 440) = 0u;
  *(v24 + 456) = 0u;
  *(v24 + 472) = 0u;
  *(v24 + 488) = 512;
  if ((BYTE8(v88) & 1) != 0 || v88 != 1)
  {
    if (a1)
    {
      a1 = NSAttributedString.replacingLineBreakModes(_:)(0);
    }
  }

  else
  {
    v34 = a1;
  }

  v35 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  v36 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
  [v35 setDelegate_];
  [v35 setUsesFontLeading_];
  v64 = a1;
  v69 = v35;
  ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v69, a1, v86);
  v37 = v86[3];
  *(v24 + 528) = v86[2];
  *(v24 + 544) = v37;
  *(v24 + 560) = v86[4];
  v38 = v86[1];
  *(v24 + 496) = v86[0];
  *(v24 + 512) = v38;
  *(v24 + 576) = v36;
  *(v24 + 352) = v75;
  *(v24 + 360) = v71;
  *(v24 + 368) = v29;
  *(v24 + 376) = v72;
  *(v24 + 384) = v31;
  *(v24 + 392) = v30;
  *(v24 + 400) = v32;
  *(v24 + 408) = v33;
  *(v24 + 200) = 0;
  *(v24 + 208) = 1;
  v87 = 1;
  *(v24 + 280) = 0u;
  *(v24 + 296) = 0u;
  *(v24 + 312) = 0u;
  *(v24 + 328) = 0u;
  *(v24 + 344) = 1;
  *(v24 + 216) = a1;
  *(v24 + 224) = a9;
  *(v24 + 232) = a10;
  *(v24 + 240) = a11;
  *(v24 + 248) = a12;
  *(v24 + 256) = v66;
  *(v24 + 257) = v65;
  *(v24 + 258) = a5 & 1;
  *(v24 + 260) = v74;
  *(v24 + 264) = a13;
  *(v24 + 272) = a14;
  v39 = v89;
  *(v24 + 16) = v88;
  *(v24 + 32) = v39;
  v40 = v93;
  *(v24 + 80) = v92;
  *(v24 + 96) = v40;
  v41 = v91;
  *(v24 + 48) = v90;
  *(v24 + 64) = v41;
  *(v24 + 160) = v97;
  v42 = v96;
  *(v24 + 128) = v95;
  *(v24 + 144) = v42;
  *(v24 + 112) = v94;
  v73 = v30;
  v70 = v36;
  if (*(a3 + 32))
  {
    v43 = v33;
    if (a1)
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v85 = 1;
      v79 = BYTE8(v94);
      v80 = v95;
      v77[6] = v94;
      v77[7] = v95;
      v77[8] = v96;
      v78 = v97;
      v77[2] = v90;
      v77[3] = v91;
      v77[4] = v92;
      v77[5] = v93;
      v77[0] = v88;
      v77[1] = v89;
      outlined init with copy of TextLayoutProperties(&v88, v76);
      v44 = v64;
      v45 = v36;
      v46 = v72;
      outlined copy of ResolvedTextSuffix(v75, v71, v29, v72, v31, v73);

      outlined init with copy of TextLayoutProperties(&v88, v76);
      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v44, &v81, v77);
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;

      outlined destroy of TextLayoutProperties(&v88);
      v55 = v84;
      *(v24 + 312) = v83;
      *(v24 + 328) = v55;
      *(v24 + 344) = v85;
      v56 = v82;
      v57 = v71;
      *(v24 + 280) = v81;
      *(v24 + 296) = v56;
      v33 = v43;
      *(v24 + 168) = v48;
      *(v24 + 176) = v50;
      *(v24 + 184) = v52;
      *(v24 + 192) = v54;
    }

    else
    {
      *(v24 + 344) = 1;
      *(v24 + 168) = 0u;
      *(v24 + 184) = 0u;
      v60 = v36;
      v57 = v71;
      v46 = v72;
      outlined copy of ResolvedTextSuffix(v75, v71, v29, v72, v31, v73);
    }
  }

  else
  {
    *(v24 + 344) = 1;
    v58 = *(a3 + 16);
    *(v24 + 168) = *a3;
    *(v24 + 184) = v58;
    v59 = v36;
    outlined copy of ResolvedTextSuffix(v75, v71, v29, v72, v31, v30);

    v46 = v72;
    v57 = v71;
  }

  swift_beginAccess();
  v61 = _TextContainer(*(v24 + 97));
  [v61 setLineFragmentPadding_];
  [v69 setTextContainer_];
  if ((v74 & 0x40) != 0)
  {

    outlined consume of ResolvedTextSuffix(v75, v57, v29, v46, v31, v73);
  }

  else
  {

    outlined consume of ResolvedTextSuffix(v75, v57, v29, v46, v31, v73);
    outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
    if ((v73 & 0x8000000000000000) == 0 || (v74 & 0x80) != 0)
    {
    }

    else
    {
      v62 = *(v33 + 16);

      if (!v62)
      {
        goto LABEL_19;
      }
    }
  }

  _NSTextLayoutManagerRequiresCTLine(v69);
LABEL_19:

  return v24;
}

uint64_t initializeWithCopy for ResolvedStyledText.TextLayoutManager.Metrics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t assignWithCopy for ResolvedStyledText.TextLayoutManager.Metrics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v4;
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t assignWithTake for ResolvedStyledText.TextLayoutManager.Metrics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t storeEnumTagSinglePayload for ResolvedStyledText.TextLayoutManager.Metrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 96) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ResolvedStyledText.TextLayoutManager.Cache.Entry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 82))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 81);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ResolvedStyledText.TextLayoutManager.Cache.Entry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 81) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResolvedStyledText.TextLayoutManager.Size(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for ResolvedStyledText.TextLayoutManager.Size(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedStyledText.TextLayoutManager.Metrics.Flags and conformance ResolvedStyledText.TextLayoutManager.Metrics.Flags()
{
  result = lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Metrics.Flags and conformance ResolvedStyledText.TextLayoutManager.Metrics.Flags;
  if (!lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Metrics.Flags and conformance ResolvedStyledText.TextLayoutManager.Metrics.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Metrics.Flags and conformance ResolvedStyledText.TextLayoutManager.Metrics.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Metrics.Flags and conformance ResolvedStyledText.TextLayoutManager.Metrics.Flags;
  if (!lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Metrics.Flags and conformance ResolvedStyledText.TextLayoutManager.Metrics.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Metrics.Flags and conformance ResolvedStyledText.TextLayoutManager.Metrics.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Metrics.Flags and conformance ResolvedStyledText.TextLayoutManager.Metrics.Flags;
  if (!lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Metrics.Flags and conformance ResolvedStyledText.TextLayoutManager.Metrics.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Metrics.Flags and conformance ResolvedStyledText.TextLayoutManager.Metrics.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Metrics.Flags and conformance ResolvedStyledText.TextLayoutManager.Metrics.Flags;
  if (!lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Metrics.Flags and conformance ResolvedStyledText.TextLayoutManager.Metrics.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Metrics.Flags and conformance ResolvedStyledText.TextLayoutManager.Metrics.Flags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedStyledText.TextLayoutManager.Size.Flags and conformance ResolvedStyledText.TextLayoutManager.Size.Flags()
{
  result = lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Size.Flags and conformance ResolvedStyledText.TextLayoutManager.Size.Flags;
  if (!lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Size.Flags and conformance ResolvedStyledText.TextLayoutManager.Size.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Size.Flags and conformance ResolvedStyledText.TextLayoutManager.Size.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Size.Flags and conformance ResolvedStyledText.TextLayoutManager.Size.Flags;
  if (!lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Size.Flags and conformance ResolvedStyledText.TextLayoutManager.Size.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Size.Flags and conformance ResolvedStyledText.TextLayoutManager.Size.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Size.Flags and conformance ResolvedStyledText.TextLayoutManager.Size.Flags;
  if (!lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Size.Flags and conformance ResolvedStyledText.TextLayoutManager.Size.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Size.Flags and conformance ResolvedStyledText.TextLayoutManager.Size.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Size.Flags and conformance ResolvedStyledText.TextLayoutManager.Size.Flags;
  if (!lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Size.Flags and conformance ResolvedStyledText.TextLayoutManager.Size.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedStyledText.TextLayoutManager.Size.Flags and conformance ResolvedStyledText.TextLayoutManager.Size.Flags);
  }

  return result;
}

id ResolvedTextSuffix.accessibilityLine.getter()
{
  if (*(v0 + 40) >> 62 == 1)
  {
    v1 = *v0;
    if (*(v0 + 16))
    {
      outlined copy of Text.Layout.Line.Line(*v0);

      v2 = [v1 attributedString];

      return v2;
    }

    outlined copy of Text.Layout.Line.Line(*v0);
  }

  return 0;
}

id ResolvedTextSuffix.line.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  if (v3 < 0)
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    LODWORD(v3) = 0;
    v8 = 255;
  }

  else
  {
    v5 = *(v1 + 24);
    v4 = *(v1 + 32);
    v6 = *(v1 + 8);
    v7 = *v1;
    v8 = *(v1 + 16) & 1;
    result = outlined copy of Text.Layout.Line.Line(v7);
  }

  *a1 = v7;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  return result;
}

uint64_t Text.Suffix.storage.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of Text.Suffix.Storage(v2, v3, v4);
}

__n128 Text.Suffix.storage.setter(uint64_t a1)
{
  outlined consume of Text.Suffix.Storage(*v1, v1[1], v1[2]);
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v4;
  return result;
}

double static Text.Suffix.automatic.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = -0.0;
  *(a1 + 16) = xmmword_18DD85510;
  return result;
}

double static Text.Suffix.none.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_18DD85500;
  a1[1] = xmmword_18DD85510;
  return result;
}

uint64_t static Text.Suffix.truncated(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3 & 1;
  a5[3] = a4;
  outlined copy of Text.Storage(a1, a2, a3 & 1);
}

uint64_t static Text.Suffix.alwaysVisible(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3 & 1 | 0x4000000000000000;
  a5[3] = a4;
  outlined copy of Text.Storage(a1, a2, a3 & 1);
}

uint64_t Text.Suffix.text.getter()
{
  v1 = v0[2];
  if (v1 < 0)
  {
    return 0;
  }

  v2 = *v0;
  outlined copy of Text.Suffix.Storage(*v0, v0[1], v1);
  return v2;
}

double Text.Suffix.resolve(text:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16) >> 62;
  if (!v5)
  {
    if (!a1)
    {
LABEL_16:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      result = -0.0;
      *(a2 + 40) = xmmword_18DD85510;
      return result;
    }

    v28 = 0;
    v29 = 1;
    v30 = 0;
    v31 = 1;
    v17 = *(*a1 + 232);

    v18.n128_u64[0] = v17(&v28);
    v20.n128_f64[0] = v19;
    (*(*a1 + 304))(&v28, 1, 0.0, 0.0, v18, v20, v18.n128_f64[0], v19);
    if (!v28)
    {
LABEL_15:

      goto LABEL_16;
    }

    if (*(v28 + 16) == 1)
    {
      v21 = *(v28 + 32);
      v22 = *(v28 + 40);
      v23 = *(v28 + 48);
      v24 = *(v28 + 56);
      v25 = *(v28 + 64);
      v26 = *(v28 + 72);
      outlined copy of Text.Layout.Line.Line(v21);

      v16 = a1[33];
      *a2 = v21;
      *(a2 + 8) = v22;
      *(a2 + 16) = v23;
      *(a2 + 24) = v24;
      *(a2 + 32) = v25;
      *(a2 + 40) = v26;
      goto LABEL_11;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (v5 != 1 || !a1)
  {
    goto LABEL_16;
  }

  v28 = 0;
  v29 = 1;
  v30 = 0;
  v31 = 1;
  v6 = *(*a1 + 232);

  v7.n128_u64[0] = v6(&v28);
  v9.n128_f64[0] = v8;
  (*(*a1 + 304))(&v28, 1, 0.0, 0.0, v7, v9, v7.n128_f64[0], v8);
  if (!v28)
  {
    goto LABEL_15;
  }

  if (*(v28 + 16) != 1)
  {
    goto LABEL_14;
  }

  v10 = *(v28 + 32);
  v11 = *(v28 + 40);
  v12 = *(v28 + 48);
  v13 = *(v28 + 56);
  v14 = *(v28 + 64);
  v15 = *(v28 + 72);
  outlined copy of Text.Layout.Line.Line(v10);

  v16 = a1[33];
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15 | 0x4000000000000000;
LABEL_11:
  *(a2 + 48) = v16;

  return result;
}

uint64_t static Text.Suffix.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v13 = *a1;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v10.i64[0] = v5;
  v10.i64[1] = v6;
  v11 = v7;
  v12 = v8;
  outlined copy of Text.Suffix.Storage(v13, v2, v3);
  outlined copy of Text.Suffix.Storage(v5, v6, v7);
  LOBYTE(v5) = specialized static Text.Suffix.Storage.== infix(_:_:)(&v13, &v10);
  outlined consume of Text.Suffix.Storage(v10.i64[0], v10.i64[1], v11);
  outlined consume of Text.Suffix.Storage(v13, v14, v15);
  return v5 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Text.Suffix(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v14 = *a1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  outlined copy of Text.Suffix.Storage(v14, v2, v3);
  outlined copy of Text.Suffix.Storage(v5, v6, v7);
  LOBYTE(v5) = static Text.Suffix.Storage.== infix(_:_:)(&v14, &v10);
  outlined consume of Text.Suffix.Storage(v10, v11, v12);
  outlined consume of Text.Suffix.Storage(v14, v15, v16);
  return v5 & 1;
}

uint64_t View.textSuffix(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v10 = *a1;
  v2 = v10;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  View.modifier<A>(_:)(&v10, a2, &type metadata for TextSuffixModifier);
  v6 = v10;
  v7 = v11;
  v8 = v12;
  outlined copy of Text.Suffix.Storage(v2, v3, v4);
  return outlined consume of Text.Suffix.Storage(v6, v7, v8);
}

uint64_t ResolvedTextSuffix.styles.getter()
{
  if ((*(v0 + 40) & 0x8000000000000000) != 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
  }
}

void protocol witness for static Rule.initialValue.getter in conformance TextSuffixModifier.OptionalText(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
}

uint64_t *protocol witness for Rule.value.getter in conformance TextSuffixModifier.OptionalText@<X0>(uint64_t *a1@<X8>)
{
  result = AGGraphGetValue();
  v3 = result[2];
  if (v3 < 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v4 = *result;
    v5 = result[1];
    v6 = result[2] & 1;
    v7 = result[3];
    result = outlined copy of Text.Suffix.Storage(*result, v5, v3);
  }

  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance TextSuffixModifier.ResolvedTextSuffixFilter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x1FFFFFFFELL;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance TextSuffixModifier.ResolvedTextSuffixFilter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  v5 = Value[2];
  type metadata accessor for ResolvedStyledText?();
  outlined copy of Text.Suffix.Storage(v3, v4, v5);
  AGGraphGetValue();

  Text.Suffix.resolve(text:)(v6, a1);

  return outlined consume of Text.Suffix.Storage(v3, v4, v5);
}

uint64_t protocol witness for Rule.value.getter in conformance TextSuffixModifier.ChildEnvironment@<X0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  v5 = AGGraphGetValue();
  v7 = *(v5 + 16);
  v6 = *(v5 + 32);
  v8 = *v5;
  v12 = *(v5 + 48);
  v11[1] = v7;
  v11[2] = v6;
  v11[0] = v8;
  outlined init with copy of ResolvedTextSuffix(v11, v10);
  swift_retain_n();
  outlined init with copy of ResolvedTextSuffix(v11, v10);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010TextSuffixF033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt2B5(a1, v11);

  outlined destroy of ResolvedTextSuffix(v11);
  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA010TextSuffixK033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Ttg5(v4, *a1);
  }

  return outlined destroy of ResolvedTextSuffix(v11);
}

uint64_t specialized static TextSuffixModifier._makeInputs(modifier:inputs:)(unsigned int *a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ResolvedOptionalTextFilter(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *a1;
  v36 = v33;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for Text?(0, &lazy cache variable for type metadata for Text?, &type metadata for Text, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type TextSuffixModifier.OptionalText and conformance TextSuffixModifier.OptionalText();
  v7 = Attribute.init<A>(body:value:flags:update:)();
  v8 = *(a2 + 16);
  swift_beginAccess();
  v32 = v8;
  v9 = *(v8 + 16);
  v31 = *(a2 + 8);
  v34 = a2;
  v10 = *a2;
  v11 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA18ReferenceDateInputV_Tt2g5(*a2);
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v12 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v10, v35);
  if (v12)
  {
    v13 = (v12 + 72);
    v14 = (v12 + 73);
  }

  else
  {
    v13 = &static ArchivedViewInput.defaultValue;
    v14 = &static ArchivedViewInput.defaultValue + 1;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  v15 = *v14;
  v16 = *v13;
  BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
  v17 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v10, v35);
  if (v17 && (v18 = *(v17 + 72)) != 0)
  {
    v19 = *(v17 + 80);
  }

  else
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>();
    v18 = v20;
    v19 = &protocol witness table for InterfaceIdiomBox<A>;
  }

  *v6 = v7;
  v6[1] = v9;
  v21 = v6 + *(v4 + 24);
  v22 = type metadata accessor for ResolvedTextHelper(0);
  v30[1] = v4;
  *&v21[*(v22 + 60)] = 0;
  type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  swift_storeEnumTagMultiPayload();
  *v21 = v31;
  *(v21 + 4) = v11;
  *(v21 + 6) = 257;
  v21[14] = v16;
  v21[15] = v15;
  *(v21 + 4) = 64;
  *(v21 + 3) = v18;
  *(v21 + 4) = v19;
  type metadata accessor for PropertyList.Tracker();
  v23 = swift_allocObject();
  type metadata accessor for Text?(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = MEMORY[0x1E69E7CC8];
  v26 = MEMORY[0x1E69E7CC0];
  *(v24 + 24) = 0;
  *(v24 + 32) = v25;
  *(v24 + 40) = v25;
  *(v24 + 48) = v26;
  *(v24 + 56) = 0;
  *(v23 + 16) = v24;
  *(v21 + 5) = v23;
  *(v21 + 3) = 0u;
  *(v21 + 4) = 0u;
  *&v21[*(v22 + 64)] = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ResolvedStyledText?();
  lazy protocol witness table accessor for type ResolvedOptionalTextFilter and conformance ResolvedOptionalTextFilter();
  v27 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ResolvedOptionalTextFilter(v6, type metadata accessor for ResolvedOptionalTextFilter);
  v35 = __PAIR64__(v27, v33);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type TextSuffixModifier.ResolvedTextSuffixFilter and conformance TextSuffixModifier.ResolvedTextSuffixFilter();
  v35 = __PAIR64__(*(v32 + 16), Attribute.init<A>(body:value:flags:update:)());
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type TextSuffixModifier.ChildEnvironment and conformance TextSuffixModifier.ChildEnvironment();
  v28 = Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter(v28);
}

unint64_t getEnumTag for Text.Suffix.Storage(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for Text.Suffix.Storage(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = xmmword_18DDF8F80;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t assignWithCopy for ResolvedTextSuffix(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  outlined copy of ResolvedTextSuffix(*a2, v4, v5, v6, v7, v8);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  outlined consume of ResolvedTextSuffix(v10, v11, v12, v13, v14, v15);
  return a1;
}

uint64_t assignWithTake for ResolvedTextSuffix(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  outlined consume of ResolvedTextSuffix(v4, v6, v5, v7, v8, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolvedTextSuffix(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for ResolvedTextSuffix(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t getEnumTag for ResolvedTextSuffix(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for ResolvedTextSuffix(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) &= 1uLL;
    *(result + 44) = a2 << 30;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = xmmword_18DD85510;
  }

  return result;
}

uint64_t *initializeWithCopy for Text.Suffix(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of Text.Suffix.Storage(*a2, v4, v5);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return a1;
}

uint64_t *assignWithCopy for Text.Suffix(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of Text.Suffix.Storage(*a2, v4, v5);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  outlined consume of Text.Suffix.Storage(v7, v8, v9);
  return a1;
}

uint64_t *assignWithTake for Text.Suffix(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v6;
  outlined consume of Text.Suffix.Storage(v3, v5, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TextSuffixModifier.OptionalText and conformance TextSuffixModifier.OptionalText()
{
  result = lazy protocol witness table cache variable for type TextSuffixModifier.OptionalText and conformance TextSuffixModifier.OptionalText;
  if (!lazy protocol witness table cache variable for type TextSuffixModifier.OptionalText and conformance TextSuffixModifier.OptionalText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextSuffixModifier.OptionalText and conformance TextSuffixModifier.OptionalText);
  }

  return result;
}

void type metadata accessor for Text?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ResolvedStyledText?()
{
  if (!lazy cache variable for type metadata for ResolvedStyledText?)
  {
    type metadata accessor for ResolvedStyledText();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ResolvedStyledText?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ResolvedOptionalTextFilter and conformance ResolvedOptionalTextFilter()
{
  result = lazy protocol witness table cache variable for type ResolvedOptionalTextFilter and conformance ResolvedOptionalTextFilter;
  if (!lazy protocol witness table cache variable for type ResolvedOptionalTextFilter and conformance ResolvedOptionalTextFilter)
  {
    type metadata accessor for ResolvedOptionalTextFilter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedOptionalTextFilter and conformance ResolvedOptionalTextFilter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextSuffixModifier.ResolvedTextSuffixFilter and conformance TextSuffixModifier.ResolvedTextSuffixFilter()
{
  result = lazy protocol witness table cache variable for type TextSuffixModifier.ResolvedTextSuffixFilter and conformance TextSuffixModifier.ResolvedTextSuffixFilter;
  if (!lazy protocol witness table cache variable for type TextSuffixModifier.ResolvedTextSuffixFilter and conformance TextSuffixModifier.ResolvedTextSuffixFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextSuffixModifier.ResolvedTextSuffixFilter and conformance TextSuffixModifier.ResolvedTextSuffixFilter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextSuffixModifier.ChildEnvironment and conformance TextSuffixModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type TextSuffixModifier.ChildEnvironment and conformance TextSuffixModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type TextSuffixModifier.ChildEnvironment and conformance TextSuffixModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextSuffixModifier.ChildEnvironment and conformance TextSuffixModifier.ChildEnvironment);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TextSuffixModifier.OptionalText(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TextSuffixModifier.OptionalText and conformance TextSuffixModifier.OptionalText();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for TextSuffixModifier.ResolvedTextSuffixFilter(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TextSuffixModifier.ResolvedTextSuffixFilter and conformance TextSuffixModifier.ResolvedTextSuffixFilter();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for TextSuffixModifier.ChildEnvironment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TextSuffixModifier.ChildEnvironment and conformance TextSuffixModifier.ChildEnvironment();
  *(a1 + 8) = result;
  return result;
}

void *static MultiPlatformItemsStrategy.defaultValue.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(*(a1 + 8) + 24))(&v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t _s7SwiftUI26MultiPlatformItemsStrategyPAAE10hasChanges4from2toSbAA0dE0V_AHtFZAA0c4TextdeF0V_Tt1B5Tm(char *a1, int a2, uint64_t a3, char *a4, int a5, uint64_t a6)
{
  if (a5 == -1 || a2 == -1 || a5 != a2)
  {
    return 0;
  }

  v20 = v6;
  v21 = v7;
  v17[1] = a4;
  v18 = a5;
  v19 = a6;
  PlatformItems.id.getter(v17);
  v11 = v17[0];
  v14[1] = a1;
  v15 = a5;
  v16 = a3;
  PlatformItems.id.getter(v14);
  v12 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14AttributeGraph0B0Vy7SwiftUI11TransactionVG_Tt1g5(v11, v14[0]);

  return v12 & 1;
}

uint64_t static MultiPlatformItemsStrategy.hasChanges(from:to:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v3 == -1 || v2 == -1 || v3 != v2)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  v8 = *(a1 + 16);
  v9 = *a1;
  v15[1] = *a2;
  v16 = v2;
  v17 = v7;
  PlatformItems.id.getter(v15);
  v10 = v15[0];
  v12[1] = v9;
  v13 = v2;
  v14 = v8;
  PlatformItems.id.getter(v12);
  v11 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14AttributeGraph0B0Vy7SwiftUI11TransactionVG_Tt1g5(v10, v12[0]);

  return v11 & 1;
}

unint64_t static MultiPlatformItemsStrategy.makeContent(from:)(uint64_t *a1)
{
  result = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5(*a1);
  if ((result & 0x100000000) != 0)
  {
    return *MEMORY[0x1E698D3F8];
  }

  else
  {
    return result;
  }
}

__n128 _s7SwiftUI26UnaryPlatformItemsStrategyPAAE12defaultValueAA0D4ItemVvgZAA04MenudeF0V_Tt0g5Tm@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOi0_(&v12);
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 320) = 1;
  *(a2 + 328) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 440) = 0u;
  *(a2 + 456) = 0u;
  *(a2 + 472) = 0u;
  *(a2 + 488) = 0u;
  *(a2 + 504) = 0u;
  *(a2 + 520) = 0u;
  *(a2 + 536) = 0u;
  *(a2 + 552) = 0u;
  *(a2 + 568) = 0u;
  *(a2 + 584) = 0u;
  *(a2 + 600) = 0u;
  *(a2 + 609) = 0u;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 304) = xmmword_18DD85500;
  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
  v27[12] = v24;
  v27[13] = v25;
  v27[14] = v26;
  v27[8] = v20;
  v27[9] = v21;
  v27[10] = v22;
  v27[11] = v23;
  v27[4] = v16;
  v27[5] = v17;
  v27[6] = v18;
  v27[7] = v19;
  v27[0] = v12;
  v27[1] = v13;
  v27[2] = v14;
  v27[3] = v15;
  outlined destroy of PlatformItem.PrimaryContent?(v27);
  v5 = v25;
  *(a2 + 224) = v24;
  *(a2 + 240) = v5;
  *(a2 + 256) = v26;
  v6 = v21;
  *(a2 + 160) = v20;
  *(a2 + 176) = v6;
  v7 = v23;
  *(a2 + 192) = v22;
  *(a2 + 208) = v7;
  v8 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v8;
  v9 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v9;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  result = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = result;
  return result;
}

__n128 static UnaryPlatformItemsStrategy.defaultValue.getter@<Q0>(uint64_t a1@<X8>)
{
  _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOi0_(&v10);
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 320) = 1;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 609) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 304) = xmmword_18DD85500;
  *a1 = &outlined read-only object #0 of static UnaryPlatformItemsStrategy.defaultValue.getter;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  v25[12] = v22;
  v25[13] = v23;
  v25[14] = v24;
  v25[8] = v18;
  v25[9] = v19;
  v25[10] = v20;
  v25[11] = v21;
  v25[4] = v14;
  v25[5] = v15;
  v25[6] = v16;
  v25[7] = v17;
  v25[0] = v10;
  v25[1] = v11;
  v25[2] = v12;
  v25[3] = v13;
  outlined destroy of PlatformItem.PrimaryContent?(v25);
  v3 = v23;
  *(a1 + 224) = v22;
  *(a1 + 240) = v3;
  *(a1 + 256) = v24;
  v4 = v19;
  *(a1 + 160) = v18;
  *(a1 + 176) = v4;
  v5 = v21;
  *(a1 + 192) = v20;
  *(a1 + 208) = v5;
  v6 = v15;
  *(a1 + 96) = v14;
  *(a1 + 112) = v6;
  v7 = v17;
  *(a1 + 128) = v16;
  *(a1 + 144) = v7;
  v8 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v8;
  result = v13;
  *(a1 + 64) = v12;
  *(a1 + 80) = result;
  return result;
}

uint64_t static UnaryPlatformItemsStrategy.hasChanges(from:to:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 28);
  v3 = *(a1 + 28);
  if (v2 != -1 && v3 != -1 && v2 == v3)
  {
    return (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14AttributeGraph0B0Vy7SwiftUI11TransactionVG_Tt1g5(*a2, *a1) ^ 1) & 1;
  }

  else
  {
    return 1;
  }
}

void *static MultiPlatformItemsStrategy.makeInputs(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  _ViewInputs.addPlatformItemKey()();
  v6 = *(a3 + 8);
  (*(v6 + 24))(v21, a2, v6);
  v7 = v21[0];
  v8 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v8, v22);
  if (v9)
  {
    v10 = *(v9 + 72);
  }

  else
  {
    v10 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v10 | v7);

  v11 = *(v6 + 32);
  v11(v21, a2, v6);
  v12 = v21[0];
  v13 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v14 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v13, v22);
  if (v14)
  {
    v15 = *(v14 + 72);
  }

  else
  {
    v15 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE020PlatformItemFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v15 | v12);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(a1, 1);

  result = (v11)(v21, a2, v6);
  if ((v21[0] & 0x400) != 0)
  {
    v17 = *a1;
    BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformSystemKey);
    v18 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(v17, v21[0]);
    if (v18 && *(v18 + 72) == 1)
    {
      v19 = &static PlatformItemsDefinition.appKit;
    }

    else
    {
      v19 = &static PlatformItemsDefinition.uiKit;
    }

    result = swift_beginAccess();
    v20 = *v19;
    if (v20)
    {
      return (*(v20 + 88))(a1);
    }
  }

  return result;
}

uint64_t static UnaryPlatformItemsStrategy.makeContent(from:)(uint64_t *a1)
{
  if ((_s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5(*a1) & 0x100000000) != 0)
  {
    return *MEMORY[0x1E698D3F8];
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type _ViewOutputs.FirstItem and conformance _ViewOutputs.FirstItem();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t protocol witness for static PlatformItemsStrategy.hasChanges(from:to:) in conformance UnaryPassthroughPlatformItemsStrategy(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 28);
  v3 = *(a1 + 28);
  if (v2 != -1 && v3 != -1 && v2 == v3)
  {
    return (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14AttributeGraph0B0Vy7SwiftUI11TransactionVG_Tt1g5(*a2, *a1) ^ 1) & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t protocol witness for static PlatformItemsStrategy.makeContent(from:) in conformance UnaryPassthroughPlatformItemsStrategy(uint64_t *a1)
{
  if ((_s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5(*a1) & 0x100000000) != 0)
  {
    return *MEMORY[0x1E698D3F8];
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type _ViewOutputs.FirstItem and conformance _ViewOutputs.FirstItem();
  return Attribute.init<A>(body:value:flags:update:)();
}

{

  return sub_18D3B9D94(a1);
}

uint64_t outlined destroy of PlatformItem.PrimaryContent?(uint64_t a1)
{
  type metadata accessor for PlatformItem.PrimaryContent?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for PlatformItem.PrimaryContent?()
{
  if (!lazy cache variable for type metadata for PlatformItem.PrimaryContent?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?);
    }
  }
}

uint64_t specialized static UnaryPlatformItemsStrategy.makeInputs(_:)(uint64_t *a1)
{
  _ViewInputs.addPlatformItemKey()();
  v2 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v2, v9);
  if (v3)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v4);

  v5 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v5, v9);
  if (v6)
  {
    v7 = *(v6 + 72) | 0x2C6;
  }

  else
  {
    v7 = 710;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE020PlatformItemFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v7);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(a1, 1);
}

{
  _ViewInputs.addPlatformItemKey()();
  v2 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v2, v9);
  if (v3)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v4);

  v5 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v5, v9);
  if (v6)
  {
    v7 = *(v6 + 72) | 2;
  }

  else
  {
    v7 = 2;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE020PlatformItemFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v7);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(a1, 1);
}

{
  _ViewInputs.addPlatformItemKey()();
  v2 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v2, v9);
  if (v3)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v4);

  v5 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v5, v9);
  if (v6)
  {
    v7 = *(v6 + 72) | 4;
  }

  else
  {
    v7 = 4;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE020PlatformItemFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v7);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(a1, 1);
}

{
  _ViewInputs.addPlatformItemKey()();
  v2 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v2, v12);
  if (v3)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v4);

  v5 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v5, v12);
  if (v6)
  {
    v7 = *(v6 + 72) | 0x586;
  }

  else
  {
    v7 = 1414;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE020PlatformItemFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v7);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(a1, 1);

  v8 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformSystemKey);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(v8, v12);
  if (v9 && *(v9 + 72) == 1)
  {
    v10 = &static PlatformItemsDefinition.appKit;
  }

  else
  {
    v10 = &static PlatformItemsDefinition.uiKit;
  }

  result = swift_beginAccess();
  if (*v10)
  {
    return (*(*v10 + 88))(a1);
  }

  return result;
}

{
  _ViewInputs.addPlatformItemKey()();
  v2 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v2, v9);
  if (v3)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v4);

  v5 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v5, v9);
  if (v6)
  {
    v7 = *(v6 + 72) | 0xC6;
  }

  else
  {
    v7 = 198;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE020PlatformItemFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v7);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(a1, 1);
}

{
  _ViewInputs.addPlatformItemKey()();
  v2 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v2, v9);
  if (v3)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v4);

  v5 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v5, v9);
  if (v6)
  {
    v7 = *(v6 + 72) | 0x802;
  }

  else
  {
    v7 = 2050;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE020PlatformItemFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v7);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(a1, 1);
}

{
  _ViewInputs.addPlatformItemKey()();
  v2 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v2, v9);
  if (v3)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v4);

  v5 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v5, v9);
  if (v6)
  {
    v7 = *(v6 + 72) | 0x812;
  }

  else
  {
    v7 = 2066;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE020PlatformItemFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v7);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(a1, 1);
}

uint64_t specialized static MultiPassthroughPlatformItemsStrategy.makeInputs(_:)(uint64_t *a1)
{
  _ViewInputs.addPlatformItemKey()();
  v2 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v2, v6);
  if (v3)
  {
    v4 = *(v3 + 72) | 1;
  }

  else
  {
    v4 = 1;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v4);
}

uint64_t Text.CustomAttributes.add<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextAttributeModifier();
  (*(v6 + 16))(v8, a1, a2);
  _AnyMaterialCustomFillProvider.__allocating_init(_:)(v8);
  MEMORY[0x193ABF170]();
  if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

double Text.Layout.Run.subscript.getter@<D0>(const void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = CTLineGetRunAtIndex();
  v5 = _CTRunGetAttributeValueForKey(v4, a1);

  if (v5)
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

uint64_t Text.CustomAttributes.add(_:)()
{

  return specialized Array.append<A>(contentsOf:)(v0);
}

void Text.Layout.Line.typographicBounds.getter(float64x2_t *a1@<X8>)
{
  ascent[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 16);
  v14 = *(v1 + 24);
  v4 = *v1;
  v5 = v4;
  if (v3)
  {
    [v4 typographicBounds];
    TypographicBounds = v6;
    v9 = v8;
    [v5 glyphOrigin];
    v11 = v10;

    v12 = v9 - v11;
    v13 = 0.0;
  }

  else
  {
    descent = 0.0;
    ascent[0] = 0.0;
    leading = 0.0;
    TypographicBounds = CTLineGetTypographicBounds(v4, ascent, &descent, &leading);

    v12 = descent;
    v11 = ascent[0];
    v13 = leading;
  }

  *a1 = vaddq_f64(v14, 0);
  a1[1].f64[0] = TypographicBounds;
  a1[1].f64[1] = v11;
  a1[2].f64[0] = v12;
  a1[2].f64[1] = v13;
}

void GraphicsContext.draw(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  if ((a2 & 0x40) == 0)
  {
    v11 = *(a3 + 48);
    v12 = *(a3 + 52);
    v13 = *(a3 + 56);
    a = *(a3 + 24);
    v45 = a;
    v46 = 0;
    v47 = __PAIR64__(v12, v11);
    v48 = v13;
    v49 = GraphicsContext.userToDeviceScale.getter();
    v50 = 0;
    v43 = v7;
    outlined copy of Text.Layout.Line.Line(v6);
    v38 = 0;
    for (i = 0.0; ; ++*&i)
    {
      if (v7)
      {
        v16 = v6;
        v17 = _NSTextLineFragmentGetCTLine(v16);

        if (!v17)
        {
          if (i == 0.0)
          {
            goto LABEL_32;
          }

          goto LABEL_11;
        }
      }

      else
      {
        outlined copy of Text.Layout.Line.Line(v6);

        v17 = v6;
      }

      RunCount = CTLineGetRunCount();

      if (*&i == RunCount)
      {
LABEL_32:
        outlined consume of Text.Layout.Line.Line(v6);
        v34 = a;
        v35 = v45;
        v36 = v46;
        if (v46)
        {
          RBDrawingStateEndCGContext();
        }

        if (*&v34 != *&v35)
        {
          RBDrawingStateDestroy();
        }

        v3 = a3;
        break;
      }

      if (!v7)
      {
        outlined copy of Text.Layout.Line.Line(v6);

        outlined copy of Text.Layout.Line.Line(v6);

        outlined copy of Text.Layout.Line.Line(v6);

        v20 = v6;
        v22 = v6;
        goto LABEL_15;
      }

LABEL_11:
      v19 = v6;
      v20 = _NSTextLineFragmentGetCTLine(v19);

      if (!v20)
      {
        goto LABEL_41;
      }

      outlined copy of Text.Layout.Line.Line(v6);

      v21 = v19;
      v22 = _NSTextLineFragmentGetCTLine(v21);

      if (!v22)
      {
        v23 = 0;
        goto LABEL_16;
      }

LABEL_15:
      v23 = CTLineGetRunCount();

LABEL_16:
      if (*&i >= v23)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

      v24 = v10;
      if ((v10 & 0x10) != 0)
      {
        v25 = v7;
        v26 = v4;
        v27 = MEMORY[0x193ABEC20](0xD00000000000001DLL, 0x800000018DD7A720);
        v28 = CTLineGetRunAtIndex();
        v29 = _CTRunGetAttributeValueForKey(v28, v27);

        if (v29)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v39 = 0u;
          v40 = 0u;
        }

        v41[0] = v39;
        v41[1] = v40;
        v4 = v26;
        if (*(&v40 + 1))
        {
          outlined init with take of Any(v41, &transform);
          outlined init with take of Any(&transform, v41);
          v7 = v25;
          if (swift_dynamicCast())
          {
            v24 = v10 | 4;
            if (!v39)
            {
              v24 = v10;
            }
          }

          else
          {
            v24 = v10;
          }
        }

        else
        {
          outlined destroy of Any?(v41);
          v24 = v10;
          v7 = v25;
        }
      }

      v30 = v24 | v4;
      v50 = v30;
      v31 = v46;
      if (v46 && v30 != v38)
      {
        RBDrawingStateEndCGContext();

        v46 = 0;
      }

      v32 = GlyphContext.currentContext()();
      v38 = v50;
      if ((v50 & 8) == 0)
      {
        v33 = CTLineGetRunAtIndex();
        _CGContextSetTextRunRange(v32, v33, 0, 0);
      }

      *&transform.a = v20;
      transform.b = i;
      transform.c = v8;
      transform.d = v9;
      LODWORD(transform.tx) = v10;
      transform.ty = v5;
      GlyphContext.drawAttachment(_:cgContext:)(&transform, v32);
      CGContextSaveGState(v32);
      transform.b = 0.0;
      transform.c = 0.0;
      transform.a = 1.0;
      transform.d = -1.0;
      transform.tx = v8;
      transform.ty = v9;
      CGContextConcatCTM(v32, &transform);
      v15 = CTLineGetRunAtIndex();
      v51.location = 0;
      v51.length = 0;
      CTRunDraw(v15, v32, v51);

      CGContextRestoreGState(v32);
    }
  }

  if ((v4 & 0x20) == 0)
  {
    a = *&v6;
    v45 = v5;
    LOBYTE(v46) = v7;
    v47 = *&v8;
    v48 = v9;
    LODWORD(v49) = v10;
    outlined copy of Text.Layout.Line.Line(v6);
    GraphicsContext.userToDeviceScale.getter();
    Text.Layout.Decorations.init(line:scale:)(&a, &transform);
    a = transform.a;
    GraphicsContext.draw(_:)(&a, v3);
  }
}

uint64_t Text.customAttribute<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char *a5, uint64_t a6)
{
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextAttributeModifier();
  (*(v12 + 16))(v14, a1, a6);
  v15 = _AnyMaterialCustomFillProvider.__allocating_init(_:)(v14);
  outlined copy of Text.Storage(a2, a3, a4 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
  }

  v17 = *(a5 + 2);
  v16 = *(a5 + 3);
  if (v17 >= v16 >> 1)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, a5);
  }

  *(a5 + 2) = v17 + 1;
  v18 = &a5[16 * v17];
  *(v18 + 4) = v15;
  v18[40] = -64;
  return a2;
}

double Text.Layout.Run.typographicBounds.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = CTLineGetRunAtIndex();
  specialized Text.Layout.TypographicBounds.init(run:range:)(v5, 0, v10);

  result = v3 + v10[0];
  v7 = v4 + v10[1];
  v8 = v11;
  v9 = v12;
  *a1 = v3 + v10[0];
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

uint64_t Text.Layout.init(lines:isTruncated:numberOfLines:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

Class Text.Layout.Line.lastRunAttributes.getter()
{
  v1 = v0[1];
  v10 = *v0;
  v11[0] = v1;
  *(v11 + 12) = *(v0 + 28);
  if (v1 == 1)
  {
    v2 = v10;
    outlined init with copy of Text.Layout.Line(&v10, &v9);

    v3 = [v2 attributedString];
    v4 = [v3 attributesAtIndex:objc_msgSend(v2 effectiveRange:{sel_characterRange), 0}];

    type metadata accessor for NSAttributedStringKey(0);
    _sSo21NSAttributedStringKeyaABSHSCWlTm_2(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, 255, type metadata accessor for NSAttributedStringKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    specialized BidirectionalCollection.last.getter(&v9);
    v6 = v9;
    if (v9)
    {
      v7 = CTLineGetRunAtIndex();
      v5.super.isa = CTRunGetAttributes(v7);
      outlined consume of Text.Layout.Run?(v6);
    }

    else
    {
      return 0;
    }
  }

  return v5.super.isa;
}

uint64_t Text.Layout.Line.init(line:origin:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = a3;
  *(a2 + 32) = a4;
  *(a2 + 40) = 0;
  return result;
}

id Text.Layout.Line.line.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = v1;
  if (v2 == 1)
  {
    v4 = v3;
    v1 = _NSTextLineFragmentGetCTLine(v3);
  }

  return v1;
}

unint64_t Text.Layout.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = *v2 + 48 * result;
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = *(v3 + 72);
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = *(v3 + 56);
    *(a2 + 40) = v7;
    return outlined copy of Text.Layout.Line.Line(v4);
  }

  __break(1u);
  return result;
}

Swift::Int TextAttributeModifierBase.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 112))(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TextAttributeModifierBase()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 112))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextAttributeModifierBase()
{
  Hasher.init(_seed:)();
  (*(**v0 + 112))(v2);
  return Hasher._finalize()();
}

uint64_t TextAttributeModifier.modify(style:environment:)(uint64_t a1)
{
  v2 = *(type metadata accessor for Text.Style(0) + 88);

  MEMORY[0x193ABF170](v3);
  if (*((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t TextAttributeModifier.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v1 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v1 & 1;
  }

  return result;
}

uint64_t Text.CustomAttributes.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if (*v2 >> 62)
  {
LABEL_15:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x193AC03C0](v7, v5);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v14 = *(a1 - 8);
            (*(v14 + 16))(a2, v8 + *(*v8 + 144), a1);

            v10 = v14;
            v11 = 0;
            goto LABEL_17;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_12;
          }
        }

        type metadata accessor for TextAttributeModifier();
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          goto LABEL_13;
        }

        ++v7;
      }

      while (v9 != v6);
    }
  }

  v10 = *(a1 - 8);
  v11 = 1;
LABEL_17:
  v12 = *(v10 + 56);

  return v12(a2, v11, 1, a1);
}

uint64_t Text.CustomAttributes.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*v1 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    MEMORY[0x193AC11A0](v8);
    result = __CocoaSet.count.getter();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x193AC11A0](*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AC03C0](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      (*(*v7 + 112))(a1);
    }
  }

  return result;
}

uint64_t Text.CustomAttributes.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (!(v1 >> 62))
  {
    result = MEMORY[0x193AC11A0](*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return Hasher._finalize()();
  }

  v6 = __CocoaSet.count.getter();
  MEMORY[0x193AC11A0](v6);
  result = __CocoaSet.count.getter();
  v3 = result;
  if (!result)
  {
    return Hasher._finalize()();
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x193AC03C0](i, v1);
      }

      else
      {
        v5 = *(v1 + 8 * i + 32);
      }

      (*(*v5 + 112))(v7);
    }

    return Hasher._finalize()();
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance Text.CustomAttributes()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    result = MEMORY[0x193AC11A0](*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return Hasher._finalize()();
  }

  v6 = __CocoaSet.count.getter();
  MEMORY[0x193AC11A0](v6);
  result = __CocoaSet.count.getter();
  v3 = result;
  if (!result)
  {
    return Hasher._finalize()();
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x193AC03C0](i, v1);
      }

      else
      {
        v5 = *(v1 + 8 * i + 32);
      }

      (*(*v5 + 112))(v7);
    }

    return Hasher._finalize()();
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _TextRendererViewModifier<A>.MakeTextRenderer()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t static TextRenderer_V2ViewModifier._makeViewInputs(modifier:inputs:)(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v27 = a3;
  v28 = a4;
  LODWORD(v35[0]) = v7;
  type metadata accessor for TextRenderer_V2ViewModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static TextRenderer_V2ViewModifier._makeViewInputs(modifier:inputs:), a3, &v23);
  v8 = *(a2 + 1);
  v32 = *a2;
  v33 = v8;
  v10 = *a2;
  v9 = *(a2 + 1);
  v34 = *(a2 + 2);
  v11 = v33;
  v29 = v10;
  v30 = v9;
  v31 = *(a2 + 2);
  v12 = *(*(a4 + 8) + 8);
  v13 = *(v12 + 48);
  outlined init with copy of _GraphInputs(&v32, v35);

  v13(&v23, &v29, a3, v12);
  v35[0] = v29;
  v35[1] = v30;
  v35[2] = v31;
  outlined destroy of _GraphInputs(v35);
  v14 = v23;
  swift_beginAccess();
  v22[0] = _TextRendererViewModifier.MakeTextRenderer.init(renderer:environment:)(v14, *(v11 + 16));
  v22[1] = v15;
  TextRenderer = type metadata accessor for TextRenderer_V2ViewModifier.MakeTextRenderer();
  v25 = TextRenderer;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<TextRendererBoxBase>(0, &lazy cache variable for type metadata for Attribute<TextRendererBoxBase>, v17, type metadata accessor for TextRendererBoxBase, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v22, closure #1 in Attribute.init<A>(_:)partial apply, v24, TextRenderer, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);

  v20 = AGCreateWeakAttribute();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17TextRendererInputV_Tt2g5(a2, v20);
}

uint64_t TextRenderer_V2ViewModifier.MakeTextRenderer.updateValue()(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  v29 = v11;
  v12 = *(v11 + 48);
  v13 = *(v1 + 8);
  v28[1] = *(a1 + 24);
  Value = AGGraphGetValue();
  v16 = v15;
  v17 = *(v3 - 8);
  (*(v17 + 16))(v10, Value, v3);
  v10[v12] = v16 & 1;
  v18 = AGGraphGetValue();
  v20 = *v18;
  v21 = v18[1];
  if (v16)
  {
  }

  else
  {
    if ((v19 & 1) == 0)
    {
      return (*(v5 + 8))(v10, v29);
    }

    v22 = swift_retain_n();
    v23 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v22);

    if ((v23 & 1) == 0)
    {

      return (*(v5 + 8))(v10, v29);
    }
  }

  v28[0] = v21;
  PropertyList.Tracker.reset()();
  (*(v5 + 16))(v7, v10, v29);
  if (v20)
  {
    v25 = *(v20 + 64);
  }

  else
  {
    v25 = 0;
  }

  type metadata accessor for TextRenderer_V2Box();
  v26 = *(v13 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v26 + 16));
  *(v26 + 24) = v25;
  os_unfair_lock_unlock((v26 + 16));

  v30 = v20;
  v31 = v13;
  swift_allocObject();
  v27 = specialized TextRenderer_V2Box.init(_:in:)(v7);
  (*(v17 + 8))(v7, v3);
  v30 = v27;
  type metadata accessor for TextRendererBoxBase();
  AGGraphSetOutputValue();

  (*(v5 + 8))(v10, v29);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance TextRenderer_V2ViewModifier<A>.MakeTextRenderer()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t TextRendererBoxBase.deinit()
{

  return v0;
}

uint64_t TextRendererBoxBase.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *TextRendererBox.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 128) - 8) + 8))(v0 + *(*v0 + 144));
  return v0;
}

uint64_t TextRenderer_V2Box.textLayoutBounds(size:text:)(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*(v2 + 168) + 16))(&v4, *(v2 + 160));
}

uint64_t TextRendererBox.__deallocating_deinit()
{
  TextRendererBox.deinit();

  return swift_deallocClassInstance();
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance TextRendererInput@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static TextRendererInput.defaultValue;
  *a1 = static TextRendererInput.defaultValue;
  return result;
}

Swift::Int Text.Layout.CharacterIndex.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

void *protocol witness for static Strideable._step(after:from:by:) in conformance Text.Layout.CharacterIndex(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (__OFADD__(*a4, *a6))
  {
    __break(1u);
  }

  else
  {
    *result = *a4 + *a6;
    return 0;
  }

  return result;
}

void *protocol witness for static Equatable.== infix(_:_:) in conformance Text.Layout.CharacterIndex(void *result, void *a2)
{
  if (!__OFSUB__(*a2, *result))
  {
    return (*a2 == *result);
  }

  __break(1u);
  return result;
}

void Text.Layout.Line.textLineFragment.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    v2 = v1;
    return;
  }

  v3 = *(v0 + 8);
  swift_retain_n();
  v4 = v1;
  if (v3)
  {
    v5 = v4;
    StringRange = CTLineGetStringRange(v4);

    if (__OFADD__(StringRange.location, StringRange.length))
    {
      __break(1u);
    }

    else if (StringRange.location + StringRange.length >= StringRange.location)
    {
      (*(*v3 + 88))(StringRange.location);

      return;
    }

    __break(1u);
  }

  else
  {
    outlined consume of Text.Layout.Line.Line(v1);
  }
}

void Text.Layout.Line.characterRange.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = v3;
  if (v2)
  {
    location = [v3 characterRange];
  }

  else
  {
    StringRange = CTLineGetStringRange(v3);
    length = StringRange.length;
    location = StringRange.location;
  }

  v8 = location;
  v9 = length;

  if (__OFADD__(v8, v9))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (&v8[v9] < v8)
  {
LABEL_8:
    __break(1u);
  }
}

uint64_t Text.Layout.Line.endIndex.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = v3;
  if (v2 == 1)
  {
    v5 = _NSTextLineFragmentGetCTLine(v3);

    v4 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  RunCount = CTLineGetRunCount();

  return RunCount;
}

void Text.Layout.Run.characterRange.getter()
{
  v0 = CTLineGetRunAtIndex();
  StringRange = CTRunGetStringRange(v0);

  if (__OFADD__(StringRange.location, StringRange.length))
  {
    __break(1u);
    goto LABEL_5;
  }

  if (StringRange.location + StringRange.length < StringRange.location)
  {
LABEL_5:
    __break(1u);
  }
}

void Text.Layout.Line.characterRanges(runIndices:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v28 - v8;
  type metadata accessor for RangeSet<Int><>.IndexSequence(0, &lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence, type metadata accessor for RangeSet<>.IndexSequence);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v28 - v11;
  type metadata accessor for RangeSet<Int><>.IndexSequence(0, &lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence.Iterator, type metadata accessor for RangeSet<>.IndexSequence.Iterator);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v28 - v15;
  v30 = *v2;
  v29 = *(v2 + 16);
  lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
  v28[1] = a2;
  RangeSet.init()();
  (*(v7 + 16))(v9, a1, v6);
  RangeSet.ranges.getter();
  (*(v7 + 8))(v9, v6);
  v17 = *(v14 + 56);
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  (*(*(v18 - 8) + 32))(&v16[v17], v12, v18);
  *v16 = 0;
  *(v16 + 1) = 0;
  if (RangeSet.Ranges.count.getter() < 1)
  {
LABEL_19:
    outlined destroy of RangeSet<Int><>.IndexSequence.Iterator(v16);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    while (1)
    {
      RangeSet.Ranges.subscript.getter();
      if (__OFADD__(v31, v19))
      {
        break;
      }

      if (__OFADD__(v19++, 1))
      {
        goto LABEL_21;
      }

      RangeSet.Ranges.subscript.getter();
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_22;
      }

      if (v19 >= v32 - v31)
      {
        v19 = 0;
        *v16 = ++v20;
      }

      if (v29)
      {
        v22 = v30;

        v23 = _NSTextLineFragmentGetCTLine(v22);

        if (!v23)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v23 = v30;
        outlined copy of Text.Layout.Line.Line(v30);
      }

      v24 = CTLineGetRunAtIndex();
      StringRange = CTRunGetStringRange(v24);

      v26 = StringRange.location + StringRange.length;
      if (__OFADD__(StringRange.location, StringRange.length))
      {
        goto LABEL_23;
      }

      if (v26 < StringRange.location)
      {
        goto LABEL_24;
      }

      location = StringRange.location;
      v34 = StringRange.location + StringRange.length;
      if (__OFSUB__(v26, StringRange.location))
      {
        goto LABEL_25;
      }

      if (v26 != StringRange.location)
      {
        type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, MEMORY[0x1E69E7BE0]);
        v27 = RangeSet._ranges.modify();
        type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, MEMORY[0x1E69E7BA8]);
        RangeSet.Ranges._insert(contentsOf:)();
        v27(&v31, 0);
      }

      if (v20 >= RangeSet.Ranges.count.getter())
      {
        *(v16 + 1) = v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void Text.Layout.Line.paragraphLayoutDirection.getter(BOOL *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *v1;
  v5 = v4;
  v8 = 0;
  if (v3 != 1 || (v6 = _NSTextLineFragmentGetCTLine(v4), v5, (v5 = v6) != 0))
  {
    IsRightToLeft = CTLineIsRightToLeft();

    if (IsRightToLeft)
    {
      v8 = 1;
    }
  }

  *a1 = v8;
}

double Text.Layout.Line.imageBounds.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *v0;
  v5 = v4;
  if (v1 == 1)
  {
    v6 = _NSTextLineFragmentGetCTLine(v4);

    v5 = v6;
    if (!v6)
    {
      return *MEMORY[0x1E695F050];
    }
  }

  ImageBounds = CTLineGetImageBounds(v5, 0);
  v9.a = 1.0;
  v9.b = 0.0;
  v9.c = 0.0;
  v9.d = -1.0;
  v9.tx = v2;
  v9.ty = v3;
  *&v7 = CGRectApplyAffineTransform(ImageBounds, &v9);

  return v7;
}

void Text.Layout.Line.quantizedImageBounds.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *v0;
  v5 = v4;
  if (v1 == 1 && (v6 = _NSTextLineFragmentGetCTLine(v4), v5, (v5 = v6) == 0))
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    ImageBounds = CTLineGetImageBounds(v5, 0);
    v11.a = 1.0;
    v11.b = 0.0;
    v11.c = 0.0;
    v11.d = -1.0;
    v11.tx = v2;
    v11.ty = v3;
    v13 = CGRectApplyAffineTransform(ImageBounds, &v11);
    x = v13.origin.x;
    y = v13.origin.y;
    width = v13.size.width;
    height = v13.size.height;
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGRectInset(v14, -1.0, -1.0);
}

void protocol witness for BidirectionalCollection.index(before:) in conformance Text.Layout.Line(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 16);
    v6 = *v2;
    v7 = v6;
    if (v5 != 1 || (RunCount = _NSTextLineFragmentGetCTLine(v6), v7, (v7 = RunCount) != 0))
    {
      RunCount = CTLineGetRunCount();
    }

    if ((v4 & 0x8000000000000000) == 0 && v4 < RunCount)
    {
      *a2 = v4;
      return;
    }
  }

  __break(1u);
}

void protocol witness for BidirectionalCollection.formIndex(before:) in conformance Text.Layout.Line(uint64_t *a1)
{
  v2 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    v5 = *v1;
    v6 = v5;
    if (v4 != 1 || (RunCount = _NSTextLineFragmentGetCTLine(v5), v6, (v6 = RunCount) != 0))
    {
      RunCount = CTLineGetRunCount();
    }

    if ((v2 & 0x8000000000000000) == 0 && v2 < RunCount)
    {
      *a1 = v2;
      return;
    }
  }

  __break(1u);
}

void protocol witness for Collection.subscript.getter in conformance Text.Layout.Line(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *v2;
  v10 = v9;
  if (v8 != 1 || (RunCount = _NSTextLineFragmentGetCTLine(v9), v10, (v10 = RunCount) != 0))
  {
    RunCount = CTLineGetRunCount();

    if (RunCount < 0)
    {
      __break(1u);
      goto LABEL_10;
    }
  }

  if (v5 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (RunCount < v4)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = *(v2 + 40);
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = *(v2 + 24);
  *(a2 + 56) = v12;
  *a2 = v5;
  *(a2 + 8) = v4;

  outlined copy of Text.Layout.Line.Line(v6);
}

void protocol witness for Collection.indices.getter in conformance Text.Layout.Line(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *v1;
  v5 = v4;
  if ((v3 != 1 || (RunCount = _NSTextLineFragmentGetCTLine(v4), v5, (v5 = RunCount) != 0)) && (RunCount = CTLineGetRunCount(), v5, RunCount < 0))
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = RunCount;
  }
}

BOOL protocol witness for Collection.isEmpty.getter in conformance Text.Layout.Line()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = v3;
  if (v2 == 1)
  {
    v5 = _NSTextLineFragmentGetCTLine(v3);

    v4 = v5;
    if (!v5)
    {
      return 1;
    }
  }

  RunCount = CTLineGetRunCount();

  return RunCount == 0;
}

void protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance Text.Layout.Line(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1 + a2;
  if (__OFADD__(*a1, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v3 + 16);
    v7 = *v3;
    v8 = v7;
    if (v6 != 1 || (RunCount = _NSTextLineFragmentGetCTLine(v7), v8, (v8 = RunCount) != 0))
    {
      RunCount = CTLineGetRunCount();
    }

    if ((v5 & 0x8000000000000000) == 0 && RunCount >= v5)
    {
      *a3 = v5;
      return;
    }
  }

  __break(1u);
}

void protocol witness for RandomAccessCollection.distance(from:to:) in conformance Text.Layout.Line(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(v2 + 16);
  v6 = *v2;
  v7 = v6;
  v8 = v6;
  if (v5 == 1)
  {
    v8 = _NSTextLineFragmentGetCTLine(v6);

    if (!v8)
    {
      if (!v3)
      {
        goto LABEL_8;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  RunCount = CTLineGetRunCount();

  if (v3 < 0 || RunCount < v3)
  {
    goto LABEL_14;
  }

  if ((v5 & 1) == 0)
  {
    v10 = v7;
    goto LABEL_9;
  }

LABEL_8:
  v11 = v7;
  v10 = _NSTextLineFragmentGetCTLine(v11);

  if (v10)
  {
LABEL_9:
    v12 = CTLineGetRunCount();

    if (v4 < 0)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v12 = 0;
  if (v4 < 0)
  {
LABEL_15:
    __break(1u);
    return;
  }

LABEL_12:
  if (v12 < v4)
  {
    goto LABEL_15;
  }
}

void protocol witness for Collection.index(after:) in conformance Text.Layout.Line(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 16);
  v6 = *v2;
  v7 = v6;
  if (v5 != 1 || (RunCount = _NSTextLineFragmentGetCTLine(v6), v7, (v7 = RunCount) != 0))
  {
    RunCount = CTLineGetRunCount();
  }

  if (v4 < 0 || v4 >= RunCount)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }
}

__n128 protocol witness for Sequence.makeIterator() in conformance Text.Layout.Line@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = 0;
  return result;
}

void protocol witness for Collection.count.getter in conformance Text.Layout.Line()
{
  v1 = *(v0 + 16);
  v2 = *v0;
  v3 = v2;
  if (v1 == 1)
  {
    v4 = _NSTextLineFragmentGetCTLine(v2);

    if (v4)
    {
      RunCount = CTLineGetRunCount();
    }

    else
    {
      RunCount = 0;
    }

    v7 = v3;
    v6 = _NSTextLineFragmentGetCTLine(v7);

    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    RunCount = CTLineGetRunCount();

    v6 = v3;
  }

  v8 = CTLineGetRunCount();

  if (v8 < 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if ((v1 & 1) == 0)
  {
    v10 = v3;
    goto LABEL_12;
  }

LABEL_9:
  v9 = v3;
  v10 = _NSTextLineFragmentGetCTLine(v9);

  if (v10)
  {
LABEL_12:
    v11 = CTLineGetRunCount();

    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:
  if (RunCount < 0 || v11 < RunCount)
  {
    __break(1u);
    goto LABEL_16;
  }
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Text.Layout.Line()
{
  specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  v2 = v1;
  outlined consume of Text.Layout.Line.Line(*v0);
  return v2;
}

CFIndex Text.Layout.Run.endIndex.getter()
{
  v0 = CTLineGetRunAtIndex();
  GlyphCount = CTRunGetGlyphCount(v0);

  return GlyphCount;
}

__n128 Text.Layout.RunSlice.init(run:indices:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1->n128_u64[1];
  v5 = a1[2].n128_u32[0];
  v6 = a1[2].n128_u64[1];
  a4->n128_u64[0] = a1->n128_u64[0];
  a4->n128_u64[1] = v4;
  result = a1[1];
  a4[1] = result;
  a4[2].n128_u32[0] = v5;
  a4[2].n128_u64[1] = v6;
  a4[3].n128_u64[0] = a2;
  a4[3].n128_u64[1] = a3;
  return result;
}

id Text.Layout.Run.font.getter()
{
  v0 = CTLineGetRunAtIndex();
  v1 = CTRunGetFont();

  return v1;
}

void Text.Layout.Run.layoutDirection.getter(_BYTE *a1@<X8>)
{
  v2 = CTLineGetRunAtIndex();
  Status = CTRunGetStatus(v2);

  *a1 = Status & 1;
}

void Text.Layout.Run.quantizedImageBounds.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = CTLineGetRunAtIndex();
  v9.location = 0;
  v9.length = 0;
  ImageBounds = CTRunGetImageBounds(v3, 0, v9);
  x = ImageBounds.origin.x;
  y = ImageBounds.origin.y;
  width = ImageBounds.size.width;
  height = ImageBounds.size.height;

  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = -1.0;
  v8.tx = v1;
  v8.ty = v2;
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v12 = CGRectApplyAffineTransform(v11, &v8);
  CGRectInset(v12, -1.0, -1.0);
}

double Text.Layout.Run.pointSize.getter()
{
  v0 = CTLineGetRunAtIndex();
  v1 = CTRunGetFont();

  Size = CTFontGetSize(v1);
  return Size;
}

void Text.Layout.Run.characterIndices.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = CTLineGetRunAtIndex();
  GlyphCount = CTRunGetGlyphCount(v7);

  if (GlyphCount < 0)
  {
    __break(1u);
  }

  else
  {
    v10[0] = v1;
    v10[1] = v2;
    v10[2] = v3;
    v10[3] = v4;
    v11 = v5;
    v12 = v6;
    v13 = 0;
    v14 = GlyphCount;

    v9 = v1;
    Text.Layout.RunSlice.characterIndices.getter();
    sub_18D36CCC8(v10);
  }
}

void protocol witness for BidirectionalCollection.index(before:) in conformance Text.Layout.Run(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = CTLineGetRunAtIndex();
    GlyphCount = CTRunGetGlyphCount(v4);

    if ((v3 & 0x8000000000000000) == 0 && v3 < GlyphCount)
    {
      *a2 = v3;
      return;
    }
  }

  __break(1u);
}

void protocol witness for BidirectionalCollection.formIndex(before:) in conformance Text.Layout.Run(uint64_t *a1)
{
  v1 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = CTLineGetRunAtIndex();
    GlyphCount = CTRunGetGlyphCount(v3);

    if ((v1 & 0x8000000000000000) == 0 && v1 < GlyphCount)
    {
      *a1 = v1;
      return;
    }
  }

  __break(1u);
}

void protocol witness for Collection.endIndex.getter in conformance Text.Layout.Run(CFIndex *a1@<X8>)
{
  v2 = CTLineGetRunAtIndex();
  GlyphCount = CTRunGetGlyphCount(v2);

  *a1 = GlyphCount;
}

void (*protocol witness for Collection.subscript.read in conformance Text.Layout.Run(void (**a1)(id **a1), uint64_t *a2))(id **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x40uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v9 = *v2;
    v8 = *(v2 + 8);
    v10 = *(v2 + 32);
    v11 = *(v2 + 40);
    *v6 = *v2;
    *(v6 + 1) = v8;
    *(v6 + 1) = *(v2 + 16);
    *(v6 + 8) = v10;
    *(v6 + 5) = v11;
    *(v6 + 6) = v7;
    *(v6 + 7) = v7 + 1;

    v12 = v9;
    return protocol witness for Collection.subscript.read in conformance Text.Layout.Line;
  }

  return result;
}

id protocol witness for Collection.subscript.getter in conformance Text.Layout.Run@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v7 = *v2;
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = *(v2 + 16);
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = *a1;

  return v7;
}

void protocol witness for Collection.indices.getter in conformance Text.Layout.Run(void *a1@<X8>)
{
  v2 = CTLineGetRunAtIndex();
  GlyphCount = CTRunGetGlyphCount(v2);

  if (GlyphCount < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = GlyphCount;
  }
}

BOOL protocol witness for Collection.isEmpty.getter in conformance Text.Layout.Run()
{
  v0 = CTLineGetRunAtIndex();
  GlyphCount = CTRunGetGlyphCount(v0);

  return GlyphCount == 0;
}

void protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance Text.Layout.Run(void *a1@<X0>, uint64_t a2@<X1>, CFIndex *a3@<X8>)
{
  v4 = *a1 + a2;
  if (__OFADD__(*a1, a2))
  {
    __break(1u);
  }

  else
  {
    v5 = CTLineGetRunAtIndex();
    GlyphCount = CTRunGetGlyphCount(v5);

    if ((v4 & 0x8000000000000000) == 0 && GlyphCount >= v4)
    {
      *a3 = v4;
      return;
    }
  }

  __break(1u);
}

void protocol witness for RandomAccessCollection.distance(from:to:) in conformance Text.Layout.Run(CFIndex *a1, CFIndex *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = CTLineGetRunAtIndex();
  GlyphCount = CTRunGetGlyphCount(v4);

  if (v2 < 0 || GlyphCount < v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v6 = CTLineGetRunAtIndex();
  v7 = CTRunGetGlyphCount(v6);

  if (v3 < 0 || v7 < v3)
  {
    goto LABEL_7;
  }
}

void protocol witness for Collection.index(after:) in conformance Text.Layout.Run(CFIndex *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = CTLineGetRunAtIndex();
  GlyphCount = CTRunGetGlyphCount(v4);

  if (v3 < 0 || v3 >= GlyphCount)
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + 1;
  }
}

void protocol witness for Collection.formIndex(after:) in conformance Text.Layout.Run(CFIndex *a1)
{
  v2 = *a1;
  v3 = CTLineGetRunAtIndex();
  GlyphCount = CTRunGetGlyphCount(v3);

  if (v2 < 0 || v2 >= GlyphCount)
  {
    __break(1u);
  }

  else
  {
    *a1 = v2 + 1;
  }
}

__n128 protocol witness for Sequence.makeIterator() in conformance Text.Layout.Run@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1->n128_u64[1];
  v3 = v1[2].n128_u32[0];
  v4 = v1[2].n128_u64[1];
  a1->n128_u64[0] = v1->n128_u64[0];
  a1->n128_u64[1] = v2;
  result = v1[1];
  a1[1] = result;
  a1[2].n128_u32[0] = v3;
  a1[2].n128_u64[1] = v4;
  a1[3].n128_u64[0] = 0;
  return result;
}

void protocol witness for Collection.count.getter in conformance Text.Layout.Run()
{
  v0 = CTLineGetRunAtIndex();
  GlyphCount = CTRunGetGlyphCount(v0);

  v2 = CTLineGetRunAtIndex();
  v3 = CTRunGetGlyphCount(v2);

  if (v3 < 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return;
  }

  v4 = CTLineGetRunAtIndex();
  v5 = CTRunGetGlyphCount(v4);

  if (GlyphCount < 0 || v5 < GlyphCount)
  {
    goto LABEL_6;
  }
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Text.Layout.Run()
{
  specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  v2 = v1;

  return v2;
}

id Text.Layout.RunSlice.run.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v6 = *v1;
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;

  return v6;
}

uint64_t Text.Layout.RunSlice.run.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 8);
  v7 = a1[5];

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  return result;
}

uint64_t Text.Layout.RunSlice.indices.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

id Text.Layout.RunSlice.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 48) > a1 || *(v3 + 56) < a2)
  {
    _StringGuts.grow(_:)(19);

    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](0, 0xE000000000000000);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = *(v3 + 40);
    v6 = *(v3 + 32);
    v7 = *(v3 + 8);
    v9 = *v3;
    *a3 = *v3;
    *(a3 + 8) = v7;
    *(a3 + 16) = *(v3 + 16);
    *(a3 + 32) = v6;
    *(a3 + 40) = v5;
    *(a3 + 48) = a1;
    *(a3 + 56) = a2;

    return v9;
  }

  return result;
}

double Text.Layout.RunSlice.subscript.getter@<D0>(const void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = CTLineGetRunAtIndex();
  v5 = _CTRunGetAttributeValueForKey(v4, a1);

  if (v5)
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

void Text.Layout.RunSlice.quantizedImageBounds.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = CTLineGetRunAtIndex();
  if (__OFSUB__(v4, v3))
  {
    __break(1u);
  }

  else
  {
    v6 = v5;
    v12.location = v3;
    v12.length = v4 - v3;
    ImageBounds = CTRunGetImageBounds(v5, 0, v12);
    x = ImageBounds.origin.x;
    y = ImageBounds.origin.y;
    width = ImageBounds.size.width;
    height = ImageBounds.size.height;

    v11.a = 1.0;
    v11.b = 0.0;
    v11.c = 0.0;
    v11.d = -1.0;
    v11.tx = v1;
    v11.ty = v2;
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    v15 = CGRectApplyAffineTransform(v14, &v11);
    CGRectInset(v15, -1.0, -1.0);
  }
}

double Text.Layout.RunSlice.pointSize.getter()
{
  v0 = CTLineGetRunAtIndex();
  v1 = CTRunGetFont();

  Size = CTFontGetSize(v1);
  return Size;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance Text.Layout.RunSlice@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 >= *(v2 + 48) && v3 < *(v2 + 56))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance Text.Layout.RunSlice(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 >= *(v1 + 48) && v2 < *(v1 + 56))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance Text.Layout.RunSlice(uint64_t *a1, void (**a2)(id **a1)))(id **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x80uLL);
  }

  v5 = v4;
  *a1 = v4;
  result = *a2;
  if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    Text.Layout.RunSlice.subscript.getter(result, result + 1, v5);
    return protocol witness for Collection.subscript.read in conformance Text.Layout.RunSlice;
  }

  return result;
}

void protocol witness for Collection.subscript.read in conformance Text.Layout.RunSlice(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  *(v1 + 4) = **a1;
  *(v1 + 5) = v2;
  v3 = *(v1 + 3);
  *(v1 + 6) = *(v1 + 2);
  *(v1 + 7) = v3;
  sub_18D36CCC8(v1 + 8);

  free(v1);
}

__n128 protocol witness for Collection.indices.getter in conformance Text.Layout.RunSlice@<Q0>(__n128 *a1@<X8>)
{
  result = v1[3];
  *a1 = result;
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance Text.Layout.RunSlice@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 >= *(v3 + 48) && *(v3 + 56) >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance Text.Layout.RunSlice(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  if (v6 < *a2 || v4 < v5 || v3 < v5 || v6 < v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = (v4 - v3);
  if (__OFSUB__(v4, v3))
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance Text.Layout.RunSlice@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *(v2 + 56);
  if (*result >= *(v2 + 48))
  {
    v6 = __OFSUB__(v3, v4);
    v5 = v3 - v4 < 0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (v5 != v6)
  {
    *a2 = v3 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance Text.Layout.RunSlice(uint64_t *result)
{
  v2 = *result;
  v3 = *(v1 + 56);
  if (*result >= *(v1 + 48))
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 != v5)
  {
    *result = v2 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id *protocol witness for Sequence.makeIterator() in conformance Text.Layout.RunSlice@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v10[0] = v3;
  v10[1] = v4;
  v5 = v1[3];
  v11 = v1[2];
  v6 = v11;
  v12 = v5;
  v7 = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  *(a1 + 48) = v5;
  v13[2] = v6;
  v13[3] = v5;
  v13[0] = v3;
  v13[1] = v4;
  outlined init with copy of Text.Layout.RunSlice(v10, &v9);
  result = sub_18D36CCC8(v13);
  *(a1 + 64) = v7;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance Text.Layout.RunSlice()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  result = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFSUB__(v2, v1))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Layout.RunSlice()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  v2 = *(v0 + 16);
  v5[0] = *v0;
  v5[1] = v2;
  v3 = *(v0 + 48);
  v5[2] = *(v0 + 32);
  v5[3] = v3;
  sub_18D36CCC8(v5);
  return v1;
}

BOOL static Text.Layout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV6LayoutV4LineV_Tt1g5(*a1, *a2);
  v7 = ((v2 ^ v4) & 1) == 0 && v3 == v5;
  return (v6 & 1) != 0 && v7;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Text.Layout(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV6LayoutV4LineV_Tt1g5(*a1, *a2);
  v7 = ((v2 ^ v4) & 1) == 0 && v3 == v5;
  return (v6 & 1) != 0 && v7;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance Text.Layout@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance Text.Layout(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*v1 + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance Text.Layout@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 8);
    v6 = *(v2 + 16);
    *(a2 + 8) = v4;
    *(a2 + 16) = result;
    *(a2 + 24) = v5;
    *(a2 + 32) = v6;
    *a2 = v3;
  }

  return result;
}

void protocol witness for Collection.indices.getter in conformance Text.Layout(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance Text.Layout@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

void *protocol witness for Collection.index(after:) in conformance Text.Layout@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Layout()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  return v1;
}

void TextLayoutFragmentRenderer.draw(attachment:rect:attributes:range:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v18 = *a5;
  c = RBDrawingStateBeginCGContext();
  v19 = *(v18 + 52);
  if (v19)
  {
    CGContextSetBlendMode(c, v19);
  }

  v23.origin.x = a6;
  v23.origin.y = a7;
  v23.size.width = a8;
  v23.size.height = a9;
  Height = CGRectGetHeight(v23);
  _NSTextAttachmentDraw(a1, a2, a3, a4, *(v9 + 16), c, a6, Height + a7, a8, a9);
  RBDrawingStateEndCGContext();
}

uint64_t TextLayoutFragmentRenderer.lineFragment(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = [v5 rangeInElement];
  v7 = NSTextRange.textRange.getter();
  v9 = v8;
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    v12 = __OFADD__(v7, a1);
    v13 = &v7[a1];
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v12 = __OFADD__(v9, a2);
      v14 = v9 + a2;
      if (!v12)
      {
        v15 = [objc_allocWithZone(MEMORY[0x1E69DB790]) initWithRange_];
        v16 = [v15 location];
        v17 = [v5 textLineFragmentForTextLocation:v16 isUpstreamAffinity:0];

        return v17;
      }
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Text.LayoutKey.AnchoredLayout.origin.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Text.LayoutKey.AnchoredLayout.layout.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t Text.LayoutKey.AnchoredLayout.layout.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

void *Text.Layout.Decorations.Segment.init(info:color:)@<X0>(void *result@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>)
{
  *a2 = a3;
  *(a2 + 4) = a4;
  *(a2 + 8) = a5;
  *(a2 + 12) = a6;
  *(a2 + 16) = result[3];
  v7 = result[7];
  v8 = result[8];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 < v7)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  *(a2 + 24) = v7;
  *(a2 + 32) = v10;
  v11 = result[10];
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = result[9];
    v14 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC12CoreGraphics7CGFloatV_Tt1g5(result[10], 0);
    result = memcpy(v14 + 4, v13, 8 * v11);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  *(a2 + 40) = v14;
  *(a2 + 48) = v12;
  return result;
}

unint64_t Text.Layout.Decorations.Segment.subscript.getter@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 48);
    if (*(v3 + 16) > result)
    {
      v4 = v3 + 32 * result;
      v5 = *(v4 + 48);
      *a2 = *(v4 + 32);
      a2[1] = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance Text.Layout.Decorations.Segment@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*(v2 + 48) + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance Text.Layout.Decorations.Segment(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*(v1 + 48) + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

_OWORD *protocol witness for Collection.subscript.read in conformance Text.Layout.Decorations.Segment(_OWORD *result, unint64_t *a2)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v2 + 48);
    if (v3 < *(v4 + 16))
    {
      v5 = v4 + 32 * v3;
      v6 = *(v5 + 48);
      *result = *(v5 + 32);
      result[1] = v6;
      return _ViewInputs.base.modify;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance Text.Layout.Decorations.Segment@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], *(*(v2 + 48) + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 16);
    v9[0] = *v2;
    v9[1] = v5;
    v10 = *(v2 + 32);
    v6 = v10;
    v11 = *(v2 + 48);
    v7 = v11;
    *(a2 + 16) = v9[0];
    *(a2 + 32) = v5;
    *(a2 + 48) = v6;
    *(a2 + 64) = v7;
    *a2 = v3;
    *(a2 + 8) = v4;
    return outlined init with copy of Text.Layout.Decorations.Segment(v9, v8);
  }

  return result;
}

void protocol witness for Collection.indices.getter in conformance Text.Layout.Decorations.Segment(void *a1@<X8>)
{
  v2 = *(*(v1 + 48) + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance Text.Layout.Decorations.Segment@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*(v3 + 48) + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance Text.Layout.Decorations.Segment(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(v2 + 48) + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

void *protocol witness for Collection.index(after:) in conformance Text.Layout.Decorations.Segment@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*(v2 + 48) + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance Text.Layout.Decorations.Segment(void *result)
{
  if (*result >= *(*(v1 + 48) + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance Text.Layout.Decorations.Segment@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v9[0] = v3;
  v9[1] = v4;
  v10 = v1[2];
  v5 = v10;
  v11 = *(v1 + 6);
  v6 = v11;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  v13 = v6;
  v12[1] = v4;
  v12[2] = v5;
  v12[0] = v3;
  outlined init with copy of Text.Layout.Decorations.Segment(v9, v8);
  result = outlined destroy of Text.Layout.Decorations.Segment(v12);
  *(a1 + 56) = 0;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Layout.Decorations.Segment()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  v2 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v2;
  v4[2] = *(v0 + 32);
  v5 = *(v0 + 48);
  outlined destroy of Text.Layout.Decorations.Segment(v4);
  return v1;
}

uint64_t Text.Layout.Decorations.init(line:scale:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v33 = *(a1 + 24);
  v8 = *(a1 + 40);
  outlined copy of Text.Layout.Line.Line(*a1);

  if (v7)
  {
    v9 = _NSTextLineFragmentGetCTLine(v6);
  }

  else
  {
    v9 = v6;
  }

  v44[1] = v6;
  v44[2] = v5;
  v45 = v7;
  v46 = v33;
  v47 = v8;
  Text.Layout.Line.typographicBounds.getter(&v48);
  if (v7)
  {
    v10 = v6;
    v11 = _NSTextLineFragmentGetCTLine(v10);

    if (!v11)
    {
      outlined consume of Text.Layout.Line.Line(v6);
      RunCount = 0;
      goto LABEL_9;
    }
  }

  else
  {
    outlined copy of Text.Layout.Line.Line(v6);

    v11 = v6;
  }

  v13 = v11;
  RunCount = CTLineGetRunCount();
  outlined consume of Text.Layout.Line.Line(v6);

  if (RunCount < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_9:
  v14 = v48;
  v15 = MEMORY[0x1E69E7CC0];
  v44[0] = MEMORY[0x1E69E7CC0];
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v39[0] = 0;
  v39[1] = 0;
  v32 = a2;
  if (!v9)
  {
    v24 = 0;
    goto LABEL_18;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = &v40;
  *(v16 + 24) = v44;
  *(v16 + 32) = v39;
  *(v16 + 40) = 0;
  *(v16 + 48) = RunCount;
  *(v16 + 56) = 0;
  *(v16 + 64) = 1;
  *(v16 + 72) = 0;
  *(v16 + 80) = 769;
  v5 = swift_allocObject();
  *(v5 + 16) = closure #1 in Text.Layout.Decorations.init(line:origin:scale:runs:flags:typographicBounds:)partial apply;
  *(v5 + 24) = v16;
  *&v37.f64[0] = thunk for @callee_guaranteed (@unowned CTLineDecorationElementType, @unowned OpaquePointer) -> ()partial apply;
  *&v37.f64[1] = v5;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v36 = thunk for @escaping @callee_guaranteed (@unowned CTLineDecorationElementType, @unowned OpaquePointer) -> ();
  *(&v36 + 1) = &block_descriptor_80;
  v17 = _Block_copy(&aBlock);

  aBlock = 0x3FF0000000000000uLL;
  *&v36 = 0;
  *(&v36 + 1) = 0xBFF0000000000000;
  v37 = v14;
  CTLineDecorationApplyWithBlock();
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if ((v17 & 1) == 0)
  {
    v8 = *(&v42 + 1);
    if (!*(&v42 + 1))
    {

      v24 = closure #1 in Text.Layout.Decorations.init(line:origin:scale:runs:flags:typographicBounds:)partial apply;
      v15 = v44[0];
      goto LABEL_18;
    }

    *&v33 = v9;
    v9 = *(&v41 + 1);
    RunCount = v42;
    v18 = v43;
    v3 = DWORD2(v40);
    v2 = v41;
    LODWORD(a2) = v40;
    v29 = DWORD1(v40);
    v19 = HIDWORD(*(&v40 + 1));
    v5 = v44[0];
    aBlock = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    outlined init with copy of Text.Layout.Decorations.Segment(&aBlock, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44[0] = v5;
    v30 = v19;
    v31 = v18;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
  v44[0] = v5;
LABEL_13:
  v22 = *(v5 + 16);
  v21 = *(v5 + 24);
  if (v22 >= v21 >> 1)
  {
    v44[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v5);
  }

  v15 = v44[0];
  *(v44[0] + 16) = v22 + 1;
  v23 = v15 + 56 * v22;
  *(v23 + 32) = a2;
  *(v23 + 36) = v29;
  *(v23 + 40) = v3;
  *(v23 + 44) = v30;
  *(v23 + 48) = v2;
  *(v23 + 56) = v9;
  *(v23 + 64) = RunCount;
  *(v23 + 72) = v8;
  *(v23 + 80) = v31;
  v44[0] = v15;
  v24 = closure #1 in Text.Layout.Decorations.init(line:origin:scale:runs:flags:typographicBounds:)partial apply;
LABEL_18:
  v25 = v40;
  v26 = v41;
  v27 = v42;

  outlined consume of Text.Layout.Decorations.Segment?(v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1));

  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v24);
  *v32 = v15;
  return result;
}

const __CTRun *Text.Layout.Decorations.init(slice:scale:)@<X0>(_OWORD *a1@<X0>, char **a2@<X8>)
{
  v4 = &v47;
  v5 = a1[1];
  v52[0] = *a1;
  v52[1] = v5;
  v6 = a1[3];
  v52[2] = a1[2];
  v52[3] = v6;
  v8 = *(&v52[0] + 1);
  v7 = *&v52[0];
  v9 = v5;
  v11 = *(&v6 + 1);
  v10 = v6;
  outlined init with copy of Text.Layout.RunSlice(v52, &v47);
  v12 = CTLineGetRunAtIndex();
  GlyphCount = CTRunGetGlyphCount(v12);

  if (GlyphCount < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  GlyphCount = CTLineGetRunAtIndex();
  v14 = CTRunGetGlyphCount(GlyphCount);

  if (v14 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v10)
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  if (v11 == v14)
  {
    GlyphCount = v15;
  }

  else
  {
    GlyphCount = v10 == 0;
  }

  v16 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_25;
  }

  if (v16 < v8)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = v7;
  if (v10 == v11)
  {
    sub_18D36CCC8(v52);
    v17 = 0.0;
    v18 = 0.0;
    goto LABEL_15;
  }

  result = CTLineGetRunAtIndex();
  if (!__OFSUB__(v11, v10))
  {
    v20 = result;
    v21.location = v10;
    v21.length = v11 - v10;
    specialized Text.Layout.TypographicBounds.init(run:range:)(result, v21, v51);

    sub_18D36CCC8(v52);
    v18 = v51[2];
    v17 = *&v9 + v51[0];
LABEL_15:
    v45[1] = 0;
    v46 = MEMORY[0x1E69E7CC0];
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v22 = v17 + v18;
    v45[0] = 0;
    v23 = swift_allocObject();
    *(v23 + 16) = &v47;
    *(v23 + 24) = &v46;
    *(v23 + 32) = v45;
    *(v23 + 40) = v8;
    *(v23 + 48) = v16;
    *(v23 + 56) = v17;
    *(v23 + 64) = 0;
    *(v23 + 72) = v22;
    *(v23 + 80) = 0;
    *(v23 + 81) = GlyphCount;
    v8 = swift_allocObject();
    *(v8 + 16) = partial apply for closure #1 in Text.Layout.Decorations.init(line:origin:scale:runs:flags:typographicBounds:);
    *(v8 + 24) = v23;
    *&v43 = partial apply for thunk for @callee_guaranteed (@unowned CTLineDecorationElementType, @unowned OpaquePointer) -> ();
    *(&v43 + 1) = v8;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v42 = thunk for @escaping @callee_guaranteed (@unowned CTLineDecorationElementType, @unowned OpaquePointer) -> ();
    *(&v42 + 1) = &block_descriptor_57;
    v24 = _Block_copy(&aBlock);
    GlyphCount = *(&v43 + 1);

    aBlock = 0x3FF0000000000000uLL;
    *&v42 = 0;
    *(&v42 + 1) = 0xBFF0000000000000;
    v43 = v9;
    CTLineDecorationApplyWithBlock();
    _Block_release(v24);
    LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

    if ((v24 & 1) == 0)
    {
      GlyphCount = *(&v49 + 1);
      if (!*(&v49 + 1))
      {
        sub_18D36CCC8(v52);

        v30 = v46;
LABEL_22:
        v32 = v47;
        v33 = v48;
        v34 = v49;

        outlined consume of Text.Layout.Decorations.Segment?(v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1));

        *a2 = v30;
        return result;
      }

      v39 = a2;
      v11 = *(&v48 + 1);
      v25 = v49;
      v26 = v50;
      LODWORD(a2) = DWORD2(v47);
      v2 = v48;
      v8 = v46;
      LODWORD(v4) = v47;
      v35 = DWORD1(v47);
      v36 = HIDWORD(*(&v47 + 1));
      aBlock = v47;
      v42 = v48;
      v43 = v49;
      v44 = v50;
      outlined init with copy of Text.Layout.Decorations.Segment(&aBlock, v40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v8;
      v37 = v25;
      v38 = v26;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_18:
        v29 = *(v8 + 16);
        v28 = *(v8 + 24);
        if (v29 >= v28 >> 1)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v8);
        }

        sub_18D36CCC8(v52);

        v30 = v46;
        *(v46 + 2) = v29 + 1;
        v31 = &v30[56 * v29];
        *(v31 + 8) = v4;
        *(v31 + 9) = v35;
        *(v31 + 10) = a2;
        *(v31 + 11) = v36;
        *(v31 + 6) = v2;
        *(v31 + 7) = v11;
        *(v31 + 8) = v37;
        *(v31 + 9) = GlyphCount;
        *(v31 + 10) = v38;
        v46 = v30;
        a2 = v39;
        goto LABEL_22;
      }

LABEL_28:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v46 = v8;
      goto LABEL_18;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __break(1u);
  return result;
}