uint64_t Color.ResolvedHDR.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for ColorBox<ResolvedColorProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ResolvedHDR.CodingKeys>, lazy protocol witness table accessor for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys, &unk_1F007B5A0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = 0;
  lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

double Color.ResolvedHDR.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized Color.ResolvedHDR.init(from:)(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

void Color.ResolvedHDR.base.setter(float a1, float a2, float a3, float a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void Color.ResolvedHDR.red.getter()
{
  v1 = -*v0;
  if (*v0 > 0.0)
  {
    v1 = *v0;
  }

  if (v1 > 0.0031308 && v1 != 1.0)
  {
    powf(v1, 0.41667);
  }
}

void Color.ResolvedHDR.green.getter()
{
  v1 = *(v0 + 4);
  v2 = -v1;
  if (v1 > 0.0)
  {
    v2 = *(v0 + 4);
  }

  if (v2 > 0.0031308 && v2 != 1.0)
  {
    powf(v2, 0.41667);
  }
}

void Color.ResolvedHDR.blue.getter()
{
  v1 = *(v0 + 8);
  v2 = -v1;
  if (v1 > 0.0)
  {
    v2 = *(v0 + 8);
  }

  if (v2 > 0.0031308 && v2 != 1.0)
  {
    powf(v2, 0.41667);
  }
}

void Color.ResolvedHDR.map(_:)(float (*a1)(float, float, float, float)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  *a2 = a1(*v2, *(v2 + 4), *(v2 + 8), *(v2 + 12));
  *(a2 + 4) = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  *(a2 + 16) = v4;
}

Swift::Int Color.ResolvedHDR.hashValue.getter()
{
  Hasher.init(_seed:)();
  Color.ResolvedHDR.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Color.ResolvedHDR()
{
  Hasher.init(_seed:)();
  Color.ResolvedHDR.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.ResolvedHDR()
{
  Hasher.init(_seed:)();
  Color.ResolvedHDR.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Color.ResolvedHDR(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = *a2;
  v6 = *(a2 + 4);
  return specialized static Color.ResolvedHDR.== infix(_:_:)(&v3, &v5);
}

void static Color.ResolvedHDR.clear.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2143289344;
}

double static Color.ResolvedHDR.black.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18DD85540;
  *(a1 + 16) = 2143289344;
  return result;
}

__n128 static Color.ResolvedHDR.white.getter@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.4S, #1.0 }

  *a1 = result;
  a1[1].n128_u32[0] = 2143289344;
  return result;
}

uint64_t Color.ResolvedHDR._apply(to:)(uint64_t result)
{
  if (*(result + 24) <= 2u)
  {
    v2 = result;
    v3 = *result;
    if (*(result + 24))
    {
      if (*(result + 24) == 1)
      {
        v4 = *(result + 8);
        if (v4 == *(result + 16))
        {
          return result;
        }

        v5 = *v1;
        v6 = *(v1 + 2);
        v7 = *(v1 + 3);
        if (v4 >= 1)
        {
          v8 = *(result + 48);
          v9 = *(result + 56);
          if (v9)
          {
            v10 = v1;

            v11 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v8);
            v13 = v12;
          }

          else
          {
            v10 = v1;
            v34 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(*(result + 48));
            if (v34)
            {
              v11 = v34[9];
              v13 = v34[10];
            }

            else
            {
              v13 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
              v11 = &type metadata for CoreUIDefaultSystemColorDefinition;
            }
          }

          v50 = v8;
          v51 = v9;
          v44 = v13[2];

          v45 = v44(v4, &v50, v11, v13);

          v7 = v7 * v45;
          v1 = v10;
        }

        v46 = *(v1 + 4);
        v50 = v5;
        v51 = __PAIR64__(LODWORD(v7), v6);
        v52 = v46;
        v53 = 0;
        v54 = 1065353216;
        v55 = 0;
        v56 = -1;
        v47 = MEMORY[0x1E69E7CC0];
        v57 = MEMORY[0x1E69E7CC0];
        v49 = v3;
        if (*(v2 + 40) == 1)
        {
          v47 = *(v2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v48, 1u);
          *(v2 + 32) = 0;
          *(v2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v50, &v49, v4);
        result = outlined consume of _ShapeStyle_Shape.Result(*(v2 + 32), *(v2 + 40));
        *(v2 + 32) = v47;
        v43 = 1;
      }

      else
      {
        v23 = *v1;
        v24 = *(v1 + 2);
        v25 = *(v1 + 3);
        if (v3 >= 1)
        {
          v26 = *(result + 48);
          v27 = *(result + 56);
          if (v27)
          {
            v28 = v1;

            v29 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v26);
            v31 = v30;
          }

          else
          {
            v28 = v1;
            v33 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(*(result + 48));
            if (v33)
            {
              v29 = v33[9];
              v31 = v33[10];
            }

            else
            {
              v31 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
              v29 = &type metadata for CoreUIDefaultSystemColorDefinition;
            }
          }

          v50 = v26;
          v51 = v27;
          v39 = v31[2];

          v40 = v39(v3, &v50, v29, v31);

          v25 = v25 * v40;
          v1 = v28;
        }

        v41 = *(v1 + 4);
        type metadata accessor for ColorBox<ResolvedColorProvider>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider, type metadata accessor for ColorBox);
        v42 = swift_allocObject();
        *(v42 + 16) = v23;
        *(v42 + 24) = v24;
        *(v42 + 28) = v25;
        *(v42 + 32) = v41;
        result = outlined consume of _ShapeStyle_Shape.Result(*(v2 + 32), *(v2 + 40));
        *(v2 + 32) = v42;
        v43 = 3;
      }

      *(v2 + 40) = v43;
    }

    else
    {
      v14 = *v1;
      v15 = *(v1 + 2);
      v16 = *(v1 + 3);
      if (v3 >= 1)
      {
        v17 = *(result + 48);
        v18 = *(result + 56);
        if (v18)
        {
          v19 = v1;

          v20 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v17);
          v22 = v21;
        }

        else
        {
          v19 = v1;
          v32 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(*(result + 48));
          if (v32)
          {
            v20 = v32[9];
            v22 = v32[10];
          }

          else
          {
            v22 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
            v20 = &type metadata for CoreUIDefaultSystemColorDefinition;
          }
        }

        v50 = v17;
        v51 = v18;
        v35 = v22[2];

        v36 = v35(v3, &v50, v20, v22);

        v16 = v16 * v36;
        v1 = v19;
      }

      v37 = *(v1 + 4);
      type metadata accessor for ColorBox<ResolvedColorProvider>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider, type metadata accessor for ColorBox);
      v38 = swift_allocObject();
      *(v38 + 16) = v14;
      *(v38 + 24) = v15;
      *(v38 + 28) = v16;
      *(v38 + 32) = v37;
      result = outlined consume of _ShapeStyle_Shape.Result(*(v2 + 32), *(v2 + 40));
      *(v2 + 32) = v38;
      *(v2 + 40) = 0;
    }
  }

  return result;
}

void (*Color.ResolvedHDR.animatableData.modify(uint64_t *a1))(float32x4_t **a1, char a2)
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
  *(v3 + 24) = v1;
  v9 = *v1;
  v5 = v1[1].i32[0];
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v6 = v9;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v10, v9.f32[0], v9.u32[1], v9.f32[2], v9.f32[3]);
    v6 = v10;
  }

  v7.i64[0] = 0x4300000043000000;
  v7.i64[1] = 0x4300000043000000;
  v4[2] = vmulq_f32(v6, v7);
  v4[3].i32[0] = v5;
  return Color.ResolvedHDR.animatableData.modify;
}

void Color.ResolvedHDR.animatableData.modify(float32x4_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[3].i32[0];
    v5 = v2[2];
    v6 = v3;
    v4 = &v5;
  }

  else
  {
    v4 = v2 + 2;
  }

  Color.ResolvedHDR.animatableData.setter(v4);

  free(v2);
}

float32x4_t *static Color.ResolvedHDR._Animatable.+ infix(_:_:)@<X0>(float32x4_t *result@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = result[1].f32[0];
  if (v3 <= a2[1].f32[0])
  {
    v3 = a2[1].f32[0];
  }

  *a3 = vaddq_f32(*result, *a2);
  a3[1].f32[0] = v3;
  return result;
}

float32x4_t protocol witness for VectorArithmetic.scale(by:) in conformance Color.ResolvedHDR._Animatable(double a1)
{
  v2 = a1;
  result = vmulq_n_f32(*v1, v2);
  *v1 = result;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance Color.ResolvedHDR(uint64_t *a1))(void *a1, char a2)
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
  *v3 = v1;
  v4 = *v1;
  *(v3 + 24) = *(v1 + 4);
  *(v3 + 8) = v4;
  Color.ResolvedHDR.animatableData.getter((v3 + 28));
  return protocol witness for Animatable.animatableData.modify in conformance Color.ResolvedHDR;
}

void protocol witness for Animatable.animatableData.modify in conformance Color.ResolvedHDR(void *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 28);
  if (a2)
  {
    v4 = *(v2 + 44);
    v5 = *(v2 + 28);
    v6 = v4;
    v3 = &v5;
  }

  Color.ResolvedHDR.animatableData.setter(v3);

  free(v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ResolvedHDR()
{
  Color.Resolved.description.getter(*v0, v0[1], v0[2], v0[3]);
  v3 = v1;
  MEMORY[0x193ABEDD0](94, 0xE100000000000000);
  Float.write<A>(to:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  return v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.ResolvedHDR.CodingKeys()
{
  if (*v0)
  {
    return 0x6D6F6F7264616568;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.ResolvedHDR.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6F6F7264616568 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ResolvedHDR.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ResolvedHDR.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance Color.ResolvedHDR@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized Color.ResolvedHDR.init(from:)(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

double Color.ResolvedHDR.init(from:)@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized Color.ResolvedHDR.init(from:)(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

double protocol witness for ProtobufDecodableMessage.init(from:) in conformance Color.ResolvedHDR@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized Color.ResolvedHDR.init(from:)(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

float32x4_t *specialized static Color.ResolvedHDR._Animatable.+= infix(_:_:)(float32x4_t *result, float32x4_t *a2)
{
  v2 = a2[1].f32[0];
  *result = vaddq_f32(*a2, *result);
  if (result[1].f32[0] > v2)
  {
    v2 = result[1].f32[0];
  }

  result[1].f32[0] = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys);
  }

  return result;
}

uint64_t specialized Color.ResolvedHDR.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  type metadata accessor for ColorBox<ResolvedColorProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ResolvedHDR.CodingKeys>, lazy protocol witness table accessor for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys, &unk_1F007B5A0, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.ResolvedHDR.CodingKeys and conformance Color.ResolvedHDR.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v16 = 0;
  lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v17;
  v11 = v18;
  LOBYTE(v17) = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  if ((v13 & 0x100000000) != 0)
  {
    v14 = NAN;
  }

  else
  {
    v14 = *&v13;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  *(v9 + 8) = v11;
  *(v9 + 16) = v14;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Color.ResolvedHDR._Animatable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for ColorBox<ResolvedColorProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t PlatformItemsReader.content.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PlatformItemsReader.content.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PlatformItemsReader.source.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = type metadata accessor for ZStack();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t PlatformItemsReader.source.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 68);
  v5 = type metadata accessor for ZStack();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PlatformItemsReader.init(for:content:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, void *a5@<X8>)
{
  *a5 = a2;
  a5[1] = a3;
  v7 = one-time initialization token for center;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = static Alignment.center;
  v9 = type metadata accessor for PlatformItemsReader();
  ZStack.init(alignment:content:)(v8, *(&v8 + 1), a5 + *(v9 + 68));

  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t closure #1 in PlatformItemsReader.init(for:content:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  v17(v14);
  static ViewBuilder.buildExpression<A>(_:)(v12, a5, a8);
  v18 = *(v10 + 8);
  v18(v12, a5);
  static ViewBuilder.buildExpression<A>(_:)(v16, a5, a8);
  return (v18)(v16, a5);
}

uint64_t static PlatformItemsReader._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v53 = a9;
  v127 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v52 = &v48 - v18;
  *&v121 = a3;
  *(&v121 + 1) = a4;
  *&v122 = a5;
  *(&v122 + 1) = a6;
  *&v123 = a7;
  *(&v123 + 1) = a8;
  v19 = type metadata accessor for PlatformItemsReader.Child();
  v56 = *(v19 - 8);
  v57 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v55 = &v48 - v22;
  v23 = *(a2 + 48);
  v123 = *(a2 + 32);
  v124 = v23;
  v125 = *(a2 + 64);
  v24 = *(a2 + 16);
  v121 = *a2;
  v25 = *a1;
  v126 = *(a2 + 80);
  v122 = v24;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v64 = a6;
  v65 = a7;
  v66 = a8;
  v49 = v25;
  LODWORD(v109) = v25;
  *&v115 = a3;
  v51 = a4;
  *(&v115 + 1) = a4;
  *&v116 = a5;
  *(&v116 + 1) = a6;
  v58 = a7;
  *&v117 = a7;
  *(&v117 + 1) = a8;
  type metadata accessor for PlatformItemsReader();
  type metadata accessor for _GraphValue();
  v54 = a5;
  v48 = type metadata accessor for ZStack();
  _GraphValue.subscript.getter(partial apply for closure #1 in static PlatformItemsReader._makeView(view:inputs:), v48, &v115);
  v26 = v115;
  specialized static GraphHost.currentHost.getter();
  v27 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], &type metadata for PreferenceKeys, 0);

  v117 = v123;
  v118 = v124;
  v119 = v125;
  v120 = v126;
  v115 = v121;
  v116 = v122;
  v28 = *(a6 + 32);
  outlined init with copy of _ViewInputs(&v121, &v109);
  v28(&v109, a3, a6);
  if ((v109 & 0x20) == 0)
  {
    v99 = v123;
    v100 = v124;
    v101 = v125;
    v102 = v126;
    v97 = v121;
    v98 = v122;
    _ViewInputs.withoutGeometryDependencies.getter(&v103);
    v111 = v117;
    v112 = v118;
    v113 = v119;
    v114 = v120;
    v109 = v115;
    v110 = v116;
    outlined destroy of _ViewInputs(&v109);
    v117 = v105;
    v118 = v106;
    v119 = v107;
    v120 = v108;
    v115 = v103;
    v116 = v104;
  }

  *&v118 = MEMORY[0x1E69E7CC0];
  DWORD2(v118) = v27;
  (*(a6 + 48))(&v115, a3, a6);
  v111 = v117;
  v112 = v118;
  v113 = v119;
  v114 = v120;
  v109 = v115;
  v110 = v116;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v93 = v111;
  v94 = v112;
  v95 = v113;
  v96 = v114;
  v91 = v109;
  v92 = v110;
  v102 = v114;
  v30 = v111;
  LODWORD(v93) = 0;
  LODWORD(v83[0]) = v26;
  v97 = v109;
  v98 = v110;
  v100 = v112;
  v101 = v113;
  v99 = v93;
  v87 = v93;
  v88 = v112;
  v89 = v113;
  v90 = v114;
  v85 = v109;
  v86 = v110;
  outlined init with copy of _ViewInputs(&v109, &v103);
  outlined init with copy of _ViewInputs(&v97, &v103);
  static ZStack._makeView(view:inputs:)(v83, &v85, v54, a8, v60);
  v105 = v87;
  v106 = v88;
  v107 = v89;
  v108 = v90;
  v103 = v85;
  v104 = v86;
  outlined destroy of _ViewInputs(&v103);
  LODWORD(v93) = v30;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v60, &v91);
    AGSubgraphEndTreeElement();
  }

  v87 = v93;
  v88 = v94;
  v89 = v95;
  v90 = v96;
  v85 = v91;
  v86 = v92;
  outlined destroy of _ViewInputs(&v85);
  v83[0] = v60[0];
  v31 = (*(a6 + 56))(v83, a3, a6);

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v33 = v52;
  (*(a6 + 16))(a3, a6);
  v34 = v55;
  v35 = v33;
  v36 = v51;
  PlatformItemsReader.Child.init(content:viewContent:oldContent:)(v31, OffsetAttribute2, v35, v55);
  v37 = v50;
  v38 = v34;
  v39 = v57;
  (*(v56 + 16))(v50, v38, v57);
  WitnessTable = swift_getWitnessTable();
  _GraphValue.init<A>(_:)(v37, v36, v39, WitnessTable, &v59);
  v41 = v59;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v77 = v123;
  v78 = v124;
  v79 = v125;
  v80 = v126;
  v75 = v121;
  v76 = v122;
  v42 = v123;
  LODWORD(v77) = 0;
  LODWORD(v67[0]) = v41;
  v81[0] = v121;
  v81[1] = v122;
  v82 = v126;
  v81[3] = v124;
  v81[4] = v125;
  v81[2] = v77;
  v71 = v77;
  v72 = v124;
  v73 = v125;
  v74 = v126;
  v69 = v121;
  v70 = v122;
  v43 = v36;
  v44 = v58;
  v45 = *(v58 + 24);
  outlined init with copy of _ViewInputs(&v121, v83);
  outlined init with copy of _ViewInputs(v81, v83);
  v46 = v53;
  v45(v67, &v69, v43, v44);
  v83[2] = v71;
  v83[3] = v72;
  v83[4] = v73;
  v84 = v74;
  v83[0] = v69;
  v83[1] = v70;
  outlined destroy of _ViewInputs(v83);
  LODWORD(v77) = v42;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v46, &v75);
    AGSubgraphEndTreeElement();
  }

  (*(v56 + 8))(v55, v57);
  v67[3] = v78;
  v67[4] = v79;
  v68 = v80;
  v67[0] = v75;
  v67[1] = v76;
  v67[2] = v77;
  outlined destroy of _ViewInputs(v67);
  v71 = v117;
  v72 = v118;
  v73 = v119;
  v74 = v120;
  v69 = v115;
  v70 = v116;
  return outlined destroy of _ViewInputs(&v69);
}

uint64_t closure #1 in static PlatformItemsReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v8 = type metadata accessor for PlatformItemsReader();
  v9 = *(v8 + 68);
  v13[2] = v8;
  v14 = type metadata accessor for ZStack();
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, partial apply for closure #1 in static PointerOffset.of(_:), v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15;
}

uint64_t PlatformItemsReader.Child.init(content:viewContent:oldContent:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for PlatformItemsReader.Child() + 72);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 32))(&a4[v6], a3, AssociatedTypeWitness);
}

uint64_t PlatformItemsReader.Child.updateValue()(void *a1)
{
  v120 = *MEMORY[0x1E69E9840];
  v104 = type metadata accessor for ObservationTracking._AccessList();
  v116 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v92 = &v87[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v97 = &v87[-v5];
  MEMORY[0x1EEE9AC00](v6);
  v98 = &v87[-v7];
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_2(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
  v95 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v87[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v101 = &v87[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v87[-v13];
  v115 = a1[3];
  v106 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v87[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v102 = &v87[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v105 = &v87[-v19];
  v20 = a1[5];
  v113 = a1;
  v21 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v91 = type metadata accessor for Optional();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v25 = &v87[-v24];
  v26 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v87[-v28];
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v31);
  v108 = &v87[-v32];
  swift_getFunctionTypeMetadata1();
  Value = AGGraphGetValue();
  v93 = v34;
  v35 = Value[1];
  v99 = *Value;
  v111 = v1;
  v36 = *v1;
  LODWORD(v100) = *MEMORY[0x1E698D3F8];
  v114 = v20;
  v109 = v30;
  v110 = AssociatedTypeWitness;
  v112 = v21;
  v107 = v35;
  if (v36 == v100)
  {
    v37 = v21;
    (*(v26 + 56))(v25, 1, 1, TupleTypeMetadata2);
    v38 = *(TupleTypeMetadata2 + 48);
    v39 = *(v114 + 16);

    v39(v37, v114);
    v40 = v114;
    v41 = v111;
    v29[v38] = 0;
    if ((*(v26 + 48))(v25, 1, TupleTypeMetadata2) != 1)
    {
      (*(v90 + 8))(v25, v91);
    }
  }

  else
  {

    v42 = AGGraphGetValue();
    v44 = v43;
    v45 = *(TupleTypeMetadata2 + 48);
    (*(v30 + 16))(v25, v42, AssociatedTypeWitness);
    v25[v45] = v44 & 1;
    (*(v26 + 56))(v25, 0, 1, TupleTypeMetadata2);
    (*(v26 + 32))(v29, v25, TupleTypeMetadata2);
    v41 = v111;
    v40 = v114;
  }

  v46 = v29[*(TupleTypeMetadata2 + 48)];
  v47 = v108;
  v48 = v110;
  (*(v109 + 32))(v108, v29, v110);
  v49 = (*(v40 + 40))(&v41[*(v113 + 18)], v47);
  v50 = v115;
  OutputValue = AGGraphGetOutputValue();
  v52 = v116;
  v53 = v104;
  if (!OutputValue || (v46 & v49 & 1) != 0 || (v93 & 1) != 0)
  {
    v89 = v87;
    MEMORY[0x1EEE9AC00](OutputValue);
    v54 = v113;
    *&v87[-80] = v112;
    *&v87[-72] = v50;
    v93 = v54[4];
    *&v87[-64] = v93;
    *&v87[-56] = v114;
    v55 = v54[6];
    v56 = v54[7];
    v91 = v55;
    *&v87[-48] = v55;
    *&v87[-40] = v56;
    v90 = v56;
    v57 = v107;
    *&v87[-32] = v99;
    *&v87[-24] = v57;
    *&v87[-16] = v47;
    if (one-time initialization token for _current != -1)
    {
      swift_once();
    }

    v58 = static ObservationCenter._current;
    swift_beginAccess();
    v59 = pthread_getspecific(v58[2]);
    v48 = v101;
    if (!v59)
    {
      v49 = swift_slowAlloc();
      pthread_setspecific(v58[2], v49);
      v119 = type metadata accessor for ObservationCenter();
      *&v118 = v58[3];
      outlined init with take of Any(&v118, v49);

      v59 = v49;
    }

    outlined init with copy of Any(v59, &v118);
    type metadata accessor for ObservationCenter();
    swift_dynamicCast();
    v60 = v117;
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == v100)
    {
      __break(1u);
    }

    else
    {
      v88 = CurrentAttribute;
      swift_beginAccess();
      v100 = *(v60 + 24);
      *(v60 + 24) = MEMORY[0x1E69E7CC0];
      v62 = (*(v52 + 56))(v48, 1, 1, v53);
      MEMORY[0x1EEE9AC00](v62);
      *&v87[-32] = v50;
      *&v87[-24] = partial apply for closure #1 in PlatformItemsReader.Child.updateValue();
      *&v87[-16] = &v87[-96];
      v63 = type metadata accessor for Error();
      v64 = v94;
      _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v48, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), &v87[-48], v95, v63, v50, MEMORY[0x1E69E7288], &v117);
      v99 = 0;
      v65 = v102;
      v41 = *(v106 + 32);
      (v41)(v102, v64, v50);
      v66 = v103;
      outlined init with take of ObservationTracking._AccessList?(v48, v103);
      v67 = v96;
      outlined init with copy of ObservationTracking._AccessList?(v66, v96);
      if ((*(v52 + 48))(v67, 1, v53) == 1)
      {
        _s11Observation0A8TrackingV11_AccessListVSgWOhTm_1(v66, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
        v68 = v67;
        v48 = v110;
        v35 = v111;
        v69 = v113;
LABEL_19:
        _s11Observation0A8TrackingV11_AccessListVSgWOhTm_1(v68, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
        (v41)(v105, v65, v115);
        v74 = *(v60 + 24);
        v75 = *(v74 + 16);
        v41 = v35;
        if (v75)
        {
          v116 = *(v52 + 16);
          v76 = v53;
          v77 = v74 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
          v78 = *(v52 + 72);
          v79 = (v52 + 8);
          v104 = v74;

          v80 = v88;
          v81 = v92;
          do
          {
            (v116)(v81, v77, v76);
            ObservationCenter.invalidate<A>(_:onChangeIn:)(v80, v81);
            (*v79)(v81, v76);
            v77 += v78;
            --v75;
          }

          while (v75);

          v48 = v110;
          v41 = v111;
          v69 = v113;
        }

        *(v60 + 24) = v100;

        MEMORY[0x1EEE9AC00](v82);
        *&v87[-16] = v69;
        *&v87[-8] = swift_getWitnessTable();
        v83 = v105;
        v84 = v115;
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v105, partial apply for closure #1 in StatefulRule.value.setter, &v87[-32], v115, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v85);
        (*(v106 + 8))(v83, v84);
        v47 = v108;
        goto LABEL_24;
      }

      v70 = v98;
      v101 = *(v52 + 32);
      (v101)(v98, v67, v53);
      (*(v52 + 16))(v97, v70, v53);
      v49 = *(v60 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v60 + 24) = v49;
      v48 = v110;
      v35 = v111;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_16:
        v73 = v49[2];
        v72 = v49[3];
        if (v73 >= v72 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v72 > 1, v73 + 1, 1, v49);
        }

        v49[2] = v73 + 1;
        v52 = v116;
        v53 = v104;
        (v101)(v49 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v116 + 72) * v73, v97, v104);
        *(v60 + 24) = v49;
        (*(v52 + 8))(v98, v53);
        v69 = v113;
        v68 = v103;
        v65 = v102;
        goto LABEL_19;
      }
    }

    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
    *(v60 + 24) = v49;
    goto LABEL_16;
  }

LABEL_24:
  $defer #1 <A, B, C>() in PlatformItemsReader.Child.updateValue()(v41, v47);

  return (*(v109 + 8))(v47, v48);
}

uint64_t $defer #1 <A, B, C>() in PlatformItemsReader.Child.updateValue()(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PlatformItemsReader.Child() + 72);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 24))(a1 + v4, a2, AssociatedTypeWitness);
}

uint64_t static PlatformItemTraitWriter._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return a3(a1, v6);
}

uint64_t static PlatformItemTraitWriter._makeViewList(modifier:inputs:body:)@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, _DWORD *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v37 = a6;
  v38 = a8;
  v39 = a3;
  v40 = a2;
  v41 = a9;
  v84 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a1, v74);
  v14 = *(a1 + 16);
  v75[0] = *a1;
  v75[1] = v14;
  v16 = *a1;
  v15 = *(a1 + 16);
  v75[2] = *(a1 + 32);
  v50 = v16;
  v51 = v15;
  v52 = *(a1 + 32);
  outlined init with copy of _GraphInputs(v75, &v78);
  _ViewInputs.init(withoutGeometry:)(&v50, v76);
  v52 = v76[2];
  v53 = v76[3];
  v54 = v76[4];
  v55 = v77;
  v50 = v76[0];
  v51 = v76[1];
  _ViewInputs.withoutGeometryDependencies.getter(&v68);
  outlined destroy of _ViewInputs(v76);
  v35 = a4;
  v36 = a7;
  v17 = *(*(a7 + 8) + 48);
  v34 = *(a7 + 8);
  v17(&v68, a4);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)(OffsetAttribute2, &v42);
  v19 = v42;
  v80 = v70;
  v81 = v71;
  v82 = v72;
  v83 = v73;
  v78 = v68;
  v79 = v69;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v60 = v80;
  v61 = v81;
  v62 = v82;
  v63 = v83;
  v58 = v78;
  v59 = v79;
  v21 = v80;
  LODWORD(v60) = 0;
  LODWORD(v56[0]) = v19;
  v64[0] = v78;
  v64[1] = v79;
  v65 = v83;
  v64[4] = v82;
  v64[3] = v81;
  v64[2] = v60;
  v52 = v60;
  v53 = v81;
  v54 = v82;
  v55 = v83;
  v50 = v78;
  v51 = v79;
  v22 = *(v41 + 24);
  outlined init with copy of _ViewInputs(&v78, v66);
  outlined init with copy of _ViewInputs(v64, v66);
  v22(v43, v56, &v50, a5, v41);
  v66[2] = v52;
  v66[3] = v53;
  v66[4] = v54;
  v67 = v55;
  v66[0] = v50;
  v66[1] = v51;
  outlined destroy of _ViewInputs(v66);
  LODWORD(v60) = v21;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v43, &v58);
    AGSubgraphEndTreeElement();
  }

  v56[2] = v60;
  v56[3] = v61;
  v56[4] = v62;
  v57 = v63;
  v56[0] = v58;
  v56[1] = v59;
  outlined destroy of _ViewInputs(v56);
  v23 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5(v43[0]);
  if ((v23 & 0x100000000) != 0)
  {
    v24 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    LODWORD(v50) = v23;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type _ViewOutputs.FirstItem and conformance _ViewOutputs.FirstItem();
    v24 = Attribute.init<A>(body:value:flags:update:)();
  }

  v25 = *(a1 + 64);
  v26 = (*(v34 + 16))(&v50 + 1, v35);
  *&v50 = __PAIR64__(v25, v24);
  MEMORY[0x1EEE9AC00](v26);
  *&v44 = v35;
  *(&v44 + 1) = a5;
  v27 = v37;
  *&v45 = v37;
  *(&v45 + 1) = v36;
  *&v46 = v41;
  *(&v46 + 1) = a10;
  v28 = type metadata accessor for PlatformItemTraitWriter.AddTrait();
  v33[2] = v28;
  v33[3] = swift_getWitnessTable();
  type metadata accessor for Attribute<ViewTraitCollection>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v50, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, v33, v28, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v30);
  v74[16] = v44;
  v31 = _ViewListInputs.addTraitKey<A>(_:)(v27, v27);
  v40(v31, v74);
  (*(*(v28 - 8) + 8))(&v50, v28);
  outlined destroy of _ViewListInputs(v74);
  v46 = v70;
  v47 = v71;
  v48 = v72;
  v49 = v73;
  v44 = v68;
  v45 = v69;
  return outlined destroy of _ViewInputs(&v44);
}

