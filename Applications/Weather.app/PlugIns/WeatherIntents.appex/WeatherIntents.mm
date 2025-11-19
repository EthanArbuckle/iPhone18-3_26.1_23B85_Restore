uint64_t sub_100001BF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100001C28(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100001CA8(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_100001D30(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

char *LocationSearchCompleter.init(searchCompleter:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_onUpdate];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_onError];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_searchCompleter] = a1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v12, "init");
  v8 = OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_searchCompleter;
  v9 = *&v7[OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_searchCompleter];
  v10 = v7;
  [v9 wi_applyLocalitiesAndLandmarksFilterType];
  [*&v7[v8] setDelegate:v10];

  return v10;
}

Swift::Void __swiftcall LocationSearchCompleter.searchLocations(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_searchCompleter);
  v5 = [v4 queryFragment];
  v6 = sub_10000FCB4();
  v8 = v7;

  if (v6 == countAndFlagsBits && v8 == object)
  {
  }

  else
  {
    v10 = sub_10000FEB4();

    if ((v10 & 1) == 0)
    {
      v11 = sub_10000FCA4();
      [v4 setQueryFragment:v11];

      return;
    }
  }

  _s14WeatherIntents23LocationSearchCompleterC25completerDidUpdateResultsyySo07MKLocaldE0CF_0();
}

uint64_t _s14WeatherIntents23LocationSearchCompleterC25completerDidUpdateResultsyySo07MKLocaldE0CF_0()
{
  v1 = v0 + OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_onUpdate;
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v1 + 8);
    v5 = *(v0 + OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_searchCompleter);

    v6 = [v5 results];
    sub_100002E20();
    v7 = sub_10000FD04();

    v3(v7);
    sub_100001C28(v3);
  }

  return result;
}

