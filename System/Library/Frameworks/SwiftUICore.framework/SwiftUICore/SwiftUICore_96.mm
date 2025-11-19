uint64_t destroy for SDFStyle.Mask()
{
}

void *initializeBufferWithCopyOfBuffer for SDFStyle.Mask(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for SDFStyle.Mask(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for SDFStyle.Mask(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for SDFStyle.Mask(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x76 && *(a1 + 16))
  {
    return (*a1 + 118);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x75)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SDFStyle.Mask(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x75)
  {
    *result = a2 - 118;
    *(result + 8) = 0;
    if (a3 >= 0x76)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x76)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t initializeWithCopy for SDFStyle.Group(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;

  return a1;
}

uint64_t assignWithCopy for SDFStyle.Group(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  *(a1 + 24) = *(a2 + 3);

  *(a1 + 32) = *(a2 + 4);

  return a1;
}

uint64_t assignWithTake for SDFStyle.Group(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for SDFStyle.Group(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 33) & 0x7F | (*a1 >> 34) & 0x3F80 | (*a1 >> 35) & 0x1FFFC000 | (*(a1 + 16) >> 1 << 29);
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

uint64_t storeEnumTagSinglePayload for SDFStyle.Group(uint64_t result, int a2, int a3)
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
      *result = (-a2 << 34) & 0xFE0000000000 | ((-a2 & 0x7F) << 33) & 0x1FFFFFFFFFFFFLL | ((-a2 >> 14) << 49);
      *(result + 8) = 0;
      *(result + 16) = (-a2 >> 28) & 0xE;
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

uint64_t getEnumTagSinglePayload for SDFStyle.GlassHighlight(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SDFStyle.GlassHighlight(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SDFStyle.Shadow(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SDFStyle.Shadow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for SDFStyle.Gradient(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for SDFStyle.Gradient(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for SDFStyle.Gradient(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SDFStyle.Stroke(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SDFStyle.Stroke(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 36) = v3;
  return result;
}

void *assignWithCopy for SDFStyle(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for SDFStyle(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void type metadata accessor for [ClosedRange<CGFloat>]()
{
  if (!lazy cache variable for type metadata for [ClosedRange<CGFloat>])
  {
    type metadata accessor for ClosedRange<CGFloat>();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ClosedRange<CGFloat>]);
    }
  }
}

void type metadata accessor for ClosedRange<CGFloat>()
{
  if (!lazy cache variable for type metadata for ClosedRange<CGFloat>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ClosedRange<CGFloat>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [ClosedRange<CGFloat>] and conformance <A> [A](unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of SDFStyle.Group(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *a2 = v3;
  v4 = *(a1 + 4);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 32) = v4;

  return a2;
}

uint64_t outlined destroy of SDFStyle.Group(uint64_t a1)
{

  return a1;
}

uint64_t AnyHashable2.anyHashable.getter()
{
  (*(**v0 + 104))(v7);
  v1 = __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v2 = MEMORY[0x1EEE9AC00](v1);
  (*(v4 + 16))(&v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  AnyHashable.init<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t static AnyHashable2.== infix(_:_:)(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return 1;
  }

  else
  {
    return (*(**a1 + 112))() & 1;
  }
}

Swift::Int AnyHashable2.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 120))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyHashable2()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 120))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyHashable2()
{
  Hasher.init(_seed:)();
  (*(**v0 + 120))(v2);
  return Hasher._finalize()();
}

uint64_t AnyHashable2._toCustomAnyHashable()()
{
  (*(**v0 + 104))(v7);
  v1 = __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v2 = MEMORY[0x1EEE9AC00](v1);
  (*(v4 + 16))(&v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  AnyHashable.init<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AnyHashable2()
{
  (*(**v0 + 104))(v7);
  v1 = __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v2 = MEMORY[0x1EEE9AC00](v1);
  (*(v4 + 16))(&v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  AnyHashable.init<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t _AnyHashableBox.description.getter(uint64_t (*a1)(char *, uint64_t))
{
  v3 = *(*v1 + 136);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  (*(v8 + 16))(&v10 - v5, v1 + *(v7 + 152), v3, v4);
  return a1(v6, v3);
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for Date.ComponentsFormatStyle.Field();
    ++v2;
    lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field();
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

uint64_t GraphicsContext.addSDFGradientOvalizationFilter(_:ovalization:bounds:)(uint64_t result, float a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (result)
  {
    v6 = result == 1 ? 0x3F00000000000000 : 0;
    v7 = result == 1 ? 3204448256 : 3212836864;
    v26.origin.x = a3;
    v26.origin.y = a4;
    v26.size.width = a5;
    v26.size.height = a6;
    result = CGRectIsEmpty(v26);
    if ((result & 1) == 0)
    {
      if (one-time initialization token for system != -1)
      {
        swift_once();
      }

      v13 = static ShaderLibrary.system;
      type metadata accessor for _ContiguousArrayStorage<Shader.Argument>();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_18DDACA80;
      v15 = v13;
      v27.origin.x = a3;
      v27.origin.y = a4;
      v27.size.width = a5;
      v27.size.height = a6;
      MidX = CGRectGetMidX(v27);
      v28.origin.x = a3;
      v28.origin.y = a4;
      v28.size.width = a5;
      v28.size.height = a6;
      MidY = CGRectGetMidY(v28);
      *&v18 = MidX;
      *&MidY = MidY;
      *(v14 + 32) = v18 | (LODWORD(MidY) << 32);
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 52) = 1;
      v29.origin.x = a3;
      v29.origin.y = a4;
      v29.size.width = a5;
      v29.size.height = a6;
      Width = CGRectGetWidth(v29);
      v30.origin.x = a3;
      v30.origin.y = a4;
      v30.size.width = a5;
      v30.size.height = a6;
      *&v20 = Width / CGRectGetHeight(v30);
      *(v14 + 56) = v20;
      *(v14 + 64) = 0;
      *(v14 + 72) = 0;
      *(v14 + 76) = 0;
      *(v14 + 80) = LODWORD(a2);
      *(v14 + 88) = 0;
      *(v14 + 96) = 0;
      *(v14 + 100) = 0;
      *(v14 + 104) = v7 | v6;
      *(v14 + 112) = 0;
      *(v14 + 120) = 0;
      *(v14 + 124) = 1;
      *v21 = v15;
      *&v21[8] = xmmword_18DDBDEA0;
      *&v21[24] = v14;
      *v22 = 2;
      memset(&v22[8], 0, 32);
      v23 = 3221225472;
      GraphicsContext.addFilter(_:options:)(v21, 0);
      v24[3] = *&v22[16];
      v24[4] = *&v22[32];
      v25 = v23;
      v24[0] = *v21;
      v24[1] = *&v21[16];
      v24[2] = *v22;
      return outlined destroy of GraphicsContext.Filter(v24);
    }
  }

  return result;
}

uint64_t PathSet.drawSDF(in:distanceRange:gradient:ovalization:)(uint64_t result, uint64_t a2, double a3, double a4, float a5)
{
  v9 = result;
  v98 = *MEMORY[0x1E69E9840];
  v10 = *v5;
  v11 = *(v5 + 1);
  *&v93[0] = 256;
  memset(v93 + 8, 0, 33);
  v12 = *(v10 + 16);
  if (v12 == 1)
  {
    v18 = *(v10 + 48);
    v79 = *(v10 + 32);
    v80 = v18;
    v81 = *(v10 + 64);
    v82 = *(v10 + 80);
    if (a5 != 0.0 && (v82 & 0x100000000) == 0)
    {
      v95 = v79;
      v96 = v80;
      v97 = v81;
      v19 = a5;
      Path.roundedRect()(v85);
      if (v85[48] == 2)
      {
        a5 = 0.0;
      }

      else
      {
        a5 = v19;
      }
    }

    v21 = *(&v79 + 1);
    v20 = v79;
    v22 = *(&v80 + 1);
    v23 = v80;
    v24 = v81;
    v93[3] = v79;
    v93[4] = v80;
    v94 = v81;
    if (!a2 || a5 == 0.0)
    {
      outlined init with copy of PathSet.Element(&v79, v85);
      outlined init with copy of PathSet.Element(&v79, v85);
LABEL_37:
      GraphicsContext.addSDFGradientFilter(_:)(a2);
      __asm { FMOV            V0.4S, #1.0 }

      v68 = _Q0;
      LODWORD(v69) = 2143289344;
      _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v68);
      v90 = v76;
      v91 = v77;
      v92 = v78;
      v86 = v72;
      v87 = v73;
      v88 = v74;
      v89 = v75;
      *v85 = v68;
      *&v85[16] = v69;
      *&v85[32] = v70;
      *&v85[48] = v71;
      if (((1 << v24) & 0x47) != 0)
      {
        outlined copy of Path.Storage(v20, v21, v23, v22, v24);
LABEL_39:
        v83[0] = v20;
        v83[1] = v21;
        v83[2] = v23;
        v83[3] = v22;
        v84 = v24;
        v45 = *v9;
        v63 = v22;
        if (a3 != 0.0 && a4 != 0.0)
        {
          v61 = v23;
          v62 = v21;
          outlined copy of Path.Storage(v20, v21, v23, v22, v24);
          v46 = RBDrawingStateBeginLayer();
          type metadata accessor for GraphicsContext.Storage();
          v47 = swift_allocObject();
          *(v47 + 32) = xmmword_18DD85500;
          *(v47 + 48) = 1065353216;
          *(v47 + 56) = 0x7FF8000000000000;
          v48 = *(v45 + 16);
          v49 = *(v48 + 64);
          if (v49 == RBDrawingStateGetDefaultColorSpace())
          {
            *(v47 + 16) = v48;
          }

          else
          {
            v60 = RBDrawingStateGetDisplayList();
            v51 = *(v45 + 32);
            v52 = v51;
            v53 = *(v45 + 40);
            if (v51 == 1)
            {
              v52 = *(v48 + 48);
              v53 = *(v48 + 56);
            }

            *&v66[0] = v52;
            *(&v66[0] + 1) = v53;
            type metadata accessor for GraphicsContext.Storage.Shared();
            swift_allocObject();
            outlined copy of EnvironmentValues?(v51);
            *(v47 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v60, v66);
          }

          *(v47 + 24) = v46;
          *(v47 + 64) = 0;
          *&v66[0] = v47;

          closure #1 in GraphicsContext.drawSDF(of:style:distanceRange:gradient:ovalization:)(v66, v83, v85, v93, a3, a4);

          RBDrawingStateDrawLayer();

          v54 = v63;
          outlined consume of Path.Storage(v20, v62, v61, v63, v24);
          outlined destroy of PathSet.Element(&v79);
          v55 = v20;
          v56 = v62;
          v57 = v61;
          goto LABEL_68;
        }

        GraphicsContext._shapeRenderingMode.getter(v45, v66);
        if (a4 == 0.0)
        {
          if (a3 < 0.0)
          {
            v50 = -a3;
          }

          else
          {
            v50 = 0.0;
          }
        }

        else if (a4 > 0.0)
        {
          v50 = -a4;
        }

        else
        {
          v50 = -0.0;
        }

        v58 = v66[0];
        v59 = *(v66 + 1);
        if (*(v45 + 56) != v50)
        {
          GraphicsContext.copyOnWrite()();
          v45 = *v9;
          *(*v9 + 56) = v50;
        }

        v66[7] = v89;
        v66[8] = v90;
        v66[9] = v91;
        v67 = v92;
        v66[5] = v87;
        v66[6] = v88;
        v66[0] = *v85;
        v66[1] = *&v85[16];
        v66[3] = *&v85[48];
        v66[4] = v86;
        v66[2] = *&v85[32];
        v64 = v93[0];
        v65[0] = v93[1];
        *(v65 + 9) = *(&v93[1] + 9);
        GraphicsContext.draw(_:with:style:)(v83, v66, &v64, v45);
        if (v58 == 3)
        {
          if (v59 > 0.0)
          {
            v59 = -v59;
          }

          else
          {
            v59 = -0.0;
          }
        }

        else
        {
          if (v58 != 2)
          {
            v59 = NAN;
            v54 = v63;
            goto LABEL_70;
          }

          if (v59 <= 0.0)
          {
            v59 = 0.0;
          }
        }

        v54 = v63;
        if (*(v45 + 56) == v59)
        {
          outlined destroy of PathSet.Element(&v79);
          v55 = v20;
          v56 = v21;
          v57 = v23;
LABEL_68:
          outlined consume of Path.Storage(v55, v56, v57, v54, v24);
          return outlined destroy of PathSet.Element(&v79);
        }

LABEL_70:
        GraphicsContext.copyOnWrite()();
        outlined destroy of PathSet.Element(&v79);
        outlined consume of Path.Storage(v20, v21, v23, v54, v24);
        *(*v9 + 56) = v59;
        return outlined destroy of PathSet.Element(&v79);
      }

      if (v24 == 5)
      {
        type metadata accessor for Path.PathBox();
        v20 = swift_allocObject();
        *(v20 + 40) = 0u;
        *(v20 + 56) = 0u;
        *(v20 + 72) = 0u;
        *(v20 + 88) = 0u;
        *(v20 + 104) = 0u;
        *(v20 + 24) = 0u;
        *(v20 + 16) = 2;
        RBPathStorageInit();
        LOWORD(v66[0]) = 0;
        MEMORY[0x193AC35E0](v20 + 24, 20, 0, v66);
        Path.append(to:)(v20 + 24);
        MEMORY[0x193AC35E0](v20 + 24, 16, 0, 0);
        v21 = 0;
        v23 = 0;
        v22 = 0;
        goto LABEL_39;
      }

      while (1)
      {
LABEL_74:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    if (v81 > 2u)
    {
      if (v81 != 5)
      {
        if (v81 != 6)
        {
          goto LABEL_74;
        }

        x = *MEMORY[0x1E695F050];
        y = *(MEMORY[0x1E695F050] + 8);
        width = *(MEMORY[0x1E695F050] + 16);
        height = *(MEMORY[0x1E695F050] + 24);
        goto LABEL_36;
      }

      if (*(v79 + 16))
      {
        v33 = a5;
        if (*(v79 + 16) == 1)
        {
          outlined init with copy of PathSet.Element(&v79, v85);
          outlined init with copy of PathSet.Element(&v79, v85);

          RBPathGetBoundingRect();
        }

        else
        {
          outlined init with copy of PathSet.Element(&v79, v85);
          outlined init with copy of PathSet.Element(&v79, v85);

          v34 = MEMORY[0x193AC3640](v20 + 24);
        }

        x = v34;
        y = v35;
        width = v36;
        height = v37;
      }

      else
      {
        v38 = *(v79 + 24);
        if (!v38)
        {
          __break(1u);
          goto LABEL_74;
        }

        v33 = a5;
        v39 = v38;
        outlined init with copy of PathSet.Element(&v79, v85);
        outlined init with copy of PathSet.Element(&v79, v85);

        PathBoundingBox = CGPathGetPathBoundingBox(v39);
        x = PathBoundingBox.origin.x;
        y = PathBoundingBox.origin.y;
        width = PathBoundingBox.size.width;
        height = PathBoundingBox.size.height;
      }

      outlined destroy of PathSet.Element(&v79);
    }

    else
    {
      if (!v81 || v81 == 1)
      {
        y = *(&v79 + 1);
        x = *&v79;
        height = *(&v80 + 1);
        width = *&v80;
LABEL_36:
        GraphicsContext.addSDFGradientOvalizationFilter(_:ovalization:bounds:)(a2, a5, x, y, width, height);
        goto LABEL_37;
      }

      x = *(v79 + 16);
      y = *(v79 + 24);
      width = *(v79 + 32);
      height = *(v79 + 40);
      v33 = a5;
      outlined init with copy of PathSet.Element(&v79, v85);
      outlined init with copy of PathSet.Element(&v79, v85);
    }

    a5 = v33;
    goto LABEL_36;
  }

  if (v12)
  {
    GraphicsContext.addSDFGradientFilter(_:)(a2);
    v13 = *v9;

    v14 = RBDrawingStateBeginLayer();
    type metadata accessor for GraphicsContext.Storage();
    v15 = swift_allocObject();
    *(v15 + 32) = xmmword_18DD85500;
    *(v15 + 48) = 1065353216;
    *(v15 + 56) = 0x7FF8000000000000;
    v16 = v13[2];
    v17 = *(v16 + 64);
    if (v17 == RBDrawingStateGetDefaultColorSpace())
    {
      *(v15 + 16) = v16;
    }

    else
    {
      v25 = RBDrawingStateGetDisplayList();
      v26 = v13[4];
      v27 = v26;
      v28 = v13[5];
      if (v26 == 1)
      {
        v27 = *(v16 + 48);
        v28 = *(v16 + 56);
      }

      *v85 = v27;
      *&v85[8] = v28;
      type metadata accessor for GraphicsContext.Storage.Shared();
      swift_allocObject();
      outlined copy of EnvironmentValues?(v26);
      *(v15 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v25, v85);
    }

    *(v15 + 24) = v14;
    *(v15 + 64) = 0;
    *v85 = v15;

    closure #1 in GraphicsContext.drawSDF(of:style:distanceRange:gradient:ovalization:matching:)(v85, v10, 0, 0, v93, v11, a3, a4);

    RBDrawingStateDrawLayer();
  }

  return result;
}

uint64_t SDFStyle.draw(in:sdf:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 60;
  if ((a3 >> 60) <= 4)
  {
    if (v3 <= 1)
    {
      if (v3)
      {
        v37 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *v59 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v59[16] = v37;
        *v60 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v38 = *(a2 + 48);
        *&v53[16] = *(a2 + 32);
        *v54 = v38;
        *&v54[11] = *(a2 + 59);
        v39 = *(a2 + 16);
        v52 = *a2;
        *v53 = v39;
        return SDFStyle.Stroke.draw(in:sdf:)(a1);
      }

      else
      {
        *v59 = *(a3 + 16);
        *&v59[12] = *(a3 + 28);
        v19 = *(a2 + 48);
        *&v53[16] = *(a2 + 32);
        *v54 = v19;
        *&v54[11] = *(a2 + 59);
        v20 = *(a2 + 16);
        v52 = *a2;
        *v53 = v20;
        return SDFStyle.Fill.draw(in:sdf:)(a1);
      }
    }

    if (v3 != 2)
    {
      if (v3 == 3)
      {
        v9 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *v59 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v59[16] = v9;
        *v60 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        *&v60[10] = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x3A);
        v10 = *(a2 + 48);
        *&v53[16] = *(a2 + 32);
        *v54 = v10;
        *&v54[11] = *(a2 + 59);
        v11 = *(a2 + 16);
        v52 = *a2;
        *v53 = v11;
        return SDFStyle.Shadow.draw(in:sdf:)(a1, &v52);
      }

      v31 = *(a2 + 24);
      v32 = *(a2 + 32);
      v33 = *(a2 + 40);
      v34 = *(a2 + 48);
      v35 = *(**((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 104);

      v35(a1, v31, v32, v33, v34);
      goto LABEL_31;
    }

    v21 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v22 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v23 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v24 = *(a2 + 48);
    *&v53[16] = *(a2 + 32);
    *v54 = v24;
    *&v54[11] = *(a2 + 59);
    v25 = *(a2 + 16);
    v52 = *a2;
    *v53 = v25;

    SDFStyle.Gradient.draw(in:sdf:)(a1, &v52, v21, v22, v23);
  }

  else
  {
    if (v3 <= 7)
    {
      if (v3 == 5)
      {
        v27 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *v59 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v59[16] = v27;
        *v60 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v28 = *(a2 + 48);
        *&v53[16] = *(a2 + 32);
        *v54 = v28;
        *&v54[11] = *(a2 + 59);
        v29 = *(a2 + 16);
        v52 = *a2;
        *v53 = v29;
        return SDFStyle.GlassDisplacement.draw(in:sdf:)();
      }

      else if (v3 == 6)
      {
        v4 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        *v60 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        *&v60[16] = v4;
        *&v60[25] = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x49);
        v5 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *v59 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v59[16] = v5;
        v6 = *(a2 + 48);
        *&v53[16] = *(a2 + 32);
        *v54 = v6;
        *&v54[11] = *(a2 + 59);
        v7 = *(a2 + 16);
        v52 = *a2;
        *v53 = v7;
        return SDFStyle.GlassHighlight.draw(in:sdf:)(a1);
      }

      else
      {
        v40 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
        v56 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v57 = v40;
        v58 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
        v41 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        *&v53[16] = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        *v54 = v41;
        v42 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        *&v54[16] = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v55 = v42;
        v43 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v52 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *v53 = v43;
        v44 = *(a2 + 48);
        *v60 = *(a2 + 32);
        *&v60[16] = v44;
        *&v60[27] = *(a2 + 59);
        v45 = *(a2 + 16);
        *v59 = *a2;
        *&v59[16] = v45;
        return Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.draw(in:sdf:)(a1);
      }
    }

    if (v3 == 8)
    {
      v30 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v52 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v53[0] = v30;
      *&v53[8] = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      return SDFStyle.Group.draw(in:sdf:)(a1, a2);
    }

    if (v3 == 9)
    {
      v13 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v14 = a1;

      GraphicsContext.copyOnWrite()();
      v51 = v14;
      v15 = *v14;
      v16 = RBDrawingStateBeginLayer();
      type metadata accessor for GraphicsContext.Storage();
      v17 = swift_allocObject();
      *(v17 + 32) = xmmword_18DD85500;
      *(v17 + 48) = 1065353216;
      *(v17 + 56) = 0x7FF8000000000000;
      v18 = v15[2];
      LODWORD(v14) = *(v18 + 64);
      if (v14 == RBDrawingStateGetDefaultColorSpace())
      {
        *(v17 + 16) = v18;
      }

      else
      {
        v46 = RBDrawingStateGetDisplayList();
        v47 = v15[4];
        v48 = v47;
        v49 = v15[5];
        if (v47 == 1)
        {
          v48 = *(v18 + 48);
          v49 = *(v18 + 56);
        }

        *&v52 = v48;
        *(&v52 + 1) = v49;
        type metadata accessor for GraphicsContext.Storage.Shared();
        swift_allocObject();
        outlined copy of EnvironmentValues?(v47);
        *(v17 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v46, &v52);
      }

      *(v17 + 24) = v16;
      *(v17 + 64) = 0;
      *&v52 = v17;

      SDFStyle.draw(in:sdf:)(&v52, a2, v12);

      RBDrawingStateClipLayer();

      SDFStyle.draw(in:sdf:)(v51, a2, v13);

LABEL_31:
    }

    return specialized static Log.externalWarning(_:)(0xD000000000000018, 0x800000018DD79680);
  }
}

uint64_t SDFStyle.Fill.draw(in:sdf:)(uint64_t a1)
{
  if (*(*(*a1 + 16) + 64) != 2)
  {
    RBColorFromLinear();
  }

  GraphicsContext.copyOnWrite()();
  RBDrawingStateAddStyle();
  GraphicsContext.copyOnWrite()();
  return RBDrawingStateDrawLayerByReference();
}

uint64_t SDFStyle.Stroke.draw(in:sdf:)(uint64_t a1)
{
  if (*(*(*a1 + 16) + 64) != 2)
  {
    RBColorFromLinear();
  }

  GraphicsContext.copyOnWrite()();
  RBDrawingStateAddStyle();
  GraphicsContext.copyOnWrite()();
  return RBDrawingStateDrawLayerByReference();
}

uint64_t SDFStyle.Gradient.draw(in:sdf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v6 = *(a3 + 16);
  }

  else
  {
    v6 = *(a4 + 16);
  }

  if (v6)
  {
    if (v6 > 0x7FFFFFFFFFFFFFELL)
    {
      __break(1u);
    }

    v10 = result;
    if ((16 * (v6 + 1)) <= 1024 || (v14 = v6 + 1, v15 = v6, result = swift_stdlib_isStackAllocationSafe(), result))
    {
      MEMORY[0x1EEE9AC00](result);
      closure #1 in SDFStyle.Gradient.draw(in:sdf:)(v17 - v11, v12, v13, a3, a4, a5, a2, v10);
    }

    else
    {
      v16 = swift_slowAlloc();
      closure #1 in SDFStyle.Gradient.draw(in:sdf:)(v16, v14, v15, a3, a4, a5, a2, v10);
      MEMORY[0x193AC4820](v16, -1, -1);
    }

    GraphicsContext.copyOnWrite()();
    return RBDrawingStateDrawLayerByReference();
  }

  return result;
}

uint64_t SDFStyle.Shadow.draw(in:sdf:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v32 = *MEMORY[0x1E69E9840];
  if (*(v3 + 56))
  {
    outlined init with copy of SDF(a2, v24);
    specialized GraphicsContext.clipToLayer(opacity:options:content:)(1, a1, v3);
    outlined destroy of SDF(a2);
  }

  if (*(v3 + 40) != 0.0 || *(v3 + 48) != 0.0)
  {
    GraphicsContext.copyOnWrite()();
    RBDrawingStateTranslateCTM();
  }

  v6 = *(v3 + 8);
  v7 = *(v3 + 12);
  v8 = *(v3 + 16);
  v9 = *(v3 + 20);
  v10 = *(v3 + 24);
  v11 = *a1;
  v12 = *(*(*a1 + 16) + 64);
  if (v12 != 2)
  {
    RBColorFromLinear();
    v12 = *(*(v11 + 16) + 64);
  }

  v22[0] = v6;
  v22[1] = v7;
  v22[2] = v8;
  v22[3] = v9;
  v23 = *MEMORY[0x1E69C7130];
  _Q1.f64[0] = -*v3;
  v14.f64[0] = *(v3 + 32) * 3.0;
  _Q1.f64[1] = v14.f64[0];
  v14.f64[1] = *v3;
  v15 = vcvt_f32_f64(vmulq_n_f64(vsubq_f64(vdupq_lane_s64(*(a2 + 16), 0), vsubq_f64(_Q1, v14)), 1.0 / (*(a2 + 16) - *(a2 + 8))));
  __asm { FMOV            V1.2S, #1.0 }

  v21 = vcvtq_f64_f32(vsub_f32(*&_Q1.f64[0], v15));
  v24[0] = 0;
  v25 = 1065353216;
  v26 = 2;
  v27 = v22;
  v28 = v12;
  v29 = v10;
  v30 = &v21;
  v31 = 1024;
  GraphicsContext.copyOnWrite()();
  RBDrawingStateAddStyle();
  GraphicsContext.copyOnWrite()();
  return RBDrawingStateDrawLayerByReference();
}

uint64_t SDFStyle.GlassDisplacement.draw(in:sdf:)()
{
  GraphicsContext.copyOnWrite()();
  RBDrawingStateAddStyle();
  GraphicsContext.copyOnWrite()();
  return RBDrawingStateDrawLayerByReference();
}

uint64_t SDFStyle.GlassHighlight.draw(in:sdf:)(uint64_t a1)
{
  if (*(*(*a1 + 16) + 64) != 2)
  {
    RBColorFromLinear();
  }

  GraphicsContext.copyOnWrite()();
  RBDrawingStateAddStyle();
  GraphicsContext.copyOnWrite()();
  return RBDrawingStateDrawLayerByReference();
}

uint64_t Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.draw(in:sdf:)(uint64_t *a1)
{
  if (*(*(*a1 + 16) + 64) != 2)
  {
    RBColorFromLinear();
  }

  GraphicsContext.copyOnWrite()();
  v2 = *a1;
  RBDrawingStateInit();
  RBDrawingStateAddStyle();
  RBDrawingStateDrawLayerByReference();
  RBDrawingStateDestroy();
  if (*(*(v2 + 16) + 64) != 2)
  {
    RBColorFromLinear();
  }

  GraphicsContext.copyOnWrite()();
  RBDrawingStateInit();
  RBDrawingStateAddStyle();
  RBDrawingStateDrawLayerByReference();
  return RBDrawingStateDestroy();
}

uint64_t SDFStyle.Group.draw(in:sdf:)(uint64_t result, uint64_t a2)
{
  v3 = a2;
  v91 = result;
  v4 = *(v2 + 16);
  v118 = *v2;
  v119 = v4;
  v120 = *(v2 + 32);
  *&v83 = *(&v118 + 1);
  *(&v83 + 1) = v118;
  v5 = v4;
  v6 = v4 >> 6;
  if (!v6)
  {
    goto LABEL_4;
  }

  if (v6 == 1)
  {
    if ((v118 & 0x10000000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_4;
  }

  if (v83 != 0 || v4 != 128)
  {
    v19 = v118 == 1 && *(&v118 + 1) == 0;
    if (!v19 || v4 != 128)
    {
      if (v118 == 2 && v4 == 128)
      {
        if (!*(a2 + 56))
        {
          return result;
        }

        goto LABEL_31;
      }

LABEL_4:
      v7 = *(v2 + 16);
      __dst = *v2;
      v114 = v7;
      *&v115 = *(v2 + 32);
      v8 = -SDFStyle.Group.margin.getter();
      v123 = CGRectInset(*(v3 + 24), v8, v8);
      x = v123.origin.x;
      y = v123.origin.y;
      width = v123.size.width;
      height = v123.size.height;
      IsNull = CGRectIsNull(v123);
      if (IsNull)
      {
        v14 = 0;
      }

      else
      {
        v14 = *&x;
      }

      if (IsNull)
      {
        v15 = 0;
      }

      else
      {
        v15 = *&y;
      }

      if (IsNull)
      {
        v16 = 0;
      }

      else
      {
        v16 = *&width;
      }

      if (IsNull)
      {
        v17 = 0;
      }

      else
      {
        v17 = *&height;
      }

      *&v121[0] = v14;
      *&v121[1] = v15;
      if (IsNull)
      {
        v18 = 6;
      }

      else
      {
        v18 = 0;
      }

      *&v121[2] = v16;
      *&v121[3] = v17;
      v122 = v18;
      GraphicsContext.clip(to:style:options:)(v121, 0);
      outlined consume of Path.Storage(v14, v15, v16, v17, v18);
    }
  }

LABEL_31:
  v82 = v5;
  v20 = MEMORY[0x1E69E7CC0];
  v117 = MEMORY[0x1E69E7CC0];
  v21 = v120;
  v22 = *(v120 + 16);
  if (v22)
  {
    v23 = v120 + 32;
    v24 = v91;
    v84 = v3;
    v86 = v120;
    v92 = v120 + 32;
    while (1)
    {
      v25 = (v23 + (--v22 << 7));
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[3];
      v108 = v25[2];
      v109 = v28;
      v106 = v26;
      v107 = v27;
      v29 = v25[4];
      v30 = v25[5];
      v31 = v25[6];
      *(v112 + 12) = *(v25 + 108);
      v111 = v30;
      v112[0] = v31;
      v110 = v29;
      memmove(&__dst, v25, 0x7CuLL);
      v32 = _s7SwiftUI14GraphicsFilterOWOg(&__dst);
      switch(v32)
      {
        case 1:
          v58 = _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
          if (*(v58 + 120) >> 30 == 1)
          {
            v59 = *(v58 + 16);
            if ((v59 & 0x8000000000000000) == 0)
            {
              if (*(v58 + 8))
              {
                v60 = 3;
              }

              else
              {
                v60 = 2;
              }

              if (*(v58 + 9))
              {
                v61 = v60;
              }

              else
              {
                v61 = *(v58 + 8);
              }

              outlined init with copy of GraphicsFilter(&v106, &v99);
              outlined init with copy of SDFStyle.Group(&v118, &v99);
              specialized GraphicsContext.addVariableBlurLayer(radius:options:content:)(v61, v24, &v118, v59, v3);
              outlined destroy of SDFStyle.Group(&v118);
              v62 = *(v20 + 2);
              v63 = 32;
              while (v62)
              {
                v64 = *&v20[v63];
                v63 += 8;
                --v62;
                if (v64 == v59)
                {
                  outlined destroy of GraphicsFilter(&v106);
                  goto LABEL_93;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
              }

              v68 = *(v20 + 2);
              v67 = *(v20 + 3);
              if (v68 >= v67 >> 1)
              {
                v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v20);
              }

              outlined destroy of GraphicsFilter(&v106);
              *(v20 + 2) = v68 + 1;
              *&v20[8 * v68 + 32] = v59;
              v117 = v20;
              goto LABEL_93;
            }
          }

          break;
        case 3:
          v53 = _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
          if (*(v53 + 112) >> 30 == 1)
          {
            v54 = *(v53 + 8);
            if ((v54 & 0x8000000000000000) == 0)
            {
              v55 = *(v20 + 2);
              v56 = 32;
              while (v55)
              {
                v57 = *&v20[v56];
                v56 += 8;
                --v55;
                if (v57 == v54)
                {
                  goto LABEL_93;
                }
              }

              outlined init with copy of GraphicsFilter(&v106, &v99);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
              }

              v66 = *(v20 + 2);
              v65 = *(v20 + 3);
              if (v66 >= v65 >> 1)
              {
                v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v20);
              }

              outlined destroy of GraphicsFilter(&v106);
              *(v20 + 2) = v66 + 1;
              *&v20[8 * v66 + 32] = v54;
              v117 = v20;
            }
          }

          goto LABEL_93;
        case 2:
          v33 = _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
          if (*(v33 + 112) >> 30 != 1 || (v34 = v33, v35 = *(v33 + 8), (v35 & 0x8000000000000000) != 0))
          {
            v103 = v110;
            v104 = v111;
            v105[0] = v112[0];
            *(v105 + 12) = *(v112 + 12);
            v99 = v106;
            v100 = v107;
            v101 = v108;
            v102 = v109;
            GraphicsContext.addFilter(_:in:)(&v99, *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48));
          }

          else
          {
            v103 = v110;
            v104 = v111;
            v105[0] = v112[0];
            *(v105 + 12) = *(v112 + 12);
            v99 = v106;
            v100 = v107;
            v101 = v108;
            v102 = v109;
            v36 = _s7SwiftUI14GraphicsFilterOWOj6_(&v99);
            outlined init with copy of GraphicsFilter.DisplacementMap(v36, &v94);
            if (one-time initialization token for system != -1)
            {
              swift_once();
            }

            v37 = static ShaderLibrary.system;
            type metadata accessor for _ContiguousArrayStorage<Shader.Argument>();
            v38 = swift_allocObject();
            *(v38 + 16) = xmmword_18DDA6EB0;
            v39 = *v34;
            *&v40 = *v34;
            *(v38 + 32) = v40;
            *(v38 + 40) = 0;
            *(v38 + 48) = 0;
            *(v38 + 52) = 0;
            v41 = *v24;
            v42 = *(*v24 + 32);
            v43 = v42;
            v44 = *(*v24 + 40);
            if (v42 == 1)
            {
              v45 = *(v41 + 16);
              v43 = *(v45 + 48);
              v44 = *(v45 + 56);
            }

            v94 = v37;
            v95 = 0x6563616C70736964;
            v96 = 0xEF70614D746E656DLL;
            v97 = v38;
            v98 = 0;
            v93[0] = v43;
            v93[1] = v44;
            v46 = v37;
            outlined copy of EnvironmentValues?(v42);
            v47 = Shader.makeRBShader(in:)(v93);
            outlined consume of EnvironmentValues?(v93[0]);
            if (v47)
            {
              v89 = v46;
              v87 = v47;
              v88 = v47;
              GraphicsContext.copyOnWrite()();
              v48 = *v91;
              v49 = RBDrawingStateBeginLayer();
              type metadata accessor for GraphicsContext.Storage();
              v50 = swift_allocObject();
              *(v50 + 32) = xmmword_18DD85500;
              *(v50 + 48) = 1065353216;
              *(v50 + 56) = 0x7FF8000000000000;
              v51 = v48[2];
              v52 = *(v51 + 64);
              v90 = v49;
              if (v52 == RBDrawingStateGetDefaultColorSpace())
              {
                *(v50 + 16) = v51;
              }

              else
              {
                v69 = RBDrawingStateGetDisplayList();
                v71 = v48[4];
                v70 = v48[5];
                v72 = v71;
                v85 = v69;
                if (v71 == 1)
                {
                  v72 = *(v51 + 48);
                  v70 = *(v51 + 56);
                }

                v94 = v72;
                v95 = v70;
                type metadata accessor for GraphicsContext.Storage.Shared();
                swift_allocObject();
                outlined copy of EnvironmentValues?(v71);
                *(v50 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v85, &v94);
                v3 = v84;
                v49 = v90;
              }

              *(v50 + 24) = v49;
              *(v50 + 64) = 0;
              v93[0] = v50;
              if (v35 >= *(*(&v119 + 1) + 16))
              {
              }

              else
              {
                v73 = *(*(&v119 + 1) + 56 * v35 + 32);

                SDFStyle.draw(in:sdf:)(v93, v3, v73);
              }

              v94 = v87;
              v95 = *&v39;
              v96 = *&v39;
              LODWORD(v97) = 0;
              Shader.ResolvedShader.rbFilterFlags.getter();
              RBDrawingStateAddShaderFilterLayer();

              v46 = v89;
            }

            v74 = *(v20 + 2);
            v75 = 32;
            v24 = v91;
            while (v74)
            {
              v76 = *&v20[v75];
              v75 += 8;
              --v74;
              if (v76 == v35)
              {

                outlined destroy of GraphicsFilter(&v106);
                goto LABEL_91;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
            }

            v78 = *(v20 + 2);
            v77 = *(v20 + 3);
            if (v78 >= v77 >> 1)
            {
              v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1, v20);
            }

            outlined destroy of GraphicsFilter(&v106);
            *(v20 + 2) = v78 + 1;
            *&v20[8 * v78 + 32] = v35;
            v117 = v20;
LABEL_91:
            v21 = v86;
          }

          v23 = v92;
          goto LABEL_93;
      }

      v103 = v110;
      v104 = v111;
      v105[0] = v112[0];
      *(v105 + 12) = *(v112 + 12);
      v99 = v106;
      v100 = v107;
      v101 = v108;
      v102 = v109;
      GraphicsContext.addFilter(_:in:)(&v99, *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48));
LABEL_93:
      if (!v22)
      {
        goto LABEL_97;
      }

      if (v22 > *(v21 + 16))
      {
        __break(1u);
        break;
      }
    }
  }

  v24 = v91;
LABEL_97:
  *&v99 = *(&v119 + 1);
  v79 = *(v20 + 2);

  if (v79)
  {
    specialized MutableCollection<>.sort(by:)(&v117);
    v80 = v117;
    v81 = *(v117 + 2);
    if (v81)
    {
      while (1)
      {
        specialized Array.remove(at:)(*&v80[8 * v81 + 24], &v106);
        __dst = v106;
        v114 = v107;
        v115 = v108;
        v116 = v109;
        outlined destroy of Material.Layer.SDFLayer.GroupLayer(&__dst);
        if (!--v81)
        {
          break;
        }

        if (v81 > *(v80 + 2))
        {
          __break(1u);
          break;
        }
      }
    }
  }

  if ((v82 & 0x80) != 0)
  {
    if (v83 == 0 && v82 == 128)
    {

      specialized static SDFStyle.Group.drawElements(_:in:sdf:)(v99, v24, v3);
    }

    if (v83 == __PAIR128__(1, 0) && v82 == 128)
    {
      specialized GraphicsContext.drawLayer(flags:content:)(128, *v24, &v99, v3);
      goto LABEL_104;
    }

    if (v83 == __PAIR128__(2, 0) && v82 == 128)
    {
      specialized GraphicsContext.drawLayer(flags:content:)(0, *v24, v3);
      goto LABEL_104;
    }
  }

  specialized GraphicsContext.drawLayer(flags:content:)(1, *v24, &v99, v3);
LABEL_104:
}

uint64_t closure #1 in SDFStyle.Gradient.draw(in:sdf:)(uint64_t isStackAllocationSafe, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = *MEMORY[0x1E69E9840];
  v45 = 0.0;
  v46 = 1;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v9 = a8;
  v12 = a6;
  v15 = a4;
  v11 = a3;
  v10 = isStackAllocationSafe;
  v43 = a5;
  v41[1] = a2;
  v42 = a7;
  if (a3)
  {
    if (*(a4 + 16) < a3)
    {
      __break(1u);
      goto LABEL_53;
    }

    v8 = (a4 + 48);
    v18 = (isStackAllocationSafe + 8);
    LOBYTE(v16) = 1;
    v17 = 0.0;
    v14 = a3;
    do
    {
      isStackAllocationSafe = RBColorFromLinear();
      *(v18 - 2) = v19;
      *(v18 - 1) = v20;
      *v18 = v21;
      v18[1] = v22;
      v23 = *v8;
      if (v16)
      {
        v45 = *v8;
        v17 = v23;
        v16 = 0;
      }

      else
      {
        v16 = 0;
        if (v17 <= v23)
        {
          v17 = *v8;
        }

        v45 = v17;
      }

      v8 += 5;
      v18 += 4;
      --v14;
    }

    while (v14);
    v46 = 0;
  }

  else
  {
    v17 = 0.0;
  }

  *(v10 + 16 * v11) = *MEMORY[0x1E69C7130];
  v13 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    goto LABEL_48;
  }

  v14 = *(v12 + 16);
  v16 = v11 + 1;
  if (v14)
  {
    if (!(v11 >> 61))
    {
      v16 = v13 + 4 * v11;
      if (!__OFADD__(v13, 4 * v11))
      {
        goto LABEL_17;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_17:
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  if (v16 >> 60)
  {
    goto LABEL_56;
  }

  v8 = (8 * v16);
  if ((8 * v16) > 1024)
  {
    goto LABEL_49;
  }

  do
  {
    v15 = v41;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v25 = v41 - v24;
    v26 = 5;
    if (!v14)
    {
      v26 = 1;
    }

    if (v11)
    {
      v27 = 0;
      v28 = 0;
      v29 = *(v42 + 16);
      v30 = 1.0 / (v29 - *(v42 + 8));
      v31 = v43 + 32;
      v32 = *(v43 + 16);
      while (v32 != v28)
      {
        v33 = v30 * (v29 - *(v31 + 8 * v28));
        *&v25[8 * v27] = (1.0 - v33);
        if (v14)
        {
          v34 = xmmword_18DDBDEB0;
          if (v28 < v14)
          {
            v34 = *(v12 + 32 + 16 * v28);
          }

          if (__OFADD__(v27, 1))
          {
            goto LABEL_43;
          }

          *&v25[8 * v27 + 8] = 1.0 - *&v34;
          if (__OFADD__(v27, 2))
          {
            goto LABEL_44;
          }

          *&v25[8 * v27 + 16] = 1.0 - *(&v34 + 1);
          if (__OFADD__(v27, 3))
          {
            goto LABEL_45;
          }

          *&v25[8 * v27 + 24] = 1.0 - *(&v34 + 2);
          if (__OFADD__(v27, 4))
          {
            goto LABEL_46;
          }

          *&v25[8 * v27 + 32] = 1.0 - *(&v34 + 3);
        }

        v35 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          goto LABEL_42;
        }

        ++v28;
        v27 += v26;
        if (v11 == v28)
        {
          v36 = __OFSUB__(v35, v26);
          v37 = v35 - v26;
          if (v36)
          {
            goto LABEL_40;
          }

          goto LABEL_36;
        }
      }
    }

    else
    {
      v35 = 0;
      v36 = __OFSUB__(0, v26);
      v37 = -v26;
      if (!v36)
      {
LABEL_36:
        *&v25[8 * v35] = *&v25[8 * v37];
        if (v10)
        {
          v38 = *(*(*v9 + 16) + 64);
          v47 = 0;
          v48 = 1065353216;
          v49 = v13;
          v50 = v10;
          v51 = v38;
          v52 = v17;
          v53 = v25;
          v54 = (v14 != 0) << 9;
          GraphicsContext.copyOnWrite()();
          return RBDrawingStateAddStyle();
        }

        __break(1u);
        goto LABEL_58;
      }

LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
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
    __break(1u);
LABEL_49:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while (isStackAllocationSafe);
  v13 = swift_slowAlloc();
  v40 = v44;
  closure #1 in closure #1 in SDFStyle.Gradient.draw(in:sdf:)(v13, v16, v14 != 0, v11, v42, v15, v43, v12, v10);
  v8 = v40;
  if (!v40)
  {
    return MEMORY[0x193AC4820](v13, -1, -1);
  }

LABEL_58:

  result = MEMORY[0x193AC4820](v13, -1, -1);
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in SDFStyle.Gradient.draw(in:sdf:)(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = 5;
  if ((a3 & 1) == 0)
  {
    v9 = 1;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!a4)
  {
    v16 = 0;
    v17 = __OFSUB__(0, v9);
    v18 = -v9;
    if (!v17)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  if (*(a7 + 16) < a4)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v10 = 0;
  v11 = 0;
  v12 = *(a5 + 16);
  v13 = 1.0 / (v12 - *(a5 + 8));
  do
  {
    v14 = v13 * (v12 - *(a7 + 32 + 8 * v11));
    *(a1 + 8 * v10) = (1.0 - v14);
    if (a3)
    {
      v15 = xmmword_18DDBDEB0;
      if (v11 < *(a8 + 16))
      {
        v15 = *(a8 + 32 + 16 * v11);
      }

      if (__OFADD__(v10, 1))
      {
        goto LABEL_26;
      }

      *(a1 + 8 * (v10 + 1)) = 1.0 - *&v15;
      if (__OFADD__(v10, 2))
      {
        goto LABEL_27;
      }

      *(a1 + 8 * (v10 + 2)) = 1.0 - *(&v15 + 1);
      if (__OFADD__(v10, 3))
      {
        goto LABEL_28;
      }

      *(a1 + 8 * (v10 + 3)) = 1.0 - *(&v15 + 2);
      if (__OFADD__(v10, 4))
      {
        goto LABEL_29;
      }

      *(a1 + 8 * (v10 + 4)) = 1.0 - *(&v15 + 3);
    }

    v16 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      goto LABEL_25;
    }

    ++v11;
    v10 += v9;
  }

  while (a4 != v11);
  v17 = __OFSUB__(v16, v9);
  v18 = v16 - v9;
  if (v17)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_18:
  *(a1 + 8 * v16) = *(a1 + 8 * v18);
  if (__OFADD__(a4, 1))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!a9)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  if (!a1)
  {
    goto LABEL_34;
  }

  GraphicsContext.copyOnWrite()();
  return RBDrawingStateAddStyle();
}

void specialized static SDFStyle.Group.drawElements(_:in:sdf:)(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v142 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for Logger();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *a2;
    v12 = a1 + 32;
    v102 = (v7 + 16);
    v100 = "distanceGradient";
    v101 = (v7 + 8);
    v105 = xmmword_18DD85500;
    v99 = 0x8220102uLL;
    v103 = a3;
    v104 = v6;
    v106 = v11;
    v107 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      v18 = *(v12 + 16);
      v129[0] = *v12;
      v129[1] = v18;
      v129[2] = *(v12 + 32);
      v130 = *(v12 + 48);
      v19 = v18;
      v111 = v11;
      if (*(v11 + 48) == *&v18)
      {
        outlined init with copy of Material.Layer.SDFLayer.GroupLayer(v129, &v118);

        v20 = v11;
      }

      else
      {
        outlined init with copy of Material.Layer.SDFLayer.GroupLayer(v129, &v118);

        GraphicsContext.copyOnWrite()();
        v20 = v111;
        *(v111 + 48) = v19;
      }

      v21 = DWORD2(v129[0]);
      v22 = *&v129[0];
      if (*(&v129[0] + 1) >> 62)
      {
        break;
      }

      if (*(v20 + 52) != DWORD2(v129[0]))
      {
        v23 = v10;
        v24 = v11;
        v25 = a3;
        v26 = v9;
        v27 = v6;
        v28 = *&v129[0];
        GraphicsContext.copyOnWrite()();
        v22 = v28;
        v6 = v27;
        v9 = v26;
        a3 = v25;
        v11 = v24;
        v10 = v23;
        *(v111 + 52) = v21;
      }

      v29 = v22 >> 60;
      if ((v22 >> 60) <= 4)
      {
        if (v29 <= 1)
        {
          if (v29)
          {
            v70 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v112[2] = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v112[3] = v70;
            v113 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            v71 = a3[3];
            v134[4] = a3[2];
            v135[0] = v71;
            *(v135 + 11) = *(a3 + 59);
            v72 = a3[1];
            v134[2] = *a3;
            v134[3] = v72;
            SDFStyle.Stroke.draw(in:sdf:)(&v111);
          }

          else
          {
            v112[0] = *(v22 + 16);
            *(v112 + 12) = *(v22 + 28);
            v56 = a3[2];
            v57 = a3[3];
            v58 = *a3;
            v132 = a3[1];
            v133 = v56;
            v134[0] = v57;
            *(v134 + 11) = *(a3 + 59);
            v131 = v58;
            SDFStyle.Fill.draw(in:sdf:)(&v111);
          }
        }

        else if (v29 == 2)
        {
          v13 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v14 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v15 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v16 = a3[3];
          v136[2] = a3[2];
          v137[0] = v16;
          *(v137 + 11) = *(a3 + 59);
          v17 = a3[1];
          v136[0] = *a3;
          v136[1] = v17;

          SDFStyle.Gradient.draw(in:sdf:)(&v111, v136, v13, v14, v15);
        }

        else if (v29 == 3)
        {
          v45 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v114 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v115 = v45;
          v116[0] = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          *(v116 + 10) = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x3A);
          v46 = a3[2];
          v47 = a3[3];
          v48 = *a3;
          v138[1] = a3[1];
          v138[2] = v46;
          v139[0] = v47;
          *(v139 + 11) = *(a3 + 59);
          v138[0] = v48;
          SDFStyle.Shadow.draw(in:sdf:)(&v111, v138);
        }

        else
        {
          v65 = *(a3 + 3);
          v66 = *(a3 + 4);
          v67 = *(a3 + 5);
          v68 = *(a3 + 6);
          v69 = *(**((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 104);

          v69(&v111, v65, v66, v67, v68);
        }
      }

      else if (v29 > 7)
      {
        if (v29 != 8)
        {
          if (v29 != 9)
          {
            if (one-time initialization token for unlocatedIssuesLog != -1)
            {
              swift_once();
            }

            v78 = __swift_project_value_buffer(v6, static Log.unlocatedIssuesLog);
            swift_beginAccess();
            (*v102)(v9, v78, v6);
            v79 = Logger.logObject.getter();
            v80 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              *&v118 = v82;
              *v81 = v99;
              *(v81 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, v100 | 0x8000000000000000, &v118);
              _os_log_impl(&dword_18D018000, v79, v80, "%{public}s", v81, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v82);
              v83 = v82;
              v6 = v104;
              MEMORY[0x193AC4820](v83, -1, -1);
              MEMORY[0x193AC4820](v81, -1, -1);
            }

            (*v101)(v9, v6);
            outlined destroy of Material.Layer.SDFLayer.GroupLayer(v129);
            goto LABEL_5;
          }

          v109 = v12;
          v110 = v10;
          v50 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v49 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

          GraphicsContext.copyOnWrite()();
          v51 = v111;
          v52 = RBDrawingStateBeginLayer();
          type metadata accessor for GraphicsContext.Storage();
          v53 = swift_allocObject();
          *(v53 + 32) = v105;
          *(v53 + 48) = 1065353216;
          *(v53 + 56) = 0x7FF8000000000000;
          v54 = v51[2];
          v55 = *(v54 + 64);
          if (v55 == RBDrawingStateGetDefaultColorSpace())
          {
            *(v53 + 16) = v54;
          }

          else
          {
            v98 = RBDrawingStateGetDisplayList();
            v84 = v51[4];
            v85 = v84;
            v108 = v51[5];
            if (v84 == 1)
            {
              v85 = *(v54 + 48);
              v108 = *(v54 + 56);
            }

            v97 = v85;
            type metadata accessor for GraphicsContext.Storage.Shared();
            v86 = swift_allocObject();
            *(v86 + 24) = 0;
            v87 = objc_allocWithZone(MEMORY[0x1E69C7100]);
            outlined copy of EnvironmentValues?(v84);
            *(v86 + 32) = [v87 init];
            *(v86 + 40) = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
            *(v86 + 72) = 0;
            _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOi0_(&v118);
            v88 = v126;
            *(v86 + 208) = v125;
            *(v86 + 224) = v88;
            *(v86 + 240) = v127;
            v89 = v122;
            *(v86 + 144) = v121;
            *(v86 + 160) = v89;
            v90 = v124;
            *(v86 + 176) = v123;
            *(v86 + 192) = v90;
            v91 = v119[0];
            *(v86 + 80) = v118;
            *(v86 + 96) = v91;
            v92 = v120;
            *(v86 + 112) = v119[1];
            *(v86 + 128) = v92;
            *(v86 + 248) = 2;
            *(v86 + 264) = 0;
            *(v86 + 272) = 0;
            *(v86 + 256) = 0;
            v94 = v97;
            v93 = v98;
            *(v86 + 16) = v98;
            v95 = v108;
            *(v86 + 48) = v94;
            *(v86 + 56) = v95;
            *(v86 + 64) = [v93 defaultColorSpace];
            *(v53 + 16) = v86;
            v6 = v104;
          }

          *(v53 + 24) = v52;
          *(v53 + 64) = 0;
          *&v118 = v53;

          v96 = v103;
          SDFStyle.draw(in:sdf:)(&v118, v103, v49);

          a3 = v96;
          RBDrawingStateClipLayer();

          SDFStyle.draw(in:sdf:)(&v111, v96, v50);

          goto LABEL_25;
        }

        v64 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v118 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        LOBYTE(v119[0]) = v64;
        *(v119 + 8) = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        SDFStyle.Group.draw(in:sdf:)(&v111, a3);
      }

      else
      {
        if (v29 == 5)
        {
          if (*(a3 + 72) == 2)
          {
            v59 = 4;
          }

          else
          {
            v59 = 2;
          }

          if (!*(a3 + 73))
          {
            v59 = 0;
          }

          v60 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v61 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v62 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v63 = vcvt_f32_f64(*((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x18));
          LOBYTE(v118) = 0;
          BYTE1(v118) = v59;
          *(&v118 + 4) = vrev64_s32(vcvt_f32_f64(*(a3 + 8)));
          *(&v118 + 3) = -v60;
          *&v119[0] = v63;
          *(v119 + 2) = v61;
          *(v119 + 3) = -v62;
          GraphicsContext.copyOnWrite()();
          RBDrawingStateAddStyle();
          GraphicsContext.copyOnWrite()();
          RBDrawingStateDrawLayerByReference();
          outlined destroy of Material.Layer.SDFLayer.GroupLayer(v129);
          v6 = v104;
          goto LABEL_5;
        }

        if (v29 == 6)
        {
          v30 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v116[4] = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v117[0] = v30;
          *(v117 + 9) = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x49);
          v31 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v116[2] = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v116[3] = v31;
          v32 = a3[3];
          v139[4] = a3[2];
          v140[0] = v32;
          *(v140 + 11) = *(a3 + 59);
          v33 = a3[1];
          v139[2] = *a3;
          v139[3] = v33;
          SDFStyle.GlassHighlight.draw(in:sdf:)(&v111);
        }

        else
        {
          v73 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
          v122 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
          v123 = v73;
          v124 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
          *&v125 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
          v74 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v119[0] = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v119[1] = v74;
          v75 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v120 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v121 = v75;
          v118 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v76 = a3[3];
          v140[4] = a3[2];
          v141[0] = v76;
          *(v141 + 11) = *(a3 + 59);
          v77 = a3[1];
          v140[2] = *a3;
          v140[3] = v77;
          Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.draw(in:sdf:)(&v111);
        }
      }

      outlined destroy of Material.Layer.SDFLayer.GroupLayer(v129);
LABEL_5:

      v12 += 56;
      if (!--v10)
      {
        return;
      }
    }

    v108 = *&v129[0];
    v109 = v12;
    v110 = v10;
    v34 = *((*(&v129[0] + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v119[0] = *((*(&v129[0] + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v119[1] = v34;
    v35 = *((*(&v129[0] + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
    v120 = *((*(&v129[0] + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    v121 = v35;
    v118 = *((*(&v129[0] + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (*(v20 + 52) != 17)
    {
      GraphicsContext.copyOnWrite()();
      *(v111 + 52) = 17;
    }

    outlined init with copy of Material.Layer.SDFLayer.GroupLayer(v129, v128);
    GraphicsContext.copyOnWrite()();
    v36 = v111;
    v37 = RBDrawingStateBeginLayer();
    type metadata accessor for GraphicsContext.Storage();
    v38 = swift_allocObject();
    *(v38 + 32) = v105;
    *(v38 + 48) = 1065353216;
    *(v38 + 56) = 0x7FF8000000000000;
    v39 = v36[2];
    v40 = *(v39 + 64);
    if (v40 == RBDrawingStateGetDefaultColorSpace())
    {
      *(v38 + 16) = v39;
    }

    else
    {
      v41 = RBDrawingStateGetDisplayList();
      v42 = v36[4];
      v43 = v42;
      v44 = v36[5];
      if (v42 == 1)
      {
        v43 = *(v39 + 48);
        v44 = *(v39 + 56);
      }

      *&v128[0] = v43;
      *(&v128[0] + 1) = v44;
      type metadata accessor for GraphicsContext.Storage.Shared();
      swift_allocObject();
      outlined copy of EnvironmentValues?(v42);
      *(v38 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v41, v128);
      a3 = v103;
      v6 = v104;
    }

    *(v38 + 24) = v37;
    *(v38 + 64) = 0;
    *&v128[0] = v38;

    SDFStyle.draw(in:sdf:)(v128, a3, v108);

    RBDrawingStateClipLayer();

    outlined destroy of Material.Layer.SDFLayer.GroupLayer(v129);
    v128[2] = v119[1];
    v128[3] = v120;
    v128[4] = v121;
    v128[0] = v118;
    v128[1] = v119[0];
    GraphicsContext.copyOnWrite()();
    RBDrawingStateAddColorMatrixFilter();
    RBDrawingStateBeginLayer();
    RBDrawingStateDrawLayer();
LABEL_25:
    outlined destroy of Material.Layer.SDFLayer.GroupLayer(v129);
    v11 = v106;
    v9 = v107;
    v12 = v109;
    v10 = v110;
    goto LABEL_5;
  }
}

uint64_t specialized GraphicsContext.drawSDFStyle<A>(_:ovalization:renderer:bounds:content:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, float a8, double a9)
{
  v10 = a1;
  v12 = *a6;
  v11 = *(a6 + 8);
  v14 = *(a6 + 16);
  v13 = *(a6 + 24);
  v102 = a2;
  v103 = a9;
  if (a1 >> 60 || *(a1 + 16) != 0.0)
  {
    if (*(a6 + 32))
    {
      v12 = *MEMORY[0x1E695F050];
      v11 = *(MEMORY[0x1E695F050] + 8);
      v14 = *(MEMORY[0x1E695F050] + 16);
      v13 = *(MEMORY[0x1E695F050] + 24);
      v19 = *(a7 + 16);
      if (v19)
      {
        v20 = (a7 + 64);
        v69 = *(MEMORY[0x1E695F050] + 24);
        v70 = *(MEMORY[0x1E695F050] + 16);
        v71 = *(MEMORY[0x1E695F050] + 8);
        v72 = *MEMORY[0x1E695F050];
        do
        {
          v25 = *(v20 - 4);
          v26 = *(v20 - 3);
          v27 = *(v20 - 2);
          v28 = *(v20 - 1);
          v29 = *v20;
          if (v29 > 2)
          {
            if (v29 == 5)
            {
              if (*(v25 + 16))
              {
                if (*(v25 + 16) == 1)
                {
                  outlined copy of Path.Storage(*(v20 - 4), *(v20 - 3), *(v20 - 2), *(v20 - 1), 5u);
                  v10 = a1;
                  RBPathGetBoundingRect();
                }

                else
                {
                  outlined copy of Path.Storage(*(v20 - 4), *(v20 - 3), *(v20 - 2), *(v20 - 1), 5u);
                  v34 = MEMORY[0x193AC3640](v25 + 24);
                }

                v21 = v34;
                v22 = v35;
                v23 = v36;
                v24 = v37;
              }

              else
              {
                v38 = *(v25 + 24);
                if (!v38)
                {
                  goto LABEL_50;
                }

                v39 = v38;
                outlined copy of Path.Storage(v25, v26, v27, v28, 5u);
                outlined copy of Path.Storage(v25, v26, v27, v28, 5u);
                PathBoundingBox = CGPathGetPathBoundingBox(v39);
                x = PathBoundingBox.origin.x;
                y = PathBoundingBox.origin.y;
                width = PathBoundingBox.size.width;
                height = PathBoundingBox.size.height;

                outlined consume of Path.Storage(v25, v26, v27, v28, 5u);
                v24 = height;
                v23 = width;
                v22 = y;
                v21 = x;
              }
            }

            else
            {
              v22 = v71;
              v21 = v72;
              v24 = v69;
              v23 = v70;
              if (v29 != 6)
              {
                goto LABEL_51;
              }
            }
          }

          else if (v29 < 2)
          {
            v21 = *(v20 - 4);
            v22 = *(v20 - 3);
            v23 = *(v20 - 2);
            v24 = *(v20 - 1);
          }

          else
          {
            v30 = *(v25 + 16);
            v31 = *(v25 + 24);
            v32 = *(v25 + 32);
            v33 = *(v25 + 40);
            outlined copy of Path.Storage(*(v20 - 4), *(v20 - 3), *(v20 - 2), *(v20 - 1), 2u);
            v24 = v33;
            v23 = v32;
            v22 = v31;
            v21 = v30;
          }

          v20 += 56;
          v104.origin.x = v12;
          v104.origin.y = v11;
          v104.size.width = v14;
          v104.size.height = v13;
          v105 = CGRectUnion(v104, *&v21);
          v12 = v105.origin.x;
          v11 = v105.origin.y;
          v14 = v105.size.width;
          v13 = v105.size.height;
          outlined consume of Path.Storage(v25, v26, v27, v28, v29);
          --v19;
        }

        while (v19);
      }
    }

    v44 = *a5;
    v45 = GraphicsContext.userToDeviceScale.getter();
    v46 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    v47 = COERCE_DOUBLE(SDFStyle.distanceRange.getter(v10));
    v49 = 0.0;
    v50 = 0.0;
    if ((v51 & 1) != 0 || (v47 <= 0.0 ? (v50 = v47) : (v50 = 0.0), v48 > 0.0 ? (v49 = v48) : (v49 = 0.0), v50 <= v49))
    {
      v52 = v45 * (v49 - v50);
      if (v52 < 64.0)
      {
        v53 = 1;
      }

      else
      {
        v53 = 2;
      }

      if (v52 >= 16.0)
      {
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      *&v98 = v46;
      *(&v98 + 1) = v50;
      *&v99 = v49;
      *(&v99 + 1) = v12;
      *&v100 = v11;
      *(&v100 + 1) = v14;
      *v101 = v13;
      *&v101[8] = a3;
      *&v101[16] = a4;
      v101[24] = v54;
      v101[25] = SDFStyle.needsDistanceGradient.getter(v10) & 1;
      v101[26] = 0;
      *&v74 = v46;
      *(&v74 + 1) = v50;
      *&v75 = v49;
      *(&v75 + 1) = v12;
      *&v76 = v11;
      *(&v76 + 1) = v14;
      *&v77 = v13;
      *(&v77 + 1) = a3;
      *&v78 = a4;
      BYTE8(v78) = v54;
      *(&v78 + 9) = v101[25];
      outlined init with copy of SDF(&v98, &v85);
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a3);
      outlined destroy of SDF(&v74);
      v87 = v100;
      *v88 = *v101;
      *&v88[11] = *&v101[11];
      v85 = v98;
      v86 = v99;
      v55 = v44[4];
      v56 = v55;
      v57 = v44[5];
      if (v55 == 1)
      {
        v58 = v44[2];
        v56 = *(v58 + 48);
        v57 = *(v58 + 56);
      }

      v59 = v98;
      v60 = v101[25];
      type metadata accessor for GraphicsContext.Storage();
      v61 = swift_allocObject();
      *(v61 + 32) = xmmword_18DD85500;
      *(v61 + 48) = 1065353216;
      *(v61 + 56) = 0x7FF8000000000000;
      *&v95[0] = v56;
      *(&v95[0] + 1) = v57;
      type metadata accessor for GraphicsContext.Storage.Shared();
      swift_allocObject();
      v62 = v59;
      outlined copy of EnvironmentValues?(v55);
      *(v61 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v62, v95);
      *(v61 + 24) = RBDisplayListGetState();
      *(v61 + 64) = 0;

      *&v95[0] = v61;
      if (v101[24] == 2)
      {
        v63 = 2;
      }

      else
      {
        v63 = 1;
      }

      if (v60)
      {
        v64 = v63;
      }

      else
      {
        v64 = 0;
      }

      PathSet.drawSDF(in:distanceRange:gradient:ovalization:)(v95, v64, *(&v98 + 1), *&v99, a8);

      v97 = v44;

      SDFStyle.draw(in:sdf:)(&v97, &v85, v10);
      v65 = *&v88[8];
      if (*&v88[8] && (v88[26] & 1) == 0)
      {
        *&v95[0] = v44;

        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v65);
        v65(v95);
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v65);

        v88[26] = 1;
      }

      else
      {
      }

      v95[2] = v87;
      v96[0] = *v88;
      *(v96 + 11) = *&v88[11];
      v95[0] = v85;
      v95[1] = v86;
      return outlined destroy of SDF(v95);
    }

    else
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 24);
    v17 = *a5;
    *&v98 = a2;
    *(&v98 + 1) = a9;
    v85 = v16;
    LODWORD(v86) = v15;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v85);
    v82 = v92;
    v83 = v93;
    v84 = v94;
    v78 = *&v88[16];
    v79 = v89;
    v80 = v90;
    v81 = v91;
    v74 = v85;
    v75 = v86;
    v76 = v87;
    v77 = *v88;
    return GraphicsContext.fill(_:with:matching:)(&v98, &v74, 0, 0, v17);
  }

  return result;
}

uint64_t specialized GraphicsContext.drawSDFStyle<A>(_:ovalization:renderer:bounds:content:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  if (a1 >> 60 || *(a1 + 16) != 0.0)
  {
    v25 = *(a8 + 16);
    v26 = *(a8 + 24);
    v27 = *a7;
    v28 = GraphicsContext.userToDeviceScale.getter();
    v29 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    *&result = COERCE_DOUBLE(SDFStyle.distanceRange.getter(a1));
    v32 = 0.0;
    v33 = 0.0;
    if ((v34 & 1) != 0 || (*&result <= 0.0 ? (v33 = *&result) : (v33 = 0.0), v31 > 0.0 ? (v32 = v31) : (v32 = 0.0), v33 <= v32))
    {
      v48 = a3;
      v50 = a2;
      v35 = v28 * (v32 - v33);
      if (v35 < 64.0)
      {
        v36 = 1;
      }

      else
      {
        v36 = 2;
      }

      if (v35 >= 16.0)
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      *v77 = v29;
      *&v77[8] = v33;
      *&v77[16] = *&v32;
      *&v77[32] = 0;
      *&v77[40] = v25;
      *v78 = v26;
      *&v78[8] = a5;
      *&v78[16] = a6;
      v78[24] = v37;
      v78[25] = SDFStyle.needsDistanceGradient.getter(a1) & 1;
      v78[26] = 0;
      *&v51 = v29;
      *(&v51 + 1) = v33;
      v52 = *&v32;
      *&v53 = 0;
      *(&v53 + 1) = v25;
      *&v54 = v26;
      *(&v54 + 1) = a5;
      *&v55 = a6;
      BYTE8(v55) = v37;
      *(&v55 + 9) = v78[25];
      outlined init with copy of SDF(v77, &v62);
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a5);
      outlined destroy of SDF(&v51);
      v64 = *&v77[32];
      *v65 = *v78;
      *&v65[11] = *&v78[11];
      v62 = *v77;
      v63 = *&v77[16];
      v38 = v27[4];
      v39 = v38;
      v40 = v27[5];
      if (v38 == 1)
      {
        v41 = v27[2];
        v39 = *(v41 + 48);
        v40 = *(v41 + 56);
      }

      v42 = *v77;
      type metadata accessor for GraphicsContext.Storage();
      inited = swift_initStackObject();
      *(inited + 32) = xmmword_18DD85500;
      *(inited + 48) = 1065353216;
      *(inited + 56) = 0x7FF8000000000000;
      *&v72 = v39;
      *(&v72 + 1) = v40;
      type metadata accessor for GraphicsContext.Storage.Shared();
      swift_allocObject();
      v44 = v42;
      outlined copy of EnvironmentValues?(v38);
      *(inited + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v44, &v72);
      State = RBDisplayListGetState();

      *(inited + 24) = State;
      *(inited + 64) = 0;
      *&v72 = inited;
      GraphicsContext.copyOnWrite()();
      v46 = v72;
      RBDrawingStateAddDistanceFilter2();

      specialized GraphicsContext.drawLayer(flags:content:)(0, v46, v50, v48 & 0xFFFFFFFF0000FFFFLL);

      v76 = v27;

      SDFStyle.draw(in:sdf:)(&v76, &v62, a1);
      v47 = *&v65[8];
      if (*&v65[8] && (v65[26] & 1) == 0)
      {
        *&v72 = v27;

        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v47);
        v47(&v72);
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v47);

        v65[26] = 1;
      }

      else
      {
      }

      v74 = v64;
      v75[0] = *v65;
      *(v75 + 11) = *&v65[11];
      v72 = v62;
      v73 = v63;
      *&result = COERCE_DOUBLE(outlined destroy of SDF(&v72));
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v49 = *(a1 + 24);
    v13 = *(a1 + 40);

    specialized GraphicsContext.clipToLayer(opacity:options:content:)(0, a7, a2, a3 & 0xFFFFFFFF0000FFFFLL);

    v15 = *a7;
    v17 = *MEMORY[0x1E695F040];
    v16 = *(MEMORY[0x1E695F040] + 8);
    v19 = *(MEMORY[0x1E695F040] + 16);
    v18 = *(MEMORY[0x1E695F040] + 24);
    v79.origin.x = *MEMORY[0x1E695F040];
    v79.origin.y = v16;
    v79.size.width = v19;
    v79.size.height = v18;
    if (CGRectIsNull(v79))
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 6;
    }

    else
    {
      v24 = 0;
      v20 = v17;
      v21 = *&v16;
      v22 = *&v19;
      v23 = *&v18;
    }

    *&v72 = v20;
    *(&v72 + 1) = v21;
    *&v73 = v22;
    *(&v73 + 1) = v23;
    LOBYTE(v74) = v24;
    v62 = v49;
    LODWORD(v63) = v13;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v62);
    v59 = v69;
    v60 = v70;
    v61 = v71;
    v55 = *&v65[16];
    v56 = v66;
    v57 = v67;
    v58 = v68;
    v51 = v62;
    v52 = v63;
    v53 = v64;
    v54 = *v65;
    *v77 = 256;
    memset(&v77[8], 0, 33);
    GraphicsContext.draw(_:with:style:)(&v72, &v51, v77, v15);
    *&result = COERCE_DOUBLE(outlined consume of Path.Storage(v20, v21, v22, v23, v24));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field()
{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field)
  {
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field);
  }

  return result;
}

void destroy for SDF(uint64_t a1)
{
  if (*(a1 + 56))
  {
  }
}

uint64_t initializeWithCopy for SDF(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = (a2 + 56);
  v5 = *(a2 + 56);
  v7 = v4;
  if (v5)
  {
    v8 = *(a2 + 64);
    *(a1 + 56) = v5;
    *(a1 + 64) = v8;
  }

  else
  {
    *(a1 + 56) = *v6;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  return a1;
}

uint64_t assignWithCopy for SDF(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 56);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v8 = *(a2 + 56);
  if (!v7)
  {
    if (v8)
    {
      v10 = *(a2 + 64);
      *(a1 + 56) = v8;
      *(a1 + 64) = v10;

      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_8;
  }

  if (!v8)
  {

    goto LABEL_7;
  }

  v9 = *(a2 + 64);
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;

LABEL_8:
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);
  return a1;
}

__n128 __swift_memcpy75_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for SDF(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 56);
  v6 = *(a1 + 56);
  v7 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v7;
  *(a1 + 40) = *(a2 + 40);
  if (!v6)
  {
    if (v5)
    {
      v9 = *(a2 + 64);
      *(a1 + 56) = v5;
      *(a1 + 64) = v9;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_8;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v8 = *(a2 + 64);
  *(a1 + 56) = v5;
  *(a1 + 64) = v8;

LABEL_8:
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);
  return a1;
}

uint64_t getEnumTagSinglePayload for SDF(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 75))
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

uint64_t storeEnumTagSinglePayload for SDF(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 74) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 75) = 1;
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

    *(result + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SDFFormat and conformance SDFFormat()
{
  result = lazy protocol witness table cache variable for type SDFFormat and conformance SDFFormat;
  if (!lazy protocol witness table cache variable for type SDFFormat and conformance SDFFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SDFFormat and conformance SDFFormat);
  }

  return result;
}

uint64_t key path setter for _GraphInputs.layoutAccessibilityProvider : _GraphInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(a2, v3, v4);
}

uint64_t _GraphInputs.layoutAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v2, a1, a2);
}

uint64_t (*_GraphInputs.layoutAccessibilityProvider.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.layoutAccessibilityProvider.modify;
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.LayoutAccessibilityProviderKey@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static _GraphInputs.LayoutAccessibilityProviderKey.defaultValue;
  *a1 = static _GraphInputs.LayoutAccessibilityProviderKey.defaultValue;
  return result;
}

uint64_t (*_ViewInputs.layoutAccessibilityProvider.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.layoutAccessibilityProvider.modify;
}

void _GraphInputs.layoutAccessibilityProvider.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

uint64_t _ProposedSize.init(width:height:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

void _ProposedSize.inset(by:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 24);
  if ((v7 & 1) == 0)
  {
    v9 = v6 - (a3 + a5);
    if (v9 < 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v9;
    }
  }

  v10 = *(v5 + 16);
  if ((*(v5 + 24) & 1) == 0)
  {
    v11 = v10 - (a2 + a4);
    v10 = 0.0;
    if (v11 >= 0.0)
    {
      v10 = v11;
    }
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v10;
  *(a1 + 24) = v8;
}

CGSize __swiftcall _ProposedSize.fixingUnspecifiedDimensions(at:)(CGSize at)
{
  if (!*(v1 + 8))
  {
    at.width = *v1;
  }

  if (!*(v1 + 24))
  {
    at.height = *(v1 + 16);
  }

  return at;
}

CGSize __swiftcall _ProposedSize.fixingUnspecifiedDimensions()()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (*(v0 + 8))
  {
    v1 = 10.0;
  }

  if (*(v0 + 24))
  {
    v2 = 10.0;
  }

  result.height = v2;
  result.width = v1;
  return result;
}

void _ProposedSize.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

void _ProposedSize.init(_:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
}

uint64_t _ProposedSize.width.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t _ProposedSize.height.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void _ProposedSize.scaled(by:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  if (!v4)
  {
    v3 = *v2 * a2;
  }

  v7 = v5 * a2;
  *a1 = v3;
  *(a1 + 8) = v4;
  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  *(a1 + 16) = v8;
  *(a1 + 24) = v6;
}

uint64_t static _ProposedSize.zero.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v4 = a1;
    result = swift_once();
    a1 = v4;
  }

  v1 = byte_1EAB0C548;
  v2 = qword_1EAB0C550;
  v3 = byte_1EAB0C558;
  *a1 = static _ProposedSize.zero;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return result;
}

uint64_t static _ProposedSize.infinity.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for infinity != -1)
  {
    v4 = a1;
    result = swift_once();
    a1 = v4;
  }

  v1 = byte_1EAB10040;
  v2 = qword_1EAB10048;
  v3 = byte_1EAB10050;
  *a1 = static _ProposedSize.infinity;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return result;
}

uint64_t static _ProposedSize.unspecified.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for unspecified != -1)
  {
    v4 = a1;
    result = swift_once();
    a1 = v4;
  }

  v1 = byte_1ED52ECF8;
  v2 = qword_1ED52ED00;
  v3 = byte_1ED52ED08;
  *a1 = static _ProposedSize.unspecified;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return result;
}

Swift::Int _ProposedSize.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v2 != 1)
  {
    Hasher._combine(_:)(1u);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v1;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x193AC11E0](v6);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x193AC11E0](v5);
  return Hasher._finalize()();
}

uint64_t CGSize.init(_:)(_BYTE *a1)
{
  if (a1[8])
  {
    return 0;
  }

  if (a1[24])
  {
    return 0;
  }

  return *a1;
}

uint64_t _ProposedSize.subscript.getter(char a1)
{
  v2 = v1 + 16;
  if ((a1 & 1) == 0)
  {
    v2 = v1;
  }

  return *v2;
}

uint64_t _ProposedSize.subscript.setter(uint64_t result, char a2, char a3)
{
  v4 = 24;
  if ((a3 & 1) == 0)
  {
    v4 = 8;
  }

  *(v3 + 16 * (a3 & 1)) = result;
  *(v3 + v4) = a2 & 1;
  return result;
}

uint64_t (*_ProposedSize.subscript.modify(uint64_t a1, char a2))(uint64_t result)
{
  *(a1 + 16) = v2;
  *(a1 + 9) = a2;
  v3 = (v2 + 8);
  v4 = (v2 + 16);
  if ((a2 & 1) == 0)
  {
    v4 = v2;
  }

  v5 = *v4;
  if (a2)
  {
    v3 = (v2 + 24);
  }

  v6 = *v3;
  *a1 = v5;
  *(a1 + 8) = v6;
  return _ProposedSize.subscript.modify;
}

uint64_t _ProposedSize.subscript.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 9) & 1;
  v3 = *(result + 8);
  v4 = 16 * v2;
  v5 = v2 == 0;
  v6 = 24;
  if (v5)
  {
    v6 = 8;
  }

  *(v1 + v4) = *result;
  *(v1 + v6) = v3;
  return result;
}

uint64_t _ProposedSize.init(_:in:by:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a3)
  {
    v6 = a4;
  }

  else
  {
    v6 = result;
  }

  if (a3)
  {
    v7 = a5;
  }

  else
  {
    v7 = a2;
  }

  if (a3)
  {
    v8 = result;
  }

  else
  {
    v8 = a4;
  }

  if (a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a5;
  }

  *a6 = v6;
  *(a6 + 8) = v7 & 1;
  *(a6 + 16) = v8;
  *(a6 + 24) = v9 & 1;
  return result;
}

uint64_t LazyHStack.init(alignment:spacing:pinnedViews:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _DWORD *a4@<X3>, void (*a5)(double)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v22 = a5;
  v23 = a7;
  v24 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for _VariadicView.Tree();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  LODWORD(v18) = *a4;
  v27[0] = a1;
  v27[1] = a2;
  v28 = a3 & 1;
  v29 = v18;
  v22(v17);
  _VariadicView.Tree.init(root:content:)(v27, v14, &type metadata for LazyHStackLayout, a6, v19);
  v25 = &protocol witness table for LazyHStackLayout;
  v26 = v23;
  WitnessTable = swift_getWitnessTable();
  View.resettableLazyLayoutRoot()(v15, WitnessTable);
  return (*(v16 + 8))(v19, v15);
}

uint64_t LazyHStackLayout.init(base:pinnedViews:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, int *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 20) = v5;
  return result;
}

uint64_t static LazyHStack._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = a2[3];
  v41 = a2[2];
  v42 = v8;
  v43 = a2[4];
  v44 = *(a2 + 20);
  v9 = a2[1];
  v39 = *a2;
  v40 = v9;
  v19 = a3;
  v20 = a4;
  v18[1] = v7;
  type metadata accessor for LazyHStack();
  type metadata accessor for _GraphValue();
  v10 = type metadata accessor for _VariadicView.Tree();
  v37 = &protocol witness table for LazyHStackLayout;
  v38 = a4;
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for ResettableLazyLayoutRoot();
  _GraphValue.subscript.getter(partial apply for closure #1 in static LazyHStack._makeView(view:inputs:), v12, v18);
  v13 = v18[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v29 = v41;
  v30 = v42;
  v31 = v43;
  v32 = v44;
  v27 = v39;
  v28 = v40;
  v34 = v44;
  v15 = v41;
  LODWORD(v29) = 0;
  v17 = v13;
  v33[0] = v39;
  v33[1] = v40;
  v33[3] = v42;
  v33[4] = v43;
  v33[2] = v29;
  v23 = v29;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v21 = v39;
  v22 = v40;
  outlined init with copy of _ViewInputs(&v39, v35);
  outlined init with copy of _ViewInputs(v33, v35);
  static ResettableLazyLayoutRoot._makeView(view:inputs:)(&v17, &v21, v10, WitnessTable, a5);
  v35[2] = v23;
  v35[3] = v24;
  v35[4] = v25;
  v36 = v26;
  v35[0] = v21;
  v35[1] = v22;
  outlined destroy of _ViewInputs(v35);
  LODWORD(v29) = v15;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v27);
    AGSubgraphEndTreeElement();
  }

  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v21 = v27;
  v22 = v28;
  return outlined destroy of _ViewInputs(&v21);
}