uint64_t PlatformItemTraitWriter.AddTrait.updateValue()(void *a1)
{
  v2 = v1;
  __dst[79] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E698D3F8];
  if (*v1 == *MEMORY[0x1E698D3F8])
  {
    bzero(__src, 0x272uLL);
    (*(*(a1[5] + 8) + 16))(__dst);
    BYTE1(__dst[78]) = 0;
    if (__src[0])
    {
      _s11Observation0A8TrackingV11_AccessListVSgWOhTm_1(__src, &lazy cache variable for type metadata for (PlatformItem, Bool)?, type metadata accessor for (PlatformItem, Bool));
    }
  }

  else
  {
    Value = AGGraphGetValue();
    v7 = v6;
    outlined init with copy of PlatformItem(Value, __src);
    BYTE1(__src[78]) = v7 & 1;
    memcpy(__dst, __src, 0x272uLL);
  }

  v8 = BYTE1(__dst[78]);
  memcpy(__src, __dst, 0x271uLL);
  if (v2[1] == v4)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v10 = *AGGraphGetValue();
    v9 = v11 & 1;
  }

  v15 = v10;
  v12 = (*(*(a1[5] + 8) + 40))(v2 + 2, __src);
  if (!AGGraphGetOutputValue() || (v8 & v12 & 1) != 0 || v9)
  {
    v13 = a1[4];
    outlined init with copy of PlatformItem(__src, __dst);
    ViewTraitCollection.subscript.setter(__dst, v13, v13, a1[7]);
    __dst[0] = v15;
    AGGraphSetOutputValue();
  }

  outlined assign with copy of PlatformItem(__src, (v2 + 2));
  return outlined destroy of PlatformItem(__src);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance PlatformItemTraitWriter<A, B, C>.AddTrait()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t View.platformItemTrait<A, B, C>(for:strategy:source:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = a7;
  v22 = a2;
  v23 = a3;
  v21 = a1;
  v25 = a5;
  v26 = a6;
  v27 = a4;
  v28 = a10;
  v29 = a11;
  v30 = a9;
  v14 = type metadata accessor for PlatformItemTraitWriter();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  v18 = v23;
  closure #1 in View.platformItemTrait<A, B, C>(for:strategy:source:)(v21, v22, v23, a4, a5, a6, a8, a9, a10, a11);
  View.modifier<A>(_:)(v17, v18, v14);
  return (*(v15 + 8))(v17, v14);
}

uint64_t closure #1 in View.platformItemTrait<A, B, C>(for:strategy:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  v18(v15);
  static ViewBuilder.buildExpression<A>(_:)(v13, a6, a10);
  v19 = *(v11 + 8);
  v19(v13, a6);
  static ViewBuilder.buildExpression<A>(_:)(v17, a6, a10);
  return (v19)(v17, a6);
}

unint64_t lazy protocol witness table accessor for type _ViewOutputs.FirstItem and conformance _ViewOutputs.FirstItem()
{
  result = lazy protocol witness table cache variable for type _ViewOutputs.FirstItem and conformance _ViewOutputs.FirstItem;
  if (!lazy protocol witness table cache variable for type _ViewOutputs.FirstItem and conformance _ViewOutputs.FirstItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewOutputs.FirstItem and conformance _ViewOutputs.FirstItem);
  }

  return result;
}

uint64_t type metadata completion function for PlatformItemsReader()
{
  result = type metadata accessor for _VariadicView.Tree();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for PlatformItemsReader(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (*(v5 + 80) & 0xF8 ^ 0x1F8u) & (v6 + 16);
  v8 = *a2;
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-17 - v6) | v6) - *(v5 + 64) - v7 >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = a2[1];
    *a1 = v8;
    a1[1] = v11;
    v12 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = *(v5 + 16);

    v14(v12 + 1, v13 + 1, v4);
  }

  else
  {
    *a1 = v8;
    a1 = (v8 + v7);
  }

  return a1;
}

uint64_t destroy for PlatformItemsReader(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 32) - 8);
  v5 = *(v4 + 8);
  v6 = (*(v4 + 80) + ((a1 + (*(v4 + 80) | 7) + 16) & ~(*(v4 + 80) | 7)) + 16) & ~*(v4 + 80);

  return v5(v6);
}

void *initializeWithCopy for PlatformItemsReader(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 32);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = (v7 | 7) + 16;
  v9 = ((a1 + v8) & ~(v7 | 7));
  v10 = ((a2 + v8) & ~(v7 | 7));
  *v9 = *v10;
  v11 = v9 + v7 + 16;
  v12 = v10 + v7 + 16;

  v6(v11 & ~v7, v12 & ~v7, v5);
  return a1;
}

void *assignWithCopy for PlatformItemsReader(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = *(*(a3 + 32) - 8);
  v8 = *(v7 + 24);
  v9 = *(v7 + 80);
  v10 = (v9 | 7) + 16;
  v11 = ((a1 + v10) & ~(v9 | 7));
  v12 = ((a2 + v10) & ~(v9 | 7));
  *v11 = *v12;
  v11[1] = v12[1];
  v8((v11 + v9 + 16) & ~v9, (v12 + v9 + 16) & ~v9);
  return a1;
}

_OWORD *initializeWithTake for PlatformItemsReader(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 32);
  v6 = *(v4 + 80);
  v7 = (v6 | 7) + 16;
  v8 = ((a1 + v7) & ~(v6 | 7));
  v9 = ((a2 + v7) & ~(v6 | 7));
  *v8 = *v9;
  v5((v8 + v6 + 16) & ~v6, (v9 + v6 + 16) & ~v6);
  return a1;
}

_OWORD *assignWithTake for PlatformItemsReader(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 32) - 8);
  v7 = *(v6 + 40);
  v8 = *(v6 + 80);
  v9 = (v8 | 7) + 16;
  v10 = ((a1 + v9) & ~(v8 | 7));
  v11 = ((a2 + v9) & ~(v8 | 7));
  *v10 = *v11;
  v10[1] = v11[1];
  v7((v10 + v8 + 16) & ~v8, (v11 + v8 + 16) & ~v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItemsReader(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = v6 | 7;
  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = *(*(*(a3 + 32) - 8) + 64) - (((-17 - v6) | v6) + ((-17 - v6) | v8)) - 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v6 + ((a1 + v8 + 16) & ~v8) + 16) & ~v6);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for PlatformItemsReader(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 32) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 32) - 8) + 64);
  v11 = v10 + ((v9 + 16) & ~(v9 | 7));
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_57:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = (&a1[(v9 | 7) + 16] & ~(v9 | 7));
    if (v7 >= a2)
    {
      v24 = *(v6 + 56);

      v24(&v20[v9 + 16] & ~v9);
    }

    else
    {
      if (v10 <= 3)
      {
        v21 = ~(-1 << (8 * v10));
      }

      else
      {
        v21 = -1;
      }

      if (v10)
      {
        v22 = v21 & (~v7 + a2);
        if (v10 <= 3)
        {
          v23 = v10;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v10);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

uint64_t type metadata completion function for PlatformItemTraitWriter()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for PlatformItemTraitWriter.AddTrait(uint64_t a1)
{

  v2 = *(a1 + 40);
  if (v2 != 1)
  {

    v3 = *(a1 + 192);
    if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v4 = *(a1 + 72);
      if (v4 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(a1 + 64), v4);
      }

      if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(a1 + 176), *(a1 + 184), v3);
      }

      swift_unknownObjectRelease();
    }
  }

  result = *(a1 + 312);
  if (result != 1)
  {
    result = swift_unknownObjectRelease();
  }

  if (*(a1 + 616))
  {

    v6 = *(a1 + 424);
    if (v6)
    {
      if (v6 == 1)
      {
LABEL_16:
        if (*(a1 + 576) != 1)
        {
        }
      }

      __swift_destroy_boxed_opaque_existential_1(a1 + 400);
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t initializeWithCopy for PlatformItemTraitWriter.AddTrait(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  v5 = (a2 + 40);
  v6 = *(a2 + 40);

  if (v6 == 1)
  {
    v7 = v5[13];
    *(a1 + 232) = v5[12];
    *(a1 + 248) = v7;
    *(a1 + 264) = v5[14];
    v8 = v5[9];
    *(a1 + 168) = v5[8];
    *(a1 + 184) = v8;
    v9 = v5[11];
    *(a1 + 200) = v5[10];
    *(a1 + 216) = v9;
    v10 = v5[5];
    *(a1 + 104) = v5[4];
    *(a1 + 120) = v10;
    v11 = v5[7];
    *(a1 + 136) = v5[6];
    *(a1 + 152) = v11;
    v12 = v5[1];
    *(a1 + 40) = *v5;
    *(a1 + 56) = v12;
    v13 = v5[3];
    *(a1 + 72) = v5[2];
    *(a1 + 88) = v13;
  }

  else
  {
    v14 = *(a2 + 48);
    v15 = *(a2 + 56);
    *(a1 + 40) = v6;
    *(a1 + 48) = v14;
    *(a1 + 56) = v15;
    v16 = *(a2 + 192);
    v17 = v6;
    v18 = v14;
    v19 = v15;
    if (v16 >> 1 == 4294967294)
    {
      v20 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v20;
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 235) = *(a2 + 235);
      v21 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v21;
      v22 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v22;
      v23 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v23;
      v24 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v24;
    }

    else
    {
      v25 = *(a2 + 72);
      if (v25 == 255)
      {
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
      }

      else
      {
        v26 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v26, *(a2 + 72));
        *(a1 + 64) = v26;
        *(a1 + 72) = v25;
        v16 = *(a2 + 192);
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      if (v16 >> 1 == 0xFFFFFFFF)
      {
        v27 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v27;
      }

      else
      {
        v28 = *(a2 + 176);
        v29 = *(a2 + 184);
        v30 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v28, v29, v16);
        *(a1 + 176) = v28;
        *(a1 + 184) = v29;
        *(a1 + 192) = v16;
        *(a1 + 200) = v30;
      }

      v31 = *(a2 + 216);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = v31;
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 228) = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      v32 = *(a2 + 240);
      *(a1 + 240) = v32;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v33 = v32;
    }

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);
  v34 = *(a2 + 312);

  if (v34 == 1)
  {
    v35 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v35;
  }

  else
  {
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = v34;
    swift_unknownObjectRetain();
  }

  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  if (!*(a2 + 616))
  {
    memcpy((a1 + 336), (a2 + 336), 0x129uLL);
    return a1;
  }

  v36 = *(a2 + 344);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = v36;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  v37 = *(a2 + 424);

  if (!v37)
  {
    v39 = *(a2 + 416);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 416) = v39;
    *(a1 + 432) = *(a2 + 432);
LABEL_23:
    *(a1 + 440) = *(a2 + 440);

    goto LABEL_24;
  }

  if (v37 != 1)
  {
    v40 = *(a2 + 432);
    *(a1 + 424) = v37;
    *(a1 + 432) = v40;
    (**(v37 - 8))(a1 + 400, a2 + 400, v37);
    goto LABEL_23;
  }

  v38 = *(a2 + 416);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = v38;
  *(a1 + 432) = *(a2 + 432);
LABEL_24:
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  v41 = *(a2 + 576);
  if (v41 == 1)
  {
    v42 = *(a2 + 576);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 576) = v42;
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 608) = *(a2 + 608);
    v43 = *(a2 + 512);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 512) = v43;
    v44 = *(a2 + 544);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 544) = v44;
    v45 = *(a2 + 480);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 480) = v45;
  }

  else
  {
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 489) = *(a2 + 489);
    *(a1 + 491) = *(a2 + 491);
    *(a1 + 492) = *(a2 + 492);
    v46 = *(a2 + 512);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 512) = v46;
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = *(a2 + 568);
    *(a1 + 576) = v41;
    *(a1 + 584) = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 608) = *(a2 + 608);
  }

  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = *(a2 + 632);

  return a1;
}

uint64_t assignWithCopy for PlatformItemTraitWriter.AddTrait(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = (a1 + 40);
  v5 = *(a1 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  v7 = (a2 + 40);
  v6 = *(a2 + 40);
  if (v5 == 1)
  {
    if (v6 == 1)
    {
      v8 = *v7;
      v9 = *(a2 + 72);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = v9;
      *v4 = v8;
      v10 = *(a2 + 88);
      v11 = *(a2 + 104);
      v12 = *(a2 + 136);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = v12;
      *(a1 + 88) = v10;
      *(a1 + 104) = v11;
      v13 = *(a2 + 152);
      v14 = *(a2 + 168);
      v15 = *(a2 + 200);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 200) = v15;
      *(a1 + 152) = v13;
      *(a1 + 168) = v14;
      v16 = *(a2 + 216);
      v17 = *(a2 + 232);
      v18 = *(a2 + 264);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = v18;
      *(a1 + 216) = v16;
      *(a1 + 232) = v17;
    }

    else
    {
      *(a1 + 40) = v6;
      v30 = *(a2 + 48);
      *(a1 + 48) = v30;
      v31 = *(a2 + 56);
      *(a1 + 56) = v31;
      v32 = *(a2 + 192);
      v33 = v6;
      v34 = v30;
      v35 = v31;
      if (v32 >> 1 == 4294967294)
      {
        v36 = *(a2 + 64);
        v37 = *(a2 + 80);
        v38 = *(a2 + 112);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 112) = v38;
        *(a1 + 64) = v36;
        *(a1 + 80) = v37;
        v39 = *(a2 + 128);
        v40 = *(a2 + 144);
        v41 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v41;
        *(a1 + 128) = v39;
        *(a1 + 144) = v40;
        v42 = *(a2 + 192);
        v43 = *(a2 + 208);
        v44 = *(a2 + 224);
        *(a1 + 235) = *(a2 + 235);
        *(a1 + 208) = v43;
        *(a1 + 224) = v44;
        *(a1 + 192) = v42;
      }

      else
      {
        v62 = *(a2 + 72);
        if (v62 == 255)
        {
          v79 = *(a2 + 64);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 64) = v79;
        }

        else
        {
          v63 = *(a2 + 64);
          outlined copy of GraphicsImage.Contents(v63, *(a2 + 72));
          *(a1 + 64) = v63;
          *(a1 + 72) = v62;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        v80 = *(a2 + 108);
        *(a1 + 121) = *(a2 + 121);
        *(a1 + 108) = v80;
        v81 = *(a2 + 136);
        v82 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v82;
        *(a1 + 136) = v81;
        *(a1 + 169) = *(a2 + 169);
        *(a1 + 170) = *(a2 + 170);
        *(a1 + 171) = *(a2 + 171);
        v83 = *(a2 + 192);
        if (v83 >> 1 == 0xFFFFFFFF)
        {
          v84 = *(a2 + 192);
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 192) = v84;
        }

        else
        {
          v85 = *(a2 + 176);
          v86 = *(a2 + 184);
          v87 = *(a2 + 200);
          outlined copy of AccessibilityImageLabel(v85, v86, *(a2 + 192));
          *(a1 + 176) = v85;
          *(a1 + 184) = v86;
          *(a1 + 192) = v83;
          *(a1 + 200) = v87;
        }

        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 225) = *(a2 + 225);
        v88 = *(a2 + 228);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 228) = v88;
        v89 = *(a2 + 240);
        *(a1 + 240) = v89;
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 250) = *(a2 + 250);
        swift_unknownObjectRetain();

        v90 = v89;
      }

      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 272) = *(a2 + 272);
    }
  }

  else if (v6 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 40);
    v20 = *(a2 + 56);
    v19 = *(a2 + 72);
    *v4 = *v7;
    *(a1 + 56) = v20;
    *(a1 + 72) = v19;
    v21 = *(a2 + 136);
    v23 = *(a2 + 88);
    v22 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = v21;
    *(a1 + 88) = v23;
    *(a1 + 104) = v22;
    v24 = *(a2 + 200);
    v26 = *(a2 + 152);
    v25 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = v24;
    *(a1 + 152) = v26;
    *(a1 + 168) = v25;
    v27 = *(a2 + 264);
    v29 = *(a2 + 216);
    v28 = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = v27;
    *(a1 + 216) = v29;
    *(a1 + 232) = v28;
  }

  else
  {
    *(a1 + 40) = v6;
    v45 = v6;

    v46 = *(a1 + 48);
    v47 = *(a2 + 48);
    *(a1 + 48) = v47;
    v48 = v47;

    v49 = *(a1 + 56);
    v50 = *(a2 + 56);
    *(a1 + 56) = v50;
    v51 = v50;

    v52 = *(a2 + 192) & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 192) >> 1 == 4294967294)
    {
      if (v52 == 0x1FFFFFFFCLL)
      {
        v53 = *(a2 + 64);
        v54 = *(a2 + 80);
        v55 = *(a2 + 112);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 112) = v55;
        *(a1 + 64) = v53;
        *(a1 + 80) = v54;
        v56 = *(a2 + 128);
        v57 = *(a2 + 144);
        v58 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v58;
        *(a1 + 128) = v56;
        *(a1 + 144) = v57;
        v59 = *(a2 + 192);
        v60 = *(a2 + 208);
        v61 = *(a2 + 224);
        *(a1 + 235) = *(a2 + 235);
        *(a1 + 208) = v60;
        *(a1 + 224) = v61;
        *(a1 + 192) = v59;
      }

      else
      {
        v73 = *(a2 + 72);
        if (v73 == 255)
        {
          v91 = *(a2 + 64);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 64) = v91;
        }

        else
        {
          v74 = *(a2 + 64);
          outlined copy of GraphicsImage.Contents(v74, *(a2 + 72));
          *(a1 + 64) = v74;
          *(a1 + 72) = v73;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        v92 = *(a2 + 108);
        *(a1 + 121) = *(a2 + 121);
        *(a1 + 108) = v92;
        v93 = *(a2 + 136);
        v94 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v94;
        *(a1 + 136) = v93;
        *(a1 + 169) = *(a2 + 169);
        *(a1 + 170) = *(a2 + 170);
        *(a1 + 171) = *(a2 + 171);
        v95 = *(a2 + 192);
        if (v95 >> 1 == 0xFFFFFFFF)
        {
          v96 = *(a2 + 192);
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 192) = v96;
        }

        else
        {
          v97 = *(a2 + 176);
          v98 = *(a2 + 184);
          v99 = *(a2 + 200);
          outlined copy of AccessibilityImageLabel(v97, v98, *(a2 + 192));
          *(a1 + 176) = v97;
          *(a1 + 184) = v98;
          *(a1 + 192) = v95;
          *(a1 + 200) = v99;
        }

        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 225) = *(a2 + 225);
        v100 = *(a2 + 228);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 228) = v100;
        v101 = *(a2 + 240);
        *(a1 + 240) = v101;
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 250) = *(a2 + 250);
        swift_unknownObjectRetain();

        v102 = v101;
      }
    }

    else if (v52 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(a1 + 64);
      v64 = *(a2 + 112);
      v66 = *(a2 + 64);
      v65 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v64;
      *(a1 + 64) = v66;
      *(a1 + 80) = v65;
      v67 = *(a2 + 176);
      v69 = *(a2 + 128);
      v68 = *(a2 + 144);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v67;
      *(a1 + 128) = v69;
      *(a1 + 144) = v68;
      v71 = *(a2 + 208);
      v70 = *(a2 + 224);
      v72 = *(a2 + 192);
      *(a1 + 235) = *(a2 + 235);
      *(a1 + 208) = v71;
      *(a1 + 224) = v70;
      *(a1 + 192) = v72;
    }

    else
    {
      v75 = *(a2 + 72);
      if (*(a1 + 72) == 255)
      {
        if (v75 == 255)
        {
          v105 = *(a2 + 64);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 64) = v105;
        }

        else
        {
          v103 = *(a2 + 64);
          outlined copy of GraphicsImage.Contents(v103, *(a2 + 72));
          *(a1 + 64) = v103;
          *(a1 + 72) = v75;
        }
      }

      else if (v75 == 255)
      {
        outlined destroy of GraphicsImage.Contents(a1 + 64);
        v104 = *(a2 + 72);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = v104;
      }

      else
      {
        v76 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v76, *(a2 + 72));
        v77 = *(a1 + 64);
        *(a1 + 64) = v76;
        v78 = *(a1 + 72);
        *(a1 + 72) = v75;
        outlined consume of GraphicsImage.Contents(v77, v78);
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      v106 = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 108) = v106;
      v107 = *(a2 + 136);
      v108 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v108;
      *(a1 + 136) = v107;
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      v109 = *(a2 + 192);
      v110 = v109 & 0xFFFFFFFFFFFFFFFELL;
      if (*(a1 + 192) >> 1 == 0xFFFFFFFFLL)
      {
        if (v110 == 0x1FFFFFFFELL)
        {
          v111 = *(a2 + 192);
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 192) = v111;
        }

        else
        {
          v113 = *(a2 + 176);
          v114 = *(a2 + 184);
          v115 = *(a2 + 200);
          outlined copy of AccessibilityImageLabel(v113, v114, *(a2 + 192));
          *(a1 + 176) = v113;
          *(a1 + 184) = v114;
          *(a1 + 192) = v109;
          *(a1 + 200) = v115;
        }
      }

      else if (v110 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(a1 + 176);
        v112 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v112;
      }

      else
      {
        v116 = *(a2 + 176);
        v117 = *(a2 + 184);
        v118 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v116, v117, *(a2 + 192));
        v119 = *(a1 + 176);
        v120 = *(a1 + 184);
        v121 = *(a1 + 192);
        *(a1 + 176) = v116;
        *(a1 + 184) = v117;
        *(a1 + 192) = v109;
        *(a1 + 200) = v118;
        outlined consume of AccessibilityImageLabel(v119, v120, v121);
      }

      *(a1 + 208) = *(a2 + 208);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 216) = *(a2 + 216);

      *(a1 + 224) = *(a2 + 224);
      *(a1 + 225) = *(a2 + 225);
      v122 = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 228) = v122;
      v123 = *(a1 + 240);
      v124 = *(a2 + 240);
      *(a1 + 240) = v124;
      v125 = v124;

      *(a1 + 248) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
    }

    *(a1 + 256) = *(a2 + 256);

    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);

  v126 = *(a2 + 312);
  if (*(a1 + 312) == 1)
  {
    if (v126 == 1)
    {
      v127 = *(a2 + 304);
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 304) = v127;
    }

    else
    {
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 296) = *(a2 + 296);
      *(a1 + 304) = *(a2 + 304);
      *(a1 + 312) = *(a2 + 312);
      swift_unknownObjectRetain();
    }
  }

  else if (v126 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(a1 + 288);
    v128 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v128;
  }

  else
  {
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 292) = *(a2 + 292);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 300) = *(a2 + 300);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = *(a2 + 312);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v129 = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 320) = v129;
  v130 = *(a2 + 616);
  if (*(a1 + 616))
  {
    if (v130)
    {
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 344) = *(a2 + 344);

      *(a1 + 352) = *(a2 + 352);
      *(a1 + 360) = *(a2 + 360);

      *(a1 + 368) = *(a2 + 368);
      v131 = *(a2 + 376);
      *(a1 + 392) = *(a2 + 392);
      *(a1 + 376) = v131;
      v132 = *(a1 + 424);
      v133 = *(a2 + 424);
      if (v132 != 1)
      {
        if (v133 == 1)
        {
          outlined destroy of AccessibilityValueStorage(a1 + 400);
          v141 = *(a2 + 416);
          v140 = *(a2 + 432);
          *(a1 + 400) = *(a2 + 400);
          *(a1 + 416) = v141;
          *(a1 + 432) = v140;
        }

        else
        {
          if (v132)
          {
            v142 = (a1 + 400);
            if (v133)
            {
              __swift_assign_boxed_opaque_existential_1(v142, (a2 + 400));
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v142);
              v158 = *(a2 + 432);
              v159 = *(a2 + 416);
              *(a1 + 400) = *(a2 + 400);
              *(a1 + 416) = v159;
              *(a1 + 432) = v158;
            }
          }

          else if (v133)
          {
            *(a1 + 424) = v133;
            *(a1 + 432) = *(a2 + 432);
            (**(v133 - 8))(a1 + 400, a2 + 400);
          }

          else
          {
            v160 = *(a2 + 400);
            v161 = *(a2 + 416);
            *(a1 + 432) = *(a2 + 432);
            *(a1 + 400) = v160;
            *(a1 + 416) = v161;
          }

          *(a1 + 440) = *(a2 + 440);
        }

        goto LABEL_83;
      }

      if (v133)
      {
        if (v133 == 1)
        {
          v134 = *(a2 + 400);
          v135 = *(a2 + 432);
          *(a1 + 416) = *(a2 + 416);
          *(a1 + 432) = v135;
          *(a1 + 400) = v134;
LABEL_83:
          v162 = *(a2 + 448);
          *(a1 + 456) = *(a2 + 456);
          *(a1 + 448) = v162;
          v163 = *(a2 + 576);
          if (*(a1 + 576) == 1)
          {
            if (v163 == 1)
            {
              v164 = *(a2 + 480);
              *(a1 + 464) = *(a2 + 464);
              *(a1 + 480) = v164;
              v165 = *(a2 + 496);
              v166 = *(a2 + 512);
              v167 = *(a2 + 544);
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 544) = v167;
              *(a1 + 496) = v165;
              *(a1 + 512) = v166;
              v168 = *(a2 + 560);
              v169 = *(a2 + 576);
              v170 = *(a2 + 592);
              *(a1 + 608) = *(a2 + 608);
              *(a1 + 576) = v169;
              *(a1 + 592) = v170;
              *(a1 + 560) = v168;
            }

            else
            {
              v178 = *(a2 + 464);
              *(a1 + 472) = *(a2 + 472);
              *(a1 + 464) = v178;
              v179 = *(a2 + 480);
              *(a1 + 488) = *(a2 + 488);
              *(a1 + 480) = v179;
              *(a1 + 489) = *(a2 + 489);
              *(a1 + 490) = *(a2 + 490);
              *(a1 + 491) = *(a2 + 491);
              *(a1 + 492) = *(a2 + 492);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 504) = *(a2 + 504);
              *(a1 + 512) = *(a2 + 512);
              *(a1 + 520) = *(a2 + 520);
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 536) = *(a2 + 536);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 545) = *(a2 + 545);
              *(a1 + 552) = *(a2 + 552);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = *(a2 + 568);
              *(a1 + 576) = *(a2 + 576);
              v180 = *(a2 + 584);
              *(a1 + 600) = *(a2 + 600);
              *(a1 + 584) = v180;
              *(a1 + 608) = *(a2 + 608);
            }
          }

          else if (v163 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(a1 + 464);
            v171 = *(a2 + 480);
            *(a1 + 464) = *(a2 + 464);
            *(a1 + 480) = v171;
            v172 = *(a2 + 544);
            v174 = *(a2 + 496);
            v173 = *(a2 + 512);
            *(a1 + 528) = *(a2 + 528);
            *(a1 + 544) = v172;
            *(a1 + 496) = v174;
            *(a1 + 512) = v173;
            v176 = *(a2 + 576);
            v175 = *(a2 + 592);
            v177 = *(a2 + 560);
            *(a1 + 608) = *(a2 + 608);
            *(a1 + 576) = v176;
            *(a1 + 592) = v175;
            *(a1 + 560) = v177;
          }

          else
          {
            v181 = *(a2 + 464);
            *(a1 + 472) = *(a2 + 472);
            *(a1 + 464) = v181;
            v182 = *(a2 + 480);
            *(a1 + 488) = *(a2 + 488);
            *(a1 + 480) = v182;
            *(a1 + 489) = *(a2 + 489);
            *(a1 + 490) = *(a2 + 490);
            *(a1 + 491) = *(a2 + 491);
            *(a1 + 492) = *(a2 + 492);
            *(a1 + 496) = *(a2 + 496);
            *(a1 + 504) = *(a2 + 504);
            *(a1 + 512) = *(a2 + 512);
            *(a1 + 520) = *(a2 + 520);
            *(a1 + 528) = *(a2 + 528);
            *(a1 + 536) = *(a2 + 536);
            *(a1 + 544) = *(a2 + 544);
            *(a1 + 545) = *(a2 + 545);
            *(a1 + 552) = *(a2 + 552);
            *(a1 + 560) = *(a2 + 560);
            *(a1 + 568) = *(a2 + 568);
            *(a1 + 576) = *(a2 + 576);

            v183 = *(a2 + 584);
            *(a1 + 600) = *(a2 + 600);
            *(a1 + 584) = v183;
            *(a1 + 608) = *(a2 + 608);
          }

          *(a1 + 616) = *(a2 + 616);

          *(a1 + 624) = *(a2 + 624);
          *(a1 + 628) = *(a2 + 628);
          *(a1 + 632) = *(a2 + 632);
          return a1;
        }

        *(a1 + 424) = v133;
        *(a1 + 432) = *(a2 + 432);
        (**(v133 - 8))(a1 + 400, a2 + 400);
      }

      else
      {
        v156 = *(a2 + 400);
        v157 = *(a2 + 416);
        *(a1 + 432) = *(a2 + 432);
        *(a1 + 400) = v156;
        *(a1 + 416) = v157;
      }

      *(a1 + 440) = *(a2 + 440);

      goto LABEL_83;
    }

    outlined destroy of PlatformItem.AccessibilityContent(a1 + 336);
