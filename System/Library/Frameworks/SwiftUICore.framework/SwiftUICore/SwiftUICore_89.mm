void specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(int a1, char *a2, uint64_t a3, char a4, char *a5, unint64_t a6, void (**a7)(char *, uint64_t), void (*a8)(char *, uint64_t))
{
  v69 = a5;
  LOBYTE(v11) = a4;
  v70 = a2;
  LODWORD(v12) = a1;
  v93 = *MEMORY[0x1E69E9840];
  v79 = type metadata accessor for OSSignpostID();
  v13 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  if (one-time initialization token for linkCreate != -1)
  {
LABEL_72:
    swift_once();
  }

  v18 = byte_1ED53762A;
  if (byte_1ED53762A >= 2u)
  {
    v68 = static Signpost.linkCreate;
    v66 = word_1ED537628;
    LODWORD(v19) = HIBYTE(word_1ED537628);
    if (byte_1ED53762A == 2)
    {
      if ((_SwiftUIIsAppleInternalBuild() & 1) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    if ((word_1ED537628 & 0x100) == 0)
    {
      v62 = v12;
      static os_signpost_type_t.event.getter();
      LODWORD(v12) = v62;
      if (!kdebug_is_enabled())
      {
        return;
      }

      goto LABEL_12;
    }

    static os_signpost_type_t.event.getter();
    if (kdebug_is_enabled())
    {
      v63 = v19;
      LODWORD(v19) = v18;
      if (one-time initialization token for _signpostLog != -1)
      {
LABEL_75:
        swift_once();
      }

      v20 = OS_os_log.signpostsEnabled.getter();
      v18 = v19;
      LODWORD(v19) = v63;
      if (v20)
      {
LABEL_12:
        *&v89 = a7;
        (a8)(0);
        v60 = String.init<A>(describing:)();
        v65 = v21;
        v59 = specialized static Tracing.libraryName(defining:)();
        v64 = v22;
        v23 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        if (v11)
        {
LABEL_15:

          return;
        }

        a8 = v13;
        v63 = v19;
        v61 = v17;
        v62 = v12;
        v13 = HIDWORD(a6);
        v12 = v70;
        outlined copy of DynamicPropertyCache.Fields.Layout();
        v24 = v69;
        if (!HIDWORD(a6))
        {
LABEL_14:

          goto LABEL_15;
        }

        v72 = v68;
        if (v68 == 20)
        {
          v25 = 3;
        }

        else
        {
          v25 = 4;
        }

        if (!v69)
        {
          __break(1u);
          return;
        }

        LODWORD(a6) = 0;
        v26 = 0;
        v67 = v12 + 32;
        v52 = v68 >> 14;
        v53 = bswap32(v68);
        v11 = v53 | v52 & 0x3FFFC;
        v76 = v25;
        v77 = (a8 + 16);
        v73 = 16 * v25;
        v78 = (a8 + 8);
        v56 = xmmword_18DDACAA0;
        v55 = v18;
        v54 = v13;
        while (1)
        {
          v17 = &v24[a6];
          if (v26 + 1 == v13)
          {
            a6 = 0;
          }

          else
          {
            a6 = (*(v17 + 2) + a6);
          }

          v27 = *(v12 + 2);
          if (v26 == v27)
          {
            goto LABEL_14;
          }

          if (v26 >= v27)
          {
            __break(1u);
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }

          v71 = v26 + 1;
          v28 = &v67[32 * v26];
          a8 = *v28;
          v19 = *(v28 + 2);
          v29 = static os_signpost_type_t.event.getter();
          if (v18 >= 2)
          {
            a7 = v29;
            if (v18 == 2)
            {
              if ((_SwiftUIIsAppleInternalBuild() & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            else
            {
              static os_signpost_type_t.event.getter();
              if (v63)
              {
                if ((kdebug_is_enabled() & 1) == 0)
                {
                  goto LABEL_28;
                }

                v57 = a6;
                if (one-time initialization token for _signpostLog != -1)
                {
                  swift_once();
                }

                v30 = OS_os_log.signpostsEnabled.getter();
                a6 = v57;
                if ((v30 & 1) == 0)
                {
                  goto LABEL_28;
                }
              }

              else if (!kdebug_is_enabled())
              {
                goto LABEL_28;
              }
            }

            v12 = v24;
            static OSSignpostID.exclusive.getter();
            _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v13 = swift_allocObject();
            *(v13 + 16) = v56;
            a8 = _typeName(_:qualified:)();
            v32 = v31;
            v33 = MEMORY[0x1E69E6158];
            *(v13 + 56) = MEMORY[0x1E69E6158];
            v34 = lazy protocol witness table accessor for type String and conformance String();
            *(v13 + 32) = a8;
            *(v13 + 40) = v32;
            v35 = MEMORY[0x1E69E6810];
            *(v13 + 96) = MEMORY[0x1E69E6810];
            v36 = MEMORY[0x1E69E6870];
            *(v13 + 64) = v34;
            *(v13 + 72) = v17;
            *(v13 + 136) = v33;
            *(v13 + 144) = v34;
            v37 = v60;
            *(v13 + 104) = v36;
            *(v13 + 112) = v37;
            *(v13 + 120) = v65;
            *(v13 + 176) = v33;
            *(v13 + 184) = v34;
            *(v13 + 152) = v59;
            *(v13 + 160) = v64;
            *(v13 + 216) = MEMORY[0x1E69E6530];
            *(v13 + 224) = MEMORY[0x1E69E65A8];
            *(v13 + 192) = v19;
            *(v13 + 256) = MEMORY[0x1E69E7668];
            *(v13 + 264) = MEMORY[0x1E69E76D0];
            *(v13 + 232) = v62;
            *(v13 + 296) = v35;
            *(v13 + 304) = v36;
            if (Counter < 0)
            {
              goto LABEL_74;
            }

            *(v13 + 272) = Counter;
            v38 = one-time initialization token for _signpostLog;

            v39 = v63;
            if (v38 != -1)
            {
              swift_once();
            }

            a8 = v61;
            if ((v39 & 1) == 0)
            {
              v57 = a6;
              a6 = a7;
              v74 = *v77;
              v40 = v74(v81, v61, v79);
              v19 = 0;
              LOBYTE(v83) = 1;
              v75 = v13 + 32;
              v41 = v76;
LABEL_48:
              v80 = &v52;
              MEMORY[0x1EEE9AC00](v40);
              v17 = &v52 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
              v12 = v17 + 8;
              v43 = v41;
              v44 = v17 + 8;
              do
              {
                *(v44 - 1) = 0;
                *v44 = 0;
                v44 += 16;
                --v43;
              }

              while (v43);
              a8 = (v75 + 40 * v19);
              while (1)
              {
                v45 = *(v13 + 16);
                if (v19 == v45)
                {
                  LOBYTE(v83) = 0;
LABEL_56:
                  v48 = v72;
                  if (v72 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  v41 = v76;
                  if (v17[8] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v17[24] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v17[40] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v48 != 20 && v17[56] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v49 = v79;
                  a8 = *v78;
                  a7 = v81;
                  (*v78)(v81, v79);
                  v50 = __swift_project_value_buffer(v49, static OSSignpostID.continuation);
                  v40 = v74(a7, v50, v49);
                  if ((v83 & 1) == 0)
                  {
                    a7 = v78;
                    v51 = v79;
                    a8(v81, v79);
                    a8(v61, v51);

                    v12 = v70;
                    v24 = v69;
                    v18 = v55;
                    v13 = v54;
                    LODWORD(a6) = v57;
                    goto LABEL_28;
                  }

                  goto LABEL_48;
                }

                if (v19 >= v45)
                {
                  break;
                }

                ++v19;
                outlined init with copy of AnyTrackedValue(a8, &v89);
                v46 = v91;
                a7 = v92;
                __swift_project_boxed_opaque_existential_1(&v89, v91);
                *(v12 - 1) = CVarArg.kdebugValue(_:)(v11 | a6, v46);
                *v12 = v47 & 1;
                v12 += 16;
                __swift_destroy_boxed_opaque_existential_1(&v89);
                a8 = (a8 + 40);
                if (!--v41)
                {
                  goto LABEL_56;
                }
              }

              __break(1u);
              goto LABEL_72;
            }

            v24 = v12;
            v88 = a7;
            v86 = _signpostLog;
            v87 = &dword_18D018000;
            v89 = v68;
            v90 = v66;
            v83 = "Attached: %{public}@ [ %p ] to %{public}@ (in %{public}@) at offset +%d [%d] (%p)";
            v84 = 81;
            v85 = 2;
            v82 = v13;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
            (*v78)(a8, v79);

            v18 = v55;
            v13 = v54;
            v12 = v70;
          }

LABEL_28:
          v26 = v71;
          if (v71 == v13 && !a6)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }
}

void specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(int a1, void (*a2)(void, void), uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for ContentCaptureProtectionViewModifier, type metadata accessor for ContentCaptureProtectionViewModifier.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for FlexibleButtonFrameModifier, type metadata accessor for FlexibleButtonFrameModifier.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for SafeAreaPaddingModifier, type metadata accessor for SafeAreaPaddingModifier.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for _ColorMonochromeEffect, type metadata accessor for _ColorMonochromeEffect.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for _AlphaThresholdEffect, type metadata accessor for _AlphaThresholdEffect.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for _ColorMultiplyEffect, type metadata accessor for _ColorMultiplyEffect.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for Rectangle, type metadata accessor for Rectangle.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for Rectangle._Inset, type metadata accessor for Rectangle._Inset.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for _TestApp.RootView, type metadata accessor for _TestApp.RootView.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for AnyShape, type metadata accessor for AnyShape.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for Ellipse, type metadata accessor for Ellipse.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for Ellipse._Inset, type metadata accessor for Ellipse._Inset.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for Capsule, type metadata accessor for Capsule.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for Capsule._Inset, type metadata accessor for Capsule._Inset.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for Circle, type metadata accessor for Circle.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for Circle._Inset, type metadata accessor for Circle._Inset.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for Path, type metadata accessor for Path.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for PartialContainerRelativeShape, type metadata accessor for PartialContainerRelativeShape.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for DefaultGlassEffectShape, type metadata accessor for DefaultGlassEffectShape.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for UnevenRoundedRectangle, type metadata accessor for UnevenRoundedRectangle.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for UnevenRoundedRectangle._Inset.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for ImplicitContainerShape, type metadata accessor for ImplicitContainerShape.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for ContainerRelativeShape, type metadata accessor for ContainerRelativeShape.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for ContainerRelativeShape._Inset, type metadata accessor for ContainerRelativeShape._Inset.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for _IntelligenceSupport.AnimatingSummarySymbol, type metadata accessor for _IntelligenceSupport.AnimatingSummarySymbol.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for _IntelligenceSupport.AnimatingText, type metadata accessor for _IntelligenceSupport.AnimatingText.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for ConcentricRectangle, type metadata accessor for ConcentricRectangle.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for EllipticalGradient, type metadata accessor for EllipticalGradient.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for RoundedRectangle, type metadata accessor for RoundedRectangle.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for RoundedRectangle._Inset, type metadata accessor for RoundedRectangle._Inset.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for AngularGradient, type metadata accessor for AngularGradient.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for RadialGradient, type metadata accessor for RadialGradient.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for LinearGradient, type metadata accessor for LinearGradient.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for _ShadowEffect, type metadata accessor for _ShadowEffect.Type);
}

void specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(int a1, void (*a2)(void, void), uint64_t a3, char a4, uint64_t a5, unint64_t a6, char *a7, void (*a8)(void))
{
  v71 = a5;
  LOBYTE(v11) = a4;
  LODWORD(v13) = a1;
  v95 = *MEMORY[0x1E69E9840];
  v80 = type metadata accessor for OSSignpostID();
  v14 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  if (one-time initialization token for linkCreate != -1)
  {
LABEL_68:
    swift_once();
  }

  v70 = byte_1ED53762A;
  if (byte_1ED53762A >= 2u)
  {
    v69 = static Signpost.linkCreate;
    LODWORD(v19) = word_1ED537628;
    v20 = HIBYTE(word_1ED537628);
    if (byte_1ED53762A == 2)
    {
      if ((_SwiftUIIsAppleInternalBuild() & 1) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    if ((word_1ED537628 & 0x100) == 0)
    {
      v82 = a8;
      static os_signpost_type_t.event.getter();
      a8 = v82;
      if (!kdebug_is_enabled())
      {
        return;
      }

      goto LABEL_12;
    }

    static os_signpost_type_t.event.getter();
    if (kdebug_is_enabled())
    {
      v64 = v20;
      v21 = a2;
      if (one-time initialization token for _signpostLog != -1)
      {
LABEL_71:
        swift_once();
      }

      v22 = OS_os_log.signpostsEnabled.getter();
      a2 = v21;
      v20 = v64;
      if (v22)
      {
LABEL_12:
        v63 = a2;
        *&v91 = a7;
        a8(0);
        v61 = String.init<A>(describing:)();
        v66 = v23;
        v60 = specialized static Tracing.libraryName(defining:)();
        v65 = v24;
        v25 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        if (v11)
        {
LABEL_15:

          return;
        }

        v64 = v20;
        v55 = v19;
        v62 = v18;
        v57 = v13;
        a8 = HIDWORD(a6);
        v26 = v63;

        v13 = v71;
        a6 = v70;
        if (!a8)
        {
LABEL_14:

          goto LABEL_15;
        }

        v73 = v69;
        if (v69 == 20)
        {
          v27 = 3;
        }

        else
        {
          v27 = 4;
        }

        if (!v71)
        {
          __break(1u);
          return;
        }

        v28 = 0;
        v68 = v26 + 4;
        v53 = v69 >> 14;
        v54 = bswap32(v69);
        v21 = (v54 | v53 & 0x3FFFC);
        v77 = v27;
        v78 = (v14 + 16);
        v74 = 16 * v27;
        v79 = (v14 + 8);
        LODWORD(v14) = 0;
        v56 = xmmword_18DDACAA0;
        v67 = a8;
        while (1)
        {
          v18 = (v13 + v14);
          if (v28 + 1 == a8)
          {
            v14 = 0;
          }

          else
          {
            v14 = (*(v18 + 2) + v14);
          }

          v29 = v26[2];
          if (v28 == v29)
          {
            goto LABEL_14;
          }

          if (v28 >= v29)
          {
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          v72 = v28 + 1;
          v19 = v68[4 * v28 + 2];
          v30 = static os_signpost_type_t.event.getter();
          if (a6 >= 2)
          {
            a7 = v30;
            if (a6 == 2)
            {
              if ((_SwiftUIIsAppleInternalBuild() & 1) == 0)
              {
                goto LABEL_64;
              }
            }

            else
            {
              static os_signpost_type_t.event.getter();
              if (v64)
              {
                if ((kdebug_is_enabled() & 1) == 0)
                {
                  goto LABEL_64;
                }

                if (one-time initialization token for _signpostLog != -1)
                {
                  swift_once();
                }

                v31 = OS_os_log.signpostsEnabled.getter();
                v26 = v63;
                if ((v31 & 1) == 0)
                {
                  goto LABEL_64;
                }
              }

              else if (!kdebug_is_enabled())
              {
                goto LABEL_64;
              }
            }

            v58 = v14;
            static OSSignpostID.exclusive.getter();
            _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v14 = swift_allocObject();
            *(v14 + 16) = v56;
            v32 = _typeName(_:qualified:)();
            v34 = v33;
            v11 = MEMORY[0x1E69E6158];
            *(v14 + 56) = MEMORY[0x1E69E6158];
            v35 = lazy protocol witness table accessor for type String and conformance String();
            *(v14 + 32) = v32;
            *(v14 + 40) = v34;
            v36 = MEMORY[0x1E69E6810];
            *(v14 + 96) = MEMORY[0x1E69E6810];
            v37 = MEMORY[0x1E69E6870];
            *(v14 + 64) = v35;
            *(v14 + 72) = v18;
            *(v14 + 136) = v11;
            *(v14 + 144) = v35;
            v38 = v61;
            *(v14 + 104) = v37;
            *(v14 + 112) = v38;
            *(v14 + 120) = v66;
            *(v14 + 176) = v11;
            *(v14 + 184) = v35;
            *(v14 + 152) = v60;
            a8 = v65;
            *(v14 + 160) = v65;
            *(v14 + 216) = MEMORY[0x1E69E6530];
            *(v14 + 224) = MEMORY[0x1E69E65A8];
            *(v14 + 192) = v19;
            *(v14 + 256) = MEMORY[0x1E69E7668];
            *(v14 + 264) = MEMORY[0x1E69E76D0];
            *(v14 + 232) = v57;
            *(v14 + 296) = v36;
            *(v14 + 304) = v37;
            if (Counter < 0)
            {
              goto LABEL_70;
            }

            *(v14 + 272) = Counter;
            a2 = one-time initialization token for _signpostLog;

            if (a2 != -1)
            {
              swift_once();
            }

            v39 = v62;
            if ((v64 & 1) == 0)
            {
              LODWORD(v11) = a7;
              v75 = *v78;
              v40 = v75(v83, v62, v80);
              v19 = 0;
              LOBYTE(v85) = 1;
              v76 = v14 + 32;
              v13 = v77;
LABEL_45:
              v82 = &v53;
              MEMORY[0x1EEE9AC00](v40);
              v81 = &v53 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
              v18 = v81 + 8;
              v42 = v13;
              v43 = v81 + 8;
              do
              {
                *(v43 - 1) = 0;
                *v43 = 0;
                v43 += 16;
                --v42;
              }

              while (v42);
              a8 = (v76 + 40 * v19);
              a6 = v18;
              while (1)
              {
                v44 = *(v14 + 16);
                if (v19 == v44)
                {
                  LOBYTE(v85) = 0;
LABEL_53:
                  if (v73 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  v13 = v77;
                  v49 = v77;
                  do
                  {
                    if (*v18 == 1)
                    {
                      kdebug_trace_string();
                    }

                    v18 += 16;
                    --v49;
                  }

                  while (v49);
                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v50 = v80;
                  a2 = *v79;
                  a7 = v83;
                  (*v79)(v83, v80);
                  v51 = __swift_project_value_buffer(v50, static OSSignpostID.continuation);
                  v40 = v75(a7, v51, v50);
                  if ((v85 & 1) == 0)
                  {
                    a7 = v79;
                    v52 = v80;
                    a2(v83, v80);
                    a2(v62, v52);

                    v26 = v63;
                    v13 = v71;
                    a6 = v70;
                    goto LABEL_63;
                  }

                  goto LABEL_45;
                }

                if (v19 >= v44)
                {
                  break;
                }

                ++v19;
                outlined init with copy of AnyTrackedValue(a8, &v91);
                v45 = v93;
                a7 = v94;
                v46 = __swift_project_boxed_opaque_existential_1(&v91, v93);
                v47 = v45;
                a2 = v46;
                *(a6 - 8) = CVarArg.kdebugValue(_:)(v21 | v11, v47);
                *a6 = v48 & 1;
                a6 += 16;
                __swift_destroy_boxed_opaque_existential_1(&v91);
                a8 = (a8 + 40);
                if (!--v13)
                {
                  goto LABEL_53;
                }
              }

              __break(1u);
              goto LABEL_68;
            }

            v90 = a7;
            v88 = _signpostLog;
            v89 = &dword_18D018000;
            v91 = v69;
            v92 = v55;
            v85 = "Attached: %{public}@ [ %p ] to %{public}@ (in %{public}@) at offset +%d [%d] (%p)";
            v86 = 81;
            v87 = 2;
            v84 = v14;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
            (*v79)(v39, v80);

            v26 = v63;
LABEL_63:
            LODWORD(v14) = v58;
          }

LABEL_64:
          a8 = v67;
          v28 = v72;
          if (v72 == v67 && !v14)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }
}

uint64_t _s7SwiftUI12ViewModifierPAAE04makeC08modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAiA01_J0V_ANtctFZAA015FlexInteractionD0V_Tt3B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(&type metadata for FlexInteractionModifier, &v50);
  v9 = v50;
  v10 = v51;
  v11 = DWORD1(v51);
  v12 = *(a2 + 48);
  v46 = *(a2 + 32);
  v47 = v12;
  v48 = *(a2 + 64);
  v49 = *(a2 + 80);
  v13 = *(a2 + 16);
  v44 = *a2;
  v45 = v13;
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v50);
    LOBYTE(v50) = v10;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v44, v9, *(&v9 + 1), v10 | (v11 << 32), a1, &v50);
    v20 = v51;
    v21 = *(&v50 + 1);
    v14 = BYTE8(v51);
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionW0VGG_AA0kG7ElementANLLOTt0g5(a3, a4, 0);
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v43 = v49;
    v38 = v44;
    v39 = v45;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      type metadata accessor for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>();
      outlined init with copy of _ViewInputs(&v38, &v50);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v38, &v50);
    }

    v34 = v40;
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v32 = v38;
    v33 = v39;
    v16 = v40;
    LODWORD(v34) = 0;
    v55 = v43;
    v53 = v41;
    v54 = v42;
    v50 = v38;
    v51 = v39;
    v52 = v34;
    outlined init with copy of _ViewInputs(&v38, v30);
    outlined init with copy of _ViewInputs(&v50, v30);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA015FlexInteractionF0VG_AA0n5StateF033_404CBE866CEDD57705E9BEB28E77402CLLVTt2B5(&v50, v23);
    outlined destroy of _ViewInputs(&v50);
    LODWORD(v34) = v16;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v23, &v32);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v38);
    v30[2] = v34;
    v30[3] = v35;
    v30[4] = v36;
    v31 = v37;
    v30[0] = v32;
    v30[1] = v33;
    outlined destroy of _ViewInputs(v30);
    v17 = v23[0];
    v18 = v23[1];
    if (v14)
    {
      v26 = v46;
      v27 = v47;
      v28 = v48;
      v29 = v49;
      v24 = v44;
      v25 = v45;
      outlined destroy of _ViewInputs(&v24);
      result = outlined consume of DynamicPropertyCache.Fields.Layout();
    }

    else
    {
      LOBYTE(v24) = v10;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v9, *(&v9 + 1), v10, v21, v20, &type metadata for FlexInteractionModifier, type metadata accessor for FlexInteractionModifier.Type);
      outlined consume of DynamicPropertyCache.Fields.Layout();
      v26 = v46;
      v27 = v47;
      v28 = v48;
      v29 = v49;
      v24 = v44;
      v25 = v45;
      result = outlined destroy of _ViewInputs(&v24);
    }

    *a5 = v17;
    a5[1] = v18;
  }

  return result;
}

uint64_t specialized static ViewModifier.makeView(modifier:inputs:body:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v59 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v6, &v53);
  v11 = v53;
  v12 = v54;
  v13 = DWORD1(v54);
  v14 = *(a2 + 48);
  v49 = *(a2 + 32);
  v50 = v14;
  v51 = *(a2 + 64);
  v52 = *(a2 + 80);
  v15 = *(a2 + 16);
  v47 = *a2;
  v48 = v15;
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
    LOBYTE(v53) = v12;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v47, v11, *(&v11 + 1), v12 | (v13 << 32), a1, &v53);
    v16 = v53;
    v23 = v54;
    v24 = *(&v53 + 1);
    v17 = BYTE8(v54);
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateW033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_AA0kG7ElementANLLOTt0g5(a3, a4, 0);
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v46 = v52;
    v41 = v47;
    v42 = v48;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>();
      outlined init with copy of _ViewInputs(&v41, &v53);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v41, &v53);
    }

    v37 = v43;
    v38 = v44;
    v39 = v45;
    v40 = v46;
    v35 = v41;
    v36 = v42;
    v19 = v43;
    LODWORD(v37) = 0;
    v58 = v46;
    v56 = v44;
    v57 = v45;
    v53 = v41;
    v54 = v42;
    v55 = v37;
    outlined init with copy of _ViewInputs(&v41, v33);
    outlined init with copy of _ViewInputs(&v53, v33);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0N21AppearanceScaleEffectATLLVGAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGTt2B5(v16, &v53, v26);
    outlined destroy of _ViewInputs(&v53);
    LODWORD(v37) = v19;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v26, &v35);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v41);
    v33[2] = v37;
    v33[3] = v38;
    v33[4] = v39;
    v34 = v40;
    v33[0] = v35;
    v33[1] = v36;
    outlined destroy of _ViewInputs(v33);
    v20 = v26[0];
    v21 = v26[1];
    if (v17)
    {
      v29 = v49;
      v30 = v50;
      v31 = v51;
      v32 = v52;
      v27 = v47;
      v28 = v48;
      outlined destroy of _ViewInputs(&v27);
      result = outlined consume of DynamicPropertyCache.Fields.Layout();
    }

    else
    {
      LOBYTE(v27) = v12;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v11, *(&v11 + 1), v12, v24, v23, &type metadata for GlassTransitionStateModifier, type metadata accessor for GlassTransitionStateModifier.Type);
      outlined consume of DynamicPropertyCache.Fields.Layout();
      v29 = v49;
      v30 = v50;
      v31 = v51;
      v32 = v52;
      v27 = v47;
      v28 = v48;
      result = outlined destroy of _ViewInputs(&v27);
    }

    *a5 = v20;
    a5[1] = v21;
  }

  return result;
}

{
  v6 = v5;
  v58 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v6, &v52);
  v11 = v52;
  v12 = v53;
  v13 = DWORD1(v53);
  v14 = *(a2 + 48);
  v48 = *(a2 + 32);
  v49 = v14;
  v50 = *(a2 + 64);
  v51 = *(a2 + 80);
  v15 = *(a2 + 16);
  v46 = *a2;
  v47 = v15;
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
    LOBYTE(v52) = v12;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v46, v11, *(&v11 + 1), v12 | (v13 << 32), a1, &v52);
    v22 = v53;
    v23 = *(&v52 + 1);
    v16 = BYTE8(v53);
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeW033_62A32D59B8A902A88963544196023CF7LLVGG_AA0kG7ElementANLLOTt0g5(a3, a4, 0);
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v40 = v46;
    v41 = v47;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>();
      outlined init with copy of _ViewInputs(&v40, &v52);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v40, &v52);
    }

    v36 = v42;
    v37 = v43;
    v38 = v44;
    v39 = v45;
    v34 = v40;
    v35 = v41;
    v18 = v42;
    LODWORD(v36) = 0;
    v57 = v45;
    v55 = v43;
    v56 = v44;
    v52 = v40;
    v53 = v41;
    v54 = v36;
    outlined init with copy of _ViewInputs(&v40, v32);
    outlined init with copy of _ViewInputs(&v52, v32);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA016GlassEffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA014_AnchorWritingF0VySo6CGRectVAA0n8MaterialP3KeyATLLVGTt2B5(&v52, v25);
    outlined destroy of _ViewInputs(&v52);
    LODWORD(v36) = v18;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v25, &v34);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v40);
    v32[2] = v36;
    v32[3] = v37;
    v32[4] = v38;
    v33 = v39;
    v32[0] = v34;
    v32[1] = v35;
    outlined destroy of _ViewInputs(v32);
    v19 = v25[0];
    v20 = v25[1];
    if (v16)
    {
      v28 = v48;
      v29 = v49;
      v30 = v50;
      v31 = v51;
      v26 = v46;
      v27 = v47;
      outlined destroy of _ViewInputs(&v26);
      result = outlined consume of DynamicPropertyCache.Fields.Layout();
    }

    else
    {
      LOBYTE(v26) = v12;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v11, *(&v11 + 1), v12, v23, v22, &type metadata for GlassEffectShapeModifier, type metadata accessor for GlassEffectShapeModifier.Type);
      outlined consume of DynamicPropertyCache.Fields.Layout();
      v28 = v48;
      v29 = v49;
      v30 = v50;
      v31 = v51;
      v26 = v46;
      v27 = v47;
      result = outlined destroy of _ViewInputs(&v26);
    }

    *a5 = v19;
    a5[1] = v20;
  }

  return result;
}

