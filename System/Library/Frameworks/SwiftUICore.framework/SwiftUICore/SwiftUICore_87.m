uint64_t static Color.Resolved.legacyInterpolation.getter()
{
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static Color.Resolved.legacyInterpolation;
}

uint64_t static Color.Resolved.legacyInterpolation.setter(char a1)
{
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static Color.Resolved.legacyInterpolation = a1 & 1;
  return result;
}

uint64_t (*static Color.Resolved.legacyInterpolation.modify())()
{
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DisplayList.GraphicsRenderer.platformViewMode.modify;
}

void (*Color.Resolved.animatableData.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v8 = *v1;
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v5 = v8;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v9, v8.f32[0], v8.u32[1], v8.f32[2], v8.f32[3]);
    v5 = v9;
  }

  v6.i64[0] = 0x4300000043000000;
  v6.i64[1] = 0x4300000043000000;
  v4[2] = vmulq_f32(v5, v6);
  return Color.Resolved.animatableData.modify;
}

void Color.Resolved.animatableData.modify(uint64_t a1)
{
  v1 = *a1;
  Color.Resolved.animatableData.setter(*(*a1 + 32), *(*a1 + 36), *(*a1 + 40), *(*a1 + 44));

  free(v1);
}

void protocol witness for Animatable.animatableData.getter in conformance Color.Resolved(uint64_t a1@<X8>)
{
  *a1 = Color.Resolved.animatableData.getter(*v1, v1[1], v1[2], v1[3]);
  *(a1 + 4) = v3;
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
}

void (*protocol witness for Animatable.animatableData.modify in conformance Color.Resolved(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = Color.Resolved.animatableData.getter(*v1, v1[1], v1[2], v1[3]);
  *(a1 + 12) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  return protocol witness for Animatable.animatableData.modify in conformance Color.Resolved;
}

float32x2_t Color.ResolvedDuotone.animatableData.getter@<D0>(uint64_t a1@<X8>)
{
  v2.i64[0] = 0x4300000043000000;
  v2.i64[1] = 0x4300000043000000;
  *a1 = vmulq_f32(*v1, v2);
  result = vmul_f32(*(v1 + 16), 0x4300000043000000);
  *(a1 + 16) = result;
  return result;
}

float32x2_t Color.ResolvedDuotone.animatableData.setter(uint64_t a1)
{
  v2.i64[0] = 0x3C0000003C000000;
  v2.i64[1] = 0x3C0000003C000000;
  *v1 = vmulq_f32(*a1, v2);
  result = vmul_f32(*(a1 + 16), 0x3C0000003C000000);
  *(v1 + 16) = result;
  return result;
}

float32x4_t (*Color.ResolvedDuotone.animatableData.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v2.i64[0] = 0x4300000043000000;
  v2.i64[1] = 0x4300000043000000;
  *(a1 + 8) = vmulq_f32(*v1, v2);
  *(a1 + 24) = vmul_f32(*(v1 + 16), 0x4300000043000000);
  return Color.ResolvedDuotone.animatableData.modify;
}

float32x4_t Color.ResolvedDuotone.animatableData.modify(uint64_t a1)
{
  v1 = *a1;
  v2.i64[0] = 0x3C0000003C000000;
  v2.i64[1] = 0x3C0000003C000000;
  result = vmulq_f32(*(a1 + 8), v2);
  *v2.f32 = vmul_f32(*(a1 + 24), 0x3C0000003C000000);
  *v1 = result;
  v1[1].i64[0] = v2.i64[0];
  return result;
}

float32x2_t protocol witness for Animatable.animatableData.getter in conformance Color.ResolvedDuotone@<D0>(uint64_t a1@<X8>)
{
  v2.i64[0] = 0x4300000043000000;
  v2.i64[1] = 0x4300000043000000;
  *a1 = vmulq_f32(*v1, v2);
  result = vmul_f32(*(v1 + 16), 0x4300000043000000);
  *(a1 + 16) = result;
  return result;
}

float32x2_t protocol witness for Animatable.animatableData.setter in conformance Color.ResolvedDuotone(uint64_t a1)
{
  v2.i64[0] = 0x3C0000003C000000;
  v2.i64[1] = 0x3C0000003C000000;
  *v1 = vmulq_f32(*a1, v2);
  result = vmul_f32(*(a1 + 16), 0x3C0000003C000000);
  *(v1 + 16) = result;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance Color.ResolvedDuotone(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Color.ResolvedDuotone.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

double one-time initialization function for gray_75()
{
  result = 0.0000415144676;
  static Color.Resolved.gray_75 = xmmword_18DDB53A0;
  return result;
}

float static Color.Resolved.gray_75.getter()
{
  if (one-time initialization token for gray_75 != -1)
  {
    swift_once();
  }

  return *&static Color.Resolved.gray_75;
}

double one-time initialization function for gray_50()
{
  result = 0.0000000253116105;
  static Color.Resolved.gray_50 = xmmword_18DDB53B0;
  return result;
}

float static Color.Resolved.gray_50.getter()
{
  if (one-time initialization token for gray_50 != -1)
  {
    swift_once();
  }

  return *&static Color.Resolved.gray_50;
}

double one-time initialization function for gray_25()
{
  result = 2.32894051e-13;
  static Color.Resolved.gray_25 = xmmword_18DDB53C0;
  return result;
}

float static Color.Resolved.gray_25.getter()
{
  if (one-time initialization token for gray_25 != -1)
  {
    swift_once();
  }

  return *&static Color.Resolved.gray_25;
}

float Color.Resolved.init(displayP3Red:green:blue:opacity:)(float a1, float a2, float a3)
{
  v6 = -a1;
  if (a1 > 0.0)
  {
    v6 = a1;
  }

  if (v6 <= 0.04045)
  {
    v7 = v6 * 0.077399;
  }

  else
  {
    v7 = 1.0;
    if (v6 != 1.0)
    {
      v7 = powf((v6 * 0.94787) + 0.052133, 2.4);
    }
  }

  v8 = -a2;
  if (a2 > 0.0)
  {
    v8 = a2;
  }

  if (v8 <= 0.04045)
  {
    v9 = v8 * 0.077399;
  }

  else
  {
    v9 = 1.0;
    if (v8 != 1.0)
    {
      v9 = powf((v8 * 0.94787) + 0.052133, 2.4);
    }
  }

  if (a3 <= 0.0)
  {
    v10 = -a3;
  }

  else
  {
    v10 = a3;
  }

  if (v10 > 0.04045 && v10 != 1.0)
  {
    powf((v10 * 0.94787) + 0.052133, 2.4);
  }

  if (a2 <= 0.0)
  {
    v11 = -v9;
  }

  else
  {
    v11 = v9;
  }

  if (a1 <= 0.0)
  {
    v12 = -v7;
  }

  else
  {
    v12 = v7;
  }

  return (v12 * 1.2249) + (v11 * -0.2247);
}

void Color.Resolved.init(white:opacity:)(float a1)
{
  if (a1 <= 0.0)
  {
    v1 = -a1;
  }

  else
  {
    v1 = a1;
  }

  if (v1 > 0.04045 && v1 != 1.0)
  {
    powf((v1 * 0.94787) + 0.052133, 2.4);
  }
}

void Color.Resolved.red.setter(float a1)
{
  if (a1 <= 0.0)
  {
    v2 = -a1;
  }

  else
  {
    v2 = a1;
  }

  if (v2 <= 0.04045)
  {
    v3 = v2 * 0.077399;
  }

  else
  {
    v3 = 1.0;
    if (v2 != 1.0)
    {
      v4 = a1;
      v3 = powf((v2 * 0.94787) + 0.052133, 2.4);
      a1 = v4;
    }
  }

  if (a1 <= 0.0)
  {
    v5 = -v3;
  }

  else
  {
    v5 = v3;
  }

  *v1 = v5;
}

uint64_t (*Color.Resolved.red.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1;
  v3 = -*v1;
  if (*v1 > 0.0)
  {
    v3 = *v1;
  }

  if (v3 <= 0.0031308)
  {
    v4 = v3 * 12.92;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a1;
      v6 = powf(v3, 0.41667);
      a1 = v5;
      v4 = (v6 * 1.055) + -0.055;
    }
  }

  v7 = -v4;
  if (v2 > 0.0)
  {
    v7 = v4;
  }

  *(a1 + 8) = v7;
  return Color.Resolved.red.modify;
}

uint64_t Color.Resolved.red.modify(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 <= 0.0)
  {
    v2 = -v1;
  }

  else
  {
    v2 = *(result + 8);
  }

  if (v2 <= 0.04045)
  {
    v3 = v2 * 0.077399;
  }

  else
  {
    v3 = 1.0;
    if (v2 != 1.0)
    {
      v4 = result;
      v3 = powf((v2 * 0.94787) + 0.052133, 2.4);
      result = v4;
    }
  }

  if (v1 <= 0.0)
  {
    v3 = -v3;
  }

  **result = v3;
  return result;
}

void Color.Resolved.green.setter(float a1)
{
  if (a1 <= 0.0)
  {
    v2 = -a1;
  }

  else
  {
    v2 = a1;
  }

  if (v2 <= 0.04045)
  {
    v3 = v2 * 0.077399;
  }

  else
  {
    v3 = 1.0;
    if (v2 != 1.0)
    {
      v4 = a1;
      v3 = powf((v2 * 0.94787) + 0.052133, 2.4);
      a1 = v4;
    }
  }

  if (a1 <= 0.0)
  {
    v5 = -v3;
  }

  else
  {
    v5 = v3;
  }

  *(v1 + 4) = v5;
}

float *(*Color.Resolved.green.modify(uint64_t a1))(float *result)
{
  *a1 = v1;
  v2 = *(v1 + 4);
  v3 = -v2;
  if (v2 > 0.0)
  {
    v3 = *(v1 + 4);
  }

  if (v3 <= 0.0031308)
  {
    v4 = v3 * 12.92;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a1;
      v6 = powf(v3, 0.41667);
      a1 = v5;
      v4 = (v6 * 1.055) + -0.055;
    }
  }

  v7 = -v4;
  if (v2 > 0.0)
  {
    v7 = v4;
  }

  *(a1 + 8) = v7;
  return Color.Resolved.green.modify;
}

float *Color.Resolved.green.modify(float *result)
{
  v1 = result[2];
  if (v1 <= 0.0)
  {
    v2 = -v1;
  }

  else
  {
    v2 = result[2];
  }

  if (v2 <= 0.04045)
  {
    v3 = v2 * 0.077399;
  }

  else
  {
    v3 = 1.0;
    if (v2 != 1.0)
    {
      v4 = result;
      v3 = powf((v2 * 0.94787) + 0.052133, 2.4);
      result = v4;
    }
  }

  if (v1 <= 0.0)
  {
    v3 = -v3;
  }

  *(*result + 4) = v3;
  return result;
}

void Color.Resolved.blue.setter(float a1)
{
  if (a1 <= 0.0)
  {
    v2 = -a1;
  }

  else
  {
    v2 = a1;
  }

  if (v2 <= 0.04045)
  {
    v3 = v2 * 0.077399;
  }

  else
  {
    v3 = 1.0;
    if (v2 != 1.0)
    {
      v4 = a1;
      v3 = powf((v2 * 0.94787) + 0.052133, 2.4);
      a1 = v4;
    }
  }

  if (a1 <= 0.0)
  {
    v5 = -v3;
  }

  else
  {
    v5 = v3;
  }

  *(v1 + 8) = v5;
}

float *(*Color.Resolved.blue.modify(uint64_t a1))(float *result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  v3 = -v2;
  if (v2 > 0.0)
  {
    v3 = *(v1 + 8);
  }

  if (v3 <= 0.0031308)
  {
    v4 = v3 * 12.92;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a1;
      v6 = powf(v3, 0.41667);
      a1 = v5;
      v4 = (v6 * 1.055) + -0.055;
    }
  }

  v7 = -v4;
  if (v2 > 0.0)
  {
    v7 = v4;
  }

  *(a1 + 8) = v7;
  return Color.Resolved.blue.modify;
}

float *Color.Resolved.blue.modify(float *result)
{
  v1 = result[2];
  if (v1 <= 0.0)
  {
    v2 = -v1;
  }

  else
  {
    v2 = result[2];
  }

  if (v2 <= 0.04045)
  {
    v3 = v2 * 0.077399;
  }

  else
  {
    v3 = 1.0;
    if (v2 != 1.0)
    {
      v4 = result;
      v3 = powf((v2 * 0.94787) + 0.052133, 2.4);
      result = v4;
    }
  }

  if (v1 <= 0.0)
  {
    v3 = -v3;
  }

  *(*result + 8) = v3;
  return result;
}

void Color.Resolved.white.getter(float a1, float a2, float a3)
{
  v3 = ((a1 * 0.2126) + (a2 * 0.7152)) + (a3 * 0.0722);
  v4 = -v3;
  if (v3 > 0.0)
  {
    v4 = v3;
  }

  if (v4 > 0.0031308 && v4 != 1.0)
  {
    powf(v4, 0.41667);
  }
}

void Color.Resolved.displayP3Components.getter(float a1, float a2, float a3)
{
  v3 = (a1 * 0.8225) + (a2 * 0.1774);
  v4 = (a1 * 0.0332) + (a2 * 0.9669);
  v5 = (a1 * 0.0171) + (a2 * 0.0724);
  v6 = a3 * 0.9108;
  v7 = -v3;
  if (v3 > 0.0)
  {
    v7 = v3;
  }

  if (v7 > 0.0031308 && v7 != 1.0)
  {
    powf(v7, 0.41667);
  }

  v8 = v5 + v6;
  v9 = -v4;
  if (v4 > 0.0)
  {
    v9 = v4;
  }

  if (v9 > 0.0031308 && v9 != 1.0)
  {
    powf(v9, 0.41667);
  }

  v10 = -v8;
  if (v8 > 0.0)
  {
    v10 = v8;
  }

  if (v10 > 0.0031308 && v10 != 1.0)
  {
    powf(v10, 0.41667);
  }
}

uint64_t Color.Resolved.encode(to:)(void *a1, float a2, float a3, float a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v8 = -a2;
  if (a2 > 0.0)
  {
    v8 = a2;
  }

  if (v8 > 0.0031308 && v8 != 1.0)
  {
    powf(v8, 0.41667);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v4)
  {
    v9 = -a3;
    if (a3 > 0.0)
    {
      v9 = a3;
    }

    if (v9 > 0.0031308 && v9 != 1.0)
    {
      powf(v9, 0.41667);
    }

    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v10 = -a4;
    if (a4 > 0.0)
    {
      v10 = a4;
    }

    if (v10 > 0.0031308 && v10 != 1.0)
    {
      powf(v10, 0.41667);
    }

    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

void protocol witness for Decodable.init(from:) in conformance Color.Resolved(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = specialized Color.Resolved.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
    *(a2 + 8) = v6;
    *(a2 + 12) = v7;
  }
}

_DWORD *Color.Resolved.encode(to:)(_DWORD *result, float a2, float a3, float a4, float a5)
{
  v9 = result;
  if (a2 != 0.0)
  {
    v5 = a2;
    ProtobufEncoder.encodeVarint(_:)(0xDuLL);
    v10 = v9[1];
    result = (v10 + 4);
    if (__OFADD__(v10, 4))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v9[2] < result)
    {
      goto LABEL_21;
    }

    v9[1] = result;
    *(*v9 + v10) = v5;
  }

  if (a3 != 0.0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    while (1)
    {
LABEL_9:
      if (a4 == 0.0)
      {
        goto LABEL_13;
      }

      ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
      v12 = v9[1];
      result = (v12 + 4);
      if (!__OFADD__(v12, 4))
      {
        break;
      }

      while (1)
      {
        __break(1u);
LABEL_21:
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v5;
        if (a3 == 0.0)
        {
          break;
        }

LABEL_6:
        ProtobufEncoder.encodeVarint(_:)(0x15uLL);
        v11 = v9[1];
        result = (v11 + 4);
        if (!__OFADD__(v11, 4))
        {
          if (v9[2] < result)
          {
            goto LABEL_24;
          }

          v9[1] = result;
          *(*v9 + v11) = a3;
          goto LABEL_9;
        }

LABEL_19:
        __break(1u);
      }
    }

    if (v9[2] < result)
    {
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = a4;
    }

    else
    {
      v9[1] = result;
      *(*v9 + v12) = a4;
    }

LABEL_13:
    if (a5 == 1.0)
    {
      return result;
    }

    ProtobufEncoder.encodeVarint(_:)(0x25uLL);
    v13 = v9[1];
    result = (v13 + 4);
    if (!__OFADD__(v13, 4))
    {
      break;
    }

    __break(1u);
LABEL_24:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = a3;
  }

  if (v9[2] < result)
  {
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = a5;
  }

  else
  {
    v9[1] = result;
    *(*v9 + v13) = a5;
  }

  return result;
}

unint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance Color.Resolved@<X0>(unint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = specialized Color.Resolved.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

void type metadata accessor for ColorBox<ResolvedColorProvider>()
{
  if (!lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>)
  {
    lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider();
    v0 = type metadata accessor for ColorBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>);
    }
  }
}

BOOL specialized static Color.ResolvedDuotone.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) != 0 && a1[1].f32[0] == a2[1].f32[0])
  {
    return a1[1].f32[1] == a2[1].f32[1];
  }

  return result;
}

float specialized Color.Resolved.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v5 = v4;
    __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v7 = v6;
    __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v9 = v8;
    __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v11 = v5;
    if (v5 <= 0.0)
    {
      v12 = -v5;
    }

    else
    {
      v12 = v5;
    }

    if (v12 <= 0.04045)
    {
      v13 = v12 * 0.077399;
      v14 = v9;
      v15 = v7;
    }

    else
    {
      v13 = 1.0;
      v14 = v9;
      v15 = v7;
      if (v12 != 1.0)
      {
        v13 = powf((v12 * 0.94787) + 0.052133, 2.4);
        v11 = v5;
        v15 = v7;
        v14 = v9;
      }
    }

    if (v11 <= 0.0)
    {
      v2 = -v13;
    }

    else
    {
      v2 = v13;
    }

    if (v15 <= 0.0)
    {
      v16 = -v15;
    }

    else
    {
      v16 = v15;
    }

    if (v16 > 0.04045 && v16 != 1.0)
    {
      powf((v16 * 0.94787) + 0.052133, 2.4);
      v14 = v9;
    }

    if (v14 <= 0.0)
    {
      v17 = -v14;
    }

    else
    {
      v17 = v14;
    }

    if (v17 > 0.04045 && v17 != 1.0)
    {
      powf((v17 * 0.94787) + 0.052133, 2.4);
    }

    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v2;
}