LABEL_62:
    memcpy((a1 + 336), (a2 + 336), 0x129uLL);
    return a1;
  }

  if (!v130)
  {
    goto LABEL_62;
  }

  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  v136 = *(a2 + 376);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 376) = v136;
  v137 = *(a2 + 424);

  if (!v137)
  {
    v143 = *(a2 + 400);
    v144 = *(a2 + 416);
    *(a1 + 432) = *(a2 + 432);
    *(a1 + 400) = v143;
    *(a1 + 416) = v144;
LABEL_70:
    *(a1 + 440) = *(a2 + 440);

    goto LABEL_71;
  }

  if (v137 != 1)
  {
    *(a1 + 424) = v137;
    *(a1 + 432) = *(a2 + 432);
    (**(v137 - 8))(a1 + 400, a2 + 400, v137);
    goto LABEL_70;
  }

  v138 = *(a2 + 400);
  v139 = *(a2 + 432);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = v139;
  *(a1 + 400) = v138;
LABEL_71:
  v145 = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 448) = v145;
  if (*(a2 + 576) == 1)
  {
    v146 = *(a2 + 480);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 480) = v146;
    v147 = *(a2 + 496);
    v148 = *(a2 + 512);
    v149 = *(a2 + 544);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 544) = v149;
    *(a1 + 496) = v147;
    *(a1 + 512) = v148;
    v150 = *(a2 + 560);
    v151 = *(a2 + 576);
    v152 = *(a2 + 592);
    *(a1 + 608) = *(a2 + 608);
    *(a1 + 576) = v151;
    *(a1 + 592) = v152;
    *(a1 + 560) = v150;
  }

  else
  {
    v153 = *(a2 + 464);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 464) = v153;
    v154 = *(a2 + 480);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 480) = v154;
    *(a1 + 489) = *(a2 + 489);
    *(a1 + 490) = *(a2 + 490);
    *(a1 + 491) = *(a2 + 491);
    *(a1 + 492) = *(a2 + 492);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 536) = *(a2 + 536);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 545) = *(a2 + 545);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = *(a2 + 568);
    *(a1 + 576) = *(a2 + 576);
    v155 = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 584) = v155;
    *(a1 + 608) = *(a2 + 608);
  }

  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = *(a2 + 632);

  return a1;
}

uint64_t assignWithTake for PlatformItemTraitWriter.AddTrait(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  if (v4 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 40);
LABEL_4:
    v6 = *(a2 + 248);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = v6;
    *(a1 + 264) = *(a2 + 264);
    v7 = *(a2 + 184);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = v7;
    v8 = *(a2 + 216);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = v8;
    v9 = *(a2 + 120);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = v9;
    v10 = *(a2 + 152);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = v10;
    v11 = *(a2 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v11;
    v12 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v12;
    goto LABEL_21;
  }

  *(a1 + 40) = v4;

  v13 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  v14 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  if (*(a1 + 192) >> 1 == 4294967294)
  {
    goto LABEL_8;
  }

  if (*(a2 + 192) >> 1 != 4294967294)
  {
    v20 = *(a1 + 72);
    if (v20 != 255)
    {
      v21 = *(a2 + 72);
      if (v21 != 255)
      {
        v22 = *(a1 + 64);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = v21;
        outlined consume of GraphicsImage.Contents(v22, v20);
        goto LABEL_14;
      }

      outlined destroy of GraphicsImage.Contents(a1 + 64);
    }

    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
LABEL_14:
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 169) = *(a2 + 169);
    v23 = *(a1 + 192);
    *(a1 + 170) = *(a2 + 170);
    if (v23 >> 1 != 0xFFFFFFFF)
    {
      v24 = *(a2 + 192);
      if (v24 >> 1 != 0xFFFFFFFF)
      {
        v26 = *(a2 + 200);
        v27 = *(a1 + 176);
        v28 = *(a1 + 184);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v24;
        *(a1 + 200) = v26;
        outlined consume of AccessibilityImageLabel(v27, v28, v23);
        goto LABEL_19;
      }

      outlined destroy of AccessibilityImageLabel(a1 + 176);
    }

    v25 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v25;
LABEL_19:
    *(a1 + 208) = *(a2 + 208);
    swift_unknownObjectRelease();
    *(a1 + 216) = *(a2 + 216);

    *(a1 + 224) = *(a2 + 224);
    *(a1 + 225) = *(a2 + 225);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    v29 = *(a1 + 240);
    *(a1 + 240) = *(a2 + 240);

    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
    goto LABEL_20;
  }

  outlined destroy of Image.Resolved(a1 + 64);
LABEL_8:
  v15 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v15;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v16 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v16;
  v17 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v17;
  v18 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v18;
  v19 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v19;
LABEL_20:
  *(a1 + 256) = *(a2 + 256);

  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);

LABEL_21:
  *(a1 + 280) = *(a2 + 280);

  if (*(a1 + 312) == 1)
  {
LABEL_24:
    v31 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v31;
    goto LABEL_26;
  }

  v30 = *(a2 + 312);
  if (v30 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(a1 + 288);
    goto LABEL_24;
  }

  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = v30;
  swift_unknownObjectRelease();
LABEL_26:
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  if (*(a1 + 616))
  {
    if (*(a2 + 616))
    {
      v32 = *(a2 + 344);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 344) = v32;

      *(a1 + 352) = *(a2 + 352);
      *(a1 + 360) = *(a2 + 360);

      *(a1 + 368) = *(a2 + 368);
      *(a1 + 376) = *(a2 + 376);
      *(a1 + 392) = *(a2 + 392);
      v33 = *(a1 + 424);
      if (v33 != 1)
      {
        v34 = *(a2 + 424);
        if (v34 != 1)
        {
          if (v33)
          {
            v36 = a1 + 400;
            if (v34)
            {
              __swift_destroy_boxed_opaque_existential_1(v36);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v36);
            }
          }

          v37 = *(a2 + 416);
          *(a1 + 400) = *(a2 + 400);
          *(a1 + 416) = v37;
          v38 = *(a2 + 440);
          *(a1 + 432) = *(a2 + 432);
          *(a1 + 440) = v38;

LABEL_39:
          *(a1 + 448) = *(a2 + 448);
          *(a1 + 456) = *(a2 + 456);
          if (*(a1 + 576) != 1)
          {
            v39 = *(a2 + 576);
            if (v39 != 1)
            {
              *(a1 + 464) = *(a2 + 464);
              *(a1 + 472) = *(a2 + 472);
              *(a1 + 480) = *(a2 + 480);
              *(a1 + 488) = *(a2 + 488);
              *(a1 + 489) = *(a2 + 489);
              *(a1 + 491) = *(a2 + 491);
              *(a1 + 492) = *(a2 + 492);
              v44 = *(a2 + 512);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 512) = v44;
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 545) = *(a2 + 545);
              *(a1 + 552) = *(a2 + 552);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = *(a2 + 568);
              *(a1 + 576) = v39;

              *(a1 + 584) = *(a2 + 584);
              *(a1 + 600) = *(a2 + 600);
              *(a1 + 608) = *(a2 + 608);
              goto LABEL_44;
            }

            outlined destroy of AccessibilityTextLayoutProperties(a1 + 464);
          }

          v40 = *(a2 + 576);
          *(a1 + 560) = *(a2 + 560);
          *(a1 + 576) = v40;
          *(a1 + 592) = *(a2 + 592);
          *(a1 + 608) = *(a2 + 608);
          v41 = *(a2 + 512);
          *(a1 + 496) = *(a2 + 496);
          *(a1 + 512) = v41;
          v42 = *(a2 + 544);
          *(a1 + 528) = *(a2 + 528);
          *(a1 + 544) = v42;
          v43 = *(a2 + 480);
          *(a1 + 464) = *(a2 + 464);
          *(a1 + 480) = v43;
LABEL_44:
          *(a1 + 616) = *(a2 + 616);

          *(a1 + 624) = *(a2 + 624);
          *(a1 + 632) = *(a2 + 632);
          return a1;
        }

        outlined destroy of AccessibilityValueStorage(a1 + 400);
      }

      v35 = *(a2 + 416);
      *(a1 + 400) = *(a2 + 400);
      *(a1 + 416) = v35;
      *(a1 + 432) = *(a2 + 432);
      goto LABEL_39;
    }

    outlined destroy of PlatformItem.AccessibilityContent(a1 + 336);
  }

  memcpy((a1 + 336), (a2 + 336), 0x129uLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItemTraitWriter.AddTrait(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 633))
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

uint64_t storeEnumTagSinglePayload for PlatformItemTraitWriter.AddTrait(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 632) = 0;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 633) = 1;
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

    *(result + 633) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for PlatformItemsReader.Child()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for PlatformItemsReader.Child(_DWORD *a1, int *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-9 - v6) | v6) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = *a2;
    v10 = a2 + 7;
    *a1 = v11;
    v12 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v12 = *(v10 & 0xFFFFFFFFFFFFFFFCLL);
    (*(v5 + 16))((v12 + v6 + 4) & ~v6, ((v10 & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6, AssociatedTypeWitness);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xFC ^ 0x1FC) & (v6 + 16)));
  }

  return a1;
}

uint64_t destroy for PlatformItemsReader.Child(uint64_t a1)
{
  v1 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 8);
  v5 = (v1 + *(v3 + 80) + 4) & ~*(v3 + 80);

  return v4(v5, AssociatedTypeWitness);
}

_DWORD *initializeWithCopy for PlatformItemsReader.Child(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 16))((v3 + *(v6 + 80) + 4) & ~*(v6 + 80), (v4 + *(v6 + 80) + 4) & ~*(v6 + 80), AssociatedTypeWitness);
  return a1;
}

_DWORD *assignWithCopy for PlatformItemsReader.Child(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 24))((v3 + *(v6 + 80) + 4) & ~*(v6 + 80), (v4 + *(v6 + 80) + 4) & ~*(v6 + 80), AssociatedTypeWitness);
  return a1;
}

_DWORD *initializeWithTake for PlatformItemsReader.Child(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 32))((v3 + *(v6 + 80) + 4) & ~*(v6 + 80), (v4 + *(v6 + 80) + 4) & ~*(v6 + 80), AssociatedTypeWitness);
  return a1;
}

_DWORD *assignWithTake for PlatformItemsReader.Child(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 40))((v3 + *(v6 + 80) + 4) & ~*(v6 + 80), (v4 + *(v6 + 80) + 4) & ~*(v6 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItemsReader.Child(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v13 = *(v5 + 48);

    return v13((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v7 + 4) & ~v7);
  }

  v8 = ((v7 + 8) & ~v7) + *(*(AssociatedTypeWitness - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((a2 - v6 + ~(-1 << v9)) >> v9) + 1;
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
      if (v6)
      {
        goto LABEL_23;
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

  return v6 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for PlatformItemsReader.Child(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  if (a3 <= v7)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v7 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v7 < a2)
  {
    v11 = ~v7 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
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

  else if (v10)
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
  v16 = *(v6 + 56);

  v16((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8, a2);
}

uint64_t instantiation function for generic protocol witness table for PlatformItemTraitWriter<A, B, C>.AddTrait(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for (PlatformItem, Bool)()
{
  if (!lazy cache variable for type metadata for (PlatformItem, Bool))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PlatformItem, Bool));
    }
  }
}

uint64_t protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance IgnoresAutomaticPaddingLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X3>, uint64_t a4@<X8>)
{
  v86 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 36);
  if ((v7 & 0x22) != 0)
  {
    v9 = *(a2 + 16);
    swift_beginAccess();
    v10 = *MEMORY[0x1E698D3F8];
    *&v83 = __PAIR64__(*(v9 + 16), a1);
    DWORD2(v83) = v10;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryLayoutComputer<A>(&lazy protocol witness table cache variable for type UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryLayoutComputer<A>, &lazy cache variable for type metadata for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, type metadata accessor for UnaryLayoutComputer);
    v11 = Attribute.init<A>(body:value:flags:update:)();
    v12 = *(a2 + 16);
    v72 = *a2;
    v73 = v12;
    v13 = *(a2 + 32);
    v14 = *(a2 + 36);
    v70 = *(a2 + 40);
    v71 = *(a2 + 56);
    v52 = *(a2 + 68);
    v53 = *(a2 + 76);
    v48 = v11;
    if ((v7 & 0x20) != 0)
    {
      v31 = v11;
      v50 = v13;
      outlined init with copy of _ViewInputs(a2, &v83);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v32 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v33 = specialized CachedEnvironment.attribute<A>(id:_:)(v32);
      swift_endAccess();
      LODWORD(v83) = *(a2 + 72);
      *(&v83 + 4) = __PAIR64__(v31, v33);
      HIDWORD(v83) = v10;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryLayoutComputer<A>(&lazy protocol witness table cache variable for type UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryChildGeometry<A>, &lazy cache variable for type metadata for UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, type metadata accessor for UnaryChildGeometry);
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v34 = *(a2 + 64);
      *&v83 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v34);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v16 = Attribute.init<A>(body:value:flags:update:)();
      v13 = v50 | 0x18;
      v14 = v7 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v16 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, &v83);
    }

    v35 = v7 & 2;
    v67 = v72;
    *v68 = v73;
    *&v68[16] = v13;
    *&v68[20] = v14;
    *&v69[0] = v71;
    *&v68[24] = v70;
    *(&v69[0] + 1) = __PAIR64__(v52, v16);
    LODWORD(v69[1]) = OffsetAttribute2;
    *(&v69[1] + 4) = v53;
    v64 = v72;
    v65 = v73;
    v51 = v13;
    v66 = v13;
    v57 = v70;
    *v58 = v69[0];
    *&v58[12] = *(v69 + 12);
    v74 = v72;
    v75 = v73;
    LODWORD(v76[0]) = v13;
    DWORD1(v76[0]) = v14 | 2;
    *(&v76[2] + 4) = *(v69 + 12);
    *(&v76[1] + 8) = v69[0];
    *(v76 + 8) = v70;
    *v85 = v76[0];
    *&v85[16] = v76[1];
    *&v85[32] = v76[2];
    *&v85[48] = HIDWORD(v53);
    v83 = v72;
    v84 = v73;
    outlined init with copy of _ViewInputs(&v67, &v77);
    outlined init with copy of _ViewInputs(&v67, &v77);
    v36 = outlined init with copy of _ViewInputs(&v74, &v77);
    a3(&v54, v36, &v83);
    v79 = *v85;
    v80 = *&v85[16];
    v81 = *&v85[32];
    v82 = *&v85[48];
    v77 = v83;
    v78 = v84;
    v37 = outlined destroy of _ViewInputs(&v77);
    v38 = v54;
    v40 = v55;
    v39 = v56;
    MEMORY[0x1EEE9AC00](v37);
    MEMORY[0x1EEE9AC00](v41);
    AGGraphMutateAttribute();
    v83 = v64;
    v84 = v65;
    *v85 = v66;
    *&v85[4] = v14 | 2;
    *&v85[8] = v57;
    *&v85[24] = *v58;
    *&v85[36] = *&v58[12];
    outlined destroy of _ViewInputs(&v83);
    v42 = outlined destroy of _ViewInputs(&v67);
    if ((v7 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v42);
      MEMORY[0x1EEE9AC00](v43);
      v44 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v44);
      type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v45);
      AGGraphMutateAttribute();
    }

    if ((v7 & 2) != 0)
    {
      v46 = v48;
    }

    else
    {
      v46 = v39;
    }

    v57 = v72;
    *v58 = v73;
    *&v58[16] = v51;
    *&v58[20] = v14;
    *&v58[24] = v70;
    v59 = v71;
    v60 = v16;
    v61 = v52;
    v62 = OffsetAttribute2;
    v63 = v53;
    outlined destroy of _ViewInputs(&v57);

    *a4 = v38;
    *(a4 + 8) = v40 | (v35 << 6);
    *(a4 + 12) = v46;
  }

  else
  {
    v17 = *(a2 + 16);
    v57 = *a2;
    *v58 = v17;
    *&v58[16] = *(a2 + 32);
    v18 = *(a2 + 56);
    v67 = *(a2 + 40);
    *v68 = v18;
    *&v68[12] = *(a2 + 68);
    v19 = v7 | 2;
    v20 = *(a2 + 16);
    v21 = *(a2 + 32);
    v74 = *a2;
    v75 = v20;
    LODWORD(v76[0]) = v21;
    DWORD1(v76[0]) = v7 | 2;
    v22 = *(a2 + 40);
    v23 = *(a2 + 56);
    *(&v76[2] + 4) = *(a2 + 68);
    *(&v76[1] + 8) = v23;
    *(v76 + 8) = v22;
    *v85 = v76[0];
    *&v85[16] = v76[1];
    *&v85[32] = v76[2];
    *&v85[48] = v76[3];
    v83 = v74;
    v84 = v75;
    outlined init with copy of _ViewInputs(a2, &v77);
    v24 = outlined init with copy of _ViewInputs(&v74, &v77);
    a3(&v64, v24, &v83);
    v79 = *v85;
    v80 = *&v85[16];
    v81 = *&v85[32];
    v82 = *&v85[48];
    v77 = v83;
    v78 = v84;
    v25 = outlined destroy of _ViewInputs(&v77);
    v26 = v64;
    v27 = DWORD2(v64);
    v28 = HIDWORD(v64);
    MEMORY[0x1EEE9AC00](v25);
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
    v83 = v57;
    v84 = *v58;
    *v85 = *&v58[16];
    *&v85[4] = v19;
    *&v85[8] = v67;
    *&v85[24] = *v68;
    *&v85[36] = *&v68[12];
    outlined destroy of _ViewInputs(&v83);

    *a4 = v26;
    *(a4 + 8) = v27;
    *(a4 + 12) = v28;
  }

  return result;
}

uint64_t specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, int a3@<W3>, void *a4@<X8>)
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 36);
  if ((v6 & 0x22) != 0)
  {
    v38 = a4;
    v8 = *(a2 + 16);
    swift_beginAccess();
    v9 = *MEMORY[0x1E698D3F8];
    *&v53[0] = __PAIR64__(*(v8 + 16), a1);
    DWORD2(v53[0]) = v9;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryLayoutComputer);
    v11 = v10;
    lazy protocol witness table accessor for type UnaryLayoutComputer<_FrameLayout> and conformance UnaryLayoutComputer<A>(&lazy protocol witness table cache variable for type UnaryLayoutComputer<_FrameLayout> and conformance UnaryLayoutComputer<A>, &lazy cache variable for type metadata for UnaryLayoutComputer<_FrameLayout>, type metadata accessor for UnaryLayoutComputer);
    v35 = v11;
    v39 = Attribute.init<A>(body:value:flags:update:)();
    v12 = *(a2 + 16);
    v51 = *a2;
    v52 = v12;
    v13 = *(a2 + 32);
    v14 = *(a2 + 36);
    v49 = *(a2 + 40);
    v50 = *(a2 + 56);
    v15 = *(a2 + 68);
    v16 = *(a2 + 76);
    if ((v6 & 0x20) != 0)
    {
      v33 = a3;
      v36 = v13;
      LODWORD(v37) = v15;
      outlined init with copy of _ViewInputs(a2, v53);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v20 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
      swift_endAccess();
      LODWORD(v53[0]) = *(a2 + 72);
      *(v53 + 4) = __PAIR64__(v39, v21);
      HIDWORD(v53[0]) = v9;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryLayoutComputer<_FrameLayout> and conformance UnaryLayoutComputer<A>(&lazy protocol witness table cache variable for type UnaryChildGeometry<_FrameLayout> and conformance UnaryChildGeometry<A>, &lazy cache variable for type metadata for UnaryChildGeometry<_FrameLayout>, type metadata accessor for UnaryChildGeometry);
      v22 = Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v23 = *(a2 + 64);
      v34 = v22;
      *&v53[0] = __PAIR64__(AGGraphCreateOffsetAttribute2(), v23);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v18 = Attribute.init<A>(body:value:flags:update:)();
      v15 = v37;
      v13 = v36 | 0x18;
      v14 = v6 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 72);
      v18 = *(a2 + 64);
      outlined init with copy of _ViewInputs(a2, v53);
      v34 = 0;
    }

    v53[0] = v51;
    v53[1] = v52;
    v54 = v13;
    v55 = v14;
    v56 = v49;
    v57 = v50;
    v58 = v18;
    v59 = v15;
    v36 = OffsetAttribute2;
    v60 = OffsetAttribute2;
    v37 = v16;
    v61 = v16;
    outlined init with copy of _ViewInputs(v53, v40);
    specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(v53, v40);
    v24 = outlined destroy of _ViewInputs(v53);
    v25 = *&v40[0];
    v26 = DWORD2(v40[0]);
    v27 = HIDWORD(v40[0]);
    if ((v6 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v28);
      v29 = AGGraphMutateAttribute();
      v35 = &v33;
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v30);
      AGGraphMutateAttribute();
    }

    v31 = v26 | ((v6 & 2) << 6);
    if ((v6 & 2) != 0)
    {
      v27 = v39;
    }

    v40[0] = v51;
    v40[1] = v52;
    v41 = v13;
    v42 = v14;
    v43 = v49;
    v44 = v50;
    v45 = v18;
    v46 = v15;
    v47 = v36;
    v48 = v37;
    result = outlined destroy of _ViewInputs(v40);
    v32 = v38;
    *v38 = v25;
    *(v32 + 2) = v31;
    *(v32 + 3) = v27;
  }

  else
  {

    return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a2, a4);
  }

  return result;
}

uint64_t protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance MoveTransition.MoveLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance ConcentricPaddingLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _PositionLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t LayoutPositionQuery.init(parentPosition:localPosition:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double UnaryPositionAwareLayoutEngine.init(layout:layoutContext:child:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a2 + 8);
  v11 = *(a3 + 8);
  v12 = type metadata accessor for UnaryPositionAwareLayoutEngine();
  v13 = a5 + v12[11];
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 1;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 1;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0u;
  *(v13 + 144) = 0u;
  *(v13 + 160) = 1;
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v14 = a5 + v12[9];
  *v14 = *a2;
  *(v14 + 8) = v10;
  v15 = a5 + v12[10];
  result = *a3;
  *v15 = *a3;
  *(v15 + 8) = v11;
  return result;
}

float64x2_t *UnaryPositionAwareChildGeometry.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = HIDWORD(a3);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = CurrentAttribute;
  v5 = *AGGraphGetValue();

  Value = AGGraphGetValue();
  v11 = *Value;
  v12 = Value[1];
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
LABEL_12:
    v34 = v12;
    v36 = v11;
    swift_once();
    v12 = v34;
    v11 = v36;
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  v33 = v12;
  v35 = v11;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  IsOwner = _MovableLockIsOwner(static Update._lock);
  v12 = v33;
  v11 = v35;
  if (!IsOwner)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v39 = v11;
    *rect = v12;
    LODWORD(v42) = v4;
    HIDWORD(v42) = v4;
    v43 = a1;
    v44 = HIDWORD(a2);
    v45 = __PAIR64__(HIDWORD(a1), a2);
    v46 = v6;
    (*(*v5 + 160))(&v47, &v39, &v42);

    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = v50;
    v19 = v51;
    v20 = v52;
    v21 = v53;
    v22 = v54;
    v23 = *AGGraphGetValue();
    v24 = *AGGraphGetValue();
    v42 = v15;
    LOBYTE(v43) = v16;
    v45 = v17;
    LOBYTE(v46) = v18;
    LayoutProxy.dimensions(in:)(&v42, &v39);
    v25 = v39;
    v26 = *rect;
    v27 = v41;
    v28 = v21 - v19 * *rect;
    v29 = *&rect[8];
    v30 = v22 - v20 * *&rect[8];
    *a4 = v28;
    *(a4 + 8) = v30;
    *(a4 + 16) = v25;
    *(a4 + 32) = v26;
    *(a4 + 40) = v29;
    *(a4 + 56) = v27;
    v38 = v30;
    if (v24 == 1)
    {
      v37 = v23 - CGRectGetMaxX(*&v28);
      *a4 = v37;
    }

    else
    {
      v37 = v28;
    }

    type metadata accessor for CGPoint(0);
    result = AGGraphGetValue();
    v32.f64[0] = v37;
    v32.f64[1] = v38;
    *a4 = vaddq_f64(v32, *result);
  }

  return result;
}

uint64_t UnaryLayoutEngine.ignoresAutomaticPadding()(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *(v2 + 2);
  v5 = *v2;
  v6 = v3;
  return (*(*(a1 + 24) + 72))(&v5, *(a1 + 16)) & 1;
}

double LayoutPositionQuery.value.getter()
{
  type metadata accessor for CGPoint(0);
  v0 = *AGGraphGetValue();
  return v0 + *AGGraphGetValue();
}

float64x2_t protocol witness for Rule.value.getter in conformance LayoutPositionQuery@<Q0>(float64x2_t *a1@<X8>)
{
  type metadata accessor for CGPoint(0);
  v3 = *AGGraphGetValue();
  result = vaddq_f64(v3, *AGGraphGetValue());
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _AlignmentLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance ContainerCornerOffsetLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t implicit closure #1 in closure #1 in closure #1 in Attribute.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v11, v15);
  dispatch thunk of Rule.value.getter();
  (*(v9 + 8))(v11, a5);
  v22 = a5;
  v23 = a6;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, partial apply for closure #1 in static Rule._updateDefault(_:), v21, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
  return (*(v13 + 8))(v17, a4);
}

unint64_t instantiation function for generic protocol witness table for LayoutPositionQuery(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryLayoutComputer<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(255, a2, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized UnaryChildGeometry.description.getter()
{
  _StringGuts.grow(_:)(20);
  v0 = _typeName(_:qualified:)();

  MEMORY[0x193ABEDD0](0x1000000000000012, 0x800000018DD7C4B0);
  return v0;
}

uint64_t specialized UnaryPositionAwareChildGeometry.description.getter()
{
  _StringGuts.grow(_:)(19);
  v0 = _typeName(_:qualified:)();

  MEMORY[0x193ABEDD0](0x1000000000000011, 0x800000018DD7C470);
  return v0;
}

uint64_t specialized UnaryLayoutComputer.description.getter()
{
  _StringGuts.grow(_:)(21);
  v0 = _typeName(_:qualified:)();

  MEMORY[0x193ABEDD0](0x1000000000000013, 0x800000018DD7C490);
  return v0;
}

void type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type UnaryLayoutComputer<_FrameLayout> and conformance UnaryLayoutComputer<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(255, a2, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*partial apply for closure #1 in closure #1 in Attribute.init<A>(_:)())(uint64_t a1, uint64_t a2)
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return partial apply for implicit closure #1 in closure #1 in closure #1 in Attribute.init<A>(_:);
}

uint64_t *initializeBufferWithCopyOfBuffer for UnaryPositionAwareLayoutEngine(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFFCLL) + 19) & 0xFFFFFFFFFFFFFFF8) + 161 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v11 = (a2 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *v10 = v12;
    v13 = (v10 + 15) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v12) = *(v14 + 8);
    *v13 = *v14;
    *(v13 + 8) = v12;
    v15 = (v13 + 19) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v14 + 19) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(v16 + 16);
    v17 = *(v16 + 32);
    *v15 = *v16;
    *(v15 + 16) = v18;
    *(v15 + 32) = v17;
    v19 = *(v16 + 96);
    v21 = *(v16 + 48);
    v20 = *(v16 + 64);
    *(v15 + 80) = *(v16 + 80);
    *(v15 + 96) = v19;
    *(v15 + 48) = v21;
    *(v15 + 64) = v20;
    v23 = *(v16 + 128);
    v22 = *(v16 + 144);
    v24 = *(v16 + 112);
    *(v15 + 160) = *(v16 + 160);
    *(v15 + 128) = v23;
    *(v15 + 144) = v22;
    *(v15 + 112) = v24;
  }

  return v3;
}

