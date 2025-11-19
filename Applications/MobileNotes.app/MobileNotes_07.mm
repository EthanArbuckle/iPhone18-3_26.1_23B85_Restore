uint64_t sub_10019D3FC()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_10019D518;
  }

  else
  {

    v2 = sub_10019D61C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019D518()
{
  v1 = v0[30];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];

  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10019D61C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[13];
  v5 = v0[14];

  sub_10019E468(v4, v5, type metadata accessor for FolderEntity);
  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_10019D70C;
  v7 = v0[11];
  v8 = v0[6];

  return FolderEntity.displayRepresentation(with:)(v7, v8);
}

uint64_t sub_10019D70C()
{

  return _swift_task_switch(sub_10019D808, 0, 0);
}

uint64_t sub_10019D808()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 176);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1002E5ED4(v8, v4, isUniquelyReferenced_nonNull_native);

  sub_10019E4D0(v7, type metadata accessor for FolderEntity);
  (*(v6 + 8))(v4, v5);
  v10 = *(v0 + 184) + 1;
  if (v10 == *(v0 + 152))
  {

    v11 = *(v0 + 8);

    return v11(v3);
  }

  else
  {
    *(v0 + 176) = v3;
    *(v0 + 184) = v10;
    v13 = *(v0 + 168);
    v14 = *(v0 + 144);
    v15 = *(v0 + 120);
    v16 = *(v0 + 40) + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + *(v0 + 160) * v10;
    v17 = (*(v0 + 128) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 192) = v3;
    *(v0 + 200) = v17;
    v13(v14, v16, v15);
    AppDependency.wrappedValue.getter();
    v18 = *(v0 + 16);
    *(v0 + 208) = v18;
    v19 = swift_task_alloc();
    *(v0 + 216) = v19;
    *v19 = v0;
    v19[1] = sub_10019CCBC;
    v20 = *(v0 + 144);

    return sub_100473598(v20, v18);
  }
}

void *sub_10019DA38(void *a1)
{
  if (_swiftEmptyArrayStorage >> 62)
  {
    v9 = a1;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100456174(_swiftEmptyArrayStorage);
      v1 = v10;
    }

    else
    {
      v1 = &_swiftEmptySetSingleton;
    }

    v15 = v1;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100456174(_swiftEmptyArrayStorage);
      v2 = v11;
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }

    a1 = v9;
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
    v15 = &_swiftEmptySetSingleton;
    v2 = &_swiftEmptySetSingleton;
  }

  v14 = v2;
  v3 = [a1 itemIdentifiers];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_10000A2A0(v6, v13);
      sub_1000054A4(0, &qword_1006BFEC0);
      if (swift_dynamicCast())
      {
        v7 = v12;
        if ([v12 ic_isModernFolderType] || objc_msgSend(v7, "ic_isLegacyFolderType"))
        {
          sub_100264974(&v12, v7);
        }

        else
        {
        }
      }

      v6 += 32;
      --v5;
    }

    while (v5);

    return v15;
  }

  else
  {
  }

  return v1;
}

uint64_t sub_10019DC14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*(v1 + 33))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | *(v1 + 32);
  if (*(v1 + 34))
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  if (*(v1 + 35))
  {
    v9 = 0x1000000;
  }

  else
  {
    v9 = 0;
  }

  v10 = v8 | v9;
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10000A1FC;

  return sub_100199C80(a1, v4, v5, v7 | v10, v11, v12, v13);
}

uint64_t sub_10019DD24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*(v1 + 33))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | *(v1 + 32);
  if (*(v1 + 34))
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  if (*(v1 + 35))
  {
    v9 = 0x1000000;
  }

  else
  {
    v9 = 0;
  }

  v10 = v8 | v9;
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10000A600;

  return sub_100199E6C(a1, v4, v5, v7 | v10, v11, v12, v13);
}

uint64_t sub_10019DE34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*(v1 + 33))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | *(v1 + 32);
  if (*(v1 + 34))
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  if (*(v1 + 35))
  {
    v9 = 0x1000000;
  }

  else
  {
    v9 = 0;
  }

  v10 = v8 | v9;
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10000A1FC;

  return sub_100199C80(a1, v4, v5, v7 | v10, v11, v12, v13);
}

uint64_t sub_10019DF44()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10019DF9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*(v1 + 33))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | *(v1 + 32);
  if (*(v1 + 34))
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  if (*(v1 + 35))
  {
    v9 = 0x1000000;
  }

  else
  {
    v9 = 0;
  }

  v10 = v8 | v9;
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10000A1FC;

  return sub_10019C238(a1, v4, v5, v7 | v10, v11, v12, v13);
}

unint64_t sub_10019E0AC()
{
  result = qword_1006BE760;
  if (!qword_1006BE760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE760);
  }

  return result;
}

unint64_t sub_10019E104()
{
  result = qword_1006BDFD0;
  if (!qword_1006BDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BDFD0);
  }

  return result;
}

unint64_t sub_10019E15C()
{
  result = qword_1006BDFD8;
  if (!qword_1006BDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BDFD8);
  }

  return result;
}

unint64_t sub_10019E1FC()
{
  result = qword_1006BDFE0;
  if (!qword_1006BDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BDFE0);
  }

  return result;
}

unint64_t sub_10019E29C()
{
  result = qword_1006BDFE8;
  if (!qword_1006BDFE8)
  {
    sub_10017992C(&qword_1006BDFF0);
    sub_10001DE58(&qword_1006C5420, type metadata accessor for FolderEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BDFE8);
  }

  return result;
}

__n128 sub_10019E354(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_10019E368(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_10019E3B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10019E400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10019E468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10019E4D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10019E538(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v2[12] = type metadata accessor for FolderEntity();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10019E5E4, 0, 0);
}

uint64_t sub_10019E5E4()
{
  v0[7] = &_swiftEmptySetSingleton;
  v1 = v0[10];
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006BFEC0);
    sub_100005B0C(&qword_1006C63A0, &qword_1006BFEC0);
    Set.Iterator.init(_cocoa:)();
    v5 = v0[2];
    v6 = v0[3];
    v8 = v0[4];
    v7 = v0[5];
    v9 = v0[6];
  }

  else
  {
    v10 = -1 << *(v1 + 32);
    v6 = v1 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v1 + 56);

    v7 = 0;
  }

  v0[16] = v5;
  v0[17] = v6;
  v0[19] = v7;
  v0[20] = v9;
  v0[18] = v8;
  if (v5 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18)
    {
      goto LABEL_20;
    }

    v0[9] = v18;
    sub_1000054A4(0, &qword_1006BFEC0);
    swift_dynamicCast();
    v17 = v0[8];
    v14 = v7;
    v16 = v9;
  }

  else
  {
    v13 = v9;
    v14 = v7;
    if (!v9)
    {
      v15 = v7;
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v14 >= ((v8 + 64) >> 6))
        {
          goto LABEL_20;
        }

        v13 = *(v6 + 8 * v14);
        ++v15;
        if (v13)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      return NSManagedObjectContext.perform<A>(_:)(v5, v2, v3, v4);
    }

LABEL_13:
    v16 = (v13 - 1) & v13;
    v17 = *(*(v5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
  }

  v0[22] = v14;
  v0[23] = v16;
  v0[21] = v17;
  if (v17)
  {
    v19 = v0[11];
    v20 = swift_allocObject();
    v0[24] = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v17;
    v21 = v17;
    v22 = v19;
    v23 = swift_task_alloc();
    v0[25] = v23;
    *v23 = v0;
    v23[1] = sub_10019E8F4;
    v4 = v0[12];
    v5 = v0[13];
    v2 = sub_1001926B4;
    v3 = v20;

    return NSManagedObjectContext.perform<A>(_:)(v5, v2, v3, v4);
  }

LABEL_20:
  sub_10019E530();
  v24 = v0[7];

  v25 = v0[1];

  return v25(v24);
}

uint64_t sub_10019E8F4()
{
  *(*v1 + 208) = v0;

  if (v0)
  {

    v2 = sub_10019ECC8;
  }

  else
  {

    v2 = sub_10019EA24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019EA24()
{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  sub_10019E468(v4, v3, type metadata accessor for FolderEntity);
  sub_100264998(v2, v3);

  v5 = sub_10019E4D0(v2, type metadata accessor for FolderEntity);
  v9 = v0[22];
  v10 = v0[23];
  v0[19] = v9;
  v0[20] = v10;
  v11 = v0[16];
  if (v11 < 0)
  {
    v17 = __CocoaSet.Iterator.next()();
    if (!v17)
    {
      goto LABEL_14;
    }

    v0[9] = v17;
    sub_1000054A4(0, &qword_1006BFEC0);
    swift_dynamicCast();
    v16 = v0[8];
    v13 = v9;
    v15 = v10;
  }

  else
  {
    v12 = v10;
    v13 = v9;
    if (!v10)
    {
      v14 = v9;
      while (1)
      {
        v13 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v13 >= ((v0[18] + 64) >> 6))
        {
          goto LABEL_14;
        }

        v12 = *(v0[17] + 8 * v13);
        ++v14;
        if (v12)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      return NSManagedObjectContext.perform<A>(_:)(v5, v6, v7, v8);
    }

LABEL_7:
    v15 = (v12 - 1) & v12;
    v16 = *(*(v11 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
  }

  v0[22] = v13;
  v0[23] = v15;
  v0[21] = v16;
  if (v16)
  {
    v18 = v0[11];
    v19 = swift_allocObject();
    v0[24] = v19;
    *(v19 + 16) = v18;
    *(v19 + 24) = v16;
    v20 = v16;
    v21 = v18;
    v22 = swift_task_alloc();
    v0[25] = v22;
    *v22 = v0;
    v22[1] = sub_10019E8F4;
    v8 = v0[12];
    v5 = v0[13];
    v6 = sub_1001926B4;
    v7 = v19;

    return NSManagedObjectContext.perform<A>(_:)(v5, v6, v7, v8);
  }

LABEL_14:
  sub_10019E530();
  v23 = v0[7];

  v24 = v0[1];

  return v24(v23);
}

uint64_t sub_10019ECC8()
{
  v1 = *(v0 + 168);

  sub_10019E530();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019F108()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static DeleteChecklistItemsIntent.title);
  sub_10002597C(v6, static DeleteChecklistItemsIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t DeleteChecklistItemsIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC558 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static DeleteChecklistItemsIntent.title);
}

uint64_t static DeleteChecklistItemsIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC558 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static DeleteChecklistItemsIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static DeleteChecklistItemsIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static DeleteChecklistItemsIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006BE038);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006BE040);
  __chkstk_darwin(v1);
  sub_10019F8A4();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x74206574656C6544;
  v2._object = 0xEB00000000206568;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006BE050);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._object = 0x8000000100561920;
  v3._countAndFlagsBits = 0xD000000000000010;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t sub_10019F8A4()
{
  result = qword_1006BE048;
  if (!qword_1006BE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE048);
  }

  return result;
}

uint64_t (*DeleteChecklistItemsIntent.loggingConfiguration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t (*DeleteChecklistItemsIntent.entities.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t sub_10019FAAC(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A600;

  return DeleteChecklistItemsIntent.perform()(a1, v4, v5, v6);
}

uint64_t DeleteChecklistItemsIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = *(type metadata accessor for ChecklistItemEntity() - 8);
  v4[10] = v5;
  v4[11] = *(v5 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_10019FC34, 0, 0);
}

uint64_t sub_10019FC34()
{
  IntentParameter.wrappedValue.getter();
  v4 = *(v0 + 16);
  *(v0 + 112) = v4;
  v5 = v4[2];
  *(v0 + 120) = v5;
  if (v5)
  {
    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    *(v0 + 128) = 0;
    if (!v4[2])
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(_:)(v4, v1, v2, v3);
    }

    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    v10 = *(v0 + 64);
    v25 = *(v0 + 72);
    v11 = *(v0 + 56);
    v12 = *(v7 + 80);
    v13 = (v12 + 16) & ~v12;
    v14 = v6 + v13;
    *(v0 + 224) = v12;
    sub_1001A1A68(v4 + ((v12 + 32) & ~v12), v9);
    AppDependency.wrappedValue.getter();
    v15 = *(v0 + 32);
    *(v0 + 136) = [v15 modernManagedObjectContext];

    sub_1001A1A68(v9, v8);
    v16 = swift_allocObject();
    *(v0 + 144) = v16;
    sub_1001A1ACC(v8, v16 + v13);
    v17 = (v16 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v17 = v11;
    v17[1] = v10;
    v17[2] = v25;

    v18 = swift_task_alloc();
    *(v0 + 152) = v18;
    v3 = sub_10015DA04(&qword_1006BE058);
    *v18 = v0;
    v18[1] = sub_10019FF18;
    v1 = sub_1001A1B30;
    v4 = (v0 + 24);
    v2 = v16;
  }

  else
  {
    v19 = *(v0 + 64);
    v20 = *(v0 + 72);
    v21 = *(v0 + 56);

    AppDependency.wrappedValue.getter();
    v22 = *(v0 + 40);
    *(v0 + 192) = [v22 modernManagedObjectContext];

    v23 = swift_allocObject();
    *(v0 + 200) = v23;
    v23[2] = v21;
    v23[3] = v19;
    v23[4] = v20;

    v4 = swift_task_alloc();
    *(v0 + 208) = v4;
    *v4 = v0;
    v4[1] = sub_1001A08CC;
    v1 = sub_1001A1CC8;
    v3 = &type metadata for () + 8;
    v2 = v23;
  }

  return NSManagedObjectContext.perform<A>(_:)(v4, v1, v2, v3);
}

uint64_t sub_10019FF18()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 136);

    return _swift_task_switch(sub_1001A0058, 0, 0);
  }
}

uint64_t sub_1001A0058()
{
  v1 = *(v0 + 24);
  *(v0 + 160) = v1;
  if (!v1)
  {
    v15 = *(v0 + 104);
LABEL_7:
    v13 = sub_1001A1BFC(v15);
    goto LABEL_8;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v16 = *(v0 + 104);

    v15 = v16;
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v2 managedObjectContext];
  *(v0 + 168) = v4;
  if (v4)
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 96);
    sub_1001A1A68(*(v0 + 104), v6);
    v7 = (v5 + 24) & ~v5;
    v8 = swift_allocObject();
    *(v0 + 176) = v8;
    *(v8 + 16) = v3;
    sub_1001A1ACC(v6, v8 + v7);
    v9 = v1;
    v10 = swift_task_alloc();
    *(v0 + 184) = v10;
    v11 = sub_10015DA04(&qword_1006BE060);
    *v10 = v0;
    v10[1] = sub_1001A0490;
    v12 = sub_1001A1C58;
    v13 = (v0 + 228);
    v14 = v8;
    goto LABEL_12;
  }

  sub_1001A1BFC(*(v0 + 104));

LABEL_8:
  v17 = *(v0 + 128) + 1;
  if (v17 == *(v0 + 120))
  {
    v18 = *(v0 + 64);
    v19 = *(v0 + 72);
    v20 = *(v0 + 56);

    AppDependency.wrappedValue.getter();
    v21 = *(v0 + 40);
    *(v0 + 192) = [v21 modernManagedObjectContext];

    v22 = swift_allocObject();
    *(v0 + 200) = v22;
    v22[2] = v20;
    v22[3] = v18;
    v22[4] = v19;

    v13 = swift_task_alloc();
    *(v0 + 208) = v13;
    *v13 = v0;
    v13[1] = sub_1001A08CC;
    v12 = sub_1001A1CC8;
    v11 = &type metadata for () + 8;
    v14 = v22;
  }

  else
  {
    *(v0 + 128) = v17;
    v23 = *(v0 + 112);
    if (v17 >= *(v23 + 16))
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(_:)(v13, v12, v14, v11);
    }

    v24 = *(v0 + 96);
    v25 = *(v0 + 104);
    v26 = *(v0 + 80);
    v36 = *(v0 + 64);
    v37 = *(v0 + 72);
    v27 = *(v0 + 56);
    v28 = *(v26 + 80);
    v29 = (v28 + 16) & ~v28;
    v30 = *(v0 + 88) + v29;
    *(v0 + 224) = *(v26 + 80);
    sub_1001A1A68(v23 + ((v28 + 32) & ~v28) + *(v26 + 72) * v17, v25);
    AppDependency.wrappedValue.getter();
    v31 = *(v0 + 32);
    *(v0 + 136) = [v31 modernManagedObjectContext];

    sub_1001A1A68(v25, v24);
    v32 = swift_allocObject();
    *(v0 + 144) = v32;
    sub_1001A1ACC(v24, v32 + v29);
    v33 = (v32 + ((v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = v27;
    v33[1] = v36;
    v33[2] = v37;

    v34 = swift_task_alloc();
    *(v0 + 152) = v34;
    v11 = sub_10015DA04(&qword_1006BE058);
    *v34 = v0;
    v34[1] = sub_10019FF18;
    v12 = sub_1001A1B30;
    v13 = (v0 + 24);
    v14 = v32;
  }

LABEL_12:

  return NSManagedObjectContext.perform<A>(_:)(v13, v12, v14, v11);
}

uint64_t sub_1001A0490()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 168);

    return _swift_task_switch(sub_1001A05D0, 0, 0);
  }
}

