uint64_t sub_1A5C87D2C@<X0>(char *a1@<X8>)
{
  v2 = sub_1A5FD48AC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1A5C87D8C(uint64_t *a1@<X8>)
{
  v2 = 6778692;
  if (*v1)
  {
    v2 = 7627075;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_1A5C87DB4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7627075;
  }

  else
  {
    v2 = 6778692;
  }

  if (*a2)
  {
    v3 = 7627075;
  }

  else
  {
    v3 = 6778692;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1A5FD4B0C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1A5C87EDC()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C87F44()
{
  sub_1A5FD3DBC();
}

uint64_t sub_1A5C87F90()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

void RecognizeAnimalsRequest.supportedAnimals.getter()
{
  type metadata accessor for Session();
  Session.__allocating_init()();
  v0 = sub_1A5C88BB4();

  sub_1A5BD9578(v1, &type metadata for RecognizeAnimalsRequest, v0);

  sub_1A5BFB490();
  if (swift_dynamicCastMetatype())
  {
    v2 = [swift_getObjCClassFromMetadata() knownAnimalIdentifiers];
    v3 = sub_1A5FD3F4C();

    v4 = 0;
    v5 = *(v3 + 16);
    v6 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v7 = v3 + 40 + 16 * v4;
    while (1)
    {
      if (v5 == v4)
      {

        return;
      }

      if (v4 >= *(v3 + 16))
      {
        break;
      }

      ++v4;

      v8 = sub_1A5FD48AC();

      if (!v8)
      {
        v9 = 0;
        goto LABEL_12;
      }

      v7 += 16;
      if (v8 == 1)
      {
        v9 = 1;
LABEL_12:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1A5C889D8(0, *(v6 + 2) + 1, 1, v6);
        }

        v11 = *(v6 + 2);
        v10 = *(v6 + 3);
        if (v11 >= v10 >> 1)
        {
          v6 = sub_1A5C889D8((v10 > 1), v11 + 1, 1, v6);
        }

        *(v6 + 2) = v11 + 1;
        v6[v11 + 32] = v9;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

__n128 RecognizeAnimalsRequest.regionOfInterest.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 RecognizeAnimalsRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t sub_1A5C88260()
{
  sub_1A5C88B60();
  result = sub_1A5D4EB30();
  qword_1EB2573F8 = result;
  return result;
}

uint64_t RecognizeAnimalsRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5C88B60();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for RecognizeAnimalsRequest, v3);
}

uint64_t sub_1A5C88324()
{
  sub_1A5C88B60();
  result = sub_1A5D4EC2C();
  qword_1EB257408 = result;
  return result;
}

uint64_t RecognizeAnimalsRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v3);
  return sub_1A5B0ED0C(a1, v4);
}

uint64_t RecognizeAnimalsRequest.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1A5FD4C1C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v1);
  sub_1A5B0ED0C(v4, v2);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C88484(uint64_t a1)
{
  v2 = sub_1A5C88BB4();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5C884C0(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5C88B60();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C8852C(uint64_t a1)
{
  v2 = sub_1A5B5E844();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C88568()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1A5FD4C1C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v1);
  sub_1A5B0ED0C(v4, v2);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C885F0(__int128 *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v3);
  return sub_1A5B0ED0C(a1, v4);
}

uint64_t sub_1A5C88664()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1A5FD4C1C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v1);
  sub_1A5B0ED0C(v4, v2);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C886EC(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E844();

  return sub_1A5D4E6C8(a1, a2);
}

double sub_1A5C88738@<D0>(unsigned __int8 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v7);
  v4 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  result = v7[0].n128_f64[0];
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  a2[2].n128_u64[0] = v3;
  a2[2].n128_u64[1] = v4;
  return result;
}

id sub_1A5C887E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A5BFB490();
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v7 = sub_1A5C88C08();
    return sub_1A5D23E14(a1, a2, a3, v7);
  }

  return result;
}

uint64_t sub_1A5C88884()
{
  if (*v0)
  {
    return 3737841666;
  }

  else
  {
    return 2;
  }
}

uint64_t RecognizeAnimalsRequest.Revision.isPublic.getter()
{
  v1 = *v0;
  if ((v1 & 1) == 0)
  {
    v2 = sub_1A5B9D1A0();
    v3 = sub_1A5B9D1A0();
    LODWORD(v2) = sub_1A5B9D1A8(8, v2, v3);
    v4 = sub_1A5B12998();
    v5 = sub_1A5B9D178(v2, v4);
    v6 = sub_1A5B9D1A0();
    v7 = sub_1A5B9D1A0();
    LODWORD(v6) = sub_1A5B9D1A8(8, v6, v7);
    v8 = sub_1A5B12998();
    sub_1A5B9D178(v6, v8);
    v9 = sub_1A5B9D1A0();
    v10 = sub_1A5B9D1A0();
    LODWORD(v9) = sub_1A5B9D1A8(8, v9, v10);
    v11 = sub_1A5B12998();
    sub_1A5B9D178(v9, v11);
    v12 = sub_1A5B9D1A0();
    v13 = sub_1A5B9D1A0();
    LODWORD(v12) = sub_1A5B9D1A8(8, v12, v13);
    v14 = sub_1A5B12998();
    sub_1A5B9D178(v12, v14);
    TtTrkRpnNode::config(v5);
  }

  return v1 ^ 1u;
}

char *sub_1A5C889D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t _s6Vision23RecognizeAnimalsRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a1 + 16);
  v10.origin = *a1;
  v10.size = v6;
  v7 = *(a2 + 16);
  v9.origin = *a2;
  v9.size = v7;
  if (!static NormalizedRect.== infix(_:_:)(&v10, &v9) || ((v2 ^ v4) & 1) != 0)
  {
    return 0;
  }

  return sub_1A5B0D3C4(v3, v5);
}

unint64_t sub_1A5C88B60()
{
  result = qword_1EB1F40E8;
  if (!qword_1EB1F40E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F40E8);
  }

  return result;
}

unint64_t sub_1A5C88BB4()
{
  result = qword_1EB1F40F0;
  if (!qword_1EB1F40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F40F0);
  }

  return result;
}

unint64_t sub_1A5C88C08()
{
  result = qword_1EB1F40F8;
  if (!qword_1EB1F40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F40F8);
  }

  return result;
}

unint64_t sub_1A5C88C5C()
{
  result = qword_1EB1F4100;
  if (!qword_1EB1F4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4100);
  }

  return result;
}

unint64_t sub_1A5C88CB8()
{
  result = qword_1EB1F4108;
  if (!qword_1EB1F4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4108);
  }

  return result;
}

unint64_t sub_1A5C88D0C(uint64_t a1)
{
  result = sub_1A5B5E844();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C88D60()
{
  result = qword_1EB1F4110;
  if (!qword_1EB1F4110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4110);
  }

  return result;
}

unint64_t sub_1A5C88DB8()
{
  result = qword_1EB1F4118;
  if (!qword_1EB1F4118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4118);
  }

  return result;
}

unint64_t sub_1A5C88E10()
{
  result = qword_1EB1F4120;
  if (!qword_1EB1F4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4120);
  }

  return result;
}

uint64_t sub_1A5C88E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C88ECC()
{
  result = qword_1EB1F4128;
  if (!qword_1EB1F4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4128);
  }

  return result;
}

unint64_t sub_1A5C88F20(uint64_t a1)
{
  result = sub_1A5C88B60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C88F48(uint64_t a1)
{
  result = sub_1A5C88F70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C88F70()
{
  result = qword_1EB1F4130;
  if (!qword_1EB1F4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4130);
  }

  return result;
}

unint64_t sub_1A5C89028()
{
  result = qword_1EB2580B0[0];
  if (!qword_1EB2580B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2580B0);
  }

  return result;
}

unint64_t sub_1A5C89080()
{
  result = qword_1EB2581C0;
  if (!qword_1EB2581C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2581C0);
  }

  return result;
}

unint64_t sub_1A5C890D8()
{
  result = qword_1EB2581C8[0];
  if (!qword_1EB2581C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2581C8);
  }

  return result;
}

unint64_t sub_1A5C89130()
{
  result = qword_1EB258250;
  if (!qword_1EB258250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB258250);
  }

  return result;
}

unint64_t sub_1A5C89188()
{
  result = qword_1EB258258[0];
  if (!qword_1EB258258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB258258);
  }

  return result;
}

unint64_t sub_1A5C891E0()
{
  result = qword_1EB2582E0;
  if (!qword_1EB2582E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2582E0);
  }

  return result;
}

unint64_t sub_1A5C89238()
{
  result = qword_1EB2582E8[0];
  if (!qword_1EB2582E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2582E8);
  }

  return result;
}

unint64_t sub_1A5C8928C()
{
  result = qword_1EB1F4138;
  if (!qword_1EB1F4138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4138);
  }

  return result;
}

Vision::NormalizedRect __swiftcall NormalizedRect.init(imageRect:in:)(Vision::NormalizedRect imageRect, CGSize in)
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if (in.width > 0.0)
  {
    v5 = imageRect.cgRect.origin.x / in.width;
    v4 = imageRect.cgRect.size.width / in.width;
  }

  v6 = 0.0;
  if (in.height > 0.0)
  {
    v6 = imageRect.cgRect.origin.y / in.height;
    v3 = imageRect.cgRect.size.height / in.height;
  }

  *v2 = v5;
  v2[1] = v6;
  v2[2] = v4;
  v2[3] = v3;
  imageRect.cgRect.origin.x = v6;
  return imageRect;
}

Vision::NormalizedRect __swiftcall NormalizedRect.init(imageRect:in:normalizedTo:)(Vision::NormalizedRect imageRect, CGSize in, Vision::NormalizedRect normalizedTo)
{
  v5 = v4;
  v6 = 0.0;
  if (in.width == 0.0)
  {
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
  }

  else
  {
    height = in.height;
    width = in.width;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    if (in.height != 0.0)
    {
      v23.cgRect.origin.y = v3[2];
      v23.cgRect.origin.x = v3[3];
      y = v23.cgRect.origin.y;
      v23.cgRect.size.width = v3[1];
      v23.cgRect.size.height = *v3;
      x = imageRect.cgRect.origin.x;
      v13 = imageRect.cgRect.origin.y;
      v14 = imageRect.cgRect.size.width;
      v15 = imageRect.cgRect.size.height;
      NormalizedPoint.init(imagePoint:in:normalizedTo:)(imageRect.cgRect.origin, __PAIR128__(*&height, *&width), v23);
      v6 = v19;
      v9 = v20;
      v21.origin.x = x;
      v21.origin.y = v13;
      v21.size.width = v14;
      v21.size.height = v15;
      imagePoint = CGRectGetMaxX(v21);
      v22.origin.x = x;
      v22.origin.y = v13;
      v22.size.width = v14;
      v22.size.height = v15;
      *&v16 = CGRectGetMaxY(v22);
      v24.cgRect.origin.x = y;
      NormalizedPoint.init(imagePoint:in:normalizedTo:)(__PAIR128__(v16, *&imagePoint), __PAIR128__(*&height, *&width), v24);
      v10 = NormalizedPoint.x.getter() - v19;
      imageRect.cgRect.origin.x = NormalizedPoint.y.getter();
      v11 = imageRect.cgRect.origin.x - v20;
    }
  }

  *v5 = v6;
  v5[1] = v9;
  v5[2] = v10;
  v5[3] = v11;
  return imageRect;
}

__n128 static NormalizedRect.fullImage.getter@<Q0>(__n128 *a1@<X8>)
{
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  a1[1] = result;
  return result;
}

__C::CGRect __swiftcall NormalizedRect.toImageCoordinates(_:origin:)(CGSize _, Vision::CoordinateOrigin origin)
{
  v3 = v2[3];
  v4 = 1.0 - v2[1] - v3;
  if (*origin)
  {
    v4 = v2[1];
  }

  v5 = v3 * _.height;
  v6 = v2[2] * _.width;
  v7 = v4 * _.height;
  v8 = *v2 * _.width;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v7;
  result.origin.x = v8;
  return result;
}

Vision::NormalizedRect __swiftcall NormalizedRect.verticallyFlipped()()
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = 1.0 - v1[1] - v4;
  *v0 = *v1;
  v0[1] = v5;
  v0[2] = v3;
  v0[3] = v4;
  result.cgRect.size.height = v4;
  result.cgRect.size.width = v3;
  result.cgRect.origin.y = v5;
  result.cgRect.origin.x = v2;
  return result;
}

__C::CGRect __swiftcall NormalizedRect.toImageCoordinates(from:imageSize:origin:)(Vision::NormalizedRect from, CGSize imageSize, Vision::CoordinateOrigin origin)
{
  y = from.cgRect.origin.y;
  x = from.cgRect.origin.x;
  v7 = *(origin + 8);
  v8 = *(origin + 16);
  v9 = *(origin + 24);
  v10 = v4[1];
  v11 = v4[2];
  v12 = v4[3];
  if ((*v3 & 1) == 0)
  {
    v10 = 1.0 - v10 - v12;
    v7 = 1.0 - v7 - v9;
  }

  sub_1A5D23FA0(&v20, *v4, v10, *origin, v7, *(origin + 16), *(origin + 24));
  sub_1A5B0BCC4(&v19);
  v18 = v19;
  v15 = NormalizedPoint.toImageCoordinates(_:origin:)(__PAIR128__(*&y, *&x), &v18);
  v14 = v15.y;
  v13 = v15.x;
  v16 = v9 * v12 * y;
  v17 = v8 * v11 * x;
  result.size.height = v16;
  result.size.width = v17;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

uint64_t NormalizedRect.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000012, 0x80000001A6058980);
  sub_1A5B245C4();
  v0 = sub_1A5FD3BCC();
  MEMORY[0x1AC554600](v0);

  MEMORY[0x1AC554600](0x203A79202CLL, 0xE500000000000000);
  v1 = sub_1A5FD3BCC();
  MEMORY[0x1AC554600](v1);

  MEMORY[0x1AC554600](0x3A6874646977202CLL, 0xE900000000000020);
  v2 = sub_1A5FD3BCC();
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](0x746867696568202CLL, 0xEA0000000000203ALL);
  v3 = sub_1A5FD3BCC();
  MEMORY[0x1AC554600](v3);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1A5C8979C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746365526763 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A5FD4B0C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A5C89820(uint64_t a1)
{
  v2 = sub_1A5C89A08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C8985C(uint64_t a1)
{
  v2 = sub_1A5C89A08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NormalizedRect.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4148);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C89A08();
  sub_1A5FD4CDC();
  v8 = v2[1];
  v10[0] = *v2;
  v10[1] = v8;
  type metadata accessor for CGRect(0);
  sub_1A5C89D58(&qword_1EB1F4150);
  sub_1A5FD4A5C();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A5C89A08()
{
  result = qword_1EB258370[0];
  if (!qword_1EB258370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB258370);
  }

  return result;
}

uint64_t NormalizedRect.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1A5FD4C1C();
  sub_1A5B39814(v1, v2, v3, v4);
  return sub_1A5FD4C6C();
}

uint64_t NormalizedRect.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4158);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C89A08();
  sub_1A5FD4CCC();
  if (!v2)
  {
    type metadata accessor for CGRect(0);
    sub_1A5C89D58(&qword_1EB1F4160);
    sub_1A5FD497C();
    (*(v6 + 8))(v8, v5);
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5C89C80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1A5FD4C1C();
  sub_1A5B39814(v1, v2, v3, v4);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C89CF4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1A5FD4C1C();
  sub_1A5B39814(v1, v2, v3, v4);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C89D58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A5C89DA0()
{
  result = qword_1EB1F4168;
  if (!qword_1EB1F4168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4168);
  }

  return result;
}

unint64_t sub_1A5C89E4C()
{
  result = qword_1EB258700[0];
  if (!qword_1EB258700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB258700);
  }

  return result;
}

unint64_t sub_1A5C89EA4()
{
  result = qword_1EB258810;
  if (!qword_1EB258810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB258810);
  }

  return result;
}

unint64_t sub_1A5C89EFC()
{
  result = qword_1EB258818[0];
  if (!qword_1EB258818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB258818);
  }

  return result;
}

id ContoursObservation.contourCount.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContoursObservation(0) + 32));

  return [v1 contourCount];
}

id ContoursObservation.normalizedPath.getter()
{
  v1 = [*(v0 + *(type metadata accessor for ContoursObservation(0) + 32)) normalizedPath];

  return v1;
}

size_t ContoursObservation.topLevelContours.getter()
{
  v1 = type metadata accessor for ContoursObservation.Contour(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + *(type metadata accessor for ContoursObservation(0) + 32)) topLevelContours];
  sub_1A5B16F58(0, &qword_1EB1F4170);
  v6 = sub_1A5FD3F4C();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1A5FD484C();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1A5C8DC18(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v17;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1AC554EE0](v9, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      *v4 = v11;
      v12 = *(v1 + 20);
      v13 = type metadata accessor for RectangleObservation();
      (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
      v17 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1A5C8DC18(v14 > 1, v15 + 1, 1);
        v10 = v17;
      }

      ++v9;
      *(v10 + 16) = v15 + 1;
      sub_1A5C8E510(v4, v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15, type metadata accessor for ContoursObservation.Contour);
    }

    while (v7 != v9);

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t ContoursObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5FD367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 ContoursObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContoursObservation(0) + 24);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t ContoursObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ContoursObservation(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ContoursObservation.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000022, 0x80000001A60589A0);
  v1 = type metadata accessor for ContoursObservation(0);
  v2 = *(v0 + *(v1 + 32));
  [v2 contourCount];
  v3 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v3);

  MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A60589D0);
  v4 = [v2 topLevelContours];
  sub_1A5B16F58(0, &qword_1EB1F4170);
  v5 = sub_1A5FD3F4C();

  if (v5 >> 62)
  {
    sub_1A5FD484C();
  }

  v6 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v6);

  MEMORY[0x1AC554600](0x72756F746E6F6320, 0xEB00000000202C73);
  v7 = sub_1A5C8E4C8(&qword_1EB1F4178, type metadata accessor for ContoursObservation);
  v8 = sub_1A5C29408(v1, &off_1F1966168, v7);
  MEMORY[0x1AC554600](v8);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0;
}

id ContoursObservation.contourAtIndex(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + *(type metadata accessor for ContoursObservation(0) + 32));
  v15[0] = 0;
  v6 = [v5 contourAtIndex:a1 error:v15];
  v14 = v15[0];
  if (v6)
  {
    *a2 = v6;
    v7 = type metadata accessor for ContoursObservation.Contour(0);
    v8 = *(v7 + 20);
    v9 = type metadata accessor for RectangleObservation();
    (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
    (*(*(v7 - 8) + 56))(a2, 0, 1, v7);

    return v14;
  }

  else
  {
    v11 = v15[0];
    v12 = sub_1A5FD348C();

    swift_willThrow();
    v13 = type metadata accessor for ContoursObservation.Contour(0);
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

id ContoursObservation.countourAtIndexPath(_:)@<X0>(char *a1@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + *(type metadata accessor for ContoursObservation(0) + 32));
  v4 = sub_1A5FD379C();
  v14[0] = 0;
  v5 = [v3 contourAtIndexPath:v4 error:v14];

  v13 = v14[0];
  if (v5)
  {
    *a1 = v5;
    v6 = type metadata accessor for ContoursObservation.Contour(0);
    v7 = *(v6 + 20);
    v8 = type metadata accessor for RectangleObservation();
    (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
    (*(*(v6 - 8) + 56))(a1, 0, 1, v6);

    return v13;
  }

  else
  {
    v10 = v14[0];
    v11 = sub_1A5FD348C();

    swift_willThrow();
    v12 = type metadata accessor for ContoursObservation.Contour(0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t ContoursObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for ContoursObservation(0);
  sub_1A5C8E4C8(&qword_1EB1F4180, type metadata accessor for ContoursObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C8AA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5C8E4C8(&qword_1EB1F4178, type metadata accessor for ContoursObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

void ContoursObservation.Contour.indexPath.getter()
{
  v1 = [*v0 indexPath];
  sub_1A5FD37AC();
}

id ContoursObservation.Contour.normalizedPath.getter()
{
  v1 = [*v0 normalizedPath];

  return v1;
}

size_t ContoursObservation.Contour.childContours.getter()
{
  v1 = type metadata accessor for ContoursObservation.Contour(0);
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*v0 childContours];
  sub_1A5B16F58(0, &qword_1EB1F4170);
  v7 = sub_1A5FD3F4C();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = sub_1A5FD484C();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1A5C8DC18(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v18;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1AC554EE0](v10, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v10 + 32);
      }

      *v5 = v12;
      v13 = *(v1 + 20);
      v14 = type metadata accessor for RectangleObservation();
      (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
      v18 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1A5C8DC18(v15 > 1, v16 + 1, 1);
        v11 = v18;
      }

      ++v10;
      *(v11 + 16) = v16 + 1;
      sub_1A5C8E510(v5, v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, type metadata accessor for ContoursObservation.Contour);
    }

    while (v8 != v10);

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t ContoursObservation.Contour.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A60589F0);
  v1 = *v0;
  [*v0 pointCount];
  v2 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](0xD000000000000011, 0x80000001A6058A10);
  v3 = [v1 childContours];
  sub_1A5B16F58(0, &qword_1EB1F4170);
  v4 = sub_1A5FD3F4C();

  if (v4 >> 62)
  {
    sub_1A5FD484C();
  }

  v5 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v5);

  MEMORY[0x1AC554600](0x72756F746E6F4320, 0xEC00000029297328);
  return 0;
}

Swift::Double __swiftcall ContoursObservation.Contour.calculateArea(useOrientedArea:)(Swift::Bool useOrientedArea)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v3 = objc_opt_self();
  v4 = *v1;
  v9 = 0;
  if ([v3 calculateArea:v10 forContour:v4 orientedArea:useOrientedArea error:&v9])
  {
    v5 = v9;
  }

  else
  {
    v6 = v9;
    v7 = sub_1A5FD348C();

    swift_willThrow();
  }

  return *v10;
}