{
  v6 = v5;
  v59 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v6, &v53);
  v11 = v53;
  v12 = v54;
  v13 = DWORD1(v54);
  v14 = *(a2 + 48);
  v49 = *(a2 + 32);
  v50 = v14;
  v51 = *(a2 + 64);
  v52 = *(a2 + 80);
  v15 = *(a2 + 16);
  v47 = *a2;
  v48 = v15;
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
    LOBYTE(v53) = v12;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v47, v11, *(&v11 + 1), v12 | (v13 << 32), a1, &v53);
    v16 = v53;
    v23 = v54;
    v24 = *(&v53 + 1);
    v17 = BYTE8(v54);
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalW033_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_AA0kG7ElementANLLOTt0g5(a3, a4, 0);
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v46 = v52;
    v41 = v47;
    v42 = v48;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>();
      outlined init with copy of _ViewInputs(&v41, &v53);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v41, &v53);
    }

    v37 = v43;
    v38 = v44;
    v39 = v45;
    v40 = v46;
    v35 = v41;
    v36 = v42;
    v19 = v43;
    LODWORD(v37) = 0;
    v58 = v46;
    v56 = v44;
    v57 = v45;
    v53 = v41;
    v54 = v42;
    v55 = v37;
    outlined init with copy of _ViewInputs(&v41, v33);
    outlined init with copy of _ViewInputs(&v53, v33);
    _s7SwiftUI4ViewPAAE04makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA21_GlassEffectContainerVyAA15ModifiedContentVyAA01_c9Modifier_O0VyAA0kl5LocalP008_3DF70D9S23D7473F4D189A049B764CFEFLLVGAA0klmP0AULLVGG_Tt2B5(v16, &v53, v26);
    outlined destroy of _ViewInputs(&v53);
    LODWORD(v37) = v19;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v26, &v35);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v41);
    v33[2] = v37;
    v33[3] = v38;
    v33[4] = v39;
    v34 = v40;
    v33[0] = v35;
    v33[1] = v36;
    outlined destroy of _ViewInputs(v33);
    v20 = v26[0];
    v21 = v26[1];
    if (v17)
    {
      v29 = v49;
      v30 = v50;
      v31 = v51;
      v32 = v52;
      v27 = v47;
      v28 = v48;
      outlined destroy of _ViewInputs(&v27);
      result = outlined consume of DynamicPropertyCache.Fields.Layout();
    }

    else
    {
      LOBYTE(v27) = v12;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v11, *(&v11 + 1), v12, v24, v23, &type metadata for GlassEffectLocalModifier, type metadata accessor for GlassEffectLocalModifier.Type);
      outlined consume of DynamicPropertyCache.Fields.Layout();
      v29 = v49;
      v30 = v50;
      v31 = v51;
      v32 = v52;
      v27 = v47;
      v28 = v48;
      result = outlined destroy of _ViewInputs(&v27);
    }

    *a5 = v20;
    a5[1] = v21;
  }

  return result;
}

{
  v6 = v5;
  v58 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v6, &v52);
  v11 = v52;
  v12 = v53;
  v13 = DWORD1(v53);
  v14 = *(a2 + 48);
  v48 = *(a2 + 32);
  v49 = v14;
  v50 = *(a2 + 64);
  v51 = *(a2 + 80);
  v15 = *(a2 + 16);
  v46 = *a2;
  v47 = v15;
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
    LOBYTE(v52) = v12;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v46, v11, *(&v11 + 1), v12 | (v13 << 32), a1, &v52);
    v22 = v53;
    v23 = *(&v52 + 1);
    v16 = BYTE8(v53);
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionW0VGG_AA0kG7ElementANLLOTt0g5(a3, a4, 0);
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v40 = v46;
    v41 = v47;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      type metadata accessor for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>();
      outlined init with copy of _ViewInputs(&v40, &v52);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v40, &v52);
    }

    v36 = v42;
    v37 = v43;
    v38 = v44;
    v39 = v45;
    v34 = v40;
    v35 = v41;
    v18 = v42;
    LODWORD(v36) = 0;
    v57 = v45;
    v55 = v43;
    v56 = v44;
    v52 = v40;
    v53 = v41;
    v54 = v36;
    outlined init with copy of _ViewInputs(&v40, v32);
    outlined init with copy of _ViewInputs(&v52, v32);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA015FlexInteractionF0VG_AA0n5StateF033_404CBE866CEDD57705E9BEB28E77402CLLVTt2B5(&v52, v25);
    outlined destroy of _ViewInputs(&v52);
    LODWORD(v36) = v18;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v25, &v34);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v40);
    v32[2] = v36;
    v32[3] = v37;
    v32[4] = v38;
    v33 = v39;
    v32[0] = v34;
    v32[1] = v35;
    outlined destroy of _ViewInputs(v32);
    v19 = v25[0];
    v20 = v25[1];
    if (v16)
    {
      v28 = v48;
      v29 = v49;
      v30 = v50;
      v31 = v51;
      v26 = v46;
      v27 = v47;
      outlined destroy of _ViewInputs(&v26);
      result = outlined consume of DynamicPropertyCache.Fields.Layout();
    }

    else
    {
      LOBYTE(v26) = v12;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v11, *(&v11 + 1), v12, v23, v22, &type metadata for FlexInteractionModifier, type metadata accessor for FlexInteractionModifier.Type);
      outlined consume of DynamicPropertyCache.Fields.Layout();
      v28 = v48;
      v29 = v49;
      v30 = v50;
      v31 = v51;
      v26 = v46;
      v27 = v47;
      result = outlined destroy of _ViewInputs(&v26);
    }

    *a5 = v19;
    a5[1] = v20;
  }

  return result;
}

{
  v6 = v5;
  v59 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v6, &v53);
  v11 = v53;
  v12 = v54;
  v13 = DWORD1(v54);
  v14 = *(a2 + 48);
  v49 = *(a2 + 32);
  v50 = v14;
  v51 = *(a2 + 64);
  v52 = *(a2 + 80);
  v15 = *(a2 + 16);
  v47 = *a2;
  v48 = v15;
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>();
    outlined init with copy of _ViewInputs(a2, &v53);
    LOBYTE(v53) = v12;
    v24 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v47, v11, *(&v11 + 1), v12 | (v13 << 32), a1, &v53);
    v22 = v54;
    v23 = *(&v53 + 1);
    v16 = BYTE8(v54);
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickW033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_AA0kG7ElementANLLOTt0g5(a3, a4, 0);
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v46 = v52;
    v41 = v47;
    v42 = v48;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v37 = v43;
    v38 = v44;
    v39 = v45;
    v40 = v46;
    v35 = v41;
    v36 = v42;
    v18 = v43;
    LODWORD(v37) = 0;
    v58 = v46;
    v56 = v44;
    v57 = v45;
    v53 = v41;
    v54 = v42;
    v55 = v37;
    outlined init with copy of _ViewInputs(&v41, v33);
    outlined init with copy of _ViewInputs(&v53, v33);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA04KickF033_02B8A9C041E17C70E13F37D6E2D14302LLVG_AA16_TransformEffectVTt2B5(&v53, v26);
    outlined destroy of _ViewInputs(&v53);
    LODWORD(v37) = v18;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v26, &v35);
      AGSubgraphEndTreeElement();
    }

    v33[2] = v37;
    v33[3] = v38;
    v33[4] = v39;
    v34 = v40;
    v33[0] = v35;
    v33[1] = v36;
    outlined destroy of _ViewInputs(v33);
    v19 = v26[0];
    v20 = v26[1];
    if (v16)
    {
      v29 = v49;
      v30 = v50;
      v31 = v51;
      v32 = v52;
      v27 = v47;
      v28 = v48;
      outlined destroy of _ViewInputs(&v27);
      result = outlined consume of DynamicPropertyCache.Fields.Layout();
    }

    else
    {
      LOBYTE(v27) = v12;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v24, v11, *(&v11 + 1), v12, v23, v22, &type metadata for KickModifier, type metadata accessor for KickModifier.Type);
      outlined consume of DynamicPropertyCache.Fields.Layout();
      v29 = v49;
      v30 = v50;
      v31 = v51;
      v32 = v52;
      v27 = v47;
      v28 = v48;
      result = outlined destroy of _ViewInputs(&v27);
    }

    *a5 = v19;
    a5[1] = v20;
  }

  return result;
}

{
  v6 = v5;
  v55 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v6, &v49);
  v11 = v49;
  v12 = v50;
  v13 = DWORD1(v50);
  v14 = *(a2 + 48);
  v45 = *(a2 + 32);
  v46 = v14;
  v47 = *(a2 + 64);
  v48 = *(a2 + 80);
  v15 = *(a2 + 16);
  v43 = *a2;
  v44 = v15;
  if (AGTypeGetKind() - 2 >= 4)
  {
    outlined init with copy of _ViewInputs(a2, &v49);
    _StringGuts.grow(_:)(38);

    *&v49 = 0xD000000000000024;
    *(&v49 + 1) = 0x800000018DD77950;
    MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD779A0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>();
    outlined init with copy of _ViewInputs(a2, &v49);
    LOBYTE(v49) = v12;
    v24 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v43, v11, *(&v11 + 1), v12 | (v13 << 32), a1, &v49);
    v22 = v50;
    v23 = *(&v49 + 1);
    v16 = BYTE8(v50);
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA019FlexibleButtonFrameW0VGG_AA0kG7ElementANLLOTt0g5(a3, a4, 0);
    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v33 = v39;
    v34 = v40;
    v35 = v41;
    v36 = v42;
    v31 = v37;
    v32 = v38;
    v18 = v39;
    LODWORD(v33) = 0;
    v54 = v42;
    v52 = v40;
    v53 = v41;
    v49 = v37;
    v50 = v38;
    v51 = v33;
    outlined init with copy of _ViewInputs(&v37, v29);
    outlined init with copy of _ViewInputs(&v49, v29);
    _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_D6InputsVtFZAA07_LayoutF0VyAA019FlexibleButtonFrameN0VG_AA01_D16Modifier_ContentVyAA0opqR0VGTt2B5(&v49, v26);
    outlined destroy of _ViewInputs(&v49);
    LODWORD(v33) = v18;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v26, &v31);
      AGSubgraphEndTreeElement();
    }

    v29[2] = v33;
    v29[3] = v34;
    v29[4] = v35;
    v30 = v36;
    v29[0] = v31;
    v29[1] = v32;
    outlined destroy of _ViewInputs(v29);
    v19 = v26[0];
    v20 = v26[1];
    if ((v16 & 1) == 0)
    {
      LOBYTE(v27[0]) = v12;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v24, v11, *(&v11 + 1), v12, v23, v22, &type metadata for FlexibleButtonFrameModifier, type metadata accessor for FlexibleButtonFrameModifier.Type);
    }

    v27[2] = v45;
    v27[3] = v46;
    v27[4] = v47;
    v28 = v48;
    v27[0] = v43;
    v27[1] = v44;
    outlined destroy of _ViewInputs(v27);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a5 = v19;
    a5[1] = v20;
  }

  return result;
}

{
  v6 = v5;
  v56 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v6, &v50);
  v11 = v50;
  v12 = v51;
  v13 = DWORD1(v51);
  v14 = *(a2 + 48);
  v46 = *(a2 + 32);
  v47 = v14;
  v48 = *(a2 + 64);
  v49 = *(a2 + 80);
  v15 = *(a2 + 16);
  v44 = *a2;
  v45 = v15;
  if (AGTypeGetKind() - 2 >= 4)
  {
    outlined init with copy of _ViewInputs(a2, &v50);
    _StringGuts.grow(_:)(38);

    *&v50 = 0xD000000000000024;
    *(&v50 + 1) = 0x800000018DD77950;
    MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD77980);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_1(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>);
    outlined init with copy of _ViewInputs(a2, &v50);
    LOBYTE(v50) = v12;
    v25 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v44, v11, *(&v11 + 1), v12 | (v13 << 32), a1, &v50);
    v16 = v50;
    v23 = v51;
    v24 = *(&v50 + 1);
    v17 = BYTE8(v51);
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015SafeAreaPaddingW0VGG_AA0kG7ElementANLLOTt0g5(a3, a4, 0);
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v43 = v49;
    v38 = v44;
    v39 = v45;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v34 = v40;
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v32 = v38;
    v33 = v39;
    v19 = v40;
    LODWORD(v34) = 0;
    v55 = v43;
    v53 = v41;
    v54 = v42;
    v50 = v38;
    v51 = v39;
    v52 = v34;
    outlined init with copy of _ViewInputs(&v38, v30);
    outlined init with copy of _ViewInputs(&v50, v30);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGA1_GA1_G_A1_Tt2B5Tm(v16, &v50, _s7SwiftUI18_InsetViewModifierV05_makeD08modifier6inputs4bodyAA01_D7OutputsVAA11_GraphValueVyACyxGG_AA01_D6InputsVAiA01_K0V_AOtctFZAA15ModifiedContentVyAA5ColorVAA12_FrameLayoutVG_Tt3B503_s7a4UI15no5VA2A4d7RzAA0E8e8R_rlE05_f21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m89VtFZAjA01_K0V_APtcfU0_ACyACyACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5p6VAA12_qR19VGGGA3_GA3_G_A3_TG5AKyASyASyASyASyAA01_de1_O0VyAA015SafeAreaPaddingE0VGACyAXGGA3_GA3_GA3_GGTf1nnnc_n, v27);
    outlined destroy of _ViewInputs(&v50);
    LODWORD(v34) = v19;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v27, &v32);
      AGSubgraphEndTreeElement();
    }

    v30[2] = v34;
    v30[3] = v35;
    v30[4] = v36;
    v31 = v37;
    v30[0] = v32;
    v30[1] = v33;
    outlined destroy of _ViewInputs(v30);
    v20 = v27[0];
    v21 = v27[1];
    if ((v17 & 1) == 0)
    {
      LOBYTE(v28[0]) = v12;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v25, v11, *(&v11 + 1), v12, v24, v23, &type metadata for SafeAreaPaddingModifier, type metadata accessor for SafeAreaPaddingModifier.Type);
    }

    v28[2] = v46;
    v28[3] = v47;
    v28[4] = v48;
    v29 = v49;
    v28[0] = v44;
    v28[1] = v45;
    outlined destroy of _ViewInputs(v28);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a5 = v20;
    a5[1] = v21;
  }

  return result;
}

uint64_t _s7SwiftUI12ViewModifierPAAE04makeC08modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAiA01_J0V_ANtctFZAA015TranslationKickD033_02B8A9C041E17C70E13F37D6E2D14302LLVySiG_Tt3B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v58 = *MEMORY[0x1E69E9840];
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
  static DynamicPropertyCache.fields(of:)(v9, &v52);
  v10 = v52;
  v11 = v53;
  v12 = DWORD1(v53);
  v13 = *(a2 + 48);
  v48 = *(a2 + 32);
  v49 = v13;
  v50 = *(a2 + 64);
  v51 = *(a2 + 80);
  v14 = *(a2 + 16);
  v46 = *a2;
  v47 = v14;
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
    LOBYTE(v52) = v11;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v46, v10, *(&v10 + 1), v11 | (v12 << 32), a1, &v52);
    v15 = v52;
    v22 = v53;
    v23 = *(&v52 + 1);
    v16 = BYTE8(v53);
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015TranslationKickW033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_AA0kG7ElementANLLOTt0g5(a3, a4, 0);
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v40 = v46;
    v41 = v47;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>();
      outlined init with copy of _ViewInputs(&v40, &v52);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v40, &v52);
    }

    v36 = v42;
    v37 = v43;
    v38 = v44;
    v39 = v45;
    v34 = v40;
    v35 = v41;
    v18 = v42;
    LODWORD(v36) = 0;
    v57 = v45;
    v55 = v43;
    v56 = v44;
    v52 = v40;
    v53 = v41;
    v54 = v36;
    outlined init with copy of _ViewInputs(&v40, v32);
    outlined init with copy of _ViewInputs(&v52, v32);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyAA01_ef1_D0VyAA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGAA0oF0ATLLVG_AA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGTt2B5(v15, &v52, v25);
    outlined destroy of _ViewInputs(&v52);
    LODWORD(v36) = v18;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v25, &v34);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v40);
    v32[2] = v36;
    v32[3] = v37;
    v32[4] = v38;
    v33 = v39;
    v32[0] = v34;
    v32[1] = v35;
    outlined destroy of _ViewInputs(v32);
    v19 = v25[0];
    v20 = v25[1];
    if (v16)
    {
      v28 = v48;
      v29 = v49;
      v30 = v50;
      v31 = v51;
      v26 = v46;
      v27 = v47;
      outlined destroy of _ViewInputs(&v26);
      result = outlined consume of DynamicPropertyCache.Fields.Layout();
    }

    else
    {
      LOBYTE(v26) = v11;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v10, *(&v10 + 1), ((v12 << 32) | v11), v23, v22, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier, &lazy cache variable for type metadata for TranslationKickModifier<Int>.Type);
      outlined consume of DynamicPropertyCache.Fields.Layout();
      v28 = v48;
      v29 = v49;
      v30 = v50;
      v31 = v51;
      v26 = v46;
      v27 = v47;
      result = outlined destroy of _ViewInputs(&v26);
    }

    *a5 = v19;
    a5[1] = v20;
  }

  return result;
}

uint64_t _s7SwiftUI12ViewModifierPAAE04makeC08modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAiA01_J0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
  static DynamicPropertyCache.fields(of:)(v9, &v51);
  v10 = v51;
  v11 = v52;
  v12 = DWORD1(v52);
  v13 = *(a2 + 48);
  v47 = *(a2 + 32);
  v48 = v13;
  v49 = *(a2 + 64);
  v50 = *(a2 + 80);
  v14 = *(a2 + 16);
  v45 = *a2;
  v46 = v14;
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v51);
    LOBYTE(v51) = v11;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v45, v10, *(&v10 + 1), v11 | (v12 << 32), a1, &v51);
    v21 = v52;
    v22 = *(&v51 + 1);
    v15 = BYTE8(v52);
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationW033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_AA0kG7ElementANLLOTt0g5(a3, a4, 0);
    v41 = v47;
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v39 = v45;
    v40 = v46;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      type metadata accessor for ModifiedContent<_ViewModifier_Content<ScheduledAnimationModifier<Int>>, _ValueActionModifier2<Int>>();
      outlined init with copy of _ViewInputs(&v39, &v51);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v39, &v51);
    }

    v35 = v41;
    v36 = v42;
    v37 = v43;
    v38 = v44;
    v33 = v39;
    v34 = v40;
    v17 = v41;
    LODWORD(v35) = 0;
    v56 = v44;
    v54 = v42;
    v55 = v43;
    v51 = v39;
    v52 = v40;
    v53 = v35;
    outlined init with copy of _ViewInputs(&v39, v31);
    outlined init with copy of _ViewInputs(&v51, v31);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_AA01_L15ActionModifier2VySiGTt2B5(&v51, v24);
    outlined destroy of _ViewInputs(&v51);
    LODWORD(v35) = v17;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v24, &v33);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v39);
    v31[2] = v35;
    v31[3] = v36;
    v31[4] = v37;
    v32 = v38;
    v31[0] = v33;
    v31[1] = v34;
    outlined destroy of _ViewInputs(v31);
    v18 = v24[0];
    v19 = v24[1];
    if (v15)
    {
      v27 = v47;
      v28 = v48;
      v29 = v49;
      v30 = v50;
      v25 = v45;
      v26 = v46;
      outlined destroy of _ViewInputs(&v25);
      result = outlined consume of DynamicPropertyCache.Fields.Layout();
    }

    else
    {
      LOBYTE(v25) = v11;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v10, *(&v10 + 1), ((v12 << 32) | v11), v22, v21, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>.Type);
      outlined consume of DynamicPropertyCache.Fields.Layout();
      v27 = v47;
      v28 = v48;
      v29 = v49;
      v30 = v50;
      v25 = v45;
      v26 = v46;
      result = outlined destroy of _ViewInputs(&v25);
    }

    *a5 = v18;
    a5[1] = v19;
  }

  return result;
}

uint64_t _s7SwiftUI12ViewModifierPAAE04makeC08modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAiA01_J0V_ANtctFZAA04KickD033_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt3B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(&type metadata for KickModifier, &v50);
  v9 = v50;
  v10 = v51;
  v11 = DWORD1(v51);
  v12 = *(a2 + 48);
  v46 = *(a2 + 32);
  v47 = v12;
  v48 = *(a2 + 64);
  v49 = *(a2 + 80);
  v13 = *(a2 + 16);
  v44 = *a2;
  v45 = v13;
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v50);
    LOBYTE(v50) = v10;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v44, v9, *(&v9 + 1), v10 | (v11 << 32), a1, &v50);
    v20 = v51;
    v21 = *(&v50 + 1);
    v14 = BYTE8(v51);
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickW033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_AA0kG7ElementANLLOTt0g5(a3, a4, 0);
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v43 = v49;
    v38 = v44;
    v39 = v45;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      type metadata accessor for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>();
      outlined init with copy of _ViewInputs(&v38, &v50);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v38, &v50);
    }

    v34 = v40;
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v32 = v38;
    v33 = v39;
    v16 = v40;
    LODWORD(v34) = 0;
    v55 = v43;
    v53 = v41;
    v54 = v42;
    v50 = v38;
    v51 = v39;
    v52 = v34;
    outlined init with copy of _ViewInputs(&v38, v30);
    outlined init with copy of _ViewInputs(&v50, v30);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA04KickF033_02B8A9C041E17C70E13F37D6E2D14302LLVG_AA16_TransformEffectVTt2B5(&v50, v23);
    outlined destroy of _ViewInputs(&v50);
    LODWORD(v34) = v16;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v23, &v32);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v38);
    v30[2] = v34;
    v30[3] = v35;
    v30[4] = v36;
    v31 = v37;
    v30[0] = v32;
    v30[1] = v33;
    outlined destroy of _ViewInputs(v30);
    v17 = v23[0];
    v18 = v23[1];
    if (v14)
    {
      v26 = v46;
      v27 = v47;
      v28 = v48;
      v29 = v49;
      v24 = v44;
      v25 = v45;
      outlined destroy of _ViewInputs(&v24);
      result = outlined consume of DynamicPropertyCache.Fields.Layout();
    }

    else
    {
      LOBYTE(v24) = v10;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v9, *(&v9 + 1), v10, v21, v20, &type metadata for KickModifier, type metadata accessor for KickModifier.Type);
      outlined consume of DynamicPropertyCache.Fields.Layout();
      v26 = v46;
      v27 = v47;
      v28 = v48;
      v29 = v49;
      v24 = v44;
      v25 = v45;
      result = outlined destroy of _ViewInputs(&v24);
    }

    *a5 = v17;
    a5[1] = v18;
  }

  return result;
}

uint64_t _s7SwiftUI12ViewModifierPAAE04makeC08modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAiA01_J0V_ANtctFZAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiG_Tt3B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v58 = *MEMORY[0x1E69E9840];
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
  static DynamicPropertyCache.fields(of:)(v9, &v52);
  v10 = v52;
  v11 = v53;
  v12 = DWORD1(v53);
  v13 = *(a2 + 48);
  v48 = *(a2 + 32);
  v49 = v13;
  v50 = *(a2 + 64);
  v51 = *(a2 + 80);
  v14 = *(a2 + 16);
  v46 = *a2;
  v47 = v14;
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
    LOBYTE(v52) = v11;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v46, v10, *(&v10 + 1), v11 | (v12 << 32), a1, &v52);
    v15 = v52;
    v22 = v53;
    v23 = *(&v52 + 1);
    v16 = BYTE8(v53);
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA010ScalePulseW033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_AA0kG7ElementANLLOTt0g5(a3, a4, 0);
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v40 = v46;
    v41 = v47;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>();
      outlined init with copy of _ViewInputs(&v40, &v52);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v40, &v52);
    }

    v36 = v42;
    v37 = v43;
    v38 = v44;
    v39 = v45;
    v34 = v40;
    v35 = v41;
    v18 = v42;
    LODWORD(v36) = 0;
    v57 = v45;
    v55 = v43;
    v56 = v44;
    v52 = v40;
    v53 = v41;
    v54 = v36;
    outlined init with copy of _ViewInputs(&v40, v32);
    outlined init with copy of _ViewInputs(&v52, v32);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6EffectATLLVGAYGAYGAYGAA05_BlurY0VG_AA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGTt2B5(v15, &v52, v25);
    outlined destroy of _ViewInputs(&v52);
    LODWORD(v36) = v18;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v25, &v34);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v40);
    v32[2] = v36;
    v32[3] = v37;
    v32[4] = v38;
    v33 = v39;
    v32[0] = v34;
    v32[1] = v35;
    outlined destroy of _ViewInputs(v32);
    v19 = v25[0];
    v20 = v25[1];
    if (v16)
    {
      v28 = v48;
      v29 = v49;
      v30 = v50;
      v31 = v51;
      v26 = v46;
      v27 = v47;
      outlined destroy of _ViewInputs(&v26);
      result = outlined consume of DynamicPropertyCache.Fields.Layout();
    }

    else
    {
      LOBYTE(v26) = v11;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v10, *(&v10 + 1), ((v12 << 32) | v11), v23, v22, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier, &lazy cache variable for type metadata for ScalePulseModifier<Int>.Type);
      outlined consume of DynamicPropertyCache.Fields.Layout();
      v28 = v48;
      v29 = v49;
      v30 = v50;
      v31 = v51;
      v26 = v46;
      v27 = v47;
      result = outlined destroy of _ViewInputs(&v26);
    }

    *a5 = v19;
    a5[1] = v20;
  }

  return result;
}

uint64_t specialized static ViewModifier.makeView(modifier:inputs:body:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v55 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v6, &v49);
  v11 = v49;
  v12 = v50;
  v13 = DWORD1(v50);
  v14 = *(a2 + 48);
  v45 = *(a2 + 32);
  v46 = v14;
  v47 = *(a2 + 64);
  v48 = *(a2 + 80);
  v15 = *(a2 + 16);
  v43 = *a2;
  v44 = v15;
  if (AGTypeGetKind() - 2 >= 4)
  {
    outlined init with copy of _ViewInputs(a2, &v49);
    _StringGuts.grow(_:)(38);

    *&v49 = 0xD000000000000024;
    *(&v49 + 1) = 0x800000018DD77950;
    MEMORY[0x193ABEDD0](0xD000000000000024, 0x800000018DD779C0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>();
    outlined init with copy of _ViewInputs(a2, &v49);
    LOBYTE(v49) = v12;
    v24 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v43, v11, *(&v11 + 1), v12 | (v13 << 32), a1, &v49);
    v22 = v50;
    v23 = *(&v49 + 1);
    v16 = BYTE8(v50);
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA0x17CaptureProtectionvW0VGG_AA0kG7ElementANLLOTt0g5(a3, a4, 0);
    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v33 = v39;
    v34 = v40;
    v35 = v41;
    v36 = v42;
    v31 = v37;
    v32 = v38;
    v18 = v39;
    LODWORD(v33) = 0;
    v54 = v42;
    v52 = v40;
    v53 = v41;
    v49 = v37;
    v50 = v38;
    v51 = v33;
    outlined init with copy of _ViewInputs(&v37, v29);
    outlined init with copy of _ViewInputs(&v49, v29);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA0d17CaptureProtectioneF0VG_AA0dnO16PreferenceWriter33_0D6CD02499D969DD550B3CDDD0903EA3LLVTt2B5(&v49, v26);
    outlined destroy of _ViewInputs(&v49);
    LODWORD(v33) = v18;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v26, &v31);
      AGSubgraphEndTreeElement();
    }

    v29[2] = v33;
    v29[3] = v34;
    v29[4] = v35;
    v30 = v36;
    v29[0] = v31;
    v29[1] = v32;
    outlined destroy of _ViewInputs(v29);
    v19 = v26[0];
    v20 = v26[1];
    if ((v16 & 1) == 0)
    {
      LOBYTE(v27[0]) = v12;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v24, v11, *(&v11 + 1), v12, v23, v22, &type metadata for ContentCaptureProtectionViewModifier, type metadata accessor for ContentCaptureProtectionViewModifier.Type);
    }

    v27[2] = v45;
    v27[3] = v46;
    v27[4] = v47;
    v28 = v48;
    v27[0] = v43;
    v27[1] = v44;
    outlined destroy of _ViewInputs(v27);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a5 = v19;
    a5[1] = v20;
  }

  return result;
}