uint64_t closure #1 in static LazyHStack._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = type metadata accessor for LazyHStack();
  type metadata accessor for _VariadicView.Tree();
  v10 = &protocol witness table for LazyHStackLayout;
  v11 = a3;
  swift_getWitnessTable();
  v9 = type metadata accessor for ResettableLazyLayoutRoot();
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v8, v9, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v12;
}

uint64_t LazyHStackLayout.base.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

unint64_t instantiation function for generic protocol witness table for LazyHStackLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for LazyHStack()
{
  result = type metadata accessor for _VariadicView.Tree();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for LazyHStack(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-25 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    a1[2] = a2[2];
    (*(v4 + 16))((a1 + v5 + 24) & ~v5, (a2 + v5 + 24) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

uint64_t initializeWithCopy for LazyHStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((*(v4 + 80) + 24 + a1) & ~*(v4 + 80), (*(v4 + 80) + 24 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t assignWithCopy for LazyHStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 20) = *(a2 + 20);
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 24))((*(v5 + 80) + 24 + a1) & ~*(v5 + 80), (*(v5 + 80) + 24 + a2) & ~*(v5 + 80));
  return a1;
}

uint64_t initializeWithTake for LazyHStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((*(v4 + 80) + 24 + a1) & ~*(v4 + 80), (*(v4 + 80) + 24 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t assignWithTake for LazyHStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 40))((*(v5 + 80) + 24 + a1) & ~*(v5 + 80), (*(v5 + 80) + 24 + a2) & ~*(v5 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for LazyHStack(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 24) & ~v6);
  }

  v8 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 24) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for LazyHStack(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 24) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 24] & ~v8;

  v18(v19);
}