uint64_t lazy protocol witness table accessor for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Signpost.traceInterval<A>(object:_:_:closure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int16 a4@<W3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v55 = a7;
  LOWORD(v11) = a4;
  v54 = a8;
  v76 = *MEMORY[0x1E69E9840];
  v63 = type metadata accessor for OSSignpostID();
  v15 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v20 = *(v8 + 18);
  v21 = v20 == 2;
  if (v20 < 2)
  {
    return a6();
  }

  v23 = v8[1];
  v53 = *v8;
  v52 = v23;
  v51 = *(v8 + 16);
  v24 = *(v8 + 17);
  if (v21)
  {
    if (_SwiftUIIsAppleInternalBuild())
    {
      goto LABEL_14;
    }

    return a6();
  }

  if ((v24 & 1) == 0)
  {
    static os_signpost_type_t.event.getter();
    if (kdebug_is_enabled())
    {
      goto LABEL_14;
    }

    return a6();
  }

  static os_signpost_type_t.event.getter();
  if ((kdebug_is_enabled() & 1) == 0)
  {
    return a6();
  }

  v65 = a3;
  if (one-time initialization token for _signpostLog != -1)
  {
    swift_once();
  }

  v25 = OS_os_log.signpostsEnabled.getter();
  a3 = v65;
  if ((v25 & 1) == 0)
  {
    return a6();
  }

LABEL_14:
  v50 = v19;
  v49 = a6;
  v65 = a3;
  if (a1)
  {
    v26 = one-time initialization token for _signpostLog;
    swift_unknownObjectRetain();
    if (v26 != -1)
    {
      swift_once();
    }

    LODWORD(v27) = v24;
    v28 = _signpostLog;
    v19 = v50;
    OSSignpostID.init(log:object:)();
  }

  else
  {
    LODWORD(v27) = v24;
    static OSSignpostID.exclusive.getter();
  }

  LOBYTE(v29) = static os_signpost_type_t.begin.getter();
  v30 = a5();
  if (one-time initialization token for _signpostLog != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v48 = v27;
    if (v27)
    {
      break;
    }

    v46 = _signpostLog;
    v59 = v53;
    if (v53 == 20)
    {
      a2 = 3;
    }

    else
    {
      a2 = 4;
    }

    v32 = bswap32(v53) | (4 * WORD1(v53));
    v33 = v19;
    v19 = v29;
    v47 = v15;
    v56 = *(v15 + 2);
    v34 = v56(v64, v33, v63);
    v27 = 0;
    LOBYTE(v67) = 1;
    v61 = 16 * a2;
    v57 = v15 + 16;
    v62 = (v15 + 8);
    v60 = v30 + 32;
    v58 = a2;
LABEL_27:
    v65 = &v46;
    MEMORY[0x1EEE9AC00](v34);
    v15 = &v46 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = v15 + 8;
    v36 = a2;
    v37 = v15 + 8;
    do
    {
      *(v37 - 1) = 0;
      *v37 = 0;
      v37 += 16;
      --v36;
    }

    while (v36);
    v11 = v60 + 40 * v27;
    while (1)
    {
      v38 = *(v30 + 16);
      if (v27 == v38)
      {
        LOBYTE(v67) = 0;
LABEL_35:
        v41 = v59;
        if (v59 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v15[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v15[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v15[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v41 != 20 && v15[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v42 = v63;
        v43 = *v62;
        v44 = v64;
        (*v62)(v64, v63);
        v45 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
        v34 = v56(v44, v45, v42);
        a2 = v58;
        if ((v67 & 1) == 0)
        {
          v43(v64, v63);

          v15 = v47;
          v19 = v50;
          goto LABEL_51;
        }

        goto LABEL_27;
      }

      if (v27 >= v38)
      {
        break;
      }

      ++v27;
      outlined init with copy of AnyTrackedValue(v11, v73);
      v39 = v75;
      __swift_project_boxed_opaque_existential_1(v73, v75);
      *(v29 - 1) = CVarArg.kdebugValue(_:)(v32 | v19, v39);
      *v29 = v40 & 1;
      v29 += 16;
      __swift_destroy_boxed_opaque_existential_1(v73);
      v11 += 40;
      if (!--a2)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_56:
    swift_once();
  }

  if ((v11 & 0x100) != 0)
  {

    v31 = os_signpost(_:dso:log:name:signpostID:)();
  }

  else
  {
    v72 = v29;
    v70 = _signpostLog;
    v71 = &dword_18D018000;
    v73[0] = v53;
    v73[1] = v52;
    v74 = v51;
    v67 = a2;
    v68 = v65;
    v69 = v11;
    v66 = v30;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
  }

LABEL_51:
  (v49)(v31);
  static os_signpost_type_t.end.getter();
  if (v48)
  {
    os_signpost(_:dso:log:name:signpostID:)();
  }

  else
  {
    OSSignpostID.rawValue.getter();
    v19 = v50;
    kdebug_trace();
  }

  return (*(v15 + 1))(v19, v63);
}

uint64_t one-time initialization function for archiving(uint64_t a1)
{
  return one-time initialization function for archiving(a1, static OSSignposter.archiving, &one-time initialization token for archiving, static Log.archiving);
}

{
  return one-time initialization function for archiving(a1, static Log.archiving);
}

uint64_t one-time initialization function for archiving(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v11, a2);
  __swift_project_value_buffer(v11, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, a4);
  (*(v8 + 16))(v10, v12, v7);
  return OSSignposter.init(logger:)();
}

uint64_t static OSSignposter.archiving.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for OSSignposter();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

__n128 Signpost.published.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  v3 = v1[1].n128_u8[1];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u8[1] = v3;
  a1[1].n128_u8[2] = 3;
  return result;
}

double static Signpost.render.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for render != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED5375C0;
  v2 = HIBYTE(word_1ED5375C0);
  v3 = byte_1ED5375C2;
  result = *&static Signpost.render;
  *a1 = static Signpost.render;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.renderUpdate.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for renderUpdate != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED5375E8;
  v2 = HIBYTE(word_1ED5375E8);
  v3 = byte_1ED5375EA;
  result = *&static Signpost.renderUpdate;
  *a1 = static Signpost.renderUpdate;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.postUpdateActions.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for postUpdateActions != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED530E00;
  v2 = HIBYTE(word_1ED530E00);
  v3 = byte_1ED530E02;
  result = *&static Signpost.postUpdateActions;
  *a1 = static Signpost.postUpdateActions;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.renderDisplayList.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for renderDisplayList != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED52EF28;
  v2 = HIBYTE(word_1ED52EF28);
  v3 = byte_1ED52EF2A;
  result = *&static Signpost.renderDisplayList;
  *a1 = static Signpost.renderDisplayList;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.bodyInvoke.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for bodyInvoke != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED539040;
  v2 = HIBYTE(word_1ED539040);
  v3 = byte_1ED539042;
  result = *&static Signpost.bodyInvoke;
  *a1 = static Signpost.bodyInvoke;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.linkCreate.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for linkCreate != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED537628;
  v2 = HIBYTE(word_1ED537628);
  v3 = byte_1ED53762A;
  result = *&static Signpost.linkCreate;
  *a1 = static Signpost.linkCreate;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.linkUpdate.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for linkUpdate != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED537610;
  v2 = HIBYTE(word_1ED537610);
  v3 = byte_1ED537612;
  result = *&static Signpost.linkUpdate;
  *a1 = static Signpost.linkUpdate;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.linkDestroy.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for linkDestroy != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED53A310;
  v2 = HIBYTE(word_1ED53A310);
  v3 = byte_1ED53A312;
  result = *&static Signpost.linkDestroy;
  *a1 = static Signpost.linkDestroy;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.viewHost.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for viewHost != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED53C1D0;
  v2 = HIBYTE(word_1ED53C1D0);
  v3 = byte_1ED53C1D2;
  result = *&static Signpost.viewHost;
  *a1 = static Signpost.viewHost;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

void one-time initialization function for platformView()
{
  *&static Signpost.platformView = "ViewMapping";
  *(&static Signpost.platformView + 1) = 11;
  word_1EAB19AC0 = 258;
  byte_1EAB19AC2 = 3;
}

double static Signpost.platformView.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for platformView != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1EAB19AC0;
  v2 = HIBYTE(word_1EAB19AC0);
  v3 = byte_1EAB19AC2;
  result = *&static Signpost.platformView;
  *a1 = static Signpost.platformView;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.platformUpdate.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for platformUpdate != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED529260;
  v2 = HIBYTE(word_1ED529260);
  v3 = byte_1ED529262;
  result = *&static Signpost.platformUpdate;
  *a1 = static Signpost.platformUpdate;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.animationState.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for animationState != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED5283E8;
  v2 = HIBYTE(word_1ED5283E8);
  v3 = byte_1ED5283EA;
  result = *&static Signpost.animationState;
  *a1 = static Signpost.animationState;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

void one-time initialization function for eventHandling()
{
  *&static Signpost.eventHandling = "EventHandling";
  *(&static Signpost.eventHandling + 1) = 13;
  word_1ED521BA0 = 258;
  byte_1ED521BA2 = 3;
}

double static Signpost.eventHandling.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for eventHandling != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED521BA0;
  v2 = HIBYTE(word_1ED521BA0);
  v3 = byte_1ED521BA2;
  result = *&static Signpost.eventHandling;
  *a1 = static Signpost.eventHandling;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double one-time initialization function for prefetchMakeView()
{
  *&result = 330991403;
  static Signpost.prefetchMakeView = xmmword_18DDB55F0;
  word_1EAB0EAB8 = 0;
  byte_1EAB0EABA = 2;
  return result;
}

double static Signpost.prefetchMakeView.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for prefetchMakeView != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1EAB0EAB8;
  v2 = HIBYTE(word_1EAB0EAB8);
  v3 = byte_1EAB0EABA;
  result = *&static Signpost.prefetchMakeView;
  *a1 = static Signpost.prefetchMakeView;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double one-time initialization function for prefetchOutputs()
{
  *&result = 331056939;
  static Signpost.prefetchOutputs = xmmword_18DDB5600;
  word_1EAB0EAE0 = 0;
  byte_1EAB0EAE2 = 2;
  return result;
}

double static Signpost.prefetchOutputs.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for prefetchOutputs != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1EAB0EAE0;
  v2 = HIBYTE(word_1EAB0EAE0);
  v3 = byte_1EAB0EAE2;
  result = *&static Signpost.prefetchOutputs;
  *a1 = static Signpost.prefetchOutputs;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double one-time initialization function for prefetchNotifyRender()
{
  *&result = 331122475;
  static Signpost.prefetchNotifyRender = xmmword_18DDB5610;
  word_1EAB0EA98 = 0;
  byte_1EAB0EA9A = 2;
  return result;
}

double static Signpost.prefetchNotifyRender.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for prefetchNotifyRender != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1EAB0EA98;
  v2 = HIBYTE(word_1EAB0EA98);
  v3 = byte_1EAB0EA9A;
  result = *&static Signpost.prefetchNotifyRender;
  *a1 = static Signpost.prefetchNotifyRender;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

const char *one-time initialization function for moduleName()
{
  result = specialized static Tracing.libraryName(defining:)();
  static Signpost.moduleName = result;
  unk_1EAB19AD0 = v1;
  return result;
}

uint64_t static Signpost.moduleName.getter()
{
  if (one-time initialization token for moduleName != -1)
  {
    swift_once();
  }

  v0 = static Signpost.moduleName;

  return v0;
}

__n128 Signpost.disabled.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  v3 = v1[1].n128_u8[1];
  result = *v1;
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 17) = v3;
  return result;
}

__n128 Signpost.verbose.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  v3 = v1[1].n128_u8[1];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u8[1] = v3;
  a1[1].n128_u8[2] = 1;
  return result;
}

uint64_t Signpost.traceInterval<A>(object:_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t (*a5)(void))
{
  v30 = a2;
  v31 = a3;
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 18);
  if (v13 < 2)
  {
    return a5();
  }

  v15 = *v5;
  v29 = v5[1];
  v28 = *(v5 + 16);
  v16 = *(v5 + 17);
  if (v13 == 2)
  {
    if (_SwiftUIIsAppleInternalBuild())
    {
      goto LABEL_13;
    }

    return a5();
  }

  if (v16)
  {
    static os_signpost_type_t.event.getter();
    if ((kdebug_is_enabled() & 1) == 0)
    {
      return a5();
    }

    v27 = v16;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v17 = OS_os_log.signpostsEnabled.getter();
    v16 = v27;
    if ((v17 & 1) == 0)
    {
      return a5();
    }
  }

  else
  {
    static os_signpost_type_t.event.getter();
    if ((kdebug_is_enabled() & 1) == 0)
    {
      return a5();
    }
  }

LABEL_13:
  v27 = v16;
  if (a1)
  {
    v18 = one-time initialization token for _signpostLog;
    swift_unknownObjectRetain();
    if (v18 != -1)
    {
      swift_once();
    }

    v19 = _signpostLog;
    OSSignpostID.init(log:object:)();
    LOBYTE(v16) = v27;
  }

  else
  {
    static OSSignpostID.exclusive.getter();
  }

  v26 = v10;
  v20 = static os_signpost_type_t.begin.getter();
  if (one-time initialization token for _signpostLog != -1)
  {
    v23 = v16;
    v24 = v20;
    swift_once();
    v20 = v24;
    LOBYTE(v16) = v23;
  }

  if (v16)
  {
    if ((a4 & 0x100) != 0)
    {
      v21 = os_signpost(_:dso:log:name:signpostID:)();
    }

    else
    {
      v41 = v20;
      v39 = _signpostLog;
      v40 = &dword_18D018000;
      v36 = v15;
      v37 = v29;
      v38 = v28;
      v33 = v30;
      v34 = v31;
      v35 = a4;
      v32 = MEMORY[0x1E69E7CC0];
      v21 = specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
    }
  }

  else
  {
    OSSignpostID.rawValue.getter();
    v21 = kdebug_trace();
  }

  v22 = v26;
  (a5)(v21);
  static os_signpost_type_t.end.getter();
  if (v27)
  {
    os_signpost(_:dso:log:name:signpostID:)();
  }

  else
  {
    OSSignpostID.rawValue.getter();
    kdebug_trace();
  }

  return (*(v22 + 8))(v12, v9);
}