Swift::Double __swiftcall ContoursObservation.Contour.calculatePerimeter()()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v1 = objc_opt_self();
  v2 = *v0;
  v7 = 0;
  if ([v1 calculatePerimeter:v8 forContour:v2 error:&v7])
  {
    v3 = v7;
  }

  else
  {
    v4 = v7;
    v5 = sub_1A5FD348C();

    swift_willThrow();
  }

  return *v8;
}

void ContoursObservation.Contour.boundingCircle()(uint64_t a1@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = *v1;
  *&v17 = 0;
  v5 = [v3 boundingCircleForContour:v4 error:&v17];
  if (v5)
  {
    v6 = v5;
    v7 = v17;
    v8 = [v6 center];
    [v8 location];
    v10 = v9;
    v12 = v11;

    NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v12, v10));
    v16 = v17;
    [v6 radius];
    NormalizedCircle.init(center:radius:)(&v16, a1, v13);
  }

  else
  {
    v14 = v17;
    v15 = sub_1A5FD348C();

    swift_willThrow();
    sub_1A5FD483C();
    __break(1u);
  }
}

id ContoursObservation.Contour.polygonApproximation(epsilon:)@<X0>(char *a1@<X8>)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v10[0] = 0;
  v4 = [v3 polygonApproximationWithEpsilon:v10 error:?];
  v5 = v10[0];
  if (v4)
  {
    *a1 = v4;
    v6 = *(type metadata accessor for ContoursObservation.Contour(0) + 20);
    v7 = type metadata accessor for RectangleObservation();
    (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
    return v5;
  }

  else
  {
    v9 = v10[0];
    sub_1A5FD348C();

    return swift_willThrow();
  }
}

uint64_t sub_1A5C8B38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, double a4@<D0>)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1A5C8DC38(0, v7, 0);
    v9 = a1;
    v10 = v25;
    v11 = *(v25 + 16);
    v12 = 32;
    do
    {
      v13 = *(v9 + v12);
      v14 = *(v25 + 24);
      if (v11 >= v14 >> 1)
      {
        v24 = *(v9 + v12);
        sub_1A5C8DC38((v14 > 1), v11 + 1, 1);
        v13 = v24;
        v9 = a1;
      }

      *(v25 + 16) = v11 + 1;
      *(v25 + 8 * v11 + 32) = vcvt_f32_f64(v13);
      v12 += 16;
      ++v11;
      --v7;
    }

    while (v7);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v15 = *(v10 + 16);
  v17 = objc_allocWithZone(VNContour);
  v16 = a4;
  *&v18 = v16;
  v19 = [v17 initWithPoints:v10 + 32 pointCount:v15 aspectRatio:v18];

  *a3 = v19;
  v20 = *(type metadata accessor for ContoursObservation.Contour(0) + 20);
  sub_1A5C8E510(a2, &a3[v20], type metadata accessor for RectangleObservation);
  v21 = type metadata accessor for RectangleObservation();
  v22 = *(*(v21 - 8) + 56);

  return v22(&a3[v20], 0, 1, v21);
}

uint64_t sub_1A5C8B548@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v67 = type metadata accessor for RectangleObservation();
  v3 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v5 = (v66.f64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 topLeft];
  v7 = v6;
  v9 = v8;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_1A5C8DF34(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1A5C8DF34((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[16 * v13];
  *(v14 + 4) = v7;
  *(v14 + 5) = v9;
  [a1 topRight];
  v18 = *(v11 + 2);
  v17 = *(v11 + 3);
  if (v18 >= v17 >> 1)
  {
    v57 = v15;
    v58 = v16;
    v59 = sub_1A5C8DF34((v17 > 1), v18 + 1, 1, v11);
    v16 = v58;
    v15 = v57;
    v11 = v59;
  }

  *(v11 + 2) = v18 + 1;
  v19 = &v11[16 * v18];
  *(v19 + 4) = v15;
  *(v19 + 5) = v16;
  [a1 bottomRight];
  v23 = *(v11 + 2);
  v22 = *(v11 + 3);
  if (v23 >= v22 >> 1)
  {
    v60 = v20;
    v61 = v21;
    v62 = sub_1A5C8DF34((v22 > 1), v23 + 1, 1, v11);
    v21 = v61;
    v20 = v60;
    v11 = v62;
  }

  *(v11 + 2) = v23 + 1;
  v24 = &v11[16 * v23];
  *(v24 + 4) = v20;
  *(v24 + 5) = v21;
  [a1 bottomLeft];
  v28 = *(v11 + 2);
  v27 = *(v11 + 3);
  v29 = v28 + 1;
  if (v28 >= v27 >> 1)
  {
    v63 = v25;
    v64 = v26;
    v65 = sub_1A5C8DF34((v27 > 1), v28 + 1, 1, v11);
    v26 = v64;
    v25 = v63;
    v11 = v65;
  }

  *(v11 + 2) = v29;
  v30 = &v11[16 * v28];
  *(v30 + 4) = v25;
  *(v30 + 5) = v26;
  v69 = v10;
  sub_1A5BCCD74(0, v28 + 1, 0);
  v31 = v69;
  v32 = v11 + 40;
  do
  {
    VNVerticallyFlippedNormalizedPoint();
    v69 = v31;
    v36 = *(v31 + 16);
    v35 = *(v31 + 24);
    if (v36 >= v35 >> 1)
    {
      v38 = v33;
      v39 = v34;
      sub_1A5BCCD74((v35 > 1), v36 + 1, 1);
      v34 = v39;
      v33 = v38;
      v31 = v69;
    }

    *(v31 + 16) = v36 + 1;
    v37 = v31 + 16 * v36;
    *(v37 + 32) = v33;
    *(v37 + 40) = v34;
    v32 += 16;
    --v29;
  }

  while (v29);

  v40 = a1;
  [v40 aspectRatio];
  v42 = v41;
  v43 = *(v31 + 16);
  if (v43)
  {
    v69 = MEMORY[0x1E69E7CC0];
    sub_1A5C8DC38(0, v43, 0);
    v44 = v69;
    v45 = *(v69 + 16);
    v46 = 32;
    do
    {
      v47 = *(v31 + v46);
      v69 = v44;
      v48 = *(v44 + 24);
      if (v45 >= v48 >> 1)
      {
        v66 = v47;
        sub_1A5C8DC38((v48 > 1), v45 + 1, 1);
        v47 = v66;
        v44 = v69;
      }

      *(v44 + 16) = v45 + 1;
      *(v44 + 8 * v45 + 32) = vcvt_f32_f64(v47);
      v46 += 16;
      ++v45;
      --v43;
    }

    while (v43);
  }

  else
  {

    v44 = MEMORY[0x1E69E7CC0];
  }

  v49 = *(v44 + 16);
  v51 = objc_allocWithZone(VNContour);
  v50 = v42;
  *&v52 = v50;
  v53 = [v51 initWithPoints:v44 + 32 pointCount:v49 aspectRatio:v52];

  v54 = v68;
  *v68 = v53;
  v55 = *(type metadata accessor for ContoursObservation.Contour(0) + 20);
  sub_1A5C8E510(v5, &v54[v55], type metadata accessor for RectangleObservation);
  return (*(v3 + 56))(&v54[v55], 0, 1, v67);
}

uint64_t sub_1A5C8B994@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = type metadata accessor for ContoursObservation.Contour(0);
  MEMORY[0x1EEE9AC00](v43);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RectangleObservation();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v39.f64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  v13 = (v11 + 16);
  aBlock[4] = sub_1A5C8E578;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A5C8BDC0;
  aBlock[3] = &block_descriptor_0;
  v14 = _Block_copy(aBlock);

  v44 = a1;
  [a1 enumeratePoints_];
  _Block_release(v14);
  swift_beginAccess();
  v15 = *v13;
  v16 = *(v15 + 16);
  v45 = a3;
  if (v16)
  {
    v40 = a2;
    v17 = v10;
    v46 = v12;

    sub_1A5BCCD74(0, v16, 0);
    v12 = v46;
    v18 = v15 + 40;
    do
    {
      VNVerticallyFlippedNormalizedPoint();
      v46 = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        v24 = v19;
        v25 = v20;
        sub_1A5BCCD74((v21 > 1), v22 + 1, 1);
        v20 = v25;
        v19 = v24;
        v12 = v46;
      }

      *(v12 + 16) = v22 + 1;
      v23 = v12 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      v18 += 16;
      --v16;
    }

    while (v16);

    v10 = v17;
    a3 = v45;
    a2 = v40;
  }

  v26 = a2;
  sub_1A5B285EC(v26, v10);
  v27 = *(v12 + 16);
  if (v27)
  {
    v40 = v10;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1A5C8DC38(0, v27, 0);
    v28 = v46;
    v29 = *(v46 + 16);
    v30 = 32;
    do
    {
      v31 = *(v12 + v30);
      v46 = v28;
      v32 = *(v28 + 24);
      if (v29 >= v32 >> 1)
      {
        v39 = v31;
        sub_1A5C8DC38((v32 > 1), v29 + 1, 1);
        v31 = v39;
        v28 = v46;
      }

      *(v28 + 16) = v29 + 1;
      *(v28 + 8 * v29 + 32) = vcvt_f32_f64(v31);
      v30 += 16;
      ++v29;
      --v27;
    }

    while (v27);

    a3 = v45;
    v10 = v40;
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v33 = *(v28 + 16);
  v34 = objc_allocWithZone(VNContour);
  LODWORD(v35) = 1.0;
  v36 = [v34 initWithPoints:v28 + 32 pointCount:v33 aspectRatio:v35];

  swift_unknownObjectRelease();
  *v7 = v36;
  v37 = *(v43 + 20);
  sub_1A5C8E510(v10, &v7[v37], type metadata accessor for RectangleObservation);
  (*(v41 + 56))(&v7[v37], 0, 1, v42);
  sub_1A5C8E510(v7, a3, type metadata accessor for ContoursObservation.Contour);
}

uint64_t sub_1A5C8BDC0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

uint64_t sub_1A5C8BE38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for RectangleObservation();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v50.f64 - v15);
  v17 = *a1;
  v18 = a1[1];
  v19 = *a2;
  v20 = a2[1];
  v21 = *a3;
  v22 = a3[1];
  v23 = *a4;
  v24 = a4[1];
  v25 = MEMORY[0x1E69E7CC0];
  v26 = sub_1A5C8DF34(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  v29 = v27 >> 1;
  v30 = v28 + 1;
  if (v27 >> 1 <= v28)
  {
    v26 = sub_1A5C8DF34((v27 > 1), v28 + 1, 1, v26);
    v27 = *(v26 + 3);
    v29 = v27 >> 1;
  }

  *(v26 + 2) = v30;
  v31 = &v26[16 * v28];
  *(v31 + 4) = v17;
  *(v31 + 5) = v18;
  v32 = v28 + 2;
  if (v29 < (v28 + 2))
  {
    v26 = sub_1A5C8DF34((v27 > 1), v28 + 2, 1, v26);
  }

  *(v26 + 2) = v32;
  v33 = &v26[16 * v30];
  *(v33 + 4) = v19;
  *(v33 + 5) = v20;
  v34 = *(v26 + 3);
  v35 = v28 + 3;
  if ((v28 + 3) > (v34 >> 1))
  {
    v26 = sub_1A5C8DF34((v34 > 1), v28 + 3, 1, v26);
  }

  *(v26 + 2) = v35;
  v36 = &v26[16 * v32];
  *(v36 + 4) = v21;
  *(v36 + 5) = v22;
  v37 = *(v26 + 3);
  if ((v28 + 4) > (v37 >> 1))
  {
    v26 = sub_1A5C8DF34((v37 > 1), v28 + 4, 1, v26);
  }

  *(v26 + 2) = v28 + 4;
  v38 = &v26[16 * v35];
  *(v38 + 4) = v23;
  *(v38 + 5) = v24;
  *&v55 = v17;
  *(&v55 + 1) = v18;
  *&v54 = v19;
  *(&v54 + 1) = v20;
  *&v53 = v21;
  *(&v53 + 1) = v22;
  *&v52 = v23;
  *(&v52 + 1) = v24;
  RectangleObservation.init(topLeft:topRight:bottomRight:bottomLeft:)(&v55, &v54, &v53, &v52, v16);
  sub_1A5C8E6AC(v16, v13, type metadata accessor for RectangleObservation);
  v39 = *(v26 + 2);
  if (v39)
  {
    v51 = v13;
    *&v55 = v25;
    sub_1A5C8DC38(0, v39, 0);
    v25 = v55;
    v40 = *(v55 + 16);
    v41 = 32;
    do
    {
      v42 = *&v26[v41];
      *&v55 = v25;
      v43 = *(v25 + 24);
      if (v40 >= v43 >> 1)
      {
        v50 = v42;
        sub_1A5C8DC38((v43 > 1), v40 + 1, 1);
        v42 = v50;
        v25 = v55;
      }

      *(v25 + 16) = v40 + 1;
      *(v25 + 8 * v40 + 32) = vcvt_f32_f64(v42);
      v41 += 16;
      ++v40;
      --v39;
    }

    while (v39);

    v13 = v51;
  }

  else
  {
  }

  v44 = *(v25 + 16);
  v45 = objc_allocWithZone(VNContour);
  LODWORD(v46) = 1.0;
  v47 = [v45 initWithPoints:v25 + 32 pointCount:v44 aspectRatio:v46];
  sub_1A5C8E714(v16, type metadata accessor for RectangleObservation);

  *a5 = v47;
  v48 = *(type metadata accessor for ContoursObservation.Contour(0) + 20);
  sub_1A5C8E510(v13, &a5[v48], type metadata accessor for RectangleObservation);
  return (*(v11 + 56))(&a5[v48], 0, 1, v10);
}

BOOL sub_1A5C8C21C(uint64_t a1)
{
  v3 = sub_1A5FD37CC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*v1 normalizedPath];
  v8 = *(a1 + 16);
  v9 = (v4 + 104);
  v17 = *MEMORY[0x1E695EEB8];
  v10 = (v4 + 8);
  v11 = a1 + 40;
  v12 = v8 + 1;
  do
  {
    if (!--v12)
    {
      break;
    }

    v13 = v11 + 16;
    (*v9)(v6, v17, v3);
    v19 = 0;
    v20 = 0;
    v18 = 0x3FF0000000000000;
    v21 = 0x3FF0000000000000;
    v22 = 0;
    v23 = 0;
    v14 = sub_1A5FD44CC();
    (*v10)(v6, v3);
    v11 = v13;
  }

  while ((v14 & 1) != 0);

  return v12 == 0;
}

double sub_1A5C8C3B0@<D0>(_OWORD *a1@<X8>)
{
  v3 = objc_opt_self();
  v4 = [(VNGeometryUtils *)v3 boundingBoxForContour:?];
  v8 = [objc_allocWithZone(VNRectangleObservation) initWithRequestRevision:0 boundingBox:{v4, v5, v6, v7}];

  *&result = RectangleObservation.init(_:)(v8, a1).n128_u64[0];
  return result;
}

uint64_t ContoursObservation.Contour.hash(into:)()
{
  v1 = type metadata accessor for RectangleObservation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1A5FD44AC();
  v8 = type metadata accessor for ContoursObservation.Contour(0);
  sub_1A5C17830(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return sub_1A5FD4C3C();
  }

  sub_1A5C8E510(v7, v4, type metadata accessor for RectangleObservation);
  sub_1A5FD4C3C();
  sub_1A5C8E4C8(&qword_1EB1EED18, type metadata accessor for RectangleObservation);
  sub_1A5FD3CBC();
  return sub_1A5C8E714(v4, type metadata accessor for RectangleObservation);
}