uint64_t sub_1001A05D0()
{
  v1 = *(v0 + 104);

  v2 = sub_1001A1BFC(v1);
  v6 = *(v0 + 128) + 1;
  if (v6 == *(v0 + 120))
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    v9 = *(v0 + 56);

    AppDependency.wrappedValue.getter();
    v10 = *(v0 + 40);
    *(v0 + 192) = [v10 modernManagedObjectContext];

    v11 = swift_allocObject();
    *(v0 + 200) = v11;
    v11[2] = v9;
    v11[3] = v7;
    v11[4] = v8;

    v2 = swift_task_alloc();
    *(v0 + 208) = v2;
    *v2 = v0;
    v2[1] = sub_1001A08CC;
    v3 = sub_1001A1CC8;
    v5 = &type metadata for () + 8;
    v4 = v11;
  }

  else
  {
    *(v0 + 128) = v6;
    v12 = *(v0 + 112);
    if (v6 >= *(v12 + 16))
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(_:)(v2, v3, v4, v5);
    }

    v13 = *(v0 + 96);
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 64);
    v26 = *(v0 + 72);
    v17 = *(v0 + 56);
    v18 = *(v15 + 80);
    v19 = (v18 + 16) & ~v18;
    v20 = *(v0 + 88) + v19;
    *(v0 + 224) = *(v15 + 80);
    sub_1001A1A68(v12 + ((v18 + 32) & ~v18) + *(v15 + 72) * v6, v14);
    AppDependency.wrappedValue.getter();
    v21 = *(v0 + 32);
    *(v0 + 136) = [v21 modernManagedObjectContext];

    sub_1001A1A68(v14, v13);
    v22 = swift_allocObject();
    *(v0 + 144) = v22;
    sub_1001A1ACC(v13, v22 + v19);
    v23 = (v22 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v23 = v17;
    v23[1] = v16;
    v23[2] = v26;

    v24 = swift_task_alloc();
    *(v0 + 152) = v24;
    v5 = sub_10015DA04(&qword_1006BE058);
    *v24 = v0;
    v24[1] = sub_10019FF18;
    v3 = sub_1001A1B30;
    v2 = (v0 + 24);
    v4 = v22;
  }

  return NSManagedObjectContext.perform<A>(_:)(v2, v3, v4, v5);
}

uint64_t sub_1001A08CC()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1001A0A64;
  }

  else
  {
    v4 = *(v2 + 192);

    v3 = sub_1001A09EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001A09EC()
{
  static IntentResult.result<>()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A0A64()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001A0AE8@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes26DeleteChecklistItemsIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

id sub_1001A0B14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = type metadata accessor for ChecklistItemEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 textStorage];
  if (result && (v12 = result, v13 = ICTTAttributeNameParagraphStyle, aBlock[7] = v3, v14 = v13, v15 = [v12 ic_range], v24 = v16, v25 = v15, sub_1001A1A68(a2, &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0)), v17 = (*(v8 + 80) + 16) & ~*(v8 + 80), v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8, v19 = swift_allocObject(), sub_1001A1ACC(v10, v19 + v17), *(v19 + v18) = v12, *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1, v20 = swift_allocObject(), *(v20 + 16) = sub_1001A1E84, *(v20 + 24) = v19, aBlock[4] = sub_1001A1F54, aBlock[5] = v20, aBlock[0] = _NSConcreteStackBlock, aBlock[1] = 1107296256, aBlock[2] = sub_1004AEAA8, aBlock[3] = &unk_10064F458, v21 = _Block_copy(aBlock), v22 = v12, v23 = a1, , , objc_msgSend(v22, "enumerateAttribute:inRange:options:usingBlock:", v14, v25, v24, 0, v21), v22, v14, _Block_release(v21), LOBYTE(v21) = swift_isEscapingClosureAtFileLocation(), , result = , (v21 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_1001A0DA4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6, void *a7)
{
  v48 = a3;
  v49 = a7;
  v46 = a2;
  v47 = a6;
  v10 = type metadata accessor for UUID();
  v50 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10015DA04(&qword_1006BE0A8);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = sub_10015DA04(&unk_1006BE0B0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v42 - v21;
  __chkstk_darwin(v20);
  v24 = &v42 - v23;
  sub_100006038(a1, v52, &qword_1006BE7A0);
  if (!v53)
  {
    sub_1000073B4(v52, &qword_1006BE7A0);
    return;
  }

  sub_1001A1F5C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v25 = v51;
  if ([v51 style] != 103)
  {

    return;
  }

  v43 = a4;
  v26 = type metadata accessor for ChecklistItemID();
  v27 = a5;
  v28 = v50;
  (*(v50 + 16))(v24, v27 + *(v26 + 20), v10);
  v29 = *(v28 + 56);
  v30 = 1;
  v44 = v29;
  v29(v24, 0, 1, v10);
  v45 = v25;
  v31 = [v25 uuid];
  if (v31)
  {
    v32 = v31;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = 0;
  }

  v44(v22, v30, 1, v10);
  v33 = *(v13 + 48);
  sub_100006038(v24, v15, &unk_1006BE0B0);
  sub_100006038(v22, &v15[v33], &unk_1006BE0B0);
  v34 = *(v50 + 48);
  if (v34(v15, 1, v10) == 1)
  {
    sub_1000073B4(v22, &unk_1006BE0B0);
    sub_1000073B4(v24, &unk_1006BE0B0);
    v35 = v34(&v15[v33], 1, v10);
    v36 = v45;
    if (v35 == 1)
    {
      sub_1000073B4(v15, &unk_1006BE0B0);
LABEL_15:
      v39 = objc_allocWithZone(NSAttributedString);
      v40 = String._bridgeToObjectiveC()();
      v41 = [v39 initWithString:v40];

      [v47 replaceCharactersInRange:v46 withAttributedString:{v48, v41}];
      [v49 updateModificationDateAndChangeCount];
      *v43 = 1;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  sub_100006038(v15, v19, &unk_1006BE0B0);
  if (v34(&v15[v33], 1, v10) == 1)
  {
    sub_1000073B4(v22, &unk_1006BE0B0);
    sub_1000073B4(v24, &unk_1006BE0B0);
    (*(v50 + 8))(v19, v10);
    v36 = v45;
LABEL_13:
    sub_1000073B4(v15, &qword_1006BE0A8);
    goto LABEL_16;
  }

  v37 = v50;
  (*(v50 + 32))(v12, &v15[v33], v10);
  sub_10001C18C(&qword_1006C1820, &type metadata accessor for UUID);
  LODWORD(v44) = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v37 + 8);
  v38(v12, v10);
  sub_1000073B4(v22, &unk_1006BE0B0);
  sub_1000073B4(v24, &unk_1006BE0B0);
  v38(v19, v10);
  sub_1000073B4(v15, &unk_1006BE0B0);
  v36 = v45;
  if (v44)
  {
    goto LABEL_15;
  }

LABEL_16:
}

id sub_1001A1370()
{
  AppDependency.wrappedValue.getter();
  v0 = [v4 modernManagedObjectContext];

  v4 = 0;
  v1 = [v0 save:&v4];

  if (v1)
  {
    return v4;
  }

  v3 = v4;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t _s11MobileNotes26DeleteChecklistItemsIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v30 = *(v0 - 8);
  v31 = v0;
  __chkstk_darwin(v0);
  v29 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v28 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v27 = v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v26 = v22 - v7;
  v24 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v23 = type metadata accessor for LocalizedStringResource();
  v13 = *(v23 - 8);
  __chkstk_darwin(v23);
  v22[0] = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015DA04(&qword_1006C34B0);
  v32 = 0xD000000000000021;
  v33 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v25 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v32 = 0xD000000000000024;
  v33 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  v22[1] = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA50);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16 = *(v8 + 104);
  v17 = v24;
  v16(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v24);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16(v10, v15, v17);
  v18 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v13 + 56))(v18, 0, 1, v23);
  v34 = 0;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v27, 1, 1, v19);
  v20(v28, 1, 1, v19);
  (*(v30 + 104))(v29, enum case for InputConnectionBehavior.default(_:), v31);
  sub_10001C18C(&qword_1006BE070, type metadata accessor for ChecklistItemEntity);
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  return v25;
}

uint64_t sub_1001A1A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChecklistItemEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A1ACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChecklistItemEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1001A1B30(void *a1@<X8>)
{
  type metadata accessor for ChecklistItemEntity();
  AppDependency.wrappedValue.getter();
  v2 = ChecklistItemEntity.note(in:)(v3);

  *a1 = v2;
}

uint64_t sub_1001A1BFC(uint64_t a1)
{
  v2 = type metadata accessor for ChecklistItemEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001A1CEC()
{
  result = qword_1006BE068;
  if (!qword_1006BE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE068);
  }

  return result;
}

unint64_t sub_1001A1D90()
{
  result = qword_1006BE078;
  if (!qword_1006BE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE078);
  }

  return result;
}

unint64_t sub_1001A1DE8()
{
  result = qword_1006BE080;
  if (!qword_1006BE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE080);
  }

  return result;
}

void sub_1001A1E84(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v9 = *(type metadata accessor for ChecklistItemEntity() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v4 + v11);
  v13 = *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1001A0DA4(a1, a2, a3, a4, v4 + v10, v12, v13);
}

unint64_t sub_1001A1F5C()
{
  result = qword_1006BE0C0;
  if (!qword_1006BE0C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006BE0C0);
  }

  return result;
}

void sub_1001A2214()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v1 = Strong;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  [v1 setText:v6];

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v2 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  [v8 setText:v12];

  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  v15 = objc_opt_self();
  [v15 ic_isVision];
  v16 = [v2 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = String._bridgeToObjectiveC()();

  [v14 setText:v20];

  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = v21;
  [v15 ic_isVision];
  v23 = [v2 mainBundle];
  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = String._bridgeToObjectiveC()();

  [v22 setText:v27];

  v28 = swift_unknownObjectWeakLoadStrong();
  if (!v28)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = v28;
  [v15 ic_isVision];
  v30 = [v2 mainBundle];
  v31 = String._bridgeToObjectiveC()();
  v32 = String._bridgeToObjectiveC()();
  v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = String._bridgeToObjectiveC()();

  [v29 setText:v34];

  v35 = swift_unknownObjectWeakLoadStrong();
  if (!v35)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v36 = v35;
  v37 = [v2 mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = String._bridgeToObjectiveC()();
  v40 = [v37 localizedStringForKey:v38 value:v39 table:0];

  if (!v40)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = String._bridgeToObjectiveC()();
  }

  [v36 setText:v40];
}

unint64_t sub_1001A28A8()
{
  v0 = sub_10018F880(&off_10064B998);
  sub_10015DA04(&qword_1006BE1C8);
  swift_arrayDestroy();
  return v0;
}

uint64_t sub_1001A2900()
{
  sub_10015DA04(&qword_1006BE1C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100535E30;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v0 + OBJC_IVAR___ICLearnMoreSmartFoldersViewController_learnMoreTagsPlaceholder);
    v4 = *(v0 + OBJC_IVAR___ICLearnMoreSmartFoldersViewController_learnMoreTagsPlaceholder + 8);
    *(v1 + 32) = result;
    *(v1 + 40) = v3;
    *(v1 + 48) = v4;
    *(v1 + 56) = 2;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = *(v0 + OBJC_IVAR___ICLearnMoreSmartFoldersViewController_howToPlaceholder);
      v6 = *(v0 + OBJC_IVAR___ICLearnMoreSmartFoldersViewController_howToPlaceholder + 8);
      *(v1 + 64) = result;
      *(v1 + 72) = v5;
      *(v1 + 80) = v6;
      *(v1 + 88) = 0;

      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1001A2A3C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR___ICLearnMoreSmartFoldersViewController_howToPlaceholder];
  *v7 = 0xD000000000000017;
  *(v7 + 1) = 0x8000000100562410;
  v8 = &v3[OBJC_IVAR___ICLearnMoreSmartFoldersViewController_learnMoreTagsPlaceholder];
  *v8 = 0xD000000000000029;
  *(v8 + 1) = 0x8000000100562430;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_1001A2C10(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR___ICLearnMoreSmartFoldersViewController_howToPlaceholder];
  *v4 = 0xD000000000000017;
  *(v4 + 1) = 0x8000000100562410;
  v5 = &v1[OBJC_IVAR___ICLearnMoreSmartFoldersViewController_learnMoreTagsPlaceholder];
  *v5 = 0xD000000000000029;
  *(v5 + 1) = 0x8000000100562430;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_1001A2D80()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
}

uint64_t sub_1001A3024(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9 = Strong, sub_1001A328C(), v10 = a1, v11 = static NSObject.== infix(_:_:)(), v9, v10, (v11 & 1) != 0))
  {
    v12 = [objc_opt_self() sharedApplication];
    v13 = [objc_opt_self() smartFoldersSupportURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    sub_10018F994(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_1001A32D8();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v12 openURL:v16 options:isa completionHandler:0];
  }

  else
  {
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      sub_1001A328C();
      v20 = a1;
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {
        v22 = [v2 presentingViewController];
        if (v22)
        {
          v23 = v22;
          type metadata accessor for LearnMoreTagsViewController();
          sub_1004B7A70(v23);
        }
      }
    }
  }

  return 0;
}

unint64_t sub_1001A328C()
{
  result = qword_1006BE1B0;
  if (!qword_1006BE1B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006BE1B0);
  }

  return result;
}

unint64_t sub_1001A32D8()
{
  result = qword_1006BD610;
  if (!qword_1006BD610)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BD610);
  }

  return result;
}