void Signpost.traceEvent(type:object:_:_:)(unsigned __int8 a1, uint64_t a2, uint64_t *a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  v52 = a3;
  v53 = a4;
  v65 = *MEMORY[0x1E69E9840];
  v50 = type metadata accessor for OSSignpostID();
  v11 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = *(v6 + 18);
  if (v16 < 2)
  {
    return;
  }

  v17 = *v6;
  v48 = v6[1];
  LODWORD(v49) = *(v6 + 16);
  LOBYTE(v18) = *(v6 + 17);
  if (v16 == 2)
  {
    if ((_SwiftUIIsAppleInternalBuild() & 1) == 0)
    {
      return;
    }
  }

  else if (*(v6 + 17))
  {
    static os_signpost_type_t.event.getter();
    if ((kdebug_is_enabled() & 1) == 0)
    {
      return;
    }

    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
    {
      return;
    }
  }

  else
  {
    static os_signpost_type_t.event.getter();
    if ((kdebug_is_enabled() & 1) == 0)
    {
      return;
    }
  }

  if (!a2)
  {
    v21 = static OSSignpostID.exclusive.getter();
    goto LABEL_16;
  }

  v19 = one-time initialization token for _signpostLog;
  swift_unknownObjectRetain();
  if (v19 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v20 = _signpostLog;
    v21 = OSSignpostID.init(log:object:)();
LABEL_16:
    a6 = (a6)(v21);
    if (one-time initialization token for _signpostLog != -1)
    {
      break;
    }

    if (v18)
    {
      goto LABEL_18;
    }

LABEL_22:
    v22 = v17;
    if (v17 == 20)
    {
      v23 = 3;
    }

    else
    {
      v23 = 4;
    }

    v24 = v15;
    v15 = (bswap32(v17) | (4 * WORD1(v17)));
    v26 = *(v11 + 2);
    v25 = v11 + 16;
    v43 = v24;
    v44 = v26;
    v27 = (v26)(v51);
    v17 = 0;
    LOBYTE(v55) = 1;
    v53 = v23;
    v48 = 16 * v23;
    v49 = (v25 - 8);
    v46 = v25;
    v47 = a6 + 32;
    v45 = v22;
LABEL_26:
    v52 = &v42;
    MEMORY[0x1EEE9AC00](v27);
    v18 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = v18 + 8;
    v29 = v53;
    v30 = v18 + 8;
    do
    {
      *(v30 - 1) = 0;
      *v30 = 0;
      v30 += 16;
      --v29;
    }

    while (v29);
    v31 = v47 + 40 * v17;
    v32 = v53;
    while (1)
    {
      v33 = *(a6 + 16);
      if (v17 == v33)
      {
        LOBYTE(v55) = 0;
LABEL_34:
        v36 = v45;
        if (v45 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v18[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v18[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v18[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v36 != 20 && v18[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v37 = v50;
        v38 = *v49;
        v39 = v51;
        (*v49)(v51, v50);
        v40 = __swift_project_value_buffer(v37, static OSSignpostID.continuation);
        v27 = v44(v39, v40, v37);
        if ((v55 & 1) == 0)
        {
          v41 = v50;
          v38(v51, v50);
          v38(v43, v41);
          goto LABEL_49;
        }

        goto LABEL_26;
      }

      if (v17 >= v33)
      {
        break;
      }

      ++v17;
      outlined init with copy of AnyTrackedValue(v31, v61);
      v34 = v63;
      a5 = v64;
      __swift_project_boxed_opaque_existential_1(v61, v63);
      *(v11 - 1) = CVarArg.kdebugValue(_:)(v15 | a1, v34);
      *v11 = v35 & 1;
      v11 += 16;
      __swift_destroy_boxed_opaque_existential_1(v61);
      v31 += 40;
      if (!--v32)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

  swift_once();
  if ((v18 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  if ((a5 & 0x100) != 0)
  {

    os_signpost(_:dso:log:name:signpostID:)();
    (*(v11 + 1))(v15, v50);
  }

  else
  {
    v60 = a1;
    v58 = _signpostLog;
    v59 = &dword_18D018000;
    v61[0] = v17;
    v61[1] = v48;
    v62 = v49;
    v55 = v52;
    v56 = v53;
    v57 = a5;
    v54 = a6;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
    (*(v11 + 1))(v15, v50);
LABEL_49:
  }
}

void Signpost.traceEvent(type:args:)(char a1, uint64_t a2)
{
  LOBYTE(v4) = a1;
  v45 = *MEMORY[0x1E69E9840];
  v38 = type metadata accessor for OSSignpostID();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v31 - v8;
  v9 = *(v2 + 18);
  if (v9 >= 2)
  {
    v10 = *v2;
    LOBYTE(v11) = *(v2 + 17);
    if (v9 == 2)
    {
      if (_SwiftUIIsAppleInternalBuild())
      {
        do
        {
LABEL_12:
          v12 = static OSSignpostID.exclusive.getter();
          a2 = (a2)(v12);
          if (one-time initialization token for _signpostLog == -1)
          {
            if (v11)
            {
              goto LABEL_14;
            }
          }

          else
          {
            swift_once();
            if (v11)
            {
LABEL_14:

              v13 = v31;
              os_signpost(_:dso:log:name:signpostID:)();
              (*(v5 + 8))(v13, v38);
              return;
            }
          }

          v33 = v10;
          if (v10 == 20)
          {
            v14 = 3;
          }

          else
          {
            v14 = 4;
          }

          v11 = bswap32(v10) | (4 * WORD1(v10));
          v15 = v4;
          v32 = *(v5 + 16);
          v32(v39, v31, v38);
          v42 = 1;
          v41 = v14;
          v34 = v5 + 16;
          v36 = 16 * v14;
          v37 = (v5 + 8);

          v4 = 0;
          v35 = a2 + 32;
LABEL_20:
          v40 = &v31;
          MEMORY[0x1EEE9AC00](v16);
          v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
          v19 = v18 + 8;
          v20 = v41;
          v21 = v18 + 8;
          do
          {
            *(v21 - 1) = 0;
            *v21 = 0;
            v21 += 16;
            --v20;
          }

          while (v20);
          v10 = v35 + 40 * v4;
          v5 = v41;
          while (1)
          {
            v22 = *(a2 + 16);
            if (v4 == v22)
            {
              v42 = 0;
LABEL_28:
              v25 = v33;
              if (v33 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              if (v18[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v18[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v18[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v25 != 20 && v18[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v26 = v38;
              v27 = *v37;
              v28 = v39;
              (*v37)(v39, v38);
              v29 = __swift_project_value_buffer(v26, static OSSignpostID.continuation);
              v16 = (v32)(v28, v29, v26);
              if ((v42 & 1) == 0)
              {

                v30 = v38;
                v27(v39, v38);
                v27(v31, v30);

                return;
              }

              goto LABEL_20;
            }

            if (v4 >= v22)
            {
              break;
            }

            ++v4;
            outlined init with copy of AnyTrackedValue(v10, v43);
            v23 = v44;
            __swift_project_boxed_opaque_existential_1(v43, v44);
            *(v19 - 1) = CVarArg.kdebugValue(_:)(v11 | v15, v23);
            *v19 = v24 & 1;
            v19 += 16;
            __swift_destroy_boxed_opaque_existential_1(v43);
            v10 += 40;
            if (!--v5)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_44:
          swift_once();
LABEL_9:
          ;
        }

        while ((OS_os_log.signpostsEnabled.getter() & 1) != 0);
      }
    }

    else if (*(v2 + 17))
    {
      static os_signpost_type_t.event.getter();
      if (kdebug_is_enabled())
      {
        if (one-time initialization token for _signpostLog != -1)
        {
          goto LABEL_44;
        }

        goto LABEL_9;
      }
    }

    else
    {
      static os_signpost_type_t.event.getter();
      if (kdebug_is_enabled())
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t CVarArg.kdebugValue(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = *(v4 + 16);
  v9(v22 - v10, v2, a2, v8);
  if (swift_dynamicCast())
  {
    v12 = v22[2];
    v11 = v22[3];
    if (one-time initialization token for moduleName != -1)
    {
      swift_once();
    }

    if (v12 == static Signpost.moduleName && v11 == unk_1EAB19AD0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v14 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    if (*(v14 + 16) == 1)
    {
      v15 = *(v14 + 32);

      return v15;
    }

    (v9)(v6, v2, a2);
    v17 = String.init<A>(describing:)();
    v11 = v18;
    if (one-time initialization token for moduleName != -1)
    {
      v21 = v17;
      swift_once();
      v17 = v21;
    }

    if (v17 == static Signpost.moduleName && v11 == unk_1EAB19AD0)
    {
      goto LABEL_19;
    }

    v12 = v17;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
LABEL_19:

    return 0;
  }

  v20 = specialized String.withCString<A>(_:)(v12, v11);

  return v20;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return kdebug_trace_string();
  }

  type metadata accessor for (arg: UInt64, destroy: Bool)();
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t one-time initialization function for continuation()
{
  v0 = type metadata accessor for OSSignpostID();
  __swift_allocate_value_buffer(v0, static OSSignpostID.continuation);
  __swift_project_value_buffer(v0, static OSSignpostID.continuation);
  return OSSignpostID.init(_:)();
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Signpost(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 19))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
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

uint64_t storeEnumTagSinglePayload for Signpost(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Signpost.Style(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
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

uint64_t storeEnumTagSinglePayload for Signpost.Style(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 17) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Signpost.Level and conformance Signpost.Level()
{
  result = lazy protocol witness table cache variable for type Signpost.Level and conformance Signpost.Level;
  if (!lazy protocol witness table cache variable for type Signpost.Level and conformance Signpost.Level)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Signpost.Level and conformance Signpost.Level);
  }

  return result;
}

uint64_t partial apply for closure #1 in String.kdebugValue(_:)@<X0>(uint64_t a1@<X8>)
{
  result = kdebug_trace_string();
  *a1 = result;
  *(a1 + 8) = 1;
  return result;
}

void type metadata accessor for (arg: UInt64, destroy: Bool)()
{
  if (!lazy cache variable for type metadata for (arg: UInt64, destroy: Bool))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (arg: UInt64, destroy: Bool));
    }
  }
}

uint64_t Text.textVariant<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3;
  v12 = a4;
  (*(a6 + 8))(a5, a6);
  v8 = type metadata accessor for _TextVariantPreference();
  return _TextVariantPreference.body<A>(_:)(v10, v8, &type metadata for Text, &protocol witness table for Text, a7);
}

uint64_t _TextVariantPreference.body<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a2;
  v31 = a1;
  v33 = a5;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ModifiedContent();
  v29 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  v19 = type metadata accessor for _ConditionalContent();
  v32 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - v21;
  if (*(v30 + 16) == &type metadata for SizeDependentTextVariant)
  {
    View.modifier<A>(_:)(v20, a3, &type metadata for VariantThatFitsModifier);
    v34 = a4;
    v35 = &protocol witness table for VariantThatFitsModifier;
    WitnessTable = swift_getWitnessTable();
    static ViewBuilder.buildExpression<A>(_:)(v15, v13, WitnessTable);
    v31 = v19;
    v25 = *(v29 + 8);
    v25(v15, v13);
    static ViewBuilder.buildExpression<A>(_:)(v18, v13, WitnessTable);
    v25(v18, v13);
    static ViewBuilder.buildEither<A, B>(first:)(v15, v13, v22);
    v25(v15, v13);
    v19 = v31;
  }

  else
  {
    static ViewBuilder.buildExpression<A>(_:)(v31, a3, a4);
    static ViewBuilder.buildExpression<A>(_:)(v12, a3, a4);
    v23 = *(v7 + 8);
    v23(v12, a3);
    v40 = a4;
    v41 = &protocol witness table for VariantThatFitsModifier;
    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(second:)(v9, a3, v22);
    v23(v9, a3);
  }

  v38 = a4;
  v39 = &protocol witness table for VariantThatFitsModifier;
  v36 = swift_getWitnessTable();
  v37 = a4;
  v26 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v22, v19, v26);
  return (*(v32 + 8))(v22, v19);
}

void TextSizeVariant.nextUp.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = v2 - 1;
    if (!__OFSUB__(v2, 1))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v3 = 0;
LABEL_6:
  *a1 = v3;
  *(a1 + 8) = v2 == 0;
}

void TextSizeVariant.nextDown.getter(void *a1@<X8>)
{
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = *v1 + 1;
  }
}

uint64_t TextSizeVariant.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TextSizeVariant.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TextSizeVariant@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance TextSizeVariant(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t type metadata completion function for SizeFittingTextCache()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t StickyTextSizeFittingLogic.suggestedVariant(for:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 41))
  {
    goto LABEL_2;
  }

  v3 = *(v2 + 8);
  v5 = *(v2 + 32);
  v6 = *(result + 16);
  if (*v2)
  {
    if (*(v2 + 1))
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v7 = *result;
  if (*(result + 8))
  {
    v7 = INFINITY;
  }

  if (*(v2 + 24))
  {
    v8 = 0;
    if ((*(v2 + 1) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = v7 > *(v2 + 16);
    if (!(v8 | *(v2 + 1) & 1))
    {
LABEL_10:
      if (*(result + 24))
      {
        v6 = INFINITY;
      }

      if (*(v2 + 40))
      {
        v5 = INFINITY;
      }

      if (v6 > v5)
      {
        goto LABEL_2;
      }

LABEL_18:
      v4 = 0;
      goto LABEL_19;
    }
  }

  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_2:
  v3 = 0;
  v4 = 1;
LABEL_19:
  *a2 = v3;
  *(a2 + 8) = v4;
  return result;
}

BOOL _ProposedSize.fits(into:ignoreHorizontalAxis:ignoreVerticalAxis:)(uint64_t a1, char a2, char a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(v3 + 16);
  if (a2)
  {
    if (a3)
    {
      return 1;
    }

LABEL_11:
    if (*(v3 + 24))
    {
      v6 = INFINITY;
    }

    if (v5)
    {
      v4 = INFINITY;
    }

    return v6 <= v4;
  }

  v8 = *v3;
  if (*(v3 + 8))
  {
    v8 = INFINITY;
  }

  if (*(a1 + 8))
  {
    result = 1;
  }

  else
  {
    v9 = v8 > *a1;
    result = v8 <= *a1;
    if (v9)
    {
      return result;
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

Swift::Void __swiftcall StickyTextSizeFittingLogic.onInvalidation(of:)(SwiftUI::TextSizeVariant of)
{
  if ((*(v1 + 41) & 1) == 0 && *of.rawValue == *(v1 + 8))
  {
    *(v1 + 40) = 0;
    *(v1 + 24) = 0u;
    *(v1 + 8) = 0u;
    *(v1 + 41) = 1;
  }
}

uint64_t SizeFittingTextCache.CacheEntry.init(resolver:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SizeFittingTextCache.CacheEntry();
  v7 = *(v6 + 52);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for SizeFittingTextCacheValue();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  *(a3 + *(v6 + 56)) = 0;
  return (*(*(a2 - 8) + 32))(a3, a1, a2);
}

uint64_t SizeFittingTextCache.CacheEntry.withValue<A>(for:onChange:execute:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(char *)@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a4;
  v9 = v8;
  v27 = a7;
  v24 = a8;
  v25 = a5;
  v22 = a3;
  v23 = a2;
  v12 = a6[4];
  v13 = a6[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v22 - v16;
  v19 = *(v18 + 48);
  v20 = SizeFittingTextCache.CacheEntry.result(for:)(&v22 - v16, a1, a6);
  v17[v19] = v20 & 1;
  if (v20)
  {
    v23(v20);
  }

  v26(v17);
  $defer #1 <A, B><A1>() in SizeFittingTextCache.CacheEntry.withValue<A>(for:onChange:execute:)(v9, v17, v13, a6[3], v27, v12, a6[5]);
  return (*(v15 + 8))(v17, TupleTypeMetadata2);
}

uint64_t SizeFittingTextCache.CacheEntry.result(for:)(char *a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v35 = a1;
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for SizeFittingTextCacheValue();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = *(v7 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v36 = a3;
  v17 = *(a3 + 52);
  (*(v9 + 16))(v11, v3 + v17, v8, v14);
  v18 = (*(v12 + 48))(v11, 1, v7);
  v32 = v6;
  v34 = v8;
  if (v18 == 1)
  {
    v19 = v5;
    v20 = v33;
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v31 = v9;
    v21 = v6;
    v22 = v36;
    v30 = *(v12 + 32);
    v30(v16, v11, v7);
    v23 = *(v3 + *(v22 + 56));
    v24 = v33;
    v19 = v5;
    if (((*(v5 + 32))(v33, v23, v21, v5) & 1) == 0)
    {
      v27 = v35;
      v30(v35, v16, v7);
      v25 = v27;
      v26 = 0;
      v9 = v31;
      goto LABEL_7;
    }

    v20 = v24;
    (*(v12 + 8))(v16, v7);
    v9 = v31;
  }

  v25 = v35;
  (*(v19 + 40))(v20, v32, v19);
  v26 = 1;
LABEL_7:
  (*(v9 + 8))(v3 + v17, v34);
  (*(v12 + 16))(v3 + v17, v25, v7);
  (*(v12 + 56))(v3 + v17, 0, 1, v7);
  *(v3 + *(v36 + 56)) = 0;
  return v26;
}

uint64_t $defer #1 <A, B><A1>() in SizeFittingTextCache.CacheEntry.withValue<A>(for:onChange:execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for SizeFittingTextCacheValue();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  v18 = *(v12 - 8);
  (*(v18 + 16))(&v21 - v16, a2, v12, v15);
  (*(v18 + 56))(v17, 0, 1, v12);
  v23 = a3;
  v24 = a4;
  v25 = a6;
  v26 = a7;
  v19 = type metadata accessor for SizeFittingTextCache.CacheEntry();
  return (*(v14 + 40))(v22 + *(v19 + 52), v17, v13);
}

uint64_t SizeFittingTextCache.CacheEntry.narrowerVariant.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v9 + 32) + 48))(v5, *(v9 + 32), v6);
  result = SizeFittingTextCache.CacheEntry.init(resolver:)(v8, v5, a2);
  *(a2 + *(a1 + 56)) = *(v2 + *(a1 + 56));
  return result;
}

uint64_t specialized SizeFittingTextCache.input.setter(__int128 *a1, char a2)
{
  v16 = *a1;
  v17 = a1[1];
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  if (a2)
  {
    swift_beginAccess();
    v6 = v2[5];
    v7 = v6[2];
    if (v7)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[5] = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_10:
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      }

      for (i = 0; i != v7; ++i)
      {
        if (i >= v6[2])
        {
          __break(1u);
          goto LABEL_10;
        }

        type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
        *(v6 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * i + *(v10 + 56)) = 1;
      }

      v2[5] = v6;
      swift_endAccess();
    }
  }

  swift_beginAccess();
  v11 = v2[12];
  v12 = v2[13];
  v13 = v2[14];
  v14 = v2[15];
  *(v2 + 6) = v16;
  *(v2 + 7) = v17;
  v2[16] = v3;
  v2[17] = v4;
  v2[18] = v5;
  outlined consume of Text?(v11, v12, v13, v14);
}

uint64_t specialized SizeFittingTextCache.input.setter(uint64_t a1, char a2)
{
  type metadata accessor for (value: ResolvableStringResolutionContext, changed: Bool)();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24[-v10];
  outlined init with take of ResolvableStringResolutionContext(a1, &v24[-v10], type metadata accessor for ResolvableStringResolutionContext);
  v11[*(v6 + 56)] = a2;
  outlined init with copy of ResolvedTextHelper(v11, v8, type metadata accessor for (value: ResolvableStringResolutionContext, changed: Bool));
  v12 = v8[*(v6 + 56)];
  outlined destroy of ResolvableStringResolutionContext(v8, type metadata accessor for ResolvableStringResolutionContext);
  if (v12 == 1)
  {
    swift_beginAccess();
    v13 = v2[5];
    v14 = v13[2];
    if (v14)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[5] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_16:
        v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      }

      v16 = v13[2];
      v17 = v14 - 1;
      if (v16 < v14 - 1)
      {
        v17 = v13[2];
      }

      if (v17 > 1)
      {
        v18 = v17 & 0x7FFFFFFFFFFFFFFELL;
        v19 = v13 + 15;
        v20 = v18;
        do
        {
          *(v19 - 48) = 1;
          *v19 = 1;
          v19 += 96;
          v20 -= 2;
        }

        while (v20);
      }

      else
      {
        v18 = 0;
      }

      v21 = 48 * v18 + 72;
      do
      {
        if (v18 >= v16)
        {
          __break(1u);
          goto LABEL_16;
        }

        ++v18;
        *(v13 + v21) = 1;
        v21 += 48;
      }

      while (v14 != v18);
      v2[5] = v13;
      swift_endAccess();
    }
  }

  outlined init with take of ResolvableStringResolutionContext(v11, v8, type metadata accessor for (value: ResolvableStringResolutionContext, changed: Bool));
  v22 = *(*v2 + 144);
  swift_beginAccess();
  outlined assign with take of ResolvableStringResolutionContext(v8, v2 + v22);
  return swift_endAccess();
}

uint64_t SizeFittingTextCache.withValue<A>(for:compute:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 8);
  v10 = a1[2];
  v11 = *(a1 + 24);
  v13 = *a1;
  v14 = v9;
  v15 = v10;
  v16 = v11;
  SizeFittingTextCache.sizeVariant(for:)(&v13, &v17);
  return SizeFittingTextCache.withValue<A>(for:onChange:compute:)(&v17, _ViewInputs.base.modify, 0, a2, a3, a4, a5);
}

uint64_t SizeFittingTextCache.sizeVariant(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *a1;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  result = SizeFittingTextCache.suggestedVariant(for:)(&v8, &v12);
  if (v13)
  {
    MEMORY[0x1EEE9AC00](result);
    swift_beginAccess();
    LOBYTE(v12) = v4;
    specialized ClosestFitCache.callAsFunction(for:makeValue:)(v3, v4, v5, v6, partial apply for closure #1 in SizeFittingTextCache.sizeVariant(for:), a2);
    return swift_endAccess();
  }

  else
  {
    *a2 = v12;
  }

  return result;
}

uint64_t closure #1 in SizeFittingTextCache.sizeVariant(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t *a7@<X8>)
{
  v34 = a7;
  v10 = *a2;
  v11 = *a1;
  v12 = *(a1 + 8);
  v37 = *(*a2 + 80);
  v39 = v37;
  v36 = v10[11];
  v40 = v36;
  v35 = v10[12];
  v41 = v35;
  v13 = v10[13];
  v42 = v13;
  v43 = a3;
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  v44 = a4 & 1;
  v45 = a5;
  v46 = a6 & 1;
  v47[0] = v14;
  result = SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v47, _ViewInputs.base.modify, 0, partial apply for closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), v38, MEMORY[0x1E69E6370], v49);
  if (v49[0] == 1)
  {
    if (v14 >= 1)
    {
      do
      {
        v14 = v11;
        if (!v11)
        {
          break;
        }

        --v11;
        MEMORY[0x1EEE9AC00](result);
        v26 = v37;
        v27 = v36;
        v28 = v35;
        v29 = v13;
        v30 = a3;
        v31 = a4 & 1;
        v32 = a5;
        v33 = a6 & 1;
        v47[0] = v11;
        result = SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v47, _ViewInputs.base.modify, 0, partial apply for closure #2 in closure #1 in SizeFittingTextCache.sizeVariant(for:), v25, MEMORY[0x1E69E6370], v49);
      }

      while ((v49[0] & 1) != 0);
    }

    *v34 = v14;
  }

  else
  {
    v18 = __OFADD__(v14, 1);
    v19 = v14 + 1;
    if (v18)
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v50 = v19;
      swift_beginAccess();
      while (1)
      {
        v20 = specialized getter of narrowerVariantsMightExist #1 in closure #1 in SizeFittingTextCache.sizeVariant(for:)(&v50, a2);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v19 = v50;
        MEMORY[0x1EEE9AC00](v20);
        v26 = v37;
        v27 = v36;
        v28 = v35;
        v29 = v13;
        v30 = a3;
        v31 = a4 & 1;
        v32 = a5;
        v33 = a6 & 1;
        v47[0] = v19;
        result = SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v47, _ViewInputs.base.modify, 0, partial apply for closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), v25, MEMORY[0x1E69E6370], v48);
        if (v48[0])
        {
          break;
        }

        v18 = __OFADD__(v19++, 1);
        if (v18)
        {
          __break(1u);
          goto LABEL_21;
        }

        v50 = v19;
      }

      swift_beginAccess();
      v21 = a2[5];

      v47[0] = v37;
      v47[1] = v36;
      v47[2] = v35;
      v47[3] = v13;
      v22 = type metadata accessor for SizeFittingTextCache.CacheEntry();
      v23 = MEMORY[0x193ABF270](v21, v22);

      v24 = v23 - 1;
      if (__OFSUB__(v23, 1))
      {
        goto LABEL_22;
      }

      if (v24 >= v19)
      {
        v24 = v19;
      }

      *v34 = v24;
    }
  }

  return result;
}

uint64_t specialized SizeFittingTextCacheValue.fits(_:)(unint64_t a1, char a2, unint64_t a3, char a4, __n128 a5, __n128 a6)
{
  v7 = v6;
  v8 = a4;
  v11 = *&a1;
  v12 = *v6;
  v13 = *(v6 + 24);
  if (!v13)
  {
    if (a2)
    {
      if (a4)
      {
        swift_beginAccess();
        goto LABEL_29;
      }

      a5.n128_u64[0] = 0x7FF0000000000000;
    }

    else
    {
      a5.n128_u64[0] = a1;
      if (a4)
      {
        a6.n128_u64[0] = 0x7FF0000000000000;
        goto LABEL_11;
      }
    }

    a6.n128_u64[0] = a3;
LABEL_11:
    v53 = 0u;
    v54 = 0u;
    v55 = 1;
    (*(*v12 + 264))(v43, &v53, a5, a6);
    if (v44)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v45 = *v6;
  v14 = *(*v13 + 112);

  LOBYTE(v43[0]) = a2 & 1;
  LOBYTE(v53) = v8 & 1;
  v14(*&v11);
  v45 = *&v12;
  v56.origin.x = (*(*v13 + 104))(&v45);
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;
  v19 = CGRectGetWidth(v56);
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v20.n128_u64[0] = CGRectGetHeight(v57);
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  (*(*v12 + 264))(v43, &v53, v19, v20);

  if (v44)
  {
LABEL_3:
    v21 = 0;
    return v21 & 1;
  }

LABEL_12:
  swift_beginAccess();
  if (v12[97])
  {
    if (v8)
    {
      goto LABEL_29;
    }

    v23 = *(v6 + 8);
    v22 = *(v6 + 16);
    if (v22)
    {
      v45 = *(v7 + 8);
      v24 = *(*v22 + 112);

      LOBYTE(v50) = a2 & 1;
      v24(*&v11);
      v26 = v25;

      if (v26 <= *&a3)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v45 = v11;
      v46 = a2 & 1;
      v47 = 0;
      v48 = 1;
      (*(*v23 + 232))(&v45);
      v26 = v33;
      if (v33 <= *&a3)
      {
        goto LABEL_29;
      }
    }

    v34 = v26 + -1.0;
    v32 = v26 + -1.0;
    v31 = (a2 & 1) != 0;
    goto LABEL_25;
  }

  v21 = 1;
  if ((a2 & 1) == 0)
  {
    v27 = v11;
    v28 = *(v7 + 8);
    v29 = *(v7 + 16);
    v45 = 0.0;
    v46 = 1;
    v47 = a3;
    v48 = v8 & 1;
    StyledTextLayoutEngine.sizeThatFits(_:)(&v45, v28, v29);
    if (v30 > v11)
    {
      v11 = v30 + -1.0;
      if (v30 + -1.0 > v27)
      {
        v31 = 0;
        v32 = *&a3;
        goto LABEL_27;
      }

      if (v8)
      {
        return v21 & 1;
      }

      v31 = 0;
      v34 = *&a3;
      v32 = *&a3;
LABEL_25:
      if (v34 > *&a3)
      {
        v8 = 0;
LABEL_27:
        if (v13)
        {
          v45 = *&v12;
          v35 = *(*v13 + 112);

          LOBYTE(v50) = v31;
          v35(*&v11, v31, *&v32, v8 & 1, &v45);
          v45 = *&v12;
          v58.origin.x = (*(*v13 + 104))(&v45);
          v36 = v58.origin.x;
          v37 = v58.origin.y;
          v38 = v58.size.width;
          v39 = v58.size.height;
          v40 = CGRectGetWidth(v58);
          v59.origin.x = v36;
          v59.origin.y = v37;
          v59.size.width = v38;
          v59.size.height = v39;
          v41.n128_u64[0] = CGRectGetHeight(v59);
          v50 = 0u;
          v51 = 0u;
          v52 = 1;
          (*(*v12 + 264))(&v45, &v50, v40, v41);
        }

        else
        {
          if (v31 && (v8 & 1) != 0)
          {
            v21 = 1;
            return v21 & 1;
          }

          v50 = 0u;
          v51 = 0u;
          v52 = 1;
          (*(*v12 + 264))(&v45, &v50);
        }

        v21 = v49 ^ 1;
        return v21 & 1;
      }

LABEL_29:
      v21 = 1;
    }
  }

  return v21 & 1;
}

uint64_t SizeFittingTextCacheValue.fits(_:)(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v17 = *a1;
  v18 = v7 & 1;
  v19 = v8;
  v20 = v9;
  if (SizeFittingTextCacheValue.truncates(in:)(&v17, a2, a3, a4))
  {
    v10 = 0;
    return v10 & 1;
  }

  v12 = v6;
  v13 = *v4;
  swift_beginAccess();
  if (*(v13 + 97))
  {
    v10 = 1;
    if ((v9 & 1) == 0)
    {
      v17 = v12;
      v18 = v7 & 1;
      v19 = 0.0;
      v20 = 1;
      v14.n128_f64[0] = (*(*(a2 + 24) + 48))(&v17, 1, *(a2 + 16));
      if (v14.n128_f64[0] > v8)
      {
        v15.n128_u64[0] = -1.0;
        v14.n128_f64[0] = v14.n128_f64[0] + -1.0;
        if (v7)
        {
          v16 = 1;
          if (v14.n128_f64[0] <= v8)
          {
            return v10 & 1;
          }
        }

        else
        {
          v16 = 0;
          if (v14.n128_f64[0] <= v8)
          {
            return v10 & 1;
          }
        }

        v9 = 0;
LABEL_16:
        v17 = v12;
        v18 = v16;
        v19 = v14.n128_f64[0];
        v20 = v9;
        v10 = SizeFittingTextCacheValue.truncates(in:)(&v17, a2, v14, v15) ^ 1;
      }
    }
  }

  else
  {
    v10 = 1;
    if ((v7 & 1) == 0)
    {
      v17 = 0.0;
      v18 = 1;
      v19 = v8;
      v20 = v9;
      v14.n128_f64[0] = (*(*(a2 + 24) + 48))(&v17, 0, *(a2 + 16));
      if (v14.n128_f64[0] > v12)
      {
        v15.n128_f64[0] = v14.n128_f64[0] + -1.0;
        if (v14.n128_f64[0] + -1.0 > v12)
        {
          v16 = 0;
          v12 = v14.n128_f64[0] + -1.0;
          v14.n128_f64[0] = v8;
          goto LABEL_16;
        }
      }
    }
  }

  return v10 & 1;
}

uint64_t specialized getter of narrowerVariantsMightExist #1 in closure #1 in SizeFittingTextCache.sizeVariant(for:)(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *a1;
  swift_beginAccess();
  v5 = *(a2 + 40);

  v6 = type metadata accessor for SizeFittingTextCache.CacheEntry();
  v7 = MEMORY[0x193ABF270](v5, v6);

  if (__OFSUB__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= v7 - 1)
    {
      v9 = *(a2 + 32) ^ 1;
    }

    else
    {
      v9 = 1;
    }

    return v9 & 1;
  }

  return result;
}

char *specialized ClosestFitCache.callAsFunction(for:makeValue:)@<X0>(char *a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, unint64_t a8, char a9)
{
  LOBYTE(v10) = a9;
  return specialized ClosestFitCache.callAsFunction(for:makeValue:)(a1, a2, a3, a4, a5, a6, a7, a8, v10, partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:), partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:));
}

{
  LOBYTE(v10) = a9;
  return specialized ClosestFitCache.callAsFunction(for:makeValue:)(a1, a2, a3, a4, a5, a6, a7, a8, v10, partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:), partial apply for specialized closure #2 in SizeFittingTextCache.suggestedVariant(for:), partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:));
}

char *specialized ClosestFitCache.callAsFunction(for:makeValue:)@<X0>(char *result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(double), uint64_t a12, uint64_t a13)
{
  v14 = a5[1];
  v15 = *(v14 + 16);
  v51 = (a5 + 1);
  v54 = v14;
  v46 = result;
  if (!v15)
  {
    v29 = 0;
    v45 = 0;
LABEL_46:
    v53 = 1;
LABEL_49:
    v30 = a11;
    v32 = MEMORY[0x1EEE9AC00](result);
    if ((a11)(v29, _ViewInputs.base.modify, 0, v32))
    {
      if (v29 >= 1)
      {
        v33 = v29 + 1;
        do
        {
          v29 = v33 - 1;
          if (v33 == 1)
          {
            break;
          }

          v34 = MEMORY[0x1EEE9AC00](v33 - 2);
          v35 = a11(v34);
          v33 = v29;
        }

        while ((v35 & 1) != 0);
      }

      if (v53)
      {
LABEL_55:
        v30 = v54;
        a8 = *(v54 + 16);
        goto LABEL_73;
      }
    }

    else
    {
      if (__OFADD__(v29++, 1))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v55 = v29;
      swift_beginAccess();
      v37 = swift_beginAccess();
      while (1)
      {
        v38 = *(*(a6 + 40) + 16) - 1;
        if (v29 >= v38 && (*(a6 + 32) & 1) != 0)
        {
          break;
        }

        v29 = v55;
        v39 = MEMORY[0x1EEE9AC00](v37);
        v37 = (a11)(v55, _ViewInputs.base.modify, 0, a13, v39);
        if (v37)
        {
          v38 = *(*(a6 + 40) + 16) - 1;
          break;
        }

        v29 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          __break(1u);
          goto LABEL_85;
        }

        ++v55;
      }

      if (v38 < v29)
      {
        v29 = v38;
      }

      if (v53)
      {
        goto LABEL_55;
      }
    }

    v30 = v54;
    if ((v45 & 0x8000000000000000) == 0)
    {
      a8 = *(v54 + 16);
      if (v45 < a8)
      {
        if (v29 == *(v54 + 40 * v45 + 64))
        {
          if (v45)
          {
            specialized MutableCollection.swapAt(_:_:)(v45, v45 - 1);
          }

          *&result = COERCE_DOUBLE();
          goto LABEL_83;
        }

LABEL_73:
        v40 = *a5;
        *&result = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
        if (a8 < v40)
        {
          if (result)
          {
LABEL_75:
            v42 = *(v30 + 2);
            v41 = *(v30 + 3);
            if (v42 >= v41 >> 1)
            {
              v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v30);
            }

            *(v30 + 2) = v42 + 1;
            v43 = &v30[40 * v42];
            *(v43 + 4) = v46;
            v43[40] = a2 & 1;
            *(v43 + 6) = a3;
            v43[56] = a4 & 1;
            *(v43 + 8) = v29;
            goto LABEL_82;
          }

LABEL_88:
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a8 + 1, 1, v30);
          goto LABEL_75;
        }

        if (result)
        {
          if (a8)
          {
            goto LABEL_80;
          }
        }

        else
        {
          *&result = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew()(v30));
          v30 = result;
          if (a8)
          {
LABEL_80:
            if (a8 <= *(v30 + 2))
            {
              v44 = &v30[40 * a8];
              *(v44 - 1) = v46;
              *v44 = a2 & 1;
              *(v44 + 1) = a3;
              v44[16] = a4 & 1;
              *(v44 + 3) = v29;
LABEL_82:
              *&result = COERCE_DOUBLE();
              *v51 = v30;
LABEL_83:
              *a7 = v29;
              return result;
            }

LABEL_91:
            __break(1u);
            goto LABEL_92;
          }
        }

        __break(1u);
        goto LABEL_91;
      }

LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v16 = 0;
  v17 = 0;
  if (a2)
  {
    v18 = INFINITY;
  }

  else
  {
    v18 = *&result;
  }

  v19 = (v14 + 56);
  v20 = 1;
  v21 = INFINITY;
  do
  {
    if (*(v19 - 16))
    {
      v22 = INFINITY;
    }

    else
    {
      v22 = *(v19 - 3);
    }

    if ((a2 & 1) == 0 && v22 > *&result)
    {
      goto LABEL_9;
    }

    if (*v19)
    {
      v23 = INFINITY;
    }

    else
    {
      v23 = *(v19 - 1);
    }

    if (a4)
    {
      v24 = INFINITY;
      if (v22 != INFINITY || v23 != INFINITY)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v23 > a3)
      {
        goto LABEL_9;
      }

      v28 = v22 == INFINITY && v23 == INFINITY;
      v24 = a3;
      if (!v28)
      {
LABEL_23:
        v26 = v18 - v22;
        v27 = v24 - v23;
        if (v27 < v26)
        {
          v26 = v27;
        }

        if (v26 >= v21)
        {
          goto LABEL_9;
        }

        goto LABEL_34;
      }
    }

    v26 = 0.0;
    if (v21 <= 0.0)
    {
      goto LABEL_9;
    }

LABEL_34:
    if (*(v19 - 2))
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v20 = 0;
      if ((a2 & 1) != 0 || *(v19 - 3) != *&result)
      {
        goto LABEL_8;
      }
    }

    if (*v19)
    {
      if (a4)
      {
        goto LABEL_42;
      }

LABEL_7:
      v20 = 0;
LABEL_8:
      v16 = v17;
      v21 = v26;
      goto LABEL_9;
    }

    v20 = 0;
    if (a4)
    {
      goto LABEL_8;
    }

    v16 = v17;
    v21 = v26;
    if (*(v19 - 1) == a3)
    {
LABEL_42:
      v16 = v17;
      goto LABEL_47;
    }