double _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA9RectangleVAAE17AsymmetricalInsetV_Tt3B5Tm@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v19 = 0;
  v20 = 0.0;
  if ((a3 & 1) == 0)
  {
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = (a1 + 48);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        v14 += 4;
        v18[0] = a4;
        (*(v15 + 8))(&v19, v18, v16, a5, a6);
        --v13;
      }

      while (v13);
    }

    goto LABEL_7;
  }

  if (!*(a2 + 16))
  {
LABEL_7:
    outlined consume of DynamicPropertyCache.Fields.Layout();
    goto LABEL_8;
  }

  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI20DynamicPropertyCacheV12TaggedFieldsVG_Si3tag_AF01_fG6BufferV5linksts5NeverOTg503_s7d5UI22_fgl5V9addj37_9container6inputs10baseOffsetyAA0cD5h65V0G0V_AA11_GraphValueVyxGAA01_M6InputsVzSitlFSi3tag_AC5linkstAI06iW65VXEfU_AA13GlassItemView33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_TG5AF01_yZ0VyAF13GlassItemView33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAF01_Y6InputsVTf1cn_nTm(a2, a4, a5, a6);
  project #1 <A><A1>(type:) in _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)(a1, &v19, v12, 0);
  outlined consume of DynamicPropertyCache.Fields.Layout();

LABEL_8:
  *a7 = v19;
  result = v20;
  a7[1] = v20;
  return result;
}

double _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA21_GlassEffectContainerVyAA15ModifiedContentVyAA014_ViewModifier_R0VyAA0no5LocalT008_3DF70D9W23D7473F4D189A049B764CFEFLLVGAA0nopT0AWLLVGG_Tt3B5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  v19 = 0;
  v20 = 0.0;
  if ((a3 & 1) == 0)
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>();
      v13 = v12;
      v14 = (a1 + 48);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        v14 += 4;
        v18[0] = a4;
        (*(v15 + 8))(&v19, v18, v16, a5, v13);
        --v11;
      }

      while (v11);
    }

    goto LABEL_7;
  }

  if (!*(a2 + 16))
  {
LABEL_7:
    outlined consume of DynamicPropertyCache.Fields.Layout();
    goto LABEL_8;
  }

  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI20DynamicPropertyCacheV12TaggedFieldsVG_Si3tag_AF01_fG6BufferV5linksts5NeverOTg503_s7d5UI22_fgl5V9addj37_9container6inputs10baseOffsetyAA0cD5h65V0G0V_AA11_GraphValueVyxGAA01_M6InputsVzSitlFSi3tag_AC5linkstAI06iW149VXEfU_AA21_GlassEffectContainerVyAA15ModifiedContentVyAA014_ViewModifier_W0VyAA0st5LocalY033_3DF70D9D9D7473F4D189A049B764CFEFLLVGAA0stuY0A0_LLVGG_TG5AF01_yZ0VyAF21_GlassEffectContainerVyAF15ModifiedContentVyAF21_ViewModifier_ContentVyAF24GlassEffectLocalModifier33_3DF70D9D9D7473F4D189A049B764CFEFLLVGAF28GlassEffectContainerModifierA0_LLVGGGAF01_Y6InputsVTf1cn_n(a2, a4, a5);
  type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>();
  project #1 <A><A1>(type:) in _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)(a1, &v19, v10, 0);
  outlined consume of DynamicPropertyCache.Fields.Layout();

LABEL_8:
  *a6 = v19;
  result = v20;
  a6[1] = v20;
  return result;
}

double _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA26ScheduledAnimationModifier33_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5Tm@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, unint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, uint64_t (*a10)(void, uint64_t, uint64_t))
{
  v26 = 0;
  v27 = 0.0;
  if ((a3 & 1) == 0)
  {
    v18 = *(a1 + 16);
    if (v18)
    {
      type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, a6, a7, a8, a10);
      v20 = v19;
      v21 = (a1 + 48);
      do
      {
        v22 = *(v21 - 1);
        v23 = *v21;
        v21 += 4;
        v25[0] = a4;
        (*(v22 + 8))(&v26, v25, v23, a5, v20);
        --v18;
      }

      while (v18);
    }

    goto LABEL_7;
  }

  if (!*(a2 + 16))
  {
LABEL_7:
    outlined consume of DynamicPropertyCache.Fields.Layout();
    goto LABEL_8;
  }

  v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI20DynamicPropertyCacheV12TaggedFieldsVG_Si3tag_AF01_fG6BufferV5linksts5NeverOTg503_s7d5UI22_fgl5V9addj37_9container6inputs10baseOffsetyAA0cD5h65V0G0V_AA11_GraphValueVyxGAA01_M6InputsVzSitlFSi3tag_AC5linkstAI06iW79VXEfU_AA23TranslationKickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLVySiG_TG5AF01_yZ0VyAF23TranslationKickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGAF01_Y6InputsVTf1cn_nTm(a2, a4, a5, a6, a7, a8, a10);
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, a6, a7, a8, a10);
  project #1 <A><A1>(type:) in _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)(a1, &v26, v17, 0);
  outlined consume of DynamicPropertyCache.Fields.Layout();

LABEL_8:
  *a9 = v26;
  result = v27;
  a9[1] = v27;
  return result;
}

unint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance GlassContainer.DataStorage.Key@<X0>(void *a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC14GlassContainerO8ItemDataVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = 0;
  a1[1] = result;
  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance GlassContainer.DataStorage.Key(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(v6);
  v3 = v6[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[0] = *(a1 + 8);
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v6);
  result = swift_bridgeObjectRelease_n();
  *(a1 + 8) = v6[0];
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance GlassEffectLocalModifier@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  swift_beginAccess();
  v11 = static Spacing.defaultValue;
  if (dbl_1EAB21528 < *&static Spacing.defaultValue)
  {
    v11 = *&dbl_1EAB21528;
  }

  *a1 = v11;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  outlined copy of _Glass.Variant.Role(v3, v4);
}

id specialized static GlassEffectContainerModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v76 = *(a1 + 32);
  v77 = v3;
  v78 = *(a1 + 64);
  v79 = *(a1 + 80);
  v4 = *(a1 + 16);
  v74 = *a1;
  v75 = v4;
  v5 = v3;
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA14GlassContainerO4ItemV0I0V_TtB5Tf4dn_n(v3) & 1) == 0)
  {
    return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v74, a2);
  }

  v48 = v5;
  v47 = a2;
  AGGraphCreateOffsetAttribute2();
  specialized static GraphHost.currentHost.getter();
  swift_beginAccess();

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v52 = v74;
  v46 = DWORD2(v75);
  swift_beginAccess();
  swift_getKeyPath();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  v6 = MEMORY[0x1E698D398];
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for Map<EnvironmentValues, TintAdjustmentMode>, &type metadata for EnvironmentValues, &type metadata for TintAdjustmentMode, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, TintAdjustmentMode> and conformance Map<A, B>();

  Attribute.init<A>(body:value:flags:update:)();

  swift_getKeyPath();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for Map<EnvironmentValues, Bool>, &type metadata for EnvironmentValues, MEMORY[0x1E69E6370], v6);
  lazy protocol witness table accessor for type Map<EnvironmentValues, Bool> and conformance Map<A, B>();

  v7 = v75;
  Attribute.init<A>(body:value:flags:update:)();

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectItemGlass and conformance GlassEffectItemGlass();
  v8 = Attribute.init<A>(body:value:flags:update:)();
  memset(&v70[8], 0, 40);
  v44 = AGGraphCreateOffsetAttribute2();
  *v70 = __PAIR64__(DWORD2(v78), v44);
  v71 = 0u;
  v72 = 0u;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectItemRadii and conformance GlassEffectItemRadii();
  v43 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of GlassEffectItemRadii(v70);
  v9 = *(v7 + 16);
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformSystemKey);
  v10 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(v52, *v70);
  if (v10)
  {
    v11 = *(v10 + 72);
  }

  else
  {
    v11 = 0;
  }

  type metadata accessor for PropertyList.Tracker();
  v13 = swift_allocObject();
  type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = MEMORY[0x1E69E7CC8];
  *(v14 + 24) = 0;
  *(v14 + 32) = v15;
  v16 = MEMORY[0x1E69E7CC0];
  *(v14 + 40) = v15;
  *(v14 + 48) = v16;
  *(v14 + 56) = 0;
  *(v13 + 16) = v14;
  v45 = v8;
  *v70 = v8;
  *&v70[4] = v9;
  v70[8] = v11;
  *&v70[16] = v13;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type GlassEffectItemMaterial and conformance GlassEffectItemMaterial();
  v17 = Attribute.init<A>(body:value:flags:update:)();

  v66 = v76;
  v67 = v77;
  v68 = v78;
  v69 = v79;
  v64 = v74;
  v65 = v75;
  v18 = v77;
  *&v58 = v77;
  v19 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
  outlined init with copy of _ViewInputs(&v74, v70);

  v20 = *(v18 + 16);
  if (v19 != v20)
  {
    if (v19 >= v20)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (*(v18 + 16 * v19 + 32) == &type metadata for GlassContainer.Item.Key)
    {
      specialized Array.remove(at:)(v19);
      v18 = v67;
    }
  }

  *v70 = v18;
  v21 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.DataStorage.Key);

  v22 = *(v18 + 16);
  if (v21 == v22)
  {
    goto LABEL_14;
  }

  if (v21 >= v22)
  {
LABEL_27:
    __break(1u);
  }

  if (*(v18 + 16 * v21 + 32) == &type metadata for GlassContainer.DataStorage.Key)
  {
    specialized Array.remove(at:)(v21);
  }

LABEL_14:
  *&v70[32] = v76;
  v71 = v77;
  v72 = v78;
  v73 = v79;
  *v70 = v74;
  *&v70[16] = v75;
  swift_beginAccess();
  v23 = CachedEnvironment.animatedPosition(for:)(v70);
  swift_endAccess();
  *v70 = v23;
  *&v70[4] = HIDWORD(v77);
  v42 = HIDWORD(v77);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ResetPositionTransform and conformance ResetPositionTransform();
  HIDWORD(v67) = Attribute.init<A>(body:value:flags:update:)();
  v24 = v66;
  LODWORD(v66) = v66 | 4;
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v25 = *(swift_dynamicCastClassUnconditional() + 248);

  LODWORD(v66) = v24 | 0xC;
  LODWORD(v68) = v25;
  DWORD1(v68) = v25;
  v26 = *(v7 + 16);
  *v70 = v17;
  *&v70[4] = v26;
  *&v70[8] = OffsetAttribute2;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectEnvironment and conformance GlassEffectEnvironment();
  v27 = Attribute.init<A>(body:value:flags:update:)();
  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(v16);
  type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v16;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v29 + 80) = 256;
  *(v29 + 88) = v28;

  *&v65 = v29;
  if ((v24 & 0x20) == 0)
  {
    LODWORD(v66) = v24 | 0x2C;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(v52, v70);
  Strong = swift_weakLoadStrong();
  outlined destroy of WeakBox<GlassContainerCache>(v70);
  if (Strong)
  {
    if (one-time initialization token for glassEffectBackdropObserver != -1)
    {
      swift_once();
    }

    v31 = static CachedEnvironment.ID.glassEffectBackdropObserver;
    swift_beginAccess();
    v32 = specialized CachedEnvironment.attribute<A>(id:_:)(v31);
    swift_endAccess();
    type metadata accessor for GlassMaterialContext();
    v33 = swift_allocObject();
    *(v33 + 32) = xmmword_18DD85550;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    *(v33 + 16) = *(Strong + 120);
    *&v70[32] = v76;
    v71 = v77;
    v72 = v78;
    v73 = v79;
    *v70 = v74;
    *&v70[16] = v75;

    _ViewInputs.materialSubstrate.getter(&v58);
    *(v33 + 24) = v58;
    v34 = *(Strong + 120);
    *v70 = v32;
    *&v70[8] = v33;
    *&v70[16] = v34;
    *&v70[24] = 0;
    *&v70[32] = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type GlassMaterialContextData.Init and conformance GlassMaterialContextData.Init();

    Attribute.init<A>(body:value:flags:update:)();

    _ViewInputs.updateGlassMaterialContext(context:material:updateSeed:)();
  }

  *&v70[32] = v66;
  v71 = v67;
  v72 = v68;
  v73 = v69;
  *v70 = v64;
  *&v70[16] = v65;
  outlined init with copy of _ViewInputs(v70, &v58);
  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(v70, &v56);
  outlined destroy of _ViewInputs(v70);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v48) & 1) == 0)
  {
    goto LABEL_25;
  }

  v53 = HIDWORD(v57);
  v50 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v56);
  DWORD2(v58) = 0;
  *&v58 = v46;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectItemID and conformance GlassEffectItemID();
  v49 = Attribute.init<A>(body:value:flags:update:)();
  *&v58 = __PAIR64__(OffsetAttribute2, v49);
  *(&v58 + 1) = __PAIR64__(v43, v45);
  LODWORD(v59) = v44;
  *(&v59 + 4) = v17;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type GlassEffectItemInit and conformance GlassEffectItemInit();
  v55 = Attribute.init<A>(body:value:flags:update:)();
  v35 = v78;
  *&v58 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v35);
  DWORD2(v58) = v42;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGMaTm_0(0, &lazy cache variable for type metadata for Anchor<CGRect>, type metadata accessor for CGRect, type metadata accessor for Anchor);
  lazy protocol witness table accessor for type GlassEffectAnchor and conformance GlassEffectAnchor();
  v51 = Attribute.init<A>(body:value:flags:update:)();
  v60 = v76;
  v61 = v77;
  v62 = v78;
  v63 = v79;
  v58 = v74;
  v59 = v75;
  swift_beginAccess();
  v36 = CachedEnvironment.animatedPosition(for:)(&v58);
  v60 = v76;
  v61 = v77;
  v62 = v78;
  v63 = v79;
  v58 = v74;
  v59 = v75;
  v37 = CachedEnvironment.animatedCGSize(for:)(&v58);
  swift_endAccess();
  *&v58 = __PAIR64__(v37, v36);
  DWORD2(v58) = v42;
  v38 = Attribute.init<A>(body:value:flags:update:)();
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v39 = result;
    v40 = *MEMORY[0x1E698D3F8];
    if ((v50 & 0x100000000) == 0)
    {
      v40 = v50;
    }

    *&v58 = __PAIR64__(v51, v49);
    *(&v58 + 1) = __PAIR64__(v40, v38);
    LODWORD(v59) = v53;
    *(&v59 + 1) = result;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type GlassEffectDataInit and conformance GlassEffectDataInit();
    v41 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v58) = 0;
    PreferencesOutputs.subscript.setter(v55, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
    LOBYTE(v58) = 0;
    PreferencesOutputs.subscript.setter(v41, &type metadata for GlassContainer.DataStorage.Key, &protocol witness table for GlassContainer.DataStorage.Key);
    LOBYTE(v58) = 1;
    PreferencesOutputs.subscript.setter(0x100000000uLL, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
LABEL_25:
    v60 = v66;
    v61 = v67;
    v62 = v68;
    v63 = v69;
    v58 = v64;
    v59 = v65;
    result = outlined destroy of _ViewInputs(&v58);
    *v47 = v56;
    v47[1] = v57;
    return result;
  }

  __break(1u);
  return result;
}

char *protocol witness for Rule.value.getter in conformance GlassEffectLocalModifier.Init@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  v7 = *(Value + 32);
  v8 = *(Value + 40);
  v9 = *(Value + 48);
  outlined copy of _Glass.Variant.Role(*Value, v4);

  result = AGGraphGetValue();
  v11 = *result;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v11;
  return result;
}

uint64_t GlassEffectItemID.updateValue()()
{
  v1 = *AGGraphGetValue() >> 1;
  if (v1 == *(v0 + 8) && *(v0 + 4))
  {
    result = AGGraphGetOutputValue();
    if (result)
    {
      return result;
    }
  }

  else
  {
    v3 = static ViewIdentity.nextSeed;
    if ((static ViewIdentity.nextSeed + 1) > 1)
    {
      v4 = static ViewIdentity.nextSeed + 1;
    }

    else
    {
      v4 = 1;
    }

    static ViewIdentity.nextSeed = v4;
    *(v0 + 4) = v3;
    *(v0 + 8) = v1;
  }

  return AGGraphSetOutputValue();
}

double GlassEffectItemGlass.value.getter@<D0>(uint64_t a1@<X8>)
{
  if (*AGGraphGetValue() == 1)
  {
    Value = AGGraphGetValue();
    v3 = *Value;
    v4 = *(Value + 8);
    v5 = *(Value + 16);
    v6 = *(Value + 24);
    v7 = *(Value + 32);
    v8 = *(Value + 40);
    outlined copy of _Glass.Variant.Role(*Value, v4);

    if (*AGGraphGetValue())
    {
      if ((v7 & 1) == 0)
      {
LABEL_5:
        *a1 = v3;
        *(a1 + 8) = v4;
        *(a1 + 16) = v5;
        *(a1 + 24) = v6;
        *(a1 + 32) = v7;
        *(a1 + 40) = v8;
        return result;
      }
    }

    else if (*AGGraphGetValue() != 1 || (v7 & 1) == 0)
    {
      goto LABEL_5;
    }

    v7 &= ~1uLL;
    goto LABEL_5;
  }

  *&result = 1;
  *a1 = xmmword_18DDAA050;
  *(a1 + 16) = 5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance GlassEffectItemGlass@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_18DD85500;
  *(a1 + 40) = 0;
  return result;
}

uint64_t GlassEffectItemRadii.updateValue()()
{
  v27 = *MEMORY[0x1E69E9840];
  GlassEffectItemRadii.updateCornerShapeIfNeeded()();
  GlassEffectItemRadii.resolvedCorners()(v12);
  v1 = 0.0;
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  if (_s7SwiftUI30RoundedRectangularShapeCornersVSgWOg(v12) != 1)
  {
    v5 = v13;
    if (v14)
    {
      v5 = 0.0;
    }

    if (BYTE8(v12[0]))
    {
      v4 = v5;
    }

    else
    {
      v4 = *v12;
    }

    v6 = v21;
    if (v22)
    {
      v6 = 0.0;
    }

    if (v20)
    {
      v3 = v6;
    }

    else
    {
      v3 = v19;
    }

    v7 = v17;
    if (v18)
    {
      v7 = 0.0;
    }

    if (v16)
    {
      v1 = v7;
    }

    else
    {
      v1 = v15;
    }

    if (v24)
    {
      if (v26)
      {
        v2 = 0.0;
      }

      else
      {
        v2 = v25;
      }
    }

    else
    {
      v2 = v23;
    }
  }

  result = AGGraphGetOutputValue();
  if (!result || (v0[6] == v4 ? (v9 = v0[7] == v3) : (v9 = 0), v9 ? (v10 = v0[8] == v2) : (v10 = 0), v10 ? (v11 = v0[9] == v1) : (v11 = 0), !v11))
  {
    result = AGGraphSetOutputValue();
  }

  v0[6] = v4;
  v0[7] = v3;
  v0[8] = v2;
  v0[9] = v1;
  return result;
}

uint64_t GlassEffectItemRadii.updateCornerShapeIfNeeded()()
{
  v1 = v0;
  v2 = *AGGraphGetValue();
  if (v3)
  {
  }

  else
  {
    outlined init with copy of RoundedRectangularShape?(v1 + 8, v6);
    if (v6[3])
    {
      return outlined destroy of RoundedRectangularShape?(v6);
    }

    outlined destroy of RoundedRectangularShape?(v6);
  }

  v5 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for RoundedRectangularShape);
  (*(*v2 + 136))(v6, v5, v5);

  return outlined assign with take of RoundedRectangularShape?(v6, v1 + 8);
}

void GlassEffectItemRadii.resolvedCorners()(_OWORD *a1@<X8>)
{
  Value = AGGraphGetValue();
  v5 = *Value;
  v4 = Value[1];
  outlined init with copy of RoundedRectangularShape?(v1 + 8, &v8);
  if (v9)
  {
    outlined init with take of AnyTrackedValue(&v8, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v7 + 16))(COERCE_DOUBLE(*&v5), COERCE_DOUBLE(*&v4), 0, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    outlined destroy of RoundedRectangularShape?(&v8);
    LOBYTE(v10[0]) = 1;
    Capsule.corners(in:)(v5, v4, 0, a1);
  }
}

uint64_t GlassEffectItemMaterial.updateValue()()
{
  v1 = v0;
  v35 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  v6 = *(Value + 8);
  v7 = *(Value + 16);
  v8 = *(Value + 32);
  v9 = *(Value + 40);
  outlined copy of _Glass.Variant.Role(*Value, v6);

  v11 = *AGGraphGetValue();
  if (v4)
  {
  }

  else
  {
    if (v10)
    {

      v12 = swift_retain_n();
      v13 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v12);

      if (v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
    if (AGGraphGetOutputValue())
    {

      outlined consume of _Glass.Variant.Role(v5, v6);
    }
  }

LABEL_10:
  v15 = v9;
  v16 = v7;
  v17 = *(v1 + 16);
  PropertyList.Tracker.reset()();
  if (v11)
  {
    v18 = *(v11 + 64);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v17 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v19 + 16));
  *(v19 + 24) = v18;
  os_unfair_lock_unlock((v19 + 16));

  outlined copy of _Glass.Variant.Role(v5, v6);
  if (*(v1 + 8) == 1)
  {
    v20 = &static PlatformGlassDefinition.appKit;
  }

  else
  {
    v20 = &static PlatformGlassDefinition.uiKit;
  }

  swift_beginAccess();
  v21 = *v20;
  if (v21)
  {
    v27 = v5;
    v28 = v6;
    v29 = v16;
    v30 = 0;
    v31 = v8;
    v32 = v15;
    v26[0] = v11;
    v26[1] = v17;
    v22 = *(v21 + 88);
    outlined copy of _Glass.Variant.Role(v5, v6);
    v22(&v33, &v27, v26);
    outlined consume of _Glass.Variant.Role(v27, v28);

    v21 = v33;
    v23 = v34;
    if (v34 == 0xFF)
    {
      v24 = 0;
      v25 = 255;
    }

    else
    {
      v25 = v34 & 0xFFFFFFFF000000FFLL;
      outlined copy of Material.ID(v33, v34);
      v24 = v21;
    }
  }

  else
  {
    v24 = 0;
    v25 = 255;
    v23 = -1;
  }

  v27 = v24;
  v28 = v25;
  type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  AGGraphSetOutputValue();

  outlined consume of Material?(v21, v23);
  outlined consume of _Glass.Variant.Role(v5, v6);

  outlined consume of Material?(v24, v25);
  return outlined consume of _Glass.Variant.Role(v5, v6);
}

uint64_t GlassEffectItemInit.updateValue()()
{
  __src[48] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 20);
  type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  if (*(AGGraphGetValue() + 8) == 0xFF)
  {
    type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
    return AGGraphSetOutputValue();
  }

  else
  {
    v3 = AGGraphAnyInputsChanged();
    *(v0 + 20) = v1;
    type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
    result = AGGraphGetOutputValue();
    if (result)
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 0;
    }

    if (!v4)
    {
      v19 = *(v0 + 24) + 1;
      *(v0 + 24) = v19;
      type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Item>, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_18DDA6EB0;
      v18 = *AGGraphGetValue();
      v17 = *AGGraphGetValue();
      Value = AGGraphGetValue();
      v7 = *Value;
      v8 = *(Value + 8);
      v9 = *(Value + 16);
      v10 = *(Value + 24);
      v11 = *(Value + 32);
      v16 = *(Value + 40);
      outlined copy of _Glass.Variant.Role(*Value, v8);

      v12 = AGGraphGetValue();
      v14 = v12[1];
      v15 = *v12;
      v13 = *AGGraphGetValue();

      GlassContainer.Appearance.init()(__src);
      memset(&__src[9], 0, 24);
      GlassContainer.ScalePulse.init()(&__src[12]);
      __src[36] = 0;
      __src[37] = MEMORY[0x1E69E7CC0];
      __src[38] = 0;
      static GlassContainer.TranslationKickSettings.default.getter(&__src[39]);
      *(v5 + 32) = v18;
      *(v5 + 40) = 0;
      *(v5 + 48) = 0;
      *(v5 + 56) = v17;
      *(v5 + 64) = v7;
      *(v5 + 72) = v8;
      *(v5 + 80) = v9;
      *(v5 + 88) = v10;
      *(v5 + 96) = v11;
      *(v5 + 104) = v16;
      *(v5 + 112) = v15;
      *(v5 + 128) = v14;
      *(v5 + 144) = v13;
      *(v5 + 152) = v19;
      *(v5 + 160) = 0;
      *(v5 + 168) = 0;
      *(v5 + 176) = 1;
      *(v5 + 184) = xmmword_18DDB6AD0;
      *(v5 + 200) = 0x3FE0000000000000;
      *(v5 + 208) = 0;
      *(v5 + 216) = 0;
      *(v5 + 224) = 1;
      *(v5 + 232) = 0;
      *(v5 + 240) = 0;
      *(v5 + 248) = 0;
      *(v5 + 256) = 1;
      *(v5 + 264) = 0;
      *(v5 + 272) = 0;
      *(v5 + 280) = 1;
      *(v5 + 288) = 0;
      memcpy((v5 + 296), __src, 0x180uLL);
      *(v5 + 680) = 1;
      AGGraphSetOutputValue();
    }
  }

  return result;
}

double *GlassEffectAnchor.value.getter()
{
  if (one-time initialization token for one != -1)
  {
    swift_once();
  }

  v0 = static UnitRect.one;
  v1 = xmmword_1ED52E568;
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v3 = CGRect.prepare(geometry:)(*&v0 * *Value, *(&v0 + 1) * Value[1], *&v1 * *Value, *(&v1 + 1) * Value[1]);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for AnchorValueBox<UnitRect>, &type metadata for UnitRect, &protocol witness table for UnitRect, type metadata accessor for AnchorValueBox);
  result = swift_allocObject();
  result[2] = v3;
  *(result + 3) = v5;
  *(result + 4) = v7;
  *(result + 5) = v9;
  return result;
}

double *protocol witness for Rule.value.getter in conformance GlassEffectAnchor@<X0>(double **a1@<X8>)
{
  result = GlassEffectAnchor.value.getter();
  *a1 = result;
  return result;
}

double GlassEffectDataInit.value.getter(uint64_t a1, unint64_t a2, int a3, void *a4)
{
  v5 = HIDWORD(a2);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC14GlassContainerO8ItemDataVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = AGCreateWeakAttribute();
  v7 = AGCreateWeakAttribute();
  v8 = *MEMORY[0x1E698D3F8];
  if (*MEMORY[0x1E698D3F8] != v5)
  {
    v14 = AGCreateWeakAttribute();
    v9 = v14;
    v10 = HIDWORD(v14);
    if (v8 != a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    LODWORD(v13) = 0;
    goto LABEL_6;
  }

  v9 = 0;
  LODWORD(v10) = 0;
  if (v8 == a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = AGCreateWeakAttribute();
  v12 = v11;
  v13 = HIDWORD(v11);
LABEL_6:
  v15 = *AGGraphGetValue();
  v20 = a4;
  v21 = v9;
  v22 = v10;
  v23 = v12;
  v24 = v13;
  v25 = v6;
  v26 = v7;
  v16 = a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v20, v15, isUniquelyReferenced_nonNull_native);
  return 0.0;
}

uint64_t closure #1 in View._glassEffect<A>(_:in:isEnabled:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v20[0] = a5;
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  v16 = *(a1 + 16);
  v22 = *a1;
  v23 = v16;
  *v24 = *(a1 + 32);
  *&v24[16] = *(a1 + 48);
  v24[24] = a2;
  View.modifier<A>(_:)(&v22, a3, &type metadata for GlassEffectModifier);
  v25[0] = v22;
  v25[1] = v23;
  v26[0] = *v24;
  *(v26 + 9) = *&v24[9];
  outlined init with copy of GlassEffectConfiguration(a1, v21);
  outlined destroy of GlassEffectModifier(v25);
  v20[1] = a4;
  v20[2] = &protocol witness table for GlassEffectModifier;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v12, v9, WitnessTable);
  v18 = *(v10 + 8);
  v18(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)(v15, v9, WitnessTable);
  return (v18)(v15, v9);
}