id LocationSearchCompleter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocationSearchCompleter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t LocationSearchCompleter.completer(_:didFailWithError:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FBC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000FBA4();
  v9 = v2;
  swift_errorRetain();
  v10 = sub_10000FBB4();
  v11 = sub_10000FD54();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28[0] = v26;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2085;
    v13 = [*&v9[OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_searchCompleter] queryFragment];
    v14 = sub_10000FCB4();
    v25 = v4;
    v16 = v15;

    v17 = sub_100002694(v14, v16, v28);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2082;
    v27 = a2;
    swift_errorRetain();
    sub_100002C04(&qword_100019168, &qword_1000112D0);
    v18 = sub_10000FCC4();
    v20 = sub_100002694(v18, v19, v28);

    *(v12 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received an error while requesting a local search completion. searchQuery=%{sensitive,mask.hash}s, error=%{public}s", v12, 0x20u);
    swift_arrayDestroy();

    (*(v5 + 8))(v8, v25);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v21 = &v9[OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_onError];
  result = swift_beginAccess();
  v23 = *v21;
  if (*v21)
  {
    v24 = *(v21 + 1);

    v23(a2);
    return sub_100001C28(v23);
  }

  return result;
}

uint64_t variable initialization expression of LocalSearchRequestManager.geocodeRequestDeduper()
{
  v0 = *(*(sub_10000FAD4() - 8) + 64);
  __chkstk_darwin();
  sub_100002C4C();
  sub_100002C04(&qword_100019178, &qword_1000112D8);
  sub_100002CA4();
  sub_10000FDD4();
  v1 = sub_100002C04(&qword_100019188, &qword_1000112E0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_10000FAB4();
}

double variable initialization expression of LocalSearchRequestManager.$__lazy_storage_$_store@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_1000112C0;
  return result;
}

uint64_t sub_100002694(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002758(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100002DC0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100002D74(v11);
  return v7;
}

unint64_t sub_100002758(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100002858(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_10000FE14();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100002858(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000028A4(a1, a2);
  sub_1000029BC(&off_100014BC0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000028A4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_10000FCE4())
  {
    result = sub_100002AA0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10000FDE4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_10000FE14();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000029BC(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100002B10(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100002AA0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100002C04(&qword_100019218, &unk_100011318);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100002B10(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002C04(&qword_100019218, &unk_100011318);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_100002C04(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002C4C()
{
  result = qword_100019170;
  if (!qword_100019170)
  {
    sub_10000FAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019170);
  }

  return result;
}

unint64_t sub_100002CA4()
{
  result = qword_100019180;
  if (!qword_100019180)
  {
    sub_100002D08(&qword_100019178, &qword_1000112D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019180);
  }

  return result;
}

uint64_t sub_100002D08(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002D74(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002DC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100002E20()
{
  result = qword_100019220;
  if (!qword_100019220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019220);
  }

  return result;
}

uint64_t sub_100002E7C()
{

  return swift_beginAccess();
}

uint64_t sub_100002E9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002C04(&qword_100019290, &qword_1000116D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = v37 - v7;
  v9 = sub_10000F594();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v13, v16);
  v19 = v37 - v18;
  __chkstk_darwin(v17, v20);
  v22 = v37 - v21;
  v39[0] = 0;
  v39[1] = 0;
  if (![a1 wi_getCoordinate:v39])
  {
    goto LABEL_6;
  }

  v23 = [a1 wi_mapItem];
  v38 = a2;
  v24 = v23;
  v25 = [v23 timeZone];

  a2 = v38;
  if (!v25)
  {
    goto LABEL_6;
  }

  sub_10000F584();

  (*(v10 + 32))(v22, v19, v9);
  v26 = sub_100003240([a1 wi_mapItem]);
  if (!v27)
  {
    (*(v10 + 8))(v22, v9);
LABEL_6:

    v34 = 1;
    goto LABEL_7;
  }

  v37[5] = v26;
  v37[3] = sub_10000FDC4();
  v37[4] = v28;
  (*(v10 + 16))(v15, v22, v9);
  sub_10000F564();
  v29 = sub_10000F574();
  sub_100003218(v8, 0, 1, v29);
  v30 = [a1 title];
  v31 = sub_10000FCB4();
  v37[1] = v32;
  v37[2] = v31;

  v33 = [a1 subtitle];
  sub_10000FCB4();

  a2 = v38;
  sub_10000FA74();

  (*(v10 + 8))(v22, v9);
  v34 = 0;
LABEL_7:
  v35 = sub_10000FAA4();
  return sub_100003218(a2, v34, 1, v35);
}

uint64_t sub_100003240(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10000FCB4();

  return v3;
}

uint64_t *WeatherLocation.currentLocationID.unsafeMutableAddressor()
{
  if (qword_100019140 != -1)
  {
    sub_100003398();
  }

  return &static WeatherLocation.currentLocationID;
}

uint64_t sub_1000032FC()
{
  result = sub_10000F9D4();
  static WeatherLocation.currentLocationID = result;
  *algn_1000196C8 = v1;
  return result;
}

uint64_t static WeatherLocation.currentLocationID.getter()
{
  if (qword_100019140 != -1)
  {
    sub_100003398();
  }

  v0 = static WeatherLocation.currentLocationID;

  return v0;
}

uint64_t sub_100003398()
{

  return swift_once();
}

uint64_t sub_1000033D0(SEL *a1)
{
  if ([v1 respondsToSelector:*a1])
  {
    return sub_100003420(v1, a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003420(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_10000FCB4();

  return v4;
}

id sub_1000034B4()
{
  type metadata accessor for BundleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000196D0 = result;
  return result;
}

double sub_100003528()
{
  v1 = sub_10000F794();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[6];
  sub_1000053E8(v0 + 2, v0[5]);
  sub_10000F984();
  sub_10000F784();
  v9 = v8;
  (*(v2 + 8))(v6, v1);
  return v9;
}

double sub_100003624@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1000054B4((v1 + 10), &v5, &qword_100019330, &qword_100011380);
  if (*(&v6 + 1) == 1)
  {
    sub_100005454(&v5, &qword_100019330, &qword_100011380);
    sub_100003704(v1, a1);
    sub_1000054B4(a1, &v5, &qword_100019410, &unk_100011540);
    swift_beginAccess();
    sub_10000551C(&v5, (v1 + 10));
    swift_endAccess();
  }

  else
  {
    result = *&v5;
    v4 = v6;
    *a1 = v5;
    *(a1 + 16) = v4;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_100003704@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_10000FBC4();
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5, v7);
  v9 = a1[16];
  (a1[15])(v13, v8);
  sub_10000F634();
  sub_10000F624();
  sub_10000F5B4();
  sub_10000F614();

  sub_1000053E8(v13, v13[3]);
  sub_10000F7D4();
  if (v12 == 1)
  {
    sub_10000F5B4();
    sub_1000056DC(&qword_100019420, v10, type metadata accessor for LocalSearchRequestManager);
    sub_10000F674();
  }

  sub_100005634(v13, a2);
  return sub_100002D74(v13);
}

BOOL sub_100003A6C()
{
  v0 = sub_100002C04(&qword_100019290, &qword_1000116D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v20 - v3;
  v5 = sub_10000F574();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v20 - v13;
  sub_10000FA34();
  if (sub_10000542C(v4, 1, v5) == 1)
  {
    sub_100005454(v4, &qword_100019290, &qword_1000116D0);
    return 1;
  }

  else
  {
    (*(v6 + 32))(v14, v4, v5);
    v16 = sub_100003528();
    sub_10000F5A4();
    sub_10000F554();
    v18 = v17;
    v19 = *(v6 + 8);
    v19(v11, v5);
    v19(v14, v5);
    return v16 <= v18;
  }
}

uint64_t sub_100003C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v24 = a7;
  ObjectType = swift_getObjectType();
  v15 = a5[3];
  v14 = a5[4];
  v16 = sub_100004E18(a5, v15);
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v16, v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = v24(a1, a3, a4, v19, a6, v23, ObjectType, v15, a2, v14);
  sub_100002D74(a5);
  return v21;
}

uint64_t LocalSearchRequestManager.performLocalSearch(with:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[17];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v2;
  sub_10000FAA4();

  v8 = sub_10000FB64();

  return v8;
}

uint64_t sub_100003EF4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = sub_100002C04(&qword_100019408, &unk_100011470);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = v35 - v11;
  v13 = sub_10000FAA4();
  v38 = *(v13 - 8);
  v14 = *(v38 + 64);
  v16 = __chkstk_darwin(v13, v15);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v37 = v35 - v20;
  sub_10000F634();
  sub_10000F624();
  sub_10000F5C4();
  sub_10000F614();

  if (v42[0])
  {
    goto LABEL_9;
  }

  v36 = v13;
  v39 = a2;
  sub_100003624(v42);
  if (!v43)
  {
    sub_100005454(v42, &qword_100019410, &unk_100011540);
    sub_100003218(v12, 1, 1, v36);
    goto LABEL_8;
  }

  sub_100005634(v42, v40);
  sub_100005454(v42, &qword_100019410, &unk_100011540);
  v35[1] = v7;
  sub_1000053E8(v40, v41);
  sub_10000F7B4();
  sub_100002D74(v40);
  v21 = v36;
  if (sub_10000542C(v12, 1, v36) == 1)
  {
LABEL_8:
    sub_100005454(v12, &qword_100019408, &unk_100011470);
    a2 = v39;
    goto LABEL_9;
  }

  v22 = v37;
  v23 = v38;
  (*(v38 + 32))(v37, v12, v21);
  if (!sub_100003A6C())
  {
    (*(v23 + 16))(v18, v22, v21);
    v32 = sub_100002C04(&qword_100019418, &qword_100011480);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v30 = sub_10000FB44();
    (*(v23 + 8))(v22, v21);
    return v30;
  }

  v24 = sub_100003624(v42);
  if (v43)
  {
    sub_100005634(v42, v40);
    sub_100005454(v42, &qword_100019410, &unk_100011540);
    sub_1000053E8(v40, v41);
    sub_10000F7C4();
    (*(v23 + 8))(v22, v21);
    sub_100002D74(v40);
  }

  else
  {
    (*(v23 + 8))(v22, v21, v24);
    sub_100005454(v42, &qword_100019410, &unk_100011540);
  }

  a2 = v39;
LABEL_9:
  v25 = a1[7];
  v26 = a1[8];
  ObjectType = swift_getObjectType();
  (*(v26 + 8))(a2, a3, ObjectType, v26);
  v28 = a1[17];
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  *(v29 + 24) = a3;

  v30 = sub_10000FB24();

  return v30;
}

uint64_t LocalSearchRequestManager.performLocalSearch(with:calloutTitle:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[17];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  v9[5] = v3;
  sub_10000FAA4();

  v10 = a1;

  v11 = sub_10000FB64();

  return v11;
}

uint64_t sub_1000044D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v42 = *a5;
  v9 = sub_100002C04(&qword_100019408, &unk_100011470);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v39 - v12;
  v14 = sub_10000FAA4();
  v40 = *(v14 - 8);
  v15 = *(v40 + 64);
  v17 = __chkstk_darwin(v14, v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v39 = &v39 - v21;
  sub_10000F634();
  sub_10000F624();
  sub_10000F5C4();
  sub_10000F614();

  if (v45[0])
  {
    goto LABEL_11;
  }

  v41 = a1;
  sub_100003624(v45);
  if (!v46)
  {
    sub_100005454(v45, &qword_100019410, &unk_100011540);
    sub_100003218(v13, 1, 1, v14);
    goto LABEL_8;
  }

  sub_100005634(v45, v43);
  sub_100005454(v45, &qword_100019410, &unk_100011540);
  sub_1000053E8(v43, v44);
  v22 = v14;
  sub_10000F7B4();
  sub_100002D74(v43);
  if (sub_10000542C(v13, 1, v14) == 1)
  {
LABEL_8:
    v26 = &qword_100019408;
    v27 = &unk_100011470;
    v28 = v13;
LABEL_9:
    sub_100005454(v28, v26, v27);
    goto LABEL_10;
  }

  v24 = v39;
  v23 = v40;
  (*(v40 + 32))(v39, v13, v22);
  if (!sub_100003A6C())
  {
    (*(v23 + 16))(v19, v24, v22);
    v36 = sub_100002C04(&qword_100019418, &qword_100011480);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v34 = sub_10000FB44();
    (*(v23 + 8))(v24, v22);
    return v34;
  }

  v25 = sub_100003624(v45);
  if (!v46)
  {
    (*(v23 + 8))(v24, v22, v25);
    v26 = &qword_100019410;
    v27 = &unk_100011540;
    v28 = v45;
    goto LABEL_9;
  }

  sub_100005634(v45, v43);
  sub_100005454(v45, &qword_100019410, &unk_100011540);
  sub_1000053E8(v43, v44);
  sub_10000F7C4();
  (*(v23 + 8))(v24, v22);
  sub_100002D74(v43);
LABEL_10:
  a1 = v41;
LABEL_11:
  v29 = a3[7];
  v30 = a3[8];
  ObjectType = swift_getObjectType();
  (*(v30 + 16))(a4, a1, a2, ObjectType, v30);
  v32 = a3[17];
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *(v33 + 24) = a2;

  v34 = sub_10000FB24();

  return v34;
}

uint64_t sub_100004950(uint64_t a1)
{
  v3 = sub_10000FAA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003624(v14);
  if (v15)
  {
    sub_100005634(v14, v13);
    sub_100005454(v14, &qword_100019410, &unk_100011540);
    v16 = v1;
    sub_1000053E8(v13, v13[3]);
    sub_10000F7A4();
    sub_100002D74(v13);
  }

  else
  {
    sub_100005454(v14, &qword_100019410, &unk_100011540);
  }

  (*(v4 + 16))(v8, a1, v3);
  v9 = sub_100002C04(&qword_100019418, &qword_100011480);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  return sub_10000FB44();
}

uint64_t LocalSearchRequestManager.deinit()
{
  sub_100002D74((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  v2 = *(v0 + 72);

  sub_100005454(v0 + 80, &qword_100019330, &qword_100011380);
  v3 = *(v0 + 128);

  return v0;
}

uint64_t LocalSearchRequestManager.__deallocating_deinit()
{
  LocalSearchRequestManager.deinit();

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_100004CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22 = a5;
  v23 = a7;
  v15 = *(a8 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(a1, a2);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  (*(v15 + 16))(v18, a4, a8);
  v20 = sub_100004E68(a1, a2, a3, v18, v22, v19, v23, a8, a9, a10);
  (*(v15 + 8))(a4, a8);
  return v20;
}

uint64_t sub_100004E18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100004E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v41 = a1;
  v42 = a2;
  v39 = a3;
  v40 = a9;
  v14 = sub_10000FD94();
  v37 = *(v14 - 8);
  v38 = v14;
  v15 = *(v37 + 64);
  __chkstk_darwin(v14, v16);
  v36 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000FD84();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18, v20);
  v35 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000FC74();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8, v24);
  v25 = sub_10000FAD4();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25, v27);
  v44[3] = a8;
  v44[4] = a10;
  v28 = sub_1000055D4(v44);
  (*(*(a8 - 8) + 32))(v28, a4, a8);
  v43 = &_swiftEmptyArrayStorage;
  sub_1000056DC(&qword_100019170, 255, &type metadata accessor for PromiseDeduperFlags);
  sub_100002C04(&qword_100019178, &qword_1000112D8);
  sub_100005724(&qword_100019180, &qword_100019178, &qword_1000112D8);
  sub_10000FDD4();
  v29 = sub_100002C04(&qword_100019188, &qword_1000112E0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = v39;
  *(a6 + 72) = sub_10000FAB4();
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = 0;
  *(a6 + 104) = xmmword_1000112C0;
  v33 = v40;
  *(a6 + 56) = v41;
  *(a6 + 64) = v33;
  *(a6 + 120) = v42;
  *(a6 + 128) = v32;
  sub_100005634(v44, a6 + 16);
  if (!a5)
  {
    sub_100005698();

    sub_10000FC64();
    v43 = &_swiftEmptyArrayStorage;
    sub_1000056DC(&qword_100019430, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_100002C04(&qword_100019438, &qword_100011488);
    sub_100005724(&qword_100019440, &qword_100019438, &qword_100011488);
    sub_10000FDD4();
    (*(v37 + 104))(v36, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v38);
    a5 = sub_10000FDA4();
  }

  sub_100002D74(v44);
  *(a6 + 136) = a5;
  return a6;
}

uint64_t sub_100005288()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000052C8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_100003E98(a1);
}

uint64_t sub_1000052E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100005330(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_100004470(a1);
}

uint64_t sub_1000053CC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100004950(a1);
}

void *sub_1000053E8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005454(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002C04(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000054B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002C04(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000551C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002C04(&qword_100019330, &qword_100011380);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000559C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t *sub_1000055D4(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100005634(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100005698()
{
  result = qword_100019428;
  if (!qword_100019428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019428);
  }

  return result;
}

uint64_t sub_1000056DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100005724(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002D08(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int sub_1000057BC()
{
  sub_10000FF14();
  sub_10000FF24(0);
  return sub_10000FF34();
}

Swift::Int sub_10000580C()
{
  sub_10000FF14();
  sub_10000FF24(0);
  return sub_10000FF34();
}

double sub_10000585C@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___geocodeStore;
  swift_beginAccess();
  sub_10000C154(v1 + v3, &v6, &qword_100019330, &qword_100011380);
  if (*(&v7 + 1) == 1)
  {
    sub_10000C1A4(&v6, &qword_100019330, &qword_100011380);
    sub_100005960(a1);
    sub_10000C154(a1, &v6, &qword_100019410, &unk_100011540);
    swift_beginAccess();
    sub_10000C1FC(&v6, v1 + v3, &qword_100019330, &qword_100011380);
    swift_endAccess();
  }

  else
  {
    result = *&v6;
    v5 = v7;
    *a1 = v6;
    *(a1 + 16) = v5;
    *(a1 + 32) = v8;
  }

  return result;
}

uint64_t sub_100005960@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v1 = sub_10000FC04();
  v32 = *(v1 - 8);
  v33 = v1;
  v2 = *(v32 + 64);
  __chkstk_darwin(v1, v3);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000FC24();
  v5 = *(v30 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v30, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10000FBF4();
  v10 = *(v29 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v29, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000FC44();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v18 = sub_10000FBE4();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  v21 = sub_10000FC34();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8, v23);
  sub_10000FC54();
  v24 = sub_10000F6F4();
  sub_10000F6E4();
  sub_10000FBD4();
  sub_10000F6C4();
  (*(v10 + 104))(v14, enum case for Database.VacuumMode.incremental(_:), v29);
  (*(v5 + 104))(v9, enum case for Database.JournalingMode.wal(_:), v30);
  (*(v32 + 104))(v31, enum case for Database.RecoveryMode.throw(_:), v33);
  v35 = 1;
  sub_10000FC14();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  result = sub_10000F6D4();
  v28 = v34;
  v34[3] = v24;
  v28[4] = &protocol witness table for GeocodeStore;
  *v28 = result;
  return result;
}

uint64_t sub_100005D10@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___localSearchManager;
  swift_beginAccess();
  sub_10000C154(&v1[v3], &v13, &qword_1000194F8, &unk_100011530);
  if (v14)
  {
    return sub_10000BD0C(&v13, a1);
  }

  sub_10000C1A4(&v13, &qword_1000194F8, &unk_100011530);
  v5 = sub_1000063FC(&OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___appConfigurationManager, sub_100006018);
  type metadata accessor for LocalSearchRequestService();
  v6 = swift_allocObject();
  v6[5] = sub_10000F904();
  v6[6] = &protocol witness table for AppConfigurationManager;
  v6[2] = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = *&v1[OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___appConfigurationManager];
  v9 = type metadata accessor for LocalSearchRequestManager();
  v10 = swift_allocObject();
  v11 = v1;

  v12 = sub_10000B894(v6, sub_10000B878, v7, v8, 0, v10);
  a1[3] = v9;
  a1[4] = &off_100014C38;
  *a1 = v12;
  sub_100005634(a1, &v13);
  swift_beginAccess();
  sub_10000C1FC(&v13, &v1[v3], &qword_1000194F8, &unk_100011530);
  return swift_endAccess();
}

uint64_t sub_100005EE4@<X0>(uint64_t a1@<X8>)
{
  sub_10000585C(&v3);
  if (v4)
  {
    return sub_10000BD0C(&v3, a1);
  }

  sub_10000C1A4(&v3, &qword_100019410, &unk_100011540);
  sub_10000BCB8();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_100005F80(uint64_t a1)
{
  sub_10000F9A4();
  sub_10000F994();
  v2 = *(a1 + OBJC_IVAR____TtC14WeatherIntents13IntentHandler_iCloudStatusProvider);
  sub_10000F894();
  v3 = sub_10000F774();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  return sub_10000F764();
}

uint64_t sub_100006018()
{
  v0 = sub_10000F544();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = __chkstk_darwin(v0, v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v8 = sub_10000F6B4();
  sub_10000F664();
  sub_10000F644();
  sub_10000F654();

  sub_10000F534();
  (*(v1 + 8))(v6, v0);
  v9 = sub_10000F6A4();
  v38 = v8;
  v39 = &protocol witness table for WeatherConfigurationManager;
  v37 = v9;
  v10 = sub_10000F814();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_10000F804();
  v35 = v10;
  v36 = &protocol witness table for PermanentURLFactory;
  v34 = v13;
  v14 = sub_1000063FC(&OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___identityService, sub_100005F80);
  v32 = sub_10000F774();
  v33 = &protocol witness table for IdentityService;
  v31 = v14;
  v15 = sub_10000F9C4();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_10000F9B4();
  v32 = v15;
  v33 = &protocol witness table for AppConfigurationRemoteSettingsProvider;
  v31 = v18;
  v19 = sub_10000F924();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_10000F914();
  sub_10000BD24(&qword_100019508, &type metadata accessor for AppConfigurationService);
  v22 = sub_10000F8B4();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_10000F8A4();
  v38 = v22;
  v39 = &protocol witness table for AppConfigurationStore;
  v37 = v25;
  v26 = sub_10000F904();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  return sub_10000F8F4();
}

uint64_t sub_1000062DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___locationDataModelFactory;
  swift_beginAccess();
  sub_10000C154(v1 + v3, &v9, &qword_100019540, &qword_100011598);
  if (v10)
  {
    return sub_10000BD0C(&v9, a1);
  }

  sub_10000C1A4(&v9, &qword_100019540, &qword_100011598);
  v5 = sub_10000F944();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_10000F934();
  a1[3] = v5;
  a1[4] = &protocol witness table for LocationDataModelFactory;
  *a1 = v8;
  sub_100005634(a1, &v9);
  swift_beginAccess();
  sub_10000C1FC(&v9, v1 + v3, &qword_100019540, &qword_100011598);
  return swift_endAccess();
}

uint64_t sub_1000063FC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_100006464(uint64_t a1)
{
  sub_1000063FC(&OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___appConfigurationManager, sub_100006018);
  sub_10000F904();
  sub_1000063FC(&OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___identityService, sub_100005F80);
  sub_10000F774();
  v2 = sub_10000F834();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_10000F824();
  v5 = sub_10000F754();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_10000F744();
  v8 = sub_10000F734();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_10000F724();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = *(a1 + OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___appConfigurationManager);
  v11 = sub_10000F714();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  sub_10000F704();
  sub_10000F8E4();
  [objc_allocWithZone(WCDefaultCityManager) init];
  return sub_10000F8C4();
}

uint64_t sub_100006694@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10000585C(&v5);

    if (*(&v6 + 1))
    {
      return sub_10000BD0C(&v5, a1);
    }
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
  }

  sub_10000C1A4(&v5, &qword_100019410, &unk_100011540);
  sub_10000BCB8();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_100006764@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___savedLocationsReader;
  swift_beginAccess();
  sub_10000C154(v1 + v3, &v6, &qword_100019528, &qword_100011588);
  if (v7)
  {
    return sub_10000BD0C(&v6, a1);
  }

  sub_10000C1A4(&v6, &qword_100019528, &qword_100011588);
  v5 = sub_10000686C();
  a1[3] = sub_10000F874();
  a1[4] = &protocol witness table for SavedLocationsReader;
  *a1 = v5;
  sub_100005634(a1, &v6);
  swift_beginAccess();
  sub_10000C1FC(&v6, v1 + v3, &qword_100019528, &qword_100011588);
  return swift_endAccess();
}

uint64_t sub_10000686C()
{
  v0 = sub_100002C04(&qword_100019530, &qword_100011590);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v23 - v3;
  v5 = sub_10000F9A4();
  v6 = sub_10000F994();
  v29[8] = v5;
  v29[9] = &protocol witness table for UbiquitousKeyValueStoreProvider;
  v29[5] = v6;
  sub_1000062DC(v29);
  v7 = sub_10000F544();
  sub_100003218(v4, 1, 1, v7);
  v8 = sub_10000F974();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_10000F964();
  v27 = v8;
  v28 = &protocol witness table for SyncedDataContextProvider;
  v26 = v11;
  v12 = sub_1000063FC(&OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___defaultLocationManager, sub_100006464);
  v24 = sub_10000F8E4();
  v25 = &protocol witness table for DefaultLocationManager;
  v23 = v12;
  v13 = sub_10000F854();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_10000F844();
  v27 = v13;
  v28 = &protocol witness table for CoherenceDataManager;
  v26 = v16;
  v17 = sub_10000C114(0, &qword_100019538, NSUserDefaults_ptr);
  v18 = sub_10000FD74();
  v24 = v17;
  v25 = &protocol witness table for NSUserDefaults;
  v23 = v18;
  v19 = sub_10000F874();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  return sub_10000F864();
}

uint64_t sub_100006A3C()
{
  v1[7] = v0;
  v2 = sub_10000FAA4();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = sub_10000F7F4();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = sub_10000FA04();
  v1[14] = v8;
  v9 = *(v8 - 8);
  v1[15] = v9;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_100006BCC);
}

uint64_t sub_100006BCC()
{
  sub_10000C5CC();
  v1 = v0[7];
  sub_100006764(v0 + 2);
  v2 = v0[5];
  v3 = v0[6];
  sub_1000053E8(v0 + 2, v2);
  v4 = async function pointer to dispatch thunk of SavedLocationsReaderType.fetchSavedLocationsAsync()[1];
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_100006C88;

  return dispatch thunk of SavedLocationsReaderType.fetchSavedLocationsAsync()(v2, v3);
}

uint64_t sub_100006C88()
{
  sub_10000C4DC();
  sub_10000C528();
  sub_10000C420();
  *v2 = v1;
  v4 = *(v3 + 152);
  *v2 = *v0;
  *(v1 + 160) = v5;

  v6 = sub_10000C440();

  return _swift_task_switch(v6);
}

uint64_t sub_100006D70()
{
  v2 = v0[20];
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[15];
      v5 = v0[12];
      sub_10000C5D8();
      sub_10000B010(0, v3, 0);
      v6 = v52;
      v7 = *(v5 + 16);
      v5 += 16;
      v8 = *(v5 + 64);
      sub_10000C534();
      v49 = v2;
      v1 = v2 + v9;
      v50 = *(v5 + 56);
      v51 = v10;
      v11 = (v5 - 8);
      do
      {
        v12 = v0[18];
        v13 = v0[13];
        v14 = v0[11];
        v51(v13, v1, v14);
        sub_10000F7E4();
        (*v11)(v13, v14);
        v52 = v6;
        v16 = v6[2];
        v15 = v6[3];
        if (v16 >= v15 >> 1)
        {
          sub_10000B010(v15 > 1, v16 + 1, 1);
        }

        v17 = v0[18];
        v18 = v0[14];
        v6[2] = v16 + 1;
        v19 = *(v4 + 80);
        sub_10000C534();
        (*(v4 + 32))(v6 + v20 + *(v4 + 72) * v16);
        v1 += v50;
        --v3;
      }

      while (v3);
    }

    else
    {
      v25 = v0[20];

      v6 = &_swiftEmptyArrayStorage;
    }

    sub_100002D74(v0 + 2);
    v26 = v6[2];
    if (v26)
    {
      v27 = v0[15];
      sub_10000C5D8();
      sub_10000FE44();
      type metadata accessor for WeatherLocation();
      sub_10000C3F4();
      do
      {
        v28 = sub_10000C4E8();
        v29(v28);
        sub_10000F9E4();
        sub_10000F9F4();
        sub_10000C618(v30, v31);

        v32 = sub_10000C4A8();
        v40 = sub_10000C588(v32, v33, v34, v35, v36, v37, v38, v39, v47, v48);
        v41(v40);
        sub_10000FE24();
        v42 = v52[2];
        sub_10000C5C0();
        sub_10000FE54();
        sub_10000C5C0();
        sub_10000FE64();
        sub_10000FE34();
        v1 += v49;
        --v26;
      }

      while (v26);
    }

    sub_10000C658();

    v43 = v0[1];
    sub_10000C5A0();

    __asm { BRAA            X2, X16 }
  }

  v21 = v0[7];
  sub_100002D74(v0 + 2);
  v0[21] = sub_1000063FC(&OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___defaultLocationManager, sub_100006464);
  v22 = async function pointer to DefaultLocationManager.defaultLocations.getter[1];
  v23 = swift_task_alloc();
  v0[22] = v23;
  *v23 = v0;
  v23[1] = sub_1000070BC;
  sub_10000C5A0();

  return DefaultLocationManager.defaultLocations.getter();
}

uint64_t sub_1000070BC()
{
  sub_10000C4DC();
  sub_10000C528();
  sub_10000C420();
  *v2 = v1;
  v4 = *(v3 + 176);
  v5 = *(v3 + 168);
  v6 = *v0;
  sub_10000C430();
  *v7 = v6;
  *(v9 + 184) = v8;

  v10 = sub_10000C440();

  return _swift_task_switch(v10);
}

void sub_1000071BC()
{
  v2 = v0[23];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[15];
    v5 = v0[9];
    sub_10000C5D8();
    sub_10000B010(0, v3, 0);
    v6 = v49;
    v7 = *(v5 + 16);
    v5 += 16;
    v8 = *(v5 + 64);
    sub_10000C534();
    v10 = v2 + v9;
    v47 = *(v5 + 56);
    v48 = v11;
    v12 = (v5 - 8);
    do
    {
      v13 = v0[17];
      v14 = v0[10];
      v15 = v0[8];
      v48(v14, v10, v15);
      sub_10000FA24();
      (*v12)(v14, v15);
      v49 = v6;
      v17 = v6[2];
      v16 = v6[3];
      v1 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        sub_10000B010(v16 > 1, v17 + 1, 1);
      }

      v18 = v0[17];
      v19 = v0[14];
      v6[2] = v1;
      v20 = *(v4 + 80);
      sub_10000C534();
      (*(v4 + 32))(v6 + v21 + *(v4 + 72) * v17);
      v10 += v47;
      --v3;
    }

    while (v3);
    v22 = v0[23];
  }

  else
  {
    v23 = v0[23];

    v6 = &_swiftEmptyArrayStorage;
  }

  v24 = v6[2];
  if (v24)
  {
    v25 = v0[15];
    sub_10000C5D8();
    sub_10000FE44();
    type metadata accessor for WeatherLocation();
    sub_10000C3F4();
    do
    {
      v26 = sub_10000C4E8();
      v27(v26);
      sub_10000F9E4();
      sub_10000F9F4();
      sub_10000C618(v28, v29);

      v30 = sub_10000C4A8();
      v38 = sub_10000C588(v30, v31, v32, v33, v34, v35, v36, v37, v44, v45);
      v39(v38);
      sub_10000FE24();
      v40 = v49[2];
      sub_10000C5C0();
      sub_10000FE54();
      sub_10000C5C0();
      sub_10000FE64();
      sub_10000FE34();
      v1 += v46;
      --v24;
    }

    while (v24);
  }

  sub_10000C658();

  v41 = v0[1];
  sub_10000C5A0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_100007458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v4;

  sub_10000FB84();
}

void sub_1000074FC(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, void *a5)
{
  v36 = sub_10000FBC4();
  v10 = *(v36 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v36, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC14WeatherIntents13IntentHandler_searchCompleter;
  v16 = *(a1 + OBJC_IVAR____TtC14WeatherIntents13IntentHandler_searchCompleter);
  if (v16 || (v17 = [objc_allocWithZone(MKLocalSearchCompleter) init], v18 = objc_allocWithZone(type metadata accessor for LocationSearchCompleter()), v19 = LocationSearchCompleter.init(searchCompleter:)(v17), v20 = *(a1 + v15), *(a1 + v15) = v19, v20, (v16 = *(a1 + v15)) != 0))
  {
    v35._countAndFlagsBits = a4;
    v35._object = a5;
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    v22 = &v16[OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_onError];
    swift_beginAccess();
    v24 = *v22;
    v23 = v22[1];
    *v22 = sub_10000B6B0;
    v22[1] = v21;
    v25 = v16;

    sub_100001C28(v24);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = a2;
    v27[4] = a3;
    v28 = &v25[OBJC_IVAR____TtC14WeatherIntents23LocationSearchCompleter_onUpdate];
    swift_beginAccess();
    v29 = *v28;
    v30 = v28[1];
    *v28 = sub_10000B700;
    v28[1] = v27;

    sub_100001C28(v29);

    sub_10000FBA4();
    v31 = sub_10000FBB4();
    v32 = sub_10000FD64();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Starting a search ...", v33, 2u);
    }

    (*(v10 + 8))(v14, v36);
    LocationSearchCompleter.searchLocations(for:)(v35);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t sub_1000077FC(uint64_t a1, uint64_t (*a2)(void, void))
{
  v3 = sub_10000FBC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000FBA4();
  v9 = sub_10000FBB4();
  v10 = sub_10000FD54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "We encountered an error while updating the search term.", v11, 2u);
  }

  (*(v4 + 8))(v8, v3);
  return a2(0, 0);
}

void sub_100007954(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    __chkstk_darwin(Strong, v7);
    sub_100002C04(&qword_1000194C8, &qword_100011500);
    sub_10000FB74();
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;

    v10 = sub_10000FAF4();
    sub_10000FB14();

    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;

    v12 = sub_10000FAF4();
    sub_10000FB34();
  }

  else
  {
    a3(0, 0);
  }
}

uint64_t sub_100007B18(unint64_t a1)
{
  v2 = sub_10000AF18(a1);
  if (v2)
  {
    v3 = v2;
    v14 = &_swiftEmptyArrayStorage;
    sub_10000FE44();
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      while (1)
      {
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = sub_10000FDF4();
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_12;
          }

          v6 = *(a1 + 8 * v4 + 32);
        }

        v7 = v6;
        v12 = v6;
        sub_10000A5B8(&v12, &v13);

        sub_10000FE24();
        v8 = v14[2];
        sub_10000FE54();
        sub_10000FE64();
        sub_10000FE34();
        ++v4;
        if (v5 == v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_10:
    v9 = sub_10000FAF4();
    sub_100002C04(&qword_1000194D0, &qword_100011508);
    v10 = sub_10000FAE4();

    return v10;
  }

  return result;
}

uint64_t sub_100007C94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a2;
  v6[4] = a3;

  sub_10000FB84();
}

void sub_100007D28(uint64_t a1, void (*a2)(id, void), uint64_t a3)
{
  v72 = a3;
  v73 = a2;
  v4 = sub_10000FBC4();
  v70 = *(v4 - 8);
  v71 = v4;
  v5 = *(v70 + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000FAA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002C04(&qword_1000194D0, &qword_100011508);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v69 - v19;
  v21 = *(a1 + 16);
  if (v21)
  {
    v69 = v8;
    v80 = &_swiftEmptyArrayStorage;
    sub_10000FE44();
    v22 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v23 = type metadata accessor for WeatherLocation();
    v76 = *(v16 + 72);
    v77 = v23;
    v74 = (v10 + 8);
    v75 = (v10 + 16);
    v78 = v15;
    do
    {
      sub_10000C154(v22, v20, &qword_1000194D0, &qword_100011508);
      v24 = &v20[*(v15 + 48)];
      v25 = v24[1];
      v79 = *v24;
      (*v75)(v14, v20, v9);
      v26 = sub_10000FA44();
      v28 = v27;
      sub_10000FA14();
      v30 = v29;
      v32 = v31;
      v33 = sub_10000FA94();
      v34 = v14;
      v35 = v20;
      v36 = v9;
      v38 = v37;

      v39 = v38;
      v9 = v36;
      v20 = v35;
      v14 = v34;
      sub_10000AA48(v26, v28, v33, v39, v30, v32);
      (*v74)(v34, v9);
      sub_10000C1A4(v20, &qword_1000194D0, &qword_100011508);
      sub_10000FE24();
      v40 = v80[2];
      sub_10000FE54();
      v15 = v78;
      sub_10000FE64();
      sub_10000FE34();
      v22 += v76;
      --v21;
    }

    while (v21);
    v8 = v69;
  }

  if (qword_100019148 != -1)
  {
    swift_once();
  }

  v41 = qword_1000196D0;
  v68._countAndFlagsBits = 0x8000000100011C90;
  v81._countAndFlagsBits = 0x6F4C20726568744FLL;
  v81._object = 0xEF736E6F69746163;
  v82.value._countAndFlagsBits = 0;
  v82.value._object = 0;
  v42.super.isa = v41;
  v83._countAndFlagsBits = 0;
  v83._object = 0xE000000000000000;
  v43 = sub_10000F514(v81, v82, v42, v83, v68);
  v45 = v44;

  v46 = objc_allocWithZone(INObjectSection);
  v47 = sub_10000AC18(v43, v45);
  sub_100002C04(&qword_1000194D8, &qword_100011510);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100011490;
  *(v48 + 32) = v47;
  v49 = objc_allocWithZone(INObjectCollection);
  v50 = v47;
  sub_100002C04(&qword_1000194E0, &unk_100011518);
  isa = sub_10000FCF4().super.isa;

  v52 = [v49 initWithSections:isa];

  sub_10000FBA4();
  v53 = v52;
  v54 = sub_10000FBB4();
  v55 = sub_10000FD64();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v79 = v50;
    v80 = v57;
    v58 = v57;
    *v56 = 136446210;
    v59 = v53;
    v60 = v8;
    v61 = [v59 description];
    v62 = sub_10000FCB4();
    v64 = v63;

    v65 = sub_100002694(v62, v64, &v80);

    *(v56 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v54, v55, "We have an updated search term and the collection was just updated. Collection=%{public}s", v56, 0xCu);
    sub_100002D74(v58);
    v50 = v79;

    (*(v70 + 8))(v60, v71);
  }

  else
  {

    (*(v70 + 8))(v8, v71);
  }

  v66 = v73;
  v67 = v53;
  v66(v53, 0);
}

id sub_100008340()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___geocodeStore];
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = 0;
  *(v2 + 24) = xmmword_1000112C0;
  v3 = &v0[OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___localSearchManager];
  *(v3 + 4) = 0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v4 = OBJC_IVAR____TtC14WeatherIntents13IntentHandler_iCloudStatusProvider;
  v5 = sub_10000F894();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&v0[v4] = sub_10000F884();
  *&v0[OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___identityService] = 0;
  *&v0[OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___appConfigurationManager] = 0;
  v8 = &v0[OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___locationDataModelFactory];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *&v0[OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___defaultLocationManager] = 0;
  v9 = &v0[OBJC_IVAR____TtC14WeatherIntents13IntentHandler____lazy_storage___savedLocationsReader];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v0[OBJC_IVAR____TtC14WeatherIntents13IntentHandler_searchCompleter] = 0;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_100008590(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint8_t *a5)
{
  v6 = v5;
  v11 = sub_100002C04(&qword_1000194C0, &qword_1000114E8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v41 = &v40[-v14];
  v15 = sub_10000FBC4();
  v16 = sub_10000C5E4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v16, v21);
  v42 = &v40[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22, v24);
  v26 = &v40[-v25];
  sub_10000FBA4();
  v27 = sub_10000FBB4();
  v28 = sub_10000FD64();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    sub_10000C450(v29);
    _os_log_impl(&_mh_execute_header, v27, v28, "About to provide locations options collection for intent handling", a5, 2u);
    sub_10000C474();
  }

  v30 = *(v18 + 8);
  v30(v26, v15);
  if (!a3)
  {
    goto LABEL_10;
  }

  v31 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v31 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    sub_10000FBA4();
    v32 = sub_10000FBB4();
    v33 = sub_10000FD64();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      sub_10000C450(v34);
      _os_log_impl(&_mh_execute_header, v32, v33, "We have a search term so we need to reverse geocode that term ...", a5, 2u);
      sub_10000C474();
    }

    v30(v42, v15);
    return sub_100007458(a2, a3, a4, a5);
  }

  else
  {
LABEL_10:
    v36 = sub_10000FD44();
    v37 = v41;
    sub_100003218(v41, 1, 1, v36);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v6;
    v38[5] = a4;
    v38[6] = a5;
    v39 = v6;

    sub_100009304(0, 0, v37, &unk_1000114F8, v38);
  }
}

uint64_t sub_100008870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_10000FBC4();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_100008934);
}