uint64_t initializeWithCopy for UnaryPositionAwareLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = (v7 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v8 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *v10 = v12;
  v13 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v11 + 19) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 32);
  v16 = *v14;
  *(v13 + 16) = *(v14 + 16);
  *(v13 + 32) = v15;
  *v13 = v16;
  v17 = *(v14 + 96);
  v19 = *(v14 + 48);
  v18 = *(v14 + 64);
  *(v13 + 80) = *(v14 + 80);
  *(v13 + 96) = v17;
  *(v13 + 48) = v19;
  *(v13 + 64) = v18;
  v21 = *(v14 + 128);
  v20 = *(v14 + 144);
  v22 = *(v14 + 112);
  *(v13 + 160) = *(v14 + 160);
  *(v13 + 128) = v21;
  *(v13 + 144) = v20;
  *(v13 + 112) = v22;
  return a1;
}

uint64_t assignWithCopy for UnaryPositionAwareLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  v11 = (v9 + 19) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 48);
  v15 = *(v12 + 16);
  v14 = *(v12 + 32);
  *v11 = *v12;
  *(v11 + 16) = v15;
  *(v11 + 32) = v14;
  *(v11 + 48) = v13;
  v16 = *(v12 + 56);
  v17 = *(v12 + 72);
  v18 = *(v12 + 88);
  *(v11 + 104) = *(v12 + 104);
  *(v11 + 88) = v18;
  *(v11 + 72) = v17;
  *(v11 + 56) = v16;
  v19 = *(v12 + 112);
  v20 = *(v12 + 128);
  v21 = *(v12 + 144);
  *(v11 + 160) = *(v12 + 160);
  *(v11 + 128) = v20;
  *(v11 + 144) = v21;
  *(v11 + 112) = v19;
  return a1;
}

uint64_t initializeWithTake for UnaryPositionAwareLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = (v7 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v8 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *v10 = v12;
  v13 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v11 + 19) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 32);
  v16 = *v14;
  *(v13 + 16) = *(v14 + 16);
  *(v13 + 32) = v15;
  *v13 = v16;
  v17 = *(v14 + 96);
  v19 = *(v14 + 48);
  v18 = *(v14 + 64);
  *(v13 + 80) = *(v14 + 80);
  *(v13 + 96) = v17;
  *(v13 + 48) = v19;
  *(v13 + 64) = v18;
  v21 = *(v14 + 128);
  v20 = *(v14 + 144);
  v22 = *(v14 + 112);
  *(v13 + 160) = *(v14 + 160);
  *(v13 + 128) = v21;
  *(v13 + 144) = v20;
  *(v13 + 112) = v22;
  return a1;
}

uint64_t assignWithTake for UnaryPositionAwareLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  v11 = (v9 + 19) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 48);
  v15 = *(v12 + 16);
  v14 = *(v12 + 32);
  *v11 = *v12;
  *(v11 + 16) = v15;
  *(v11 + 32) = v14;
  *(v11 + 48) = v13;
  v16 = *(v12 + 56);
  v17 = *(v12 + 72);
  v18 = *(v12 + 88);
  *(v11 + 104) = *(v12 + 104);
  *(v11 + 88) = v18;
  *(v11 + 72) = v17;
  *(v11 + 56) = v16;
  v19 = *(v12 + 112);
  v20 = *(v12 + 128);
  v21 = *(v12 + 144);
  *(v11 + 160) = *(v12 + 160);
  *(v11 + 128) = v20;
  *(v11 + 144) = v21;
  *(v11 + 112) = v19;
  return a1;
}

uint64_t getEnumTagSinglePayload for UnaryPositionAwareLayoutEngine(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((((((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFFCLL) + 19) & 0xFFFFFFFFFFFFFFF8) + 161;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * (((((((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFC) + 15) & 0xFC) + 19) & 0xF8) - 95));
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void storeEnumTagSinglePayload for UnaryPositionAwareLayoutEngine(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((((((*(v6 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFFCLL) + 19) & 0xFFFFFFFFFFFFFFF8) + 161;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
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

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
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
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for UnaryLayoutEngine(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFFCLL) + 187) & 0xFFFFFFFFFFFFFFF8) + 305 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v11 = (a2 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *v10 = v12;
    v13 = (v10 + 15) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v12) = *(v14 + 8);
    *v13 = *v14;
    *(v13 + 8) = v12;
    v15 = (v13 + 19) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v14 + 19) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(v16 + 16);
    v17 = *(v16 + 32);
    *v15 = *v16;
    *(v15 + 16) = v18;
    *(v15 + 32) = v17;
    v19 = *(v16 + 96);
    v21 = *(v16 + 48);
    v20 = *(v16 + 64);
    *(v15 + 80) = *(v16 + 80);
    *(v15 + 96) = v19;
    *(v15 + 48) = v21;
    *(v15 + 64) = v20;
    v23 = *(v16 + 128);
    v22 = *(v16 + 144);
    v24 = *(v16 + 112);
    *(v15 + 160) = *(v16 + 160);
    *(v15 + 128) = v23;
    *(v15 + 144) = v22;
    *(v15 + 112) = v24;
    memcpy(((v13 + 187) & 0xFFFFFFFFFFFFFFF8), ((v14 + 187) & 0xFFFFFFFFFFFFFFF8), 0x131uLL);
  }

  return v3;
}

uint64_t assignWithCopy for UnaryLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  v11 = (v9 + 19) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 48);
  v15 = *(v12 + 16);
  v14 = *(v12 + 32);
  *v11 = *v12;
  *(v11 + 16) = v15;
  *(v11 + 32) = v14;
  *(v11 + 48) = v13;
  v16 = *(v12 + 56);
  v17 = *(v12 + 72);
  v18 = *(v12 + 88);
  *(v11 + 104) = *(v12 + 104);
  *(v11 + 88) = v18;
  *(v11 + 72) = v17;
  *(v11 + 56) = v16;
  v19 = *(v12 + 112);
  v20 = *(v12 + 128);
  v21 = *(v12 + 144);
  *(v11 + 160) = *(v12 + 160);
  *(v11 + 128) = v20;
  *(v11 + 144) = v21;
  *(v11 + 112) = v19;
  v22 = (v9 + 187) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v10 + 187) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v23 + 64);
  v24 = *(v23 + 80);
  v26 = *(v23 + 48);
  *(v22 + 96) = *(v23 + 96);
  *(v22 + 64) = v25;
  *(v22 + 80) = v24;
  *(v22 + 48) = v26;
  v27 = *v23;
  v28 = *(v23 + 32);
  *(v22 + 16) = *(v23 + 16);
  *(v22 + 32) = v28;
  *v22 = v27;
  v29 = *(v23 + 136);
  v30 = *(v23 + 120);
  *(v22 + 104) = *(v23 + 104);
  *(v22 + 120) = v30;
  *(v22 + 136) = v29;
  LOBYTE(v11) = *(v23 + 200);
  v31 = *(v23 + 184);
  v32 = *(v23 + 168);
  *(v22 + 152) = *(v23 + 152);
  *(v22 + 168) = v32;
  *(v22 + 184) = v31;
  *(v22 + 200) = v11;
  v34 = *(v23 + 272);
  v33 = *(v23 + 288);
  v35 = *(v23 + 256);
  *(v22 + 304) = *(v23 + 304);
  *(v22 + 256) = v35;
  *(v22 + 272) = v34;
  *(v22 + 288) = v33;
  v36 = *(v23 + 208);
  v37 = *(v23 + 240);
  *(v22 + 224) = *(v23 + 224);
  *(v22 + 240) = v37;
  *(v22 + 208) = v36;
  return a1;
}

uint64_t initializeWithTake for UnaryLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = (v7 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v8 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *v10 = v12;
  v13 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v11 + 19) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 32);
  v16 = *v14;
  *(v13 + 16) = *(v14 + 16);
  *(v13 + 32) = v15;
  *v13 = v16;
  v17 = *(v14 + 96);
  v19 = *(v14 + 48);
  v18 = *(v14 + 64);
  *(v13 + 80) = *(v14 + 80);
  *(v13 + 96) = v17;
  *(v13 + 48) = v19;
  *(v13 + 64) = v18;
  v21 = *(v14 + 128);
  v20 = *(v14 + 144);
  v22 = *(v14 + 112);
  *(v13 + 160) = *(v14 + 160);
  *(v13 + 128) = v21;
  *(v13 + 144) = v20;
  *(v13 + 112) = v22;
  memcpy(((v10 + 187) & 0xFFFFFFFFFFFFFFF8), ((v11 + 187) & 0xFFFFFFFFFFFFFFF8), 0x131uLL);
  return a1;
}

uint64_t assignWithTake for UnaryLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  v11 = (v9 + 19) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 48);
  v15 = *(v12 + 16);
  v14 = *(v12 + 32);
  *v11 = *v12;
  *(v11 + 16) = v15;
  *(v11 + 32) = v14;
  *(v11 + 48) = v13;
  v16 = *(v12 + 56);
  v17 = *(v12 + 72);
  v18 = *(v12 + 88);
  *(v11 + 104) = *(v12 + 104);
  *(v11 + 88) = v18;
  *(v11 + 72) = v17;
  *(v11 + 56) = v16;
  v19 = *(v12 + 112);
  v20 = *(v12 + 128);
  v21 = *(v12 + 144);
  *(v11 + 160) = *(v12 + 160);
  *(v11 + 128) = v20;
  *(v11 + 144) = v21;
  *(v11 + 112) = v19;
  v22 = (v9 + 187) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v10 + 187) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v23 + 64);
  v24 = *(v23 + 80);
  v26 = *(v23 + 48);
  *(v22 + 96) = *(v23 + 96);
  *(v22 + 64) = v25;
  *(v22 + 80) = v24;
  *(v22 + 48) = v26;
  v27 = *v23;
  v28 = *(v23 + 32);
  *(v22 + 16) = *(v23 + 16);
  *(v22 + 32) = v28;
  *v22 = v27;
  v29 = *(v23 + 136);
  v30 = *(v23 + 120);
  *(v22 + 104) = *(v23 + 104);
  *(v22 + 120) = v30;
  *(v22 + 136) = v29;
  LOBYTE(v11) = *(v23 + 200);
  v31 = *(v23 + 184);
  v32 = *(v23 + 168);
  *(v22 + 152) = *(v23 + 152);
  *(v22 + 168) = v32;
  *(v22 + 184) = v31;
  *(v22 + 200) = v11;
  v34 = *(v23 + 272);
  v33 = *(v23 + 288);
  v35 = *(v23 + 256);
  *(v22 + 304) = *(v23 + 304);
  *(v22 + 256) = v35;
  *(v22 + 272) = v34;
  *(v22 + 288) = v33;
  v36 = *(v23 + 208);
  v37 = *(v23 + 240);
  *(v22 + 224) = *(v23 + 224);
  *(v22 + 240) = v37;
  *(v22 + 208) = v36;
  return a1;
}

uint64_t getEnumTagSinglePayload for UnaryLayoutEngine(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((((((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFFCLL) + 187) & 0xFFFFFFFFFFFFFFF8) + 305;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * (((((((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFC) + 15) & 0xFC) - 69) & 0xF8) + 49));
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void storeEnumTagSinglePayload for UnaryLayoutEngine(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((((((*(v6 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFFCLL) + 187) & 0xFFFFFFFFFFFFFFF8) + 305;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
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

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
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
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI21_ValueActionModifier2VySiG_s5NeverOSbTB5(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return 2;
  }

  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;

  a1(&v9, v8);
  if (v5)
  {

    __break(1u);
  }

  else
  {

    return v9;
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_EnvironmentKeyWritingModifierVyAD16RedactionReasonsVG_s5NeverOSbTB5(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 2;
  }

  v7[0] = a3;
  v7[1] = a4;

  a1(&v8, v7);
  if (v4)
  {

    __break(1u);
  }

  else
  {

    return v8;
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF10Foundation4DateV_s5NeverOSbTg5(void (*a1)(uint64_t *__return_ptr, char *))
{
  v13 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E6969530];
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  _s11Observation0A8TrackingV11_AccessListVSgWOcTm_1(v1, &v12 - v9, &lazy cache variable for type metadata for Date?, v7, _s11Observation0A8TrackingV11_AccessListVSgMaTm_3);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    return 2;
  }

  (*(v4 + 32))(v6, v10, v3);
  v13(&v14, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v14;
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF10Foundation4DateV_s5NeverOSdTg5(void (*a1)(void *__return_ptr, char *))
{
  v13 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E6969530];
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v12 - v9;
  _s11Observation0A8TrackingV11_AccessListVSgWOcTm_1(v1, v12 - v9, &lazy cache variable for type metadata for Date?, v7, _s11Observation0A8TrackingV11_AccessListVSgMaTm_3);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v10, v3);
  v13(v12, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v12[0];
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_EnvironmentKeyWritingModifierVyAD4FontVSgG_s5NeverOSbTg5(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 2;
  }

  v7[0] = a3;
  v7[1] = a4;

  a1(&v8, v7);

  if (v4)
  {

    __break(1u);
  }

  else
  {

    return v8;
  }

  return result;
}

uint64_t GeometryProxy.init(owner:size:environment:transform:position:safeAreaInsets:seed:)@<X0>(int a1@<W6>, uint64_t a2@<X8>)
{
  v3 = AGCreateWeakAttribute();
  v4 = v3;
  v18 = HIDWORD(v3);
  v5 = AGCreateWeakAttribute();
  v6 = v5;
  v17 = HIDWORD(v5);
  v7 = AGCreateWeakAttribute();
  v8 = v7;
  v9 = HIDWORD(v7);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v12 = HIDWORD(v10);
  v13 = AGCreateWeakAttribute();
  v14 = v13;
  v15 = HIDWORD(v13);
  result = AGCreateWeakAttribute();
  *a2 = v4;
  *(a2 + 4) = v18;
  *(a2 + 8) = v6;
  *(a2 + 12) = v17;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 24) = v11;
  *(a2 + 28) = v12;
  *(a2 + 32) = v14;
  *(a2 + 36) = v15;
  *(a2 + 40) = result;
  *(a2 + 48) = a1;
  return result;
}

double GeometryProxy.rect(_:in:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = v5[1];
  v19 = *v5;
  v20 = v11;
  v21 = v5[2];
  v22 = *(v5 + 12);
  specialized static Update.begin()();
  *v23 = a2;
  *&v23[1] = a3;
  *&v23[2] = a4;
  *&v23[3] = a5;
  GeometryProxy.placementContext.getter(v16);
  v14[2] = v23;
  v14[3] = a1;
  v15 = v18;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_PositionAwarePlacementContextV_s5NeverOytTB5(_s7SwiftUI13GeometryProxyV4rect_2inSo6CGRectVAG_AA15CoordinateSpaceOtFyAA30_PositionAwarePlacementContextVXEfU_TA_0, v14, v16[0], v16[1], v16[2], v17 | (v18 << 32));
  v12 = *v23;
  static Update.end()();
  return v12;
}

void *GeometryProxy.asCurrent<A>(do:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = *(v3 + 16);
  v11[0] = *v3;
  v11[1] = v7;
  v11[2] = *(v3 + 32);
  v12 = *(v3 + 48);
  _threadGeometryProxyData();
  v14 = a3;
  v15 = a1;
  v16 = a2;
  v8 = type metadata accessor for Error();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, partial apply for closure #1 in GeometryProxy.asCurrent<A>(do:), v13, &type metadata for GeometryProxy, v8, a3, MEMORY[0x1E69E7288], &v10);
  return _setThreadGeometryProxyData();
}

uint64_t GeometryProxy.viewSize.getter@<X0>(_OWORD *a1@<X8>)
{
  specialized static Update.begin()();
  Attribute = AGWeakAttributeGetAttribute();
  v3 = 0uLL;
  v4 = 0uLL;
  if (Attribute != *MEMORY[0x1E698D3F8])
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v3 = *InputValue;
    v4 = InputValue[1];
  }

  *a1 = v3;
  a1[1] = v4;

  return static Update.end()();
}

uint64_t GeometryReader.content.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance GeometryReader<A>.Child@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for _LayoutRoot<GeometryReaderLayout>();
  v2 = type metadata accessor for _VariadicView.Tree();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double GeometryProxy.frame(in:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  specialized static Update.begin()();
  v7 = 0;
  v8 = 0;
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v7 = *InputValue;
    v8 = InputValue[1];
  }

  static Update.end()();
  specialized static Update.begin()();
  v29[0] = 0;
  v29[1] = 0;
  v29[2] = v7;
  v29[3] = v8;
  v22 = v3;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v10 = *(v1 + 2);
  v26 = *(v1 + 1);
  v27 = v10;
  v28 = v1[12];
  v11 = GeometryProxy.placementContext.getter(&v21);
  MEMORY[0x1EEE9AC00](v11);
  v19[2] = v29;
  v19[3] = a1;
  v20 = v12;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_PositionAwarePlacementContextV_s5NeverOytTB5(closure #1 in GeometryProxy.rect(_:in:)partial apply, v19, v14, v15, v16, v13 | (v12 << 32));
  v17 = *v29;
  static Update.end()();
  return v17;
}

uint64_t GeometryProxy.environment.getter@<X0>(uint64_t *a1@<X8>)
{
  specialized static Update.begin()();
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    EnvironmentValues.init()(a1);
  }

  else
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v4 = *InputValue;
    v3 = InputValue[1];
    *a1 = v4;
    a1[1] = v3;
  }

  return static Update.end()();
}

uint64_t static GeometryProxy.current.getter@<X0>(uint64_t a1@<X8>)
{
  result = _threadGeometryProxyData();
  if (result)
  {
    v3 = 0;
    v4 = *(result + 16);
    *a1 = *result;
    *(a1 + 16) = v4;
    *(a1 + 32) = *(result + 32);
    *(a1 + 48) = *(result + 48);
  }

  else
  {
    v3 = 1;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0;
  }

  *(a1 + 52) = v3;
  return result;
}

double GeometryProxy.convert<A>(globalPoint:to:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = a2;
  (*(a5 + 8))(v6, a4, a5);
  GeometryProxy.transform.getter(v9);
  specialized ApplyViewTransform.convertGlobal(to:transform:)(v6, v9);
  outlined destroy of ViewTransform(v9);
  outlined destroy of CoordinateSpace(v6);
  return v7;
}

uint64_t specialized ApplyViewTransform.convertGlobal(to:transform:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v6 = a2[1];
  v14 = *a2;
  v15 = v6;
  v16 = a2[2];
  ViewTransform.coordinateSpaceTag(_:)(a1, &v11);
  if (v12)
  {
    if (one-time initialization token for worldReference != -1)
    {
      swift_once();
    }

    *&v14 = static CoordinateSpace.ID.worldReference;
    BYTE8(v16) = 1;
    v7 = specialized static CoordinateSpace.== infix(_:_:)(a1, &v14);
    outlined destroy of CoordinateSpace(&v14);
    v8 = -3;
    if (v7)
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v11;
  }

  v9 = a2[1];
  v14 = *a2;
  v15 = v9;
  v16 = a2[2];
  v11 = 0;
  v12 = v8;
  v13 = 4;
  return specialized ViewTransform.convert(_:_:)(&v11, &v14, v3);
}

{
  v3 = v2;
  v6 = a2[1];
  v14 = *a2;
  v15 = v6;
  v16 = a2[2];
  ViewTransform.coordinateSpaceTag(_:)(a1, &v11);
  if (v12)
  {
    if (one-time initialization token for worldReference != -1)
    {
      swift_once();
    }

    *&v14 = static CoordinateSpace.ID.worldReference;
    BYTE8(v16) = 1;
    v7 = specialized static CoordinateSpace.== infix(_:_:)(a1, &v14);
    outlined destroy of CoordinateSpace(&v14);
    v8 = -3;
    if (v7)
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v11;
  }

  v9 = a2[1];
  v14 = *a2;
  v15 = v9;
  v16 = a2[2];
  v11 = 0;
  v12 = v8;
  v13 = 4;
  return specialized ViewTransform.convert(_:_:)(&v11, &v14, v3);
}

__n128 GeometryProxy.containerCornerInsets.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v30 = *v1;
  v31 = v3;
  v32 = v1[2];
  v33 = *(v1 + 12);
  specialized static Update.begin()();
  GeometryProxy.placementContext.getter(&v25);
  if (v29)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    v4 = v28;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    if (v28 != *MEMORY[0x1E698D3F8])
    {
      v10 = v26;
      v9 = v27;
      v11 = HIDWORD(v27);
      v12 = v25;
      v13 = HIDWORD(v26);
      v14 = HIDWORD(v25);
      InputValue = AGGraphGetInputValue();
      v16 = *(InputValue + 16);
      v23 = *InputValue;
      v24 = v16;
      v22[0] = v12;
      v22[1] = v14;
      v22[2] = v10;
      v22[3] = v13;
      v22[4] = v9;
      v22[5] = v11;
      v22[6] = v4;
      SafeAreaInsets.resolveCorners(in:)(v22, v34);
      v5 = v34[0];
      v6 = v34[1];
      v7 = v34[2];
      v8 = v34[3];
    }

    v18 = v8;
    v19 = v6;
    v20 = v7;
    v21 = v5;
  }

  static Update.end()();
  *a1 = v21;
  a1[1] = v19;
  result = v20;
  a1[2] = v20;
  a1[3] = v18;
  return result;
}

uint64_t static GeometryReaderLayout.layoutProperties.getter@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for v2 != -1)
  {
    swift_once();
  }

  v2 = static Semantics.v2;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    result = dyld_program_sdk_at_least();
  }

  else
  {
    result = static Semantics.forced >= v2;
  }

  *a1 = 2;
  a1[1] = result ^ 1;
  a1[2] = result ^ 1;
  return result;
}

uint64_t partial apply for closure #1 in GeometryProxy.asCurrent<A>(do:)(uint64_t a1, void *a2)
{
  v5 = *(v2 + 24);
  v6 = _setThreadGeometryProxyData();
  result = v5(v6);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeometryProxy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 52))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t initializeWithCopy for GlassContainer.Entry.ModelID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of GlassContainer.Entry.ModelID(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for GlassContainer.Entry.ModelID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of GlassContainer.Entry.ModelID(*a2, v4, v5, v6, v7);
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
  outlined consume of GlassContainer.Entry.ModelID(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for GlassContainer.Entry.ModelID(uint64_t a1, uint64_t a2)
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
  outlined consume of GlassContainer.Entry.ModelID(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.Entry.ModelID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for GlassContainer.Entry.ModelID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t getEnumTag for GlassContainer.Entry.ModelID(uint64_t a1)
{
  if (*(a1 + 32) <= 1u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for GlassContainer.Entry.ModelID(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t destroy for GlassContainer.EntryState(uint64_t *a1)
{

  if (a1[57] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[54], a1[55]);

    if (a1[67] != 1)
    {
      outlined consume of _Glass.Variant.Role(a1[64], a1[65]);
    }

    if (a1[73] != 1)
    {
      outlined consume of _Glass.Variant.Role(a1[70], a1[71]);
    }
  }
}

uint64_t initializeWithCopy for GlassContainer.EntryState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 96) = *(a2 + 96);
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  v7 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v7;
  v8 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v8;
  v9 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v9;
  v10 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v10;
  v11 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v11;
  v12 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v12;
  v13 = *(a2 + 328);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = v13;
  *(a1 + 336) = *(a2 + 336);
  v14 = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 392) = v14;
  *(a1 + 408) = *(a2 + 408);
  v15 = *(a2 + 360);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 360) = v15;
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);
  v16 = *(a2 + 456);

  if (v16 == 1)
  {
    v17 = *(a2 + 576);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 576) = v17;
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 608) = *(a2 + 608);
    v18 = *(a2 + 512);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 512) = v18;
    v19 = *(a2 + 544);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 544) = v19;
    v20 = *(a2 + 448);
    *(a1 + 432) = *(a2 + 432);
    *(a1 + 448) = v20;
    v21 = *(a2 + 480);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 480) = v21;
  }

  else
  {
    v22 = *(a2 + 432);
    v23 = *(a2 + 440);
    outlined copy of _Glass.Variant.Role(v22, v23);
    *(a1 + 432) = v22;
    *(a1 + 440) = v23;
    *(a1 + 448) = *(a2 + 448);
    v24 = *(a2 + 464);
    *(a1 + 456) = v16;
    *(a1 + 464) = v24;
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 488) = *(a2 + 488);
    v25 = *(a2 + 504);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 504) = v25;
    v26 = *(a2 + 536);

    if (v26 == 1)
    {
      v27 = *(a2 + 528);
      *(a1 + 512) = *(a2 + 512);
      *(a1 + 528) = v27;
      *(a1 + 537) = *(a2 + 537);
    }

    else
    {
      v28 = *(a2 + 512);
      v29 = *(a2 + 520);
      outlined copy of _Glass.Variant.Role(v28, v29);
      *(a1 + 512) = v28;
      *(a1 + 520) = v29;
      *(a1 + 528) = *(a2 + 528);
      *(a1 + 536) = v26;
      *(a1 + 544) = *(a2 + 544);
      *(a1 + 552) = *(a2 + 552);
    }

    v30 = *(a2 + 584);
    if (v30 == 1)
    {
      v31 = *(a2 + 576);
      *(a1 + 560) = *(a2 + 560);
      *(a1 + 576) = v31;
      *(a1 + 585) = *(a2 + 585);
    }

    else
    {
      v32 = *(a2 + 560);
      v33 = *(a2 + 568);
      outlined copy of _Glass.Variant.Role(v32, v33);
      *(a1 + 560) = v32;
      *(a1 + 568) = v33;
      *(a1 + 576) = *(a2 + 576);
      *(a1 + 584) = v30;
      *(a1 + 592) = *(a2 + 592);
      *(a1 + 600) = *(a2 + 600);
    }

    *(a1 + 604) = *(a2 + 604);
    *(a1 + 608) = *(a2 + 608);
  }

  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);

  return a1;
}