id sub_1001A3378(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

double sub_1001A33D8@<D0>(uint64_t a1@<X8>)
{
  v41 = static HorizontalAlignment.leading.getter();
  v3 = [objc_opt_self() deviceIsMac];
  v4 = 0x4020000000000000;
  if (v3)
  {
    v4 = 0x4010000000000000;
  }

  v40 = v4;
  v71 = 0;
  sub_1001A3800(v1, &v43);
  v63 = v51;
  v64 = v52;
  v65 = v53;
  v66 = v54;
  v59 = v47;
  v60 = v48;
  v61 = v49;
  v62 = v50;
  v55 = v43;
  v56 = v44;
  v57 = v45;
  v58 = v46;
  v67[8] = v51;
  v67[9] = v52;
  v67[10] = v53;
  v67[11] = v54;
  v67[4] = v47;
  v67[5] = v48;
  v67[6] = v49;
  v67[7] = v50;
  v67[0] = v43;
  v67[1] = v44;
  v67[2] = v45;
  v67[3] = v46;
  sub_100006038(&v55, v42, &qword_1006BE230);
  sub_1000073B4(v67, &qword_1006BE230);
  *&v70[135] = v63;
  *&v70[151] = v64;
  *&v70[167] = v65;
  *&v70[183] = v66;
  *&v70[71] = v59;
  *&v70[87] = v60;
  *&v70[103] = v61;
  *&v70[119] = v62;
  *&v70[7] = v55;
  *&v70[23] = v56;
  *&v70[39] = v57;
  *&v70[55] = v58;
  v39 = v71;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v5 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v72 = 0;
  v38 = static SafeAreaRegions.all.getter();
  v37 = static Edge.Set.all.getter();
  v14 = [objc_opt_self() ICTintColor];
  v15 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  v42[0] = v15;
  v17 = AnyShapeStyle.init<A>(_:)();
  v18 = static Alignment.center.getter();
  v20 = v19;
  v21 = (a1 + *(sub_10015DA04(&qword_1006BE238) + 36));
  v22 = *(type metadata accessor for RoundedRectangle() + 20);
  v23 = enum case for RoundedCornerStyle.continuous(_:);
  v24 = type metadata accessor for RoundedCornerStyle();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  __asm { FMOV            V0.2D, #16.0 }

  *v21 = _Q0;
  v30 = sub_10015DA04(&qword_1006BE240);
  static Material.ultraThin.getter();
  *&v21[*(v30 + 56)] = 256;
  v31 = static SafeAreaRegions.all.getter();
  LOBYTE(v22) = static Edge.Set.all.getter();
  v32 = &v21[*(sub_10015DA04(&qword_1006BE248) + 36)];
  *v32 = v31;
  v32[8] = v22;
  v33 = &v21[*(sub_10015DA04(&qword_1006BE250) + 36)];
  *v33 = v18;
  v33[1] = v20;
  *(a1 + 17) = *v70;
  *(a1 + 81) = *&v70[64];
  *(a1 + 65) = *&v70[48];
  *(a1 + 49) = *&v70[32];
  *(a1 + 33) = *&v70[16];
  *(a1 + 145) = *&v70[128];
  *(a1 + 129) = *&v70[112];
  *(a1 + 113) = *&v70[96];
  *(a1 + 97) = *&v70[80];
  *(a1 + 208) = *&v70[191];
  *(a1 + 193) = *&v70[176];
  *(a1 + 177) = *&v70[160];
  *(a1 + 161) = *&v70[144];
  v34 = v44;
  *(a1 + 216) = v43;
  *a1 = v41;
  *(a1 + 8) = v40;
  *(a1 + 16) = v39;
  *(a1 + 232) = v34;
  result = *&v45;
  *(a1 + 248) = v45;
  *(a1 + 264) = v5;
  *(a1 + 265) = v42[0];
  *(a1 + 268) = *(v42 + 3);
  *(a1 + 272) = v7;
  *(a1 + 280) = v9;
  *(a1 + 288) = v11;
  *(a1 + 296) = v13;
  *(a1 + 304) = 0;
  v36 = *v69;
  *(a1 + 308) = *&v69[3];
  *(a1 + 305) = v36;
  *(a1 + 312) = v38;
  *(a1 + 320) = v37;
  *(a1 + 321) = *v68;
  *(a1 + 324) = *&v68[3];
  *(a1 + 328) = KeyPath;
  *(a1 + 336) = v17;
  return result;
}

uint64_t sub_1001A3800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  type metadata accessor for NoteDebugStatusController();
  sub_1001A6008(&qword_1006BE258, type metadata accessor for NoteDebugStatusController);
  v6 = v3;
  v28 = v5;
  v7 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v42)
  {
    if ([v42 isPasswordProtected])
    {
      v35 = 0x8000000100562460;
      v8 = swift_allocObject();
      *(v8 + 16) = v42;
      v40 = 1;
      State.init(wrappedValue:)();
      v37 = v43;
      v38 = v42;

      v39 = v8;

      v36 = sub_1001A5B0C;
      v34 = 0xD000000000000013;
      goto LABEL_6;
    }
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
LABEL_6:
  v9 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v42)
  {
    if ([v42 isInICloudAccount])
    {
      v10 = swift_allocObject();
      *(v10 + 16) = v42;
      v40 = 1;
      State.init(wrappedValue:)();
      v31 = v43;
      v32 = v42;

      v33 = v10;

      v22 = sub_1001A5A98;
      v30 = 0xE700000000000000;
      v27 = 0x676E69636E7953;
      goto LABEL_11;
    }
  }

  v27 = 0;
  v30 = 0;
  v31 = 0;
  v22 = 0;
  v32 = 0;
  v33 = 0;
LABEL_11:
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  type metadata accessor for GroupActivityDebugStatusController();
  sub_1001A6008(&qword_1006BE260, type metadata accessor for GroupActivityDebugStatusController);
  v14 = StateObject.wrappedValue.getter();
  v15 = OBJC_IVAR___ICGroupActivityDebugStatusController_groupActivities;
  swift_beginAccess();
  v16 = *&v14[v15];

  v17 = *(v16 + 16);

  if (v17)
  {
    v18 = swift_allocObject();
    v19 = *(a1 + 16);
    v18[1] = *a1;
    v18[2] = v19;
    *(v18 + 41) = *(a1 + 25);
    sub_1000291D8(v4, v6, v28);
    sub_1000291D8(v11, v12, v13);
    State.init(wrappedValue:)();
    v29 = v40;
    v26 = v41;

    v25 = v18;

    v17 = sub_1001A59F0;
    v24 = 0xE900000000000063;
    v23 = 0x6E79532074736146;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v29 = 0;
  }

  State.init(wrappedValue:)();

  sub_1001A59F8(v34, v35);
  sub_1001A59F8(v27, v30);
  sub_1001A59F8(v23, v24);

  sub_1001A5A48(v23, v24);
  sub_1001A5A48(v27, v30);
  sub_1001A5A48(v34, v35);

  *a2 = v34;
  *(a2 + 8) = v35;
  *(a2 + 16) = v36;
  *(a2 + 24) = v39;
  *(a2 + 32) = v38;
  *(a2 + 40) = v37;
  *(a2 + 48) = v27;
  *(a2 + 56) = v30;
  *(a2 + 64) = v22;
  *(a2 + 72) = v33;
  *(a2 + 80) = v32;
  *(a2 + 88) = v31;
  *(a2 + 96) = v23;
  *(a2 + 104) = v24;
  *(a2 + 112) = v17;
  *(a2 + 120) = v25;
  *(a2 + 128) = v29;
  *(a2 + 136) = v26;
  strcpy((a2 + 144), "Search Index");
  *(a2 + 157) = 0;
  *(a2 + 158) = -5120;
  *(a2 + 160) = sub_1001A3FB0;
  *(a2 + 168) = 0;
  *(a2 + 176) = v40;
  *(a2 + 184) = v41;

  sub_1001A5A48(v23, v24);
  sub_1001A5A48(v27, v30);
  return sub_1001A5A48(v34, v35);
}

uint64_t sub_1001A3E50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10017CC14();
  sub_1001A6008(qword_1006BE268, sub_10017CC14);
  v4 = a1;
  v5 = ObservedObject.init(wrappedValue:)();
  v7 = v6;
  result = State.init(wrappedValue:)();
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_1001A3F0C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GroupActivityDebugStatusController();
  sub_1001A6008(&qword_1006BE260, type metadata accessor for GroupActivityDebugStatusController);
  StateObject.wrappedValue.getter();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1001A3FB0(uint64_t a1@<X8>)
{
  *a1 = sub_1001AF838;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1001A3FCC(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_1001A41D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v133 = a2;
  v5 = type metadata accessor for EnabledTextSelectability();
  v123 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v122 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = *(a1 + 16);
  v121 = *(v134 - 8);
  __chkstk_darwin(v6);
  v120 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10017992C(&qword_1006BE360);
  v9 = type metadata accessor for ModifiedContent();
  v118 = *(v9 - 8);
  __chkstk_darwin(v9);
  v116 = &v106 - v10;
  sub_10017992C(&qword_1006BE368);
  v11 = type metadata accessor for ModifiedContent();
  v117 = *(v11 - 8);
  __chkstk_darwin(v11);
  v115 = &v106 - v12;
  v13 = *(a1 + 24);
  v14 = sub_1000060B4(&qword_1006BE370, &qword_1006BE360);
  v157 = v13;
  v158 = v14;
  v119 = v9;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1000060B4(&qword_1006BE378, &qword_1006BE368);
  v108 = WitnessTable;
  v155 = WitnessTable;
  v156 = v16;
  v17 = swift_getWitnessTable();
  v139 = v11;
  *&v152 = v11;
  *(&v152 + 1) = v5;
  v132 = v5;
  v138 = v17;
  v153 = v17;
  v154 = &protocol witness table for EnabledTextSelectability;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v112 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v110 = &v106 - v19;
  v113 = v20;
  v21 = type metadata accessor for ModifiedContent();
  v127 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v114 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v111 = &v106 - v24;
  v137 = v25;
  v131 = type metadata accessor for Optional();
  v130 = *(v131 - 8);
  v26 = __chkstk_darwin(v131);
  v136 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v129 = &v106 - v28;
  v125 = type metadata accessor for IconOnlyLabelStyle();
  v126 = *(v125 - 8);
  __chkstk_darwin(v125);
  v30 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10015DA04(&qword_1006BE380);
  v31 = *(v124 - 8);
  __chkstk_darwin(v124);
  v33 = &v106 - v32;
  v34 = sub_10015DA04(&qword_1006BE388);
  __chkstk_darwin(v34);
  v36 = &v106 - v35;
  v135 = sub_10015DA04(&qword_1006BE390);
  v37 = __chkstk_darwin(v135);
  v128 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = &v106 - v39;
  v41 = *v3;
  v42 = *(v3 + 3);
  v107 = *(v3 + 2);
  v159 = v3[2];
  v160 = v41;
  v43 = swift_allocObject();
  v44 = v134;
  *(v43 + 16) = v134;
  *(v43 + 24) = v13;
  v45 = v3[1];
  *(v43 + 32) = *v3;
  *(v43 + 48) = v45;
  *(v43 + 64) = v3[2];
  v140 = v44;
  v109 = v13;
  v141 = v13;
  v142 = v3;
  sub_1001A5FAC(&v160, &v152);
  v106 = v42;

  sub_100006038(&v159, &v152, &qword_1006BE398);
  sub_10015DA04(&qword_1006BE3A0);
  sub_1000060B4(&qword_1006BE3A8, &qword_1006BE3A0);
  Button.init(action:label:)();
  IconOnlyLabelStyle.init()();
  sub_1000060B4(&qword_1006BE3B0, &qword_1006BE380);
  sub_1001A6008(&qword_1006BE3B8, &type metadata accessor for IconOnlyLabelStyle);
  v46 = v124;
  v47 = v125;
  View.labelStyle<A>(_:)();
  (*(v126 + 8))(v30, v47);
  (*(v31 + 8))(v33, v46);
  v48 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v50 = &v36[*(v34 + 36)];
  *v50 = KeyPath;
  v50[1] = v48;
  sub_1001A6050();
  View.bold(_:)();
  sub_1000073B4(v36, &qword_1006BE388);
  v51 = &v40[*(sub_10015DA04(&qword_1006BE3C8) + 36)];
  v52 = *(sub_10015DA04(&qword_1006BE3D0) + 28);
  v53 = enum case for Image.Scale.large(_:);
  v54 = type metadata accessor for Image.Scale();
  (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
  *v51 = swift_getKeyPath();
  LOBYTE(v53) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = &v40[*(sub_10015DA04(&qword_1006BE3D8) + 36)];
  *v63 = v53;
  *(v63 + 1) = v56;
  *(v63 + 2) = v58;
  *(v63 + 3) = v60;
  *(v63 + 4) = v62;
  v63[40] = 0;
  v64 = static Alignment.center.getter();
  v66 = v65;
  v67 = v40;
  v68 = &v40[*(v135 + 36)];
  v69 = *(type metadata accessor for RoundedRectangle() + 20);
  v70 = enum case for RoundedCornerStyle.continuous(_:);
  v71 = type metadata accessor for RoundedCornerStyle();
  (*(*(v71 - 8) + 104))(&v68[v69], v70, v71);
  __asm { FMOV            V0.2D, #8.0 }

  *v68 = _Q0;
  LODWORD(v70) = static HierarchicalShapeStyle.quaternary.getter();
  *&v68[*(sub_10015DA04(&qword_1006BE3E0) + 36)] = v70;
  *&v68[*(sub_10015DA04(&qword_1006BE3E8) + 36)] = 0x3FD999999999999ALL;
  v77 = &v68[*(sub_10015DA04(&qword_1006BE3F0) + 36)];
  *v77 = v64;
  v77[1] = v66;
  v152 = v159;
  sub_10015DA04(&qword_1006BE398);
  v78 = State.wrappedValue.getter();
  if (v151[0])
  {
    (*(v127 + 56))(v136, 1, 1, v137);
    v79 = v132;
    *&v152 = v139;
    *(&v152 + 1) = v132;
    v153 = v138;
    v154 = &protocol witness table for EnabledTextSelectability;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v144 = &protocol witness table for _PaddingLayout;
    swift_getWitnessTable();
  }

  else
  {
    v80 = v120;
    v107(v78);
    static Font.callout.getter();
    v81 = v116;
    v82 = v134;
    View.font(_:)();

    (*(v121 + 8))(v80, v82);
    v83 = v115;
    v84 = v119;
    View.multilineTextAlignment(_:)();
    (*(v118 + 8))(v81, v84);
    v85 = v122;
    EnabledTextSelectability.init()();
    v86 = v110;
    v87 = v139;
    v79 = v132;
    v88 = v138;
    View.textSelection<A>(_:)();
    (*(v123 + 8))(v85, v79);
    (*(v117 + 8))(v83, v87);
    static Edge.Set.vertical.getter();
    *&v152 = v87;
    *(&v152 + 1) = v79;
    v153 = v88;
    v154 = &protocol witness table for EnabledTextSelectability;
    v89 = swift_getOpaqueTypeConformance2();
    v90 = v114;
    v91 = v113;
    View.padding(_:_:)();
    (*(v112 + 8))(v86, v91);
    v151[2] = v89;
    v151[3] = &protocol witness table for _PaddingLayout;
    v92 = v137;
    v93 = swift_getWitnessTable();
    v94 = v111;
    sub_100233BB8(v90, v92, v93);
    v95 = v127;
    v96 = *(v127 + 8);
    v96(v90, v92);
    sub_100233BB8(v94, v92, v93);
    v96(v94, v92);
    v97 = v136;
    (*(v95 + 32))(v136, v90, v92);
    (*(v95 + 56))(v97, 0, 1, v92);
  }

  v98 = v130;
  v99 = *(v130 + 16);
  v100 = v129;
  v101 = v136;
  v102 = v131;
  v99(v129, v136, v131);
  v103 = *(v98 + 8);
  v103(v101, v102);
  v104 = v128;
  sub_10002927C(v67, v128);
  v151[0] = v104;
  v99(v101, v100, v102);
  v151[1] = v101;
  v150[0] = v135;
  v150[1] = v102;
  v148 = sub_1001A61C8();
  *&v152 = v139;
  *(&v152 + 1) = v79;
  v153 = v138;
  v154 = &protocol witness table for EnabledTextSelectability;
  v146 = swift_getOpaqueTypeConformance2();
  v147 = &protocol witness table for _PaddingLayout;
  v145 = swift_getWitnessTable();
  v149 = swift_getWitnessTable();
  sub_1001A3FCC(v151, 2uLL, v150);
  v103(v100, v102);
  sub_1000073B4(v67, &qword_1006BE390);
  v103(v101, v102);
  return sub_1000073B4(v104, &qword_1006BE390);
}

uint64_t sub_1001A52D0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2[1] = *(a1 + 32);
  v4 = *(&v3 + 1);
  sub_100006038(&v4, v2, &qword_1006BE450);
  sub_10015DA04(&qword_1006BE398);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return sub_1000073B4(&v3, &qword_1006BE398);
}

uint64_t sub_1001A53A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = sub_10015DA04(&qword_1006BE420);
  __chkstk_darwin(v39);
  v5 = &v37[-v4];
  v6 = sub_10015DA04(&qword_1006BE428);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37[-v8];
  v10 = sub_10015DA04(&qword_1006BE430);
  v11 = __chkstk_darwin(v10 - 8);
  v44 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v37[-v13];

  static Color.primary.getter();
  v42 = Text.foregroundColor(_:)();
  v41 = v15;
  v17 = v16;
  v43 = v18;

  v40 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v38 = v17 & 1;
  LOBYTE(v49) = v17 & 1;
  LOBYTE(v45) = 0;
  v49 = *(a1 + 32);
  sub_10015DA04(&qword_1006BE398);
  State.wrappedValue.getter();
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  (*(v7 + 16))(v5, v9, v6);
  swift_storeEnumTagMultiPayload();
  sub_1000060B4(&qword_1006BE438, &qword_1006BE428);
  _ConditionalContent<>.init(storage:)();
  (*(v7 + 8))(v9, v6);
  v27 = v44;
  sub_100006038(v14, v44, &qword_1006BE430);
  v28 = v42;
  *&v45 = v42;
  v29 = v41;
  *(&v45 + 1) = v41;
  LOBYTE(a1) = v38;
  LOBYTE(v46) = v38;
  *(&v46 + 1) = v61[0];
  DWORD1(v46) = *(v61 + 3);
  v30 = v43;
  *(&v46 + 1) = v43;
  v31 = v14;
  LOBYTE(v14) = v40;
  LOBYTE(v47) = v40;
  *(&v47 + 1) = *v60;
  DWORD1(v47) = *&v60[3];
  *(&v47 + 1) = v20;
  *v48 = v22;
  *&v48[8] = v24;
  *&v48[16] = v26;
  v48[24] = 0;
  v32 = v45;
  v33 = v46;
  *(a2 + 57) = *&v48[9];
  v34 = *v48;
  *(a2 + 32) = v47;
  *(a2 + 48) = v34;
  *a2 = v32;
  *(a2 + 16) = v33;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  v35 = sub_10015DA04(&qword_1006BE440);
  sub_100006038(v27, a2 + *(v35 + 64), &qword_1006BE430);
  sub_100006038(&v45, &v49, &qword_1006BE448);
  sub_1000073B4(v31, &qword_1006BE430);
  sub_1000073B4(v27, &qword_1006BE430);
  *&v49 = v28;
  *(&v49 + 1) = v29;
  v50 = a1;
  *v51 = v61[0];
  *&v51[3] = *(v61 + 3);
  v52 = v30;
  v53 = v14;
  *v54 = *v60;
  *&v54[3] = *&v60[3];
  v55 = v20;
  v56 = v22;
  v57 = v24;
  v58 = v26;
  v59 = 0;
  return sub_1000073B4(&v49, &qword_1006BE448);
}

__n128 sub_1001A5918(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001A592C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1001A5974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001A59F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1001A5A48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_1001A5A98@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *a1 = sub_1001A5B14;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;

  return v5;
}

uint64_t sub_1001A5B1C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1001A5B58(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1001A5B6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1001A5BB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001A5C18()
{
  result = qword_1006BE2F0;
  if (!qword_1006BE2F0)
  {
    sub_10017992C(&qword_1006BE238);
    sub_1001A5CD0();
    sub_1000060B4(&qword_1006BE358, &qword_1006BE250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE2F0);
  }

  return result;
}

unint64_t sub_1001A5CD0()
{
  result = qword_1006BE2F8;
  if (!qword_1006BE2F8)
  {
    sub_10017992C(&qword_1006BE300);
    sub_1001A5D88();
    sub_1000060B4(&qword_1006BE348, &qword_1006BE350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE2F8);
  }

  return result;
}

unint64_t sub_1001A5D88()
{
  result = qword_1006BE308;
  if (!qword_1006BE308)
  {
    sub_10017992C(&qword_1006BE310);
    sub_1001A62AC(&qword_1006BE318, &qword_1006BE320, &unk_1005360D8, sub_1001A5E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE308);
  }

  return result;
}

unint64_t sub_1001A5E40()
{
  result = qword_1006BE328;
  if (!qword_1006BE328)
  {
    sub_10017992C(&qword_1006BE330);
    sub_1000060B4(&qword_1006BE338, &qword_1006BE340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE328);
  }

  return result;
}

uint64_t sub_1001A6008(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001A6050()
{
  result = qword_1006BE3C0;
  if (!qword_1006BE3C0)
  {
    sub_10017992C(&qword_1006BE388);
    sub_10017992C(&qword_1006BE380);
    type metadata accessor for IconOnlyLabelStyle();
    sub_1000060B4(&qword_1006BE3B0, &qword_1006BE380);
    sub_1001A6008(&qword_1006BE3B8, &type metadata accessor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_1000060B4(&qword_1006BE370, &qword_1006BE360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE3C0);
  }

  return result;
}

unint64_t sub_1001A61C8()
{
  result = qword_1006BE3F8;
  if (!qword_1006BE3F8)
  {
    sub_10017992C(&qword_1006BE390);
    sub_1001A62AC(&qword_1006BE400, &qword_1006BE3D8, &unk_1005361D8, sub_1001A6330);
    sub_1000060B4(&qword_1006BE418, &qword_1006BE3F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE3F8);
  }

  return result;
}

uint64_t sub_1001A62AC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001A6330()
{
  result = qword_1006BE408;
  if (!qword_1006BE408)
  {
    sub_10017992C(&qword_1006BE3C8);
    sub_10017992C(&qword_1006BE388);
    sub_1001A6050();
    swift_getOpaqueTypeConformance2();
    sub_1000060B4(&qword_1006BE410, &qword_1006BE3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE408);
  }

  return result;
}

uint64_t sub_1001A64B0()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static AppendToNoteIntent.title);
  sub_10002597C(v6, static AppendToNoteIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t AppendToNoteIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC560 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static AppendToNoteIntent.title);
}

uint64_t static AppendToNoteIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC560 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static AppendToNoteIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static AppendToNoteIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static AppendToNoteIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006BE458);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006BE460);
  __chkstk_darwin(v1);
  sub_1001A6C8C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x20646E65707041;
  v2._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006BE470);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544175136;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006BE478);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t sub_1001A6C8C()
{
  result = qword_1006BE468;
  if (!qword_1006BE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE468);
  }

  return result;
}