uint64_t sub_100008934()
{
  sub_10000C5CC();
  if (qword_100019148 != -1)
  {
    swift_once();
  }

  v1 = qword_1000196D0;
  v9._countAndFlagsBits = 0x8000000100011CE0;
  v11._countAndFlagsBits = 0x636F4C2072756F59;
  v11._object = 0xEE00736E6F697461;
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v2.super.isa = v1;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v3 = sub_10000F514(v11, v12, v2, v13, v9);
  v5 = v4;

  v0[8] = v3;
  v0[9] = v5;
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_100008A6C;
  v7 = v0[2];

  return sub_100008E04();
}

uint64_t sub_100008A6C()
{
  sub_10000C4DC();
  sub_10000C528();
  sub_10000C420();
  *v2 = v1;
  v4 = *(v3 + 80);
  *v2 = *v0;
  *(v1 + 88) = v5;

  v6 = sub_10000C440();

  return _swift_task_switch(v6);
}

uint64_t sub_100008B54()
{
  v37 = v0;
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = objc_allocWithZone(INObjectSection);
  v6 = sub_10000AC18(v3, v2);
  sub_100002C04(&qword_1000194D8, &qword_100011510);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100011490;
  *(v7 + 32) = v6;
  v8 = objc_allocWithZone(INObjectCollection);
  v9 = v6;
  sub_100002C04(&qword_1000194E0, &unk_100011518);
  isa = sub_10000FCF4().super.isa;

  v11 = [v8 initWithSections:isa];

  sub_10000FBA4();
  v12 = v11;
  v13 = sub_10000FBB4();
  v14 = sub_10000FD64();

  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[6];
  v16 = v0[7];
  v18 = v0[5];
  if (v15)
  {
    v35 = v9;
    v19 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v19 = 136446210;
    v20 = v12;
    v33 = v16;
    v21 = [v20 description];
    v32 = v18;
    v22 = sub_10000FCB4();
    v24 = v23;

    v25 = sub_100002694(v22, v24, &v36);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "We have NO search term so we need to reverse provide the zero locations list. Collection=%{public}s", v19, 0xCu);
    sub_100002D74(v34);
    sub_10000C540();
    v9 = v35;
    sub_10000C540();

    (*(v17 + 8))(v33, v32);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  v26 = v0[7];
  v28 = v0[3];
  v27 = v0[4];
  v29 = v12;
  v28(v12, 0);

  sub_10000C5F8();

  return v30();
}