uint64_t _TextBaselineRelativeSpacer.minLength.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance _TextBaselineRelativeSpacer@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static PrimitiveSpacer._makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance _HSpacer@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static PrimitiveSpacer._makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance _VSpacer@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static PrimitiveSpacer._makeView(view:inputs:)(v3, v7, a3);
}

uint64_t SpacerLayoutComputer.dynamicOrientation.getter(uint64_t a1, int a2)
{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    return 3;
  }

  type metadata accessor for Axis?();
  return *AGGraphGetValue();
}

uint64_t SpacerLayoutComputer.updateValue()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SpacerLayoutComputer.Engine();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  v11 = *(v1 + 4);
  if (v11 == 2)
  {
    v12 = SpacerLayoutComputer.dynamicOrientation.getter(*v1 | 0x200000000, v1[2]);
    if (v12 == 3)
    {
      LOBYTE(v11) = 2;
    }

    else
    {
      LOBYTE(v11) = v12;
    }
  }

  Value = AGGraphGetValue();
  (*(v4 + 16))(v6, Value, v3);
  (*(v4 + 32))(v10, v6, v3);
  v10[*(v7 + 36)] = v11;
  WitnessTable = swift_getWitnessTable();
  StatefulRule<>.update<A>(to:)(v10, a1, v7, WitnessTable, &protocol witness table for SpacerLayoutComputer<A>.Engine);
  return (*(v8 + 8))(v10, v7);
}