uint64_t View._glassEffect<A>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v23 = a2;
  v25 = a6;
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v17 = *(v12 + 24);
  v16 = *(v12 + 32);
  v18 = *(v12 + 40);
  (*(v19 + 16))(v11, v9);
  outlined copy of _Glass.Variant.Role(v13, v14);

  v20 = AnyShape.init<A>(_:)(v11, a3);
  v40[0] = v13;
  v40[1] = v14;
  v41 = v15;
  v42 = v17;
  v43 = v16;
  v44 = v18;
  v45 = v20;
  v32 = v23;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = v24;
  v37 = v40;
  v26 = v23;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = v24;
  type metadata accessor for ModifiedContent();
  v38 = a4;
  v39 = &protocol witness table for GlassEffectModifier;
  swift_getWitnessTable();
  StaticIf<>.init(_:then:else:)(&type metadata for GlassEnabledPredicate, partial apply for closure #1 in View._glassEffect<A>(_:in:), v31, partial apply for closure #2 in View._glassEffect<A>(_:in:));
  return outlined destroy of GlassEffectConfiguration(v40);
}

uint64_t closure #1 in View._glassEffect<A>(_:in:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v18[0] = a4;
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  v14 = *(a1 + 16);
  v20 = *a1;
  v21 = v14;
  *v22 = *(a1 + 32);
  *&v22[16] = *(a1 + 48);
  v22[24] = 1;
  View.modifier<A>(_:)(&v20, a2, &type metadata for GlassEffectModifier);
  v23[0] = v20;
  v23[1] = v21;
  v24[0] = *v22;
  *(v24 + 9) = *&v22[9];
  outlined init with copy of GlassEffectConfiguration(a1, v19);
  outlined destroy of GlassEffectModifier(v23);
  v18[1] = a3;
  v18[2] = &protocol witness table for GlassEffectModifier;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v7, WitnessTable);
  v16 = *(v8 + 8);
  v16(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)(v13, v7, WitnessTable);
  return (v16)(v13, v7);
}

uint64_t closure #2 in View._glassEffect<A>(_:in:isEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v9, v10, v11);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a4);
  return (*(v6 + 8))(v8, a2);
}

void (*EnvironmentValues.hasGlassEffect.modify(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    hasGlassEffect08_3DF70D9P23D7473F4D189A049B764CFEFLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I15_hasGlassEffect08_3DF70D9P23D7473F4D189A049B764CFEFLLVG_Tt1g5(v5);
  }

  else
  {
    hasGlassEffect08_3DF70D9P23D7473F4D189A049B764CFEFLLVG_Tt1g5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_hasGlassEffect08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = hasGlassEffect08_3DF70D9P23D7473F4D189A049B764CFEFLLVG_Tt1g5 & 1;
  return EnvironmentValues.hasGlassEffect.modify;
}

uint64_t EnvironmentValues.hasGlassEffect.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = *v2;
  if (!v2[1])
  {
    return a2(v3) & 1;
  }

  v5 = a1(v3);

  return v5 & 1;
}

uint64_t key path getter for EnvironmentValues.hasGlassEffect : EnvironmentValues@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(void)@<X4>, _BYTE *a4@<X8>)
{
  v5 = *a1;
  if (a1[1])
  {

    v7 = a2(v5);
  }

  else
  {
    result = a3(*a1);
    v7 = result;
  }

  *a4 = v7 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.hasGlassEffect : EnvironmentValues(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t *), void (*a6)(uint64_t, void))
{
  v9 = *a1;
  v10 = *a2;
  swift_retain_n();
  a5(a2, v9, &v12);

  if (a2[1])
  {
    a6(v10, *a2);
  }
}

uint64_t EnvironmentValues.hasGlassEffect.setter(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t *), void (*a3)(uint64_t, void))
{
  v6 = v3;
  v8 = *v6;
  swift_retain_n();
  a2(v6, a1, &v10);

  if (v6[1])
  {
    a3(v8, *v6);
  }
}

void (*EnvironmentValues.glassEffectHidden.modify(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I18_glassEffectHidden08_3DF70D9P23D7473F4D189A049B764CFEFLLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F18_glassEffectHidden08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = v7 & 1;
  return EnvironmentValues.glassEffectHidden.modify;
}

void EnvironmentValues.hasGlassEffect.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void *), void (*a4)(void, void))
{
  v7 = *a1;
  v8 = *(*a1 + 48);
  swift_retain_n();
  if (a2)
  {
    v9 = v7[4];
    v10 = v7[2];
    v11 = v8;
    v12 = v7;
  }

  else
  {
    v9 = v7[4];
    v10 = v7[2];
    v12 = v7 + 1;
    v11 = v8;
  }

  a3(v10, v11, v12);

  if (v9)
  {
    a4(v7[3], *v7[2]);
  }

  free(v7);
}

uint64_t EnvironmentValues.glassEffectBackdropGroupName.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA028GlassEffectBackdropGroupNameF008_3DF70D9N23D7473F4D189A049B764CFEFLLVG_Tt2g5(v1);
  }

  v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA028GlassEffectBackdropGroupNameI008_3DF70D9Q23D7473F4D189A049B764CFEFLLVG_Tt1g5(v1);

  return v2;
}

uint64_t key path getter for EnvironmentValues.glassEffectBackdropGroupName : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA028GlassEffectBackdropGroupNameI008_3DF70D9Q23D7473F4D189A049B764CFEFLLVG_Tt1g5(v3);
    v6 = v5;
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA028GlassEffectBackdropGroupNameF008_3DF70D9N23D7473F4D189A049B764CFEFLLVG_Tt2g5(*a1);
    v4 = result;
    v6 = v8;
  }

  *a2 = v4;
  a2[1] = v6;
  return result;
}

uint64_t key path setter for EnvironmentValues.glassEffectBackdropGroupName : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA028GlassEffectBackdropGroupNameF008_3DF70D9N23D7473F4D189A049B764CFEFLLVG_Tt2g5(a2, v3, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA028GlassEffectBackdropGroupNameK008_3DF70D9S23D7473F4D189A049B764CFEFLLVG_Ttg5(v5, *a2);
  }
}

uint64_t EnvironmentValues.glassEffectBackdropGroupName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA028GlassEffectBackdropGroupNameF008_3DF70D9N23D7473F4D189A049B764CFEFLLVG_Tt2g5(v3, a1, a2);

  if (v3[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA028GlassEffectBackdropGroupNameK008_3DF70D9S23D7473F4D189A049B764CFEFLLVG_Ttg5(v6, *v3);
  }
}

void (*EnvironmentValues.glassEffectBackdropGroupName.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v3[5] = *v1;
  v6 = *(v1 + 8);
  v3[6] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA028GlassEffectBackdropGroupNameI008_3DF70D9Q23D7473F4D189A049B764CFEFLLVG_Tt1g5(v5);
    v9 = v8;
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA028GlassEffectBackdropGroupNameF008_3DF70D9N23D7473F4D189A049B764CFEFLLVG_Tt2g5(v5);
    v9 = v10;
  }

  v4[7] = 0;
  *v4 = v7;
  v4[1] = v9;
  return EnvironmentValues.glassEffectBackdropGroupName.modify;
}

void EnvironmentValues.glassEffectBackdropGroupName.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];

  v6 = v3[6];
  v7 = v3[4];
  if (a2)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA028GlassEffectBackdropGroupNameF008_3DF70D9N23D7473F4D189A049B764CFEFLLVG_Tt2g5(v7, v4, v5);

    if (v6)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA028GlassEffectBackdropGroupNameK008_3DF70D9S23D7473F4D189A049B764CFEFLLVG_Ttg5(v3[5], *v3[4]);
    }
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA028GlassEffectBackdropGroupNameF008_3DF70D9N23D7473F4D189A049B764CFEFLLVG_Tt2g5(v7, v4, v5);

    if (v6)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA028GlassEffectBackdropGroupNameK008_3DF70D9S23D7473F4D189A049B764CFEFLLVG_Ttg5(v3[5], *v3[4]);
    }
  }

  free(v3);
}

uint64_t static GlassEffectHiddenModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t *a4@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a2[2];
  v7 = a2[4];
  v47 = a2[3];
  v48 = v7;
  v49 = *(a2 + 20);
  v8 = *a2;
  v45 = a2[1];
  v46 = v6;
  v9 = *a2;
  v10 = v46;
  v43 = v8;
  v44 = v9;
  v11 = *(&v45 + 1);
  v28 = *(a2 + 36);
  v29 = *(a2 + 11);
  v12 = v47;
  v42[0] = *(a2 + 56);
  *(v42 + 12) = *(a2 + 68);
  swift_beginAccess();
  *&v36 = __PAIR64__(*(v45 + 16), v5);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(&v44, v40);
  lazy protocol witness table accessor for type GlassEffectHiddenEnvironment and conformance GlassEffectHiddenEnvironment();
  v13 = Attribute.init<A>(body:value:flags:update:)();
  v14 = MEMORY[0x1E69E7CC0];
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v14;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 256;
  *(v16 + 88) = v15;

  v17 = v10 | 0x20;
  *&v37 = v16;
  *(&v37 + 1) = v11;
  LODWORD(v38) = v10 | 0x20;
  HIDWORD(v38) = *(a2 + 11);
  *(&v38 + 4) = *(a2 + 36);
  *&v39[0] = v12;
  *(&v39[1] + 4) = *(a2 + 68);
  *(v39 + 8) = *(a2 + 56);
  v34 = v38;
  *v35 = v39[0];
  *&v35[16] = v39[1];
  v36 = *a2;
  *&v35[32] = v39[2];
  v32 = v36;
  v33 = v37;
  v18 = outlined init with copy of _ViewInputs(&v36, v40);
  a3(v18, &v32);
  v40[2] = v34;
  v40[3] = *v35;
  v40[4] = *&v35[16];
  v41 = *&v35[32];
  v40[0] = v32;
  v40[1] = v33;
  outlined destroy of _ViewInputs(v40);
  v30 = 0;
  v31 = 1;
  *&v32 = v12;
  v19 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
  v20 = *(v12 + 16);
  if (v19 != v20)
  {
    if (v19 >= v20)
    {
      __break(1u);
    }

    if (*(v12 + 16 * v19 + 32) == &type metadata for GlassContainer.Item.Key)
    {
      v21 = specialized getter of transform #1 in static GlassEffectHiddenModifier._makeView(modifier:inputs:body:)(&v30);
      v22 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO4ItemV0I0V_TtB5(*a4);
      v23 = *MEMORY[0x1E698D3F8];
      if ((v22 & 0x100000000) == 0)
      {
        v23 = v22;
      }

      *&v32 = __PAIR64__(v23, v21);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
      type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for PreferenceTransform<GlassContainer.Item.Key>, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key, type metadata accessor for PreferenceTransform);
      lazy protocol witness table accessor for type PreferenceTransform<GlassContainer.Item.Key> and conformance PreferenceTransform<A>();
      v24 = Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v32) = 0;
      PreferencesOutputs.subscript.setter(v24, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
    }
  }

  v32 = v43;
  *&v33 = v16;
  *(&v33 + 1) = v11;
  LODWORD(v34) = v17;
  *(&v34 + 4) = v28;
  HIDWORD(v34) = v29;
  *v35 = v12;
  *&v35[8] = v42[0];
  *&v35[20] = *(v42 + 12);
  return outlined destroy of _ViewInputs(&v32);
}

uint64_t specialized getter of transform #1 in static GlassEffectHiddenModifier._makeView(modifier:inputs:body:)(_BYTE *a1)
{
  if (a1[4] != 1)
  {
    return *a1;
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type GlassEffectHiddenModifier.Transform and conformance GlassEffectHiddenModifier.Transform();
  v2 = Attribute.init<A>(body:value:flags:update:)();
  swift_beginAccess();
  result = v2;
  *a1 = v2;
  a1[4] = 0;
  return result;
}

uint64_t GlassEffectHiddenModifier.Transform.updateValue()()
{
  v1 = *AGGraphGetValue();
  if ((v2 & 1) != 0 || (type metadata accessor for (_:)(), (result = AGGraphGetOutputValue()) == 0))
  {
    v4 = *(v0 + 4) + 1;
    *(v0 + 4) = v4;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 20) = v1;
    type metadata accessor for (_:)();
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t closure #1 in GlassEffectHiddenModifier.Transform.updateValue()(uint64_t result, unsigned int a2, char a3)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v7 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v3 = result;
    }

    v9 = (v3 + 152);
    do
    {
      *(v9 + 57) = a3 & 1;
      v10 = *v9;
      if (v10 != -1 && a2 != 0)
      {
        if (v10)
        {
          v12 = a2 == -1;
        }

        else
        {
          v12 = 1;
        }

        v13 = a2;
        if (!v12)
        {
          v8 = ~(a2 << 32) + a2;
          v14 = (v8 + (v10 << 32)) ^ ((v8 + (v10 << 32)) >> 22);
          v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
          v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
          v13 = (v16 >> 31) ^ v16;
        }

        *v9 = v13;
      }

      v9 += 164;
      --v4;
    }

    while (v4);
    *v7 = v3;
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance GlassEffectHiddenEnvironment@<X0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  v5 = *AGGraphGetValue();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F18_glassEffectHidden08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(a1, v5);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K18_glassEffectHidden08_3DF70D9R23D7473F4D189A049B764CFEFLLVG_Ttg5(v4, *a1);
  }
}

uint64_t View.glassEffect<A>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 40);
  v16[0] = v11;
  v16[1] = v12;
  v17 = v13;
  v18 = *(a1 + 24);
  v19 = v14;
  outlined copy of _Glass.Variant.Role(v11, v12);

  View._glassEffect<A>(_:in:)(v16, a2, a3, a4, a5, a6);
  outlined consume of _Glass.Variant.Role(v11, v12);
}

uint64_t View.glassEffect<A>(_:in:isEnabled:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 40);
  v18[0] = v13;
  v18[1] = v14;
  v19 = v15;
  v20 = *(a1 + 24);
  v21 = v16;
  outlined copy of _Glass.Variant.Role(v13, v14);

  View._glassEffect<A>(_:in:isEnabled:)(v18, a2, a3, a4, a5, a6, a7);
  outlined consume of _Glass.Variant.Role(v13, v14);
}

double DefaultGlassEffectShape.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  Capsule.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

double DefaultGlassEffectShape.sizeThatFits(_:)(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

double protocol witness for Shape.path(in:) in conformance DefaultGlassEffectShape@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  Capsule.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t specialized closure #1 in _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v9 = *(a2 + 16);
  if (!v9)
  {

LABEL_9:
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    v19 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  v13 = a2 + 40;
  do
  {
    (*(*v13 + 16))();
    v13 += 32;
    --v9;
  }

  while (v9);
  v14 = *(a2 + 16);
  v21 = 0;
  v22 = 0;
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = (a2 + 48);
  do
  {
    v16 = *(v15 - 1);
    v17 = *v15;
    v15 += 4;
    v23 = a3;
    (*(v16 + 8))(&v21, &v23, v17, a4, a5);
    --v14;
  }

  while (v14);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  v19 = v21;
  v20 = v22;
LABEL_10:
  *a6 = a1;
  a6[1] = v19;
  a6[2] = v20;
  return result;
}

uint64_t _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_D6InputsVtFZAA07_LayoutF0VyAA011GlassEffectN033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA7ForEachVySayAA0O9ContainerO5EntryVGA2_8StableIDVAA15ModifiedContentVyA7_yAA6ZStackVyAA0o14EntryContainerD0AVLLVGAA21_TraitWritingModifierVyAA01_N5TraitVyAW3KeyVGGGA14_yAA18TransitionTraitKeyVGGGTt2B5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _OWORD *, uint64_t, uint64_t))
{
  v8 = *(a2 + 48);
  v16 = *(a2 + 32);
  v17 = v8;
  v18 = *(a2 + 64);
  v19 = *(a2 + 80);
  v9 = *(a2 + 16);
  v14 = *a2;
  v15 = v9;
  outlined init with copy of _ViewInputs(a2, v20);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v14, 0);
  AGGraphCreateOffsetAttribute2();
  v20[2] = v16;
  v20[3] = v17;
  v20[4] = v18;
  v21 = v19;
  v20[0] = v14;
  v20[1] = v15;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  a5(OffsetAttribute2, v20, a4, a1);
  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v13 = v19;
  v12[0] = v14;
  v12[1] = v15;
  return outlined destroy of _ViewInputs(v12);
}

uint64_t _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_D6InputsVtFZAA07_LayoutF0VyAA019FlexibleButtonFrameN0VG_AA01_D16Modifier_ContentVyAA0opqR0VGTt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v15 = *a1;
  v3 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = v3;
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v4 = *(a1 + 16);
  v9 = *a1;
  v10 = v4;
  outlined init with copy of _ViewInputs(a1, v16);
  outlined init with copy of PropertyList(&v15, v16);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v9, 0);
  outlined destroy of PropertyList(&v15);
  AGGraphCreateOffsetAttribute2();
  v16[2] = v11;
  v16[3] = v12;
  v16[4] = v13;
  v17 = v14;
  v16[0] = v9;
  v16[1] = v10;
  outlined init with copy of _ViewInputs(v16, v7);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _s7SwiftUI6LayoutPAAE04makeC4View4root6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVAA01_e4ListI0VAA01_J0V_ANtXEtFZAA019FlexibleButtonFrameC0V_Tt3B503_s7a13UI13_Variadice38O4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_d21D04view6inputsAA01_D7i6VAA11_jk19VyAEy_xq_GG_AA01_D6l11VtFZAA01_d4m26J0VAA01_K0V_ARtXEfU0_AA07_c9F0VyAA019noP44O0VG_AA01_D16Modifier_ContentVyAA0pqrS0VGTG5AKyAA01_sE0O0U0Vy_AA01_cZ0VyATGAA01_E16Modifier_ContentVyAA0noP8ModifierVGGGTf1nnnc_n(OffsetAttribute2, v16, a2);
  outlined destroy of _ViewInputs(v16);
  v7[2] = v11;
  v7[3] = v12;
  v7[4] = v13;
  v8 = v14;
  v7[0] = v9;
  v7[1] = v10;
  return outlined destroy of _ViewInputs(v7);
}

unint64_t instantiation function for generic protocol witness table for DefaultGlassEffectShape(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DefaultGlassEffectShape and conformance DefaultGlassEffectShape();
  *(a1 + 8) = result;
  return result;
}