uint64_t AppendToNoteIntent.entity.setter(uint64_t a1)
{
  v2 = type metadata accessor for NoteEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_1001AD0E0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_1001AD144(a1);
}

uint64_t (*AppendToNoteIntent.entity.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t AppendToNoteIntent.text.setter(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AppendToNoteIntent.text.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t AppendToNoteIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = type metadata accessor for NoteEntity(0);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001A7014, 0, 0);
}

uint64_t sub_1001A7014()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  IntentParameter.wrappedValue.getter();
  AppDependency.wrappedValue.getter();
  v4 = v0[2];
  v0[10] = v4;
  v5 = swift_allocObject();
  v0[11] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;

  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1001A7154;

  return sub_1001A7890(v4, sub_1001AD1A0, v5);
}

uint64_t sub_1001A7154(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 80);
  v6 = *(*v3 + 72);
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = v2;

  sub_1001AD144(v6);

  if (v2)
  {
    v7 = sub_1001A756C;
  }

  else
  {
    v7 = sub_1001A72C8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001A72C8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_1001A7374;
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 64);

  return NoteEntity.init(for:in:)(v7, v5, v6);
}

uint64_t sub_1001A7374()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1001A75D8;
  }

  else
  {
    v2 = sub_1001A7488;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A7488()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[8];
  sub_1001ADA44(&qword_1006BE480, type metadata accessor for NoteEntity);
  static IntentResult.result<A>(value:)();

  sub_1001AD144(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001A756C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A75D8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1001A7650(void *a1@<X0>, void *a2@<X8>)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    sub_1001AD530(v6);
  }

  else
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {
      type metadata accessor for ICError(0);
      sub_10015DA04(&qword_1006BFBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100531E30;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v15;
      v16 = [objc_opt_self() mainBundle];
      v17 = String._bridgeToObjectiveC()();
      v18 = [v16 localizedStringForKey:v17 value:0 table:0];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v19;
      *(inited + 56) = v21;
      sub_10018F334(inited);
      swift_setDeallocating();
      sub_1001AD2D0(inited + 32);
      sub_1001ADA44(&qword_1006BE4D0, type metadata accessor for ICError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      return;
    }

    v11 = v10;
    v7 = a1;
    sub_1001AD7FC(v11);
  }

  v12 = v8;
  v13 = v9;

  if (!v2)
  {
    *a2 = v12;
    a2[1] = v13;
  }
}

uint64_t sub_1001A7890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v6 = swift_task_alloc();
  v4[20] = v6;
  *v6 = v4;
  v6[1] = sub_1001A7948;

  return sub_100384000(v3, a1);
}

uint64_t sub_1001A7948(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_1001A7A48, 0, 0);
}

uint64_t sub_1001A7A48()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = [*(v0 + 128) managedObjectContextForObjectID:*(v0 + 168)];
    *(v0 + 176) = v2;
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 136);
      v4 = *(v0 + 144);
      v6 = swift_allocObject();
      *(v0 + 184) = v6;
      v6[2] = v3;
      v6[3] = v1;
      v6[4] = v5;
      v6[5] = v4;
      v3;
      v7 = v1;

      v8 = swift_task_alloc();
      *(v0 + 192) = v8;
      v9 = sub_10015DA04(&qword_1006BE558);
      *v8 = v0;
      v8[1] = sub_1001A7DCC;

      return NSManagedObjectContext.perform<A>(_:)(v0 + 96, sub_1001AD4D8, v6, v9);
    }

    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = v1;
    sub_10026EF78(v13, 225, v14);

    swift_willThrow();
  }

  else
  {
    type metadata accessor for ICError(0);
    *(v0 + 120) = 232;
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v11;
    _StringGuts.grow(_:)(34);

    type metadata accessor for NoteID();
    sub_1001ADA44(&unk_1006BE4C0, &type metadata accessor for NoteID);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x80000001005624C0;
    sub_10018F334(inited);
    swift_setDeallocating();
    sub_1001AD2D0(inited + 32);
    sub_1001ADA44(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1001A7DCC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1001ADA94;
  }

  else
  {

    v2 = sub_1001ADA8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A7EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v6 = swift_task_alloc();
  v4[19] = v6;
  *v6 = v4;
  v6[1] = sub_1001A7FA0;

  return sub_100473598(v3, a1);
}

uint64_t sub_1001A7FA0(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_1001A80A0, 0, 0);
}

uint64_t sub_1001A80A0()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [*(v0 + 120) managedObjectContextForObjectID:*(v0 + 160)];
    *(v0 + 168) = v2;
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 128);
      v4 = *(v0 + 136);
      v6 = swift_allocObject();
      *(v0 + 176) = v6;
      v6[2] = v3;
      v6[3] = v1;
      v6[4] = v5;
      v6[5] = v4;
      v3;
      v7 = v1;

      v8 = swift_task_alloc();
      *(v0 + 184) = v8;
      v9 = sub_10015DA04(&unk_1006BFA20);
      *v8 = v0;
      v8[1] = sub_1001A8424;

      return NSManagedObjectContext.perform<A>(_:)(v0 + 96, sub_1001AD45C, v6, v9);
    }

    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = v1;
    sub_1001AC41C(v13, 225, v14);

    swift_willThrow();
  }

  else
  {
    type metadata accessor for ICError(0);
    *(v0 + 112) = 232;
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v11;
    _StringGuts.grow(_:)(34);

    type metadata accessor for FolderID();
    sub_1001ADA44(&qword_1006BE550, &type metadata accessor for FolderID);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x80000001005624C0;
    sub_10018F334(inited);
    swift_setDeallocating();
    sub_1001AD2D0(inited + 32);
    sub_1001ADA44(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1001A8424()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1001A85AC;
  }

  else
  {

    v2 = sub_1001A8540;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A8540()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 96);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1001A85AC()
{
  v1 = v0[21];
  v2 = v0[20];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001A861C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v6 = swift_task_alloc();
  v4[18] = v6;
  *v6 = v4;
  v6[1] = sub_1001A86D4;

  return sub_100384000(v3, a1);
}

uint64_t sub_1001A86D4(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_1001A87D4, 0, 0);
}

uint64_t sub_1001A87D4()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = [*(v0 + 112) managedObjectContextForObjectID:*(v0 + 152)];
    *(v0 + 160) = v2;
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 120);
      v4 = *(v0 + 128);
      v6 = swift_allocObject();
      *(v0 + 168) = v6;
      v6[2] = v3;
      v6[3] = v1;
      v6[4] = v5;
      v6[5] = v4;
      v3;
      v7 = v1;

      v8 = swift_task_alloc();
      *(v0 + 176) = v8;
      v9 = sub_10015DA04(&qword_1006BE060);
      *v8 = v0;
      v8[1] = sub_1001A8B58;

      return NSManagedObjectContext.perform<A>(_:)(v0 + 192, sub_1001AD424, v6, v9);
    }

    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = v1;
    sub_10026EF78(v13, 225, v14);

    swift_willThrow();
  }

  else
  {
    type metadata accessor for ICError(0);
    *(v0 + 104) = 232;
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v11;
    _StringGuts.grow(_:)(34);

    type metadata accessor for NoteID();
    sub_1001ADA44(&unk_1006BE4C0, &type metadata accessor for NoteID);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x80000001005624C0;
    sub_10018F334(inited);
    swift_setDeallocating();
    sub_1001AD2D0(inited + 32);
    sub_1001ADA44(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1001A8B58()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1001A8CE0;
  }

  else
  {

    v2 = sub_1001A8C74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A8C74()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 192);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1001A8CE0()
{
  v1 = v0[20];
  v2 = v0[19];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001A8D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v7 = swift_task_alloc();
  v5[19] = v7;
  *v7 = v5;
  v7[1] = sub_1001A8E0C;

  return (sub_100221300)(v4, a2);
}

uint64_t sub_1001A8E0C(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_1001A8F0C, 0, 0);
}

uint64_t sub_1001A8F0C()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [*(v0 + 120) managedObjectContextForObjectID:*(v0 + 160)];
    *(v0 + 168) = v2;
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 128);
      v4 = *(v0 + 136);
      v6 = swift_allocObject();
      *(v0 + 176) = v6;
      v6[2] = v3;
      v6[3] = v1;
      v6[4] = v5;
      v6[5] = v4;
      v3;
      v7 = v1;

      v8 = swift_task_alloc();
      *(v0 + 184) = v8;
      v9 = type metadata accessor for SentTransferredFile();
      *v8 = v0;
      v8[1] = sub_1001A9284;
      v10 = *(v0 + 112);

      return NSManagedObjectContext.perform<A>(_:)(v10, sub_1001AD3D4, v6, v9);
    }

    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    v15 = v1;
    sub_1001AC628(v14, 225, v15);

    swift_willThrow();
  }

  else
  {
    type metadata accessor for ICError(0);
    *(v0 + 104) = 232;
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v12;
    _StringGuts.grow(_:)(34);

    type metadata accessor for AttachmentID();
    sub_1001ADA44(&unk_1006BE560, &type metadata accessor for AttachmentID);
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x80000001005624C0;
    sub_10018F334(inited);
    swift_setDeallocating();
    sub_1001AD2D0(inited + 32);
    sub_1001ADA44(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1001A9284()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1001A85AC;
  }

  else
  {

    v2 = sub_1001A93A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A93A0()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001A9408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v7 = swift_task_alloc();
  v5[19] = v7;
  *v7 = v5;
  v7[1] = sub_1001A94C4;

  return sub_100384000(v4, a2);
}

uint64_t sub_1001A94C4(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_1001A95C4, 0, 0);
}

uint64_t sub_1001A95C4()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [*(v0 + 120) managedObjectContextForObjectID:*(v0 + 160)];
    *(v0 + 168) = v2;
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 128);
      v4 = *(v0 + 136);
      v6 = swift_allocObject();
      *(v0 + 176) = v6;
      v6[2] = v3;
      v6[3] = v1;
      v6[4] = v5;
      v6[5] = v4;
      v3;
      v7 = v1;

      v8 = swift_task_alloc();
      *(v0 + 184) = v8;
      v9 = sub_10015DA04(&qword_1006C6490);
      *v8 = v0;
      v8[1] = sub_1001A9948;
      v10 = *(v0 + 112);

      return NSManagedObjectContext.perform<A>(_:)(v10, sub_1001AD3FC, v6, v9);
    }

    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    v15 = v1;
    sub_10026EF78(v14, 225, v15);

    swift_willThrow();
  }

  else
  {
    type metadata accessor for ICError(0);
    *(v0 + 104) = 232;
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v12;
    _StringGuts.grow(_:)(34);

    type metadata accessor for NoteID();
    sub_1001ADA44(&unk_1006BE4C0, &type metadata accessor for NoteID);
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x80000001005624C0;
    sub_10018F334(inited);
    swift_setDeallocating();
    sub_1001AD2D0(inited + 32);
    sub_1001ADA44(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1001A9948()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1001ADA98;
  }

  else
  {

    v2 = sub_1001ADA90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A9A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v7 = swift_task_alloc();
  v5[19] = v7;
  *v7 = v5;
  v7[1] = sub_1001A9B20;

  return sub_100384000(v4, a2);
}

uint64_t sub_1001A9B20(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_1001A9C20, 0, 0);
}

uint64_t sub_1001A9C20()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [*(v0 + 120) managedObjectContextForObjectID:*(v0 + 160)];
    *(v0 + 168) = v2;
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 128);
      v4 = *(v0 + 136);
      v6 = swift_allocObject();
      *(v0 + 176) = v6;
      v6[2] = v3;
      v6[3] = v1;
      v6[4] = v5;
      v6[5] = v4;
      v3;
      v7 = v1;

      v8 = swift_task_alloc();
      *(v0 + 184) = v8;
      *v8 = v0;
      v8[1] = sub_1001A9948;
      v9 = *(v0 + 112);

      return NSManagedObjectContext.perform<A>(_:)(v9, sub_1001AD3FC, v6, &type metadata for () + 8);
    }

    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = v1;
    sub_10026EF78(v13, 225, v14);

    swift_willThrow();
  }

  else
  {
    type metadata accessor for ICError(0);
    *(v0 + 104) = 232;
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v11;
    _StringGuts.grow(_:)(34);

    type metadata accessor for NoteID();
    sub_1001ADA44(&unk_1006BE4C0, &type metadata accessor for NoteID);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x80000001005624C0;
    sub_10018F334(inited);
    swift_setDeallocating();
    sub_1001AD2D0(inited + 32);
    sub_1001ADA44(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1001A9F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v7 = swift_task_alloc();
  v5[19] = v7;
  *v7 = v5;
  v7[1] = sub_1001AA054;

  return (sub_100221300)(v4, a2);
}

uint64_t sub_1001AA054(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_1001AA154, 0, 0);
}

uint64_t sub_1001AA154()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [*(v0 + 120) managedObjectContextForObjectID:*(v0 + 160)];
    *(v0 + 168) = v2;
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 128);
      v4 = *(v0 + 136);
      v6 = swift_allocObject();
      *(v0 + 176) = v6;
      v6[2] = v3;
      v6[3] = v1;
      v6[4] = v5;
      v6[5] = v4;
      v3;
      v7 = v1;

      v8 = swift_task_alloc();
      *(v0 + 184) = v8;
      *v8 = v0;
      v8[1] = sub_1001A9948;
      v9 = *(v0 + 112);

      return NSManagedObjectContext.perform<A>(_:)(v9, sub_1001AD3D4, v6, &type metadata for () + 8);
    }

    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = v1;
    sub_1001AC628(v13, 225, v14);

    swift_willThrow();
  }

  else
  {
    type metadata accessor for ICError(0);
    *(v0 + 104) = 232;
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v11;
    _StringGuts.grow(_:)(34);

    type metadata accessor for AttachmentID();
    sub_1001ADA44(&unk_1006BE560, &type metadata accessor for AttachmentID);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x80000001005624C0;
    sub_10018F334(inited);
    swift_setDeallocating();
    sub_1001AD2D0(inited + 32);
    sub_1001ADA44(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1001AA4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v6 = swift_task_alloc();
  v4[20] = v6;
  *v6 = v4;
  v6[1] = sub_1001AA584;

  return sub_100473598(v3, a1);
}

uint64_t sub_1001AA584(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_1001AA684, 0, 0);
}