uint64_t ContoursObservation.Contour.hashValue.getter()
{
  v1 = type metadata accessor for RectangleObservation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1A5FD4C1C();
  sub_1A5FD44AC();
  v8 = type metadata accessor for ContoursObservation.Contour(0);
  sub_1A5C17830(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1A5FD4C3C();
  }

  else
  {
    sub_1A5C8E510(v7, v4, type metadata accessor for RectangleObservation);
    sub_1A5FD4C3C();
    sub_1A5C8E4C8(&qword_1EB1EED18, type metadata accessor for RectangleObservation);
    sub_1A5FD3CBC();
    sub_1A5C8E714(v4, type metadata accessor for RectangleObservation);
  }

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C8C830(uint64_t a1)
{
  v3 = type metadata accessor for RectangleObservation();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1A5FD4C1C();
  sub_1A5FD44AC();
  sub_1A5C17830(v1 + *(a1 + 20), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1A5FD4C3C();
  }

  else
  {
    sub_1A5C8E510(v9, v6, type metadata accessor for RectangleObservation);
    sub_1A5FD4C3C();
    sub_1A5C8E4C8(&qword_1EB1EED18, type metadata accessor for RectangleObservation);
    sub_1A5FD3CBC();
    sub_1A5C8E714(v6, type metadata accessor for RectangleObservation);
  }

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C8CA2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RectangleObservation();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1A5FD44AC();
  sub_1A5C17830(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_1A5FD4C3C();
  }

  sub_1A5C8E510(v10, v7, type metadata accessor for RectangleObservation);
  sub_1A5FD4C3C();
  sub_1A5C8E4C8(&qword_1EB1EED18, type metadata accessor for RectangleObservation);
  sub_1A5FD3CBC();
  return sub_1A5C8E714(v7, type metadata accessor for RectangleObservation);
}

uint64_t sub_1A5C8CC14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RectangleObservation();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1A5FD4C1C();
  sub_1A5FD44AC();
  sub_1A5C17830(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1A5FD4C3C();
  }

  else
  {
    sub_1A5C8E510(v10, v7, type metadata accessor for RectangleObservation);
    sub_1A5FD4C3C();
    sub_1A5C8E4C8(&qword_1EB1EED18, type metadata accessor for RectangleObservation);
    sub_1A5FD3CBC();
    sub_1A5C8E714(v7, type metadata accessor for RectangleObservation);
  }

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C8CE18()
{
  if (*v0)
  {
    return 0x746176726573626FLL;
  }

  else
  {
    return 0x756F746E6F436E76;
  }
}

uint64_t sub_1A5C8CE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F746E6F436E76 && a2 == 0xE900000000000072;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A5FD4B0C();

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

uint64_t sub_1A5C8CF48(uint64_t a1)
{
  v2 = sub_1A5C8E658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C8CF84(uint64_t a1)
{
  v2 = sub_1A5C8E658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContoursObservation.encode(to:)(void *a1)
{
  v2 = v1;
  v29[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4188);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C8E658();
  sub_1A5FD4CDC();
  v11 = objc_opt_self();
  v12 = type metadata accessor for ContoursObservation(0);
  v13 = *(v12 + 32);
  v26 = v2;
  v14 = *(v2 + v13);
  v29[0] = 0;
  v15 = [v11 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:v29];
  v16 = v29[0];
  if (v15)
  {
    v24 = v4;
    v17 = sub_1A5FD35DC();
    v19 = v18;

    v29[0] = v17;
    v29[1] = v19;
    v28 = 0;
    sub_1A5B0A6B8();
    v20 = v27;
    sub_1A5FD4A5C();
    if (v20)
    {
      (*(v8 + 8))(v10, v7);
      return sub_1A5B066DC(v17, v19);
    }

    LOBYTE(v29[0]) = 1;
    sub_1A5B0A360();
    sub_1A5FD49EC();
    v23 = sub_1A5C8E4C8(&qword_1EB1F4178, type metadata accessor for ContoursObservation);
    sub_1A5BBD46C(v6, v12, &off_1F1966168, v23);
    sub_1A5B066DC(v17, v19);
    (*(v25 + 8))(v6, v24);
  }

  else
  {
    v22 = v16;
    sub_1A5FD348C();

    swift_willThrow();
  }

  return (*(v8 + 8))(v10, v7);
}

void ContoursObservation.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v43 = sub_1A5FD367C();
  v39 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v40 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4190);
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for ContoursObservation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1A5C8E658();
  v14 = v44;
  sub_1A5FD4CCC();
  if (v14)
  {
    goto LABEL_3;
  }

  v36 = v6;
  v37 = v10;
  v44 = v12;
  v15 = v42;
  v16 = v43;
  v17 = v41;
  v50 = 0;
  sub_1A5B0A8B0();
  sub_1A5FD497C();
  v35 = v7;
  v18 = v46;
  v19 = v47;
  sub_1A5B16F58(0, &qword_1EB1EF038);
  sub_1A5B16F58(0, &qword_1EB1F4198);
  v20 = sub_1A5FD435C();
  v34 = v18;
  if (!v20)
  {
    sub_1A5B16774();
    swift_allocError();
    *v21 = 0xD00000000000001CLL;
    *(v21 + 8) = 0x80000001A6058AB0;
    *(v21 + 16) = 0;
    *(v21 + 20) = 0;
    swift_willThrow();
    sub_1A5B066DC(v34, v19);
    (*(v17 + 8))(v9, v35);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v45);
    return;
  }

  v33 = v19;
  *&v44[v37[8]] = v20;
  LOBYTE(v46) = 1;
  v32 = v20;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  LOBYTE(v46) = 0;
  sub_1A5C8E4C8(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
  v22 = v15;
  sub_1A5FD497C();
  v23 = v44;
  (*(v39 + 32))(v44, v22, v16);
  LOBYTE(v46) = 1;
  sub_1A5FD495C();
  v42 = v9;
  v24 = v37;
  *&v23[v37[5]] = v25;
  v50 = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  v26 = v44;
  *&v44[v24[7]] = v46;
  v27 = v36;
  sub_1A5BBDB04(v48);
  v28 = v40;
  sub_1A5B066DC(v34, v33);
  (*(v28 + 8))(v27, v4);
  (*(v17 + 8))(v42, v35);
  v29 = v38;
  v30 = v26 + v37[6];
  v31 = v48[1];
  *v30 = v48[0];
  *(v30 + 16) = v31;
  *(v30 + 32) = v48[2];
  *(v30 + 48) = v49;
  sub_1A5C8E6AC(v26, v29, type metadata accessor for ContoursObservation);
  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_1A5C8E714(v26, type metadata accessor for ContoursObservation);
}

__n128 ContoursObservation.init(_:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  static NormalizedRect.fullImage.getter(v15);
  v4 = a1;
  [v4 timeRange];
  v5 = [v4 uuid];
  sub_1A5FD365C();

  [v4 confidence];
  v7 = v6;

  v8 = type metadata accessor for ContoursObservation(0);
  *(a2 + v8[5]) = v7;
  v9 = a2 + v8[6];
  result = v11;
  *v9 = v11;
  *(v9 + 16) = v12;
  *(v9 + 32) = v13;
  *(v9 + 40) = v14;
  *(v9 + 48) = 0;
  *(a2 + v8[7]) = -8;
  *(a2 + v8[8]) = v4;
  return result;
}

__n128 sub_1A5C8DB60@<Q0>(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, int *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a1;
  v10 = [v9 uuid];
  sub_1A5FD365C();

  [v9 confidence];
  v12 = v11;

  v13 = a4[6];
  *(a5 + a4[5]) = v12;
  v14 = a5 + v13;
  *(v14 + 48) = *(a3 + 48);
  result = *(a3 + 16);
  v16 = *(a3 + 32);
  *(v14 + 16) = result;
  *(v14 + 32) = v16;
  *v14 = *a3;
  v17 = a4[8];
  *(a5 + a4[7]) = v8;
  *(a5 + v17) = v9;
  return result;
}

size_t sub_1A5C8DC18(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5C8DC58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A5C8DC38(char *a1, int64_t a2, char a3)
{
  result = sub_1A5C8DE30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A5C8DC58(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F41C0);
  v10 = *(type metadata accessor for ContoursObservation.Contour(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ContoursObservation.Contour(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1A5C8DE30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1A5C8DF34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

BOOL _s6Vision19ContoursObservationV7ContourV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RectangleObservation();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDA8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  sub_1A5B16F58(0, &qword_1EB1EEFF0);
  if ((sub_1A5FD449C() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for ContoursObservation.Contour(0) + 20);
  v15 = *(v11 + 48);
  sub_1A5C17830(a1 + v14, v13);
  sub_1A5C17830(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1A5B10168(v13, &qword_1EB1EF7C8);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1A5C17830(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1A5C8E714(v10, type metadata accessor for RectangleObservation);
LABEL_7:
    sub_1A5B10168(v13, &qword_1EB1EFDA8);
    return 0;
  }

  sub_1A5C8E510(&v13[v15], v7, type metadata accessor for RectangleObservation);
  sub_1A5C8E4C8(&qword_1EB1EED68, type metadata accessor for RectangleObservation);
  v18 = sub_1A5FD3D0C();
  sub_1A5C8E714(v7, type metadata accessor for RectangleObservation);
  sub_1A5C8E714(v10, type metadata accessor for RectangleObservation);
  sub_1A5B10168(v13, &qword_1EB1EF7C8);
  return (v18 & 1) != 0;
}

uint64_t _s6Vision19ContoursObservationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1A5FD364C() & 1) == 0)
  {
    goto LABEL_14;
  }

  v4 = type metadata accessor for ContoursObservation(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    goto LABEL_14;
  }

  v5 = v4[6];
  v6 = *(a1 + v5 + 48);
  v7 = a2 + v5;
  if (v6)
  {
    if (!*(v7 + 48))
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*(v7 + 48))
    {
      goto LABEL_14;
    }

    v8 = v4;
    v9 = sub_1A5FD42BC();
    v4 = v8;
    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 <= 0xFFF7)
  {
    if (v12 > 0xFFF7)
    {
      goto LABEL_14;
    }

    sub_1A5B0BB44();
    if ((sub_1A5FD3D0C() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v12 <= 0xFFF7)
  {
LABEL_14:
    v13 = 0;
    return v13 & 1;
  }

  sub_1A5B16F58(0, &qword_1EB1EEFF0);
  v13 = sub_1A5FD449C();
  return v13 & 1;
}

uint64_t sub_1A5C8E4C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5C8E510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5C8E578(double a1, double a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v5;
  if ((result & 1) == 0)
  {
    result = sub_1A5C8DF34(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *(v2 + 16) = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_1A5C8DF34((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  v9 = v5 + 16 * v8;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v2 + 16) = v5;
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1A5C8E658()
{
  result = qword_1EB2588A0[0];
  if (!qword_1EB2588A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2588A0);
  }

  return result;
}

uint64_t sub_1A5C8E6AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5C8E714(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A5C8E774(void *a1)
{
  a1[1] = sub_1A5C8E4C8(&qword_1EB1EFB18, type metadata accessor for ContoursObservation);
  a1[2] = sub_1A5C8E4C8(&qword_1EB1F41A0, type metadata accessor for ContoursObservation);
  a1[3] = sub_1A5C8E4C8(&qword_1EB1F41A8, type metadata accessor for ContoursObservation);
  result = sub_1A5C8E4C8(&qword_1EB1F4180, type metadata accessor for ContoursObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5C8E8D8(uint64_t a1)
{
  result = sub_1A5C8E4C8(&qword_1EB1F4178, type metadata accessor for ContoursObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5C8E958()
{
  sub_1A5FD367C();
  if (v0 <= 0x3F)
  {
    sub_1A5C8EB3C(319, &qword_1EB1EE618, type metadata accessor for CMTimeRange);
    if (v1 <= 0x3F)
    {
      sub_1A5B57E7C(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A5B16F58(319, &qword_1EB1F4198);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A5C8EA8C()
{
  sub_1A5B16F58(319, &qword_1EB1F4170);
  if (v0 <= 0x3F)
  {
    sub_1A5C8EB3C(319, &qword_1EB1F41B8, type metadata accessor for RectangleObservation);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A5C8EB3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5FD456C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A5C8EBA4()
{
  result = qword_1EB258ED0[0];
  if (!qword_1EB258ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB258ED0);
  }

  return result;
}

unint64_t sub_1A5C8EBFC()
{
  result = qword_1EB258FE0;
  if (!qword_1EB258FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB258FE0);
  }

  return result;
}

unint64_t sub_1A5C8EC54()
{
  result = qword_1EB258FE8[0];
  if (!qword_1EB258FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB258FE8);
  }

  return result;
}

uint64_t sub_1A5C8ECD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697369766572 && a2 == 0xE900000000000034)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A5FD4B0C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A5C8ED64(uint64_t a1)
{
  v2 = sub_1A5C8F02C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C8EDA0(uint64_t a1)
{
  v2 = sub_1A5C8F02C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C8EDDC(uint64_t a1)
{
  v2 = sub_1A5C8F080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C8EE18(uint64_t a1)
{
  v2 = sub_1A5C8F080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectBarcodesRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F41C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F41D0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C8F02C();
  sub_1A5FD4CDC();
  sub_1A5C8F080();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5C8F02C()
{
  result = qword_1EB259090;
  if (!qword_1EB259090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB259090);
  }

  return result;
}

unint64_t sub_1A5C8F080()
{
  result = qword_1EB259098;
  if (!qword_1EB259098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB259098);
  }

  return result;
}

uint64_t DetectBarcodesRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t DetectBarcodesRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F41D8);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F41E0);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C8F02C();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5C8F080();
      sub_1A5FD48CC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1A5FD471C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v13 = &type metadata for DetectBarcodesRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5C8F44C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F41C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F41D0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C8F02C();
  sub_1A5FD4CDC();
  sub_1A5C8F080();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t DetectBarcodesRequest.init(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  BYTE8(v8) = 0;
  static NormalizedRect.fullImage.getter(v9);
  LODWORD(v10) = 0x1000000;
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(&v10 + 1) = result;
  if (v3 == 1 && (sub_1A5B777B8(), result = sub_1A5D4E900(), (v7 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    *&v8 = &unk_1F1966208;
    v5 = v10;
    *(a2 + 32) = v9[1];
    *(a2 + 48) = v5;
    v6 = v9[0];
    *a2 = v8;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t DetectBarcodesRequest.symbologies.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1A5C8F760()
{
  sub_1A5B777B8();
  result = sub_1A5D4EB30();
  qword_1EB259078 = result;
  return result;
}

__n128 DetectBarcodesRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 DetectBarcodesRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  return result;
}

uint64_t DetectBarcodesRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5B777B8();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for DetectBarcodesRequest, v3);
}

uint64_t sub_1A5C8F854()
{
  sub_1A5B777B8();
  result = sub_1A5D4EC2C();
  qword_1EB259088 = result;
  return result;
}

unint64_t sub_1A5C8F8C8(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
    case 9:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
    case 10:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 11:
    case 16:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0xD00000000000002FLL;
      break;
    case 13:
      result = 0xD00000000000002ALL;
      break;
    case 14:
      result = 0xD00000000000002CLL;
      break;
    case 15:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A5C8FAC0(uint64_t a1)
{
  v2 = sub_1A5C92E3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C8FAFC(uint64_t a1)
{
  v2 = sub_1A5C92E3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C8FB38(uint64_t a1)
{
  v2 = sub_1A5C92EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C8FB74(uint64_t a1)
{
  v2 = sub_1A5C92EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C8FBB0(uint64_t a1)
{
  v2 = sub_1A5C93034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C8FBEC(uint64_t a1)
{
  v2 = sub_1A5C93034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C8FC28(uint64_t a1)
{
  v2 = sub_1A5C92FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C8FC64(uint64_t a1)
{
  v2 = sub_1A5C92FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C8FCA0(uint64_t a1)
{
  v2 = sub_1A5C93184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C8FCDC(uint64_t a1)
{
  v2 = sub_1A5C93184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C8FD18(uint64_t a1)
{
  v2 = sub_1A5C93130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C8FD54(uint64_t a1)
{
  v2 = sub_1A5C93130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C8FD90(uint64_t a1)
{
  v2 = sub_1A5C92DE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C8FDCC(uint64_t a1)
{
  v2 = sub_1A5C92DE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C8FE08(uint64_t a1)
{
  v2 = sub_1A5C92E90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C8FE44(uint64_t a1)
{
  v2 = sub_1A5C92E90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C8FE80(uint64_t a1)
{
  v2 = sub_1A5C92D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C8FEBC(uint64_t a1)
{
  v2 = sub_1A5C92D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C8FEF8(uint64_t a1)
{
  v2 = sub_1A5C92F8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C8FF34(uint64_t a1)
{
  v2 = sub_1A5C92F8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C8FF70(uint64_t a1)
{
  v2 = sub_1A5C92F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C8FFAC(uint64_t a1)
{
  v2 = sub_1A5C92F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C8FFE8(uint64_t a1)
{
  v2 = sub_1A5C92D94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C90024(uint64_t a1)
{
  v2 = sub_1A5C92D94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C90060(uint64_t a1)
{
  v2 = sub_1A5C930DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C9009C(uint64_t a1)
{
  v2 = sub_1A5C930DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C900D8(uint64_t a1)
{
  v2 = sub_1A5C93088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C90114(uint64_t a1)
{
  v2 = sub_1A5C93088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C90158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5C9322C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5C9018C(uint64_t a1)
{
  v2 = sub_1A5C92C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C901C8(uint64_t a1)
{
  v2 = sub_1A5C92C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C90204(uint64_t a1)
{
  v2 = sub_1A5C92CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C90240(uint64_t a1)
{
  v2 = sub_1A5C92CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C9027C(uint64_t a1)
{
  v2 = sub_1A5C92C98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C902B8(uint64_t a1)
{
  v2 = sub_1A5C92C98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C902F4(uint64_t a1)
{
  v2 = sub_1A5C931D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C90330(uint64_t a1)
{
  v2 = sub_1A5C931D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectBarcodesRequest.LocateMode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F41E8);
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v97 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F41F0);
  v95 = *(v6 - 8);
  v96 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v94 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F41F8);
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4200);
  v89 = *(v10 - 8);
  v90 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4208);
  v86 = *(v12 - 8);
  v87 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4210);
  v83 = *(v14 - 8);
  v84 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v52 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4218);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v52 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4220);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v52 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4228);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v52 - v18;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4230);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v52 - v19;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4238);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v52 - v20;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4240);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v52 - v21;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4248);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v52 - v22;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4250);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v52 - v23;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4258);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v52 - v24;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4260);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v26 = &v52 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4268);
  v52 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v52 - v28;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4270);
  v30 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v32 = &v52 - v31;
  v33 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C92C44();
  v100 = v32;
  sub_1A5FD4CDC();
  switch(v33)
  {
    case 1:
      v103 = 1;
      sub_1A5C93184();
      v35 = v100;
      v34 = v101;
      sub_1A5FD49EC();
      v40 = *(v53 + 8);
      v41 = v26;
      v42 = &v86;
      goto LABEL_20;
    case 2:
      v103 = 2;
      sub_1A5C93130();
      v44 = v55;
      v35 = v100;
      v34 = v101;
      sub_1A5FD49EC();
      v40 = *(v56 + 8);
      v41 = v44;
      v42 = &v89;
      goto LABEL_20;
    case 3:
      v103 = 3;
      sub_1A5C930DC();
      v45 = v58;
      v35 = v100;
      v34 = v101;
      sub_1A5FD49EC();
      v40 = *(v59 + 8);
      v41 = v45;
      v42 = &v92;
      goto LABEL_20;
    case 4:
      v103 = 4;
      sub_1A5C93088();
      v39 = v61;
      v35 = v100;
      v34 = v101;
      sub_1A5FD49EC();
      v40 = *(v62 + 8);
      v41 = v39;
      v42 = &v95;
      goto LABEL_20;
    case 5:
      v103 = 5;
      sub_1A5C93034();
      v47 = v64;
      v35 = v100;
      v34 = v101;
      sub_1A5FD49EC();
      v40 = *(v65 + 8);
      v41 = v47;
      v42 = &v98;
      goto LABEL_20;
    case 6:
      v103 = 6;
      sub_1A5C92FE0();
      v48 = v67;
      v35 = v100;
      v34 = v101;
      sub_1A5FD49EC();
      v40 = *(v68 + 8);
      v41 = v48;
      v42 = &v101;
      goto LABEL_20;
    case 7:
      v103 = 7;
      sub_1A5C92F8C();
      v46 = v70;
      v35 = v100;
      v34 = v101;
      sub_1A5FD49EC();
      v40 = *(v71 + 8);
      v41 = v46;
      v42 = &v102;
      goto LABEL_20;
    case 8:
      v103 = 8;
      sub_1A5C92F38();
      v50 = v73;
      v35 = v100;
      v34 = v101;
      sub_1A5FD49EC();
      v40 = *(v74 + 8);
      v41 = v50;
      v42 = &v104;
      goto LABEL_20;
    case 9:
      v103 = 9;
      sub_1A5C92EE4();
      v43 = v76;
      v35 = v100;
      v34 = v101;
      sub_1A5FD49EC();
      v40 = *(v77 + 8);
      v41 = v43;
      v42 = &v105;
      goto LABEL_20;
    case 10:
      v103 = 10;
      sub_1A5C92E90();
      v49 = v79;
      v35 = v100;
      v34 = v101;
      sub_1A5FD49EC();
      v40 = *(v80 + 8);
      v41 = v49;
      v42 = &v106;
LABEL_20:
      v40(v41, *(v42 - 32));
      return (*(v30 + 8))(v35, v34);
    case 11:
      v103 = 11;
      sub_1A5C92E3C();
      v36 = v82;
      v35 = v100;
      v34 = v101;
      sub_1A5FD49EC();
      v38 = v83;
      v37 = v84;
      goto LABEL_16;
    case 12:
      v103 = 12;
      sub_1A5C92DE8();
      v36 = v85;
      v35 = v100;
      v34 = v101;
      sub_1A5FD49EC();
      v38 = v86;
      v37 = v87;
      goto LABEL_16;
    case 13:
      v103 = 13;
      sub_1A5C92D94();
      v36 = v88;
      v35 = v100;
      v34 = v101;
      sub_1A5FD49EC();
      v38 = v89;
      v37 = v90;
      goto LABEL_16;
    case 14:
      v103 = 14;
      sub_1A5C92D40();
      v36 = v91;
      v35 = v100;
      v34 = v101;
      sub_1A5FD49EC();
      v38 = v92;
      v37 = v93;
      goto LABEL_16;
    case 15:
      v103 = 15;
      sub_1A5C92CEC();
      v36 = v94;
      v35 = v100;
      v34 = v101;
      sub_1A5FD49EC();
      v38 = v95;
      v37 = v96;
      goto LABEL_16;
    case 16:
      v103 = 16;
      sub_1A5C92C98();
      v36 = v97;
      v35 = v100;
      v34 = v101;
      sub_1A5FD49EC();
      v38 = v98;
      v37 = v99;
LABEL_16:
      (*(v38 + 8))(v36, v37);
      break;
    default:
      v103 = 0;
      sub_1A5C931D8();
      v35 = v100;
      v34 = v101;
      sub_1A5FD49EC();
      (*(v52 + 8))(v29, v27);
      break;
  }

  return (*(v30 + 8))(v35, v34);
}

uint64_t DetectBarcodesRequest.LocateMode.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t DetectBarcodesRequest.LocateMode.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v126 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4278);
  v109 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v121 = v73 - v3;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4280);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v120 = v73 - v4;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4288);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v119 = v73 - v5;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4290);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v118 = v73 - v6;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4298);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v117 = v73 - v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F42A0);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v116 = v73 - v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F42A8);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v115 = v73 - v9;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F42B0);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v114 = v73 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F42B8);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v113 = v73 - v11;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F42C0);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v112 = v73 - v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F42C8);
  v90 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v124 = v73 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F42D0);
  v88 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v123 = v73 - v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F42D8);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v122 = v73 - v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F42E0);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v111 = v73 - v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F42E8);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v110 = v73 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F42F0);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v19 = v73 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F42F8);
  v78 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v73 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4300);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v73 - v25;
  v27 = a1[3];
  v128 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1A5C92C44();
  v28 = v127;
  sub_1A5FD4CCC();
  if (v28)
  {
LABEL_41:
    v71 = v128;
    return __swift_destroy_boxed_opaque_existential_1(v71);
  }

  v75 = v22;
  v74 = v20;
  v76 = v19;
  v29 = v122;
  v30 = v123;
  v31 = v124;
  v77 = 0;
  v33 = v125;
  v32 = v126;
  v127 = v24;
  v34 = v26;
  v35 = sub_1A5FD49BC();
  if (*(v35 + 16) != 1 || (v36 = *(v35 + 32), v36 == 17))
  {
    v39 = sub_1A5FD471C();
    swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v41 = &type metadata for DetectBarcodesRequest.LocateMode;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    (*(v127 + 8))(v34, v23);
LABEL_40:
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  v73[1] = v35;
  switch(v36)
  {
    case 1:
      v129 = 1;
      sub_1A5C93184();
      v61 = v76;
      v62 = v77;
      sub_1A5FD48CC();
      if (v62)
      {
        goto LABEL_39;
      }

      (*(v79 + 8))(v61, v80);
      goto LABEL_44;
    case 2:
      v129 = 2;
      sub_1A5C93130();
      v53 = v110;
      v54 = v77;
      sub_1A5FD48CC();
      if (v54)
      {
        goto LABEL_39;
      }

      (*(v81 + 8))(v53, v82);
      goto LABEL_44;
    case 3:
      v129 = 3;
      sub_1A5C930DC();
      v57 = v111;
      v58 = v77;
      sub_1A5FD48CC();
      if (v58)
      {
        goto LABEL_39;
      }

      (*(v83 + 8))(v57, v84);
      goto LABEL_44;
    case 4:
      v129 = 4;
      sub_1A5C93088();
      v48 = v77;
      sub_1A5FD48CC();
      if (v48)
      {
        goto LABEL_39;
      }

      (*(v85 + 8))(v29, v86);
      goto LABEL_44;
    case 5:
      v129 = 5;
      sub_1A5C93034();
      v63 = v77;
      sub_1A5FD48CC();
      if (v63)
      {
        goto LABEL_39;
      }

      (*(v88 + 8))(v30, v87);
      goto LABEL_44;
    case 6:
      v129 = 6;
      sub_1A5C92FE0();
      v66 = v77;
      sub_1A5FD48CC();
      if (v66)
      {
        goto LABEL_39;
      }

      (*(v90 + 8))(v31, v89);
      goto LABEL_44;
    case 7:
      v129 = 7;
      sub_1A5C92F8C();
      v59 = v112;
      v60 = v77;
      sub_1A5FD48CC();
      if (v60)
      {
        goto LABEL_39;
      }

      (*(v91 + 8))(v59, v92);
      goto LABEL_44;
    case 8:
      v129 = 8;
      sub_1A5C92F38();
      v69 = v113;
      v70 = v77;
      sub_1A5FD48CC();
      if (v70)
      {
        goto LABEL_39;
      }

      (*(v93 + 8))(v69, v94);
      goto LABEL_44;
    case 9:
      v129 = 9;
      sub_1A5C92EE4();
      v51 = v114;
      v52 = v77;
      sub_1A5FD48CC();
      if (v52)
      {
        goto LABEL_39;
      }

      (*(v95 + 8))(v51, v96);
      goto LABEL_44;
    case 10:
      v129 = 10;
      sub_1A5C92E90();
      v67 = v115;
      v68 = v77;
      sub_1A5FD48CC();
      if (v68)
      {
        goto LABEL_39;
      }

      (*(v97 + 8))(v67, v98);
      goto LABEL_44;
    case 11:
      v129 = 11;
      sub_1A5C92E3C();
      v46 = v116;
      v47 = v77;
      sub_1A5FD48CC();
      if (v47)
      {
        goto LABEL_39;
      }

      (*(v99 + 8))(v46, v100);
      goto LABEL_44;
    case 12:
      v129 = 12;
      sub_1A5C92DE8();
      v49 = v117;
      v50 = v77;
      sub_1A5FD48CC();
      if (v50)
      {
        goto LABEL_39;
      }

      (*(v101 + 8))(v49, v102);
      goto LABEL_44;
    case 13:
      v129 = 13;
      sub_1A5C92D94();
      v64 = v118;
      v65 = v77;
      sub_1A5FD48CC();
      if (v65)
      {
        goto LABEL_39;
      }

      (*(v103 + 8))(v64, v104);
      goto LABEL_44;
    case 14:
      v129 = 14;
      sub_1A5C92D40();
      v44 = v119;
      v45 = v77;
      sub_1A5FD48CC();
      if (v45)
      {
        goto LABEL_39;
      }

      (*(v105 + 8))(v44, v106);
      goto LABEL_44;
    case 15:
      v129 = 15;
      sub_1A5C92CEC();
      v55 = v120;
      v56 = v77;
      sub_1A5FD48CC();
      if (v56)
      {
        goto LABEL_39;
      }

      (*(v107 + 8))(v55, v108);
      goto LABEL_44;
    case 16:
      v129 = 16;
      sub_1A5C92C98();
      v42 = v121;
      v43 = v77;
      sub_1A5FD48CC();
      if (v43)
      {
        goto LABEL_39;
      }

      (*(v109 + 8))(v42, v33);
      goto LABEL_44;
    default:
      v129 = 0;
      sub_1A5C931D8();
      v37 = v75;
      v38 = v77;
      sub_1A5FD48CC();
      if (v38)
      {
LABEL_39:
        (*(v127 + 8))(v34, v23);
        goto LABEL_40;
      }

      (*(v78 + 8))(v37, v74);
LABEL_44:
      (*(v127 + 8))(v34, v23);
      swift_unknownObjectRelease();
      v71 = v128;
      *v32 = v36;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v71);
}

uint64_t DetectBarcodesRequest.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 48);
  v8 = v1[7];
  MEMORY[0x1AC555420](*(*v1 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v3 + 32;
    sub_1A5B773A0();
    do
    {
      ++v6;
      sub_1A5FD3CBC();
      --v5;
    }

    while (v5);
  }

  sub_1A5FD4C3C();
  MEMORY[0x1AC555420](0);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v4);
  sub_1A5FD4C3C();
  sub_1A5FD4C3C();
  sub_1A5FD4C3C();
  return sub_1A5B0ED0C(a1, v8);
}

uint64_t DetectBarcodesRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  DetectBarcodesRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

__n128 sub_1A5C927A8@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_1A5C927B4(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_1A5C927E0(uint64_t a1)
{
  v2 = sub_1A5C94B40();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5C9281C(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5B777B8();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C9287C(uint64_t a1)
{
  v2 = sub_1A5B5ED9C();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C928B8()
{
  sub_1A5FD4C1C();
  DetectBarcodesRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C928FC()
{
  sub_1A5FD4C1C();
  DetectBarcodesRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C9293C@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 50) == 1 && *(v1 + 51) == 0)
  {
    RecognizeDocumentElementsRequest.init(revision:)(v9);
    v7 = *(v1 + 32);
    *&v9[8] = *(v1 + 16);
    *&v9[24] = v7;
    *&v9[4] = 257;
    v6 = sub_1A5C39874();
    result = swift_allocObject();
    v8 = *&v9[16];
    *(result + 16) = *v9;
    *(result + 32) = v8;
    *(result + 48) = *&v9[32];
    *(result + 64) = v10;
    v5 = &type metadata for RecognizeDocumentElementsRequest;
  }

  else
  {
    result = 0;
    v5 = 0;
    v6 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = result;
  a1[3] = v5;
  a1[4] = v6;
  return result;
}

uint64_t sub_1A5C92A14(uint64_t a1, uint64_t a2)
{
  sub_1A5B5ED9C();

  return sub_1A5D4E6C8(a1, a2);
}

double sub_1A5C92A64@<D0>(_OWORD *a1@<X8>)
{
  BYTE8(v5) = 0;
  static NormalizedRect.fullImage.getter(&v6);
  LODWORD(v8) = 0x1000000;
  *(&v8 + 1) = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *&v5 = &unk_1F1966208;
  v2 = v6;
  *a1 = v5;
  a1[1] = v2;
  result = *&v7;
  v4 = v8;
  a1[2] = v7;
  a1[3] = v4;
  return result;
}

uint64_t _s6Vision21DetectBarcodesRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v17.origin = *(a1 + 16);
  v17.size = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 49);
  v5 = *(a1 + 50);
  v6 = *(a1 + 51);
  v7 = *(a2 + 8);
  v15 = *(a2 + 32);
  v16 = *(a2 + 16);
  v8 = *(a2 + 48);
  v9 = *(a2 + 49);
  v10 = *(a2 + 50);
  v11 = *(a2 + 51);
  v13 = *(a2 + 56);
  v14 = *(a1 + 56);
  if ((sub_1A5B73CA8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if ((v2 ^ v7))
  {
    return 0;
  }

  v19 = v17;
  v18.origin = v16;
  v18.size = v15;
  if (!static NormalizedRect.== infix(_:_:)(&v19, &v18) || v3 != v8 || ((v4 ^ v9) & 1) != 0 || ((v5 ^ v10) & 1) != 0 || ((v6 ^ v11) & 1) != 0)
  {
    return 0;
  }

  return sub_1A5B0D3C4(v14, v13);
}

unint64_t sub_1A5C92C44()
{
  result = qword_1EB2590A0;
  if (!qword_1EB2590A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2590A0);
  }

  return result;
}

unint64_t sub_1A5C92C98()
{
  result = qword_1EB2590A8;
  if (!qword_1EB2590A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2590A8);
  }

  return result;
}

unint64_t sub_1A5C92CEC()
{
  result = qword_1EB2590B0;
  if (!qword_1EB2590B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2590B0);
  }

  return result;
}

unint64_t sub_1A5C92D40()
{
  result = qword_1EB2590B8;
  if (!qword_1EB2590B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2590B8);
  }

  return result;
}

unint64_t sub_1A5C92D94()
{
  result = qword_1EB2590C0;
  if (!qword_1EB2590C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2590C0);
  }

  return result;
}

unint64_t sub_1A5C92DE8()
{
  result = qword_1EB2590C8;
  if (!qword_1EB2590C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2590C8);
  }

  return result;
}

unint64_t sub_1A5C92E3C()
{
  result = qword_1EB2590D0;
  if (!qword_1EB2590D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2590D0);
  }

  return result;
}

unint64_t sub_1A5C92E90()
{
  result = qword_1EB2590D8;
  if (!qword_1EB2590D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2590D8);
  }

  return result;
}

unint64_t sub_1A5C92EE4()
{
  result = qword_1EB2590E0;
  if (!qword_1EB2590E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2590E0);
  }

  return result;
}

unint64_t sub_1A5C92F38()
{
  result = qword_1EB2590E8;
  if (!qword_1EB2590E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2590E8);
  }

  return result;
}

unint64_t sub_1A5C92F8C()
{
  result = qword_1EB2590F0;
  if (!qword_1EB2590F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2590F0);
  }

  return result;
}

unint64_t sub_1A5C92FE0()
{
  result = qword_1EB2590F8;
  if (!qword_1EB2590F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2590F8);
  }

  return result;
}

unint64_t sub_1A5C93034()
{
  result = qword_1EB259100;
  if (!qword_1EB259100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB259100);
  }

  return result;
}

unint64_t sub_1A5C93088()
{
  result = qword_1EB259108;
  if (!qword_1EB259108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB259108);
  }

  return result;
}

unint64_t sub_1A5C930DC()
{
  result = qword_1EB259110;
  if (!qword_1EB259110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB259110);
  }

  return result;
}

unint64_t sub_1A5C93130()
{
  result = qword_1EB259118;
  if (!qword_1EB259118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB259118);
  }

  return result;
}

unint64_t sub_1A5C93184()
{
  result = qword_1EB259120;
  if (!qword_1EB259120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB259120);
  }

  return result;
}

unint64_t sub_1A5C931D8()
{
  result = qword_1EB259128[0];
  if (!qword_1EB259128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB259128);
  }

  return result;
}