uint64_t assignWithCopy for GlassContainer.EntryState(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  *(a1 + 16) = a2[2];

  *(a1 + 24) = a2[3];

  *(a1 + 32) = a2[4];
  v5 = a2[5];
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 56) = a2[7];
  *(a1 + 64) = a2[8];
  *(a1 + 72) = a2[9];
  *(a1 + 80) = a2[10];
  *(a1 + 88) = a2[11];
  *(a1 + 96) = a2[12];
  *(a1 + 104) = a2[13];
  *(a1 + 112) = a2[14];
  *(a1 + 120) = a2[15];
  *(a1 + 128) = a2[16];
  *(a1 + 136) = a2[17];
  *(a1 + 144) = a2[18];
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = a2[20];
  *(a1 + 168) = a2[21];
  *(a1 + 176) = a2[22];
  *(a1 + 184) = a2[23];
  *(a1 + 192) = a2[24];
  *(a1 + 200) = a2[25];
  *(a1 + 208) = a2[26];
  *(a1 + 216) = a2[27];
  *(a1 + 224) = a2[28];
  *(a1 + 232) = a2[29];
  *(a1 + 240) = a2[30];
  *(a1 + 248) = a2[31];
  *(a1 + 256) = a2[32];
  *(a1 + 264) = a2[33];
  *(a1 + 272) = a2[34];
  *(a1 + 280) = a2[35];
  *(a1 + 288) = a2[36];
  *(a1 + 296) = a2[37];
  *(a1 + 304) = a2[38];
  *(a1 + 312) = a2[39];
  *(a1 + 320) = a2[40];
  *(a1 + 328) = a2[41];

  *(a1 + 336) = a2[42];
  *(a1 + 344) = a2[43];
  *(a1 + 352) = a2[44];
  *(a1 + 360) = a2[45];
  *(a1 + 368) = a2[46];
  *(a1 + 376) = a2[47];
  *(a1 + 384) = a2[48];
  *(a1 + 392) = a2[49];
  *(a1 + 400) = a2[50];
  *(a1 + 408) = a2[51];
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = a2[53];

  v6 = a2[57];
  if (*(a1 + 456) != 1)
  {
    if (v6 == 1)
    {
      outlined destroy of GlassContainer.DisplayMaterial(a1 + 432);
      v16 = *(a2 + 30);
      v18 = *(a2 + 27);
      v17 = *(a2 + 28);
      *(a1 + 464) = *(a2 + 29);
      *(a1 + 480) = v16;
      *(a1 + 432) = v18;
      *(a1 + 448) = v17;
      v19 = *(a2 + 34);
      v21 = *(a2 + 31);
      v20 = *(a2 + 32);
      *(a1 + 528) = *(a2 + 33);
      *(a1 + 544) = v19;
      *(a1 + 496) = v21;
      *(a1 + 512) = v20;
      v23 = *(a2 + 36);
      v22 = *(a2 + 37);
      v24 = *(a2 + 35);
      *(a1 + 608) = *(a2 + 608);
      *(a1 + 576) = v23;
      *(a1 + 592) = v22;
      *(a1 + 560) = v24;
      goto LABEL_26;
    }

    v31 = a2[54];
    v32 = a2[55];
    outlined copy of _Glass.Variant.Role(v31, v32);
    v33 = *(a1 + 432);
    v34 = *(a1 + 440);
    *(a1 + 432) = v31;
    *(a1 + 440) = v32;
    outlined consume of _Glass.Variant.Role(v33, v34);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 456) = a2[57];

    *(a1 + 464) = a2[58];
    *(a1 + 472) = *(a2 + 472);
    v35 = a2[60];
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 480) = v35;
    *(a1 + 496) = a2[62];

    *(a1 + 504) = a2[63];

    v36 = (a1 + 512);
    v37 = (a2 + 64);
    v38 = a2[67];
    if (*(a1 + 536) == 1)
    {
      if (v38 == 1)
      {
        v39 = *v37;
        v40 = *(a2 + 33);
        *(a1 + 537) = *(a2 + 537);
        *v36 = v39;
        *(a1 + 528) = v40;
      }

      else
      {
        v47 = a2[64];
        v48 = a2[65];
        outlined copy of _Glass.Variant.Role(v47, v48);
        *(a1 + 512) = v47;
        *(a1 + 520) = v48;
        *(a1 + 528) = *(a2 + 528);
        *(a1 + 536) = a2[67];
        *(a1 + 544) = a2[68];
        *(a1 + 552) = *(a2 + 552);
      }
    }

    else if (v38 == 1)
    {
      outlined destroy of _Glass(a1 + 512);
      v45 = *(a2 + 537);
      v46 = *(a2 + 33);
      *v36 = *v37;
      *(a1 + 528) = v46;
      *(a1 + 537) = v45;
    }

    else
    {
      v49 = a2[64];
      v50 = a2[65];
      outlined copy of _Glass.Variant.Role(v49, v50);
      v51 = *(a1 + 512);
      v52 = *(a1 + 520);
      *(a1 + 512) = v49;
      *(a1 + 520) = v50;
      outlined consume of _Glass.Variant.Role(v51, v52);
      *(a1 + 528) = *(a2 + 528);
      *(a1 + 536) = a2[67];

      *(a1 + 544) = a2[68];
      *(a1 + 552) = *(a2 + 552);
    }

    v53 = (a1 + 560);
    v54 = a2 + 70;
    v55 = a2[73];
    if (*(a1 + 584) != 1)
    {
      if (v55 == 1)
      {
        outlined destroy of _Glass(a1 + 560);
        v60 = *(a2 + 585);
        v61 = *(a2 + 36);
        *v53 = *v54;
        *(a1 + 576) = v61;
        *(a1 + 585) = v60;
      }

      else
      {
        v62 = a2[70];
        v63 = a2[71];
        outlined copy of _Glass.Variant.Role(v62, v63);
        v64 = *(a1 + 560);
        v65 = *(a1 + 568);
        *(a1 + 560) = v62;
        *(a1 + 568) = v63;
        outlined consume of _Glass.Variant.Role(v64, v65);
        *(a1 + 576) = *(a2 + 576);
        *(a1 + 584) = a2[73];

        *(a1 + 592) = a2[74];
        *(a1 + 600) = *(a2 + 600);
      }

      goto LABEL_25;
    }

    if (v55 == 1)
    {
      v56 = *v54;
      v57 = *(a2 + 36);
      *(a1 + 585) = *(a2 + 585);
      *v53 = v56;
      *(a1 + 576) = v57;
      goto LABEL_25;
    }

LABEL_21:
    v58 = a2[70];
    v59 = a2[71];
    outlined copy of _Glass.Variant.Role(v58, v59);
    *(a1 + 560) = v58;
    *(a1 + 568) = v59;
    *(a1 + 576) = *(a2 + 576);
    *(a1 + 584) = a2[73];
    *(a1 + 592) = a2[74];
    *(a1 + 600) = *(a2 + 600);

    goto LABEL_25;
  }

  if (v6 != 1)
  {
    v25 = a2[54];
    v26 = a2[55];
    outlined copy of _Glass.Variant.Role(v25, v26);
    *(a1 + 432) = v25;
    *(a1 + 440) = v26;
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 456) = a2[57];
    *(a1 + 464) = a2[58];
    *(a1 + 472) = *(a2 + 472);
    v27 = a2[60];
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 480) = v27;
    *(a1 + 496) = a2[62];
    *(a1 + 504) = a2[63];
    v28 = a2[67];

    if (v28 == 1)
    {
      v29 = *(a2 + 32);
      v30 = *(a2 + 33);
      *(a1 + 537) = *(a2 + 537);
      *(a1 + 512) = v29;
      *(a1 + 528) = v30;
    }

    else
    {
      v41 = a2[64];
      v42 = a2[65];
      outlined copy of _Glass.Variant.Role(v41, v42);
      *(a1 + 512) = v41;
      *(a1 + 520) = v42;
      *(a1 + 528) = *(a2 + 528);
      *(a1 + 536) = a2[67];
      *(a1 + 544) = a2[68];
      *(a1 + 552) = *(a2 + 552);
    }

    if (a2[73] == 1)
    {
      v43 = *(a2 + 35);
      v44 = *(a2 + 36);
      *(a1 + 585) = *(a2 + 585);
      *(a1 + 560) = v43;
      *(a1 + 576) = v44;
LABEL_25:
      v66 = *(a2 + 151);
      *(a1 + 608) = *(a2 + 608);
      *(a1 + 604) = v66;
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v7 = *(a2 + 27);
  v8 = *(a2 + 28);
  v9 = *(a2 + 30);
  *(a1 + 464) = *(a2 + 29);
  *(a1 + 480) = v9;
  *(a1 + 432) = v7;
  *(a1 + 448) = v8;
  v10 = *(a2 + 31);
  v11 = *(a2 + 32);
  v12 = *(a2 + 34);
  *(a1 + 528) = *(a2 + 33);
  *(a1 + 544) = v12;
  *(a1 + 496) = v10;
  *(a1 + 512) = v11;
  v13 = *(a2 + 35);
  v14 = *(a2 + 36);
  v15 = *(a2 + 37);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 576) = v14;
  *(a1 + 592) = v15;
  *(a1 + 560) = v13;
LABEL_26:
  *(a1 + 616) = a2[77];

  *(a1 + 624) = a2[78];

  return a1;
}

uint64_t assignWithTake for GlassContainer.EntryState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  v4 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v4;
  *(a1 + 304) = *(a2 + 304);
  v5 = *(a2 + 328);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = v5;

  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  v6 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v6;
  v7 = *(a2 + 400);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = v7;
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);

  if (*(a1 + 456) == 1)
  {
    goto LABEL_4;
  }

  if (*(a2 + 456) != 1)
  {
    v13 = *(a1 + 432);
    v14 = *(a1 + 440);
    *(a1 + 432) = *(a2 + 432);
    outlined consume of _Glass.Variant.Role(v13, v14);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 456) = *(a2 + 456);

    *(a1 + 464) = *(a2 + 464);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 496) = *(a2 + 496);

    *(a1 + 504) = *(a2 + 504);

    if (*(a1 + 536) != 1)
    {
      if (*(a2 + 536) != 1)
      {
        v16 = *(a1 + 512);
        v17 = *(a1 + 520);
        *(a1 + 512) = *(a2 + 512);
        outlined consume of _Glass.Variant.Role(v16, v17);
        *(a1 + 528) = *(a2 + 528);
        *(a1 + 536) = *(a2 + 536);

        *(a1 + 544) = *(a2 + 544);
        *(a1 + 552) = *(a2 + 552);
LABEL_10:
        if (*(a1 + 584) != 1)
        {
          if (*(a2 + 584) != 1)
          {
            v19 = *(a1 + 560);
            v20 = *(a1 + 568);
            *(a1 + 560) = *(a2 + 560);
            outlined consume of _Glass.Variant.Role(v19, v20);
            *(a1 + 576) = *(a2 + 576);
            *(a1 + 584) = *(a2 + 584);

            *(a1 + 592) = *(a2 + 592);
            *(a1 + 600) = *(a2 + 600);
            goto LABEL_15;
          }

          outlined destroy of _Glass(a1 + 560);
        }

        v18 = *(a2 + 576);
        *(a1 + 560) = *(a2 + 560);
        *(a1 + 576) = v18;
        *(a1 + 585) = *(a2 + 585);
LABEL_15:
        *(a1 + 604) = *(a2 + 604);
        *(a1 + 608) = *(a2 + 608);
        goto LABEL_16;
      }

      outlined destroy of _Glass(a1 + 512);
    }

    v15 = *(a2 + 528);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 528) = v15;
    *(a1 + 537) = *(a2 + 537);
    goto LABEL_10;
  }

  outlined destroy of GlassContainer.DisplayMaterial(a1 + 432);
LABEL_4:
  v8 = *(a2 + 576);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 576) = v8;
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  v9 = *(a2 + 512);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = v9;
  v10 = *(a2 + 544);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = v10;
  v11 = *(a2 + 448);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = v11;
  v12 = *(a2 + 480);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = v12;
LABEL_16:
  *(a1 + 616) = *(a2 + 616);

  *(a1 + 624) = *(a2 + 624);

  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.EntryState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 632))
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

uint64_t storeEnumTagSinglePayload for GlassContainer.EntryState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 632) = 1;
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

    *(result + 632) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for GlassContainer.DisplayMaterial(uint64_t *a1)
{
  outlined consume of _Glass.Variant.Role(*a1, a1[1]);

  if (a1[13] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[10], a1[11]);
  }

  if (a1[19] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[16], a1[17]);
  }

  return result;
}

uint64_t initializeWithCopy for GlassContainer.DisplayMaterial(uint64_t a1, uint64_t a2)
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
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  v8 = *(a2 + 104);

  if (v8 == 1)
  {
    v9 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v9;
    *(a1 + 105) = *(a2 + 105);
  }

  else
  {
    v10 = *(a2 + 80);
    v11 = *(a2 + 88);
    outlined copy of _Glass.Variant.Role(v10, v11);
    *(a1 + 80) = v10;
    *(a1 + 88) = v11;
    *(a1 + 96) = *(a2 + 96);
    v12 = *(a2 + 112);
    *(a1 + 104) = v8;
    *(a1 + 112) = v12;
    *(a1 + 120) = *(a2 + 120);
  }

  v13 = *(a2 + 152);
  if (v13 == 1)
  {
    v14 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v14;
    *(a1 + 153) = *(a2 + 153);
  }

  else
  {
    v15 = *(a2 + 128);
    v16 = *(a2 + 136);
    outlined copy of _Glass.Variant.Role(v15, v16);
    *(a1 + 128) = v15;
    *(a1 + 136) = v16;
    *(a1 + 144) = *(a2 + 144);
    v17 = *(a2 + 160);
    *(a1 + 152) = v13;
    *(a1 + 160) = v17;
    *(a1 + 168) = *(a2 + 168);
  }

  *(a1 + 172) = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t assignWithCopy for GlassContainer.DisplayMaterial(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v8;
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  v9 = *(a2 + 104);
  if (*(a1 + 104) == 1)
  {
    if (v9 == 1)
    {
      v10 = *(a2 + 80);
      v11 = *(a2 + 96);
      *(a1 + 105) = *(a2 + 105);
      *(a1 + 80) = v10;
      *(a1 + 96) = v11;
    }

    else
    {
      v14 = *(a2 + 80);
      v15 = *(a2 + 88);
      outlined copy of _Glass.Variant.Role(v14, v15);
      *(a1 + 80) = v14;
      *(a1 + 88) = v15;
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
    }
  }

  else if (v9 == 1)
  {
    outlined destroy of _Glass(a1 + 80);
    v12 = *(a2 + 105);
    v13 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v13;
    *(a1 + 105) = v12;
  }

  else
  {
    v16 = *(a2 + 80);
    v17 = *(a2 + 88);
    outlined copy of _Glass.Variant.Role(v16, v17);
    v18 = *(a1 + 80);
    v19 = *(a1 + 88);
    *(a1 + 80) = v16;
    *(a1 + 88) = v17;
    outlined consume of _Glass.Variant.Role(v18, v19);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);

    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
  }

  v20 = *(a2 + 152);
  if (*(a1 + 152) == 1)
  {
    if (v20 == 1)
    {
      v21 = *(a2 + 128);
      v22 = *(a2 + 144);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 128) = v21;
      *(a1 + 144) = v22;
    }

    else
    {
      v25 = *(a2 + 128);
      v26 = *(a2 + 136);
      outlined copy of _Glass.Variant.Role(v25, v26);
      *(a1 + 128) = v25;
      *(a1 + 136) = v26;
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
    }
  }

  else if (v20 == 1)
  {
    outlined destroy of _Glass(a1 + 128);
    v23 = *(a2 + 153);
    v24 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v24;
    *(a1 + 153) = v23;
  }

  else
  {
    v27 = *(a2 + 128);
    v28 = *(a2 + 136);
    outlined copy of _Glass.Variant.Role(v27, v28);
    v29 = *(a1 + 128);
    v30 = *(a1 + 136);
    *(a1 + 128) = v27;
    *(a1 + 136) = v28;
    outlined consume of _Glass.Variant.Role(v29, v30);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);

    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
  }

  v31 = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 172) = v31;
  return a1;
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t assignWithTake for GlassContainer.DisplayMaterial(uint64_t a1, uint64_t a2)
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
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  if (*(a1 + 104) == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 104);
  if (v6 == 1)
  {
    outlined destroy of _Glass(a1 + 80);
LABEL_4:
    v7 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v7;
    *(a1 + 105) = *(a2 + 105);
    goto LABEL_6;
  }

  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  outlined consume of _Glass.Variant.Role(v8, v9);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v6;

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
LABEL_6:
  if (*(a1 + 152) != 1)
  {
    v10 = *(a2 + 152);
    if (v10 != 1)
    {
      v12 = *(a1 + 128);
      v13 = *(a1 + 136);
      *(a1 + 128) = *(a2 + 128);
      outlined consume of _Glass.Variant.Role(v12, v13);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = v10;

      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      goto LABEL_11;
    }

    outlined destroy of _Glass(a1 + 128);
  }

  v11 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v11;
  *(a1 + 153) = *(a2 + 153);
LABEL_11:
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.DisplayMaterial(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 177))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for GlassContainer.DisplayMaterial(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for GlassContainer.Entry(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of GlassContainer.Entry.ModelID(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of GlassContainer.Entry.ModelID(v9, v10, v11, v12, v13);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  outlined copy of _Glass.Variant.Role(v14, v15);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  outlined consume of _Glass.Variant.Role(v16, v17);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v18 = *(a2 + 144);
  v19 = *(a2 + 152);
  outlined copy of _Glass.Variant.Role(v18, v19);
  v20 = *(a1 + 144);
  v21 = *(a1 + 152);
  *(a1 + 144) = v18;
  *(a1 + 152) = v19;
  outlined consume of _Glass.Variant.Role(v20, v21);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  v22 = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 192) = v22;
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  v23 = *(a2 + 248);
  if (*(a1 + 248) == 1)
  {
    if (v23 == 1)
    {
      v24 = *(a2 + 224);
      v25 = *(a2 + 240);
      *(a1 + 249) = *(a2 + 249);
      *(a1 + 224) = v24;
      *(a1 + 240) = v25;
    }

    else
    {
      v28 = *(a2 + 224);
      v29 = *(a2 + 232);
      outlined copy of _Glass.Variant.Role(v28, v29);
      *(a1 + 224) = v28;
      *(a1 + 232) = v29;
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
    }
  }

  else if (v23 == 1)
  {
    outlined destroy of _Glass(a1 + 224);
    v26 = *(a2 + 249);
    v27 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v27;
    *(a1 + 249) = v26;
  }

  else
  {
    v30 = *(a2 + 224);
    v31 = *(a2 + 232);
    outlined copy of _Glass.Variant.Role(v30, v31);
    v32 = *(a1 + 224);
    v33 = *(a1 + 232);
    *(a1 + 224) = v30;
    *(a1 + 232) = v31;
    outlined consume of _Glass.Variant.Role(v32, v33);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
  }

  v34 = (a1 + 272);
  v35 = (a2 + 272);
  v36 = *(a2 + 296);
  if (*(a1 + 296) == 1)
  {
    if (v36 == 1)
    {
      v37 = *v35;
      v38 = *(a2 + 288);
      *(a1 + 297) = *(a2 + 297);
      *v34 = v37;
      *(a1 + 288) = v38;
    }

    else
    {
      v41 = *(a2 + 272);
      v42 = *(a2 + 280);
      outlined copy of _Glass.Variant.Role(v41, v42);
      *(a1 + 272) = v41;
      *(a1 + 280) = v42;
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 296) = *(a2 + 296);
      *(a1 + 304) = *(a2 + 304);
      *(a1 + 312) = *(a2 + 312);
    }
  }

  else if (v36 == 1)
  {
    outlined destroy of _Glass(a1 + 272);
    v39 = *(a2 + 297);
    v40 = *(a2 + 288);
    *v34 = *v35;
    *(a1 + 288) = v40;
    *(a1 + 297) = v39;
  }

  else
  {
    v43 = *(a2 + 272);
    v44 = *(a2 + 280);
    outlined copy of _Glass.Variant.Role(v43, v44);
    v45 = *(a1 + 272);
    v46 = *(a1 + 280);
    *(a1 + 272) = v43;
    *(a1 + 280) = v44;
    outlined consume of _Glass.Variant.Role(v45, v46);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = *(a2 + 296);

    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = *(a2 + 312);
  }

  v47 = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 316) = v47;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  return a1;
}

uint64_t assignWithTake for GlassContainer.Entry(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of GlassContainer.Entry.ModelID(v5, v6, v7, v8, v10);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  outlined consume of _Glass.Variant.Role(v11, v12);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v13 = *(a1 + 144);
  v14 = *(a1 + 152);
  *(a1 + 144) = *(a2 + 144);
  outlined consume of _Glass.Variant.Role(v13, v14);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  if (*(a1 + 248) == 1)
  {
    goto LABEL_4;
  }

  v15 = *(a2 + 248);
  if (v15 == 1)
  {
    outlined destroy of _Glass(a1 + 224);
LABEL_4:
    v16 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v16;
    *(a1 + 249) = *(a2 + 249);
    goto LABEL_6;
  }

  v17 = *(a1 + 224);
  v18 = *(a1 + 232);
  *(a1 + 224) = *(a2 + 224);
  outlined consume of _Glass.Variant.Role(v17, v18);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v15;

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
LABEL_6:
  if (*(a1 + 296) != 1)
  {
    v19 = *(a2 + 296);
    if (v19 != 1)
    {
      v21 = *(a1 + 272);
      v22 = *(a1 + 280);
      *(a1 + 272) = *(a2 + 272);
      outlined consume of _Glass.Variant.Role(v21, v22);
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 296) = v19;

      *(a1 + 304) = *(a2 + 304);
      *(a1 + 312) = *(a2 + 312);
      goto LABEL_11;
    }

    outlined destroy of _Glass(a1 + 272);
  }

  v20 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v20;
  *(a1 + 297) = *(a2 + 297);
LABEL_11:
  *(a1 + 316) = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.Entry(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 340))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassContainer.Entry(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 336) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 340) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 340) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GlassContainer.ResolvedPhase(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3FFE)
  {
    goto LABEL_17;
  }

  if (a2 + 49154 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 49154 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 49154;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 49154;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 49154;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3E00 | (*a1 >> 14) & 0xFFFFFE03 | (4 * (*a1 >> 1))) ^ 0x3FFF;
  if (v6 >= 0x3FFD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for GlassContainer.ResolvedPhase(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49154 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49154 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3FFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3FFD)
  {
    v6 = ((a2 - 16382) >> 16) + 1;
    *result = a2 - 16382;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
    *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t getEnumTag for GlassContainer.ResolvedPhase(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 14;
  v4 = (v1 & 1 | (2 * ((v1 >> 8) & 1))) + 2;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_WORD *destructiveInjectEnumTag for GlassContainer.ResolvedPhase(_WORD *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0x101 | (a2 << 14);
  }

  else
  {
    *result = (a2 & 1 | (((a2 >> 1) & 1) << 8)) ^ 0x8100;
  }

  return result;
}

uint64_t GlassContainer.DisplayMaterial.id.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = *(v1 + 48);
  v20 = *(v1 + 56);
  v19 = *(v1 + 64);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 104);
  v14 = *(v1 + 128);
  v15 = *(v1 + 96);
  v13 = *(v1 + 136);
  v16 = *(v1 + 152);
  v17 = *(v1 + 176);
  v18 = *(v1 + 172);
  if (v5 == 1)
  {
    v6 = *v1;
    v7 = *(v1 + 8);
    outlined copy of _Glass.Variant.Role(*v1, v7);
  }

  else
  {
    v6 = *(v1 + 80);
    v7 = *(v1 + 88);
  }

  v22 = v6;
  v23 = v7;
  outlined copy of _Glass.Variant.Role(v6, v7);
  outlined copy of _Glass?(v3, v4, v15, v5);
  _Glass.Variant.ID.init(_:)(&v22, &v24);
  outlined consume of _Glass.Variant.Role(v6, v7);

  v8 = v24;
  v9 = v25;
  if (v16 == 1)
  {
    v10 = 0;
    v11 = -4;
  }

  else
  {
    v22 = v14;
    v23 = v13;
    outlined copy of _Glass.Variant.Role(v14, v13);
    _Glass.Variant.ID.init(_:)(&v22, &v24);
    v10 = v24;
    v11 = v25;
  }

  result = outlined consume of _Glass.Variant.ID?(0, 0xFCu);
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 28) = v18;
  *(a1 + 32) = v17;
  *(a1 + 40) = v21;
  *(a1 + 48) = v20;
  *(a1 + 56) = v19;
  return result;
}

Swift::Void __swiftcall GlassContainer.Entry.resetTransition()()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 2);
  if (v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    if (v2 > *(v1 + 2))
    {
      __break(1u);
    }

    else
    {
      v3 = v1 + 208;
      do
      {
        *(v3 - 3) = 0;
        *(v3 - 2) = 0;
        *(v3 - 1) = 0;
        *v3 = 1;
        v3 += 656;
        --v2;
      }

      while (v2);
      *(v0 + 128) = v1;
    }
  }
}