uint64_t ConditionalSpacer.init(isEnabled:minLength:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

uint64_t key path setter for _ViewInputs.requestedSpacerRepresentation : _ViewInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(a2, v3, v4);
}

uint64_t _GraphInputs.requestedSpacerRepresentation.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v2, a1, a2);
}

uint64_t (*_ViewInputs.requestedSpacerRepresentation.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.requestedSpacerRepresentation.modify;
}

uint64_t (*_GraphInputs.requestedSpacerRepresentation.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.requestedSpacerRepresentation.modify;
}

void _ViewInputs.requestedSpacerRepresentation.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

uint64_t getEnumTagSinglePayload for ConditionalSpacer(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConditionalSpacer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpacerLayoutComputer.Engine(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      v16 = v15 >= 2;
      v17 = v15 - 2;
      if (!v16)
      {
        v17 = -1;
      }

      if (v17 + 1 >= 2)
      {
        return v17;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *storeEnumTagSinglePayload for SpacerLayoutComputer.Engine(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
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
      if (v6 < 0xFD)
      {
        *(result + v8) = a2 + 2;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpacerLayoutComputer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 12))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 4);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for SpacerLayoutComputer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_SayAJGTt0g5(uint64_t a1)
{
  v1 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_SayAJGTt0g5Tf4g_n(a1);

  return v1;
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_SD4KeysVyAjfGEAKV_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute();
  v4 = 0;
  v14[2] = MEMORY[0x193ABF540](v2, &type metadata for AttributedString.AnyAttribute, v3);
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(a1 + 48) + ((v9 << 10) | (16 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);
    outlined copy of AttributedString.AnyAttribute(*v11, v13);
    specialized Set._Variant.insert(_:)(v14, v12, v13);
    outlined consume of AttributedString.AnyAttribute(v14[0], v14[1]);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t AccessibilitySectionContext.init(id:isHeader:isFooter:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 4) = a2;
  *(a4 + 5) = a3;
  return result;
}

uint64_t AccessibilityScrollableContext.collectionViewID.getter@<X0>(void *a1@<X8>)
{
  result = outlined init with copy of AccessibilityScrollableContext(v1, v7);
  if (v10)
  {
    if (v10 == 1)
    {
      v4 = v7[1];
      *a1 = v7[0];
      a1[1] = v4;
      return result;
    }

    v5 = v8;
    v6 = v7[5];
  }

  else
  {
    v5 = v9;
    v6 = v8;
  }

  *a1 = v6;
  a1[1] = v5;
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

BOOL AccessibilityScrollableContext.isLazy.getter()
{
  outlined init with copy of AccessibilityScrollableContext(v0, v3);
  v1 = v4;
  if (v4)
  {
    outlined destroy of AccessibilityScrollableContext(v3);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return v1 == 0;
}

uint64_t AccessibilityScrollableContext.scrollableCollection.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of AccessibilityScrollableContext(v1, v4);
  if (v5 && v5 == 1)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return outlined destroy of AccessibilityScrollableContext(v4);
  }

  else
  {

    return outlined init with take of AnyTrackedValue(v4, a1);
  }
}

uint64_t AccessibilityScrollableContext.sectionContext.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of AccessibilityScrollableContext(v1, v5);
  if (v8)
  {
    result = outlined destroy of AccessibilityScrollableContext(v5);
    v4 = 0x200000000;
  }

  else
  {

    v4 = v6 | (v7 << 32);
    result = __swift_destroy_boxed_opaque_existential_1(v5);
  }

  *a1 = v4;
  *(a1 + 4) = WORD2(v4);
  return result;
}

uint64_t AccessibilityScrollableContext.axes.getter()
{
  outlined init with copy of AccessibilityScrollableContext(v0, v7);
  if (v8)
  {
    if (v8 == 1)
    {
      outlined destroy of AccessibilityScrollableContext(v7);
      return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI4AxisO_SayAFGTt0g5Tf4g_n(&outlined read-only object #0 of AccessibilityScrollableContext.axes.getter);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v7);
      return MEMORY[0x1E69E7CD0];
    }
  }

  else
  {

    outlined init with take of AnyTrackedValue(v7, v4);
    v3 = MEMORY[0x1E69E7CD0];
    __swift_project_boxed_opaque_existential_1(v4, v5);
    swift_getDynamicType();
    if ((*(v6 + 48))(0))
    {
      specialized Set._Variant.insert(_:)(&v2, 0);
    }

    __swift_project_boxed_opaque_existential_1(v4, v5);
    swift_getDynamicType();
    if ((*(v6 + 48))(1))
    {
      specialized Set._Variant.insert(_:)(&v2, 1);
    }

    __swift_destroy_boxed_opaque_existential_1(v4);
    return v3;
  }
}

Swift::Bool __swiftcall AccessibilityScrollableContext.supports(navigating:)(SwiftUI::AccessibilityScrollableNavigationType navigating)
{
  v2 = *navigating;
  outlined init with copy of AccessibilityScrollableContext(v1, v7);
  if (v8)
  {
    outlined destroy of AccessibilityScrollableContext(v7);
    v3 = 0;
  }

  else
  {

    outlined init with take of AnyTrackedValue(v7, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    if (v2 >= 2)
    {
      v4 = v6[4];
      swift_getDynamicType();
      v3 = (*(v4 + 48))(1);
    }

    else
    {
      v3 = 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return v3 & 1;
}

uint64_t AccessibilityScrollableNavigationType.directionalUnitPoint.getter()
{
  v1 = *v0;
  if (v1 != 2 && v1 != 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Int AccessibilityScrollableNavigationType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t ScrollableCollection.siblingID(going:from:)@<X0>(unsigned __int8 *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X8>)
{
  v8 = *a1;
  v10 = *a2;
  v9 = a2[1];
  v11 = *(a2 + 1);
  v12 = specialized static Update.begin()();
  v23 = xmmword_18DD85550;
  if (v8 > 1)
  {
    v13.n128_u64[0] = 1.0;
    if (v8 == 2)
    {
      v13.n128_f64[0] = 0.0;
    }

    v21[0] = __PAIR64__(v9, v10);
    v21[1] = v11;
    v20 = 0;
    (*(a4 + 40))(&v22, v21, &v20, a3, a4, 0.5, v13, 0.0, 0.0);
    v15 = v22;
    outlined consume of Text.LineStyle?(v23, *(&v23 + 1));
    v23 = v15;
    goto LABEL_7;
  }

  if (!v8)
  {
    v21[0] = 0;
    v22 = xmmword_18DD85550;
    v14 = MEMORY[0x1EEE9AC00](v12);
    (*(a4 + 64))(v21, partial apply for closure #1 in ScrollableCollection.siblingID(going:from:), v14);
    outlined consume of Text.LineStyle?(v22, *(&v22 + 1));
LABEL_7:
    *a5 = v23;
    return static Update.end()();
  }

  *&v22 = __PAIR64__(v9, v10);
  *(&v22 + 1) = v11;
  v17 = (*(a4 + 56))(&v22, a3, a4);
  if ((v18 & 1) == 0)
  {
    v21[0] = v17;
    LOBYTE(v22) = 0;
    v19 = MEMORY[0x1EEE9AC00](v17);
    (*(a4 + 64))(v21, partial apply for closure #2 in ScrollableCollection.siblingID(going:from:), v19);
    goto LABEL_7;
  }

  *a5 = xmmword_18DD85550;
  outlined consume of Text.LineStyle?(v23, *(&v23 + 1));

  return static Update.end()();
}

uint64_t closure #1 in ScrollableCollection.siblingID(going:from:)(unsigned int *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 1);
  v20[0] = *a1;
  v20[1] = v10;
  v21 = v11;
  v19[0] = a3;
  v19[1] = a4;
  if (specialized static _ViewList_ID.Canonical.== infix(_:_:)(v20, v19))
  {
    v12 = *a6;
    v13 = a6[1];
    v14 = *a5;
    v15 = a5[1];
    *a5 = *a6;
    a5[1] = v13;
    outlined copy of Text.LineStyle?(v12, v13);
    outlined consume of Text.LineStyle?(v14, v15);
    *a2 = 1;
  }

  v16 = *a6;
  v17 = a6[1];
  *a6 = v9 | (v10 << 32);
  a6[1] = v11;

  return outlined consume of Text.LineStyle?(v16, v17);
}

uint64_t closure #2 in ScrollableCollection.siblingID(going:from:)(unsigned int *a1, _BYTE *a2, _BYTE *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 1);
  if (*a3 == 1)
  {
    v10 = *a4;
    v11 = a4[1];
    *a4 = v6 | (v7 << 32);
    a4[1] = v8;

    result = outlined consume of Text.LineStyle?(v10, v11);
    v13 = a2;
  }

  else
  {
    v13 = a3;
    v15[0] = v6;
    v15[1] = v7;
    v16 = v8;
    v14[0] = a5;
    v14[1] = a6;
    result = specialized static _ViewList_ID.Canonical.== infix(_:_:)(v15, v14);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  *v13 = 1;
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation16AttributedStringV16WritingDirectionOSg_SayAIGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for AttributedString.WritingDirection?();
  v4 = v3;
  v5 = lazy protocol witness table accessor for type AttributedString.WritingDirection? and conformance <A> A?();
  result = MEMORY[0x193ABF540](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute();
  result = MEMORY[0x193ABF540](v2, &type metadata for AttributedString.AnyAttribute, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      outlined copy of AttributedString.AnyAttribute(v7, *v5);
      specialized Set._Variant.insert(_:)(v8, v7, v6);
      outlined consume of AttributedString.AnyAttribute(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4DateV21ComponentsFormatStyleV5FieldV_s10ArraySliceVyAJGTt0g5Tf4gX_n(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  v13 = a3 >> 1;
  v14 = __OFSUB__(a3 >> 1, a2);
  v15 = (a3 >> 1) - a2;
  if (v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  v16 = lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
  v23[1] = MEMORY[0x193ABF540](v15, v6, v16);
  v17 = v13 - a2;
  if (v13 == a2)
  {
    return;
  }

  if (v13 <= a2)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v20 = *(v7 + 16);
  v18 = v7 + 16;
  v19 = v20;
  v21 = *(v18 + 56);
  v22 = a1 + v21 * a2;
  do
  {
    v19(v9, v22, v6);
    specialized Set._Variant.insert(_:)(v12, v9);
    (*(v18 - 8))(v12, v6);
    v22 += v21;
    --v17;
  }

  while (v17);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4DateV21ComponentsFormatStyleV5FieldV_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
  result = MEMORY[0x193ABF540](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0]);
  result = MEMORY[0x193ABF540](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI4AxisO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type Axis and conformance Axis();
  result = MEMORY[0x193ABF540](v2, &type metadata for Axis, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      specialized Set._Variant.insert(_:)(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityScrollableNavigationType and conformance AccessibilityScrollableNavigationType()
{
  result = lazy protocol witness table cache variable for type AccessibilityScrollableNavigationType and conformance AccessibilityScrollableNavigationType;
  if (!lazy protocol witness table cache variable for type AccessibilityScrollableNavigationType and conformance AccessibilityScrollableNavigationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityScrollableNavigationType and conformance AccessibilityScrollableNavigationType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilitySectionContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 6))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilitySectionContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for AccessibilityScrollableContext(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 70);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 != 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v5 = *(a2 + 70);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(a2 + 32);
      (**(v7 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 44) = *(a2 + 44);
      *(a1 + 48) = *(a2 + 48);
      v6 = 2;
    }

    else if (v5 == 1)
    {
      *a1 = *a2;
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 8) = *(a2 + 8);
      v6 = 1;
    }

    else
    {
      v8 = *(a2 + 24);
      *(a1 + 24) = v8;
      *(a1 + 32) = *(a2 + 32);
      (**(v8 - 8))(a1, a2);
      v6 = 0;
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 52) = *(a2 + 52);
      *(a1 + 56) = *(a2 + 56);
      v9 = *(a2 + 64);
      *(a1 + 68) = *(a2 + 68);
      *(a1 + 64) = v9;
    }

    *(a1 + 70) = v6;
  }

  return a1;
}

__n128 __swift_memcpy71_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for AccessibilityScrollableContext(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 70);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 != 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v5 = *(a2 + 70);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      v6 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      LOBYTE(v5) = 2;
    }

    else if (v5 == 1)
    {
      *a1 = *a2;
    }

    else
    {
      LOBYTE(v5) = 0;
      v7 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v7;
      *(a1 + 62) = *(a2 + 62);
      v8 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v8;
    }

    *(a1 + 70) = v5;
  }

  return a1;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI27DefaultDescriptionAttributeO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute();
  result = MEMORY[0x193ABF540](v2, &type metadata for DefaultDescriptionAttribute, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      specialized Set._Variant.insert(_:)(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void type metadata accessor for AttributedString.WritingDirection?()
{
  if (!lazy cache variable for type metadata for AttributedString.WritingDirection?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AttributedString.WritingDirection?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AttributedString.WritingDirection? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type AttributedString.WritingDirection? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type AttributedString.WritingDirection? and conformance <A> A?)
  {
    type metadata accessor for AttributedString.WritingDirection?();
    lazy protocol witness table accessor for type AttributedString.WritingDirection and conformance AttributedString.WritingDirection();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.WritingDirection? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.WritingDirection and conformance AttributedString.WritingDirection()
{
  result = lazy protocol witness table cache variable for type AttributedString.WritingDirection and conformance AttributedString.WritingDirection;
  if (!lazy protocol witness table cache variable for type AttributedString.WritingDirection and conformance AttributedString.WritingDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.WritingDirection and conformance AttributedString.WritingDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute()
{
  result = lazy protocol witness table cache variable for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute;
  if (!lazy protocol witness table cache variable for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute;
  if (!lazy protocol witness table cache variable for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static GestureContainerFeature.isEnabledOverride.setter(char a1)
{
  result = swift_beginAccess();
  static GestureContainerFeature.isEnabledOverride = a1;
  return result;
}

uint64_t static HitTestPassThroughFeature.isEnabled.getter()
{
  swift_beginAccess();
  v0 = static HitTestPassThroughFeature.overrideValue;
  if (static HitTestPassThroughFeature.overrideValue == 2)
  {
    if (one-time initialization token for v7 != -1)
    {
      swift_once();
    }

    v1 = static Semantics.v7;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      v0 = dyld_program_sdk_at_least();
    }

    else
    {
      v0 = static Semantics.forced >= v1;
    }
  }

  return v0 & 1;
}

uint64_t static HitTestPassThroughFeature.overrideValue.setter(char a1)
{
  result = swift_beginAccess();
  static HitTestPassThroughFeature.overrideValue = a1;
  return result;
}

uint64_t static TapGestureUsesGesturesFrameworkFeature.cachedValue.setter(char a1)
{
  result = swift_beginAccess();
  static TapGestureUsesGesturesFrameworkFeature.cachedValue = a1;
  return result;
}

id static TapGestureUsesGesturesFrameworkFeature.defaults.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

uint64_t protocol witness for static UserDefaultKeyedFeature.cachedValue.setter in conformance TapGestureUsesGesturesFrameworkFeature(char a1)
{
  result = swift_beginAccess();
  static TapGestureUsesGesturesFrameworkFeature.cachedValue = a1;
  return result;
}

uint64_t static UniversalGestureRelationshipsFeature.isEnabled.getter()
{
  swift_beginAccess();
  v0 = static GestureContainerFeature.isEnabledOverride;
  if (static GestureContainerFeature.isEnabledOverride != 2)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  if (static CoreTesting.isRunning)
  {
    goto LABEL_29;
  }

  if (one-time initialization token for envValue != -1)
  {
    swift_once();
  }

  v0 = static GestureContainerFeature.envValue;
  if (static GestureContainerFeature.envValue != 2)
  {
    goto LABEL_17;
  }

  if (one-time initialization token for userDefaultsValue != -1)
  {
    swift_once();
  }

  v0 = static GestureContainerFeature.userDefaultsValue;
  if (static GestureContainerFeature.userDefaultsValue == 2)
  {
    v7 = &type metadata for GestureContainerFeature.IOSFeature;
    v8 = lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature();
    v1 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v6);
    if ((v1 & 1) == 0)
    {
      goto LABEL_29;
    }

    if (one-time initialization token for v6 != -1)
    {
      swift_once();
    }

    v2 = static Semantics.v6;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      v3 = dyld_program_sdk_at_least();
      if (!v3)
      {
        return v3 & 1;
      }

      goto LABEL_18;
    }

    if (static Semantics.forced < v2)
    {
LABEL_29:
      LOBYTE(v3) = 0;
      return v3 & 1;
    }
  }

  else
  {
LABEL_17:
    if ((v0 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_18:
  if (one-time initialization token for userDefaultsValue != -1)
  {
    swift_once();
  }

  LOBYTE(v3) = static UniversalGestureRelationshipsFeature.userDefaultsValue;
  if (static UniversalGestureRelationshipsFeature.userDefaultsValue == 2)
  {
    if (one-time initialization token for v7 != -1)
    {
      swift_once();
    }

    v4 = static Semantics.v7;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      LOBYTE(v3) = dyld_program_sdk_at_least();
    }

    else
    {
      LOBYTE(v3) = static Semantics.forced >= v4;
    }
  }

  return v3 & 1;
}

uint64_t closure #1 in variable initialization expression of static UniversalGestureRelationshipsFeature.userDefaultsValue()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = MEMORY[0x193ABEC20](0xD00000000000002FLL, 0x800000018DD79710);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v8, v9);
    outlined destroy of Any?(v9);
    v4 = [v0 standardUserDefaults];
    v5 = MEMORY[0x193ABEC20](0xD00000000000002FLL, 0x800000018DD79710);
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    outlined destroy of Any?(v9);
    return 2;
  }

  return v6;
}

uint64_t specialized static UnifiedHitTestingFeature.isEnabled.getter()
{
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v1 = 1;
    return v1 & 1;
  }

  if (static Semantics.forced >= v0)
  {
    goto LABEL_11;
  }

LABEL_7:
  swift_beginAccess();
  v1 = static GestureContainerFeature.isEnabledOverride;
  if (static GestureContainerFeature.isEnabledOverride == 2)
  {
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
LABEL_9:
      v1 = 0;
      return v1 & 1;
    }

    if (one-time initialization token for envValue != -1)
    {
      swift_once();
    }

    v1 = static GestureContainerFeature.envValue;
    if (static GestureContainerFeature.envValue == 2)
    {
      if (one-time initialization token for userDefaultsValue != -1)
      {
        swift_once();
      }

      v1 = static GestureContainerFeature.userDefaultsValue;
      if (static GestureContainerFeature.userDefaultsValue == 2)
      {
        v4[3] = &type metadata for GestureContainerFeature.IOSFeature;
        v4[4] = lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature();
        v3 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_1(v4);
        if ((v3 & 1) == 0)
        {
          goto LABEL_9;
        }

        if (byte_1ED53C51C)
        {
          v1 = dyld_program_sdk_at_least();
        }

        else
        {
          v1 = static Semantics.forced >= v0;
        }
      }
    }
  }

  return v1 & 1;
}

BOOL specialized static SimultaneousGestureAppliesToChildrenOnlyFeature.isEnabled.getter()
{
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (static Semantics.forced < v0)
  {
    goto LABEL_17;
  }

  if (one-time initialization token for v7 != -1)
  {
    swift_once();
  }

  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < static Semantics.v7)
    {
      goto LABEL_15;
    }

LABEL_17:
    v1 = 0;
    return (v1 & 1) == 0;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_17;
  }

LABEL_15:
  swift_beginAccess();
  v1 = static GestureContainerFeature.isEnabledOverride;
  if (static GestureContainerFeature.isEnabledOverride == 2)
  {
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_17;
    }

    if (one-time initialization token for envValue != -1)
    {
      swift_once();
    }

    v1 = static GestureContainerFeature.envValue;
    if (static GestureContainerFeature.envValue == 2)
    {
      if (one-time initialization token for userDefaultsValue != -1)
      {
        swift_once();
      }

      v1 = static GestureContainerFeature.userDefaultsValue;
      if (static GestureContainerFeature.userDefaultsValue == 2)
      {
        v4[3] = &type metadata for GestureContainerFeature.IOSFeature;
        v4[4] = lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature();
        v3 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_1(v4);
        if ((v3 & 1) == 0)
        {
          goto LABEL_17;
        }

        if (byte_1ED53C51C)
        {
          v1 = dyld_program_sdk_at_least();
        }

        else
        {
          v1 = static Semantics.forced >= v0;
        }
      }
    }
  }

  return (v1 & 1) == 0;
}

uint64_t static KeyframesBuilder.buildArray<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = _ViewInputs.base.modify(a1, a2);
}

uint64_t static KeyframesBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  swift_getAssociatedConformanceWitness();
  return KeyframeTrackContentBuilder.Conditional.init(first:)(v7, a2, a3);
}

uint64_t static KeyframesBuilder.buildEither<A, B>(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  swift_getAssociatedConformanceWitness();
  return KeyframeTrackContentBuilder.Conditional.init(second:)(v7, a2, a3);
}

uint64_t static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)(a1, a2, a3, a4, a5, a6, a7, MergedKeyframeTrackContent.init(first:second:));
}

{
  return static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)(a1, a2, a3, a4, a5, a6, a7, CombinedKeyframes.init(first:second:));
}

uint64_t closure #1 in static KeyframesBuilder.buildFinalResult<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)(v8);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)(v10, a2, a3, a4);
  return (*(v7 + 8))(v10, a3);
}

uint64_t static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v24 = a8;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  (*(v14 + 16))(v16, a2, a5);
  return v24(v20, v16, a3, a4, a5, a6, a7);
}

uint64_t CombinedKeyframes.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1, a3);
  v8 = type metadata accessor for CombinedKeyframes();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 60), a2, a4);
}

uint64_t *initializeBufferWithCopyOfBuffer for CombinedKeyframes(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = ((v5 + v8) & ~v8) + *(v7 + 64);
  v11 = (*(v4 + 80) | *(v7 + 80));
  if (v11 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v10 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v11 + 16) & ~v11));
  }

  else
  {
    v15 = ~v8;
    (*(v4 + 16))(a1);
    (*(v7 + 16))((v3 + v9) & v15, (a2 + v9) & v15, v6);
  }

  return v3;
}

