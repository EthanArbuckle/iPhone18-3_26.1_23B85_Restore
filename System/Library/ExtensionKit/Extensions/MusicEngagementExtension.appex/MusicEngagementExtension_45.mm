void *specialized Set.subtracting(_:)(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    specialized Set._subtract<A>(_:)(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7LyricsX06SyncedE8LineViewC4WordC_Tt1g5(v5, v6);
LABEL_10:

  return specialized _NativeSet.subtracting<A>(_:)(a1, v2);
}

uint64_t closure #2 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews()(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = *(a1 + 80);
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = a4;
  *(a1 + 104) = a5;
  result = CGRectEqualToRect(*&a2, v8);
  if ((result & 1) == 0)
  {
    *(a1 + 128) = 0;
  }

  return result;
}

void specialized closure #3 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v2;
    }

    while (v2);
    SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews()(v7);
    v8 = [a2 superview];
    [v8 setNeedsLayout];
  }
}

void closure #4 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews()(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata);
  swift_beginAccess();
  v4 = v3[1];
  v128 = *v3;
  v129 = v4;
  v5 = v3[3];
  v130 = v3[2];
  v131 = v5;
  v6 = v3[5];
  v132 = v3[4];
  v133 = v6;
  v7 = *(&v128 + 1);
  if (*(&v128 + 1))
  {
    v8 = v128;
    v10 = *(&v130 + 1);
    v9 = v130;
    v104 = *(*(&v130 + 1) + 16);
    if (!v104)
    {

      goto LABEL_62;
    }

    v101 = v128;
    v105 = *(&v130 + 1) + 32;
    v107 = v129;
    outlined init with copy of TaskPriority?(&v128, v127, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd);
    v100 = v9;

    v11 = 0;
    v103 = v10;
LABEL_5:
    if (v11 >= *(v10 + 16))
    {
      goto LABEL_129;
    }

    v111 = v11;
    v12 = *(v105 + 8 * v11);
    swift_beginAccess();

    v14 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7LyricsX06SyncedB8LineViewC4WordC_SayAHGTt0g5Tf4g_n(v13);

    if (*(v107 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12), (v15 & 1) != 0))
    {
    }

    else
    {
      v16 = &_swiftEmptySetSingleton;
    }

    v17 = specialized Set.subtracting(_:)(v14, v16);

    if ((v17 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for SyncedLyricsLineView.Word();
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type SyncedLyricsLineView.Word and conformance SyncedLyricsLineView.Word, type metadata accessor for SyncedLyricsLineView.Word);
      Set.Iterator.init(_cocoa:)();
      v17 = v127[0];
      v18 = v127[1];
      v19 = v127[2];
      v20 = v127[3];
      v21 = v127[4];
    }

    else
    {
      v20 = 0;
      v22 = -1 << *(v17 + 32);
      v18 = (v17 + 56);
      v19 = ~v22;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v21 = v24 & *(v17 + 56);
    }

    v25 = (v19 + 64) >> 6;
    v115 = v17;
    v116 = v18;
    v112 = v111 + 1;
    for (i = v25; ; v25 = i)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        if (!__CocoaSet.Iterator.next()() || (type metadata accessor for SyncedLyricsLineView.Word(), swift_dynamicCast(), v31 = v126, v120 = v21, v122 = v20, !v126))
        {
LABEL_4:
          outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();

          v10 = v103;
          v11 = v112;
          if (v112 == v104)
          {
            goto LABEL_61;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v28 = v20;
        v29 = v21;
        for (j = v20; !v29; ++v28)
        {
          j = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_128;
          }

          if (j >= v25)
          {
            goto LABEL_4;
          }

          v29 = *&v18[8 * j];
        }

        v120 = (v29 - 1) & v29;
        v122 = j;

        if (!v31)
        {
          goto LABEL_4;
        }
      }

      v118 = v31;
      v32 = *(v31 + 104);
      v124 = v32;
      if (v32 >> 62)
      {
        break;
      }

      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_29;
      }

LABEL_53:
      v48 = *(v118 + 208);
      if (v48)
      {
        [v48 removeFromSuperview];
        v49 = *(v118 + 208);
      }

      else
      {
        v49 = 0;
      }

      v17 = v115;
      *(v118 + 208) = 0;

      if (!*(v118 + 208))
      {
        v50 = *(v118 + 128);
        *(v118 + 128) = 0;
        v51 = *(v118 + 136);
        *(v118 + 136) = 2;
        outlined consume of AnimationStatus(v50, v51);
      }

      v26 = *(v118 + 128);
      *(v118 + 128) = 0;
      v27 = *(v118 + 136);
      *(v118 + 136) = 2;
      outlined consume of AnimationStatus(v26, v27);

      v21 = v120;
      v20 = v122;
      v18 = v116;
    }

    v33 = _CocoaArrayWrapper.endIndex.getter();
    if (!v33)
    {
      goto LABEL_53;
    }

LABEL_29:
    v34 = 0;
    v35 = v124 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v124 & 0xC000000000000001) != 0)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v41 = __OFADD__(v34++, 1);
        if (v41)
        {
          break;
        }

        goto LABEL_39;
      }

      if (v34 >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_120;
      }

      v40 = *(v124 + 32 + 8 * v34);

      v41 = __OFADD__(v34++, 1);
      if (v41)
      {
        break;
      }

LABEL_39:
      v42 = *(v40 + 88);
      if (!(v42 >> 62))
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43)
        {
          goto LABEL_41;
        }

        goto LABEL_30;
      }

      v43 = _CocoaArrayWrapper.endIndex.getter();
      if (v43)
      {
LABEL_41:
        if (v43 < 1)
        {
          goto LABEL_60;
        }

        v44 = 0;
        while (2)
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v46 = *(v45 + 96);
            if (!v46)
            {
LABEL_48:
              v47 = 0;
LABEL_45:
              ++v44;
              *(v45 + 96) = 0;

              if (v43 == v44)
              {
                goto LABEL_30;
              }

              continue;
            }
          }

          else
          {
            v45 = *(v42 + 8 * v44 + 32);

            v46 = *(v45 + 96);
            if (!v46)
            {
              goto LABEL_48;
            }
          }

          break;
        }

        [v46 removeFromSuperview];
        v47 = *(v45 + 96);
        goto LABEL_45;
      }

LABEL_30:
      v36 = *(v40 + 184);
      if (v36)
      {
        [v36 removeFromSuperview];
        v37 = *(v40 + 184);
      }

      else
      {
        v37 = 0;
      }

      *(v40 + 184) = 0;

      v38 = *(v40 + 136);
      *(v40 + 136) = 0;
      v39 = *(v40 + 144);
      *(v40 + 144) = 2;
      outlined consume of AnimationStatus(v38, v39);

      if (v34 == v33)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:

    v7 = *(&v101 + 1);
    v8 = v101;
LABEL_62:
    v52 = *(a2 + 48);
    v53 = *(a2 + 56);

    specialized OrderedSet._subtracting<A>(_:)(v52, v53, v8, v7);
    v55 = v54;

    v109 = *(v55 + 16);
    if (v109)
    {
      v56 = 0;
      v110 = v55 + 32;
      v108 = v55;
      while (1)
      {
        if (v56 >= *(v55 + 16))
        {
          goto LABEL_130;
        }

        v113 = v56;
        v57 = *(v110 + 8 * v56);
        swift_beginAccess();
        v58 = v57;
        v59 = *(v57 + 16);
        if (!(v59 >> 62))
        {
          v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v60)
          {
            break;
          }

          goto LABEL_105;
        }

        v83 = *(v57 + 16);
        v84 = _CocoaArrayWrapper.endIndex.getter();
        v59 = v83;
        v60 = v84;
        v58 = v57;
        if (v60)
        {
          break;
        }

LABEL_105:
        v82 = v58;

LABEL_106:
        v85 = *(v82 + 112);
        v86 = v82;
        if (v85)
        {
          [v85 removeFromSuperview];
          v86 = v82;
          v87 = *(v82 + 112);
        }

        else
        {
          v87 = 0;
        }

        *(v86 + 112) = 0;

        v56 = v113 + 1;
        v55 = v108;
        if (v113 + 1 == v109)
        {
          goto LABEL_110;
        }
      }

      if (v60 < 1)
      {
LABEL_131:
        __break(1u);
        return;
      }

      v119 = v59 & 0xC000000000000001;
      v106 = v58;

      v61 = 0;
      v117 = v60;
      while (2)
      {
        if (v119)
        {
          v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        v65 = *(v64 + 104);
        v125 = v65;
        v121 = v64;
        v123 = v61;
        if (!(v65 >> 62))
        {
          v33 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v33)
          {
            goto LABEL_75;
          }

LABEL_98:
          v78 = *(v121 + 208);
          if (v78)
          {
            [v78 removeFromSuperview];
            v79 = *(v121 + 208);
          }

          else
          {
            v79 = 0;
          }

          *(v121 + 208) = 0;

          if (!*(v121 + 208))
          {
            v80 = *(v121 + 128);
            *(v121 + 128) = 0;
            v81 = *(v121 + 136);
            *(v121 + 136) = 2;
            outlined consume of AnimationStatus(v80, v81);
          }

          v61 = v123 + 1;
          v62 = *(v121 + 128);
          *(v121 + 128) = 0;
          v63 = *(v121 + 136);
          *(v121 + 136) = 2;
          outlined consume of AnimationStatus(v62, v63);

          if (v123 + 1 == v117)
          {

            v82 = v106;
            goto LABEL_106;
          }

          continue;
        }

        break;
      }

      v33 = _CocoaArrayWrapper.endIndex.getter();
      if (!v33)
      {
        goto LABEL_98;
      }

LABEL_75:
      v66 = 0;
      while (2)
      {
        if ((v125 & 0xC000000000000001) != 0)
        {
          v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v41 = __OFADD__(v66++, 1);
          if (v41)
          {
            goto LABEL_118;
          }

LABEL_84:
          v71 = *(v70 + 88);
          if (!(v71 >> 62))
          {
            v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v72)
            {
              goto LABEL_86;
            }

LABEL_95:
            v77 = *(v70 + 184);
            if (v77)
            {
              [v77 removeFromSuperview];
              v67 = *(v70 + 184);
            }

            else
            {
              v67 = 0;
            }

            *(v70 + 184) = 0;

            v68 = *(v70 + 136);
            *(v70 + 136) = 0;
            v69 = *(v70 + 144);
            *(v70 + 144) = 2;
            outlined consume of AnimationStatus(v68, v69);

            if (v66 == v33)
            {
              goto LABEL_98;
            }

            continue;
          }

          v72 = _CocoaArrayWrapper.endIndex.getter();
          if (!v72)
          {
            goto LABEL_95;
          }

LABEL_86:
          if (v72 >= 1)
          {
            v73 = 0;
            while (1)
            {
              if ((v71 & 0xC000000000000001) != 0)
              {
                v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v75 = *(v74 + 96);
                if (!v75)
                {
LABEL_93:
                  v76 = 0;
                  goto LABEL_90;
                }
              }

              else
              {
                v74 = *(v71 + 8 * v73 + 32);

                v75 = *(v74 + 96);
                if (!v75)
                {
                  goto LABEL_93;
                }
              }

              [v75 removeFromSuperview];
              v76 = *(v74 + 96);
LABEL_90:
              ++v73;
              *(v74 + 96) = 0;

              if (v72 == v73)
              {
                goto LABEL_95;
              }
            }
          }
        }

        else
        {
          if (v66 >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          v70 = *(v125 + 32 + 8 * v66);

          v41 = __OFADD__(v66++, 1);
          if (!v41)
          {
            goto LABEL_84;
          }

LABEL_118:
          __break(1u);
        }

        break;
      }

      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

LABEL_110:

    outlined destroy of TaskPriority?(&v128, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd);
  }

  v35 = a1;
  v88 = (a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
  v89 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
  if (v89)
  {
    if (v89 == 1)
    {
      v33 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
      v96 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
      if (v96)
      {
        [v96 removeFromSuperview];
        v35 = a1;
        v97 = *(a1 + v33);
LABEL_122:
        *(v35 + v33) = 0;

        return;
      }

LABEL_121:
      v97 = 0;
      goto LABEL_122;
    }

    if (v89 != 2)
    {
      v90 = v88[1];
      v91 = v88[2];
      v92 = v88[3];
      v93 = v88[4];
      v94 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
      v95 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
      outlined copy of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate(*(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate));
      if (v95)
      {
        [v95 setAttributedText:v89];
      }

      v98 = *(a1 + v94);
      if (v98)
      {
        v99 = v98;
        [v99 setFrame:{v90, v91, v92, v93}];
        outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate?(v89);
      }

      else
      {
        outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate?(v89);
      }
    }
  }
}

void SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:)(double *a1)
{
  v2 = *&v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel];
  if (v2)
  {
    v3 = *a1;
    if (*a1 == 1)
    {
      v19 = objc_allocWithZone(UISpringTimingParameters);
      v20 = v2;
      v21 = [v19 initWithMass:1.0 stiffness:130.0 damping:30.0 initialVelocity:{0.0, 0.0}];
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
      v22 = v21;
      v23 = v1;
      isa = UIViewPropertyAnimator.init(springTimingParameters:)(v22).super.isa;
      v25 = swift_allocObject();
      *(v25 + 16) = v20;
      v60 = partial apply for closure #4 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
      v61 = v25;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = thunk for @escaping @callee_guaranteed () -> ();
      v59 = &block_descriptor_381;
      v26 = _Block_copy(&aBlock);
      v27 = v20;

      [(objc_class *)isa addAnimations:v26];
      _Block_release(v26);
      v28 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.14 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      v60 = partial apply for closure #5 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
      v61 = v29;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = thunk for @escaping @callee_guaranteed () -> ();
      v59 = &block_descriptor_387;
      v30 = _Block_copy(&aBlock);
      v31 = v27;

      [v28 addAnimations:v30];
      _Block_release(v30);
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v23;
      v60 = partial apply for closure #6 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
      v61 = v32;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
      v59 = &block_descriptor_393_0;
      v33 = _Block_copy(&aBlock);
      v18 = v31;
      v34 = v23;

      [(objc_class *)isa addCompletion:v33];
      _Block_release(v33);
      [(objc_class *)isa startAnimation];
      [v28 startAnimation];

LABEL_11:
      return;
    }

    if (v3 == 0.0)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      v6 = swift_allocObject();
      *(v6 + 16) = partial apply for closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
      *(v6 + 24) = v5;
      v60 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
      v61 = v6;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = thunk for @escaping @callee_guaranteed () -> ();
      v59 = &block_descriptor_403_0;
      v7 = _Block_copy(&aBlock);
      v8 = v2;

      [v4 performWithoutAnimation:v7];
      _Block_release(v7);
      LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

      if ((v4 & 1) == 0)
      {
        v9 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}];
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
        v10 = v9;
        v11.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)(v10).super.isa;
        v12 = swift_allocObject();
        *(v12 + 16) = v8;
        v60 = partial apply for closure #2 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
        v61 = v12;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = thunk for @escaping @callee_guaranteed () -> ();
        v59 = &block_descriptor_409;
        v13 = _Block_copy(&aBlock);
        v14 = v8;

        [(objc_class *)v11.super.isa addAnimations:v13];
        _Block_release(v13);
        v15 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.4 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        v60 = partial apply for closure #3 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
        v61 = v16;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = thunk for @escaping @callee_guaranteed () -> ();
        v59 = &block_descriptor_415;
        v17 = _Block_copy(&aBlock);
        v18 = v14;

        [v15 addAnimations:v17];
        _Block_release(v17);
        [(objc_class *)v11.super.isa startAnimation];
        [v15 startAnimation];
LABEL_10:

        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_17;
    }

    v36 = a1[1];
    v35 = a1[2];
    v38 = a1[3];
    v37 = a1[4];
    v54 = v2;
    v40 = [v54 snapshotViewAfterScreenUpdates:0];
    if (v40)
    {
      v41 = v40;
      v42 = objc_opt_self();
      v43 = swift_allocObject();
      *(v43 + 2) = v41;
      *(v43 + 3) = v54;
      *(v43 + 4) = v1;
      v43[5] = v3;
      v43[6] = v36;
      v43[7] = v35;
      v43[8] = v38;
      v43[9] = v37;
      v44 = swift_allocObject();
      *(v44 + 16) = partial apply for closure #7 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
      *(v44 + 24) = v43;
      v60 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
      v61 = v44;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = thunk for @escaping @callee_guaranteed () -> ();
      v59 = &block_descriptor_363_0;
      v45 = _Block_copy(&aBlock);
      v46 = v54;
      v47 = v1;
      v48 = v41;
      outlined init with copy of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate(a1, v55);

      [v42 performWithoutAnimation:v45];
      _Block_release(v45);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        [v48 frame];
        [v48 setFrame:?];
        [v46 setFrame:{v36, v35, v38, v37}];

        v11.super.isa = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.15 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v15 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.15 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v50 = swift_allocObject();
        *(v50 + 16) = v48;
        v60 = partial apply for closure #8 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
        v61 = v50;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = thunk for @escaping @callee_guaranteed () -> ();
        v59 = &block_descriptor_369;
        v51 = _Block_copy(&aBlock);
        v10 = v48;

        [(objc_class *)v11.super.isa addAnimations:v51];
        _Block_release(v51);
        v52 = swift_allocObject();
        *(v52 + 16) = v46;
        v60 = partial apply for closure #9 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
        v61 = v52;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = thunk for @escaping @callee_guaranteed () -> ();
        v59 = &block_descriptor_375;
        v53 = _Block_copy(&aBlock);
        v18 = v46;

        [v15 addAnimations:v53];
        _Block_release(v53);
        [(objc_class *)v11.super.isa startAnimation];
        [v15 startAnimationAfterDelay:0.1];
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      return;
    }

    [v54 setAttributedText:*&v3];
    [v54 setFrame:{v36, v35, v38, v37}];
  }
}

id closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:)(void *a1)
{
  CGAffineTransformMakeTranslation(&v3, 0.0, -20.0);
  [a1 setTransform:&v3];
  return [a1 setAlpha:0.0];
}

id closure #7 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:)(void *a1, id a2, void *a3, uint64_t a4)
{
  [a2 frame];
  [a1 setFrame:?];
  [a3 addSubview:a1];
  [a2 setAlpha:0.0];
  [a2 setAttributedText:a4];
  [a2 frame];

  return [a2 setFrame:?];
}

void closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateBlur(on:from:to:duration:delay:)(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 setFilters:isa];

  v4 = String._bridgeToObjectiveC()();
  [a2 removeAnimationForKey:v4];
}

void SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (!v4)
  {
    return;
  }

  v200 = a2;
  v201 = a3;
  if (a1[11])
  {
    v208 = 0;
  }

  else
  {
    v208 = v4[5] != 0;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
  v6 = objc_allocWithZone(UISpringTimingParameters);

  isa = UIViewPropertyAnimator.init(springTimingParameters:)([v6 initWithMass:1.0 stiffness:120.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
  v217 = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
  v222 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.32 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  v7 = v4[6];
  v8 = v4[7];
  v9 = *a1;
  v10 = a1[1];

  specialized OrderedSet._subtracting<A>(_:)(v9, v10, v7, v8);
  v205 = v11;
  v12 = v4[6];
  v13 = v4[7];

  specialized OrderedSet._subtracting<A>(_:)(v12, v13, v9, v10);
  v206 = v14;

  v15 = a1[5];
  v16 = &stru_1005F2000;
  v204 = *(v15 + 16);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (!v204)
  {
    goto LABEL_54;
  }

  v20 = 0;
  v203 = v15 + 32;
  v216 = a1;
  v21 = a1[2];
  v215 = kCAFilterGaussianBlur;
  v213 = kCAFilterInputRadius;
  v202 = v21;
LABEL_8:
  v209 = v20;
  v22 = *(v203 + 8 * v20);
  swift_beginAccess();

  v24 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7LyricsX06SyncedB8LineViewC4WordC_SayAHGTt0g5Tf4g_n(v23);

  if (*(v21 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v22), (v26 & 1) != 0))
  {
    v27 = *(*(v21 + 56) + 8 * v25);
  }

  else
  {
    v27 = &_swiftEmptySetSingleton;
  }

  v28 = specialized Set.subtracting(_:)(v27, v24);
  v226 = specialized Set.subtracting(_:)(v24, v27);

  if ((v28 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for SyncedLyricsLineView.Word();
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type SyncedLyricsLineView.Word and conformance SyncedLyricsLineView.Word, type metadata accessor for SyncedLyricsLineView.Word);
    Set.Iterator.init(_cocoa:)();
    v28 = v245;
    v29 = v246;
    v30 = v247;
    v31 = v248;
    v32 = v249;
  }

  else
  {
    v31 = 0;
    v33 = -1 << *(v28 + 32);
    v29 = (v28 + 56);
    v30 = ~v33;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v32 = v35 & *(v28 + 56);
  }

  v210 = v209 + 1;
  v36 = (v30 + 64) >> 6;
  v223 = v29;
  v218 = v36;
  v221 = v28;
  while ((v28 & 0x8000000000000000) == 0)
  {
    v37 = v31;
    v38 = v32;
    v39 = v31;
    if (!v32)
    {
      while (1)
      {
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v39 >= v36)
        {
          goto LABEL_33;
        }

        v38 = *&v29[8 * v39];
        ++v37;
        if (v38)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_123;
    }

LABEL_25:
    v40 = (v38 - 1) & v38;
    v41 = *(*(v28 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));

    if (!v41)
    {
      goto LABEL_33;
    }

LABEL_29:
    v231 = v40;
    v43 = objc_opt_self();
    v44 = swift_allocObject();
    *(v44 + 16) = v41;
    *(v44 + 24) = v234;
    v45 = *(v216 + 3);
    *(v44 + 64) = *(v216 + 2);
    *(v44 + 80) = v45;
    v46 = *(v216 + 5);
    *(v44 + 96) = *(v216 + 4);
    *(v44 + 112) = v46;
    v47 = *(v216 + 1);
    *(v44 + 32) = *v216;
    *(v44 + 48) = v47;
    *(v44 + 128) = v22;
    v48 = v234;
    v49 = v22;

    outlined init with copy of SyncedLyricsLineView.SBS_TextContentView.TextView.TextLayoutDiffMetadata(v216, &aBlock);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v17);
    v50 = swift_allocObject();
    *(v50 + 16) = partial apply for closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
    *(v50 + 24) = v44;
    v242 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
    v243 = v50;
    aBlock = _NSConcreteStackBlock;
    v239 = 1107296256;
    v240 = thunk for @escaping @callee_guaranteed () -> ();
    v241 = &block_descriptor_343_0;
    v51 = _Block_copy(&aBlock);

    [v43 performWithoutAnimation:v51];
    _Block_release(v51);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if (v43)
    {
      goto LABEL_125;
    }

    v242 = partial apply for closure #2 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
    v243 = v41;
    aBlock = _NSConcreteStackBlock;
    v239 = 1107296256;
    v240 = thunk for @escaping @callee_guaranteed () -> ();
    v241 = &block_descriptor_346;
    v52 = _Block_copy(&aBlock);

    [(objc_class *)isa addAnimations:v52];
    _Block_release(v52);
    v53 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.23 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
    v242 = partial apply for closure #3 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
    v243 = v41;
    aBlock = _NSConcreteStackBlock;
    v239 = 1107296256;
    v240 = thunk for @escaping @callee_guaranteed () -> ();
    v241 = &block_descriptor_349;
    v54 = _Block_copy(&aBlock);

    [v53 addAnimations:v54];
    _Block_release(v54);
    v55 = v41[26];
    if (v55)
    {
      v56 = [v55 layer];
      if (v56)
      {
        v57 = v56;
        v58 = [objc_allocWithZone(CAFilter) initWithType:v215];
        v59 = CGFloat._bridgeToObjectiveC()().super.super.isa;
        [v58 setValue:v59 forKey:v213];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_3);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1004F2400;
        *(v60 + 56) = type metadata accessor for UIAction(0, &_sSo8CAFilterCML_1);
        *(v60 + 32) = v58;
        v61 = v58;
        v62 = Array._bridgeToObjectiveC()().super.isa;

        [v57 setFilters:v62];

        v63 = String._bridgeToObjectiveC()();
        v64 = [objc_opt_self() animationWithKeyPath:v63];

        v65 = v64;
        [v65 setDuration:0.23];
        [v65 setBeginTime:CACurrentMediaTime() + 0.15];
        [v65 setFillMode:kCAFillModeBoth];
        v66 = CGFloat._bridgeToObjectiveC()().super.super.isa;
        [v65 setFromValue:v66];

        v67 = CGFloat._bridgeToObjectiveC()().super.super.isa;
        [v65 setToValue:v67];

        [v65 setRemovedOnCompletion:0];
        v68 = objc_allocWithZone(CAMediaTimingFunction);
        LODWORD(v69) = 1051260355;
        LODWORD(v70) = 1059816735;
        LODWORD(v71) = 1.0;
        v72 = [v68 initWithControlPoints:v69 :0.0 :v70 :v71];
        [v65 setTimingFunction:v72];

        v73 = swift_allocObject();
        *(v73 + 16) = v57;
        v74 = v57;
        CAAnimation.completion.setter(closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateBlur(on:from:to:duration:delay:)partial apply, v73);

        v75 = String._bridgeToObjectiveC()();
        [v74 addAnimation:v65 forKey:v75];
      }
    }

    [v53 startAnimationAfterDelay:{0.1, v200, v201}];

    v19 = 1;
    v17 = partial apply for closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
    v18 = v44;
    v31 = v39;
    v32 = v231;
    v22 = v49;
    v36 = v218;
    v28 = v221;
    v29 = v223;
  }

  v42 = __CocoaSet.Iterator.next()();
  if (v42)
  {
    v244 = v42;
    type metadata accessor for SyncedLyricsLineView.Word();
    swift_dynamicCast();
    v41 = aBlock;
    v39 = v31;
    v40 = v32;
    if (aBlock)
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  v219 = v17;
  outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
  v76 = v226;
  v207 = v18;
  v77 = v19;
  if ((v226 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for SyncedLyricsLineView.Word();
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type SyncedLyricsLineView.Word and conformance SyncedLyricsLineView.Word, type metadata accessor for SyncedLyricsLineView.Word);
    Set.Iterator.init(_cocoa:)();
    v76 = v250;
    v78 = v251;
    v79 = v252;
    v80 = v253;
    v81 = v254;
  }

  else
  {
    v80 = 0;
    v82 = -1 << *(v226 + 32);
    v78 = (v226 + 56);
    v79 = ~v82;
    v83 = -v82;
    if (v83 < 64)
    {
      v84 = ~(-1 << v83);
    }

    else
    {
      v84 = -1;
    }

    v81 = v84 & *(v226 + 56);
  }

  v227 = v76;
  v85 = (v79 + 64) >> 6;
  while (2)
  {
    if ((v76 & 0x8000000000000000) != 0)
    {
      v91 = __CocoaSet.Iterator.next()();
      if (v91)
      {
        v244 = v91;
        type metadata accessor for SyncedLyricsLineView.Word();
        swift_dynamicCast();
        v90 = aBlock;
        v88 = v80;
        v89 = v81;
        if (aBlock)
        {
LABEL_51:
          v232 = v89;
          v92 = swift_allocObject();
          *(v92 + 16) = v234;
          *(v92 + 24) = v90;
          v242 = partial apply for closure #4 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v243 = v92;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = thunk for @escaping @callee_guaranteed () -> ();
          v241 = &block_descriptor_323_0;
          v93 = _Block_copy(&aBlock);
          v94 = v234;

          [(objc_class *)v217 addAnimations:v93];
          _Block_release(v93);
          v242 = partial apply for closure #5 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v243 = v90;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
          v241 = &block_descriptor_326;
          v95 = _Block_copy(&aBlock);

          [(objc_class *)v217 addCompletion:v95];
          _Block_release(v95);
          v242 = partial apply for closure #6 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v243 = v90;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = thunk for @escaping @callee_guaranteed () -> ();
          v241 = &block_descriptor_329;
          v96 = _Block_copy(&aBlock);

          [v222 addAnimations:v96];
          _Block_release(v96);
          v97 = v90[26];
          if (v97 && (v98 = [v97 layer]) != 0)
          {
            v99 = v98;
            v100 = [objc_allocWithZone(CAFilter) initWithType:v215];
            v101 = CGFloat._bridgeToObjectiveC()().super.super.isa;
            [v100 setValue:v101 forKey:v213];

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_3);
            v102 = swift_allocObject();
            *(v102 + 16) = xmmword_1004F2400;
            *(v102 + 56) = type metadata accessor for UIAction(0, &_sSo8CAFilterCML_1);
            *(v102 + 32) = v100;
            v103 = v100;
            v104 = Array._bridgeToObjectiveC()().super.isa;

            [v99 setFilters:v104];

            v105 = String._bridgeToObjectiveC()();
            v106 = [objc_opt_self() animationWithKeyPath:v105];

            v107 = v106;
            [v107 setDuration:0.32];
            [v107 setBeginTime:CACurrentMediaTime() + 0.15];
            [v107 setFillMode:kCAFillModeBoth];
            v108 = CGFloat._bridgeToObjectiveC()().super.super.isa;
            [v107 setFromValue:v108];

            v109 = CGFloat._bridgeToObjectiveC()().super.super.isa;
            [v107 setToValue:v109];

            [v107 setRemovedOnCompletion:0];
            v110 = objc_allocWithZone(CAMediaTimingFunction);
            LODWORD(v111) = 1051260355;
            LODWORD(v112) = 1059816735;
            LODWORD(v113) = 1.0;
            v114 = [v110 initWithControlPoints:v111 :0.0 :v112 :v113];
            [v107 setTimingFunction:v114];

            v115 = swift_allocObject();
            *(v115 + 16) = v99;
            v116 = v99;
            CAAnimation.completion.setter(closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateBlur(on:from:to:duration:delay:)partial apply, v115);

            v117 = String._bridgeToObjectiveC()();
            [v116 addAnimation:v107 forKey:v117];
          }

          else
          {
          }

          v77 = 1;
          v80 = v88;
          v81 = v232;
          v76 = v227;
          continue;
        }
      }

LABEL_7:
      outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
      v20 = v210;
      v16 = &stru_1005F2000;
      v17 = v219;
      v19 = v77;
      v21 = v202;
      v18 = v207;
      if (v210 != v204)
      {
        goto LABEL_8;
      }

LABEL_54:
      v220 = v17;
      v224 = *(v205 + 16);
      if (v224)
      {
        v235 = objc_opt_self();
        v118 = *(v205 + 16);

        if (!v118)
        {
          goto LABEL_126;
        }

        v119 = 0;
        v228 = 0;
        v120 = 0;
        v212 = kCAFilterGaussianBlur;
        v211 = kCAFilterInputRadius;
        v233 = v19;
        while (1)
        {
          v121 = *(v205 + 32 + 8 * v119);
          v230 = v119;
          if (*(v121 + 56) == 1)
          {
            if (v19)
            {

              v233 = 1;
            }

            else
            {
              swift_beginAccess();
              v122 = *(v121 + 16);
              if (v122 >> 62)
              {
                v123 = _CocoaArrayWrapper.endIndex.getter();
                if (v123)
                {
LABEL_63:
                  if (v123 < 1)
                  {
                    goto LABEL_129;
                  }

                  v124 = 0;
                  do
                  {
                    if ((v122 & 0xC000000000000001) != 0)
                    {
                      v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      v125 = *(v122 + 8 * v124 + 32);
                    }

                    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v120);
                    v126 = swift_allocObject();
                    *(v126 + 16) = partial apply for closure #7 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
                    *(v126 + 24) = v125;
                    v242 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
                    v243 = v126;
                    aBlock = _NSConcreteStackBlock;
                    v239 = 1107296256;
                    v240 = thunk for @escaping @callee_guaranteed () -> ();
                    v241 = &block_descriptor_314;
                    v127 = _Block_copy(&aBlock);

                    [v235 performWithoutAnimation:v127];
                    _Block_release(v127);
                    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                    if (isEscapingClosureAtFileLocation)
                    {
                      goto LABEL_124;
                    }

                    ++v124;
                    v242 = partial apply for closure #8 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
                    v243 = v125;
                    aBlock = _NSConcreteStackBlock;
                    v239 = 1107296256;
                    v240 = thunk for @escaping @callee_guaranteed () -> ();
                    v241 = &block_descriptor_317;
                    v129 = _Block_copy(&aBlock);

                    [(objc_class *)isa addAnimations:v129];
                    _Block_release(v129);

                    v120 = partial apply for closure #7 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
                  }

                  while (v123 != v124);

                  v233 = 0;
                  v120 = partial apply for closure #7 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
                  v16 = &stru_1005F2000;
                  goto LABEL_73;
                }
              }

              else
              {
                v123 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v123)
                {
                  goto LABEL_63;
                }
              }

              v233 = 0;
            }
          }

          else
          {
          }

LABEL_73:
          v130 = swift_allocObject();
          *(v130 + 16) = v208;
          *(v130 + 24) = v121;

          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v228);
          v131 = swift_allocObject();
          *(v131 + 16) = partial apply for closure #9 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          *(v131 + 24) = v130;
          v242 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
          v243 = v131;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = thunk for @escaping @callee_guaranteed () -> ();
          v241 = &block_descriptor_80;
          v132 = v121;
          v133 = _Block_copy(&aBlock);

          [v235 performWithoutAnimation:v133];
          _Block_release(v133);
          LOBYTE(v133) = swift_isEscapingClosureAtFileLocation();

          if (v133)
          {
            goto LABEL_128;
          }

          v119 = v230 + 1;
          v242 = partial apply for closure #10 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v243 = v132;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = thunk for @escaping @callee_guaranteed () -> ();
          v241 = &block_descriptor_267_0;
          v134 = _Block_copy(&aBlock);

          [isa v16[52].name];
          _Block_release(v134);
          v242 = partial apply for closure #11 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v243 = v132;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = thunk for @escaping @callee_guaranteed () -> ();
          v241 = &block_descriptor_270;
          v135 = _Block_copy(&aBlock);

          [v222 v16[52].name];
          _Block_release(v135);
          if ((v233 & 1) == 0)
          {
            goto LABEL_86;
          }

          v136 = v132[14];
          if (!v136)
          {
            goto LABEL_86;
          }

          v137 = [v136 maskView];
          if (v137)
          {
            goto LABEL_77;
          }

          v157 = v132[14];
          if (!v157)
          {
            goto LABEL_86;
          }

          v158 = [v157 subviews];
          type metadata accessor for UIAction(0, &_sSo6UIViewCML_2);
          v159 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v159 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_82:
              if ((v159 & 0xC000000000000001) != 0)
              {
                v160 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_131;
                }

                v160 = *(v159 + 32);
              }

              v137 = v160;

LABEL_77:
              v138 = [v137 layer];

              if (v138)
              {
                v139 = [objc_allocWithZone(CAFilter) initWithType:v212];
                v140 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                [v139 setValue:v140 forKey:v211];

                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_3);
                v141 = swift_allocObject();
                *(v141 + 16) = xmmword_1004F2400;
                *(v141 + 56) = type metadata accessor for UIAction(0, &_sSo8CAFilterCML_1);
                *(v141 + 32) = v139;
                v142 = v139;
                v143 = Array._bridgeToObjectiveC()().super.isa;

                [v138 setFilters:v143];

                v144 = String._bridgeToObjectiveC()();
                v145 = [objc_opt_self() animationWithKeyPath:v144];

                v146 = v145;
                [v146 setDuration:0.32];
                [v146 setBeginTime:CACurrentMediaTime() + 0.15];
                [v146 setFillMode:kCAFillModeBoth];
                v147 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                [v146 setFromValue:v147];

                v148 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                [v146 setToValue:v148];

                [v146 setRemovedOnCompletion:0];
                v149 = objc_allocWithZone(CAMediaTimingFunction);
                LODWORD(v150) = 1051260355;
                LODWORD(v151) = 1059816735;
                LODWORD(v152) = 1.0;
                v153 = [v149 initWithControlPoints:v150 :0.0 :v151 :v152];
                [v146 setTimingFunction:v153];

                v154 = swift_allocObject();
                *(v154 + 16) = v138;
                v155 = v138;
                CAAnimation.completion.setter(closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateBlur(on:from:to:duration:delay:)partial apply, v154);

                v156 = String._bridgeToObjectiveC()();
                [v155 addAnimation:v146 forKey:v156];

                v119 = v230 + 1;

                goto LABEL_87;
              }

LABEL_86:

              goto LABEL_87;
            }
          }

          else if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_82;
          }

LABEL_87:
          if (v119 == v224)
          {

            v214 = partial apply for closure #9 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
            goto LABEL_96;
          }

          v228 = partial apply for closure #9 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          if (v119 >= *(v205 + 16))
          {
            goto LABEL_126;
          }
        }
      }

      v120 = 0;
      v214 = 0;
      v233 = v19;
LABEL_96:
      v236 = *(v206 + 16);
      if (!v236)
      {
LABEL_120:
        v195 = swift_allocObject();
        *(v195 + 16) = 0;
        v196 = swift_allocObject();
        v196[2] = v195;
        v196[3] = v200;
        v196[4] = v201;
        v242 = partial apply for closure #17 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
        v243 = v196;
        aBlock = _NSConcreteStackBlock;
        v239 = 1107296256;
        v240 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
        v241 = &block_descriptor_288;
        v197 = _Block_copy(&aBlock);

        [(objc_class *)isa addCompletion:v197];
        _Block_release(v197);
        [(objc_class *)isa startAnimation];
        v198 = swift_allocObject();
        v198[2] = v195;
        v198[3] = v200;
        v198[4] = v201;
        v242 = partial apply for closure #18 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
        v243 = v198;
        aBlock = _NSConcreteStackBlock;
        v239 = 1107296256;
        v240 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
        v241 = &block_descriptor_294;
        v199 = _Block_copy(&aBlock);

        [(objc_class *)v217 addCompletion:v199];
        _Block_release(v199);
        [(objc_class *)v217 startAnimation];
        [v222 startAnimationAfterDelay:0.1];

        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v220);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v120);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v214);
        return;
      }

      v229 = kCAFilterGaussianBlur;
      v225 = kCAFilterInputRadius;

      v161 = 0;
      while (1)
      {
        if (v161 >= *(v206 + 16))
        {
          goto LABEL_127;
        }

        v162 = *(v206 + 8 * v161 + 32);
        if (v208)
        {
          v242 = partial apply for closure #12 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v243 = v162;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = thunk for @escaping @callee_guaranteed () -> ();
          v241 = &block_descriptor_300;
          v163 = _Block_copy(&aBlock);
          swift_retain_n();

          v164 = isa;
          [isa v16[52].name];
          _Block_release(v163);
          v242 = partial apply for closure #13 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v243 = v162;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
          v165 = &block_descriptor_303_0;
        }

        else
        {
          v242 = partial apply for closure #14 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v243 = v162;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = thunk for @escaping @callee_guaranteed () -> ();
          v241 = &block_descriptor_273_1;
          v166 = _Block_copy(&aBlock);
          swift_retain_n();

          v164 = v217;
          [v217 v16[52].name];
          _Block_release(v166);
          v242 = partial apply for closure #15 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v243 = v162;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
          v165 = &block_descriptor_276;
        }

        v241 = v165;
        v167 = _Block_copy(&aBlock);

        [(objc_class *)v164 addCompletion:v167];
        _Block_release(v167);
        v168 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.23 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v242 = partial apply for closure #16 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
        v243 = v162;
        aBlock = _NSConcreteStackBlock;
        v239 = 1107296256;
        v240 = thunk for @escaping @callee_guaranteed () -> ();
        v241 = &block_descriptor_279_0;
        v169 = _Block_copy(&aBlock);

        [v168 v16[52].name];
        _Block_release(v169);
        if (v233)
        {
          v170 = v162[14];
          if (v170)
          {
            v171 = [v170 maskView];
            if (v171)
            {
              goto LABEL_107;
            }

            v191 = v162[14];
            if (v191)
            {
              v192 = [v191 subviews];
              type metadata accessor for UIAction(0, &_sSo6UIViewCML_2);
              v193 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v193 >> 62)
              {
                if (_CocoaArrayWrapper.endIndex.getter())
                {
LABEL_112:
                  if ((v193 & 0xC000000000000001) != 0)
                  {
                    v194 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (!*((v193 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_130;
                    }

                    v194 = *(v193 + 32);
                  }

                  v171 = v194;

LABEL_107:
                  v172 = [v171 layer];

                  if (v172)
                  {
                    v173 = [objc_allocWithZone(CAFilter) initWithType:v229];
                    v174 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                    [v173 setValue:v174 forKey:v225];

                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_3);
                    v175 = swift_allocObject();
                    *(v175 + 16) = xmmword_1004F2400;
                    *(v175 + 56) = type metadata accessor for UIAction(0, &_sSo8CAFilterCML_1);
                    *(v175 + 32) = v173;
                    v176 = v173;
                    v177 = Array._bridgeToObjectiveC()().super.isa;

                    [v172 setFilters:v177];

                    v178 = String._bridgeToObjectiveC()();
                    v179 = [objc_opt_self() animationWithKeyPath:v178];

                    v180 = v179;
                    [v180 setDuration:0.23];
                    [v180 setBeginTime:CACurrentMediaTime() + 0.0];
                    [v180 setFillMode:kCAFillModeBoth];
                    v181 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                    [v180 setFromValue:v181];

                    v182 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                    [v180 setToValue:v182];

                    [v180 setRemovedOnCompletion:0];
                    v183 = objc_allocWithZone(CAMediaTimingFunction);
                    LODWORD(v184) = 1051260355;
                    LODWORD(v185) = 1059816735;
                    LODWORD(v186) = 1.0;
                    v187 = [v183 initWithControlPoints:v184 :0.0 :v185 :v186];
                    [v180 setTimingFunction:v187];

                    v188 = swift_allocObject();
                    *(v188 + 16) = v172;
                    v189 = v172;
                    CAAnimation.completion.setter(partial apply for closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateBlur(on:from:to:duration:delay:), v188);

                    v190 = String._bridgeToObjectiveC()();
                    [v189 addAnimation:v180 forKey:v190];

                    v16 = &stru_1005F2000;
                  }

                  goto LABEL_99;
                }
              }

              else if (*((v193 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_112;
              }
            }
          }
        }

LABEL_99:
        ++v161;
        [v168 startAnimation];

        if (v236 == v161)
        {

          goto LABEL_120;
        }
      }
    }

    break;
  }

  v86 = v80;
  v87 = v81;
  v88 = v80;
  if (v81)
  {
LABEL_47:
    v89 = (v87 - 1) & v87;
    v90 = *(*(v76 + 48) + ((v88 << 9) | (8 * __clz(__rbit64(v87)))));

    if (!v90)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

  while (1)
  {
    v88 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      break;
    }

    if (v88 >= v85)
    {
      goto LABEL_7;
    }

    v87 = *&v78[8 * v88];
    ++v86;
    if (v87)
    {
      goto LABEL_47;
    }
  }

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
}

void closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4)
{
  Width = CGRectGetWidth(*(a1 + 176));
  if (*(a2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction) == 1)
  {
    v9 = *(a3 + 24);
    if (*(v9 + 16))
    {
      v10 = Width;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
      Width = v10;
      if (v12)
      {
        v13 = CGRectGetWidth(*(*(v9 + 56) + 32 * v11));
        Width = v10 + vabdd_f64(v13, CGRectGetWidth(*(a4 + 80)));
      }
    }

    Width = -Width;
  }

  v14 = *(a1 + 208);
  if (v14)
  {
    CGAffineTransformMakeTranslation(&v16, Width, 0.0);
    [v14 setTransform:&v16];
    v15 = *(a1 + 208);
    if (v15)
    {
      [v15 setAlpha:0.0];
    }
  }
}

void closure #4 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)(uint64_t a1, uint64_t a2)
{
  v4 = Int.seconds.getter(50);
  v5 = *(a2 + 208);
  if (v5)
  {
    if (*(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction))
    {
      v4 = -v4;
    }

    CGAffineTransformMakeTranslation(&v6, v4, 0.0);
    [v5 setTransform:&v6];
  }
}

void closure #7 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)(uint64_t a1)
{
  v1 = *(a1 + 208);
  if (v1)
  {
    v2 = *(a1 + 144);
    v3 = *(a1 + 152);
    v4 = *(a1 + 160);
    v5 = *(a1 + 168);
    v7 = v1;
    v11.origin.x = v2;
    v11.origin.y = v3;
    v11.size.width = v4;
    v11.size.height = v5;
    MinX = CGRectGetMinX(v11);
    v9 = CGRectGetMinX(*(a1 + 176));
    CGAffineTransformMakeTranslation(&v10, MinX - v9, 0.0);
    [v7 setTransform:&v10];
  }
}

id closure #9 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)(char a1, double *a2)
{
  v3 = *(a2 + 14);
  if (a1)
  {
    if (v3)
    {
      v4 = a2[10];
      v5 = a2[11];
      v6 = a2[12];
      v7 = a2[13];
      v8 = v3;
      v12.origin.x = v4;
      v12.origin.y = v5;
      v12.size.width = v6;
      v12.size.height = v7;
      Height = CGRectGetHeight(v12);
      CGAffineTransformMakeTranslation(&v11, 0.0, -Height);
      [v8 setTransform:&v11];
    }
  }

  else if (v3)
  {
    CGAffineTransformMakeTranslation(&v11, 0.0, 20.0);
    [v3 setTransform:&v11];
  }

  result = *(a2 + 14);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

void *closure #12 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)(void *result, CGFloat a2)
{
  v2 = result[14];
  if (v2)
  {
    CGAffineTransformMakeTranslation(&v3, 0.0, a2);
    return [v2 setTransform:&v3];
  }

  return result;
}

uint64_t closure #17 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    v6 = swift_beginAccess();
    *(a2 + 16) = 1;
    return a3(v6);
  }

  return result;
}