uint64_t initializeWithCopy for GlassEffectConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for GlassEffectConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of _Glass.Variant.Role(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithTake for GlassEffectConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  outlined consume of _Glass.Variant.Role(v4, v5);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA015FlexInteractionF0VG_AA0n5StateF033_404CBE866CEDD57705E9BEB28E77402CLLVTt2B5@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v6 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v6;
  v16 = *(a1 + 64);
  v17 = *(a1 + 80);
  v7 = *(a1 + 16);
  v12 = *a1;
  v13 = v7;
  v8 = v14;
  LODWORD(v14) = 0;
  v19 = v17;
  v18[3] = v6;
  v18[4] = v16;
  v18[0] = v12;
  v18[1] = v7;
  v18[2] = v14;
  outlined init with copy of _ViewInputs(a1, v10);
  outlined init with copy of _ViewInputs(v18, v10);
  _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA17FlexStateModifier33_404CBE866CEDD57705E9BEB28E77402CLLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j7RzAA0E8r8R_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n40VtFZAjA01_K0V_APtcfU0_AA01_ef1_D0VyAA015p21InteractionF0VG_AA0n5q8F033_404stuvW7CLLVTG5AKyAA0Z7ContentVyAA01_jR8_ContentVyAA0p11InteractionR0VGAWGGTf1nnnc_n(OffsetAttribute2, v18, a2);
  outlined destroy of _ViewInputs(v18);
  LODWORD(v14) = v8;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v12);
    AGSubgraphEndTreeElement();
  }

  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  v11 = v17;
  v10[0] = v12;
  v10[1] = v13;
  return outlined destroy of _ViewInputs(v10);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0N21AppearanceScaleEffectATLLVGAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
    AGSubgraphBeginTreeElement();
  }

  v9 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v9;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v10 = *(a2 + 16);
  v15 = *a2;
  v16 = v10;
  v11 = v17;
  LODWORD(v17) = 0;
  v22 = v20;
  v21[3] = v9;
  v21[4] = v19;
  v21[0] = v15;
  v21[1] = v10;
  v21[2] = v17;
  outlined init with copy of _ViewInputs(a2, v13);
  outlined init with copy of _ViewInputs(v21, v13);
  _s7SwiftUI12ViewModifierPAAE04makeC08modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAiA01_J0V_ANtctFZAA015TranslationKickD033_02B8A9C041E17C70E13F37D6E2D14302LLVySiG_Tt3B5(OffsetAttribute2, v21, partial apply for specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), v7, a3);
  outlined destroy of _ViewInputs(v21);
  LODWORD(v17) = v11;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v15);
    AGSubgraphEndTreeElement();
  }

  v13[2] = v17;
  v13[3] = v18;
  v13[4] = v19;
  v14 = v20;
  v13[0] = v15;
  v13[1] = v16;
  return outlined destroy of _ViewInputs(v13);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyAA01_ef1_D0VyAA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGAA0oF0ATLLVG_AA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
    AGSubgraphBeginTreeElement();
  }

  v9 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v9;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v10 = *(a2 + 16);
  v15 = *a2;
  v16 = v10;
  v11 = v17;
  LODWORD(v17) = 0;
  v22 = v20;
  v21[3] = v9;
  v21[4] = v19;
  v21[0] = v15;
  v21[1] = v10;
  v21[2] = v17;
  outlined init with copy of _ViewInputs(a2, v13);
  outlined init with copy of _ViewInputs(v21, v13);
  _s7SwiftUI12ViewModifierPAAE04makeC08modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAiA01_J0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5(OffsetAttribute2, v21, partial apply for specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), v7, a3);
  outlined destroy of _ViewInputs(v21);
  LODWORD(v17) = v11;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v15);
    AGSubgraphEndTreeElement();
  }

  v13[2] = v17;
  v13[3] = v18;
  v13[4] = v19;
  v14 = v20;
  v13[0] = v15;
  v13[1] = v16;
  return outlined destroy of _ViewInputs(v13);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_AA01_L15ActionModifier2VySiGTt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for _ValueActionModifier2<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for _ValueActionModifier2);
    AGSubgraphBeginTreeElement();
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v24 = *(a1 + 48);
  v25 = v7;
  v8 = *(a1 + 80);
  v9 = *(a1 + 16);
  v21 = *a1;
  v22 = v9;
  v23 = v6;
  v10 = v6;
  v26 = v8;
  LODWORD(v23) = 0;
  v34[3] = v24;
  v34[4] = v7;
  v35 = v8;
  v34[0] = v21;
  v34[1] = v9;
  v34[2] = v23;
  v11 = DWORD2(v9);
  outlined init with copy of _ViewInputs(a1, &v15);
  outlined init with copy of _ViewInputs(v34, &v15);
  v12 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v13 = *(v12 + 64);

  v15 = __PAIR64__(v11, OffsetAttribute2);
  v16 = 0u;
  LODWORD(v17) = 0;
  DWORD1(v17) = v13;
  *(&v17 + 1) = 0xFFFFFFFFLL;
  LOBYTE(v18) = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ValueActionDispatcher<_ValueActionModifier2<Int>>();
  lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ValueActionDispatcher<_ValueActionModifier2<Int>> and conformance ValueActionDispatcher<A>, type metadata accessor for ValueActionDispatcher<_ValueActionModifier2<Int>>);
  Attribute.init<A>(body:value:flags:update:)();
  v27[0] = OffsetAttribute2;
  v27[1] = v11;
  v28 = 0;
  v29 = 0u;
  v30 = 0;
  v31 = v13;
  v32 = 0xFFFFFFFFLL;
  v33 = 0;
  outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(v27, type metadata accessor for ValueActionDispatcher<_ValueActionModifier2<Int>>);
  AGGraphSetFlags();
  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(v34, a2);
  outlined destroy of _ViewInputs(v34);
  LODWORD(v23) = v10;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v21);
    AGSubgraphEndTreeElement();
  }

  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  return outlined destroy of _ViewInputs(&v15);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGG_AA0oF0ATLLVTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v9 = *(a2 + 48);
  v19 = *(a2 + 32);
  v20 = v9;
  v21 = *(a2 + 64);
  v10 = *(a2 + 80);
  v11 = *(a2 + 16);
  v17 = *a2;
  v18 = v11;
  v12 = v19;
  v22 = v10;
  LODWORD(v19) = 0;
  v24 = v10;
  v23[3] = v9;
  v23[4] = v21;
  v23[0] = v17;
  v23[1] = v11;
  v23[2] = v19;
  v25[1] = v11;
  v25[2] = v19;
  v25[0] = v17;
  v14 = OffsetAttribute2;
  outlined init with copy of _ViewInputs(a2, v15);
  outlined init with copy of _ViewInputs(v23, v15);
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA12KickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt1B5(&v14, v25);
  _s7SwiftUI12ViewModifierPAAE04makeC08modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAiA01_J0V_ANtctFZAA04KickD033_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt3B5(v14, v23, partial apply for specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), v7, a3);
  outlined destroy of _ViewInputs(v23);
  LODWORD(v19) = v12;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v17);
    AGSubgraphEndTreeElement();
  }

  v15[2] = v19;
  v15[3] = v20;
  v15[4] = v21;
  v16 = v22;
  v15[0] = v17;
  v15[1] = v18;
  return outlined destroy of _ViewInputs(v15);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA04KickF033_02B8A9C041E17C70E13F37D6E2D14302LLVG_AA16_TransformEffectVTt2B5@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v6 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v6;
  v16 = *(a1 + 64);
  v17 = *(a1 + 80);
  v7 = *(a1 + 16);
  v12 = *a1;
  v13 = v7;
  v8 = v14;
  LODWORD(v14) = 0;
  v19 = v17;
  v18[3] = v6;
  v18[4] = v16;
  v18[0] = v12;
  v18[1] = v7;
  v18[2] = v14;
  outlined init with copy of _ViewInputs(a1, v10);
  outlined init with copy of _ViewInputs(v18, v10);
  _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010_TransformD0VG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n90VtFZAjA01_K0V_APtcfU0_AA01_ef1_D0VyAA04KickF033_02B8A9C041E17C70E13F37D6E2D14302LLVG_AA16_pD4VTG5AKyAA0sT0VyAA01_jz1_T0VyAA04KickZ033_02B8A9C041E17C70E13F37D6E2D14302LLVGAVGGTf1nnnc_n(OffsetAttribute2, v18, a2);
  outlined destroy of _ViewInputs(v18);
  LODWORD(v14) = v8;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v12);
    AGSubgraphEndTreeElement();
  }

  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  v11 = v17;
  v10[0] = v12;
  v10[1] = v13;
  return outlined destroy of _ViewInputs(v10);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0N21AppearanceScaleEffectATLLVG_AA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
    AGSubgraphBeginTreeElement();
  }

  v9 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v9;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v10 = *(a2 + 16);
  v15 = *a2;
  v16 = v10;
  v11 = v17;
  LODWORD(v17) = 0;
  v22 = v20;
  v21[3] = v9;
  v21[4] = v19;
  v21[0] = v15;
  v21[1] = v10;
  v21[2] = v17;
  outlined init with copy of _ViewInputs(a2, v13);
  outlined init with copy of _ViewInputs(v21, v13);
  _s7SwiftUI12ViewModifierPAAE04makeC08modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAiA01_J0V_ANtctFZAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiG_Tt3B5(OffsetAttribute2, v21, partial apply for specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), v7, a3);
  outlined destroy of _ViewInputs(v21);
  LODWORD(v17) = v11;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v15);
    AGSubgraphEndTreeElement();
  }

  v13[2] = v17;
  v13[3] = v18;
  v13[4] = v19;
  v14 = v20;
  v13[0] = v15;
  v13[1] = v16;
  return outlined destroy of _ViewInputs(v13);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6EffectATLLVGAYGAYGAYGAA05_BlurY0VG_AA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
    AGSubgraphBeginTreeElement();
  }

  v9 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v9;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v10 = *(a2 + 16);
  v15 = *a2;
  v16 = v10;
  v11 = v17;
  LODWORD(v17) = 0;
  v22 = v20;
  v21[3] = v9;
  v21[4] = v19;
  v21[0] = v15;
  v21[1] = v10;
  v21[2] = v17;
  outlined init with copy of _ViewInputs(a2, v13);
  outlined init with copy of _ViewInputs(v21, v13);
  _s7SwiftUI12ViewModifierPAAE04makeC08modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAiA01_J0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5(OffsetAttribute2, v21, partial apply for specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), v7, a3);
  outlined destroy of _ViewInputs(v21);
  LODWORD(v17) = v11;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v15);
    AGSubgraphEndTreeElement();
  }

  v13[2] = v17;
  v13[3] = v18;
  v13[4] = v19;
  v14 = v20;
  v13[0] = v15;
  v13[1] = v16;
  return outlined destroy of _ViewInputs(v13);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6EffectATLLVGAYGAYGAYG_AA05_BlurY0VTt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6EffectATLLVGAYGAYGAYG_AA05_BlurY0VTt2B5Tm(a1, a2, _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA05_BlurD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m113VtFZAjA01_K0V_APtcfU0_ACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6d21AVLLVGA_GA_GA_G_AA05_N6Y0VTG5AKyAA0qR0VyAUyAUyAUyAUyAA01_ix1_R0VyAA010ScalePulseX033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA010ScalePulseD0AYLLVGA2_GA2_GA2_GARGGTf1nnnc_n, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a3);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6EffectATLLVGAYGAYG_AYTt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v8 = *(a2 + 48);
  v16 = *(a2 + 32);
  v17 = v8;
  v18 = *(a2 + 64);
  v19 = *(a2 + 80);
  v9 = *(a2 + 16);
  v14 = *a2;
  v15 = v9;
  v10 = v16;
  LODWORD(v16) = 0;
  v21 = v19;
  v20[3] = v8;
  v20[4] = v18;
  v20[0] = v14;
  v20[1] = v9;
  v20[2] = v16;
  outlined init with copy of _ViewInputs(a2, v12);
  outlined init with copy of _ViewInputs(v20, v12);
  _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n49VtFZAjA01_K0V_APtcfU0_ACyACyACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D18AVLLVGA_GA_G_A_TG5AKyAA15ModifiedContentVyA_yA_yA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGAWGAWGGTf1nnnc_n(OffsetAttribute2, v20, a1, a3);
  outlined destroy of _ViewInputs(v20);
  LODWORD(v16) = v10;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v14);
    AGSubgraphEndTreeElement();
  }

  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v13 = v19;
  v12[0] = v14;
  v12[1] = v15;
  return outlined destroy of _ViewInputs(v12);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6EffectATLLVGAYG_AYTt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v8 = *(a2 + 48);
  v16 = *(a2 + 32);
  v17 = v8;
  v18 = *(a2 + 64);
  v19 = *(a2 + 80);
  v9 = *(a2 + 16);
  v14 = *a2;
  v15 = v9;
  v10 = v16;
  LODWORD(v16) = 0;
  v21 = v19;
  v20[3] = v8;
  v20[4] = v18;
  v20[0] = v14;
  v20[1] = v9;
  v20[2] = v16;
  outlined init with copy of _ViewInputs(a2, v12);
  outlined init with copy of _ViewInputs(v20, v12);
  _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n46VtFZAjA01_K0V_APtcfU0_ACyACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D15AVLLVGA_G_A_TG5AKyAA15ModifiedContentVyA_yA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGAWGGTf1nnnc_n(OffsetAttribute2, v20, a1, a3);
  outlined destroy of _ViewInputs(v20);
  LODWORD(v16) = v10;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v14);
    AGSubgraphEndTreeElement();
  }

  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v13 = v19;
  v12[0] = v14;
  v12[1] = v15;
  return outlined destroy of _ViewInputs(v12);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6EffectATLLVG_AYTt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v8 = *(a2 + 48);
  v16 = *(a2 + 32);
  v17 = v8;
  v18 = *(a2 + 64);
  v19 = *(a2 + 80);
  v9 = *(a2 + 16);
  v14 = *a2;
  v15 = v9;
  v10 = v16;
  LODWORD(v16) = 0;
  v21 = v19;
  v20[3] = v8;
  v20[4] = v18;
  v20[0] = v14;
  v20[1] = v9;
  v20[2] = v16;
  outlined init with copy of _ViewInputs(a2, v12);
  outlined init with copy of _ViewInputs(v20, v12);
  _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n43VtFZAjA01_K0V_APtcfU0_ACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D12AVLLVG_A_TG5AKyAA15ModifiedContentVyA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGGTf1nnnc_n(OffsetAttribute2, v20, a1, a3);
  outlined destroy of _ViewInputs(v20);
  LODWORD(v16) = v10;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v14);
    AGSubgraphEndTreeElement();
  }

  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v13 = v19;
  v12[0] = v14;
  v12[1] = v15;
  return outlined destroy of _ViewInputs(v12);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA0nO6EffectATLLVTt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v8 = *(a2 + 48);
  v16 = *(a2 + 32);
  v17 = v8;
  v18 = *(a2 + 64);
  v19 = *(a2 + 80);
  v9 = *(a2 + 16);
  v14 = *a2;
  v15 = v9;
  v10 = v16;
  LODWORD(v16) = 0;
  v21 = v19;
  v20[3] = v8;
  v20[4] = v18;
  v20[0] = v14;
  v20[1] = v9;
  v20[2] = v16;
  outlined init with copy of _ViewInputs(a2, v12);
  outlined init with copy of _ViewInputs(v20, v12);
  _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n40VtFZAjA01_K0V_APtcfU0_AA01_ef1_D0VyAA010pq6F033_5rstuvwxyz15LLVySiGG_AA0nO6D8AVLLVTG5AKyAA15ModifiedContentVyAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGGTf1nnnc_n(OffsetAttribute2, v20, a1, a3);
  outlined destroy of _ViewInputs(v20);
  LODWORD(v16) = v10;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v14);
    AGSubgraphEndTreeElement();
  }

  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v13 = v19;
  v12[0] = v14;
  v12[1] = v15;
  return outlined destroy of _ViewInputs(v12);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVG_AA0N21AppearanceScaleEffectATLLVTt2B5@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v6 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v6;
  v16 = *(a1 + 64);
  v17 = *(a1 + 80);
  v7 = *(a1 + 16);
  v12 = *a1;
  v13 = v7;
  v8 = v14;
  LODWORD(v14) = 0;
  v19 = v17;
  v18[3] = v6;
  v18[4] = v16;
  v18[0] = v12;
  v18[1] = v7;
  v18[2] = v14;
  outlined init with copy of _ViewInputs(a1, v10);
  outlined init with copy of _ViewInputs(v18, v10);
  _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA020GlassAppearanceScaleD033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n46VtFZAjA01_K0V_APtcfU0_ACyACyAA01_ef1_D0VyAA020p20TransitionStateF033_stuvwxyz18DFLLVGAA14_Opacityd11VGAA11_Blurd9VG_AA0N21qrD8AVLLVTG5AKyAA15ModifiedContentVyA_yA_yAA01_J16Modifier_ContentVyAA0P23TransitionStateModifierAVLLVGAA08_OpacityD0VGAA05_BlurD0VGAWGGTf1nnnc_n(OffsetAttribute2, v18, a2);
  outlined destroy of _ViewInputs(v18);
  LODWORD(v14) = v8;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v12);
    AGSubgraphEndTreeElement();
  }

  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  v11 = v17;
  v10[0] = v12;
  v10[1] = v13;
  return outlined destroy of _ViewInputs(v10);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVG_AA11_BlurEffectVTt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6EffectATLLVGAYGAYGAYG_AA05_BlurY0VTt2B5Tm(a1, a2, _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA05_BlurD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m116VtFZAjA01_K0V_APtcfU0_ACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_Opacityd8VG_AA11_nD4VTG5AKyAA0qR0VyAUyAA01_ix1_R0VyAA020GlassTransitionStateX033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA08_OpacityD0VGARGGTf1nnnc_n, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a3);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6EffectATLLVGAYGAYGAYG_AA05_BlurY0VTt2B5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, _OWORD *, uint64_t)@<X3>, void (*a4)(_OWORD *, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v12 = *(a2 + 48);
  v22 = *(a2 + 32);
  v23 = v12;
  v24 = *(a2 + 64);
  v13 = *(a2 + 80);
  v14 = *(a2 + 16);
  v20 = *a2;
  v21 = v14;
  v15 = v22;
  v25 = v13;
  LODWORD(v22) = 0;
  v27 = v13;
  v26[3] = v12;
  v26[4] = v24;
  v26[0] = v20;
  v26[1] = v14;
  v26[2] = v22;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v12))
  {
    v17 = OffsetAttribute2;
    v28[0] = v20;
    v28[1] = v21;
    v28[2] = v22;
    outlined init with copy of _ViewInputs(a2, v18);
    outlined init with copy of _ViewInputs(v26, v18);
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA11_BlurEffectV_Tt1B5(&v17, v28);
    a3(v17, v26, a1);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, v18);
    outlined init with copy of _ViewInputs(v26, v18);
    a4(v26, a1);
  }

  outlined destroy of _ViewInputs(v26);
  LODWORD(v22) = v15;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a5, &v20);
    AGSubgraphEndTreeElement();
  }

  v18[2] = v22;
  v18[3] = v23;
  v18[4] = v24;
  v19 = v25;
  v18[0] = v20;
  v18[1] = v21;
  return outlined destroy of _ViewInputs(v18);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA14_OpacityEffectVTt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA14_OpacityEffectVTt2B5Tm(a1, a2, specialized static _OpacityEffect._makeView(modifier:inputs:body:), _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a3);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA016GlassEffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA014_AnchorWritingF0VySo6CGRectVAA0n8MaterialP3KeyATLLVGTt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>();
    AGSubgraphBeginTreeElement();
  }

  v6 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v6;
  v16 = *(a1 + 64);
  v17 = *(a1 + 80);
  v7 = *(a1 + 16);
  v12 = *a1;
  v13 = v7;
  v8 = v14;
  LODWORD(v14) = 0;
  v19 = v17;
  v18[3] = v6;
  v18[4] = v16;
  v18[0] = v12;
  v18[1] = v7;
  v18[2] = v14;
  outlined init with copy of _ViewInputs(a1, v10);
  outlined init with copy of _ViewInputs(v18, v10);
  _s7SwiftUI22_AnchorWritingModifierV9_makeView8modifier6inputs4bodyAA01_G7OutputsVAA11_GraphValueVyACyxq_GG_AA01_G6InputsVAiA01_L0V_AOtctFZSo6CGRectV_AA21GlassMaterialShapeKey33_62A32D59B8A902A88963544196023CF7LLVTt3B503_s7a24UI15ModifiedContentVA2A4g7RzAA0E8e8R_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n40VtFZAjA01_K0V_APtcfU0_AA01_ef1_D0VyAA016p6Effectr7F033_62tuvwxy11LLVG_AA014_cd7F0VySo6o6VAA0n8q2P3S9AVLLVGTG5AKyAA15ModifiedContentVyAA01_gE8_ContentVyAA0p6EffectrE0AULLVGACyAsVGGGTf1nnnc_n(OffsetAttribute2, v18, a2);
  outlined destroy of _ViewInputs(v18);
  LODWORD(v14) = v8;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v12);
    AGSubgraphEndTreeElement();
  }

  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  v11 = v17;
  v10[0] = v12;
  v10[1] = v13;
  return outlined destroy of _ViewInputs(v10);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA14_OpacityEffectVTt2B5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(int *, __int128 *, uint64_t)@<X4>, void (*a4)(uint64_t, __int128 *)@<X5>, uint64_t a5@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v12 = *(a2 + 48);
  v25 = *(a2 + 32);
  v26 = v12;
  v27 = *(a2 + 64);
  v28 = *(a2 + 80);
  v13 = *(a2 + 16);
  v23 = *a2;
  v24 = v13;
  v30 = v28;
  v14 = v25;
  LODWORD(v25) = 0;
  v16 = OffsetAttribute2;
  v29[0] = v23;
  v29[1] = v13;
  v29[3] = v12;
  v29[4] = v27;
  v29[2] = v25;
  v19 = v25;
  v20 = v12;
  v21 = v27;
  v22 = v28;
  v17 = v23;
  v18 = v13;
  outlined init with copy of _ViewInputs(a2, v31);
  outlined init with copy of _ViewInputs(v29, v31);
  a3(&v16, &v17, a1);
  v31[2] = v19;
  v31[3] = v20;
  v31[4] = v21;
  v32 = v22;
  v31[0] = v17;
  v31[1] = v18;
  outlined destroy of _ViewInputs(v31);
  LODWORD(v25) = v14;
  if (ShouldRecordTree)
  {
    a4(a5, &v23);
    AGSubgraphEndTreeElement();
  }

  v19 = v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v17 = v23;
  v18 = v24;
  return outlined destroy of _ViewInputs(&v17);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA016GlassEffectLocalF008_3DF70D9R23D7473F4D189A049B764CFEFLLVG_AA0no9ContainerF0ATLLVTt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v5 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = v5;
  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  v6 = *(a1 + 16);
  v15 = *a1;
  v16 = v6;
  v22 = v20;
  v7 = v17;
  LODWORD(v17) = 0;
  v21[0] = v15;
  v21[1] = v6;
  v21[3] = v5;
  v21[4] = v19;
  v21[2] = v17;
  v11 = v17;
  v12 = v5;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v6;
  outlined init with copy of _ViewInputs(a1, v23);
  outlined init with copy of _ViewInputs(v21, v23);
  specialized static GlassEffectContainerModifier._makeView(modifier:inputs:body:)(&v9, a2);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  LODWORD(v17) = v7;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v15);
    AGSubgraphEndTreeElement();
  }

  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  return outlined destroy of _ViewInputs(&v9);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA011GlassEffectP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO5EntryVGA4_8StableIDVACyACyAA6ZStackVyAA0r14EntryContainerE0AXLLVGAA013_TraitWritingF0VyAA01_P5TraitVyAY3KeyVGGGA14_yAA18TransitionTraitKeyVGGGG_AA0r8MaterialS033_62A32D59B8A902A88963544196023CF7LLVTt2B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v8 = *(a2 + 48);
  v21 = *(a2 + 32);
  v22 = v8;
  v23 = *(a2 + 64);
  v24 = *(a2 + 80);
  v9 = *(a2 + 16);
  v19 = *a2;
  v20 = v9;
  v26 = v24;
  v10 = v21;
  LODWORD(v21) = 0;
  v12 = OffsetAttribute2;
  v25[0] = v19;
  v25[1] = v9;
  v25[3] = v8;
  v25[4] = v23;
  v25[2] = v21;
  v15 = v21;
  v16 = v8;
  v17 = v23;
  v18 = v24;
  v13 = v19;
  v14 = v9;
  outlined init with copy of _ViewInputs(a2, v27);
  outlined init with copy of _ViewInputs(v25, v27);
  specialized static GlassMaterialEffect._makeView(modifier:inputs:body:)(&v12, &v13, a1, a3);
  v27[2] = v15;
  v27[3] = v16;
  v27[4] = v17;
  v28 = v18;
  v27[0] = v13;
  v27[1] = v14;
  outlined destroy of _ViewInputs(v27);
  LODWORD(v21) = v10;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v19);
    AGSubgraphEndTreeElement();
  }

  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v13 = v19;
  v14 = v20;
  return outlined destroy of _ViewInputs(&v13);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO4ItemVGA4_2IDVAA0r4ItemE0AXLLVGGAA0r11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0r18EffectPlatformItemF0AXLLVGAA0rs11InteractionF0AXLLVGAA0rs15FlexInteractionF0AXLLVGAA0r15TransitionStateF0AXLLVG_AA018ScheduledAnimationF0020_94C2570E898B27608B6U11D65EF8A1A07LLVySiGTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v9 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v9;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v10 = *(a2 + 16);
  v15 = *a2;
  v16 = v10;
  v11 = v17;
  LODWORD(v17) = 0;
  v22 = v20;
  v21[3] = v9;
  v21[4] = v19;
  v21[0] = v15;
  v21[1] = v10;
  v21[2] = v17;
  outlined init with copy of _ViewInputs(a2, v13);
  outlined init with copy of _ViewInputs(v21, v13);
  _s7SwiftUI12ViewModifierPAAE04makeC08modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAiA01_J0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5(OffsetAttribute2, v21, partial apply for specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), v7, a3);
  outlined destroy of _ViewInputs(v21);
  LODWORD(v17) = v11;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v15);
    AGSubgraphEndTreeElement();
  }

  v13[2] = v17;
  v13[3] = v18;
  v13[4] = v19;
  v14 = v20;
  v13[0] = v15;
  v13[1] = v16;
  return outlined destroy of _ViewInputs(v13);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO4ItemVGA4_2IDVAA0r4ItemE0AXLLVGGAA0r11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0r18EffectPlatformItemF0AXLLVGAA0rs11InteractionF0AXLLVGAA0rs15FlexInteractionF0AXLLVG_AA0r15TransitionStateF0AXLLVTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  return _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO4ItemVGA4_2IDVAA0r4ItemE0AXLLVGGAA0r11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0r18EffectPlatformItemF0AXLLVGAA0rs11InteractionF0AXLLVGAA0rs15FlexInteractionF0AXLLVG_AA0r15TransitionStateF0AXLLVTt2B5Tm(a1, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a3);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO4ItemVGA4_2IDVAA0r4ItemE0AXLLVGGAA0r11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0r18EffectPlatformItemF0AXLLVGAA0rs11InteractionF0AXLLVG_AA0rs15FlexInteractionF0AXLLVTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  AGGraphCreateOffsetAttribute2();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v8 = *(a2 + 48);
  v26 = *(a2 + 32);
  v27 = v8;
  v28 = *(a2 + 64);
  v29 = *(a2 + 80);
  v9 = *(a2 + 16);
  v24 = *a2;
  v25 = v9;
  v10 = v26;
  LODWORD(v26) = 0;
  v30 = v24;
  v31 = v9;
  v35 = v29;
  v33 = v8;
  v34 = v28;
  v32 = v26;
  outlined init with copy of _ViewInputs(a2, v36);
  outlined init with copy of _ViewInputs(&v30, v36);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(v24, v36);
  Strong = swift_weakLoadStrong();
  outlined destroy of WeakBox<GlassContainerCache>(v36);
  if (!Strong)
  {
    *a3 = MEMORY[0x1E69E7CC0];
    *(a3 + 8) = 0;
    v15 = *MEMORY[0x1E698D3F8];
    outlined destroy of _ViewInputs(&v30);
    *(a3 + 12) = v15;
    LODWORD(v26) = v10;
    if (!ShouldRecordTree)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  LODWORD(v36[0]) = AGGraphCreateOffsetAttribute2();
  *(&v36[0] + 1) = Strong;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEntryFlexInteractionModifier.InitModifier and conformance GlassEntryFlexInteractionModifier.InitModifier();

  v12 = Attribute.init<A>(body:value:flags:update:)();

  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v20 = v32;
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v18 = v30;
  v19 = v31;
  v13 = v32;
  LODWORD(v20) = 0;
  v37 = v35;
  v36[3] = v33;
  v36[4] = v34;
  v36[0] = v30;
  v36[1] = v31;
  v36[2] = v20;
  outlined init with copy of _ViewInputs(&v30, v16);
  outlined init with copy of _ViewInputs(v36, v16);
  _s7SwiftUI12ViewModifierPAAE04makeC08modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAiA01_J0V_ANtctFZAA015FlexInteractionD0V_Tt3B5(v12, v36, partial apply for specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), v6, a3);
  outlined destroy of _ViewInputs(v36);
  LODWORD(v20) = v13;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v18);
    AGSubgraphEndTreeElement();
  }

  outlined destroy of _ViewInputs(&v30);

  v16[2] = v20;
  v16[3] = v21;
  v16[4] = v22;
  v17 = v23;
  v16[0] = v18;
  v16[1] = v19;
  outlined destroy of _ViewInputs(v16);
  LODWORD(v26) = v10;
  if (ShouldRecordTree)
  {
LABEL_9:
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v24);
    AGSubgraphEndTreeElement();
  }