uint64_t assignWithTake for CombinedKeyframes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 40))((*(v6 + 24) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 24) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t instantiation function for generic protocol witness table for CombinedKeyframes<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for EmptyKeyframes<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

Swift::Int ButtonSizing.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t EnvironmentValues.buttonSizing.getter@<X0>(char *a1@<X8>)
{
  v2 = *v1;
  if (!v1[1])
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F13_buttonSizing014_B3F6B53DB8F35K17F9F84F34C99C79B2CLLVG_Tt2g5(v2, a1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I13_buttonSizing014_B3F6B53DB8F35N17F9F84F34C99C79B2CLLVG_Tt1g5(v2, a1);
}

uint64_t key path getter for EnvironmentValues.buttonSizing : EnvironmentValues@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I13_buttonSizing014_B3F6B53DB8F35N17F9F84F34C99C79B2CLLVG_Tt1g5(v3, &v5);
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F13_buttonSizing014_B3F6B53DB8F35K17F9F84F34C99C79B2CLLVG_Tt2g5(*a1, &v5);
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.buttonSizing : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F13_buttonSizing014_B3F6B53DB8F35K17F9F84F34C99C79B2CLLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K13_buttonSizing014_B3F6B53DB8F35P17F9F84F34C99C79B2CLLVG_Ttg5(v3, *a2);
  }
}

uint64_t View.buttonSizing(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = v5;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);
}

uint64_t FlexibleButtonFrameLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t result, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  v7 = *(a5 + 16);
  v8 = *(a5 + 17);
  v9 = *v5;
  LODWORD(v19) = *a5;
  v20 = v6;
  LOBYTE(v21) = v7;
  BYTE1(v21) = v8;
  if (*(v6 + 16))
  {
    v13 = result;
    LayoutSubviews.subscript.getter(0, &v23);
    v14 = v23;
    v15 = v24;
    v16 = v25;
    if (v9 == 2)
    {
      if (a2)
      {
        v17 = INFINITY;
      }

      else
      {
        v17 = *&v13;
      }

      v19 = 0;
      a4 = 1;
      LOBYTE(v20) = 1;
      v21 = 0;
      v22 = 1;
      LayoutProxy.size(in:)(&v19);
      a2 = 0;
      a3 = 0;
      if (v18 >= v17)
      {
        v18 = v17;
      }

      *&v13 = v18;
    }

    v23 = v14;
    v24 = v15;
    v25 = v16;
    v19 = v13;
    LOBYTE(v20) = a2 & 1;
    v21 = a3;
    v22 = a4 & 1;
    return LayoutProxy.size(in:)(&v19);
  }

  return result;
}

uint64_t FlexibleButtonFrameModifier.init(defaultSizing:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 9) = v3;
  return result;
}

uint64_t FlexibleButtonFrameModifier.body(content:)@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  result = specialized Environment.wrappedValue.getter(v3, v4, &v8);
  v7 = v8;
  if (!v8)
  {
    v7 = v5;
  }

  *a1 = v7;
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance FlexibleButtonFrameModifier@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  result = specialized Environment.wrappedValue.getter(v3, v4, &v8);
  v7 = v8;
  if (!v8)
  {
    v7 = v5;
  }

  *a1 = v7;
  return result;
}

