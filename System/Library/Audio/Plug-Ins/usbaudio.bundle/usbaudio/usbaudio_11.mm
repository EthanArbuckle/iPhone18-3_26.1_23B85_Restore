uint64_t sub_1000D2D48()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() entryFromPath:v0];

  if (!v1)
  {
    return 0;
  }

  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 propertyForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {

    sub_100022ADC(v9);
    return 0;
  }

  sub_1000D3028();
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v4 = *[v6 bytes];

  if (v4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1000D2EB8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() entryFromPath:v0];

  if (!v1)
  {
    return 0;
  }

  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 propertyForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {

    sub_100022ADC(v9);
    return 0;
  }

  sub_1000D3028();
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v4 = *[v6 bytes];

  if (v4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_1000D3028()
{
  result = qword_100178390;
  if (!qword_100178390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100178390);
  }

  return result;
}

uint64_t sub_1000D3074(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D3494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(a5);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v14, v16);
  if (v10)
  {
    return (*(v12 + 32))(a10, v16, a7);
  }

  return result;
}

uint64_t static DescriptorUtils.readBytes<A>(type:from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = sub_1000D5C9C(a3, a1, *a1, *(a1 + 8), a2);
  if (!v3)
  {
    *a1 = result;
    *(a1 + 8) = v6;
  }

  return result;
}

void *sub_1000D359C(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = type metadata accessor for Mirror();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _swiftEmptyArrayStorage;
  v9 = sub_10000CBAC(_swiftEmptyArrayStorage);
  type metadata accessor for IOUSBDescriptorHeader(0);
  *(&v25 + 1) = v10;
  LOBYTE(v24) = v1;
  BYTE1(v24) = v2;
  Mirror.init(reflecting:)();
  v11 = Mirror.children.getter();
  (*(v4 + 8))(v7, v3);
  v19[1] = v11;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  while (*(&v29 + 1))
  {
    *v28 = *&v28[7];
    *&v28[2] = *&v28[9];
    *&v28[4] = v29;
    sub_1000AA344(v28, v9, &v24);
    sub_10000D040(v28, &qword_100175248, &unk_100122110);
    if (*(&v24 + 1))
    {
      v20 = v24;
      v21 = v25;
      v22 = v26;
      v23 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1000255B8(0, v8[2] + 1, 1, v8);
      }

      v13 = v8[2];
      v12 = v8[3];
      if (v13 >= v12 >> 1)
      {
        v8 = sub_1000255B8((v12 > 1), v13 + 1, 1, v8);
      }

      v8[2] = v13 + 1;
      v14 = &v8[7 * v13];
      v15 = v20;
      v16 = v21;
      v17 = v22;
      v14[10] = v23;
      *(v14 + 3) = v16;
      *(v14 + 4) = v17;
      *(v14 + 2) = v15;
    }

    else
    {
      sub_10000D040(&v24, &qword_100178488, &qword_1001254F8);
    }

    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  return v8;
}