uint64_t sub_1A5C9322C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A6058AD0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A6058AF0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A6058B10 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A6058B30 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A6058B50 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A6058B70 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A6058B90 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A6058BB0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A6058BD0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A6058BF0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A6058C10 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000002FLL && 0x80000001A6058C30 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000002ALL && 0x80000001A6058C60 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000002CLL && 0x80000001A6058C90 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A6058CC0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A6058CE0 == a2)
  {

    return 16;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

unint64_t sub_1A5C93760()
{
  result = qword_1EB1F4308;
  if (!qword_1EB1F4308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4308);
  }

  return result;
}

unint64_t sub_1A5C937BC()
{
  result = qword_1EB1F4310;
  if (!qword_1EB1F4310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F4318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4310);
  }

  return result;
}

unint64_t sub_1A5C93824()
{
  result = qword_1EB1F4320;
  if (!qword_1EB1F4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4320);
  }

  return result;
}

unint64_t sub_1A5C93878(uint64_t a1)
{
  result = sub_1A5B5ED9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C938A0(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B6715C();
  result = sub_1A5C938D0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C938D0()
{
  result = qword_1EB1F4328;
  if (!qword_1EB1F4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4328);
  }

  return result;
}

unint64_t sub_1A5C93928()
{
  result = qword_1EB1F4330;
  if (!qword_1EB1F4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4330);
  }

  return result;
}

unint64_t sub_1A5C93980()
{
  result = qword_1EB1F4338;
  if (!qword_1EB1F4338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4338);
  }

  return result;
}

unint64_t sub_1A5C93A1C(uint64_t a1)
{
  result = sub_1A5B777B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C93A44(uint64_t a1)
{
  result = sub_1A5C93A6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C93A6C()
{
  result = qword_1EB1F4348;
  if (!qword_1EB1F4348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4348);
  }

  return result;
}

uint64_t sub_1A5C93AC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1A5C93B08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A5C93CD4()
{
  result = qword_1EB259C30[0];
  if (!qword_1EB259C30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB259C30);
  }

  return result;
}

unint64_t sub_1A5C93D2C()
{
  result = qword_1EB25AF40[0];
  if (!qword_1EB25AF40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25AF40);
  }

  return result;
}

unint64_t sub_1A5C93D84()
{
  result = qword_1EB25B050;
  if (!qword_1EB25B050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B050);
  }

  return result;
}

unint64_t sub_1A5C93DDC()
{
  result = qword_1EB25B058[0];
  if (!qword_1EB25B058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25B058);
  }

  return result;
}

unint64_t sub_1A5C93E34()
{
  result = qword_1EB25B0E0;
  if (!qword_1EB25B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B0E0);
  }

  return result;
}

unint64_t sub_1A5C93E8C()
{
  result = qword_1EB25B0E8[0];
  if (!qword_1EB25B0E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25B0E8);
  }

  return result;
}

unint64_t sub_1A5C93EE4()
{
  result = qword_1EB25B170;
  if (!qword_1EB25B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B170);
  }

  return result;
}

unint64_t sub_1A5C93F3C()
{
  result = qword_1EB25B178;
  if (!qword_1EB25B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B178);
  }

  return result;
}

unint64_t sub_1A5C93F94()
{
  result = qword_1EB25B200;
  if (!qword_1EB25B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B200);
  }

  return result;
}

unint64_t sub_1A5C93FEC()
{
  result = qword_1EB25B208[0];
  if (!qword_1EB25B208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25B208);
  }

  return result;
}

unint64_t sub_1A5C94044()
{
  result = qword_1EB25B290;
  if (!qword_1EB25B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B290);
  }

  return result;
}

unint64_t sub_1A5C9409C()
{
  result = qword_1EB25B298[0];
  if (!qword_1EB25B298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25B298);
  }

  return result;
}

unint64_t sub_1A5C940F4()
{
  result = qword_1EB25B320;
  if (!qword_1EB25B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B320);
  }

  return result;
}

unint64_t sub_1A5C9414C()
{
  result = qword_1EB25B328[0];
  if (!qword_1EB25B328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25B328);
  }

  return result;
}

unint64_t sub_1A5C941A4()
{
  result = qword_1EB25B3B0;
  if (!qword_1EB25B3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B3B0);
  }

  return result;
}

unint64_t sub_1A5C941FC()
{
  result = qword_1EB25B3B8[0];
  if (!qword_1EB25B3B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25B3B8);
  }

  return result;
}

unint64_t sub_1A5C94254()
{
  result = qword_1EB25B440;
  if (!qword_1EB25B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B440);
  }

  return result;
}

unint64_t sub_1A5C942AC()
{
  result = qword_1EB25B448[0];
  if (!qword_1EB25B448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25B448);
  }

  return result;
}

unint64_t sub_1A5C94304()
{
  result = qword_1EB25B4D0;
  if (!qword_1EB25B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B4D0);
  }

  return result;
}

unint64_t sub_1A5C9435C()
{
  result = qword_1EB25B4D8[0];
  if (!qword_1EB25B4D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25B4D8);
  }

  return result;
}

unint64_t sub_1A5C943B4()
{
  result = qword_1EB25B560;
  if (!qword_1EB25B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B560);
  }

  return result;
}

unint64_t sub_1A5C9440C()
{
  result = qword_1EB25B568[0];
  if (!qword_1EB25B568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25B568);
  }

  return result;
}

unint64_t sub_1A5C94464()
{
  result = qword_1EB25B5F0;
  if (!qword_1EB25B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B5F0);
  }

  return result;
}

unint64_t sub_1A5C944BC()
{
  result = qword_1EB25B5F8[0];
  if (!qword_1EB25B5F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25B5F8);
  }

  return result;
}

unint64_t sub_1A5C94514()
{
  result = qword_1EB25B680;
  if (!qword_1EB25B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B680);
  }

  return result;
}

unint64_t sub_1A5C9456C()
{
  result = qword_1EB25B688[0];
  if (!qword_1EB25B688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25B688);
  }

  return result;
}

unint64_t sub_1A5C945C4()
{
  result = qword_1EB25B710;
  if (!qword_1EB25B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B710);
  }

  return result;
}

unint64_t sub_1A5C9461C()
{
  result = qword_1EB25B718[0];
  if (!qword_1EB25B718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25B718);
  }

  return result;
}

unint64_t sub_1A5C94674()
{
  result = qword_1EB25B7A0;
  if (!qword_1EB25B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B7A0);
  }

  return result;
}

unint64_t sub_1A5C946CC()
{
  result = qword_1EB25B7A8[0];
  if (!qword_1EB25B7A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25B7A8);
  }

  return result;
}

unint64_t sub_1A5C94724()
{
  result = qword_1EB25B830;
  if (!qword_1EB25B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B830);
  }

  return result;
}

unint64_t sub_1A5C9477C()
{
  result = qword_1EB25B838[0];
  if (!qword_1EB25B838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25B838);
  }

  return result;
}

unint64_t sub_1A5C947D4()
{
  result = qword_1EB25B8C0;
  if (!qword_1EB25B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B8C0);
  }

  return result;
}

unint64_t sub_1A5C9482C()
{
  result = qword_1EB25B8C8[0];
  if (!qword_1EB25B8C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25B8C8);
  }

  return result;
}

unint64_t sub_1A5C94884()
{
  result = qword_1EB25B950;
  if (!qword_1EB25B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B950);
  }

  return result;
}

unint64_t sub_1A5C948DC()
{
  result = qword_1EB25B958[0];
  if (!qword_1EB25B958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25B958);
  }

  return result;
}

unint64_t sub_1A5C94934()
{
  result = qword_1EB25B9E0;
  if (!qword_1EB25B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25B9E0);
  }

  return result;
}