uint64_t SyncedLyricsLineView.SBS_TextContentView.TextView.updatedTextKitManager(with:)(double a1, double a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
  __chkstk_darwin();
  v99 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v97 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6ScriptVSgMd_0);
  __chkstk_darwin();
  v9 = &v97 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  __chkstk_darwin();
  v105 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = (&v97 - v11);
  __chkstk_darwin();
  v13 = &v97 - v12;
  v14 = type metadata accessor for Locale.Language();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v98 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v97 - v17;
  __chkstk_darwin();
  v107 = &v97 - v18;
  v19 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v19 setAlignment:*&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment]];
  v108 = v19;
  [v19 setLineBreakStrategy:3];
  v20 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs];
  v21 = v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 216];
  v100 = v15;
  if ((v21 & 1) == 0)
  {
    v22 = *(v20 + 26);
    v23 = v14;
    v24 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind;
    if (v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
    {
      v25 = 224;
    }

    else
    {
      v25 = 200;
    }

    [*&v20[v25] ascender];
    v27 = v3[v24];
    v14 = v23;
    v15 = v100;
    if (v27)
    {
      v28 = 224;
    }

    else
    {
      v28 = 200;
    }

    v29 = v22 - v26;
    [*&v20[v28] descender];
    [v108 setLineSpacing:v29 + v30];
  }

  v31 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  v33 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  v32 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];

  LOBYTE(v33) = String.containsExcessiveHeightCharacters.getter(v33, v32);

  if (v33)
  {
    v110 = Int.seconds.getter(0);
    v109[0] = v110;
    CTFontGetLanguageAwareOutsets();
    v34 = v110 + v109[0];
    v35 = v108;
    [v108 lineSpacing];
    [v35 setLineSpacing:v34 + v36];
  }

  v37 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(&v3[v37], v13, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  v106 = *(v15 + 48);
  v38 = v106(v13, 1, v14);
  v104 = v37;
  v103 = v15 + 48;
  if (v38 == 1)
  {
    v39 = &_s10Foundation6LocaleV8LanguageVSgMd_0;
    v40 = v13;
LABEL_17:
    outlined destroy of TaskPriority?(v40, v39);
    goto LABEL_20;
  }

  v41 = v107;
  (*(v15 + 32))(v107, v13, v14);
  Locale.Language.script.getter();
  v42 = type metadata accessor for Locale.Script();
  if ((*(*(v42 - 8) + 48))(v9, 1, v42) != 1)
  {
    (*(v15 + 8))(v41, v14);
    v39 = &_s10Foundation6LocaleV6ScriptVSgMd_0;
    v40 = v9;
    goto LABEL_17;
  }

  outlined destroy of TaskPriority?(v9, &_s10Foundation6LocaleV6ScriptVSgMd_0);
  v43 = v102;
  outlined init with copy of TaskPriority?(&v3[v37], v102, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  if (v106(v43, 1, v14))
  {
    outlined destroy of TaskPriority?(v43, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    (*(v15 + 8))(v41, v14);
LABEL_20:
    v48 = v14;
    goto LABEL_21;
  }

  v44 = v97;
  (*(v15 + 16))(v97, v43, v14);
  outlined destroy of TaskPriority?(v43, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  v45 = v101;
  Locale.Language.languageCode.getter();
  v46 = *(v15 + 8);
  (v46)(v44, v14);
  v47 = type metadata accessor for Locale.LanguageCode();
  v48 = v14;
  v49 = *(v47 - 8);
  if ((*(v49 + 48))(v45, 1, v47) == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
    v14 = v48;
    (v46)(v41, v48);
    goto LABEL_20;
  }

  v102 = v46;
  Locale.LanguageCode.identifier.getter();
  (*(v49 + 8))(v45, v47);

  (v102)(v41, v48);
LABEL_21:
  v102 = *v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd_0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EE0;
  *(inited + 32) = NSFontAttributeName;
  v101 = (inited + 32);
  v51 = 200;
  if (v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
  {
    v51 = 224;
  }

  v52 = *&v20[v51];
  v53 = type metadata accessor for UIAction(0, &_sSo6UIFontCML_1);
  *(inited + 40) = v52;
  v107 = v3;
  *(inited + 64) = v53;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v54 = type metadata accessor for UIAction(0, &_sSo23NSMutableParagraphStyleCML_0);
  v55 = v108;
  *(inited + 80) = v108;
  *(inited + 104) = v54;
  *(inited + 112) = NSForegroundColorAttributeName;
  v56 = objc_opt_self();
  v57 = v52;

  v58 = NSFontAttributeName;
  v59 = NSParagraphStyleAttributeName;
  v60 = v107;
  v108 = v55;
  v61 = NSForegroundColorAttributeName;
  v62 = [v56 whiteColor];
  v63 = type metadata accessor for UIAction(0, &_sSo7UIColorCML_1);
  *(inited + 120) = v62;
  *(inited + 144) = v63;
  *(inited + 152) = NSLanguageIdentifierAttributeName;
  v64 = v105;
  outlined init with copy of TaskPriority?(&v60[v104], v105, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  if (v106(v64, 1, v48))
  {
    v65 = NSLanguageIdentifierAttributeName;
    v66 = &_s10Foundation6LocaleV8LanguageVSgMd_0;
LABEL_27:
    outlined destroy of TaskPriority?(v64, v66);
    v72 = (inited + 160);
    *(inited + 184) = &type metadata for String;
LABEL_28:
    *v72 = 0;
    v73 = 0xE000000000000000;
    goto LABEL_29;
  }

  v67 = v100;
  v68 = v98;
  (*(v100 + 16))(v98, v64, v48);
  v69 = NSLanguageIdentifierAttributeName;
  outlined destroy of TaskPriority?(v64, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  v64 = v99;
  Locale.Language.languageCode.getter();
  (*(v67 + 8))(v68, v48);
  v70 = type metadata accessor for Locale.LanguageCode();
  v71 = *(v70 - 8);
  if ((*(v71 + 48))(v64, 1, v70) == 1)
  {
    v66 = &_s10Foundation6LocaleV12LanguageCodeVSgMd_0;
    goto LABEL_27;
  }

  v95 = Locale.LanguageCode.identifier.getter();
  v73 = v96;
  (*(v71 + 8))(v64, v70);
  v72 = (inited + 160);
  *(inited + 184) = &type metadata for String;
  if (!v73)
  {
    goto LABEL_28;
  }

  *v72 = v95;
LABEL_29:
  *(inited + 168) = v73;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n_0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd_0);
  swift_arrayDestroy();
  v74 = objc_allocWithZone(NSAttributedString);
  v75 = String._bridgeToObjectiveC()();

  _sSo21NSAttributedStringKeyaMa_1(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&_sSo21NSAttributedStringKeyaABSHSCWL_1, _sSo21NSAttributedStringKeyaMa_1);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v77 = [v74 initWithString:v75 attributes:isa];

  v78 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager;
  v79 = *&v60[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager];
  if (v79)
  {
    v80 = v79[3];

    v81 = [v80 attributedString];
    if (!v81 || (v82 = v81, type metadata accessor for UIAction(0, &_sSo18NSAttributedStringCML_0), v83 = v77, v84 = static NSObject.== infix(_:_:)(), v82, v83, v85 = v79, (v84 & 1) == 0))
    {
      v85 = v79;
      (*(*v79 + 176))(v77);
    }
  }

  else
  {
    type metadata accessor for TextKitManager();
    swift_allocObject();
    v85 = TextKitManager.init(text:size:)(v77, a1);
    *&v60[v78] = v85;
    swift_retain_n();
  }

  v86 = *(*v85 + 112);

  v88 = v86(v87);

  [v88 size];
  v90 = v89;

  if (v90 == a1)
  {
  }

  else
  {
    (*(*v85 + 184))(a1, a2);
    v91 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);

    v92 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v93 = v107;
    swift_beginAccess();
    *&v93[v92] = v91;
  }

  return v85;
}

uint64_t SyncedLyricsLineView.SBS_TextContentView.TextView.prepareVisualRepresentations(size:forceLayout:resetFlow:)(char a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer;
  v11 = *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v11)
  {
    v12 = *(v11 + 48);
    v13 = *(v11 + 56);
  }

  else
  {
    v13 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7LyricsX06SyncedE8LineViewC0G0C_Tt0g5Tm(_swiftEmptyArrayStorage, specialized Array._copyContents(initializing:));
    v12 = 0;
  }

  v152 = v12;
  v153 = v13;
  v150 = 0;
  v151 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7LyricsX06SyncedE8LineViewC0G0C_Tt0g5Tm(_swiftEmptyArrayStorage, specialized Array._copyContents(initializing:));
  v131 = v10;
  if (a2)
  {
    goto LABEL_48;
  }

  v14 = *(v5 + v10);
  if (!v14)
  {
    goto LABEL_48;
  }

  v15 = v14[3];
  *&v136[0] = v14[2];
  *(&v136[0] + 1) = v15;
  v139 = 10;
  v140 = 0xE100000000000000;
  v137 = 0;
  v138 = 0xE000000000000000;
  _sS2SSysWl_2();

  if (StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)() == *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text) && v16 == *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8))
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
      v22 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
      swift_beginAccess();
      *(v5 + v22) = v21;

      SyncedLyricsLineView.TextContainer.destroyViews()();

      *(v5 + v10) = 0;

      v152 = 0;
      v153 = _swiftEmptyArrayStorage;
      goto LABEL_48;
    }
  }

  v18 = v14[5];
  v19 = *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8);
  if (v18)
  {
    if (!v19 || (v14[4] != *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText) || v18 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    if ((a1 & 1) == 0)
    {
      SyncedLyricsLineView.SBS_TextContentView.TextView.updateTranslationLabel(size:forceLayout:)(a1 & 1, a3);
    }

    goto LABEL_19;
  }

  if (!v19)
  {
    goto LABEL_17;
  }

LABEL_19:
  v20 = v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata;
  swift_beginAccess();
  if (*(v20 + 8))
  {

    goto LABEL_48;
  }

  v125 = v20;
  v126 = v13;
  v127 = v12;
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v128 = v14;
  v24 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
  swift_beginAccess();
  *(v5 + v24) = v23;
  v25 = v128;

  v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX06SyncedC8LineViewC0E0C_ShyAE4WordCGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX06SyncedC8LineViewC0E0C_So6CGRectVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v28 = v128[7];
  v129 = *(v28 + 16);
  if (!v129)
  {
    goto LABEL_47;
  }

  v124 = v5;

  v29 = 0;
  while (1)
  {
    if (v29 >= *(v28 + 16))
    {
      goto LABEL_87;
    }

    v30 = *(v28 + 8 * v29 + 32);
    swift_beginAccess();
    swift_retain_n();

    v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7LyricsX06SyncedB8LineViewC4WordC_SayAHGTt0g5Tf4g_n(v31);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v136[0] = v26;
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
    v36 = v26[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      break;
    }

    v39 = v34;
    if (v26[3] >= v38)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = *&v136[0];
        if ((v34 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v26 = *&v136[0];
        if ((v39 & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, isUniquelyReferenced_nonNull_native);
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_91;
      }

      v35 = v40;
      v26 = *&v136[0];
      if ((v39 & 1) == 0)
      {
LABEL_31:
        specialized _NativeDictionary._insert(at:key:value:)(v35, v30, v32, v26);
        goto LABEL_35;
      }
    }

    *(v26[7] + 8 * v35) = v32;

LABEL_35:
    v132 = *(v30 + 80);
    v134 = *(v30 + 96);

    v42 = swift_isUniquelyReferenced_nonNull_native();
    *&v136[0] = v27;
    v43 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
    v45 = v27[2];
    v46 = (v44 & 1) == 0;
    v47 = __OFADD__(v45, v46);
    v48 = v45 + v46;
    if (v47)
    {
      goto LABEL_89;
    }

    v49 = v44;
    if (v27[3] < v48)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v48, v42);
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
      if ((v49 & 1) != (v50 & 1))
      {
        goto LABEL_91;
      }

LABEL_40:
      v27 = *&v136[0];
      if (v49)
      {
        goto LABEL_41;
      }

      goto LABEL_24;
    }

    if (v42)
    {
      goto LABEL_40;
    }

    v52 = v43;
    specialized _NativeDictionary.copy()();
    v43 = v52;
    v27 = *&v136[0];
    if (v49)
    {
LABEL_41:
      v51 = (v27[7] + 32 * v43);
      *v51 = v132;
      v51[1] = v134;

      goto LABEL_25;
    }

LABEL_24:
    specialized _NativeDictionary._insert(at:key:value:)(v43, v30, v27, *&v132, *(&v132 + 1), *&v134, *(&v134 + 1));
LABEL_25:
    ++v29;

    if (v129 == v29)
    {

      v5 = v124;
      v25 = v128;
LABEL_47:

      v53 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7LyricsX06SyncedE8LineViewC0G0C_Tt0g5Tm(_swiftEmptyArrayStorage, specialized Array._copyContents(initializing:));
      v54 = v25[5];
      v135 = v25[4];

      v133 = *(v25 + 5);
      v130 = *(v25 + 4);

      v55 = *(v125 + 48);
      v136[2] = *(v125 + 32);
      v136[3] = v55;
      v56 = *(v125 + 80);
      v136[4] = *(v125 + 64);
      v136[5] = v56;
      v57 = *(v125 + 16);
      v136[0] = *v125;
      v136[1] = v57;
      *v125 = v127;
      *(v125 + 8) = v126;
      *(v125 + 16) = v26;
      *(v125 + 24) = v27;
      *(v125 + 32) = 0;
      *(v125 + 40) = v53;
      *(v125 + 48) = v130;
      *(v125 + 64) = v133;
      *(v125 + 80) = v135;
      *(v125 + 88) = v54;
      outlined destroy of TaskPriority?(v136, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd);
LABEL_48:
      v149 = 0;
      v147 = Int.seconds.getter(0);
      v148 = v147;
      v145 = 0;
      v146 = 0;
      if (*(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords))
      {

        _s19CollectionsInternal10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufC7LyricsX0F0C4WordV_SayAKGTt0g5(v58);
        v145 = v59;
        v146 = v60;
      }

      v144 = 0;
      v61 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7LyricsX06SyncedE8LineViewC0G0C_Tt0g5Tm(_swiftEmptyArrayStorage, specialized Array._copyContents(initializing:));
      v142 = 0;
      v143 = v61;
      v141 = _swiftEmptyArrayStorage;
      v62 = v5;
      v63 = SyncedLyricsLineView.SBS_TextContentView.TextView.updatedTextKitManager(with:)(a3, a4);
      v64 = [v63[2] usageBoundsForTextContainer];
      v66 = v65;
      MaxY = v67;
      v69 = (*(*v63 + 24))(v64);
      v70 = (v69 + 80);
      v71 = -*(v69 + 16);
      v72 = -1;
      while (v71 + v72 != -1)
      {
        if (++v72 >= *(v69 + 16))
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v73 = *(v70 - 5);
        v74 = *(v70 - 4);
        v75 = *(v70 - 3);
        v76 = *(v70 - 2);
        v77 = *(v70 - 1);
        v78 = *v70;
        v79 = *(v70 - 6);
        v80 = [v79 lineRef];
        if (!v80)
        {
          goto LABEL_90;
        }

        v81 = v80;
        v70 += 7;
        v82 = specialized closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.prepareVisualRepresentations(size:forceLayout:resetFlow:)(v79, v80, v77, v78, 0, &v148, v62, &v152, v73, v74, v75, v76, a3, a4, &v142, &v149, &v141, &v145, &v147, &v144);

        if ((v82 & 1) == 0)
        {

          outlined consume of NoticeDismissal?(v145, v146);
        }
      }

      v83 = v62;
      v84 = (v62 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText);
      if (*(v62 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
      {
        swift_beginAccess();
        if (v147 > v66)
        {
          v85 = v147;
        }

        else
        {
          v85 = v66;
        }

        v86 = v131;
        if (*(v62 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) == 2)
        {
          swift_beginAccess();
          v87 = v143;
          v88 = v143[2];
          if (v88)
          {
            v89 = 0;
            v90 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
            do
            {
              if (v89 >= v87[2])
              {
                goto LABEL_86;
              }

              v91 = v87[v89 + 4];
              if (*(v91 + 56) == 1)
              {
                v92 = *(v91 + 58) ^ v83[v90];
                v93 = *(v91 + 13);
                if (!v83[v90])
                {
                  goto LABEL_71;
                }
              }

              else
              {
                v92 = 0;
                v93 = *(v91 + 13);
                if (!v83[v90])
                {
                  goto LABEL_71;
                }
              }

              if (v92)
              {
LABEL_71:
                v94 = *(v91 + 11);
                v96 = *(v91 + 12);
                v97 = v85 - v96;
                v95 = *(v91 + 10);
                goto LABEL_72;
              }

              v95 = *(v91 + 10);
              v94 = *(v91 + 11);
              v96 = *(v91 + 12);
              v97 = v85 - v66 + v95;
LABEL_72:
              *(v91 + 10) = v97;
              v98 = v94;
              v99 = v96;
              v100 = v93;
              if (!CGRectEqualToRect(*(&v93 - 3), *&v95))
              {
                *(v91 + 16) = 0;
              }

              ++v89;
            }

            while (v88 != v89);
          }
        }

        swift_beginAccess();
        v101 = v143[2];
        if (v101)
        {
          v102 = v143[v101 + 3];

          if (v102)
          {
            MaxY = CGRectGetMaxY(*(v102 + 80));

            v66 = v85;
          }
        }

        v103 = *&v83[v131];
        if (v103)
        {
LABEL_78:
          v104 = v103[8];
          v105 = v103[9];
          v106 = v103[10];
          v107 = v103[11];
          v108 = *&v83[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
          v103[2] = *&v83[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
          *(v103 + 3) = v108;

          v109 = *(v84 + 1);
          v103[4] = *v84;
          *(v103 + 5) = v109;

          swift_beginAccess();
          v110 = v143;
          *(v103 + 6) = v142;
          *(v103 + 7) = v110;

          v103[8] = 0.0;
          v103[9] = 0.0;
          v103[10] = v66;
          v103[11] = MaxY;
          v155.origin.x = 0.0;
          v155.origin.y = 0.0;
          v154.origin.x = v104;
          v154.origin.y = v105;
          v154.size.width = v106;
          v154.size.height = v107;
          v155.size.width = v66;
          v155.size.height = MaxY;
          v111 = CGRectEqualToRect(v154, v155);
          SyncedLyricsLineView.SBS_TextContentView.TextView.updateTranslationLabel(size:forceLayout:)(!v111, a3);

          goto LABEL_81;
        }
      }

      else
      {
        v86 = v131;
        v103 = *(v62 + v131);
        if (v103)
        {
          goto LABEL_78;
        }
      }

      v112 = *&v83[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
      v113 = *&v83[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
      v114 = *v84;
      v115 = *(v84 + 1);
      swift_beginAccess();
      v116 = v142;
      v117 = v143;
      type metadata accessor for SyncedLyricsLineView.TextContainer();
      v118 = swift_allocObject();
      *(v118 + 96) = 0;
      *(v118 + 16) = v112;
      *(v118 + 24) = v113;
      *(v118 + 32) = v114;
      *(v118 + 40) = v115;
      *(v118 + 48) = v116;
      *(v118 + 56) = v117;
      *(v118 + 64) = 0;
      *(v118 + 72) = 0;
      *(v118 + 80) = v66;
      *(v118 + 88) = MaxY;
      *&v83[v86] = v118;

      SyncedLyricsLineView.SBS_TextContentView.TextView.updateTranslationLabel(size:forceLayout:)(1, a3);
LABEL_81:
      v120 = SyncedLyricsLineView.SBS_TextContentView.TextView.textLayoutDiffMetadata.modify();
      if (*(v119 + 8))
      {
        v121 = v119;
        swift_beginAccess();
        v122 = v151;
        *(v121 + 32) = v150;
        *(v121 + 40) = v122;
      }

      (v120)(v136, 0);
      [v83 setNeedsLayout];

      outlined consume of NoticeDismissal?(v145, v146);
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  type metadata accessor for SyncedLyricsLineView.Line();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _s19CollectionsInternal10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufC7LyricsX06SyncedF8LineViewC0H0C_SayAKGTt0g5(unint64_t a1)
{
  v5 = static MPMediaLibraryFilteringOptions.none.getter();
  DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX06SyncedQ8LineViewC0S0CG_Tt3g5Tm = _s19CollectionsInternal10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX06SyncedQ8LineViewC0S0CG_Tt3g5Tm(&v31, a1, 0, 1, v5, partial apply for specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:), specialized Array._copyContents(initializing:));
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v31;
  if (v31 == v8)
  {
    _ss15ContiguousArrayVyAByxGqd__c7ElementQyd__RszSTRd__lufC7LyricsX06SyncedD8LineViewC0F0C_SayAJGTt0g5Tm(a1, specialized Array._copyContents(initializing:));
    return DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX06SyncedQ8LineViewC0S0CG_Tt3g5Tm;
  }

  if (v31 < 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v7)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v1 = a1;
    }

    else
    {
      v1 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      goto LABEL_52;
    }

    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 < v9)
  {
    goto LABEL_48;
  }

  v11 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v9)
  {
    type metadata accessor for SyncedLyricsLineView.Line();

    v12 = 0;
    do
    {
      v13 = v12 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v12);
      v12 = v13;
    }

    while (v9 != v13);
    if (!v7)
    {
      goto LABEL_19;
    }

LABEL_21:

    v1 = _CocoaArrayWrapper.subscript.getter();
    i = v15;
    v3 = v16;
    if ((v16 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v7)
  {
    goto LABEL_21;
  }

LABEL_19:
  i = 0;
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v14 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v3 = (2 * v9) | 1;
LABEL_23:
  v29 = v14;
  v30 = a1 & 0xC000000000000001;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    v18 = _swiftEmptyArrayStorage;
  }

  v19 = v18[2];

  if (__OFSUB__(v3 >> 1, i))
  {
    goto LABEL_53;
  }

  if (v19 != ((v3 >> 1) - i))
  {
    goto LABEL_54;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v11 = a1 & 0xC000000000000001;
  if (i)
  {
    goto LABEL_30;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v17)
  {
    swift_unknownObjectRelease();
LABEL_30:
    v32 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX06SyncedQ8LineViewC0S0CG_Tt3g5Tm;
    v33 = i;
    if (v8 < v9)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v7)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20 < v8)
    {
      goto LABEL_50;
    }

    if (!v11)
    {

      goto LABEL_41;
    }

    if (v9 < v8)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_unknownObjectRelease();
    v14 = v29;
    v11 = v30;
LABEL_22:
    specialized _copyCollectionToContiguousArray<A>(_:)(v1, v14, i, v3, type metadata accessor for SyncedLyricsLineView.Line);
  }

  type metadata accessor for SyncedLyricsLineView.Line();

  v21 = v9;
  do
  {
    v22 = v21 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v21);
    v21 = v22;
  }

  while (v8 != v22);
LABEL_41:

  if (v7)
  {
    _CocoaArrayWrapper.subscript.getter();
    v23 = v25;
    v9 = v26;
    v24 = v27;
  }

  else
  {
    v23 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = (2 * v8) | 1;
  }

  specialized OrderedSet.append<A>(contentsOf:)(v23, v9, v24);
  swift_unknownObjectRelease();

  return v32;
}

uint64_t _s19CollectionsInternal10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufC7LyricsX06SyncedF8LineViewC4WordC_SayAKGTt0g5(unint64_t a1)
{
  v5 = static MPMediaLibraryFilteringOptions.none.getter();
  DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX06SyncedQ8LineViewC0S0CG_Tt3g5Tm = _s19CollectionsInternal10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX06SyncedQ8LineViewC0S0CG_Tt3g5Tm(&v31, a1, 0, 1, v5, partial apply for specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:), specialized Array._copyContents(initializing:));
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v31;
  if (v31 == v8)
  {
    _ss15ContiguousArrayVyAByxGqd__c7ElementQyd__RszSTRd__lufC7LyricsX06SyncedD8LineViewC0F0C_SayAJGTt0g5Tm(a1, specialized Array._copyContents(initializing:));
    return DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX06SyncedQ8LineViewC0S0CG_Tt3g5Tm;
  }

  if (v31 < 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v7)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v1 = a1;
    }

    else
    {
      v1 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      goto LABEL_52;
    }

    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 < v9)
  {
    goto LABEL_48;
  }

  v11 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v9)
  {
    type metadata accessor for SyncedLyricsLineView.Word();

    v12 = 0;
    do
    {
      v13 = v12 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v12);
      v12 = v13;
    }

    while (v9 != v13);
    if (!v7)
    {
      goto LABEL_19;
    }

LABEL_21:

    v1 = _CocoaArrayWrapper.subscript.getter();
    i = v15;
    v3 = v16;
    if ((v16 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v7)
  {
    goto LABEL_21;
  }

LABEL_19:
  i = 0;
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v14 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v3 = (2 * v9) | 1;
LABEL_23:
  v29 = v14;
  v30 = a1 & 0xC000000000000001;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    v18 = _swiftEmptyArrayStorage;
  }

  v19 = v18[2];

  if (__OFSUB__(v3 >> 1, i))
  {
    goto LABEL_53;
  }

  if (v19 != ((v3 >> 1) - i))
  {
    goto LABEL_54;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v11 = a1 & 0xC000000000000001;
  if (i)
  {
    goto LABEL_30;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v17)
  {
    swift_unknownObjectRelease();
LABEL_30:
    v32 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX06SyncedQ8LineViewC0S0CG_Tt3g5Tm;
    v33 = i;
    if (v8 < v9)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v7)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20 < v8)
    {
      goto LABEL_50;
    }

    if (!v11)
    {

      goto LABEL_41;
    }

    if (v9 < v8)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_unknownObjectRelease();
    v14 = v29;
    v11 = v30;
LABEL_22:
    specialized _copyCollectionToContiguousArray<A>(_:)(v1, v14, i, v3, type metadata accessor for SyncedLyricsLineView.Word);
  }

  type metadata accessor for SyncedLyricsLineView.Word();

  v21 = v9;
  do
  {
    v22 = v21 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v21);
    v21 = v22;
  }

  while (v8 != v22);
LABEL_41:

  if (v7)
  {
    _CocoaArrayWrapper.subscript.getter();
    v23 = v25;
    v9 = v26;
    v24 = v27;
  }

  else
  {
    v23 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = (2 * v8) | 1;
  }

  specialized OrderedSet.append<A>(contentsOf:)(v23, v9, v24);
  swift_unknownObjectRelease();

  return v32;
}