LABEL_10:

  v20 = v26;
  v21 = v27;
  v22 = v28;
  v23 = v29;
  v18 = v24;
  v19 = v25;
  return outlined destroy of _ViewInputs(&v18);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO4ItemVGA4_2IDVAA0r4ItemE0AXLLVGGAA0r11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0r18EffectPlatformItemF0AXLLVG_AA0rs11InteractionF0AXLLVTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  AGGraphCreateOffsetAttribute2();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v8 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v9 = *(a2 + 48);
  v31 = *(a2 + 32);
  v32 = v9;
  v33 = *(a2 + 64);
  v34 = *(a2 + 80);
  v10 = *(a2 + 16);
  v29 = *a2;
  v30 = v10;
  v11 = v31;
  LODWORD(v31) = 0;
  v40 = v34;
  v38 = v9;
  v39 = v33;
  v35 = v29;
  v36 = v10;
  v37 = v31;
  v12 = v29;
  outlined init with copy of _ViewInputs(a2, &v23);
  outlined init with copy of _ViewInputs(&v35, &v23);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(v12, &v23);
  Strong = swift_weakLoadStrong();
  v14 = outlined destroy of WeakBox<GlassContainerCache>(&v23);
  if (Strong)
  {
    v15 = *(Strong + 136);
    if (v15 && (v16 = (*(v15 + 88))(v14)) != 0)
    {
      v18 = v16;
      v19 = v17;
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v21 = AGGraphCreateOffsetAttribute2();
      v25 = v37;
      v26 = v38;
      v27 = v39;
      v28 = v40;
      v23 = v35;
      v24 = v36;
      static GlassEntryInteractionModifier._makeRepresentable<A>(type:entry:material:cache:inputs:body:)(OffsetAttribute2, v21, Strong, &v23, partial apply for specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), v6, v18, a3, v19);
    }

    else
    {
      specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v35, a3);
    }
  }

  else
  {
    specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v35, a3);
  }

  outlined destroy of _ViewInputs(&v35);
  LODWORD(v31) = v11;
  if (v8)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v29);
    AGSubgraphEndTreeElement();
  }

  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v30;
  return outlined destroy of _ViewInputs(&v23);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO4ItemVGA4_2IDVAA0r4ItemE0AXLLVGGAA0r11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA0r18EffectPlatformItemF0AXLLVTt2B5@<X0>(uint64_t a1@<X1>, double *a2@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v5 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = v5;
  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  v6 = *(a1 + 16);
  v15 = *a1;
  v16 = v6;
  v22 = v20;
  v7 = v17;
  LODWORD(v17) = 0;
  v21[0] = v15;
  v21[1] = v6;
  v21[3] = v5;
  v21[4] = v19;
  v21[2] = v17;
  v11 = v17;
  v12 = v5;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v6;
  outlined init with copy of _ViewInputs(a1, v23);
  outlined init with copy of _ViewInputs(v21, v23);
  specialized static GlassEffectPlatformItemModifier._makeView(modifier:inputs:body:)(&v9, a2);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  LODWORD(v17) = v7;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v15);
    AGSubgraphEndTreeElement();
  }

  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  return outlined destroy of _ViewInputs(&v9);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO4ItemVGA4_2IDVAA0r4ItemE0AXLLVGG_AA0r11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v69 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v8 = *(a2 + 48);
  v52 = *(a2 + 32);
  v53 = v8;
  v54 = *(a2 + 64);
  v55 = *(a2 + 80);
  v9 = *(a2 + 16);
  v50 = *a2;
  v51 = v9;
  v21 = v52;
  LODWORD(v52) = 0;
  v56 = v50;
  v57 = v9;
  v61 = v55;
  v59 = v8;
  v60 = v54;
  v58 = v52;
  v68[1] = v9;
  v68[2] = v52;
  v68[0] = v50;
  LODWORD(v44) = OffsetAttribute2;
  outlined init with copy of _ViewInputs(a2, &v62);
  outlined init with copy of _ViewInputs(&v56, &v62);
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA24GlassEffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLV_Tt1B5(&v44, v68);
  v10 = v44;
  static DynamicPropertyCache.fields(of:)(&type metadata for GlassEffectShapeModifier, &v62);
  v11 = v62;
  v12 = v63;
  v13 = DWORD1(v63);
  v46 = v58;
  v47 = v59;
  v48 = v60;
  v49 = v61;
  v44 = v56;
  v45 = v57;
  if (AGTypeGetKind() - 2 > 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(&v56, &v62);
    LOBYTE(v62) = v12;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v44, v11, *(&v11 + 1), v12 | (v13 << 32), v10, &v62);
    v19 = v63;
    v20 = *(&v62 + 1);
    v14 = BYTE8(v63);
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeW033_62A32D59B8A902A88963544196023CF7LLVGG_AA0kG7ElementANLLOTt0g5(partial apply for specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), v6, 0);
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v43 = v49;
    v38 = v44;
    v39 = v45;
    if (ShouldRecordTree)
    {
      type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>();
      outlined init with copy of _ViewInputs(&v38, &v62);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v38, &v62);
    }

    v34 = v40;
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v32 = v38;
    v33 = v39;
    v15 = v40;
    LODWORD(v34) = 0;
    v67 = v43;
    v65 = v41;
    v66 = v42;
    v62 = v38;
    v63 = v39;
    v64 = v34;
    outlined init with copy of _ViewInputs(&v38, v30);
    outlined init with copy of _ViewInputs(&v62, v30);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA016GlassEffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA014_AnchorWritingF0VySo6CGRectVAA0n8MaterialP3KeyATLLVGTt2B5(&v62, v23);
    outlined destroy of _ViewInputs(&v62);
    LODWORD(v34) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v23, &v32);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v38);
    v30[2] = v34;
    v30[3] = v35;
    v30[4] = v36;
    v31 = v37;
    v30[0] = v32;
    v30[1] = v33;
    outlined destroy of _ViewInputs(v30);
    v16 = v23[0];
    v17 = v23[1];
    if (v14)
    {
      v26 = v46;
      v27 = v47;
      v28 = v48;
      v29 = v49;
      v24 = v44;
      v25 = v45;
      outlined destroy of _ViewInputs(&v24);
      outlined consume of DynamicPropertyCache.Fields.Layout();
    }

    else
    {
      LOBYTE(v24) = v12;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v10, v11, *(&v11 + 1), v12, v20, v19, &type metadata for GlassEffectShapeModifier, type metadata accessor for GlassEffectShapeModifier.Type);
      outlined consume of DynamicPropertyCache.Fields.Layout();
      v26 = v46;
      v27 = v47;
      v28 = v48;
      v29 = v49;
      v24 = v44;
      v25 = v45;
      outlined destroy of _ViewInputs(&v24);
    }

    outlined destroy of _ViewInputs(&v56);
    *a3 = v16;
    a3[1] = v17;
    LODWORD(v52) = v21;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v50);
      AGSubgraphEndTreeElement();
    }

    v26 = v52;
    v27 = v53;
    v28 = v54;
    v29 = v55;
    v24 = v50;
    v25 = v51;
    return outlined destroy of _ViewInputs(&v24);
  }

  return result;
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA5ImageV_AA25_ForegroundStyleModifier2VyAA15AngularGradientVAA5ColorVGTt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>(0, &lazy cache variable for type metadata for _ForegroundStyleModifier2<AngularGradient, Color>, type metadata accessor for _ForegroundStyleModifier2);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v5 = *(a1 + 48);
  v33 = *(a1 + 32);
  v34 = v5;
  v35 = *(a1 + 64);
  v36 = *(a1 + 80);
  v6 = *(a1 + 16);
  v31 = *a1;
  v32 = v6;
  v14 = v33;
  LODWORD(v33) = 0;
  v37[0] = v31;
  v37[1] = v6;
  v38 = v36;
  v37[3] = v5;
  v37[4] = v35;
  v37[2] = v33;
  v7 = v6;
  v8 = *(a1 + 52);
  v27 = *(a1 + 36);
  v28 = v8;
  v29 = *(a1 + 68);
  v30 = v31;
  swift_beginAccess();
  *&v20 = __PAIR64__(*(v7 + 16), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(v37, &v39);
  outlined init with copy of _ViewInputs(v37, &v39);
  outlined init with copy of _ViewInputs(a1, &v39);
  type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>(0, &lazy cache variable for type metadata for _ForegroundStyleModifier2<AngularGradient, Color>.ForegroundStyleEnvironment, type metadata accessor for _ForegroundStyleModifier2.ForegroundStyleEnvironment);
  lazy protocol witness table accessor for type _ForegroundStyleModifier2<AngularGradient, Color>.ForegroundStyleEnvironment and conformance _ForegroundStyleModifier2<A, B>.ForegroundStyleEnvironment();
  v9 = Attribute.init<A>(body:value:flags:update:)();
  v10 = MEMORY[0x1E69E7CC0];
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 256;
  *(v12 + 82) = v16;
  *(v12 + 86) = v17;
  *(v12 + 88) = v11;

  v39 = v30;
  v40 = v12;
  v41 = *(&v7 + 1);
  v42 = 32;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  outlined init with copy of _ViewInputs(&v39, &v20);
  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v39, a2);
  outlined destroy of _ViewInputs(&v39);
  v20 = v30;
  v21 = v12;
  v22 = *(&v7 + 1);
  v23 = 32;
  v24 = v27;
  v25 = v28;
  v26 = v29;
  outlined destroy of _ViewInputs(&v20);
  outlined destroy of _ViewInputs(v37);
  LODWORD(v33) = v14;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v31);
    AGSubgraphEndTreeElement();
  }

  v18[2] = v33;
  v18[3] = v34;
  v18[4] = v35;
  v19 = v36;
  v18[0] = v31;
  v18[1] = v32;
  return outlined destroy of _ViewInputs(v18);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0o15TransitionStateF0ARLLVGAA20_GeometryGroupEffectVGAA013_TraitWritingF0VyAA0Z8TraitKeyVGG_A_yAA12_LayoutTraitVyAA0O11EntryLayoutARLLV3KeyVGGTt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>();
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v5 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v6 = *(a1 + 16);
  v11 = *a1;
  v12 = v6;
  v7 = v13;
  LODWORD(v13) = 0;
  v18 = v16;
  v17[3] = v5;
  v17[4] = v15;
  v17[0] = v11;
  v17[1] = v6;
  v17[2] = v13;
  outlined init with copy of _ViewInputs(a1, v9);
  outlined init with copy of _ViewInputs(v17, v9);
  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(v17, a2);
  outlined destroy of _ViewInputs(v17);
  LODWORD(v13) = v7;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v11);
    AGSubgraphEndTreeElement();
  }

  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v10 = v16;
  v9[0] = v11;
  v9[1] = v12;
  return outlined destroy of _ViewInputs(v9);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0o15TransitionStateF0ARLLVGAA20_GeometryGroupEffectVG_AA013_TraitWritingF0VyAA0Z8TraitKeyVGTt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, type metadata accessor for _TraitWritingModifier);
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v5 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v6 = *(a1 + 16);
  v11 = *a1;
  v12 = v6;
  v7 = v13;
  LODWORD(v13) = 0;
  v18 = v16;
  v17[3] = v5;
  v17[4] = v15;
  v17[0] = v11;
  v17[1] = v6;
  v17[2] = v13;
  outlined init with copy of _ViewInputs(a1, v9);
  outlined init with copy of _ViewInputs(v17, v9);
  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(v17, a2);
  outlined destroy of _ViewInputs(v17);
  LODWORD(v13) = v7;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v11);
    AGSubgraphEndTreeElement();
  }

  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v10 = v16;
  v9[0] = v11;
  v9[1] = v12;
  return outlined destroy of _ViewInputs(v9);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0o15TransitionStateF0ARLLVG_AA20_GeometryGroupEffectVTt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA14GeometryReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0pQ0O6EffectVGAZ15DisplayMaterialV2IDVACyAA0pvE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0pq10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGG_AA01_n5GroupV0VTt2B5Tm(a1, a2, _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_GeometryGroupD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m123VtFZAjA01_K0V_APtcfU0_ACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0o15TransitionStateF0ATLLVG_AA20_noD4VTG5AKyAA0rS0VyAUyAA018PrimitiveGlassItemI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA020GlassTransitionStateY0AWLLVGARGGTf1nnnc_n, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a3);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA14GeometryReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0pQ0O6EffectVGAZ15DisplayMaterialV2IDVACyAA0pvE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0pq10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGG_AA01_n5GroupV0VTt2B5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, _OWORD *, uint64_t)@<X2>, void (*a4)(_OWORD *, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v12 = *(a2 + 48);
  v20 = *(a2 + 32);
  v21 = v12;
  v22 = *(a2 + 64);
  v23 = *(a2 + 80);
  v13 = *(a2 + 16);
  v18 = *a2;
  v19 = v13;
  v14 = v20;
  LODWORD(v20) = 0;
  v25 = v23;
  v24[3] = v12;
  v24[4] = v22;
  v24[0] = v18;
  v24[1] = v13;
  v24[2] = v20;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v12))
  {
    outlined init with copy of _ViewInputs(a2, v16);
    outlined init with copy of _ViewInputs(v24, v16);
    a3(OffsetAttribute2, v24, a1);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, v16);
    outlined init with copy of _ViewInputs(v24, v16);
    a4(v24, a1);
  }

  outlined destroy of _ViewInputs(v24);
  LODWORD(v20) = v14;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a5, &v18);
    AGSubgraphEndTreeElement();
  }

  v16[2] = v20;
  v16[3] = v21;
  v16[4] = v22;
  v17 = v23;
  v16[0] = v18;
  v16[1] = v19;
  return outlined destroy of _ViewInputs(v16);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_AA0o15TransitionStateF0ARLLVTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  return _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO4ItemVGA4_2IDVAA0r4ItemE0AXLLVGGAA0r11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0r18EffectPlatformItemF0AXLLVGAA0rs11InteractionF0AXLLVGAA0rs15FlexInteractionF0AXLLVG_AA0r15TransitionStateF0AXLLVTt2B5Tm(a1, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a3);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO4ItemVGA4_2IDVAA0r4ItemE0AXLLVGGAA0r11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0r18EffectPlatformItemF0AXLLVGAA0rs11InteractionF0AXLLVGAA0rs15FlexInteractionF0AXLLVG_AA0r15TransitionStateF0AXLLVTt2B5Tm@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v71 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v10 = *(a2 + 48);
  v55 = *(a2 + 32);
  v56 = v10;
  v57 = *(a2 + 64);
  v58 = *(a2 + 80);
  v11 = *(a2 + 16);
  v53 = *a2;
  v54 = v11;
  v23 = v55;
  LODWORD(v55) = 0;
  v59 = v53;
  v60 = v11;
  v64 = v58;
  v62 = v10;
  v63 = v57;
  v61 = v55;
  outlined init with copy of _ViewInputs(a2, &v65);
  outlined init with copy of _ViewInputs(&v59, &v65);
  static DynamicPropertyCache.fields(of:)(&type metadata for GlassTransitionStateModifier, &v65);
  v12 = v65;
  v13 = v66;
  v14 = DWORD1(v66);
  v49 = v61;
  v50 = v62;
  v51 = v63;
  v52 = v64;
  v47 = v59;
  v48 = v60;
  if (AGTypeGetKind() - 2 > 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(&v59, &v65);
    LOBYTE(v65) = v13;
    v24 = OffsetAttribute2;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v47, v12, *(&v12 + 1), v13 | (v14 << 32), OffsetAttribute2, &v65);
    v15 = v65;
    v21 = v66;
    v22 = *(&v65 + 1);
    v16 = BYTE8(v66);
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateW033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_AA0kG7ElementANLLOTt0g5(a3, v8, 0);
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v46 = v52;
    v41 = v47;
    v42 = v48;
    if (ShouldRecordTree)
    {
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>();
      outlined init with copy of _ViewInputs(&v41, &v65);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v41, &v65);
    }

    v37 = v43;
    v38 = v44;
    v39 = v45;
    v40 = v46;
    v35 = v41;
    v36 = v42;
    v17 = v43;
    LODWORD(v37) = 0;
    v70 = v46;
    v68 = v44;
    v69 = v45;
    v65 = v41;
    v66 = v42;
    v67 = v37;
    outlined init with copy of _ViewInputs(&v41, v33);
    outlined init with copy of _ViewInputs(&v65, v33);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0N21AppearanceScaleEffectATLLVGAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGTt2B5(v15, &v65, v26);
    outlined destroy of _ViewInputs(&v65);
    LODWORD(v37) = v17;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v26, &v35);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v41);
    v33[2] = v37;
    v33[3] = v38;
    v33[4] = v39;
    v34 = v40;
    v33[0] = v35;
    v33[1] = v36;
    outlined destroy of _ViewInputs(v33);
    v18 = v26[0];
    v19 = v26[1];
    if (v16)
    {
      v29 = v49;
      v30 = v50;
      v31 = v51;
      v32 = v52;
      v27 = v47;
      v28 = v48;
      outlined destroy of _ViewInputs(&v27);
      outlined consume of DynamicPropertyCache.Fields.Layout();
    }

    else
    {
      LOBYTE(v27) = v13;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v24, v12, *(&v12 + 1), v13, v22, v21, &type metadata for GlassTransitionStateModifier, type metadata accessor for GlassTransitionStateModifier.Type);
      outlined consume of DynamicPropertyCache.Fields.Layout();
      v29 = v49;
      v30 = v50;
      v31 = v51;
      v32 = v52;
      v27 = v47;
      v28 = v48;
      outlined destroy of _ViewInputs(&v27);
    }

    outlined destroy of _ViewInputs(&v59);
    *a4 = v18;
    a4[1] = v19;
    LODWORD(v55) = v23;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a4, &v53);
      AGSubgraphEndTreeElement();
    }

    v29 = v55;
    v30 = v56;
    v31 = v57;
    v32 = v58;
    v27 = v53;
    v28 = v54;
    return outlined destroy of _ViewInputs(&v27);
  }

  return result;
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA0d17CaptureProtectioneF0VG_AA0dnO16PreferenceWriter33_0D6CD02499D969DD550B3CDDD0903EA3LLVTt2B5@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v5 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v6 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27 = v6;
  v28 = *(a1 + 64);
  v29 = *(a1 + 80);
  v7 = *(a1 + 16);
  v24 = *a1;
  v25 = v7;
  v8 = v26;
  LODWORD(v26) = 0;
  v30 = v24;
  v31 = v7;
  v35 = v29;
  v33 = v6;
  v34 = v28;
  v32 = v26;
  outlined init with copy of _ViewInputs(a1, v36);
  outlined init with copy of _ViewInputs(&v30, v36);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v18 = v30;
  v19 = v31;
  v10 = v33;
  *&v16[0] = v33;
  v11 = PreferenceKeys._index(of:)(&type metadata for ContentCaptureProtectionPreferenceKey);
  outlined init with copy of _ViewInputs(&v30, v36);

  v12 = *(v10 + 16);
  if (v11 != v12)
  {
    if (v11 >= v12)
    {
      __break(1u);
    }

    if (*(v10 + 16 * v11 + 32) == &type metadata for ContentCaptureProtectionPreferenceKey)
    {
      specialized Array.remove(at:)(v11);
    }
  }

  v36[2] = v20;
  v36[3] = v21;
  v36[4] = v22;
  v37 = v23;
  v36[0] = v18;
  v36[1] = v19;
  outlined init with copy of _ViewInputs(v36, v16);
  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(v36, a2);
  outlined destroy of _ViewInputs(v36);
  _s7SwiftUI18PreferencesOutputsV20makePreferenceWriter6inputs3key5valueyAA0C6InputsV_xm14AttributeGraph0L0Vy5ValueQzGyXKtAA0F3KeyRzlFAA024ContentCaptureProtectionfO0V_Tt0B503_s7a4UI40pqrf46Writer33_0D6CD02499D969DD550B3CDDD0903EA3LLV9_e32View8modifier6inputs4bodyAA01_P7d6VAA11_mn13VyADG_AA01_P6k20VAjA01_U0V_AOtctFZ09L16U00X0VySbGyXEfu_ALySbGTf1ncn_n(v33, DWORD2(v33), a2, OffsetAttribute2);
  v16[2] = v20;
  v16[3] = v21;
  v16[4] = v22;
  v17 = v23;
  v16[0] = v18;
  v16[1] = v19;
  outlined destroy of _ViewInputs(v16);
  outlined destroy of _ViewInputs(&v30);
  LODWORD(v26) = v8;
  if (v5)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v24);
    AGSubgraphEndTreeElement();
  }

  v14[2] = v26;
  v14[3] = v27;
  v14[4] = v28;
  v15 = v29;
  v14[0] = v24;
  v14[1] = v25;
  return outlined destroy of _ViewInputs(v14);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA5ColorV_AA12_FrameLayoutVTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v8 = *(a2 + 48);
  v16 = *(a2 + 32);
  v17 = v8;
  v18 = *(a2 + 64);
  v19 = *(a2 + 80);
  v9 = *(a2 + 16);
  v14 = *a2;
  v15 = v9;
  v10 = v16;
  LODWORD(v16) = 0;
  v21 = v19;
  v20[3] = v8;
  v20[4] = v18;
  v20[0] = v14;
  v20[1] = v9;
  v20[2] = v16;
  outlined init with copy of _ViewInputs(a2, v12);
  outlined init with copy of _ViewInputs(v20, v12);
  specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(OffsetAttribute2, v20, a1, a3);
  outlined destroy of _ViewInputs(v20);
  LODWORD(v16) = v10;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v14);
    AGSubgraphEndTreeElement();
  }

  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v13 = v19;
  v12[0] = v14;
  v12[1] = v15;
  return outlined destroy of _ViewInputs(v12);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGA1_G_A1_Tt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGA1_GA1_G_A1_Tt2B5Tm(a1, a2, _s7SwiftUI18_InsetViewModifierV05_makeD08modifier6inputs4bodyAA01_D7OutputsVAA11_GraphValueVyACyxGG_AA01_D6InputsVAiA01_K0V_AOtctFZAA15ModifiedContentVyAA5ColorVAA12_FrameLayoutVG_Tt3B503_s7a4UI15no5VA2A4d7RzAA0E8e8R_rlE05_f21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m86VtFZAjA01_K0V_APtcfU0_ACyACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5p6VAA12_qR15VGGGA3_G_A3_TG5AKyASyASyASyAA01_de1_O0VyAA015SafeAreaPaddingE0VGACyAXGGA3_GA3_GGTf1nnnc_n, a3);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGA1_GA1_G_A1_Tt2B5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, _OWORD *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v10 = *(a2 + 48);
  v18 = *(a2 + 32);
  v19 = v10;
  v20 = *(a2 + 64);
  v21 = *(a2 + 80);
  v11 = *(a2 + 16);
  v16 = *a2;
  v17 = v11;
  v12 = v18;
  LODWORD(v18) = 0;
  v23 = v21;
  v22[3] = v10;
  v22[4] = v20;
  v22[0] = v16;
  v22[1] = v11;
  v22[2] = v18;
  outlined init with copy of _ViewInputs(a2, v14);
  outlined init with copy of _ViewInputs(v22, v14);
  a3(OffsetAttribute2, v22, a1);
  outlined destroy of _ViewInputs(v22);
  LODWORD(v18) = v12;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a4, &v16);
    AGSubgraphEndTreeElement();
  }

  v14[2] = v18;
  v14[3] = v19;
  v14[4] = v20;
  v15 = v21;
  v14[0] = v16;
  v14[1] = v17;
  return outlined destroy of _ViewInputs(v14);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGG_A1_Tt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGA1_GA1_G_A1_Tt2B5Tm(a1, a2, _s7SwiftUI18_InsetViewModifierV05_makeD08modifier6inputs4bodyAA01_D7OutputsVAA11_GraphValueVyACyxGG_AA01_D6InputsVAiA01_K0V_AOtctFZAA15ModifiedContentVyAA5ColorVAA12_FrameLayoutVG_Tt3B503_s7a4UI15no5VA2A4d7RzAA0E8e8R_rlE05_f21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m83VtFZAjA01_K0V_APtcfU0_ACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5p6VAA12_qR11VGGG_A3_TG5AKyASyASyAA01_de1_O0VyAA015SafeAreaPaddingE0VGACyAXGGA3_GGTf1nnnc_n, a3);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA015SafeAreaPaddingF0VG_AA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGTt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGA1_GA1_G_A1_Tt2B5Tm(a1, a2, _s7SwiftUI18_InsetViewModifierV05_makeD08modifier6inputs4bodyAA01_D7OutputsVAA11_GraphValueVyACyxGG_AA01_D6InputsVAiA01_K0V_AOtctFZAA15ModifiedContentVyAA5ColorVAA12_FrameLayoutVG_Tt3B503_s7a4UI15no5VA2A4d7RzAA0E8e8R_rlE05_f21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m81VtFZAjA01_K0V_APtcfU0_AA01_ef1_D0VyAA015SafeAreaPaddingF0VG_AA06_InseteF0VyACyAA5p6VAA12_qR6VGGTG5AKyASyAA01_de1_O0VyAA015SafeAreaPaddingE0VGACyAXGGGTf1nnnc_n, a3);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_l11TransactionF0VySbGG_AA022_EnvironmentKeyWritingF0VyAA4FontVSgGTt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  type metadata accessor for ChildEnvironment<Font?>(0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, type metadata accessor for _EnvironmentKeyWritingModifier);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v5 = *(a1 + 48);
  v33 = *(a1 + 32);
  v34 = v5;
  v35 = *(a1 + 64);
  v36 = *(a1 + 80);
  v6 = *(a1 + 16);
  v31 = *a1;
  v32 = v6;
  v14 = v33;
  LODWORD(v33) = 0;
  v37[0] = v31;
  v37[1] = v6;
  v38 = v36;
  v37[3] = v5;
  v37[4] = v35;
  v37[2] = v33;
  v7 = v6;
  v8 = *(a1 + 52);
  v27 = *(a1 + 36);
  v28 = v8;
  v29 = *(a1 + 68);
  v30 = v31;
  swift_beginAccess();
  v20 = __PAIR64__(*(v7 + 16), OffsetAttribute2);
  v21 = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(v37, &v39);
  outlined init with copy of _ViewInputs(v37, &v39);
  outlined init with copy of _ViewInputs(a1, &v39);
  type metadata accessor for ChildEnvironment<Font?>(0, &lazy cache variable for type metadata for ChildEnvironment<Font?>, type metadata accessor for ChildEnvironment);
  lazy protocol witness table accessor for type ChildEnvironment<Font?> and conformance ChildEnvironment<A>();
  v9 = Attribute.init<A>(body:value:flags:update:)();
  v10 = MEMORY[0x1E69E7CC0];
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 256;
  *(v12 + 82) = v16;
  *(v12 + 86) = v17;
  *(v12 + 88) = v11;

  v39 = v30;
  v40 = v12;
  v41 = *(&v7 + 1);
  v42 = 32;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  outlined init with copy of _ViewInputs(&v39, &v20);
  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v39, a2);
  outlined destroy of _ViewInputs(&v39);
  v20 = v30;
  v21 = v12;
  v22 = *(&v7 + 1);
  v23 = 32;
  v24 = v27;
  v25 = v28;
  v26 = v29;
  outlined destroy of _ViewInputs(&v20);
  outlined destroy of _ViewInputs(v37);
  LODWORD(v33) = v14;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v31);
    AGSubgraphEndTreeElement();
  }

  v18[2] = v33;
  v18[3] = v34;
  v18[4] = v35;
  v19 = v36;
  v18[0] = v31;
  v18[1] = v32;
  return outlined destroy of _ViewInputs(v18);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_AA01_l11TransactionF0VySbGTt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for _ValueTransactionModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], type metadata accessor for _ValueTransactionModifier);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v6 = *(a1 + 48);
  v18 = *(a1 + 32);
  v19 = v6;
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v7 = *(a1 + 16);
  v16 = *a1;
  v17 = v7;
  v8 = v18;
  LODWORD(v18) = 0;
  v22[0] = v16;
  v22[1] = v7;
  v23 = v21;
  v22[3] = v6;
  v22[4] = v20;
  v22[2] = v18;
  v12 = v18;
  v13 = v6;
  v14 = v20;
  v15 = v21;
  v10 = v16;
  v11 = v7;
  outlined init with copy of _ViewInputs(v22, v26);
  outlined init with copy of _ViewInputs(v22, v26);
  outlined init with copy of _ViewInputs(a1, v26);
  _s7SwiftUI25_ValueTransactionModifierV11_makeInputs8modifier6inputsyAA06_GraphC0VyACyxGG_AA01_jG0VztFZSb_Tt1B5(OffsetAttribute2, &v10);
  v26[2] = v12;
  v26[3] = v13;
  v26[4] = v14;
  v27 = v15;
  v26[0] = v10;
  v26[1] = v11;
  outlined init with copy of _ViewInputs(v26, v24);
  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(v26, a2);
  outlined destroy of _ViewInputs(v26);
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v25 = v15;
  v24[0] = v10;
  v24[1] = v11;
  outlined destroy of _ViewInputs(v24);
  outlined destroy of _ViewInputs(v22);
  LODWORD(v18) = v8;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v16);
    AGSubgraphEndTreeElement();
  }

  v12 = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v10 = v16;
  v11 = v17;
  return outlined destroy of _ViewInputs(&v10);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA4TextV_AA018_OverlayPreferenceF0VyAR9LayoutKeyVAA7ForEachVySnySiGSiACyACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_l11TransactionF0VySdGGAA13_OffsetEffectVGGGTt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  type metadata accessor for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v6 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v6;
  v16 = *(a1 + 64);
  v17 = *(a1 + 80);
  v7 = *(a1 + 16);
  v12 = *a1;
  v13 = v7;
  v8 = v14;
  LODWORD(v14) = 0;
  v19 = v17;
  v18[3] = v6;
  v18[4] = v16;
  v18[0] = v12;
  v18[1] = v7;
  v18[2] = v14;
  outlined init with copy of _ViewInputs(a1, v10);
  outlined init with copy of _ViewInputs(v18, v10);
  specialized makeSecondaryPreferenceView<A, B>(modifier:inputs:body:flipOrder:)(OffsetAttribute2, v18, 0, a2);
  outlined destroy of _ViewInputs(v18);
  LODWORD(v14) = v8;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v12);
    AGSubgraphEndTreeElement();
  }

  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  v11 = v17;
  v10[0] = v12;
  v10[1] = v13;
  return outlined destroy of _ViewInputs(v10);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = *(a1 + 6);
  v8[0] = *(a1 + 2);
  v3 = v8[0];
  v8[1] = v4;
  v9 = *(a1 + 5);
  v5 = v9;
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 24) = v4;
  *(a2 + 40) = v5;
  return outlined init with copy of GlassContainer.ItemData(v8, v7);
}

BOOL specialized static GlassEnabledPredicate.evaluate(inputs:)(uint64_t *a1)
{
  v1 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v1, v5);
  if (v2 && *(v2 + 72))
  {
    v3 = *(v2 + 80);
  }

  else
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<PhoneInterfaceIdiom>, &type metadata for PhoneInterfaceIdiom, &protocol witness table for PhoneInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
    v3 = &protocol witness table for InterfaceIdiomBox<A>;
  }

  return ((v3[3])(&type metadata for VisionInterfaceIdiom, &type metadata for VisionInterfaceIdiom, &protocol witness table for VisionInterfaceIdiom) & 1) == 0;
}