unint64_t sub_1A5C9498C()
{
  result = qword_1EB25B9E8[0];
  if (!qword_1EB25B9E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25B9E8);
  }

  return result;
}

unint64_t sub_1A5C949E4()
{
  result = qword_1EB25BA70;
  if (!qword_1EB25BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25BA70);
  }

  return result;
}

unint64_t sub_1A5C94A3C()
{
  result = qword_1EB25BA78;
  if (!qword_1EB25BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25BA78);
  }

  return result;
}

unint64_t sub_1A5C94A94()
{
  result = qword_1EB25BB00;
  if (!qword_1EB25BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25BB00);
  }

  return result;
}

unint64_t sub_1A5C94AEC()
{
  result = qword_1EB25BB08[0];
  if (!qword_1EB25BB08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25BB08);
  }

  return result;
}

unint64_t sub_1A5C94B40()
{
  result = qword_1EB1F4350;
  if (!qword_1EB1F4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4350);
  }

  return result;
}

uint64_t sub_1A5C94B94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5C94BFC(uint64_t a1)
{
  v2 = sub_1A5C94F18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C94C38(uint64_t a1)
{
  v2 = sub_1A5C94F18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C94C74(uint64_t a1)
{
  v2 = sub_1A5C94EC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C94CB0(uint64_t a1)
{
  v2 = sub_1A5C94EC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecognizeSportBallsRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4358);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4360);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C94EC4();
  sub_1A5FD4CDC();
  sub_1A5C94F18();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5C94EC4()
{
  result = qword_1EB25BB90;
  if (!qword_1EB25BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25BB90);
  }

  return result;
}

unint64_t sub_1A5C94F18()
{
  result = qword_1EB25BB98[0];
  if (!qword_1EB25BB98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25BB98);
  }

  return result;
}

uint64_t RecognizeSportBallsRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t RecognizeSportBallsRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4368);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4370);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C94EC4();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5C94F18();
      sub_1A5FD48CC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1A5FD471C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v13 = &type metadata for RecognizeSportBallsRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5C952E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4358);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4360);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C94EC4();
  sub_1A5FD4CDC();
  sub_1A5C94F18();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t RecognizeSportBallsRequest.init(revision:)@<X0>(__n128 *a1@<X8>)
{
  static NormalizedRect.fullImage.getter(a1);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  a1[2].n128_u64[0] = result;
  return result;
}

uint64_t RecognizeSportBallsRequest.supportedIdentifiers.getter()
{
  v0 = sub_1A5C95A10();
  sub_1A5BD9578(0, &type metadata for RecognizeSportBallsRequest, v0);

  sub_1A5B16F58(0, &qword_1EB1F0CE8);
  if (!swift_dynamicCastMetatype())
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = [swift_getObjCClassFromMetadata() knownSportBallIdentifiers];
  v3 = sub_1A5FD3F4C();

  return v3;
}

__n128 RecognizeSportBallsRequest.regionOfInterest.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 RecognizeSportBallsRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t RecognizeSportBallsRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5C95A64();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for RecognizeSportBallsRequest, v3);
}

uint64_t static RecognizeSportBallsRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v8.origin = *a1;
  v8.size = v4;
  v5 = *(a2 + 16);
  v7.origin = *a2;
  v7.size = v5;
  if (!static NormalizedRect.== infix(_:_:)(&v8, &v7))
  {
    return 0;
  }

  return sub_1A5B0D3C4(v2, v3);
}

uint64_t RecognizeSportBallsRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 32);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t RecognizeSportBallsRequest.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1A5FD4C1C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(v3, v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C957C4(uint64_t a1)
{
  v2 = sub_1A5C95A10();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5C95800(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5C95A64();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C95860(uint64_t a1)
{
  v2 = sub_1A5B5E070();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C9589C(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E070();

  return sub_1A5D4E6C8(a1, a2);
}

id sub_1A5C95950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A5B16F58(0, &qword_1EB1F0B70);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v7 = sub_1A5C95AB8();
    return sub_1A5D23E14(a1, a2, a3, v7);
  }

  return result;
}

unint64_t sub_1A5C95A10()
{
  result = qword_1EB1F4378;
  if (!qword_1EB1F4378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4378);
  }

  return result;
}

unint64_t sub_1A5C95A64()
{
  result = qword_1EB1F4380;
  if (!qword_1EB1F4380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4380);
  }

  return result;
}

unint64_t sub_1A5C95AB8()
{
  result = qword_1EB1F4388;
  if (!qword_1EB1F4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4388);
  }

  return result;
}

unint64_t sub_1A5C95B0C()
{
  result = qword_1EB1F4390;
  if (!qword_1EB1F4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4390);
  }

  return result;
}

unint64_t sub_1A5C95B64(uint64_t a1)
{
  result = sub_1A5B5E070();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C95BB8()
{
  result = qword_1EB1F4398;
  if (!qword_1EB1F4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4398);
  }

  return result;
}

unint64_t sub_1A5C95C10()
{
  result = qword_1EB1F43A0;
  if (!qword_1EB1F43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F43A0);
  }

  return result;
}

unint64_t sub_1A5C95C68()
{
  result = qword_1EB1F43A8;
  if (!qword_1EB1F43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F43A8);
  }

  return result;
}

uint64_t sub_1A5C95CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C95D24()
{
  result = qword_1EB1F43B0;
  if (!qword_1EB1F43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F43B0);
  }

  return result;
}

unint64_t sub_1A5C95D78(uint64_t a1)
{
  result = sub_1A5C95A64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C95DA0(uint64_t a1)
{
  result = sub_1A5C95DC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C95DC8()
{
  result = qword_1EB1F43B8;
  if (!qword_1EB1F43B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F43B8);
  }

  return result;
}

unint64_t sub_1A5C95E60()
{
  result = qword_1EB25C4A0[0];
  if (!qword_1EB25C4A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25C4A0);
  }

  return result;
}

unint64_t sub_1A5C95EB8()
{
  result = qword_1EB25C5B0;
  if (!qword_1EB25C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25C5B0);
  }

  return result;
}

unint64_t sub_1A5C95F10()
{
  result = qword_1EB25C5B8[0];
  if (!qword_1EB25C5B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25C5B8);
  }

  return result;
}

unint64_t sub_1A5C95F68()
{
  result = qword_1EB25C640;
  if (!qword_1EB25C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25C640);
  }

  return result;
}

unint64_t sub_1A5C95FC0()
{
  result = qword_1EB25C648[0];
  if (!qword_1EB25C648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25C648);
  }

  return result;
}

__n128 sub_1A5C9601C@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v20 = *a1;
  v21 = v3;
  v4 = a1[3];
  v22 = a1[2];
  v23 = v4;
  DetectBarcodesRequest.descriptor.getter(&v25);
  v24 = v25;
  v18 = v20.n128_i8[8];
  v19 = v23.n128_u8[0];
  v5 = v20.n128_u64[0];
  v6 = v23.n128_i8[3];
  v16 = v23.n128_u8[2] & ~v23.n128_u8[3] & 1;
  v17 = v23.n128_i8[1];
  v7 = sub_1A5C94B40();
  v15 = v21;
  v14 = v22;

  v8 = sub_1A5BDA018(&type metadata for DetectBarcodesRequest, v7);
  v10 = v9;

  v12 = sub_1A5BDA358(v11, &type metadata for DetectBarcodesRequest, v7);

  sub_1A5B671B0(&v20);
  *a2 = v24;
  *(a2 + 2) = v19;
  *(a2 + 3) = v18;
  *(a2 + 8) = v5;
  *(a2 + 16) = v17;
  *(a2 + 17) = v16;
  result = v15;
  *(a2 + 40) = v14;
  *(a2 + 24) = v15;
  *(a2 + 56) = v6;
  *(a2 + 64) = v8;
  *(a2 + 72) = v10;
  *(a2 + 80) = 0;
  *(a2 + 88) = v12;
  return result;
}

uint64_t sub_1A5C96194@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  v5 = *(v1 + 88);
  v14 = *(v1 + 72);
  v4 = v14;
  v15 = v5;
  v16 = *(v1 + 104);
  v6 = v16;
  v11 = *(v1 + 24);
  v7 = v11;
  v12 = *(v1 + 40);
  v8 = v12;
  v13 = v3;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  *a1 = v7;
  a1[1] = v8;
  return sub_1A5C9621C(&v11, v10);
}

uint64_t sub_1A5C96254(_OWORD *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  v10[2] = *(v1 + 56);
  v10[3] = v3;
  v4 = *(v1 + 104);
  v10[4] = *(v1 + 88);
  v10[5] = v4;
  v5 = *(v1 + 40);
  v10[0] = *(v1 + 24);
  v10[1] = v5;
  v6 = a1[3];
  *(v1 + 56) = a1[2];
  *(v1 + 72) = v6;
  v7 = a1[5];
  *(v1 + 88) = a1[4];
  *(v1 + 104) = v7;
  v8 = a1[1];
  *(v1 + 24) = *a1;
  *(v1 + 40) = v8;
  return sub_1A5C962E0(v10);
}