void _s19CollectionsInternal10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufC7LyricsX0F0C4WordV_SayAKGTt0g5(uint64_t a1)
{
  v2 = static MPMediaLibraryFilteringOptions.none.getter();
  v3 = _s19CollectionsInternal10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX0Q0C4WordVG_Tt3g5(&v17, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v17;
  if (v17 != v4)
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

    if (v4 < v17)
    {
LABEL_18:
      __break(1u);
    }

    else
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(a1, a1 + 32, 0, (2 * v17) | 1);
      v18 = v3;
      v19 = v6;
      if (*(a1 + 16) >= v4)
      {

        for (i = a1 + 56 * v5 + 48; ; i += 56)
        {
          if (v5 >= v4)
          {
            __break(1u);
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

          v8 = *(i + 16);
          v21 = *i;
          v22 = v8;
          v20 = *(i - 16);
          v23 = *(i + 32);
          v24 = v21;
          v25 = v8;
          v9 = v18;
          v10 = v19;
          v11 = *(v19 + 16);
          if (v18)
          {
            outlined init with copy of String(&v24, v16);
            outlined init with copy of TaskPriority?(&v25, v16, &_sSay7LyricsX0A0C8SyllableVGMd);

            specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v20, v10 + 32, v11, (v9 + 16), v9 + 32);
            v13 = v12;

            if ((v13 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else
          {
            specialized UnsafeBufferPointer<A>._firstIndex(of:)(&v20, v19 + 32, v11);
            v15 = v14;
            outlined init with copy of String(&v24, v16);
            outlined init with copy of TaskPriority?(&v25, v16, &_sSay7LyricsX0A0C8SyllableVGMd);
            if ((v15 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          specialized OrderedSet._appendNew(_:in:)(&v20);
LABEL_7:
          ++v5;
          outlined destroy of String(&v24);
          outlined destroy of TaskPriority?(&v25, &_sSay7LyricsX0A0C8SyllableVGMd);
          if (v4 == v5)
          {

            return;
          }
        }
      }
    }

    __break(1u);
  }
}

uint64_t specialized closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.prepareVisualRepresentations(size:forceLayout:resetFlow:)(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, char a5, double *a6, unint64_t a7, uint64_t a8, double a9, double a10, double MaxX, double y, double a13, CGFloat a14, uint64_t a15, os_log_t *a16, unint64_t *a17, uint64_t *a18, double *a19, void *a20)
{
  rect = *&a17;
  swift_beginAccess();
  v206 = a6;
  width = *a6 + a10;
  v213 = a7;
  v209 = (a7 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);

  v32 = String._bridgeToObjectiveC()();

  v210 = a1;
  v33 = [a1 characterRange];
  v35 = [v32 substringWithRange:{v33, v34}];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v221 = v36;
  v222 = v38;
  v219 = 10;
  v220 = 0xE100000000000000;
  v217 = 0;
  v218 = 0xE000000000000000;
  v183 = _sS2SSysWl_2();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v39 = String.trim()();

  swift_beginAccess();
  v40 = *(a8 + 8);
  v41 = *(v40 + 16);
  swift_beginAccess();
  v42 = 32;
  while (v41)
  {
    v43 = *(v40 + v42);
    if (*(*(a15 + 8) + 16))
    {
      if (*(v43 + 24) != v39._countAndFlagsBits || *(v43 + 32) != v39._object)
      {
        v42 += 8;
        --v41;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }
    }

    swift_beginAccess();

    v45 = swift_retain_n();
    specialized OrderedSet.remove(_:)(v45);
    swift_endAccess();

    goto LABEL_11;
  }

  v43 = 0;
LABEL_11:
  [v210 boundsWithType:0 options:{0, &type metadata for String, v183, v183, v183}];
  MinX = v46;
  v49 = v48;
  v50 = v213;
  v51 = *(v213 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words);
  v53 = *v209;
  v52 = v209[1];
  swift_beginAccess();
  v54 = *a16;
  v208 = a5;
  v203 = a3;
  if (a5)
  {
    v55 = 0;
  }

  else
  {
    v55 = a3;
  }

  if (v43)
  {
    swift_beginAccess();
    v56 = *(v43 + 16);
  }

  else
  {
    v56 = _swiftEmptyArrayStorage;
  }

  v57 = specialized SyncedLyricsLineView.SBS_TextContentView.TextView.wordVisualRepresentations(for:lineFrame:typographicOrigin:lyricsWords:text:wordRangeAdjustment:lineStartingIndex:existingRepresentations:)(a9, width, MaxX, y, MinX, v49, a2, v51, v53, v52, v54, v55, v56);
  v59 = v58;

  swift_beginAccess();
  *a17 = v57;

  v60 = a16;
  swift_beginAccess();
  *a16 = v59;
  v216 = _swiftEmptyArrayStorage;
  v61 = String.lowercased()();
  v62 = v213 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText;
  if (*(v213 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
  {
    v63 = String.lowercased()();
    if (v61._countAndFlagsBits == v63._countAndFlagsBits && v61._object == v63._object)
    {

LABEL_133:
      v65 = _swiftEmptyArrayStorage;
LABEL_134:
      if (*(v50 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) != 2)
      {
        goto LABEL_196;
      }

      v78 = *(v50 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager);
      if (*&v78 == 0.0)
      {
        goto LABEL_196;
      }

      v80 = width;
      v194 = y;
      v131 = *(v78 + 16);

      [v131 usageBoundsForTextContainer];
      x = v229.origin.x;
      y = v229.origin.y;
      width = v229.size.width;
      height = v229.size.height;
      MinX = CGRectGetWidth(v229);
      if ((v57 & 0x8000000000000000) != 0 || (v57 & 0x4000000000000000) != 0)
      {
LABEL_164:
        v132 = _CocoaArrayWrapper.endIndex.getter();
        if (!v132)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v132 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v132)
        {
LABEL_146:
          if (vabdd_f64(a13, MinX) < 1.0)
          {
            y = v194;
            width = v80;
            goto LABEL_195;
          }

          goto LABEL_180;
        }
      }

      v87 = __OFSUB__(v132, 1);
      v133 = v132 - 1;
      if (v87)
      {
        goto LABEL_169;
      }

      if ((v57 & 0xC000000000000001) != 0)
      {
        goto LABEL_170;
      }

      if ((v133 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v133 < *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v134 = *(v57 + 8 * v133 + 32);

        goto LABEL_144;
      }

      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v64)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  if (!*(v62 + 8))
  {
    goto LABEL_133;
  }

  swift_beginAccess();
  v65 = _swiftEmptyArrayStorage;
  v195 = a18[1];
  if (!v195)
  {
    goto LABEL_134;
  }

  v66 = *a18;
  v196 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
  v186 = *(v213 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection);
  if (v186 == 2)
  {

    outlined copy of NoticeDismissal?(v66, v195);

    goto LABEL_133;
  }

  swift_beginAccess();
  v67 = v66;
  v68 = *a17;

  v184 = v67;
  outlined copy of NoticeDismissal?(v67, v195);

  v69 = a3;
  v70 = a4;
  if (v208)
  {
    v69 = CTLineRef.stringRange.getter();
    v70 = v71;
  }

  swift_beginAccess();
  SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:)(v184, v195, v68, v57, v69, v70, *a16, &v221, a13, a14);

  v72 = v222;
  if (!v222)
  {

    SyncedLyricsLineView.SBS_TextContentView.TextView.prepareVisualRepresentations(size:forceLayout:resetFlow:)(0, 1, a13, a14);

    return 0;
  }

  if (v222 == 1)
  {

    goto LABEL_133;
  }

  MinX = v224;
  v74 = v223;
  v75 = v221;
  swift_beginAccess();
  v65 = *a18;
  v76 = a18[1];
  *a18 = v75;
  a18[1] = v72;

  outlined consume of NoticeDismissal?(v65, v76);
  v193 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment;
  if (!*(v213 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) || *(v213 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction) == (v186 & 1))
  {
    MaxX = MinX + MaxX;
  }

  v77 = *(v74 + 16);
  if (!v77)
  {

    outlined destroy of TaskPriority?(&v221, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C21TransliterationResult33_2B1CF170FA12E5118C57D48B547982CALLOSgMd);
    goto LABEL_133;
  }

  v188 = v77 != 1;
  v192 = v213 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v185 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
  v191 = v74 + 32;
  swift_beginAccess();
  v78 = a19;
  swift_beginAccess();
  swift_beginAccess();
  v79 = 0;
  v80 = a9;
  v187 = width;
  x = width;
  rect = MaxX;
  height = y;
  v189 = v77;
  v190 = v74;
  v194 = y;
  while (1)
  {
    if (v79 >= *(v74 + 16))
    {
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    v83 = (v191 + 16 * v79);
    v78 = *v83;
    v84 = v83[1];

    v202 = v84;
    v225.origin.x = CTLineRef.bounds.getter();
    width = CGRectGetHeight(v225) + *(v192 + 328);
    *v206 = *v206 + width;
    v85 = v78 >> 62;
    if (*(v50 + v193) != 2 || *(v50 + v185) == (v186 & 1))
    {
LABEL_52:
      v227.origin.x = a9;
      v227.origin.y = v187;
      v227.size.width = MaxX;
      v227.size.height = y;
      MinX = CGRectGetMinX(v227);
      v228.origin.x = v80;
      v228.origin.y = x;
      v228.size.width = rect;
      v228.size.height = height;
      x = CGRectGetMaxY(v228);
      height = MinX;
      rect = MaxX;
      goto LABEL_53;
    }

    if (v85)
    {
      v86 = _CocoaArrayWrapper.endIndex.getter();
      if (!v86)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v86 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v86)
      {
        goto LABEL_52;
      }
    }

    v87 = __OFSUB__(v86, 1);
    v88 = v86 - 1;
    if (v87)
    {
      goto LABEL_173;
    }

    if ((v78 & 0xC000000000000001) != 0)
    {
      v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v88 & 0x8000000000000000) != 0)
      {
        goto LABEL_174;
      }

      if (v88 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_175;
      }

      v89 = *(v78 + 8 * v88 + 32);
    }

    MinX = CGRectGetMaxX(*(v89 + 176));
    v226.origin.x = v80;
    v226.origin.y = x;
    v226.size.width = rect;
    v226.size.height = height;
    x = CGRectGetMaxY(v226);

    if (*a19 < MinX)
    {
      *a19 = MinX;
    }

    height = a13 - MinX;
    rect = MinX;
    y = v194;
LABEL_53:
    v215 = v78;
    v90 = *(v50 + v196);
    v201 = v79;
    if (v90 == 2)
    {

      v91 = v78;
    }

    else
    {

      v91 = v78;
      if (v90)
      {
        specialized MutableCollection<>.reverse()();
        v91 = v215;
      }
    }

    if (v91 >> 62)
    {
      break;
    }

    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_59;
    }

LABEL_76:

    v95 = 0;
    v99 = 0;
LABEL_77:
    v100 = String._bridgeToObjectiveC()();
    v199 = v95;
    v200 = v99;
    v65 = [v100 substringWithRange:{v99, v95}];

    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v197 = v102;
    v198 = v101;

    type metadata accessor for SyncedLyricsLineView.Line();
    v50 = swift_allocObject();
    *(v50 + 112) = 0;
    *(v50 + 120) = 0;
    *(v50 + 128) = 0;
    *(v50 + 16) = *&v78;
    if (v85)
    {
      v103 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v103 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v104 = _swiftEmptyArrayStorage;
    v105 = v103 & ~(v103 >> 63);
    if (v103)
    {
      v214[0] = _swiftEmptyArrayStorage;

      _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0(0, v103 & ~(v103 >> 63), 0);
      if (v103 < 0)
      {
        goto LABEL_162;
      }

      v104 = v214[0];
      if ((v78 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v103; ++i)
        {
          v107 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
          if (*(v107 + 16))
          {
            v108 = *(v107 + 32);
          }

          else
          {
            v108 = 0;
          }

          swift_unknownObjectRelease();
          v214[0] = v104;
          v110 = v104[2];
          v109 = v104[3];
          if (v110 >= v109 >> 1)
          {
            _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v109 > 1), v110 + 1, 1);
            v104 = v214[0];
          }

          v104[2] = (v110 + 1);
          v104[v110 + 4] = v108;
        }
      }

      else
      {
        v111 = v78 + 32;
        v112 = v103;
        do
        {
          v113 = *(*v111 + 48);
          if (*(v113 + 16))
          {
            v114 = *(v113 + 32);
          }

          else
          {
            v114 = 0;
          }

          v214[0] = v104;
          v116 = v104[2];
          v115 = v104[3];
          if (v116 >= v115 >> 1)
          {
            _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v115 > 1), v116 + 1, 1);
            v104 = v214[0];
          }

          v104[2] = (v116 + 1);
          v104[v116 + 4] = v114;
          v111 += 8;
          --v112;
        }

        while (v112);
      }

      v60 = a16;
      v105 = v103 & ~(v103 >> 63);
    }

    else
    {
    }

    v214[0] = v104;

    v65 = 0;
    specialized MutableCollection<>.sort(by:)(v214);

    if (v214[0][2])
    {
      MinX = *(v214[0] + 4);
    }

    else
    {
      MinX = 0.0;
    }

    *(v50 + 64) = MinX;
    if (v103)
    {
      v214[0] = _swiftEmptyArrayStorage;
      _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0(0, v105, 0);
      if (v103 < 0)
      {
        goto LABEL_163;
      }

      v117 = v214[0];
      if ((v78 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != v103; ++j)
        {
          v119 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
          v120 = *(v119 + 16);
          if (v120)
          {
            v121 = *(v119 + 56 * v120 - 16);
          }

          else
          {
            v121 = 0;
          }

          swift_unknownObjectRelease();
          v214[0] = v117;
          v123 = v117[2];
          v122 = v117[3];
          if (v123 >= v122 >> 1)
          {
            _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v122 > 1), v123 + 1, 1);
            v117 = v214[0];
          }

          v117[2] = (v123 + 1);
          v117[v123 + 4] = v121;
        }
      }

      else
      {
        v124 = v78 + 32;
        do
        {
          v125 = *(*v124 + 48);
          v126 = *(v125 + 16);
          if (v126)
          {
            v127 = *(v125 + 56 * v126 - 16);
          }

          else
          {
            v127 = 0;
          }

          v214[0] = v117;
          v129 = v117[2];
          v128 = v117[3];
          if (v129 >= v128 >> 1)
          {
            _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v128 > 1), v129 + 1, 1);
            v117 = v214[0];
          }

          v117[2] = (v129 + 1);
          v117[v129 + 4] = v127;
          v124 += 8;
          --v103;
        }

        while (v103);
      }

      v60 = a16;
    }

    else
    {
      v117 = _swiftEmptyArrayStorage;
    }

    v214[0] = v117;

    specialized MutableCollection<>.sort(by:)(v214);
    v74 = v190;

    v130 = v214[0][2];
    if (v130)
    {
      MinX = *&v214[0][v130 + 3];
    }

    else
    {
      MinX = 0.0;
    }

    v65 = v198;

    *(v50 + 24) = v198;
    *(v50 + 32) = v197;
    *(v50 + 40) = v200;
    *(v50 + 48) = v199;
    *(v50 + 72) = MinX;
    *(v50 + 80) = height;
    v80 = height;
    *(v50 + 88) = x;
    *(v50 + 96) = rect;
    *(v50 + 104) = width;
    *(v50 + 56) = 1;
    *(v50 + 57) = v188;
    *(v50 + 58) = v186 & 1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v216 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v216 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v65 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v79 = v201 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    height = width;
    v50 = v213;
    if (v201 + 1 == v189)
    {
      v65 = v216;

      outlined destroy of TaskPriority?(&v221, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C21TransliterationResult33_2B1CF170FA12E5118C57D48B547982CALLOSgMd);
      width = v187;
      goto LABEL_134;
    }
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_76;
  }

LABEL_59:
  v65 = v91 & 0xC000000000000001;
  if ((v91 & 0xC000000000000001) != 0)
  {
    v92 = v60;

    v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_161;
    }

    v92 = v60;
    v50 = *(v91 + 32);
  }

  v60 = *(v50 + 88);
  if (!(v91 >> 62))
  {
    v93 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v93)
    {
      goto LABEL_64;
    }

LABEL_68:

    v95 = 0;
LABEL_74:
    v99 = v60;
    v60 = v92;
    v85 = v78 >> 62;
    goto LABEL_77;
  }

  v93 = _CocoaArrayWrapper.endIndex.getter();
  if (!v93)
  {
    goto LABEL_68;
  }

LABEL_64:
  v87 = __OFSUB__(v93, 1);
  v94 = v93 - 1;
  if (!v87)
  {
    if (v65)
    {
      v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v94 & 0x8000000000000000) != 0)
      {
        goto LABEL_176;
      }

      if (v94 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_177;
      }

      v65 = *(v91 + 8 * v94 + 32);
    }

    v96 = *(v65 + 88);
    v97 = *(v65 + 96);

    v87 = __OFADD__(v96, v97);
    v98 = v96 + v97;
    if (v87)
    {
      goto LABEL_167;
    }

    v65 = *(v50 + 88);

    v95 = v98 - v65;
    if (__OFSUB__(v98, v65))
    {
      goto LABEL_168;
    }

    goto LABEL_74;
  }

  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_144:
  if (vabdd_f64(CGRectGetMaxX(*(v134 + 176)), MaxX) < 1.0)
  {

    goto LABEL_146;
  }

  MaxX = CGRectGetMaxX(*(v134 + 176));
  if (v65 >> 62)
  {
LABEL_178:
    v135 = _CocoaArrayWrapper.endIndex.getter();
    if (!v135)
    {
      goto LABEL_179;
    }

LABEL_150:
    rect = *&v78;
    if (v135 < 1)
    {
      goto LABEL_266;
    }

    v136 = 0;
    v137 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
    v138 = v65 & 0xC000000000000001;
    v139 = v65;
    do
    {
      if (v138)
      {
        v140 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v140 = *(v65 + 8 * v136 + 32);
      }

      if (*(v140 + 58) == *(v213 + v137))
      {
        v230.origin.x = *(v140 + 80);
        v230.origin.y = *(v140 + 88);
        v238.size.width = *(v140 + 96);
        v230.size.height = *(v140 + 104);
        *(v140 + 96) = MaxX;
        v230.size.width = MaxX;
        v238.origin.x = v230.origin.x;
        v238.origin.y = v230.origin.y;
        v238.size.height = v230.size.height;
        if (!CGRectEqualToRect(v230, v238))
        {
          *(v140 + 128) = 0;
        }
      }

      ++v136;
      v65 = v139;
    }

    while (v135 != v136);

    v60 = a16;
    v50 = v213;
    *&v78 = rect;
    goto LABEL_180;
  }

  v135 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v135)
  {
    goto LABEL_150;
  }

LABEL_179:

  v50 = v213;
LABEL_180:
  v231.origin.x = x;
  v231.origin.y = y;
  v231.size.width = width;
  v231.size.height = height;
  v141 = CGRectGetWidth(v231);
  v232.origin.x = a9;
  width = v80;
  v232.origin.y = v80;
  v232.size.width = MaxX;
  y = v194;
  v232.size.height = v194;
  v142 = CGRectGetWidth(v232);
  v233.origin.x = a9;
  v233.origin.y = v80;
  v233.size.width = MaxX;
  v233.size.height = v194;
  v143 = CGRectGetMaxX(v233) - a13;
  if (v143 > 0.0)
  {
    a9 = v143;
  }

  else
  {
    a9 = 0.0;
  }

  MinX = v141 - v142;
  if (v65 >> 62)
  {
    goto LABEL_263;
  }

  v144 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  a9 = MinX + a9;
  if (v144)
  {
    goto LABEL_185;
  }

LABEL_195:
  while (2)
  {
    while (2)
    {

LABEL_196:
      CTLineRef.stringRange.getter();
      v78 = v150;
      v151 = a20;
      swift_beginAccess();
      if (__OFADD__(*a20, v78))
      {
        __break(1u);
        goto LABEL_259;
      }

      *a20 += v78;
      if (!v43)
      {
        v210 = [v210 characterRange];
        rect = v154;
        v151 = *(v50 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction);
        type metadata accessor for SyncedLyricsLineView.Line();
        *&v78 = COERCE_DOUBLE(swift_allocObject());
        *(v78 + 112) = 0;
        *(v78 + 120) = 0;
        *(v78 + 128) = 0;
        *(v78 + 16) = v57;
        if (!(v57 >> 62))
        {
          v60 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_203;
        }

LABEL_259:
        v60 = _CocoaArrayWrapper.endIndex.getter();
LABEL_203:
        v212 = v151;
        v213 = v65;
        if (v60)
        {
          v214[0] = _swiftEmptyArrayStorage;

          _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0(0, v60 & ~(v60 >> 63), 0);
          if (v60 < 0)
          {
            goto LABEL_261;
          }

          v155 = v214[0];
          if ((v57 & 0xC000000000000001) != 0)
          {
            for (k = 0; k != v60; ++k)
            {
              v157 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
              if (*(v157 + 16))
              {
                v158 = *(v157 + 32);
              }

              else
              {
                v158 = 0;
              }

              swift_unknownObjectRelease();
              v214[0] = v155;
              v160 = v155[2];
              v159 = v155[3];
              if (v160 >= v159 >> 1)
              {
                _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v159 > 1), v160 + 1, 1);
                v155 = v214[0];
              }

              v155[2] = (v160 + 1);
              v155[v160 + 4] = v158;
            }
          }

          else
          {
            v168 = v57 + 32;
            v50 = v60;
            do
            {
              v169 = *(*v168 + 48);
              if (*(v169 + 16))
              {
                v170 = *(v169 + 32);
              }

              else
              {
                v170 = 0;
              }

              v214[0] = v155;
              v172 = v155[2];
              v171 = v155[3];
              if (v172 >= v171 >> 1)
              {
                _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v171 > 1), v172 + 1, 1);
                v155 = v214[0];
              }

              v155[2] = (v172 + 1);
              v155[v172 + 4] = v170;
              v168 += 8;
              --v50;
            }

            while (v50);
          }
        }

        else
        {

          v155 = _swiftEmptyArrayStorage;
        }

        v214[0] = v155;

        v65 = 0;
        specialized MutableCollection<>.sort(by:)(v214);

        if (v214[0][2])
        {
          MinX = *(v214[0] + 4);
        }

        else
        {
          MinX = 0.0;
        }

        *(v78 + 64) = MinX;
        if (v60)
        {
          v214[0] = _swiftEmptyArrayStorage;
          _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0(0, v60 & ~(v60 >> 63), 0);
          if (v60 < 0)
          {
            goto LABEL_262;
          }

          v161 = v214[0];
          if ((v57 & 0xC000000000000001) != 0)
          {
            v162 = 0;
            v50 = 56;
            do
            {
              v163 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
              v164 = *(v163 + 16);
              if (v164)
              {
                v165 = *(v163 + 56 * v164 - 16);
              }

              else
              {
                v165 = 0;
              }

              swift_unknownObjectRelease();
              v214[0] = v161;
              v167 = v161[2];
              v166 = v161[3];
              if (v167 >= v166 >> 1)
              {
                _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v166 > 1), v167 + 1, 1);
                v161 = v214[0];
              }

              ++v162;
              v161[2] = (v167 + 1);
              v161[v167 + 4] = v165;
            }

            while (v60 != v162);
          }

          else
          {
            v50 = 32;
            do
            {
              v173 = *(*(v57 + v50) + 48);
              v174 = *(v173 + 16);
              if (v174)
              {
                v175 = *(v173 + 56 * v174 - 16);
              }

              else
              {
                v175 = 0;
              }

              v214[0] = v161;
              v177 = v161[2];
              v176 = v161[3];
              if (v177 >= v176 >> 1)
              {
                _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v176 > 1), v177 + 1, 1);
                v161 = v214[0];
              }

              v161[2] = (v177 + 1);
              v161[v177 + 4] = v175;
              v50 += 8;
              --v60;
            }

            while (v60);
          }
        }

        else
        {

          v161 = _swiftEmptyArrayStorage;
        }

        v214[0] = v161;

        specialized MutableCollection<>.sort(by:)(v214);
        v60 = a16;
        v153 = a19;

        v178 = v214[0][2];
        if (v178)
        {
          v179 = v214[0][v178 + 3];
        }

        else
        {
          v179 = 0;
        }

        v65 = v213;

        *(v78 + 24) = v39;
        *(v78 + 40) = v210;
        *(v78 + 48) = rect;
        *(v78 + 72) = v179;
        *(v78 + 80) = a9;
        *(v78 + 88) = width;
        *(v78 + 96) = MaxX;
        *(v78 + 104) = y;
        *(v78 + 56) = 0;
        *(v78 + 58) = v212;
        swift_beginAccess();
        specialized OrderedSet._append(_:)(v78);
        swift_endAccess();

        goto LABEL_250;
      }

      swift_beginAccess();
      *(v43 + 16) = v57;

      SyncedLyricsLineView.Line.words.didset();
      *(v43 + 24) = v39;

      v240 = *(v43 + 80);
      *(v43 + 80) = a9;
      *(v43 + 88) = width;
      *(v43 + 96) = MaxX;
      *(v43 + 104) = y;
      v235.origin.x = a9;
      v235.origin.y = width;
      v235.size.width = MaxX;
      v235.size.height = y;
      if (!CGRectEqualToRect(v235, v240))
      {
        *(v43 + 128) = 0;
      }

      *(v43 + 40) = [v210 characterRange];
      *(v43 + 48) = v152;
      swift_beginAccess();
      specialized OrderedSet._append(_:)(v43);
      swift_endAccess();
      swift_beginAccess();
      specialized OrderedSet._append(_:)(v43);
      swift_endAccess();

      v153 = a19;
LABEL_250:
      v236.origin.x = a9;
      v236.origin.y = width;
      v236.size.width = MaxX;
      v236.size.height = y;
      MinX = CGRectGetWidth(v236);
      swift_beginAccess();
      if (*v153 < MinX)
      {
        v237.origin.x = a9;
        v237.origin.y = width;
        v237.size.width = MaxX;
        v237.size.height = y;
        MinX = CGRectGetWidth(v237);
        swift_beginAccess();
        *v153 = MinX;
      }

      swift_beginAccess();
      specialized OrderedSet.append<A>(contentsOf:)(v65);
      swift_endAccess();

      if (v208)
      {

        return 1;
      }

      v180 = String._bridgeToObjectiveC()();

      v181 = [v180 substringWithRange:{v203, a4}];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v182;

      *&v78 = COERCE_DOUBLE(StringProtocol.contains<A>(_:)());

      if ((v78 & 1) == 0)
      {
        return 1;
      }

      swift_beginAccess();
      if (!__OFADD__(*v60, 1))
      {
        ++*v60;
        return 1;
      }

      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      v144 = _CocoaArrayWrapper.endIndex.getter();
      a9 = MinX + a9;
      if (!v144)
      {
        continue;
      }

      break;
    }

LABEL_185:
    rect = *&v78;
    if (v144 >= 1)
    {
      v145 = 0;
      v146 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
      v147 = v65 & 0xC000000000000001;
      v148 = v65;
      do
      {
        if (v147)
        {
          v149 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v149 = *(v65 + 8 * v145 + 32);
        }

        if (*(v149 + 58) == *(v213 + v146))
        {
          v234.size.width = *(v149 + 96);
          v234.size.height = *(v149 + 104);
          v239.origin.x = *(v149 + 80);
          v234.origin.y = *(v149 + 88);
          *(v149 + 80) = a9;
          v234.origin.x = a9;
          v239.origin.y = v234.origin.y;
          v239.size.width = v234.size.width;
          v239.size.height = v234.size.height;
          if (!CGRectEqualToRect(v234, v239))
          {
            *(v149 + 128) = 0;
          }
        }

        ++v145;
        v65 = v148;
      }

      while (v144 != v145);
      v50 = v213;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_266:
  __break(1u);

  __break(1u);
  return result;
}

int64_t specialized OrderedSet.remove(_:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v3 + 32;
  v5 = *(v3 + 16);
  if (*v1)
  {
    result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v4, v5, *v1 + 16, *v1 + 32);
    if ((v8 & 1) == 0)
    {
      return specialized OrderedSet._removeExistingMember(at:in:)(result, v7, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
    }

    return 0;
  }

  else
  {
    result = 0;
    if (v5)
    {
      while (*(v4 + 8 * result) != a1)
      {
        if (v5 == ++result)
        {
          return 0;
        }
      }

      v7 = 0;
      return specialized OrderedSet._removeExistingMember(at:in:)(result, v7, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
    }
  }

  return result;
}

void specialized MutableCollection<>.reverse()()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = v2 - 1;
    while (!__OFSUB__(v2, 1))
    {
      if (v3 < 1)
      {
        return;
      }

      v4 = 0;
      v5 = v2 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v6 = v2 - 1;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_10;
        }

        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v7)
        {
          break;
        }

        if (v6 >= v7)
        {
          goto LABEL_25;
        }

        v8 = *(v1 + 8 * v4 + 32);
        v9 = *(v1 + 8 * v2 + 24);

LABEL_10:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v10 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v10) = 0;
        }

        v11 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v9;

        if ((v1 & 0x8000000000000000) != 0 || v10)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v11 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        if (v6 >= *(v11 + 16))
        {
          goto LABEL_24;
        }

        *(v11 + 8 * v2 + 24) = v8;

        *v0 = v1;
        if (v5 == v4)
        {
          goto LABEL_26;
        }

        ++v4;
        v12 = v2 - 2;
        --v2;
        if (v4 >= v12)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }

      v2 = _CocoaArrayWrapper.endIndex.getter();
      v3 = v2 - 1;
    }

    __break(1u);
  }
}