uint64_t sub_100008E04()
{
  v1[2] = v0;
  v2 = sub_10000FBC4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100008ED0);
}

uint64_t sub_100008ED0()
{
  v1 = v0[6];
  sub_10000FBA4();
  v2 = sub_10000FBB4();
  v3 = sub_10000FD64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "About to determine zero keyword locations for (current location + saved locations)", v4, 2u);
    sub_10000C540();
  }

  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[7] = v9;
  v9(v5, v6);
  sub_100002C04(&qword_1000194D8, &qword_100011510);
  v10 = swift_allocObject();
  v0[8] = v10;
  *(v10 + 16) = xmmword_100011490;
  *(v10 + 32) = sub_1000098C4();
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_100009044;
  v12 = v0[2];

  return sub_100006A3C();
}

uint64_t sub_100009044()
{
  sub_10000C4DC();
  sub_10000C528();
  sub_10000C420();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;

  v6 = sub_10000C440();

  return _swift_task_switch(v6);
}

uint64_t sub_10000912C()
{
  v23 = v0;
  v1 = v0[10];
  v2 = v0[5];
  v22 = v0[8];
  sub_10000B1E4(v1);
  v3 = v22;
  sub_10000FBA4();

  v4 = sub_10000FBB4();
  v5 = sub_10000FD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];
  if (v6)
  {
    v21 = v0[7];
    v11 = swift_slowAlloc();
    v20 = v9;
    v12 = swift_slowAlloc();
    v22 = v12;
    sub_10000C604(7.2225e-34);
    *(v11 + 12) = 2081;
    type metadata accessor for WeatherLocation();
    v13 = sub_10000FD14();
    v15 = sub_100002694(v13, v14, &v22);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Returning zero keyword locations=%{private,mask.hash}s", v11, 0x16u);
    sub_100002D74(v12);
    sub_10000C540();
    sub_10000C540();

    v21(v20, v10);
  }

  else
  {

    v7(v9, v10);
  }

  v17 = v0[5];
  v16 = v0[6];

  v18 = v0[1];

  return v18(v3);
}