uint64_t sub_1A5C96360(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v45 - v4;
  v6 = type metadata accessor for ClassificationObservation();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for RecognizedObjectObservation();
  v56 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5C98F04(a1, v20, type metadata accessor for VisionResult);
  if (swift_getEnumCaseMultiPayload() != 63)
  {
    v35 = type metadata accessor for VisionResult;
    v36 = v20;
    return sub_1A5C99144(v36, v35);
  }

  v22 = *(v20 + 6);
  result = *(v20 + 7);
  v23 = *(result + 16);
  if (!v23)
  {
LABEL_16:
  }

  v24 = 0;
  v25 = result + ((*(v56 + 80) + 32) & ~*(v56 + 80));
  v49 = v1;
  v50 = v10;
  v51 = v17;
  v52 = v5;
  v53 = result;
  v54 = v22;
  v46 = v25;
  v47 = v23;
LABEL_4:
  if (v24 < *(result + 16))
  {
    v48 = v24 + 1;
    result = sub_1A5C98F04(v25 + *(v56 + 72) * v24, v12, type metadata accessor for RecognizedObjectObservation);
    v26 = 0;
    v27 = *v12;
    v28 = *(*v12 + 16);
    while (1)
    {
      if (v28 == v26)
      {
        sub_1A5C99144(v12, type metadata accessor for RecognizedObjectObservation);
        v24 = v48;
        result = v53;
        v25 = v46;
        if (v48 != v47)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      if (v26 >= *(v27 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      sub_1A5C98F04(v27 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26, v9, type metadata accessor for ClassificationObservation);
      v30 = *v9;
      v31 = v9[1];
      v57[0] = 3;
      if (v30 == RecognizeDocumentElementsRequest.Element.rawValue.getter() && v31 == v32)
      {
        break;
      }

      v33 = sub_1A5FD4B0C();

      if (v33)
      {
        goto LABEL_19;
      }

      v57[0] = 2;
      if (v30 == RecognizeDocumentElementsRequest.Element.rawValue.getter() && v31 == v34)
      {
        break;
      }

      v29 = sub_1A5FD4B0C();

      result = sub_1A5C99144(v9, type metadata accessor for ClassificationObservation);
      ++v26;
      if (v29)
      {
        goto LABEL_20;
      }
    }

LABEL_19:
    sub_1A5C99144(v9, type metadata accessor for ClassificationObservation);
LABEL_20:
    v37 = v55;
    sub_1A5C991A4(v12, v55, type metadata accessor for RecognizedObjectObservation);
    v38 = v51;
    sub_1A5C991A4(v37, v51, type metadata accessor for RecognizedObjectObservation);
    v39 = v52;
    sub_1A5BE9AA4(v38 + *(v50 + 40), v52);
    v40 = type metadata accessor for PixelBufferObservation();
    result = (*(*(v40 - 8) + 48))(v39, 1, v40);
    if (result == 1)
    {
      goto LABEL_26;
    }

    v41 = *(v39 + *(v40 + 36));
    sub_1A5C99144(v39, type metadata accessor for PixelBufferObservation);
    v42 = (*(*v49 + 136))(v57);
    v44 = *(v43 + 80);
    *(v43 + 80) = v41;

    v42(v57, 0);
    v35 = type metadata accessor for RecognizedObjectObservation;
    v36 = v38;
    return sub_1A5C99144(v36, v35);
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A5C96900(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A5C96958(a1);
  return v2;
}

uint64_t sub_1A5C96958(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  sub_1A5B180A0(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  result = swift_dynamicCast();
  if (result)
  {
    v8[0] = v9[6];
    v8[1] = v9[7];
    v8[2] = v9[8];
    v8[3] = v9[9];
    sub_1A5C9601C(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v2)
    {

      type metadata accessor for BarcodeDetectorPerformingOperation();
      swift_deallocPartialClassInstance();
    }

    else
    {
      v5 = v9[3];
      *(v1 + 56) = v9[2];
      *(v1 + 72) = v5;
      v6 = v9[5];
      *(v1 + 88) = v9[4];
      *(v1 + 104) = v6;
      v7 = v9[1];
      *(v1 + 24) = v9[0];
      *(v1 + 40) = v7;
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5C96A9C()
{
  v1 = *(*v0 + 120);
  v1(v10);
  sub_1A5C962E0(v10);
  HIDWORD(v2) = BYTE1(v10[0]);
  LODWORD(v2) = LOBYTE(v10[0]) << 24;
  if ((v2 >> 27) != 6)
  {
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    v3 = sub_1A5FD46AC();
    (v1)(v9, v3);
    sub_1A5C962E0(v9);
    sub_1A5B54E3C();
    v4 = sub_1A5FD4ACC();
    v6 = v5;

    MEMORY[0x1AC554600](0x70757320746F6E20, 0xEF2E646574726F70);
    sub_1A5B16774();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v6;
    *(v7 + 16) = 0;
    *(v7 + 20) = 18;
    swift_willThrow();
  }

  return 0x40000;
}

uint64_t sub_1A5C96BF8()
{
  (*(*v0 + 120))(v2);
  sub_1A5C962E0(v2);
  return qword_1A6021310[SBYTE2(v2[0])];
}

id sub_1A5C96C6C()
{
  v2 = v0;
  v3 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  (*(*v0 + 176))();
  v4 = sub_1A5FD423C();
  [v3 setValue:v4 forKey:*MEMORY[0x1E69C67A8]];

  v5 = sub_1A5FD4CBC();
  [v3 setValue:v5 forKey:*MEMORY[0x1E69C6790]];

  v6 = *(*v2 + 120);
  v6(v23);
  sub_1A5C962E0(v23);
  if (BYTE3(v23[0]) == 1)
  {
    v7 = sub_1A5FD403C();
    [v3 setValue:v7 forKey:*MEMORY[0x1E69C67B0]];
  }

  v6(v22);
  v8 = v22[1];

  sub_1A5C962E0(v22);
  if (v8)
  {
    v9 = v8[2];
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_10:

    sub_1A5B16774();
    swift_allocError();
    *v17 = 0xD000000000000049;
    *(v17 + 8) = 0x80000001A6058D00;
    *(v17 + 16) = 0;
    *(v17 + 20) = 2;
    swift_willThrow();

    return v3;
  }

  v8 = static BarcodeSymbology.allCases.getter();
  v9 = v8[2];
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  v20 = v6;
  v24 = v3;
  sub_1A5B16F58(0, &qword_1EB1F28F0);
  v10 = MEMORY[0x1AC554C60](MEMORY[0x1E69E7CC0]);
  v11 = *(*v2 + 184);
  v12 = 32;
  do
  {
    LOBYTE(v21[0]) = *(v8 + v12);
    v13 = v11(v21);
    [v10 addObject_];

    ++v12;
    --v9;
  }

  while (v9);

  v14 = *MEMORY[0x1E69C67C0];
  v15 = v10;
  v3 = v24;
  v20(v21, [v24 setValue:v15 forKey:v14]);
  sub_1A5C962E0(v21);
  v16 = sub_1A5FD403C();
  [v3 setValue:v16 forKey:*MEMORY[0x1E69C67B8]];

  (*(*v2 + 168))();
  if (v1)
  {
  }

  else
  {
    v18 = sub_1A5FD423C();
    [v3 setValue:v18 forKey:*MEMORY[0x1E69C6798]];
  }

  return v3;
}

id sub_1A5C96FFC(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v18[1] = *MEMORY[0x1E69E9840];
  Width = CGRectGetWidth(*&a2);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  Height = CGRectGetHeight(v19);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (Height >= 9.22337204e18)
  {
    goto LABEL_16;
  }

  v18[0] = 0;
  v12 = [a1 croppedBufferWithWidth:Width height:Height format:875704422 cropRect:0 options:v18 error:{a2, a3, a4, a5}];
  v13 = v18[0];
  if (v12)
  {
    v14 = v12;
    v15 = v18[0];
    CVPixelBufferGetWidth(v14);
    CVPixelBufferGetHeight(v14);
    v13 = MRCSampleCreateWithCVPixelBuffer();
  }

  else
  {
    v16 = v18[0];
    sub_1A5FD348C();

    swift_willThrow();
  }

  return v13;
}

char *sub_1A5C971D4(uint64_t a1, size_t a2, size_t a3)
{
  if (MRCDescriptorCopyAttribute())
  {
    type metadata accessor for CFArray(0);
    v6 = swift_dynamicCastUnknownClassUnconditional();
    if (CFArrayGetCount(v6) == 4)
    {
      v7 = CFArrayGetValueAtIndex(v6, 0);
      v8 = COERCE_DOUBLE(sub_1A5FD445C());
      v10 = v9;
      if (v11)
      {
        v8 = 0.0;
        v10 = 0.0;
      }

      VNNormalizedPointForImagePoint(*&v8, a2, a3);
      VNVerticallyFlippedNormalizedPoint();
      v13 = v12;
      v15 = v14;
      v3 = sub_1A5C8DF34(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v17 = *(v3 + 2);
      v16 = *(v3 + 3);
      if (v17 >= v16 >> 1)
      {
        v3 = sub_1A5C8DF34((v16 > 1), v17 + 1, 1, v3);
      }

      *(v3 + 2) = v17 + 1;
      v18 = &v3[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      v19 = CFArrayGetValueAtIndex(v6, 1);
      v20 = COERCE_DOUBLE(sub_1A5FD445C());
      v22 = v21;
      if (v23)
      {
        v20 = 0.0;
        v22 = 0.0;
      }

      VNNormalizedPointForImagePoint(*&v20, a2, a3);
      VNVerticallyFlippedNormalizedPoint();
      v25 = v24;
      v27 = v26;
      v29 = *(v3 + 2);
      v28 = *(v3 + 3);
      if (v29 >= v28 >> 1)
      {
        v3 = sub_1A5C8DF34((v28 > 1), v29 + 1, 1, v3);
      }

      *(v3 + 2) = v29 + 1;
      v30 = &v3[16 * v29];
      *(v30 + 4) = v25;
      *(v30 + 5) = v27;
      v31 = CFArrayGetValueAtIndex(v6, 2);
      v32 = COERCE_DOUBLE(sub_1A5FD445C());
      v34 = v33;
      if (v35)
      {
        v32 = 0.0;
        v34 = 0.0;
      }

      VNNormalizedPointForImagePoint(*&v32, a2, a3);
      VNVerticallyFlippedNormalizedPoint();
      v37 = v36;
      v39 = v38;
      v41 = *(v3 + 2);
      v40 = *(v3 + 3);
      if (v41 >= v40 >> 1)
      {
        v3 = sub_1A5C8DF34((v40 > 1), v41 + 1, 1, v3);
      }

      *(v3 + 2) = v41 + 1;
      v42 = &v3[16 * v41];
      *(v42 + 4) = v37;
      *(v42 + 5) = v39;
      v43 = CFArrayGetValueAtIndex(v6, 3);
      v44 = COERCE_DOUBLE(sub_1A5FD445C());
      v46 = v45;
      if (v47)
      {
        v44 = 0.0;
        v46 = 0.0;
      }

      VNNormalizedPointForImagePoint(*&v44, a2, a3);
      VNVerticallyFlippedNormalizedPoint();
      v49 = v48;
      v51 = v50;
      v53 = *(v3 + 2);
      v52 = *(v3 + 3);
      if (v53 >= v52 >> 1)
      {
        v3 = sub_1A5C8DF34((v52 > 1), v53 + 1, 1, v3);
      }

      *(v3 + 2) = v53 + 1;
      v54 = &v3[16 * v53];
      *(v54 + 4) = v49;
      *(v54 + 5) = v51;
    }

    else
    {
      sub_1A5B16774();
      swift_allocError();
      *v56 = 0xD000000000000025;
      *(v56 + 8) = 0x80000001A6058D80;
      *(v56 + 16) = 0;
      *(v56 + 20) = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_1A5B16774();
    swift_allocError();
    *v55 = 0xD000000000000022;
    *(v55 + 8) = 0x80000001A6058D50;
    *(v55 + 16) = 0;
    *(v55 + 20) = 0;
    swift_willThrow();
  }

  return v3;
}

void sub_1A5C97594(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  if (!MRCDescriptorCopyAttribute())
  {
    goto LABEL_23;
  }

  type metadata accessor for CFString(0);
  v16 = swift_dynamicCastUnknownClassUnconditional();
  sub_1A5C0A454(v16, v33);
  v17 = v33[0];
  if (v33[0] == 25)
  {
    sub_1A5B16774();
    swift_allocError();
    *v18 = 0xD000000000000015;
    *(v18 + 8) = 0x80000001A6058DB0;
    *(v18 + 16) = 0;
    *(v18 + 20) = 0;
    swift_willThrow();
LABEL_14:

    return;
  }

  v36.origin.x = a4;
  v36.origin.y = a5;
  v36.size.width = a6;
  v36.size.height = a7;
  Width = CGRectGetWidth(v36);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v37.origin.x = a4;
  v37.origin.y = a5;
  v37.size.width = a6;
  v37.size.height = a7;
  Height = CGRectGetHeight(v37);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = (*(*v7 + 208))(a1, Width, Height);
  if (v8)
  {
    goto LABEL_14;
  }

  v35 = v17;
  v22 = v21[2];
  if (v22)
  {
    if (v22 >= 4)
    {
      v24 = v21[4];
      v23 = v21[5];
      v25 = v21[10];
      v26 = v21[11];
      v27 = v21[8];
      v28 = v21[9];
      v29 = v21[6];
      v30 = v21[7];
      v31 = a1;

      (*(*v7 + 120))(v33, v32);
      sub_1A5C962E0(v33);
      v34 = *v33;
      sub_1A5BD2FB8(v31, &v35, &v34, a2, a3, v24, v23, v25, v26, v27, v28, v29, v30);
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void *sub_1A5C97860(void *a1)
{
  v107 = a1;
  v143 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for BarcodeObservation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v93 - v8;
  v10 = *(*v1 + 120);
  v11 = (*v1 + 120);
  (v10)(v135, v7);
  v12 = *(&v136 + 1);
  v105 = v136;
  v142[2] = v135[2];
  v142[3] = v135[3];
  v142[4] = v136;
  v142[5] = v137;
  v142[0] = v135[0];
  v142[1] = v135[1];

  v13 = sub_1A5C962E0(v142);
  if (!v12)
  {
    goto LABEL_4;
  }

  v103 = v9;
  v104 = v5;
  v102 = v3;
  v10(&v128, v13);
  v134[2] = v130;
  v134[3] = v131;
  v134[4] = v132;
  v134[5] = v133;
  v134[0] = v128;
  v134[1] = v129;
  v14 = *(&v133 + 1);

  sub_1A5C962E0(v134);
  v15 = v106;
  v16 = sub_1A5CD3A8C(v105, v12, v14);
  if (v15)
  {

LABEL_4:
    v17 = 0x80000001A6058DD0;
    sub_1A5B16774();
    swift_allocError();
    *v18 = 0xD000000000000022;
    *(v18 + 8) = 0x80000001A6058DD0;
    *(v18 + 16) = 0;
    *(v18 + 20) = 8;
    swift_willThrow();
    return v17;
  }

  v20 = v16;
  v101 = v11;

  v22 = (*(*v1 + 192))(v21);
  v23 = v1;
  v24 = (*(*v107 + 120))();
  (v10)(&v128);
  sub_1A5C962E0(&v128);
  v25 = *(&v129 + 1);
  v26 = v130;
  v27 = *&v131;
  v28 = [v24 width];
  v29 = [v24 height];
  type metadata accessor for BarcodeDetectorPerformingOperation();
  sub_1A5CA0784(v28, v29, v25, *&v26, *(&v26 + 1), v27);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = (*(*v23 + 200))(v24);
  if (!v38)
  {
    v17 = 0x80000001A6058E00;
    sub_1A5B16774();
    swift_allocError();
    *v91 = 0xD000000000000024;
    *(v91 + 8) = 0x80000001A6058E00;
    *(v91 + 16) = 0;
    *(v91 + 20) = 8;
    swift_willThrow();

    return v17;
  }

  v105 = v38;
  v100 = v23;
  v39 = v10;
  (v10)(v126);
  v40 = sub_1A5C962E0(v126);
  v99 = v20;
  if (v127 == 1)
  {
    v10(&v114, v40);
    v41 = v119;
    v122 = v116;
    v123 = v117;
    v124 = v118;
    v125 = v119;
    v120 = v114;
    v121 = v115;
    v42 = v119;
    sub_1A5C962E0(&v120);
    if (!v41)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v106 = sub_1A5FD3D5C();
    v97 = v43;
    type metadata accessor for CVBuffer(0);
    *(&v115 + 1) = v44;
    *&v114 = v42;
    v96 = *(*v100 + 136);
    v45 = v42;
    v46 = v96(v112);
    sub_1A5B0DE30(&v114, v106, v97);
    v46(v112, 0);

    v39 = v10;
  }

  v98 = v39;
  v95 = v24;
  v47 = v107[11];
  v48 = *(*v100 + 136);
  v49 = *v100 + 136;
  v50 = v47;
  v51 = v48(&v110);
  sub_1A5C59AD8(v47);
  v51(&v110, 0);
  v52 = sub_1A5FD3D5C();
  v54 = v53;
  v111 = sub_1A5B16F58(0, &qword_1EB1EE5B8);
  *&v110 = v22;
  v106 = v22;
  v55 = v48(v109);
  v96 = v48;
  v97 = v49;
  v56 = v55;
  sub_1A5B0DE30(&v110, v52, v54);
  v56(v109, 0);
  v57 = sub_1A5FD3D5C();
  v59 = v58;
  type metadata accessor for MRCSample(0);
  v111 = v60;
  *&v110 = v105;
  v94 = v105;
  v61 = v48(v109);
  sub_1A5B0DE30(&v110, v57, v59);
  v61(v109, 0);
  v62 = sub_1A5FD3D5C();
  v64 = v63;
  v65 = v98;
  (v98)(v112);
  sub_1A5C962E0(v112);
  v111 = MEMORY[0x1E69E6370];
  LOBYTE(v110) = v113;
  v66 = v96(v109);
  sub_1A5B0DE30(&v110, v62, v64);
  v67 = v66(v109, 0);
  v65(&v114, v67);
  v68 = v65;
  v69 = *(&v119 + 1);

  sub_1A5C962E0(&v114);
  sub_1A5B37FAC(v69);

  v70 = objc_allocWithZone(MEMORY[0x1E695DF90]);
  v71 = sub_1A5FD3BDC();

  v72 = [v70 initWithDictionary_];

  v73 = v99;
  v74 = qos_class_self();
  v68(&v120);
  sub_1A5C962E0(&v120);
  *&v110 = 0;
  v75 = [v73 processUsingQualityOfServiceClass:v74 options:v72 regionOfInterest:0 warningRecorder:&v110 error:0 progressHandler:{*(&v121 + 1), *&v122, *(&v122 + 1), *&v123}];
  v17 = v110;
  if (!v75)
  {
    v92 = v110;
    sub_1A5FD348C();

    swift_willThrow();
    return v17;
  }

  v76 = v75;
  v77 = sub_1A5FD3F4C();
  v78 = v17;

  if (!*(v77 + 16))
  {

    return MEMORY[0x1E69E7CC0];
  }

  v101 = v72;
  sub_1A5B101D8(v77 + 32, v109);

  sub_1A5B101C8(v109, &v110);
  sub_1A5B101D8(&v110, v109);
  type metadata accessor for MRCDecoderResult(0);
  swift_dynamicCast();
  v105 = v108;
  DescriptorCount = MRCDecoderResultGetDescriptorCount();
  v80 = v106;
  if (DescriptorCount < 0)
  {
    __break(1u);
  }

  v81 = DescriptorCount;
  v82 = v107;
  if (DescriptorCount)
  {
    v83 = 0;
    v84 = MEMORY[0x1E69E7CC0];
    v85 = v103;
    do
    {
      v86 = MRCDecoderResultGetDescriptorAtIndex();
      v87 = *(v82 + 5);
      v138 = *(v82 + 3);
      v139 = v87;
      v140 = *(v82 + 7);
      v141 = *(v82 + 72);
      v88 = v86;
      (*(*v100 + 216))(v31, v33, v35, v37);
      sub_1A5C98F04(v85, v104, type metadata accessor for BarcodeObservation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = sub_1A5C98F6C(0, v84[2] + 1, 1, v84);
      }

      v90 = v84[2];
      v89 = v84[3];
      if (v90 >= v89 >> 1)
      {
        v84 = sub_1A5C98F6C(v89 > 1, v90 + 1, 1, v84);
      }

      ++v83;

      v85 = v103;
      sub_1A5C99144(v103, type metadata accessor for BarcodeObservation);
      v84[2] = v90 + 1;
      sub_1A5C991A4(v104, v84 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v90, type metadata accessor for BarcodeObservation);
      v80 = v106;
      v82 = v107;
    }

    while (v81 != v83);
  }

  else
  {
    v84 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1A5C98410(v84);

  __swift_destroy_boxed_opaque_existential_1(&v110);
  return v17;
}

uint64_t sub_1A5C98410(uint64_t a1)
{
  v2 = type metadata accessor for BarcodeObservation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1A5B5748C(0, v6, 0);
    v7 = v15;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1A5C98F04(v8, v5, type metadata accessor for BarcodeObservation);
      swift_dynamicCast();
      v15 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A5B5748C((v10 > 1), v11 + 1, 1);
        v7 = v15;
      }

      *(v7 + 16) = v11 + 1;
      sub_1A5B101C8(&v14, (v7 + 32 * v11 + 32));
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1A5C985AC(uint64_t a1)
{
  *(v2 + 312) = a1;
  *(v2 + 320) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1A5C9863C, 0, 0);
}

uint64_t sub_1A5C9863C()
{
  v25 = v0;
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(**(v0 + 320) + 120);
  v1(v21);
  v2 = v22;
  v3 = v21[3];
  *(v0 + 48) = v21[2];
  *(v0 + 64) = v3;
  v4 = v23;
  *(v0 + 80) = v22;
  *(v0 + 96) = v4;
  v5 = v21[1];
  *(v0 + 16) = v21[0];
  *(v0 + 32) = v5;

  v6 = sub_1A5C962E0(v0 + 16);
  if (*(&v2 + 1))
  {
    v1(v6);
    v7 = *(v0 + 200);

    sub_1A5C962E0(v0 + 112);
    v9 = sub_1A5CD3A8C(v2, *(&v2 + 1), v7);
    v10 = *(v0 + 312);

    v12 = *(v10 + 16);
    v1(v11);
    v13 = *(v0 + 296);

    sub_1A5C962E0(v0 + 208);
    sub_1A5B37FAC(v13);

    v14 = sub_1A5FD3BDC();

    *(v0 + 304) = 0;
    v15 = [v9 warmUpSession:v12 withOptions:v14 error:v0 + 304];

    v16 = *(v0 + 304);
    if (v15)
    {
      v17 = v16;

      v18 = *(v0 + 8);
      goto LABEL_8;
    }

    v19 = v16;
    sub_1A5FD348C();

    swift_willThrow();
  }

  else
  {
    sub_1A5B16774();
    swift_allocError();
    *v8 = 0xD000000000000022;
    *(v8 + 8) = 0x80000001A6058DD0;
    *(v8 + 16) = 0;
    *(v8 + 20) = 8;
    swift_willThrow();
  }

  v18 = *(v0 + 8);
LABEL_8:

  return v18();
}

uint64_t sub_1A5C988EC()
{

  v1 = *(v0 + 72);
  v5[2] = *(v0 + 56);
  v5[3] = v1;
  v2 = *(v0 + 104);
  v5[4] = *(v0 + 88);
  v5[5] = v2;
  v3 = *(v0 + 40);
  v5[0] = *(v0 + 24);
  v5[1] = v3;
  sub_1A5C962E0(v5);
  return swift_deallocClassInstance();
}

void (*sub_1A5C98994(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 112))();
  return sub_1A5B16120;
}

uint64_t sub_1A5C98A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A5C99530;

  return sub_1A5CA0F18(a1, a2, a3);
}

uint64_t sub_1A5C98B10()
{
  v2 = (*(*v0 + 224))();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1A5C98BE8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5C98C98;

  return sub_1A5CA07F4(a1, a2, &off_1F1966BD8);
}

uint64_t sub_1A5C98C98(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1A5C98DBC(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5B0CE78;

  return v6(a1);
}

uint64_t sub_1A5C98F04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

size_t sub_1A5C98F6C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFE88);
  v10 = *(type metadata accessor for BarcodeObservation() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for BarcodeObservation() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A5C99144(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A5C991A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1A5C9920C(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  sub_1A5B180A0(a1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  if (!swift_dynamicCast())
  {
LABEL_20:
    __break(1u);
  }

  v23[0] = v24;
  v23[1] = v25;
  v23[2] = v26;
  v23[3] = v27;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31[0] = v27;
  v3 = sub_1A5C94B40();
  v4 = sub_1A5BDA358(a2, &type metadata for DetectBarcodesRequest, v3);
  sub_1A5B671B0(v23);
  sub_1A5B16F58(0, &qword_1EB1F43D8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1A5B37FAC(v4);

  v6 = sub_1A5FD3BDC();

  *&v28 = 0;
  v7 = [ObjCClassFromMetadata supportedImageSizeSetForOptions:v6 error:&v28];

  v8 = v28;
  if (!v7)
  {
    v13 = v28;
    sub_1A5FD348C();

    swift_willThrow();
    return v13;
  }

  sub_1A5B16F58(0, &unk_1EB1F1360);
  v9 = sub_1A5FD3F4C();
  v10 = v8;

  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_17:

    return MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1A5FD484C();
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_5:
  v22 = MEMORY[0x1E69E7CC0];
  sub_1A5BDAC18(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = 0;
  v13 = v22;
  if ((v9 & 0xC000000000000001) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  for (i = MEMORY[0x1AC554EE0](v12, v9); ; i = *(v9 + 8 * v12 + 32))
  {
    sub_1A5B50818(i, &v28);
    v16 = v22[2];
    v15 = v22[3];
    if (v16 >= v15 >> 1)
    {
      sub_1A5BDAC18((v15 > 1), v16 + 1, 1);
    }

    v22[2] = v16 + 1;
    v17 = &v22[10 * v16];
    v17[2] = v28;
    v18 = v29;
    v19 = v30;
    v20 = v31[0];
    *(v17 + 89) = *(v31 + 9);
    v17[4] = v19;
    v17[5] = v20;
    v17[3] = v18;
    if (v11 - 1 == v12)
    {
      break;
    }

    ++v12;
    if ((v9 & 0xC000000000000001) != 0)
    {
      goto LABEL_7;
    }

LABEL_8:
    ;
  }

  return v13;
}

__n128 sub_1A5C99534@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  DetectCameraGazeRequest.descriptor.getter(v16);
  v6 = v16[0];
  DetectCameraGazeRequest.regionOfInterest.getter(v16);
  v14 = v16[1];
  v15 = v16[0];
  v7 = OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_state;
  swift_beginAccess();
  v8 = *(a1 + v7);

  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));

  v10 = type metadata accessor for DetectCameraGazeRequest();
  v11 = sub_1A5C9B01C(&qword_1EB1F0AC8, type metadata accessor for DetectCameraGazeRequest);
  v12 = sub_1A5D4F438(a2, v10, v11);

  *a3 = v6;
  *(a3 + 8) = xmmword_1A6014D60;
  *(a3 + 24) = 9;
  result = v15;
  *(a3 + 32) = v15;
  *(a3 + 48) = v14;
  *(a3 + 64) = v9;
  *(a3 + 72) = v12;
  return result;
}

uint64_t sub_1A5C99688()
{
  v1 = *(v0 + 8);
  sub_1A5B72D90(v1, *(v0 + 16), *(v0 + 24));
  return v1;
}

uint64_t sub_1A5C99708(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1A5C99760(a1, a2);
  return v4;
}

uint64_t sub_1A5C99760(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v20 = *v2;
  v2[2] = MEMORY[0x1E69E7CC0];
  v2[3] = 0;
  v7 = v2 + 3;
  sub_1A5B180A0(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  type metadata accessor for DetectCameraGazeRequest();
  result = swift_dynamicCast();
  if (result)
  {
    v9 = v16[0];
    sub_1A5B180A0(a1, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F43E0);
    swift_dynamicCast();
    v11 = v17;
    v10 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v12 = (*(v10 + 8))(v11, v10);
    swift_beginAccess();
    *v7 = v12;

    __swift_destroy_boxed_opaque_existential_1(v16);
    sub_1A5C99534(v9, a2, v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v3)
    {

      swift_deallocPartialClassInstance();
    }

    else
    {
      v13 = v15[3];
      v4[4] = v15[2];
      v4[5] = v13;
      v4[6] = v15[4];
      v14 = v15[1];
      v4[2] = v15[0];
      v4[3] = v14;
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5C9993C(uint64_t a1)
{
  v2[50] = a1;
  v2[51] = v1;
  v2[52] = type metadata accessor for SingleFaceTemporalGazeScoresState(0);
  v2[53] = swift_task_alloc();
  v3 = type metadata accessor for FaceObservation(0);
  v2[54] = v3;
  v2[55] = *(v3 - 8);
  v2[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5C99A2C, 0, 0);
}

unint64_t sub_1A5C99A2C()
{
  v1 = *(v0 + 408);
  swift_beginAccess();
  if (*(v1 + 24))
  {
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v62 = *(v2 + 16);
  if (v62)
  {
    v63 = v2;
    v3 = *(v0 + 408);

    sub_1A5BF63A0(2, 0xD000000000000036, 0x80000001A6058E70);
    swift_beginAccess();
    v4 = *(v3 + 40);
    v5 = *(v3 + 48);
    v6 = *(v3 + 56);
    sub_1A5B72D90(v4, v5, v6);

    sub_1A5CD408C(v4, v5, v6, v0 + 16);
    v9 = *(v0 + 400);

    sub_1A5B4F9C8(v4, v5, v6);
    sub_1A5BF63A0(2, 0xD000000000000035, 0x80000001A6058EB0);
    v10 = MEMORY[0x1E69E7CC0];
    result = sub_1A5B3096C(MEMORY[0x1E69E7CC0]);
    v12 = *(v9 + 16);
    if (v12)
    {
      v13 = result;
      v61 = *(v0 + 440);
      v14 = *(v0 + 408);

      v15 = sub_1A5C3B40C(4u);
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1A5FF3930;
      *(v18 + 32) = v12;
      *(v0 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F43E8);
      *(v0 + 56) = v18;
      sub_1A5B101C8((v0 + 56), (v0 + 88));

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1A5B0E9AC((v0 + 88), v15, v17, isUniquelyReferenced_nonNull_native);

      v20 = sub_1A5C3B40C(3u);
      v22 = v21;
      v23 = *(v3 + 32);
      v24 = *(v14 + 33);
      *(v0 + 144) = &type metadata for RequestDescriptor;
      *(v0 + 120) = v23;
      *(v0 + 121) = v24;
      sub_1A5B101C8((v0 + 120), (v0 + 152));
      v25 = swift_isUniquelyReferenced_nonNull_native();
      sub_1A5B0E9AC((v0 + 152), v20, v22, v25);

      v66 = v13;
      v26 = sub_1A5B4AF3C();
      v27 = sub_1A5B4B05C();
      v67 = v10;
      v28 = *(**(v14 + 12) + 256);

      v28(v29);

      sub_1A5BF63A0(2, 0xD000000000000031, 0x80000001A6058EF0);
      v30 = 0;
      result = v63;
      while (v30 < *(result + 16))
      {
        v31 = *(v0 + 448);
        v32 = (*(v61 + 80) + 32) & ~*(v61 + 80);
        v65 = v30;
        sub_1A5C9AF04(result + v32 + *(v61 + 72) * v30, v31, type metadata accessor for FaceObservation);
        v33 = v14;
        v34 = *(**(v14 + 12) + 272);

        v34(v31, v26, v27);
        v35 = *(v0 + 448);
        v36 = *(v0 + 416);
        v64 = *(v0 + 424);

        v37 = sub_1A5C3B40C(5u);
        v39 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2D00);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1A5FF36F0;
        sub_1A5C9AF04(v35, v40 + v32, type metadata accessor for FaceObservation);
        *(v0 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2980);
        *(v0 + 184) = v40;
        sub_1A5B101C8((v0 + 184), (v0 + 216));
        v41 = swift_isUniquelyReferenced_nonNull_native();
        sub_1A5B0E9AC((v0 + 216), v37, v39, v41);

        v42 = sub_1A5C4946C();
        v44 = v43;
        *(v0 + 272) = v36;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 248));
        sub_1A5C9AF04(v64, boxed_opaque_existential_1, type metadata accessor for SingleFaceTemporalGazeScoresState);
        sub_1A5B101C8((v0 + 248), (v0 + 280));
        v46 = swift_isUniquelyReferenced_nonNull_native();
        sub_1A5B0E9AC((v0 + 280), v42, v44, v46);

        v47 = *(v0 + 40);
        v48 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v47);
        v49 = v33[8];
        v50 = v33[9];
        v51 = v33[10];
        v52 = v33[11];
        v53 = *(v48 + 16);
        *(v0 + 336) = swift_getAssociatedTypeWitness();
        __swift_allocate_boxed_opaque_existential_1((v0 + 312));
        v53(v66, v47, v48, v49, v50, v51, v52);
        v54 = *(v0 + 448);
        v14 = v33;
        v30 = v65 + 1;
        v55 = *(v0 + 424);
        swift_dynamicCast();
        sub_1A5C9A3FC(*(v0 + 392));
        sub_1A5FD46AC();

        sub_1A5C9B01C(&qword_1EB1F2DC0, type metadata accessor for FaceObservation);
        v56 = sub_1A5FD4ACC();
        MEMORY[0x1AC554600](v56);

        sub_1A5BF63A0(2, 0xD000000000000038, 0x80000001A6058F30);

        sub_1A5C9AF6C(v55, type metadata accessor for SingleFaceTemporalGazeScoresState);
        sub_1A5C9AF6C(v54, type metadata accessor for FaceObservation);
        result = v63;
        if (v62 == v65 + 1)
        {
          v57 = *(v0 + 432);

          sub_1A5FD46AC();

          v58 = MEMORY[0x1AC554750](v67, v57);
          MEMORY[0x1AC554600](v58);

          sub_1A5BF63A0(2, 0xD000000000000026, 0x80000001A6058F70);

          v7 = sub_1A5C9A528(v67);

          v59 = *(**(v14 + 12) + 264);

          v59(v60);

          __swift_destroy_boxed_opaque_existential_1(v0 + 16);
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
LABEL_7:

    v8 = *(v0 + 8);

    return v8(v7);
  }

  return result;
}

uint64_t sub_1A5C9A3FC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1A5C9AD2C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for FaceObservation(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A5C9A528(uint64_t a1)
{
  v2 = type metadata accessor for FaceObservation(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1A5B5748C(0, v6, 0);
    v7 = v15;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1A5C9AF04(v8, v5, type metadata accessor for FaceObservation);
      swift_dynamicCast();
      v15 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A5B5748C((v10 > 1), v11 + 1, 1);
        v7 = v15;
      }

      *(v7 + 16) = v11 + 1;
      sub_1A5B101C8(&v14, (v7 + 32 * v11 + 32));
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1A5C9A6C4()
{

  sub_1A5B4F9C8(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1A5C9A734@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[5];
  v10 = v1[4];
  v11 = v3;
  v12 = v1[6];
  v4 = v12;
  v5 = v1[3];
  v9[0] = v1[2];
  v6 = v9[0];
  v9[1] = v5;
  a1[2] = v10;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v6;
  a1[1] = v5;
  return sub_1A5C996D0(v9, v8);
}

uint64_t sub_1A5C9A7E4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_1A5C9A86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1A5C99530;

  return sub_1A5CA0F18(a1, v7, a3);
}

uint64_t sub_1A5C9A940(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A5C9A9D4;

  return sub_1A5C9993C(a1);
}

uint64_t sub_1A5C9A9D4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1A5C9AB24(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5C98C98;

  return sub_1A5CA07F4(a1, v4, &off_1F1966DD0);
}

uint64_t sub_1A5C9AC58(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5B0CE78;

  return sub_1A5CB68D0(a1, v4, &off_1EE701498);
}

size_t sub_1A5C9AD2C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2D00);
  v10 = *(type metadata accessor for FaceObservation(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for FaceObservation(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A5C9AF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5C9AF6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1AC558440);
  }

  return result;
}

uint64_t sub_1A5C9B01C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5C9B094(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A5C9B0DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A5C9B174(int a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t sub_1A5C9B204(uint64_t a1)
{
  v2 = v1;
  sub_1A5B180A0(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v3 = v31;
  v4 = v33;
  v23 = v32;
  v24 = v30;
  v22 = v34;
  v5 = v35;
  v6 = v36;
  LOBYTE(v30) = v37;
  v7 = sub_1A5B9D200();
  v9 = v8;
  v10 = (*(*v1 + 152))();
  v11 = sub_1A5C59D6C(v10);
  v13 = v12;

  if (v9)
  {
    if ((v13 & 1) == 0)
    {
LABEL_8:

      swift_unknownObjectRelease();
LABEL_9:
      v20 = 0;
      return v20 & 1;
    }
  }

  else if ((v13 & 1) != 0 || v7 != v11)
  {
    goto LABEL_8;
  }

  v30 = v24;
  v31 = v3;
  v32 = v23;
  v33 = v4;
  v34 = v22;
  v35 = v5;
  v36 = v6;
  v14 = *(v2 + 40);
  v15 = *(v2 + 64);
  v17 = *(v2 + 72);
  v16 = *(v2 + 80);
  v25[0] = *(v2 + 32);
  v25[1] = v14;
  v26 = *(v2 + 48);
  v27 = v15;
  v28 = v17;
  v29 = v16;
  sub_1A5C5685C();

  swift_unknownObjectRetain();
  v18 = v6;

  swift_unknownObjectRetain();
  v19 = v16;
  v20 = sub_1A5FD3D0C();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v20 & 1;
}

uint64_t sub_1A5C9B424(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1A5C9B47C(a1, a2);
  return v4;
}

uint64_t sub_1A5C9B47C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 88) = -1;
  sub_1A5B180A0(a1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = v44;
    v8 = v41;
    v33 = v40;
    v9 = v43;
    v10 = v42;
    v37 = v44;
    v38 = v45;
    v11 = v40;
    v35 = v42;
    v36 = v43;
    v34 = v41;
    v12 = v45;
    *(v2 + 96) = v44;
    *(v2 + 112) = v12;
    *(v2 + 48) = v34;
    v30 = v7;
    v31 = v45;
    v26 = v11;
    v27 = v8;
    v39 = v46;
    v13 = *(&v33 + 1);
    v14 = v35;
    v15 = *(&v35 + 1);
    v16 = v36;
    *(v3 + 32) = v33;
    *(v3 + 40) = v13;
    *(v3 + 64) = v14;
    *(v3 + 72) = v15;
    *(v3 + 80) = v16;
    v32 = v46;
    v28 = v10;
    v29 = v9;
    swift_unknownObjectRetain();
    v17 = v16;

    CoreMLRequest.descriptor.getter(&v25);
    *(v3 + 92) = v25;
    *(v3 + 24) = sub_1A5B3096C(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();

    sub_1A5C59428(v18);
    v19 = *(a2 + 16);
    v20 = v19;
    sub_1A5C59F48(v19);
    swift_endAccess();
    LOBYTE(v25) = BYTE8(v36);
    v21 = sub_1A5B9D200();
    v23 = v22;
    swift_beginAccess();
    sub_1A5C59E24(v21, v23 & 1);
    swift_endAccess();
    LOWORD(v26) = *(v3 + 92);
    v24 = sub_1A5C752E0();
    swift_beginAccess();
    sub_1A5C5998C(v24);
    swift_endAccess();

    sub_1A5B672AC(&v33);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1A5C9B6AC(unint64_t a1, _OWORD *a2)
{
  v102 = a2;
  v99 = a1;
  v3 = sub_1A5FD367C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v100 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecognizedObjectObservation();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v94 - v9;
  v11 = type metadata accessor for ClassificationObservation();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v94 - v16);
  v18 = *(*v2 + 176);
  v98 = v2;
  v19 = v18(v15);
  if (v19 <= 2)
  {
    if (!v19)
    {
      goto LABEL_23;
    }

    if (v19 == 2)
    {
      if (*(v99 + 16))
      {
        sub_1A5B101D8(v99 + 32, &v104);
        sub_1A5B16F58(0, &qword_1EB1EEF48);
        if (swift_dynamicCast())
        {
          v36 = v107;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F43F8);
          v2 = swift_allocObject();
          *(v2 + 16) = xmmword_1A5FF36F0;
          LOWORD(v107) = *(v98 + 92);
          v37 = *(v98 + 112);
          v104 = *(v98 + 96);
          v105 = v37;
          *(v2 + 56) = type metadata accessor for PixelBufferObservation();
          *(v2 + 64) = sub_1A5C9E73C(&qword_1EB1F1960, type metadata accessor for PixelBufferObservation);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 32));
          v39 = v36;
          sub_1A5BF36E0(v39, &v107, v102, boxed_opaque_existential_1);

          return v2;
        }
      }

      v78 = "Model did not produce MLFeature image.";
      goto LABEL_51;
    }

LABEL_33:
    v25 = sub_1A5C9C360(v99, &qword_1EB1F4458);
    if (v25)
    {
      v24 = (v25 & 0xFFFFFFFFFFFFFF8);
      if (v25 >> 62)
      {
        goto LABEL_74;
      }

      v22 = v25;
      v52 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52)
      {
        goto LABEL_36;
      }

      goto LABEL_75;
    }

    *&v104 = 0;
    *(&v104 + 1) = 0xE000000000000000;
    sub_1A5FD46AC();
    v80 = MEMORY[0x1AC554600](0x7974206C65646F4DLL, 0xEB00000000206570);
    LODWORD(v107) = (v18)(v80);
    type metadata accessor for VNCoreMLModelType();
    sub_1A5FD481C();
    MEMORY[0x1AC554600](0x70757320746F6E20, 0xEF2E646574726F70);
    v2 = *(&v104 + 1);
    v81 = v104;
    sub_1A5B16774();
    swift_allocError();
    *v76 = v81;
    *(v76 + 8) = v2;
    *(v76 + 16) = 0;
    v79 = 5;
LABEL_53:
    *(v76 + 20) = v79;
    swift_willThrow();
    return v2;
  }

  if (v19 == 3 || v19 == 5)
  {
    v21 = sub_1A5C9C360(v99, &qword_1EB1F4450);
    if (v21)
    {
      v22 = v21;
      if (v21 >> 62)
      {
        goto LABEL_68;
      }

      v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        goto LABEL_10;
      }

      goto LABEL_75;
    }

    v75 = 0x80000001A6059030;
    sub_1A5B16774();
    swift_allocError();
    v77 = 0xD000000000000028;
    goto LABEL_52;
  }

  if (v19 != 4)
  {
    goto LABEL_33;
  }

LABEL_23:
  v40 = sub_1A5C9C360(v99, &qword_1EB1EF088);
  if (!v40)
  {
    v78 = "Model did not produce classifications.";
LABEL_51:
    v75 = (v78 - 32) | 0x8000000000000000;
    sub_1A5B16774();
    swift_allocError();
    v77 = 0xD000000000000026;
LABEL_52:
    *v76 = v77;
    *(v76 + 8) = v75;
    *(v76 + 16) = 0;
    v79 = 8;
    goto LABEL_53;
  }

  v41 = v40;
  if (!(v40 >> 62))
  {
    v5 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_26;
    }

LABEL_75:

    return MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1A5FD484C();
  if (!v5)
  {
    goto LABEL_75;
  }

LABEL_26:
  v107 = MEMORY[0x1E69E7CC0];
  v24 = &v107;
  v25 = sub_1A5C9E2A4(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    while (1)
    {
      __break(1u);
LABEL_74:
      v22 = v25;
      v52 = sub_1A5FD484C();
      if (!v52)
      {
        goto LABEL_75;
      }

LABEL_36:
      v95 = v24;
      v107 = MEMORY[0x1E69E7CC0];
      result = sub_1A5C9E2A4(0, v52 & ~(v52 >> 63), 0);
      if (v52 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = 0;
      v2 = v107;
      v97 = *(v98 + 92);
      v54 = v22;
      v98 = v22;
      v99 = v22 & 0xC000000000000001;
      v96 = v52;
      while (1)
      {
        v55 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v99)
        {
          v56 = MEMORY[0x1AC554EE0](v7, v54);
        }

        else
        {
          if (v7 >= v95[2])
          {
            goto LABEL_67;
          }

          v56 = *(v54 + 8 * v7 + 32);
        }

        v57 = v56;
        v58 = [v56 featureName];
        v59 = sub_1A5FD3D5C();
        v61 = v60;

        v10 = [v57 featureValue];
        v62 = [v57 uuid];
        v5 = v100;
        sub_1A5FD365C();

        [v57 confidence];
        v64 = v63;
        v103 = v97;
        *(&v105 + 1) = type metadata accessor for CoreMLFeatureValueObservation();
        v106 = sub_1A5C9E73C(&qword_1EB1F43F0, type metadata accessor for CoreMLFeatureValueObservation);
        v65 = __swift_allocate_boxed_opaque_existential_1(&v104);
        v66 = v101;
        sub_1A5D2607C(v59, v61, v10, v5, v102, &v103, v65, v64);

        v101 = v66;
        if (v66)
        {

          __swift_deallocate_boxed_opaque_existential_0(&v104);

          return v2;
        }

        v107 = v2;
        v22 = *(v2 + 16);
        v67 = *(v2 + 24);
        if (v22 >= v67 >> 1)
        {
          sub_1A5C9E2A4((v67 > 1), v22 + 1, 1);
        }

        v68 = *(&v105 + 1);
        v69 = v106;
        v70 = __swift_mutable_project_boxed_opaque_existential_1(&v104, *(&v105 + 1));
        v71 = MEMORY[0x1EEE9AC00](v70);
        v73 = &v94 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v74 + 16))(v73, v71);
        sub_1A5C9E604(v22, v73, &v107, v68, v69);
        __swift_destroy_boxed_opaque_existential_1(&v104);
        v2 = v107;
        ++v7;
        v54 = v98;
        if (v55 == v96)
        {
          goto LABEL_64;
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      v23 = sub_1A5FD484C();
      if (!v23)
      {
        goto LABEL_75;
      }

LABEL_10:
      v107 = MEMORY[0x1E69E7CC0];
      v24 = &v107;
      v25 = sub_1A5C9E2A4(0, v23 & ~(v23 >> 63), 0);
      if ((v23 & 0x8000000000000000) == 0)
      {
        v2 = v107;
        v26 = *(v98 + 92);
        v27 = *(v98 + 96);
        v28 = *(v98 + 104);
        v29 = *(v98 + 112);
        v30 = *(v98 + 120);
        v100 = v22;
        if ((v22 & 0xC000000000000001) != 0)
        {
          v31 = 0;
          do
          {
            v32 = MEMORY[0x1AC554EE0](v31, v100);
            v103 = v26;
            *&v104 = v27;
            *(&v104 + 1) = v28;
            *&v105 = v29;
            *(&v105 + 1) = v30;
            sub_1A5BE8C4C(v32, &v103, &v104, v102, v10);
            v107 = v2;
            v34 = *(v2 + 16);
            v33 = *(v2 + 24);
            if (v34 >= v33 >> 1)
            {
              sub_1A5C9E2A4((v33 > 1), v34 + 1, 1);
              v2 = v107;
            }

            ++v31;
            *(&v105 + 1) = v5;
            v106 = sub_1A5C9E73C(&qword_1EB1F1758, type metadata accessor for RecognizedObjectObservation);
            v35 = __swift_allocate_boxed_opaque_existential_1(&v104);
            sub_1A5C9E784(v10, v35, type metadata accessor for RecognizedObjectObservation);
            *(v2 + 16) = v34 + 1;
            sub_1A5B72510(&v104, v2 + 40 * v34 + 32);
            sub_1A5C9E7EC(v10, type metadata accessor for RecognizedObjectObservation);
          }

          while (v23 != v31);
        }

        else
        {
          v82 = (v22 + 32);
          do
          {
            v83 = *v82;
            v103 = v26;
            *&v104 = v27;
            *(&v104 + 1) = v28;
            *&v105 = v29;
            *(&v105 + 1) = v30;
            v84 = v83;
            sub_1A5BE8C4C(v84, &v103, &v104, v102, v7);
            v107 = v2;
            v86 = *(v2 + 16);
            v85 = *(v2 + 24);
            if (v86 >= v85 >> 1)
            {
              sub_1A5C9E2A4((v85 > 1), v86 + 1, 1);
              v2 = v107;
            }

            *(&v105 + 1) = v5;
            v106 = sub_1A5C9E73C(&qword_1EB1F1758, type metadata accessor for RecognizedObjectObservation);
            v87 = __swift_allocate_boxed_opaque_existential_1(&v104);
            sub_1A5C9E784(v7, v87, type metadata accessor for RecognizedObjectObservation);
            *(v2 + 16) = v86 + 1;
            sub_1A5B72510(&v104, v2 + 40 * v86 + 32);
            sub_1A5C9E7EC(v7, type metadata accessor for RecognizedObjectObservation);
            ++v82;
            --v23;
          }

          while (v23);
        }

        goto LABEL_64;
      }

      __break(1u);
    }
  }

  v2 = v107;
  v42 = *(v98 + 92);
  v43 = *(v98 + 96);
  v44 = *(v98 + 104);
  v45 = *(v98 + 112);
  v46 = *(v98 + 120);
  v100 = v41;
  if ((v41 & 0xC000000000000001) != 0)
  {
    v47 = 0;
    do
    {
      v48 = MEMORY[0x1AC554EE0](v47, v100);
      v103 = v42;
      *&v104 = v43;
      *(&v104 + 1) = v44;
      *&v105 = v45;
      *(&v105 + 1) = v46;
      sub_1A5C5C324(v48, &v103, v102, v17);
      v107 = v2;
      v50 = *(v2 + 16);
      v49 = *(v2 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1A5C9E2A4((v49 > 1), v50 + 1, 1);
        v2 = v107;
      }

      ++v47;
      *(&v105 + 1) = v11;
      v106 = sub_1A5C9E73C(&qword_1EB1F30F8, type metadata accessor for ClassificationObservation);
      v51 = __swift_allocate_boxed_opaque_existential_1(&v104);
      sub_1A5C9E784(v17, v51, type metadata accessor for ClassificationObservation);
      *(v2 + 16) = v50 + 1;
      sub_1A5B72510(&v104, v2 + 40 * v50 + 32);
      sub_1A5C9E7EC(v17, type metadata accessor for ClassificationObservation);
    }

    while (v5 != v47);
  }

  else
  {
    v88 = (v41 + 32);
    do
    {
      v89 = *v88;
      v103 = v42;
      *&v104 = v43;
      *(&v104 + 1) = v44;
      *&v105 = v45;
      *(&v105 + 1) = v46;
      v90 = v89;
      sub_1A5C5C324(v90, &v103, v102, v13);
      v107 = v2;
      v92 = *(v2 + 16);
      v91 = *(v2 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_1A5C9E2A4((v91 > 1), v92 + 1, 1);
        v2 = v107;
      }

      *(&v105 + 1) = v11;
      v106 = sub_1A5C9E73C(&qword_1EB1F30F8, type metadata accessor for ClassificationObservation);
      v93 = __swift_allocate_boxed_opaque_existential_1(&v104);
      sub_1A5C9E784(v13, v93, type metadata accessor for ClassificationObservation);
      *(v2 + 16) = v92 + 1;
      sub_1A5B72510(&v104, v2 + 40 * v92 + 32);
      sub_1A5C9E7EC(v13, type metadata accessor for ClassificationObservation);
      ++v88;
      --v5;
    }

    while (v5);
  }

LABEL_64:

  return v2;
}

uint64_t sub_1A5C9C360(uint64_t a1, unint64_t *a2)
{
  v8 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  sub_1A5FD47AC();
  if (!v4)
  {
    return v8;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1A5B101D8(i, v7);
    sub_1A5B16F58(0, a2);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1A5FD477C();
    sub_1A5FD47BC();
    sub_1A5FD47CC();
    sub_1A5FD478C();
    if (!--v4)
    {
      return v8;
    }
  }

  return 0;
}

uint64_t sub_1A5C9C464(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1A5C9C4F4, 0, 0);
}

uint64_t sub_1A5C9C4F4()
{
  v1 = (*(**(v0 + 152) + 120))();
  *(v0 + 168) = v1;
  v2 = *(v0 + 160);
  v3 = *(*v2 + 21);
  v4 = v1;
  v5 = v1;
  v6 = v3(v0 + 80);
  sub_1A5C59AD8(v4);
  v6(v0 + 80, 0);
  sub_1A5B16F58(0, &qword_1EB1F4400);
  v7 = v2[10];
  v8 = sub_1A5C9E84C(v7);
  *(v0 + 176) = v8;
  v11 = v8;
  v12 = *(v0 + 160);

  (*(*v12 + 184))([v11 modelType]);
  [v11 setFeatureProvider_];
  v13 = sub_1A5FD3D2C();
  [v11 setInputImageFeatureName_];

  v14 = [v7 visionFeaturePrintInfo];
  if (v14)
  {
    v15 = v14;
    (*(**(v0 + 160) + 240))(v14, *(v0 + 152));
  }

  v16 = *(**(v0 + 160) + 152);
  v17 = v16();
  sub_1A5B37FAC(v17);

  v18 = objc_allocWithZone(VNCoreMLTransformer);
  v19 = v11;
  v20 = sub_1A5FD3BDC();

  *(v0 + 80) = 0;
  v21 = [v18 initWithOptions:v20 model:v19 error:v0 + 80];
  *(v0 + 184) = v21;

  v22 = *(v0 + 80);
  if (v21)
  {
    v23 = *(v0 + 160);
    v24 = v22;

    v25 = v23[12];
    v26 = v23[13];
    v27 = v23[14];
    v28 = v23[15];
    v16();
    v29 = sub_1A5FD3BDC();
    *(v0 + 192) = v29;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1A5C9C9BC;
    v30 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4408);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1A5C9CC60;
    *(v0 + 104) = &block_descriptor_1;
    *(v0 + 112) = v30;
    [v21 produceObservationsWithRegionOfInterest:v29 detectorProcessingOptions:v0 + 80 completionHandler:{v25, v26, v27, v28}];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v31 = v22;

    sub_1A5FD348C();
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1A5C9C9BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1A5C9CBA8;
  }

  else
  {
    v2 = sub_1A5C9CAF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A5C9CAF8()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  v4 = *(v0 + 144);
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1A5C9CBA8()
{
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A5C9CC60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F3E90);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_1A5FD3F4C();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1A5C9CD40(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v2[24] = *(type metadata accessor for VisionResult(0) - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v6 = (*(*v1 + 224) + **(*v1 + 224));
  v4 = swift_task_alloc();
  v2[27] = v4;
  *v4 = v2;
  v4[1] = sub_1A5C9CEC8;

  return v6(a1);
}

uint64_t sub_1A5C9CEC8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_1A5C9D32C;
  }

  else
  {
    v4 = sub_1A5C9CFDC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A5C9CFDC()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v3 + 40);
  v6 = *(v3 + 56);
  v7 = *(v3 + 24);
  *(v0 + 288) = *(v3 + 72);
  *(v0 + 256) = v5;
  *(v0 + 272) = v6;
  *(v0 + 240) = v7;
  v8 = (*(*v4 + 216))(v1, v0 + 240);
  if (v2)
  {

    v10 = (*(**(v0 + 184) + 128))(v9);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(v0 + 192);
      v32 = MEMORY[0x1E69E7CC0];
      sub_1A5C9E2C4(0, v11, 0);
      v13 = v32;
      v14 = v10 + 32;
      do
      {
        v15 = *(v0 + 200);
        sub_1A5B180A0(v14, v0 + 16);
        sub_1A5B180A0(v0 + 16, v0 + 56);
        v16 = v2;
        sub_1A5B57ECC(v0 + 56, 0, v2, v15);
        __swift_destroy_boxed_opaque_existential_1(v0 + 16);
        v18 = *(v32 + 16);
        v17 = *(v32 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1A5C9E2C4(v17 > 1, v18 + 1, 1);
        }

        v19 = *(v0 + 200);
        *(v32 + 16) = v18 + 1;
        sub_1A5B20B18(v19, v32 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v18);
        v14 += 40;
        --v11;
      }

      while (v11);

      goto LABEL_17;
    }

LABEL_16:
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v20 = *(v0 + 184);

  v22 = (*(*v20 + 128))(v21);
  v23 = *(v22 + 16);
  if (!v23)
  {

    goto LABEL_16;
  }

  v24 = *(v0 + 192);
  v33 = MEMORY[0x1E69E7CC0];
  sub_1A5C9E2C4(0, v23, 0);
  v13 = v33;
  v25 = v22 + 32;
  do
  {
    v26 = *(v0 + 208);
    sub_1A5B180A0(v25, v0 + 96);
    sub_1A5B180A0(v0 + 96, v0 + 136);

    sub_1A5B57ECC(v0 + 136, v8, 0, v26);
    __swift_destroy_boxed_opaque_existential_1(v0 + 96);
    v28 = *(v33 + 16);
    v27 = *(v33 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1A5C9E2C4(v27 > 1, v28 + 1, 1);
    }

    v29 = *(v0 + 208);
    *(v33 + 16) = v28 + 1;
    sub_1A5B20B18(v29, v33 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v28);
    v25 += 40;
    --v23;
  }

  while (v23);

LABEL_17:

  v30 = *(v0 + 8);

  return v30(v13);
}

uint64_t sub_1A5C9D32C()
{
  v1 = *(v0 + 232);
  v2 = (*(**(v0 + 184) + 128))();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 192);
    v14 = MEMORY[0x1E69E7CC0];
    sub_1A5C9E2C4(0, v3, 0);
    v5 = v14;
    v6 = v2 + 32;
    do
    {
      v7 = *(v0 + 200);
      sub_1A5B180A0(v6, v0 + 16);
      sub_1A5B180A0(v0 + 16, v0 + 56);
      v8 = v1;
      sub_1A5B57ECC(v0 + 56, 0, v1, v7);
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1A5C9E2C4(v9 > 1, v10 + 1, 1);
      }

      v11 = *(v0 + 200);
      *(v14 + 16) = v10 + 1;
      sub_1A5B20B18(v11, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10);
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v0 + 8);

  return v12(v5);
}

id sub_1A5C9D4F0(void *a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = [a1 featureExtractorParameters];
  sub_1A5FD45DC();
  swift_unknownObjectRelease();
  sub_1A5B101D8(v43, &v41);
  sub_1A5B16F58(0, &qword_1EB1F4410);
  if (swift_dynamicCast())
  {
    v6 = v40[0];
    v7 = [objc_allocWithZone(VNCreateSceneprintRequest) init];
    v8 = [v40[0] scenePrintVersion];
    if ((v8 & 0x8000000000000000) == 0)
    {
      *&v41 = 0;
      v9 = [v7 setRevision:v8 error:&v41];
      v10 = v41;
      if (v9)
      {
        v11 = (*(*v2 + 152))(v41);
        result = sub_1A5C59D6C(v11);
        if (v13)
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v14 = result;

        [v7 setImageCropAndScaleOption_];
        (*(*v2 + 248))(v7, a2);
        if (!v3)
        {
          result = [v7 results];
          if (result)
          {
            v15 = result;
            sub_1A5B16F58(0, &qword_1EB1F4430);
            a2 = sub_1A5FD3F4C();

            if (!(a2 >> 62))
            {
              if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_9;
              }

              goto LABEL_35;
            }

LABEL_34:
            if (sub_1A5FD484C())
            {
LABEL_9:
              if ((a2 & 0xC000000000000001) == 0)
              {
                if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v16 = *(a2 + 32);
                  goto LABEL_12;
                }

                __break(1u);
                goto LABEL_38;
              }

LABEL_36:
              v16 = MEMORY[0x1AC554EE0](0, a2);
LABEL_12:
              v17 = v16;

              v18 = [v17 sceneprints];

              if (v18)
              {
                sub_1A5B16F58(0, &qword_1EB1F4440);
                v19 = sub_1A5FD3F4C();

                v20 = sub_1A5FD3D5C();
                v22 = v21;
                if (v19)
                {
                  *(&v42 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4438);
                  *&v41 = v19;
LABEL_31:
                  v39 = (*(*v2 + 168))(v40);
                  sub_1A5B0DE30(&v41, v20, v22);
                  v39(v40, 0);
                  goto LABEL_27;
                }
              }

              else
              {
                v20 = sub_1A5FD3D5C();
                v22 = v38;
              }

              v41 = 0u;
              v42 = 0u;
              goto LABEL_31;
            }

LABEL_35:

            __break(1u);
            goto LABEL_36;
          }

          goto LABEL_43;
        }

LABEL_27:

        return __swift_destroy_boxed_opaque_existential_1(v43);
      }

LABEL_26:
      v37 = v10;
      sub_1A5FD348C();

      swift_willThrow();
      goto LABEL_27;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_1A5B101D8(v43, &v41);
  sub_1A5B16F58(0, &qword_1EB1F4418);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v6 = v40[0];
  v7 = [objc_allocWithZone(VNCreateDetectionprintRequest) init];
  v23 = [v40[0] objectPrintVersion];
  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  *&v41 = 0;
  v24 = [v7 setRevision:v23 error:&v41];
  v10 = v41;
  if (!v24)
  {
    goto LABEL_26;
  }

  v25 = *(*v2 + 248);
  v26 = v41;
  v25(v7, a2);
  if (v3)
  {
    goto LABEL_27;
  }

  result = [v7 results];
  if (result)
  {
    v27 = result;
    sub_1A5B16F58(0, &qword_1EB1F4420);
    a2 = sub_1A5FD3F4C();

    if (!(a2 >> 62))
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_39:

        __break(1u);
        goto LABEL_40;
      }

LABEL_22:
      if ((a2 & 0xC000000000000001) == 0)
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v28 = *(a2 + 32);
        goto LABEL_25;
      }

LABEL_40:
      v28 = MEMORY[0x1AC554EE0](0, a2);
LABEL_25:
      v29 = v28;

      v30 = [v29 detectionprint];

      v31 = sub_1A5FD3D5C();
      v33 = v32;
      *(&v42 + 1) = sub_1A5B16F58(0, &qword_1EB1F4428);
      *&v41 = v30;
      v34 = *(*v2 + 168);
      v35 = v30;
      v36 = v34(v40);
      sub_1A5B0DE30(&v41, v31, v33);
      v36(v40, 0);

      goto LABEL_27;
    }

LABEL_38:
    if (!sub_1A5FD484C())
    {
      goto LABEL_39;
    }

    goto LABEL_22;
  }

LABEL_44:
  __break(1u);
  return result;
}

void sub_1A5C9DB18(void *a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  [a1 setRegionOfInterest_];
  v6 = *(*a2 + 120);
  v7 = *(a2[10] + 16);
  v8 = v6();
  if (v3)
  {
  }

  else
  {
    v9 = v8;
    v10 = [objc_allocWithZone(VNImageRequestHandler) initWithSession:v7 imageBuffer:v8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A5FF3930;
    *(v11 + 32) = a1;
    sub_1A5B16F58(0, &qword_1EB1F0FD8);
    v12 = a1;
    v13 = sub_1A5FD3F3C();

    v17[0] = 0;
    v14 = [v10 performRequests:v13 error:v17];

    if (v14)
    {
      v15 = v17[0];
    }

    else
    {
      v16 = v17[0];
      sub_1A5FD348C();

      swift_willThrow();
    }
  }
}

uint64_t sub_1A5C9DCE4()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void (*sub_1A5C9DD98(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 144))();
  return sub_1A5B16120;
}

uint64_t sub_1A5C9DE4C(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5C99530;

  return v6(a1);
}

uint64_t sub_1A5C9DF6C(uint64_t a1)
{
  v6 = (*(*v1 + 224) + **(*v1 + 224));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5C9A9D4;

  return v6(a1);
}

uint64_t sub_1A5C9E0CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5C98C98;

  return sub_1A5CA07F4(a1, a2, &off_1F1966F08);
}

uint64_t sub_1A5C9E17C(uint64_t a1)
{
  v6 = (*(*v1 + 256) + **(*v1 + 256));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5B0CE78;

  return v6(a1);
}

void *sub_1A5C9E2A4(void *a1, int64_t a2, char a3)
{
  result = sub_1A5C9E2E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A5C9E2C4(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5C9E42C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A5C9E2E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F43F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1A5C9E42C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB48);
  v10 = *(type metadata accessor for VisionResult(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for VisionResult(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A5C9E604(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1A5B72510(&v12, v10 + 40 * a1 + 32);
}

void type metadata accessor for VNCoreMLModelType()
{
  if (!qword_1EB1F4448)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB1F4448);
    }
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1A5C9E73C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5C9E784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5C9E7EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A5C9E84C(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() modelForMLModel:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_1A5FD348C();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1A5C9E93C(uint64_t a1)
{
  sub_1A5B180A0(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  result = swift_dynamicCast();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2E10);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1A5FF36F0;
    swift_unknownObjectRetain();
    v3 = v7;

    sub_1A5B50670(v4, 0, v5, 0, 0, 0, 1, 0, v2 + 32, 0, 1, v6, 1, 0);

    swift_unknownObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1A5C9EABC(uint64_t a1))(_BYTE *, void)
{
  v3 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))())
  {

    result = (*((*v3 & *v1) + 0x88))(v10);
    v5 = result;
    if (*v6)
    {
      if (a1)
      {

        sub_1A5C9EC08(v7);
        return v5(v10, 0);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      return result(v10, 0);
    }
  }

  else
  {
    v9 = *((*v3 & *v1) + 0x80);

    return v9(v8);
  }

  return result;
}

uint64_t sub_1A5C9EC08(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A5FD484C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1A5FD484C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A5CA01F0(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A5CA0300(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1A5C9EDB4(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC6Vision39CoreSceneUnderstandingDetectorRecipient_results] = 0;
  sub_1A5B180A0(a1, &v1[OBJC_IVAR____TtC6Vision39CoreSceneUnderstandingDetectorRecipient_request]);
  v5 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(*(*(*(v4 + 8) + 8) + 8) + 56))(&v10, v5);
  v9 = v10;
  result = sub_1A5C752E0();
  if (result)
  {
    *&v2[OBJC_IVAR____TtC6Vision39CoreSceneUnderstandingDetectorRecipient_originatingRequestSpecifier] = result;
    v8.receiver = v2;
    v8.super_class = type metadata accessor for CoreSceneUnderstandingDetectorRecipient();
    v7 = objc_msgSendSuper2(&v8, sel_init);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5C9EEF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6Vision39CoreSceneUnderstandingDetectorRecipient_results;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_1A5C9EFE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSceneUnderstandingDetectorRecipient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A5C9F0A8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t sub_1A5C9F140(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1A5B180A0(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4480);
  if (swift_dynamicCast())
  {
    sub_1A5B063D4(v18, v21);
    v6 = v22;
    v7 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_1A5BDA80C(v4, a2, v6, *(v7 + 8));
    if (!v3)
    {
      sub_1A5B180A0(v21, v20);
      v8 = objc_allocWithZone(type metadata accessor for CoreSceneUnderstandingDetectorRecipient());
      v9 = sub_1A5C9EDB4(v20);
      v10 = *(*v4 + 344);
      v11 = v9;
      v12 = v10(v20);
      v14 = v13;
      MEMORY[0x1AC554720]();
      if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1A5FD3F7C();
      }

      sub_1A5FD3FBC();
      v12(v20, 0);
      v15 = v22;
      v16 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      (*(v16 + 16))(v4, v11, v15, v16);
    }

    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    result = sub_1A5C9F348(v18);
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5C9F348(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5C9F3B0(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v2[29] = *(type metadata accessor for VisionResult(0) - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v6 = (*(*v1 + 272) + **(*v1 + 272));
  v4 = swift_task_alloc();
  v2[32] = v4;
  *v4 = v2;
  v4[1] = sub_1A5C9F54C;

  return v6(a1);
}

uint64_t sub_1A5C9F54C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1A5C9FB80;
  }

  else
  {

    v2 = sub_1A5C9F66C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

size_t sub_1A5C9F66C()
{
  v51 = v0;
  v1 = (*(**(v0 + 224) + 328))();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v50 = MEMORY[0x1E69E7CC0];
      result = sub_1A5C9E2C4(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v5 = 0;
      v44 = *(v0 + 232);
      v45 = v3;
      v42 = *(v0 + 216);
      v43 = v2;
      v6 = v50;
      v46 = v2 & 0xC000000000000001;
      v41 = v2 & 0xFFFFFFFFFFFFFF8;
      v7 = *(v0 + 264);
      while (!__OFADD__(v5, 1))
      {
        v47 = v5 + 1;
        if (v46)
        {
          v8 = MEMORY[0x1AC554EE0](v5, v2);
        }

        else
        {
          if (v5 >= *(v41 + 16))
          {
            goto LABEL_21;
          }

          v8 = *(v2 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = sub_1A5B180A0(v8 + OBJC_IVAR____TtC6Vision39CoreSceneUnderstandingDetectorRecipient_request, v0 + 16);
        v11 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x78))(v10);
        v13 = *(v0 + 40);
        v12 = *(v0 + 48);
        v14 = __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
        if (v11)
        {
          v15 = sub_1A5C9FE0C(v11);

          v16 = *(v42 + 40);
          v48[0] = *(v42 + 24);
          v48[1] = v16;
          v48[2] = *(v42 + 56);
          v49 = *(v42 + 72);
          (*(*(v12 + 8) + 32))(v15, v48, v13, *(v12 + 8));
          v17 = *(v0 + 248);
          v18 = v7;

          if (v7)
          {
            v19 = *(v0 + 40);
            v20 = *(v0 + 48);
            v21 = __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
            *(v0 + 120) = v19;
            *(v0 + 128) = *(*(*(v20 + 8) + 8) + 8);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
            (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v21, v19);
            v23 = v0 + 96;
            v24 = v17;
            v25 = 0;
            v26 = v18;
          }

          else
          {
            swift_getAssociatedTypeWitness();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4508);
            v31 = sub_1A5FD480C();

            v32 = *(v0 + 40);
            v33 = *(v0 + 48);
            v34 = __swift_project_boxed_opaque_existential_1((v0 + 16), v32);
            *(v0 + 160) = v32;
            *(v0 + 168) = *(*(*(v33 + 8) + 8) + 8);
            v35 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
            (*(*(v32 - 8) + 16))(v35, v34, v32);
            v36 = sub_1A5C9FFD8(v31);

            v23 = v0 + 136;
            v24 = v17;
            v25 = v36;
            v26 = 0;
          }

          sub_1A5B57ECC(v23, v25, v26, v24);
          v7 = 0;
          v2 = v43;
        }

        else
        {
          v27 = *(v0 + 248);
          *(v0 + 80) = v13;
          *(v0 + 88) = *(*(*(v12 + 8) + 8) + 8);
          v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
          (*(*(v13 - 8) + 16))(v28, v14, v13);
          sub_1A5B16774();
          v29 = swift_allocError();
          *v30 = 0xD000000000000024;
          *(v30 + 8) = 0x80000001A6059260;
          *(v30 + 16) = 0;
          *(v30 + 20) = 8;
          sub_1A5B57ECC(v0 + 56, 0, v29, v27);
        }

        __swift_destroy_boxed_opaque_existential_1(v0 + 16);

        v50 = v6;
        v38 = *(v6 + 16);
        v37 = *(v6 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1A5C9E2C4(v37 > 1, v38 + 1, 1);
          v6 = v50;
        }

        v39 = *(v0 + 248);
        *(v6 + 16) = v38 + 1;
        sub_1A5B20B18(v39, v6 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v38);
        ++v5;
        if (v47 == v45)
        {

          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v3 = sub_1A5FD484C();
      if (!v3)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    v6 = MEMORY[0x1E69E7CC0];
LABEL_24:

    v40 = *(v0 + 8);

    return v40(v6);
  }

  return result;
}