{
  v1 = *v0;
  v2 = (*v0)[2];
  if (v2 >= 2)
  {
    v3 = v2 - 1;
    v4 = 56 * v2 - 24;
    v5 = 10;
    v6 = 1;
    while (1)
    {
      v7 = v1[2];
      if (v6 - 1 >= v7)
      {
        break;
      }

      if (v3 >= v7)
      {
        goto LABEL_12;
      }

      v21 = *&v1[v5 - 6];
      v8 = v1[v5 - 3];
      v9 = v1[v5 - 2];
      v19 = v1[v5 - 1];
      v20 = v1[v5 - 4];
      v18 = v1[v5];
      v10 = *(v1 + v4);
      v11 = *(v1 + v4 + 8);
      v12 = *(v1 + v4 + 24);
      v13 = *(v1 + v4 + 32);
      v23 = *(v1 + v4 + 40);
      v24 = *(v1 + v4 + 16);
      v22 = *(v1 + v4 + 48);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
      }

      if (v6 - 1 >= v1[2])
      {
        goto LABEL_13;
      }

      v14 = &v1[v5];
      *(v14 - 6) = v10;
      *(v14 - 5) = v11;
      *(v14 - 4) = v24;
      *(v14 - 3) = v12;
      *(v14 - 2) = v13;
      *(v14 - 1) = v23;
      *v14 = v22;

      if (v3 >= v1[2])
      {
        goto LABEL_14;
      }

      v15 = v1 + v4;
      *v15 = v21;
      *(v15 + 2) = v20;
      *(v15 + 3) = v8;
      *(v15 + 4) = v9;
      *(v15 + 5) = v19;
      v15[48] = v18;

      *v17 = v1;
      --v3;
      v4 -= 56;
      v5 += 7;
      if (v6++ >= v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t specialized MutableCollection<>.reverse()()
{
  result = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return result;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return result;
  }

  v4 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  v21 = v0;
  if (result)
  {
    v5 = v4;
  }

  else
  {
LABEL_18:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v5 = result;
  }

  v6 = 0;
  v7 = 56 * v2;
  v8 = 1;
  while (1)
  {
    if (v8 - 1 == v3)
    {
      goto LABEL_7;
    }

    v10 = *(v5 + 16);
    if (v8 - 1 >= v10)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v3 >= v10)
    {
      goto LABEL_17;
    }

    v11 = v5 + v6;
    v12 = *(v5 + v6 + 48);
    v22 = *(v5 + v6 + 56);
    v23 = *(v5 + v6 + 32);
    v13 = *(v5 + v6 + 72);
    v14 = *(v5 + v6 + 80);
    v2 = v5 + v7;
    v16 = *(v5 + v7 - 8);
    v15 = *(v5 + v7);
    v18 = *(v5 + v7 + 8);
    v17 = *(v5 + v7 + 16);
    v19 = *(v5 + v7 + 24);
    *(v11 + 32) = *(v5 + v7 - 24);
    *(v11 + 48) = v16;
    *(v11 + 56) = v15;
    *(v11 + 64) = v18;
    *(v11 + 72) = v17;
    *(v11 + 80) = v19;
    v20 = v5;
    v24 = *(v5 + 16);

    if (v3 >= v24)
    {
      break;
    }

    v4 = *v2;
    *(v2 - 24) = v23;
    *(v2 - 8) = v12;
    *v2 = v22;
    *(v2 + 16) = v13;
    *(v2 + 24) = v14;

    v5 = v20;
LABEL_7:
    --v3;
    v7 -= 56;
    v6 += 56;
    if (v8++ >= v3)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  *v21 = v5;
  return result;
}

unint64_t specialized OrderedSet.append<A>(contentsOf:)(unint64_t result)
{
  v2 = v1;
  v20 = result;
  if (result >> 62)
  {
LABEL_35:
    result = _CocoaArrayWrapper.endIndex.getter();
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }
  }

  v4 = 0;
  while (1)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = __OFADD__(v4++, 1);
      if (v6)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v4 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v5 = *(v20 + 32 + 8 * v4);

      v6 = __OFADD__(v4++, 1);
      if (v6)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    v8 = *v2;
    v7 = v2[1];
    v9 = (v7 + 32);
    v10 = *(v7 + 16);
    if (*v2)
    {
      specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v5, v9, v10, v8 + 16, v8 + 32);
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (v10)
    {
      while (*v9 != v5)
      {
        ++v9;
        if (!--v10)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_6;
    }

LABEL_17:

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v12 = v2[1];
    v13 = *(v12 + 16);
    if (!v8)
    {
      if (v13 > 0xF)
      {
        v14 = 0;
LABEL_24:
        v15 = static _HashTable.scale(forCapacity:)();
        if (v14 <= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = v14;
        }

        v17 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy7LyricsX06SyncedO8LineViewC0Q0CG_Tt2g5Tm(v12, v16, 0, v14);

        *v2 = v17;
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() >= v13)
    {
      break;
    }

    v14 = *(v8 + 24) & 0x3FLL;
    if (v13 > 0xF || v14)
    {
      goto LABEL_24;
    }

    *v2 = 0;
LABEL_7:
    if (v4 == v3)
    {
      return result;
    }
  }

  result = swift_isUniquelyReferenced_native();
  v18 = *v2;
  if ((result & 1) == 0)
  {
    if (!v18)
    {
      goto LABEL_38;
    }

    v19 = _HashTable.copy()();

    *v2 = v19;
    v18 = v19;
  }

  if (v18)
  {
    _HashTable.UnsafeHandle.subscript.setter();
LABEL_6:

    goto LABEL_7;
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

id SyncedLyricsLineView.SBS_TextContentView.TextView.translationAttributedText(with:)(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v54 = a1;
  v3 = type metadata accessor for Locale.Language();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  __chkstk_darwin();
  v7 = &v47 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
  __chkstk_darwin();
  v9 = &v47 - v8;
  v10 = v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v11 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 288);
  v12 = 264;
  if (!*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
  {
    v12 = 272;
  }

  v13 = *(v10 + v12);
  v14 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 288);
  v52 = v14;
  if (!v11)
  {
    if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) == 1)
    {
      v15 = 360;
      if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind))
      {
        v15 = 384;
      }
    }

    else
    {
      v15 = 368;
    }

    v14 = *(v10 + v15);
    v16 = v14;
  }

  v50 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd_0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EB0;
  v51 = NSFontAttributeName;
  *(inited + 32) = NSFontAttributeName;
  v53 = inited + 32;
  v18 = type metadata accessor for UIAction(0, &_sSo6UIFontCML_1);
  *(inited + 40) = v13;
  *(inited + 64) = v18;
  *(inited + 72) = NSForegroundColorAttributeName;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIColorCSgMd_0);
  *(inited + 80) = v14;
  *(inited + 104) = v19;
  *(inited + 112) = NSLanguageIdentifierAttributeName;
  v20 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v2 + v20, v7, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  if ((*(v4 + 48))(v7, 1, v3))
  {
    v21 = v14;
    v22 = NSLanguageIdentifierAttributeName;
    v23 = v13;
    v24 = v52;
    v25 = v51;
    v26 = NSForegroundColorAttributeName;
    outlined destroy of TaskPriority?(v7, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    v27 = v13;
LABEL_14:
    v38 = (inited + 120);
    *(inited + 144) = &type metadata for String;
    goto LABEL_15;
  }

  v28 = v49;
  (*(v4 + 16))(v49, v7, v3);
  v48 = v14;
  v29 = NSLanguageIdentifierAttributeName;
  v30 = v13;
  v31 = v13;
  v32 = v52;
  v33 = v51;
  v34 = NSForegroundColorAttributeName;
  outlined destroy of TaskPriority?(v7, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  v35 = v50;
  Locale.Language.languageCode.getter();
  (*(v4 + 8))(v28, v3);
  v36 = type metadata accessor for Locale.LanguageCode();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    outlined destroy of TaskPriority?(v35, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
    v27 = v30;
    v21 = v48;
    goto LABEL_14;
  }

  v45 = Locale.LanguageCode.identifier.getter();
  v39 = v46;
  (*(v37 + 8))(v35, v36);
  v38 = (inited + 120);
  *(inited + 144) = &type metadata for String;
  if (v39)
  {
    *v38 = v45;
    v27 = v30;
    v21 = v48;
    goto LABEL_16;
  }

  v27 = v30;
  v21 = v48;
LABEL_15:
  *v38 = 0;
  v39 = 0xE000000000000000;
LABEL_16:
  *(inited + 128) = v39;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n_0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd_0);
  swift_arrayDestroy();
  v40 = objc_allocWithZone(NSAttributedString);
  v41 = String._bridgeToObjectiveC()();
  _sSo21NSAttributedStringKeyaMa_1(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&_sSo21NSAttributedStringKeyaABSHSCWL_1, _sSo21NSAttributedStringKeyaMa_1);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v43 = [v40 initWithString:v41 attributes:isa];

  return v43;
}

void SyncedLyricsLineView.SBS_TextContentView.TextView.updateTranslationLabel(size:forceLayout:)(char a1, double a2)
{
  v3 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
  v5 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8];
  if (!v5)
  {
    goto LABEL_11;
  }

  v8 = *v4;
  v9 = String.lowercased()();
  v10 = String.lowercased()();
  if (v9._countAndFlagsBits == v10._countAndFlagsBits && v9._object == v10._object)
  {

    goto LABEL_10;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {

LABEL_10:

LABEL_11:
    v13 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v14 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    *v13 = 1;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
LABEL_12:

    outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate?(v14);
    return;
  }

  v15 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
  v16 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel];
  if (!v16 || (v17 = [v16 attributedText]) == 0)
  {
    v23 = v4[1];
LABEL_24:
    if (v23)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v18 = v17;
  v19 = [v17 string];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = v4[1];
  if (!v22)
  {
    goto LABEL_24;
  }

  if (!v23)
  {

    goto LABEL_30;
  }

  if (v20 == *v4 && v23 == v22)
  {

    if (a1)
    {
      goto LABEL_30;
    }

LABEL_26:

    return;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v42 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  if ((a1 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_30:
  v24 = *&v2[v15];
  if (v24)
  {
    v25 = *&v2[v15];
  }

  else
  {
    v25 = [objc_allocWithZone(UILabel) init];
    [v25 setNumberOfLines:0];
    [v25 setClipsToBounds:0];
    [v2 addSubview:v25];
    v26 = *&v2[v15];
    *&v2[v15] = v25;

    v27 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v28 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    *v27 = 0u;
    *(v27 + 1) = 0u;
    *(v27 + 4) = 0;
    outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate?(v28);
    v24 = 0;
  }

  v29 = 264;
  if (!*&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8])
  {
    v29 = 272;
  }

  v30 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + v29];
  v31 = v24;
  v43 = v30;
  v32 = SyncedLyricsLineView.SBS_TextContentView.TextView.translationAttributedText(with:)(v8, v5);

  [v32 boundingRectWithSize:1 options:0 context:{a2, INFINITY}];
  v34 = v33;
  v36 = v35;
  Height = CGRectGetHeight(v3[2]);
  v38 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 296];
  Width = CGRectGetWidth(v3[2]);
  if (v34 <= Width)
  {
    v34 = Width;
  }

  v40 = Height + v38;
  [v25 setTextAlignment:*&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment]];

  v41 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
  if (*v41)
  {

    v14 = *v41;
    *v41 = v32;
    *(v41 + 1) = 0;
    *(v41 + 2) = v40;
    *(v41 + 3) = v34;
    *(v41 + 4) = v36;
    goto LABEL_12;
  }

  [v25 setAttributedText:v32];
  [v25 setFrame:{0.0, v40, v34, v36}];
}

void SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:)(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, NSObject *a6@<X5>, os_log_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, CGFloat a10@<D1>)
{
  v734 = a6;
  v735 = a5;
  v732 = a3;
  v18 = type metadata accessor for Locale.Language();
  v736 = *(v18 - 1);
  __chkstk_darwin();
  v20 = (&v690 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  __chkstk_darwin();
  v733 = &v690 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
  __chkstk_darwin();
  object = &v690 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd_2);
  __chkstk_darwin();
  v25 = &v690 - v24;
  v26 = *(v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8);
  v27 = 0.0;
  if (*&v26 == 0.0)
  {
    goto LABEL_178;
  }

  v28 = *(v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText);
  v742 = a4;
  if (a4 >> 62)
  {
    goto LABEL_177;
  }

  v29 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v30 = v29 - 1;
  if (v29 < 1)
  {
LABEL_178:
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 1;
    goto LABEL_179;
  }

LABEL_4:
  v729 = v25;
  v730 = v28;
  v712 = v30;
  v713 = v29;
  v724 = a7;
  v719 = a8;
  v737 = v10;
  v716 = (v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
  v731 = v26;

  v723 = String._bridgeToObjectiveC()();

  v759 = a1;
  v760 = a2;
  v757 = a1;
  v758 = a2;
  swift_retain_n();
  swift_retain_n();

  v755 = _s19CollectionsInternal10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufC7LyricsX06SyncedF8LineViewC4WordC_SayAKGTt0g5(v31);
  v756 = v32;
  isa = v32[2].isa;
  v727 = object;
  v728 = v18;
  v726 = v20;
  if (!isa)
  {
    goto LABEL_9;
  }

  v34 = v32[4].isa;
  v35 = v32[isa + 3].isa;

  if (!v35)
  {
    goto LABEL_9;
  }

  if (*(v35 + 11) >= *(v34 + 11))
  {

LABEL_9:
    v722 = 0;
    v18 = a2;
    goto LABEL_10;
  }

  specialized MutableCollection<>.reverse()();
  specialized OrderedSet._regenerateHashTable()(specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:));

  v722 = 1;
  v18 = v758;
LABEL_10:
  v20 = &v766;
  a2 = _swiftEmptyArrayStorage;
  v754 = _swiftEmptyArrayStorage;
  v753 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SayAC06SyncedC8LineViewCAFCGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v739 = *(v18 + 2);
  v740 = v18;
  if (!v739)
  {
    v744 = 0;
    object = _swiftEmptyArrayStorage;
    v91 = _swiftEmptyArrayStorage[2];
    if (!v91)
    {
      goto LABEL_114;
    }

    goto LABEL_100;
  }

  v744 = 0;
  v36 = 0;
  v738 = (v18 + 4);
  object = _swiftEmptyArrayStorage;
  do
  {
    if (v36 >= *(v18 + 2))
    {
      __break(1u);
      goto LABEL_160;
    }

    location = object;
    v10 = 56;
    v37 = &v738[7 * v36];
    v38 = *&v37[4].isa;
    v813 = *&v37[2].isa;
    v814 = v38;
    v812 = *&v37->isa;
    v815 = v37[6].isa;
    v816 = v813;
    v39 = v38;
    v817 = v38;
    *&v805 = _swiftEmptyArrayStorage;
    a7 = v756;
    if (v756[2].isa)
    {
      v40 = v755;
      a1 = &v756[4];
      v41 = *&v812;
      v42 = *(v814 + 16);
      outlined init with copy of String(&v816, v809);
      outlined init with copy of TaskPriority?(&v817, v809, &_sSay7LyricsX0A0C8SyllableVGMd);
      object = v39 + 56 * v42 - 16;
      v10 = a7[2].isa;
      v741 = v40;

      *&v44 = 0.0;
      while (1)
      {
        if (v44 >= v10)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:

          a7 = v36;
          goto LABEL_139;
        }

        v40 = *(a1 + 8 * v44);
        if (v42)
        {
          if (v42 > *(v39 + 16))
          {
            __break(1u);
            goto LABEL_123;
          }

          v43 = *object;
          if (v41 > *object)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v43 = 0.0;
          if (v41 > 0.0)
          {
            goto LABEL_119;
          }
        }

        v46 = *(v40 + 16);
        v47 = *(v40 + 24);
        if (v46 > v47)
        {
          goto LABEL_120;
        }

        v48 = v46 == v47 || v41 == v43;
        v49 = !v48 && v43 > v46;
        if (v49 && v47 > v41)
        {
          break;
        }

LABEL_21:
        if (++v44 == v10)
        {

          a2 = v805;
          v18 = v740;
          v20 = &v766;
          goto LABEL_52;
        }
      }

      swift_retain_n();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v805 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v805 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v725 = *((v805 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v51 = v756 + 4;
      v52 = v756[2].isa;
      if (v755)
      {
        v53 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v40, v51, v52, v755 + 16, v755 + 32);
        if (v54)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (!v52)
        {
          goto LABEL_20;
        }

        v53 = 0;
        while (v51[v53].isa != v40)
        {
          if (v52 == ++v53)
          {
            goto LABEL_20;
          }
        }

        v45 = 0;
      }

      specialized OrderedSet._removeExistingMember(at:in:)(v53, v45, specialized _ContiguousArrayBuffer._consumeAndCreateNew());

LABEL_20:

      v10 = a7[2].isa;
      v744 = v40;
      goto LABEL_21;
    }

    outlined init with copy of String(&v816, v809);
    outlined init with copy of TaskPriority?(&v817, v809, &_sSay7LyricsX0A0C8SyllableVGMd);
LABEL_52:
    a8 = a2 >> 62;
    if (!(a2 >> 62))
    {
      object = location;
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_79;
      }

LABEL_54:
      v10 = a2 & 0xC000000000000001;
      if ((a2 & 0xC000000000000001) != 0)
      {
        a7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v55 = a2 & 0xFFFFFFFFFFFFFF8;
        if (!a8)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_162;
        }

        a7 = *(a2 + 32);

        v55 = a2 & 0xFFFFFFFFFFFFFF8;
        if (!a8)
        {
LABEL_57:
          v56 = *(v55 + 16);
          if (v56)
          {
            goto LABEL_58;
          }

LABEL_78:

          goto LABEL_79;
        }
      }

      v56 = _CocoaArrayWrapper.endIndex.getter();
      if (v56)
      {
LABEL_58:
        v57 = __OFSUB__(v56, 1);
        v58 = v56 - 1;
        if (v57)
        {
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          if (v10 == *(a8 + 40))
          {
LABEL_167:
            v183 = a1;
            v184 = v732;
            v185 = specialized Array._getCount()(v732);
            if (v185)
            {
              v186 = v185 - 1;
              if (__OFSUB__(v185, 1))
              {
                __break(1u);
              }

              else
              {
                specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v185 - 1, (v184 & 0xC000000000000001) == 0, v184);
                if ((v184 & 0xC000000000000001) == 0)
                {
                  v187 = *(v184 + 8 * v186 + 32);

                  goto LABEL_171;
                }
              }

              v187 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_171:
              v188 = specialized Lyrics.Word.range.getter(a7);

              a1 = v183;
              if (v188 > 0)
              {
                v741 = v187;
                if (one-time initialization token for lyrics != -1)
                {
                  goto LABEL_569;
                }

                goto LABEL_173;
              }
            }

            else
            {

              a1 = v183;
            }

LABEL_153:
            if (one-time initialization token for lyrics != -1)
            {
              swift_once();
            }

            v159 = type metadata accessor for Logger();
            __swift_project_value_buffer(v159, static Logger.lyrics);
            v160 = swift_allocObject();
            v161 = v737;
            *(v160 + 16) = v737;
            v162 = v161;
            v163 = Logger.logObject.getter();
            v164 = static os_log_type_t.default.getter();
            v165 = swift_allocObject();
            *(v165 + 16) = 34;
            v166 = swift_allocObject();
            *(v166 + 16) = 8;
            v167 = swift_allocObject();
            *(v167 + 16) = partial apply for implicit closure #19 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
            *(v167 + 24) = v160;
            v168 = swift_allocObject();
            *(v168 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
            *(v168 + 24) = v167;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
            v169 = swift_allocObject();
            *(v169 + 16) = xmmword_1004F2EB0;
            *(v169 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v169 + 40) = v165;
            *(v169 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v169 + 56) = v166;
            *(v169 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v169 + 72) = v168;
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v163, v164))
            {
              v170 = swift_slowAlloc();
              v742 = swift_slowAlloc();
              *&v777 = v742;
              *v170 = 136446210;
              v171 = v716[1];
              v791._countAndFlagsBits = *v716;
              v791._object = v171;
              v784 = 10519010;
              v785 = 0xA300000000000000;
              *&v781[0] = 44226;
              *(&v781[0] + 1) = 0xA200000000000000;
              _sS2SSysWl_2();
              v172 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              location = v162;
              v791._countAndFlagsBits = v172;
              v791._object = v173;
              v174 = String.nonBreakingSpace.unsafeMutableAddressor();
              v175 = v174[1];
              v784 = *v174;
              v785 = v175;
              *&v781[0] = 0x3B7073626E26;
              *(&v781[0] + 1) = 0xE600000000000000;
              v176 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v178 = v177;

              v791._countAndFlagsBits = v176;
              v791._object = v178;
              v784 = 10;
              v785 = 0xE100000000000000;
              *&v781[0] = 28252;
              *(&v781[0] + 1) = 0xE200000000000000;
              v179 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v181 = v180;

              v182 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v179, v181, &v777);

              *(v170 + 4) = v182;
              _os_log_impl(&_mh_execute_header, v163, v164, "[Transliteration] The first word in this line, which is not the first line in this text, had no transliterated word match. Let's try to make it fit with the previous line by forcing a line break after it. New text: %{public}s", v170, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v742);
            }

            a8 = v719;
            SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(after:)(*(a1 + 88), *(a1 + 96));

            goto LABEL_158;
          }

LABEL_152:

          goto LABEL_153;
        }

        if (v10)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v58 & 0x8000000000000000) != 0)
          {
            goto LABEL_164;
          }

          if (v58 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_165;
          }
        }

        v59 = v759;
        v60 = v760;
        a1 = *(v760 + 16);
        if (v759)
        {

          v61 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v812, v60 + 32, a1, (v59 + 16), v59 + 32);
          v63 = v62;
          a1 = v64;

          if (v63)
          {
            goto LABEL_69;
          }

LABEL_68:
          specialized OrderedSet._removeExistingMember(at:in:)(v61, a1, v761);
          v768 = v761[1];
          outlined destroy of String(&v768);
          v767 = v762;
          outlined destroy of TaskPriority?(&v767, &_sSay7LyricsX0A0C8SyllableVGMd);
        }

        else
        {
          v65 = specialized UnsafeBufferPointer<A>._firstIndex(of:)(&v812, v760 + 32, *(v760 + 16));
          if ((v66 & 1) == 0)
          {
            v61 = v65;
            a1 = 0;
            goto LABEL_68;
          }
        }

LABEL_69:
        outlined init with copy of String(&v816, v809);
        outlined init with copy of TaskPriority?(&v817, v809, &_sSay7LyricsX0A0C8SyllableVGMd);
        object = location;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(object + 16) + 1, 1, object);
        }

        v68 = *(object + 16);
        v67 = *(object + 24);
        v20 = &v766;
        if (v68 >= v67 >> 1)
        {
          object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, object);
        }

        *(object + 16) = v68 + 1;
        v69 = object + 56 * v68;
        v70 = v812;
        v71 = v813;
        v72 = v814;
        *(v69 + 80) = v815;
        *(v69 + 48) = v71;
        *(v69 + 64) = v72;
        *(v69 + 32) = v70;
        specialized Dictionary.subscript.setter(a2, &v812);

        v18 = v740;
        goto LABEL_13;
      }

      goto LABEL_78;
    }

    v73 = _CocoaArrayWrapper.endIndex.getter();
    object = location;
    if (v73)
    {
      goto LABEL_54;
    }

LABEL_79:

    if (!v744)
    {
      outlined destroy of String(&v816);
      outlined destroy of TaskPriority?(&v817, &_sSay7LyricsX0A0C8SyllableVGMd);
LABEL_13:
      a2 = _swiftEmptyArrayStorage;
      goto LABEL_14;
    }

    a2 = _swiftEmptyArrayStorage;
    if (*&v812 > *(&v812 + 1))
    {
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      v730 = v28;
      v731 = v26;
      v213 = v25;
      v29 = _CocoaArrayWrapper.endIndex.getter();
      v28 = v730;
      v26 = v731;
      v25 = v213;
      v30 = v29 - 1;
      if (v29 < 1)
      {
        goto LABEL_178;
      }

      goto LABEL_4;
    }

    v75 = *(v744 + 16);
    v74 = *(v744 + 24);
    if (v75 > v74)
    {
      goto LABEL_176;
    }

    if (v75 == v74 || *&v812 == *(&v812 + 1) || *(&v812 + 1) <= v75 || v74 <= *&v812)
    {
      outlined destroy of String(&v816);
      outlined destroy of TaskPriority?(&v817, &_sSay7LyricsX0A0C8SyllableVGMd);
      goto LABEL_14;
    }

    outlined init with copy of String(&v816, v809);
    outlined init with copy of TaskPriority?(&v817, v809, &_sSay7LyricsX0A0C8SyllableVGMd);

    specialized Dictionary.subscript.setter(_swiftEmptyArrayStorage, &v812);
    v76 = v759;
    v77 = v760;
    v78 = *(v760 + 16);
    if (v759)
    {

      v79 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v812, v77 + 32, v78, (v76 + 16), v76 + 32);
      v81 = v80;
      a1 = v82;

      if (v81)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }

    v83 = specialized UnsafeBufferPointer<A>._firstIndex(of:)(&v812, v760 + 32, *(v760 + 16));
    if ((v84 & 1) == 0)
    {
      v79 = v83;
      a1 = 0;
LABEL_92:
      specialized OrderedSet._removeExistingMember(at:in:)(v79, a1, v763);
      v766 = v763[1];
      outlined destroy of String(&v766);
      v765 = v764;
      outlined destroy of TaskPriority?(&v765, &_sSay7LyricsX0A0C8SyllableVGMd);
    }

LABEL_93:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(object + 16) + 1, 1, object);
    }

    v86 = *(object + 16);
    v85 = *(object + 24);
    if (v86 >= v85 >> 1)
    {
      object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, object);
    }

    *(object + 16) = v86 + 1;
    v87 = object + 56 * v86;
    v88 = v812;
    v89 = v813;
    v90 = v814;
    *(v87 + 80) = v815;
    *(v87 + 48) = v89;
    *(v87 + 64) = v90;
    *(v87 + 32) = v88;
LABEL_14:
    ++v36;
  }

  while (v36 != v739);
  v754 = object;
  v91 = *(object + 16);
  if (!v91)
  {
LABEL_114:

LABEL_115:

    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 1;
    goto LABEL_116;
  }