uint64_t sub_100009304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002C04(&qword_1000194C0, &qword_1000114E8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v27 - v12;
  sub_10000C154(a3, v27 - v12, &qword_1000194C0, &qword_1000114E8);
  v14 = sub_10000FD44();
  v15 = sub_10000542C(v13, 1, v14);

  if (v15 == 1)
  {
    sub_10000C1A4(v13, &qword_1000194C0, &qword_1000114E8);
  }

  else
  {
    sub_10000FD34();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10000FD24();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10000FCD4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000C1A4(a3, &qword_1000194C0, &qword_1000114E8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000C1A4(a3, &qword_1000194C0, &qword_1000114E8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_1000096BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10000F524();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_10000972C(void *a1)
{
  v2 = sub_10000FBC4();
  v3 = sub_10000C5E4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000FBA4();
  v11 = a1;
  v12 = sub_10000FBB4();
  v13 = sub_10000FD64();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    sub_10000C604(7.2225e-34);
    *(v14 + 12) = 2113;
    *(v14 + 14) = v11;
    *v16 = v11;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "About to determine default location for intent:%{private,mask.hash}@", v14, 0x16u);
    sub_10000C1A4(v15, &qword_1000194B8, &qword_1000114E0);
    sub_10000C540();
    sub_10000C540();
  }

  (*(v5 + 8))(v10, v2);
  return sub_1000098C4();
}

id sub_1000098C4()
{
  v0 = sub_10000FBC4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeatherLocation();
  if (qword_100019140 != -1)
  {
    swift_once();
  }

  v6 = static WeatherLocation.currentLocationID;
  v7 = *algn_1000196C8;
  v8 = qword_100019148;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_1000196D0;
  v28._countAndFlagsBits = 0x8000000100011C40;
  v33._countAndFlagsBits = 0x7461636F4C20794DLL;
  v33._object = 0xEB000000006E6F69;
  v34.value._countAndFlagsBits = 0;
  v34.value._object = 0;
  v10.super.isa = v9;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10000F514(v33, v34, v10, v35, v28);

  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = sub_10000ACA8(v6, v7);
  sub_10000FBA4();
  v13 = v12;
  v14 = sub_10000FBB4();
  v15 = sub_10000FD64();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    v18 = v13;
    v19 = [v18 description];
    v31 = v0;
    v20 = v19;
    v21 = sub_10000FCB4();
    v30 = v5;
    v22 = v1;
    v23 = v21;
    v25 = v24;

    v26 = sub_100002694(v23, v25, &v32);

    *(v16 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "currentLocation=%{private,mask.hash}s", v16, 0x16u);
    sub_100002D74(v17);

    (*(v22 + 8))(v30, v31);
  }

  else
  {

    (*(v1 + 8))(v5, v0);
  }

  return v13;
}

id sub_100009C5C@<X0>(void *a1@<X8>)
{
  a1[3] = swift_getObjectType();
  *a1 = v3;

  return v3;
}

void sub_100009D14(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = sub_10000FBC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9, v12);
  v14 = &v37[-v13];
  v15 = [a1 location];
  if (v15)
  {
    v16 = v15;
    sub_10000FBA4();
    v17 = a1;
    v18 = v16;
    v19 = sub_10000FBB4();
    v20 = sub_10000FD64();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      v41 = swift_slowAlloc();
      v42 = v41;
      *v21 = 141558787;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2113;
      *(v21 + 14) = v17;
      *v22 = v17;
      *(v21 + 22) = 2160;
      *(v21 + 24) = 1752392040;
      *(v21 + 32) = 2081;
      v23 = v17;
      v24 = v18;
      v25 = [v24 description];
      v40 = v5;
      v26 = a3;
      v27 = v25;
      v28 = sub_10000FCB4();
      v38 = v20;
      v29 = v28;
      v31 = v30;

      a3 = v26;
      v32 = sub_100002694(v29, v31, &v42);

      *(v21 + 34) = v32;
      _os_log_impl(&_mh_execute_header, v19, v38, "Resolving location for intent with success. intent %{private,mask.hash}@. location: %{private,mask.hash}s", v21, 0x2Au);
      sub_10000C1A4(v39, &qword_1000194B8, &qword_1000114E0);

      sub_100002D74(v41);

      (*(v6 + 8))(v14, v40);
    }

    else
    {

      (*(v6 + 8))(v14, v5);
    }

    type metadata accessor for WeatherLocationResolutionResult();
    v36 = static WeatherLocationResolutionResult.success(with:)(v18);
    (a3)[2](a3, v36);
  }

  else
  {
    sub_10000FBA4();
    v33 = sub_10000FBB4();
    v34 = sub_10000FD64();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Resolving location for intent not required.", v35, 2u);
    }

    (*(v6 + 8))(v11, v5);
    type metadata accessor for WeatherLocationResolutionResult();
    v36 = [swift_getObjCClassFromMetadata() notRequired];
    (a3)[2](a3, v36);
  }

  _Block_release(a3);
}