uint64_t View.flexibleButtonFrame(default:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v6 = 0;
  v7 = v3;
  View.modifier<A>(_:)(&KeyPath, a2, &type metadata for FlexibleButtonFrameModifier);
  return outlined consume of Environment<ButtonSizing>.Content(KeyPath, v6);
}

uint64_t View._controlSizingBehavior(_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  return View.buttonSizing(_:)(&v6, a2, a3);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 34) == 1)
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 24);
    *a1 = *v1;
    *(a1 + 8) = *(v1 + 8);
    *(a1 + 24) = v3;
    *(a1 + 32) = v2 & 1;
    *(a1 + 33) = HIBYTE(v2) & 1;
    return outlined init with copy of Environment<OpenURLAction>(v1, &v9);
  }

  else
  {
    outlined init with copy of Environment<OpenURLAction>(v1, &v9);
    v5 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    v6 = static Log.runtimeIssuesLog;
    if (os_log_type_enabled(static Log.runtimeIssuesLog, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x414C52556E65704FLL, 0xED00006E6F697463, &v9);
      _os_log_impl(&dword_18D018000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x193AC4820](v8, -1, -1);
      MEMORY[0x193AC4820](v7, -1, -1);
    }

    EnvironmentValues.init()(&v9);
    swift_getAtKeyPath();
    outlined destroy of Environment<EdgeInsets>(v1, &lazy cache variable for type metadata for Environment<OpenURLAction>, &type metadata for OpenURLAction);
  }
}

uint64_t specialized Environment.wrappedValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    v5 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    v6 = static Log.runtimeIssuesLog;
    if (os_log_type_enabled(static Log.runtimeIssuesLog, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD79790, &v11);
      _os_log_impl(&dword_18D018000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x193AC4820](v8, -1, -1);
      MEMORY[0x193AC4820](v7, -1, -1);
    }

    EnvironmentValues.init()(&v10);
    swift_getAtKeyPath();
    outlined consume of Environment<String?>.Content(a1, a2, 0);

    return v11;
  }

  return a1;
}

double specialized Environment.wrappedValue.getter()
{
  if (v0[32] == 1)
  {
    return *v0;
  }

  v2 = static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    swift_once();
  }

  v3 = static Log.runtimeIssuesLog;
  if (os_log_type_enabled(static Log.runtimeIssuesLog, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = *&v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x65736E4965676445, 0xEA00000000007374, &v7);
    _os_log_impl(&dword_18D018000, v3, v2, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x193AC4820](v5, -1, -1);
    MEMORY[0x193AC4820](v4, -1, -1);
  }

  EnvironmentValues.init()(&v6);
  swift_getAtKeyPath();
  outlined destroy of Environment<EdgeInsets>(v0, &lazy cache variable for type metadata for Environment<EdgeInsets>, &type metadata for EdgeInsets);

  return v7;
}

uint64_t specialized FlexibleButtonFrameLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t result, double a2, double a3, double a4, double a5)
{
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = *(result + 17);
  LODWORD(v17) = *result;
  *(&v17 + 1) = v5;
  LOBYTE(v18) = v6;
  BYTE1(v18) = v7;
  if (*(v5 + 16))
  {
    LayoutSubviews.subscript.getter(0, &v12);
    v20 = v12;
    v21 = v13;
    v15 = v12;
    v16 = DWORD2(v12);
    *&v12 = a4;
    BYTE8(v12) = 0;
    *&v13 = a5;
    BYTE8(v13) = 0;
    LayoutProxy.dimensions(in:)(&v12, &v17);
    v12 = v17;
    v13 = v18;
    v14 = v19;
    LayoutSubview.place(at:anchor:dimensions:)(&v12, a2, a3, 0.0, 0.0);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonSizing and conformance ButtonSizing()
{
  result = lazy protocol witness table cache variable for type ButtonSizing and conformance ButtonSizing;
  if (!lazy protocol witness table cache variable for type ButtonSizing and conformance ButtonSizing)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonSizing and conformance ButtonSizing);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for FlexibleButtonFrameLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for FlexibleButtonFrameModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<ButtonSizing>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t assignWithCopy for FlexibleButtonFrameModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<ButtonSizing>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<ButtonSizing>.Content(v6, v7);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t assignWithTake for FlexibleButtonFrameModifier(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<ButtonSizing>.Content(v6, v7);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t getEnumTagSinglePayload for FlexibleButtonFrameModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FlexibleButtonFrameModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>> and conformance <> _VariadicView.Tree<A, B>)
  {
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonSizing.Value and conformance ButtonSizing.Value()
{
  result = lazy protocol witness table cache variable for type ButtonSizing.Value and conformance ButtonSizing.Value;
  if (!lazy protocol witness table cache variable for type ButtonSizing.Value and conformance ButtonSizing.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonSizing.Value and conformance ButtonSizing.Value);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ControlSizingBehavior_v0.Value and conformance ControlSizingBehavior_v0.Value()
{
  result = lazy protocol witness table cache variable for type ControlSizingBehavior_v0.Value and conformance ControlSizingBehavior_v0.Value;
  if (!lazy protocol witness table cache variable for type ControlSizingBehavior_v0.Value and conformance ControlSizingBehavior_v0.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ControlSizingBehavior_v0.Value and conformance ControlSizingBehavior_v0.Value);
  }

  return result;
}

uint64_t outlined init with copy of Environment<OpenURLAction>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<ButtonSizing>(0, &lazy cache variable for type metadata for Environment<OpenURLAction>, &type metadata for OpenURLAction, type metadata accessor for Environment);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<ButtonSizing>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of Environment<EdgeInsets>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<ButtonSizing>(0, a2, a3, type metadata accessor for Environment);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static AnyTransition.move(edge:)(char a1)
{
  type metadata accessor for TransitionBox<MoveTransition>();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void type metadata accessor for TransitionBox<MoveTransition>()
{
  if (!lazy cache variable for type metadata for TransitionBox<MoveTransition>)
  {
    lazy protocol witness table accessor for type MoveTransition and conformance MoveTransition();
    v0 = type metadata accessor for TransitionBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TransitionBox<MoveTransition>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MoveTransition and conformance MoveTransition()
{
  result = lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition;
  if (!lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition);
  }

  return result;
}

CGSize __swiftcall Edge.offsetForCanvasSize(_:)(CGSize a1)
{
  if (v1 == 2)
  {
    width = 0.0;
  }

  else
  {
    width = a1.width;
  }

  if (v1 == 2)
  {
    height = a1.height;
  }

  else
  {
    height = 0.0;
  }

  v4 = -a1.height;
  v5 = -a1.width;
  if (v1)
  {
    v4 = 0.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (v1 > 1u)
  {
    v5 = width;
    v4 = height;
  }

  result.height = v4;
  result.width = v5;
  return result;
}

void MoveTransition.MoveLayout.placement(of:in:)(int *a1@<X1>, unsigned __int8 a2@<W2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = *(a1 + 48);
  v8 = 0.0;
  if (a2 == 4)
  {
LABEL_2:
    v9 = 0.0;
    goto LABEL_3;
  }

  if (a1[12])
  {
    v13 = a1;
    v14 = a2;
    InputValue = AGGraphGetInputValue();
    a2 = v14;
    a1 = v13;
    v9 = *InputValue;
    v16 = InputValue[1];
  }

  else
  {
    v9 = *(a1 + 2);
    v16 = *(a1 + 3);
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = -v9;
      goto LABEL_3;
    }

    v8 = -v16;
    goto LABEL_2;
  }

  if (a2 == 2)
  {
    v9 = 0.0;
    v8 = v16;
  }

LABEL_3:
  v21 = v4;
  v22 = *(a1 + 1);
  v23 = a1[3];
  v24 = v5;
  v25 = v6;
  v26 = *(a1 + 2);
  v27 = v7;
  PlacementContext.proposedSize.getter(&v17);
  v10 = v18;
  v11 = v19;
  v12 = v20;
  *a3 = v17;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = v9;
  *(a3 + 56) = v8;
}

void MoveTransition.body(content:phase:)(char a1@<W1>, char *a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = 4;
  }

  else
  {
    v3 = *v2;
  }

  *a2 = v3;
}

uint64_t MoveTransition._makeContentTransition(transition:)(uint64_t a1)
{
  if (*a1 == 3)
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    v7 = *v1;
    type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentTransition.Effect>, &type metadata for ContentTransition.Effect, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_18DDA6EB0;
    if (v7 == 2)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v6;
    }

    if (v7 == 2)
    {
      v10 = v5;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = -v5;
    v12 = -v6;
    if (v7)
    {
      v11 = 0.0;
    }

    else
    {
      v12 = 0.0;
    }

    if (v7 <= 1)
    {
      v13 = v12;
    }

    else
    {
      v13 = v9;
    }

    if (v7 <= 1)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    v4 = v8;
    v15 = v13;
    v16 = v14;
    *(v8 + 32) = 3;
    *(v8 + 36) = v15;
    *(v8 + 40) = 0;
    *(v8 + 44) = v16;
    *(v8 + 48) = 0;
    *(v8 + 52) = 0x3F80000000000000;
    *(v8 + 60) = 3;
    v3 = 1;
  }

  result = outlined consume of _Transition_ContentTransition.Result(*(a1 + 24), *(a1 + 32));
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  return result;
}

void protocol witness for Transition.body(content:phase:) in conformance MoveTransition(char a1@<W1>, char *a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = 4;
  }

  else
  {
    v3 = *v2;
  }

  *a2 = v3;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<MoveTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<MoveTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<MoveTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<PlaceholderContentView<MoveTransition>, MoveTransition.MoveLayout>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<MoveTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<PlaceholderContentView<MoveTransition>, MoveTransition.MoveLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<MoveTransition>, MoveTransition.MoveLayout>)
  {
    type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(255, &lazy cache variable for type metadata for PlaceholderContentView<MoveTransition>, &type metadata for MoveTransition, type metadata accessor for PlaceholderContentView);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<MoveTransition>, MoveTransition.MoveLayout>);
    }
  }
}

uint64_t getEnumTagSinglePayload for MoveTransition.MoveLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t instantiation function for generic protocol witness table for MoveTransition.MoveLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout();
  *(a1 + 8) = result;
  return result;
}

double HitTestableEvent.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of AnyTrackedValue(a1, v11);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for HitTestableEventType);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v9, v12);
    outlined init with copy of AnyTrackedValue(v12, v6);
    HitTestableEvent.init(_:)(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v4 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v4;
    *(a2 + 32) = v8[0];
    result = *(v8 + 9);
    *(a2 + 41) = *(v8 + 9);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined destroy of HitTestableEventType?(v9);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    result = 0.0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0;
  }

  return result;
}

uint64_t outlined destroy of HitTestableEventType?(uint64_t a1)
{
  type metadata accessor for HitTestableEventType?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for HitTestableEventType?()
{
  if (!lazy cache variable for type metadata for HitTestableEventType?)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for HitTestableEventType);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HitTestableEventType?);
    }
  }
}

double HitTestableEvent.timestamp.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double HitTestableEvent.timestamp.setter(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

uint64_t HitTestableEvent.binding.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

void HitTestableEvent.customHitTestOptions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t HitTestableEvent.customHitTestOptions.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t HitTestableEvent.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 1;
  v8 = *(a3 + 8);
  v8[1](&v12, a2, v8);
  *a4 = v12;
  v8[2](&v12, a2, v8);
  *(a4 + 8) = v12;
  v8[3](&v12, a2, v8);
  *(a4 + 16) = v12;
  *(a4 + 24) = (*(a3 + 16))(a2, a3);
  *(a4 + 32) = v9;
  *(a4 + 40) = (*(a3 + 24))(a2, a3);
  v8[6](&v12, a2, v8);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  v11 = v13;
  *(a4 + 48) = v12;
  *(a4 + 56) = v11;
  return result;
}

uint64_t HitTestableEvent.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(*(v4 + 8) + 8))(&v29, v5);
  v6 = v29;
  v8 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(*(v7 + 8) + 16))(&v29, v8);
  v9 = v29;
  v11 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(*(v10 + 8) + 24))(&v29, v11);
  v12 = v29;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 16))(v13, v14);
  v17 = v16;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 24))(v18, v19);
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  (*(*(v21 + 8) + 48))(&v29, v22);
  v23 = v29;
  LOBYTE(v22) = v30;
  LOBYTE(v26) = v6;
  *(&v26 + 1) = v9;
  *&v27 = v12;
  *(&v27 + 1) = v15;
  *v28 = v17;
  *&v28[8] = v20;
  *&v28[16] = v29;
  v28[24] = v30;
  v24 = v27;
  *a2 = v26;
  a2[1] = v24;
  a2[2] = *v28;
  *(a2 + 41) = *&v28[9];
  outlined init with copy of HitTestableEvent(&v26, &v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v29) = v6;
  v30 = v9;
  v31 = v12;
  v32 = v15;
  v33 = v17;
  v34 = v20;
  v35 = v23;
  v36 = v22;
  return outlined destroy of HitTestableEvent(&v29);
}

uint64_t outlined init with copy of HitTestableEvent(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 16);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v3;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  v4 = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 48) = v4;

  return a2;
}

void protocol witness for EventType.customHitTestOptions.getter in conformance HitTestableEvent(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t specialized static HitTestableEvent.== infix(_:_:)(double *a1, double *a2)
{
  result = 0;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return result;
  }

  v4 = *(a1 + 2);
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = *(a1 + 6);
  v9 = *(a1 + 56);
  v10 = *(a2 + 2);
  v12 = a2[3];
  v11 = a2[4];
  v13 = a2[5];
  if (!v4)
  {
    if (!v10)
    {
      if (v6 != v12 || v5 != v11 || v7 != v13)
      {
        return 0;
      }

      goto LABEL_26;
    }

LABEL_15:

    return 0;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  result = 0;
  if (v4 == v10)
  {
    v14 = v6 == v12 && v5 == v11;
    if (v14 && v7 == v13)
    {
LABEL_26:
      if (v9)
      {
        if (a2[7])
        {
          return 1;
        }
      }

      else
      {
        if (v8 == *(a2 + 6))
        {
          v18 = *(a2 + 56);
        }

        else
        {
          v18 = 1;
        }

        if ((v18 & 1) == 0)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t initializeWithCopy for HitTestableEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for HitTestableEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v4;
  return a1;
}

uint64_t assignWithTake for HitTestableEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for HitTestableEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for HitTestableEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t one-time initialization function for moduleLookupCache()
{
  type metadata accessor for ThreadSpecific<[UnsafeRawPointer : String]>();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  swift_beginAccess();
  pthread_key_create((v0 + 16), @objc closure #1 in ThreadSpecific.init(_:));
  result = swift_endAccess();
  static Tracing.moduleLookupCache = v0;
  return result;
}

uint64_t traceBody<A>(_:body:)@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  v60 = type metadata accessor for OSSignpostID();
  v6 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v52 = static Signpost.bodyInvoke;
    v70 = static Signpost.bodyInvoke;
    v50 = *(&static Signpost.bodyInvoke + 1);
    v49 = word_1ED539040;
    v71 = word_1ED539040;
    v51 = HIBYTE(word_1ED539040);
    v72 = byte_1ED539042;
    v11 = Signpost.isEnabled.getter();
    if ((v11 & 1) == 0)
    {
      return (a1)(v11);
    }

    v46 = a3;
    v47 = a2;
    v48 = a1;
    static OSSignpostID.exclusive.getter();
    v12 = static os_signpost_type_t.begin.getter();
    _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    a2 = swift_allocObject();
    *(a2 + 16) = xmmword_18DDAB4C0;
    v13 = AGTypeID.description.getter();
    v15 = v14;
    v16 = MEMORY[0x1E69E6158];
    *(a2 + 56) = MEMORY[0x1E69E6158];
    v17 = lazy protocol witness table accessor for type String and conformance String();
    *(a2 + 64) = v17;
    *(a2 + 32) = v13;
    *(a2 + 40) = v15;
    v18 = specialized static Tracing.libraryName(defining:)();
    *(a2 + 96) = v16;
    *(a2 + 104) = v17;
    *(a2 + 72) = v18;
    *(a2 + 80) = v19;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v51)
    {
      break;
    }

    v43 = _signpostLog;
    v22 = v52;
    if (v52 == 20)
    {
      v23 = 3;
    }

    else
    {
      v23 = 4;
    }

    a3 = bswap32(v52) | (4 * WORD1(v52));
    a1 = v12;
    v45 = v6;
    v25 = v6 + 16;
    v24 = *(v6 + 16);
    v44 = v10;
    v26 = v10;
    v10 = v23;
    v53 = v24;
    v27 = v24(v61, v26, v60);
    v6 = 0;
    LOBYTE(v64) = 1;
    v58 = 16 * v10;
    v54 = v25;
    v59 = (v25 - 8);
    v56 = v22;
    v57 = a2 + 32;
    v55 = v10;
LABEL_12:
    v62 = &v43;
    MEMORY[0x1EEE9AC00](v27);
    v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = v29 + 8;
    v31 = v10;
    v32 = v29 + 8;
    do
    {
      *(v32 - 1) = 0;
      *v32 = 0;
      v32 += 16;
      --v31;
    }

    while (v31);
    v33 = v57 + 40 * v6;
    while (1)
    {
      v34 = *(a2 + 16);
      if (v6 == v34)
      {
        LOBYTE(v64) = 0;
LABEL_20:
        v37 = v56;
        if (v56 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v29[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v29[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v29[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v37 != 20 && v29[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v38 = v60;
        v39 = *v59;
        v40 = v61;
        (*v59)(v61, v60);
        v41 = __swift_project_value_buffer(v38, static OSSignpostID.continuation);
        v27 = v53(v40, v41, v38);
        v10 = v55;
        if ((v64 & 1) == 0)
        {
          v39(v61, v60);

          v6 = v45;
          v10 = v44;
          v48(v42);
          goto LABEL_35;
        }

        goto LABEL_12;
      }

      if (v6 >= v34)
      {
        break;
      }

      ++v6;
      outlined init with copy of AnyTrackedValue(v33, &v70);
      v35 = v73;
      __swift_project_boxed_opaque_existential_1(&v70, v73);
      *(v30 - 1) = CVarArg.kdebugValue(_:)(a3 | a1, v35);
      *v30 = v36 & 1;
      v30 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v70);
      v33 += 40;
      if (!--v10)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  v69 = v12;
  v67 = _signpostLog;
  v68 = &dword_18D018000;
  *&v70 = v52;
  *(&v70 + 1) = v50;
  LOBYTE(v71) = v49;
  v64 = "%{public}@.body [in %{public}@]";
  v65 = 31;
  v66 = 2;
  v63 = a2;
  specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

  v48(v20);
LABEL_35:
  static os_signpost_type_t.end.getter();
  if (v51)
  {
    os_signpost(_:dso:log:name:signpostID:)();
  }

  else
  {
    OSSignpostID.rawValue.getter();
    kdebug_trace();
  }

  return (*(v6 + 8))(v10, v60);
}

uint64_t traceRuleBody<A>(_:body:)@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v55 = v6;
  v56 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v57 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = v46 - v10;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v11 = static Signpost.bodyInvoke;
  v12 = word_1ED539040;
  v13 = HIBYTE(word_1ED539040);
  v14 = byte_1ED539042;
  LODWORD(v58) = static os_signpost_type_t.begin.getter();
  v66 = v11;
  v67 = v12;
  v68 = v13;
  v69 = v14;
  if (Signpost.isEnabled.getter())
  {
    v46[0] = a3;
    v46[1] = a2;
    v47 = a1;
    static OSSignpostID.exclusive.getter();
    _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_18DDAB4C0;
    v16 = AGTypeID.description.getter();
    v18 = v17;
    v19 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v20 = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 64) = v20;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v21 = specialized static Tracing.libraryName(defining:)();
    *(v15 + 96) = v19;
    *(v15 + 104) = v20;
    *(v15 + 72) = v21;
    *(v15 + 80) = v22;
    if (one-time initialization token for _signpostLog == -1)
    {
      if (v13)
      {
LABEL_6:
        v65 = v58;
        v63 = _signpostLog;
        v64 = &dword_18D018000;
        v66 = v11;
        v67 = v12;
        v60 = "%{public}@.body [in %{public}@]";
        v61 = 31;
        v62 = 2;
        v59 = v15;
        v23 = v48;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v56 + 8))(v23, v55);
LABEL_35:

        a1 = v47;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      if (v13)
      {
        goto LABEL_6;
      }
    }

    if (v11 == 20)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    v25 = bswap32(v11) | (4 * WORD1(v11));
    v26 = v58;
    v27 = v56 + 16;
    v49 = *(v56 + 16);
    v28 = v49(v57, v48, v55);
    v29 = 0;
    LOBYTE(v60) = 1;
    v56 = v27;
    v53 = 16 * v24;
    v54 = (v27 - 8);
    v51 = *(&v11 + 1);
    v52 = v15 + 32;
    v50 = v24;
    do
    {
      v58 = v46;
      MEMORY[0x1EEE9AC00](v28);
      v31 = v46 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = v31 + 8;
      v33 = v24;
      v34 = v31 + 8;
      do
      {
        *(v34 - 1) = 0;
        *v34 = 0;
        v34 += 16;
        --v33;
      }

      while (v33);
      v35 = v52 + 40 * v29;
      while (1)
      {
        v36 = *(v15 + 16);
        if (v29 == v36)
        {
          break;
        }

        if (v29 >= v36)
        {
          __break(1u);
        }

        ++v29;
        outlined init with copy of AnyTrackedValue(v35, &v66);
        v37 = v70;
        __swift_project_boxed_opaque_existential_1(&v66, v70);
        *(v32 - 1) = CVarArg.kdebugValue(_:)(v25 | v26, v37);
        *v32 = v38 & 1;
        v32 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v66);
        v35 += 40;
        if (!--v24)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v60) = 0;
LABEL_20:
      v39 = v51;
      if (v51 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      v24 = v50;
      if (v31[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v39 != 20 && v31[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v40 = v55;
      v41 = *v54;
      v42 = v57;
      (*v54)(v57, v55);
      v43 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
      v28 = v49(v42, v43, v40);
    }

    while ((v60 & 1) != 0);
    v44 = v55;
    v41(v57, v55);
    v41(v48, v44);
    goto LABEL_35;
  }

LABEL_36:
  a1();
  return $defer #1 <A>() in traceRuleBody<A>(_:body:)();
}

uint64_t ViewGraph.graphIdentity.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return AGGraphGetCounter();
  }

  __break(1u);
  return result;
}

uint64_t DynamicProperty.instrumentsLinkValueDescription.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v8 = *(v3 + 16);
  v8(v14 - v9, v1, a1, v7);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for InstrumentsDescriptiveDynamicProperty);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v14, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v12 = InstrumentsDescriptiveDynamicProperty.instrumentsLinkValueDescription.getter(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v12;
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    outlined destroy of InstrumentsDescriptiveDynamicProperty?(v14);
    (v8)(v5, v1, a1);
    return String.init<A>(describing:)();
  }
}

uint64_t InstrumentsDescriptiveDynamicProperty.instrumentsLinkValueDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v4(v11);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for InstrumentsDescriptiveDynamicProperty);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v9, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = InstrumentsDescriptiveDynamicProperty.instrumentsLinkValueDescription.getter(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v7;
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    outlined destroy of InstrumentsDescriptiveDynamicProperty?(v9);
    (v4)(v12, a1, a2);
    return String.init<A>(describing:)();
  }
}

uint64_t State._instrumentsLinkValue.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  a2[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_1, v2, v3);
}

uint64_t Environment._instrumentsLinkValue.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = *(a1 + 16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return Environment.wrappedValue.getter(a1, boxed_opaque_existential_1);
}

uint64_t Binding._instrumentsLinkValue.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  a2[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, v2 + v3, v4);
}