LABEL_100:
  v92 = *(object + 48);
  v93 = *(object + 56);
  v44 = *(object + 64);
  v94 = *(object + 72);
  v95 = *(object + 80);
  v795 = *(object + 32);
  v796 = v92;
  v797 = v93;
  v798 = v44;
  v799 = v94;
  v800 = v95;
  v96 = v91 - 1;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)((v91 - 1), 1, object);
  v97 = object + 32 + 56 * v96;
  v98 = *(v97 + 16);
  v99 = *(v97 + 24);
  v40 = *(v97 + 32);
  v100 = *(v97 + 40);
  v101 = *(v97 + 48);
  v769 = *v97;
  v770 = v98;
  v771 = v99;
  v772 = v40;
  v773 = v100;
  v774 = v101;
  a7 = v753;
  v738 = v93;

  v725 = v99;

  v102 = specialized Dictionary.subscript.getter(&v769, a7);
  v739 = v40;
  v741 = v44;
  if (!v102)
  {
    goto LABEL_139;
  }

  v103 = v102;
  *&v781[0] = v102;
  if (v722)
  {
    specialized MutableCollection<>.reverse()();
    v103 = *&v781[0];
  }

  if (!specialized Array._getCount()(v103))
  {

    goto LABEL_139;
  }

  v104 = v103 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v103 & 0xC000000000000001) == 0, v103);
  v36 = a7;
  if ((v103 & 0xC000000000000001) != 0)
  {
    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v39 = *(v103 + 32);
  }

  v105 = specialized Array._getCount()(v103);
  if (!v105)
  {
    goto LABEL_121;
  }

  if (__OFSUB__(v105, 1))
  {
    goto LABEL_544;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v105 - 1, v104 == 0, v103);
  if (v104)
  {
    goto LABEL_545;
  }

  while (2)
  {

    SyncedLyricsLineView.Word.endTime.getter();
    v106 = *(v40 + 16);
    a7 = v36;
    if (!v106)
    {
LABEL_123:
      if (v43 != 0.0)
      {
        v107 = 0.0;
        goto LABEL_125;
      }

      goto LABEL_138;
    }

    v107 = *(v40 + 56 * v106 - 16);
    if (v43 == v107)
    {
LABEL_138:

      goto LABEL_139;
    }

LABEL_125:
    v20 = a7;
    v112 = *&v737[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words];
    v113 = *(v112 + 16);
    if (!v113)
    {

      a7 = v20;
      goto LABEL_139;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v113 - 1, 1, *&v737[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words]);
    v114 = *(v112 + 56 * v113 + 8);
    v115 = *(v114 + 16);
    if (v115)
    {
      v116 = v107 == *(v114 + 56 * v115 - 16);
    }

    else
    {
      v116 = v107 == 0.0;
    }

    a7 = v20;
    if (!v116 || *(v39 + 88) < 1)
    {
      goto LABEL_138;
    }

    location = object;
    v810 = *(v39 + 48);
    v117 = *(v39 + 32);
    v809[0] = *(v39 + 16);
    v809[1] = v117;
    v811 = *(v39 + 64);
    v818 = v117;
    v819 = v810;
    v118 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v119 = v737;
    swift_beginAccess();
    v120 = *&v119[v118];
    outlined init with copy of String(&v818, &v805);
    outlined init with copy of TaskPriority?(&v819, &v805, &_sSay7LyricsX0A0C8SyllableVGMd);

    specialized Dictionary.subscript.getter(v809, v120);
    v122 = v121;

    outlined destroy of String(&v818);
    outlined destroy of TaskPriority?(&v819, &_sSay7LyricsX0A0C8SyllableVGMd);
    if (v122)
    {

      v123 = *(v39 + 32);
      v805 = *(v39 + 16);
      v806 = v123;
      v807 = *(v39 + 48);
      v808 = *(v39 + 64);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v791._countAndFlagsBits = *&v119[v118];
      *&v119[v118] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, &v805, isUniquelyReferenced_nonNull_native);
      *&v119[v118] = v791._countAndFlagsBits;
      swift_endAccess();
      SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(before:)(v39);
      if (one-time initialization token for lyrics != -1)
      {
        swift_once();
      }

      v125 = type metadata accessor for Logger();
      __swift_project_value_buffer(v125, static Logger.lyrics);
      v126 = swift_allocObject();
      *(v126 + 16) = v119;
      v127 = v119;
      v36 = Logger.logObject.getter();
      v128 = static os_log_type_t.default.getter();
      v129 = swift_allocObject();
      *(v129 + 16) = 34;
      v130 = swift_allocObject();
      *(v130 + 16) = 8;
      v131 = swift_allocObject();
      *(v131 + 16) = partial apply for implicit closure #19 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
      *(v131 + 24) = v126;
      v132 = swift_allocObject();
      *(v132 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
      *(v132 + 24) = v131;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_1004F2EB0;
      *(v133 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v133 + 40) = v129;
      *(v133 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v133 + 56) = v130;
      *(v133 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v133 + 72) = v132;
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if (os_log_type_enabled(v36, v128))
      {
        v134 = swift_slowAlloc();
        location = swift_slowAlloc();
        *&v777 = location;
        *v134 = 136446210;
        v135 = v716[1];
        *&v801 = *v716;
        *(&v801 + 1) = v135;
        v791._countAndFlagsBits = 10519010;
        v791._object = 0xA300000000000000;
        v784 = 44226;
        v785 = 0xA200000000000000;
        _sS2SSysWl_2();
        *&v801 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        *(&v801 + 1) = v136;
        v137 = String.nonBreakingSpace.unsafeMutableAddressor();
        v138 = v137[1];
        v791._countAndFlagsBits = *v137;
        v791._object = v138;
        v784 = 0x3B7073626E26;
        v785 = 0xE600000000000000;
        v139 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        LODWORD(v742) = v128;
        v141 = v140;

        *&v801 = v139;
        *(&v801 + 1) = v141;
        v791._countAndFlagsBits = 10;
        v791._object = 0xE100000000000000;
        v784 = 28252;
        v785 = 0xE200000000000000;
        v142 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v144 = v143;

        v145 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v142, v144, &v777);

        *(v134 + 4) = v145;
        _os_log_impl(&_mh_execute_header, v36, v742, "[Transliteration] Last transliterated word in this line has more original words to match in the next line, and the next line only contains words that match this transliteration. Insert a line break before this word to make sure they are all in the same line. New text: %{public}s", v134, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(location);

        goto LABEL_220;
      }

LABEL_162:

LABEL_219:

LABEL_220:

      goto LABEL_410;
    }

LABEL_160:

    a7 = v20;
    v40 = v739;
    v44 = v741;
LABEL_139:
    v146 = v756[2].isa;
    v703 = v755;
    v704 = v756;
    v711 = a7;
    if (!v146)
    {
      goto LABEL_188;
    }

    v147 = v756[4].isa;
    if (!specialized Array._getCount()(v742))
    {
      goto LABEL_188;
    }

    v148 = v742;
    v149 = v742 & 0xC000000000000001;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v742 & 0xC000000000000001) == 0, v742);
    if (v149)
    {

      v214 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      if (v147 == v214)
      {
LABEL_144:
        v150 = v737;
        if (v735 >= 1)
        {
          v807 = *(v147 + 48);
          v151 = *(v147 + 32);
          v805 = *(v147 + 16);
          v806 = v151;
          v808 = *(v147 + 64);
          v820 = v151;
          v821 = v807;
          v152 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
          swift_beginAccess();
          v153 = *&v150[v152];
          outlined init with copy of String(&v820, &v801);
          outlined init with copy of TaskPriority?(&v821, &v801, &_sSay7LyricsX0A0C8SyllableVGMd);

          specialized Dictionary.subscript.getter(&v805, v153);
          v155 = v154;

          outlined destroy of String(&v820);
          outlined destroy of TaskPriority?(&v821, &_sSay7LyricsX0A0C8SyllableVGMd);
          if (v155)
          {

            v156 = *(v147 + 32);
            v801 = *(v147 + 16);
            v802 = v156;
            v803 = *(v147 + 48);
            v804 = *(v147 + 64);
            swift_beginAccess();
            v157 = swift_isUniquelyReferenced_nonNull_native();
            v784 = *&v150[v152];
            *&v150[v152] = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, &v801, v157);
            *&v150[v152] = v784;
            swift_endAccess();
            a1 = v147;
            if (v704[2].isa >= 2)
            {
              a7 = v739;
              if (v713 != 1)
              {
                v10 = v704[5].isa;
                a8 = v742;
                specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1uLL, v149 == 0, v742);
                if (!v149)
                {
                  goto LABEL_166;
                }

                v158 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                swift_unknownObjectRelease();

                if (v10 == v158)
                {
                  goto LABEL_167;
                }
              }
            }

            goto LABEL_152;
          }

          v40 = v739;
          goto LABEL_187;
        }
      }

LABEL_187:
      v44 = v741;
      goto LABEL_188;
    }

    if (v147 == *(v148 + 32))
    {

      goto LABEL_144;
    }

LABEL_188:
    v215 = specialized Lyrics.Word.range.getter(v44);
    v217 = v216;
    v829.location = specialized Lyrics.Word.range.getter(v40);
    v829.length = v218;
    v828.location = v215;
    v828.length = v217;
    v219 = NSUnionRange(v828, v829);
    v220 = String._bridgeToObjectiveC()();
    location = v219.location;
    v221 = [v220 substringWithRange:{v219.location, v219.length}];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v721 = String.trim()();

    v44 = v734;
    v36 = v735;
    v222 = [v723 substringWithRange:{v735, v734}];
    v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v224;

    v225 = String.trim()();
    object = v225._object;
    *&v801 = v223;
    *(&v801 + 1) = v39;
    countAndFlagsBits = v225._countAndFlagsBits;
    v791 = v225;
    v226 = type metadata accessor for Locale();
    v227 = v729;
    (*(*(v226 - 8) + 56))(v729, 1, 1, v226);
    v228 = _sS2SSysWl_2();

    v702 = v228;
    StringProtocol.range<A>(of:options:range:locale:)();
    v40 = v229;
    outlined destroy of TaskPriority?(v227, &_s10Foundation6LocaleVSgMd_2);
    v715 = v225._object;

    if ((v40 & 1) == 0)
    {
      v230 = _NSRange.init(range:in:)();
      v57 = __OFADD__(v36, v230);
      v36 += v230;
      if (!v57)
      {
        v44 = v231;
        goto LABEL_192;
      }

LABEL_541:
      __break(1u);
LABEL_542:
      __break(1u);
LABEL_543:
      __break(1u);
LABEL_544:
      __break(1u);
LABEL_545:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      continue;
    }

    break;
  }

LABEL_192:
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_530;
  }

  while (2)
  {
    v232 = _sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(3, *(static LyricsOptionsManager.shared + 40));
    v701 = a10;
    v732 = v44;
    v730 = v36;
    if (!v232)
    {
      goto LABEL_199;
    }

    v233 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
    v234 = v737;
    swift_beginAccess();
    v235 = v733;
    outlined init with copy of TaskPriority?(&v234[v233], v733, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    v236 = v736;
    v237 = v728;
    if ((*(*&v736 + 48))(v235, 1, v728))
    {
      v238 = &_s10Foundation6LocaleV8LanguageVSgMd_0;
      v239 = v235;
      goto LABEL_198;
    }

    v240 = v726;
    (*(*&v236 + 16))(v726, v235, v237);
    outlined destroy of TaskPriority?(v235, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    v241 = v727;
    Locale.Language.languageCode.getter();
    (*(*&v236 + 8))(v240, v237);
    v242 = type metadata accessor for Locale.LanguageCode();
    v243 = *(v242 - 8);
    if ((*(v243 + 48))(v241, 1, v242) == 1)
    {
      v238 = &_s10Foundation6LocaleV12LanguageCodeVSgMd_0;
      v239 = v241;
LABEL_198:
      outlined destroy of TaskPriority?(v239, v238);
LABEL_199:
      v244 = 0;
      v245 = 0xE000000000000000;
    }

    else
    {
      v244 = Locale.LanguageCode.identifier.getter();
      v245 = v309;
      (*(v243 + 8))(v241, v242);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd_0);
    v246 = swift_allocObject();
    *(v246 + 16) = xmmword_1004F2EF0;
    *(v246 + 32) = NSFontAttributeName;
    v247 = v737;
    object = &v737[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs];
    v248 = *&v737[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 312];
    v249 = type metadata accessor for UIAction(0, &_sSo6UIFontCML_1);
    *(v246 + 40) = v248;
    *(v246 + 64) = v249;
    *(v246 + 72) = NSLanguageIdentifierAttributeName;
    *(v246 + 104) = &type metadata for String;
    *(v246 + 80) = v244;
    *(v246 + 88) = v245;
    v250 = NSFontAttributeName;
    v251 = v248;
    v252 = NSLanguageIdentifierAttributeName;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n_0(v246);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd_0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v253 = objc_allocWithZone(NSAttributedString);
    v254 = *&v721._object;
    v255 = String._bridgeToObjectiveC()();
    _sSo21NSAttributedStringKeyaMa_1(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&_sSo21NSAttributedStringKeyaABSHSCWL_1, _sSo21NSAttributedStringKeyaMa_1);
    v256 = Dictionary._bridgeToObjectiveC()().super.isa;

    *&v257 = COERCE_DOUBLE([v253 initWithString:v255 attributes:v256]);

    *&v44 = COERCE_DOUBLE(CTLineCreateWithAttributedString(v257));
    v27 = CTLineRef.bounds.getter();
    a10 = v258;
    v260 = v259;
    v262 = v261;
    v263 = v247[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection];
    v705 = v257;
    if (v263 != 2 && v247[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] == (v263 & 1))
    {
      v296 = specialized static Lyrics.Word.__derived_struct_equals(_:_:)(&v795, &v769);
      v40 = v711;
      if (v296)
      {
        v831.origin.x = v27;
        v831.origin.y = a10;
        v831.size.width = v260;
        v831.size.height = v262;
        if (CGRectGetWidth(v831) > a9)
        {
          v27 = Int.seconds.getter(0);
          v297 = specialized Dictionary.subscript.getter(&v769, v753);
          MaxX = v27;
          if (!v297)
          {
            goto LABEL_428;
          }

          v299 = v297;
          v300 = specialized Array._getCount()(v297);
          if (!v300)
          {

            MaxX = v27;
            goto LABEL_428;
          }

          v301 = v300 - 1;
          if (__OFSUB__(v300, 1))
          {
            __break(1u);
          }

          else
          {
            v254 = *&v257;
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v300 - 1, (v299 & 0xC000000000000001) == 0, v299);
            if ((v299 & 0xC000000000000001) == 0)
            {
              v302 = *(v299 + 8 * v301 + 32);

              goto LABEL_229;
            }
          }

          v302 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_229:

          MaxX = CGRectGetMaxX(*(v302 + 176));
          v303 = specialized Lyrics.Word.range.getter(*(v302 + 48));
          v305 = v304;

          v306 = v724 + v303;
          if (__OFADD__(v303, v724))
          {
            __break(1u);
          }

          else if (!__OFADD__(v730, v732))
          {
            v57 = __OFADD__(v306, v305);
            v307 = &v306[v305];
            if (!v57)
            {
              *&v257 = v254;
              if ((v730 + v732) != v307)
              {

LABEL_383:
                v108 = 0;
                v109 = 0;
                v110 = 0;
                v111 = 1;
                a8 = v719;
                v27 = 0.0;
                goto LABEL_179;
              }

LABEL_428:
              v694 = v44;
              type metadata accessor for TextKitManager();
              swift_allocObject();
              v734 = v257;
              v532 = TextKitManager.init(text:size:)(v734, a9);
              v533 = *(*v532 + 192);
              v735 = v532;
              v534 = v533();
              v742 = v534[2];
              if (v742)
              {
                v535 = 0;
                v740 = (v534 + 4);
                *&v736 = -location;
                v737 = v534;
                v536 = __OFSUB__(0, location);
                LODWORD(location) = v536;
                v109 = _swiftEmptyArrayStorage;
                while (v535 < v534[2])
                {
                  v537 = &v740[7 * v535];
                  v538 = *(v537 + 1);
                  v539 = *(v537 + 2);
                  v540 = *(v537 + 3);
                  v541 = *(v537 + 4);
                  v542 = *(v537 + 5);
                  v254 = COERCE_DOUBLE(*v537);
                  v543 = [*&v254 lineRef];
                  if (!v543)
                  {
                    __break(1u);
LABEL_569:
                    swift_once();
LABEL_173:
                    v189 = type metadata accessor for Logger();
                    __swift_project_value_buffer(v189, static Logger.lyrics);
                    v190 = swift_allocObject();
                    v191 = v737;
                    *(v190 + 16) = v737;
                    v742 = v191;
                    v192 = Logger.logObject.getter();
                    v193 = static os_log_type_t.default.getter();
                    v194 = swift_allocObject();
                    *(v194 + 16) = 34;
                    v195 = swift_allocObject();
                    *(v195 + 16) = 8;
                    v196 = swift_allocObject();
                    *(v196 + 16) = partial apply for implicit closure #2 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
                    *(v196 + 24) = v190;
                    v197 = swift_allocObject();
                    *(v197 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
                    *(v197 + 24) = v196;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
                    v198 = swift_allocObject();
                    *(v198 + 16) = xmmword_1004F2EB0;
                    *(v198 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
                    *(v198 + 40) = v194;
                    *(v198 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
                    *(v198 + 56) = v195;
                    *(v198 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
                    *(v198 + 72) = v197;
                    swift_setDeallocating();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2);
                    swift_arrayDestroy();
                    swift_deallocClassInstance();
                    LODWORD(v740) = v193;
                    location = v192;
                    if (os_log_type_enabled(v192, v193))
                    {
                      v199 = swift_slowAlloc();
                      v200 = swift_slowAlloc();
                      *&v777 = v200;
                      *v199 = 136446210;
                      v201 = v716[1];
                      v791._countAndFlagsBits = *v716;
                      v791._object = v201;
                      v784 = 10519010;
                      v785 = 0xA300000000000000;
                      *&v781[0] = 44226;
                      *(&v781[0] + 1) = 0xA200000000000000;
                      _sS2SSysWl_2();
                      v791._countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                      v791._object = v202;
                      v203 = String.nonBreakingSpace.unsafeMutableAddressor();
                      v204 = v203[1];
                      v784 = *v203;
                      v785 = v204;
                      *&v781[0] = 0x3B7073626E26;
                      *(&v781[0] + 1) = 0xE600000000000000;
                      v205 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                      v207 = v206;

                      v791._countAndFlagsBits = v205;
                      v791._object = v207;
                      v784 = 10;
                      v785 = 0xE100000000000000;
                      *&v781[0] = 28252;
                      *(&v781[0] + 1) = 0xE200000000000000;
                      v208 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                      v210 = v209;

                      v211 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v208, v210, &v777);

                      *(v199 + 4) = v211;
                      v212 = location;
                      _os_log_impl(&_mh_execute_header, location, v740, "[Transliteration] The first word in this line, which is not the first line in this text, had no transliterated word match. Let's try to bring the previous line's last word into this line by forcing a line break before it. New text: %{public}s", v199, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0Tm(v200);
                    }

                    else
                    {
                    }

                    SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(before:)(v741);

                    a8 = v719;
LABEL_158:

LABEL_511:

                    v108 = 0;
                    v111 = 0;
                    v109 = 0;
                    v110 = 0;
                    goto LABEL_179;
                  }

                  v544 = v543;
                  v545 = _swiftEmptyArrayStorage[2];
                  if (v545)
                  {
                    v546 = 0;
                    v547 = &_swiftEmptyArrayStorage[4];
                    do
                    {
                      v549 = *v547++;
                      v548 = v549;
                      if ((v549 & ~v546) == 0)
                      {
                        v548 = 0;
                      }

                      v546 |= v548;
                      --v545;
                    }

                    while (v545);
                  }

                  else
                  {
                    v546 = 0;
                  }

                  [*&v254 boundsWithType:0 options:v546];
                  if (location)
                  {
                    goto LABEL_532;
                  }

                  v552 = specialized SyncedLyricsLineView.SBS_TextContentView.TextView.wordVisualRepresentations(for:lineFrame:typographicOrigin:lyricsWords:text:wordRangeAdjustment:lineStartingIndex:existingRepresentations:)(v538, v539, v540, v541, v550, v551, v544, v754, v721._countAndFlagsBits, v721._object, *&v736, v542, _swiftEmptyArrayStorage);
                  v833.origin.x = v538;
                  v833.origin.y = v539;
                  v833.size.width = v540;
                  v833.size.height = v541;
                  Width = CGRectGetWidth(v833);
                  if (Width > v27)
                  {
                    v27 = Width;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v109[2] + 1, 1, v109);
                  }

                  v555 = v109[2];
                  v554 = v109[3];
                  if (v555 >= v554 >> 1)
                  {
                    v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v554 > 1), v555 + 1, 1, v109);
                  }

                  ++v535;

                  v109[2] = (v555 + 1);
                  v556 = &v109[2 * v555];
                  v556[4] = v552;
                  v556[5] = v544;
                  v534 = v737;
                  if (v535 == v742)
                  {
                    goto LABEL_452;
                  }
                }

                __break(1u);
LABEL_532:
                __break(1u);
LABEL_533:
                __break(1u);
                goto LABEL_534;
              }

              v109 = _swiftEmptyArrayStorage;
LABEL_452:

              if (v27 - MaxX > 0.0)
              {
                v27 = v27 - MaxX;
              }

              else
              {
                v27 = 0.0;
              }

              v557 = specialized Dictionary.subscript.getter(&v769, v753);

              if (v557)
              {
                v558 = specialized Array._getCount()(v557);
                if (v558)
                {
                  v559 = v558 - 1;
                  if (__OFSUB__(v558, 1))
                  {
                    __break(1u);
                  }

                  else
                  {
                    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v558 - 1, (v557 & 0xC000000000000001) == 0, v557);
                    if ((v557 & 0xC000000000000001) == 0)
                    {
                      v560 = *(v557 + 8 * v559 + 32);

                      goto LABEL_460;
                    }
                  }

                  v560 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_460:

                  SyncedLyricsLineView.Word.frame.setter(v560[22], v560[23], v27 + v560[24], v560[25]);
                }

                else
                {
                }
              }

              else
              {
              }

              v108 = v759;
              v111 = v760;

LABEL_401:
              a8 = v719;
              v110 = v722;
              goto LABEL_179;
            }

LABEL_557:
            __break(1u);
LABEL_558:
            swift_once();
LABEL_425:
            v509 = type metadata accessor for Logger();
            __swift_project_value_buffer(v509, static Logger.lyrics);
            v510 = swift_allocObject();
            *(v510 + 16) = v245;
            v511 = v245;
            v512 = Logger.logObject.getter();
            v513 = static os_log_type_t.default.getter();
            v514 = swift_allocObject();
            *(v514 + 16) = 34;
            v515 = swift_allocObject();
            *(v515 + 16) = 8;
            v516 = swift_allocObject();
            *(v516 + 16) = partial apply for implicit closure #19 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
            *(v516 + 24) = v510;
            v517 = swift_allocObject();
            *(v517 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
            *(v517 + 24) = v516;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
            v518 = swift_allocObject();
            *(v518 + 16) = xmmword_1004F2EB0;
            *(v518 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v518 + 40) = v514;
            *(v518 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v518 + 56) = v515;
            *(v518 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v518 + 72) = v517;
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v512, v513))
            {
              v519 = swift_slowAlloc();
              v520 = swift_slowAlloc();
              v747 = v520;
              *v519 = 136446210;
              v521 = v716[1];
              v748 = *v716;
              v749 = v521;
              v750 = 10519010;
              v751 = 0xA300000000000000;
              v745 = 44226;
              v746 = 0xA200000000000000;
              LODWORD(v742) = v513;
              v748 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v749 = v522;
              v523 = String.nonBreakingSpace.unsafeMutableAddressor();
              v524 = v523[1];
              v750 = *v523;
              v751 = v524;
              v745 = 0x3B7073626E26;
              v746 = 0xE600000000000000;
              v525 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v527 = v526;

              v748 = v525;
              v749 = v527;
              v750 = 10;
              v751 = 0xE100000000000000;
              v745 = 28252;
              v746 = 0xE200000000000000;
              v528 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v530 = v529;

              v531 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v528, v530, &v747);

              *(v519 + 4) = v531;
              _os_log_impl(&_mh_execute_header, v512, v742, "[Transliteration][Last word timing check] Trying to insert a line break for the second time before the same word. A nonbreaking space could be making this layout impossible, resetting string and trying again. New text: %{public}s", v519, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v520);

LABEL_507:

              goto LABEL_510;
            }

LABEL_509:

LABEL_510:

            a8 = v719;
            goto LABEL_511;
          }

          __break(1u);
          goto LABEL_557;
        }
      }

      v245 = 1;
      v308 = 1;
      if (v722)
      {
        goto LABEL_241;
      }

      goto LABEL_242;
    }

    v830.origin.x = v27;
    v830.origin.y = a10;
    v830.size.width = v260;
    v830.size.height = v262;
    v264 = CGRectGetWidth(v830);
    v40 = v711;
    if (v264 <= a9)
    {

      goto LABEL_239;
    }

    v40 = v753;
    v265 = specialized Dictionary.subscript.getter(&v795, v753);

    if (!v265)
    {
LABEL_238:

      goto LABEL_239;
    }

    if (!specialized Array._getCount()(v265))
    {

      goto LABEL_238;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v265 & 0xC000000000000001) == 0, v265);
    if ((v265 & 0xC000000000000001) != 0)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v39 = *(v265 + 32);
    }

    v266 = specialized Dictionary.subscript.getter(&v769, v40);

    if (v266)
    {
      v267 = specialized Array._getCount()(v266);
      if (v267)
      {
        v268 = v267;
        v694 = v44;

        v57 = __OFSUB__(v268, 1);
        v269 = v268 - 1;
        if (!v57)
        {
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v269, (v266 & 0xC000000000000001) == 0, v266);
          v27 = 0.0;
          if ((v266 & 0xC000000000000001) == 0)
          {
            v270 = *(v266 + 8 * v269 + 32);

LABEL_212:

            if (v722)
            {
              v271 = v39;
            }

            else
            {
              v271 = v270;
            }

            v272 = v737;
            SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(before:)(v271);
            if (one-time initialization token for lyrics != -1)
            {
              swift_once();
            }

            v273 = type metadata accessor for Logger();
            __swift_project_value_buffer(v273, static Logger.lyrics);
            v274 = swift_allocObject();
            *(v274 + 16) = v272;
            v275 = v272;
            v276 = Logger.logObject.getter();
            v277 = static os_log_type_t.default.getter();
            v278 = swift_allocObject();
            *(v278 + 16) = 34;
            v279 = swift_allocObject();
            *(v279 + 16) = 8;
            v280 = swift_allocObject();
            *(v280 + 16) = partial apply for implicit closure #19 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
            *(v280 + 24) = v274;
            v281 = swift_allocObject();
            *(v281 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
            *(v281 + 24) = v280;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
            v282 = swift_allocObject();
            *(v282 + 16) = xmmword_1004F2EB0;
            *(v282 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v282 + 40) = v278;
            *(v282 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v282 + 56) = v279;
            *(v282 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v282 + 72) = v281;
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v276, v277))
            {
              v283 = swift_slowAlloc();
              v284 = swift_slowAlloc();
              *&v781[0] = v284;
              *v283 = 136446210;
              v285 = v716[1];
              *&v801 = *v716;
              *(&v801 + 1) = v285;
              v791._countAndFlagsBits = 10519010;
              v791._object = 0xA300000000000000;
              v784 = 44226;
              v785 = 0xA200000000000000;
              location = v270;
              LODWORD(v742) = v277;
              *&v801 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              *(&v801 + 1) = v286;
              v287 = String.nonBreakingSpace.unsafeMutableAddressor();
              v288 = v287[1];
              v791._countAndFlagsBits = *v287;
              v791._object = v288;
              v784 = 0x3B7073626E26;
              v785 = 0xE600000000000000;
              v289 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v291 = v290;

              *&v801 = v289;
              *(&v801 + 1) = v291;
              v791._countAndFlagsBits = 10;
              v791._object = 0xE100000000000000;
              v784 = 28252;
              v785 = 0xE200000000000000;
              v292 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v294 = v293;

              v295 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v292, v294, v781);

              *(v283 + 4) = v295;
              _os_log_impl(&_mh_execute_header, v276, v742, "[Transliteration] Directions don't match and transliterated line goes beyond view bounds. Inserting line break. New text: %{public}s", v283, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v284);

              goto LABEL_219;
            }

LABEL_410:

LABEL_411:

            goto LABEL_477;
          }