void sub_10000A100(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = sub_10000FBC4();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &MKMapItem___WeatherIntents__properties;
  v11 = [a1 location];
  v12 = &MKMapItem___WeatherIntents__properties;
  if (v11)
  {
    v13 = v11;
    v14 = [v11 displayString];

    v15 = sub_10000FCB4();
    v17 = v16;
  }

  else
  {
    v17 = 0xE300000000000000;
    v15 = 7104878;
  }

  v18 = [a1 location];
  if (v18 && (v19 = sub_10000B3C8(v18), v20))
  {
    v21 = v20;
    v40 = v19;
  }

  else
  {
    v40 = 7104878;

    v21 = 0xE300000000000000;
  }

  sub_10000FBA4();
  v22 = a1;

  v23 = sub_10000FBB4();
  v24 = sub_10000FD64();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38 = v9;
    v27 = v15;
    v28 = v26;
    v29 = swift_slowAlloc();
    v39 = a3;
    v43 = v29;
    *v25 = 141559299;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2113;
    *(v25 + 14) = v22;
    *v28 = v22;
    *(v25 + 22) = 2160;
    *(v25 + 24) = 1752392040;
    *(v25 + 32) = 2081;
    v30 = v22;
    v31 = sub_100002694(v27, v17, &v43);

    *(v25 + 34) = v31;
    *(v25 + 42) = 2160;
    *(v25 + 44) = 1752392040;
    *(v25 + 52) = 2081;
    v32 = sub_100002694(v40, v21, &v43);

    *(v25 + 54) = v32;
    v10 = &MKMapItem___WeatherIntents__properties;
    _os_log_impl(&_mh_execute_header, v23, v24, "Handling intent %{private,mask.hash}@. displayString: %{private,mask.hash}s. identifier: %{private,mask.hash}s", v25, 0x3Eu);
    sub_10000C1A4(v28, &qword_1000194B8, &qword_1000114E0);

    swift_arrayDestroy();
    a3 = v39;

    v12 = &MKMapItem___WeatherIntents__properties;

    (*(v41 + 8))(v38, v42);
  }

  else
  {

    (*(v41 + 8))(v9, v42);
  }

  v33 = objc_allocWithZone(type metadata accessor for WeatherIntentResponse());
  v34 = WeatherIntentResponse.init(code:userActivity:)(2, 0);
  v35 = [v22 *&v10[321]];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 *&v12[322]];

    if (!v37)
    {
      sub_10000FCB4();
      v37 = sub_10000FCA4();
    }
  }

  else
  {
    v37 = 0;
  }

  [v34 setLocationName:v37];

  (a3)[2](a3, v34);
  _Block_release(a3);
}

void sub_10000A52C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

uint64_t sub_10000A5B8@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100002C04(&qword_1000194D0, &qword_100011508);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v40[-1] - v7;
  v9 = sub_100002C04(&qword_100019408, &unk_100011470);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v40[-1] - v12;
  v14 = sub_10000FAA4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v40[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  sub_100002E9C(v20, v13);
  if (sub_10000542C(v13, 1, v14) == 1)
  {
    sub_10000C1A4(v13, &qword_100019408, &unk_100011470);
    sub_100005D10(v40);
    v21 = sub_1000053E8(v40, v40[3]);
    v22 = [v20 wi_calloutTitle];
    v23 = sub_10000FCB4();
    v25 = v24;

    v26 = *v21;
    LocalSearchRequestManager.performLocalSearch(with:calloutTitle:)(v20, v23, v25);

    *(swift_allocObject() + 16) = v20;
    v27 = v20;
    v28 = sub_10000FAF4();
    v29 = sub_10000FB04();

    result = sub_100002D74(v40);
  }

  else
  {
    (*(v15 + 32))(v19, v13, v14);
    v31 = [v20 wi_calloutTitle];
    v32 = sub_10000FCB4();
    v34 = v33;

    v35 = &v8[*(v4 + 48)];
    (*(v15 + 16))(v8, v19, v14);
    *v35 = v32;
    v35[1] = v34;
    v36 = sub_100002C04(&qword_1000194F0, &qword_100011528);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v29 = sub_10000FB44();
    result = (*(v15 + 8))(v19, v14);
  }

  *a2 = v29;
  return result;
}

uint64_t sub_10000A90C(uint64_t a1, void *a2)
{
  v4 = sub_100002C04(&qword_1000194D0, &qword_100011508);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v20 - v8;
  v10 = [a2 wi_calloutTitle];
  v11 = sub_10000FCB4();
  v13 = v12;

  v14 = &v9[*(v5 + 56)];
  v15 = sub_10000FAA4();
  (*(*(v15 - 8) + 16))(v9, a1, v15);
  *v14 = v11;
  v14[1] = v13;
  v16 = sub_100002C04(&qword_1000194F0, &qword_100011528);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  return sub_10000FB44();
}

id sub_10000AA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  v15 = sub_10000FCA4();

  v16 = sub_10000B364(a1, a2, v15, v14);

  v17 = objc_allocWithZone(CLLocation);
  v18 = v16;
  v19 = [v17 initWithLatitude:a5 longitude:a6];
  sub_10000C114(0, &qword_1000194E8, CLPlacemark_ptr);
  v20 = v19;
  v21 = sub_10000AB7C(v20, a3, a4, 0);
  [v18 setGeolocation:v21];

  return v18;
}

id sub_10000AB7C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_10000FCA4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() placemarkWithLocation:a1 name:v6 postalAddress:a4];

  return v7;
}

id sub_10000AC18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_10000FCA4();
  }

  else
  {
    v3 = 0;
  }

  type metadata accessor for WeatherLocation();
  isa = sub_10000FCF4().super.isa;

  v5 = [v2 initWithTitle:v3 items:isa];

  return v5;
}

id sub_10000ACA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_10000FCA4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10000FCA4();

  v5 = [v2 initWithIdentifier:v3 displayString:v4];

  return v5;
}

uint64_t sub_10000AD3C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000AE34;

  return v7(a1);
}

uint64_t sub_10000AE34()
{
  sub_10000C4DC();
  sub_10000C528();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10000C430();
  *v4 = v3;

  sub_10000C5F8();

  return v5();
}