LABEL_9:
    ++v17;
    v19 += 5;
  }

  while (v15 != v17);
  if (v20)
  {
    v45 = v16;
    v29 = 0;
    goto LABEL_46;
  }

LABEL_47:
  if (v16 < v15)
  {
    v53 = 0;
    v45 = v16;
    v29 = *(v14 + 32 + 40 * v16 + 32);
    goto LABEL_49;
  }

LABEL_92:
  __break(1u);
  return result;
}

unint64_t specialized ClosestFitCache.callAsFunction(for:makeValue:)@<X0>(double a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, void *(*a5)(uint64_t *__return_ptr, uint64_t *)@<X4>, void *a6@<X8>)
{
  v13 = *(v6 + 8);
  v14 = *(v13 + 16);
  v41 = (v6 + 8);
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    if (a2)
    {
      v17 = INFINITY;
    }

    else
    {
      v17 = a1;
    }

    v18 = (v13 + 56);
    v19 = 1;
    v20 = INFINITY;
    while (1)
    {
      if (*(v18 - 16))
      {
        v21 = INFINITY;
      }

      else
      {
        v21 = *(v18 - 3);
      }

      if ((a2 & 1) == 0 && v21 > a1)
      {
        goto LABEL_9;
      }

      if (*v18)
      {
        v22 = INFINITY;
      }

      else
      {
        v22 = *(v18 - 1);
      }

      if (a4)
      {
        v23 = INFINITY;
        if (v21 != INFINITY || v22 != INFINITY)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v22 > a3)
        {
          goto LABEL_9;
        }

        v27 = v21 == INFINITY && v22 == INFINITY;
        v23 = a3;
        if (!v27)
        {
LABEL_23:
          v25 = v17 - v21;
          v26 = v23 - v22;
          if (v26 < v25)
          {
            v25 = v26;
          }

          if (v25 >= v20)
          {
            goto LABEL_9;
          }

          goto LABEL_34;
        }
      }

      v25 = 0.0;
      if (v20 <= 0.0)
      {
        goto LABEL_9;
      }

LABEL_34:
      if ((*(v18 - 2) & 1) == 0)
      {
        v19 = 0;
        if ((a2 & 1) != 0 || *(v18 - 3) != a1)
        {
          goto LABEL_8;
        }

LABEL_39:
        if ((*v18 & 1) == 0)
        {
          v19 = 0;
          if ((a4 & 1) == 0)
          {
            v15 = v16;
            v20 = v25;
            if (*(v18 - 1) == a3)
            {
              goto LABEL_46;
            }

            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a4)
        {
          goto LABEL_46;
        }

        goto LABEL_7;
      }

      if (a2)
      {
        goto LABEL_39;
      }

LABEL_7:
      v19 = 0;
LABEL_8:
      v15 = v16;
      v20 = v25;
LABEL_9:
      ++v16;
      v18 += 5;
      if (v14 == v16)
      {
        v16 = v15;
        if (v19)
        {
          break;
        }

LABEL_46:
        if (v16 >= v14)
        {
          __break(1u);
          goto LABEL_65;
        }

        v28 = v6;
        v40 = a1;
        v9 = a6;
        v30 = v13 + 32 + 40 * v16;
        v32 = *(v30 + 32);
        v31 = (v30 + 32);
        v42 = v32;
        v43 = 0;
        result = a5(&v44, &v42);
        if (v7)
        {
          return result;
        }

        v6 = *(v13 + 16);
        if (v16 >= v6)
        {
          goto LABEL_69;
        }

        v33 = *v31;
        if (v44 == v33)
        {
          if (v16)
          {
            result = specialized MutableCollection.swapAt(_:_:)(v16, v16 - 1);
          }

          goto LABEL_62;
        }

        v16 = *&a3;
        a1 = v40;
LABEL_53:
        if (v6 < *v28)
        {
          v8 = v44;
          result = swift_isUniquelyReferenced_nonNull_native();
          v39 = a1;
          if (result)
          {
LABEL_55:
            v35 = *(v13 + 16);
            v34 = *(v13 + 24);
            if (v35 >= v34 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v13);
              v13 = result;
            }

            *(v13 + 16) = v35 + 1;
            v36 = v13 + 40 * v35;
            *(v36 + 32) = v39;
            *(v36 + 40) = a2 & 1;
            *(v36 + 48) = v16;
            *(v36 + 56) = a4 & 1;
            *(v36 + 64) = v8;
            *v41 = v13;
            v33 = v44;
LABEL_62:
            *v9 = v33;
            return result;
          }

LABEL_65:
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 + 1, 1, v13);
          v13 = result;
          goto LABEL_55;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if (v6)
          {
LABEL_60:
            if (v6 <= *(v13 + 16))
            {
              v37 = v13 + 40 * v6;
              *(v37 - 8) = a1;
              *v37 = a2 & 1;
              *(v37 + 8) = v16;
              *(v37 + 16) = a4 & 1;
              v33 = v44;
              *(v37 + 24) = v44;
              *v41 = v13;
              goto LABEL_62;
            }

LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
            return result;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
          v13 = result;
          if (v6)
          {
            goto LABEL_60;
          }
        }

        __break(1u);
        goto LABEL_68;
      }
    }
  }

  v28 = v6;
  v16 = *&a3;
  v9 = a6;
  v42 = 0;
  v43 = 1;
  result = a5(&v44, &v42);
  if (!v7)
  {
    v6 = *(v13 + 16);
    goto LABEL_53;
  }

  return result;
}

uint64_t SizeFittingTextCache.suggestedVariant(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v44 = v5;
  v6 = v5[11];
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v33 - v9;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  v16 = *(v7 + 16);
  v41 = v5[17];
  v42 = v16;
  v43 = v7 + 16;
  (v16)(v33 - v9, &v3[v41], v6, v8);
  v48 = v12;
  v53 = v12;
  v47 = v13;
  v54 = v13;
  v46 = v14;
  v55 = v14;
  v45 = v15;
  v56 = v15;
  v17 = v5[13];
  v18 = v17[1];
  v18(&v51, &v53, v6, v17);
  v19 = *(v7 + 8);
  result = v19(v10, v6);
  v21 = v51;
  if (v52)
  {
    v22 = 1;
    goto LABEL_10;
  }

  v37 = v19;
  v38 = v18;
  v40 = a2;
  v23 = swift_allocObject();
  v39 = v33;
  *(v23 + 16) = 0;
  v53 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v24 = v44;
  v36 = v44[10];
  v33[-8] = v36;
  v33[-7] = v6;
  v35 = v24[12];
  v33[-6] = v35;
  v33[-5] = v17;
  v33[-4] = v48;
  LOBYTE(v33[-3]) = v47;
  v33[-2] = v46;
  LOBYTE(v33[-1]) = v45;

  v44 = v17;
  SizeFittingTextCache.withValue<A>(for:onChange:compute:)(&v53, partial apply for closure #1 in SizeFittingTextCache.suggestedVariant(for:), v23, partial apply for closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), &v33[-10], MEMORY[0x1E69E6370], &v51);

  v25 = v51;
  swift_beginAccess();
  if (*(v23 + 16) != 1)
  {

    if (!v25)
    {
      v21 = 0;
    }

    v22 = v25 ^ 1;
    goto LABEL_9;
  }

  v33[1] = 0;
  v39 = v23;
  v34 = v21;
  v42(v10, &v3[v41], v6);
  v53 = v48;
  v26 = v47;
  v54 = v47;
  v55 = v46;
  v27 = v45;
  v56 = v45;
  v28 = v44;
  v38(&v49, &v53, v6, v44);
  v29 = v37(v10, v6);
  v30 = v49;
  if (v50)
  {

    v22 = 1;
    v21 = v30;
LABEL_9:
    a2 = v40;
    goto LABEL_10;
  }

  a2 = v40;
  if (v49 == v34)
  {

    v22 = 0;
    v21 = v30;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v29);
    v33[-8] = v36;
    v33[-7] = v6;
    v33[-6] = v35;
    v33[-5] = v28;
    v33[-4] = v31;
    LOBYTE(v33[-3]) = v26;
    v33[-2] = v32;
    LOBYTE(v33[-1]) = v27;
    v53 = v30;
    SizeFittingTextCache.withValue<A>(for:onChange:compute:)(&v53, _ViewInputs.base.modify, 0, partial apply for closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), &v33[-10], MEMORY[0x1E69E6370], &v49);

    if (v49)
    {
      v21 = v30;
    }

    else
    {
      v21 = 0;
    }

    v22 = v49 ^ 1;
  }

LABEL_10:
  *a2 = v21;
  *(a2 + 8) = v22;
  return result;
}

uint64_t specialized closure #1 in SizeFittingTextCache.suggestedVariant(for:)(_BYTE *a1)
{
  result = swift_beginAccess();
  *a1 = 1;
  return result;
}

uint64_t closure #1 in closure #1 in SizeFittingTextCache.sizeVariant(for:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, char a4@<W4>, _BYTE *a5@<X8>)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for SizeFittingTextCacheValue();
  result = SizeFittingTextCacheValue.fits(_:)(&v10, v6, v7, v8);
  *a5 = result & 1;
  return result;
}