LABEL_552:
          v270 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_212;
        }

LABEL_551:
        __break(1u);
        goto LABEL_552;
      }

LABEL_239:
    }

    else
    {
    }

    v245 = 0;
    v308 = 0;
    if (v722)
    {
LABEL_241:
      specialized MutableCollection<>.reverse()();
      v308 = v245;
    }

LABEL_242:
    if (__OFSUB__(0, location))
    {
      goto LABEL_533;
    }

    v310 = v754;
    v311 = specialized SyncedLyricsLineView.SBS_TextContentView.TextView.wordVisualRepresentations(for:lineFrame:typographicOrigin:lyricsWords:text:wordRangeAdjustment:lineStartingIndex:existingRepresentations:)(v27, a10, v260, v262, v27, a10, v44, v754, v721._countAndFlagsBits, *&v254, -location, 0, _swiftEmptyArrayStorage);
    v752 = v311;
    v312 = specialized Array._getCount()(v311);
    v36 = v740;
    if (v312 < 1)
    {

      goto LABEL_383;
    }

    v313 = Int.seconds.getter(0);
    v27 = 0.0;
    if (!v308)
    {

      v108 = v759;
      v111 = v760;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7LyricsX06SyncedD8LineViewC015SBS_TextContentG0C0iG0C21TransliterationResult33_2B1CF170FA12E5118C57D48B547982CALLO8MetadataV0F0VGMd);
      v109 = swift_allocObject();
      *(v109 + 1) = xmmword_1004F2400;
      v109[4] = v311;
      v109[5] = v44;

      goto LABEL_400;
    }

    if (v722)
    {
      specialized MutableCollection<>.reverse()();
    }

    v690 = v310;
    v39 = v752;
    v707 = specialized Array._getCount()(v752);
    if (!v707)
    {

      location = 0;
      v437 = v313;
      v438 = v39;
      goto LABEL_392;
    }

    v727 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v698 = v39 + 32;
    v699 = v39 & 0xFFFFFFFFFFFFFF8;
    v314 = v742;
    v708 = v39 & 0xC000000000000001;
    v709 = v742 & 0xC000000000000001;
    v710 = v39;

    v736 = 0.0;
    *&v731 = 0.0;
    v254 = 0.0;
    v315 = 0;
    v316 = 0;
    v695 = v314 + 40;
    LODWORD(v739) = 1;
    *&v317 = 136446466;
    v696 = v317;
    *&v317 = 136315394;
    v697 = v317;
    v691 = v313;
    v692 = v313;
    LODWORD(v729) = 1;
    v694 = v44;
    v714 = object;
LABEL_252:
    if (v708)
    {
      v318 = object;
      v319 = v315;
      location = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v57 = __OFADD__(v319, 1);
      v320 = v319 + 1;
      if (v57)
      {
        goto LABEL_528;
      }

      break;
    }

    if (v315 >= *(v699 + 16))
    {
      __break(1u);
      goto LABEL_541;
    }

    v318 = object;
    location = *(v698 + 8 * v315);
    v321 = v315;

    v57 = __OFADD__(v321, 1);
    v320 = v321 + 1;
    if (v57)
    {
LABEL_528:
      __break(1u);
LABEL_529:
      __break(1u);
LABEL_530:
      swift_once();
      continue;
    }

    break;
  }

  v718 = v320;
  v322 = *(location + 32);
  v801 = *(location + 16);
  v802 = v322;
  v803 = *(location + 48);
  v804 = *(location + 64);
  v40 = v753;
  if (!*(v753 + 16))
  {
    goto LABEL_269;
  }

  v822 = *(location + 32);
  v823 = v803;
  outlined init with copy of String(&v822, &v777);
  v36 = &_sSay7LyricsX0A0C8SyllableVGMd;
  outlined init with copy of TaskPriority?(&v823, &v777, &_sSay7LyricsX0A0C8SyllableVGMd);
  v323 = specialized __RawDictionaryStorage.find<A>(_:)(&v801);
  v39 = v324;
  outlined destroy of String(&v822);
  outlined destroy of TaskPriority?(&v823, &_sSay7LyricsX0A0C8SyllableVGMd);
  if ((v39 & 1) == 0)
  {
    goto LABEL_269;
  }

  v39 = *(*(v40 + 56) + 8 * v323);
  if (!(v39 >> 62))
  {
    object = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (object)
    {
      goto LABEL_262;
    }

LABEL_269:
    if (v739)
    {

      LODWORD(v739) = 1;
    }

    else
    {
      if (v254 != 0.0)
      {
        object = v318;
        if (v316)
        {
          a10 = v736;
          v333 = *(v316 + 144);
          v334 = *(v316 + 152);
          v335 = *(v316 + 160);
          v336 = *(v316 + 168);

          v832.origin.x = v333;
          v832.origin.y = v334;
          v832.size.width = v335;
          v832.size.height = v336;
          v337 = CGRectGetMaxX(v832);
          v338 = location;
          *(location + 144) = v337 + *(v318 + 336);
          SyncedLyricsLineView.Word.frame.setter(*(v338 + 176) + a10, *(v338 + 184), *(v338 + 192), *(v338 + 200));
          v339 = CGRectGetMaxX(*(v338 + 176));
          v340 = v339 - CGRectGetMinX(*(*&v254 + 176));
          if (CGRectGetWidth(*(*&v254 + 176)) >= v340)
          {

            LODWORD(v739) = 0;
            v27 = 0.0;
          }

          else
          {
            v341 = *(*&v254 + 192);
            v342 = v340 - v341 + *(v318 + 336);
            SyncedLyricsLineView.Word.frame.setter(*(*&v254 + 176), *(*&v254 + 184), v341 + v342, *(*&v254 + 200));
            v313 = v313 + v342;
            v27 = 0.0;
            if (CGRectGetMaxX(*(*&v254 + 176)) > a9)
            {
              v343 = *(v316 + 32);
              v775[0] = *(v316 + 16);
              v775[1] = v343;
              v775[2] = *(v316 + 48);
              v776 = *(v316 + 64);
              if (*(v40 + 16))
              {
                v344 = specialized __RawDictionaryStorage.find<A>(_:)(v775);
                if (v345)
                {
                  v346 = *(*(v40 + 56) + 8 * v344);
                  if (v346 >> 62)
                  {
                    if (_CocoaArrayWrapper.endIndex.getter())
                    {
LABEL_378:
                      v693 = v316;
                      v711 = v40;

                      swift_bridgeObjectRelease_n();
                      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v346 & 0xC000000000000001) == 0, v346);
                      if ((v346 & 0xC000000000000001) != 0)
                      {
                        v245 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        v245 = *(v346 + 32);
                      }

                      if (v722)
                      {
                        SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(after:)(*(v245 + 88), *(v245 + 96));
                        goto LABEL_535;
                      }

LABEL_534:
                      SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(before:)(v245);
LABEL_535:
                      if (one-time initialization token for lyrics != -1)
                      {
                        swift_once();
                      }

                      v671 = type metadata accessor for Logger();
                      __swift_project_value_buffer(v671, static Logger.lyrics);
                      v672 = v737;

                      v673 = Logger.logObject.getter();
                      v674 = static os_log_type_t.default.getter();

                      if (os_log_type_enabled(v673, v674))
                      {
                        v675 = swift_slowAlloc();
                        v742 = swift_slowAlloc();
                        v745 = v742;
                        *v675 = v697;
                        v676 = *(*&v254 + 72);
                        v677 = *(*&v254 + 80);

                        v678 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v676, v677, &v745);

                        *(v675 + 4) = v678;
                        *(v675 + 12) = 2082;
                        v679 = v716[1];
                        *&v777 = *v716;
                        *(&v777 + 1) = v679;
                        v748 = 10519010;
                        v749 = 0xA300000000000000;
                        v750 = 44226;
                        v751 = 0xA200000000000000;
                        *&v777 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                        *(&v777 + 1) = v680;
                        v681 = String.nonBreakingSpace.unsafeMutableAddressor();
                        v682 = v681[1];
                        v748 = *v681;
                        v749 = v682;
                        v750 = 0x3B7073626E26;
                        v751 = 0xE600000000000000;
                        v683 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                        v717 = v254;
                        v685 = v684;

                        *&v777 = v683;
                        *(&v777 + 1) = v685;
                        v748 = 10;
                        v749 = 0xE100000000000000;
                        v750 = 28252;
                        v751 = 0xE200000000000000;
                        v686 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                        v688 = v687;

                        v689 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v686, v688, &v745);

                        *(v675 + 14) = v689;
                        _os_log_impl(&_mh_execute_header, v673, v674, "[Transliteration][Empty Map Entry] Word %s crossed view bounds after final adjustment, adding line break. New text: %{public}s", v675, 0x16u);
                        swift_arrayDestroy();
                      }

                      else
                      {
                      }

LABEL_521:

                      goto LABEL_475;
                    }
                  }

                  else if (*((v346 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_378;
                  }
                }
              }
            }

            LODWORD(v739) = 0;
          }
        }

        else
        {
          LODWORD(v739) = 0;
        }

LABEL_251:
        v316 = location;
        v315 = v718;
        if (v718 == v707)
        {

          v438 = v710;

          if (v254 != 0.0)
          {
            v439 = *(*&v254 + 112);
            if (v439 < v712)
            {

              v440 = v713;
              v441 = v742;
              if (v439 + 1 != v713)
              {
                v605 = v742 & 0xFFFFFFFFFFFFFF8;
                v606 = v439;
                while (1)
                {
                  if (v606 < v439 || v606 + 1 >= v440)
                  {
                    __break(1u);
LABEL_548:
                    __break(1u);
LABEL_549:
                    __break(1u);
                    goto LABEL_550;
                  }

                  if (v709)
                  {
                    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v606 < -1)
                    {
                      goto LABEL_548;
                    }

                    if ((v606 + 1) >= *(v605 + 16))
                    {
                      goto LABEL_549;
                    }

                    v39 = *(v441 + 8 * v606 + 40);
                  }

                  SyncedLyricsLineView.Word.frame.setter(v313 + *(v39 + 176), *(v39 + 184), *(v39 + 192), *(v39 + 200));
                  if (CGRectGetMaxX(*(v39 + 176)) > a9)
                  {
                    break;
                  }

                  ++v606;
                  v440 = v713;
                  v441 = v742;
                  if (v712 == v606)
                  {
                    goto LABEL_390;
                  }
                }

                if (!v722)
                {
                  goto LABEL_515;
                }

                SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(after:)(*(v39 + 88), *(v39 + 96));
LABEL_516:
                if (one-time initialization token for lyrics != -1)
                {
                  swift_once();
                }

                v650 = type metadata accessor for Logger();
                __swift_project_value_buffer(v650, static Logger.lyrics);
                v651 = v737;

                v652 = Logger.logObject.getter();
                v653 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v652, v653))
                {
                  v654 = swift_slowAlloc();
                  v655 = swift_slowAlloc();
                  v741 = v652;
                  v742 = v655;
                  v745 = v655;
                  *v654 = v697;
                  v656 = *(v39 + 72);
                  v657 = *(v39 + 80);

                  v658 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v656, v657, &v745);

                  *(v654 + 4) = v658;
                  *(v654 + 12) = 2082;
                  v659 = v716[1];
                  *&v777 = *v716;
                  *(&v777 + 1) = v659;
                  v748 = 10519010;
                  v749 = 0xA300000000000000;
                  v750 = 44226;
                  v751 = 0xA200000000000000;
                  LODWORD(v739) = v653;
                  *&v777 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                  *(&v777 + 1) = v660;
                  v661 = String.nonBreakingSpace.unsafeMutableAddressor();
                  v662 = v661[1];
                  v748 = *v661;
                  v749 = v662;
                  v750 = 0x3B7073626E26;
                  v751 = 0xE600000000000000;
                  v663 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                  v717 = v254;
                  v665 = v664;

                  *&v777 = v663;
                  *(&v777 + 1) = v665;
                  v748 = 10;
                  v749 = 0xE100000000000000;
                  v750 = 28252;
                  v751 = 0xE200000000000000;
                  v666 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                  v668 = v667;

                  v669 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v666, v668, &v745);

                  *(v654 + 14) = v669;
                  v670 = v741;
                  _os_log_impl(&_mh_execute_header, v741, v739, "[Transliteration] Word %s crossed view bounds after final adjustment, adding line break. New text: %{public}s", v654, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {
                }

                goto LABEL_521;
              }

LABEL_390:
            }
          }

          v437 = v692;
LABEL_392:
          v442 = specialized Array._getCount()(v438);
          if (v442)
          {
            v443 = v442;
            if (v442 < 1)
            {
LABEL_550:
              __break(1u);
              goto LABEL_551;
            }

            for (i = 0; i != v443; ++i)
            {
              if ((v438 & 0xC000000000000001) != 0)
              {
                v445 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
              }

              *(v445 + 224) = v437 + *(v445 + 224);
            }
          }

          v446 = v705;
          v108 = v759;
          v111 = v760;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7LyricsX06SyncedD8LineViewC015SBS_TextContentG0C0iG0C21TransliterationResult33_2B1CF170FA12E5118C57D48B547982CALLO8MetadataV0F0VGMd);
          v109 = swift_allocObject();
          *(v109 + 1) = xmmword_1004F2400;

          *&v777 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7LyricsX06SyncedE8LineViewC0G0C_Tt0g5Tm(v447, specialized Array._copyContents(initializing:));
          specialized MutableCollection<>.sort(by:)(&v777);

          v109[4] = v777;
          v109[5] = v44;

LABEL_400:

          v27 = v313;
          goto LABEL_401;
        }

        goto LABEL_252;
      }

      LODWORD(v739) = 0;
    }

    object = v318;
    goto LABEL_251;
  }

  object = _CocoaArrayWrapper.endIndex.getter();
  if (!object)
  {
    goto LABEL_269;
  }

LABEL_262:
  v36 = v39 & 0xC000000000000001;
  if ((v39 & 0xC000000000000001) != 0)
  {

    v325 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_542;
    }

    v325 = *(v39 + 32);
  }

  v726 = object;
  v732 = v39 & 0xC000000000000001;
  v733 = v39;
  v728 = v325;
  v711 = v40;
  v693 = v316;
  v717 = v254;
  if (!v316)
  {
    LODWORD(v741) = 0;
    v738 = 0;
    v730 = 0;
    v725 = 0;
    v36 = 0;
    v347 = location;
    v348 = *(location + 32);
    v791 = *(location + 16);
    v792 = v348;
    v793 = *(location + 48);
    v794 = *(location + 64);
LABEL_285:
    object = *(v347 + 64);
    v349 = *(v347 + 32);
    v39 = *(v347 + 40);
    v44 = *(v347 + 16);
    v350 = *(v347 + 24);
    v824 = v792;
    v825 = v793;
    outlined init with copy of String(&v824, &v777);
    outlined init with copy of TaskPriority?(&v825, &v777, &_sSay7LyricsX0A0C8SyllableVGMd);
    outlined consume of Lyrics.Word?(v36, v725, v730, 0);
    outlined consume of Lyrics.Word?(v44, v350, v349, v39);
    goto LABEL_286;
  }

  v327 = *(v316 + 16);
  v326 = *(v316 + 24);
  v39 = *(v316 + 32);
  object = *(v316 + 40);
  v328 = v316;
  v329 = *(v316 + 48);
  v330 = *(v328 + 56);
  v36 = *(v328 + 64);
  v331 = *(location + 32);
  v791 = *(location + 16);
  v792 = v331;
  v793 = *(location + 48);
  v794 = *(location + 64);

  if (!object)
  {
    v347 = location;
    LODWORD(v741) = v36;
    v738 = v330;
    v730 = v39;
    v725 = v326;
    v36 = v327;
    goto LABEL_285;
  }

  v784 = v327;
  v785 = v326;
  v786 = v39;
  v787 = object;
  v788 = v329;
  v789 = v330;
  v790 = v36;
  v332 = specialized static Lyrics.Word.__derived_struct_equals(_:_:)(&v784, &v791);
  outlined consume of Lyrics.Word?(v327, v326, v39, object);
  if (v332)
  {

    v316 = v693;
    v44 = v694;
    v254 = v717;
    v40 = v711;
    v318 = v714;
    goto LABEL_269;
  }

LABEL_286:
  v725 = &v726[-1].isa + 7;
  v40 = v728;
  if (__OFSUB__(v726, 1))
  {
    goto LABEL_543;
  }

  swift_beginAccess();
  v351 = 0;
  v352 = v732;
  v36 = v733;
  v720 = v733 & 0xFFFFFFFFFFFFFF8;
  v730 = v733 + 32;
  a10 = v691;
  *&v44 = v717;
  v254 = *&v731;
  while (2)
  {
    if (v352)
    {
      v353 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v57 = __OFADD__(v351, 1);
      v354 = (&v351->isa + 1);
      if (v57)
      {
        goto LABEL_514;
      }
    }

    else
    {
      if (v351 >= *(v720 + 16))
      {
        goto LABEL_525;
      }

      v353 = *(v730 + 8 * v351);

      v57 = __OFADD__(v351, 1);
      v354 = (&v351->isa + 1);
      if (v57)
      {
LABEL_514:
        __break(1u);
LABEL_515:
        SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(before:)(v39);
        goto LABEL_516;
      }
    }

    v355 = CGRectGetWidth(*(v353 + 176));

    if (v352)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    v356 = === infix(_:_:)();

    v357 = *(v353 + 176);
    if (v356)
    {
      *(location + 144) = v357;
    }

    SyncedLyricsLineView.Word.frame.setter(v313 + v357, *(v353 + 184), *(v353 + 192), *(v353 + 200));
    v741 = v353;
    v738 = v354;
    if (*&v44 == 0.0)
    {
LABEL_322:
      swift_retain_n();
      if (v352)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v378 = === infix(_:_:)();

      if (v378)
      {
        v379 = v741[22].isa;
        v254 = *&v379 - *(location + 176);
        SyncedLyricsLineView.Word.frame.setter(*&v379, *&v741[23].isa, *(location + 192), *(location + 200));
        LODWORD(v739) = 0;
        LODWORD(v729) = 0;
        v736 = v254;
      }
    }

    else
    {
      v358 = v40;
      v359 = *(v44 + 112);
      v360 = *(v353 + 112);
      if (v360 <= v359)
      {
        v36 = *(v44 + 112);
      }

      else
      {
        v36 = *(v353 + 112);
      }

      if (v360 >= v359)
      {
        v361 = *(v44 + 112);
      }

      else
      {
        v361 = *(v353 + 112);
      }

      if (__OFADD__(v361, 1))
      {
        __break(1u);
LABEL_523:
        __break(1u);
LABEL_524:
        __break(1u);
LABEL_525:
        __break(1u);
LABEL_526:
        __break(1u);
LABEL_527:
        __break(1u);
        goto LABEL_528;
      }

      if (v361 + 1 < v36)
      {
        *&v731 = v254;
        v362 = v709;
        v363 = v742;
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v361 + 1, v709 == 0, v742);
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v36 - 1, v362 == 0, v363);

        v364 = (v361 + 1);
        if (v362)
        {
          do
          {
            v365 = v364 + 1;
            v366 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            SyncedLyricsLineView.Word.frame.setter(v313 + v366[22], v366[23], v366[24], v366[25]);
            swift_unknownObjectRelease();
            v364 = v365;
          }

          while (v36 != v365);
        }

        else
        {
          v367 = ~v361 + v36;
          v368 = (v695 + 8 * v361);
          do
          {
            v369 = *v368++;
            v27 = v369[23];
            v370 = v369[24];
            v371 = v369[25];
            v372 = v313 + v369[22];

            SyncedLyricsLineView.Word.frame.setter(v372, v27, v370, v371);

            --v367;
          }

          while (v367);
        }

        v358 = v728;
        v254 = *&v731;
        v352 = v732;
      }

      v373 = v736;
      if (v353 == v44)
      {
        v373 = v254;
      }

      v736 = v373;
      v374 = v739;
      if (v353 == v44)
      {
        v374 = v729;
      }

      if ((v353 != v44) | v729 & 1)
      {
        LODWORD(v739) = v374;
        v36 = v733;
        v40 = v358;
        goto LABEL_322;
      }

      v375 = *(location + 184);
      v376 = *(location + 192);
      v377 = *(location + 200);
      v27 = *(location + 176) + v254;

      SyncedLyricsLineView.Word.frame.setter(v27, v375, v376, v377);
      LODWORD(v739) = 0;
      LODWORD(v729) = 0;
      v736 = v254;
      v36 = v733;
      v40 = v358;
    }

    v380 = *(v40 + 32);
    v781[0] = *(v40 + 16);
    v781[1] = v380;
    v782 = *(v40 + 48);
    v783 = *(v40 + 64);
    v381 = *&v737[v727];
    if (*(v381 + 16))
    {
      v382 = v40;
      v826 = *(v40 + 32);
      v827[0] = v782;
      outlined init with copy of String(&v826, &v777);
      outlined init with copy of TaskPriority?(v827, &v777, &_sSay7LyricsX0A0C8SyllableVGMd);

      v383 = specialized __RawDictionaryStorage.find<A>(_:)(v781);
      v385 = v384;
      outlined destroy of String(&v826);
      outlined destroy of TaskPriority?(v827, &_sSay7LyricsX0A0C8SyllableVGMd);
      if (v385)
      {
        v731 = *(*(v381 + 56) + 8 * v383);
      }

      else
      {

        *&v731 = 0.0;
      }

      v352 = v732;
      v36 = v733;
      v40 = v382;
      if (v732)
      {
LABEL_337:
        v386 = v741;

        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v351 = v738;
        goto LABEL_338;
      }
    }

    else
    {
      *&v731 = 0.0;
      if (v352)
      {
        goto LABEL_337;
      }
    }

    v351 = v738;
    if ((v725 & 0x8000000000000000) != 0)
    {
      goto LABEL_526;
    }

    if (v725 >= *(v720 + 16))
    {
      goto LABEL_527;
    }

    v386 = v741;