unint64_t lazy protocol witness table accessor for type GlassEffectLocalModifier.Init and conformance GlassEffectLocalModifier.Init()
{
  result = lazy protocol witness table cache variable for type GlassEffectLocalModifier.Init and conformance GlassEffectLocalModifier.Init;
  if (!lazy protocol witness table cache variable for type GlassEffectLocalModifier.Init and conformance GlassEffectLocalModifier.Init)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectLocalModifier.Init and conformance GlassEffectLocalModifier.Init);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectContainerModifier.Init and conformance GlassEffectContainerModifier.Init()
{
  result = lazy protocol witness table cache variable for type GlassEffectContainerModifier.Init and conformance GlassEffectContainerModifier.Init;
  if (!lazy protocol witness table cache variable for type GlassEffectContainerModifier.Init and conformance GlassEffectContainerModifier.Init)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectContainerModifier.Init and conformance GlassEffectContainerModifier.Init);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Map<EnvironmentValues, TintAdjustmentMode> and conformance Map<A, B>()
{
  result = lazy protocol witness table cache variable for type Map<EnvironmentValues, TintAdjustmentMode> and conformance Map<A, B>;
  if (!lazy protocol witness table cache variable for type Map<EnvironmentValues, TintAdjustmentMode> and conformance Map<A, B>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for Map<EnvironmentValues, TintAdjustmentMode>, &type metadata for EnvironmentValues, &type metadata for TintAdjustmentMode, MEMORY[0x1E698D398]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Map<EnvironmentValues, TintAdjustmentMode> and conformance Map<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Map<EnvironmentValues, Bool> and conformance Map<A, B>()
{
  result = lazy protocol witness table cache variable for type Map<EnvironmentValues, Bool> and conformance Map<A, B>;
  if (!lazy protocol witness table cache variable for type Map<EnvironmentValues, Bool> and conformance Map<A, B>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for Map<EnvironmentValues, Bool>, &type metadata for EnvironmentValues, MEMORY[0x1E69E6370], MEMORY[0x1E698D398]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Map<EnvironmentValues, Bool> and conformance Map<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectItemGlass and conformance GlassEffectItemGlass()
{
  result = lazy protocol witness table cache variable for type GlassEffectItemGlass and conformance GlassEffectItemGlass;
  if (!lazy protocol witness table cache variable for type GlassEffectItemGlass and conformance GlassEffectItemGlass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectItemGlass and conformance GlassEffectItemGlass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectItemRadii and conformance GlassEffectItemRadii()
{
  result = lazy protocol witness table cache variable for type GlassEffectItemRadii and conformance GlassEffectItemRadii;
  if (!lazy protocol witness table cache variable for type GlassEffectItemRadii and conformance GlassEffectItemRadii)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectItemRadii and conformance GlassEffectItemRadii);
  }

  return result;
}

uint64_t outlined destroy of GlassEffectItemRadii(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1(result + 8);
    return v1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectItemMaterial and conformance GlassEffectItemMaterial()
{
  result = lazy protocol witness table cache variable for type GlassEffectItemMaterial and conformance GlassEffectItemMaterial;
  if (!lazy protocol witness table cache variable for type GlassEffectItemMaterial and conformance GlassEffectItemMaterial)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectItemMaterial and conformance GlassEffectItemMaterial);
  }

  return result;
}

uint64_t outlined destroy of WeakBox<GlassContainerCache>(uint64_t a1)
{
  _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGMaTm_0(0, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type GlassEffectItemID and conformance GlassEffectItemID()
{
  result = lazy protocol witness table cache variable for type GlassEffectItemID and conformance GlassEffectItemID;
  if (!lazy protocol witness table cache variable for type GlassEffectItemID and conformance GlassEffectItemID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectItemID and conformance GlassEffectItemID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectItemInit and conformance GlassEffectItemInit()
{
  result = lazy protocol witness table cache variable for type GlassEffectItemInit and conformance GlassEffectItemInit;
  if (!lazy protocol witness table cache variable for type GlassEffectItemInit and conformance GlassEffectItemInit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectItemInit and conformance GlassEffectItemInit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectAnchor and conformance GlassEffectAnchor()
{
  result = lazy protocol witness table cache variable for type GlassEffectAnchor and conformance GlassEffectAnchor;
  if (!lazy protocol witness table cache variable for type GlassEffectAnchor and conformance GlassEffectAnchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectAnchor and conformance GlassEffectAnchor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectDataInit and conformance GlassEffectDataInit()
{
  result = lazy protocol witness table cache variable for type GlassEffectDataInit and conformance GlassEffectDataInit;
  if (!lazy protocol witness table cache variable for type GlassEffectDataInit and conformance GlassEffectDataInit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectDataInit and conformance GlassEffectDataInit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassMaterialContextData.Init and conformance GlassMaterialContextData.Init()
{
  result = lazy protocol witness table cache variable for type GlassMaterialContextData.Init and conformance GlassMaterialContextData.Init;
  if (!lazy protocol witness table cache variable for type GlassMaterialContextData.Init and conformance GlassMaterialContextData.Init)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassMaterialContextData.Init and conformance GlassMaterialContextData.Init);
  }

  return result;
}

uint64_t _s7SwiftUI30RoundedRectangularShapeCornersVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined init with copy of RoundedRectangularShape?(uint64_t a1, uint64_t a2)
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for RoundedRectangularShape?, &lazy cache variable for type metadata for RoundedRectangularShape, &protocol descriptor for RoundedRectangularShape, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RoundedRectangularShape?(uint64_t a1)
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for RoundedRectangularShape?, &lazy cache variable for type metadata for RoundedRectangularShape, &protocol descriptor for RoundedRectangularShape, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of RoundedRectangularShape?(uint64_t a1, uint64_t a2)
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for RoundedRectangularShape?, &lazy cache variable for type metadata for RoundedRectangularShape, &protocol descriptor for RoundedRectangularShape, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for GlassEffectLocalModifier.Type()
{
  result = lazy cache variable for type metadata for GlassEffectLocalModifier.Type;
  if (!lazy cache variable for type metadata for GlassEffectLocalModifier.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for GlassEffectLocalModifier.Type);
  }

  return result;
}

unint64_t type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>.Type()
{
  result = lazy cache variable for type metadata for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>.Type;
  if (!lazy cache variable for type metadata for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>.Type)
  {
    type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>.Type);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> ForEach<A, B, C>)
  {
    type metadata accessor for ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>();
    _s7SwiftUI15ModifiedContentVyAA15GlassEffectView33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionQ3KeyVGGACyxq_GAA0G0A2aNRzAA0gS0R_rlWlTm_0(&lazy protocol witness table cache variable for type ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>, lazy protocol witness table accessor for type GlassEffectView and conformance GlassEffectView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2> and conformance <> ModifiedContent<A, B>)
  {
    _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>, type metadata accessor for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, &type metadata for _BackdropGroupEffect2, type metadata accessor for ModifiedContent);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t type metadata accessor for _GlassContainerStorageView.Type()
{
  result = lazy cache variable for type metadata for _GlassContainerStorageView.Type;
  if (!lazy cache variable for type metadata for _GlassContainerStorageView.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _GlassContainerStorageView.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<_GlassContainerStorageView>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<_GlassContainerStorageView>, MainThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewBodyAccessor<_GlassContainerStorageView>, lazy protocol witness table accessor for type _GlassContainerStorageView and conformance _GlassContainerStorageView, &type metadata for _GlassContainerStorageView, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<_GlassContainerStorageView> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<_GlassContainerStorageView>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _GlassContainerStorageView and conformance _GlassContainerStorageView()
{
  result = lazy protocol witness table cache variable for type _GlassContainerStorageView and conformance _GlassContainerStorageView;
  if (!lazy protocol witness table cache variable for type _GlassContainerStorageView and conformance _GlassContainerStorageView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GlassContainerStorageView and conformance _GlassContainerStorageView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<_GlassContainerStorageView> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<_GlassContainerStorageView> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<_GlassContainerStorageView> and conformance ViewBodyAccessor<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewBodyAccessor<_GlassContainerStorageView>, lazy protocol witness table accessor for type _GlassContainerStorageView and conformance _GlassContainerStorageView, &type metadata for _GlassContainerStorageView, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<_GlassContainerStorageView> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<_GlassContainerStorageView>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<_GlassContainerStorageView>, MainThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewBodyAccessor<_GlassContainerStorageView>, lazy protocol witness table accessor for type _GlassContainerStorageView and conformance _GlassContainerStorageView, &type metadata for _GlassContainerStorageView, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<_GlassContainerStorageView> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<_GlassContainerStorageView>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<_GlassContainerStorageView>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<_GlassContainerStorageView>, AsyncThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewBodyAccessor<_GlassContainerStorageView>, lazy protocol witness table accessor for type _GlassContainerStorageView and conformance _GlassContainerStorageView, &type metadata for _GlassContainerStorageView, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<_GlassContainerStorageView> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<_GlassContainerStorageView>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<_GlassContainerStorageView>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<_GlassContainerStorageView>, AsyncThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewBodyAccessor<_GlassContainerStorageView>, lazy protocol witness table accessor for type _GlassContainerStorageView and conformance _GlassContainerStorageView, &type metadata for _GlassContainerStorageView, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<_GlassContainerStorageView> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<_GlassContainerStorageView>, AsyncThreadFlags>);
    }
  }
}

uint64_t partial apply for specialized closure #1 in Attribute.subscript.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_getAtKeyPath();
  *a1 = v3;
  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, MainThreadFlags>)
  {
    type metadata accessor for ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>> and conformance ViewBodyAccessor<A>, type metadata accessor for ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>);
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>()
{
  if (!lazy cache variable for type metadata for ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>)
  {
    type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>> and conformance _GlassEffectContainer<A>, type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>);
    v0 = type metadata accessor for ViewBodyAccessor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, MainThreadFlags>)
  {
    type metadata accessor for ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>> and conformance ViewBodyAccessor<A>, type metadata accessor for ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>);
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, AsyncThreadFlags>)
  {
    type metadata accessor for ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>> and conformance ViewBodyAccessor<A>, type metadata accessor for ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>);
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, AsyncThreadFlags>)
  {
    type metadata accessor for ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>();
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>> and conformance ViewBodyAccessor<A>, type metadata accessor for ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>);
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<FlexInteractionModifier>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, a3, a4, a5, type metadata accessor for _ViewModifier_Content);
    v6 = type metadata accessor for BodyInput();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ModifierBodyAccessor<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier, type metadata accessor for ModifierBodyAccessor);
    lazy protocol witness table accessor for type ModifierBodyAccessor<GlassEffectLocalModifier> and conformance ModifierBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ModifierBodyAccessor<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier, type metadata accessor for ModifierBodyAccessor);
    lazy protocol witness table accessor for type ModifierBodyAccessor<GlassEffectLocalModifier> and conformance ModifierBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ModifierBodyAccessor<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier, type metadata accessor for ModifierBodyAccessor);
    lazy protocol witness table accessor for type ModifierBodyAccessor<GlassEffectLocalModifier> and conformance ModifierBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ModifierBodyAccessor<GlassEffectLocalModifier>, AsyncThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GlassEffectHiddenEnvironment and conformance GlassEffectHiddenEnvironment()
{
  result = lazy protocol witness table cache variable for type GlassEffectHiddenEnvironment and conformance GlassEffectHiddenEnvironment;
  if (!lazy protocol witness table cache variable for type GlassEffectHiddenEnvironment and conformance GlassEffectHiddenEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectHiddenEnvironment and conformance GlassEffectHiddenEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreferenceTransform<GlassContainer.Item.Key> and conformance PreferenceTransform<A>()
{
  result = lazy protocol witness table cache variable for type PreferenceTransform<GlassContainer.Item.Key> and conformance PreferenceTransform<A>;
  if (!lazy protocol witness table cache variable for type PreferenceTransform<GlassContainer.Item.Key> and conformance PreferenceTransform<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for PreferenceTransform<GlassContainer.Item.Key>, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key, type metadata accessor for PreferenceTransform);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferenceTransform<GlassContainer.Item.Key> and conformance PreferenceTransform<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectHiddenModifier.Transform and conformance GlassEffectHiddenModifier.Transform()
{
  result = lazy protocol witness table cache variable for type GlassEffectHiddenModifier.Transform and conformance GlassEffectHiddenModifier.Transform;
  if (!lazy protocol witness table cache variable for type GlassEffectHiddenModifier.Transform and conformance GlassEffectHiddenModifier.Transform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectHiddenModifier.Transform and conformance GlassEffectHiddenModifier.Transform);
  }

  return result;
}

unint64_t type metadata accessor for VariableBlurEffect.Type()
{
  result = lazy cache variable for type metadata for VariableBlurEffect.Type;
  if (!lazy cache variable for type metadata for VariableBlurEffect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for VariableBlurEffect.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for EnvironmentalBodyAccessor<VariableBlurEffect>, &type metadata for VariableBlurEffect, &protocol witness table for VariableBlurEffect, type metadata accessor for EnvironmentalBodyAccessor);
    lazy protocol witness table accessor for type EnvironmentalBodyAccessor<VariableBlurEffect> and conformance EnvironmentalBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentalBodyAccessor<VariableBlurEffect> and conformance EnvironmentalBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentalBodyAccessor<VariableBlurEffect> and conformance EnvironmentalBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentalBodyAccessor<VariableBlurEffect> and conformance EnvironmentalBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for EnvironmentalBodyAccessor<VariableBlurEffect>, &type metadata for VariableBlurEffect, &protocol witness table for VariableBlurEffect, type metadata accessor for EnvironmentalBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentalBodyAccessor<VariableBlurEffect> and conformance EnvironmentalBodyAccessor<A>);
  }

  return result;
}

uint64_t outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for StaticBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for EnvironmentalBodyAccessor<VariableBlurEffect>, &type metadata for VariableBlurEffect, &protocol witness table for VariableBlurEffect, type metadata accessor for EnvironmentalBodyAccessor);
    lazy protocol witness table accessor for type EnvironmentalBodyAccessor<VariableBlurEffect> and conformance EnvironmentalBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for EnvironmentalBodyAccessor<VariableBlurEffect>, &type metadata for VariableBlurEffect, &protocol witness table for VariableBlurEffect, type metadata accessor for EnvironmentalBodyAccessor);
    lazy protocol witness table accessor for type EnvironmentalBodyAccessor<VariableBlurEffect> and conformance EnvironmentalBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<EnvironmentalBodyAccessor<VariableBlurEffect>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<EnvironmentalBodyAccessor<VariableBlurEffect>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for EnvironmentalBodyAccessor<VariableBlurEffect>, &type metadata for VariableBlurEffect, &protocol witness table for VariableBlurEffect, type metadata accessor for EnvironmentalBodyAccessor);
    lazy protocol witness table accessor for type EnvironmentalBodyAccessor<VariableBlurEffect> and conformance EnvironmentalBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<EnvironmentalBodyAccessor<VariableBlurEffect>, AsyncThreadFlags>);
    }
  }
}

unint64_t type metadata accessor for SummarySymbol.Type()
{
  result = lazy cache variable for type metadata for SummarySymbol.Type;
  if (!lazy cache variable for type metadata for SummarySymbol.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SummarySymbol.Type);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>)
  {
    type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier2<AngularGradient, Color>, type metadata accessor for _ForegroundStyleModifier2);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<SummarySymbol>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<SummarySymbol>, MainThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewBodyAccessor<SummarySymbol>, lazy protocol witness table accessor for type SummarySymbol and conformance SummarySymbol, &type metadata for SummarySymbol, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<SummarySymbol> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<SummarySymbol>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<SummarySymbol> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<SummarySymbol> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<SummarySymbol> and conformance ViewBodyAccessor<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewBodyAccessor<SummarySymbol>, lazy protocol witness table accessor for type SummarySymbol and conformance SummarySymbol, &type metadata for SummarySymbol, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<SummarySymbol> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<SummarySymbol>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<SummarySymbol>, MainThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewBodyAccessor<SummarySymbol>, lazy protocol witness table accessor for type SummarySymbol and conformance SummarySymbol, &type metadata for SummarySymbol, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<SummarySymbol> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<SummarySymbol>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<SummarySymbol>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<SummarySymbol>, AsyncThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewBodyAccessor<SummarySymbol>, lazy protocol witness table accessor for type SummarySymbol and conformance SummarySymbol, &type metadata for SummarySymbol, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<SummarySymbol> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<SummarySymbol>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<SummarySymbol>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<SummarySymbol>, AsyncThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewBodyAccessor<SummarySymbol>, lazy protocol witness table accessor for type SummarySymbol and conformance SummarySymbol, &type metadata for SummarySymbol, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<SummarySymbol> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<SummarySymbol>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = &type metadata for AngularGradient;
    v8[1] = &type metadata for Color;
    v8[2] = &protocol witness table for AngularGradient;
    v8[3] = &protocol witness table for Color;
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ForegroundStyleModifier2<AngularGradient, Color>.ForegroundStyleEnvironment and conformance _ForegroundStyleModifier2<A, B>.ForegroundStyleEnvironment()
{
  result = lazy protocol witness table cache variable for type _ForegroundStyleModifier2<AngularGradient, Color>.ForegroundStyleEnvironment and conformance _ForegroundStyleModifier2<A, B>.ForegroundStyleEnvironment;
  if (!lazy protocol witness table cache variable for type _ForegroundStyleModifier2<AngularGradient, Color>.ForegroundStyleEnvironment and conformance _ForegroundStyleModifier2<A, B>.ForegroundStyleEnvironment)
  {
    type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier2<AngularGradient, Color>.ForegroundStyleEnvironment, type metadata accessor for _ForegroundStyleModifier2.ForegroundStyleEnvironment);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundStyleModifier2<AngularGradient, Color>.ForegroundStyleEnvironment and conformance _ForegroundStyleModifier2<A, B>.ForegroundStyleEnvironment);
  }

  return result;
}

unint64_t type metadata accessor for Rectangle.AsymmetricalInset.Type()
{
  result = lazy cache variable for type metadata for Rectangle.AsymmetricalInset.Type;
  if (!lazy cache variable for type metadata for Rectangle.AsymmetricalInset.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Rectangle.AsymmetricalInset.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Rectangle.AsymmetricalInset>, &type metadata for Rectangle.AsymmetricalInset, &protocol witness table for Rectangle.AsymmetricalInset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Rectangle.AsymmetricalInset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<Rectangle.AsymmetricalInset> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<Rectangle.AsymmetricalInset> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<Rectangle.AsymmetricalInset> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Rectangle.AsymmetricalInset>, &type metadata for Rectangle.AsymmetricalInset, &protocol witness table for Rectangle.AsymmetricalInset, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<Rectangle.AsymmetricalInset> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Rectangle.AsymmetricalInset>, &type metadata for Rectangle.AsymmetricalInset, &protocol witness table for Rectangle.AsymmetricalInset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Rectangle.AsymmetricalInset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Rectangle.AsymmetricalInset>, &type metadata for Rectangle.AsymmetricalInset, &protocol witness table for Rectangle.AsymmetricalInset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Rectangle.AsymmetricalInset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Rectangle.AsymmetricalInset>, &type metadata for Rectangle.AsymmetricalInset, &protocol witness table for Rectangle.AsymmetricalInset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Rectangle.AsymmetricalInset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Rectangle.AsymmetricalInset>, AsyncThreadFlags>);
    }
  }
}

unint64_t type metadata accessor for CombinedContentShape.Type()
{
  result = lazy cache variable for type metadata for CombinedContentShape.Type;
  if (!lazy cache variable for type metadata for CombinedContentShape.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CombinedContentShape.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<CombinedContentShape>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<CombinedContentShape>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<CombinedContentShape>, &type metadata for CombinedContentShape, &protocol witness table for CombinedContentShape, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<CombinedContentShape> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<CombinedContentShape>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<CombinedContentShape> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<CombinedContentShape> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<CombinedContentShape> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<CombinedContentShape>, &type metadata for CombinedContentShape, &protocol witness table for CombinedContentShape, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<CombinedContentShape> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<CombinedContentShape>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<CombinedContentShape>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<CombinedContentShape>, &type metadata for CombinedContentShape, &protocol witness table for CombinedContentShape, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<CombinedContentShape> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<CombinedContentShape>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<CombinedContentShape>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<CombinedContentShape>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<CombinedContentShape>, &type metadata for CombinedContentShape, &protocol witness table for CombinedContentShape, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<CombinedContentShape> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<CombinedContentShape>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<CombinedContentShape>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<CombinedContentShape>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<CombinedContentShape>, &type metadata for CombinedContentShape, &protocol witness table for CombinedContentShape, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<CombinedContentShape> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<CombinedContentShape>, AsyncThreadFlags>);
    }
  }
}

unint64_t type metadata accessor for SafeAreaPaddingModifier.Type()
{
  result = lazy cache variable for type metadata for SafeAreaPaddingModifier.Type;
  if (!lazy cache variable for type metadata for SafeAreaPaddingModifier.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SafeAreaPaddingModifier.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ModifierBodyAccessor<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata for SafeAreaPaddingModifier, type metadata accessor for ModifierBodyAccessor);
    lazy protocol witness table accessor for type ModifierBodyAccessor<SafeAreaPaddingModifier> and conformance ModifierBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifierBodyAccessor<SafeAreaPaddingModifier> and conformance ModifierBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ModifierBodyAccessor<SafeAreaPaddingModifier> and conformance ModifierBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ModifierBodyAccessor<SafeAreaPaddingModifier> and conformance ModifierBodyAccessor<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ModifierBodyAccessor<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata for SafeAreaPaddingModifier, type metadata accessor for ModifierBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifierBodyAccessor<SafeAreaPaddingModifier> and conformance ModifierBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ModifierBodyAccessor<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata for SafeAreaPaddingModifier, type metadata accessor for ModifierBodyAccessor);
    lazy protocol witness table accessor for type ModifierBodyAccessor<SafeAreaPaddingModifier> and conformance ModifierBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ModifierBodyAccessor<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata for SafeAreaPaddingModifier, type metadata accessor for ModifierBodyAccessor);
    lazy protocol witness table accessor for type ModifierBodyAccessor<SafeAreaPaddingModifier> and conformance ModifierBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ModifierBodyAccessor<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata for SafeAreaPaddingModifier, type metadata accessor for ModifierBodyAccessor);
    lazy protocol witness table accessor for type ModifierBodyAccessor<SafeAreaPaddingModifier> and conformance ModifierBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ModifierBodyAccessor<SafeAreaPaddingModifier>, AsyncThreadFlags>);
    }
  }
}

unint64_t type metadata accessor for _ColorMultiplyEffect.Type()
{
  result = lazy cache variable for type metadata for _ColorMultiplyEffect.Type;
  if (!lazy cache variable for type metadata for _ColorMultiplyEffect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _ColorMultiplyEffect.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for EnvironmentalBodyAccessor<_ColorMultiplyEffect>, &type metadata for _ColorMultiplyEffect, &protocol witness table for _ColorMultiplyEffect, type metadata accessor for EnvironmentalBodyAccessor);
    lazy protocol witness table accessor for type EnvironmentalBodyAccessor<_ColorMultiplyEffect> and conformance EnvironmentalBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentalBodyAccessor<_ColorMultiplyEffect> and conformance EnvironmentalBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentalBodyAccessor<_ColorMultiplyEffect> and conformance EnvironmentalBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentalBodyAccessor<_ColorMultiplyEffect> and conformance EnvironmentalBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for EnvironmentalBodyAccessor<_ColorMultiplyEffect>, &type metadata for _ColorMultiplyEffect, &protocol witness table for _ColorMultiplyEffect, type metadata accessor for EnvironmentalBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentalBodyAccessor<_ColorMultiplyEffect> and conformance EnvironmentalBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for EnvironmentalBodyAccessor<_ColorMultiplyEffect>, &type metadata for _ColorMultiplyEffect, &protocol witness table for _ColorMultiplyEffect, type metadata accessor for EnvironmentalBodyAccessor);
    lazy protocol witness table accessor for type EnvironmentalBodyAccessor<_ColorMultiplyEffect> and conformance EnvironmentalBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for EnvironmentalBodyAccessor<_ColorMultiplyEffect>, &type metadata for _ColorMultiplyEffect, &protocol witness table for _ColorMultiplyEffect, type metadata accessor for EnvironmentalBodyAccessor);
    lazy protocol witness table accessor for type EnvironmentalBodyAccessor<_ColorMultiplyEffect> and conformance EnvironmentalBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for EnvironmentalBodyAccessor<_ColorMultiplyEffect>, &type metadata for _ColorMultiplyEffect, &protocol witness table for _ColorMultiplyEffect, type metadata accessor for EnvironmentalBodyAccessor);
    lazy protocol witness table accessor for type EnvironmentalBodyAccessor<_ColorMultiplyEffect> and conformance EnvironmentalBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>);
    }
  }
}

unint64_t type metadata accessor for _TestApp.RootView.Type()
{
  result = lazy cache variable for type metadata for _TestApp.RootView.Type;
  if (!lazy cache variable for type metadata for _TestApp.RootView.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _TestApp.RootView.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewBodyAccessor<_TestApp.RootView>, lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView, &type metadata for _TestApp.RootView, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<_TestApp.RootView> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView()
{
  result = lazy protocol witness table cache variable for type _TestApp.RootView and conformance _TestApp.RootView;
  if (!lazy protocol witness table cache variable for type _TestApp.RootView and conformance _TestApp.RootView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TestApp.RootView and conformance _TestApp.RootView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<_TestApp.RootView> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<_TestApp.RootView> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<_TestApp.RootView> and conformance ViewBodyAccessor<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewBodyAccessor<_TestApp.RootView>, lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView, &type metadata for _TestApp.RootView, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<_TestApp.RootView> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewBodyAccessor<_TestApp.RootView>, lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView, &type metadata for _TestApp.RootView, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<_TestApp.RootView> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<_TestApp.RootView>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewBodyAccessor<_TestApp.RootView>, lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView, &type metadata for _TestApp.RootView, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<_TestApp.RootView> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewBodyAccessor<_TestApp.RootView>, lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView, &type metadata for _TestApp.RootView, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<_TestApp.RootView> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<_TestApp.RootView>, AsyncThreadFlags>);
    }
  }
}

unint64_t type metadata accessor for MeshGradient.Type()
{
  result = lazy cache variable for type metadata for MeshGradient.Type;
  if (!lazy cache variable for type metadata for MeshGradient.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MeshGradient.Type);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShapeStyleResolver<MeshGradient> and conformance ShapeStyleResolver<A>()
{
  result = lazy protocol witness table cache variable for type ShapeStyleResolver<MeshGradient> and conformance ShapeStyleResolver<A>;
  if (!lazy protocol witness table cache variable for type ShapeStyleResolver<MeshGradient> and conformance ShapeStyleResolver<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ShapeStyleResolver<MeshGradient>, &type metadata for MeshGradient, &protocol witness table for MeshGradient, type metadata accessor for ShapeStyleResolver);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeStyleResolver<MeshGradient> and conformance ShapeStyleResolver<A>);
  }

  return result;
}

uint64_t outlined destroy of ShapeStyleResolver<MeshGradient>(uint64_t a1)
{
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for ShapeStyleResolver<MeshGradient>, &type metadata for MeshGradient, &protocol witness table for MeshGradient, type metadata accessor for ShapeStyleResolver);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<MeshGradient>, &type metadata for MeshGradient, &protocol witness table for MeshGradient, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<MeshGradient> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<MeshGradient> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<MeshGradient> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<MeshGradient> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<MeshGradient>, &type metadata for MeshGradient, &protocol witness table for MeshGradient, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<MeshGradient> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<MeshGradient>, &type metadata for MeshGradient, &protocol witness table for MeshGradient, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<MeshGradient> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<MeshGradient>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<MeshGradient>, &type metadata for MeshGradient, &protocol witness table for MeshGradient, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<MeshGradient> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<MeshGradient>, &type metadata for MeshGradient, &protocol witness table for MeshGradient, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<MeshGradient> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<MeshGradient>, AsyncThreadFlags>);
    }
  }
}

unint64_t type metadata accessor for PartialContainerRelativeShape.Type()
{
  result = lazy cache variable for type metadata for PartialContainerRelativeShape.Type;
  if (!lazy cache variable for type metadata for PartialContainerRelativeShape.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PartialContainerRelativeShape.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<PartialContainerRelativeShape>, &type metadata for PartialContainerRelativeShape, &protocol witness table for PartialContainerRelativeShape, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<PartialContainerRelativeShape> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<PartialContainerRelativeShape> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<PartialContainerRelativeShape> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<PartialContainerRelativeShape> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<PartialContainerRelativeShape>, &type metadata for PartialContainerRelativeShape, &protocol witness table for PartialContainerRelativeShape, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<PartialContainerRelativeShape> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<PartialContainerRelativeShape>, &type metadata for PartialContainerRelativeShape, &protocol witness table for PartialContainerRelativeShape, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<PartialContainerRelativeShape> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<PartialContainerRelativeShape>, &type metadata for PartialContainerRelativeShape, &protocol witness table for PartialContainerRelativeShape, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<PartialContainerRelativeShape> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<PartialContainerRelativeShape>, &type metadata for PartialContainerRelativeShape, &protocol witness table for PartialContainerRelativeShape, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<PartialContainerRelativeShape> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<PartialContainerRelativeShape>, AsyncThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatedShape<PartialContainerRelativeShape>.Init and conformance AnimatedShape<A>.Init()
{
  result = lazy protocol witness table cache variable for type AnimatedShape<PartialContainerRelativeShape>.Init and conformance AnimatedShape<A>.Init;
  if (!lazy protocol witness table cache variable for type AnimatedShape<PartialContainerRelativeShape>.Init and conformance AnimatedShape<A>.Init)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>.Init, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatedShape.Init);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedShape<PartialContainerRelativeShape>.Init and conformance AnimatedShape<A>.Init);
  }

  return result;
}

void type metadata accessor for LeafLayoutComputer<AnimatedShape<PartialContainerRelativeShape>>()
{
  if (!lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<PartialContainerRelativeShape>>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatedShape);
    v0 = type metadata accessor for LeafLayoutComputer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<PartialContainerRelativeShape>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<PartialContainerRelativeShape> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<PartialContainerRelativeShape> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<PartialContainerRelativeShape> and conformance AnimatableAttribute<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatableAttribute<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<PartialContainerRelativeShape> and conformance AnimatableAttribute<A>);
  }

  return result;
}