uint64_t GlassContainer.Entry.shapeBounds(data:proxy:cache:options:)@<X0>(CGFloat a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, uint64_t a4@<X8>)
{
  rect1.origin.x = a1;
  v7 = *(a2 + 16);
  v132 = *a2;
  v133 = v7;
  v134 = *(a2 + 32);
  v135 = *(a2 + 48);
  v8 = v4[5];
  v152 = v4[4];
  v153 = v8;
  v9 = v4[7];
  v154 = v4[6];
  v155 = v9;
  v10 = v4[1];
  v148 = *v4;
  v149 = v10;
  v11 = v4[3];
  v150 = v4[2];
  v151 = v11;
  v12 = *(v4 + 16);
  v13 = *(v4 + 296);
  v147 = *(v4 + 312);
  v146 = v13;
  v14 = *(v4 + 264);
  v145 = *(v4 + 280);
  v144 = v14;
  v15 = *(v4 + 232);
  v143 = *(v4 + 248);
  v142 = v15;
  v16 = *(v4 + 200);
  v141 = *(v4 + 216);
  v140 = v16;
  v17 = *(v4 + 168);
  v139 = *(v4 + 184);
  v138 = v17;
  v18 = *(v4 + 136);
  v137 = *(v4 + 152);
  v136 = v18;
  v19 = *(v4 + 41);
  v20 = *(v4 + 84);
  GlassContainerCache.entryState(id:)(v19, v156);
  v21 = *MEMORY[0x1E695F050];
  v22 = *(MEMORY[0x1E695F050] + 8);
  v24 = *(MEMORY[0x1E695F050] + 16);
  v23 = *(MEMORY[0x1E695F050] + 24);
  v25 = *MEMORY[0x1E695F050];
  v26 = v22;
  v27 = v24;
  v28 = v23;
  if (*(v157 + 16))
  {
    v29 = v4[5];
    __dst[4] = v4[4];
    __dst[5] = v29;
    v30 = v4[7];
    __dst[6] = v4[6];
    __dst[7] = v30;
    v31 = v4[1];
    __dst[0] = *v4;
    __dst[1] = v31;
    v32 = v4[3];
    __dst[2] = v4[2];
    __dst[3] = v32;
    v33 = *(v4 + 312);
    *(&__dst[18] + 8) = *(v4 + 296);
    *(&__dst[19] + 8) = v33;
    v34 = *(v4 + 280);
    *(&__dst[16] + 8) = *(v4 + 264);
    *(&__dst[17] + 8) = v34;
    v35 = *(v4 + 232);
    *(&__dst[15] + 8) = *(v4 + 248);
    *(&__dst[14] + 8) = v35;
    v36 = *(v4 + 200);
    *(&__dst[13] + 8) = *(v4 + 216);
    *(&__dst[12] + 8) = v36;
    v37 = *(v4 + 168);
    *(&__dst[11] + 8) = *(v4 + 184);
    *(&__dst[10] + 8) = v37;
    v38 = *(v4 + 136);
    *(&__dst[9] + 8) = *(v4 + 152);
    *(&__dst[8] + 8) = v38;
    *&__dst[8] = v12;
    *(&__dst[20] + 1) = v19;
    LODWORD(__dst[21]) = v20;
    v39 = *(a2 + 16);
    rect1.size = *a2;
    v127 = v39;
    v128 = *(a2 + 32);
    v129 = *(a2 + 48);
    GlassContainer.Entry.unionBounds(itemAnchors:proxy:)(v157, &rect1.size);
  }

  v121 = v26;
  v122 = v25;
  v120 = v27;
  v124 = v28;
  v158.origin.x = v21;
  v158.origin.y = v22;
  v158.size.width = v24;
  v158.size.height = v23;
  if (!CGRectEqualToRect(*&v25, v158))
  {
    goto LABEL_45;
  }

  if (a3)
  {
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  v125 = result;
  v115 = v20;
  v116 = v19;
  v41 = *(v12 + 16);
  v42 = MEMORY[0x1E69E7CC0];
  v118 = v12;
  v113 = MEMORY[0x1E69E7CC0];
  if (v41)
  {
    v43 = 0;
    v44 = v12 + 32;
    x = rect1.origin.x;
    while (2)
    {
      v46 = *(v12 + 16);
      v47 = (v44 + 656 * v43);
      v48 = v43;
      while (1)
      {
        if (v48 >= v46)
        {
          goto LABEL_71;
        }

        result = memcpy(__dst, v47, 0x289uLL);
        v43 = v48 + 1;
        if (*&__dst[14] == 1)
        {
          break;
        }

        v47 += 656;
        ++v48;
        if (v41 == v43)
        {
          v12 = v118;
LABEL_19:
          v52 = v42[2];
          if (!v52)
          {
            goto LABEL_26;
          }

          goto LABEL_20;
        }
      }

      outlined init with copy of GlassContainer.Item(__dst, &rect1.size);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v131 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1);
        v42 = v131;
      }

      v51 = v42[2];
      v50 = v42[3];
      if (v51 >= v50 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
        v42 = v131;
      }

      v42[2] = v51 + 1;
      result = memcpy(&v42[82 * v51 + 4], __dst, 0x289uLL);
      v12 = v118;
      x = rect1.origin.x;
      if (v41 - 1 != v48)
      {
        continue;
      }

      goto LABEL_19;
    }
  }

  x = rect1.origin.x;
  v52 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v52)
  {
LABEL_20:
    v123 = a4;
    *&__dst[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52, 0);
    v53 = *&__dst[0];
    v54 = *(*&__dst[0] + 16);
    v55 = 24 * v54 + 48;
    v56 = v42 + 6;
    do
    {
      v57 = *(v56 - 4);
      v58 = *(v56 - 1);
      v59 = *v56;
      *&__dst[0] = v53;
      v60 = v54 + 1;
      v61 = *(v53 + 24);

      if (v54 >= v61 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v60, 1);
        v53 = *&__dst[0];
      }

      v56 += 82;
      *(v53 + 16) = v60;
      v62 = (v53 + v55);
      *(v62 - 4) = v57;
      *(v62 - 1) = v58;
      *v62 = v59;
      v55 += 24;
      ++v54;
      --v52;
    }

    while (v52);

    a4 = v123;
    v12 = v118;
    x = rect1.origin.x;
  }

  else
  {
LABEL_26:

    v53 = MEMORY[0x1E69E7CC0];
  }

  v63 = MEMORY[0x1E69E7CC0];
  result = v125;
  v64 = *(v125 + 16);
  v65 = v116;
  v66 = v115;
  if (v64)
  {
    v131 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v64 = *(v53 + 16);

  v131 = v63;
  v125 = v53;
  if (v64)
  {
LABEL_30:
    v67 = 0;
    v68 = v125 + 40;
    v114 = MEMORY[0x1E69E7CC0];
LABEL_31:
    v69 = v68 + 24 * v67;
    v70 = v67;
    while (v70 < v64)
    {
      v67 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_70;
      }

      if (*(*&x + 16))
      {
        result = specialized __RawDictionaryStorage.find<A>(_:)(*(v69 - 8));
        if (v71)
        {
          v72 = *(*&x + 56) + 40 * result;
          v73 = *(v72 + 32);
          v74 = *(v72 + 16);
          __dst[0] = *v72;
          __dst[1] = v74;
          *&__dst[2] = v73;
          type metadata accessor for Anchor<CGRect>(0);

          outlined init with copy of GlassContainer.ItemData(__dst, &rect1.size);
          if (AGGraphGetWeakValue())
          {

            outlined destroy of GlassContainer.ItemData(__dst);

            MEMORY[0x193ABF170](v75);
            if (*(v131 + 16) >= *(v131 + 24) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v114 = v131;
            x = rect1.origin.x;
            v68 = v125 + 40;
            if (v67 == v64)
            {
LABEL_42:
              v12 = v118;
              v65 = v116;
              v66 = v115;
              v63 = MEMORY[0x1E69E7CC0];
              goto LABEL_43;
            }

            goto LABEL_31;
          }

          outlined destroy of GlassContainer.ItemData(__dst);

          x = rect1.origin.x;
        }
      }

      ++v70;
      v69 += 24;
      if (v67 == v64)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v114 = v63;
LABEL_43:
  __dst[4] = v152;
  __dst[5] = v153;
  __dst[6] = v154;
  __dst[7] = v155;
  __dst[0] = v148;
  __dst[1] = v149;
  __dst[2] = v150;
  __dst[3] = v151;
  *(&__dst[18] + 8) = v146;
  *(&__dst[19] + 8) = v147;
  *(&__dst[16] + 8) = v144;
  *(&__dst[17] + 8) = v145;
  *(&__dst[15] + 8) = v143;
  *(&__dst[14] + 8) = v142;
  *(&__dst[13] + 8) = v141;
  *(&__dst[12] + 8) = v140;
  *(&__dst[11] + 8) = v139;
  *(&__dst[10] + 8) = v138;
  *(&__dst[9] + 8) = v137;
  *(&__dst[8] + 8) = v136;
  *&__dst[8] = v12;
  *(&__dst[20] + 1) = v65;
  LODWORD(__dst[21]) = v66;
  rect1.size = v132;
  v127 = v133;
  v128 = v134;
  v129 = v135;
  GlassContainer.Entry.unionBounds(itemAnchors:proxy:)(v114, &rect1.size);
  v121 = v77;
  v122 = v76;
  v120 = v78;
  v124 = v79;

  if ((a3 & 2) == 0)
  {

LABEL_45:
    v80 = v21;
    v81 = v22;
    v82 = v24;
    v83 = v23;
LABEL_62:
    rect1.origin.x = v80;
    v119 = v81;
    v99 = v82;
    v100 = v83;
    v159.origin.x = v21;
    v159.origin.y = v22;
    v159.size.width = v24;
    v159.size.height = v23;
    v101 = CGRectEqualToRect(*&v80, v159);
    v103 = v121;
    v102 = v122;
    v104 = v124;
    v105 = v120;
    if (v101)
    {
      rect1.origin.x = v122;
      v119 = v121;
      v82 = v120;
      v83 = v124;
    }

    v160.origin.x = v21;
    v160.origin.y = v22;
    v160.size.width = v24;
    v160.size.height = v23;
    v106 = CGRectEqualToRect(*&v102, v160);
    result = outlined destroy of GlassContainer.EntryState(v156);
    if (v106)
    {
      v107 = 0uLL;
      v108 = 1;
      v109 = 0.0;
      v110 = 0.0;
      v111 = 0.0;
      v112 = 0.0;
      v82 = 0.0;
      v83 = 0.0;
    }

    else
    {
      v108 = 0;
      *&v107 = v124;
      *(&v107 + 1) = *&rect1.origin.x;
      v110 = v121;
      v109 = v122;
      v112 = v119;
      v111 = v120;
    }

    *a4 = v109;
    *(a4 + 8) = v110;
    *(a4 + 16) = v111;
    *(a4 + 24) = v107;
    *(a4 + 40) = v112;
    *(a4 + 48) = v82;
    *(a4 + 56) = v83;
    *(a4 + 64) = v108;
    return result;
  }

  v131 = v63;
  v84 = *(v53 + 16);
  if (!v84)
  {
LABEL_61:
    *(&__dst[18] + 8) = v146;
    *(&__dst[19] + 8) = v147;
    *(&__dst[16] + 8) = v144;
    *(&__dst[17] + 8) = v145;
    __dst[4] = v152;
    __dst[5] = v153;
    __dst[6] = v154;
    __dst[7] = v155;
    __dst[0] = v148;
    __dst[1] = v149;
    __dst[2] = v150;
    __dst[3] = v151;
    *(&__dst[15] + 8) = v143;
    *(&__dst[14] + 8) = v142;
    *(&__dst[13] + 8) = v141;
    *(&__dst[12] + 8) = v140;
    *(&__dst[11] + 8) = v139;
    *(&__dst[10] + 8) = v138;
    *(&__dst[9] + 8) = v137;
    *(&__dst[8] + 8) = v136;
    *&__dst[8] = v12;
    *(&__dst[20] + 1) = v116;
    LODWORD(__dst[21]) = v115;
    rect1.size = v132;
    v127 = v133;
    v128 = v134;
    v129 = v135;
    GlassContainer.Entry.unionBounds(itemAnchors:proxy:)(v113, &rect1.size);
    rect1.origin.x = v94;
    v96 = v95;
    v82 = v97;
    v83 = v98;

    v80 = rect1.origin.x;
    v81 = v96;
    goto LABEL_62;
  }

  v85 = 0;
  v86 = v53 + 40;
  v113 = MEMORY[0x1E69E7CC0];
LABEL_48:
  v87 = v86 + 24 * v85;
  v88 = v85;
  while (v88 < v84)
  {
    v85 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      goto LABEL_73;
    }

    if (*(*&x + 16))
    {
      result = specialized __RawDictionaryStorage.find<A>(_:)(*(v87 - 8));
      if (v89)
      {
        v90 = *(*&rect1.origin.x + 56) + 40 * result;
        v91 = *(v90 + 32);
        v92 = *(v90 + 16);
        __dst[0] = *v90;
        __dst[1] = v92;
        *&__dst[2] = v91;
        type metadata accessor for Anchor<CGRect>(0);

        outlined init with copy of GlassContainer.ItemData(__dst, &rect1.size);
        if (AGGraphGetWeakValue())
        {

          outlined destroy of GlassContainer.ItemData(__dst);

          MEMORY[0x193ABF170](v93);
          if (*(v131 + 16) >= *(v131 + 24) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v113 = v131;
          v86 = v53 + 40;
          v12 = v118;
          x = rect1.origin.x;
          if (v85 != v84)
          {
            goto LABEL_48;
          }

          goto LABEL_61;
        }

        outlined destroy of GlassContainer.ItemData(__dst);
      }
    }

    ++v88;
    v87 += 24;
    x = rect1.origin.x;
    if (v85 == v84)
    {
      v12 = v118;
      goto LABEL_61;
    }
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GlassContainer.Item.ID.Explicit()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  (*(*v1 + 120))(v4);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GlassContainer.Item.ID.Explicit()
{
  v1 = v0[1];
  (*(**v0 + 120))();
  return MEMORY[0x193AC11A0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GlassContainer.Item.ID.Explicit()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  (*(*v1 + 120))(v4);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

BOOL GlassContainer.Item.ID.matches(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v1 + 8);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return *v1 == *a1;
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(v1 + 16);
    if (v3 != v2)
    {
      v8 = *(*v3 + 112);

      v10 = v8(v9);

      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    return v7 == v6;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GlassContainer.Item.ID()
{
  v1 = *v0;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    (*(*v3 + 120))(v5);
    MEMORY[0x193AC11A0](v2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance GlassContainer.Item.ID(uint64_t a1)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  Hasher._combine(_:)(*v1);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    (*(*v4 + 120))(a1);
    MEMORY[0x193AC11A0](v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GlassContainer.Item.ID()
{
  v1 = *v0;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    (*(*v3 + 120))(v5);
    MEMORY[0x193AC11A0](v2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GlassContainer.ItemData()
{
  type metadata accessor for AGSubgraphRef(0);
  lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef();
  if ((static _CFObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Anchor<CGRect>(0);
  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static WeakAttribute.== infix(_:_:)();
}

uint64_t GlassContainer.Storage.appendToExistingEntry(item:)(void *__src)
{
  memcpy(__dst, __src, 0x289uLL);
  v2 = *(v1 + 16);
  v3 = *(v2 + 2);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    *(v1 + 16) = v2;
    if (v3)
    {
LABEL_3:
      v385 = v1;
      v4 = 0;
      v5 = 0;
      v399 = LODWORD(__dst[0]);
      v397 = __dst[2];
      v398 = __dst[1];
      v395 = __dst[5];
      v396 = __dst[4];
      v400 = v3;
      v401 = __dst[17];
      v403 = (__dst[16] == 0) | LOBYTE(__dst[18]);
      v380 = LOBYTE(__dst[3]);
      v6 = 256;
      if (!LOBYTE(__dst[3]))
      {
        v6 = 0;
      }

      v394 = v6;
      v404 = v2;
      v402 = __dst[16];
      while (1)
      {
        if (v5 >= *(v2 + 2))
        {
          __break(1u);
          goto LABEL_474;
        }

        v7 = &v2[v4];
        if (v403)
        {
          v1 = *(v7 + 4);
          v8 = *(v7 + 5);
          v9 = *(v7 + 6);
          v10 = *(v7 + 7);
          v11 = v7[64];
          v415 = v399;
          v416 = v398;
          v417 = v397;
          v418 = 0;
          v419 = 1;
          v420 = v1;
          v421 = v8;
          v422 = v9;
          v423 = v10;
          v424 = v11;
          if (v11 == 1)
          {
            LODWORD(v410) = v399;
            v411 = v398;
            v412 = v397;
            LODWORD(v405) = v1;
            v406 = v8;
            v407 = v9;

            outlined copy of GlassContainer.Entry.ModelID(v1, v8, v9, v10, 1);

            outlined copy of GlassContainer.Entry.ModelID(v1, v8, v9, v10, 1);
            v12 = specialized static GlassContainer.Item.ID.== infix(_:_:)(&v410, &v405);
            outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(&v415);
            outlined consume of GlassContainer.Entry.ModelID(v1, v8, v9, v10, 1);

            if (v12)
            {
              goto LABEL_467;
            }
          }

          else
          {

            outlined copy of GlassContainer.Entry.ModelID(v1, v8, v9, v10, v11);
            outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(&v415);
          }

          goto LABEL_7;
        }

        v1 = v396;
        v410 = v396;
        v411 = v395;

        v13 = v402;
        outlined copy of _Glass.Variant.Role(v396, v395);
        _Glass.Variant.ID.init(_:)(&v410, &v405);
        v14 = v405;
        v15 = v406;
        v16 = *(v7 + 4);
        v17 = *(v7 + 5);
        v18 = *(v7 + 6);
        v19 = *(v7 + 7);
        v20 = v7[64];
        v415 = v405;
        v416 = v394 | v406;
        v417 = v402;
        v418 = v401;
        v419 = 0;
        v420 = v16;
        v421 = v17;
        v422 = v18;
        v423 = v19;
        v424 = v20;
        if (v20)
        {
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, v20);
          outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(&v415);
          goto LABEL_88;
        }

        if (!(v406 >> 6))
        {
          break;
        }

        if (v406 >> 6 == 1)
        {
          if ((v17 & 0xC0) != 0x40)
          {
            goto LABEL_48;
          }

          v410 = v405;
          LOBYTE(v411) = v406 & 0x3F;
          v405 = v16;
          LOBYTE(v406) = v17 & 0x3F;
          v21 = v18;
          v22 = v19;
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
          outlined copy of _Glass.Variant.ID(v14, v15);
          outlined copy of _Glass.Variant.ID(v16, v17);
          v392 = v22;
          v393 = v21;
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v21, v22, 0);
          outlined copy of _Glass.Variant.ID(v14, v15);

          outlined copy of _Glass.Variant.ID(v14, v15);
          outlined copy of _Glass.Variant.ID(v16, v17);
          v1 = specialized static Material.ID.== infix(_:_:)(&v410, &v405);
          outlined consume of _Glass.Variant.ID(v14, v15);
          outlined consume of _Glass.Variant.ID(v16, v17);
          outlined consume of _Glass.Variant.ID(v16, v17);
          outlined consume of _Glass.Variant.ID(v14, v15);
          if ((v1 & 1) == 0)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (v405 | v406 ^ 0x80)
          {
            v31 = v17 & 0xC0;
            if (v406 == 128 && v405 == 1)
            {
              if (v31 != 128 || v16 != 1 || v17 != 128)
              {
                goto LABEL_48;
              }

              v33 = v406;
              v34 = v405;
              v35 = v18;
              v36 = v19;
              v1 = 1;
            }

            else
            {
              if (v31 != 128 || v16 != 2 || v17 != 128)
              {
                goto LABEL_48;
              }

              v33 = v406;
              v34 = v405;
              v35 = v18;
              v36 = v19;
              v1 = 2;
            }
          }

          else
          {
            if ((v17 & 0xC0) != 0x80 || v16 || v17 != 128)
            {
LABEL_48:
              v1 = v18;
              v39 = v19;
              outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
              outlined copy of GlassContainer.Entry.ModelID(v16, v17, v1, v39, 0);
              outlined copy of _Glass.Variant.ID(v14, v15);

              outlined copy of _Glass.Variant.ID(v14, v15);
              outlined copy of _Glass.Variant.ID(v16, v17);
              outlined consume of _Glass.Variant.ID(v14, v15);
              outlined consume of _Glass.Variant.ID(v16, v17);
              outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(&v415);
              v40 = v16;
              v41 = v17;
              v42 = v1;
              v43 = v39;
              goto LABEL_87;
            }

            v33 = v406;
            v34 = v405;
            v35 = v18;
            v36 = v19;
            v1 = 0;
          }

          outlined copy of GlassContainer.Entry.ModelID(v1, v17, v35, v36, 0);
          v392 = v36;
          v393 = v35;
          outlined copy of GlassContainer.Entry.ModelID(v1, v17, v35, v36, 0);
          v14 = v34;
          v37 = v34;
          v15 = v33;
          outlined copy of _Glass.Variant.ID(v37, v33);

          outlined consume of _Glass.Variant.ID(v14, v33);
          outlined consume of _Glass.Variant.ID(v1, 0x80u);
        }

LABEL_45:
        if (v380 == ((v17 & 0x100) == 0))
        {
          goto LABEL_86;
        }

        v1 = v393;
        if (v13 == v393)
        {
          outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(&v415);
          v38 = v392;
          outlined consume of GlassContainer.Entry.ModelID(v16, v17, v13, v392, 0);
          outlined consume of _Glass.Variant.ID(v14, v15);
        }

        else
        {
          v57 = *(*v13 + 112);

          v1 = v57(v58);

          outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(&v415);
          v38 = v392;
          outlined consume of GlassContainer.Entry.ModelID(v16, v17, v393, v392, 0);
          outlined consume of _Glass.Variant.ID(v14, v15);

          if ((v1 & 1) == 0)
          {
            goto LABEL_88;
          }
        }

        v3 = v400;
        if (v401 == v38)
        {
LABEL_467:
          v2 = v404;
          v302 = &v404[v4];
          v303 = *&v404[v4 + 160];
          outlined init with copy of GlassContainer.Item(__dst, &v415);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v404[v4 + 160] = v303;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v303 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v303 + 2) + 1, 1, v303);
            *(v302 + 20) = v303;
          }

          v306 = *(v303 + 2);
          v305 = *(v303 + 3);
          if (v306 >= v305 >> 1)
          {
            v303 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v305 > 1), v306 + 1, 1, v303);
            *(v302 + 20) = v303;
          }

          v301 = v385;
          *(v303 + 2) = v306 + 1;
          memcpy(&v303[656 * v306 + 32], __dst, 0x289uLL);
          v404[v4 + 169] = (v404[v4 + 169] | BYTE1(__dst[22])) & 1;
          result = 1;
          goto LABEL_472;
        }

LABEL_7:
        ++v5;
        v4 += 344;
        v2 = v404;
        if (v3 == v5)
        {
          result = 0;
          v301 = v385;
LABEL_472:
          *(v301 + 16) = v2;
          return result;
        }
      }

      if (v17 >= 0x40u)
      {
        goto LABEL_48;
      }

      v379 = v406;
      v23 = *(v405 + 16);
      v24 = *(v405 + 24);
      v25 = *(v405 + 48);
      v26 = *(v16 + 16);
      v27 = *(v16 + 24);
      v28 = *(v16 + 48);
      v392 = v19;
      v393 = v18;
      v386 = v27;
      v381 = v26;
      if (v24 >> 6)
      {
        if (v24 >> 6 == 1)
        {
          if ((v27 & 0xC0) != 0x40)
          {
            goto LABEL_82;
          }

          v366 = *(v16 + 32);
          v367 = *(v405 + 40);
          v365 = *(v16 + 40);
          v368 = *(v405 + 32);
          v410 = *(v405 + 16);
          LOBYTE(v411) = v24 & 0x3F;
          v405 = v26;
          LOBYTE(v406) = v27 & 0x3F;
          v29 = v23;
          v374 = v23;
          v30 = v19;
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
          v15 = v379;
          outlined copy of _Glass.Variant.ID(v14, v379);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v29, v24);
          outlined copy of _Glass.Variant.ID(v381, v386);
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v393, v30, 0);
          outlined copy of _Glass.Variant.ID(v14, v379);

          outlined copy of _Glass.Variant.ID(v14, v379);
          outlined copy of _Glass.Variant.ID(v16, v17);
          v1 = v374;
          outlined copy of _Glass.Variant.ID(v374, v24);
          outlined copy of _Glass.Variant.ID(v381, v386);
          v358 = specialized static Material.ID.== infix(_:_:)(&v410, &v405);
          outlined consume of _Glass.Variant.ID(v374, v24);
          outlined consume of _Glass.Variant.ID(v381, v386);
          outlined consume of _Glass.Variant.ID(v381, v386);
          outlined consume of _Glass.Variant.ID(v374, v24);
          if ((v358 & 1) == 0)
          {
            goto LABEL_84;
          }
        }

        else
        {
          if (v23 | v24 ^ 0x80)
          {
            v54 = v27 & 0xC0;
            if (*(v405 + 24) == 128 && v23 == 1)
            {
              if (v54 != 128 || v26 != 1 || v27 != 128)
              {
                goto LABEL_82;
              }

              v371 = *(v405 + 24);
              v376 = *(v405 + 16);
              v366 = *(v16 + 32);
              v367 = *(v405 + 40);
              v365 = *(v16 + 40);
              v368 = *(v405 + 32);
              v56 = 1;
            }

            else
            {
              if (v54 != 128 || v26 != 2 || v27 != 128)
              {
                goto LABEL_82;
              }

              v371 = *(v405 + 24);
              v376 = *(v405 + 16);
              v366 = *(v16 + 32);
              v367 = *(v405 + 40);
              v365 = *(v16 + 40);
              v368 = *(v405 + 32);
              v56 = 2;
            }
          }

          else
          {
            if ((v27 & 0xC0) != 0x80 || v26 || v27 != 128)
            {
LABEL_82:
              v64 = *(v405 + 24);
              v65 = *(v405 + 16);
              v66 = v18;
              v67 = v19;
              outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
              v15 = v379;
              outlined copy of _Glass.Variant.ID(v14, v379);
              outlined copy of _Glass.Variant.ID(v16, v17);
              outlined copy of GlassContainer.Entry.ModelID(v16, v17, v66, v67, 0);
              outlined copy of _Glass.Variant.ID(v14, v379);

              outlined copy of _Glass.Variant.ID(v14, v379);
              outlined copy of _Glass.Variant.ID(v16, v17);
              outlined copy of _Glass.Variant.ID(v65, v64);
              v1 = v381;
              outlined copy of _Glass.Variant.ID(v381, v386);
              outlined consume of _Glass.Variant.ID(v65, v64);
              v68 = v381;
              v69 = v386;
              goto LABEL_83;
            }

            v371 = *(v405 + 24);
            v376 = *(v405 + 16);
            v366 = *(v16 + 32);
            v367 = *(v405 + 40);
            v365 = *(v16 + 40);
            v368 = *(v405 + 32);
            v56 = 0;
          }

          v59 = v18;
          v60 = v19;
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
          v15 = v379;
          outlined copy of _Glass.Variant.ID(v14, v379);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v59, v60, 0);
          outlined copy of _Glass.Variant.ID(v14, v379);

          outlined copy of _Glass.Variant.ID(v14, v379);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined consume of _Glass.Variant.ID(v376, v371);
          outlined consume of _Glass.Variant.ID(v56, 0x80u);
        }

LABEL_77:
        v61 = v367;
        if (v367 >> 6)
        {
          v62 = v368;
          v1 = v365;
          v63 = v366;
          if (v367 >> 6 == 1)
          {
            if ((v365 & 0xC0) != 0x40)
            {
              goto LABEL_132;
            }

            v410 = v368;
            LOBYTE(v411) = v367 & 0x3F;
            v405 = v366;
            LOBYTE(v406) = v365 & 0x3F;
            outlined copy of _Glass.Variant.ID(v368, v367);
            outlined copy of _Glass.Variant.ID(v366, v365);
            outlined copy of _Glass.Variant.ID(v368, v367);
            outlined copy of _Glass.Variant.ID(v366, v365);
            v387 = specialized static Material.ID.== infix(_:_:)(&v410, &v405);
            outlined consume of _Glass.Variant.ID(v368, v367);
            outlined consume of _Glass.Variant.ID(v366, v365);
            outlined consume of _Glass.Variant.ID(v366, v365);
            outlined consume of _Glass.Variant.ID(v368, v367);
            outlined consume of _Glass.Variant.ID(v14, v15);
            outlined consume of _Glass.Variant.ID(v16, v17);
            outlined consume of _Glass.Variant.ID(v16, v17);
            outlined consume of _Glass.Variant.ID(v14, v15);
            if ((v387 & 1) == 0)
            {
              goto LABEL_86;
            }

            goto LABEL_130;
          }

          if (v368 | v367 ^ 0x80)
          {
            v78 = v365 & 0xC0;
            if (v367 == 128 && v368 == 1)
            {
              if (v78 != 128 || v366 != 1 || v365 != 128)
              {
                goto LABEL_132;
              }

              v1 = 1;
            }

            else
            {
              if (v78 != 128 || v366 != 2 || v365 != 128)
              {
                goto LABEL_132;
              }

              v1 = 2;
            }
          }

          else
          {
            if ((v365 & 0xC0) != 0x80 || v366 || v365 != 128)
            {
LABEL_132:
              v369 = v62;
              v96 = v1;
              v1 = v63;
              outlined copy of _Glass.Variant.ID(v62, v367);
              outlined copy of _Glass.Variant.ID(v1, v96);
              outlined consume of _Glass.Variant.ID(v369, v367);
              v68 = v1;
              v69 = v96;
              goto LABEL_83;
            }

            v1 = 0;
          }

          outlined consume of _Glass.Variant.ID(v368, v367);
          outlined consume of _Glass.Variant.ID(v1, 0x80u);
          outlined consume of _Glass.Variant.ID(v14, v15);
          outlined consume of _Glass.Variant.ID(v16, v17);
          outlined consume of _Glass.Variant.ID(v16, v17);
LABEL_129:
          outlined consume of _Glass.Variant.ID(v14, v15);
LABEL_130:
          if (v25 != v28)
          {
            goto LABEL_86;
          }

          goto LABEL_45;
        }

        v1 = v365;
        v62 = v368;
        v63 = v366;
        if (v365 >= 0x40)
        {
          goto LABEL_132;
        }

        v70 = *(v368 + 16);
        v71 = *(v368 + 24);
        v72 = *(v368 + 48);
        v73 = *(v366 + 16);
        v74 = *(v366 + 24);
        v75 = *(v366 + 48);
        v388 = *(v368 + 24);
        v377 = v70;
        v372 = *(v366 + 24);
        v382 = v73;
        if (v71 >> 6)
        {
          if (v71 >> 6 == 1)
          {
            if ((v74 & 0xC0) != 0x40)
            {
              goto LABEL_222;
            }

            v352 = *(v366 + 32);
            v356 = *(v368 + 40);
            v349 = *(v366 + 40);
            v360 = *(v368 + 32);
            v410 = *(v368 + 16);
            LOBYTE(v411) = v71 & 0x3F;
            v405 = v73;
            LOBYTE(v406) = v74 & 0x3F;
            v76 = v70;
            outlined copy of _Glass.Variant.ID(v368, v367);
            outlined copy of _Glass.Variant.ID(v366, v365);
            outlined copy of _Glass.Variant.ID(v76, v388);
            outlined copy of _Glass.Variant.ID(v382, v372);
            outlined copy of _Glass.Variant.ID(v368, v367);
            outlined copy of _Glass.Variant.ID(v366, v365);
            outlined copy of _Glass.Variant.ID(v377, v388);
            outlined copy of _Glass.Variant.ID(v382, v372);
            v77 = v366;
            v344 = specialized static Material.ID.== infix(_:_:)(&v410, &v405);
            outlined consume of _Glass.Variant.ID(v377, v388);
            outlined consume of _Glass.Variant.ID(v382, v372);
            outlined consume of _Glass.Variant.ID(v382, v372);
            outlined consume of _Glass.Variant.ID(v377, v388);
            if ((v344 & 1) == 0)
            {
              goto LABEL_224;
            }
          }

          else
          {
            if (v70 | v71 ^ 0x80)
            {
              v133 = v74 & 0xC0;
              if (*(v368 + 24) == 128 && v70 == 1)
              {
                if (v133 != 128 || v73 != 1 || v74 != 128)
                {
                  goto LABEL_222;
                }

                v352 = *(v366 + 32);
                v356 = *(v368 + 40);
                v349 = *(v366 + 40);
                v360 = *(v368 + 32);
                v135 = 1;
              }

              else
              {
                if (v133 != 128 || v73 != 2 || v74 != 128)
                {
                  goto LABEL_222;
                }

                v352 = *(v366 + 32);
                v356 = *(v368 + 40);
                v349 = *(v366 + 40);
                v360 = *(v368 + 32);
                v135 = 2;
              }

              v383 = v135;
            }

            else
            {
              if ((v74 & 0xC0) != 0x80 || v73 || v74 != 128)
              {
LABEL_222:
                outlined copy of _Glass.Variant.ID(v368, v367);
                outlined copy of _Glass.Variant.ID(v366, v365);
                outlined copy of _Glass.Variant.ID(v368, v367);
                outlined copy of _Glass.Variant.ID(v366, v365);
                outlined copy of _Glass.Variant.ID(v377, v388);
                outlined copy of _Glass.Variant.ID(v382, v372);
                outlined consume of _Glass.Variant.ID(v377, v388);
                v154 = v382;
                v155 = v372;
LABEL_223:
                outlined consume of _Glass.Variant.ID(v154, v155);
                v1 = v365;
                v77 = v366;
LABEL_224:
                outlined consume of _Glass.Variant.ID(v368, v367);
                outlined consume of _Glass.Variant.ID(v77, v1);
                outlined consume of _Glass.Variant.ID(v77, v1);
LABEL_225:
                v69 = v367;
                v68 = v368;
LABEL_83:
                outlined consume of _Glass.Variant.ID(v68, v69);
LABEL_84:
                outlined consume of _Glass.Variant.ID(v14, v15);
                outlined consume of _Glass.Variant.ID(v16, v17);
                outlined consume of _Glass.Variant.ID(v16, v17);
LABEL_85:
                outlined consume of _Glass.Variant.ID(v14, v15);
LABEL_86:
                outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(&v415);
                v40 = v16;
                v41 = v17;
                v43 = v392;
                v42 = v393;
LABEL_87:
                outlined consume of GlassContainer.Entry.ModelID(v40, v41, v42, v43, 0);
                outlined consume of _Glass.Variant.ID(v14, v15);

LABEL_88:
                v3 = v400;
                goto LABEL_7;
              }

              v352 = *(v366 + 32);
              v356 = *(v368 + 40);
              v349 = *(v366 + 40);
              v360 = *(v368 + 32);
              v383 = 0;
            }

            outlined copy of _Glass.Variant.ID(v368, v367);
            outlined copy of _Glass.Variant.ID(v366, v365);
            outlined copy of _Glass.Variant.ID(v368, v367);
            outlined copy of _Glass.Variant.ID(v366, v365);
            outlined consume of _Glass.Variant.ID(v377, v388);
            outlined consume of _Glass.Variant.ID(v383, 0x80u);
          }

LABEL_217:
          v365 = v1;
          if (v356 >> 6)
          {
            v152 = v360;
            v153 = v349;
            if (v356 >> 6 == 1)
            {
              if ((v349 & 0xC0) != 0x40)
              {
                goto LABEL_322;
              }

              v410 = v360;
              LOBYTE(v411) = v356 & 0x3F;
              v405 = v352;
              LOBYTE(v406) = v349 & 0x3F;
              outlined copy of _Glass.Variant.ID(v360, v356);
              outlined copy of _Glass.Variant.ID(v352, v349);
              outlined copy of _Glass.Variant.ID(v360, v356);
              outlined copy of _Glass.Variant.ID(v352, v349);
              v389 = specialized static Material.ID.== infix(_:_:)(&v410, &v405);
              outlined consume of _Glass.Variant.ID(v360, v356);
              outlined consume of _Glass.Variant.ID(v352, v349);
              outlined consume of _Glass.Variant.ID(v352, v349);
              outlined consume of _Glass.Variant.ID(v360, v356);
              outlined consume of _Glass.Variant.ID(v368, v367);
              v1 = v366;
              outlined consume of _Glass.Variant.ID(v366, v365);
              outlined consume of _Glass.Variant.ID(v366, v365);
              outlined consume of _Glass.Variant.ID(v368, v367);
              outlined consume of _Glass.Variant.ID(v14, v15);
              outlined consume of _Glass.Variant.ID(v16, v17);
              outlined consume of _Glass.Variant.ID(v16, v17);
              if ((v389 & 1) == 0)
              {
                goto LABEL_85;
              }

              goto LABEL_320;
            }

            if (v360 | v356 ^ 0x80)
            {
              v190 = v349 & 0xC0;
              if (v356 == 128 && v360 == 1)
              {
                if (v190 != 128 || v352 != 1 || v349 != 128)
                {
                  goto LABEL_322;
                }

                v192 = 1;
              }

              else
              {
                if (v190 != 128 || v352 != 2 || v349 != 128)
                {
                  goto LABEL_322;
                }

                v192 = 2;
              }
            }

            else
            {
              if ((v349 & 0xC0) != 0x80 || v352 || v349 != 128)
              {
LABEL_322:
                v363 = v152;
                v220 = v153;
                outlined copy of _Glass.Variant.ID(v152, v356);
                outlined copy of _Glass.Variant.ID(v352, v220);
                outlined consume of _Glass.Variant.ID(v363, v356);
                v154 = v352;
                v155 = v220;
                goto LABEL_223;
              }

              v192 = 0;
            }

            outlined consume of _Glass.Variant.ID(v360, v356);
            outlined consume of _Glass.Variant.ID(v192, 0x80u);
            outlined consume of _Glass.Variant.ID(v368, v367);
            v1 = v365;
            outlined consume of _Glass.Variant.ID(v366, v365);
            outlined consume of _Glass.Variant.ID(v366, v365);
LABEL_319:
            outlined consume of _Glass.Variant.ID(v368, v367);
            outlined consume of _Glass.Variant.ID(v14, v15);
            outlined consume of _Glass.Variant.ID(v16, v17);
            outlined consume of _Glass.Variant.ID(v16, v17);
LABEL_320:
            if (v72 != v75)
            {
              goto LABEL_85;
            }

            goto LABEL_129;
          }

          v153 = v349;
          v152 = v360;
          if (v349 >= 0x40)
          {
            goto LABEL_322;
          }

          v181 = *(v360 + 16);
          v182 = *(v360 + 24);
          v183 = *(v360 + 48);
          v184 = *(v352 + 16);
          v185 = *(v352 + 24);
          v186 = *(v352 + 48);
          v390 = *(v352 + 24);
          v384 = v184;
          v373 = v181;
          v378 = *(v360 + 24);
          if (!(v182 >> 6))
          {
            if (v185 >= 0x40)
            {
              goto LABEL_436;
            }

            v336 = *(v352 + 32);
            v339 = *(v360 + 32);
            v342 = *(v352 + 40);
            v346 = *(v360 + 40);
            v268 = *(v181 + 48);
            v269 = *(v181 + 40);
            v270 = *(v181 + 32);
            v271 = *(v181 + 24);
            v272 = *(v184 + 16);
            v273 = *(v184 + 24);
            v274 = *(v184 + 32);
            v275 = *(v184 + 40);
            v276 = *(v184 + 48);
            v410 = *(v181 + 16);
            LOBYTE(v411) = v271;
            v412 = v270;
            v413 = v269;
            v414 = v268;
            v405 = v272;
            LOBYTE(v406) = v273;
            v407 = v274;
            v408 = v275;
            v409 = v276;
            outlined copy of _Glass.Variant.ID(v360, v356);
            v187 = v349;
            outlined copy of _Glass.Variant.ID(v352, v349);
            outlined copy of _Glass.Variant.ID(v181, v182);
            outlined copy of _Glass.Variant.ID(v384, v390);
            v188 = v360;
            outlined copy of _Glass.Variant.ID(v360, v356);
            outlined copy of _Glass.Variant.ID(v352, v349);
            outlined copy of _Glass.Variant.ID(v181, v378);
            outlined copy of _Glass.Variant.ID(v384, v390);
            v189 = specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(&v410, &v405);
LABEL_390:
            v332 = v189;
            outlined consume of _Glass.Variant.ID(v181, v378);
            outlined consume of _Glass.Variant.ID(v384, v390);
            v277 = v356;
            outlined consume of _Glass.Variant.ID(v384, v390);
            outlined consume of _Glass.Variant.ID(v373, v378);
            if ((v332 & 1) == 0)
            {
              goto LABEL_437;
            }

LABEL_432:
            v282 = v188;
            v283 = v277;
            v309 = v17;
            v312 = v16;
            v284 = v15;
            if (v346 >> 6)
            {
              if (v346 >> 6 != 1)
              {
                if (v339 | v346 ^ 0x80)
                {
                  if (v346 == 128 && v339 == 1)
                  {
                    if ((v342 & 0xC0) != 0x80 || v336 != 1 || v342 != 128)
                    {
                      goto LABEL_444;
                    }

                    v299 = 1;
                  }

                  else
                  {
                    if ((v342 & 0xC0) != 0x80 || v336 != 2 || v342 != 128)
                    {
                      goto LABEL_444;
                    }

                    v299 = 2;
                  }
                }

                else
                {
                  if ((v342 & 0xC0) != 0x80 || v336 || v342 != 128)
                  {
                    goto LABEL_444;
                  }

                  v299 = 0;
                }

                outlined copy of _Glass.Variant.ID(v299, 0x80u);
                outlined consume of _Glass.Variant.ID(v339, v346);
                outlined consume of _Glass.Variant.ID(v299, 0x80u);
                outlined consume of _Glass.Variant.ID(v339, v346);
                v188 = v282;
                outlined consume of _Glass.Variant.ID(v282, v277);
                v187 = v349;
                outlined consume of _Glass.Variant.ID(v352, v349);
                v13 = v402;
                v15 = v284;
                v16 = v312;
                goto LABEL_464;
              }

              if ((v342 & 0xC0) != 0x40)
              {
                goto LABEL_443;
              }

              v285 = v346;
              v17 = v336;
              v286 = v339;
              v410 = v339;
              v287 = v342;
              LOBYTE(v411) = v346 & 0x3F;
              v405 = v336;
              LOBYTE(v406) = v342 & 0x3F;
              outlined copy of _Glass.Variant.ID(v336, v342);
              outlined copy of _Glass.Variant.ID(v339, v346);
              outlined copy of _Glass.Variant.ID(v336, v342);
              outlined copy of _Glass.Variant.ID(v339, v346);
              v288 = specialized static Material.ID.== infix(_:_:)(&v410, &v405);
            }

            else
            {
              if (v342 >= 0x40)
              {
LABEL_443:
                outlined copy of _Glass.Variant.ID(v339, v346);
LABEL_444:
                outlined copy of _Glass.Variant.ID(v336, v342);
                outlined consume of _Glass.Variant.ID(v339, v346);
                outlined consume of _Glass.Variant.ID(v336, v342);
                v16 = v312;
                v188 = v282;
                v187 = v349;
                goto LABEL_437;
              }

              v17 = v336;
              v286 = v339;
              v289 = *(v339 + 48);
              v290 = *(v339 + 40);
              v291 = *(v339 + 32);
              v292 = *(v339 + 24);
              v293 = *(v336 + 16);
              v294 = *(v336 + 24);
              v295 = *(v336 + 32);
              v296 = *(v336 + 40);
              v297 = *(v336 + 48);
              v410 = *(v339 + 16);
              LOBYTE(v411) = v292;
              v412 = v291;
              v413 = v290;
              v414 = v289;
              v405 = v293;
              LOBYTE(v406) = v294;
              v407 = v295;
              v408 = v296;
              v409 = v297;
              v287 = v342;
              outlined copy of _Glass.Variant.ID(v336, v342);
              v285 = v346;
              outlined copy of _Glass.Variant.ID(v339, v346);
              outlined copy of _Glass.Variant.ID(v336, v342);
              outlined copy of _Glass.Variant.ID(v339, v346);
              v288 = specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(&v410, &v405);
            }

            v391 = v288;
            outlined consume of _Glass.Variant.ID(v286, v285);
            outlined consume of _Glass.Variant.ID(v17, v287);
            outlined consume of _Glass.Variant.ID(v17, v287);
            outlined consume of _Glass.Variant.ID(v286, v285);
            v277 = v283;
            v188 = v282;
            outlined consume of _Glass.Variant.ID(v282, v277);
            v187 = v349;
            outlined consume of _Glass.Variant.ID(v352, v349);
            v13 = v402;
            v15 = v284;
            LOWORD(v17) = v309;
            v16 = v312;
            if ((v391 & 1) == 0)
            {
              goto LABEL_438;
            }

LABEL_464:
            outlined consume of _Glass.Variant.ID(v352, v187);
            outlined consume of _Glass.Variant.ID(v188, v277);
            outlined consume of _Glass.Variant.ID(v368, v367);
            v1 = v365;
            outlined consume of _Glass.Variant.ID(v366, v365);
            outlined consume of _Glass.Variant.ID(v366, v365);
            if (v183 != v186)
            {
              goto LABEL_225;
            }

            goto LABEL_319;
          }

          if (v182 >> 6 == 1)
          {
            if ((v185 & 0xC0) != 0x40)
            {
              goto LABEL_436;
            }

            v336 = *(v352 + 32);
            v339 = *(v360 + 32);
            v342 = *(v352 + 40);
            v346 = *(v360 + 40);
            v410 = *(v360 + 16);
            LOBYTE(v411) = v182 & 0x3F;
            v405 = v184;
            LOBYTE(v406) = v185 & 0x3F;
            outlined copy of _Glass.Variant.ID(v360, v356);
            v187 = v349;
            outlined copy of _Glass.Variant.ID(v352, v349);
            outlined copy of _Glass.Variant.ID(v181, v182);
            outlined copy of _Glass.Variant.ID(v384, v390);
            v188 = v360;
            outlined copy of _Glass.Variant.ID(v360, v356);
            outlined copy of _Glass.Variant.ID(v352, v349);
            outlined copy of _Glass.Variant.ID(v181, v378);
            outlined copy of _Glass.Variant.ID(v384, v390);
            v189 = specialized static Material.ID.== infix(_:_:)(&v410, &v405);
            goto LABEL_390;
          }

          if (v181 | v182 ^ 0x80)
          {
            v278 = v185 & 0xC0;
            if (*(v360 + 24) != 128 || v181 != 1)
            {
              if (v278 != 128 || v184 != 2 || v185 != 128)
              {
                goto LABEL_436;
              }

              v336 = *(v352 + 32);
              v339 = *(v360 + 32);
              v342 = *(v352 + 40);
              v346 = *(v360 + 40);
              v277 = v356;
              outlined copy of _Glass.Variant.ID(v360, v356);
              outlined copy of _Glass.Variant.ID(v352, v349);
              outlined copy of _Glass.Variant.ID(v360, v356);
              v188 = v360;
              outlined copy of _Glass.Variant.ID(v352, v349);
              outlined consume of _Glass.Variant.ID(v373, v378);
              v280 = 2;
              v281 = 0x80;
              goto LABEL_431;
            }

            if (v278 != 128 || v184 != 1)
            {
              goto LABEL_436;
            }
          }

          else if ((v185 & 0xC0) != 0x80 || v184)
          {
LABEL_436:
            outlined copy of _Glass.Variant.ID(v181, v182);
            outlined copy of _Glass.Variant.ID(v181, v182);
            outlined copy of _Glass.Variant.ID(v384, v390);
            outlined copy of _Glass.Variant.ID(v360, v356);
            outlined copy of _Glass.Variant.ID(v352, v349);
            outlined copy of _Glass.Variant.ID(v360, v356);
            v187 = v349;
            outlined copy of _Glass.Variant.ID(v352, v349);
            outlined consume of _Glass.Variant.ID(v181, v378);
            outlined consume of _Glass.Variant.ID(v384, v390);
            v277 = v356;
            v188 = v360;
            outlined consume of _Glass.Variant.ID(v373, v378);
LABEL_437:
            outlined consume of _Glass.Variant.ID(v188, v277);
            outlined consume of _Glass.Variant.ID(v352, v187);
LABEL_438:
            outlined consume of _Glass.Variant.ID(v352, v187);
            v154 = v188;
            v155 = v277;
            goto LABEL_223;
          }

          if (v185 != 128)
          {
            goto LABEL_436;
          }

          v336 = *(v352 + 32);
          v339 = *(v360 + 32);
          v342 = *(v352 + 40);
          v346 = *(v360 + 40);
          v277 = v356;
          outlined copy of _Glass.Variant.ID(v360, v356);
          outlined copy of _Glass.Variant.ID(v352, v349);
          outlined copy of _Glass.Variant.ID(v360, v356);
          v188 = v360;
          outlined copy of _Glass.Variant.ID(v352, v349);
          outlined consume of _Glass.Variant.ID(v373, v378);
          outlined consume of _Glass.Variant.ID(v384, v390);
          v280 = v373;
          v281 = v378;
LABEL_431:
          outlined consume of _Glass.Variant.ID(v280, v281);
          goto LABEL_432;
        }

        if (v74 >= 0x40)
        {
          goto LABEL_222;
        }

        v123 = *(v70 + 16);
        v124 = *(v70 + 24);
        v326 = *(v70 + 32);
        v330 = *(v70 + 40);
        v125 = *(v70 + 48);
        v126 = *(v73 + 16);
        v127 = *(v73 + 24);
        v320 = *(v73 + 32);
        v128 = *(v73 + 48);
        v356 = *(v368 + 40);
        v360 = *(v368 + 32);
        v349 = *(v366 + 40);
        v352 = *(v366 + 32);
        v323 = *(v73 + 40);
        v338 = *(v70 + 24);
        v341 = v123;
        v345 = *(v73 + 24);
        v335 = v126;
        if (!(v124 >> 6))
        {
          if (v127 < 0x40)
          {
            v207 = *(v123 + 48);
            v208 = *(v123 + 40);
            v209 = *(v123 + 32);
            v210 = *(v123 + 24);
            v211 = *(v126 + 16);
            v212 = *(v126 + 24);
            v213 = *(v126 + 32);
            v214 = *(v126 + 40);
            v215 = *(v126 + 48);
            v410 = *(v123 + 16);
            LOBYTE(v411) = v210;
            v412 = v209;
            v413 = v208;
            v414 = v207;
            v405 = v211;
            LOBYTE(v406) = v212;
            v407 = v213;
            v408 = v214;
            v409 = v215;
            outlined copy of _Glass.Variant.ID(v368, v367);
            outlined copy of _Glass.Variant.ID(v366, v365);
            v129 = v388;
            outlined copy of _Glass.Variant.ID(v377, v388);
            outlined copy of _Glass.Variant.ID(v382, v372);
            outlined copy of _Glass.Variant.ID(v341, v338);
            outlined copy of _Glass.Variant.ID(v335, v345);
            outlined copy of _Glass.Variant.ID(v368, v367);
            outlined copy of _Glass.Variant.ID(v366, v365);
            outlined copy of _Glass.Variant.ID(v377, v388);
            outlined copy of _Glass.Variant.ID(v382, v372);
            v130 = v338;
            outlined copy of _Glass.Variant.ID(v341, v338);
            v131 = v335;
            outlined copy of _Glass.Variant.ID(v335, v345);
            v132 = specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(&v410, &v405);
            goto LABEL_300;
          }

          goto LABEL_347;
        }

        if (v124 >> 6 == 1)
        {
          if ((v127 & 0xC0) == 0x40)
          {
            v410 = *(v70 + 16);
            LOBYTE(v411) = v124 & 0x3F;
            v405 = v126;
            LOBYTE(v406) = v127 & 0x3F;
            outlined copy of _Glass.Variant.ID(v368, v367);
            outlined copy of _Glass.Variant.ID(v366, v365);
            v129 = v388;
            outlined copy of _Glass.Variant.ID(v377, v388);
            outlined copy of _Glass.Variant.ID(v382, v372);
            outlined copy of _Glass.Variant.ID(v341, v338);
            outlined copy of _Glass.Variant.ID(v335, v345);
            outlined copy of _Glass.Variant.ID(v368, v367);
            outlined copy of _Glass.Variant.ID(v366, v365);
            outlined copy of _Glass.Variant.ID(v377, v388);
            outlined copy of _Glass.Variant.ID(v382, v372);
            v130 = v338;
            outlined copy of _Glass.Variant.ID(v341, v338);
            v131 = v335;
            outlined copy of _Glass.Variant.ID(v335, v345);
            v132 = specialized static Material.ID.== infix(_:_:)(&v410, &v405);
LABEL_300:
            v318 = v132;
            outlined consume of _Glass.Variant.ID(v341, v130);
            outlined consume of _Glass.Variant.ID(v131, v345);
            outlined consume of _Glass.Variant.ID(v131, v345);
            v217 = v338;
            v216 = v341;
            goto LABEL_349;
          }

          goto LABEL_347;
        }

        if (v123 | v124 ^ 0x80)
        {
          v218 = v127 & 0xC0;
          if (*(v70 + 24) != 128 || v123 != 1)
          {
            if (v218 == 128 && v126 == 2 && v127 == 128)
            {
              outlined copy of _Glass.Variant.ID(v368, v367);
              outlined copy of _Glass.Variant.ID(v366, v365);
              outlined copy of _Glass.Variant.ID(v377, v388);
              outlined copy of _Glass.Variant.ID(v382, v372);
              outlined copy of _Glass.Variant.ID(v368, v367);
              outlined copy of _Glass.Variant.ID(v366, v365);
              outlined copy of _Glass.Variant.ID(v377, v388);
              outlined copy of _Glass.Variant.ID(v382, v372);
              outlined consume of _Glass.Variant.ID(v341, v338);
              outlined consume of _Glass.Variant.ID(2, 0x80u);
              goto LABEL_350;
            }

            goto LABEL_347;
          }

          if (v218 != 128 || v126 != 1)
          {
LABEL_347:
            v230 = *(v70 + 24);
            v231 = *(v70 + 16);
            v232 = *(v73 + 16);
            outlined copy of _Glass.Variant.ID(v123, v124);
            outlined copy of _Glass.Variant.ID(v231, v230);
            outlined copy of _Glass.Variant.ID(v232, v345);
            v61 = v367;
            v318 = 0;
            goto LABEL_348;
          }
        }

        else if ((v127 & 0xC0) != 0x80 || v126)
        {
          goto LABEL_347;
        }

        if (v127 == 128)
        {
          v318 = 1;
LABEL_348:
          v233 = v61;
          outlined copy of _Glass.Variant.ID(v368, v61);
          outlined copy of _Glass.Variant.ID(v366, v365);
          outlined copy of _Glass.Variant.ID(v377, v388);
          outlined copy of _Glass.Variant.ID(v382, v372);
          outlined copy of _Glass.Variant.ID(v368, v233);
          outlined copy of _Glass.Variant.ID(v366, v365);
          outlined copy of _Glass.Variant.ID(v377, v388);
          outlined copy of _Glass.Variant.ID(v382, v372);
          outlined consume of _Glass.Variant.ID(v341, v338);
          outlined consume of _Glass.Variant.ID(v335, v345);
          v216 = v341;
          v129 = v388;
          v217 = v338;
LABEL_349:
          outlined consume of _Glass.Variant.ID(v216, v217);
          if ((v318 & 1) == 0)
          {
            goto LABEL_360;
          }

LABEL_350:
          if (v330 >> 6)
          {
            v234 = v326;
            v235 = v323;
            if (v330 >> 6 != 1)
            {
              if (v326 | v330 ^ 0x80)
              {
                v253 = v323 & 0xC0;
                if (v330 == 128 && v326 == 1)
                {
                  if (v253 != 128 || v320 != 1 || v323 != 128)
                  {
                    goto LABEL_359;
                  }

                  v255 = 1;
                }

                else
                {
                  if (v253 != 128 || v320 != 2 || v323 != 128)
                  {
                    goto LABEL_359;
                  }

                  v255 = 2;
                }
              }

              else
              {
                if ((v323 & 0xC0) != 0x80 || v320 || v323 != 128)
                {
                  goto LABEL_359;
                }

                v255 = 0;
              }

              outlined copy of _Glass.Variant.ID(v255, 0x80u);
              outlined consume of _Glass.Variant.ID(v326, v330);
              outlined consume of _Glass.Variant.ID(v255, 0x80u);
              outlined consume of _Glass.Variant.ID(v326, v330);
              v247 = v377;
              outlined consume of _Glass.Variant.ID(v377, v388);
              v248 = v382;
              v249 = v372;
              outlined consume of _Glass.Variant.ID(v382, v372);
              goto LABEL_410;
            }

            if ((v323 & 0xC0) != 0x40)
            {
              goto LABEL_358;
            }

            v410 = v326;
            LOBYTE(v411) = v330 & 0x3F;
            v405 = v320;
            LOBYTE(v406) = v323 & 0x3F;
            outlined copy of _Glass.Variant.ID(v320, v323);
            outlined copy of _Glass.Variant.ID(v326, v330);
            outlined copy of _Glass.Variant.ID(v320, v323);
            outlined copy of _Glass.Variant.ID(v326, v330);
            v347 = specialized static Material.ID.== infix(_:_:)(&v410, &v405);
            outlined consume of _Glass.Variant.ID(v326, v330);
            outlined consume of _Glass.Variant.ID(v320, v323);
            outlined consume of _Glass.Variant.ID(v320, v323);
            v236 = v326;
            v237 = v330;
          }

          else
          {
            v235 = v323;
            v234 = v326;
            if (v323 >= 0x40)
            {
LABEL_358:
              v250 = v235;
              outlined copy of _Glass.Variant.ID(v234, v330);
              v235 = v250;
LABEL_359:
              v251 = v235;
              outlined copy of _Glass.Variant.ID(v320, v235);
              outlined consume of _Glass.Variant.ID(v326, v330);
              outlined consume of _Glass.Variant.ID(v320, v251);
              v129 = v388;
LABEL_360:
              v252 = v129;
              v247 = v377;
              outlined consume of _Glass.Variant.ID(v377, v252);
              v248 = v382;
              v249 = v372;
              outlined consume of _Glass.Variant.ID(v382, v372);
LABEL_361:
              outlined consume of _Glass.Variant.ID(v248, v249);
              v154 = v247;
              v155 = v388;
              goto LABEL_223;
            }

            v238 = *(v326 + 48);
            v239 = *(v326 + 40);
            v240 = *(v326 + 32);
            v241 = *(v326 + 24);
            v242 = *(v320 + 16);
            v243 = *(v320 + 24);
            v244 = *(v320 + 32);
            v245 = *(v320 + 40);
            v246 = *(v320 + 48);
            v410 = *(v326 + 16);
            LOBYTE(v411) = v241;
            v412 = v240;
            v413 = v239;
            v414 = v238;
            v405 = v242;
            LOBYTE(v406) = v243;
            v407 = v244;
            v408 = v245;
            v409 = v246;
            outlined copy of _Glass.Variant.ID(v320, v323);
            outlined copy of _Glass.Variant.ID(v326, v330);
            outlined copy of _Glass.Variant.ID(v320, v323);
            outlined copy of _Glass.Variant.ID(v326, v330);
            v347 = specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(&v410, &v405);
            outlined consume of _Glass.Variant.ID(v326, v330);
            outlined consume of _Glass.Variant.ID(v320, v323);
            outlined consume of _Glass.Variant.ID(v320, v323);
            v236 = v326;
            v237 = v330;
          }

          outlined consume of _Glass.Variant.ID(v236, v237);
          v247 = v377;
          outlined consume of _Glass.Variant.ID(v377, v388);
          v248 = v382;
          v249 = v372;
          outlined consume of _Glass.Variant.ID(v382, v372);
          if ((v347 & 1) == 0)
          {
            goto LABEL_361;
          }

LABEL_410:
          outlined consume of _Glass.Variant.ID(v248, v249);
          outlined consume of _Glass.Variant.ID(v247, v388);
          v1 = v365;
          v77 = v366;
          if (v125 != v128)
          {
            goto LABEL_224;
          }

          goto LABEL_217;
        }

        goto LABEL_347;
      }

      if (v27 >= 0x40)
      {
        goto LABEL_82;
      }

      v44 = *(v23 + 16);
      v45 = *(v23 + 24);
      v46 = *(v23 + 48);
      v47 = *(v26 + 16);
      v48 = *(v26 + 24);
      v49 = *(v26 + 48);
      v370 = *(v405 + 24);
      v375 = *(v405 + 16);
      v355 = *(v23 + 24);
      v359 = v44;
      v351 = *(v26 + 24);
      v348 = v47;
      if (v45 >> 6)
      {
        if (v45 >> 6 == 1)
        {
          if ((v48 & 0xC0) != 0x40)
          {
            goto LABEL_149;
          }

          v340 = *(v23 + 40);
          v343 = *(v26 + 32);
          v334 = *(v26 + 40);
          v337 = *(v23 + 32);
          v366 = *(v16 + 32);
          v367 = *(v405 + 40);
          v365 = *(v16 + 40);
          v368 = *(v405 + 32);
          v410 = *(v23 + 16);
          LOBYTE(v411) = v45 & 0x3F;
          v405 = v47;
          LOBYTE(v406) = v48 & 0x3F;
          v50 = v23;
          v51 = v47;
          v52 = v19;
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
          outlined copy of _Glass.Variant.ID(v14, v379);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v50, v370);
          outlined copy of _Glass.Variant.ID(v381, v386);
          outlined copy of _Glass.Variant.ID(v359, v355);
          outlined copy of _Glass.Variant.ID(v51, v351);
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v393, v52, 0);
          outlined copy of _Glass.Variant.ID(v14, v379);

          v53 = v381;
          outlined copy of _Glass.Variant.ID(v14, v379);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v50, v370);
          outlined copy of _Glass.Variant.ID(v381, v386);
          outlined copy of _Glass.Variant.ID(v359, v355);
          outlined copy of _Glass.Variant.ID(v348, v351);
          v327 = specialized static Material.ID.== infix(_:_:)(&v410, &v405);
          outlined consume of _Glass.Variant.ID(v359, v355);
          outlined consume of _Glass.Variant.ID(v348, v351);
          outlined consume of _Glass.Variant.ID(v348, v351);
          outlined consume of _Glass.Variant.ID(v359, v355);
          if ((v327 & 1) == 0)
          {
            goto LABEL_151;
          }
        }

        else
        {
          if (v44 | v45 ^ 0x80)
          {
            v93 = v48 & 0xC0;
            if (*(v23 + 24) == 128 && v44 == 1)
            {
              if (v93 != 128 || v47 != 1 || v48 != 128)
              {
                goto LABEL_149;
              }

              v340 = *(v23 + 40);
              v343 = *(v26 + 32);
              v334 = *(v26 + 40);
              v337 = *(v23 + 32);
              v366 = *(v16 + 32);
              v367 = *(v405 + 40);
              v365 = *(v16 + 40);
              v368 = *(v405 + 32);
              v95 = 1;
            }

            else
            {
              if (v93 != 128 || v47 != 2 || v48 != 128)
              {
                goto LABEL_149;
              }

              v340 = *(v23 + 40);
              v343 = *(v26 + 32);
              v334 = *(v26 + 40);
              v337 = *(v23 + 32);
              v366 = *(v16 + 32);
              v367 = *(v405 + 40);
              v365 = *(v16 + 40);
              v368 = *(v405 + 32);
              v95 = 2;
            }

            v353 = v95;
          }

          else
          {
            if ((v48 & 0xC0) != 0x80 || v47 || v48 != 128)
            {
LABEL_149:
              v100 = v18;
              v101 = v19;
              outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
              outlined copy of _Glass.Variant.ID(v14, v379);
              outlined copy of _Glass.Variant.ID(v16, v17);
              outlined copy of _Glass.Variant.ID(v375, v24);
              outlined copy of _Glass.Variant.ID(v381, v27);
              outlined copy of GlassContainer.Entry.ModelID(v16, v17, v100, v101, 0);
              outlined copy of _Glass.Variant.ID(v14, v379);

              outlined copy of _Glass.Variant.ID(v14, v379);
              outlined copy of _Glass.Variant.ID(v16, v17);
              outlined copy of _Glass.Variant.ID(v375, v24);
              outlined copy of _Glass.Variant.ID(v381, v27);
              outlined copy of _Glass.Variant.ID(v359, v355);
              outlined copy of _Glass.Variant.ID(v348, v351);
              v53 = v381;
              outlined consume of _Glass.Variant.ID(v359, v355);
              v102 = v348;
              v103 = v351;
              goto LABEL_150;
            }

            v340 = *(v23 + 40);
            v343 = *(v26 + 32);
            v334 = *(v26 + 40);
            v337 = *(v23 + 32);
            v366 = *(v16 + 32);
            v367 = *(v405 + 40);
            v365 = *(v16 + 40);
            v368 = *(v405 + 32);
            v353 = 0;
          }

          v97 = v19;
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
          outlined copy of _Glass.Variant.ID(v14, v379);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v375, v24);
          outlined copy of _Glass.Variant.ID(v381, v27);
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v393, v97, 0);
          outlined copy of _Glass.Variant.ID(v14, v379);

          v53 = v381;
          outlined copy of _Glass.Variant.ID(v14, v379);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v375, v24);
          outlined copy of _Glass.Variant.ID(v381, v27);
          outlined consume of _Glass.Variant.ID(v359, v355);
          outlined consume of _Glass.Variant.ID(v353, 0x80u);
        }

LABEL_143:
        if (v340 >> 6)
        {
          v98 = v337;
          v99 = v334;
          if (v340 >> 6 == 1)
          {
            if ((v334 & 0xC0) != 0x40)
            {
              goto LABEL_206;
            }

            v410 = v337;
            LOBYTE(v411) = v340 & 0x3F;
            v405 = v343;
            LOBYTE(v406) = v334 & 0x3F;
            outlined copy of _Glass.Variant.ID(v337, v340);
            outlined copy of _Glass.Variant.ID(v343, v334);
            outlined copy of _Glass.Variant.ID(v337, v340);
            outlined copy of _Glass.Variant.ID(v343, v334);
            v361 = specialized static Material.ID.== infix(_:_:)(&v410, &v405);
            outlined consume of _Glass.Variant.ID(v337, v340);
            outlined consume of _Glass.Variant.ID(v343, v334);
            outlined consume of _Glass.Variant.ID(v343, v334);
            outlined consume of _Glass.Variant.ID(v337, v340);
            outlined consume of _Glass.Variant.ID(v375, v370);
            v1 = v386;
            outlined consume of _Glass.Variant.ID(v381, v386);
            outlined consume of _Glass.Variant.ID(v381, v386);
            outlined consume of _Glass.Variant.ID(v375, v370);
            v15 = v379;
            if ((v361 & 1) == 0 || v46 != v49)
            {
              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v337 | v340 ^ 0x80)
          {
            v120 = v334 & 0xC0;
            if (v340 == 128 && v337 == 1)
            {
              if (v120 != 128 || v343 != 1 || v334 != 128)
              {
                goto LABEL_206;
              }

              v1 = v53;
              v122 = 1;
            }

            else
            {
              if (v120 != 128 || v343 != 2 || v334 != 128)
              {
                goto LABEL_206;
              }

              v1 = v53;
              v122 = 2;
            }
          }

          else
          {
            if ((v334 & 0xC0) != 0x80 || v343 || v334 != 128)
            {
LABEL_206:
              v150 = v98;
              outlined copy of _Glass.Variant.ID(v98, v340);
              outlined copy of _Glass.Variant.ID(v343, v99);
              v151 = v150;
              v53 = v381;
              outlined consume of _Glass.Variant.ID(v151, v340);
              v102 = v343;
              v103 = v99;
              goto LABEL_150;
            }

            v1 = v53;
            v122 = 0;
          }

          outlined consume of _Glass.Variant.ID(v337, v340);
          outlined consume of _Glass.Variant.ID(v122, 0x80u);
          outlined consume of _Glass.Variant.ID(v375, v370);
          outlined consume of _Glass.Variant.ID(v1, v386);
          outlined consume of _Glass.Variant.ID(v1, v386);
          v104 = v375;
LABEL_204:
          outlined consume of _Glass.Variant.ID(v104, v370);
          v15 = v379;
          if (v46 != v49)
          {
            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v99 = v334;
        v98 = v337;
        if (v334 >= 0x40)
        {
          goto LABEL_206;
        }

        v105 = *(v337 + 16);
        v106 = *(v337 + 24);
        v107 = *(v337 + 48);
        v108 = *(v343 + 16);
        v109 = *(v343 + 24);
        v110 = *(v343 + 48);
        v111 = *(v337 + 24);
        v350 = *(v343 + 24);
        v357 = v111;
        v362 = v105;
        v354 = v108;
        if (!(v106 >> 6))
        {
          if (v109 >= 0x40)
          {
            goto LABEL_336;
          }

          v325 = *(v343 + 32);
          v329 = *(v337 + 40);
          v322 = *(v343 + 40);
          v319 = *(v337 + 32);
          v193 = *(v105 + 48);
          v194 = *(v105 + 40);
          v195 = *(v105 + 32);
          v196 = *(v105 + 24);
          v197 = *(v105 + 16);
          v198 = *(v337 + 16);
          v199 = *(v108 + 16);
          v200 = *(v108 + 24);
          v201 = *(v343 + 16);
          v202 = *(v108 + 32);
          v203 = *(v201 + 40);
          v204 = *(v201 + 48);
          v410 = v197;
          LOBYTE(v411) = v196;
          v412 = v195;
          v413 = v194;
          v414 = v193;
          v405 = v199;
          LOBYTE(v406) = v200;
          v407 = v202;
          v408 = v203;
          v409 = v204;
          outlined copy of _Glass.Variant.ID(v337, v340);
          outlined copy of _Glass.Variant.ID(v343, v334);
          outlined copy of _Glass.Variant.ID(v198, v111);
          outlined copy of _Glass.Variant.ID(v201, v350);
          outlined copy of _Glass.Variant.ID(v337, v340);
          outlined copy of _Glass.Variant.ID(v343, v334);
          outlined copy of _Glass.Variant.ID(v198, v111);
          outlined copy of _Glass.Variant.ID(v201, v350);
          v114 = v340;
          v115 = v343;
          v317 = specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(&v410, &v405);
          outlined consume of _Glass.Variant.ID(v362, v357);
          outlined consume of _Glass.Variant.ID(v354, v350);
          v116 = v334;
          outlined consume of _Glass.Variant.ID(v354, v350);
          v118 = v357;
          v117 = v362;
          v119 = v337;
LABEL_276:
          outlined consume of _Glass.Variant.ID(v117, v118);
          if ((v317 & 1) == 0)
          {
            goto LABEL_337;
          }

LABEL_332:
          if (v329 >> 6)
          {
            v223 = v322;
            if (v329 >> 6 != 1)
            {
              if (v319 | v329 ^ 0x80)
              {
                v265 = v322 & 0xC0;
                if (v329 == 128 && v319 == 1)
                {
                  if (v265 != 128 || v325 != 1 || v322 != 128)
                  {
                    goto LABEL_377;
                  }

                  v308 = v17;
                  v311 = v16;
                  v267 = 1;
                }

                else
                {
                  if (v265 != 128 || v325 != 2 || v322 != 128)
                  {
                    goto LABEL_377;
                  }

                  v308 = v17;
                  v311 = v16;
                  v267 = 2;
                }
              }

              else
              {
                if ((v322 & 0xC0) != 0x80 || v325 || v322 != 128)
                {
                  goto LABEL_377;
                }

                v308 = v17;
                v311 = v16;
                v267 = 0;
              }

              outlined copy of _Glass.Variant.ID(v267, 0x80u);
              outlined consume of _Glass.Variant.ID(v319, v329);
              outlined consume of _Glass.Variant.ID(v267, 0x80u);
              outlined consume of _Glass.Variant.ID(v319, v329);
              v119 = v337;
              v114 = v340;
              outlined consume of _Glass.Variant.ID(v337, v340);
              v115 = v343;
              v116 = v334;
              outlined consume of _Glass.Variant.ID(v343, v334);
              v13 = v402;
              LOWORD(v17) = v308;
              v16 = v311;
              goto LABEL_421;
            }

            if ((v322 & 0xC0) != 0x40)
            {
              goto LABEL_376;
            }

            v410 = v319;
            LOBYTE(v411) = v329 & 0x3F;
            v224 = v325;
            v405 = v325;
            LOBYTE(v406) = v322 & 0x3F;
            outlined copy of _Glass.Variant.ID(v325, v322);
            outlined copy of _Glass.Variant.ID(v319, v329);
            outlined copy of _Glass.Variant.ID(v325, v322);
            outlined copy of _Glass.Variant.ID(v319, v329);
            v225 = specialized static Material.ID.== infix(_:_:)(&v410, &v405);
          }

          else
          {
            v223 = v322;
            if (v322 >= 0x40)
            {
LABEL_376:
              outlined copy of _Glass.Variant.ID(v319, v329);
LABEL_377:
              outlined copy of _Glass.Variant.ID(v325, v223);
              outlined consume of _Glass.Variant.ID(v319, v329);
              outlined consume of _Glass.Variant.ID(v325, v223);
              v119 = v337;
              v114 = v340;
              v116 = v334;
              v115 = v343;
LABEL_337:
              outlined consume of _Glass.Variant.ID(v119, v114);
              outlined consume of _Glass.Variant.ID(v115, v116);
LABEL_338:
              outlined consume of _Glass.Variant.ID(v115, v116);
              outlined consume of _Glass.Variant.ID(v119, v114);
              v53 = v381;
LABEL_151:
              v1 = v375;
              outlined consume of _Glass.Variant.ID(v375, v370);
              outlined consume of _Glass.Variant.ID(v53, v386);
              outlined consume of _Glass.Variant.ID(v53, v386);
              v104 = v375;
LABEL_152:
              outlined consume of _Glass.Variant.ID(v104, v370);
              v15 = v379;
              goto LABEL_84;
            }

            v256 = *(v319 + 48);
            v257 = *(v319 + 40);
            v258 = *(v319 + 32);
            v259 = *(v319 + 24);
            v224 = v325;
            v260 = *(v325 + 16);
            v261 = *(v325 + 24);
            v262 = *(v325 + 32);
            v263 = *(v325 + 40);
            v264 = *(v325 + 48);
            v410 = *(v319 + 16);
            LOBYTE(v411) = v259;
            v412 = v258;
            v413 = v257;
            v414 = v256;
            v405 = v260;
            LOBYTE(v406) = v261;
            v407 = v262;
            v408 = v263;
            v409 = v264;
            outlined copy of _Glass.Variant.ID(v325, v322);
            outlined copy of _Glass.Variant.ID(v319, v329);
            outlined copy of _Glass.Variant.ID(v325, v322);
            outlined copy of _Glass.Variant.ID(v319, v329);
            v225 = specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(&v410, &v405);
          }

          v364 = v225;
          outlined consume of _Glass.Variant.ID(v319, v329);
          outlined consume of _Glass.Variant.ID(v224, v223);
          outlined consume of _Glass.Variant.ID(v224, v223);
          outlined consume of _Glass.Variant.ID(v319, v329);
          v119 = v337;
          v114 = v340;
          outlined consume of _Glass.Variant.ID(v337, v340);
          v115 = v343;
          v116 = v334;
          outlined consume of _Glass.Variant.ID(v343, v334);
          if ((v364 & 1) == 0)
          {
            goto LABEL_338;
          }

LABEL_421:
          outlined consume of _Glass.Variant.ID(v115, v116);
          outlined consume of _Glass.Variant.ID(v119, v114);
          outlined consume of _Glass.Variant.ID(v375, v370);
          v1 = v386;
          outlined consume of _Glass.Variant.ID(v381, v386);
          outlined consume of _Glass.Variant.ID(v381, v386);
          v104 = v375;
          if (v107 != v110)
          {
            goto LABEL_152;
          }

          goto LABEL_204;
        }

        if (v106 >> 6 == 1)
        {
          if ((v109 & 0xC0) != 0x40)
          {
            goto LABEL_336;
          }

          v325 = *(v343 + 32);
          v329 = *(v337 + 40);
          v322 = *(v343 + 40);
          v319 = *(v337 + 32);
          v410 = *(v337 + 16);
          LOBYTE(v411) = v106 & 0x3F;
          v405 = v108;
          LOBYTE(v406) = v109 & 0x3F;
          v112 = v105;
          v113 = v109;
          outlined copy of _Glass.Variant.ID(v337, v340);
          outlined copy of _Glass.Variant.ID(v343, v334);
          outlined copy of _Glass.Variant.ID(v112, v111);
          outlined copy of _Glass.Variant.ID(v354, v113);
          outlined copy of _Glass.Variant.ID(v337, v340);
          outlined copy of _Glass.Variant.ID(v343, v334);
          outlined copy of _Glass.Variant.ID(v362, v111);
          outlined copy of _Glass.Variant.ID(v354, v350);
          v114 = v340;
          v317 = specialized static Material.ID.== infix(_:_:)(&v410, &v405);
          outlined consume of _Glass.Variant.ID(v362, v111);
          outlined consume of _Glass.Variant.ID(v354, v350);
          v115 = v343;
          v116 = v334;
          outlined consume of _Glass.Variant.ID(v354, v350);
          v118 = v357;
          v117 = v362;
          v119 = v337;
          goto LABEL_276;
        }

        if (v105 | v106 ^ 0x80)
        {
          v205 = v109 & 0xC0;
          if (*(v337 + 24) != 128 || v105 != 1)
          {
            if (v205 != 128 || v108 != 2 || v109 != 128)
            {
              goto LABEL_336;
            }

            v325 = *(v343 + 32);
            v329 = *(v337 + 40);
            v322 = *(v343 + 40);
            v319 = *(v337 + 32);
            outlined copy of _Glass.Variant.ID(v337, v340);
            outlined copy of _Glass.Variant.ID(v343, v334);
            outlined copy of _Glass.Variant.ID(v337, v340);
            outlined copy of _Glass.Variant.ID(v343, v334);
            outlined consume of _Glass.Variant.ID(v362, v111);
            v221 = 2;
            v222 = 0x80;
            goto LABEL_331;
          }

          if (v205 != 128 || v108 != 1)
          {
            goto LABEL_336;
          }
        }

        else if ((v109 & 0xC0) != 0x80 || v108)
        {
LABEL_336:
          v226 = *(v337 + 24);
          v227 = *(v337 + 16);
          v228 = *(v343 + 24);
          v229 = *(v343 + 16);
          outlined copy of _Glass.Variant.ID(v105, v106);
          outlined copy of _Glass.Variant.ID(v227, v226);
          outlined copy of _Glass.Variant.ID(v229, v228);
          outlined copy of _Glass.Variant.ID(v337, v340);
          v115 = v343;
          v116 = v334;
          outlined copy of _Glass.Variant.ID(v343, v334);
          outlined copy of _Glass.Variant.ID(v337, v340);
          outlined copy of _Glass.Variant.ID(v343, v334);
          outlined consume of _Glass.Variant.ID(v362, v357);
          outlined consume of _Glass.Variant.ID(v354, v350);
          outlined consume of _Glass.Variant.ID(v362, v357);
          v119 = v337;
          v114 = v340;
          goto LABEL_337;
        }

        if (v109 != 128)
        {
          goto LABEL_336;
        }

        v325 = *(v343 + 32);
        v329 = *(v337 + 40);
        v322 = *(v343 + 40);
        v319 = *(v337 + 32);
        outlined copy of _Glass.Variant.ID(v337, v340);
        outlined copy of _Glass.Variant.ID(v343, v334);
        outlined copy of _Glass.Variant.ID(v337, v340);
        outlined copy of _Glass.Variant.ID(v343, v334);
        outlined consume of _Glass.Variant.ID(v362, v111);
        outlined consume of _Glass.Variant.ID(v354, v350);
        v221 = v362;
        v222 = v111;
LABEL_331:
        outlined consume of _Glass.Variant.ID(v221, v222);
        goto LABEL_332;
      }

      if (v48 >= 0x40)
      {
        goto LABEL_149;
      }

      v80 = *(v44 + 16);
      v81 = *(v44 + 24);
      v314 = *(v44 + 32);
      v316 = *(v44 + 40);
      v82 = *(v44 + 48);
      v83 = *(v47 + 16);
      v84 = *(v47 + 24);
      v315 = *(v47 + 32);
      v85 = *(v47 + 48);
      v367 = *(v405 + 40);
      v368 = *(v405 + 32);
      v365 = *(v16 + 40);
      v366 = *(v16 + 32);
      v337 = *(v23 + 32);
      v340 = *(v23 + 40);
      v334 = *(v26 + 40);
      v343 = *(v26 + 32);
      v313 = *(v47 + 40);
      v333 = v405;
      v328 = *(v47 + 24);
      v321 = *(v44 + 24);
      v324 = v80;
      if (!(v81 >> 6))
      {
        if (v84 < 0x40)
        {
          v136 = *(v80 + 48);
          v137 = *(v80 + 40);
          v138 = *(v80 + 32);
          v139 = *(v80 + 24);
          v140 = *(v83 + 16);
          v141 = *(v83 + 24);
          v142 = *(v83 + 32);
          v143 = *(v83 + 40);
          v144 = *(v83 + 48);
          v410 = *(v80 + 16);
          LOBYTE(v411) = v139;
          v412 = v138;
          v413 = v137;
          v414 = v136;
          v405 = v140;
          LOBYTE(v406) = v141;
          v407 = v142;
          v408 = v143;
          v409 = v144;
          v145 = v19;
          v146 = v81;
          v147 = v80;
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
          outlined copy of _Glass.Variant.ID(v14, v379);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v375, v370);
          outlined copy of _Glass.Variant.ID(v381, v386);
          outlined copy of _Glass.Variant.ID(v359, v355);
          outlined copy of _Glass.Variant.ID(v348, v351);
          outlined copy of _Glass.Variant.ID(v147, v146);
          outlined copy of _Glass.Variant.ID(v83, v328);
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v393, v145, 0);
          outlined copy of _Glass.Variant.ID(v14, v379);

          v88 = v355;
          v89 = v359;
          outlined copy of _Glass.Variant.ID(v14, v379);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v375, v370);
          outlined copy of _Glass.Variant.ID(v381, v386);
          outlined copy of _Glass.Variant.ID(v359, v355);
          v90 = v351;
          outlined copy of _Glass.Variant.ID(v348, v351);
          outlined copy of _Glass.Variant.ID(v147, v321);
          outlined copy of _Glass.Variant.ID(v83, v328);
          v307 = specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(&v410, &v405);
          outlined consume of _Glass.Variant.ID(v324, v321);
          outlined consume of _Glass.Variant.ID(v83, v328);
          outlined consume of _Glass.Variant.ID(v83, v328);
          outlined consume of _Glass.Variant.ID(v324, v321);
          if ((v307 & 1) == 0)
          {
            goto LABEL_247;
          }

          goto LABEL_237;
        }

        goto LABEL_234;
      }

      if (v81 >> 6 == 1)
      {
        if ((v84 & 0xC0) == 0x40)
        {
          v410 = *(v44 + 16);
          LOBYTE(v411) = v81 & 0x3F;
          v405 = v83;
          LOBYTE(v406) = v84 & 0x3F;
          v86 = v19;
          v87 = v80;
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
          outlined copy of _Glass.Variant.ID(v14, v379);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v375, v370);
          outlined copy of _Glass.Variant.ID(v381, v27);
          v88 = v355;
          outlined copy of _Glass.Variant.ID(v359, v355);
          outlined copy of _Glass.Variant.ID(v348, v351);
          outlined copy of _Glass.Variant.ID(v87, v321);
          outlined copy of _Glass.Variant.ID(v83, v328);
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v393, v86, 0);
          outlined copy of _Glass.Variant.ID(v14, v379);

          v89 = v359;
          outlined copy of _Glass.Variant.ID(v14, v379);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v375, v370);
          outlined copy of _Glass.Variant.ID(v381, v386);
          outlined copy of _Glass.Variant.ID(v359, v355);
          v90 = v351;
          outlined copy of _Glass.Variant.ID(v348, v351);
          outlined copy of _Glass.Variant.ID(v324, v321);
          outlined copy of _Glass.Variant.ID(v83, v328);
          v310 = specialized static Material.ID.== infix(_:_:)(&v410, &v405);
          outlined consume of _Glass.Variant.ID(v324, v321);
          outlined consume of _Glass.Variant.ID(v83, v328);
          outlined consume of _Glass.Variant.ID(v83, v328);
          v92 = v321;
          v91 = v324;
          goto LABEL_236;
        }

        goto LABEL_234;
      }

      if (v80 | v81 ^ 0x80)
      {
        v148 = v84 & 0xC0;
        if (*(v44 + 24) != 128 || v80 != 1)
        {
          if (v148 == 128 && v83 == 2 && v84 == 128)
          {
            v157 = v18;
            v158 = v19;
            outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
            outlined copy of _Glass.Variant.ID(v14, v379);
            outlined copy of _Glass.Variant.ID(v16, v17);
            outlined copy of _Glass.Variant.ID(v375, v370);
            outlined copy of _Glass.Variant.ID(v381, v27);
            outlined copy of _Glass.Variant.ID(v359, v355);
            outlined copy of _Glass.Variant.ID(v348, v351);
            outlined copy of GlassContainer.Entry.ModelID(v16, v17, v157, v158, 0);
            outlined copy of _Glass.Variant.ID(v14, v379);

            outlined copy of _Glass.Variant.ID(v14, v379);
            outlined copy of _Glass.Variant.ID(v16, v17);
            outlined copy of _Glass.Variant.ID(v375, v370);
            outlined copy of _Glass.Variant.ID(v381, v27);
            outlined copy of _Glass.Variant.ID(v359, v355);
            outlined copy of _Glass.Variant.ID(v348, v351);
            outlined consume of _Glass.Variant.ID(v324, v321);
            outlined consume of _Glass.Variant.ID(2, 0x80u);
            goto LABEL_237;
          }

          goto LABEL_234;
        }

        if (v148 != 128 || v83 != 1)
        {
LABEL_234:
          v156 = v18;
          v159 = *(v44 + 24);
          v160 = *(v44 + 16);
          outlined copy of _Glass.Variant.ID(v80, v81);
          outlined copy of _Glass.Variant.ID(v160, v159);
          outlined copy of _Glass.Variant.ID(v83, v84);
          v310 = 0;
          goto LABEL_235;
        }
      }

      else if ((v84 & 0xC0) != 0x80 || v83)
      {
        goto LABEL_234;
      }

      if (v84 == 128)
      {
        v156 = v18;
        v310 = 1;
LABEL_235:
        outlined copy of GlassContainer.Entry.ModelID(v16, v17, v156, v392, 0);
        outlined copy of _Glass.Variant.ID(v333, v379);
        outlined copy of _Glass.Variant.ID(v16, v17);
        outlined copy of _Glass.Variant.ID(v375, v370);
        outlined copy of _Glass.Variant.ID(v381, v386);
        outlined copy of _Glass.Variant.ID(v359, v355);
        outlined copy of _Glass.Variant.ID(v348, v351);
        outlined copy of GlassContainer.Entry.ModelID(v16, v17, v156, v392, 0);
        outlined copy of _Glass.Variant.ID(v333, v379);

        outlined copy of _Glass.Variant.ID(v333, v379);
        outlined copy of _Glass.Variant.ID(v16, v17);
        v89 = v359;
        outlined copy of _Glass.Variant.ID(v375, v370);
        v88 = v355;
        outlined copy of _Glass.Variant.ID(v381, v386);
        outlined copy of _Glass.Variant.ID(v359, v355);
        v90 = v351;
        outlined copy of _Glass.Variant.ID(v348, v351);
        outlined consume of _Glass.Variant.ID(v324, v321);
        outlined consume of _Glass.Variant.ID(v83, v328);
        v91 = v324;
        v92 = v321;
LABEL_236:
        outlined consume of _Glass.Variant.ID(v91, v92);
        if ((v310 & 1) == 0)
        {
          goto LABEL_247;
        }

LABEL_237:
        if (v316 >> 6)
        {
          v14 = v333;
          v161 = v313;
          if (v316 >> 6 != 1)
          {
            v162 = v314;
            if (v314 | v316 ^ 0x80)
            {
              v178 = v313 & 0xC0;
              if (v316 == 128 && v314 == 1)
              {
                if (v178 != 128 || v315 != 1 || v313 != 128)
                {
                  goto LABEL_246;
                }

                v180 = 1;
              }

              else
              {
                if (v178 != 128 || v315 != 2 || v313 != 128)
                {
                  goto LABEL_246;
                }

                v180 = 2;
              }
            }

            else
            {
              if ((v313 & 0xC0) != 0x80 || v315 || v313 != 128)
              {
                goto LABEL_246;
              }

              v180 = 0;
            }

            outlined copy of _Glass.Variant.ID(v180, 0x80u);
            outlined consume of _Glass.Variant.ID(v314, v316);
            outlined consume of _Glass.Variant.ID(v180, 0x80u);
            outlined consume of _Glass.Variant.ID(v314, v316);
            outlined consume of _Glass.Variant.ID(v359, v355);
            outlined consume of _Glass.Variant.ID(v348, v351);
            v174 = v348;
            v175 = v351;
            v53 = v381;
            goto LABEL_296;
          }

          v162 = v314;
          if ((v313 & 0xC0) != 0x40)
          {
            goto LABEL_245;
          }

          v410 = v314;
          LOBYTE(v411) = v316 & 0x3F;
          v405 = v315;
          LOBYTE(v406) = v313 & 0x3F;
          outlined copy of _Glass.Variant.ID(v315, v313);
          outlined copy of _Glass.Variant.ID(v314, v316);
          outlined copy of _Glass.Variant.ID(v315, v313);
          outlined copy of _Glass.Variant.ID(v314, v316);
          v331 = specialized static Material.ID.== infix(_:_:)(&v410, &v405);
          outlined consume of _Glass.Variant.ID(v314, v316);
          outlined consume of _Glass.Variant.ID(v315, v313);
          outlined consume of _Glass.Variant.ID(v315, v313);
          v163 = v314;
          v164 = v316;
        }

        else
        {
          v161 = v313;
          v14 = v333;
          v162 = v314;
          if (v313 >= 0x40)
          {
LABEL_245:
            v176 = v161;
            outlined copy of _Glass.Variant.ID(v162, v316);
            v161 = v176;
LABEL_246:
            v177 = v161;
            outlined copy of _Glass.Variant.ID(v315, v161);
            outlined consume of _Glass.Variant.ID(v162, v316);
            outlined consume of _Glass.Variant.ID(v315, v177);
            v88 = v355;
            v89 = v359;
            v90 = v351;
LABEL_247:
            outlined consume of _Glass.Variant.ID(v89, v88);
            outlined consume of _Glass.Variant.ID(v348, v90);
            v174 = v348;
            v14 = v333;
            v53 = v381;
            v175 = v90;
LABEL_248:
            outlined consume of _Glass.Variant.ID(v174, v175);
            v103 = v355;
            v102 = v359;
LABEL_150:
            outlined consume of _Glass.Variant.ID(v102, v103);
            goto LABEL_151;
          }

          v165 = *(v314 + 48);
          v166 = *(v314 + 40);
          v167 = *(v314 + 32);
          v168 = *(v314 + 24);
          v169 = *(v315 + 16);
          v170 = *(v315 + 24);
          v171 = *(v315 + 32);
          v172 = *(v315 + 40);
          v173 = *(v315 + 48);
          v410 = *(v314 + 16);
          LOBYTE(v411) = v168;
          v412 = v167;
          v413 = v166;
          v414 = v165;
          v405 = v169;
          LOBYTE(v406) = v170;
          v407 = v171;
          v408 = v172;
          v409 = v173;
          outlined copy of _Glass.Variant.ID(v315, v313);
          outlined copy of _Glass.Variant.ID(v314, v316);
          outlined copy of _Glass.Variant.ID(v315, v313);
          outlined copy of _Glass.Variant.ID(v314, v316);
          v331 = specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(&v410, &v405);
          outlined consume of _Glass.Variant.ID(v314, v316);
          outlined consume of _Glass.Variant.ID(v315, v313);
          outlined consume of _Glass.Variant.ID(v315, v313);
          v163 = v314;
          v164 = v316;
        }

        outlined consume of _Glass.Variant.ID(v163, v164);
        outlined consume of _Glass.Variant.ID(v359, v355);
        outlined consume of _Glass.Variant.ID(v348, v351);
        v174 = v348;
        v175 = v351;
        v53 = v381;
        if ((v331 & 1) == 0)
        {
          goto LABEL_248;
        }

LABEL_296:
        outlined consume of _Glass.Variant.ID(v174, v175);
        outlined consume of _Glass.Variant.ID(v359, v355);
        if (v82 != v85)
        {
          goto LABEL_151;
        }

        goto LABEL_143;
      }

      goto LABEL_234;
    }
  }

  else
  {
LABEL_474:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    *(v1 + 16) = v2;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  return 0;
}