uint64_t sub_10000AF18(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_10000FE94();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_10000AF3C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_10000FA04(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_10000FA04();

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

size_t sub_10000B010(size_t a1, int64_t a2, char a3)
{
  result = sub_10000B030(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000B030(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002C04(&qword_100019520, &qword_100011580);
  v10 = *(sub_10000FA04() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000FA04() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10000AF3C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10000B1E4(unint64_t a1)
{
  v3 = sub_10000AF18(a1);
  v4 = sub_10000AF18(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_10000B290(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10000BF28(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10000B290(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_10000FE94();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_10000FE04();
  *v1 = result;
  return result;
}

unint64_t sub_10000B340(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

id sub_10000B364(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_10000FCA4();

  v7 = [a4 initWithIdentifier:v6 displayString:a3];

  return v7;
}

uint64_t sub_10000B3C8(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10000FCB4();

  return v3;
}

uint64_t sub_10000B438()
{
  _Block_release(*(v0 + 16));
  v1 = sub_10000C578();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000B470()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B4B8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = sub_10000C558(v8);
  *v9 = v10;
  v9[1] = sub_10000B578;

  return sub_100008870(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_10000B578()
{
  sub_10000C4DC();
  sub_10000C528();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10000C430();
  *v4 = v3;

  sub_10000C5F8();

  return v5();
}

uint64_t sub_10000B658()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B6B8()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_10000C578();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000B70C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_100007B18(v1);
}

uint64_t sub_10000B73C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B790()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0, 0);
}

uint64_t sub_10000B7D8(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10000B82C()
{
  v1 = sub_10000C578();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000B894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a1;
  v34 = a2;
  v10 = sub_10000FD94();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  __chkstk_darwin(v10, v12);
  v30 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000FD84();
  v14 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28, v15);
  v29 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000FC74();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  v20 = sub_10000FAD4();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20, v22);
  v36[3] = sub_10000F904();
  v36[4] = &protocol witness table for AppConfigurationManager;
  v36[0] = a4;
  v35 = &_swiftEmptyArrayStorage;
  sub_10000BD24(&qword_100019170, &type metadata accessor for PromiseDeduperFlags);
  sub_100002C04(&qword_100019178, &qword_1000112D8);
  sub_10000C0B0(&qword_100019180, &qword_100019178, &qword_1000112D8);
  sub_10000FDD4();
  v23 = sub_100002C04(&qword_100019188, &qword_1000112E0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *(a6 + 72) = sub_10000FAB4();
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = 0;
  *(a6 + 104) = xmmword_1000112C0;
  *(a6 + 56) = v33;
  *(a6 + 64) = &protocol witness table for LocalSearchRequestService;
  *(a6 + 120) = v34;
  *(a6 + 128) = a3;
  sub_100005634(v36, a6 + 16);
  if (!a5)
  {
    sub_10000C114(0, &qword_100019428, OS_dispatch_queue_ptr);

    sub_10000FC64();
    v35 = &_swiftEmptyArrayStorage;
    sub_10000BD24(&qword_100019430, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_100002C04(&qword_100019438, &qword_100011488);
    sub_10000C0B0(&qword_100019440, &qword_100019438, &qword_100011488);
    sub_10000FDD4();
    (*(v31 + 104))(v30, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
    a5 = sub_10000FDA4();
  }

  sub_100002D74(v36);
  *(a6 + 136) = a5;
  return a6;
}

unint64_t sub_10000BCB8()
{
  result = qword_100019500;
  if (!qword_100019500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019500);
  }

  return result;
}

uint64_t sub_10000BD0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000BD24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000BD6C()
{
  sub_10000C5CC();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10000C558(v3);
  *v4 = v5;
  v6 = sub_10000C508(v4);

  return v7(v6);
}

uint64_t sub_10000BE00()
{
  sub_10000C5CC();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10000C558(v3);
  *v4 = v5;
  v6 = sub_10000C508(v4);

  return v7(v6);
}

void (*sub_10000BE94(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_10000B330(a3);
  sub_10000B340(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = sub_10000FDF4();
  }

  *a1 = v7;
  return sub_10000BF20;
}

uint64_t sub_10000BF28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_10000FE94();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10000AF18(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for WeatherLocation();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_10000C0B0(&qword_100019518, &qword_100019510, &qword_100011578);
        for (i = 0; i != v7; ++i)
        {
          sub_100002C04(&qword_100019510, &qword_100011578);
          v9 = sub_10000BE94(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000C0B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002D08(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000C114(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000C154(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000C638(a1, a2, a3, a4);
  sub_10000C568(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_10000C1A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002C04(a2, a3);
  sub_10000C568(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10000C1FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000C638(a1, a2, a3, a4);
  sub_10000C568(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t getEnumTagSinglePayload for IntentHandler.IntentHandlerError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for IntentHandler.IntentHandlerError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10000C340);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10000C388()
{
  result = qword_100019548;
  if (!qword_100019548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019548);
  }

  return result;
}

void sub_10000C3F4()
{
  v3 = *(v1 + 16);
  v2 = v1 + 16;
  v4 = v0 + ((*(v2 + 64) + 32) & ~*(v2 + 64));
  v5 = *(v2 + 56);
}

_WORD *sub_10000C450(_WORD *result)
{
  *(v2 - 104) = v1;
  *result = 0;
  return result;
}

uint64_t sub_10000C474()
{
  v2 = *(v0 - 104);
}

id sub_10000C4A8()
{

  return sub_10000AA48(v3, v1, v0, v2, v5, v6);
}

uint64_t sub_10000C508(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_10000C540()
{
}

uint64_t sub_10000C5F8()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10000C618(__n128 a1, __n128 a2)
{
  a1.n128_u64[0] = v3;
  a2.n128_u64[0] = v4;

  return CLLocationCoordinate2D.intentIdentifier.getter(a1, a2);
}

uint64_t sub_10000C638(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100002C04(a3, a4);
}

uint64_t sub_10000C658()
{
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[10];
}

uint64_t sub_10000C6A8(uint64_t *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_100004E18(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2(v10, v2, v5, v6);
  sub_100002D74(a1);
  return v12;
}

uint64_t LocalSearchRequestService.performLocalSearch(with:calloutTitle:)(uint64_t a1)
{
  v6 = [objc_allocWithZone(MKLocalSearchRequest) initWithCompletion:a1];
  v1 = sub_100002C04(&qword_100019418, &qword_100011480);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_10000FB54();

  return v4;
}

uint64_t LocalSearchRequestService.performLocalSearch(with:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MKLocalSearchRequest) init];
  sub_10000D9F8(a1, a2, v4);
  v5 = sub_100002C04(&qword_100019418, &qword_100011480);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_10000FB54();

  return v8;
}

void sub_10000C8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_10000D9F8(a6, a7, a5);
  v14 = [objc_allocWithZone(MKLocalSearch) initWithRequest:a5];
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a1;
  v15[7] = a2;
  v17[4] = sub_10000DC48;
  v17[5] = v15;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10000D8E4;
  v17[3] = &unk_100014F78;
  v16 = _Block_copy(v17);

  [v14 startWithCompletionHandler:v16];
  _Block_release(v16);
}

void sub_10000CA4C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(char *), uint64_t a8)
{
  v147 = a8;
  v148 = a7;
  v154 = a6;
  v155 = a5;
  v158 = a4;
  v152 = a1;
  v153 = a3;
  v9 = sub_100002C04(&qword_100019290, &qword_1000116D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v151 = &v136 - v12;
  v149 = sub_10000FAA4();
  v146 = *(v149 - 8);
  v13 = *(v146 + 64);
  v15 = __chkstk_darwin(v149, v14);
  v17 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v136 - v19;
  v21 = sub_100002C04(&qword_1000195F0, &unk_1000116D8);
  v22 = *(*(v21 - 8) + 64);
  v24 = __chkstk_darwin(v21 - 8, v23);
  v26 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v24, v27);
  v30 = &v136 - v29;
  __chkstk_darwin(v28, v31);
  v33 = &v136 - v32;
  v34 = sub_10000F594();
  v150 = *(v34 - 8);
  v35 = *(v150 + 64);
  v37 = __chkstk_darwin(v34, v36);
  v39 = &v136 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37, v40);
  v42 = &v136 - v41;
  v43 = sub_10000FBC4();
  v44 = *(v43 - 8);
  v156 = v43;
  v157 = v44;
  v45 = *(v44 + 64);
  v47 = __chkstk_darwin(v43, v46);
  v49 = __chkstk_darwin(v47, v48);
  v51 = __chkstk_darwin(v49, v50);
  __chkstk_darwin(v51, v52);
  v57 = &v136 - v56;
  if (a2)
  {
    swift_errorRetain();
    sub_10000FB94();
    swift_errorRetain();
    v58 = v158;

    v59 = sub_10000FBB4();
    v60 = sub_10000FD54();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v160[0] = swift_slowAlloc();
      *v61 = 141558531;
      *(v61 + 4) = 1752392040;
      *(v61 + 12) = 2085;
      *(v61 + 14) = sub_100002694(v153, v58, v160);
      *(v61 + 22) = 2082;
      v159 = a2;
      swift_errorRetain();
      sub_100002C04(&qword_100019168, &qword_1000112D0);
      v62 = sub_10000FCC4();
      v64 = sub_100002694(v62, v63, v160);

      *(v61 + 24) = v64;
      _os_log_impl(&_mh_execute_header, v59, v60, "Failed to geocode. searchString=%{sensitive,mask.hash}s, error=%{public}s", v61, 0x20u);
      swift_arrayDestroy();
    }

    (*(v157 + 8))(v57, v156);
    sub_10000DC70();
    v65 = swift_allocError();
    *v66 = a2;
    swift_errorRetain();
    (v155)(v65);

LABEL_15:

    return;
  }

  v141 = v30;
  v142 = v33;
  v143 = v39;
  v67 = v151;
  v139 = v17;
  v144 = v42;
  v145 = v34;
  v140 = v20;
  v68 = v158;
  if (!v152)
  {
LABEL_12:
    v84 = v53;
    sub_10000FB94();

    v85 = sub_10000FBB4();
    v86 = sub_10000FD54();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v160[0] = v88;
      *v87 = 141558275;
      *(v87 + 4) = 1752392040;
      *(v87 + 12) = 2085;
      *(v87 + 14) = sub_100002694(v153, v68, v160);
      sub_100002D74(v88);
    }

    (*(v157 + 8))(v84, v156);
    sub_10000DC70();
    swift_allocError();
    *v89 = 0;
    v155();
    goto LABEL_15;
  }

  v69 = v53;
  v137 = v55;
  v138 = v54;
  v70 = [v152 mapItems];
  sub_10000DCC4();
  v71 = sub_10000FD04();

  if (!sub_10000AF18(v71))
  {

    v53 = v69;
    goto LABEL_12;
  }

  sub_10000B33C(0, (v71 & 0xC000000000000001) == 0, v71);
  if ((v71 & 0xC000000000000001) != 0)
  {
    v72 = sub_10000FDF4();
  }

  else
  {
    v72 = *(v71 + 32);
  }

  v73 = v72;
  v74 = v145;
  v75 = v67;
  v76 = v143;

  v77 = [v73 placemark];
  v78 = [v77 timeZone];

  v79 = v141;
  if (v78)
  {
    sub_10000F584();

    v80 = v150;
    v81 = *(v150 + 32);
    v81(v79, v76, v74);
    sub_100003218(v79, 0, 1, v74);
    v82 = v142;
    v81(v142, v79, v74);
    sub_100003218(v82, 0, 1, v74);
    v83 = v144;
  }

  else
  {
    v90 = 1;
    sub_100003218(v141, 1, 1, v74);
    v91 = [v73 timeZone];
    if (v91)
    {
      v92 = v91;
      sub_10000F584();

      v90 = 0;
    }

    v83 = v144;
    v82 = v142;
    sub_100003218(v26, v90, 1, v74);
    sub_10000DD08(v26, v82);
    v93 = sub_10000542C(v79, 1, v74);
    v80 = v150;
    if (v93 != 1)
    {
      sub_10000DD78(v79);
    }
  }

  if (sub_10000542C(v82, 1, v74) == 1)
  {
    sub_10000DD78(v82);
    v94 = v137;
    sub_10000FB94();
    v95 = v158;

    v96 = sub_10000FBB4();
    v97 = sub_10000FD54();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v160[0] = v99;
      *v98 = 141558275;
      *(v98 + 4) = 1752392040;
      *(v98 + 12) = 2085;
      *(v98 + 14) = sub_100002694(v153, v95, v160);
      _os_log_impl(&_mh_execute_header, v96, v97, "Time zone missing while geocoding, searchString=%{sensitive,mask.hash}s.", v98, 0x16u);
      sub_100002D74(v99);
    }

    (*(v157 + 8))(v94, v156);
    sub_10000DC70();
    swift_allocError();
    *v100 = 1;
    v155();
  }

  else
  {
    (*(v80 + 32))(v83, v82, v74);
    v101 = [v73 placemark];
    [v101 coordinate];

    v154 = sub_10000FDC4();
    v155 = v102;
    v103 = [v73 wc_weatherDisplayName];
    v104 = sub_10000FCB4();
    v151 = v105;
    v152 = v104;

    (*(v80 + 16))(v76, v83, v74);
    sub_10000F5A4();
    v106 = sub_10000F574();
    sub_100003218(v75, 0, 1, v106);
    v107 = [v73 placemark];
    v108 = MKPlacemark.safeTitle.getter();
    v142 = v109;
    v143 = v108;

    v110 = [v73 placemark];
    MKPlacemark.safeSubtitle.getter();
    v141 = v111;

    v112 = [v73 wc_weatherLocationName];
    v137 = sub_10000FCB4();

    v113 = [v73 wc_weatherLocationName];
    sub_10000FCB4();

    v114 = [v73 wc_weatherDisplayName];
    sub_10000FCB4();

    sub_10000FA54();

    v115 = v140;
    sub_10000FA64();
    v116 = v138;
    sub_10000FB94();
    v117 = v146;
    v118 = v139;
    v119 = v149;
    (*(v146 + 16))(v139, v115, v149);
    v120 = v158;

    v121 = v73;
    v122 = sub_10000FBB4();
    v123 = sub_10000FD64();
    v155 = v121;

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v160[0] = swift_slowAlloc();
      *v124 = 141559299;
      v125 = v118;
      *(v124 + 4) = 1752392040;
      *(v124 + 12) = 2085;
      *(v124 + 14) = sub_100002694(v153, v120, v160);
      *(v124 + 22) = 2160;
      *(v124 + 24) = 1752392040;
      *(v124 + 32) = 2081;
      v126 = sub_10000FA84();
      v128 = v127;
      v129 = *(v117 + 8);
      v129(v125, v149);
      v130 = sub_100002694(v126, v128, v160);

      *(v124 + 34) = v130;
      *(v124 + 42) = 2160;
      *(v124 + 44) = 1752392040;
      *(v124 + 52) = 2081;
      v131 = [v155 wc_weatherLocationName];
      v132 = sub_10000FCB4();
      v134 = v133;

      v135 = sub_100002694(v132, v134, v160);

      *(v124 + 54) = v135;
      _os_log_impl(&_mh_execute_header, v122, v123, "Successfully geocoded location. searchString=%{sensitive,mask.hash}s, location=%{private,mask.hash}s, unsanitizedSecondaryName=%{private,mask.hash}s", v124, 0x3Eu);
      swift_arrayDestroy();
      v115 = v140;

      v119 = v149;
    }

    else
    {

      v129 = *(v117 + 8);
      v129(v118, v119);
    }

    (*(v157 + 8))(v116, v156);
    v148(v115);

    v129(v115, v119);
    (*(v150 + 8))(v144, v145);
  }
}

void sub_10000D8E4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t LocalSearchRequestService.__deallocating_deinit()
{
  sub_100002D74((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

void sub_10000D9F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10000FCA4();
  [a3 setNaturalLanguageQuery:v4];
}

uint64_t *sub_10000DA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1, a2);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  v12 = sub_10000DB60(v10, v11, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v12;
}

uint64_t *sub_10000DB60(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  v7 = sub_1000055D4(a2 + 2);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  return a2;
}

uint64_t sub_10000DC00()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000DC58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000DC70()
{
  result = qword_1000195F8;
  if (!qword_1000195F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000195F8);
  }

  return result;
}

unint64_t sub_10000DCC4()
{
  result = qword_100019600;
  if (!qword_100019600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019600);
  }

  return result;
}

uint64_t sub_10000DD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002C04(&qword_1000195F0, &unk_1000116D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DD78(uint64_t a1)
{
  v2 = sub_100002C04(&qword_1000195F0, &unk_1000116D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000DDE0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000DE04(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
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

uint64_t sub_10000DE58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10000DEB4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

id WeatherIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id WeatherIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for WeatherIntent();
  v9 = sub_10000EB90(v13, "initWithCoder:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_10000FCA4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id WeatherIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_10000FCA4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for WeatherIntent();
  v12 = sub_10000EB90(v16, "initWithIdentifier:backingStore:", v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id WeatherIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = sub_10000EB9C();

  v3 = sub_10000FCA4();

  if (v1)
  {
    v4.super.isa = sub_10000FC84().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4.super.isa];

  return v5;
}

id WeatherIntent.init(domain:verb:parametersByName:)()
{
  v2 = sub_10000EB9C();

  v3 = sub_10000FCA4();

  if (v1)
  {
    v4.super.isa = sub_10000FC84().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for WeatherIntent();
  v5 = objc_msgSendSuper2(&v7, "initWithDomain:verb:parametersByName:", v2, v3, v4.super.isa);

  return v5;
}

unint64_t WeatherIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_10000E3DC(Swift::UInt a1)
{
  sub_10000FF14();
  sub_10000FF24(a1);
  return sub_10000FF34();
}

Swift::Int sub_10000E45C(uint64_t a1, Swift::UInt a2)
{
  sub_10000FF14();
  sub_10000FF24(a2);
  return sub_10000FF34();
}

unint64_t sub_10000E4A0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = WeatherIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t WeatherIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___WeatherIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10000E570(uint64_t a1)
{
  v3 = OBJC_IVAR___WeatherIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *WeatherIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___WeatherIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id WeatherIntentResponse.init()()
{
  *&v0[OBJC_IVAR___WeatherIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id WeatherLocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id WeatherIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___WeatherIntentResponse_code) = 0;
  v13 = type metadata accessor for WeatherIntentResponse();
  v9 = sub_10000EB90(v13, "initWithCoder:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id WeatherIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___WeatherIntentResponse_code) = 0;
  v13 = type metadata accessor for WeatherIntentResponse();
  v9 = sub_10000EB90(v13, "initWithBackingStore:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_10000FC84().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id WeatherIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___WeatherIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_10000FC84().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for WeatherIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_10000EA94(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10000EAD0()
{
  result = qword_100019610;
  if (!qword_100019610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019610);
  }

  return result;
}

uint64_t sub_10000EB24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = WeatherIntentResponse.code.getter();
  *a2 = result;
  return result;
}

NSString sub_10000EB9C()
{

  return sub_10000FCA4();
}

id WeatherLocation.__allocating_init(identifier:display:pronunciationHint:)()
{
  sub_10000F500();
  if (v2)
  {
    v3 = sub_10000FCA4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10000FCA4();

  if (v1)
  {
    v5 = sub_10000FCA4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id WeatherLocation.init(identifier:display:pronunciationHint:)()
{
  sub_10000F500();
  if (v2)
  {
    v3 = sub_10000FCA4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10000FCA4();

  if (v1)
  {
    v5 = sub_10000FCA4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for WeatherLocation();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:displayString:pronunciationHint:", v3, v4, v5);

  return v6;
}

id WeatherLocation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WeatherLocation();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static WeatherLocationResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static WeatherLocationResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_10000F074();

    sub_10000FE84();
  }

  else
  {

    sub_10000FEC4();
    sub_10000F074();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_10000F074();
  isa = sub_10000FCF4().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_10000F074()
{
  result = qword_100019690;
  if (!qword_100019690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019690);
  }

  return result;
}

id static WeatherLocationResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id WeatherLocationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_10000FC84().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id WeatherLocationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_10000FC84().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for WeatherLocationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_10000F4A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000F4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return _assertionFailure(_:_:file:line:flags:)(a1, 11, 2, 0, 0xE000000000000000, a6, 36, 2);
}