const char *specialized static Tracing.libraryName(defining:)()
{
  v28 = *MEMORY[0x1E69E9840];
  v0 = 0x206E776F6E6B6E55;
  v1 = MEMORY[0x193AC2090]();
  if (!v1)
  {
    return v0;
  }

  v2 = v1;
  if (one-time initialization token for moduleLookupCache != -1)
  {
    swift_once();
  }

  v3 = static Tracing.moduleLookupCache;
  swift_beginAccess();
  v4 = pthread_getspecific(*(v3 + 2));
  if (!v4)
  {
    v5 = swift_slowAlloc();
    pthread_setspecific(*(v3 + 2), v5);
    type metadata accessor for [UnsafeRawPointer : String]();
    v27.dli_saddr = v6;
    v27.dli_fname = *(v3 + 3);
    outlined init with take of Any(&v27, v5);

    v4 = v5;
  }

  outlined init with copy of Any(v4, &v27);
  type metadata accessor for [UnsafeRawPointer : String]();
  v8 = v7;
  swift_dynamicCast();
  if (*(v25 + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
    if (v10)
    {
      v0 = *(*(v25 + 56) + 16 * v9);

LABEL_16:

      return v0;
    }
  }

  memset(&v27, 0, sizeof(v27));
  if (!dladdr(v2, &v27))
  {
    return v0;
  }

  result = v27.dli_fname;
  if (v27.dli_fname)
  {
    v12 = String.init(cString:)();
    v13 = MEMORY[0x193ABEC20](v12);

    v14 = [v13 lastPathComponent];

    v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = *(v3 + 2);

    v18 = pthread_getspecific(v17);
    if (!v18)
    {
      v19 = swift_slowAlloc();
      pthread_setspecific(*(v3 + 2), v19);
      v26 = v8;
      *&v25 = *(v3 + 3);
      outlined init with take of Any(&v25, v19);

      v18 = v19;
    }

    outlined init with copy of Any(v18, &v25);
    swift_dynamicCast();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v25 = v24;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v0, v16, v2, isUniquelyReferenced_nonNull_native);
    v21 = v25;
    v22 = pthread_getspecific(*(v3 + 2));
    if (!v22)
    {
      v23 = swift_slowAlloc();
      pthread_setspecific(*(v3 + 2), v23);
      v26 = v8;
      *&v25 = *(v3 + 3);
      outlined init with take of Any(&v25, v23);

      v22 = v23;
    }

    *v22 = v21;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of InstrumentsDescriptiveDynamicProperty?(uint64_t a1)
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for InstrumentsDescriptiveDynamicProperty?, &lazy cache variable for type metadata for InstrumentsDescriptiveDynamicProperty, &protocol descriptor for InstrumentsDescriptiveDynamicProperty, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double CGSize.subscript.getter(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return result;
}

double CGSize.flushingNegatives.getter(double result)
{
  if (result <= 0.0)
  {
    return 0.0;
  }

  return result;
}

Swift::Bool __swiftcall CGSize.contains(point:)(CGPoint point)
{
  v3 = fmin(point.x, point.y);
  v4 = point.x < v1;
  if (point.y >= v2)
  {
    v4 = 0;
  }

  return v3 >= 0.0 && v4;
}

double CGSize.scaled(by:)(double a1, double a2)
{
  v2 = a1 * a2;
  if (a2 == 0.0)
  {
    return 0.0;
  }

  return v2;
}

CGSize __swiftcall CGSize.scaled(by:)(CGSize by)
{
  v3 = by.width * v1;
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = by.height * v2;
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

double CGSize.flushingNaNs.getter(int8x16_t a1, double a2)
{
  *&a1.i64[1] = a2;
  v2 = vdupq_n_s64(0x7FF0000000000000uLL);
  a1.i64[0] = vbslq_s8(vceqq_s64(vandq_s8(a1, v2), v2), vandq_s8(a1, vceqzq_s64(vandq_s8(a1, vdupq_n_s64(0xFFFFFFFFFFFFFuLL)))), a1).u64[0];
  return *a1.i64;
}

double (*CGSize.subscript.modify(uint64_t a1, char a2))(uint64_t a1)
{
  *(a1 + 8) = v2;
  *(a1 + 16) = a2;
  v3 = v2 + 1;
  if ((a2 & 1) == 0)
  {
    v3 = v2;
  }

  *a1 = *v3;
  return CGPoint.subscript.modify;
}

double CGSize.init(_:in:by:)(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return a2;
}

double static CGSize.invalidValue.getter()
{
  if (one-time initialization token for invalidValue != -1)
  {
    swift_once();
  }

  return *&static CGSize.invalidValue;
}

__n128 (*HashableSize.value.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance CGPoint;
}

uint64_t HashableSize.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x193AC11E0](*&v3);
}

Swift::Int HashableSize.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x193AC11E0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x193AC11E0](*&v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HashableSize()
{
  Hasher.init(_seed:)();
  HashableSize.hash(into:)();
  return Hasher._finalize()();
}

uint64_t (*CGSize.animatableData.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return CGPoint.animatableData.modify;
}

double *CGSize.encode(to:)(double *result, double a2, double a3)
{
  v4 = result;
  if (a2 == 0.0)
  {
    goto LABEL_12;
  }

  v5 = a2;
  v6 = fabs(a2);
  if (v6 >= 65536.0)
  {
    v7 = 9;
  }

  else
  {
    v7 = 13;
  }

  ProtobufEncoder.encodeVarint(_:)(v7);
  if (v6 >= 65536.0)
  {
    v9 = *(v4 + 1);
    result = (v9 + 8);
    if (!__OFADD__(v9, 8))
    {
      if (*(v4 + 2) < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v5;
      }

      else
      {
        *(v4 + 1) = result;
        *(*v4 + v9) = v5;
      }

      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = *(v4 + 1);
  result = (v8 + 4);
  if (__OFADD__(v8, 4))
  {
    __break(1u);
    goto LABEL_25;
  }

  *&v5 = v5;
  if (*(v4 + 2) < result)
  {
    goto LABEL_28;
  }

  *(v4 + 1) = result;
  *(*v4 + v8) = LODWORD(v5);
LABEL_12:
  while (a3 != 0.0)
  {
    v5 = fabs(a3);
    if (v5 >= 65536.0)
    {
      v10 = 17;
    }

    else
    {
      v10 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v10);
    if (v5 >= 65536.0)
    {
      v13 = *(v4 + 1);
      result = (v13 + 8);
      if (!__OFADD__(v13, 8))
      {
        if (*(v4 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = a3;
        }

        else
        {
          *(v4 + 1) = result;
          *(*v4 + v13) = a3;
        }

        return result;
      }
    }

    else
    {
      v11 = *(v4 + 1);
      result = (v11 + 4);
      if (!__OFADD__(v11, 4))
      {
        v12 = a3;
        if (*(v4 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v12;
        }

        else
        {
          *(v4 + 1) = result;
          *(*v4 + v11) = v12;
        }

        return result;
      }

LABEL_26:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = LODWORD(v5);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HashableSize and conformance HashableSize()
{
  result = lazy protocol witness table cache variable for type HashableSize and conformance HashableSize;
  if (!lazy protocol witness table cache variable for type HashableSize and conformance HashableSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HashableSize and conformance HashableSize);
  }

  return result;
}

uint64_t LazySubviewPrefetcher.transform.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
}

void closure #1 in LazySubviewPrefetcher.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a1 + 44);
  v9 = type metadata accessor for LazySubviewPrefetcher();
  type metadata accessor for LazyLayoutViewCache();
  if (v8 != *(*AGGraphGetValue() + 228))
  {
    *(a1 + 44) = *(*AGGraphGetValue() + 228);
    LazyPrefetchState.reset()();
  }

  v10 = *MEMORY[0x1E698D3F8];
  while (1)
  {
    v12[0] = a2;
    v12[1] = a3;
    v13 = a4;
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == v10)
    {
      break;
    }

    LazySubviewPrefetcher.update(info:owner:)(v12, CurrentAttribute, v9);
    if ((*(a1 + 72) & 1) == 0)
    {
      return;
    }
  }

  __break(1u);
}

uint64_t LazyPrefetchState.reset()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v2 + 2));
    v3 = *v0;
  }

  else
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI21LazyPrefetchOperation33_903609954F063220F2F0A01B453B6D0BLLO_Tt1g5(0, *(v2 + 3) >> 1);

    *v0 = v3;
  }

  *(v0 + 8) = xmmword_18DD85550;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    v3 = result;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
    v3 = result;
  }

  *(v3 + 2) = v7;
  v3[v6 + 32] = 0;
  *v0 = v3;
  v8 = *(v3 + 3);
  v9 = v6 + 2;
  if (v9 > (v8 >> 1))
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9, 1, v3);
    v3 = result;
  }

  *(v3 + 2) = v9;
  v3[v7 + 32] = 2;
  *v0 = v3;
  return result;
}

void LazySubviewPrefetcher.update(info:owner:)(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  LODWORD(v6) = a2;
  v285 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for OSSignpostID();
  v275 = *(v8 - 8);
  v276 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v249 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v249 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v271 = &v249 - v15;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v274 = &v249 - v18;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v249 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v249 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v272 = &v249 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v249 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v270 = (&v249 - v32);
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  v273 = &v249 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v41 = &v249 - v40;
  v42 = *a1;
  v43 = *(a1 + 8);
  v44 = *(a1 + 16);
  v45 = *(v4 + 48);
  *(v4 + 72) = 0;
  if (*(v45 + 16))
  {
    v261 = v41;
    v262 = v39;
    v258 = v44;
    v259 = v43;
    v260 = v42;
    v256 = v38;
    v257 = v37;
    v46 = specialized Array._customRemoveLast()();
    if (v46 == 4)
    {
      v46 = specialized Array.remove(at:)(*(*(v4 + 48) + 16) - 1);
    }

    v279[0] = 1;
    v269 = a3;
    v268 = v46;
    if (v46 > 1u)
    {
      LOBYTE(v280) = 0;
      if (v46 == 2)
      {
        type metadata accessor for LazyLayoutViewCache();
        AGGraphGetValue();

        specialized LazyLayoutViewCache.advancePrefetchPhaseForRemoval(notify:)(v57, v6, &v280, &v278);
      }

      else
      {
        type metadata accessor for LazyLayoutViewCache();
        AGGraphGetValue();

        specialized LazyLayoutViewCache.advancePrefetchPhaseForDisplay(notify:)(v64, v6, &v280, &v278);
      }

      if (v278 == 1)
      {
        v279[0] = 0;
      }

      if ((v280 & 1) == 0)
      {
        *(v4 + 72) = 1;
      }

      goto LABEL_268;
    }

    v253 = v13;
    v254 = (v4 + 48);
    v47 = &v280;
    if (v46)
    {
      v261 = v10;
      if (one-time initialization token for prefetchOutputs != -1)
      {
        swift_once();
      }

      v48 = &static Signpost.prefetchOutputs;
      v58 = *(&static Signpost.prefetchOutputs + 1);
      v50 = static Signpost.prefetchOutputs;
      LOBYTE(v49) = word_1EAB0EAE0;
      LOBYTE(v47) = HIBYTE(word_1EAB0EAE0);
      v59 = byte_1EAB0EAE2;
      LODWORD(a3) = static os_signpost_type_t.begin.getter();
      v280 = v50;
      v281 = v58;
      v282 = v49;
      v283 = v47;
      v284 = v59;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
LABEL_56:
        v265 = *(v4 + 48);
        type metadata accessor for LazyLayoutViewCache();
        AGGraphGetValue();

        LazyLayoutViewCache.prefetchOutputs()();

        v84 = v280;
        v85 = v48;
        v86 = *v48;
        v87 = *(v48 + 1);
        v88 = *(v85 + 16);
        LOBYTE(v89) = *(v85 + 17);
        v90 = *(v85 + 18);
        LOBYTE(v49) = static os_signpost_type_t.end.getter();
        if (v84 == 1)
        {
          v280 = v86;
          v281 = v87;
          v282 = v88;
          v283 = v89;
          v284 = v90;
          if ((Signpost.isEnabled.getter() & 1) == 0)
          {
            goto LABEL_204;
          }

          static OSSignpostID.exclusive.getter();
          type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_18DDAB4C0;
          *(inited + 32) = v6;
          v92 = (inited + 32);
          v93 = MEMORY[0x1E69E76D0];
          *(inited + 56) = MEMORY[0x1E69E7668];
          *(inited + 64) = v93;
          v94 = MEMORY[0x1E69E7358];
          *(inited + 96) = MEMORY[0x1E69E72F0];
          *(inited + 104) = v94;
          v277 = inited;
          *(inited + 72) = 0;
          if (one-time initialization token for _signpostLog == -1)
          {
            if ((v89 & 1) == 0)
            {
              goto LABEL_112;
            }

            goto LABEL_60;
          }

LABEL_111:
          swift_once();
          if ((v89 & 1) == 0)
          {
LABEL_112:
            v252 = v4;
            v145 = v49;
            LOBYTE(v49) = v86;
            if (v86 == 20)
            {
              v146 = 3;
            }

            else
            {
              v146 = 4;
            }

            v4 = bswap32(v86) | (4 * (v86 >> 16));
            v147 = v145;
            v149 = v275 + 16;
            v148 = *(v275 + 2);
            v264 = v92;
            v265 = v148;
            (v148)(v271, v257, v276);
            LOBYTE(v280) = 1;
            v275 = v149;
            v272 = (16 * v146);
            v273 = v149 - 8;

            v97 = 0;
            v270 = (v150 + 32);
            v266 = v146;
            v267 = v86;
            do
            {
              v274 = &v249;
              MEMORY[0x1EEE9AC00](v150);
              v89 = &v249 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
              v86 = (v89 + 8);
              v152 = v146;
              v153 = (v89 + 8);
              do
              {
                *(v153 - 1) = 0;
                *v153 = 0;
                v153 += 16;
                --v152;
              }

              while (v152);
              v154 = &v270[5 * v97];
              while (1)
              {
                v155 = *(v277 + 16);
                if (v97 == v155)
                {
                  break;
                }

                if (v97 >= v155)
                {
                  __break(1u);
                  goto LABEL_140;
                }

                ++v97;
                v156 = v154[3];
                v49 = v154[4];
                __swift_project_boxed_opaque_existential_1(v154, v156);
                *(v86 - 1) = CVarArg.kdebugValue(_:)(v4 | v147, v156);
                *v86 = v157 & 1;
                v86 += 16;
                v154 += 5;
                if (!--v146)
                {
                  goto LABEL_124;
                }
              }

              LOBYTE(v280) = 0;
LABEL_124:
              v49 = v267;
              if (v267 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              if (*(v89 + 8) == 1)
              {
                kdebug_trace_string();
              }

              if (*(v89 + 24) == 1)
              {
                kdebug_trace_string();
              }

              if (*(v89 + 40) == 1)
              {
                kdebug_trace_string();
              }

              if (v49 != 20 && *(v89 + 56) == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v158 = *v273;
              v159 = v271;
              v160 = v276;
              (*v273)(v271, v276);
              v161 = __swift_project_value_buffer(v160, static OSSignpostID.continuation);
              v150 = (v265)(v159, v161, v160);
              v146 = v266;
            }

            while ((v280 & 1) != 0);

            v162 = v276;
            (v158)(v271, v276);
            (v158)(v257, v162);
            swift_setDeallocating();
            type metadata accessor for CVarArg();
            swift_arrayDestroy();
LABEL_203:
            v4 = v252;
            goto LABEL_204;
          }

LABEL_60:
          swift_setDeallocating();
          type metadata accessor for CVarArg();
          swift_arrayDestroy();
          v95 = v257;
          os_signpost(_:dso:log:name:signpostID:)();
          (*(v275 + 1))(v95, v276);
LABEL_101:
          v279[0] = 0;
LABEL_268:
          $defer #1 <A>() in LazySubviewPrefetcher.update(info:owner:)(v279, v4, v268);
          return;
        }

        v280 = v86;
        v281 = v87;
        v282 = v88;
        v283 = v89;
        v284 = v90;
        v96 = Signpost.isEnabled.getter();
        v97 = v254;
        if ((v96 & 1) == 0)
        {
LABEL_169:
          v173 = v265;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_170:
            v184 = *(v173 + 2);
            v183 = *(v173 + 3);
            if (v184 >= v183 >> 1)
            {
              v173 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v183 > 1), v184 + 1, 1, v173);
            }

            *(v173 + 2) = v184 + 1;
            v173[v184 + 32] = 3;
            *v97 = v173;
            goto LABEL_268;
          }

LABEL_174:
          v173 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v173 + 2) + 1, 1, v173);
          goto LABEL_170;
        }

        static OSSignpostID.exclusive.getter();
        type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v98 = swift_initStackObject();
        *(v98 + 32) = v6;
        v264 = (v98 + 32);
        *(v98 + 16) = xmmword_18DDAB4C0;
        v99 = MEMORY[0x1E69E76D0];
        *(v98 + 56) = MEMORY[0x1E69E7668];
        *(v98 + 64) = v99;
        v100 = MEMORY[0x1E69E7358];
        *(v98 + 96) = MEMORY[0x1E69E72F0];
        *(v98 + 104) = v100;
        v277 = v98;
        *(v98 + 72) = 1;
        if (one-time initialization token for _signpostLog == -1)
        {
          if (v89)
          {
LABEL_64:
            swift_setDeallocating();
            type metadata accessor for CVarArg();
            swift_arrayDestroy();
            v101 = v253;
            os_signpost(_:dso:log:name:signpostID:)();
            (*(v275 + 1))(v101, v276);
            goto LABEL_169;
          }
        }

        else
        {
LABEL_140:
          swift_once();
          if (v89)
          {
            goto LABEL_64;
          }
        }

        v252 = v4;
        if (v86 == 20)
        {
          v163 = 3;
        }

        else
        {
          v163 = 4;
        }

        v4 = bswap32(v86) | (4 * (v86 >> 16));
        v97 = v49;
        v164 = v275 + 16;
        v266 = *(v275 + 2);
        v266(v261, v253, v276);
        LOBYTE(v280) = 1;
        v274 = v163;
        v275 = v164;
        v271 = (16 * v163);
        v272 = v164 - 8;

        v166 = 0;
        v270 = (v165 + 32);
        v267 = v86;