uint64_t sub_1000D3878(void *a1, unsigned int a2)
{
  v22 = sub_100001AB4(&qword_100178480, &qword_1001254F0);
  v15 = *(v22 - 8);
  v5 = *(v15 + 64);
  __chkstk_darwin(v22);
  v7 = &v15 - v6;
  v8 = a1[4];
  sub_10001EAB8(a1, a1[3]);
  sub_1000AA7B4();
  v17 = v7;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  result = sub_1000D359C(a2);
  v10 = result;
  v16 = *(result + 16);
  if (v16)
  {
    v11 = 0;
    v12 = result + 32;
    while (v11 < *(v10 + 16))
    {
      sub_1000D6B44(v12, v20);
      v13 = v20[0];
      v14 = v20[1];
      sub_10001EAB8(v21, v21[3]);
      v18 = v13;
      v19 = v14;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v2)
      {
        (*(v15 + 8))(v17, v22);

        sub_10000CE78(v21);
      }

      ++v11;
      sub_10000CE78(v21);

      v12 += 56;
      if (v16 == v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    (*(v15 + 8))(v17, v22);
  }

  return result;
}

Swift::Int IOUSBDescriptorHeader.hashValue.getter(unsigned int a1)
{
  Hasher.init(_seed:)();
  v2 = sub_100068F80(a1);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance IOUSBDescriptorHeader()
{
  v1 = sub_100068F80(*v0);
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000D3BC8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = sub_100068F80(v1);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADCClassSpecificDescriptorHeader()
{
  v1 = sub_1000629A0(*v0 | (*(v0 + 2) << 16));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000D3D58()
{
  v1 = *(v0 + 2);
  v2 = *v0;
  Hasher.init(_seed:)();
  v3 = sub_1000629A0(v2 | (v1 << 16));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC3HighCapabilityDescriptor()
{
  v1 = sub_100065878(*v0 | (*(v0 + 2) << 32));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000D3EE0()
{
  v1 = *(v0 + 2);
  v2 = *v0;
  Hasher.init(_seed:)();
  v3 = sub_100065878(v2 | (v1 << 32));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC3ClusterDescriptorHeader()
{
  v1 = sub_100066E00(*v0 | (*(v0 + 2) << 32) | (*(v0 + 6) << 48));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000D4078()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 6);
  v3 = *v0;
  Hasher.init(_seed:)();
  v4 = sub_100066E00(v3 | (v1 << 32) | (v2 << 48));
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000D41C4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1 & 0xFFFFFFFFFFFFLL);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC3ClusterChannelInformationSegment()
{
  v1 = sub_100062070(*v0 | (*(v0 + 1) << 16));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000D4320()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  v3 = sub_100062070(v1 | (v2 << 16));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000D43E4(int a1, uint64_t (*a2)(void))
{
  Hasher.init(_seed:)();
  v4 = a2(a1 & 0xFFFFFF);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000D44A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(*v4 | (*(v4 + 2) << 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_1000D4574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *v4;
  v7 = *(v4 + 2);
  Hasher.init(_seed:)();
  v8 = a4(v6 | (v7 << 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    do
    {
      sub_10001EDEC(v10, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000D465C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1 & 0xFFFFFFFFFFFFFFLL);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC3ClusterChannelAmbiosonicSegment()
{
  v1 = sub_10006235C(*v0 | (*(v0 + 2) << 16) | (*(v0 + 3) << 24));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000D47C8()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  Hasher.init(_seed:)();
  v4 = sub_10006235C(v1 | (v2 << 16) | (v3 << 24));
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

Swift::Int ADC3ClusterChannelDescriptionSegment.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = sub_100062344(a1 & 0xFFFFFFFFFFLL);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC3ClusterChannelDescriptionSegment()
{
  v1 = sub_100062344(*v0 | (*(v0 + 2) << 16) | (*(v0 + 3) << 24));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000D49F0()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  Hasher.init(_seed:)();
  v4 = sub_100062344(v1 | (v2 << 16) | (v3 << 24));
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

Swift::Int ADC4ExtendedDescriptorHeader.hashValue.getter(unint64_t a1, __int16 a2)
{
  Hasher.init(_seed:)();
  v4 = sub_1000652AC(a1, a2);
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC4ExtendedDescriptorHeader()
{
  v1 = sub_1000652AC(*v0, *(v0 + 8));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000D4C08()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = sub_1000652AC(v1, v2);
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

Swift::Int ADC4ClusterDescriptorHeader.hashValue.getter(unint64_t a1, unsigned int a2)
{
  Hasher.init(_seed:)();
  v4 = sub_100066ACC(a1, a2);
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC4ClusterDescriptorHeader()
{
  v1 = sub_100066ACC(*v0, *(v0 + 8));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000D4E08()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = sub_100066ACC(v1, v2);
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

Swift::Int ADC4ClusterDescriptorSegmentHeader.hashValue.getter(unsigned int a1)
{
  Hasher.init(_seed:)();
  v2 = sub_100062648(a1);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC4ClusterDescriptorSegmentHeader()
{
  v1 = sub_100062648(*v0);
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000D4FFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = sub_100062648(v1);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

Swift::Int ADC4ClusterChannelInformationSegment.hashValue.getter(unint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = sub_100061A58(a1, a2 & 0xFFFFFFFFFFFFLL);
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC4ClusterChannelInformationSegment()
{
  v1 = sub_100061A58(*v0, *(v0 + 8) | (*(v0 + 12) << 32));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000D51F8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  Hasher.init(_seed:)();
  v4 = sub_100061A58(v1, v2 | (v3 << 32));
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000D52B8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = 0;
  v4 = result + 41;
  v5 = _swiftEmptyArrayStorage;
  v26 = *(result + 16);
  v24 = result + 41;
  while (2)
  {
    v25 = v5;
    v6 = (v4 + 16 * v3);
    while (1)
    {
      if (v3 >= v1)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_29;
      }

      v8 = *(v6 - 9);
      v9 = *(v6 - 1);
      v10 = *v6;
      if ((v10 - 2) <= 3)
      {
        break;
      }

      if (v2)
      {
        sub_100001AB4(&qword_100175458, &unk_100125500);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10011DE90;
        *(inited + 32) = v8;
        v12 = (inited + 32);
        *(inited + 40) = v9;
        *(inited + 41) = v10;
        v13 = *(v2 + 16);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) != 0 && (v14 = *(v2 + 24) >> 1, v14 > v13))
        {
          v15 = v2;
        }

        else
        {
          result = sub_100025818(result, v13 + 1, 1, v2);
          v15 = result;
          v14 = *(result + 24) >> 1;
        }

        v16 = *(v15 + 16);
        if (v14 <= v16)
        {
          goto LABEL_30;
        }

        *(v15 + 16 * v16 + 32) = *v12;

        ++*(v15 + 16);

        v2 = v15;
        v1 = v26;
        goto LABEL_6;
      }

LABEL_5:
      sub_100001AB4(&qword_100175458, &unk_100125500);
      result = swift_allocObject();
      v2 = result;
      *(result + 16) = xmmword_10011DE90;
      *(result + 32) = v8;
      *(result + 40) = v9;
      *(result + 41) = v10;
LABEL_6:
      ++v3;
      v6 += 16;
      if (v7 == v1)
      {
        v21 = v25;
        v22 = v2;
        goto LABEL_24;
      }
    }

    if (!v2)
    {
      goto LABEL_5;
    }

    sub_100001AB4(&qword_100175438, &qword_100120F00);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_10011DE90;
    *(v17 + 32) = v2;
    v18 = v25[2];

    result = swift_isUniquelyReferenced_nonNull_native();
    v19 = v18;
    if ((result & 1) == 0 || (v20 = v25[3] >> 1, v21 = v25, v20 <= v19))
    {
      result = sub_100025A4C(result, v19 + 1, 1, v25);
      v21 = result;
      v20 = *(result + 24) >> 1;
    }

    if (v20 <= v21[2])
    {
LABEL_31:
      __break(1u);
      return result;
    }

    sub_100001AB4(&qword_100175440, &unk_100125510);
    swift_arrayInitWithCopy();

    ++v21[2];
    sub_100001AB4(&qword_100175458, &unk_100125500);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10011DE90;
    *(v22 + 32) = v8;
    *(v22 + 40) = v9;
    *(v22 + 41) = v10;

    v5 = v21;
    v2 = v22;
    ++v3;
    v4 = v24;
    if (v7 != v1)
    {
      continue;
    }

    break;
  }

LABEL_24:
  if (v22)
  {
    sub_100001AB4(&qword_100175438, &qword_100120F00);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_10011DE90;
    *(v23 + 32) = v22;
    sub_10007E760(v23);
  }

  return v21;
}

uint64_t sub_1000D5618(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  result = 0;
  v4 = 0;
  v5 = a1 + 41;
  v6 = _swiftEmptyArrayStorage;
  v28 = a1 + 41;
  while (2)
  {
    v7 = (v5 + 16 * v4);
    while (1)
    {
      if (v4 >= v1)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_31;
      }

      v9 = *(v7 - 9);
      v10 = *(v7 - 1);
      v11 = *v7;
      if (v11 <= 0x10 && v11 != 11)
      {
        break;
      }

      if (result)
      {
        v29 = v6;
        v13 = result;
        sub_100001AB4(&qword_100175458, &unk_100125500);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10011DE90;
        *(inited + 32) = v9;
        v15 = (inited + 32);
        *(inited + 40) = v10;
        *(inited + 41) = v11;
        v16 = *(v13 + 16);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) != 0 && (v18 = *(v13 + 24) >> 1, v18 > v16))
        {
          result = v13;
        }

        else
        {
          result = sub_100025818(isUniquelyReferenced_nonNull_native, v16 + 1, 1, v13);
          v18 = *(result + 24) >> 1;
        }

        v19 = *(result + 16);
        if (v18 <= v19)
        {
          goto LABEL_32;
        }

        *(result + 16 * v19 + 32) = *v15;
        v20 = result;

        ++*(v20 + 16);

        result = v20;
        v6 = v29;
        goto LABEL_12;
      }

LABEL_11:
      sub_100001AB4(&qword_100175458, &unk_100125500);
      result = swift_allocObject();
      *(result + 16) = xmmword_10011DE90;
      *(result + 32) = v9;
      *(result + 40) = v10;
      *(result + 41) = v11;
LABEL_12:
      ++v4;
      v7 += 16;
      if (v8 == v1)
      {
        v25 = v6;
        v26 = result;
        goto LABEL_26;
      }
    }

    if (!result)
    {
      goto LABEL_11;
    }

    v21 = result;
    sub_100001AB4(&qword_100175438, &qword_100120F00);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_10011DE90;
    *(v22 + 32) = v21;
    v23 = v6[2];

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0 || (v24 = v6[3] >> 1, v25 = v6, v24 <= v23))
    {
      result = sub_100025A4C(result, v23 + 1, 1, v6);
      v25 = result;
      v24 = *(result + 24) >> 1;
    }

    if (v24 <= v25[2])
    {
LABEL_33:
      __break(1u);
      return result;
    }

    sub_100001AB4(&qword_100175440, &unk_100125510);
    swift_arrayInitWithCopy();

    ++v25[2];
    sub_100001AB4(&qword_100175458, &unk_100125500);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10011DE90;
    *(v26 + 32) = v9;
    *(v26 + 40) = v10;
    *(v26 + 41) = v11;

    v6 = v25;
    result = v26;
    ++v4;
    v5 = v28;
    if (v8 != v1)
    {
      continue;
    }

    break;
  }

LABEL_26:
  if (v26)
  {
    sub_100001AB4(&qword_100175438, &qword_100120F00);
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_10011DE90;
    *(v27 + 32) = v26;
    sub_10007E760(v27);
  }

  return v25;
}

void sub_1000D597C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a5 - 8) + 64);
  v7 = v6 * a2;
  if ((v6 * a2) >> 64 == (v6 * a2) >> 63)
  {
    if (a3)
    {
      sub_1000D5D10(a3, a4, v7);
      if (!v5)
      {
        v9 = sub_1001128D0(a3, v7);
        v11 = v10;
        __chkstk_darwin(v9);
        type metadata accessor for Array();
        Data.withUnsafeBytes<A>(_:)();
        sub_10007676C(v9, v11);
      }
    }

    else
    {
      sub_10000CA2C();
      swift_allocError();
      *v12 = 57;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0xE000000000000000;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000D5AF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v6 = result;
    __chkstk_darwin(result);
    v11[2] = v8;
    v11[3] = v7;
    v9 = type metadata accessor for Array();
    return sub_1000D3494(a4, a3, sub_1000D6A38, v11, v6, a4, &type metadata for Never, v9, &protocol witness table for Never, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D5BBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11[4] = 0;
    v11[5] = a2;
    v6 = __chkstk_darwin(result);
    v11[2] = v7;
    v11[3] = v6;
    v8 = sub_100001AB4(&qword_100178470, &qword_1001254E8);
    v9 = sub_1000D6AB8();
    result = sub_1000D3074(sub_1000D6A58, v11, v8, a3, &type metadata for Never, v9, &protocol witness table for Never, v10);
    *a4 = result;
  }

  return result;
}

uint64_t sub_1000D5C9C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  sub_1000D597C(a1, 1, a3, a4, a5);
  if (!v6)
  {
    v5 = v7;
    Array.subscript.getter();
  }

  return v5;
}

uint64_t sub_1000D5D10(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0 || !result || a2 - result < a3)
  {
    sub_10000CA2C();
    swift_allocError();
    *v3 = 56;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t _s9AUASDCore15DescriptorUtilsV27usbAudioFunctionDescriptorsySaySayAA13USBDescriptorOG07controlG0_SayAF15streamInterface_SayAGG0J10AlternatestG0jG0tGAGFZ_0(uint64_t a1)
{
  result = sub_1000D52B8(a1);
  v2 = result;
  v3 = *(result + 16);
  if (!v3)
  {

    return _swiftEmptyArrayStorage;
  }

  v4 = 0;
  v5 = result + 32;
  v34 = _swiftEmptyArrayStorage;
  v35 = result + 32;
  v36 = *(result + 16);
  v37 = result;
LABEL_5:
  if (v4 < *(v2 + 16))
  {
    v6 = *(v5 + 8 * v4);
    if (!*(v6 + 16))
    {
      goto LABEL_52;
    }

    if (*(v6 + 41) - 2 > 3)
    {
      goto LABEL_4;
    }

    v7 = *(v5 + 8 * v4);

    v9 = sub_1000D5618(v8);

    v10 = *(v9 + 16);
    if (v10 < 3)
    {
      goto LABEL_3;
    }

    v38 = v4;
    v11 = 32;
    v12 = _swiftEmptyArrayStorage;
    v13 = _swiftEmptyArrayStorage;
    while (1)
    {
      v15 = *(v9 + v11);
      if (!*(v15 + 16))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v16 = *(v15 + 41);
      if (v16 <= 4)
      {
        break;
      }

      if (v16 - 6 < 4)
      {
        v25 = *(v15 + 32);
        v26 = *(v15 + 40);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100025A70(0, v12[2] + 1, 1, v12);
          v12 = result;
        }

        v28 = v12[2];
        v27 = v12[3];
        if (v28 >= v27 >> 1)
        {
          result = sub_100025A70((v27 > 1), v28 + 1, 1, v12);
          v12 = result;
        }

        v12[2] = v28 + 1;
        v29 = &v12[3 * v28];
        v29[4] = v25;
        *(v29 + 40) = v26;
        *(v29 + 41) = v16;
        v29[6] = _swiftEmptyArrayStorage;
        goto LABEL_12;
      }

      if (v16 - 12 < 4)
      {
        v17 = v12[2];
        v18 = *(v9 + v11);

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if (!v17)
          {
            goto LABEL_49;
          }
        }

        else
        {
          result = sub_1000CCF1C(v12);
          v12 = result;
          if (!v17)
          {
            goto LABEL_49;
          }
        }

        if (v17 > v12[2])
        {
          goto LABEL_50;
        }

        v19 = &v12[3 * v17];
        v22 = v19[3];
        v20 = v19 + 3;
        v21 = v22;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v20 = v22;
        if ((result & 1) == 0)
        {
          result = sub_100025A4C(0, v21[2] + 1, 1, v21);
          v21 = result;
          *v20 = result;
        }

        v24 = v21[2];
        v23 = v21[3];
        if (v24 >= v23 >> 1)
        {
          result = sub_100025A4C((v23 > 1), v24 + 1, 1, v21);
          v21 = result;
          *v20 = result;
        }

        v21[2] = v24 + 1;
        v21[v24 + 4] = v15;
        goto LABEL_12;
      }

      if (v16 == 5)
      {
        goto LABEL_11;
      }

LABEL_12:
      v11 += 8;
      if (!--v10)
      {

        if (v13[2])
        {
          v5 = v35;
          if (v12[2])
          {

            v30 = v34;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_100025918(0, v34[2] + 1, 1, v34);
            }

            v32 = v30[2];
            v31 = v30[3];
            if (v32 >= v31 >> 1)
            {
              v30 = sub_100025918((v31 > 1), v32 + 1, 1, v30);
            }

            v30[2] = v32 + 1;
            v34 = v30;
            v33 = &v30[2 * v32];
            v33[4] = v13;
            v33[5] = v12;
          }

          else
          {
          }

          v3 = v36;
          v2 = v37;
          v4 = v38;
        }

        else
        {

          v3 = v36;
          v2 = v37;
          v4 = v38;
          v5 = v35;
        }

LABEL_3:

LABEL_4:
        if (++v4 == v3)
        {

          return v34;
        }

        goto LABEL_5;
      }
    }

    if (v16 != 2 && v16 != 3 && v16 != 4)
    {
      goto LABEL_12;
    }

LABEL_11:
    v14 = *(v9 + v11);

    v13 = v15;
    goto LABEL_12;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1000D6194(uint64_t a1)
{
  result = sub_1000D69C4(&qword_1001783A0, type metadata accessor for IOUSBDescriptorHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D61EC(uint64_t a1)
{
  result = sub_1000D69C4(&qword_1001783A8, type metadata accessor for IOUSBDescriptorHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D6244(uint64_t a1)
{
  result = sub_1000D69C4(&qword_1001783B0, type metadata accessor for ADCClassSpecificDescriptorHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D62E4(uint64_t a1)
{
  result = sub_1000D69C4(&qword_1001783C0, type metadata accessor for ADC3HighCapabilityDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D6384(uint64_t a1)
{
  result = sub_1000D69C4(&qword_1001783D0, type metadata accessor for ADC3ClusterDescriptorHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D6424(uint64_t a1)
{
  result = sub_1000D69C4(&qword_1001783E0, type metadata accessor for ADC3ClusterDescriptorSegmentHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D64C4(uint64_t a1)
{
  result = sub_1000D69C4(&qword_1001783F0, type metadata accessor for ADC3ClusterChannelInformationSegment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D6564(uint64_t a1)
{
  result = sub_1000D69C4(&qword_100178400, type metadata accessor for ADC3ClusterEndSegment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D6604(uint64_t a1)
{
  result = sub_1000D69C4(&qword_100178410, type metadata accessor for ADC3ClusterChannelAmbiosonicSegment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D66A4(uint64_t a1)
{
  result = sub_1000D69C4(&qword_100178420, type metadata accessor for ADC3ClusterChannelDescriptionSegment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D6744(uint64_t a1)
{
  result = sub_1000D69C4(&qword_100178430, type metadata accessor for ADC4ExtendedDescriptorHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D67E4(uint64_t a1)
{
  result = sub_1000D69C4(&qword_100178440, type metadata accessor for ADC4ClusterDescriptorHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D6884(uint64_t a1)
{
  result = sub_1000D69C4(&qword_100178450, type metadata accessor for ADC4ClusterDescriptorSegmentHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D6924(uint64_t a1)
{
  result = sub_1000D69C4(&qword_100178460, type metadata accessor for ADC4ClusterChannelInformationSegment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D69C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000D6AB8()
{
  result = qword_100178478;
  if (!qword_100178478)
  {
    sub_10001E8F0(&qword_100178470, &qword_1001254E8);
    sub_1000A1574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178478);
  }

  return result;
}

uint64_t sub_1000D6B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&qword_100174A58, &unk_1001201A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D6BB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  sub_100047060(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v5 = (a1 + 32);
  while (1)
  {
    v6 = *v5++;
    v11 = v6;
    sub_1000DE824(&v11, &v12);
    if (v1)
    {
      break;
    }

    v7 = v12;
    v13 = v3;
    v9 = v3[2];
    v8 = v3[3];
    if (v9 >= v8 >> 1)
    {
      sub_100047060((v8 > 1), v9 + 1, 1);
      v3 = v13;
    }

    v3[2] = v9 + 1;
    v3[v9 + 4] = v7;
    if (!--v2)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D6CB4(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    result = sub_1000D5D10(*a1, a1[1], 7);
    if (!v1)
    {
      v7 = v6;
      v8 = v5;
      v9 = sub_1001128D0(v2, 7);
      v11 = v9;
      v12 = v10;
      v13 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v13 != 2)
        {
          memset(v28, 0, 14);
          goto LABEL_19;
        }

        v15 = *(v9 + 16);
        v16 = __DataStorage._bytes.getter();
        if (v16)
        {
          v17 = v16;
          v18 = __DataStorage._offset.getter();
          if (__OFSUB__(v15, v18))
          {
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
          }

          v19 = (v15 - v18 + v17);
          __DataStorage._length.getter();
          if (v19)
          {
            goto LABEL_17;
          }
        }

        else
        {
          __DataStorage._length.getter();
        }

        __break(1u);
      }

      else
      {
        if (!v13)
        {
          v28[0] = v9;
          LOWORD(v28[1]) = v10;
          BYTE2(v28[1]) = BYTE2(v10);
          BYTE3(v28[1]) = BYTE3(v10);
          BYTE4(v28[1]) = BYTE4(v10);
          BYTE5(v28[1]) = BYTE5(v10);
LABEL_19:
          v23 = v28;
          goto LABEL_20;
        }

        if (v9 > v9 >> 32)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v20 = __DataStorage._bytes.getter();
        if (v20)
        {
          v21 = v20;
          v22 = __DataStorage._offset.getter();
          if (__OFSUB__(v11, v22))
          {
            goto LABEL_25;
          }

          v19 = (v11 - v22 + v21);
          result = __DataStorage._length.getter();
          if (v19)
          {
LABEL_17:
            v23 = v19;
LABEL_20:
            v24 = sub_10010B828(v23, 1);
            sub_10007676C(v11, v12);
            if (v24[2])
            {
              v25 = *(v24 + 16);
              v26 = *(v24 + 34);
              v27 = *(v24 + 35);

              *a1 = v8;
              a1[1] = v7;
              return v25 | (v26 << 16) | (v27 << 24);
            }

            __break(1u);
            goto LABEL_23;
          }

          goto LABEL_29;
        }
      }

      result = __DataStorage._length.getter();
      __break(1u);
LABEL_29:
      __break(1u);
    }
  }

  else
  {
    sub_10000CA2C();
    swift_allocError();
    *v14 = 57;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000D6F24(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    result = sub_1000D5D10(*a1, a1[1], 5);
    if (!v1)
    {
      v7 = v6;
      v8 = v5;
      v9 = sub_1001128D0(v2, 5);
      v11 = v9;
      v12 = v10;
      v13 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v13 != 2)
        {
          memset(v28, 0, 14);
          goto LABEL_19;
        }

        v15 = *(v9 + 16);
        v16 = __DataStorage._bytes.getter();
        if (v16)
        {
          v17 = v16;
          v18 = __DataStorage._offset.getter();
          if (__OFSUB__(v15, v18))
          {
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
          }

          v19 = (v15 - v18 + v17);
          __DataStorage._length.getter();
          if (v19)
          {
            goto LABEL_17;
          }
        }

        else
        {
          __DataStorage._length.getter();
        }

        __break(1u);
      }

      else
      {
        if (!v13)
        {
          v28[0] = v9;
          LOWORD(v28[1]) = v10;
          BYTE2(v28[1]) = BYTE2(v10);
          BYTE3(v28[1]) = BYTE3(v10);
          BYTE4(v28[1]) = BYTE4(v10);
          BYTE5(v28[1]) = BYTE5(v10);
LABEL_19:
          v23 = v28;
          goto LABEL_20;
        }

        if (v9 > v9 >> 32)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v20 = __DataStorage._bytes.getter();
        if (v20)
        {
          v21 = v20;
          v22 = __DataStorage._offset.getter();
          if (__OFSUB__(v11, v22))
          {
            goto LABEL_25;
          }

          v19 = (v11 - v22 + v21);
          result = __DataStorage._length.getter();
          if (v19)
          {
LABEL_17:
            v23 = v19;
LABEL_20:
            v24 = sub_10010B724(v23, 1);
            sub_10007676C(v11, v12);
            if (v24[2])
            {
              v25 = *(v24 + 16);
              v26 = *(v24 + 34);
              v27 = *(v24 + 35);

              *a1 = v8;
              a1[1] = v7;
              return v25 | (v26 << 16) | (v27 << 24);
            }

            __break(1u);
            goto LABEL_23;
          }

          goto LABEL_29;
        }
      }

      result = __DataStorage._length.getter();
      __break(1u);
LABEL_29:
      __break(1u);
    }
  }

  else
  {
    sub_10000CA2C();
    swift_allocError();
    *v14 = 57;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000D7194(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    result = sub_1000D5D10(*a1, a1[1], 3);
    if (!v1)
    {
      v7 = v6;
      v8 = v5;
      v9 = sub_1001128D0(v2, 3);
      v11 = v9;
      v12 = v10;
      v13 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v13 != 2)
        {
          memset(v27, 0, 14);
          goto LABEL_19;
        }

        v15 = *(v9 + 16);
        v16 = __DataStorage._bytes.getter();
        if (v16)
        {
          v17 = v16;
          v18 = __DataStorage._offset.getter();
          if (__OFSUB__(v15, v18))
          {
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
          }

          v19 = (v15 - v18 + v17);
          __DataStorage._length.getter();
          if (v19)
          {
            goto LABEL_17;
          }
        }

        else
        {
          __DataStorage._length.getter();
        }

        __break(1u);
      }

      else
      {
        if (!v13)
        {
          v27[0] = v9;
          LOWORD(v27[1]) = v10;
          BYTE2(v27[1]) = BYTE2(v10);
          BYTE3(v27[1]) = BYTE3(v10);
          BYTE4(v27[1]) = BYTE4(v10);
          BYTE5(v27[1]) = BYTE5(v10);
LABEL_19:
          v23 = v27;
          goto LABEL_20;
        }

        if (v9 > v9 >> 32)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v20 = __DataStorage._bytes.getter();
        if (v20)
        {
          v21 = v20;
          v22 = __DataStorage._offset.getter();
          if (__OFSUB__(v11, v22))
          {
            goto LABEL_25;
          }

          v19 = (v11 - v22 + v21);
          result = __DataStorage._length.getter();
          if (v19)
          {
LABEL_17:
            v23 = v19;
LABEL_20:
            v24 = sub_10010B634(v23, 1);
            sub_10007676C(v11, v12);
            if (v24[2])
            {
              v25 = *(v24 + 16);
              v26 = *(v24 + 34);

              *a1 = v8;
              a1[1] = v7;
              return v25 | (v26 << 16);
            }

            __break(1u);
            goto LABEL_23;
          }

          goto LABEL_29;
        }
      }

      result = __DataStorage._length.getter();
      __break(1u);
LABEL_29:
      __break(1u);
    }
  }

  else
  {
    sub_10000CA2C();
    swift_allocError();
    *v14 = 57;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000D745C(uint64_t *a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = *a1;
  if (*a1)
  {
    result = sub_1000D5D10(*a1, a1[1], 6);
    if (!v2)
    {
      v28 = v8;
      v9 = v7;
      v10 = sub_1001128D0(v3, 6);
      v12 = v10;
      v13 = v11;
      v14 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v14 != 2)
        {
          memset(v29, 0, 14);
          goto LABEL_19;
        }

        v16 = *(v10 + 16);
        v17 = __DataStorage._bytes.getter();
        if (v17)
        {
          v18 = v17;
          v19 = __DataStorage._offset.getter();
          if (__OFSUB__(v16, v19))
          {
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
          }

          v20 = (v16 - v19 + v18);
          __DataStorage._length.getter();
          if (v20)
          {
            goto LABEL_17;
          }
        }

        else
        {
          __DataStorage._length.getter();
        }

        __break(1u);
      }

      else
      {
        if (!v14)
        {
          v29[0] = v10;
          LOWORD(v29[1]) = v11;
          BYTE2(v29[1]) = BYTE2(v11);
          BYTE3(v29[1]) = BYTE3(v11);
          BYTE4(v29[1]) = BYTE4(v11);
          BYTE5(v29[1]) = BYTE5(v11);
LABEL_19:
          v24 = v29;
          goto LABEL_20;
        }

        if (v10 > v10 >> 32)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v21 = __DataStorage._bytes.getter();
        if (v21)
        {
          v22 = v21;
          v23 = __DataStorage._offset.getter();
          if (__OFSUB__(v12, v23))
          {
            goto LABEL_25;
          }

          v20 = (v12 - v23 + v22);
          result = __DataStorage._length.getter();
          if (v20)
          {
LABEL_17:
            v24 = v20;
LABEL_20:
            v25 = a2(v24, 1);
            sub_10007676C(v12, v13);
            if (*(v25 + 16))
            {
              v26 = *(v25 + 32);
              v27 = *(v25 + 34);

              *a1 = v9;
              a1[1] = v28;
              return v26 | (v27 << 16);
            }

            __break(1u);
            goto LABEL_23;
          }

          goto LABEL_29;
        }
      }

      result = __DataStorage._length.getter();
      __break(1u);
LABEL_29:
      __break(1u);
    }
  }

  else
  {
    sub_10000CA2C();
    swift_allocError();
    *v15 = 57;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000D76D0(uint64_t *a1)
{
  v3 = *a1;
  if (!*a1)
  {
    sub_10000CA2C();
    swift_allocError();
    *v14 = 57;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v2;
  }

  sub_1000D5D10(*a1, a1[1], 4);
  if (v1)
  {
    return v2;
  }

  v7 = v6;
  v8 = v5;
  v9 = sub_1001128D0(v3, 4);
  v11 = v9;
  v12 = v10;
  v13 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v26, 0, 14);
      goto LABEL_19;
    }

    v15 = *(v9 + 16);
    v16 = __DataStorage._bytes.getter();
    if (v16)
    {
      v17 = v16;
      v18 = __DataStorage._offset.getter();
      if (__OFSUB__(v15, v18))
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      v19 = (v15 - v18 + v17);
      __DataStorage._length.getter();
      if (v19)
      {
        goto LABEL_17;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_29;
  }

  if (!v13)
  {
    v26[0] = v9;
    LOWORD(v26[1]) = v10;
    BYTE2(v26[1]) = BYTE2(v10);
    BYTE3(v26[1]) = BYTE3(v10);
    BYTE4(v26[1]) = BYTE4(v10);
    BYTE5(v26[1]) = BYTE5(v10);
LABEL_19:
    v24 = v26;
    goto LABEL_20;
  }

  if (v9 > v9 >> 32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = __DataStorage._bytes.getter();
  if (!v20)
  {
LABEL_29:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_30;
  }

  v21 = v20;
  v22 = __DataStorage._offset.getter();
  if (__OFSUB__(v11, v22))
  {
    goto LABEL_26;
  }

  v19 = (v11 - v22 + v21);
  result = __DataStorage._length.getter();
  if (v19)
  {
LABEL_17:
    v24 = v19;
LABEL_20:
    v25 = sub_10010D3DC(v24, 1);
    sub_10007676C(v11, v12);
    if (v25[2])
    {
      v2 = *(v25 + 8);

      *a1 = v8;
      a1[1] = v7;
      return v2;
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_30:
  __break(1u);
  return result;
}

__n128 sub_1000D7934@<Q0>(uint64_t a1@<X8>)
{
  sub_100001AB4(&qword_1001785B0, &unk_100125F10);
  inited = swift_initStackObject();
  v3 = 0;
  *(inited + 16) = xmmword_100120A30;
  *(inited + 32) = 0x200000001;
  *(inited + 42) = 103;
  *(inited + 40) = 385;
  *(inited + 45) = 103;
  *(inited + 43) = 384;
  *(inited + 48) = 0x800000004;
  *(inited + 58) = 0;
  *(inited + 56) = 641;
  *(inited + 61) = 0;
  *(inited + 59) = 640;
  *(inited + 64) = 0x2000000010;
  *(inited + 74) = 16;
  *(inited + 72) = 769;
  *(inited + 77) = 16;
  *(inited + 75) = 768;
  *(inited + 80) = 0x8000000040;
  *(inited + 90) = 16;
  *(inited + 88) = 1089;
  *(inited + 93) = 16;
  *(inited + 91) = 1088;
  v59 = &_swiftEmptySetSingleton;
  v28 = *(v1 + 3);
  v26 = *(v1 + 4);
  v25 = *(v1 + 6);
  v27 = *(v1 + 7);
  v4 = *(v1 + 8);
  v62 = *(v1 + 12);
  v24 = v1;
  v23 = *(v1 + 18);
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = inited + v3;
    if ((*(inited + v3 + 32) & v4) != 0)
    {
      v7 = *(v6 + 36) & v4;
      if (v7)
      {
        v8 = (v6 + 40);
      }

      else
      {
        v8 = (v6 + 43);
      }

      v9 = *(v8 + 2);
      v10 = *v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100024518(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_100024518((v11 > 1), v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      v13 = &v5[3 * v12];
      v13[34] = (v10 | (v9 << 16)) >> 16;
      *(v13 + 16) = v10;
      if (v7)
      {
        sub_10009B498(v37, 12);
      }
    }

    v3 += 16;
  }

  while (v3 != 64);

  sub_100001AB4(&qword_100175F98, &qword_100121748);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10011DE90;
  *(v14 + 32) = v62;
  *(v14 + 40) = 512;
  v15 = v59;
  v16 = v59[2];
  if (v16)
  {
    v17 = sub_1001193F0(v59[2], 0);
    v18 = sub_10011B610(v37, v17 + 32, v16, v15);
    sub_100022644();
    if (v18 == v16)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_17:
  v60 = *(v24 + 24);
  v61 = *(v24 + 32);
  if (*(v5 + 2))
  {
    if (v17[2])
    {
      goto LABEL_19;
    }
  }

  else
  {

    v5 = 0;
    if (v17[2])
    {
      goto LABEL_19;
    }
  }

  v17 = 0;
LABEL_19:
  v19 = v23 | 0x10000;
  *&v31 = v26;
  *(&v31 + 1) = v25;
  if (!v23)
  {
    v19 = -65536;
  }

  LOBYTE(v32) = 0;
  *(&v32 + 1) = *v58;
  DWORD1(v32) = *&v58[3];
  *(&v32 + 1) = v27;
  LOWORD(v33) = v19;
  *(&v33 + 3) = v56;
  BYTE7(v33) = v57;
  *(&v33 + 1) = v28;
  v34.n128_u64[0] = v60;
  v34.n128_u16[4] = v61;
  *(&v34.n128_u32[2] + 2) = v54;
  v34.n128_u16[7] = v55;
  BYTE2(v33) = BYTE2(v19);
  *&v35[8] = xmmword_100122890;
  *v35 = v14;
  *&v35[24] = v5;
  v36 = v17;
  v37[0] = v26;
  v37[1] = v25;
  v38 = 0;
  *v39 = *v58;
  *&v39[3] = *&v58[3];
  v40 = v27;
  v42 = BYTE2(v19);
  v41 = v19;
  v44 = v57;
  v43 = v56;
  v47 = v61;
  v45 = v28;
  v46 = v60;
  v49 = v55;
  v48 = v54;
  v51 = xmmword_100122890;
  v50 = v14;
  v52 = v5;
  v53 = v17;
  sub_1000767C0(&v31, v30);
  sub_10007681C(v37);
  v20 = *&v35[16];
  *(a1 + 64) = *v35;
  *(a1 + 80) = v20;
  *(a1 + 96) = v36;
  v21 = v32;
  *a1 = v31;
  *(a1 + 16) = v21;
  result = v34;
  *(a1 + 32) = v33;
  *(a1 + 48) = result;
  return result;
}

double sub_1000D7D80@<D0>(_OWORD *a1@<X8>)
{
  sub_100001AB4(&qword_1001785B8, &qword_100125F20);
  inited = swift_initStackObject();
  v3 = 0;
  *(inited + 16) = xmmword_100120A30;
  *(inited + 32) = 0x200000001;
  *(inited + 42) = 103;
  *(inited + 40) = 385;
  *(inited + 45) = 103;
  *(inited + 43) = 384;
  *(inited + 48) = 0x800000004;
  *(inited + 58) = 0;
  *(inited + 56) = 641;
  *(inited + 61) = 0;
  *(inited + 59) = 640;
  *(inited + 64) = 0x2000000010;
  *(inited + 74) = 16;
  *(inited + 72) = 769;
  *(inited + 77) = 16;
  *(inited + 75) = 768;
  *(inited + 80) = 0x8000000040;
  *(inited + 90) = 16;
  *(inited + 88) = 1089;
  *(inited + 93) = 16;
  *(inited + 91) = 1088;
  v63 = &_swiftEmptySetSingleton;
  v29 = *(v1 + 3);
  v26 = *(v1 + 4);
  v24 = v1;
  v25 = *(v1 + 6);
  v28 = *(v1 + 7);
  v27 = *(v1 + 8);
  v4 = *(v1 + 9);
  v23 = *(v1 + 17);
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = inited + v3;
    if ((*(inited + v3 + 32) & v4) != 0)
    {
      v7 = *(v6 + 36) & v4;
      if (v7)
      {
        v8 = (v6 + 40);
      }

      else
      {
        v8 = (v6 + 43);
      }

      v9 = *(v8 + 2);
      v10 = *v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100024518(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_100024518((v11 > 1), v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      v13 = &v5[3 * v12];
      v13[34] = (v10 | (v9 << 16)) >> 16;
      *(v13 + 16) = v10;
      if (v7)
      {
        sub_10009B498(v38, 12);
      }
    }

    v3 += 16;
  }

  while (v3 != 64);

  v14 = v63;
  v15 = v63[2];
  if (v15)
  {
    v16 = sub_1001193F0(v63[2], 0);
    v17 = sub_10011B610(v38, v16 + 32, v15, v14);
    sub_100022644();
    if (v17 == v15)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_17:
  v64 = *(v24 + 24);
  v65 = *(v24 + 32);
  v59 = 0;
  if (*(v5 + 2))
  {
    if (v16[2])
    {
      goto LABEL_19;
    }
  }

  else
  {

    v5 = 0;
    if (v16[2])
    {
      goto LABEL_19;
    }
  }

  v16 = 0;
LABEL_19:
  v18 = v23 | 0x10000;
  *&v32 = v26;
  *(&v32 + 1) = v25;
  if (!v23)
  {
    v18 = -65536;
  }

  LOBYTE(v33) = 0;
  *(&v33 + 1) = *v62;
  DWORD1(v33) = *&v62[3];
  *(&v33 + 1) = v27;
  LOWORD(v34) = v18;
  BYTE2(v34) = BYTE2(v18);
  *(&v34 + 3) = v60;
  BYTE7(v34) = v61;
  *(&v34 + 1) = v28;
  DWORD1(v35) = *&v58[3];
  *(&v35 + 1) = *v58;
  LOWORD(v37) = v65;
  *&v36 = v5;
  *(&v36 + 1) = v64;
  WORD3(v37) = v57;
  *(&v37 + 2) = v56;
  LOBYTE(v35) = v59;
  *(&v35 + 1) = v29;
  *(&v37 + 1) = v16;
  v38[0] = v26;
  v38[1] = v25;
  v39 = 0;
  *&v40[3] = *&v62[3];
  *v40 = *v62;
  v41 = v27;
  v43 = BYTE2(v18);
  v42 = v18;
  v45 = v61;
  v44 = v60;
  v46 = v28;
  v47 = v59;
  *&v48[3] = *&v58[3];
  *v48 = *v58;
  v49 = v29;
  v50 = v5;
  v52 = v65;
  v51 = v64;
  v54 = v57;
  v53 = v56;
  v55 = v16;
  sub_1000766B0(&v32, v31);
  sub_100076AD0(v38);
  v19 = v35;
  a1[2] = v34;
  a1[3] = v19;
  v20 = v37;
  a1[4] = v36;
  a1[5] = v20;
  result = *&v32;
  v22 = v33;
  *a1 = v32;
  a1[1] = v22;
  return result;
}

double sub_1000D81B0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = 1049088;
  sub_100001AB4(&qword_1001785C0, &unk_100125F28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100121960;
  *(inited + 32) = 0x200000001;
  *(inited + 42) = 16;
  *(inited + 40) = 513;
  *(inited + 45) = 16;
  *(inited + 43) = 512;
  *(inited + 48) = 0x800000004;
  *(inited + 58) = 16;
  *(inited + 56) = 833;
  *(inited + 61) = 16;
  *(inited + 59) = 832;
  v52 = &_swiftEmptySetSingleton;
  v5 = *(v1 + 5);
  v32 = *(v1 + 9);
  if (v5)
  {
    if ((v5 & 2) != 0)
    {
      v7 = 1049089;
    }

    else
    {
      v7 = 1049088;
    }

    v6 = sub_100024518(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    v10 = (v9 + 1);
    if (v9 < v8 >> 1)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 8) != 0)
      {
        v12 = 321;
      }

      else
      {
        v12 = 320;
      }

      v13 = v3 + v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100024518(0, *(v6 + 2) + 1, 1, v6);
      }

      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (v15 >= v14 >> 1)
      {
        v6 = sub_100024518((v14 > 1), v15 + 1, 1, v6);
      }

      *(v6 + 2) = v15 + 1;
      v16 = &v6[3 * v15];
      v16[34] = BYTE2(v13);
      *(v16 + 16) = v13;
      if ((v5 & 8) != 0)
      {
        sub_10009B498(&v38, 12);
      }
    }

    v17 = *(v2 + 40);
    v18 = *(v2 + 32);
    v55 = *(v2 + 48);
    v56[0] = v18;
    v19 = v52;
    v20 = v52[2];
    if (!v20)
    {
      break;
    }

    v30 = v17;
    v10 = sub_1001193F0(v20, 0);
    v31 = sub_10011B610(&v38, v10 + 32, v20, v19);
    v9 = v38;
    LOBYTE(v5) = v41;
    v3 = *v42;
    v7 = *&v42[8];
    sub_10000D0B8(v56, &v34, &qword_100176868, &unk_100122140);
    sub_10000D0B8(&v55, &v34, &qword_100175CA8, &unk_100124860);
    sub_100022644();
    v8 = v31;
    if (v31 == v20)
    {
      v17 = v30;
      goto LABEL_23;
    }

    __break(1u);
LABEL_31:
    v6 = sub_100024518((v8 > 1), v10, 1, v6);
LABEL_7:
    *(v6 + 2) = v10;
    v11 = &v6[3 * v9];
    v11[34] = BYTE2(v7);
    *(v11 + 16) = v7;
    if ((v5 & 2) != 0)
    {
      sub_10009B498(&v38, 12);
    }
  }

  sub_10000D0B8(v56, &v38, &qword_100176868, &unk_100122140);
  sub_10000D0B8(&v55, &v38, &qword_100175CA8, &unk_100124860);

  v10 = _swiftEmptyArrayStorage;
LABEL_23:
  v21 = *(v2 + 3);
  v53 = *(v2 + 16);
  v54 = *(v2 + 24);
  v23 = v55;
  v22 = v56[0];
  if (!*(v6 + 2))
  {

    v6 = 0;
  }

  *(v49 + 5) = v53;
  *(&v49[1] + 5) = v54;
  if (!v10[2])
  {

    v10 = 0;
  }

  v51 = 1;
  v24 = v32 | 0x10000;
  *&v34 = 0;
  if (!v32)
  {
    v24 = -65536;
  }

  BYTE8(v34) = 1;
  *(&v34 + 9) = *v50;
  HIDWORD(v34) = *&v50[3];
  *v35 = v21;
  *&v35[8] = v24;
  *&v35[11] = v49[0];
  *&v35[18] = *(v49 + 7);
  v35[10] = BYTE2(v24);
  *&v35[28] = v17;
  v39 = 1;
  *v40 = *v50;
  *&v40[3] = *&v50[3];
  *&v35[36] = 512;
  *&v35[40] = v22;
  *&v36 = v23;
  *(&v36 + 1) = v6;
  v37 = v10;
  v38 = 0;
  v41 = v21;
  v42[2] = BYTE2(v24);
  *v42 = v24;
  *&v42[3] = v49[0];
  *&v42[10] = *(v49 + 7);
  v43 = v17;
  v44 = 512;
  v45 = v22;
  v46 = v23;
  v47 = v6;
  v48 = v10;
  sub_10002317C(&v34, v33);
  sub_100076A7C(&v38);
  v25 = *&v35[32];
  v26 = v36;
  v27 = v57;
  *(v57 + 32) = *&v35[16];
  *(v27 + 48) = v25;
  *(v27 + 64) = v26;
  *(v27 + 80) = v37;
  result = *&v34;
  v29 = *v35;
  *v27 = v34;
  *(v27 + 16) = v29;
  return result;
}

uint64_t sub_1000D8610@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 5);
  v34 = *(v1 + 9);
  v5 = &_swiftEmptySetSingleton;
  v33 = &_swiftEmptySetSingleton;
  if ((v4 & 1) == 0)
  {
    sub_10009B498(&v22, 14);
    v5 = v33;
  }

  sub_100001AB4(&qword_1001753C8, &unk_100123340);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10011DE90;
  *(v6 + 34) = 80;
  *(v6 + 32) = (v4 >> 1) & 1 | 0x140;
  v7 = v5[2];
  if (v7)
  {
    v8 = sub_1001193F0(v7, 0);
    v16 = sub_10011B610(&v22, v8 + 32, v7, v5);
    sub_1000E2CFC(v2, &v18);
    result = sub_100022644();
    if (v16 != v7)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    sub_1000E2CFC(v2, &v22);

    v8 = _swiftEmptyArrayStorage;
  }

  v10 = *(v2 + 3);
  v11 = *(v2 + 32);
  v12 = v8[2];
  *(v31 + 5) = *(v2 + 16);
  *(&v31[1] + 5) = *(v2 + 24);
  if (!v12)
  {

    v8 = 0;
  }

  v32 = 1;
  v13 = v34 | 0x10000;
  *&v18 = 0;
  if (!v34)
  {
    v13 = -65536;
  }

  BYTE8(v18) = 1;
  *&v19[0] = v10;
  WORD4(v19[0]) = v13;
  *(v19 + 11) = v31[0];
  *(&v19[1] + 2) = *(v31 + 7);
  BYTE10(v19[0]) = BYTE2(v13);
  *&v20 = v11;
  *(&v20 + 1) = v6;
  v21 = v8;
  v22 = 0;
  LOBYTE(v23) = 1;
  v24 = v10;
  v25 = v13;
  v26 = BYTE2(v13);
  *&v27[7] = *(v31 + 7);
  *v27 = v31[0];
  v28 = v11;
  v29 = v6;
  v30 = v8;
  sub_1000267DC(&v18, v17);
  result = sub_100076980(&v22);
  v14 = v20;
  *(a1 + 32) = v19[1];
  *(a1 + 48) = v14;
  *(a1 + 64) = v21;
  v15 = v19[0];
  *a1 = v18;
  *(a1 + 16) = v15;
  return result;
}

uint64_t sub_1000D8848@<X0>(uint64_t a1@<X8>)
{
  v34 = &_swiftEmptySetSingleton;
  v3 = sub_1000D6BB4(*(v1 + 24));
  v4 = v3;
  v5 = *(v1 + 32);
  v6 = *(&_swiftEmptySetSingleton + 2);
  if (v6)
  {
    v15 = *(v1 + 32);
    v16 = v3;
    v7 = sub_1001193F0(v6, 0);
    v17 = sub_10011B610(&v23, v7 + 32, v6, &_swiftEmptySetSingleton);

    result = sub_100022644();
    if (v17 != v6)
    {
      __break(1u);
      return result;
    }

    v4 = v16;
    v5 = v15;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = *(v1 + 3);
  v10 = *(v1 + 4);
  *(v32 + 5) = *(v1 + 8);
  *(&v32[1] + 5) = *(v1 + 16);
  if (!v7[2])
  {
    v11 = v5;

    v5 = v11;
    v7 = 0;
  }

  v12 = v5 | 0x10000;
  v33 = 0;
  *&v19 = v10;
  if (!v5)
  {
    v12 = -65536;
  }

  BYTE8(v19) = 0;
  *&v20[0] = v9;
  WORD4(v20[0]) = v12;
  *(v20 + 11) = v32[0];
  *(&v20[1] + 2) = *(v32 + 7);
  BYTE10(v20[0]) = BYTE2(v12);
  v21 = v4;
  v22 = v7;
  v23 = v10;
  LOBYTE(v24) = 0;
  v25 = v9;
  v26 = v12;
  v27 = BYTE2(v12);
  *&v28[7] = *(v32 + 7);
  *v28 = v32[0];
  v29 = v4;
  v30 = 0;
  v31 = v7;
  sub_100076614(&v19, v18);
  sub_100091CF0(&v23);

  v13 = v21;
  *(a1 + 32) = v20[1];
  *(a1 + 48) = v13;
  *(a1 + 64) = v22;
  v14 = v20[0];
  *a1 = v19;
  *(a1 + 16) = v14;
  return result;
}

__n128 sub_1000D8A2C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 3);
  v5 = *(v1 + 24);
  v22 = v5;
  if (v3)
  {
    v6 = v3 | 0x10000;
  }

  else
  {
    v6 = -65536;
  }

  *&v10[5] = *(v1 + 8);
  *&v10[13] = *(v1 + 16);
  v11 = 0;
  *&v12 = 0;
  BYTE8(v12) = 0;
  *&v13[0] = v4;
  WORD4(v13[0]) = v6;
  BYTE10(v13[0]) = BYTE2(v6);
  *(&v13[1] + 2) = *&v10[7];
  *(v13 + 11) = *v10;
  *&v14 = 0;
  *(&v14 + 1) = v5;
  *&v15 = 0;
  *(&v15 + 1) = _swiftEmptyArrayStorage;
  v16 = 0;
  v17 = 0;
  v18 = v4;
  v20 = BYTE2(v6);
  v19 = v6;
  *&v21[7] = *&v10[7];
  *v21 = *v10;
  *&v21[21] = 0;
  *&v21[29] = v5;
  *&v21[37] = 0;
  *&v21[45] = _swiftEmptyArrayStorage;
  sub_10000D0B8(&v22, v9, &qword_100176868, &unk_100122140);
  sub_100076430(&v12, v9);
  sub_10007692C(&v16);
  v7 = v14;
  *(a1 + 32) = v13[1];
  *(a1 + 48) = v7;
  *(a1 + 64) = v15;
  result = v13[0];
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

double sub_1000D8B4C@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = 1048832;
  sub_100001AB4(&qword_1001785C8, &qword_100125F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100121960;
  *(inited + 32) = 0x200000001;
  *(inited + 42) = 16;
  *(inited + 40) = 257;
  *(inited + 45) = 16;
  *(inited + 43) = 256;
  *(inited + 48) = 0x800000004;
  *(inited + 58) = 16;
  *(inited + 56) = 577;
  *(inited + 61) = 16;
  *(inited + 59) = 576;
  v58 = &_swiftEmptySetSingleton;
  v32 = *(v1 + 7);
  v6 = *(v1 + 9);
  if (v6)
  {
    if ((v6 & 2) != 0)
    {
      v8 = 1048833;
    }

    else
    {
      v8 = 1048832;
    }

    v9 = sub_100024518(0, 1, 1, _swiftEmptyArrayStorage);
    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    v12 = v9;
    v13 = (v11 + 1);
    if (v11 < v10 >> 1)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    if ((v6 & 4) != 0)
    {
      if ((v6 & 8) != 0)
      {
        v16 = 321;
      }

      else
      {
        v16 = 320;
      }

      v17 = v4 + v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100024518(0, *(v7 + 2) + 1, 1, v7);
      }

      v19 = *(v7 + 2);
      v18 = *(v7 + 3);
      if (v19 >= v18 >> 1)
      {
        v7 = sub_100024518((v18 > 1), v19 + 1, 1, v7);
      }

      *(v7 + 2) = v19 + 1;
      v20 = &v7[3 * v19];
      v20[34] = BYTE2(v17);
      *(v20 + 16) = v17;
      v61 = v7;
      if ((v6 & 8) != 0)
      {
        sub_10009B498(&v39, 12);
      }
    }

    else
    {
      v61 = v7;
    }

    v21 = v58;
    v22 = v58[2];
    if (!v22)
    {
      break;
    }

    v31 = a1;
    v13 = sub_1001193F0(v22, 0);
    v11 = sub_10011B610(&v39, v13 + 32, v22, v21);
    a1 = v40;
    LOBYTE(v6) = v41;
    v4 = *v42;
    v8 = *&v42[8];
    sub_1000E3100(v2, &v34);
    sub_100022644();
    if (v11 == v22)
    {
      a1 = v31;
      goto LABEL_24;
    }

    __break(1u);
LABEL_32:
    v12 = sub_100024518((v10 > 1), v13, 1, v12);
LABEL_7:
    *(v12 + 2) = v13;
    v14 = 3 * v11;
    v7 = v12;
    v15 = &v12[v14];
    v15[34] = BYTE2(v8);
    *(v15 + 16) = v8;
    if ((v6 & 2) != 0)
    {
      sub_10009B498(&v39, 12);
    }
  }

  sub_1000E3100(v2, &v39);

  v13 = _swiftEmptyArrayStorage;
LABEL_24:
  v23 = *(v2 + 3);
  v24 = *(v2 + 32);
  v59 = *(v2 + 16);
  v60 = *(v2 + 24);
  v25 = v61;
  if (!*(v61 + 2))
  {

    v25 = 0;
  }

  *(v55 + 5) = v59;
  *(&v55[1] + 5) = v60;
  if (!v13[2])
  {

    v13 = 0;
  }

  v26 = v32 | 0x10000;
  v57 = 0;
  *&v34 = 0;
  if (!v32)
  {
    v26 = -65536;
  }

  BYTE8(v34) = 0;
  *(&v34 + 9) = *v56;
  HIDWORD(v34) = *&v56[3];
  *v35 = v23;
  *&v35[8] = v26;
  *&v35[11] = v55[0];
  *&v35[18] = *(v55 + 7);
  *&v35[30] = v54;
  *&v35[26] = v53;
  HIDWORD(v37) = *&v52[3];
  *(&v37 + 9) = *v52;
  *(&v40 + 1) = *v56;
  HIDWORD(v40) = *&v56[3];
  v35[10] = BYTE2(v26);
  *&v37 = 0;
  v36 = v24;
  BYTE8(v37) = 0;
  *&v38 = v25;
  *(&v38 + 1) = v13;
  v39 = 0;
  LOBYTE(v40) = 0;
  v41 = v23;
  v42[2] = BYTE2(v26);
  *v42 = v26;
  *&v42[3] = v55[0];
  *&v42[10] = *(v55 + 7);
  v43 = v53;
  v44 = v54;
  v45 = v24;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  *v49 = *v52;
  *&v49[3] = *&v52[3];
  v50 = v25;
  v51 = v13;
  sub_10007651C(&v34, v33);
  sub_100076A28(&v39);
  v27 = v36;
  a1[2] = *&v35[16];
  a1[3] = v27;
  v28 = v38;
  a1[4] = v37;
  a1[5] = v28;
  result = *&v34;
  v30 = *v35;
  *a1 = v34;
  a1[1] = v30;
  return result;
}

uint64_t sub_1000D8F78@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v48 = a5;
  v47 = a4;
  v45 = a1;
  v46 = a3;
  *&v60 = a1;
  v44 = a2;
  DWORD2(v60) = a2;
  v5 = *(&v60 + 5);
  v52 = type metadata accessor for Mirror();
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v52);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001AB4(&qword_1001785D0, &qword_100125F40);
  inited = swift_initStackObject();
  v11 = 0;
  v12 = 0;
  *(inited + 16) = xmmword_100121960;
  *(inited + 32) = 0x200000001;
  v54 = inited + 32;
  *(inited + 42) = 98;
  *(inited + 40) = 257;
  *(inited + 45) = 98;
  *(inited + 43) = 256;
  *(inited + 48) = 0x800000004;
  *(inited + 58) = 96;
  *(inited + 56) = 577;
  *(inited + 61) = 96;
  v49 = inited;
  *(inited + 59) = 576;
  v50 = (v6 + 8);
  v76 = &_swiftEmptySetSingleton;
  v13 = _swiftEmptyArrayStorage;
  v77 = v5;
  v51 = v9;
  do
  {
    v14 = v11;
    v15 = v54 + v12;
    if ((*(v54 + v12) & v5) != 0)
    {
      v16 = *(v15 + 8) | (*(v15 + 10) << 16);
      v17 = *(v15 + 4) & v5;
      if (v17)
      {
        v18 = *(v15 + 8) | (*(v15 + 10) << 16);
      }

      else
      {
        v18 = *(v15 + 11) | (*(v15 + 13) << 16);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_100024518(0, *(v13 + 2) + 1, 1, v13);
      }

      v21 = *(v13 + 2);
      v20 = *(v13 + 3);
      if (v21 >= v20 >> 1)
      {
        v13 = sub_100024518((v20 > 1), v21 + 1, 1, v13);
      }

      *(v13 + 2) = v21 + 1;
      v22 = &v13[3 * v21];
      v22[34] = BYTE2(v18);
      *(v22 + 16) = v18;
      if (!v17)
      {
        goto LABEL_3;
      }

      v53 = v13;
      v62 = &type metadata for USBDescriptorControl;
      LOWORD(v60) = v16;
      BYTE2(v60) = BYTE2(v16);
      Mirror.init(reflecting:)();
      v23 = Mirror.children.getter();
      v25 = v23[2];
      v24 = v23[3];
      v26 = v23[4];
      v27 = v23[5];
      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v28 = dispatch thunk of _AnyIndexBox._typeID.getter();
      swift_getObjectType();
      result = dispatch thunk of _AnyIndexBox._typeID.getter();
      if (v28 != result)
      {
        __break(1u);
        goto LABEL_35;
      }

      v30 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v30)
      {

        v31 = v51;
        v32 = *v50;
      }

      else
      {
        dispatch thunk of _AnyCollectionBox.subscript.getter();

        v33 = v60;
        sub_10000CE78(&v61);
        v31 = v51;
        v32 = *v50;
        if (*(&v33 + 1))
        {
          v32(v51, v52);
          v13 = v53;
          v5 = v77;
          if (v33 == __PAIR128__(0xE800000000000000, 0x79746964696C6176))
          {

LABEL_2:
            sub_10009B498(&v60, 12);
LABEL_3:
            LOBYTE(v14) = v78;
            goto LABEL_4;
          }

LABEL_21:
          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v34 & 1) == 0)
          {
            goto LABEL_3;
          }

          goto LABEL_2;
        }
      }

      v13 = v53;
      v5 = v77;
      v32(v31, v52);

      goto LABEL_21;
    }

LABEL_4:
    v11 = 1;
    v12 = 16;
  }

  while ((v14 & 1) == 0);

  v35 = v76;
  v36 = v76[2];
  if (!v36)
  {

    v37 = _swiftEmptyArrayStorage;
    if (*(v13 + 2))
    {
      goto LABEL_26;
    }

LABEL_32:

    v13 = 0;
    if (v37[2])
    {
      goto LABEL_27;
    }

LABEL_33:

    v37 = 0;
    goto LABEL_27;
  }

  v37 = sub_1001193F0(v76[2], 0);
  v38 = sub_10011B610(&v60, v37 + 32, v36, v35);
  result = sub_100022644();
  if (v38 != v36)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  if (!*(v13 + 2))
  {
    goto LABEL_32;
  }

LABEL_26:
  if (!v37[2])
  {
    goto LABEL_33;
  }

LABEL_27:
  if (v44 >= 0x10000)
  {
    v39 = HIWORD(v44) | 0x10000;
  }

  else
  {
    v39 = -65536;
  }

  LOWORD(v56) = v39;
  *(&v56 + 3) = v74;
  BYTE7(v56) = v75;
  *(&v57 + 10) = v72;
  HIWORD(v57) = v73;
  *(&v59 + 2) = v70;
  WORD3(v59) = v71;
  BYTE2(v56) = BYTE2(v39);
  *(&v56 + 1) = BYTE3(v45);
  *&v57 = v46;
  WORD4(v57) = v47;
  *&v58 = v37;
  *(&v58 + 1) = v13;
  LOBYTE(v59) = BYTE4(v45) & 1;
  BYTE1(v59) = (v45 & 0x200000000) != 0;
  *(&v59 + 1) = BYTE1(v44);
  BYTE2(v60) = BYTE2(v39);
  LOWORD(v60) = v39;
  *(&v60 + 3) = v74;
  BYTE7(v60) = v75;
  *(&v60 + 1) = BYTE3(v45);
  v61 = v46;
  LOWORD(v62) = v47;
  HIWORD(v62) = v73;
  *(&v62 + 2) = v72;
  v63 = v37;
  v64 = v13;
  v65 = BYTE4(v45) & 1;
  v66 = BYTE1(v59);
  v68 = v71;
  v67 = v70;
  v69 = BYTE1(v44);
  sub_10002C080(&v56, &v55);
  result = sub_1000383FC(&v60);
  v40 = v57;
  v41 = v48;
  *v48 = v56;
  v41[1] = v40;
  v42 = v59;
  v41[2] = v58;
  v41[3] = v42;
  return result;
}

uint64_t sub_1000D956C@<X0>(_WORD *a1@<X8>)
{
  v34 = a1;
  v3 = v2;
  v37 = type metadata accessor for Mirror();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = &_swiftEmptySetSingleton;
  v8 = *(v3 + 5);
  v33 = *(v3 + 9);
  if (v8)
  {
    if ((v8 & 2) != 0)
    {
      LODWORD(v1) = 5243201;
    }

    else
    {
      LODWORD(v1) = 5243200;
    }

    ObjectType = sub_100024518(0, 1, 1, _swiftEmptyArrayStorage);
    v11 = ObjectType[2];
    v10 = ObjectType[3];
    v38 = v11 + 1;
    if (v11 >= v10 >> 1)
    {
LABEL_40:
      ObjectType = sub_100024518((v10 > 1), v38, 1, ObjectType);
    }

    ObjectType[2] = v38;
    v39 = ObjectType + 2;
    v12 = ObjectType + 3 * v11;
    v12[34] = BYTE2(v1);
    *(v12 + 16) = v1;
  }

  else
  {
    ObjectType = _swiftEmptyArrayStorage;
    v38 = _swiftEmptyArrayStorage[2];
    v39 = &_swiftEmptyArrayStorage[2];
    if (!v38)
    {
LABEL_22:
      sub_10009B498(v43, 14);
      goto LABEL_24;
    }
  }

  v32 = v3;
  v11 = v4 + 8;

  v13 = 0;
  v14 = 32;
  v40 = ObjectType;
  v35 = (v4 + 8);
  v36 = v7;
  while (1)
  {
    v10 = *v39;
    if (v13 >= *v39)
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v41 = v14;
    v15 = ObjectType + v14;
    v16 = *(ObjectType + v14);
    LOBYTE(v15) = v15[2];
    v44[1] = &type metadata for USBDescriptorControl;
    BYTE2(v43[0]) = v15;
    LOWORD(v43[0]) = v16;
    Mirror.init(reflecting:)();
    v1 = Mirror.children.getter();
    v11 = v1[2];
    v7 = v1[3];
    v3 = v1[4];
    v17 = v1[5];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v18 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    v4 = v3;
    if (v18 != dispatch thunk of _AnyIndexBox._typeID.getter())
    {
      goto LABEL_38;
    }

    v19 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v19)
    {

      v11 = v35;
      v20 = *v35;
      ObjectType = v40;
LABEL_18:
      v7 = v36;
      v20(v36, v37);

      LODWORD(v1) = 0;
      goto LABEL_19;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v21 = v43[0];
    v1 = v43[1];
    sub_10000CE78(v44);
    v11 = v35;
    v20 = *v35;
    ObjectType = v40;
    if (!v1)
    {
      goto LABEL_18;
    }

    v7 = v36;
    v20(v36, v37);
    if (v21 == 0x726F7463656C6573 && v1 == 0xE800000000000000)
    {
      break;
    }

LABEL_19:
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      goto LABEL_23;
    }

    ++v13;
    v14 = v41 + 3;
    if (v38 == v13)
    {

      v3 = v32;
      goto LABEL_22;
    }
  }

LABEL_23:

  v3 = v32;
LABEL_24:
  v22 = *(v3 + 3);
  if (*(v3 + 4) <= 1u)
  {
    sub_10009B498(v43, 16);
  }

  v23 = v45;
  v1 = v45[2];
  if (v1)
  {
    v40 = ObjectType;
    v41 = v22;
    v4 = sub_1001193F0(v1, 0);
    v11 = sub_10011B610(v43, (v4 + 32), v1, v23);
    v7 = v43[0];
    ObjectType = v44[0];
    sub_1000E34A0(v3, v42);
    result = sub_100022644();
    if (v11 != v1)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    ObjectType = v40;
    v22 = v41;
  }

  else
  {
    sub_1000E34A0(v3, v43);

    v4 = _swiftEmptyArrayStorage;
  }

  v25 = *(v3 + 32);
  v26 = *(v3 + 16);
  v27 = *(v3 + 24);
  v28 = *(v3 + 25);
  if (*v39)
  {
    if (*(v4 + 16))
    {
      goto LABEL_32;
    }

LABEL_36:

    v4 = 0;
  }

  else
  {

    ObjectType = 0;
    if (!*(v4 + 16))
    {
      goto LABEL_36;
    }
  }

LABEL_32:
  v29 = v33 | 0x10000;
  if (!v33)
  {
    v29 = -65536;
  }

  v30 = v34;
  *v34 = v29;
  *(v30 + 2) = BYTE2(v29);
  *(v30 + 1) = v22;
  *(v30 + 2) = v26;
  *(v30 + 24) = v27;
  *(v30 + 25) = v28;
  *(v30 + 4) = v4;
  *(v30 + 5) = v25;
  *(v30 + 6) = ObjectType;
  return result;
}

double sub_1000D9A70@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v17 = a1;
  LODWORD(v18) = a2;
  v9 = BYTE5(a1);
  if ((a2 >> 8))
  {
    LOWORD(v17) = a2 >> 8;
    dispatch thunk of CustomStringConvertible.description.getter();
  }

  BYTE2(v13) = -1;
  LOWORD(v13) = 0;
  *(&v13 + 1) = BYTE3(a1);
  *&v14 = a3;
  WORD4(v14) = a4;
  *&v15 = 0;
  *(&v15 + 1) = BYTE4(a1);
  LOBYTE(v16) = (v9 & 2) != 0;
  BYTE1(v16) = (v9 & 8) != 0;
  BYTE2(v16) = (v9 & 1) == 0;
  HIBYTE(v16) = (v9 & 4) == 0;
  BYTE2(v17) = -1;
  LOWORD(v17) = 0;
  v18 = BYTE3(a1);
  v19 = a3;
  v20 = a4;
  v21 = 0;
  v22 = BYTE4(a1);
  v23 = v16;
  sub_10007624C(&v13, v12);
  sub_1000E38B4(&v17);
  v10 = v14;
  *a5 = v13;
  *(a5 + 16) = v10;
  result = *&v15;
  *(a5 + 32) = v15;
  *(a5 + 48) = v16;
  return result;
}

Swift::Int ADC3InputTerminalDescriptor.hashValue.getter(uint64_t a1, uint64_t a2, int a3)
{
  Hasher.init(_seed:)();
  v6 = sub_100066DD0(a1, a2, a3);
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      sub_10001EDEC(v8, v10);
      AnyHashable.hash(into:)();
      sub_10001E070(v10);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC3InputTerminalDescriptor()
{
  v1 = sub_100066DD0(*v0, *(v0 + 8), *(v0 + 16));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000D9D00()
{
  v1 = *(v0 + 16);
  v3 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v4 = sub_100066DD0(v3, v2, v1);
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

Swift::Int ADC3OutputTerminalDescriptor.hashValue.getter(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a2;
  *v13 = a2;
  *&v13[8] = a3;
  v5 = a2 >> 8;
  v6 = a2 >> 40;
  v7 = a3 >> 8;
  Hasher.init(_seed:)();
  v12[0] = v3;
  *&v12[1] = v5;
  *&v12[5] = v6;
  *&v12[7] = *&v13[7];
  *&v12[9] = v7;
  v8 = sub_100065598(a1, *v12, *&v12[8]);
  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      sub_10001EDEC(v10, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000D9E84()
{
  v1 = *(v0 + 8);
  *&v3[1] = *(v0 + 9);
  *&v3[9] = *(v0 + 17);
  return ADC3OutputTerminalDescriptor.hashValue.getter(*v0, *v3, *&v3[8]);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC3OutputTerminalDescriptor()
{
  v1 = *(v0 + 9);
  v2 = *(v0 + 13);
  v3 = *(v0 + 17);
  v4 = *v0;
  v9[0] = *(v0 + 8);
  *&v9[1] = __PAIR64__(v2, v1);
  *&v9[9] = v3;
  v5 = sub_100065598(v4, *v9, *&v9[8]);
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_1000D9F8C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 13);
  v4 = *(v0 + 17);
  v5 = *v0;
  Hasher.init(_seed:)();
  v10[0] = v1;
  *&v10[1] = __PAIR64__(v3, v2);
  *&v10[9] = v4;
  v6 = sub_100065598(v5, *v10, *&v10[8]);
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      sub_10001EDEC(v8, v10);
      AnyHashable.hash(into:)();
      sub_10001E070(v10);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ADC3OutputTerminalDescriptor(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = *(a2 + 9);
  v5 = *(a2 + 13);
  v6 = *(a2 + 17);
  v7 = *a2;
  *&v11[1] = *(a1 + 9);
  *&v11[9] = *(a1 + 17);
  v8 = *v11;
  v9 = *&v11[8];
  v11[0] = v3;
  *&v11[1] = __PAIR64__(v5, v4);
  *&v11[9] = v6;
  return sub_10006D25C(*a1, v8, v9, v7, *v11, *&v11[8]);
}

Swift::Int sub_1000DA3FC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1 & 0xFFFFFFFFFFFFFFLL);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000DA4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v5 = a4(*v4 | (*(v4 + 2) << 32) | (*(v4 + 6) << 48));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_1000DA59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *(v4 + 2);
  v7 = *(v4 + 6);
  v8 = *v4;
  Hasher.init(_seed:)();
  v9 = a4(v8 | (v6 << 32) | (v7 << 48));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;
    do
    {
      sub_10001EDEC(v11, v13);
      AnyHashable.hash(into:)();
      sub_10001E070(v13);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  return Hasher._finalize()();
}

Swift::Int ADC3ExtensionUnitDescriptorPart2.hashValue.getter(unint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = sub_100062F5C(a1);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC3ExtensionUnitDescriptorPart2()
{
  v1 = sub_100062F5C(*v0);
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000DA7C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = sub_100062F5C(v1);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

Swift::Int ADC3ClockSourceDescriptor.hashValue.getter(unint64_t a1, unsigned int a2)
{
  v2 = a1;
  *v14 = a1;
  *&v14[8] = a2;
  v3 = a1 >> 8;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v6 = HIDWORD(a1);
  v7 = a2 >> 8;
  v8 = HIWORD(a2);
  Hasher.init(_seed:)();
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  *&v13[5] = *&v14[5];
  v13[9] = v7;
  *&v13[10] = v8;
  v9 = sub_100068318(*v13, *&v13[8]);
  v10 = *(v9 + 2);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      sub_10001EDEC(v11, v13);
      AnyHashable.hash(into:)();
      sub_10001E070(v13);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000DA948()
{
  v1 = *v0;
  v3[4] = *(v0 + 4);
  *&v3[5] = *(v0 + 5);
  v3[9] = *(v0 + 9);
  *&v3[10] = *(v0 + 5);
  return ADC3ClockSourceDescriptor.hashValue.getter(*v3, *&v3[8]);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC3ClockSourceDescriptor()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  *v9 = *v0;
  v9[4] = v1;
  *&v9[5] = v2;
  v9[9] = v3;
  *&v9[10] = v4;
  v5 = sub_100068318(*v9, *&v9[8]);
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_1000DAA58()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  Hasher.init(_seed:)();
  *v9 = *v0;
  v9[4] = v1;
  *&v9[5] = v2;
  v9[9] = v3;
  *&v9[10] = v4;
  v5 = sub_100068318(*v9, *&v9[8]);
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ADC3ClockSourceDescriptor(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v6[4] = *(a1 + 4);
  *&v6[5] = *(a1 + 5);
  v6[9] = *(a1 + 9);
  *&v6[10] = *(a1 + 5);
  v3 = *v6;
  v4 = *&v6[8];
  LODWORD(v7) = *a2;
  BYTE4(v7) = *(a2 + 4);
  *(&v7 + 5) = *(a2 + 5);
  BYTE9(v7) = *(a2 + 9);
  WORD5(v7) = *(a2 + 10);
  return sub_10006E9F0(v3, v4, v7, DWORD2(v7));
}

uint64_t sub_1000DABC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v5 = a4(*v4 | (*(v4 + 1) << 8));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_1000DAC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 1);
  Hasher.init(_seed:)();
  v8 = a4(v6 | (v7 << 8));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    do
    {
      sub_10001EDEC(v10, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000DAD78(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1 & 0xFFFFFFFFFFFFLL);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000DAE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v5 = a4(*v4 | (*(v4 + 2) << 32));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_1000DAF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 2);
  Hasher.init(_seed:)();
  v8 = a4(v6 | (v7 << 32));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    do
    {
      sub_10001EDEC(v10, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return Hasher._finalize()();
}

Swift::Int ADC3ClockMultiplierDescriptor.hashValue.getter(unint64_t a1, unsigned int a2)
{
  v2 = a1;
  *v13 = a1;
  *&v13[8] = a2;
  v3 = a1 >> 8;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v6 = HIDWORD(a1);
  v7 = a2 >> 8;
  Hasher.init(_seed:)();
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  *&v12[5] = *&v13[5];
  *&v12[9] = v7;
  v8 = sub_1000646BC(*v12, *&v12[8]);
  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      sub_10001EDEC(v10, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000DB0B8()
{
  v1 = *v0;
  v3[4] = *(v0 + 4);
  *&v3[5] = *(v0 + 5);
  *&v3[9] = *(v0 + 9);
  return ADC3ClockMultiplierDescriptor.hashValue.getter(*v3, *&v3[8]);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC3ClockMultiplierDescriptor()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 9);
  *v8 = *v0;
  v8[4] = v1;
  *&v8[5] = v2;
  *&v8[9] = v3;
  v4 = sub_1000646BC(*v8, *&v8[8]);
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
  }
}

Swift::Int sub_1000DB1B8()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  *v8 = *v0;
  v8[4] = v1;
  *&v8[5] = v2;
  *&v8[9] = v3;
  v4 = sub_1000646BC(*v8, *&v8[8]);
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ADC3ClockMultiplierDescriptor(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v6[4] = *(a1 + 4);
  *&v6[5] = *(a1 + 5);
  *&v6[9] = *(a1 + 9);
  v3 = *v6;
  v4 = *&v6[8];
  *v6 = *a2;
  v6[4] = *(a2 + 4);
  *&v6[5] = *(a2 + 5);
  *&v6[9] = *(a2 + 9);
  return sub_10006CD40(v3, v4, *v6, *&v6[8]);
}

Swift::Int ADC3SRConverterUnitDescriptor.hashValue.getter(unint64_t a1, char a2)
{
  v2 = a1;
  *v14 = a1;
  v14[8] = a2;
  v3 = a1 >> 8;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v6 = HIDWORD(a1);
  v7 = a1 >> 40;
  v8 = HIWORD(a1);
  Hasher.init(_seed:)();
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  *&v13[7] = *&v14[7];
  v9 = sub_1000646A4(*v13, v14[8]);
  v10 = *(v9 + 2);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      sub_10001EDEC(v11, v13);
      AnyHashable.hash(into:)();
      sub_10001E070(v13);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000DB3A8()
{
  v1 = *v0;
  *&v3[4] = *(v0 + 2);
  v3[6] = *(v0 + 6);
  *&v3[7] = *(v0 + 7);
  return ADC3SRConverterUnitDescriptor.hashValue.getter(*v3, v3[8]);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC3SRConverterUnitDescriptor()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 6);
  v3 = *(v0 + 7);
  *v8 = *v0;
  *&v8[4] = v1;
  v8[6] = v2;
  *&v8[7] = v3;
  v4 = sub_1000646A4(*v8, SHIBYTE(v3));
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
  }
}

Swift::Int sub_1000DB4A4()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 6);
  v3 = *(v0 + 7);
  Hasher.init(_seed:)();
  *v8 = *v0;
  *&v8[4] = v1;
  v8[6] = v2;
  *&v8[7] = v3;
  v4 = sub_1000646A4(*v8, SHIBYTE(v3));
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ADC3SRConverterUnitDescriptor(unsigned int *a1, uint64_t a2)
{
  v2 = *(a1 + 7);
  v3 = *a1;
  WORD2(v6) = *(a1 + 2);
  BYTE6(v6) = *(a1 + 6);
  HIBYTE(v6) = v2;
  v4 = v6;
  LODWORD(v7) = *a2;
  WORD2(v7) = *(a2 + 4);
  BYTE6(v7) = *(a2 + 6);
  *(&v7 + 7) = *(a2 + 7);
  return sub_10006CB3C(v4, SHIBYTE(v2), v7, SBYTE8(v7));
}

Swift::Int ADC3PowerDomainDescriptor.hashValue.getter(unint64_t a1, int a2)
{
  Hasher.init(_seed:)();
  v4 = sub_100068000(a1, a2);
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC3PowerDomainDescriptor()
{
  v1 = sub_100068000(*v0, *(v0 + 8));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000DB6FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = sub_100068000(v1, v2);
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000DB7C0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1 & 0xFFFFFFFFFFLL);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC3ClusterClusterDescriptionSegment()
{
  v1 = sub_100069274(*v0 | (*(v0 + 2) << 16) | (*(v0 + 3) << 24));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000DB92C()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  Hasher.init(_seed:)();
  v4 = sub_100069274(v1 | (v2 << 16) | (v3 << 24));
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000DB9F0(uint64_t a1)
{
  result = sub_1000DC530(&qword_100178490, type metadata accessor for ADC3InputTerminalDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DBA90(uint64_t a1)
{
  result = sub_1000DC530(&qword_1001784A0, type metadata accessor for ADC3OutputTerminalDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DBB30(uint64_t a1)
{
  result = sub_1000DC530(&qword_1001784B0, type metadata accessor for ADC3MixerUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DBBD0(uint64_t a1)
{
  result = sub_1000DC530(&qword_1001784C0, type metadata accessor for ADC3MixerUnitDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DBC70(uint64_t a1)
{
  result = sub_1000DC530(&qword_1001784D0, type metadata accessor for ADC3SelectorUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DBD10(uint64_t a1)
{
  result = sub_1000DC530(&qword_1001784E0, type metadata accessor for ADC3SelectorUnitDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DBDB0(uint64_t a1)
{
  result = sub_1000DC530(&qword_1001784F0, type metadata accessor for ADC3FeatureUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DBE50(uint64_t a1)
{
  result = sub_1000DC530(&qword_100178500, type metadata accessor for ADC3EffectUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DBEF0(uint64_t a1)
{
  result = sub_1000DC530(&qword_100178510, type metadata accessor for ADC3ProcessingUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DBF90(uint64_t a1)
{
  result = sub_1000DC530(&qword_100178520, type metadata accessor for ADC3ExtensionUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DC030(uint64_t a1)
{
  result = sub_1000DC530(&qword_100178530, type metadata accessor for ADC3ExtensionUnitDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DC0D0(uint64_t a1)
{
  result = sub_1000DC530(&qword_100178540, type metadata accessor for ADC3ClockSourceDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DC170(uint64_t a1)
{
  result = sub_1000DC530(&qword_100178550, type metadata accessor for ADC3ClockSelectorDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DC210(uint64_t a1)
{
  result = sub_1000DC530(&qword_100178560, type metadata accessor for ADC3ClockSelectorDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DC2B0(uint64_t a1)
{
  result = sub_1000DC530(&qword_100178570, type metadata accessor for ADC3ClockMultiplierDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DC350(uint64_t a1)
{
  result = sub_1000DC530(&qword_100178580, type metadata accessor for ADC3SRConverterUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DC3F0(uint64_t a1)
{
  result = sub_1000DC530(&qword_100178590, type metadata accessor for ADC3PowerDomainDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DC490(uint64_t a1)
{
  result = sub_1000DC530(&qword_1001785A0, type metadata accessor for ADC3ClusterClusterDescriptionSegment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DC530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DC578(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2);
  if (HIBYTE(a2) > 1)
  {
    if (v3 == 2)
    {
      Hasher._combine(_:)(2uLL);
      v7 = sub_10006235C(a2 & 0xFFFFFFFFFFFFFFLL);
      v8 = *(v7 + 2);
      if (v8)
      {
        v9 = (v7 + 32);
        do
        {
          sub_10001EDEC(v9, v17);
          AnyHashable.hash(into:)();
          sub_10001E070(v17);
          v9 += 40;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      Hasher._combine(_:)(3uLL);
      v13 = sub_100062344(a2 & 0xFFFFFFFFFFLL);
      v14 = *(v13 + 2);
      if (v14)
      {
        v15 = (v13 + 32);
        do
        {
          sub_10001EDEC(v15, v17);
          AnyHashable.hash(into:)();
          sub_10001E070(v17);
          v15 += 40;
          --v14;
        }

        while (v14);
      }
    }
  }

  else if (v3)
  {
    Hasher._combine(_:)(1uLL);
    v10 = sub_100062070(a2 & 0xFFFFFFFFFFFFLL);
    v11 = *(v10 + 2);
    if (v11)
    {
      v12 = (v10 + 32);
      do
      {
        sub_10001EDEC(v12, v17);
        AnyHashable.hash(into:)();
        sub_10001E070(v17);
        v12 += 40;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v4 = sub_100068F98(a2 & 0xFFFFFF);
    v5 = *(v4 + 2);
    if (v5)
    {
      v6 = (v4 + 32);
      do
      {
        sub_10001EDEC(v6, v17);
        AnyHashable.hash(into:)();
        sub_10001E070(v17);
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }
}

Swift::Int sub_1000DC720()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000DC578(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000DC770()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000DC578(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_1000DC7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    sub_10000CA2C();
    swift_allocError();
    *v19 = 57;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v8 = a1;
  result = sub_1000D5D10(a1, a2, 7);
  if (!v3)
  {
    v12 = v11;
    v13 = v10;
    v14 = sub_1001128D0(v8, 7);
    v16 = v14;
    v17 = v15;
    v18 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v18 != 2)
      {
        memset(v105, 0, 14);
        goto LABEL_18;
      }

      v5 = *(v14 + 16);
      v20 = __DataStorage._bytes.getter();
      if (v20)
      {
        v4 = v20;
        v8 = v17 & 0x3FFFFFFFFFFFFFFFLL;
        v21 = __DataStorage._offset.getter();
        v18 = v5 - v21;
        if (__OFSUB__(v5, v21))
        {
          goto LABEL_69;
        }

        v4 += v18;
        __DataStorage._length.getter();
        if (v4)
        {
          goto LABEL_16;
        }
      }

      else
      {
        __DataStorage._length.getter();
      }

      __break(1u);
    }

    else
    {
      if (!v18)
      {
        v105[0] = v14;
        LOWORD(v105[1]) = v15;
        BYTE2(v105[1]) = BYTE2(v15);
        BYTE3(v105[1]) = BYTE3(v15);
        BYTE4(v105[1]) = BYTE4(v15);
        BYTE5(v105[1]) = BYTE5(v15);
LABEL_18:
        v24 = v105;
LABEL_19:
        v8 = sub_10010BB34(v24, 1);
        sub_10007676C(v16, v17);
        v18 = *(v8 + 16);
        if (!v18)
        {
          __break(1u);
          goto LABEL_67;
        }

        v25 = *(v8 + 32);
        v16 = *(v8 + 34);
        v26 = *(v8 + 35);
        LOWORD(v5) = *(v8 + 36);
        v6 = *(v8 + 38);

        v106 = v13;
        v107 = v12;
        v27 = sub_1000E2670(&v106);
        v98 = v26;
        v4 = _swiftEmptyArrayStorage;
        v99 = v16;
        v100 = v25;
        if (HIBYTE(v27))
        {
          goto LABEL_23;
        }

        v17 = v27;
        v4 = sub_100025DCC(0, 1, 1, _swiftEmptyArrayStorage);
        v16 = *(v4 + 2);
        v18 = *(v4 + 3);
        v8 = v16 + 1;
        if (v16 >= v18 >> 1)
        {
          goto LABEL_71;
        }

        while (1)
        {
          *(v4 + 2) = v8;
          v28 = &v4[8 * v16];
          *(v28 + 8) = v17;
          v28[38] = BYTE6(v17);
          *(v28 + 18) = WORD2(v17);
          v28[39] = 0;
          v27 = sub_1000E2670(&v106);
LABEL_23:
          v97 = v5;
          v8 = HIBYTE(v27);
          v17 = v27;
          sub_100001AB4(&qword_1001753C0, &qword_100120EA0);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_10011DE90;
          *(v29 + 38) = BYTE6(v17);
          v18 = HIDWORD(v17);
          *(v29 + 36) = WORD2(v17);
          *(v29 + 32) = v17;
          *(v29 + 39) = v8;
          v96 = v6;
          if (v6)
          {
            break;
          }

LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v4 = sub_100025DCC((v18 > 1), v8, 1, v4);
        }

        v30 = v29;
        LOBYTE(v101) = 1;
        v102 = v4;
        v103 = _swiftEmptyArrayStorage;
        while (1)
        {
          do
          {
            v31 = v106;
            if (!v106)
            {
              v40 = 57;
              goto LABEL_63;
            }

            v32 = v107 - v106;
            if ((v107 - v106) < 3)
            {
              goto LABEL_61;
            }

            v33 = *(v106 + 2);
            v34 = *v106;
            v105[0] = _swiftEmptyArrayStorage;
            sub_100047560(0, 1, 0);
            v35 = v105[0];
            v37 = *(v105[0] + 16);
            v36 = *(v105[0] + 24);
            if (v37 >= v36 >> 1)
            {
              sub_100047560((v36 > 1), v37 + 1, 1);
              v35 = v105[0];
            }

            *(v35 + 16) = v37 + 1;
            v38 = v35 + 3 * v37;
            *(v38 + 32) = v34;
            *(v38 + 34) = v33;
            v39 = *(v35 + 34);

            v40 = 41;
            if (v39 > 33)
            {
              if (v39 == 34)
              {
                if (v32 < 5)
                {
                  goto LABEL_61;
                }

                v78 = *(v31 + 2);
                v79 = *v31;
                v80 = *(v31 + 3);
                v105[0] = _swiftEmptyArrayStorage;
                sub_100047500(0, 1, 0);
                v81 = v105[0];
                v83 = *(v105[0] + 16);
                v82 = *(v105[0] + 24);
                v84 = v83 + 1;
                if (v83 >= v82 >> 1)
                {
                  sub_100047500((v82 > 1), v83 + 1, 1);
                  v84 = v83 + 1;
                  v81 = v105[0];
                }

                *(v81 + 16) = v84;
                v85 = v81 + 32 + 5 * v83;
                *v85 = v79;
                *(v85 + 2) = v78;
                *(v85 + 3) = v80;
                v86 = *(v81 + 32);
                v87 = *(v81 + 34);
                v88 = *(v81 + 35);

                v55 = 0;
                v106 = (v31 + 5);
                v107 = v31 + v32;
                v56 = v86 | (v87 << 16) | (v88 << 24);
                v57 = 3;
              }

              else
              {
                if (v39 != 255)
                {
                  goto LABEL_63;
                }

                v58 = *(v31 + 2);
                v59 = *v31;
                v105[0] = _swiftEmptyArrayStorage;
                sub_1000474E0(0, 1, 0);
                v60 = v105[0];
                v62 = *(v105[0] + 16);
                v61 = *(v105[0] + 24);
                v63 = v62 + 1;
                if (v62 >= v61 >> 1)
                {
                  sub_1000474E0((v61 > 1), v62 + 1, 1);
                  v63 = v62 + 1;
                  v60 = v105[0];
                }

                v64 = v31 + v32;
                *(v60 + 16) = v63;
                v65 = v60 + 32 + 3 * v62;
                *v65 = v59;
                *(v65 + 2) = v58;
                v66 = *(v60 + 32);
                v67 = *(v60 + 34);

                v57 = 0;
                v106 = (v31 + 3);
                v107 = v64;
                v56 = v66 | (v67 << 16);
                v55 = 1;
              }
            }

            else if (v39 == 32)
            {
              if (v32 < 6)
              {
                goto LABEL_61;
              }

              v7.i32[0] = *(v31 + 2);
              v68 = *v31;
              v105[0] = _swiftEmptyArrayStorage;
              sub_100047540(0, 1, 0);
              v69 = v105[0];
              v71 = *(v105[0] + 16);
              v70 = *(v105[0] + 24);
              if (v71 >= v70 >> 1)
              {
                sub_100047540((v70 > 1), v71 + 1, 1);
                v69 = v105[0];
              }

              v72 = v31 + v32;
              v73 = vmovl_u8(v7).u64[0];
              *(v69 + 16) = v71 + 1;
              v74 = v69 + 32 + 6 * v71;
              *v74 = v68;
              *(v74 + 2) = vuzp1_s8(v73, v73).u32[0];
              v75 = *(v69 + 36);
              v76 = *(v69 + 37);
              v77 = *(v69 + 32);

              v55 = 0;
              v106 = (v31 + 6);
              v107 = v72;
              v56 = v77 | (v75 << 32) | (v76 << 40);
              v57 = 1;
            }

            else
            {
              if (v39 != 33)
              {
                goto LABEL_63;
              }

              if (v32 < 7)
              {
LABEL_61:
                v40 = 56;
LABEL_63:
                sub_10000CA2C();
                swift_allocError();
                *v95 = v40;
                *(v95 + 8) = 0;
                *(v95 + 16) = 0xE000000000000000;
                swift_willThrow();
              }

              v7.i32[0] = *(v31 + 2);
              v41 = *(v31 + 6);
              v42 = *v31;
              v105[0] = _swiftEmptyArrayStorage;
              sub_100047520(0, 1, 0);
              v43 = v105[0];
              v45 = *(v105[0] + 16);
              v44 = *(v105[0] + 24);
              v46 = v45 + 1;
              if (v45 >= v44 >> 1)
              {
                sub_100047520((v44 > 1), v45 + 1, 1);
                v46 = v45 + 1;
                v43 = v105[0];
              }

              v47 = v31 + 7;
              v48 = v31 + v32;
              v49 = vmovl_u8(v7).u64[0];
              *(v43 + 16) = v46;
              v50 = v43 + 32 - v45 + 8 * v45;
              *v50 = v42;
              *(v50 + 2) = vuzp1_s8(v49, v49).u32[0];
              *(v50 + 6) = v41;
              v51 = *(v43 + 36);
              v52 = *(v43 + 37);
              v53 = *(v43 + 32);
              v54 = *(v43 + 38);

              v55 = 0;
              v106 = v47;
              v107 = v48;
              v56 = v53 | (v51 << 32) | (v52 << 40) | (v54 << 48);
              v57 = 2;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_100025DCC(0, *(v30 + 2) + 1, 1, v30);
            }

            v90 = *(v30 + 2);
            v89 = *(v30 + 3);
            if (v90 >= v89 >> 1)
            {
              v30 = sub_100025DCC((v89 > 1), v90 + 1, 1, v30);
            }

            *(v30 + 2) = v90 + 1;
            v91 = &v30[8 * v90];
            *(v91 + 8) = v56;
            v91[38] = BYTE6(v56);
            *(v91 + 18) = WORD2(v56);
            v91[39] = v57;
          }

          while (!v55);

          v92 = v103;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v92 = sub_100025ED0(0, v103[2] + 1, 1, v103);
          }

          v94 = v92[2];
          v93 = v92[3];
          if (v94 >= v93 >> 1)
          {
            v92 = sub_100025ED0((v93 > 1), v94 + 1, 1, v92);
          }

          v92[2] = v94 + 1;
          v92[v94 + 4] = v30;

          if (v96 == v101)
          {
            break;
          }

          v103 = v92;
          v101 = v101 + 1;
          if ((v101 >> 8))
          {
            __break(1u);
          }

          v30 = _swiftEmptyArrayStorage;
        }

        *a3 = v100;
        *(a3 + 2) = v99;
        *(a3 + 3) = v98;
        *(a3 + 4) = v97;
        *(a3 + 6) = v96;
        *(a3 + 8) = v102;
        *(a3 + 16) = v92;
        return result;
      }

      LOWORD(v5) = v14;
      if (v14 > v14 >> 32)
      {
        goto LABEL_68;
      }

      v22 = __DataStorage._bytes.getter();
      if (v22)
      {
        v4 = v22;
        v8 = v17 & 0x3FFFFFFFFFFFFFFFLL;
        v23 = __DataStorage._offset.getter();
        v18 = v16 - v23;
        if (__OFSUB__(v16, v23))
        {
          goto LABEL_70;
        }

        v4 += v18;
        result = __DataStorage._length.getter();
        if (v4)
        {
LABEL_16:
          v24 = v4;
          goto LABEL_19;
        }

LABEL_76:
        __break(1u);
        return result;
      }
    }

    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_76;
  }

  return result;
}

uint64_t sub_1000DD0B4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    sub_10000CA2C();
    swift_allocError();
    *v12 = 57;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  result = sub_1000D5D10(a1, a2, 20);
  if (!v3)
  {
    v7 = sub_1001128D0(a1, 20);
    v9 = v7;
    v10 = v8;
    v11 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v11 != 2)
      {
        *(&v23 + 6) = 0;
        *&v23 = 0;
        goto LABEL_18;
      }

      v13 = *(v7 + 16);
      v14 = __DataStorage._bytes.getter();
      if (v14)
      {
        v15 = v14;
        v16 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v16))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
        }

        v17 = (v13 - v16 + v15);
        __DataStorage._length.getter();
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        __DataStorage._length.getter();
      }

      __break(1u);
    }

    else
    {
      if (!v11)
      {
        *&v23 = v7;
        WORD4(v23) = v8;
        BYTE10(v23) = BYTE2(v8);
        BYTE11(v23) = BYTE3(v8);
        BYTE12(v23) = BYTE4(v8);
        BYTE13(v23) = BYTE5(v8);
LABEL_18:
        v21 = &v23;
        goto LABEL_19;
      }

      if (v7 > v7 >> 32)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v18 = __DataStorage._bytes.getter();
      if (v18)
      {
        v19 = v18;
        v20 = __DataStorage._offset.getter();
        if (__OFSUB__(v9, v20))
        {
          goto LABEL_25;
        }

        v17 = (v9 - v20 + v19);
        result = __DataStorage._length.getter();
        if (v17)
        {
LABEL_16:
          v21 = v17;
LABEL_19:
          v22 = sub_10010BC54(v21, 1);
          sub_10007676C(v9, v10);
          if (v22[2])
          {
            v23 = *(v22 + 2);
            v24 = *(v22 + 12);

            *a3 = v23;
            *(a3 + 16) = v24;
            return result;
          }

          __break(1u);
          goto LABEL_23;
        }

LABEL_29:
        __break(1u);
        return result;
      }
    }

    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1000DD314@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    sub_10000CA2C();
    swift_allocError();
    *v12 = 57;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  result = sub_1000D5D10(a1, a2, 19);
  if (!v3)
  {
    v7 = sub_1001128D0(a1, 19);
    v9 = v7;
    v10 = v8;
    v11 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v11 != 2)
      {
        *&v23[6] = 0;
        *v23 = 0;
        goto LABEL_18;
      }

      v13 = *(v7 + 16);
      v14 = __DataStorage._bytes.getter();
      if (v14)
      {
        v15 = v14;
        v16 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v16))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
        }

        v17 = (v13 - v16 + v15);
        __DataStorage._length.getter();
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        __DataStorage._length.getter();
      }

      __break(1u);
    }

    else
    {
      if (!v11)
      {
        *v23 = v7;
        *&v23[8] = v8;
        v23[10] = BYTE2(v8);
        v23[11] = BYTE3(v8);
        v23[12] = BYTE4(v8);
        v23[13] = BYTE5(v8);
LABEL_18:
        v21 = v23;
        goto LABEL_19;
      }

      if (v7 > v7 >> 32)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v18 = __DataStorage._bytes.getter();
      if (v18)
      {
        v19 = v18;
        v20 = __DataStorage._offset.getter();
        if (__OFSUB__(v9, v20))
        {
          goto LABEL_25;
        }

        v17 = (v9 - v20 + v19);
        result = __DataStorage._length.getter();
        if (v17)
        {
LABEL_16:
          v21 = v17;
LABEL_19:
          v22 = sub_10010BD50(v21, 1);
          sub_10007676C(v9, v10);
          if (v22[2])
          {
            *v23 = *(v22 + 2);
            *&v23[15] = *(v22 + 47);

            *a3 = *v23;
            *(a3 + 15) = *&v23[15];
            return result;
          }

          __break(1u);
          goto LABEL_23;
        }

LABEL_29:
        __break(1u);
        return result;
      }
    }

    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1000DD574@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_74;
  }

  result = sub_1000D5D10(a1, a2, 5);
  if (v3)
  {
    return result;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_1001128D0(a1, 5);
  v14 = v12;
  v15 = v13;
  v16 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v111, 0, 14);
      goto LABEL_17;
    }

    v17 = *(v12 + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
LABEL_113:
      __DataStorage._length.getter();
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (__OFSUB__(v17, v20))
    {
      goto LABEL_95;
    }

    v21 = (v17 - v20 + v19);
    __DataStorage._length.getter();
    if (!v21)
    {
      goto LABEL_114;
    }

LABEL_15:
    v25 = v21;
    goto LABEL_18;
  }

  if (v16)
  {
    if (v12 > v12 >> 32)
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v22 = __DataStorage._bytes.getter();
    if (!v22)
    {
LABEL_115:
      __DataStorage._length.getter();
      __break(1u);
      goto LABEL_116;
    }

    v23 = v22;
    v24 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v24))
    {
      goto LABEL_96;
    }

    v21 = (v14 - v24 + v23);
    __DataStorage._length.getter();
    if (!v21)
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    goto LABEL_15;
  }

  v111[0] = v12;
  LOWORD(v111[1]) = v13;
  BYTE2(v111[1]) = BYTE2(v13);
  BYTE3(v111[1]) = BYTE3(v13);
  BYTE4(v111[1]) = BYTE4(v13);
  BYTE5(v111[1]) = BYTE5(v13);
LABEL_17:
  v25 = v111;
LABEL_18:
  v26 = sub_10010BE78(v25, 1);
  sub_10007676C(v14, v15);
  if (!v26[2])
  {
    __break(1u);
    goto LABEL_94;
  }

  v4.i32[0] = *(v26 + 8);
  v27 = *(v26 + 36);

  if (v10)
  {
    sub_1000D5D10(v10, v11, v27);
    v29 = v28;
    v109 = v30;
    v31 = sub_1001128D0(v10, v27);
    v33 = v31;
    v34 = v32;
    v35 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v35 != 2)
      {
        memset(v111, 0, 14);
        goto LABEL_34;
      }

      v36 = *(v31 + 16);
      v37 = __DataStorage._bytes.getter();
      if (!v37)
      {
LABEL_117:
        __DataStorage._length.getter();
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v38 = v37;
      v39 = __DataStorage._offset.getter();
      if (!__OFSUB__(v36, v39))
      {
        v40 = (v36 - v39 + v38);
        __DataStorage._length.getter();
        if (!v40)
        {
          goto LABEL_118;
        }

        goto LABEL_32;
      }

      goto LABEL_98;
    }

    if (!v35)
    {
      v111[0] = v31;
      LOWORD(v111[1]) = v32;
      BYTE2(v111[1]) = BYTE2(v32);
      BYTE3(v111[1]) = BYTE3(v32);
      BYTE4(v111[1]) = BYTE4(v32);
      BYTE5(v111[1]) = BYTE5(v32);
LABEL_34:
      v44 = v111;
LABEL_35:
      v45 = sub_10010AC70(v44, v27);
      sub_10007676C(v33, v34);
      if (!v29)
      {
        goto LABEL_73;
      }

      sub_1000D5D10(v29, v109, 2);
      v47 = v46;
      v107 = v48;
      v49 = sub_1001128D0(v29, 2);
      v51 = v49;
      v52 = v50;
      v53 = v50 >> 62;
      if ((v50 >> 62) > 1)
      {
        if (v53 != 2)
        {
          memset(v111, 0, 14);
          goto LABEL_50;
        }

        v104 = v45;
        v54 = *(v49 + 16);
        v55 = __DataStorage._bytes.getter();
        if (!v55)
        {
LABEL_121:
          __DataStorage._length.getter();
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v56 = v55;
        v57 = __DataStorage._offset.getter();
        if (__OFSUB__(v54, v57))
        {
          goto LABEL_104;
        }

        v58 = (v54 - v57 + v56);
        __DataStorage._length.getter();
        v45 = v104;
        if (!v58)
        {
          goto LABEL_122;
        }
      }

      else
      {
        if (!v53)
        {
          v111[0] = v49;
          LOWORD(v111[1]) = v50;
          BYTE2(v111[1]) = BYTE2(v50);
          BYTE3(v111[1]) = BYTE3(v50);
          BYTE4(v111[1]) = BYTE4(v50);
          BYTE5(v111[1]) = BYTE5(v50);
LABEL_50:
          v62 = v111;
LABEL_51:
          v63 = sub_10010A954(v62, 1);
          sub_10007676C(v51, v52);
          if (*(v63 + 2))
          {
            v110 = vmovl_u8(v4).u64[0];
            v64 = v63[16];

            v65 = v110.u16[0] - 13;
            if ((v65 & 0xFFFFFF00) == 0)
            {
              if ((((v110.i8[0] - 13) - v27) & 0xFFFFFF00) == 0)
              {
                if (v47)
                {
                  sub_1000D5D10(v47, v107, (v65 - v27));
                  v67 = v66;
                  v103 = v64;
                  v108 = v68;
                  v69 = sub_1001128D0(v47, (v110.i8[0] - 13 - v27));
                  v71 = v69;
                  v72 = v70;
                  v73 = v70 >> 62;
                  if ((v70 >> 62) > 1)
                  {
                    if (v73 != 2)
                    {
                      memset(v111, 0, 14);
                      goto LABEL_69;
                    }

                    v102 = v67;
                    v105 = v45;
                    v74 = *(v69 + 16);
                    v75 = __DataStorage._bytes.getter();
                    if (!v75)
                    {
LABEL_125:
                      __DataStorage._length.getter();
LABEL_126:
                      __break(1u);
                      goto LABEL_127;
                    }

                    v76 = v75;
                    v77 = __DataStorage._offset.getter();
                    if (!__OFSUB__(v74, v77))
                    {
                      v78 = (v74 - v77 + v76);
                      __DataStorage._length.getter();
                      v45 = v105;
                      if (!v78)
                      {
                        goto LABEL_126;
                      }

                      goto LABEL_67;
                    }
                  }

                  else
                  {
                    if (!v73)
                    {
                      v111[0] = v69;
                      LOWORD(v111[1]) = v70;
                      BYTE2(v111[1]) = BYTE2(v70);
                      BYTE3(v111[1]) = BYTE3(v70);
                      BYTE4(v111[1]) = BYTE4(v70);
                      BYTE5(v111[1]) = BYTE5(v70);
LABEL_69:
                      v82 = sub_10010AC70(v111, (v110.i8[0] - 13 - v27));
                      sub_10007676C(v71, v72);
                      goto LABEL_70;
                    }

                    v102 = v67;
                    if (v69 <= v69 >> 32)
                    {
                      v79 = __DataStorage._bytes.getter();
                      if (!v79)
                      {
LABEL_127:
                        __DataStorage._length.getter();
                        __break(1u);
                        goto LABEL_128;
                      }

                      v80 = v79;
                      v81 = __DataStorage._offset.getter();
                      if (!__OFSUB__(v71, v81))
                      {
                        v78 = (v71 - v81 + v80);
                        __DataStorage._length.getter();
                        if (!v78)
                        {
LABEL_128:
                          __break(1u);
                          goto LABEL_129;
                        }

LABEL_67:
                        v82 = sub_10010AC70(v78, (v110.i8[0] - 13 - v27));
                        sub_10007676C(v71, v72);
                        v67 = v102;
LABEL_70:
                        if (v67)
                        {
                          sub_1000D5D10(v67, v108, 6);
                          v84 = sub_1001128D0(v67, 6);
                          v86 = v84;
                          v87 = v85;
                          v88 = v85 >> 62;
                          if ((v85 >> 62) > 1)
                          {
                            if (v88 != 2)
                            {
                              memset(v111, 0, 14);
                              goto LABEL_90;
                            }

                            v106 = v45;
                            v89 = *(v84 + 16);
                            v90 = __DataStorage._bytes.getter();
                            if (!v90)
                            {
LABEL_129:
                              __DataStorage._length.getter();
LABEL_130:
                              __break(1u);
                              goto LABEL_131;
                            }

                            v91 = v90;
                            v92 = __DataStorage._offset.getter();
                            if (__OFSUB__(v89, v92))
                            {
                              goto LABEL_111;
                            }

                            v93 = (v89 - v92 + v91);
                            __DataStorage._length.getter();
                            v45 = v106;
                            if (!v93)
                            {
                              goto LABEL_130;
                            }
                          }

                          else
                          {
                            if (!v88)
                            {
                              v111[0] = v84;
                              LOWORD(v111[1]) = v85;
                              BYTE2(v111[1]) = BYTE2(v85);
                              BYTE3(v111[1]) = BYTE3(v85);
                              BYTE4(v111[1]) = BYTE4(v85);
                              BYTE5(v111[1]) = BYTE5(v85);
LABEL_90:
                              v97 = v111;
LABEL_91:
                              v98 = sub_10010BE4C(v97, 1);
                              sub_10007676C(v86, v87);
                              if (v98[2])
                              {
                                v99 = v45;
                                v100 = *(v98 + 8);
                                v101 = *(v98 + 18);

                                *a3 = vuzp1_s8(v110, v110).u32[0];
                                *(a3 + 4) = v27;
                                *(a3 + 8) = v99;
                                *(a3 + 16) = v103;
                                *(a3 + 24) = v82;
                                *(a3 + 32) = v100;
                                *(a3 + 36) = v101;
                                return result;
                              }

                              goto LABEL_109;
                            }

                            if (v84 > v84 >> 32)
                            {
LABEL_110:
                              __break(1u);
LABEL_111:
                              __break(1u);
LABEL_112:
                              __break(1u);
                              goto LABEL_113;
                            }

                            v94 = __DataStorage._bytes.getter();
                            if (!v94)
                            {
LABEL_131:
                              result = __DataStorage._length.getter();
                              __break(1u);
                              goto LABEL_132;
                            }

                            v95 = v94;
                            v96 = __DataStorage._offset.getter();
                            if (__OFSUB__(v86, v96))
                            {
                              goto LABEL_112;
                            }

                            v93 = (v86 - v96 + v95);
                            result = __DataStorage._length.getter();
                            if (!v93)
                            {
LABEL_132:
                              __break(1u);
                              return result;
                            }
                          }

                          v97 = v93;
                          goto LABEL_91;
                        }

                        goto LABEL_73;
                      }

LABEL_108:
                      __break(1u);
LABEL_109:
                      __break(1u);
                      goto LABEL_110;
                    }

                    __break(1u);
                  }

                  __break(1u);
                  goto LABEL_108;
                }

LABEL_73:

                goto LABEL_74;
              }

              goto LABEL_102;
            }

LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        if (v49 > v49 >> 32)
        {
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v59 = __DataStorage._bytes.getter();
        if (!v59)
        {
LABEL_123:
          __DataStorage._length.getter();
          __break(1u);
          goto LABEL_124;
        }

        v60 = v59;
        v61 = __DataStorage._offset.getter();
        if (__OFSUB__(v51, v61))
        {
LABEL_105:
          __break(1u);
        }

        v58 = (v51 - v61 + v60);
        __DataStorage._length.getter();
        if (!v58)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }
      }

      v62 = v58;
      goto LABEL_51;
    }

    if (v31 <= v31 >> 32)
    {
      v41 = __DataStorage._bytes.getter();
      if (!v41)
      {
LABEL_119:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_120;
      }

      v42 = v41;
      v43 = __DataStorage._offset.getter();
      if (!__OFSUB__(v33, v43))
      {
        v40 = (v33 - v43 + v42);
        __DataStorage._length.getter();
        if (!v40)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

LABEL_32:
        v44 = v40;
        goto LABEL_35;
      }

LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

LABEL_74:
  sub_10000CA2C();
  swift_allocError();
  *v83 = 57;
  *(v83 + 8) = 0;
  *(v83 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

void sub_1000DDF28(uint64_t a1)
{
  v3 = sub_100068F38(*v1 | (*(v1 + 1) << 8));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v17);
      AnyHashable.hash(into:)();
      sub_10001E070(v17);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  v6 = sub_100065860(*(v1 + 5) | (*(v1 + 9) << 32));
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      sub_10001EDEC(v8, v17);
      AnyHashable.hash(into:)();
      sub_10001E070(v17);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 2), *(v1 + 12));
  v9 = *(v1 + 4);
  v10 = *(v9 + 16);
  Hasher._combine(_:)(v10);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      v12 = *v11++;
      Hasher._combine(_:)(v12);
      --v10;
    }

    while (v10);
  }

  Hasher._combine(_:)(*(v1 + 20));
  v13 = *(v1 + 6);
  v14 = *(v13 + 16);
  Hasher._combine(_:)(v14);
  if (v14)
  {
    v15 = (v13 + 32);
    do
    {
      v16 = *v15++;
      Hasher._combine(_:)(v16);
      --v14;
    }

    while (v14);
  }
}

Swift::Int sub_1000DE084()
{
  Hasher.init(_seed:)();
  sub_1000DDF28(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000DE0C8()
{
  Hasher.init(_seed:)();
  sub_1000DDF28(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000DE104(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1000E253C(v5, v7) & 1;
}

uint64_t sub_1000DE238@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_39;
  }

  result = sub_1000D5D10(a1, a2, 5);
  if (v3)
  {
    return result;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_1001128D0(a1, 5);
  v13 = v11;
  v14 = v12;
  v15 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v15 != 2)
    {
      memset(v66, 0, 14);
      goto LABEL_17;
    }

    v16 = *(v11 + 16);
    v17 = __DataStorage._bytes.getter();
    if (v17)
    {
      v18 = v17;
      v19 = __DataStorage._offset.getter();
      if (__OFSUB__(v16, v19))
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v20 = (v16 - v19 + v18);
      __DataStorage._length.getter();
      if (v20)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_72;
  }

  if (v15)
  {
    if (v11 > v11 >> 32)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v21 = __DataStorage._bytes.getter();
    if (v21)
    {
      v22 = v21;
      v23 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v23))
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v20 = (v13 - v23 + v22);
      __DataStorage._length.getter();
      if (v20)
      {
LABEL_15:
        v24 = v20;
        goto LABEL_18;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_72:
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_73;
  }

  v66[0] = v11;
  LOWORD(v66[1]) = v12;
  BYTE2(v66[1]) = BYTE2(v12);
  BYTE3(v66[1]) = BYTE3(v12);
  BYTE4(v66[1]) = BYTE4(v12);
  BYTE5(v66[1]) = BYTE5(v12);
LABEL_17:
  v24 = v66;
LABEL_18:
  v25 = sub_10010BEFC(v24, 1);
  sub_10007676C(v13, v14);
  if (!v25[2])
  {
    __break(1u);
    goto LABEL_59;
  }

  v26.i32[0] = *(v25 + 8);
  v65 = vmovl_u8(v26).u64[0];
  v27 = *(v25 + 36);

  if (((v65.u16[0] - 7) & 0xFFFFFF00) != 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v9)
  {
    sub_1000D5D10(v9, v10, 4 * ((v65.i8[0] - 7) >> 2));
    v29 = v28;
    v64 = v30;
    v31 = sub_1001128D0(v9, 4 * ((v65.i8[0] - 7) >> 2));
    v33 = v31;
    v34 = v32;
    v35 = v32 >> 62;
    if ((v32 >> 62) <= 1)
    {
      if (!v35)
      {
        v66[0] = v31;
        LOWORD(v66[1]) = v32;
        BYTE2(v66[1]) = BYTE2(v32);
        BYTE3(v66[1]) = BYTE3(v32);
        BYTE4(v66[1]) = BYTE4(v32);
        BYTE5(v66[1]) = BYTE5(v32);
LABEL_35:
        v44 = v66;
        goto LABEL_36;
      }

      if (v31 <= v31 >> 32)
      {
        v41 = __DataStorage._bytes.getter();
        if (v41)
        {
          v42 = v41;
          v43 = __DataStorage._offset.getter();
          if (!__OFSUB__(v33, v43))
          {
            v40 = (v33 - v43 + v42);
            __DataStorage._length.getter();
            if (v40)
            {
              goto LABEL_33;
            }

LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_76:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_77;
      }

      goto LABEL_63;
    }

    if (v35 != 2)
    {
      memset(v66, 0, 14);
      goto LABEL_35;
    }

    v63 = v27;
    v36 = *(v31 + 16);
    v37 = __DataStorage._bytes.getter();
    if (v37)
    {
      v38 = v37;
      v39 = __DataStorage._offset.getter();
      if (__OFSUB__(v36, v39))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v40 = (v36 - v39 + v38);
      __DataStorage._length.getter();
      v27 = v63;
      if (v40)
      {
LABEL_33:
        v44 = v40;
LABEL_36:
        v45 = sub_10010ADC4(v44, (v65.i8[0] - 7) >> 2);
        sub_10007676C(v33, v34);
        if (v29)
        {
          sub_1000D5D10(v29, v64, 2);
          v47 = sub_1001128D0(v29, 2);
          v49 = v47;
          v50 = v48;
          v51 = v48 >> 62;
          if ((v48 >> 62) <= 1)
          {
            if (!v51)
            {
              v66[0] = v47;
              LOWORD(v66[1]) = v48;
              BYTE2(v66[1]) = BYTE2(v48);
              BYTE3(v66[1]) = BYTE3(v48);
              BYTE4(v66[1]) = BYTE4(v48);
              BYTE5(v66[1]) = BYTE5(v48);
LABEL_55:
              v60 = v66;
LABEL_56:
              v61 = sub_10010A954(v60, 1);
              sub_10007676C(v49, v50);
              if (*(v61 + 2))
              {
                v62 = v61[16];

                *a3 = vuzp1_s8(v65, v65).u32[0];
                *(a3 + 4) = v27;
                *(a3 + 8) = v45;
                *(a3 + 16) = v62;
                return result;
              }

              goto LABEL_66;
            }

            if (v47 > v47 >> 32)
            {
LABEL_67:
              __break(1u);
              goto LABEL_68;
            }

            v57 = __DataStorage._bytes.getter();
            if (v57)
            {
              v58 = v57;
              v59 = __DataStorage._offset.getter();
              if (__OFSUB__(v49, v59))
              {
                goto LABEL_69;
              }

              v56 = (v49 - v59 + v58);
              result = __DataStorage._length.getter();
              if (v56)
              {
LABEL_53:
                v60 = v56;
                goto LABEL_56;
              }

              goto LABEL_81;
            }

LABEL_80:
            result = __DataStorage._length.getter();
            __break(1u);
LABEL_81:
            __break(1u);
            return result;
          }

          if (v51 != 2)
          {
            memset(v66, 0, 14);
            goto LABEL_55;
          }

          v52 = *(v47 + 16);
          v53 = __DataStorage._bytes.getter();
          if (v53)
          {
            v54 = v53;
            v55 = __DataStorage._offset.getter();
            if (__OFSUB__(v52, v55))
            {
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
            }

            v56 = (v52 - v55 + v54);
            __DataStorage._length.getter();
            if (v56)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

LABEL_78:
          __DataStorage._length.getter();
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        goto LABEL_39;
      }

LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

LABEL_74:
    __DataStorage._length.getter();
    goto LABEL_75;
  }

LABEL_39:
  sub_10000CA2C();
  swift_allocError();
  *v46 = 57;
  *(v46 + 8) = 0;
  *(v46 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_1000DE824@<X0>(uint64_t result@<X0>, char **a2@<X8>)
{
  v2 = 0;
  v3 = *result;
  v19 = 0x200000001;
  v21 = 16;
  v20 = 449;
  v22 = 448;
  v23 = 16;
  v24 = 0x800000004;
  v26 = 33;
  v25 = 513;
  v27 = 512;
  v28 = 33;
  v29 = 0x2000000010;
  v31 = 32;
  v30 = 833;
  v32 = 832;
  v33 = 32;
  v34 = 0x8000000040;
  v36 = 32;
  v35 = 1153;
  v38 = 32;
  v37 = 1152;
  v39 = 0x20000000100;
  v41 = 32;
  v40 = 1473;
  v43 = 32;
  v42 = 1472;
  v44 = 0x80000000400;
  v46 = 48;
  v45 = 1537;
  v47 = 1536;
  v48 = 48;
  v49 = 0x200000001000;
  v51 = 48;
  v50 = 1857;
  v53 = 48;
  v52 = 1856;
  v54 = 0x800000004000;
  v55 = 2177;
  v56 = 50;
  v57 = 2176;
  v58 = 50;
  v59 = 0x2000000010000;
  v61 = 48;
  v60 = 2497;
  v63 = 48;
  v62 = 2496;
  v64 = 0x8000000040000;
  v66 = 64;
  v65 = 2561;
  v67 = 2560;
  v68 = 64;
  v69 = 0x20000000100000;
  v70 = 2881;
  v71 = 65;
  v72 = 2880;
  v73 = 65;
  v74 = 0x80000000400000;
  v75 = 3201;
  v76 = 65;
  v78 = 65;
  v77 = 3200;
  v79 = 0x200000001000000;
  v81 = 64;
  v80 = 3521;
  v83 = 64;
  v82 = 3520;
  v84 = 0x800000004000000;
  v86 = 16;
  v85 = 3585;
  v88 = 16;
  v87 = 3584;
  v89 = 0x2000000010000000;
  v91 = 16;
  v90 = 3905;
  v92 = 3904;
  v93 = 16;
  v4 = _swiftEmptyArrayStorage;
  v94 = v3;
  do
  {
    v5 = &v18[v2 + 1];
    if ((*&v18[v2 + 33] & v3) != 0)
    {
      v6 = *(v5 + 9);
      v7 = (v5 + 43);
      v8 = (v5 + 40);
      v9 = v6 & v3;
      if ((v6 & v3) == 0)
      {
        v8 = v7;
      }

      v10 = *(v8 + 2);
      v11 = *v8;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100024518(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        result = sub_100024518((v12 > 1), v13 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v13 + 1;
      v14 = &v4[3 * v13];
      v14[34] = (v11 | (v10 << 16)) >> 16;
      *(v14 + 16) = v11;
      v16 = v6 == 0x8000000 && v9 != 0;
      if (v6 == 0x20000000 || v16)
      {
        result = sub_10009B498(v18, 12);
      }

      v3 = v94;
    }

    v2 += 16;
  }

  while (v2 != 240);
  *a2 = v4;
  return result;
}

void sub_1000DEBF0(uint64_t a1)
{
  v3 = sub_100068300(*v1 | (*(v1 + 1) << 8));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v10);
      AnyHashable.hash(into:)();
      sub_10001E070(v10);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 1), *(v1 + 8));
  v6 = *(v1 + 3);
  v7 = *(v6 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      Hasher._combine(_:)(v9);
      --v7;
    }

    while (v7);
  }

  Hasher._combine(_:)(*(v1 + 16));
}

Swift::Int sub_1000DECCC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v1 + 1);
  Hasher.init(_seed:)();
  v4 = sub_100068300(v2 | (v3 << 8));
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  v7 = *(v1 + 3);
  USBDescriptor.hash(into:)(v13, *(v1 + 1), *(v1 + 8));
  v8 = *(v7 + 16);
  Hasher._combine(_:)(v8);
  if (v8)
  {
    v9 = (v7 + 32);
    do
    {
      v10 = *v9++;
      Hasher._combine(_:)(v10);
      --v8;
    }

    while (v8);
  }

  Hasher._combine(_:)(*(v1 + 16));
  return Hasher._finalize()();
}

Swift::Int sub_1000DEDC0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 1);
  v4 = v0[16];
  v5 = v0[17];
  v6 = *(v0 + 3);
  v7 = *(v0 + 16);
  Hasher.init(_seed:)();
  v8 = sub_100068300(v1 | (v2 << 8));
  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      sub_10001EDEC(v10, v15);
      AnyHashable.hash(into:)();
      sub_10001E070(v15);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  USBDescriptor.hash(into:)(v16, v3, v4 | (v5 << 8));
  Hasher._combine(_:)(*(v6 + 16));
  v11 = *(v6 + 16);
  if (v11)
  {
    v12 = (v6 + 32);
    do
    {
      v13 = *v12++;
      Hasher._combine(_:)(v13);
      --v11;
    }

    while (v11);
  }

  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

uint64_t sub_1000DEEC4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v3 = a1[16];
  v4 = a1[17];
  v5 = *(a1 + 3);
  v6 = *(a1 + 16);
  v7 = *(a2 + 1);
  v8 = a2[16];
  v9 = a2[17];
  v10 = *(a2 + 3);
  v11 = *(a2 + 16);
  if ((sub_10006E9C4(*a1 | (*(a1 + 1) << 8), *a2 | (*(a2 + 1) << 8)) & 1) != 0 && _s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v2, v3 | (v4 << 8), v7, v8 | (v9 << 8)))
  {
    return sub_1000E4948(v5, v10) & (v6 == v11);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000DEF88@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_39;
  }

  result = sub_1000D5D10(a1, a2, 7);
  if (v3)
  {
    return result;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_1001128D0(a1, 7);
  v13 = v11;
  v14 = v12;
  v15 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v15 != 2)
    {
      memset(v68, 0, 14);
      goto LABEL_17;
    }

    v16 = *(v11 + 16);
    v17 = __DataStorage._bytes.getter();
    if (v17)
    {
      v18 = v17;
      v19 = __DataStorage._offset.getter();
      if (__OFSUB__(v16, v19))
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v20 = (v16 - v19 + v18);
      __DataStorage._length.getter();
      if (v20)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_72;
  }

  if (v15)
  {
    if (v11 > v11 >> 32)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v21 = __DataStorage._bytes.getter();
    if (v21)
    {
      v22 = v21;
      v23 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v23))
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v20 = (v13 - v23 + v22);
      __DataStorage._length.getter();
      if (v20)
      {
LABEL_15:
        v24 = v20;
        goto LABEL_18;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_72:
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_73;
  }

  v68[0] = v11;
  LOWORD(v68[1]) = v12;
  BYTE2(v68[1]) = BYTE2(v12);
  BYTE3(v68[1]) = BYTE3(v12);
  BYTE4(v68[1]) = BYTE4(v12);
  BYTE5(v68[1]) = BYTE5(v12);
LABEL_17:
  v24 = v68;
LABEL_18:
  v25 = sub_10010BF28(v24, 1);
  sub_10007676C(v13, v14);
  if (!v25[2])
  {
    __break(1u);
    goto LABEL_59;
  }

  v26.i32[0] = *(v25 + 8);
  v67 = vmovl_u8(v26).u64[0];
  v27 = *(v25 + 18);
  v28 = *(v25 + 38);

  if (((v67.u16[0] - 7) & 0xFFFFFF00) != 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v9)
  {
    sub_1000D5D10(v9, v10, 4 * ((v67.i8[0] - 7) >> 2));
    v30 = v29;
    v65 = v28;
    v66 = v31;
    v32 = sub_1001128D0(v9, 4 * ((v67.i8[0] - 7) >> 2));
    v34 = v32;
    v35 = v33;
    v36 = v33 >> 62;
    if ((v33 >> 62) <= 1)
    {
      if (!v36)
      {
        v68[0] = v32;
        LOWORD(v68[1]) = v33;
        BYTE2(v68[1]) = BYTE2(v33);
        BYTE3(v68[1]) = BYTE3(v33);
        BYTE4(v68[1]) = BYTE4(v33);
        BYTE5(v68[1]) = BYTE5(v33);
LABEL_35:
        v45 = v68;
        goto LABEL_36;
      }

      if (v32 <= v32 >> 32)
      {
        v42 = __DataStorage._bytes.getter();
        if (v42)
        {
          v43 = v42;
          v44 = __DataStorage._offset.getter();
          if (!__OFSUB__(v34, v44))
          {
            v41 = (v34 - v44 + v43);
            __DataStorage._length.getter();
            if (v41)
            {
              goto LABEL_33;
            }

LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_76:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_77;
      }

      goto LABEL_63;
    }

    if (v36 != 2)
    {
      memset(v68, 0, 14);
      goto LABEL_35;
    }

    v64 = v27;
    v37 = *(v32 + 16);
    v38 = __DataStorage._bytes.getter();
    if (v38)
    {
      v39 = v38;
      v40 = __DataStorage._offset.getter();
      if (__OFSUB__(v37, v40))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v41 = (v37 - v40 + v39);
      __DataStorage._length.getter();
      v27 = v64;
      if (v41)
      {
LABEL_33:
        v45 = v41;
LABEL_36:
        v46 = sub_10010ADC4(v45, (v67.i8[0] - 7) >> 2);
        sub_10007676C(v34, v35);
        if (v30)
        {
          sub_1000D5D10(v30, v66, 2);
          v48 = sub_1001128D0(v30, 2);
          v50 = v48;
          v51 = v49;
          v52 = v49 >> 62;
          if ((v49 >> 62) <= 1)
          {
            if (!v52)
            {
              v68[0] = v48;
              LOWORD(v68[1]) = v49;
              BYTE2(v68[1]) = BYTE2(v49);
              BYTE3(v68[1]) = BYTE3(v49);
              BYTE4(v68[1]) = BYTE4(v49);
              BYTE5(v68[1]) = BYTE5(v49);
LABEL_55:
              v61 = v68;
LABEL_56:
              v62 = sub_10010A954(v61, 1);
              sub_10007676C(v50, v51);
              if (*(v62 + 2))
              {
                v63 = v62[16];

                *a3 = vuzp1_s8(v67, v67).u32[0];
                *(a3 + 4) = v27;
                *(a3 + 6) = v65;
                *(a3 + 8) = v46;
                *(a3 + 16) = v63;
                return result;
              }

              goto LABEL_66;
            }

            if (v48 > v48 >> 32)
            {
LABEL_67:
              __break(1u);
              goto LABEL_68;
            }

            v58 = __DataStorage._bytes.getter();
            if (v58)
            {
              v59 = v58;
              v60 = __DataStorage._offset.getter();
              if (__OFSUB__(v50, v60))
              {
                goto LABEL_69;
              }

              v57 = (v50 - v60 + v59);
              result = __DataStorage._length.getter();
              if (v57)
              {
LABEL_53:
                v61 = v57;
                goto LABEL_56;
              }

              goto LABEL_81;
            }

LABEL_80:
            result = __DataStorage._length.getter();
            __break(1u);
LABEL_81:
            __break(1u);
            return result;
          }

          if (v52 != 2)
          {
            memset(v68, 0, 14);
            goto LABEL_55;
          }

          v53 = *(v48 + 16);
          v54 = __DataStorage._bytes.getter();
          if (v54)
          {
            v55 = v54;
            v56 = __DataStorage._offset.getter();
            if (__OFSUB__(v53, v56))
            {
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
            }

            v57 = (v53 - v56 + v55);
            __DataStorage._length.getter();
            if (v57)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

LABEL_78:
          __DataStorage._length.getter();
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        goto LABEL_39;
      }

LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

LABEL_74:
    __DataStorage._length.getter();
    goto LABEL_75;
  }

LABEL_39:
  sub_10000CA2C();
  swift_allocError();
  *v47 = 57;
  *(v47 + 8) = 0;
  *(v47 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

void sub_1000DF584(uint64_t a1)
{
  v3 = sub_100068C28(*v1 | (*(v1 + 2) << 32) | (*(v1 + 6) << 48));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v10);
      AnyHashable.hash(into:)();
      sub_10001E070(v10);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 1), *(v1 + 8));
  v6 = *(v1 + 3);
  v7 = *(v6 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      Hasher._combine(_:)(v9);
      --v7;
    }

    while (v7);
  }

  Hasher._combine(_:)(*(v1 + 16));
}

Swift::Int sub_1000DF668()
{
  v1 = v0;
  v2 = *(v0 + 2);
  v3 = *(v1 + 6);
  v4 = *v1;
  Hasher.init(_seed:)();
  v5 = sub_100068C28(v4 | (v2 << 32) | (v3 << 48));
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v13);
      AnyHashable.hash(into:)();
      sub_10001E070(v13);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  v8 = *(v1 + 3);
  USBDescriptor.hash(into:)(v14, *(v1 + 1), *(v1 + 8));
  v9 = *(v8 + 16);
  Hasher._combine(_:)(v9);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      v11 = *v10++;
      Hasher._combine(_:)(v11);
      --v9;
    }

    while (v9);
  }

  Hasher._combine(_:)(*(v1 + 16));
  return Hasher._finalize()();
}

Swift::Int sub_1000DF764()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 6);
  v3 = *(v0 + 1);
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  v6 = *(v0 + 3);
  v7 = *(v0 + 16);
  v8 = *v0;
  Hasher.init(_seed:)();
  v9 = sub_100068C28(v8 | (v1 << 32) | (v2 << 48));
  v10 = *(v9 + 2);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      sub_10001EDEC(v11, v16);
      AnyHashable.hash(into:)();
      sub_10001E070(v16);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  USBDescriptor.hash(into:)(v17, v3, v4 | (v5 << 8));
  Hasher._combine(_:)(*(v6 + 16));
  v12 = *(v6 + 16);
  if (v12)
  {
    v13 = (v6 + 32);
    do
    {
      v14 = *v13++;
      Hasher._combine(_:)(v14);
      --v12;
    }

    while (v12);
  }

  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

uint64_t sub_1000DF870(unsigned int *a1, unsigned int *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a1 + 3);
  v6 = *(a1 + 16);
  v7 = *(a2 + 1);
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  v10 = *(a2 + 3);
  v11 = *(a2 + 16);
  if ((sub_10006F248(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48), *a2 | (*(a2 + 2) << 32) | (*(a2 + 6) << 48)) & 1) != 0 && _s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v2, v3 | (v4 << 8), v7, v8 | (v9 << 8)))
  {
    return sub_1000E4948(v5, v10) & (v6 == v11);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000DF940@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_40;
  }

  result = sub_1000D5D10(a1, a2, 7);
  if (v3)
  {
    return result;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_1001128D0(a1, 7);
  v14 = v12;
  v15 = v13;
  v16 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v93, 0, 14);
      goto LABEL_17;
    }

    v17 = *(v12 + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
LABEL_92:
      __DataStorage._length.getter();
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (__OFSUB__(v17, v20))
    {
      goto LABEL_78;
    }

    v21 = (v17 - v20 + v19);
    __DataStorage._length.getter();
    if (!v21)
    {
      goto LABEL_93;
    }

LABEL_15:
    v25 = v21;
    goto LABEL_18;
  }

  if (v16)
  {
    if (v12 > v12 >> 32)
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v22 = __DataStorage._bytes.getter();
    if (!v22)
    {
LABEL_94:
      __DataStorage._length.getter();
      __break(1u);
      goto LABEL_95;
    }

    v23 = v22;
    v24 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v24))
    {
      goto LABEL_79;
    }

    v21 = (v14 - v24 + v23);
    __DataStorage._length.getter();
    if (!v21)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    goto LABEL_15;
  }

  v93[0] = v12;
  LOWORD(v93[1]) = v13;
  BYTE2(v93[1]) = BYTE2(v13);
  BYTE3(v93[1]) = BYTE3(v13);
  BYTE4(v93[1]) = BYTE4(v13);
  BYTE5(v93[1]) = BYTE5(v13);
LABEL_17:
  v25 = v93;
LABEL_18:
  v26 = sub_10010BF54(v25, 1);
  sub_10007676C(v14, v15);
  if (!v26[2])
  {
    __break(1u);
    goto LABEL_77;
  }

  v4.i32[0] = *(v26 + 8);
  v27 = *(v26 + 18);
  v28 = *(v26 + 38);

  if (v10)
  {
    sub_1000D5D10(v10, v11, v28);
    v30 = v29;
    v91 = v31;
    v32 = sub_1001128D0(v10, v28);
    v34 = v32;
    v35 = v33;
    v36 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v36 != 2)
      {
        memset(v93, 0, 14);
        goto LABEL_34;
      }

      v88 = v27;
      v37 = *(v32 + 16);
      v38 = __DataStorage._bytes.getter();
      if (!v38)
      {
LABEL_96:
        __DataStorage._length.getter();
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v39 = v38;
      v40 = __DataStorage._offset.getter();
      if (__OFSUB__(v37, v40))
      {
        goto LABEL_83;
      }

      v41 = (v37 - v40 + v39);
      __DataStorage._length.getter();
      v27 = v88;
      if (!v41)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (!v36)
      {
        v93[0] = v32;
        LOWORD(v93[1]) = v33;
        BYTE2(v93[1]) = BYTE2(v33);
        BYTE3(v93[1]) = BYTE3(v33);
        BYTE4(v93[1]) = BYTE4(v33);
        BYTE5(v93[1]) = BYTE5(v33);
LABEL_34:
        v45 = v93;
LABEL_35:
        v46 = sub_10010AC70(v45, v28);
        sub_10007676C(v34, v35);
        v47 = vmovl_u8(v4).u64[0];
        if (((v47 - 9) & 0xFFFFFF00) == 0)
        {
          v48 = (v47 - 9) - v28;
          if ((v48 & 0xFFFFFF00) == 0)
          {
            if (!v30)
            {
LABEL_39:

              goto LABEL_40;
            }

            v87 = v47;
            sub_1000D5D10(v30, v91, 2);
            v52 = v49;
            v85 = v50;
            v53 = sub_1001128D0(v30, 2);
            v55 = v53;
            v56 = v54;
            v57 = v54 >> 62;
            v92 = v46;
            if ((v54 >> 62) > 1)
            {
              if (v57 != 2)
              {
                memset(v93, 0, 14);
                goto LABEL_56;
              }

              v84 = v52;
              v89 = v27;
              v58 = *(v53 + 16);
              v59 = __DataStorage._bytes.getter();
              if (!v59)
              {
LABEL_100:
                __DataStorage._length.getter();
LABEL_101:
                __break(1u);
                goto LABEL_102;
              }

              v60 = v59;
              v61 = __DataStorage._offset.getter();
              if (__OFSUB__(v58, v61))
              {
                goto LABEL_87;
              }

              v62 = (v58 - v61 + v60);
              __DataStorage._length.getter();
              v27 = v89;
              if (!v62)
              {
                goto LABEL_101;
              }
            }

            else
            {
              if (!v57)
              {
                v93[0] = v53;
                LOWORD(v93[1]) = v54;
                BYTE2(v93[1]) = BYTE2(v54);
                BYTE3(v93[1]) = BYTE3(v54);
                BYTE4(v93[1]) = BYTE4(v54);
                BYTE5(v93[1]) = BYTE5(v54);
LABEL_56:
                v66 = sub_10010A954(v93, 1);
                sub_10007676C(v55, v56);
LABEL_57:
                if (*(v66 + 2))
                {
                  v67 = v66[16];

                  if (v52)
                  {
                    sub_1000D5D10(v52, v85, v48);
                    v86 = v67;
                    v68 = sub_1001128D0(v52, v48);
                    v70 = v68;
                    v71 = v69;
                    v72 = v69 >> 62;
                    if ((v69 >> 62) > 1)
                    {
                      if (v72 != 2)
                      {
                        memset(v93, 0, 14);
                        goto LABEL_74;
                      }

                      v90 = v27;
                      v73 = *(v68 + 16);
                      v74 = __DataStorage._bytes.getter();
                      if (!v74)
                      {
                        goto LABEL_104;
                      }

                      v75 = v74;
                      v76 = __DataStorage._offset.getter();
                      if (__OFSUB__(v73, v76))
                      {
                        goto LABEL_90;
                      }

                      v77 = (v73 - v76 + v75);
                      __DataStorage._length.getter();
                      v27 = v90;
                      if (v77)
                      {
LABEL_72:
                        v81 = v48;
                        v82 = v77;
LABEL_75:
                        v83 = sub_10010AC70(v82, v81);
                        result = sub_10007676C(v70, v71);
                        *a3 = vuzp1_s8(v87, v87).u32[0];
                        *(a3 + 4) = v27;
                        *(a3 + 6) = v28;
                        *(a3 + 8) = v92;
                        *(a3 + 16) = v86;
                        *(a3 + 24) = v83;
                        return result;
                      }

                      __break(1u);
                    }

                    else if (!v72)
                    {
                      v93[0] = v68;
                      LOWORD(v93[1]) = v69;
                      BYTE2(v93[1]) = BYTE2(v69);
                      BYTE3(v93[1]) = BYTE3(v69);
                      BYTE4(v93[1]) = BYTE4(v69);
                      BYTE5(v93[1]) = BYTE5(v69);
LABEL_74:
                      v82 = v93;
                      v81 = v48;
                      goto LABEL_75;
                    }

                    if (v70 <= v70 >> 32)
                    {
                      v78 = __DataStorage._bytes.getter();
                      if (!v78)
                      {
LABEL_105:
                        result = __DataStorage._length.getter();
LABEL_106:
                        __break(1u);
                        return result;
                      }

                      v79 = v78;
                      v80 = __DataStorage._offset.getter();
                      if (!__OFSUB__(v70, v80))
                      {
                        v77 = (v70 - v80 + v79);
                        result = __DataStorage._length.getter();
                        if (v77)
                        {
                          goto LABEL_72;
                        }

                        goto LABEL_106;
                      }

                      goto LABEL_91;
                    }

                    __break(1u);
LABEL_90:
                    __break(1u);
LABEL_91:
                    __break(1u);
                    goto LABEL_92;
                  }

                  goto LABEL_39;
                }

                goto LABEL_85;
              }

              v84 = v52;
              if (v53 > v53 >> 32)
              {
LABEL_86:
                __break(1u);
LABEL_87:
                __break(1u);
                goto LABEL_88;
              }

              v63 = __DataStorage._bytes.getter();
              if (!v63)
              {
LABEL_102:
                __DataStorage._length.getter();
                __break(1u);
                goto LABEL_103;
              }

              v64 = v63;
              v65 = __DataStorage._offset.getter();
              if (__OFSUB__(v55, v65))
              {
LABEL_88:
                __break(1u);
              }

              v62 = (v55 - v65 + v64);
              __DataStorage._length.getter();
              if (!v62)
              {
LABEL_103:
                __break(1u);
LABEL_104:
                __DataStorage._length.getter();
                __break(1u);
                goto LABEL_105;
              }
            }

            v66 = sub_10010A954(v62, 1);
            sub_10007676C(v55, v56);
            v52 = v84;
            goto LABEL_57;
          }

          goto LABEL_81;
        }

LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      if (v32 > v32 >> 32)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v42 = __DataStorage._bytes.getter();
      if (!v42)
      {
LABEL_98:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_99;
      }

      v43 = v42;
      v44 = __DataStorage._offset.getter();
      if (__OFSUB__(v34, v44))
      {
        goto LABEL_84;
      }

      v41 = (v34 - v44 + v43);
      __DataStorage._length.getter();
      if (!v41)
      {
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }
    }

    v45 = v41;
    goto LABEL_35;
  }

LABEL_40:
  sub_10000CA2C();
  swift_allocError();
  *v51 = 57;
  *(v51 + 8) = 0;
  *(v51 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

void sub_1000E0140(uint64_t a1)
{
  v3 = sub_100065580(*v1 | (*(v1 + 2) << 32) | (*(v1 + 6) << 48));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v14);
      AnyHashable.hash(into:)();
      sub_10001E070(v14);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 1), *(v1 + 8));
  v6 = *(v1 + 3);
  v7 = *(v6 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      Hasher._combine(_:)(v9);
      --v7;
    }

    while (v7);
  }

  Hasher._combine(_:)(*(v1 + 16));
  v10 = *(v1 + 5);
  v11 = *(v10 + 16);
  Hasher._combine(_:)(v11);
  if (v11)
  {
    v12 = (v10 + 32);
    do
    {
      v13 = *v12++;
      Hasher._combine(_:)(v13);
      --v11;
    }

    while (v11);
  }
}

Swift::Int sub_1000E0250()
{
  Hasher.init(_seed:)();
  sub_1000E0140(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000E0294()
{
  Hasher.init(_seed:)();
  sub_1000E0140(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000E02D0(unsigned int *a1, unsigned int *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a1 + 3);
  v14 = *(a1 + 16);
  v13 = *(a1 + 5);
  v6 = *(a2 + 1);
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  v9 = *(a2 + 3);
  v10 = *(a2 + 16);
  v11 = *(a2 + 5);
  if ((sub_10006D244(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48), *a2 | (*(a2 + 2) << 32) | (*(a2 + 6) << 48)) & 1) == 0 || !_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v2, v3 | (v4 << 8), v6, v7 | (v8 << 8)) || (sub_1000E48EC(v5, v9) & 1) == 0 || v14 != v10)
  {
    return 0;
  }

  return sub_1000EFF58(v13, v11);
}

uint64_t sub_1000E03F0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_38;
  }

  result = sub_1000D5D10(a1, a2, 7);
  if (v3)
  {
    return result;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_1001128D0(a1, 7);
  v14 = v12;
  v15 = v13;
  v16 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v70, 0, 14);
      goto LABEL_17;
    }

    v17 = *(v12 + 16);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = v18;
      v20 = __DataStorage._offset.getter();
      if (__OFSUB__(v17, v20))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v21 = (v17 - v20 + v19);
      __DataStorage._length.getter();
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_70;
  }

  if (v16)
  {
    if (v12 > v12 >> 32)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v22 = __DataStorage._bytes.getter();
    if (v22)
    {
      v23 = v22;
      v24 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v24))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v21 = (v14 - v24 + v23);
      __DataStorage._length.getter();
      if (v21)
      {
LABEL_15:
        v25 = v21;
        goto LABEL_18;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_70:
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_71;
  }

  v70[0] = v12;
  LOWORD(v70[1]) = v13;
  BYTE2(v70[1]) = BYTE2(v13);
  BYTE3(v70[1]) = BYTE3(v13);
  BYTE4(v70[1]) = BYTE4(v13);
  BYTE5(v70[1]) = BYTE5(v13);
LABEL_17:
  v25 = v70;
LABEL_18:
  v26 = sub_10010C084(v25, 1);
  sub_10007676C(v14, v15);
  if (!v26[2])
  {
    __break(1u);
    goto LABEL_58;
  }

  v4.i32[0] = *(v26 + 8);
  v27 = *(v26 + 18);
  v28 = *(v26 + 38);

  if (v10)
  {
    sub_1000D5D10(v10, v11, v28);
    v30 = v29;
    v68 = v31;
    v32 = sub_1001128D0(v10, v28);
    v34 = v32;
    v35 = v33;
    v36 = v33 >> 62;
    if ((v33 >> 62) <= 1)
    {
      if (!v36)
      {
        v70[0] = v32;
        LOWORD(v70[1]) = v33;
        BYTE2(v70[1]) = BYTE2(v33);
        BYTE3(v70[1]) = BYTE3(v33);
        BYTE4(v70[1]) = BYTE4(v33);
        BYTE5(v70[1]) = BYTE5(v33);
LABEL_34:
        v45 = v70;
        goto LABEL_35;
      }

      if (v32 <= v32 >> 32)
      {
        v42 = __DataStorage._bytes.getter();
        if (v42)
        {
          v43 = v42;
          v44 = __DataStorage._offset.getter();
          if (!__OFSUB__(v34, v44))
          {
            v41 = (v34 - v44 + v43);
            __DataStorage._length.getter();
            if (v41)
            {
              goto LABEL_32;
            }

LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_74:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_75;
      }

      goto LABEL_61;
    }

    if (v36 != 2)
    {
      memset(v70, 0, 14);
      goto LABEL_34;
    }

    v66 = v27;
    v37 = *(v32 + 16);
    v38 = __DataStorage._bytes.getter();
    if (v38)
    {
      v39 = v38;
      v40 = __DataStorage._offset.getter();
      if (__OFSUB__(v37, v40))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v41 = (v37 - v40 + v39);
      __DataStorage._length.getter();
      v27 = v66;
      if (v41)
      {
LABEL_32:
        v45 = v41;
LABEL_35:
        v46 = sub_10010AC70(v45, v28);
        sub_10007676C(v34, v35);
        if (v30)
        {
          sub_1000D5D10(v30, v68, 8);
          v48 = sub_1001128D0(v30, 8);
          v50 = v48;
          v51 = v49;
          v52 = v49 >> 62;
          if ((v49 >> 62) <= 1)
          {
            if (!v52)
            {
              v70[0] = v48;
              LOWORD(v70[1]) = v49;
              BYTE2(v70[1]) = BYTE2(v49);
              BYTE3(v70[1]) = BYTE3(v49);
              BYTE4(v70[1]) = BYTE4(v49);
              BYTE5(v70[1]) = BYTE5(v49);
LABEL_54:
              v61 = v70;
LABEL_55:
              v62 = sub_10010BF80(v61, 1);
              sub_10007676C(v50, v51);
              if (v62[2])
              {
                v69 = vmovl_u8(v4).u64[0];
                v63 = *(v62 + 16);
                v64 = *(v62 + 34);
                v65 = *(v62 + 19);

                *a3 = vuzp1_s8(v69, v69).u32[0];
                *(a3 + 4) = v27;
                *(a3 + 6) = v28;
                *(a3 + 8) = v46;
                *(a3 + 16) = v63;
                *(a3 + 18) = v64;
                *(a3 + 22) = v65;
                return result;
              }

              goto LABEL_64;
            }

            if (v48 > v48 >> 32)
            {
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v58 = __DataStorage._bytes.getter();
            if (v58)
            {
              v59 = v58;
              v60 = __DataStorage._offset.getter();
              if (__OFSUB__(v50, v60))
              {
                goto LABEL_67;
              }

              v57 = (v50 - v60 + v59);
              result = __DataStorage._length.getter();
              if (v57)
              {
LABEL_52:
                v61 = v57;
                goto LABEL_55;
              }

              goto LABEL_79;
            }

LABEL_78:
            result = __DataStorage._length.getter();
            __break(1u);
LABEL_79:
            __break(1u);
            return result;
          }

          if (v52 != 2)
          {
            memset(v70, 0, 14);
            goto LABEL_54;
          }

          v67 = v27;
          v53 = *(v48 + 16);
          v54 = __DataStorage._bytes.getter();
          if (v54)
          {
            v55 = v54;
            v56 = __DataStorage._offset.getter();
            if (__OFSUB__(v53, v56))
            {
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v57 = (v53 - v56 + v55);
            __DataStorage._length.getter();
            v27 = v67;
            if (v57)
            {
              goto LABEL_52;
            }

            goto LABEL_77;
          }

LABEL_76:
          __DataStorage._length.getter();
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        goto LABEL_38;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_72:
    __DataStorage._length.getter();
    goto LABEL_73;
  }

LABEL_38:
  sub_10000CA2C();
  swift_allocError();
  *v47 = 57;
  *(v47 + 8) = 0;
  *(v47 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

void sub_1000E09EC(uint64_t a1)
{
  v3 = sub_100066DE8(*v1 | (*(v1 + 2) << 32) | (*(v1 + 6) << 48));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v13);
      AnyHashable.hash(into:)();
      sub_10001E070(v13);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  v6 = sub_100062F5C(*(v1 + 7));
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      sub_10001EDEC(v8, v13);
      AnyHashable.hash(into:)();
      sub_10001E070(v13);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 2), *(v1 + 12));
  v9 = *(v1 + 4);
  v10 = *(v9 + 16);
  Hasher._combine(_:)(v10);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      v12 = *v11++;
      Hasher._combine(_:)(v12);
      --v10;
    }

    while (v10);
  }
}

Swift::Int sub_1000E0B10()
{
  v1 = v0;
  v2 = *(v0 + 2);
  v3 = *(v1 + 6);
  v4 = *v1;
  Hasher.init(_seed:)();
  v5 = sub_100066DE8(v4 | (v2 << 32) | (v3 << 48));
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v16);
      AnyHashable.hash(into:)();
      sub_10001E070(v16);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  v8 = sub_100062F5C(*(v1 + 7));
  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      sub_10001EDEC(v10, v16);
      AnyHashable.hash(into:)();
      sub_10001E070(v16);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  v11 = *(v1 + 4);
  USBDescriptor.hash(into:)(v17, *(v1 + 2), *(v1 + 12));
  v12 = *(v11 + 16);
  Hasher._combine(_:)(v12);
  if (v12)
  {
    v13 = (v11 + 32);
    do
    {
      v14 = *v13++;
      Hasher._combine(_:)(v14);
      --v12;
    }

    while (v12);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000E0C4C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 6);
  v3 = *(v0 + 7);
  v4 = *(v0 + 9);
  v5 = *(v0 + 13);
  v20 = *(v0 + 2);
  v6 = *(v0 + 24);
  v7 = *(v0 + 25);
  v8 = *(v0 + 4);
  v9 = *v0;
  Hasher.init(_seed:)();
  v10 = sub_100066DE8(v9 | (v1 << 32) | (v2 << 48));
  v11 = *(v10 + 2);
  if (v11)
  {
    v12 = (v10 + 32);
    do
    {
      sub_10001EDEC(v12, v21);
      AnyHashable.hash(into:)();
      sub_10001E070(v21);
      v12 += 40;
      --v11;
    }

    while (v11);
  }

  v13 = sub_100062F5C(v3 | (v4 << 16) | (v5 << 48));
  v14 = *(v13 + 2);
  if (v14)
  {
    v15 = (v13 + 32);
    do
    {
      sub_10001EDEC(v15, v21);
      AnyHashable.hash(into:)();
      sub_10001E070(v21);
      v15 += 40;
      --v14;
    }

    while (v14);
  }

  USBDescriptor.hash(into:)(v22, v20, v6 | (v7 << 8));
  Hasher._combine(_:)(*(v8 + 16));
  v16 = *(v8 + 16);
  if (v16)
  {
    v17 = (v8 + 32);
    do
    {
      v18 = *v17++;
      Hasher._combine(_:)(v18);
      --v16;
    }

    while (v16);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000E0DA8(unsigned int *a1, unsigned int *a2)
{
  v2 = *(a1 + 7);
  v3 = *(a1 + 9);
  v4 = *(a1 + 13);
  v16 = *(a1 + 2);
  v15 = *(a1 + 24);
  v5 = *(a1 + 25);
  v14 = *(a1 + 4);
  v6 = *(a2 + 7);
  v7 = *(a2 + 9);
  v8 = *(a2 + 13);
  v9 = *(a2 + 2);
  v10 = *(a2 + 24);
  v11 = *(a2 + 25);
  v13 = *(a2 + 4);
  if ((sub_10006DE00(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48), *a2 | (*(a2 + 2) << 32) | (*(a2 + 6) << 48)) & 1) == 0 || (sub_10006C5E4(v2 | (v3 << 16) | (v4 << 48), v6 | (v7 << 16) | (v8 << 48)) & 1) == 0 || !_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v16, v15 | (v5 << 8), v9, v10 | (v11 << 8)))
  {
    return 0;
  }

  return sub_1000E48EC(v14, v13);
}

uint64_t sub_1000E0ED4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    sub_10000CA2C();
    swift_allocError();
    *v12 = 57;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  result = sub_1000D5D10(a1, a2, 12);
  if (!v3)
  {
    v7 = sub_1001128D0(a1, 12);
    v9 = v7;
    v10 = v8;
    v11 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v11 != 2)
      {
        memset(v23, 0, 14);
        goto LABEL_18;
      }

      v13 = *(v7 + 16);
      v14 = __DataStorage._bytes.getter();
      if (v14)
      {
        v15 = v14;
        v16 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v16))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
        }

        v17 = (v13 - v16 + v15);
        __DataStorage._length.getter();
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        __DataStorage._length.getter();
      }

      __break(1u);
    }

    else
    {
      if (!v11)
      {
        v23[0] = v7;
        LOWORD(v23[1]) = v8;
        BYTE2(v23[1]) = BYTE2(v8);
        BYTE3(v23[1]) = BYTE3(v8);
        BYTE4(v23[1]) = BYTE4(v8);
        BYTE5(v23[1]) = BYTE5(v8);
LABEL_18:
        v21 = v23;
        goto LABEL_19;
      }

      if (v7 > v7 >> 32)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v18 = __DataStorage._bytes.getter();
      if (v18)
      {
        v19 = v18;
        v20 = __DataStorage._offset.getter();
        if (__OFSUB__(v9, v20))
        {
          goto LABEL_25;
        }

        v17 = (v9 - v20 + v19);
        result = __DataStorage._length.getter();
        if (v17)
        {
LABEL_16:
          v21 = v17;
LABEL_19:
          v22 = sub_10010C0B0(v21, 1);
          sub_10007676C(v9, v10);
          if (v22[2])
          {
            v23[0] = v22[4];
            LODWORD(v23[1]) = *(v22 + 10);

            *a3 = v23[0];
            *(a3 + 8) = v23[1];
            return result;
          }

          __break(1u);
          goto LABEL_23;
        }

LABEL_29:
        __break(1u);
        return result;
      }
    }

    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1000E1134@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t (*a4)(void *, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  if (!a1)
  {
    goto LABEL_38;
  }

  result = sub_1000D5D10(a1, a2, 5);
  if (v5)
  {
    return result;
  }

  v12 = v10;
  v13 = v11;
  v14 = sub_1001128D0(a1, 5);
  v16 = v14;
  v17 = v15;
  v18 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v18 != 2)
    {
      memset(v71, 0, 14);
      goto LABEL_17;
    }

    v19 = *(v14 + 16);
    v20 = __DataStorage._bytes.getter();
    if (v20)
    {
      v21 = v20;
      v22 = __DataStorage._offset.getter();
      if (__OFSUB__(v19, v22))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v23 = (v19 - v22 + v21);
      __DataStorage._length.getter();
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_70;
  }

  if (v18)
  {
    if (v14 > v14 >> 32)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v24 = __DataStorage._bytes.getter();
    if (v24)
    {
      v25 = v24;
      v26 = __DataStorage._offset.getter();
      if (__OFSUB__(v16, v26))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v23 = (v16 - v26 + v25);
      __DataStorage._length.getter();
      if (v23)
      {
LABEL_15:
        v27 = v23;
        goto LABEL_18;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_70:
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_71;
  }

  v71[0] = v14;
  LOWORD(v71[1]) = v15;
  BYTE2(v71[1]) = BYTE2(v15);
  BYTE3(v71[1]) = BYTE3(v15);
  BYTE4(v71[1]) = BYTE4(v15);
  BYTE5(v71[1]) = BYTE5(v15);
LABEL_17:
  v27 = v71;
LABEL_18:
  v28 = a3(v27, 1);
  sub_10007676C(v16, v17);
  if (!*(v28 + 16))
  {
    __break(1u);
    goto LABEL_58;
  }

  v6.i32[0] = *(v28 + 32);
  v29 = *(v28 + 36);

  if (v12)
  {
    sub_1000D5D10(v12, v13, v29);
    v31 = v30;
    v33 = v32;
    v34 = sub_1001128D0(v12, v29);
    v36 = v34;
    v37 = v35;
    v38 = v35 >> 62;
    if ((v35 >> 62) <= 1)
    {
      if (!v38)
      {
        v71[0] = v34;
        LOWORD(v71[1]) = v35;
        BYTE2(v71[1]) = BYTE2(v35);
        BYTE3(v71[1]) = BYTE3(v35);
        BYTE4(v71[1]) = BYTE4(v35);
        BYTE5(v71[1]) = BYTE5(v35);
LABEL_34:
        v47 = v71;
        goto LABEL_35;
      }

      if (v34 <= v34 >> 32)
      {
        v44 = __DataStorage._bytes.getter();
        if (v44)
        {
          v45 = v44;
          v46 = __DataStorage._offset.getter();
          if (!__OFSUB__(v36, v46))
          {
            v43 = (v36 - v46 + v45);
            __DataStorage._length.getter();
            if (v43)
            {
              goto LABEL_32;
            }

LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_74:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_75;
      }

      goto LABEL_61;
    }

    if (v38 != 2)
    {
      memset(v71, 0, 14);
      goto LABEL_34;
    }

    v39 = *(v34 + 16);
    v40 = __DataStorage._bytes.getter();
    if (v40)
    {
      v41 = v40;
      v42 = __DataStorage._offset.getter();
      if (__OFSUB__(v39, v42))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v43 = (v39 - v42 + v41);
      __DataStorage._length.getter();
      if (v43)
      {
LABEL_32:
        v47 = v43;
LABEL_35:
        v48 = sub_10010AC70(v47, v29);
        sub_10007676C(v36, v37);
        if (v31)
        {
          sub_1000D5D10(v31, v33, 6);
          v50 = sub_1001128D0(v31, 6);
          v52 = v50;
          v53 = v51;
          v54 = v51 >> 62;
          if ((v51 >> 62) <= 1)
          {
            v55 = a4;
            if (!v54)
            {
              v71[0] = v50;
              LOWORD(v71[1]) = v51;
              BYTE2(v71[1]) = BYTE2(v51);
              BYTE3(v71[1]) = BYTE3(v51);
              BYTE4(v71[1]) = BYTE4(v51);
              BYTE5(v71[1]) = BYTE5(v51);
              v56 = v71;
              goto LABEL_55;
            }

            if (v50 > v50 >> 32)
            {
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v62 = __DataStorage._bytes.getter();
            if (v62)
            {
              v63 = v62;
              v64 = __DataStorage._offset.getter();
              if (__OFSUB__(v52, v64))
              {
                goto LABEL_67;
              }

              v61 = (v52 - v64 + v63);
              result = __DataStorage._length.getter();
              if (v61)
              {
LABEL_52:
                v56 = v61;
LABEL_54:
                v55 = a4;
LABEL_55:
                v65 = v55(v56, 1);
                sub_10007676C(v52, v53);
                if (*(v65 + 16))
                {
                  v70 = vmovl_u8(v6).u64[0];
                  v66 = *(v65 + 32);
                  v67 = *(v65 + 36);

                  *a5 = vuzp1_s8(v70, v70).u32[0];
                  *(a5 + 4) = v29;
                  *(a5 + 8) = v48;
                  *(a5 + 16) = v66;
                  *(a5 + 20) = v67;
                  return result;
                }

                goto LABEL_64;
              }

              goto LABEL_79;
            }

LABEL_78:
            result = __DataStorage._length.getter();
            __break(1u);
LABEL_79:
            __break(1u);
            return result;
          }

          if (v54 != 2)
          {
            memset(v71, 0, 14);
            v56 = v71;
            goto LABEL_54;
          }

          v57 = *(v50 + 16);
          v58 = __DataStorage._bytes.getter();
          if (v58)
          {
            v59 = v58;
            v60 = __DataStorage._offset.getter();
            if (__OFSUB__(v57, v60))
            {
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v61 = (v57 - v60 + v59);
            __DataStorage._length.getter();
            if (v61)
            {
              goto LABEL_52;
            }

            goto LABEL_77;
          }

LABEL_76:
          __DataStorage._length.getter();
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        goto LABEL_38;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_72:
    __DataStorage._length.getter();
    goto LABEL_73;
  }

LABEL_38:
  sub_10000CA2C();
  swift_allocError();
  *v49 = 57;
  *(v49 + 8) = 0;
  *(v49 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

void sub_1000E1724(uint64_t a1, uint64_t (*a2)(unint64_t), uint64_t (*a3)(unint64_t))
{
  v6 = a2(*v3 | (*(v3 + 1) << 8));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;
    do
    {
      sub_10001EDEC(v8, v16);
      AnyHashable.hash(into:)();
      sub_10001E070(v16);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  v9 = a3(*(v3 + 5) | (*(v3 + 9) << 32));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;
    do
    {
      sub_10001EDEC(v11, v16);
      AnyHashable.hash(into:)();
      sub_10001E070(v16);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  USBDescriptor.hash(into:)(a1, *(v3 + 2), *(v3 + 12));
  v12 = *(v3 + 4);
  v13 = *(v12 + 16);
  Hasher._combine(_:)(v13);
  if (v13)
  {
    v14 = (v12 + 32);
    do
    {
      v15 = *v14++;
      Hasher._combine(_:)(v15);
      --v13;
    }

    while (v13);
  }
}

Swift::Int sub_1000E185C(uint64_t (*a1)(uint64_t), uint64_t (*a2)(unint64_t))
{
  v5 = v2;
  v6 = *v2;
  v7 = *(v5 + 1);
  Hasher.init(_seed:)();
  v8 = a1(v6 | (v7 << 8));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    do
    {
      sub_10001EDEC(v10, v19);
      AnyHashable.hash(into:)();
      sub_10001E070(v19);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  v11 = a2(*(v5 + 5) | (*(v5 + 9) << 32));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 32;
    do
    {
      sub_10001EDEC(v13, v19);
      AnyHashable.hash(into:)();
      sub_10001E070(v19);
      v13 += 40;
      --v12;
    }

    while (v12);
  }

  v14 = *(v5 + 4);
  USBDescriptor.hash(into:)(v20, *(v5 + 2), *(v5 + 12));
  v15 = *(v14 + 16);
  Hasher._combine(_:)(v15);
  if (v15)
  {
    v16 = (v14 + 32);
    do
    {
      v17 = *v16++;
      Hasher._combine(_:)(v17);
      --v15;
    }

    while (v15);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000E1A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v8 = *v5;
  v9 = *(v5 + 1);
  v10 = *(v5 + 5);
  v11 = *(v5 + 9);
  v25 = *(v5 + 2);
  v12 = v5[24];
  v13 = v5[25];
  v14 = *(v5 + 4);
  Hasher.init(_seed:)();
  v15 = a4(v8 | (v9 << 8));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + 32;
    do
    {
      sub_10001EDEC(v17, v26);
      AnyHashable.hash(into:)();
      sub_10001E070(v26);
      v17 += 40;
      --v16;
    }

    while (v16);
  }

  v18 = a5(v10 | (v11 << 32));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + 32;
    do
    {
      sub_10001EDEC(v20, v26);
      AnyHashable.hash(into:)();
      sub_10001E070(v26);
      v20 += 40;
      --v19;
    }

    while (v19);
  }

  USBDescriptor.hash(into:)(v27, v25, v12 | (v13 << 8));
  Hasher._combine(_:)(*(v14 + 16));
  v21 = *(v14 + 16);
  if (v21)
  {
    v22 = (v14 + 32);
    do
    {
      v23 = *v22++;
      Hasher._combine(_:)(v23);
      --v21;
    }

    while (v21);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000E1BD4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t, unint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = *(a1 + 5);
  v8 = *(a1 + 9);
  v9 = a1[24];
  v10 = a1[25];
  v18 = *(a1 + 4);
  v19 = *(a1 + 2);
  v11 = *(a2 + 5);
  v12 = *(a2 + 9);
  v13 = *(a2 + 2);
  v14 = a2[24];
  v15 = a2[25];
  v17 = *(a2 + 4);
  if ((a5(*a1 | (*(a1 + 1) << 8), *a2 | (*(a2 + 1) << 8)) & 1) == 0 || (a6(v7 | (v8 << 32), v11 | (v12 << 32)) & 1) == 0 || !_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v19, v9 | (v10 << 8), v13, v14 | (v15 << 8)))
  {
    return 0;
  }

  return sub_1000E48EC(v18, v17);
}

uint64_t sub_1000E1CE0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    sub_10000CA2C();
    swift_allocError();
    *v12 = 57;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  result = sub_1000D5D10(a1, a2, 11);
  if (!v3)
  {
    v7 = sub_1001128D0(a1, 11);
    v9 = v7;
    v10 = v8;
    v11 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v11 != 2)
      {
        memset(v27, 0, 14);
        goto LABEL_18;
      }

      v13 = *(v7 + 16);
      v14 = __DataStorage._bytes.getter();
      if (v14)
      {
        v15 = v14;
        v16 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v16))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
        }

        v17 = (v13 - v16 + v15);
        __DataStorage._length.getter();
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        __DataStorage._length.getter();
      }

      __break(1u);
    }

    else
    {
      if (!v11)
      {
        v27[0] = v7;
        LOWORD(v27[1]) = v8;
        BYTE2(v27[1]) = BYTE2(v8);
        BYTE3(v27[1]) = BYTE3(v8);
        BYTE4(v27[1]) = BYTE4(v8);
        BYTE5(v27[1]) = BYTE5(v8);
LABEL_18:
        v21 = v27;
        goto LABEL_19;
      }

      if (v7 > v7 >> 32)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v18 = __DataStorage._bytes.getter();
      if (v18)
      {
        v19 = v18;
        v20 = __DataStorage._offset.getter();
        if (__OFSUB__(v9, v20))
        {
          goto LABEL_25;
        }

        v17 = (v9 - v20 + v19);
        result = __DataStorage._length.getter();
        if (v17)
        {
LABEL_16:
          v21 = v17;
LABEL_19:
          v22 = sub_10010C304(v21, 1);
          sub_10007676C(v9, v10);
          if (v22[2])
          {
            v23 = *(v22 + 36);
            v24 = *(v22 + 37);
            v25 = *(v22 + 41);
            v26 = *(v22 + 8);

            *a3 = v26;
            *(a3 + 4) = v23;
            *(a3 + 5) = v24;
            *(a3 + 9) = v25;
            return result;
          }

          __break(1u);
          goto LABEL_23;
        }

LABEL_29:
        __break(1u);
        return result;
      }
    }

    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_29;
  }

  return result;
}