uint64_t outlined destroy of AnimatableAttribute<PartialContainerRelativeShape>(uint64_t a1)
{
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttribute);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for ImplicitContainerShape.Type()
{
  result = lazy cache variable for type metadata for ImplicitContainerShape.Type;
  if (!lazy cache variable for type metadata for ImplicitContainerShape.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ImplicitContainerShape.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ImplicitContainerShape>, &type metadata for ImplicitContainerShape, &protocol witness table for ImplicitContainerShape, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<ImplicitContainerShape> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<ImplicitContainerShape> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<ImplicitContainerShape> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<ImplicitContainerShape> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ImplicitContainerShape>, &type metadata for ImplicitContainerShape, &protocol witness table for ImplicitContainerShape, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<ImplicitContainerShape> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ImplicitContainerShape>, &type metadata for ImplicitContainerShape, &protocol witness table for ImplicitContainerShape, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<ImplicitContainerShape> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ImplicitContainerShape>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ImplicitContainerShape>, &type metadata for ImplicitContainerShape, &protocol witness table for ImplicitContainerShape, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<ImplicitContainerShape> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ImplicitContainerShape>, &type metadata for ImplicitContainerShape, &protocol witness table for ImplicitContainerShape, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<ImplicitContainerShape> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ImplicitContainerShape>, AsyncThreadFlags>);
    }
  }
}

unint64_t type metadata accessor for ContainerRelativeShape._Inset.Type()
{
  result = lazy cache variable for type metadata for ContainerRelativeShape._Inset.Type;
  if (!lazy cache variable for type metadata for ContainerRelativeShape._Inset.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ContainerRelativeShape._Inset.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ContainerRelativeShape._Inset>, &type metadata for ContainerRelativeShape._Inset, &protocol witness table for ContainerRelativeShape._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<ContainerRelativeShape._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<ContainerRelativeShape._Inset> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<ContainerRelativeShape._Inset> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<ContainerRelativeShape._Inset> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ContainerRelativeShape._Inset>, &type metadata for ContainerRelativeShape._Inset, &protocol witness table for ContainerRelativeShape._Inset, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<ContainerRelativeShape._Inset> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ContainerRelativeShape._Inset>, &type metadata for ContainerRelativeShape._Inset, &protocol witness table for ContainerRelativeShape._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<ContainerRelativeShape._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ContainerRelativeShape._Inset>, &type metadata for ContainerRelativeShape._Inset, &protocol witness table for ContainerRelativeShape._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<ContainerRelativeShape._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ContainerRelativeShape._Inset>, &type metadata for ContainerRelativeShape._Inset, &protocol witness table for ContainerRelativeShape._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<ContainerRelativeShape._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ContainerRelativeShape._Inset>, AsyncThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatedShape<ContainerRelativeShape._Inset>.Init and conformance AnimatedShape<A>.Init()
{
  result = lazy protocol witness table cache variable for type AnimatedShape<ContainerRelativeShape._Inset>.Init and conformance AnimatedShape<A>.Init;
  if (!lazy protocol witness table cache variable for type AnimatedShape<ContainerRelativeShape._Inset>.Init and conformance AnimatedShape<A>.Init)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<ContainerRelativeShape._Inset>.Init, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset, type metadata accessor for AnimatedShape.Init);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedShape<ContainerRelativeShape._Inset>.Init and conformance AnimatedShape<A>.Init);
  }

  return result;
}

void type metadata accessor for LeafLayoutComputer<AnimatedShape<ContainerRelativeShape._Inset>>()
{
  if (!lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<ContainerRelativeShape._Inset>>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset, type metadata accessor for AnimatedShape);
    v0 = type metadata accessor for LeafLayoutComputer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<ContainerRelativeShape._Inset>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<ContainerRelativeShape._Inset> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<ContainerRelativeShape._Inset> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<ContainerRelativeShape._Inset> and conformance AnimatableAttribute<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatableAttribute<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<ContainerRelativeShape._Inset> and conformance AnimatableAttribute<A>);
  }

  return result;
}

uint64_t outlined destroy of AnimatableAttribute<ContainerRelativeShape._Inset>(uint64_t a1)
{
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset, type metadata accessor for AnimatableAttribute);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for ContainerRelativeShape.Type()
{
  result = lazy cache variable for type metadata for ContainerRelativeShape.Type;
  if (!lazy cache variable for type metadata for ContainerRelativeShape.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ContainerRelativeShape.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ContainerRelativeShape>, &type metadata for ContainerRelativeShape, &protocol witness table for ContainerRelativeShape, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<ContainerRelativeShape> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ContainerRelativeShape>, &type metadata for ContainerRelativeShape, &protocol witness table for ContainerRelativeShape, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<ContainerRelativeShape> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ContainerRelativeShape>, &type metadata for ContainerRelativeShape, &protocol witness table for ContainerRelativeShape, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<ContainerRelativeShape> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ContainerRelativeShape>, AsyncThreadFlags>);
    }
  }
}

unint64_t type metadata accessor for ConcentricRectangle.Type()
{
  result = lazy cache variable for type metadata for ConcentricRectangle.Type;
  if (!lazy cache variable for type metadata for ConcentricRectangle.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ConcentricRectangle.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ConcentricRectangle>, &type metadata for ConcentricRectangle, &protocol witness table for ConcentricRectangle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<ConcentricRectangle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<ConcentricRectangle> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<ConcentricRectangle> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<ConcentricRectangle> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ConcentricRectangle>, &type metadata for ConcentricRectangle, &protocol witness table for ConcentricRectangle, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<ConcentricRectangle> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ConcentricRectangle>, &type metadata for ConcentricRectangle, &protocol witness table for ConcentricRectangle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<ConcentricRectangle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ConcentricRectangle>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ConcentricRectangle>, &type metadata for ConcentricRectangle, &protocol witness table for ConcentricRectangle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<ConcentricRectangle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ConcentricRectangle>, &type metadata for ConcentricRectangle, &protocol witness table for ConcentricRectangle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<ConcentricRectangle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ConcentricRectangle>, AsyncThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatedShape<ConcentricRectangle>.Init and conformance AnimatedShape<A>.Init()
{
  result = lazy protocol witness table cache variable for type AnimatedShape<ConcentricRectangle>.Init and conformance AnimatedShape<A>.Init;
  if (!lazy protocol witness table cache variable for type AnimatedShape<ConcentricRectangle>.Init and conformance AnimatedShape<A>.Init)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>.Init, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatedShape.Init);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedShape<ConcentricRectangle>.Init and conformance AnimatedShape<A>.Init);
  }

  return result;
}

void type metadata accessor for LeafLayoutComputer<AnimatedShape<ConcentricRectangle>>()
{
  if (!lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<ConcentricRectangle>>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatedShape);
    v0 = type metadata accessor for LeafLayoutComputer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<ConcentricRectangle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<ConcentricRectangle> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<ConcentricRectangle> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<ConcentricRectangle> and conformance AnimatableAttribute<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatableAttribute<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<ConcentricRectangle> and conformance AnimatableAttribute<A>);
  }

  return result;
}

uint64_t outlined destroy of AnimatableAttribute<ConcentricRectangle>(uint64_t a1)
{
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttribute);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for Circle._Inset.Type()
{
  result = lazy cache variable for type metadata for Circle._Inset.Type;
  if (!lazy cache variable for type metadata for Circle._Inset.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Circle._Inset.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Circle._Inset>, &type metadata for Circle._Inset, &protocol witness table for Circle._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Circle._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<Circle._Inset> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<Circle._Inset> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<Circle._Inset> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Circle._Inset>, &type metadata for Circle._Inset, &protocol witness table for Circle._Inset, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<Circle._Inset> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Circle._Inset>, &type metadata for Circle._Inset, &protocol witness table for Circle._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Circle._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Circle._Inset>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Circle._Inset>, &type metadata for Circle._Inset, &protocol witness table for Circle._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Circle._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Circle._Inset>, &type metadata for Circle._Inset, &protocol witness table for Circle._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Circle._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Circle._Inset>, AsyncThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatedShape<Circle._Inset>.Init and conformance AnimatedShape<A>.Init()
{
  result = lazy protocol witness table cache variable for type AnimatedShape<Circle._Inset>.Init and conformance AnimatedShape<A>.Init;
  if (!lazy protocol witness table cache variable for type AnimatedShape<Circle._Inset>.Init and conformance AnimatedShape<A>.Init)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<Circle._Inset>.Init, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, &type metadata for Circle._Inset, type metadata accessor for AnimatedShape.Init);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedShape<Circle._Inset>.Init and conformance AnimatedShape<A>.Init);
  }

  return result;
}

void type metadata accessor for LeafLayoutComputer<AnimatedShape<Circle._Inset>>()
{
  if (!lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<Circle._Inset>>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, &type metadata for Circle._Inset, type metadata accessor for AnimatedShape);
    v0 = type metadata accessor for LeafLayoutComputer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<Circle._Inset>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<Circle._Inset> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<Circle._Inset> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<Circle._Inset> and conformance AnimatableAttribute<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatableAttribute<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, &type metadata for Circle._Inset, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<Circle._Inset> and conformance AnimatableAttribute<A>);
  }

  return result;
}

uint64_t outlined destroy of AnimatableAttribute<Circle._Inset>(uint64_t a1)
{
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, &type metadata for Circle._Inset, type metadata accessor for AnimatableAttribute);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for Ellipse._Inset.Type()
{
  result = lazy cache variable for type metadata for Ellipse._Inset.Type;
  if (!lazy cache variable for type metadata for Ellipse._Inset.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Ellipse._Inset.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Ellipse._Inset>, &type metadata for Ellipse._Inset, &protocol witness table for Ellipse._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Ellipse._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<Ellipse._Inset> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<Ellipse._Inset> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<Ellipse._Inset> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Ellipse._Inset>, &type metadata for Ellipse._Inset, &protocol witness table for Ellipse._Inset, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<Ellipse._Inset> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Ellipse._Inset>, &type metadata for Ellipse._Inset, &protocol witness table for Ellipse._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Ellipse._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Ellipse._Inset>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Ellipse._Inset>, &type metadata for Ellipse._Inset, &protocol witness table for Ellipse._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Ellipse._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Ellipse._Inset>, &type metadata for Ellipse._Inset, &protocol witness table for Ellipse._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Ellipse._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Ellipse._Inset>, AsyncThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatedShape<Ellipse._Inset>.Init and conformance AnimatedShape<A>.Init()
{
  result = lazy protocol witness table cache variable for type AnimatedShape<Ellipse._Inset>.Init and conformance AnimatedShape<A>.Init;
  if (!lazy protocol witness table cache variable for type AnimatedShape<Ellipse._Inset>.Init and conformance AnimatedShape<A>.Init)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<Ellipse._Inset>.Init, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset, &type metadata for Ellipse._Inset, type metadata accessor for AnimatedShape.Init);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedShape<Ellipse._Inset>.Init and conformance AnimatedShape<A>.Init);
  }

  return result;
}

void type metadata accessor for LeafLayoutComputer<AnimatedShape<Ellipse._Inset>>()
{
  if (!lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<Ellipse._Inset>>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset, &type metadata for Ellipse._Inset, type metadata accessor for AnimatedShape);
    v0 = type metadata accessor for LeafLayoutComputer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<Ellipse._Inset>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<Ellipse._Inset> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<Ellipse._Inset> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<Ellipse._Inset> and conformance AnimatableAttribute<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatableAttribute<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset, &type metadata for Ellipse._Inset, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<Ellipse._Inset> and conformance AnimatableAttribute<A>);
  }

  return result;
}

uint64_t outlined destroy of AnimatableAttribute<Ellipse._Inset>(uint64_t a1)
{
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset, &type metadata for Ellipse._Inset, type metadata accessor for AnimatableAttribute);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for Capsule._Inset.Type()
{
  result = lazy cache variable for type metadata for Capsule._Inset.Type;
  if (!lazy cache variable for type metadata for Capsule._Inset.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Capsule._Inset.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Capsule._Inset>, &type metadata for Capsule._Inset, &protocol witness table for Capsule._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Capsule._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<Capsule._Inset> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<Capsule._Inset> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<Capsule._Inset> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Capsule._Inset>, &type metadata for Capsule._Inset, &protocol witness table for Capsule._Inset, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<Capsule._Inset> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Capsule._Inset>, &type metadata for Capsule._Inset, &protocol witness table for Capsule._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Capsule._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Capsule._Inset>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Capsule._Inset>, &type metadata for Capsule._Inset, &protocol witness table for Capsule._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Capsule._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Capsule._Inset>, &type metadata for Capsule._Inset, &protocol witness table for Capsule._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Capsule._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Capsule._Inset>, AsyncThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatedShape<Capsule._Inset>.Init and conformance AnimatedShape<A>.Init()
{
  result = lazy protocol witness table cache variable for type AnimatedShape<Capsule._Inset>.Init and conformance AnimatedShape<A>.Init;
  if (!lazy protocol witness table cache variable for type AnimatedShape<Capsule._Inset>.Init and conformance AnimatedShape<A>.Init)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<Capsule._Inset>.Init, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, &type metadata for Capsule._Inset, type metadata accessor for AnimatedShape.Init);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedShape<Capsule._Inset>.Init and conformance AnimatedShape<A>.Init);
  }

  return result;
}

void type metadata accessor for LeafLayoutComputer<AnimatedShape<Capsule._Inset>>()
{
  if (!lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<Capsule._Inset>>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, &type metadata for Capsule._Inset, type metadata accessor for AnimatedShape);
    v0 = type metadata accessor for LeafLayoutComputer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<Capsule._Inset>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<Capsule._Inset> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<Capsule._Inset> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<Capsule._Inset> and conformance AnimatableAttribute<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatableAttribute<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, &type metadata for Capsule._Inset, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<Capsule._Inset> and conformance AnimatableAttribute<A>);
  }

  return result;
}

uint64_t outlined destroy of AnimatableAttribute<Capsule._Inset>(uint64_t a1)
{
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, &type metadata for Capsule._Inset, type metadata accessor for AnimatableAttribute);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for UnevenRoundedRectangle._Inset.Type()
{
  result = lazy cache variable for type metadata for UnevenRoundedRectangle._Inset.Type;
  if (!lazy cache variable for type metadata for UnevenRoundedRectangle._Inset.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UnevenRoundedRectangle._Inset.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<UnevenRoundedRectangle._Inset>, &type metadata for UnevenRoundedRectangle._Inset, &protocol witness table for UnevenRoundedRectangle._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<UnevenRoundedRectangle._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<UnevenRoundedRectangle._Inset> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<UnevenRoundedRectangle._Inset> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<UnevenRoundedRectangle._Inset> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<UnevenRoundedRectangle._Inset>, &type metadata for UnevenRoundedRectangle._Inset, &protocol witness table for UnevenRoundedRectangle._Inset, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<UnevenRoundedRectangle._Inset> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<UnevenRoundedRectangle._Inset>, &type metadata for UnevenRoundedRectangle._Inset, &protocol witness table for UnevenRoundedRectangle._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<UnevenRoundedRectangle._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<UnevenRoundedRectangle._Inset>, &type metadata for UnevenRoundedRectangle._Inset, &protocol witness table for UnevenRoundedRectangle._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<UnevenRoundedRectangle._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<UnevenRoundedRectangle._Inset>, &type metadata for UnevenRoundedRectangle._Inset, &protocol witness table for UnevenRoundedRectangle._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<UnevenRoundedRectangle._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle._Inset>, AsyncThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatedShape<UnevenRoundedRectangle._Inset>.Init and conformance AnimatedShape<A>.Init()
{
  result = lazy protocol witness table cache variable for type AnimatedShape<UnevenRoundedRectangle._Inset>.Init and conformance AnimatedShape<A>.Init;
  if (!lazy protocol witness table cache variable for type AnimatedShape<UnevenRoundedRectangle._Inset>.Init and conformance AnimatedShape<A>.Init)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>.Init, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatedShape.Init);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedShape<UnevenRoundedRectangle._Inset>.Init and conformance AnimatedShape<A>.Init);
  }

  return result;
}

void type metadata accessor for LeafLayoutComputer<AnimatedShape<UnevenRoundedRectangle._Inset>>()
{
  if (!lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<UnevenRoundedRectangle._Inset>>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatedShape);
    v0 = type metadata accessor for LeafLayoutComputer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<UnevenRoundedRectangle._Inset>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<UnevenRoundedRectangle._Inset> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<UnevenRoundedRectangle._Inset> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<UnevenRoundedRectangle._Inset> and conformance AnimatableAttribute<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatableAttribute<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<UnevenRoundedRectangle._Inset> and conformance AnimatableAttribute<A>);
  }

  return result;
}

uint64_t outlined destroy of AnimatableAttribute<UnevenRoundedRectangle._Inset>(uint64_t a1)
{
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttribute);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for RoundedRectangle._Inset.Type()
{
  result = lazy cache variable for type metadata for RoundedRectangle._Inset.Type;
  if (!lazy cache variable for type metadata for RoundedRectangle._Inset.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RoundedRectangle._Inset.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<RoundedRectangle._Inset>, &type metadata for RoundedRectangle._Inset, &protocol witness table for RoundedRectangle._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<RoundedRectangle._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<RoundedRectangle._Inset> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<RoundedRectangle._Inset> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<RoundedRectangle._Inset> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<RoundedRectangle._Inset>, &type metadata for RoundedRectangle._Inset, &protocol witness table for RoundedRectangle._Inset, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<RoundedRectangle._Inset> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<RoundedRectangle._Inset>, &type metadata for RoundedRectangle._Inset, &protocol witness table for RoundedRectangle._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<RoundedRectangle._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<RoundedRectangle._Inset>, &type metadata for RoundedRectangle._Inset, &protocol witness table for RoundedRectangle._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<RoundedRectangle._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<RoundedRectangle._Inset>, &type metadata for RoundedRectangle._Inset, &protocol witness table for RoundedRectangle._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<RoundedRectangle._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<RoundedRectangle._Inset>, AsyncThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatedShape<RoundedRectangle._Inset>.Init and conformance AnimatedShape<A>.Init()
{
  result = lazy protocol witness table cache variable for type AnimatedShape<RoundedRectangle._Inset>.Init and conformance AnimatedShape<A>.Init;
  if (!lazy protocol witness table cache variable for type AnimatedShape<RoundedRectangle._Inset>.Init and conformance AnimatedShape<A>.Init)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>.Init, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatedShape.Init);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedShape<RoundedRectangle._Inset>.Init and conformance AnimatedShape<A>.Init);
  }

  return result;
}

void type metadata accessor for LeafLayoutComputer<AnimatedShape<RoundedRectangle._Inset>>()
{
  if (!lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<RoundedRectangle._Inset>>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatedShape);
    v0 = type metadata accessor for LeafLayoutComputer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<RoundedRectangle._Inset>>);
    }
  }
}

uint64_t outlined destroy of AnimatableAttribute<RoundedRectangle._Inset>(uint64_t a1)
{
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttribute);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for Rectangle._Inset.Type()
{
  result = lazy cache variable for type metadata for Rectangle._Inset.Type;
  if (!lazy cache variable for type metadata for Rectangle._Inset.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Rectangle._Inset.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Rectangle._Inset>, &type metadata for Rectangle._Inset, &protocol witness table for Rectangle._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Rectangle._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<Rectangle._Inset> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<Rectangle._Inset> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<Rectangle._Inset> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Rectangle._Inset>, &type metadata for Rectangle._Inset, &protocol witness table for Rectangle._Inset, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<Rectangle._Inset> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Rectangle._Inset>, &type metadata for Rectangle._Inset, &protocol witness table for Rectangle._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Rectangle._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Rectangle._Inset>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Rectangle._Inset>, &type metadata for Rectangle._Inset, &protocol witness table for Rectangle._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Rectangle._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Rectangle._Inset>, &type metadata for Rectangle._Inset, &protocol witness table for Rectangle._Inset, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Rectangle._Inset> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Rectangle._Inset>, AsyncThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatedShape<Rectangle._Inset>.Init and conformance AnimatedShape<A>.Init()
{
  result = lazy protocol witness table cache variable for type AnimatedShape<Rectangle._Inset>.Init and conformance AnimatedShape<A>.Init;
  if (!lazy protocol witness table cache variable for type AnimatedShape<Rectangle._Inset>.Init and conformance AnimatedShape<A>.Init)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<Rectangle._Inset>.Init, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, &type metadata for Rectangle._Inset, type metadata accessor for AnimatedShape.Init);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedShape<Rectangle._Inset>.Init and conformance AnimatedShape<A>.Init);
  }

  return result;
}

void type metadata accessor for LeafLayoutComputer<AnimatedShape<Rectangle._Inset>>()
{
  if (!lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<Rectangle._Inset>>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, &type metadata for Rectangle._Inset, type metadata accessor for AnimatedShape);
    v0 = type metadata accessor for LeafLayoutComputer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<Rectangle._Inset>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<Rectangle._Inset> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<Rectangle._Inset> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<Rectangle._Inset> and conformance AnimatableAttribute<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatableAttribute<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, &type metadata for Rectangle._Inset, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<Rectangle._Inset> and conformance AnimatableAttribute<A>);
  }

  return result;
}

uint64_t outlined destroy of AnimatableAttribute<Rectangle._Inset>(uint64_t a1)
{
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, &type metadata for Rectangle._Inset, type metadata accessor for AnimatableAttribute);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for Circle.Type()
{
  result = lazy cache variable for type metadata for Circle.Type;
  if (!lazy cache variable for type metadata for Circle.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Circle.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Circle>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Circle>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Circle>, &type metadata for Circle, &protocol witness table for Circle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Circle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Circle>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Circle>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Circle>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Circle>, &type metadata for Circle, &protocol witness table for Circle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Circle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Circle>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Circle>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Circle>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Circle>, &type metadata for Circle, &protocol witness table for Circle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Circle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Circle>, AsyncThreadFlags>);
    }
  }
}

unint64_t type metadata accessor for Ellipse.Type()
{
  result = lazy cache variable for type metadata for Ellipse.Type;
  if (!lazy cache variable for type metadata for Ellipse.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Ellipse.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Ellipse>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Ellipse>, &type metadata for Ellipse, &protocol witness table for Ellipse, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Ellipse> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Ellipse>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<Ellipse> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<Ellipse> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<Ellipse> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Ellipse>, &type metadata for Ellipse, &protocol witness table for Ellipse, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<Ellipse> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Ellipse>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Ellipse>, &type metadata for Ellipse, &protocol witness table for Ellipse, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Ellipse> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Ellipse>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Ellipse>, &type metadata for Ellipse, &protocol witness table for Ellipse, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Ellipse> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Ellipse>, &type metadata for Ellipse, &protocol witness table for Ellipse, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Ellipse> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Ellipse>, AsyncThreadFlags>);
    }
  }
}

unint64_t type metadata accessor for Capsule.Type()
{
  result = lazy cache variable for type metadata for Capsule.Type;
  if (!lazy cache variable for type metadata for Capsule.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Capsule.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Capsule>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Capsule>, &type metadata for Capsule, &protocol witness table for Capsule, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Capsule> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Capsule>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<Capsule> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<Capsule> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<Capsule> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Capsule>, &type metadata for Capsule, &protocol witness table for Capsule, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<Capsule> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Capsule>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Capsule>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Capsule>, &type metadata for Capsule, &protocol witness table for Capsule, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Capsule> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Capsule>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Capsule>, &type metadata for Capsule, &protocol witness table for Capsule, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Capsule> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Capsule>, &type metadata for Capsule, &protocol witness table for Capsule, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Capsule> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Capsule>, AsyncThreadFlags>);
    }
  }
}

unint64_t type metadata accessor for UnevenRoundedRectangle.Type()
{
  result = lazy cache variable for type metadata for UnevenRoundedRectangle.Type;
  if (!lazy cache variable for type metadata for UnevenRoundedRectangle.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UnevenRoundedRectangle.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<UnevenRoundedRectangle>, &type metadata for UnevenRoundedRectangle, &protocol witness table for UnevenRoundedRectangle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<UnevenRoundedRectangle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<UnevenRoundedRectangle> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<UnevenRoundedRectangle> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<UnevenRoundedRectangle> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<UnevenRoundedRectangle>, &type metadata for UnevenRoundedRectangle, &protocol witness table for UnevenRoundedRectangle, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<UnevenRoundedRectangle> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<UnevenRoundedRectangle>, &type metadata for UnevenRoundedRectangle, &protocol witness table for UnevenRoundedRectangle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<UnevenRoundedRectangle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<UnevenRoundedRectangle>, &type metadata for UnevenRoundedRectangle, &protocol witness table for UnevenRoundedRectangle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<UnevenRoundedRectangle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<UnevenRoundedRectangle>, &type metadata for UnevenRoundedRectangle, &protocol witness table for UnevenRoundedRectangle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<UnevenRoundedRectangle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<UnevenRoundedRectangle>, AsyncThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatedShape<UnevenRoundedRectangle>.Init and conformance AnimatedShape<A>.Init()
{
  result = lazy protocol witness table cache variable for type AnimatedShape<UnevenRoundedRectangle>.Init and conformance AnimatedShape<A>.Init;
  if (!lazy protocol witness table cache variable for type AnimatedShape<UnevenRoundedRectangle>.Init and conformance AnimatedShape<A>.Init)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>.Init, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatedShape.Init);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedShape<UnevenRoundedRectangle>.Init and conformance AnimatedShape<A>.Init);
  }

  return result;
}

void type metadata accessor for LeafLayoutComputer<AnimatedShape<UnevenRoundedRectangle>>()
{
  if (!lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<UnevenRoundedRectangle>>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatedShape);
    v0 = type metadata accessor for LeafLayoutComputer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<UnevenRoundedRectangle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<UnevenRoundedRectangle> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<UnevenRoundedRectangle> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<UnevenRoundedRectangle> and conformance AnimatableAttribute<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatableAttribute<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<UnevenRoundedRectangle> and conformance AnimatableAttribute<A>);
  }

  return result;
}

uint64_t outlined destroy of AnimatableAttribute<UnevenRoundedRectangle>(uint64_t a1)
{
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttribute);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for RoundedRectangle.Type()
{
  result = lazy cache variable for type metadata for RoundedRectangle.Type;
  if (!lazy cache variable for type metadata for RoundedRectangle.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RoundedRectangle.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<RoundedRectangle>, &type metadata for RoundedRectangle, &protocol witness table for RoundedRectangle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<RoundedRectangle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<RoundedRectangle>, &type metadata for RoundedRectangle, &protocol witness table for RoundedRectangle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<RoundedRectangle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<RoundedRectangle>, &type metadata for RoundedRectangle, &protocol witness table for RoundedRectangle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<RoundedRectangle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<RoundedRectangle>, AsyncThreadFlags>);
    }
  }
}

uint64_t outlined destroy of AnimatableAttribute<RoundedRectangle>(uint64_t a1)
{
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttribute);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for Rectangle.Type()
{
  result = lazy cache variable for type metadata for Rectangle.Type;
  if (!lazy cache variable for type metadata for Rectangle.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Rectangle.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Rectangle>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Rectangle>, &type metadata for Rectangle, &protocol witness table for Rectangle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Rectangle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Rectangle>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Rectangle>, &type metadata for Rectangle, &protocol witness table for Rectangle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Rectangle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Rectangle>, &type metadata for Rectangle, &protocol witness table for Rectangle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Rectangle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Rectangle>, AsyncThreadFlags>);
    }
  }
}

unint64_t type metadata accessor for Path.Type()
{
  result = lazy cache variable for type metadata for Path.Type;
  if (!lazy cache variable for type metadata for Path.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Path.Type);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Path>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Path>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Path>, &type metadata for Path, &protocol witness table for Path, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Path> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Path>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<Path> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<Path> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<Path> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Path>, &type metadata for Path, &protocol witness table for Path, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<Path> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for DynamicBody<ViewBodyAccessor<Path>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Path>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Path>, &type metadata for Path, &protocol witness table for Path, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Path> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ViewBodyAccessor<Path>, AsyncThreadFlags>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Path>, AsyncThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Path>, AsyncThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Path>, &type metadata for Path, &protocol witness table for Path, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Path> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Path>, AsyncThreadFlags>);
    }
  }
}

unint64_t type metadata accessor for AnyShape.Type()
{
  result = lazy cache variable for type metadata for AnyShape.Type;
  if (!lazy cache variable for type metadata for AnyShape.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AnyShape.Type);
  }

  return result;
}