uint64_t sub_1001AA684()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = [*(v0 + 128) managedObjectContextForObjectID:*(v0 + 168)];
    *(v0 + 176) = v2;
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 136);
      v4 = *(v0 + 144);
      v6 = swift_allocObject();
      *(v0 + 184) = v6;
      v6[2] = v3;
      v6[3] = v1;
      v6[4] = v5;
      v6[5] = v4;
      v3;
      v7 = v1;

      v8 = swift_task_alloc();
      *(v0 + 192) = v8;
      v9 = sub_10015DA04(&qword_1006BE558);
      *v8 = v0;
      v8[1] = sub_1001AAA08;

      return NSManagedObjectContext.perform<A>(_:)(v0 + 96, sub_1001AD3B4, v6, v9);
    }

    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = v1;
    sub_1001AC41C(v13, 225, v14);

    swift_willThrow();
  }

  else
  {
    type metadata accessor for ICError(0);
    *(v0 + 120) = 232;
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v11;
    _StringGuts.grow(_:)(34);

    type metadata accessor for FolderID();
    sub_1001ADA44(&qword_1006BE550, &type metadata accessor for FolderID);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x80000001005624C0;
    sub_10018F334(inited);
    swift_setDeallocating();
    sub_1001AD2D0(inited + 32);
    sub_1001ADA44(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1001AAA08()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1001AAB90;
  }

  else
  {

    v2 = sub_1001AAB24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001AAB24()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_1001AAB90()
{
  v1 = v0[22];
  v2 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001AAC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v7 = swift_task_alloc();
  v5[19] = v7;
  *v7 = v5;
  v7[1] = sub_1001AACBC;

  return (sub_1001B7A1C)(v4, a2);
}

uint64_t sub_1001AACBC(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_1001AADBC, 0, 0);
}

uint64_t sub_1001AADBC()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [*(v0 + 120) managedObjectContextForObjectID:*(v0 + 160)];
    *(v0 + 168) = v2;
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 128);
      v4 = *(v0 + 136);
      v6 = swift_allocObject();
      *(v0 + 176) = v6;
      v6[2] = v3;
      v6[3] = v1;
      v6[4] = v5;
      v6[5] = v4;
      v3;
      v7 = v1;

      v8 = swift_task_alloc();
      *(v0 + 184) = v8;
      *v8 = v0;
      v8[1] = sub_1001A9948;
      v9 = *(v0 + 112);

      return NSManagedObjectContext.perform<A>(_:)(v9, sub_1001AD38C, v6, &type metadata for () + 8);
    }

    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = v1;
    sub_10018CFE4(v13, 225, v14);

    swift_willThrow();
  }

  else
  {
    type metadata accessor for ICError(0);
    *(v0 + 104) = 232;
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v11;
    _StringGuts.grow(_:)(34);

    type metadata accessor for TableID();
    sub_1001ADA44(&unk_1006BEC00, &type metadata accessor for TableID);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x80000001005624C0;
    sub_10018F334(inited);
    swift_setDeallocating();
    sub_1001AD2D0(inited + 32);
    sub_1001ADA44(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1001AB134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v6 = swift_task_alloc();
  v4[19] = v6;
  *v6 = v4;
  v6[1] = sub_1001AB1EC;

  return sub_100384000(v3, a1);
}

uint64_t sub_1001AB1EC(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_1001AB2EC, 0, 0);
}

uint64_t sub_1001AB2EC()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [*(v0 + 120) managedObjectContextForObjectID:*(v0 + 160)];
    *(v0 + 168) = v2;
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 128);
      v4 = *(v0 + 136);
      v6 = swift_allocObject();
      *(v0 + 176) = v6;
      v6[2] = v3;
      v6[3] = v1;
      v6[4] = v5;
      v6[5] = v4;
      v3;
      v7 = v1;

      v8 = swift_task_alloc();
      *(v0 + 184) = v8;
      v9 = sub_10015DA04(&unk_1006BE4E0);
      *v8 = v0;
      v8[1] = sub_1001AB670;

      return NSManagedObjectContext.perform<A>(_:)(v0 + 96, sub_1001AD358, v6, v9);
    }

    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = v1;
    sub_10026EF78(v13, 225, v14);

    swift_willThrow();
  }

  else
  {
    type metadata accessor for ICError(0);
    *(v0 + 112) = 232;
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v11;
    _StringGuts.grow(_:)(34);

    type metadata accessor for NoteID();
    sub_1001ADA44(&unk_1006BE4C0, &type metadata accessor for NoteID);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x80000001005624C0;
    sub_10018F334(inited);
    swift_setDeallocating();
    sub_1001AD2D0(inited + 32);
    sub_1001ADA44(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1001AB670()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1001ADA98;
  }

  else
  {

    v2 = sub_1001ADA9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001AB78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v7 = swift_task_alloc();
  v5[19] = v7;
  *v7 = v5;
  v7[1] = sub_1001AB848;

  return sub_100384000(v4, a2);
}

uint64_t sub_1001AB848(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_1001AB948, 0, 0);
}