uint64_t SizeFittingTextCache.withValue<A>(for:onChange:compute:)@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v93 = a5;
  v75 = a4;
  v90 = a2;
  v91 = a3;
  v12 = *v8;
  v13 = *(*v8 + 96);
  v14 = *(*v8 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v95 = (&v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v73 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v73 - v19;
  v20 = *(v12 + 88);
  v92 = v14;
  *&v21 = v14;
  v89 = v20;
  *(&v21 + 1) = v20;
  v22 = v12;
  v23 = v13;
  *&v24 = v13;
  v88 = *(v22 + 104);
  *(&v24 + 1) = v88;
  v100 = v24;
  v99 = v21;
  v25 = type metadata accessor for SizeFittingTextCache.CacheEntry();
  v76 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v86 = &v73 - v29;
  v30 = *a1;
  swift_beginAccess();

  v32 = MEMORY[0x193ABF270](v31, v25);
  v33 = v30;

  if (v30 < v32)
  {
    v34 = *(*v8 + 144);
    swift_beginAccess();
    (*(v83 + 16))(v95, &v8[v34], AssociatedTypeWitness);
    v98[0] = v30;
    v35 = a6;
    v36 = onChange #1 <A, B><A1>(for:) in SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v98, v8, v90, v91, a6);
    v38 = v37;
    v94 = &v73;
    MEMORY[0x1EEE9AC00](v36);
    v39 = v89;
    *(&v73 - 8) = v92;
    *(&v73 - 7) = v39;
    *(&v73 - 6) = v35;
    *(&v73 - 5) = v40;
    v41 = v75;
    *(&v73 - 4) = v88;
    *(&v73 - 3) = v41;
    *(&v73 - 2) = v93;
    swift_beginAccess();
    v92 = type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    Array._checkSubscript_mutating(_:)(v30);
    v93 = v38;
    SizeFittingTextCache.CacheEntry.withValue<A>(for:onChange:execute:)(v95, v36, v38, partial apply for closure #1 in SizeFittingTextCache.withValue<A>(for:onChange:compute:), (&v73 - 10), v25, v35, a7);
    (*(v83 + 8))(v95, AssociatedTypeWitness);
    _ViewInputs.base.modify(v92, v42);
LABEL_14:
    swift_endAccess();
  }

  v84 = *(*v8 + 144);
  swift_beginAccess();
  v43 = v8[32];
  v73 = a7;
  v85 = v23;
  if (v43)
  {
LABEL_11:
    v45 = v93;
  }

  else
  {
    v44 = (v76 + 8);
    v80 = (v83 + 16);
    v79 = (v83 + 8);
    v77 = (v76 + 16);
    v45 = v93;
    v78 = v33;
    v82 = a6;
    v81 = (v76 + 8);
    v46 = v87;
    do
    {
      getter of currentVariant #1 in SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v8, v98);
      if (v98[0] >= v33)
      {
        break;
      }

      result = getter of currentVariant #1 in SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v8, v98);
      v48 = v98[0] + 1;
      if (__OFADD__(v98[0], 1))
      {
        __break(1u);
        goto LABEL_16;
      }

      v49 = a6;
      getter of currentVariant #1 in SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v8, v98);

      Array.subscript.getter();

      v50 = v86;
      SizeFittingTextCache.CacheEntry.narrowerVariant.getter(v25, v86);
      v95 = *v44;
      (v95)(v27, v25);
      v51 = AssociatedTypeWitness;
      (*v80)(v46, &v8[v84], AssociatedTypeWitness);
      v98[0] = v48;
      v52 = onChange #1 <A, B><A1>(for:) in SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v98, v8, v90, v91, v49);
      v54 = v53;
      v94 = &v73;
      MEMORY[0x1EEE9AC00](v52);
      v55 = v89;
      *(&v73 - 6) = v92;
      *(&v73 - 5) = v55;
      v56 = v85;
      *(&v73 - 4) = v49;
      *(&v73 - 3) = v56;
      *(&v73 - 2) = v88;
      v57 = v101;
      SizeFittingTextCache.CacheEntry.withValue<A>(for:onChange:execute:)(v46, v58, v54, partial apply for closure #2 in SizeFittingTextCache.withValue<A>(for:onChange:compute:), (&v73 - 8), v25, MEMORY[0x1E69E6370], v98);
      (*v79)(v46, v51);

      v101 = v57;
      if ((v98[0] & 1) == 0)
      {
        (v95)(v50, v25);
        v8[32] = 1;
        a6 = v82;
        goto LABEL_11;
      }

      (*v77)(v27, v50, v25);
      swift_beginAccess();
      type metadata accessor for Array();
      Array.append(_:)();
      swift_endAccess();
      v44 = v81;
      (v95)(v50, v25);
      a6 = v82;
      v45 = v93;
      v33 = v78;
    }

    while (v8[32] != 1);
  }

  v60 = MEMORY[0x193ABF270](v59, v25);

  v61 = v60 - 1;
  if (!__OFSUB__(v60, 1))
  {
    v62 = v84;
    swift_beginAccess();
    v63 = v74;
    (*(v83 + 16))(v74, &v8[v62], AssociatedTypeWitness);
    v97[0] = v61;
    v64 = onChange #1 <A, B><A1>(for:) in SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v97, v8, v90, v91, a6);
    v94 = &v73;
    v95 = v64;
    MEMORY[0x1EEE9AC00](v64);
    v65 = a6;
    v67 = v66;
    v68 = v89;
    *(&v73 - 8) = v92;
    *(&v73 - 7) = v68;
    v69 = v85;
    *(&v73 - 6) = v65;
    *(&v73 - 5) = v69;
    v70 = v75;
    *(&v73 - 4) = v88;
    *(&v73 - 3) = v70;
    *(&v73 - 2) = v45;
    swift_beginAccess();
    v71 = type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    Array._checkSubscript_mutating(_:)(v61);
    v93 = v67;
    SizeFittingTextCache.CacheEntry.withValue<A>(for:onChange:execute:)(v63, v95, v67, partial apply for closure #3 in SizeFittingTextCache.withValue<A>(for:onChange:compute:), (&v73 - 10), v25, v65, v73);
    (*(v83 + 8))(v63, AssociatedTypeWitness);
    _ViewInputs.base.modify(v71, v72);
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t (*onChange #1 <A, B><A1>(for:) in SizeFittingTextCache.withValue<A>(for:onChange:compute:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *a1;
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a2;
  v10[4] = v9;
  v10[5] = a3;
  v10[6] = a4;

  return partial apply for closure #1 in onChange #1 <A, B><A1>(for:) in SizeFittingTextCache.withValue<A>(for:onChange:compute:);
}

uint64_t getter of currentVariant #1 in SizeFittingTextCache.withValue<A>(for:onChange:compute:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 40);

  v5 = type metadata accessor for SizeFittingTextCache.CacheEntry();
  v6 = MEMORY[0x193ABF270](v4, v5);

  if (__OFSUB__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = v6 - 1;
  }

  return result;
}

uint64_t *SizeFittingTextCache.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));
  v2 = *(*v0 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);
  return v0;
}

uint64_t SizeFittingTextCache.__deallocating_deinit()
{
  SizeFittingTextCache.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Text, VariantThatFitsModifier>, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Text, VariantThatFitsModifier>, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Text, VariantThatFitsModifier>, Text> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<Text, VariantThatFitsModifier>, Text>();
    lazy protocol witness table accessor for type ModifiedContent<Text, VariantThatFitsModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Text, VariantThatFitsModifier>, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<ModifiedContent<Text, VariantThatFitsModifier>, Text>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Text, VariantThatFitsModifier>, Text>)
  {
    type metadata accessor for ModifiedContent<Text, VariantThatFitsModifier>();
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Text, VariantThatFitsModifier>, Text>);
    }
  }
}