LABEL_145:
        v273 = &v249;
        MEMORY[0x1EEE9AC00](v165);
        v168 = &v249 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
        v169 = v168 + 8;
        v170 = v274;
        v171 = v168 + 8;
        do
        {
          *(v171 - 1) = 0;
          *v171 = 0;
          v171 += 16;
          --v170;
        }

        while (v170);
        v172 = &v270[5 * v166];
        v173 = v274;
        while (1)
        {
          v174 = *(v277 + 16);
          if (v166 == v174)
          {
            LOBYTE(v280) = 0;
LABEL_153:
            v177 = v267;
            if (v267 == 20)
            {
              v178 = v261;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v178 = v261;
            }

            if (v168[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v168[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v168[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v177 != 20 && v168[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v179 = *v272;
            v180 = v276;
            (*v272)(v178, v276);
            v181 = __swift_project_value_buffer(v180, static OSSignpostID.continuation);
            v165 = (v266)(v178, v181, v180);
            if ((v280 & 1) == 0)
            {

              v182 = v276;
              v179(v178, v276);
              v179(v253, v182);
              swift_setDeallocating();
              type metadata accessor for CVarArg();
              swift_arrayDestroy();
              v4 = v252;
              v97 = v254;
              goto LABEL_169;
            }

            goto LABEL_145;
          }

          if (v166 >= v174)
          {
            break;
          }

          ++v166;
          v175 = v172[3];
          __swift_project_boxed_opaque_existential_1(v172, v175);
          *(v169 - 1) = CVarArg.kdebugValue(_:)(v4 | v97, v175);
          *v169 = v176 & 1;
          v169 += 16;
          v172 += 5;
          if (!--v173)
          {
            goto LABEL_153;
          }
        }

        __break(1u);
        goto LABEL_174;
      }

      static OSSignpostID.exclusive.getter();
      type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v60 = swift_initStackObject();
      *(v60 + 32) = v6;
      v260 = v60 + 32;
      v61 = MEMORY[0x1E69E7668];
      v62 = MEMORY[0x1E69E76D0];
      *(v60 + 16) = xmmword_18DDA6EB0;
      *(v60 + 56) = v61;
      *(v60 + 64) = v62;
      v277 = v60;
      if (one-time initialization token for _signpostLog == -1)
      {
        LODWORD(v273) = a3;
        if ((v47 & 1) == 0)
        {
LABEL_29:
          v255 = v6;
          v252 = v4;
          if (v50 == 20)
          {
            v53 = 3;
          }

          else
          {
            v53 = 4;
          }

          v4 = bswap32(v50) | (4 * WORD1(v50));
          v65 = v273;
          v66 = v275 + 16;
          v263 = *(v275 + 2);
          v263(v274, v262, v276);
          LOBYTE(v280) = 1;
          v273 = v53;
          v267 = 16 * v53;
          v264 = v66;
          v270 = (v66 - 8);

          v68 = 0;
          v265 = v50;
          v266 = (v67 + 32);
LABEL_33:
          v272 = &v249;
          MEMORY[0x1EEE9AC00](v67);
          v70 = &v249 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
          v48 = (v70 + 8);
          v71 = v273;
          v72 = v70 + 8;
          do
          {
            *(v72 - 1) = 0;
            *v72 = 0;
            v72 += 16;
            --v71;
          }

          while (v71);
          v50 = v266 + 40 * v68;
          v73 = v273;
          while (1)
          {
            v74 = *(v277 + 16);
            if (v68 == v74)
            {
              LOBYTE(v280) = 0;
LABEL_41:
              v79 = v265;
              if (v265 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v48 = &static Signpost.prefetchOutputs;
              if (v70[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v70[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v70[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v79 != 20 && v70[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v53 = *v270;
              v80 = v274;
              v81 = v276;
              (*v270)(v274, v276);
              v82 = __swift_project_value_buffer(v81, static OSSignpostID.continuation);
              v67 = v263(v80, v82, v81);
              if ((v280 & 1) == 0)
              {

                v83 = v276;
                (v53)(v274, v276);
                (v53)(v262, v83);
                swift_setDeallocating();
                type metadata accessor for CVarArg();
                swift_arrayDestroy();
                v4 = v252;
                LODWORD(v6) = v255;
                goto LABEL_56;
              }

              goto LABEL_33;
            }

            if (v68 >= v74)
            {
              break;
            }

            ++v68;
            v75 = *(v50 + 24);
            v49 = *(v50 + 32);
            v76 = __swift_project_boxed_opaque_existential_1(v50, v75);
            v77 = v75;
            v53 = v76;
            *(v48 - 1) = CVarArg.kdebugValue(_:)(v4 | v65, v77);
            *v48++ = v78 & 1;
            v50 += 40;
            if (!--v73)
            {
              goto LABEL_41;
            }
          }

          __break(1u);
          goto LABEL_66;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v257 = v22;
      v250 = v30;
      v251 = v25;
      v255 = v6;
      v253 = *(v4 + 56);
      if (one-time initialization token for prefetchMakeView != -1)
      {
        swift_once();
      }

      v6 = *(&static Signpost.prefetchMakeView + 1);
      v48 = static Signpost.prefetchMakeView;
      LOBYTE(v49) = word_1EAB0EAB8;
      LODWORD(v50) = HIBYTE(word_1EAB0EAB8);
      v51 = byte_1EAB0EABA;
      LODWORD(v274) = static os_signpost_type_t.begin.getter();
      v280 = v48;
      v281 = v6;
      v282 = v49;
      v283 = v50;
      v284 = v51;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        goto LABEL_95;
      }

      static OSSignpostID.exclusive.getter();
      type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_18DDAB4C0;
      *(v52 + 32) = v255;
      v53 = v52 + 32;
      v54 = MEMORY[0x1E69E76D0];
      *(v52 + 56) = MEMORY[0x1E69E7668];
      *(v52 + 64) = v54;
      v55 = MEMORY[0x1E69E7358];
      *(v52 + 96) = MEMORY[0x1E69E72F0];
      *(v52 + 104) = v55;
      v277 = v52;
      if (v253 >= 0xFFFFFFFF80000000)
      {
        if (v253 <= 0x7FFFFFFF)
        {
          *(v277 + 72) = v253;
          if (one-time initialization token for _signpostLog == -1)
          {
            v249 = v52 + 32;
            if (v50)
            {
LABEL_13:
              swift_setDeallocating();
              type metadata accessor for CVarArg();
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v56 = v261;
              os_signpost(_:dso:log:name:signpostID:)();
              (*(v275 + 1))(v56, v276);
LABEL_95:
              AGGraphClearUpdate();
              v280 = v260;
              v281 = v259;
              v282 = v258;
              v120 = *(v4 + 56);
              v121 = type metadata accessor for LazySubviewPrefetcher();
              v122 = v255;
              LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:owner:)(&v280, v120, v255, v121, &v278);
              AGGraphSetUpdate();
              v123 = v278;
              v125 = *(&static Signpost.prefetchMakeView + 1);
              v124 = static Signpost.prefetchMakeView;
              v126 = word_1EAB0EAB8;
              LOBYTE(v127) = HIBYTE(word_1EAB0EAB8);
              v128 = byte_1EAB0EABA;
              v129 = static os_signpost_type_t.end.getter();
              if (!v123)
              {
                v280 = v124;
                v281 = v125;
                v282 = v126;
                v283 = v127;
                v284 = v128;
                if ((Signpost.isEnabled.getter() & 1) == 0)
                {
                  goto LABEL_268;
                }

                LODWORD(v274) = v129;
                static OSSignpostID.exclusive.getter();
                type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
                v135 = swift_allocObject();
                *(v135 + 16) = xmmword_18DDAB4C0;
                *(v135 + 32) = v122;
                v136 = v135 + 32;
                v137 = MEMORY[0x1E69E76D0];
                *(v135 + 56) = MEMORY[0x1E69E7668];
                *(v135 + 64) = v137;
                v138 = MEMORY[0x1E69E7358];
                *(v135 + 96) = MEMORY[0x1E69E72F0];
                *(v135 + 104) = v138;
                v277 = v135;
                *(v135 + 72) = 0;
                if (one-time initialization token for _signpostLog == -1)
                {
                  if ((v127 & 1) == 0)
                  {
LABEL_207:
                    v264 = v136;
                    v252 = v4;
                    if (v124 == 20)
                    {
                      v140 = 3;
                    }

                    else
                    {
                      v140 = 4;
                    }

                    v4 = bswap32(v124) | (4 * (v124 >> 16));
                    v142 = v274;
                    v206 = v275 + 16;
                    v265 = *(v275 + 2);
                    (v265)(v270, v256, v276);
                    LOBYTE(v280) = 1;
                    v275 = v206;
                    v272 = (16 * v140);
                    v273 = v206 - 8;

                    v208 = 0;
                    v271 = (v207 + 32);
                    v266 = v140;
                    v267 = v124;
LABEL_211:
                    v274 = &v249;
                    MEMORY[0x1EEE9AC00](v207);
                    v127 = &v249 - ((v209 + 15) & 0xFFFFFFFFFFFFFFF0);
                    v124 = v127 + 8;
                    v210 = v140;
                    v211 = v127 + 8;
                    do
                    {
                      *(v211 - 1) = 0;
                      *v211 = 0;
                      v211 += 16;
                      --v210;
                    }

                    while (v210);
                    v212 = &v271[40 * v208];
                    while (1)
                    {
                      v213 = *(v277 + 16);
                      if (v208 == v213)
                      {
                        LOBYTE(v280) = 0;
LABEL_219:
                        v216 = v267;
                        if (v267 == 20)
                        {
                          OSSignpostID.rawValue.getter();
                        }

                        kdebug_trace();
                        if (v127[8] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v127[24] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v127[40] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v216 != 20 && v127[56] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (one-time initialization token for continuation != -1)
                        {
                          swift_once();
                        }

                        v217 = *v273;
                        v218 = v270;
                        v219 = v276;
                        (*v273)(v270, v276);
                        v220 = __swift_project_value_buffer(v219, static OSSignpostID.continuation);
                        v207 = (v265)(v218, v220, v219);
                        v140 = v266;
                        if ((v280 & 1) == 0)
                        {

                          v221 = v276;
                          (v217)(v270, v276);
                          (v217)(v256, v221);
                          swift_setDeallocating();
                          type metadata accessor for CVarArg();
                          swift_arrayDestroy();
                          swift_deallocClassInstance();
                          v4 = v252;
                          goto LABEL_268;
                        }

                        goto LABEL_211;
                      }

                      if (v208 >= v213)
                      {
                        break;
                      }

                      ++v208;
                      v214 = *(v212 + 3);
                      __swift_project_boxed_opaque_existential_1(v212, v214);
                      *(v124 - 1) = CVarArg.kdebugValue(_:)(v4 | v142, v214);
                      *v124 = v215 & 1;
                      v124 += 16;
                      v212 += 40;
                      if (!--v140)
                      {
                        goto LABEL_219;
                      }
                    }

                    __break(1u);
                    goto LABEL_235;
                  }

LABEL_105:
                  swift_setDeallocating();
                  type metadata accessor for CVarArg();
                  swift_arrayDestroy();
                  swift_deallocClassInstance();
                  v139 = v256;
                  os_signpost(_:dso:log:name:signpostID:)();
                  (*(v275 + 1))(v139, v276);
                  goto LABEL_268;
                }

LABEL_206:
                swift_once();
                if ((v127 & 1) == 0)
                {
                  goto LABEL_207;
                }

                goto LABEL_105;
              }

              if (v123 != 1)
              {
                v280 = v124;
                v281 = v125;
                v282 = v126;
                v283 = v127;
                v284 = v128;
                if ((Signpost.isEnabled.getter() & 1) == 0)
                {
                  goto LABEL_264;
                }

                LODWORD(v274) = v129;
                v140 = v251;
                static OSSignpostID.exclusive.getter();
                type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
                v141 = swift_allocObject();
                *(v141 + 32) = v122;
                v142 = v141 + 32;
                *(v141 + 16) = xmmword_18DDAB4C0;
                v143 = MEMORY[0x1E69E76D0];
                *(v141 + 56) = MEMORY[0x1E69E7668];
                *(v141 + 64) = v143;
                v144 = MEMORY[0x1E69E7358];
                *(v141 + 96) = MEMORY[0x1E69E72F0];
                *(v141 + 104) = v144;
                v277 = v141;
                *(v141 + 72) = 1;
                if (one-time initialization token for _signpostLog == -1)
                {
                  if ((v127 & 1) == 0)
                  {
LABEL_236:
                    v252 = v4;
                    v222 = v124;
                    if (v124 == 20)
                    {
                      v223 = 3;
                    }

                    else
                    {
                      v223 = 4;
                    }

                    v4 = bswap32(v124) | (4 * (v124 >> 16));
                    v224 = v274;
                    v226 = v275 + 16;
                    v225 = *(v275 + 2);
                    v227 = v140;
                    v228 = v223;
                    v265 = v142;
                    v266 = v225;
                    (v225)(v257, v227, v276);
                    LOBYTE(v280) = 1;
                    v275 = v226;
                    v272 = (16 * v228);
                    v273 = v226 - 8;

                    v230 = 0;
                    v270 = v222;
                    v271 = (v229 + 32);
                    v267 = v228;
LABEL_240:
                    v274 = &v249;
                    MEMORY[0x1EEE9AC00](v229);
                    v232 = &v249 - ((v231 + 15) & 0xFFFFFFFFFFFFFFF0);
                    v233 = v232 + 8;
                    v234 = v228;
                    v235 = v232 + 8;
                    do
                    {
                      *(v235 - 1) = 0;
                      *v235 = 0;
                      v235 += 16;
                      --v234;
                    }

                    while (v234);
                    v236 = &v271[40 * v230];
                    while (1)
                    {
                      v237 = *(v277 + 16);
                      if (v230 == v237)
                      {
                        LOBYTE(v280) = 0;
LABEL_248:
                        v242 = v270;
                        if (v270 == 20)
                        {
                          v243 = v257;
                          OSSignpostID.rawValue.getter();
                          kdebug_trace();
                        }

                        else
                        {
                          kdebug_trace();
                          v243 = v257;
                        }

                        if (v232[8] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v232[24] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v232[40] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v242 != 20 && v232[56] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (one-time initialization token for continuation != -1)
                        {
                          swift_once();
                        }

                        v226 = *v273;
                        v244 = v276;
                        (*v273)(v243, v276);
                        v245 = __swift_project_value_buffer(v244, static OSSignpostID.continuation);
                        v229 = (v266)(v243, v245, v244);
                        v228 = v267;
                        if ((v280 & 1) == 0)
                        {

                          v246 = v276;
                          (v226)(v243, v276);
                          (v226)(v251, v246);
                          swift_setDeallocating();
                          type metadata accessor for CVarArg();
                          swift_arrayDestroy();
                          swift_deallocClassInstance();
                          v4 = v252;
                          goto LABEL_264;
                        }

                        goto LABEL_240;
                      }

                      if (v230 >= v237)
                      {
                        break;
                      }

                      ++v230;
                      v238 = *(v236 + 3);
                      v239 = __swift_project_boxed_opaque_existential_1(v236, v238);
                      v240 = v238;
                      v226 = v239;
                      *(v233 - 1) = CVarArg.kdebugValue(_:)(v4 | v224, v240);
                      *v233 = v241 & 1;
                      v233 += 16;
                      v236 += 40;
                      if (!--v228)
                      {
                        goto LABEL_248;
                      }
                    }

                    __break(1u);
                    goto LABEL_271;
                  }

                  goto LABEL_109;
                }

LABEL_235:
                swift_once();
                if ((v127 & 1) == 0)
                {
                  goto LABEL_236;
                }

LABEL_109:
                swift_setDeallocating();
                type metadata accessor for CVarArg();
                swift_arrayDestroy();
                swift_deallocClassInstance();
                os_signpost(_:dso:log:name:signpostID:)();
                (*(v275 + 1))(v140, v276);
LABEL_264:
                *(v4 + 56) = v253 + 1;
                v226 = *(v4 + 48);
                if (swift_isUniquelyReferenced_nonNull_native())
                {
LABEL_265:
                  v248 = *(v226 + 2);
                  v247 = *(v226 + 3);
                  if (v248 >= v247 >> 1)
                  {
                    v226 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v247 > 1), v248 + 1, 1, v226);
                  }

                  *(v226 + 2) = v248 + 1;
                  v226[v248 + 32] = 1;
                  *v254 = v226;
                  goto LABEL_268;
                }

LABEL_271:
                v226 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v226 + 2) + 1, 1, v226);
                goto LABEL_265;
              }

              v280 = v124;
              v281 = v125;
              v282 = v126;
              v283 = v127;
              v284 = v128;
              if (Signpost.isEnabled.getter())
              {
                LODWORD(v274) = v129;
                v130 = v250;
                static OSSignpostID.exclusive.getter();
                type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
                v131 = swift_allocObject();
                *(v131 + 16) = xmmword_18DDAB4C0;
                *(v131 + 32) = v122;
                v132 = v131 + 32;
                v133 = MEMORY[0x1E69E76D0];
                *(v131 + 56) = MEMORY[0x1E69E7668];
                *(v131 + 64) = v133;
                v134 = MEMORY[0x1E69E7358];
                *(v131 + 96) = MEMORY[0x1E69E72F0];
                *(v131 + 104) = v134;
                v277 = v131;
                *(v131 + 72) = 0;
                if (one-time initialization token for _signpostLog == -1)
                {
                  if (v127)
                  {
LABEL_100:
                    swift_setDeallocating();
                    type metadata accessor for CVarArg();
                    swift_arrayDestroy();
                    swift_deallocClassInstance();
                    os_signpost(_:dso:log:name:signpostID:)();
                    (*(v275 + 1))(v130, v276);
                    goto LABEL_101;
                  }
                }

                else
                {
                  swift_once();
                  if (v127)
                  {
                    goto LABEL_100;
                  }
                }

                v252 = v4;
                v185 = v124;
                if (v124 == 20)
                {
                  v186 = 3;
                }

                else
                {
                  v186 = 4;
                }

                v4 = bswap32(v124) | (4 * (v124 >> 16));
                LODWORD(v124) = v274;
                v188 = v275 + 16;
                v187 = *(v275 + 2);
                v189 = v130;
                v190 = v186;
                v264 = v132;
                v265 = v187;
                (v187)(v272, v189, v276);
                LOBYTE(v280) = 1;
                v271 = (16 * v190);
                v275 = v188;
                v273 = v188 - 8;

                v136 = 0;
                v270 = (v191 + 32);
                v266 = v190;
                v267 = v185;
LABEL_180:
                v274 = &v249;
                MEMORY[0x1EEE9AC00](v191);
                v127 = &v249 - ((v192 + 15) & 0xFFFFFFFFFFFFFFF0);
                v193 = v127 + 8;
                v194 = v190;
                v195 = v127 + 8;
                do
                {
                  *(v195 - 1) = 0;
                  *v195 = 0;
                  v195 += 16;
                  --v194;
                }

                while (v194);
                v196 = &v270[5 * v136];
                while (1)
                {
                  v197 = *(v277 + 16);
                  if (v136 == v197)
                  {
                    LOBYTE(v280) = 0;
LABEL_188:
                    v200 = v267;
                    if (v267 == 20)
                    {
                      OSSignpostID.rawValue.getter();
                    }

                    kdebug_trace();
                    if (v127[8] == 1)
                    {
                      kdebug_trace_string();
                    }

                    if (v127[24] == 1)
                    {
                      kdebug_trace_string();
                    }

                    if (v127[40] == 1)
                    {
                      kdebug_trace_string();
                    }

                    if (v200 != 20 && v127[56] == 1)
                    {
                      kdebug_trace_string();
                    }

                    if (one-time initialization token for continuation != -1)
                    {
                      swift_once();
                    }

                    v201 = v272;
                    v202 = *v273;
                    v203 = v276;
                    (*v273)(v272, v276);
                    v204 = __swift_project_value_buffer(v203, static OSSignpostID.continuation);
                    v191 = (v265)(v201, v204, v203);
                    v190 = v266;
                    if ((v280 & 1) == 0)
                    {

                      v205 = v276;
                      (v202)(v272, v276);
                      (v202)(v250, v205);
                      swift_setDeallocating();
                      type metadata accessor for CVarArg();
                      swift_arrayDestroy();
                      swift_deallocClassInstance();
                      goto LABEL_203;
                    }

                    goto LABEL_180;
                  }

                  if (v136 >= v197)
                  {
                    break;
                  }

                  ++v136;
                  v198 = v196[3];
                  __swift_project_boxed_opaque_existential_1(v196, v198);
                  *(v193 - 1) = CVarArg.kdebugValue(_:)(v4 | v124, v198);
                  *v193 = v199 & 1;
                  v193 += 16;
                  v196 += 5;
                  if (!--v190)
                  {
                    goto LABEL_188;
                  }
                }

                __break(1u);
                goto LABEL_206;
              }

LABEL_204:
              v279[0] = 0;
              goto LABEL_268;
            }

            goto LABEL_68;
          }

LABEL_67:
          swift_once();
          v249 = v53;
          if (v50)
          {
            goto LABEL_13;
          }

LABEL_68:
          v252 = v4;
          v102 = v48;
          if (v48 == 20)
          {
            v89 = 3;
          }

          else
          {
            v89 = 4;
          }

          v4 = bswap32(v48) | (4 * (v48 >> 16));
          LODWORD(v86) = v274;
          v103 = v275 + 16;
          v262 = *(v275 + 2);
          v262(v273, v261, v276);
          LOBYTE(v280) = 1;
          v267 = 16 * v89;
          v263 = v103;
          v271 = v103 - 8;

          v105 = 0;
          v265 = v102;
          v266 = (v104 + 32);
          v264 = v89;
LABEL_72:
          v274 = &v249;
          MEMORY[0x1EEE9AC00](v104);
          v92 = &v249 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
          v107 = v92 + 8;
          v108 = v89;
          v109 = v92 + 8;
          do
          {
            *(v109 - 1) = 0;
            *v109 = 0;
            v109 += 16;
            --v108;
          }

          while (v108);
          v110 = v266 + 40 * v105;
          while (1)
          {
            v111 = *(v277 + 16);
            if (v105 == v111)
            {
              LOBYTE(v280) = 0;
LABEL_80:
              v114 = v265;
              if (v265 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              if (v92[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v92[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v114 != 20 && v92[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v115 = *v271;
              v116 = v273;
              v117 = v276;
              (*v271)(v273, v276);
              v118 = __swift_project_value_buffer(v117, static OSSignpostID.continuation);
              v104 = (v262)(v116, v118, v117);
              v89 = v264;
              if ((v280 & 1) == 0)
              {

                v119 = v276;
                v115(v273, v276);
                v115(v261, v119);
                swift_setDeallocating();
                type metadata accessor for CVarArg();
                swift_arrayDestroy();
                swift_deallocClassInstance();
                v4 = v252;
                goto LABEL_95;
              }

              goto LABEL_72;
            }

            if (v105 >= v111)
            {
              break;
            }

            ++v105;
            v112 = *(v110 + 3);
            v49 = *(v110 + 4);
            __swift_project_boxed_opaque_existential_1(v110, v112);
            *(v107 - 1) = CVarArg.kdebugValue(_:)(v4 | v86, v112);
            *v107 = v113 & 1;
            v107 += 16;
            v110 += 40;
            if (!--v89)
            {
              goto LABEL_80;
            }
          }

          __break(1u);
          goto LABEL_111;
        }

LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      __break(1u);
    }

    swift_once();
    LODWORD(v273) = a3;
    if ((v47 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_21:
    swift_setDeallocating();
    type metadata accessor for CVarArg();
    swift_arrayDestroy();
    v63 = v262;
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v275 + 1))(v63, v276);
    goto LABEL_56;
  }
}