LABEL_338:
    a10 = a10 + v355;
    v39 = === infix(_:_:)();

    if ((v39 & 1) == 0)
    {
      goto LABEL_362;
    }

    v387 = v386[6].isa;
    v388 = *(v387 + 2);
    if (v388)
    {
      v389 = v387 + 56 * v388;
      v391 = *(v389 + 1);
      v390 = *(v389 + 2);
      v57 = __OFADD__(v391, v390);
      v388 = v391 + v390;
      if (v57)
      {
        goto LABEL_529;
      }

      v392 = *(v387 + 8);
    }

    else
    {
      v392 = 0;
    }

    v393 = v388 - v392;
    if (__OFSUB__(v388, v392))
    {
      goto LABEL_523;
    }

    v394 = v724 + v392;
    if (__OFADD__(v392, v724))
    {
      goto LABEL_524;
    }

    v395.location = v724 + v392;
    v395.length = v388 - v392;
    if (_NSRange.contains(_:)(v395))
    {
      goto LABEL_359;
    }

    if (v731 == 1)
    {

      v448 = v727;
      v449 = *(v728 + 2);
      v777 = *(v728 + 1);
      v778 = v449;
      v779 = *(v728 + 3);
      v780 = *(v728 + 64);
      v450 = v737;
      swift_beginAccess();
      v451 = swift_isUniquelyReferenced_nonNull_native();
      v750 = *&v450[v448];
      *&v450[v448] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(2, &v777, v451);
      *&v450[v448] = v750;
      swift_endAccess();
      if (v732)
      {
        v452 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        v453 = *(v452 + 88);
        swift_unknownObjectRelease();
      }

      else
      {
        v498 = *(v733 + 32);

        v453 = *(v498 + 88);
      }

      v27 = 0.0;
      if (v453 != v735)
      {
        v717 = *&v44;
        v245 = v737;
        v507 = *&v737[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8];
        v508 = v716;
        *v716 = *&v737[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
        v508[1] = v507;

        if (one-time initialization token for lyrics != -1)
        {
          goto LABEL_558;
        }

        goto LABEL_425;
      }

      v499 = String._bridgeToObjectiveC()();

      v500 = String._bridgeToObjectiveC()();
      v501 = String._bridgeToObjectiveC()();
      v502 = _swiftEmptyArrayStorage[2];
      if (v502)
      {
        v503 = 0;
        v504 = &_swiftEmptyArrayStorage[4];
        do
        {
          v506 = *v504++;
          v505 = v506;
          if ((v506 & ~v503) == 0)
          {
            v505 = 0;
          }

          v503 |= v505;
          --v502;
        }

        while (v502);
      }

      else
      {
        v503 = 0;
      }

      v607 = [v499 stringByReplacingOccurrencesOfString:v500 withString:v501 options:v503 range:{v394, v393}];

      v608 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v610 = v609;

      v611 = v716;
      *v716 = v608;
      v611[1] = v610;

      v612 = [v499 length];
      v456 = v611[1];

      v613 = String.count.getter();

      v57 = __OFSUB__(v612, v613);
      v463 = &v612[-v613];
      if (v57)
      {
        __break(1u);
      }

      else
      {
        v614 = specialized Lyrics.Word.range.getter(v386[6].isa);
        if (!__OFSUB__(v724, v463))
        {
          v616 = (v724 - v463) & ~((v724 - v463) >> 63);
          v463 = (v614 + v616);
          if (!__OFADD__(v614, v616))
          {
            v617 = v615;
            v618 = &v463[v615];
            if (!__OFADD__(v463, v615))
            {

              v619 = String.count.getter();

              if (v618 == v619)
              {

                goto LABEL_115;
              }

              v740 = v499;
              v717 = *&v44;
              v620 = v617;
              v621 = v737;
              SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(after:)(v463, v620);
              if (one-time initialization token for lyrics != -1)
              {
                swift_once();
              }

              v622 = type metadata accessor for Logger();
              __swift_project_value_buffer(v622, static Logger.lyrics);
              v623 = swift_allocObject();
              *(v623 + 16) = v621;
              v624 = v621;

              v739 = Logger.logObject.getter();
              LODWORD(v742) = static os_log_type_t.default.getter();
              v625 = swift_allocObject();
              *(v625 + 16) = 32;
              v626 = swift_allocObject();
              *(v626 + 16) = 8;
              v627 = swift_allocObject();
              *(v627 + 16) = partial apply for implicit closure #9 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
              *(v627 + 24) = *&v386;
              v628 = swift_allocObject();
              *(v628 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
              *(v628 + 24) = v627;
              v629 = swift_allocObject();
              *(v629 + 16) = 34;
              v630 = swift_allocObject();
              *(v630 + 16) = 8;
              v631 = swift_allocObject();
              *(v631 + 16) = partial apply for implicit closure #19 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
              *(v631 + 24) = v623;
              v632 = swift_allocObject();
              *(v632 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
              *(v632 + 24) = v631;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
              v633 = swift_allocObject();
              *(v633 + 16) = xmmword_1004F3070;
              *(v633 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
              *(v633 + 40) = v625;
              *(v633 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
              *(v633 + 56) = v626;
              *(v633 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
              *(v633 + 72) = v628;
              *(v633 + 80) = closure #1 in OSLogArguments.append(_:)partial apply;
              *(v633 + 88) = v629;
              *(v633 + 96) = closure #1 in OSLogArguments.append(_:)partial apply;
              *(v633 + 104) = v630;
              *(v633 + 112) = closure #1 in OSLogArguments.append(_:)partial apply;
              *(v633 + 120) = v632;
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v634 = v739;
              if (os_log_type_enabled(v739, v742))
              {
                v635 = swift_slowAlloc();
                v747 = swift_slowAlloc();
                *v635 = v697;
                v636 = v386[9].isa;
                v637 = v386[10].isa;

                v638 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v636, v637, &v747);

                *(v635 + 4) = v638;
                *(v635 + 12) = 2082;
                v639 = v716[1];
                v748 = *v716;
                v749 = v639;
                v750 = 10519010;
                v751 = 0xA300000000000000;
                v745 = 44226;
                v746 = 0xA200000000000000;
                v748 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                v749 = v640;
                v641 = String.nonBreakingSpace.unsafeMutableAddressor();
                v642 = v641[1];
                v750 = *v641;
                v751 = v642;
                v745 = 0x3B7073626E26;
                v746 = 0xE600000000000000;
                v643 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                v645 = v644;

                v748 = v643;
                v749 = v645;
                v750 = 10;
                v751 = 0xE100000000000000;
                v745 = 28252;
                v746 = 0xE200000000000000;
                v646 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                v648 = v647;

                v649 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v646, v648, &v747);

                *(v635 + 14) = v649;
                _os_log_impl(&_mh_execute_header, v634, v742, "[Transliteration] Word %s is not fully contained in this line, and it's the only word in this line. Adding line break after it and trying again. New text: %{public}s", v635, 0x16u);
                swift_arrayDestroy();

                goto LABEL_507;
              }

              goto LABEL_509;
            }

LABEL_562:
            __break(1u);
            goto LABEL_563;
          }

LABEL_561:
          __break(1u);
          goto LABEL_562;
        }
      }

      __break(1u);
      goto LABEL_561;
    }

    if (v731 >= 2)
    {
      if (one-time initialization token for lyrics != -1)
      {
        swift_once();
      }

      v407 = type metadata accessor for Logger();
      __swift_project_value_buffer(v407, static Logger.lyrics);
      v408 = v715;

      v409 = v721._object;

      v400 = Logger.logObject.getter();
      v410 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v400, v410))
      {
        v402 = swift_slowAlloc();
        v411 = swift_slowAlloc();
        v717 = *&v44;
        *&v777 = v411;
        *v402 = v696;
        *(v402 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(countAndFlagsBits, v408, &v777);
        *(v402 + 12) = 2082;
        *(v402 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v721._countAndFlagsBits, v409, &v777);
        v404 = v410;
        v405 = v400;
        v406 = "[Transliteration] Trying to insert a line break for the third time. The view might be too small to fulfill the layout requirements. Not doing any more adjustments. Line: %{public}s transliterated line: %{public}s";
LABEL_357:
        _os_log_impl(&_mh_execute_header, v405, v404, v406, v402, 0x16u);
        swift_arrayDestroy();
        *&v44 = v717;
      }
    }

    else
    {
      v396 = v728;
      if (v728[14])
      {
        v493 = v731;

        v494 = *(v396 + 32);
        v777 = *(v396 + 16);
        v778 = v494;
        v779 = *(v396 + 48);
        v780 = *(v396 + 64);
        v495 = v737;
        v496 = v727;
        swift_beginAccess();
        v497 = swift_isUniquelyReferenced_nonNull_native();
        v750 = *&v495[v496];
        *&v495[v496] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v493 + 1, &v777, v497);
        *&v495[v496] = v750;
        swift_endAccess();
        if (v722)
        {
          SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(after:)(*(v396 + 88), *(v396 + 96));
        }

        else
        {
          SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(before:)(v396);
        }

        v27 = 0.0;
        v717 = *&v44;
        if (one-time initialization token for lyrics != -1)
        {
          swift_once();
        }

        v581 = type metadata accessor for Logger();
        __swift_project_value_buffer(v581, static Logger.lyrics);
        v582 = swift_allocObject();
        v583 = v737;
        *(v582 + 16) = v737;
        v584 = v583;
        v585 = Logger.logObject.getter();
        v586 = static os_log_type_t.default.getter();
        v587 = swift_allocObject();
        *(v587 + 16) = 34;
        v588 = swift_allocObject();
        *(v588 + 16) = 8;
        v589 = swift_allocObject();
        *(v589 + 16) = partial apply for implicit closure #19 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
        *(v589 + 24) = v582;
        v590 = swift_allocObject();
        *(v590 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
        *(v590 + 24) = v589;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
        v591 = swift_allocObject();
        *(v591 + 16) = xmmword_1004F2EB0;
        *(v591 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v591 + 40) = v587;
        *(v591 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v591 + 56) = v588;
        *(v591 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v591 + 72) = v590;
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (os_log_type_enabled(v585, v586))
        {
          v592 = swift_slowAlloc();
          v593 = swift_slowAlloc();
          v747 = v593;
          *v592 = 136446210;
          v594 = v716[1];
          v748 = *v716;
          v749 = v594;
          v750 = 10519010;
          v751 = 0xA300000000000000;
          v745 = 44226;
          v746 = 0xA200000000000000;
          LODWORD(v742) = v586;
          v748 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v749 = v595;
          v596 = String.nonBreakingSpace.unsafeMutableAddressor();
          v597 = v596[1];
          v750 = *v596;
          v751 = v597;
          v745 = 0x3B7073626E26;
          v746 = 0xE600000000000000;
          v598 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v600 = v599;

          v748 = v598;
          v749 = v600;
          v750 = 10;
          v751 = 0xE100000000000000;
          v745 = 28252;
          v746 = 0xE200000000000000;
          v601 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v603 = v602;

          v604 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v601, v603, &v747);

          *(v592 + 4) = v604;
          _os_log_impl(&_mh_execute_header, v585, v742, "[Transliteration] Word is incomplete in this line, adding line break. New text: %{public}s", v592, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v593);
        }

        else
        {
        }

        goto LABEL_411;
      }

      if (one-time initialization token for lyrics != -1)
      {
        swift_once();
      }

      v397 = type metadata accessor for Logger();
      __swift_project_value_buffer(v397, static Logger.lyrics);
      v398 = v715;

      v399 = v721._object;

      v400 = Logger.logObject.getter();
      v401 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v400, v401))
      {
        v402 = swift_slowAlloc();
        v403 = swift_slowAlloc();
        v717 = *&v44;
        *&v777 = v403;
        *v402 = v696;
        *(v402 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(countAndFlagsBits, v398, &v777);
        *(v402 + 12) = 2082;
        *(v402 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v721._countAndFlagsBits, v399, &v777);
        v404 = v401;
        v405 = v400;
        v406 = "[Transliteration] Word is incomplete in this line, but the current view size will not accomodate all of it. Not doing any adjustments. Line: %{public}s transliterated line: %{public}s";
        goto LABEL_357;
      }
    }

    v36 = v733;
LABEL_359:
    v39 = location;
    v412 = CGRectGetWidth(*(location + 176));
    v413 = v714;
    if (a10 < v412 + *(v714 + 336))
    {
      v414 = CGRectGetWidth(*(v39 + 176)) - a10 + *(v413 + 336);
      v313 = v313 + v414;
      SyncedLyricsLineView.Word.frame.setter(*&v386[22].isa, *&v386[23].isa, v414 + *&v386[24].isa, *&v386[25].isa);
    }

    v40 = v728;
    v352 = v732;
LABEL_362:
    v415 = CGRectGetMaxX(*&v386[22].isa);
    *&v777 = v415;
    v748 = *&a9;
    if ((dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1) != 0 || v415 <= a9)
    {

      goto LABEL_289;
    }

    if (v731 > 1)
    {
      v39 = v40;
      if (one-time initialization token for lyrics != -1)
      {
        swift_once();
      }

      v416 = type metadata accessor for Logger();
      __swift_project_value_buffer(v416, static Logger.lyrics);
      v417 = v737;
      v418 = Logger.logObject.getter();
      v419 = static os_log_type_t.default.getter();

      v706 = v419;
      if (os_log_type_enabled(v418, v419))
      {
        v420 = swift_slowAlloc();
        v745 = swift_slowAlloc();
        *v420 = v697;
        v421 = CGSize.description.getter();
        v39 = v418;
        v423 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v421, v422, &v745);

        *(v420 + 4) = v423;
        *(v420 + 12) = 2082;
        v424 = v716[1];
        *&v777 = *v716;
        *(&v777 + 1) = v424;
        v748 = 10519010;
        v749 = 0xA300000000000000;
        v750 = 44226;
        v751 = 0xA200000000000000;
        v717 = *&v44;
        *&v731 = v254;
        *&v777 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        *(&v777 + 1) = v425;
        v426 = String.nonBreakingSpace.unsafeMutableAddressor();
        v427 = v426[1];
        v748 = *v426;
        v749 = v427;
        v750 = 0x3B7073626E26;
        v751 = 0xE600000000000000;
        v428 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v430 = v429;

        *&v777 = v428;
        *(&v777 + 1) = v430;
        v748 = 10;
        v749 = 0xE100000000000000;
        v750 = 28252;
        v751 = 0xE200000000000000;
        v254 = *&v731;
        v36 = v733;
        v431 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v433 = v432;

        v434 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v431, v433, &v745);

        *(v420 + 14) = v434;
        _os_log_impl(&_mh_execute_header, v39, v706, "[Transliteration][Width check] Tried too many times to add a line break before the same word. This layout might be impossible, usually when the width is too narrow. Give up on adjustments. Size: %s Text: %{public}s", v420, 0x16u);
        swift_arrayDestroy();

        v352 = v732;
        v40 = v728;
      }

      else
      {

        v40 = v39;
      }

      v386 = v741;
LABEL_289:
      v44 = v386;
      if (v351 == v726)
      {
        v39 = v40;
        *&v731 = v254;

        v435 = location;
        v436 = CGRectGetMaxX(*(location + 176));
        v40 = v711;
        if (v692 < v436)
        {
          v692 = CGRectGetMaxX(*(v435 + 176));
        }

        v254 = *&v386;
        v27 = 0.0;
        v44 = v694;
        object = v714;
        goto LABEL_251;
      }

      continue;
    }

    break;
  }

  if (v731 == 1)
  {
    v717 = *&v44;
    v454 = v716;
    v455 = v716[1];
    *&v777 = *v716;
    *(&v777 + 1) = v455;

    v456 = String.nonBreakingSpace.unsafeMutableAddressor();
    v457 = v456[1];
    v748 = *v456;
    v749 = v457;
    v750 = 0;
    v751 = 0xE000000000000000;
    v458 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v459 = v40;
    v461 = v460;

    *v454 = v458;
    v454[1] = v461;

    v462 = *(v459 + 32);
    v777 = *(v459 + 16);
    v778 = v462;
    v779 = *(v459 + 48);
    v780 = *(v459 + 64);
    v463 = v737;
    v464 = v727;
    swift_beginAccess();
    v465 = swift_isUniquelyReferenced_nonNull_native();
    v750 = *&v463[v464];
    *&v463[v464] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(2, &v777, v465);
    *&v463[v464] = v750;
    swift_endAccess();
    v27 = 0.0;
    if (one-time initialization token for lyrics == -1)
    {
LABEL_406:
      v466 = type metadata accessor for Logger();
      __swift_project_value_buffer(v466, static Logger.lyrics);
      v467 = swift_allocObject();
      *(v467 + 16) = v463;
      v468 = v463;
      v469 = Logger.logObject.getter();
      v470 = static os_log_type_t.default.getter();
      v471 = swift_allocObject();
      *(v471 + 16) = 34;
      v472 = swift_allocObject();
      *(v472 + 16) = 8;
      v473 = swift_allocObject();
      *(v473 + 16) = partial apply for implicit closure #19 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
      *(v473 + 24) = v467;
      v474 = swift_allocObject();
      *(v474 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_0;
      *(v474 + 24) = v473;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
      v475 = swift_allocObject();
      *(v475 + 16) = xmmword_1004F2EB0;
      *(v475 + 32) = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      *(v475 + 40) = v471;
      *(v475 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v475 + 56) = v472;
      *(v475 + 64) = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      *(v475 + 72) = v474;
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if (os_log_type_enabled(v469, v470))
      {
        v476 = swift_slowAlloc();
        v477 = swift_slowAlloc();
        v747 = v477;
        *v476 = 136446210;
        v478 = v716[1];
        v748 = *v716;
        v749 = v478;
        v750 = 10519010;
        v751 = 0xA300000000000000;
        v745 = 44226;
        v746 = 0xA200000000000000;
        LODWORD(v742) = v470;
        v748 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v749 = v479;
        v480 = v456[1];
        v750 = *v456;
        v751 = v480;
        v745 = 0x3B7073626E26;
        v746 = 0xE600000000000000;
        v481 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v483 = v482;

        v748 = v481;
        v749 = v483;
        v750 = 10;
        v751 = 0xE100000000000000;
        v745 = 28252;
        v746 = 0xE200000000000000;
        v484 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v486 = v485;

        v487 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v484, v486, &v747);

        *(v476 + 4) = v487;
        _os_log_impl(&_mh_execute_header, v469, v742, "[Transliteration][Width check] Trying to insert a line break for the second time before the same word. A nonbreaking space could be making this layout impossible, resetting string and trying again. New text: %{public}s", v476, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v477);
      }

      else
      {
      }

      goto LABEL_476;
    }

LABEL_563:
    swift_once();
    goto LABEL_406;
  }

  v488 = *(v40 + 32);
  v777 = *(v40 + 16);
  v778 = v488;
  v779 = *(v40 + 48);
  v780 = *(v40 + 64);
  v489 = v737;
  v490 = v727;
  v491 = v731;
  swift_beginAccess();
  v492 = swift_isUniquelyReferenced_nonNull_native();
  v750 = *&v489[v490];
  *&v489[v490] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v491 + 1, &v777, v492);
  *&v489[v490] = v750;
  swift_endAccess();
  v27 = 0.0;
  if (v722)
  {
    SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(after:)(*(v40 + 88), *(v40 + 96));
  }

  else
  {
    SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(before:)(v40);
  }

  v561 = location;
  if (one-time initialization token for lyrics != -1)
  {
    swift_once();
  }

  v562 = type metadata accessor for Logger();
  __swift_project_value_buffer(v562, static Logger.lyrics);
  v563 = v737;

  v564 = Logger.logObject.getter();
  v565 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v564, v565))
  {
    v566 = swift_slowAlloc();
    v742 = swift_slowAlloc();
    location = v561;
    v747 = v742;
    *v566 = v697;
    v567 = v561[9];
    v568 = v561[10];

    v569 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v567, v568, &v747);

    *(v566 + 4) = v569;
    *(v566 + 12) = 2082;
    v570 = v716[1];
    v748 = *v716;
    v749 = v570;
    v750 = 10519010;
    v751 = 0xA300000000000000;
    v745 = 44226;
    v746 = 0xA200000000000000;
    v717 = *&v44;
    v748 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v749 = v571;
    v572 = String.nonBreakingSpace.unsafeMutableAddressor();
    v573 = v572[1];
    v750 = *v572;
    v751 = v573;
    v745 = 0x3B7073626E26;
    v746 = 0xE600000000000000;
    v574 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v576 = v575;

    v748 = v574;
    v749 = v576;
    v750 = 10;
    v751 = 0xE100000000000000;
    v745 = 28252;
    v746 = 0xE200000000000000;
    v577 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v579 = v578;

    v580 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v577, v579, &v747);

    *(v566 + 14) = v580;
    _os_log_impl(&_mh_execute_header, v564, v565, "[Transliteration] Word %s crossed view bounds after adjustment, adding line break. New text: %{public}s", v566, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_475:

LABEL_476:

LABEL_477:
  v108 = 0;
  v111 = 0;
  v109 = 0;
  v110 = 0;
LABEL_116:
  a8 = v719;
LABEL_179:
  *a8 = v108;
  *(a8 + 8) = v111;
  *(a8 + 16) = v109;
  *(a8 + 24) = v27;
  *(a8 + 32) = v110;
}

uint64_t implicit closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:)()
{
  _sS2SSysWl_2();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  String.nonBreakingSpace.unsafeMutableAddressor();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v0;
}

uint64_t SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(before:)(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
  v4 = objc_allocWithZone(NSMutableString);

  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithString:v5];

  v7 = *(a1 + 88);
  v8 = v6;
  v9 = [v8 substringWithRange:{v7, 1}];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == 32 && v12 == 0xE100000000000000)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (__OFADD__(v7++, 1))
  {
    __break(1u);
    return result;
  }

LABEL_9:
  v17 = String._bridgeToObjectiveC()();
  [v8 insertString:v17 atIndex:v7];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *v3 = v18;
  v3[1] = v20;
}

void SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(after:)(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
  v6 = objc_allocWithZone(NSMutableString);

  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithString:v7];

  v9 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v8;
  v11 = [v10 substringWithRange:{v9, 1}];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == 32 && v14 == 0xE100000000000000)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (__OFADD__(v9++, 1))
  {
LABEL_14:
    __break(1u);
    return;
  }

LABEL_10:
  v18 = String._bridgeToObjectiveC()();
  [v10 insertString:v18 atIndex:v9];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *v5 = v19;
  v5[1] = v21;
}

id SyncedLyricsLineView.SBS_TextContentView.TextView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncedLyricsLineView.SBS_TextContentView.TextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SyncedLyricsLineView.SBS_TextContentView.TextView()
{
  result = type metadata singleton initialization cache for SyncedLyricsLineView.SBS_TextContentView.TextView;
  if (!type metadata singleton initialization cache for SyncedLyricsLineView.SBS_TextContentView.TextView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SyncedLyricsLineView.SBS_TextContentView.TextView()
{
  type metadata accessor for Locale.Language?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Locale.Language?()
{
  if (!lazy cache variable for type metadata for Locale.Language?)
  {
    type metadata accessor for Locale.Language();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Locale.Language?);
    }
  }
}

__n128 __swift_memcpy96_8_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C22TranslationLabelUpdateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    v2 = a2 & 0x7FFFFFFF;
    *(result + 24) = 0u;
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

unint64_t lazy protocol witness table accessor for type SyncedLyricsLineView.SBS_TextContentView.TextView.Kind and conformance SyncedLyricsLineView.SBS_TextContentView.TextView.Kind()
{
  result = lazy protocol witness table cache variable for type SyncedLyricsLineView.SBS_TextContentView.TextView.Kind and conformance SyncedLyricsLineView.SBS_TextContentView.TextView.Kind;
  if (!lazy protocol witness table cache variable for type SyncedLyricsLineView.SBS_TextContentView.TextView.Kind and conformance SyncedLyricsLineView.SBS_TextContentView.TextView.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SyncedLyricsLineView.SBS_TextContentView.TextView.Kind and conformance SyncedLyricsLineView.SBS_TextContentView.TextView.Kind);
  }

  return result;
}

id *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7LyricsX06SyncedH8LineViewC0J0C_Tt1g5Tm(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_2);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_2);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

id *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7LyricsX06SyncedH8LineViewC0J0C_Tt1g5Tm(v1, 0);

    specialized _ArrayBuffer._copyContents(initializing:)();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

uint64_t specialized UnsafeBufferPointer<A>._firstIndex(of:)(double *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a2;
    v5 = a1;
    v6 = 0;
    v7 = *a1;
    do
    {
      v8 = v4 + 56 * v6;
      if (*v8 == v7 && *(v8 + 8) == v5[1])
      {
        result = *(v8 + 16);
        v10 = *(v8 + 32);
        v11 = *(v8 + 40);
        v25 = *(v8 + 48);
        v12 = result == *(v5 + 2) && *(v8 + 24) == *(v5 + 3);
        if (v12 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 = a1, v4 = a2, v3 = a3, (result & 1) != 0))
        {
          v13 = *(v5 + 4);
          v14 = *(v10 + 16);
          if (v14 == *(v13 + 16))
          {
            if (v14)
            {
              v15 = v10 == v13;
            }

            else
            {
              v15 = 1;
            }

            if (!v15)
            {
              v16 = (v10 + 80);
              v17 = v13 + 40;
              while (v14)
              {
                if (*(v16 - 6) != *(v17 - 8) || *(v16 - 5) != *v17)
                {
                  goto LABEL_4;
                }

                result = *(v16 - 4);
                v19 = *(v16 - 2);
                v20 = *(v16 - 1);
                v21 = *v16;
                v23 = *(v17 + 24);
                v22 = *(v17 + 32);
                v24 = *(v17 + 40);
                if (result != *(v17 + 8) || *(v16 - 3) != *(v17 + 16))
                {
                  result = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v5 = a1;
                  v4 = a2;
                  v3 = a3;
                  if ((result & 1) == 0)
                  {
                    goto LABEL_4;
                  }
                }

                if (v19 != v23 || v20 != v22 || *&v21 != v24)
                {
                  goto LABEL_4;
                }

                v16 += 7;
                v17 += 56;
                if (!--v14)
                {
                  goto LABEL_18;
                }
              }

              __break(1u);
              return result;
            }

LABEL_18:
            if (v25)
            {
              if (v5[6])
              {
                return v6;
              }
            }

            else if ((v5[6] & 1) == 0 && v11 == v5[5])
            {
              return v6;
            }
          }
        }
      }

LABEL_4:
      ++v6;
    }

    while (v6 != v3);
  }

  return 0;
}