void type metadata accessor for ModifiedContent<Text, VariantThatFitsModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Text, VariantThatFitsModifier>)
  {
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Text, VariantThatFitsModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, VariantThatFitsModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, VariantThatFitsModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, VariantThatFitsModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Text, VariantThatFitsModifier>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, VariantThatFitsModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata completion function for SizeFittingTextCache.CacheEntry()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for SizeFittingTextCacheValue();
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SizeFittingTextCache.CacheEntry(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64) + 7;
  v13 = ((v12 + ((v11 + 8) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v11 | 7 | *(v6 + 80);
  if (v14 == 7 && ((*(v6 + 80) | *(v9 + 80)) & 0x100000) == 0 && ((v13 + (((v11 | 7) + v7) & ~(v11 | 7))) | 1) <= 0x18)
  {
    v27 = AssociatedTypeWitness;
    (*(v6 + 16))(a1, a2, v5);
    v18 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v10 & 0x80000000) != 0)
    {
      v22 = (*(v9 + 48))((v19 + v11 + 8) & ~v11, v10, v27);
      v21 = ~v11;
      if (v22)
      {
LABEL_14:
        memcpy(((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8), v19, ((v12 + ((v11 + 8) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_17:
        *(v18 + v13) = *(v19 + v13);
        return a1;
      }
    }

    else
    {
      v20 = *v19;
      if (*v19 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      v21 = ~v11;
      if (v20 != -1)
      {
        goto LABEL_14;
      }
    }

    *v18 = *v19;
    v23 = (v18 + v11 + 8) & v21;
    v24 = (v19 + v11 + 8) & v21;
    v25 = *(v9 + 16);

    v25(v23, v24, v27);
    *((v12 + v23) & 0xFFFFFFFFFFFFFFF8) = *((v12 + v24) & 0xFFFFFFFFFFFFFFF8);

    goto LABEL_17;
  }

  v17 = *a2;
  *a1 = *a2;
  a1 = (v17 + ((v14 + 16) & ~v14));

  return a1;
}

uint64_t destroy for SizeFittingTextCache.CacheEntry(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = *(v3 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = ((v4 + a1 + (v7 | 7)) & ~(v7 | 7));
  v9 = ~v7;
  if ((*(v6 + 84) & 0x80000000) != 0)
  {
    result = (*(v6 + 48))((v8 + v7 + 8) & v9);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v10 = *v8;
  if (*v8 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  result = (v10 + 1);
  if (v10 == -1)
  {
LABEL_7:

    (*(v6 + 8))((v8 + v7 + 8) & v9, AssociatedTypeWitness);
  }

  return result;
}

uint64_t initializeWithCopy for SizeFittingTextCache.CacheEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = ~v9;
  v14 = v9 + 8;
  v15 = *(v8 + 64) + 7;
  v16 = (v15 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8;
  if ((*(v8 + 84) & 0x80000000) == 0)
  {
    v17 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v16 + 8;
    if (v17 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v11 = *v12;
    v19 = (v11 + v14) & v13;
    v20 = (v12 + v14) & v13;
    v21 = *(v8 + 16);

    v21(v19, v20, AssociatedTypeWitness);
    *((v15 + v19) & 0xFFFFFFFFFFFFFFF8) = *((v15 + v20) & 0xFFFFFFFFFFFFFFF8);

    goto LABEL_8;
  }

  v18 = v16 + 8;
  if (!(*(v8 + 48))((v12 + v14) & v13))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v11, v12, v18);
LABEL_8:
  *(v11 + v18) = *(v12 + v18);
  return a1;
}

uint64_t assignWithCopy for SizeFittingTextCache.CacheEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = ~v9;
  v15 = v9 + 8;
  v16 = *(v8 + 64) + 7;
  v17 = ((v16 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if ((v13 & 0x80000000) != 0)
  {
    v32 = ((v16 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v20 = *(v8 + 48);
    v31 = v20((v11 + v15) & v14, v13, AssociatedTypeWitness);
    v19 = v20((v12 + v15) & v14, v13, AssociatedTypeWitness);
    v17 = v32;
    if (!v31)
    {
LABEL_5:
      if (!v19)
      {
        *v11 = *v12;

        v25 = (v11 + v15) & v14;
        v26 = v12 + v15;
        v27 = v17;
        v28 = v26 & v14;
        (*(v8 + 24))(v25, v26 & v14, AssociatedTypeWitness);
        v29 = v16 + v28;
        v17 = v27;
        *((v16 + v25) & 0xFFFFFFFFFFFFFFF8) = *(v29 & 0xFFFFFFFFFFFFFFF8);

        goto LABEL_12;
      }

      (*(v8 + 8))((v11 + v15) & v14, AssociatedTypeWitness);

      goto LABEL_9;
    }
  }

  else
  {
    v18 = *v12;
    if (*v12 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v18) = -1;
    }

    v19 = v18 + 1;
    if (*v11 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v19)
  {
    *v11 = *v12;
    v21 = (v11 + v15) & v14;
    v33 = v17;
    v22 = (v12 + v15) & v14;
    v23 = *(v8 + 16);

    v23(v21, v22, AssociatedTypeWitness);
    v24 = v16 + v22;
    v17 = v33;
    *((v16 + v21) & 0xFFFFFFFFFFFFFFF8) = *(v24 & 0xFFFFFFFFFFFFFFF8);

    goto LABEL_12;
  }

LABEL_9:
  memcpy(v11, v12, v17);
LABEL_12:
  *(v11 + v17) = *(v12 + v17);
  return a1;
}

uint64_t initializeWithTake for SizeFittingTextCache.CacheEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = ~v9;
  v14 = v9 + 8;
  v15 = *(v8 + 64) + 7;
  v16 = (v15 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8;
  if ((*(v8 + 84) & 0x80000000) == 0)
  {
    v17 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v16 + 8;
    if (v17 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v11 = *v12;
    v19 = (v11 + v14) & v13;
    v20 = (v12 + v14) & v13;
    (*(v8 + 32))(v19, v20, AssociatedTypeWitness);
    *((v15 + v19) & 0xFFFFFFFFFFFFFFF8) = *((v15 + v20) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_8;
  }

  v18 = v16 + 8;
  if (!(*(v8 + 48))((v12 + v14) & v13))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v11, v12, v18);
LABEL_8:
  *(v11 + v18) = *(v12 + v18);
  return a1;
}

uint64_t assignWithTake for SizeFittingTextCache.CacheEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = ~v9;
  v15 = v9 + 8;
  v16 = *(v8 + 64) + 7;
  v17 = ((v16 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if ((v13 & 0x80000000) != 0)
  {
    v27 = ((v16 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v20 = *(v8 + 48);
    v26 = v20((v11 + v15) & v14, v13, AssociatedTypeWitness);
    v19 = v20((v12 + v15) & v14, v13, AssociatedTypeWitness);
    v17 = v27;
    if (!v26)
    {
LABEL_5:
      if (!v19)
      {
        *v11 = *v12;

        v23 = (v11 + v15) & v14;
        v24 = (v12 + v15) & v14;
        (*(v8 + 40))(v23, v24, AssociatedTypeWitness);
        *((v16 + v23) & 0xFFFFFFFFFFFFFFF8) = *((v16 + v24) & 0xFFFFFFFFFFFFFFF8);

        goto LABEL_12;
      }

      (*(v8 + 8))((v11 + v15) & v14, AssociatedTypeWitness);

      goto LABEL_9;
    }
  }

  else
  {
    v18 = *v12;
    if (*v12 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v18) = -1;
    }

    v19 = v18 + 1;
    if (*v11 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v19)
  {
    *v11 = *v12;
    v21 = (v11 + v15) & v14;
    v22 = (v12 + v15) & v14;
    (*(v8 + 32))(v21, v22, AssociatedTypeWitness);
    *((v16 + v21) & 0xFFFFFFFFFFFFFFF8) = *((v16 + v22) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v11, v12, v17);
LABEL_12:
  *(v11 + v17) = *(v12 + v17);
  return a1;
}

uint64_t getEnumTagSinglePayload for SizeFittingTextCache.CacheEntry(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = v12 - 1;
  if (v12 - 1 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v12 - 1;
  }

  v15 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v16 = v15 | 7;
  v17 = v15 + 8;
  v18 = (v15 | 7) + *(v6 + 64);
  if (a2 <= v14)
  {
    goto LABEL_23;
  }

  v19 = (v18 & ~v16) + ((*(*(AssociatedTypeWitness - 8) + 64) + (v17 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v20 = 8 * v19;
  if (v19 > 3)
  {
    goto LABEL_10;
  }

  v23 = (a2 - v14 + ~(-1 << v20)) >> v20;
  if (v23 > 0xFFFE)
  {
    v21 = *&a1[v19];
    if (!v21)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v23 > 0xFE)
  {
    v21 = *&a1[v19];
    if (!*&a1[v19])
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v23)
  {
LABEL_10:
    v21 = a1[v19];
    if (!a1[v19])
    {
      goto LABEL_23;
    }

LABEL_18:
    v24 = (v21 - 1) << v20;
    if (v19 <= 3)
    {
      v25 = *a1;
    }

    else
    {
      v24 = 0;
      v25 = *a1;
    }

    return v14 + (v25 | v24) + 1;
  }

LABEL_23:
  if (v7 >= v13)
  {
    v29 = *(v6 + 48);

    return v29(a1, v7, v5);
  }

  else
  {
    v26 = (&a1[v18] & ~v16);
    if ((v11 & 0x80000000) != 0)
    {
      v28 = (*(v10 + 48))((v26 + v17) & ~v15);
    }

    else
    {
      v27 = *v26;
      if (*v26 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      v28 = v27 + 1;
    }

    if (v28 >= 2)
    {
      return v28 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for SizeFittingTextCache.CacheEntry(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = v13 - 1;
  if (v13 - 1 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v13 - 1;
  }

  v16 = ((*(v10 + 64) + ((v12 + 8) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = (v12 | 7) + *(v8 + 64);
  v18 = (v16 + (v17 & ~(v12 | 7))) | 1;
  if (a3 <= v15)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = (a3 - v15 + ~(-1 << (8 * v18))) >> (8 * v18);
    if (v22 > 0xFFFE)
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0xFF)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v15 >= a2)
  {
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        *&a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      *&a1[v18] = 0;
    }

    else if (v19)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

LABEL_33:
    if (v9 >= v14)
    {
      v26 = *(v30 + 56);

      v26(a1, a2, v9, v7);
    }

    else
    {
      v24 = (&a1[v17] & ~(v12 | 7));
      if (v14 >= a2)
      {
        v27 = (a2 + 1);
        if ((v11 & 0x80000000) != 0)
        {
          v29 = *(v10 + 56);

          v29((v24 + v12 + 8) & ~v12, v27);
        }

        else
        {
          if ((v27 & 0x80000000) != 0)
          {
            v28 = (a2 - 0x7FFFFFFF);
          }

          else
          {
            v28 = a2;
          }

          *v24 = v28;
        }
      }

      else if (v16)
      {
        v25 = a2 - v13;
        bzero(v24, v16);
        *v24 = v25;
      }
    }

    return;
  }

  v20 = ~v15 + a2;
  if (v18 <= 3)
  {
    v21 = (v20 >> (8 * v18)) + 1;
    bzero(a1, v18);
    *a1 = v20 & ~(-1 << (8 * v18));
    if (v19 > 1)
    {
LABEL_14:
      if (v19 == 2)
      {
        *&a1[v18] = v21;
      }

      else
      {
        *&a1[v18] = v21;
      }

      return;
    }
  }

  else
  {
    bzero(a1, (v16 + (v17 & ~(v12 | 7))) | 1);
    *a1 = v20;
    v21 = 1;
    if (v19 > 1)
    {
      goto LABEL_14;
    }
  }

  if (v19)
  {
    a1[v18] = v21;
  }
}

uint64_t type metadata completion function for SizeFittingTextCacheValue()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SizeFittingTextCacheValue(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((v7 + ((v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = (a1 + v6 + 8) & ~v6;
    v13 = (a2 + v6 + 8) & ~v6;
    v14 = *(v5 + 16);

    v14(v12, v13, v4);
    *((v7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((v7 + v13) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for SizeFittingTextCacheValue(uint64_t a1, uint64_t a2)
{

  (*(*(*(a2 + 16) - 8) + 8))((a1 + *(*(*(a2 + 16) - 8) + 80) + 8) & ~*(*(*(a2 + 16) - 8) + 80));
}

void *initializeWithCopy for SizeFittingTextCacheValue(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 16);
  v6 = *(v4 - 8) + 16;
  v7 = *(*(v4 - 8) + 80);
  v8 = (a1 + v7 + 8) & ~v7;
  v9 = (a2 + v7 + 8) & ~v7;

  v5(v8, v9, v4);
  *((*(v6 + 48) + 7 + v8) & 0xFFFFFFFFFFFFFFF8) = *((*(v6 + 48) + 7 + v9) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void *assignWithCopy for SizeFittingTextCacheValue(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;
  (*(v6 + 24))(v9, v10);
  *((*(v7 + 40) + 7 + v9) & 0xFFFFFFFFFFFFFFF8) = *((*(v7 + 40) + 7 + v10) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void *initializeWithTake for SizeFittingTextCacheValue(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 8) & ~v6;
  v8 = (a2 + v6 + 8) & ~v6;
  (*(v4 + 32))(v7, v8);
  *((*(v5 + 32) + 7 + v7) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + v8) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for SizeFittingTextCacheValue(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;
  (*(v6 + 40))(v9, v10);
  *((*(v7 + 24) + 7 + v9) & 0xFFFFFFFFFFFFFFF8) = *((*(v7 + 24) + 7 + v10) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for SizeFittingTextCacheValue(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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

void *storeEnumTagSinglePayload for SizeFittingTextCacheValue(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
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
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (result + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t static SizeFittingTextCache.Variants.Index.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = v3 ^ 1u;
  if ((v3 & 1) == 0 && (*(a2 + 8) & 1) == 0)
  {
    return *a1 < *a2;
  }

  return result;
}

uint64_t static SizeFittingTextCache.Variants.Index.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t SizeFittingTextCache.Variants.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Swift::Int a3@<X2>, Swift::Int a4@<X3>, Swift::Int a5@<X4>, Swift::Int a6@<X5>, uint64_t a7@<X8>)
{
  if (*(a1 + 8))
  {
    goto LABEL_10;
  }

  v8 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v14 = *(a2 + 40);

  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v15 = type metadata accessor for SizeFittingTextCache.CacheEntry();
  v16 = MEMORY[0x193ABF270](v14, v15);

  if (v8 >= v16 && ((*(a2 + 32) & 1) != 0 || (MEMORY[0x1EEE9AC00](result), v20[2] = a3, v20[3] = a4, v20[4] = a5, v20[5] = a6, v21[0] = v8, SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v21, _ViewInputs.base.modify, 0, _ViewInputs.base.modify, v20, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]), v18 = , v19 = MEMORY[0x193ABF270](v18, v15), result = , v8 >= v19)))
  {
    *a7 = 0;
    *(a7 + 8) = 1;
  }

  else
  {
    *a7 = v8;
    *(a7 + 8) = 0;
  }

  return result;
}

uint64_t SizeFittingTextCache.Variants.subscript.getter(uint64_t a1)
{
  if (*(a1 + 8))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v1 = *a1;
    MEMORY[0x1EEE9AC00](a1);
    v8[2] = v2;
    v8[3] = v3;
    v8[4] = v4;
    v8[5] = v5;
    v6 = type metadata accessor for ResolvedStyledText();
    v10 = v1;
    SizeFittingTextCache.withValue<A>(for:onChange:compute:)(&v10, _ViewInputs.base.modify, 0, closure #1 in DynamicTextView.TextManager.resolve(in:for:), v8, v6, &v9);
    return v9;
  }

  return result;
}

void (*protocol witness for Collection.subscript.read in conformance SizeFittingTextCache<A, B>.Variants(uint64_t **a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = SizeFittingTextCache.Variants.subscript.read(v4, a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance SizeFittingTextCache<A, B>.Variants;
}

void protocol witness for Collection.subscript.read in conformance SizeFittingTextCache<A, B>.Variants(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t (*SizeFittingTextCache.Variants.subscript.read(uint64_t *a1, uint64_t *a2))()
{
  v2 = *(a2 + 8);
  v4 = *a2;
  v5 = v2;
  *a1 = SizeFittingTextCache.Variants.subscript.getter(&v4);
  return destroy for Image.ResizableProvider;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance SizeFittingTextCache<A, B>.Variants(uint64_t a1, Swift::Int *a2)
{
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return SizeFittingTextCache.Variants.index(after:)(&v5, *v2, a2[2], a2[3], a2[4], a2[5], a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance SizeFittingTextCache<A, B>.Variants(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance SizeFittingTextCache<A, B>.Variants()
{
  swift_getWitnessTable();

  return Collection._copyToContiguousArray()();
}

uint64_t SizeFittingTextCacheValue.truncates(in:)(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(v4 + *(a2 + 40));
  if (!v9)
  {
    v18 = *v4;
    if (v6)
    {
      if (*(a1 + 24))
      {
        return 0;
      }

      a3.n128_u64[0] = 0x7FF0000000000000;
    }

    else
    {
      a3.n128_u64[0] = *a1;
      if (*(a1 + 24))
      {
        a4.n128_u64[0] = 0x7FF0000000000000;
LABEL_10:
        v22 = 0u;
        v23 = 0u;
        v24 = 1;
        (*(*v18 + 264))(v20, &v22, a3, a4);
        return v21;
      }
    }

    a4.n128_u64[0] = *(a1 + 16);
    goto LABEL_10;
  }

  v20[0] = *v4;
  v10 = v20[0];
  v11 = *(*v9 + 112);

  LOBYTE(v22) = v6;
  v11(v5, v6, v7, v8, v20);
  v20[0] = v10;
  v25.origin.x = (*(*v9 + 104))(v20);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v16 = CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v17.n128_u64[0] = CGRectGetHeight(v26);
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  (*(*v10 + 264))(v20, &v22, v16, v17);

  return v21;
}

uint64_t protocol witness for SizeFittingTextResolver.value(for:) in conformance ResolvedTextHelper@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 48);
  v10 = *(a1 + 32);
  result = ResolvedTextHelper.resolve(_:with:sizeFitting:)(v3, v4, v5, v6, &v10, 1);
  if (result)
  {
    v9 = result;

    outlined copy of Text?(v3, v4, v5, v6);

    outlined consume of Text?(v3, v4, v5, v6);
    outlined copy of Text?(v3, v4, v5, v6);

    result = outlined consume of Text?(v3, v4, v5, v6);
    *a2 = v9;
    a2[1] = v9;
    a2[2] = v7;
    a2[3] = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for SizeFittingTextResolver.narrowerVariant.getter in conformance ResolvedTextHelper@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = outlined init with copy of ResolvedTextHelper(v2, a2, type metadata accessor for ResolvedTextHelper);
  v6 = *(a1 + 64);
  v7 = *(a2 + v6);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(a2 + v6) = v9;
    PropertyList.Tracker.reset()();
    outlined consume of Text?(a2[6], a2[7], a2[8], a2[9]);
    *(a2 + 3) = 0u;
    *(a2 + 4) = 0u;
    v10 = *(a1 + 60);
    outlined destroy of ResolvableStringResolutionContext(a2 + v10, type metadata accessor for ResolvedTextHelper.NextUpdate);
    *(a2 + v10) = 0;
    type metadata accessor for ResolvedTextHelper.NextUpdate(0);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance VariantThatFitsModifier(uint64_t a1, uint64_t *a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA19VariantThatFitsFlagV_Tt2g5(a2, 1);
}

Swift::Void __swiftcall SizeFittingTextFilter.updateValue()()
{
  v78 = *MEMORY[0x1E69E9840];
  type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v58 - v3;
  v5 = *(v0 + 16);
  v64 = v0;
  LODWORD(v62) = *v0;
  Value = AGGraphGetValue();
  v7 = Value[1];
  v76 = *Value;
  v77 = v7;
  ViewSize.proposal.getter(&v73);
  v8 = v73;
  v9 = BYTE8(v73);
  v10 = *&v74;
  v11 = BYTE8(v74);
  LOBYTE(v68) = BYTE8(v73);
  v72 = BYTE8(v74);
  specialized SizeFittingTextCache.suggestedVariant(for:)(v73, SBYTE8(v73), v74, BYTE8(v74), &v70);
  if (BYTE8(v70))
  {
    swift_beginAccess();

    LOBYTE(v68) = v9;
    v72 = v11;
    LOBYTE(v57) = v11;
    specialized ClosestFitCache.callAsFunction(for:makeValue:)(v8, v9, v10, v11, (v5 + 16), v5, &v68, *&v10, v57, partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:), partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:));
    swift_endAccess();
    v12 = v68;
  }

  else
  {
    v12 = v70;
    *&v68 = v70;
  }

  *&v76 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v12, _ViewInputs.base.modify, 0, closure #1 in SizeFittingTextFilter.updateValue(), 0);
  v63 = type metadata accessor for ResolvedStyledText();
  AGGraphSetOutputValue();

  v13 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v12, _ViewInputs.base.modify, 0, closure #1 in closure #2 in SizeFittingTextFilter.updateValue(), 0);

  v14 = v12;
  if ((v13 & 1) == 0)
  {
    while (v14)
    {
      v15 = __OFSUB__(v14--, 1);
      if (v15)
      {
        goto LABEL_96;
      }

      v13 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v14, _ViewInputs.base.modify, 0, closure #1 in closure #2 in SizeFittingTextFilter.updateValue(), 0);

      if (v13)
      {
        goto LABEL_10;
      }
    }

    v14 = v12;
  }

LABEL_10:
  swift_beginAccess();
  v16 = *(v5 + 40);
  v17 = *(v16 + 16);
  if (v14 >= v17)
  {
    goto LABEL_13;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    v13 = v5;
    specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v14, _ViewInputs.base.modify, 0, _ViewInputs.base.modify, 0, v16);
    v16 = *(v5 + 40);
    v17 = *(v16 + 16);
  }

  if (v14 >= v17)
  {
    goto LABEL_100;
  }

  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v2 = *(v2 + 72) * v14;
  outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v16 + v11 + v2, v4);
  type metadata accessor for ResolvedTextHelper(0);
  ResolvedTextHelper.NextUpdate.time()();
  if ((BYTE8(v76) & 1) == 0)
  {
    v18 = *&v76;
    if (*AGGraphGetValue() < v18)
    {
      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      v19 = swift_dynamicCastClassUnconditional();
      swift_beginAccess();
      v20 = *(v19 + 376);
      if (v18 < v20)
      {
        v20 = v18;
      }

      *(v19 + 376) = v20;
    }
  }

  swift_beginAccess();
  v13 = *(v5 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 40) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_101;
  }

  while (1)
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    outlined assign with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v4, v13 + v11 + v2);
    *(v5 + 40) = v13;
    swift_endAccess();
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v4);
    v22 = AGGraphGetValue();
    v23 = v22[1];
    v76 = *v22;
    v77 = v23;
    v13 = &v76;
    ViewSize.proposal.getter(&v73);
    v24 = v73;
    v25 = BYTE8(v73);
    v26 = v74;
    v27 = BYTE8(v74);
    *(v5 + 56) = v14;
    *(v5 + 64) = v24;
    *(v5 + 72) = v25;
    *(v5 + 80) = v26;
    *(v5 + 88) = v27;
    if (*(v64 + 12) != 1)
    {
      return;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_103;
    }

    if (!v12)
    {
      break;
    }

    v11 = 0;
    LOBYTE(v28) = 0;
    while (1)
    {
      if (v28)
      {
        goto LABEL_119;
      }

      v15 = __OFADD__(v11++, 1);
      if (v15)
      {
        break;
      }

      if (v11 < *(*(v5 + 40) + 16))
      {
        v28 = 0;
      }

      else
      {
        v29 = *(v5 + 32);
        if (v29 == 1)
        {
          v11 = 0;
          v28 = 1;
        }

        else
        {
          v13 = v5;
          specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v11, _ViewInputs.base.modify, 0, _ViewInputs.base.modify, 0, v29);
          v30 = *(*(v5 + 40) + 16);
          v28 = v11 >= v30;
          if (v11 >= v30)
          {
            v11 = 0;
          }
        }
      }

      if (!--v12)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    *(v5 + 40) = v13;
  }

  v11 = 0;
  v28 = 0;
LABEL_37:
  OutputValue = AGGraphGetOutputValue();
  if (!OutputValue)
  {
    __break(1u);
    goto LABEL_116;
  }

  v32 = *OutputValue;
  specialized Collection.subscript.getter(v11, v28, v5, &v76);
  v33 = v32;

  specialized Collection.dropFirst(_:)(1, &v73);
  v2 = v73;
  v12 = BYTE8(v73);
  v62 = v74;
  v13 = v75;
  v67 = BYTE8(v73);
  LODWORD(v64) = BYTE8(v74);
  v66 = BYTE8(v74);
  swift_beginAccess();
  if (v12)
  {
    goto LABEL_72;
  }

  v61 = v2;
  while (2)
  {
    v60 = v33;
    v4 = v67;
    v14 = v66;
    while (2)
    {
      v34 = v64;
      if (v2 != v62)
      {
        v34 = 1;
      }

      if ((v34 & 1) == 0)
      {
        goto LABEL_73;
      }

      if (v4)
      {
        goto LABEL_114;
      }

      if (v2 < v61)
      {
        goto LABEL_97;
      }

      if (v2 < v62)
      {
        v35 = 1;
      }

      else
      {
        v35 = v14;
      }

      if (v35 != 1)
      {
        goto LABEL_99;
      }

      v36 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v2, _ViewInputs.base.modify, 0, closure #1 in SizeFittingTextFilter.updateValue(), 0);
      v15 = __OFADD__(v2++, 1);
      if (v15)
      {
        goto LABEL_98;
      }

      if (v2 < *(*(v13 + 40) + 16))
      {
        v12 = 0;
        if ((*(v36 + 260) & 0x200) != 0)
        {
          goto LABEL_62;
        }

        goto LABEL_60;
      }

      v37 = *(v13 + 32);
      if (v37 == 1)
      {
        v2 = 0;
        v12 = 1;
        if ((*(v36 + 260) & 0x200) != 0)
        {
          goto LABEL_62;
        }

LABEL_60:

        if (v12)
        {
          goto LABEL_72;
        }

        continue;
      }

      break;
    }

    v38 = v36;
    specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v2, _ViewInputs.base.modify, 0, _ViewInputs.base.modify, 0, v37);
    v36 = v38;
    v39 = *(*(v13 + 40) + 16);
    v12 = v2 >= v39;
    if (v2 >= v39)
    {
      v2 = 0;
    }

    if ((*(v36 + 260) & 0x200) == 0)
    {
      goto LABEL_60;
    }

LABEL_62:
    v65 = v12;
    v40 = v36;
    swift_beginAccess();
    v59 = v40;

    v12 = v60;
    v41 = objc_getAssociatedObject(v60, &smallerSizeVariantKey);
    swift_endAccess();
    if (v41)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v70 = 0u;
      v71 = 0u;
    }

    v73 = v70;
    v74 = v71;
    if (*(&v71 + 1))
    {
      if (swift_dynamicCast())
      {
        swift_beginAccess();

        objc_setAssociatedObject(v42, &largerSizeVariantKey, 0, 0);
        swift_endAccess();
      }
    }

    else
    {
      outlined destroy of Any?(&v73);
    }

    swift_beginAccess();
    v33 = v59;

    objc_setAssociatedObject(v12, &smallerSizeVariantKey, v33, 0x301);
    swift_endAccess();

    swift_beginAccess();

    objc_setAssociatedObject(v43, &largerSizeVariantKey, v12, 0);
    swift_endAccess();

    if ((v65 & 1) == 0)
    {
      continue;
    }

    break;
  }

LABEL_72:
  if ((v64 & 1) == 0)
  {
LABEL_118:
    __break(1u);
LABEL_119:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

LABEL_73:

  v14 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(0, _ViewInputs.base.modify, 0, closure #1 in SizeFittingTextFilter.updateValue(), 0);

  v44 = v11 >= 0 || v28;
  if (v44 != 1)
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
  }

  LOBYTE(v73) = 0;
  LOBYTE(v70) = v28;
  specialized Collection<>.subscript.getter(0, 0, v11, v28, v5, &v73);
  v11 = specialized Sequence.filter(_:)(&v73);
  v45 = AGGraphGetOutputValue();
  if (!v45)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  if ((*(*v45 + 260) & 0x200) == 0)
  {
    v11 = specialized Sequence.dropLast(_:)(1, v11);
  }

  if (v11 >> 62)
  {
LABEL_104:
    v46 = __CocoaSet.count.getter();
    if (!v46)
    {
      goto LABEL_105;
    }

LABEL_82:
    if (v46 >= 1)
    {
      v47 = 0;
      v64 = v11 & 0xC000000000000001;
      do
      {
        v49 = v14;
        if (v64)
        {
          v14 = MEMORY[0x193AC03C0](v47, v11);
        }

        else
        {
          v14 = *(v11 + 8 * v47 + 32);
        }

        swift_beginAccess();
        v50 = objc_getAssociatedObject(v14, &largerSizeVariantKey);
        swift_endAccess();
        if (v50)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v68 = 0u;
          v69 = 0u;
        }

        v70 = v68;
        v71 = v69;
        if (*(&v69 + 1))
        {
          if (swift_dynamicCast())
          {
            swift_beginAccess();

            objc_setAssociatedObject(v51, &smallerSizeVariantKey, 0, 0);
            swift_endAccess();
          }
        }

        else
        {
          outlined destroy of Any?(&v70);
        }

        ++v47;
        swift_beginAccess();

        objc_setAssociatedObject(v14, &largerSizeVariantKey, v49, 0x301);
        swift_endAccess();

        swift_beginAccess();

        objc_setAssociatedObject(v48, &smallerSizeVariantKey, v14, 0);
        swift_endAccess();
      }

      while (v46 != v47);
      goto LABEL_105;
    }

    __break(1u);
    goto LABEL_113;
  }

  v46 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v46)
  {
    goto LABEL_82;
  }

LABEL_105:

  v52 = AGGraphGetOutputValue();
  if (!v52)
  {
    goto LABEL_117;
  }

  v53 = *v52;
  if (v14 != *v52)
  {

    v54 = ResolvedStyledText.largerSizeVariant.getter(&largerSizeVariantKey);
    if (v54)
    {
      v55 = v54;
      swift_beginAccess();
      objc_setAssociatedObject(v55, &smallerSizeVariantKey, 0, 0);
      swift_endAccess();
    }

    swift_beginAccess();

    objc_setAssociatedObject(v53, &largerSizeVariantKey, v14, 0x301);
    swift_endAccess();

    swift_beginAccess();

    objc_setAssociatedObject(v56, &smallerSizeVariantKey, v53, 0);
    swift_endAccess();
  }
}

BOOL closure #1 in closure #2 in SizeFittingTextFilter.updateValue()@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(*a1 + 216))
  {
    result = NSAttributedString.isDynamic.getter();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

size_t specialized Sequence.filter(_:)(uint64_t a1)
{
  v13 = MEMORY[0x1E69E7CC0];
  v1 = *(a1 + 32);
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = swift_beginAccess();
  if ((v3 & 1) == 0)
  {
    v7 = v2;
    do
    {
      while (1)
      {
        if ((v5 & 1) == 0 && v7 == v4)
        {
          goto LABEL_3;
        }

        if (v7 < v2)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if ((v5 & 1) == 0 && v7 >= v4)
        {
          goto LABEL_25;
        }

        result = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v7, _ViewInputs.base.modify, 0, closure #1 in SizeFittingTextFilter.updateValue(), 0);
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_24;
        }

        v9 = result;
        if (v7 < *(*(v1 + 40) + 16))
        {
          break;
        }

        v11 = *(v1 + 32);
        if (v11 == 1)
        {
          v7 = 0;
          v10 = 1;
          if ((*(result + 260) & 0x200) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v7, _ViewInputs.base.modify, 0, _ViewInputs.base.modify, 0, v11);
          v12 = *(*(v1 + 40) + 16);
          v10 = v7 >= v12;
          if (v7 >= v12)
          {
            v7 = 0;
          }

          if ((*(v9 + 260) & 0x200) == 0)
          {
            goto LABEL_21;
          }
        }

LABEL_5:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = specialized ContiguousArray._endMutation()();
        if (v10)
        {
          goto LABEL_2;
        }
      }

      v10 = 0;
      if ((*(result + 260) & 0x200) != 0)
      {
        goto LABEL_5;
      }

LABEL_21:
    }

    while (!v10);
  }

LABEL_2:
  if (v5)
  {
LABEL_3:

    return v13;
  }

  else
  {
LABEL_26:
    __break(1u);
  }

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
            v7 = MEMORY[0x193AC03C0](v6, v2);
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
  v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v14, 0);
  specialized Array._copyContents(initializing:)(v12 + 32, v15, v2);
  v17 = v16;

  if (v17 != v15)
  {
    __break(1u);
    goto LABEL_36;
  }

  return v12;
}

uint64_t ResolvedStyledText.smallerSizeVariant.setter(void *a1, const void *a2, const void *a3)
{
  v7 = ResolvedStyledText.largerSizeVariant.getter(a2);
  if (v7)
  {
    v8 = v7;
    swift_beginAccess();
    objc_setAssociatedObject(v8, a3, 0, 0);
    swift_endAccess();
  }

  swift_beginAccess();

  objc_setAssociatedObject(v3, a2, a1, 0x301);
  swift_endAccess();

  if (a1)
  {
    swift_beginAccess();

    objc_setAssociatedObject(v10, a3, v3, 0);
    swift_endAccess();
  }

  return result;
}

Swift::Void __swiftcall SizeFittingTextLayoutComputer.updateValue()()
{
  Value = AGGraphGetValue();
  v16 = v1;
  v2 = *Value;
  v3 = *(Value + 8);
  v4 = *(Value + 16);
  v5 = *(Value + 24);

  outlined copy of Text.Storage(v2, v3, v4);
  v6 = AGGraphGetValue();
  v8 = v7;
  v9 = *v6;
  v10 = v6[1];
  type metadata accessor for TextRendererBoxBase();

  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v12 = *WeakValue;
  }

  else
  {
    v12 = 0;
  }

  outlined copy of Text.Storage(v2, v3, v4);
  *&v17 = v2;
  *(&v17 + 1) = v3;
  v18 = v4;
  v19 = v5;
  v20 = v9;
  v21 = v10;
  v22 = v12;

  specialized SizeFittingTextCache.input.setter(&v17, (v16 | v8) & 1);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](CurrentAttribute);
    MEMORY[0x1EEE9AC00](v14);
    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v15, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));

    outlined consume of Text.Storage(v2, v3, v4);
  }
}

uint64_t SizeFittingTextLayoutComputer.Engine.layoutPriority()()
{
  result = AGGraphWithUpdate();
  __break(1u);
  return result;
}

uint64_t closure #1 in SizeFittingTextLayoutComputer.Engine.layoutPriority()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = 0;
  v11 = 1;
  v12 = 0;
  v13 = 1;
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a6;
  v9[5] = a7;
  result = SizeFittingTextCache.withValue<A>(for:compute:)(&v10, partial apply for closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.layoutPriority(), v9, MEMORY[0x1E69E63B0], &v14);
  *a1 = v14;
  *(a1 + 8) = 0;
  return result;
}

void closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.layoutPriority()(double *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue();
  *a1 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.ignoresAutomaticPadding()@<X0>(_BYTE *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue();
  result = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  *a1 = result & 1;
  return result;
}

uint64_t SizeFittingTextLayoutComputer.Engine.ignoresAutomaticPadding()()
{
  result = AGGraphWithUpdate();
  __break(1u);
  return result;
}

uint64_t closure #1 in SizeFittingTextLayoutComputer.Engine.ignoresAutomaticPadding()(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  v12 = 1;
  v13 = 0;
  v14 = 1;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v10[5] = a7;
  result = SizeFittingTextCache.withValue<A>(for:compute:)(&v11, a8, v10, MEMORY[0x1E69E6370], &v15);
  *a1 = v15;
  return result;
}

uint64_t closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.requiresSpacingProjection()@<X0>(_BYTE *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue();
  result = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  *a1 = result & 1;
  return result;
}

uint64_t SizeFittingTextLayoutComputer.Engine.spacing()()
{
  result = AGGraphWithUpdate();
  __break(1u);
  return result;
}

uint64_t closure #1 in SizeFittingTextLayoutComputer.Engine.spacing()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v10 = 1;
  v11 = 0;
  v12 = 1;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;

  SizeFittingTextCache.withValue<A>(for:compute:)(&v9, partial apply for closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.spacing(), v8, &type metadata for Spacing, &v13);

  *a1 = v13;
}

uint64_t closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.spacing()()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue();
  return (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t SizeFittingTextLayoutComputer.Engine.sizeThatFits(_:)()
{
  result = AGGraphWithUpdate();
  __break(1u);
  return result;
}

double closure #1 in SizeFittingTextLayoutComputer.Engine.sizeThatFits(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v14[2] = a7;
  v14[3] = a8;
  v14[4] = a9;
  v14[5] = a10;
  v14[6] = a3;
  v15 = a4 & 1;
  v16 = a5;
  v17 = a6 & 1;
  type metadata accessor for CGSize(0);
  v12 = v11;

  SizeFittingTextCache.withValue<A>(for:compute:)(&v18, partial apply for closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.sizeThatFits(_:), v14, v12, &v22);

  result = *&v22;
  *a1 = v22;
  *(a1 + 16) = 0;
  return result;
}

void closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.sizeThatFits(_:)(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue();
  *a5 = (*(AssociatedConformanceWitness + 40))(&v9, AssociatedTypeWitness, AssociatedConformanceWitness);
  *(a5 + 8) = v8;
}

uint64_t SizeFittingTextLayoutComputer.Engine.lengthThatFits(_:in:)()
{
  result = AGGraphWithUpdate();
  __break(1u);
  return result;
}

uint64_t closure #1 in SizeFittingTextLayoutComputer.Engine.lengthThatFits(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, char a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v12[2] = a8;
  v13 = a9;
  v14 = a10;
  v15 = a3;
  v16 = a4 & 1;
  v17 = a5;
  v18 = a6 & 1;
  v19 = a7 & 1;

  SizeFittingTextCache.withValue<A>(for:compute:)(&v20, partial apply for closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.lengthThatFits(_:in:), v12, MEMORY[0x1E69E7DE0], &v24);

  *a1 = v24;
  *(a1 + 8) = 0;
  return result;
}

void closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.lengthThatFits(_:in:)(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, char a4@<W4>, char a5@<W5>, double *a6@<X8>)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue();
  *a6 = (*(AssociatedConformanceWitness + 48))(&v10, a5 & 1, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t SizeFittingTextLayoutComputer.Engine.childGeometries(at:origin:)()
{
  AGGraphWithUpdate();
  result = 0;
  __break(1u);
  return result;
}

uint64_t closure #1 in SizeFittingTextLayoutComputer.Engine.childGeometries(at:origin:)(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = a2;
  v18 = 0;
  v19 = a3;
  v20 = 0;
  v16[2] = a9;
  v16[3] = a10;
  v16[4] = a11;
  v16[5] = a12;
  *&v16[6] = a2;
  *&v16[7] = a3;
  *&v16[8] = a4;
  *&v16[9] = a5;
  *&v16[10] = a6;
  *&v16[11] = a7;
  _sypSgMaTm_3(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
  v14 = v13;

  SizeFittingTextCache.withValue<A>(for:compute:)(&v17, partial apply for closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.childGeometries(at:origin:), v16, v14, &v21);

  *a1 = v21;
}

uint64_t closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.childGeometries(at:origin:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *v13 = a2;
  *&v13[1] = a3;
  *&v13[2] = a4;
  *&v13[3] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue();
  result = (*(AssociatedConformanceWitness + 56))(v13, AssociatedTypeWitness, AssociatedConformanceWitness, a6, a7);
  *a1 = result;
  return result;
}

uint64_t closure #1 in SizeFittingTextLayoutComputer.Engine.explicitAlignment(_:at:)(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = a2;
  v18 = 0;
  v19 = a3;
  v20 = 0;
  v16[2] = a8;
  v16[3] = a9;
  v16[4] = a10;
  v16[5] = a11;
  v16[6] = a7;
  *&v16[7] = a2;
  *&v16[8] = a3;
  *&v16[9] = a4;
  *&v16[10] = a5;
  _sypSgMaTm_3(0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  v13 = v12;

  SizeFittingTextCache.withValue<A>(for:compute:)(&v17, partial apply for closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.explicitAlignment(_:at:), v16, v13, &v21);

  v15 = v22;
  *a1 = v21;
  *(a1 + 8) = v15;
  return result;
}

uint64_t closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.explicitAlignment(_:at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *v12 = a3;
  *&v12[1] = a4;
  *&v12[2] = a5;
  *&v12[3] = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue();
  result = (*(AssociatedConformanceWitness + 64))(a1, v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  *a2 = result;
  *(a2 + 8) = v11 & 1;
  return result;
}

uint64_t SizeFittingTextLayoutComputer.Engine.debugContentDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = 0;
  LOBYTE(v11) = 1;
  v12 = 0;
  v13 = 1;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a6;
  SizeFittingTextCache.withValue<A>(for:compute:)(&v10, partial apply for closure #1 in SizeFittingTextLayoutComputer.Engine.debugContentDescription.getter, v9, MEMORY[0x1E69E6158], v14);
  v6 = v14[0];
  v7 = v14[1];
  v10 = 0;
  v11 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v10 = 0xD00000000000001ELL;
  v11 = 0x800000018DD75B20;
  MEMORY[0x193ABEDD0](v6, v7);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return v10;
}

uint64_t closure #1 in SizeFittingTextLayoutComputer.Engine.debugContentDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue();
  result = (*(AssociatedConformanceWitness + 88))(AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v5)
  {
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0xE000000000000000;
  if (v5)
  {
    v7 = v5;
  }

  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t protocol witness for LayoutEngine.ignoresAutomaticPadding() in conformance SizeFittingTextLayoutComputer.Engine<A, B>()
{
  return protocol witness for LayoutEngine.ignoresAutomaticPadding() in conformance SizeFittingTextLayoutComputer.Engine<A, B>();
}

{
  return SizeFittingTextLayoutComputer.Engine.ignoresAutomaticPadding()() & 1;
}

uint64_t *ResolvedStyledText.sizeVariant(_:)(uint64_t *result)
{
  v2 = *result;
  if (!*result)
  {
    goto LABEL_5;
  }

  v3 = v2 - 1;
  if (!__OFSUB__(v2, 1))
  {
    if (ResolvedStyledText.largerSizeVariant.getter(&smallerSizeVariantKey))
    {
      v4 = v3;
      v1 = ResolvedStyledText.sizeVariant(_:)(&v4);

      return v1;
    }

LABEL_5:

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t ResolvedStyledText.largerSizeVariant.getter(const void *a1)
{
  swift_beginAccess();
  v3 = objc_getAssociatedObject(v1, a1);
  swift_endAccess();
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    type metadata accessor for ResolvedStyledText();
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(v8);
    return 0;
  }
}

uint64_t specialized SizeFittingTextFilter.init(size:text:environment:time:referenceDate:includeDefaultAttributes:allowsKeyColors:archiveOptions:features:attachmentsAsAuxiliaryMetadata:idiom:)(unsigned int a1, uint64_t a2, int a3, int a4, unint64_t a5, int a6, unsigned int a7, char *a8, __int16 *a9, unsigned __int8 a10, __int128 *a11)
{
  v37 = a6;
  *&v38 = __PAIR64__(a1, a7);
  v12 = a5;
  v39 = a3;
  *(&v38 + 1) = a2;
  v36 = a10;
  v14 = HIDWORD(a5);
  v15 = type metadata accessor for ResolvedTextHelper(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a8;
  LOBYTE(a8) = a8[1];
  v20 = *a9;
  *&v18[*(v16 + 68)] = 0;
  type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  v35 = *a11;
  swift_storeEnumTagMultiPayload();
  *v18 = a4;
  *(v18 + 1) = v12;
  *(v18 + 2) = v14;
  v21 = v38;
  v18[12] = v37;
  v18[13] = v21;
  v18[14] = v19;
  v18[15] = a8;
  *(v18 + 8) = v20;
  *(v18 + 9) = v36;
  *(v18 + 24) = v35;
  type metadata accessor for PropertyList.Tracker();
  v22 = swift_allocObject();
  _sypSgMaTm_3(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = MEMORY[0x1E69E7CC8];
  v25 = MEMORY[0x1E69E7CC0];
  *(v23 + 24) = 0;
  *(v23 + 32) = v24;
  *(v23 + 40) = v24;
  *(v23 + 48) = v25;
  *(v23 + 56) = 0;
  *(v22 + 16) = v23;
  *(v18 + 5) = v22;
  *(v18 + 3) = 0u;
  *(v18 + 4) = 0u;
  *&v18[*(v16 + 72)] = 0;
  EnvironmentValues.init()(v40);
  v26 = v40[0];
  v27 = v40[1];
  type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>, type metadata accessor for SizeFittingTextCache);
  v28 = swift_allocObject();
  *(v28 + 16) = 10;
  *(v28 + 24) = v25;
  *(v28 + 32) = 0;
  type metadata accessor for _ContiguousArrayStorage<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry>();
  type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  v30 = v29 - 8;
  v31 = (*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_18DDA6EB0;
  outlined init with copy of ResolvedTextHelper(v18, v32 + v31, type metadata accessor for ResolvedTextHelper);
  v33 = (v32 + v31 + *(v30 + 60));
  *v33 = 0u;
  v33[1] = 0u;
  *(v32 + v31 + *(v30 + 64)) = 0;
  outlined destroy of ResolvableStringResolutionContext(v18, type metadata accessor for ResolvedTextHelper);
  *(v28 + 40) = v32;
  *(v28 + 48) = 0;
  *(v28 + 50) = v41;
  *(v28 + 54) = v42;
  *(v28 + 56) = 0u;
  *(v28 + 72) = 0u;
  *(v28 + 88) = 256;
  result = v38 >> 32;
  *(v28 + 96) = 0u;
  *(v28 + 112) = 0u;
  *(v28 + 128) = v26;
  *(v28 + 136) = v27;
  *(v28 + 144) = 0;
  return result;
}

BOOL specialized ResolvedTextHelper.shouldUpdate(for:inputChanged:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, char a6)
{
  v7 = v6;
  if ((a6 & 1) == 0)
  {
    goto LABEL_17;
  }

  v9 = *a5;
  v10 = v6[9];
  if (v10)
  {
    if (a4)
    {
      v11 = v6[6];
      v12 = v7[7];
      v13 = v7[8];
      if (v13)
      {
        if ((a3 & 1) == 0)
        {
          return 1;
        }

        v14 = *(*v11 + 96);
        outlined copy of Text.Storage(v7[6], v7[7], 1);

        if ((v14(a1) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (a3)
        {
          return 1;
        }

        if (v11 == a1 && v12 == a2)
        {
          outlined copy of Text.Storage(a1, a2, 0);
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of Text.Storage(v11, v12, 0);

          if ((v16 & 1) == 0)
          {
LABEL_20:
            outlined consume of Text?(v11, v12, v13, v10);
            return 1;
          }
        }
      }

      v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v10, a4);
      outlined consume of Text?(v11, v12, v13, v10);
      if (v17)
      {
        goto LABEL_16;
      }
    }

    return 1;
  }

  if (a4)
  {
    return 1;
  }

LABEL_16:
  if (PropertyList.Tracker.hasDifferentUsedValues(_:)(v9))
  {
    return 1;
  }

LABEL_17:
  type metadata accessor for ResolvedTextHelper(0);
  ResolvedTextHelper.NextUpdate.time()();
  return (v20 & 1) == 0 && *AGGraphGetValue() >= v19;
}

void *specialized static ResolvedStyledText.normalizedSizeVariant(for:)(void *a1)
{

  while (1)
  {
    swift_beginAccess();

    v3 = objc_getAssociatedObject(v2, &largerSizeVariantKey);
    swift_endAccess();
    if (v3)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {

      v11 = 0u;
      v12 = 0u;
    }

    v13 = v11;
    v14 = v12;
    if (!*(&v12 + 1))
    {
      break;
    }

    type metadata accessor for ResolvedStyledText();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return a1;
    }

    swift_beginAccess();

    v4 = objc_getAssociatedObject(v10, &smallerSizeVariantKey);
    swift_endAccess();
    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13 = v11;
    v14 = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        swift_beginAccess();

        objc_setAssociatedObject(v5, &largerSizeVariantKey, 0, 0);
        swift_endAccess();
      }
    }

    else
    {
      outlined destroy of Any?(&v13);
    }

    swift_beginAccess();

    objc_setAssociatedObject(v10, &smallerSizeVariantKey, a1, 0x301);
    swift_endAccess();

    swift_beginAccess();

    objc_setAssociatedObject(v6, &largerSizeVariantKey, v10, 0);
    swift_endAccess();

    swift_beginAccess();
    v7 = objc_getAssociatedObject(a1, &largerSizeVariantKey);
    swift_endAccess();
    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13 = v11;
    v14 = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        swift_beginAccess();

        objc_setAssociatedObject(v8, &smallerSizeVariantKey, 0, 0);
        swift_endAccess();
      }
    }

    else
    {
      outlined destroy of Any?(&v13);
    }

    swift_beginAccess();
    objc_setAssociatedObject(a1, &largerSizeVariantKey, 0, 0x301);
    swift_endAccess();

    a1 = v10;
  }

  outlined destroy of Any?(&v13);
  return a1;
}

uint64_t outlined destroy of ResolvableStringResolutionContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in onChange #1 <A, B><A1>(for:) in SizeFittingTextCache.withValue<A>(for:onChange:compute:)()
{
  v1 = *(v0 + 40);
  v2 = **(v0 + 24);
  v5 = *(v0 + 32);
  v3 = (*(*(v2 + 104) + 16))(&v5, *(v2 + 88));
  return v1(v3);
}

uint64_t partial apply for closure #1 in SizeFittingTextCache.suggestedVariant(for:)()
{
  result = swift_beginAccess();
  *(v0 + 16) = 1;
  return result;
}

uint64_t outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(uint64_t a1)
{
  type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for ResolvedTextHelper(255);
    v8[1] = &type metadata for StickyTextSizeFittingLogic;
    v8[2] = &protocol witness table for ResolvedTextHelper;
    v8[3] = &protocol witness table for StickyTextSizeFittingLogic;
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry>)
  {
    type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(255, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry>);
    }
  }
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StickyTextSizeFittingLogic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[42])
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

uint64_t storeEnumTagSinglePayload for StickyTextSizeFittingLogic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for SizeFittingTextLayoutComputer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for SizeFittingTextFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for SizeFittingTextFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for SizeFittingTextFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

unint64_t instantiation function for generic protocol witness table for SizeFittingTextFilter(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SizeFittingTextFilter and conformance SizeFittingTextFilter();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SizeFittingTextFilter and conformance SizeFittingTextFilter()
{
  result = lazy protocol witness table cache variable for type SizeFittingTextFilter and conformance SizeFittingTextFilter;
  if (!lazy protocol witness table cache variable for type SizeFittingTextFilter and conformance SizeFittingTextFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SizeFittingTextFilter and conformance SizeFittingTextFilter);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SizeFittingTextLayoutComputer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SizeFittingTextLayoutComputer and conformance SizeFittingTextLayoutComputer();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SizeFittingTextLayoutComputer and conformance SizeFittingTextLayoutComputer()
{
  result = lazy protocol witness table cache variable for type SizeFittingTextLayoutComputer and conformance SizeFittingTextLayoutComputer;
  if (!lazy protocol witness table cache variable for type SizeFittingTextLayoutComputer and conformance SizeFittingTextLayoutComputer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SizeFittingTextLayoutComputer and conformance SizeFittingTextLayoutComputer);
  }

  return result;
}

void type metadata accessor for (value: ResolvableStringResolutionContext, changed: Bool)()
{
  if (!lazy cache variable for type metadata for (value: ResolvableStringResolutionContext, changed: Bool))
  {
    type metadata accessor for ResolvableStringResolutionContext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: ResolvableStringResolutionContext, changed: Bool));
    }
  }
}

uint64_t outlined init with copy of ResolvedTextHelper(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of ResolvableStringResolutionContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvableStringResolutionContext(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t closure #2 in closure #1 in View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - v19;
  v21(v18);
  static KeyframesBuilder.buildExpression<A>(_:)(v16, a5, a8, a12);
  v22 = *(v14 + 8);
  v22(v16, a8);
  static KeyframesBuilder.buildPartialBlock<A>(first:)(v20, a5, a8, a12);
  v22(v20, a8);
  static KeyframesBuilder.buildFinalResult<A>(_:)(v16, a5, a8, a12);
  return (v22)(v16, a8);
}

uint64_t View.keyframeAnimator<A, B, C>(initialValue:repeating:content:keyframes:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v28 = a9;
  v26 = a5;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v22 = a1;
  v33 = a13;
  v29 = a7;
  v30 = type metadata accessor for KeyframeAnimator();
  v31 = a12;
  v32 = &protocol witness table for KeyframeAnimator<A, B, C>;
  v16 = type metadata accessor for CustomModifier();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v21 - v18;
  closure #1 in View.keyframeAnimator<A, B, C>(initialValue:repeating:content:keyframes:)(v22, v23, v24, v25, v26, v27, v29, a8, &v21 - v18, a10, a11, a12, a13, a14);
  View.modifier<A>(_:)(v19, a7, v16);
  return (*(v17 + 8))(v19, v16);
}

uint64_t closure #1 in View.keyframeAnimator<A, B, C>(initialValue:repeating:content:keyframes:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v48 = a5;
  v49 = a6;
  v51 = a9;
  v52 = a4;
  v50 = a2;
  v45 = a12;
  v46 = a3;
  v42 = a13;
  v43 = a14;
  v17 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v19;
  v53 = v20;
  v54 = a11;
  v55 = a10;
  v56 = v21;
  v57 = v22;
  v23 = type metadata accessor for KeyframeAnimator();
  v47 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = &v41 - v28;
  (*(v17 + 16))(v19, a1, a8, v27);
  v29 = swift_allocObject();
  v30 = a7;
  v29[2] = a7;
  v29[3] = a8;
  v29[4] = a10;
  v29[5] = a11;
  v32 = v45;
  v31 = v46;
  v34 = v42;
  v33 = v43;
  v29[6] = v45;
  v29[7] = v34;
  v29[8] = v33;
  v29[9] = v31;
  v29[10] = v52;
  v35 = swift_allocObject();
  v35[2] = v30;
  v35[3] = a8;
  v35[4] = a10;
  v35[5] = a11;
  v35[6] = v32;
  v35[7] = v34;
  v36 = v48;
  v37 = v49;
  v35[8] = v33;
  v35[9] = v36;
  v35[10] = v37;
  KeyframeAnimator.init(initialValue:repeating:content:keyframes:)(v41, v50, partial apply for closure #1 in closure #1 in View.keyframeAnimator<A, B, C>(initialValue:repeating:content:keyframes:), v29, partial apply for closure #2 in closure #1 in View.keyframeAnimator<A, B, C>(initialValue:repeating:content:keyframes:), v35, a8, v25);
  v38 = v44;
  static ViewBuilder.buildExpression<A>(_:)(v25, v23, &protocol witness table for KeyframeAnimator<A, B, C>);
  v39 = *(v47 + 8);

  v39(v25, v23);
  static ViewBuilder.buildExpression<A>(_:)(v38, v23, &protocol witness table for KeyframeAnimator<A, B, C>);
  return (v39)(v38, v23);
}

uint64_t closure #1 in closure #1 in View.keyframeAnimator<A, B, C>(initialValue:repeating:content:keyframes:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  v20 = PlaceholderContentView.init()(v19, v16);
  a2(v20, a1);
  static ViewBuilder.buildExpression<A>(_:)(v14, a6, a9);
  v21 = *(v12 + 8);
  v21(v14, a6);
  static ViewBuilder.buildExpression<A>(_:)(v18, a6, a9);
  return (v21)(v18, a6);
}

uint64_t closure #2 in closure #1 in View.keyframeAnimator<A, B, C>(initialValue:repeating:content:keyframes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - v17;
  v19(v16);
  static KeyframesBuilder.buildExpression<A>(_:)(v14, a5, a7, a10);
  v20 = *(v12 + 8);
  v20(v14, a7);
  static KeyframesBuilder.buildPartialBlock<A>(first:)(v18, a5, a7, a10);
  v20(v18, a7);
  static KeyframesBuilder.buildFinalResult<A>(_:)(v14, a5, a7, a10);
  return (v20)(v14, a7);
}

int *KeyframeAnimator.init(initialValue:repeating:content:keyframes:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  result = type metadata accessor for KeyframeAnimator();
  v15 = (a8 + result[15]);
  *v15 = a5;
  v15[1] = a6;
  v16 = (a8 + result[17]);
  *v16 = a3;
  v16[1] = a4;
  *(a8 + result[16]) = ((a2 & 1) == 0) | 0x8000000000000000;
  return result;
}

uint64_t KeyframeTrackState.EventDrivenState.update(at:trigger:initialValue:path:)(double *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v76 = a3;
  v12 = *(a6 + 16);
  v13 = *(v12 - 8);
  v79 = a6;
  v80 = v13;
  MEMORY[0x1EEE9AC00](a1);
  v73 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v74 = v70 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v78 = v70 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v81 = (v70 - v20);
  v21 = type metadata accessor for KeyframeTimeline();
  v82 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v72 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v77 = v70 - v24;
  MEMORY[0x1EEE9AC00](v25);
  TupleTypeMetadata2 = v70 - v27;
  v28 = *a2;
  if (v28 != *v7)
  {
    v29 = *a1;
    v30 = v26;
    v31 = *(*v28 + 88);

    v33 = v31(v32);
    v34 = v30;
    v35 = v12;
    v36 = v33;

    if ((v36 & 1) == 0)
    {
      v71 = a5;
      v37 = v7[1];
      if (v37 < 0)
      {
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v48 = swift_projectBox() + *(TupleTypeMetadata2 + 48);
        v49 = *v48;
        LODWORD(v76) = *(v48 + 8);
        v50 = *(v82 + 16);
        v70[0] = a4;
        v50();
        v51 = v29 - v49;

        v52 = KeyframeTimeline.duration.getter();
        if (v52 < v51)
        {
          v51 = v52;
        }

        v53 = v78;
        KeyframeTimeline.value(time:)(v34, v78, v51);
        v54 = v74;
        KeyframeTimeline.velocity(time:)(v34, v74, v51);
        v55 = v80;
        v70[1] = v37;
        v56 = *(v80 + 16);
        v56(v81, v53, v12);
        v57 = v73;
        v58 = (v56)(v73, v54, v35);
        MEMORY[0x1EEE9AC00](v58);
        v59 = *(v79 + 24);
        v60 = *(v79 + 32);
        v70[-6] = v35;
        v70[-5] = v59;
        v61 = v70[0];
        v70[-4] = v60;
        v70[-3] = v61;
        v62 = v72;
        v70[-2] = v71;
        v70[-1] = v53;
        KeyframeTimeline.init<A>(initialValue:initialVelocity:content:)(v81, v57, partial apply for closure #2 in KeyframeTrackState.EventDrivenState.update(at:trigger:initialValue:path:), &v70[-8], v35, v59, v60, v62);
        v81 = *(v55 + 8);
        v81(v54, v35);
        v63 = v82;
        (*(v82 + 8))(v77, v34);
        v64 = TupleTypeMetadata2;
        v65 = swift_allocBox();
        v67 = v66;
        (*(v63 + 32))(v66, v62, v34);
        v68 = v67 + *(v64 + 48);
        *v68 = v29;
        *(v68 + 8) = v76;

        v7[1] = v65 | 0x8000000000000000;
        v81(v78, v35);
      }

      else
      {
        v38 = v81;
        v39 = v76;
        v40 = (*(v80 + 16))(v81, v76, v12);
        MEMORY[0x1EEE9AC00](v40);
        v41 = *(v79 + 24);
        v42 = *(v79 + 32);
        v70[-6] = v12;
        v70[-5] = v41;
        v70[-4] = v42;
        v70[-3] = a4;
        v70[-2] = v71;
        v70[-1] = v39;
        v43 = TupleTypeMetadata2;
        KeyframeTimeline.init<A>(initialValue:content:)(v38, partial apply for closure #1 in KeyframeTrackState.updatePlayback(_:time:initialValue:plan:), &v70[-8], v12, v41, v42, TupleTypeMetadata2);
        v44 = swift_getTupleTypeMetadata2();
        v45 = swift_allocBox();
        v47 = v46 + *(v44 + 48);
        (*(v82 + 32))(v46, v43, v34);
        *v47 = v29;
        *(v47 + 8) = 0;

        v7[1] = v45 | 0x8000000000000000;
      }
    }
  }

  *v7 = v28;
  return result;
}

uint64_t KeyframeTrackState.RepeatingState.value(at:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3 + *(a2 + 44);
  v7 = *v6;
  v8 = *(v6 + 8);
  type metadata accessor for KeyframeTrackState.RepeatingState.Mode();
  if (v8 < 0)
  {
    v10 = *a1 - v7;
    if ((v8 & 1) == 0)
    {
      v10 = 0.0;
    }

    v9 = *(v6 + 16) + v10;
  }

  else
  {
    v9 = v7;
  }

  v11 = type metadata accessor for KeyframeTimeline();
  v12 = KeyframeTimeline.duration.getter();
  v13 = fmod(v9, v12);

  return KeyframeTimeline.value(time:)(v11, a3, v13);
}

double *KeyframeTrackState.RepeatingState.update(at:paused:)(double *result, char a2, uint64_t a3)
{
  v4 = *result;
  v5 = v3 + *(a3 + 44);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (v7 < 0)
  {
    if (a2)
    {
      v8 = *(v5 + 16);
      result = type metadata accessor for KeyframeTrackState.RepeatingState.Mode();
      v9 = v4 - v6;
      if ((v7 & 1) == 0)
      {
        v9 = 0.0;
      }

      *v5 = v9 + v8;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
    }
  }

  else if ((a2 & 1) == 0)
  {
    *v5 = v4;
    *(v5 + 8) = 0x8000000000000000;
    *(v5 + 16) = v6;
  }

  return result;
}

__n128 KeyframeTrackState.RepeatingState.init(timeline:mode:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *a2;
  v5 = a2[1].n128_u64[0];
  v6 = type metadata accessor for KeyframeTimeline();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = (a3 + *(type metadata accessor for KeyframeTrackState.RepeatingState() + 44));
  result = v9;
  *v7 = v9;
  v7[1].n128_u64[0] = v5;
  return result;
}

uint64_t closure #1 in KeyframeTrackState.updatePlayback(_:time:initialValue:plan:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  v17(v16, v13);
  static KeyframesBuilder.buildExpression<A>(_:)(v11, a4, a5, a6);
  v18 = *(v9 + 8);
  v18(v11, a5);
  static KeyframesBuilder.buildPartialBlock<A>(first:)(v15, a4, a5, a6);
  v18(v15, a5);
  static KeyframesBuilder.buildFinalResult<A>(_:)(v11, a4, a5, a6);
  return (v18)(v11, a5);
}

uint64_t *initializeBufferWithCopyOfBuffer for KeyframeAnimator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    v14 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
    v15 = *v14;
    v14 += 15;

    outlined copy of _SymbolEffect.Trigger(v15);
    *v13 = v15;
    v16 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    v17 = *((v14 & 0xFFFFFFFFFFFFFFF8) + 8);
    *v16 = *(v14 & 0xFFFFFFFFFFFFFFF8);
    v16[1] = v17;
  }

  return v3;
}

uint64_t initializeWithTake for KeyframeAnimator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  *((v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for KeyframeAnimator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 &= 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  *v10 = *v9;
  outlined consume of _SymbolEffect.Trigger(v11);
  *((v10 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v9 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for KeyframeAnimator(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

_BYTE *storeEnumTagSinglePayload for KeyframeAnimator(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
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

uint64_t *assignWithCopy for PlaybackMode(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  outlined copy of _SymbolEffect.Trigger(*a2);
  v4 = *a1;
  *a1 = v3;
  outlined consume of _SymbolEffect.Trigger(v4);
  return a1;
}

uint64_t *assignWithTake for PlaybackMode(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  outlined consume of _SymbolEffect.Trigger(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlaybackMode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 8))
  {
    return (*a1 + 63);
  }

  v3 = (*a1 & 6 | ((*a1 >> 58) >> 5) & 0xFFFFFFC7 | (8 * (((*a1 >> 58) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PlaybackMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1F | (32 * (-a2 & 0x3F));
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimatorAttribute(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = v5 & 0xF8 | 7;
  v7 = *(v4 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v9 = 16;
  }

  else
  {
    v9 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  if ((v5 & 0x1000F8) != 0 || v9 - ((-21 - v6) | v6) > 0x18)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v6 + 16) & ~v6));
  }

  else
  {
    *a1 = *a2;
    v12 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v13 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v12 = *v13;
    v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v14 = *v15;
    v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *v17;
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v21 = *v19;
    v20 = v19 + 11;
    *v18 = v21;
    v22 = v18 + 11;
    v23 = (v20 & 0xFFFFFFFFFFFFFFF8);
    v24 = *((v20 & 0xFFFFFFFFFFFFFFF8) + v9);
    if ((v9 & 0xFFFFFFF8) != 0 && v24 >= 2)
    {
      v24 = *v23 + 2;
    }

    v26 = (v22 & 0xFFFFFFFFFFFFFFF8);
    if (v24 == 1)
    {
      v28 = v8 + 8;
      (*(v4 + 16))(v22 & 0xFFFFFFFFFFFFFFF8);
      *(((v22 | 7) + v7) & 0xFFFFFFFFFFFFFFF8) = *(((v20 | 7) + v7) & 0xFFFFFFFFFFFFFFF8);
      v29 = (v28 + v22) & 0xFFFFFFFFFFFFFFF8;
      v30 = (v28 + v20) & 0xFFFFFFFFFFFFFFF8;
      v31 = *v30;
      *(v29 + 16) = *(v30 + 16);
      *v29 = v31;
      *(v26 + v9) = 1;

      return v3;
    }

    if (v24)
    {
      memcpy((v22 & 0xFFFFFFFFFFFFFFF8), v23, v9 | 1);
      return v3;
    }

    *v26 = *v23;
    v26[1] = v23[1];
    *(v26 + v9) = 0;
  }

  return v3;
}

_DWORD *assignWithCopy for AnimatorAttribute(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 80) & 0xF8;
  v16 = v15 + 11;
  v17 = v11 + v15 + 11;
  v18 = ~v15 & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 & v18);
  v20 = ((v12 + v16) & v18);
  if ((v17 & v18) != v20)
  {
    v21 = *(*(a3 + 16) - 8);
    v22 = *(v14 + 64);
    v23 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
    {
      v24 = 16;
    }

    else
    {
      v24 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
    }

    v25 = *(v19 + v24);
    if (v25 >= 2 && v24 != 0)
    {
      v25 = *v19 + 2;
    }

    if (v25 == 1)
    {
      (*(v14 + 8))(v19, v13);
    }

    else if (!v25)
    {
    }

    v27 = *(v20 + v24);
    if (v24)
    {
      v28 = v27 >= 2;
    }

    else
    {
      v28 = 0;
    }

    if (v28)
    {
      v27 = *v20 + 2;
    }

    if (v27 == 1)
    {
      v29 = v23 + 8;
      (*(v21 + 16))(v19, v20, v13);
      *((v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v20 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
      v30 = v19 + v29;
      v31 = *(v20 + v29);
      *(v30 + 2) = *(v20 + v29 + 16);
      *v30 = v31;
      *(v19 + v24) = 1;
    }

    else if (v27)
    {
      memcpy(v19, v20, v24 | 1);
    }

    else
    {
      *v19 = *v20;
      v19[1] = v20[1];
      *(v19 + v24) = 0;
    }
  }

  return a1;
}

_DWORD *initializeWithTake for AnimatorAttribute(_DWORD *result, int *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 7;
  *result = v4;
  v5 = ((result + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = *(*(a3 + 16) - 8);
  v13 = *(v12 + 80) & 0xF8;
  v14 = v13 + 11;
  v15 = v10 + v13 + 11;
  v16 = ~v13 & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 & v16);
  v18 = ((v11 + v14) & v16);
  v19 = *(v12 + 64) + 7;
  if ((((v19 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v20 = 16;
  }

  else
  {
    v20 = (((v19 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v21 = *(v18 + v20);
  if (v21 >= 2 && v20 != 0)
  {
    v21 = *v18 + 2;
  }

  if (v21 == 1)
  {
    v23 = (v19 & 0xFFFFFFFFFFFFFFF8) + 8;
    v24 = result;
    (*(v12 + 32))(v17, v18);
    result = v24;
    *((v17 + v19) & 0xFFFFFFFFFFFFFFF8) = *((v18 + v19) & 0xFFFFFFFFFFFFFFF8);
    v25 = v17 + v23;
    v26 = *(v18 + v23);
    *(v25 + 2) = *(v18 + v23 + 16);
    *v25 = v26;
    *(v17 + v20) = 1;
  }

  else if (v21)
  {
    v27 = v20 | 1;
    v28 = result;
    memcpy(v17, v18, v27);
    return v28;
  }

  else
  {
    *v17 = *v18;
    *(v17 + v20) = 0;
  }

  return result;
}

_DWORD *assignWithTake for AnimatorAttribute(_DWORD *result, int *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 7;
  *result = v4;
  v5 = ((result + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80) & 0xF8;
  v15 = v14 + 11;
  v16 = v10 + v14 + 11;
  v17 = ~v14 & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 & v17);
  v19 = ((v11 + v15) & v17);
  if ((v16 & v17) == v19)
  {
    return result;
  }

  v20 = *(*(a3 + 16) - 8);
  v21 = *(v13 + 64);
  v22 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v23 = 16;
  }

  else
  {
    v23 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v24 = *(v18 + v23);
  if (v24 >= 2 && v23 != 0)
  {
    v24 = *v18 + 2;
  }

  if (v24 == 1)
  {
    v26 = result;
    (*(v13 + 8))(v18, v12);

    goto LABEL_14;
  }

  if (!v24)
  {
    v26 = result;

LABEL_14:
    result = v26;
  }

  v27 = *(v19 + v23);
  if (v23)
  {
    v28 = v27 >= 2;
  }

  else
  {
    v28 = 0;
  }

  if (v28)
  {
    v27 = *v19 + 2;
  }

  if (v27 == 1)
  {
    v29 = v22 + 8;
    v30 = result;
    (*(v20 + 32))(v18, v19, v12);
    result = v30;
    *((v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v19 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
    v31 = v18 + v29;
    v32 = *(v19 + v29);
    *(v31 + 2) = *(v19 + v29 + 16);
    *v31 = v32;
    *(v18 + v23) = 1;
  }

  else if (v27)
  {
    v33 = result;
    memcpy(v18, v19, v23 | 1);
    return v33;
  }

  else
  {
    *v18 = *v19;
    *(v18 + v23) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimatorAttribute(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = ((((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = *(v3 + 80) & 0xF8;
  v6 = v5 | 7;
  if (a2 < 0xFE)
  {
    goto LABEL_19;
  }

  v7 = (((v5 + 27) & ~v6) + v4) | 1;
  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *&a1[v7];
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    if (v11 > 0xFF)
    {
      v9 = *&a1[v7];
      if (!*&a1[v7])
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    if (v11 < 2)
    {
LABEL_19:
      v14 = *(((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6) + v4);
      if (v14 >= 3)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = a1[v7];
  if (!a1[v7])
  {
    goto LABEL_19;
  }

LABEL_14:
  v12 = (v9 - 1) << v8;
  if (v7 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return (v13 | v12) + 254;
}

void storeEnumTagSinglePayload for AnimatorAttribute(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  v7 = *(v5 + 80) & 0xF8;
  v8 = v7 | 7;
  v9 = (((v7 + 27) & ~(v7 | 7)) + v6) | 1;
  if (a3 < 0xFE)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 253) >> (8 * v9)) + 1;
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

  if (a2 <= 0xFD)
  {
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
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

LABEL_26:
      *(((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8) + v6) = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_26;
  }

  v11 = a2 - 254;
  if (v9 <= 3)
  {
    v12 = (v11 >> (8 * v9)) + 1;
    bzero(a1, v9);
    *a1 = v11 & ~(-1 << (8 * v9));
    if (v10 > 1)
    {
LABEL_14:
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
    bzero(a1, v9);
    *a1 = v11;
    v12 = 1;
    if (v10 > 1)
    {
      goto LABEL_14;
    }
  }

  if (v10)
  {
    a1[v9] = v12;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for KeyframeTrackState(uint64_t *__dst, uint64_t *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v7 = 16;
  }

  else
  {
    v7 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v8 = *(v4 + 80);
  if ((v8 & 0x1000F8) != 0 || (v7 | 1) > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
LABEL_15:

    return v3;
  }

  v11 = *(a2 + v7);
  if (v11 >= 2)
  {
    v11 = *a2 + 2;
  }

  if (v11 == 1)
  {
    v14 = v6 + 8;
    (*(v4 + 16))(__dst);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v16 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (a2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = *v17;
    *(v16 + 16) = *(v17 + 16);
    *v16 = v18;
    *(v3 + v7) = 1;

    return v3;
  }

  if (!v11)
  {
    v12 = a2[1];
    *__dst = *a2;
    __dst[1] = v12;
    *(__dst + v7) = 0;

    goto LABEL_15;
  }

  return memcpy(__dst, a2, v7 | 1);
}

unsigned __int8 *assignWithCopy for KeyframeTrackState(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v9 = 16;
  }

  else
  {
    v9 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v10 = __dst[v9];
  if (v10 >= 2 && v9 != 0)
  {
    v10 = *__dst + 2;
  }

  if (v10 == 1)
  {
    (*(v6 + 8))(__dst, v5);
  }

  else if (!v10)
  {
  }

  v12 = __src[v9];
  if (v9)
  {
    v13 = v12 >= 2;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v12 = *__src + 2;
  }

  if (v12 == 1)
  {
    v14 = v8 + 8;
    (*(v6 + 16))(__dst, __src, v5);
    *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    v15 = &__dst[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
    v16 = &__src[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
    v17 = *v16;
    *(v15 + 16) = *(v16 + 16);
    *v15 = v17;
    __dst[v9] = 1;

    return __dst;
  }

  if (!v12)
  {
    *__dst = *__src;
    *(__dst + 1) = *(__src + 1);
    __dst[v9] = 0;

    return __dst;
  }

  return memcpy(__dst, __src, v9 | 1);
}

_OWORD *initializeWithTake for KeyframeTrackState(_OWORD *result, _DWORD *a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v5 = 16;
  }

  else
  {
    v5 = ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v6 = *(a2 + v5);
  if (v6 >= 2 && v5 != 0)
  {
    v6 = *a2 + 2;
  }

  if (v6 == 1)
  {
    v8 = v4 + 8;
    v9 = result;
    (*(*(*(a3 + 16) - 8) + 32))();
    result = v9;
    *((v9 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = (a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = *v12;
    *(v11 + 16) = *(v12 + 16);
    *v11 = v13;
    *(v9 + v5) = 1;
  }

  else if (v6)
  {

    return memcpy(result, a2, v5 | 1);
  }

  else
  {
    *result = *a2;
    *(result + v5) = 0;
  }

  return result;
}

unsigned __int8 *assignWithTake for KeyframeTrackState(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v9 = 16;
  }

  else
  {
    v9 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v10 = __dst[v9];
  if (v10 >= 2 && v9 != 0)
  {
    v10 = *__dst + 2;
  }

  if (v10 == 1)
  {
    (*(v6 + 8))(__dst, v5);
  }

  else if (!v10)
  {
  }

  v12 = __src[v9];
  if (v9)
  {
    v13 = v12 >= 2;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v12 = *__src + 2;
  }

  if (v12 == 1)
  {
    v14 = v8 + 8;
    (*(v6 + 32))(__dst, __src, v5);
    *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    v15 = &__dst[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
    v16 = &__src[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
    v17 = *v16;
    *(v15 + 16) = *(v16 + 16);
    *v15 = v17;
    __dst[v9] = 1;
    return __dst;
  }

  if (!v12)
  {
    *__dst = *__src;
    __dst[v9] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v9 | 1);
}

uint64_t getEnumTagSinglePayload for KeyframeTrackState(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v3 <= 0x10)
  {
    v3 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v4 = v3 | 1;
  if ((v3 | 1) <= 3)
  {
    v5 = ((a2 + 2) >> 8) + 1;
  }

  else
  {
    v5 = 2;
  }

  if (v5 >= 0x10000)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  if (v5 < 0x100)
  {
    v6 = 1;
  }

  if (v5 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = *&a1[v4];
      if (*&a1[v4])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v8 = *&a1[v4];
      if (v8)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v12 = a1[v3];
    if (v12 >= 3)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = a1[v4];
  if (!a1[v4])
  {
    goto LABEL_27;
  }

LABEL_23:
  v10 = (v8 - 1) << (8 * v4);
  if (v4 <= 3)
  {
    v11 = *a1;
  }

  else
  {
    v10 = 0;
    v11 = *a1;
  }

  return (v11 | v10) + 254;
}