uint64_t sub_1001AB948()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [*(v0 + 120) managedObjectContextForObjectID:*(v0 + 160)];
    *(v0 + 168) = v2;
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 128);
      v4 = *(v0 + 136);
      v6 = swift_allocObject();
      *(v0 + 176) = v6;
      v6[2] = v3;
      v6[3] = v1;
      v6[4] = v5;
      v6[5] = v4;
      v3;
      v7 = v1;

      v8 = swift_task_alloc();
      *(v0 + 184) = v8;
      v9 = sub_10015DA04(&qword_1006BE4D8);
      *v8 = v0;
      v8[1] = sub_1001A9948;
      v10 = *(v0 + 112);

      return NSManagedObjectContext.perform<A>(_:)(v10, sub_1001AD338, v6, v9);
    }

    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    v15 = v1;
    sub_10026EF78(v14, 225, v15);

    swift_willThrow();
  }

  else
  {
    type metadata accessor for ICError(0);
    *(v0 + 104) = 232;
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v12;
    _StringGuts.grow(_:)(34);

    type metadata accessor for NoteID();
    sub_1001ADA44(&unk_1006BE4C0, &type metadata accessor for NoteID);
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x80000001005624C0;
    sub_10018F334(inited);
    swift_setDeallocating();
    sub_1001AD2D0(inited + 32);
    sub_1001ADA44(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1001ABCD4(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A600;

  return AppendToNoteIntent.perform()(a1, v4, v5, v6);
}

char *sub_1001ABD88@<X0>(char **a1@<X8>)
{
  result = _s11MobileNotes18AppendToNoteIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

void sub_1001ABDB4(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  v10 = 0;
  v4 = [a1 existingObjectWithID:a2 error:&v10];
  v5 = v10;
  if (v4)
  {
    v11[1] = &OBJC_PROTOCOL___ICFolderObject;
    v6 = v4;
    v7 = swift_dynamicCastObjCProtocolUnconditional();
    v8 = v5;
    a3(v11, v7);
  }

  else
  {
    v9 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1001ABEC4(void *a1, uint64_t a2, void (*a3)(char *__return_ptr, uint64_t))
{
  v10 = 0;
  v4 = [a1 existingObjectWithID:a2 error:&v10];
  v5 = v10;
  if (v4)
  {
    v12 = &OBJC_PROTOCOL___ICSearchIndexableNote;
    v6 = v4;
    v7 = swift_dynamicCastObjCProtocolUnconditional();
    v8 = v5;
    a3(&v11, v7);
  }

  else
  {
    v9 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1001ABFD4(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, id *a5)
{
  v13[0] = 0;
  v7 = [a1 existingObjectWithID:a2 error:v13];
  v8 = v13[0];
  if (v7)
  {
    v13[1] = *a5;
    v9 = v7;
    v10 = swift_dynamicCastObjCProtocolUnconditional();
    v11 = v8;
    a3(v10);
  }

  else
  {
    v12 = v13[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1001AC0E8(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4, void *a5)
{
  v13 = 0;
  v7 = [a1 existingObjectWithID:a2 error:&v13];
  v8 = v13;
  if (v7)
  {
    v14[2] = *a5;
    v9 = v7;
    v10 = swift_dynamicCastObjCProtocolUnconditional();
    v11 = v8;
    a3(v14, v10);
  }

  else
  {
    v12 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1001AC1F8(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  v10 = 0;
  v4 = [a1 existingObjectWithID:a2 error:&v10];
  v5 = v10;
  if (v4)
  {
    v11[1] = &OBJC_PROTOCOL___ICSearchIndexableNote;
    v6 = v4;
    v7 = swift_dynamicCastObjCProtocolUnconditional();
    v8 = v5;
    a3(v11, v7);
  }

  else
  {
    v9 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1001AC308(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v10[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v10];
  v5 = v10[0];
  if (v4)
  {
    v10[1] = &OBJC_PROTOCOL___ICSearchIndexableNote;
    v6 = v4;
    v7 = swift_dynamicCastObjCProtocolUnconditional();
    v8 = v5;
    a3(v7);
  }

  else
  {
    v9 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

id sub_1001AC41C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    type metadata accessor for ICError(0);
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v8;
    _StringGuts.grow(_:)(87);
    v9._countAndFlagsBits = 0x6E457265646C6F46;
    v9._object = 0xEC00000079746974;
    String.append(_:)(v9);
    v10._object = 0x80000001005603E0;
    v10._countAndFlagsBits = 0xD000000000000053;
    String.append(_:)(v10);
    v11 = [a3 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    sub_1001E27A0(inited);
    swift_setDeallocating();
    sub_1001AD2D0(inited + 32);
    sub_1001ADA44(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_beginAccess();
    v16 = *v4;
    *v4 = 0;
    v5 = 0;

    v3 = 0;
  }

  v17 = v3;
  return v5;
}

id sub_1001AC628(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    type metadata accessor for ICError(0);
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v8;
    _StringGuts.grow(_:)(87);
    v9._object = 0x8000000100560440;
    v9._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 0xD000000000000053;
    v10._object = 0x80000001005603E0;
    String.append(_:)(v10);
    v11 = [a3 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    sub_1001E27A0(inited);
    swift_setDeallocating();
    sub_1001AD2D0(inited + 32);
    sub_1001ADA44(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_beginAccess();
    v16 = *v4;
    *v4 = 0;
    v5 = 0;

    v3 = 0;
  }

  v17 = v3;
  return v5;
}

char *_s11MobileNotes18AppendToNoteIntentVACycfC_0()
{
  v0 = sub_10015DA04(&unk_1006C5400);
  __chkstk_darwin(v0 - 8);
  v53 = v36 - v1;
  v2 = type metadata accessor for InputConnectionBehavior();
  v3 = *(v2 - 8);
  v56 = v2;
  v57 = v3;
  __chkstk_darwin(v2);
  v55 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10015DA04(&unk_1006BE0D0);
  v6 = __chkstk_darwin(v5 - 8);
  v52 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54 = v36 - v8;
  v9 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v9 - 8);
  v51 = v36 - v10;
  v11 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v11 - 8);
  v46 = v36 - v12;
  v13 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for LocalizedStringResource();
  v48 = v19;
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v36[1] = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10015DA04(&unk_1006BE580);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v14 + 104);
  v37 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v38 = v13;
  v23(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  v40 = v23;
  v39 = v14 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23(v16, v22, v13);
  v24 = v46;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v25 = *(v20 + 56);
  v47 = v20 + 56;
  v49 = v25;
  v25(v24, 0, 1, v19);
  v26 = type metadata accessor for NoteEntity(0);
  (*(*(v26 - 8) + 56))(v51, 1, 1, v26);
  v27 = type metadata accessor for IntentDialog();
  v43 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v44 = v29;
  v45 = v28 + 56;
  v29(v54, 1, 1, v27);
  v29(v52, 1, 1, v27);
  v41 = enum case for InputConnectionBehavior.default(_:);
  v30 = *(v57 + 104);
  v57 += 104;
  v42 = v30;
  v30(v55);
  sub_1001ADA44(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  v52 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10015DA04(&unk_1006BCAE0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = v37;
  v32 = v38;
  v33 = v40;
  v40(v16, v37, v38);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33(v16, v31, v32);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v49(v24, 0, 1, v48);
  v34 = type metadata accessor for AttributedString();
  (*(*(v34 - 8) + 56))(v53, 1, 1, v34);
  v44(v54, 1, 1, v43);
  v42(v55, v41, v56);
  IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
  sub_10015DA04(&qword_1006C34B0);
  v58 = 0xD000000000000021;
  v59 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v52;
}

uint64_t sub_1001AD0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AD144(uint64_t a1)
{
  v2 = type metadata accessor for NoteEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001AD1C4()
{
  result = qword_1006BE488;
  if (!qword_1006BE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE488);
  }

  return result;
}

unint64_t sub_1001AD21C()
{
  result = qword_1006BE490;
  if (!qword_1006BE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE490);
  }

  return result;
}

uint64_t sub_1001AD2D0(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006BFA10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001AD358(void *a1@<X8>)
{
  sub_1001AC1F8(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = v4;
  }
}

void sub_1001AD424(_BYTE *a1@<X8>)
{
  sub_1001ABEC4(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = v4 & 1;
  }
}

void sub_1001AD45C(void *a1@<X8>)
{
  sub_1001ABDB4(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = v4;
  }
}

uint64_t sub_1001AD490()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1001AD4F8(void *a1@<X0>, void *a2@<X8>)
{
  sub_1001AC0E8(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), a1);
  if (!v3)
  {
    *a2 = v5;
    a2[1] = v6;
  }
}

void sub_1001AD530(void *a1)
{
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 managedObjectContext];
  if (!v7)
  {
    type metadata accessor for ICError(0);
    v14[1] = 225;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001ADA44(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return;
  }

  v8 = v7;
  if ([a1 isPasswordProtectedAndLocked])
  {
    sub_100197CCC();
    swift_allocError();
    v10 = 15;
LABEL_9:
    *v9 = v10;
LABEL_10:
    swift_willThrow();
    goto LABEL_11;
  }

  if (![a1 isEditable])
  {
    sub_100197CCC();
    swift_allocError();
    v10 = 16;
    goto LABEL_9;
  }

  IntentParameter.wrappedValue.getter();
  ICNote.append(_:options:)();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
LABEL_11:

    return;
  }

  (*(v4 + 8))(v6, v3);
  v15 = 0;
  if (([v8 save:&v15] & 1) == 0)
  {
    v13 = v15;
    _convertNSErrorToError(_:)();

    goto LABEL_10;
  }

  v11 = v15;
  v12 = [a1 objectID];
}

void sub_1001AD7FC(void *a1)
{
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 managedObjectContext];
  if (!v7)
  {
    type metadata accessor for ICError(0);
    v12[1] = 225;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001ADA44(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return;
  }

  v8 = v7;
  IntentParameter.wrappedValue.getter();
  NoteObject.append(_:)();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    v13 = 0;
    if ([v8 save:&v13])
    {
      v9 = v13;
      v10 = [a1 objectID];
      return;
    }

    v11 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1001ADA44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001ADAB4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t sub_1001ADAD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1001ADB40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1001ADBB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1001ADC28()
{
  v1 = sub_10015DA04(&qword_1006BE918);
  v121 = *(v1 - 8);
  v122 = v1;
  v2 = __chkstk_darwin(v1);
  v120 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v119 = &v84 - v4;
  v113 = sub_10015DA04(&qword_1006BE980);
  v114 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v84 - v5;
  v115 = sub_10015DA04(&qword_1006BE988);
  v116 = *(v115 - 8);
  __chkstk_darwin(v115);
  v111 = &v84 - v6;
  v117 = sub_10015DA04(&qword_1006BE990);
  v118 = *(v117 - 8);
  __chkstk_darwin(v117);
  v112 = &v84 - v7;
  v108 = sub_10015DA04(&qword_1006BE998);
  v109 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v84 - v8;
  v106 = sub_10015DA04(&qword_1006BE9A0);
  v137 = *(v106 - 8);
  v9 = __chkstk_darwin(v106);
  v129 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v105 = &v84 - v11;
  v127 = sub_10015DA04(&qword_1006BE9A8);
  v136 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v84 - v12;
  v100 = sub_10015DA04(&qword_1006BE9B0);
  v101 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v84 - v13;
  v102 = sub_10015DA04(&qword_1006BE9B8);
  v103 = *(v102 - 1);
  __chkstk_darwin(v102);
  v98 = &v84 - v14;
  v95 = sub_10015DA04(&qword_1006BE9C0);
  v94 = *(v95 - 1);
  v15 = __chkstk_darwin(v95);
  v93 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v92 = &v84 - v17;
  v18 = sub_10015DA04(&qword_1006BE9C8);
  __chkstk_darwin(v18 - 8);
  v124 = &v84 - v19;
  v87 = sub_10015DA04(&qword_1006BE9D0);
  v133 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v84 - v20;
  v89 = sub_10015DA04(&qword_1006BE9D8);
  v90 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v84 - v21;
  v123 = sub_10015DA04(&qword_1006BE7F8);
  v135 = *(v123 - 1);
  __chkstk_darwin(v123);
  v23 = &v84 - v22;
  v128 = sub_10015DA04(&qword_1006BE7F0);
  v24 = *(v128 - 8);
  __chkstk_darwin(v128);
  v26 = &v84 - v25;
  v27 = sub_10015DA04(&qword_1006C5F70);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v84 - v29;
  *(v0 + 16) = [objc_opt_self() sharedIndexer];
  v31 = OBJC_IVAR____TtCV11MobileNotes23SearchIndexDebugSection9ViewModel__enabled;
  v91 = OBJC_IVAR____TtCV11MobileNotes23SearchIndexDebugSection9ViewModel__enabled;
  LOBYTE(v138) = 0;
  Published.init(initialValue:)();
  v32 = *(v28 + 32);
  v125 = v27;
  v32(v0 + v31, v30, v27);
  v33 = OBJC_IVAR____TtCV11MobileNotes23SearchIndexDebugSection9ViewModel__observing;
  v96 = OBJC_IVAR____TtCV11MobileNotes23SearchIndexDebugSection9ViewModel__observing;
  LOBYTE(v138) = 0;
  Published.init(initialValue:)();
  v32(v0 + v33, v30, v27);
  v34 = OBJC_IVAR____TtCV11MobileNotes23SearchIndexDebugSection9ViewModel__dataSources;
  v104 = OBJC_IVAR____TtCV11MobileNotes23SearchIndexDebugSection9ViewModel__dataSources;
  v138 = _swiftEmptyArrayStorage;
  v99 = sub_10015DA04(&qword_1006BE5F8);
  Published.init(initialValue:)();
  v35 = v0;
  (*(v24 + 32))(v0 + v34, v26, v128);
  v36 = OBJC_IVAR____TtCV11MobileNotes23SearchIndexDebugSection9ViewModel__operationCount;
  v138 = 0;
  Published.init(initialValue:)();
  (*(v135 + 32))(v0 + v36, v23, v123);
  v37 = *(v0 + 16);
  swift_getKeyPath();
  v38 = v37;
  v39 = v85;
  _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

  v130 = sub_1001B3B1C();
  v40 = static OS_dispatch_queue.main.getter();
  v138 = v40;
  v135 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v41 = *(v135 - 8);
  v134 = *(v41 + 56);
  v132 = v41 + 56;
  v42 = v124;
  v134(v124, 1, 1, v135);
  v88 = &protocol conformance descriptor for NSObject.KeyValueObservingPublisher<A, B>;
  sub_1000060B4(&qword_1006BE9E8, &qword_1006BE9D0);
  v131 = sub_1001B3B68(&qword_1006BE9F0, sub_1001B3B1C);
  v43 = v86;
  v44 = v87;
  Publisher.receive<A>(on:options:)();
  sub_1000073B4(v42, &qword_1006BE9C8);

  v133[1](v39, v44);
  swift_beginAccess();
  v45 = v92;
  Published.projectedValue.getter();
  swift_endAccess();
  v133 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_1000060B4(&qword_1006BE9F8, &qword_1006BE9D8);
  v46 = v89;
  Publisher<>.assign(to:)();
  (*(v90 + 8))(v43, v46);
  v47 = v94;
  v48 = v95;
  (*(v94 + 16))(v93, v45, v95);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v47 + 8))(v45, v48);
  v49 = *(v35 + 16);
  swift_getKeyPath();
  v50 = v49;
  v51 = v126;
  _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

  v94 = sub_1000060B4(&qword_1006BEA00, &qword_1006BE9A8);
  v52 = v97;
  v53 = v127;
  Publisher.map<A>(_:)();
  v54 = *(v136 + 8);
  v136 += 8;
  v95 = v54;
  (v54)(v51, v53);
  v55 = static OS_dispatch_queue.main.getter();
  v138 = v55;
  v134(v42, 1, 1, v135);
  v123 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_1000060B4(&qword_1006BEA08, &qword_1006BE9B0);
  v56 = v98;
  v57 = v100;
  Publisher.receive<A>(on:options:)();
  sub_1000073B4(v42, &qword_1006BE9C8);

  (*(v101 + 8))(v52, v57);
  swift_beginAccess();
  v58 = v105;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_1000060B4(&qword_1006BEA10, &qword_1006BE9B8);
  v59 = v102;
  Publisher<>.assign(to:)();
  (*(v103 + 8))(v56, v59);
  v60 = v137;
  v103 = *(v137 + 16);
  v61 = v106;
  (v103)(v129, v58, v106);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  v62 = *(v60 + 8);
  v137 = v60 + 8;
  v102 = v62;
  (v62)(v58, v61);
  v63 = *(v35 + 16);
  swift_getKeyPath();
  v64 = v63;
  v65 = v126;
  _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

  v66 = static OS_dispatch_queue.main.getter();
  v138 = v66;
  v67 = v124;
  v134(v124, 1, 1, v135);
  v68 = v107;
  v69 = v127;
  Publisher.receive<A>(on:options:)();
  sub_1000073B4(v67, &qword_1006BE9C8);

  (v95)(v65, v69);
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  sub_1000060B4(&qword_1006BEA18, &qword_1006BE998);
  v70 = v108;
  Publisher<>.assign(to:)();
  (*(v109 + 8))(v68, v70);
  (v103)(v129, v58, v61);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (v102)(v58, v61);
  v71 = *(v35 + 16);
  swift_getKeyPath();
  v72 = v71;
  v73 = v110;
  _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

  sub_1000060B4(&qword_1006BEA20, &qword_1006BE980);
  v74 = v111;
  v75 = v113;
  Publisher.map<A>(_:)();
  (*(v114 + 8))(v73, v75);
  v76 = static OS_dispatch_queue.main.getter();
  v138 = v76;
  v134(v67, 1, 1, v135);
  sub_1000060B4(&qword_1006BEA28, &qword_1006BE988);
  v77 = v112;
  v78 = v115;
  Publisher.receive<A>(on:options:)();
  sub_1000073B4(v67, &qword_1006BE9C8);

  (*(v116 + 8))(v74, v78);
  swift_beginAccess();
  v79 = v119;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_1000060B4(&qword_1006BEA30, &qword_1006BE990);
  v80 = v117;
  Publisher<>.assign(to:)();
  (*(v118 + 8))(v77, v80);
  v81 = v121;
  v82 = v122;
  (*(v121 + 16))(v120, v79, v122);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v81 + 8))(v79, v82);
  return v35;
}

void sub_1001AF0C4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 dataSources];
  sub_10015DA04(&qword_1006BEA38);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

uint64_t *sub_1001AF134@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result >> 62)
  {
    v19 = *result;
    result = _CocoaArrayWrapper.endIndex.getter();
    v3 = v19;
    v4 = result;
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
LABEL_13:
    *a2 = _swiftEmptyArrayStorage;
    return result;
  }

  v5 = v3;
  result = sub_1001894C4(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v5;
    v20 = a2;
    v21 = v5 & 0xC000000000000001;
    v8 = v5;
    v9 = v4;
    do
    {
      if (v21)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v7 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v11 = [v10 dataSourceIdentifier];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = [v10 indexingPriority];
      result = swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_1001894C4((v16 > 1), v17 + 1, 1);
      }

      ++v6;
      _swiftEmptyArrayStorage[2] = v17 + 1;
      v18 = &_swiftEmptyArrayStorage[3 * v17];
      v18[4] = v15;
      v18[5] = v12;
      v18[6] = v14;
      v7 = v8;
    }

    while (v9 != v6);
    a2 = v20;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001AF2D0()
{
  v1 = OBJC_IVAR____TtCV11MobileNotes23SearchIndexDebugSection9ViewModel__enabled;
  v2 = sub_10015DA04(&qword_1006C5F70);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV11MobileNotes23SearchIndexDebugSection9ViewModel__observing, v2);
  v4 = OBJC_IVAR____TtCV11MobileNotes23SearchIndexDebugSection9ViewModel__dataSources;
  v5 = sub_10015DA04(&qword_1006BE7F0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCV11MobileNotes23SearchIndexDebugSection9ViewModel__operationCount;
  v7 = sub_10015DA04(&qword_1006BE7F8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchIndexDebugSection.ViewModel()
{
  result = qword_1006BE5D8;
  if (!qword_1006BE5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001AF49C()
{
  sub_1001AF634(319, &qword_1006C5EC0);
  if (v0 <= 0x3F)
  {
    sub_1001AF5D0();
    if (v1 <= 0x3F)
    {
      sub_1001AF634(319, &unk_1006BE600);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1001AF5D0()
{
  if (!qword_1006BE5F0)
  {
    sub_10017992C(&qword_1006BE5F8);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BE5F0);
    }
  }
}

void sub_1001AF634(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1001AF68C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1001AF6D4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001AF728(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001AF770(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001AF7E8@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001AF838()
{
  type metadata accessor for SearchIndexDebugSection.ViewModel();
  v0 = swift_allocObject();
  sub_1001ADC28();
  return v0;
}

uint64_t sub_1001AF874@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_10015DA04(&qword_1006BE6A8);
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v26 - v4;
  v26 = sub_10015DA04(&qword_1006BE6B0);
  v5 = __chkstk_darwin(v26);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_10015DA04(&qword_1006BE6B8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = sub_10015DA04(&qword_1006BE6C0);
  sub_1001AFDD4(a1 & 1, &v14[*(v15 + 44)]);
  type metadata accessor for SearchIndexDebugSection.ViewModel();
  sub_1001B3B68(&qword_1006BE6C8, type metadata accessor for SearchIndexDebugSection.ViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v32;
  swift_getKeyPath();
  *&v32 = v16;

  sub_1001B275C(sub_1001B37E4, 0);

  sub_10015DA04(&qword_1006BE6D0);
  sub_10015DA04(&qword_1006BE5F8);
  sub_1000060B4(&qword_1006BE6D8, &qword_1006BE6D0);
  sub_1000060B4(&qword_1006BE6E0, &qword_1006BE5F8);
  v17 = v27;
  Table.init<A>(_:columns:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v28 + 32))(v8, v17, v29);

  v18 = &v8[*(v26 + 36)];
  v19 = v37;
  *(v18 + 4) = v36;
  *(v18 + 5) = v19;
  *(v18 + 6) = v38;
  v20 = v33;
  *v18 = v32;
  *(v18 + 1) = v20;
  v21 = v35;
  *(v18 + 2) = v34;
  *(v18 + 3) = v21;
  sub_100006038(v14, v12, &qword_1006BE6B8);
  v22 = v30;
  sub_100006038(v8, v30, &qword_1006BE6B0);
  v23 = v31;
  sub_100006038(v12, v31, &qword_1006BE6B8);
  v24 = sub_10015DA04(&qword_1006BE6E8);
  sub_100006038(v22, v23 + *(v24 + 48), &qword_1006BE6B0);
  sub_1000073B4(v8, &qword_1006BE6B0);
  sub_1000073B4(v14, &qword_1006BE6B8);
  sub_1000073B4(v22, &qword_1006BE6B0);
  return sub_1000073B4(v12, &qword_1006BE6B8);
}

uint64_t sub_1001AFDD4@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_10015DA04(&qword_1006BE718);
  v4 = __chkstk_darwin(v3 - 8);
  v24 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v23 = v22 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = v22 - v9;
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  type metadata accessor for SearchIndexDebugSection.ViewModel();
  sub_1001B3B68(&qword_1006BE6C8, type metadata accessor for SearchIndexDebugSection.ViewModel);
  v22[1] = a1;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v28;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v14 = sub_10015DA04(&qword_1006BE720);
  sub_1001B0204(v13, 0x64656C62616E45, 0xE700000000000000, 0x64656C6261736944, 0xE800000000000000, &v12[*(v14 + 44)]);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v27;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_1001B0204(v15, 0x6E6976726573624FLL, 0xE900000000000067, 0x6573626F20746F4ELL, 0xED0000676E697672, &v10[*(v14 + 44)]);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v26;
  v17 = v23;
  sub_100006038(v12, v23, &qword_1006BE718);
  v18 = v24;
  sub_100006038(v10, v24, &qword_1006BE718);
  v19 = v25;
  sub_100006038(v17, v25, &qword_1006BE718);
  v20 = sub_10015DA04(&qword_1006BE728);
  sub_100006038(v18, v19 + *(v20 + 48), &qword_1006BE718);
  *(v19 + *(v20 + 64)) = v16;
  sub_1000073B4(v10, &qword_1006BE718);
  sub_1000073B4(v12, &qword_1006BE718);
  sub_1000073B4(v18, &qword_1006BE718);
  return sub_1000073B4(v17, &qword_1006BE718);
}

uint64_t sub_1001B0204@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v34 = a6;
  v11 = sub_10015DA04(&qword_1006BE730);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  if (a1)
  {
    v18 = static Color.green.getter();
  }

  else
  {
    v18 = static Color.red.getter();
    a2 = a4;
    a3 = a5;
  }

  v35 = v18;
  sub_10015DA04(&qword_1006BE738);
  sub_1001B38B8();
  View.ic_frame(size:)();

  v35 = a2;
  v36 = a3;
  sub_10019E0AC();
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v12;
  v27 = *(v12 + 16);
  v27(v15, v17, v11);
  v28 = v15;
  v33 = v15;
  v29 = v34;
  v27(v34, v28, v11);
  v30 = &v29[*(sub_10015DA04(&qword_1006BE768) + 48)];
  *v30 = v19;
  *(v30 + 1) = v21;
  v30[16] = v23 & 1;
  *(v30 + 3) = v25;
  sub_1001B39C4(v19, v21, v23 & 1);
  v31 = *(v26 + 8);

  v31(v17, v11);
  sub_1001B39D4(v19, v21, v23 & 1);

  return (v31)(v33, v11);
}

uint64_t sub_1001B0468()
{
  LocalizedStringKey.init(stringLiteral:)();
  swift_getKeyPath();
  sub_1001B384C();
  TableColumn<>.init<>(_:value:)();
  LocalizedStringKey.init(stringLiteral:)();
  swift_getKeyPath();
  sub_10015DA04(&qword_1006BE700);
  return TableColumn<>.init<>(_:value:)();
}

uint64_t sub_1001B0574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = static VerticalAlignment.center.getter();
  sub_1001B0794(a1, &v28);
  v6 = v28;
  v7 = v29;
  v8 = v30[0];
  v32 = 1;
  v31 = v30[0];
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x706F207865646E69;
  v9._object = 0xEF6E6F6974617265;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
  if (a1 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 115;
  }

  if (a1 == 1)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0xE100000000000000;
  }

  v12 = v11;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*&v10);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v13);
  LocalizedStringKey.init(stringInterpolation:)();
  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  v25 = v8;
  v26 = v5;
  v27[0] = 1;
  *&v27[8] = v6;
  *&v27[24] = v7;
  v27[40] = v8;
  *&v30[9] = *&v27[25];
  v29 = *v27;
  *v30 = *&v27[16];
  v28 = v5;
  v18 = v17 & 1;
  v24[64] = v17 & 1;
  v19 = v26;
  v20 = *v27;
  v21 = *&v30[16];
  *(a2 + 32) = *&v27[16];
  *(a2 + 48) = v21;
  *a2 = v19;
  *(a2 + 16) = v20;
  *(a2 + 64) = v14;
  *(a2 + 72) = v15;
  *(a2 + 80) = v17 & 1;
  *(a2 + 88) = v22;
  sub_100006038(&v26, v24, &qword_1006BEA48);
  sub_1001B39C4(v14, v16, v18);

  sub_1001B39D4(v14, v16, v18);

  return sub_1001B3BD4(v6, *(&v6 + 1), v7, *(&v7 + 1), v25);
}

double sub_1001B0794@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 9)
  {
    if (a1 > 0x63)
    {
      sub_1001B37F8();
      *&v10 = BinaryInteger.description.getter();
      *(&v10 + 1) = v8;
      sub_10019E0AC();
      Text.init<A>(_:)();
      sub_10015DA04(&qword_1006BEA50);
      sub_1001B3C74();
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      dispatch thunk of CustomStringConvertible.description.getter();
      v5._countAndFlagsBits = 0x656C637269632ELL;
      v5._object = 0xE700000000000000;
      String.append(_:)(v5);
      Image.init(systemName:)();
      *&v10 = dispatch thunk of CustomStringConvertible.description.getter();
      *(&v10 + 1) = v6;
      v7._countAndFlagsBits = 0x656C637269632ELL;
      v7._object = 0xE700000000000000;
      String.append(_:)(v7);
      Image.init(systemName:)();

      sub_10015DA04(&qword_1006BEA68);
      sub_1000060B4(&qword_1006BEA60, &qword_1006BEA68);
      _ConditionalContent<>.init(storage:)();
      sub_10015DA04(&qword_1006BEA50);
      sub_1001B3C74();
      _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    *&v10 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v10 + 1) = v3;
    v4._countAndFlagsBits = 0x656C637269632ELL;
    v4._object = 0xE700000000000000;
    String.append(_:)(v4);
    Image.init(systemName:)();

    sub_10015DA04(&qword_1006BEA68);
    sub_1000060B4(&qword_1006BEA60, &qword_1006BEA68);
    _ConditionalContent<>.init(storage:)();
    sub_10015DA04(&qword_1006BEA50);
    sub_1001B3C74();
    _ConditionalContent<>.init(storage:)();
  }

  result = *&v10;
  *a2 = v10;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  return result;
}

double sub_1001B0B50@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = static VerticalAlignment.center.getter();
  v18 = 1;
  sub_1001B0574(v3, &v11);
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v19 = v11;
  v20 = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v25[5] = v16;
  v25[0] = v11;
  v25[1] = v12;
  sub_100006038(&v19, &v10, &qword_1006BEA40);
  sub_1000073B4(v25, &qword_1006BEA40);
  *&v17[39] = v21;
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24;
  *&v17[7] = v19;
  *&v17[23] = v20;
  v5 = *&v17[32];
  *(a1 + 65) = *&v17[48];
  v6 = *&v17[80];
  *(a1 + 81) = *&v17[64];
  *(a1 + 97) = v6;
  v8 = *v17;
  result = *&v17[16];
  *(a1 + 33) = *&v17[16];
  *(a1 + 49) = v5;
  v9 = v18;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 112) = *&v17[95];
  *(a1 + 17) = v8;
  return result;
}

uint64_t sub_1001B0C60@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_10015DA04(&qword_1006BE6A0);
  return sub_1001AF874(v3, a1 + *(v4 + 44));
}

uint64_t sub_1001B0CCC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1001B0D48()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1001B0DB8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1001B0E38()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1001B0EAC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1001B0F2C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

char *sub_1001B0FD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10015DA04(&qword_1006BE8F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001B1154(char *result, int64_t a2, char a3, char *a4)
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
    sub_10015DA04(&qword_1006BE710);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001B1298(char *result, int64_t a2, char a3, char *a4)
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
    sub_10015DA04(&qword_1006BE850);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001B13A8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10015DA04(&qword_1006BE7D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10015DA04(&unk_1006BE7E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001B1504(void *result, int64_t a2, char a3, void *a4)
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
    sub_10015DA04(&unk_1006BE8A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10015DA04(&unk_1006C4D40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001B164C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10015DA04(&qword_1006BE8B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10015DA04(&qword_1006BE8B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001B1780(char *result, int64_t a2, char a3, char *a4)
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
    sub_10015DA04(&qword_1006BE8C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_1001B18AC(void *result, int64_t a2, char a3, void *a4)
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
    sub_10015DA04(&qword_1006BE7C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10015DA04(&qword_1006BE7C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001B1A1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10015DA04(&qword_1006BE770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_1001B1B98(char *result, int64_t a2, char a3, char *a4)
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
    sub_10015DA04(&qword_1006BE888);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001B1CC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10015DA04(&qword_1006BE7B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001B1DE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10015DA04(&qword_1006BE778);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001B1F00(char *result, int64_t a2, char a3, char *a4)
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
    sub_10015DA04(&qword_1006BE800);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001B202C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10015DA04(&qword_1006BE7B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1001B217C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10015DA04(&qword_1006BE798);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10015DA04(&qword_1006BE7A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1001B2350(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10015DA04(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_1001B2574(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10015DA04(a5);
  v14 = *(sub_10015DA04(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(sub_10015DA04(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

Swift::Int sub_1001B275C(uint64_t (*a1)(__int128 *, __int128 *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1001B38A0(v5);
  }

  result = sub_1001B27E0(a1, a2);
  *v2 = v5;
  return result;
}

Swift::Int sub_1001B27E0(uint64_t (*a1)(__int128 *, __int128 *), uint64_t a2)
{
  v5 = *(v2 + 8);
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v5 / 2;
      }

      v10[0] = v8 + 4;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_1001B2A24(v10, v11, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1001B28E8(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1001B28E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, __int128 *))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = *v4 + 24 * a3 - 24;
    v9 = result - a3;
LABEL_4:
    v23 = a3;
    v10 = (v7 + 24 * a3);
    v11 = *v10;
    v12 = *(v10 + 2);
    v17 = v9;
    v18 = v8;
    while (1)
    {
      v21 = v11;
      v22 = v12;
      v13 = *(v8 + 16);
      v19 = *v8;
      v20 = v13;

      v14 = a4(&v21, &v19);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return result;
        }

        v11 = *(v8 + 24);
        v12 = *(v8 + 40);
        *(v8 + 24) = *v8;
        *(v8 + 40) = *(v8 + 16);
        *v8 = v11;
        *(v8 + 16) = v12;
        v8 -= 24;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v23 + 1;
      v8 = v18 + 24;
      v9 = v17 - 1;
      if (v23 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1001B2A24(uint64_t result, uint64_t a2, char *a3, uint64_t (*a4)(__int128 *, __int128 *), uint64_t a5, uint64_t a6)
{
  v110 = result;
  v8 = *(a3 + 1);
  if (v8 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_91:
    v9 = *v110;
    if (*v110)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_93;
    }

    goto LABEL_131;
  }

  v9 = a3;
  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v13 >= v8)
    {
      v28 = v13;
    }

    else
    {
      v14 = v12;
      v15 = *v9;
      v16 = *v9 + 24 * v13;
      v17 = *(v16 + 16);
      v120 = *v16;
      v121 = v17;
      v18 = (v15 + 24 * v14);
      v19 = *(v18 + 2);
      v118 = *v18;
      v119 = v19;

      v112 = a4(&v120, &v118);
      if (v6)
      {
LABEL_102:
      }

      v114 = a5;

      v20 = v8;
      v21 = 0;
      v103 = v20 - 1;
      v106 = v14;
      v108 = v20;
      v22 = v14 - v20 + 2;
      v23 = 24 * v14;
      v24 = v15 + v23 + 40;
      while (v22 + v21)
      {
        v25 = *(v24 + 24);
        v120 = *(v24 + 8);
        v121 = v25;
        v26 = *v24;
        v118 = *(v24 - 16);
        v119 = v26;

        v27 = a4(&v120, &v118);

        ++v21;
        v24 += 24;
        if ((v112 ^ v27))
        {
          v12 = v106;
          v103 = v106 + v21;
          v28 = v106 + v21 + 1;
          goto LABEL_12;
        }
      }

      v12 = v106;
      v28 = v108;
LABEL_12:
      a5 = v114;
      v9 = a3;
      if (v112)
      {
        if (v28 < v12)
        {
          goto LABEL_125;
        }

        if (v12 <= v103)
        {
          v90 = 0;
          v91 = 24 * v28;
          v92 = v12;
          do
          {
            if (v92 != v28 + v90 - 1)
            {
              v93 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v94 = (v93 + v23);
              v95 = v93 + v91;
              v96 = *(v94 + 2);
              v97 = *v94;
              v98 = *(v95 - 8);
              *v94 = *(v95 - 24);
              *(v94 + 2) = v98;
              *(v95 - 24) = v97;
              *(v95 - 8) = v96;
            }

            ++v92;
            --v90;
            v91 -= 24;
            v23 += 24;
          }

          while (v92 < v28 + v90);
        }
      }
    }

    v29 = *(v9 + 1);
    if (v28 >= v29)
    {
      goto LABEL_25;
    }

    if (__OFSUB__(v28, v12))
    {
      goto LABEL_121;
    }

    if (v28 - v12 >= a6)
    {
      goto LABEL_25;
    }

    if (__OFADD__(v12, a6))
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v30 = v28;
    if (v12 + a6 >= v29)
    {
      v31 = *(v9 + 1);
    }

    else
    {
      v31 = v12 + a6;
    }

    if (v31 < v12)
    {
      goto LABEL_124;
    }

    if (v30 == v31)
    {
      v28 = v30;
LABEL_25:
      if (v28 < v12)
      {
        goto LABEL_120;
      }

      goto LABEL_26;
    }

    v79 = *v9;
    v80 = *v9 + 24 * v30 - 24;
    v107 = v12;
    v81 = v12 - v30;
    v116 = v31;
    do
    {
      v109 = v30;
      v82 = (v79 + 24 * v30);
      v83 = *v82;
      v84 = *(v82 + 2);
      v104 = v81;
      v85 = v81;
      v113 = v80;
      do
      {
        v120 = v83;
        v121 = v84;
        v86 = *(v80 + 16);
        v118 = *v80;
        v119 = v86;

        v87 = a4(&v120, &v118);
        if (v6)
        {
          goto LABEL_102;
        }

        v88 = v87;

        if ((v88 & 1) == 0)
        {
          break;
        }

        if (!v79)
        {
          goto LABEL_127;
        }

        v83 = *(v80 + 24);
        v84 = *(v80 + 40);
        *(v80 + 24) = *v80;
        *(v80 + 40) = *(v80 + 16);
        *v80 = v83;
        *(v80 + 16) = v84;
        v80 -= 24;
      }

      while (!__CFADD__(v85++, 1));
      v30 = v109 + 1;
      v28 = v116;
      v80 = v113 + 24;
      v81 = v104 - 1;
    }

    while (v109 + 1 != v116);
    v9 = a3;
    v12 = v107;
    if (v116 < v107)
    {
      goto LABEL_120;
    }

LABEL_26:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1001B36E0(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v33 = *(v11 + 2);
    v32 = *(v11 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_1001B36E0((v32 > 1), v33 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v34;
    v35 = &v11[16 * v33];
    *(v35 + 4) = v12;
    *(v35 + 5) = v28;
    v36 = *v110;
    if (!*v110)
    {
      goto LABEL_130;
    }

    v115 = v28;
    if (v33)
    {
      break;
    }

LABEL_3:
    v8 = *(v9 + 1);
    v10 = v115;
    if (v115 >= v8)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v37 = v34 - 1;
    if (v34 >= 4)
    {
      v42 = &v11[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_107;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_108;
      }

      v49 = &v11[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_110;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_113;
      }

      if (v53 >= v45)
      {
        v71 = &v11[16 * v37 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_119;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_66;
      }

      goto LABEL_45;
    }

    if (v34 == 3)
    {
      v38 = *(v11 + 4);
      v39 = *(v11 + 5);
      v48 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      v41 = v48;
LABEL_45:
      if (v41)
      {
        goto LABEL_109;
      }

      v54 = &v11[16 * v34];
      v56 = *v54;
      v55 = *(v54 + 1);
      v57 = __OFSUB__(v55, v56);
      v58 = v55 - v56;
      v59 = v57;
      if (v57)
      {
        goto LABEL_112;
      }

      v60 = &v11[16 * v37 + 32];
      v62 = *v60;
      v61 = *(v60 + 1);
      v48 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v48)
      {
        goto LABEL_115;
      }

      if (__OFADD__(v58, v63))
      {
        goto LABEL_116;
      }

      if (v58 + v63 >= v40)
      {
        if (v40 < v63)
        {
          v37 = v34 - 2;
        }

        goto LABEL_66;
      }

      goto LABEL_59;
    }

    v64 = &v11[16 * v34];
    v66 = *v64;
    v65 = *(v64 + 1);
    v48 = __OFSUB__(v65, v66);
    v58 = v65 - v66;
    v59 = v48;
LABEL_59:
    if (v59)
    {
      goto LABEL_111;
    }

    v67 = &v11[16 * v37];
    v69 = *(v67 + 4);
    v68 = *(v67 + 5);
    v48 = __OFSUB__(v68, v69);
    v70 = v68 - v69;
    if (v48)
    {
      goto LABEL_114;
    }

    if (v70 < v58)
    {
      goto LABEL_3;
    }

LABEL_66:
    v75 = v37 - 1;
    if (v37 - 1 >= v34)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_126;
    }

    v76 = *&v11[16 * v75 + 32];
    v77 = *&v11[16 * v37 + 40];
    sub_1001B31B0((*v9 + 24 * v76), (*v9 + 24 * *&v11[16 * v37 + 32]), (*v9 + 24 * v77), v36, a4);
    if (v6)
    {
    }

    if (v77 < v76)
    {
      goto LABEL_105;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1001B36CC(v11);
    }

    if (v75 >= *(v11 + 2))
    {
      goto LABEL_106;
    }

    v78 = &v11[16 * v75];
    *(v78 + 4) = v76;
    *(v78 + 5) = v77;
    v122 = v11;
    result = sub_1001B3640(v37);
    v11 = v122;
    v34 = *(v122 + 2);
    if (v34 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  result = sub_1001B36CC(v11);
  v11 = result;
LABEL_93:
  v122 = v11;
  v99 = *(v11 + 2);
  if (v99 < 2)
  {
  }

  while (*a3)
  {
    v100 = *&v11[16 * v99];
    v101 = *&v11[16 * v99 + 24];
    sub_1001B31B0((*a3 + 24 * v100), (*a3 + 24 * *&v11[16 * v99 + 16]), (*a3 + 24 * v101), v9, a4);
    if (v6)
    {
    }

    if (v101 < v100)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1001B36CC(v11);
    }

    if (v99 - 2 >= *(v11 + 2))
    {
      goto LABEL_118;
    }

    v102 = &v11[16 * v99];
    *v102 = v100;
    *(v102 + 1) = v101;
    v122 = v11;
    result = sub_1001B3640(v99 - 1);
    v11 = v122;
    v99 = *(v122 + 2);
    if (v99 <= 1)
    {
    }
  }

LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_1001B31B0(char *__dst, char *a2, char *a3, char *__src, uint64_t (*a5)(__int128 *, __int128 *))
{
  v56 = a5;
  v6 = a3;
  v7 = a2 - __dst;
  v8 = (a2 - __dst) / 24;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 24;
  if (v8 < v10)
  {
    v11 = a2;
    v12 = __src;
    v13 = __dst;
    if (__src != __dst || &__dst[24 * v8] <= __src)
    {
      memmove(__src, __dst, 24 * v8);
    }

    v14 = &v12[24 * v8];
    if (v7 >= 24 && v11 < v6)
    {
      v15 = v11;
      v51 = &v12[24 * v8];
      while (1)
      {
        v16 = v6;
        v17 = *(v15 + 2);
        v54 = *v15;
        v55 = v17;
        v18 = *(v12 + 2);
        v52 = *v12;
        v53 = v18;

        v19 = v56(&v54, &v52);
        if (v5)
        {

          v45 = (v51 - v12) / 24;
          if (v13 < v12 || v13 >= &v12[24 * v45])
          {
            memmove(v13, v12, 24 * v45);
          }

          else if (v13 != v12)
          {
            v41 = 24 * v45;
            v42 = v13;
LABEL_40:
            v43 = v12;
LABEL_41:
            memmove(v42, v43, v41);
          }

          return 1;
        }

        v20 = v19;

        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = v15;
        v22 = v13 == v15;
        v15 += 24;
        v6 = v16;
        if (!v22)
        {
          goto LABEL_14;
        }

LABEL_15:
        v13 += 24;
        v14 = v51;
        if (v12 >= v51 || v15 >= v6)
        {
          goto LABEL_17;
        }
      }

      v21 = v12;
      v22 = v13 == v12;
      v12 += 24;
      v6 = v16;
      if (v22)
      {
        goto LABEL_15;
      }

LABEL_14:
      v23 = *v21;
      *(v13 + 2) = *(v21 + 2);
      *v13 = v23;
      goto LABEL_15;
    }

LABEL_17:
    a2 = v13;
LABEL_36:
    v39 = ((v14 - v12) * 0x2AAAAAAAAAAAAAABLL) >> 64;
    v40 = (v39 >> 2) + (v39 >> 63);
    if (a2 < v12 || a2 >= &v12[24 * v40] || a2 != v12)
    {
      v41 = 24 * v40;
      v42 = a2;
      goto LABEL_40;
    }

    return 1;
  }

  if (__src != a2 || &a2[24 * v10] <= __src)
  {
    v24 = a2;
    v25 = __src;
    memmove(__src, a2, 24 * v10);
    __src = v25;
    a2 = v24;
  }

  __srca = __src;
  v14 = &__src[24 * v10];
  if (v9 < 24 || a2 <= __dst)
  {
    v12 = __src;
    goto LABEL_36;
  }

LABEL_23:
  v49 = v6;
  v26 = 0;
  v27 = v14;
  v47 = (a2 - 24);
  while (1)
  {
    v28 = v27;
    v29 = &v27[v26];
    v30 = &v27[v26 - 24];
    v31 = *&v27[v26 - 8];
    v54 = *v30;
    v55 = v31;
    v32 = *(a2 - 1);
    v33 = a2;
    v52 = *(a2 - 24);
    v53 = v32;

    v34 = v56(&v54, &v52);
    if (v5)
    {
      break;
    }

    v35 = v34;

    if (v35)
    {
      v6 = v49 + v26 - 24;
      a2 = v47;
      if (v49 + v26 != v33)
      {
        v38 = *v47;
        *(v49 + v26 - 8) = *(v47 + 16);
        *v6 = v38;
      }

      v14 = &v28[v26];
      v12 = __srca;
      if (&v28[v26] <= __srca || v47 <= __dst)
      {
        v14 = &v28[v26];
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    a2 = v33;
    v27 = v28;
    if (v49 + v26 != v29)
    {
      v36 = v49 + v26 - 24;
      v37 = *v30;
      *(v36 + 16) = *(v30 + 16);
      *v36 = v37;
    }

    v26 -= 24;
    v14 = &v28[v26];
    v12 = __srca;
    if (&v28[v26] <= __srca)
    {
      goto LABEL_36;
    }
  }

  v43 = __srca;
  v46 = (v28 - __srca + v26) / 24;
  if (v33 < __srca || v33 >= &__srca[24 * v46])
  {
    memmove(v33, __srca, 24 * v46);
  }

  else if (v33 != __srca)
  {
    v41 = 24 * v46;
    v42 = v33;
    goto LABEL_41;
  }

  return 1;
}

uint64_t sub_1001B3640(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001B36CC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1001B36E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10015DA04(&qword_1006BE708);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_1001B37F8()
{
  result = qword_1006BE6F0;
  if (!qword_1006BE6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE6F0);
  }

  return result;
}

unint64_t sub_1001B384C()
{
  result = qword_1006BE6F8;
  if (!qword_1006BE6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE6F8);
  }

  return result;
}

unint64_t sub_1001B38B8()
{
  result = qword_1006BE740;
  if (!qword_1006BE740)
  {
    sub_10017992C(&qword_1006BE738);
    sub_1001B3970();
    sub_1000060B4(&qword_1006BE750, &qword_1006BE758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE740);
  }

  return result;
}

unint64_t sub_1001B3970()
{
  result = qword_1006BE748;
  if (!qword_1006BE748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE748);
  }

  return result;
}

uint64_t sub_1001B39C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1001B39D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1001B3B1C()
{
  result = qword_1006BE9E0;
  if (!qword_1006BE9E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006BE9E0);
  }

  return result;
}

uint64_t sub_1001B3B68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B3BD4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_1001B39D4(a1, a2, a3 & 1);
  }

  else
  {
    v7 = a3 & 1;

    return sub_1001B3C28(a1, a2, v7);
  }
}

uint64_t sub_1001B3C28(uint64_t a1, uint64_t a2, char a3)
{

  if (a3)
  {
  }

  return result;
}

unint64_t sub_1001B3C74()
{
  result = qword_1006BEA58;
  if (!qword_1006BEA58)
  {
    sub_10017992C(&qword_1006BEA50);
    sub_1000060B4(&qword_1006BEA60, &qword_1006BEA68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BEA58);
  }

  return result;
}

uint64_t sub_1001B3D2C()
{
  result = _s11MobileNotes18VisibleTablesQueryVACycfC_0();
  static TableEntity.defaultQuery = result;
  *algn_1006EF208 = v1;
  return result;
}

uint64_t *TableEntity.defaultQuery.unsafeMutableAddressor()
{
  if (qword_1006BC568 != -1)
  {
    swift_once();
  }

  return &static TableEntity.defaultQuery;
}

uint64_t static TableEntity.defaultQuery.getter()
{
  if (qword_1006BC568 != -1)
  {
    swift_once();
  }

  v0 = static TableEntity.defaultQuery;

  return v0;
}

uint64_t sub_1001B3E10()
{
  v0 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100025918(v10, static TableEntity.typeDisplayRepresentation);
  sub_10002597C(v10, static TableEntity.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v9 + 56))(v2, 0, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t TableEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_1006BC570 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_10002597C(v0, static TableEntity.typeDisplayRepresentation);
}

uint64_t static TableEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC570 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10002597C(v2, static TableEntity.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t TableEntity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TableID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TableEntity.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for TableID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TableEntity.managedObjectURI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TableEntity() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TableEntity()
{
  result = qword_1006BEBA0;
  if (!qword_1006BEBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TableEntity.managedObjectURI.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TableEntity() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TableEntity.title.getter()
{
  type metadata accessor for TableEntity();
  EntityProperty.wrappedValue.getter();
  return v1;
}

void (*TableEntity.title.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for TableEntity();
  *(v3 + 32) = EntityProperty.wrappedValue.modify();
  return sub_10017D9E0;
}

uint64_t TableEntity.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for TableEntity() + 28));

  return v1;
}

uint64_t TableEntity.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TableEntity() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1001B46A4@<X0>(void *a1@<X8>)
{
  if (qword_1006BC568 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *algn_1006EF208;
  *a1 = static TableEntity.defaultQuery;
  a1[1] = v1;
}

uint64_t sub_1001B4720(uint64_t a1)
{
  v2 = sub_1001B8744(&qword_1006BCCE0, type metadata accessor for TableEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t TableEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = sub_10015DA04(&unk_1006BEA80);
  __chkstk_darwin(v2 - 8);
  v18[0] = v18 - v3;
  v4 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v10 = __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  v12 = type metadata accessor for TableEntity();
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v19);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  LocalizedStringResource.init(stringInterpolation:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*(v1 + *(v12 + 28)));
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v8 + 56))(v6, 0, 1, v7);
  v16 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v16 - 8) + 56))(v18[0], 1, 1, v16);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_1001B4A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000A600;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1001B4B54(uint64_t a1)
{
  v2 = sub_1001B8744(&qword_1006BEAF0, type metadata accessor for TableEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

void sub_1001B4BD4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v3 = sub_10015DA04(&qword_1006BCC20);
  v4 = __chkstk_darwin(v3 - 8);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v41 = &v40 - v6;
  v7 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for TableEntity();
  v15 = *(v14 + 24);
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v8 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  *(a2 + v15) = EntityProperty<>.init(title:)();
  v16 = v42;
  sub_1001B5614(v42);
  v17 = [v16 objectID];
  v18 = [v17 URIRepresentation];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19 && (v20 = [v19 note]) != 0 && (v21 = v20, v22 = objc_msgSend(v20, "title"), v21, v22))
  {
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = (a2 + *(v14 + 28));
  *v26 = v23;
  v26[1] = v25;
  v27 = [v16 title];
  if (v27)
  {
    goto LABEL_7;
  }

  v32 = [v16 fileURL];
  if (v32)
  {
    v33 = v40;
    v34 = v32;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = 0;
  }

  else
  {
    v35 = 1;
    v33 = v40;
  }

  v36 = v41;
  v37 = type metadata accessor for URL();
  v38 = *(v37 - 8);
  (*(v38 + 56))(v33, v35, 1, v37);
  sub_10000CA08(v33, v36);
  if ((*(v38 + 48))(v36, 1, v37) != 1)
  {
    v29 = URL.lastPathComponent.getter();
    v31 = v39;
    (*(v38 + 8))(v36, v37);
    goto LABEL_15;
  }

  sub_1000073B4(v36, &qword_1006BCC20);
  v27 = [v16 identifier];
  if (v27)
  {
LABEL_7:
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0xE000000000000000;
  }

LABEL_15:
  v43 = v29;
  v44 = v31;
  EntityProperty.wrappedValue.setter();
}

void TableEntity.init<A>(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v3 = sub_10015DA04(&qword_1006BCC20);
  v4 = __chkstk_darwin(v3 - 8);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v41 = &v40 - v6;
  v7 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for TableEntity();
  v15 = *(v14 + 24);
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v8 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  *(a2 + v15) = EntityProperty<>.init(title:)();
  v16 = v42;
  static TableEntity.identifier<A>(for:)(v42);
  v17 = [v16 objectID];
  v18 = [v17 URIRepresentation];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19 && (v20 = [v19 note]) != 0 && (v21 = v20, v22 = objc_msgSend(v20, "title"), v21, v22))
  {
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = (a2 + *(v14 + 28));
  *v26 = v23;
  v26[1] = v25;
  v27 = [v16 title];
  if (v27)
  {
    goto LABEL_7;
  }

  v32 = [v16 fileURL];
  if (v32)
  {
    v33 = v40;
    v34 = v32;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = 0;
  }

  else
  {
    v35 = 1;
    v33 = v40;
  }

  v36 = v41;
  v37 = type metadata accessor for URL();
  v38 = *(v37 - 8);
  (*(v38 + 56))(v33, v35, 1, v37);
  sub_10000CA08(v33, v36);
  if ((*(v38 + 48))(v36, 1, v37) != 1)
  {
    v29 = URL.lastPathComponent.getter();
    v31 = v39;
    (*(v38 + 8))(v36, v37);
    goto LABEL_15;
  }

  sub_1000073B4(v36, &qword_1006BCC20);
  v27 = [v16 identifier];
  if (v27)
  {
LABEL_7:
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0xE000000000000000;
  }

LABEL_15:
  v43 = v29;
  v44 = v31;
  EntityProperty.wrappedValue.setter();
}

void sub_1001B5614(void *a1)
{
  v2 = sub_10015DA04(&qword_1006BEA90);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = enum case for ManagedEntityContextType.modern(_:);
    v8 = type metadata accessor for ManagedEntityContextType();
    v9 = *(v8 - 8);
    (*(v9 + 104))(v4, v7, v8);
    (*(v9 + 56))(v4, 0, 1, v8);
    v10 = a1;
    v11 = [v6 identifier];
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    TableID.init(contextType:managedIdentifier:)();
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v14 = 0xD00000000000002ELL;
    v15 = 0x80000001005625B0;
    sub_10015DA04(&unk_1006BEC10);
    v13._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v13);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void static TableEntity.identifier<A>(for:)(void *a1)
{
  v2 = sub_10015DA04(&qword_1006BEA90);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = enum case for ManagedEntityContextType.modern(_:);
    v8 = type metadata accessor for ManagedEntityContextType();
    v9 = *(v8 - 8);
    (*(v9 + 104))(v4, v7, v8);
    (*(v9 + 56))(v4, 0, 1, v8);
    v10 = a1;
    v11 = [v6 identifier];
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    TableID.init(contextType:managedIdentifier:)();
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v14 = 0xD00000000000002ELL;
    v15 = 0x80000001005625B0;
    swift_getObjectType();
    v13._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v13);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t TableEntity.init(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for TableEntity();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[12] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v3[13] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001B5C28, 0, 0);
}

uint64_t sub_1001B5C28()
{
  v1 = v0[11];
  v3 = v0[9];
  v2 = v0[10];
  v23 = v0[4];
  v24 = v0[7];
  v21 = v0[3];
  v18 = v0[5];
  v19 = v0[2];
  v16 = v3;
  v17 = *(v18 + 24);
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v4 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v5 = *(v2 + 104);
  v5(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v6 = EntityProperty<>.init(title:)();
  v0[15] = v6;
  *(v19 + v17) = v6;
  v20 = *(v18 + 24);
  v22 = v21;
  v7 = v23;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v5(v1, v4, v16);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v8 = EntityProperty<>.init(title:)();
  v0[16] = v8;
  *(v24 + v20) = v8;
  v9 = swift_allocObject();
  v0[17] = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v22;
  v10 = v22;
  v11 = v7;
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = sub_1001B5E90;
  v14 = v0[5];
  v13 = v0[6];

  return NSManagedObjectContext.perform<A>(_:)(v13, sub_100192664, v9, v14);
}

uint64_t sub_1001B5E90()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1001B60C8;
  }

  else
  {

    v2 = sub_1001B5FAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B5FAC()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  sub_1001B6894(v3, v1);
  sub_1001B6894(v1, v2);

  sub_1001B6894(v2, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001B60C8()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t TableEntity.init(for:in:includeContents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for TableEntity();
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[10] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v3[11] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001B6340, 0, 0);
}

uint64_t sub_1001B6340()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[4];
  v5 = v0[3];
  v14 = *(v0[5] + 24);
  v15 = v0[2];
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v6 = EntityProperty<>.init(title:)();
  v0[13] = v6;
  *(v15 + v14) = v6;
  v7 = swift_allocObject();
  v0[14] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  v8 = v4;
  v9 = v5;
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_1001B64F8;
  v12 = v0[5];
  v11 = v0[6];

  return NSManagedObjectContext.perform<A>(_:)(v11, sub_1001B8824, v7, v12);
}

uint64_t sub_1001B64F8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1001B66E4;
  }

  else
  {

    v2 = sub_1001B6614;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B6614()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);

  sub_1001B6894(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001B66E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1001B67AC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v9];
  v5 = v9[0];
  if (v4)
  {
    v9[1] = &OBJC_PROTOCOL___ICTableObject;
    v6 = swift_dynamicCastObjCProtocolUnconditional();
    v7 = v5;
    sub_1001B4BD4(v6, a3);
  }

  else
  {
    v8 = v9[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1001B6894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TableEntity.init(for:in:includeContents:noteContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = type metadata accessor for TableEntity();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  type metadata accessor for Locale();
  v5[13] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v5[14] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001B6A88, 0, 0);
}

uint64_t sub_1001B6A88()
{
  v1 = v0[12];
  v3 = v0[10];
  v2 = v0[11];
  v23 = v0[4];
  v24 = v0[8];
  v21 = v0[3];
  v18 = v0[6];
  v19 = v0[2];
  v16 = v3;
  v17 = *(v18 + 24);
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v4 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v5 = *(v2 + 104);
  v5(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v6 = EntityProperty<>.init(title:)();
  v0[16] = v6;
  *(v19 + v17) = v6;
  v20 = *(v18 + 24);
  v22 = v21;
  v7 = v23;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v5(v1, v4, v16);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v8 = EntityProperty<>.init(title:)();
  v0[17] = v8;
  *(v24 + v20) = v8;
  v9 = swift_allocObject();
  v0[18] = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v22;
  v10 = v22;
  v11 = v7;
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_1001B6CF4;
  v14 = v0[6];
  v13 = v0[7];

  return NSManagedObjectContext.perform<A>(_:)(v13, sub_1001B8824, v9, v14);
}

uint64_t sub_1001B6CF4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1001B6F30;
  }

  else
  {

    v2 = sub_1001B6E10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B6E10()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  sub_1001B6894(v3, v1);
  sub_1001B6894(v1, v2);

  sub_1001B6894(v2, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001B6F30()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

uint64_t static TableEntity.managedObjectID(for:in:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001B70EC;

  return (sub_1001B7A1C)(a1, a2);
}

uint64_t sub_1001B70EC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_1001B71E8(uint64_t a1@<X1>, void *a2@<X8>)
{
  TableID.managedIdentifier.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() attachmentWithIdentifier:v4 context:a1];

  if (v5)
  {
    v6 = [v5 objectID];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

uint64_t sub_1001B72A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1001B7314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000A1FC;

  return TableEntity.init(for:in:)(a1, a2, a3);
}

uint64_t sub_1001B73C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000A1FC;

  return TableEntity.init(for:in:includeContents:)(a1, a2, a3);
}

uint64_t sub_1001B7478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_10000A600;

  return TableEntity.init(for:in:includeContents:noteContext:)(a1, a2, a3, 0, a5);
}

uint64_t sub_1001B7534(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001B75E8;

  return (sub_1001B7A1C)(a1, a2);
}

uint64_t sub_1001B75E8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1001B76E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10015DA04(&qword_1006BEA90);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  sub_1001B86D4(a1, &v19 - v10);
  v12 = type metadata accessor for ManagedEntityContextType();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    sub_1001B86D4(v11, v9);
    v14 = (*(v13 + 88))(v9, v12);
    if (v14 != enum case for ManagedEntityContextType.modern(_:))
    {
      if (v14 != enum case for ManagedEntityContextType.html(_:))
      {
        (*(v13 + 8))(v9, v12);
      }

      sub_1000073B4(v11, &qword_1006BEA90);
      return 0;
    }
  }

  sub_1000073B4(v11, &qword_1006BEA90);
  (*(a3 + 24))(a2, a3);
  v15 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  v17 = v16;

  if (v17)
  {
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B78EC@<X0>(char *a1@<X8>)
{
  sub_10015DA04(&qword_1006BEBF0);
  EntityQuerySort.by.getter();
  EntityQuerySort.order.getter();
  type metadata accessor for TableEntity();
  sub_1001B8744(&qword_1006BCCE0, type metadata accessor for TableEntity);
  v2 = static EntityQuerySort.Ordering.== infix(_:_:)();
  swift_getKeyPath();
  sub_10015DA04(&qword_1006BEBF8);
  v3 = dispatch thunk of static Equatable.== infix(_:_:)();

  v5 = (v2 & 1) == 0;
  if ((v3 & 1) == 0)
  {
    v5 = 2;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1001B7A1C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for TableID();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v2[10] = *(v5 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_10015DA04(&qword_1006BEA90);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001B7B90, 0, 0);
}

uint64_t sub_1001B7B90()
{
  v44 = v0;
  v1 = *(v0 + 112);
  TableID.contextType.getter();
  v2 = type metadata accessor for ManagedEntityContextType();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    goto LABEL_2;
  }

  v26 = *(v0 + 104);
  sub_1001B86D4(*(v0 + 112), v26);
  v27 = (*(v3 + 88))(v26, v2);
  if (v27 != enum case for ManagedEntityContextType.modern(_:))
  {
    if (v27 == enum case for ManagedEntityContextType.html(_:))
    {
      sub_1000073B4(*(v0 + 112), &qword_1006BEA90);
      goto LABEL_13;
    }

    (*(v3 + 8))(*(v0 + 104), v2);
LABEL_2:
    v4 = *(v0 + 32);
    sub_1000073B4(*(v0 + 112), &qword_1006BEA90);
    TableID.managedIdentifier.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 managedObjectIDForURIString:v5];

    if (v6)
    {
LABEL_14:

      v38 = *(v0 + 8);

      return v38(v6);
    }

    v7 = *(v0 + 88);
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    v10 = *(v0 + 24);
    static Logger.link.getter();
    (*(v9 + 16))(v7, v10, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 88);
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    v19 = *(v0 + 40);
    if (v13)
    {
      v42 = *(v0 + 40);
      v20 = swift_slowAlloc();
      v40 = v12;
      v21 = swift_slowAlloc();
      v43 = v21;
      *v20 = 136315138;
      sub_1001B8744(&unk_1006BEC00, &type metadata accessor for TableID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v17;
      v24 = v23;
      (*(v15 + 8))(v14, v16);
      v25 = sub_100009D88(v22, v24, &v43);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v11, v40, "TableEntity: Unable to resolve managed object ID for entity ID: %s", v20, 0xCu);
      sub_100009F60(v21);

      (*(v18 + 8))(v41, v42);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
      (*(v18 + 8))(v17, v19);
    }

LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v28 = *(v0 + 96);
  v30 = *(v0 + 72);
  v29 = *(v0 + 80);
  v31 = *(v0 + 64);
  v32 = *(v0 + 24);
  v33 = [*(v0 + 32) modernManagedObjectContext];
  *(v0 + 120) = v33;
  (*(v30 + 16))(v28, v32, v31);
  v34 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v35 = swift_allocObject();
  *(v0 + 128) = v35;
  (*(v30 + 32))(v35 + v34, v28, v31);
  *(v35 + ((v29 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
  v33;
  v36 = swift_task_alloc();
  *(v0 + 136) = v36;
  v37 = sub_10015DA04(&unk_1006BFED0);
  *v36 = v0;
  v36[1] = sub_1001B80A8;

  return NSManagedObjectContext.perform<A>(_:)(v0 + 16, sub_1001B878C, v35, v37);
}