void sub_10000340C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v5 = [v2 URL];
    v4 = [NSString stringWithFormat:@"Failed to insert rich link with URL %@ (%@)", v5, v3];

    MMALog(v4);
  }
}

id _MMALog()
{
  if (qword_10064AE48[0] != -1)
  {
    sub_1004D7930();
  }

  v1 = qword_10064AE40;

  return v1;
}

void sub_1000034F8(id a1)
{
  v1 = os_log_create("com.apple.Music", "MusicMessagesApp");
  v2 = qword_10064AE40;
  qword_10064AE40 = v1;
}

void MMALog(void *a1)
{
  v1 = a1;
  v2 = _MMALog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@", &v3, 0xCu);
  }
}

void MMALogDebug(void *a1)
{
  v1 = a1;
  v2 = _MMALog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D7944(v1, v2);
  }
}

uint64_t MMASetSQLiteTraceEnabled(int a1)
{
  if (a1)
  {
    return setenv("SQLITE_AUTO_TRACE", "syslog", 6);
  }

  else
  {
    return unsetenv("SQLITE_AUTO_TRACE");
  }
}

__n128 sub_1000036C8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GlowModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GlowModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

BOOL sub_100003788(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100003820@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10000384C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_100003918@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100003928(uint64_t a1, id *a2)
{
  result = sub_1004DD41C();
  *a2 = 0;
  return result;
}

uint64_t sub_1000039A0(uint64_t a1, id *a2)
{
  v3 = sub_1004DD42C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003A20@<X0>(void *a1@<X8>)
{
  sub_1004DD43C();
  v2 = sub_1004DD3FC();

  *a1 = v2;
  return result;
}

uint64_t sub_100003A68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004DD43C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003A94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100004638(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100003AE4(uint64_t a1)
{
  v2 = sub_100003F9C(&qword_100632088, type metadata accessor for AVError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003B50(uint64_t a1)
{
  v2 = sub_100003F9C(&qword_100632088, type metadata accessor for AVError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003BBC(void *a1, uint64_t a2)
{
  v4 = sub_100003F9C(&qword_100632088, type metadata accessor for AVError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F9C(&qword_100632088, type metadata accessor for AVError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100003CEC()
{
  sub_1004DF26C();
  sub_1004DD2BC();
  return sub_1004DF2BC();
}

uint64_t sub_100003D4C@<X0>(void *a1@<X8>)
{
  v2 = sub_1004DD3FC();

  *a1 = v2;
  return result;
}

uint64_t sub_100003D94()
{
  sub_100003F9C(&qword_100632090, type metadata accessor for NSKeyValueChangeKey);
  sub_100003F9C(&qword_100632098, type metadata accessor for NSKeyValueChangeKey);

  return sub_1004DEE0C();
}

uint64_t sub_100003E50()
{
  sub_100003F9C(&qword_100631FF0, type metadata accessor for ICStoreArtworkInfoCropStyle);
  sub_100003F9C(&qword_100631FF8, type metadata accessor for ICStoreArtworkInfoCropStyle);

  return sub_1004DEE0C();
}

uint64_t sub_100003F9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000402C(uint64_t a1)
{
  v2 = sub_100003F9C(&qword_100632050, type metadata accessor for AVError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100004098(uint64_t a1)
{
  v2 = sub_100003F9C(&qword_100632050, type metadata accessor for AVError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004108(uint64_t a1)
{
  v2 = sub_100003F9C(&qword_100632088, type metadata accessor for AVError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003F9C(&qword_100632088, type metadata accessor for AVError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000041F8()
{
  sub_100003F9C(&qword_100631FE0, type metadata accessor for WaitingReason);
  sub_100003F9C(&qword_100631FE8, type metadata accessor for WaitingReason);

  return sub_1004DEE0C();
}

uint64_t sub_100004464()
{
  sub_1004DD43C();
  v0 = sub_1004DD69C();

  return v0;
}

uint64_t sub_1000044A0()
{
  sub_1004DD43C();
  sub_1004DD55C();
}

Swift::Int sub_1000044F4()
{
  sub_1004DD43C();
  sub_1004DF26C();
  sub_1004DD55C();
  v0 = sub_1004DF2BC();

  return v0;
}

uint64_t sub_100004568()
{
  v0 = sub_1004DD43C();
  v2 = v1;
  if (v0 == sub_1004DD43C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1004DF08C();
  }

  return v5 & 1;
}

uint64_t sub_100004638(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

__n128 sub_100004684(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004690(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000046B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_100004A14()
{
  result = qword_100632078;
  if (!qword_100632078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100632078);
  }

  return result;
}

void sub_100004B0C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

UITraitCollection __swiftcall UITraitCollection.combining(with:)(UITraitCollection_optional with)
{
  if (with.value.super.isa)
  {
    isa = with.value.super.isa;
    sub_100004CB8(&qword_1006320B0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100511A20;
    *(v3 + 32) = v1;
    *(v3 + 40) = isa;
    sub_100004D00();
    v4 = isa;
    v5 = v1;
    v6 = sub_1004DD85C().super.isa;

    v7 = [objc_opt_self() traitCollectionWithTraitsFromCollections:v6];

    return v7;
  }

  else
  {

    return v1;
  }
}

uint64_t sub_100004CB8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004D00()
{
  result = qword_1006320B8;
  if (!qword_1006320B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006320B8);
  }

  return result;
}

double sub_100004D4C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2 + 1.0;
  *&qword_1006320C0 = result;
  return result;
}

uint64_t sub_100004DBC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v4[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelsScaleWithTextSize] = 0;
  v4[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped] = 1;
  v4[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_showsIdealizedLevelPositionsWhenStopped] = 1;
  *&v4[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelWidth] = 0x4008000000000000;
  *&v4[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_minimumLevelHeight] = 0x4000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_maximumLevelHeight] = 0x402C000000000000;
  v10 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelViews;
  v27 = &_swiftEmptyArrayStorage;
  sub_1004DEBCC();
  v11 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v11 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  v12 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v12 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  v13 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v13 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  v14 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v14 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  v15 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v15 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  *&v5[v10] = &_swiftEmptyArrayStorage;
  v26.receiver = v5;
  v26.super_class = type metadata accessor for NowPlayingIndicatorView();
  result = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  v17 = result;
  v18 = *(result + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelViews);
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_11:
    v25 = v17;
LABEL_12:
    sub_1000058A4();

    return v17;
  }

  result = sub_1004DED5C();
  v19 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v19 >= 1)
  {
    v20 = v17;

    v21 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = sub_10000E008(v21, v18);
      }

      else
      {
        v22 = *(v18 + 8 * v21 + 32);
      }

      v23 = v22;
      ++v21;
      v24 = [v20 tintColor];
      [v23 setBackgroundColor:v24];
    }

    while (v19 != v21);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000523C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for NowPlayingIndicatorView();
  result = objc_msgSendSuper2(&v8, "tintColorDidChange");
  v2 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelViews];
  if (v2 >> 62)
  {
    result = sub_1004DED5C();
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {

    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_10000E008(v4, v2);
      }

      else
      {
        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = [v0 tintColor];
      [v6 setBackgroundColor:v7];
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_1000053AC()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for NowPlayingIndicatorView();
  objc_msgSendSuper2(&v20, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelViews];
  if (v1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1004DED5C())
  {
    v18 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_showsIdealizedLevelPositionsWhenStopped;
    v19 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelWidth;
    v3 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_minimumLevelHeight;
    v17 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_maximumLevelHeight;

    if (!i)
    {
      break;
    }

    for (j = 4; ; ++j)
    {
      v5 = j - 4;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = sub_10000E008(j - 4, v1);
      }

      else
      {
        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v6 = *(v1 + 8 * j);
      }

      v7 = v6;
      v8 = j - 3;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 superview];
      if (v9)
      {
      }

      else
      {
        [v0 addSubview:v7];
      }

      [v7 frame];
      v11 = v10;
      v12 = *&v0[v19];
      if (v0[v18] == 1)
      {
        if (v5 > 4)
        {
          goto LABEL_24;
        }

        v13 = *&v0[v3] + *(&off_1005CEE68 + j) * (*&v0[v17] - *&v0[v3]);
      }

      else
      {
        v13 = *&v0[v3];
      }

      if (qword_100631E60 != -1)
      {
        swift_once();
      }

      v14 = (v12 + *&qword_1006320C0) * v5;
      [v0 bounds];
      MaxY = CGRectGetMaxY(v21);
      v22.origin.x = v14;
      v22.origin.y = v11;
      v22.size.width = v12;
      v22.size.height = v13;
      [v7 setFrame:{v14, MaxY - CGRectGetHeight(v22), v12, v13}];

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }
}

void sub_100005704(void *a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for NowPlayingIndicatorView();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_9;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_1004DD43C();
  v8 = v7;
  if (v6 == sub_1004DD43C() && v8 == v9)
  {

    return;
  }

  v11 = sub_1004DF08C();

  if ((v11 & 1) == 0)
  {
LABEL_9:
    sub_1000058A4();
  }
}

void sub_1000058A4()
{
  if (v0[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelsScaleWithTextSize] == 1)
  {
    v1 = v0;
    v2 = objc_opt_self();
    v3 = [v2 defaultMetrics];
    v4 = [v1 traitCollection];
    v5 = sub_1004DE2BC();
    sub_1004DDF4C();
    v7 = v6;

    v8 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelWidth];
    *&v1[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelWidth] = v7;
    if (v7 != v8)
    {
      [v1 setNeedsLayout];
    }

    v9 = [v2 defaultMetrics];
    v10 = [v1 traitCollection];
    v11 = sub_1004DE2BC();
    sub_1004DDF4C();
    v13 = v12;

    v14 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_minimumLevelHeight];
    *&v1[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_minimumLevelHeight] = v13;
    if (v13 != v14)
    {
      [v1 setNeedsLayout];
    }

    v15 = [v2 defaultMetrics];
    v16 = [v1 traitCollection];
    v17 = sub_1004DE2BC();
    sub_1004DDF4C();
    v19 = v18;

    v20 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_maximumLevelHeight];
    *&v1[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_maximumLevelHeight] = v19;
    if (v19 != v20)
    {

      [v1 setNeedsLayout];
    }
  }
}

uint64_t sub_100005B14()
{
  v1 = v0;
  v2 = objc_opt_self();
  v66 = [v2 functionWithName:kCAMediaTimingFunctionEaseOut];
  v74 = [v2 functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  isUniquelyReferenced_nonNull_bridgeObject = *(v0 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelViews);
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_58;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped;
  v75 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_maximumLevelHeight;
  v76 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_minimumLevelHeight;
  v69 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_showsIdealizedLevelPositionsWhenStopped;
  v65 = isUniquelyReferenced_nonNull_bridgeObject;

  if (v4)
  {
    v6 = 0;
    v67 = v4;
    v68 = v5;
    while (1)
    {
      if ((v65 & 0xC000000000000001) != 0)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10000E008(v6, v65);
      }

      else
      {
        if (v6 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v65 + 32 + 8 * v6);
      }

      v9 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        v64 = isUniquelyReferenced_nonNull_bridgeObject;
        v4 = sub_1004DED5C();
        isUniquelyReferenced_nonNull_bridgeObject = v64;
        goto LABEL_3;
      }

      v11 = [isUniquelyReferenced_nonNull_bridgeObject layer];
      v12 = v11;
      if (*(v1 + v5) == 1)
      {
        break;
      }

      v71 = v11;
      v73 = v9;
      v70 = v6 + 1;
      v37 = sub_100006D14(v6);
      v38 = v37[2];
      if (v38)
      {
        v39 = _swiftEmptyArrayStorage;
        v40 = 0;
        v41 = v37 + 4;
        v42 = _swiftEmptyArrayStorage;
        do
        {
          if (*&v41[v40] <= 1.0)
          {
            v43 = *&v41[v40];
          }

          else
          {
            v43 = 1.0;
          }

          v44 = *(v1 + v76);
          v45 = *(v1 + v75);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_1000249B8(0, *(v42 + 2) + 1, 1, v42);
          }

          v47 = *(v42 + 2);
          v46 = *(v42 + 3);
          if (v47 >= v46 >> 1)
          {
            v42 = sub_1000249B8((v46 > 1), v47 + 1, 1, v42);
          }

          *(v42 + 2) = v47 + 1;
          *&v42[8 * v47 + 32] = v44 + v43 * (v45 - v44);
          if (v40 < v38 - 1)
          {
            v48 = v74;
            sub_1004DD84C();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1004DD8BC();
            }

            sub_1004DD90C();
            v39 = _swiftEmptyArrayStorage;
          }

          ++v40;
        }

        while (v38 != v40);
      }

      else
      {
        v42 = _swiftEmptyArrayStorage;
        v39 = _swiftEmptyArrayStorage;
      }

      if (_swiftEmptyArrayStorage >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1004DED5C();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = v68;
      v49 = v71;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        goto LABEL_55;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (_swiftEmptyArrayStorage >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1000117AC(_swiftEmptyArrayStorage);
        v39 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      v50 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v50)
      {
        goto LABEL_56;
      }

      v51 = v50 - 1;
      v52 = *((v39 & 0xFFFFFFFFFFFFFF8) + 8 * v51 + 0x20);
      *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) = v51;

      v53 = sub_1004DD3FC();
      v54 = [objc_opt_self() animationWithKeyPath:v53];

      v55 = v54;
      [v55 setDuration:1.0];
      sub_1000064FC(v42);

      isa = sub_1004DD85C().super.isa;

      [v55 setValues:isa];

      v57 = sub_100006E0C(v6)[2];
      if (v57)
      {
        sub_1004DEBCC();
        v58 = 32;
        do
        {
          sub_1004DDB7C();
          sub_1004DEB9C();
          sub_1004DEBDC();
          sub_1004DEBEC();
          sub_1004DEBAC();
          v58 += 8;
          --v57;
        }

        while (v57);

        v49 = v71;
      }

      else
      {
      }

      sub_100006F10(0, &qword_100632430);
      v59 = sub_1004DD85C().super.isa;

      [v55 setKeyTimes:v59];

      sub_100006F10(0, &qword_100632128);
      v60 = sub_1004DD85C().super.isa;

      [v55 setTimingFunctions:v60];

      LODWORD(v61) = 2139095040;
      [v55 setRepeatCount:v61];
      [v55 setRemovedOnCompletion:0];

      v62 = sub_1004DD3FC();
      [v49 addAnimation:v55 forKey:v62];

      v4 = v67;
      v10 = v70;
LABEL_8:
      v6 = v10;
      if (v10 == v4)
      {
        goto LABEL_50;
      }
    }

    v13 = [v11 presentationLayer];
    if (!v13)
    {
      v13 = v12;
    }

    v14 = v13;
    [v13 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v78.origin.x = v16;
    v78.origin.y = v18;
    v78.size.width = v20;
    v78.size.height = v22;
    Height = CGRectGetHeight(v78);
    v24 = *(v1 + v76);
    if (*(v1 + v69))
    {
      if (v6 > 4)
      {
        goto LABEL_57;
      }

      v7 = v24 + *(&off_1005CEE68 + v6 + 4) * (*(v1 + v75) - v24);
      v24 = v7;
      if (Height != v7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = Height;
      if (Height != v24)
      {
LABEL_19:
        v25 = v7 * 1.1;
        v26 = Height;
        v27 = sub_1004DD3FC();
        v72 = v9;
        v28 = [objc_opt_self() animationWithKeyPath:v27];

        [v28 setDuration:0.733333333];
        sub_100004CB8(&qword_100632130);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_100511A40;
        *(v29 + 56) = &type metadata for CGFloat;
        *(v29 + 32) = v26;
        *(v29 + 88) = &type metadata for CGFloat;
        *(v29 + 64) = v25;
        *(v29 + 120) = &type metadata for CGFloat;
        *(v29 + 96) = v24;
        v30 = sub_1004DD85C().super.isa;

        [v28 setValues:v30];

        sub_1004DEBCC();
        sub_1004DDB7C();
        sub_1004DEB9C();
        sub_1004DEBDC();
        sub_1004DEBEC();
        sub_1004DEBAC();
        sub_1004DDB7C();
        sub_1004DEB9C();
        sub_1004DEBDC();
        sub_1004DEBEC();
        sub_1004DEBAC();
        sub_1004DDB7C();
        sub_1004DEB9C();
        sub_1004DEBDC();
        sub_1004DEBEC();
        sub_1004DEBAC();
        sub_100006F10(0, &qword_100632430);
        v31 = sub_1004DD85C().super.isa;

        [v28 setKeyTimes:v31];

        sub_100004CB8(&qword_1006320B0);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_100511A20;
        *(v32 + 32) = v66;
        *(v32 + 40) = v74;
        sub_100006F10(0, &qword_100632128);
        v33 = v66;
        v34 = v74;
        v35 = sub_1004DD85C().super.isa;

        [v28 setTimingFunctions:v35];

        v10 = v6 + 1;
        v36 = sub_1004DD3FC();
        [v12 addAnimation:v28 forKey:v36];

        goto LABEL_7;
      }
    }

    v8 = sub_1004DD3FC();
    [v12 removeAnimationForKey:v8];

LABEL_7:
    goto LABEL_8;
  }

LABEL_50:
}

void *sub_1000064FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_1000066A8(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000066A8((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100006F5C(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_1000065F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingIndicatorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100006668(char *a1, int64_t a2, char a3)
{
  result = sub_1000066C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100006688(char *a1, int64_t a2, char a3)
{
  result = sub_1000067CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000066A8(char *a1, int64_t a2, char a3)
{
  result = sub_1000068D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000066C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100632140);
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

char *sub_1000067CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100632138);
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

char *sub_1000068D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100632130);
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
    v10 = &_swiftEmptyArrayStorage;
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

void sub_1000069E0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelsScaleWithTextSize) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_showsIdealizedLevelPositionsWhenStopped) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelWidth) = 0x4008000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_minimumLevelHeight) = 0x4000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_maximumLevelHeight) = 0x402C000000000000;
  v2 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelViews;
  sub_1004DEBCC();
  v3 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v3 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  v4 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v4 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  v5 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v5 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  v6 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v6 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  v7 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v7 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  *(v1 + v2) = &_swiftEmptyArrayStorage;
  sub_1004DECCC();
  __break(1u);
}

void *sub_100006D14(void *result)
{
  if (result > 4)
  {
    __break(1u);
  }

  else
  {
    v1 = *(&off_1005CF0F0 + result + 4);
    v2 = *(v1 + 16);
    if (v2)
    {

      sub_100006668(0, v2, 0);
      v3 = _swiftEmptyArrayStorage[2];
      v4 = 32;
      do
      {
        v5 = *(v1 + v4);
        v6 = _swiftEmptyArrayStorage[3];
        if (v3 >= v6 >> 1)
        {
          sub_100006668((v6 > 1), v3 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v3 + 1;
        _swiftEmptyArrayStorage[v3 + 4] = v5;
        v4 += 16;
        ++v3;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_100006E0C(void *result)
{
  if (result > 4)
  {
    __break(1u);
  }

  else
  {
    v1 = *(&off_1005CF0F0 + result + 4);
    v2 = *(v1 + 16);
    if (v2)
    {

      sub_100006688(0, v2, 0);
      v3 = _swiftEmptyArrayStorage[2];
      v4 = 40;
      do
      {
        v5 = *(v1 + v4);
        v6 = _swiftEmptyArrayStorage[3];
        if (v3 >= v6 >> 1)
        {
          sub_100006688((v6 > 1), v3 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v3 + 1;
        *&_swiftEmptyArrayStorage[v3 + 4] = v5 / 60.0;
        v4 += 16;
        ++v3;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100006F10(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *sub_100006F5C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_100006F6C()
{
  result = [objc_allocWithZone(type metadata accessor for AudioPreviewPlayer()) init];
  qword_100671800 = result;
  return result;
}

uint64_t sub_100006F9C(uint64_t a1)
{
  v3 = sub_1004DBEBC();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004DBEFC();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004D809C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v17[1] = *&v1[OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerDispatchQueue];
  (*(v10 + 16))(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  (*(v10 + 32))(v13 + v12, v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_100008EF0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005CF4E8;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  sub_1004DBEDC();
  v21 = _swiftEmptyArrayStorage;
  sub_100008FB4(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004CB8(&unk_1006323E0);
  sub_100008F60(&qword_1006321B0, &unk_1006323E0);
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v14);
  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);
}

uint64_t sub_100007320()
{
  v1 = sub_1004DBEBC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DBEFC();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerDispatchQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100008DC0;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005CF498;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_1004DBEDC();
  v14 = &_swiftEmptyArrayStorage;
  sub_100008FB4(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004CB8(&unk_1006323E0);
  sub_100008F60(&qword_1006321B0, &unk_1006323E0);
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

void sub_1000075DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1004DBEBC();
  v41 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DBEFC();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v5[OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerObservationContexts];
  v19 = *&v5[OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerObservationContexts];
  if (!a5)
  {
    if (v19)
    {
      if (*(v18 + 1))
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

LABEL_16:
    v40 = v15;
    v28 = swift_allocObject();
    *(v28 + 16) = v5;
    v47 = sub_100009044;
    v48 = v28;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_100012680;
    v46 = &unk_1005CF588;
    v29 = _Block_copy(&aBlock);
    v30 = v5;
    sub_1004DBEDC();
    v42 = &_swiftEmptyArrayStorage;
    sub_100008FB4(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_1006323E0);
    sub_100008F60(&qword_1006321B0, &unk_1006323E0);
    sub_1004DE92C();
    sub_1004DE15C();
    v26 = v29;
    goto LABEL_17;
  }

  if (v19)
  {
    v20 = v19 == a5;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    goto LABEL_16;
  }

  v21 = *(v18 + 1);
  if (v21)
  {
    v22 = v21 == a5;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
LABEL_11:
    v40 = v15;
    v23 = swift_allocObject();
    *(v23 + 16) = a4;
    *(v23 + 24) = v5;
    v47 = sub_10000903C;
    v48 = v23;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_100012680;
    v46 = &unk_1005CF538;
    v24 = _Block_copy(&aBlock);

    v25 = v5;
    sub_1004DBEDC();
    v42 = &_swiftEmptyArrayStorage;
    sub_100008FB4(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_1006323E0);
    sub_100008F60(&qword_1006321B0, &unk_1006323E0);
    sub_1004DE92C();
    sub_1004DE15C();
    v26 = v24;
LABEL_17:
    _Block_release(v26);
    (*(v41 + 8))(v12, v10);
    (*(v14 + 8))(v17, v40);

    return;
  }

LABEL_14:
  if (a2)
  {
    v27 = sub_1004DD3FC();
  }

  else
  {
    v27 = 0;
  }

  sub_100008AC0(a3, &aBlock);
  v31 = v46;
  if (!v46)
  {
    v36 = 0;
    if (a4)
    {
      goto LABEL_21;
    }

LABEL_23:
    v37.super.isa = 0;
    goto LABEL_24;
  }

  v32 = sub_100008C70(&aBlock, v46);
  v33 = *(v31 - 1);
  __chkstk_darwin(v32);
  v35 = &v39 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v35);
  v36 = sub_1004DF06C();
  (*(v33 + 8))(v35, v31);
  sub_100008D24(&aBlock);
  if (!a4)
  {
    goto LABEL_23;
  }

LABEL_21:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_100008FB4(&qword_100632090, type metadata accessor for NSKeyValueChangeKey);
  v37.super.isa = sub_1004DD1FC().super.isa;
LABEL_24:
  v38 = type metadata accessor for AudioPreviewPlayer();
  v49.receiver = v5;
  v49.super_class = v38;
  objc_msgSendSuper2(&v49, "observeValueForKeyPath:ofObject:change:context:", v27, v36, v37.super.isa, a5);

  swift_unknownObjectRelease();
}

id sub_100007BF0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player;
  result = *(a1 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player);
  if (result)
  {
    result = [result status];
    if (result == 1)
    {
      result = *(a1 + v2);
      if (result)
      {
        result = [result rate];
        if (v4 == 0.0)
        {
          v5 = [objc_opt_self() sharedInstance];
          v6 = [v5 mode];
          v13 = 0;
          v7 = [v5 setCategory:AVAudioSessionCategoryPlayback mode:v6 options:0 error:&v13];

          v8 = v13;
          if (v7 && (v13 = 0, v9 = v8, v10 = [v5 setActive:1 error:&v13], v8 = v13, (v10 & 1) != 0))
          {
            v11 = v13;
          }

          else
          {
            v12 = v8;
            sub_1004D7F4C();

            swift_willThrow();
          }

          return [*(a1 + v2) play];
        }
      }
    }
  }

  return result;
}

void sub_100007D80(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = sub_100028E14(NSKeyValueChangeOldKey);
  if ((v3 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10000904C(*(a1 + 56) + 32 * v2, v7);
  sub_100006F5C(v7, v8);
  swift_dynamicCast();
  if (!*(a1 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = sub_100028E14(NSKeyValueChangeNewKey);
  if ((v5 & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  sub_10000904C(*(a1 + 56) + 32 * v4, v7);
  sub_100006F5C(v7, v8);
  swift_dynamicCast();
  if (v6 > 0.0 && v6 == 0.0)
  {
    sub_100008B98();
  }
}

uint64_t sub_100007FD8()
{
  v1 = v0;
  v2 = sub_1004DBF6C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerDispatchQueue);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  v8 = sub_1004DBF9C();
  result = (*(v3 + 8))(v5, v2);
  if (v8)
  {
    v10 = objc_allocWithZone(AVPlayer);
    sub_1004D7FDC(v11);
    v13 = v12;
    v14 = [v10 initWithURL:v12];

    v15 = OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player;
    v16 = *(v1 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player);
    *(v1 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player) = v14;
    v17 = v14;

    if (v17)
    {
      LODWORD(v18) = *(v1 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer_volume);
      [v17 setVolume:v18];
    }

    v19 = *(v1 + v15);
    if (v19)
    {
      v20 = v19;
      v21 = sub_1004DD3FC();
      [v20 addObserver:v1 forKeyPath:v21 options:3 context:*(v1 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerObservationContexts)];

      v22 = *(v1 + v15);
      if (v22)
      {
        v23 = v22;
        v24 = sub_1004DD3FC();
        [v23 addObserver:v1 forKeyPath:v24 options:3 context:*(v1 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerObservationContexts + 8)];
      }
    }

    sub_100004CB8(&qword_1006320B0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100511AB0;
    v26 = sub_1004DE47C(3, 4);
    v28 = v27;
    v30 = v29;
    v31 = HIDWORD(v27);
    v32 = objc_allocWithZone(NSValue);
    *&aBlock = v26;
    *(&aBlock + 1) = __PAIR64__(v31, v28);
    *&v41 = v30;
    *(v25 + 32) = [v32 initWithCMTime:&aBlock];
    v33 = *(v1 + v15);
    if (v33)
    {
      sub_100006F10(0, &qword_1006321A0);
      v34 = v33;
      isa = sub_1004DD85C().super.isa;

      v42 = sub_1000083CC;
      v43 = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v41 = sub_100012680;
      *(&v41 + 1) = &unk_1005CF448;
      v36 = _Block_copy(&aBlock);
      v37 = [v34 addBoundaryTimeObserverForTimes:isa queue:v7 usingBlock:v36];
      _Block_release(v36);

      sub_1004DE8DC();
      swift_unknownObjectRelease();
    }

    else
    {

      aBlock = 0u;
      v41 = 0u;
    }

    v38 = OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerBoundaryTimeObservationToken;
    swift_beginAccess();
    sub_100008CB4(&aBlock, v1 + v38);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000083CC()
{
  v0 = sub_1004DD3FC();
  AnalyticsSendEvent();
}

void sub_100008424()
{
  v1 = sub_1004DBF6C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerDispatchQueue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = sub_1004DBF9C();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v7 = OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player;
    v8 = *(v0 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player);
    if (v8)
    {
      v9 = v8;
      v10 = sub_1004DD3FC();
      [v9 removeObserver:v0 forKeyPath:v10 context:*(v0 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerObservationContexts)];

      v11 = *(v0 + v7);
      if (v11)
      {
        v12 = v11;
        v13 = sub_1004DD3FC();
        [v12 removeObserver:v0 forKeyPath:v13 context:*(v0 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerObservationContexts + 8)];
      }
    }

    v14 = OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerBoundaryTimeObservationToken;
    swift_beginAccess();
    sub_100008AC0(v0 + v14, &v22);
    if (*(&v23 + 1))
    {
      sub_100006F5C(&v22, &v24);
      v15 = *(v0 + v7);
      if (v15)
      {
        sub_100008C70(&v24, v26);
        v16 = v15;
        [v16 removeTimeObserver:sub_1004DF06C()];

        swift_unknownObjectRelease();
      }

      v22 = 0u;
      v23 = 0u;
      swift_beginAccess();
      sub_100008CB4(&v22, v0 + v14);
      swift_endAccess();
      sub_100008D24(&v24);
      v17 = *(v0 + v7);
      if (!v17)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100008B30(&v22);
      v17 = *(v0 + v7);
      if (!v17)
      {
        goto LABEL_10;
      }
    }

    v18 = v17;
    *&v24 = sub_1004DE47C(1, 2);
    *(&v24 + 1) = v19;
    v25 = v20;
    [v18 setRate:&v24 withVolumeRampDuration:0.0];

    v17 = *(v0 + v7);
LABEL_10:
    *(v0 + v7) = 0;

    sub_100008B98();
    return;
  }

  __break(1u);
}

id sub_100008718()
{
  v1 = sub_1004DE13C();
  v16 = *(v1 - 8);
  v17 = v1;
  __chkstk_darwin(v1);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004DE0FC();
  __chkstk_darwin(v4);
  v5 = sub_1004DBEFC();
  __chkstk_darwin(v5 - 8);
  *&v0[OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer_volume] = 0;
  *&v0[OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player] = 0;
  v15 = OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerDispatchQueue;
  v14[3] = sub_100006F10(0, &qword_1006321B8);
  v6 = type metadata accessor for AudioPreviewPlayer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(ObjCClassFromMetadata);
  v9 = sub_1004DD43C();
  v14[1] = v10;
  v14[2] = v9;

  sub_1004DBEEC();
  v19 = &_swiftEmptyArrayStorage;
  sub_100008FB4(&qword_1006321C0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004CB8(&unk_100632480);
  sub_100008F60(&qword_1006321C8, &unk_100632480);
  sub_1004DE92C();
  (*(v16 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  *&v0[v15] = sub_1004DE17C();
  v11 = &v0[OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerObservationContexts];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v0[OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerBoundaryTimeObservationToken];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v18.receiver = v0;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, "init");
}

id sub_100008A0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioPreviewPlayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100632198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008B30(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100632198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100008B98()
{
  v0 = [objc_opt_self() sharedInstance];
  v3 = 0;
  if ([v0 setActive:0 withOptions:1 error:&v3])
  {
    v1 = v3;
  }

  else
  {
    v2 = v3;
    sub_1004D7F4C();

    swift_willThrow();
  }
}

void *sub_100008C70(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100632198);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008D24(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100008D70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008D88()
{

  return swift_deallocObject();
}

uint64_t sub_100008DE4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100008E2C()
{
  v1 = sub_1004D809C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100008EF0()
{
  sub_1004D809C();
  sub_100008424();
  return sub_100007FD8();
}

uint64_t sub_100008F60(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100008FB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100008FFC()
{

  return swift_deallocObject();
}

uint64_t sub_10000904C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_1000090CC()
{
  type metadata accessor for MusicMessagesSharingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100671808 = result;
  return result;
}

void sub_100009124()
{
  if (qword_100631E70 != -1)
  {
    swift_once();
  }

  v0 = qword_100671808;
  v5._countAndFlagsBits = 0x80000001004E7510;
  v6._countAndFlagsBits = 0x545F524544414548;
  v6._object = 0xEB00000000545845;
  v8._object = 0x80000001004E74F0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0xE000000000000000;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000015;
  v2 = sub_1004D7E5C(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1006321D0 = v2;
  *algn_1006321D8 = v4;
}

char *sub_10000920C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  v29[1] = a1;
  v5 = sub_1004DE13C();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v32 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004DE0FC();
  __chkstk_darwin(v7);
  v8 = sub_1004DBEFC();
  __chkstk_darwin(v8 - 8);
  *&v3[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__contextMenuInteraction] = 0;
  *&v3[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack] = 0;
  v9 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewedItemIndexToIgnoreForNextSelect;
  v10 = sub_1004D85FC();
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  *&v3[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView] = 0;
  *&v3[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionFlowLayout] = 0;
  v30 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__mediaLibraryQueue;
  v29[2] = sub_100006F10(0, &qword_1006321B8);
  v31 = type metadata accessor for MusicMessagesSharingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = NSStringFromClass(ObjCClassFromMetadata);
  sub_1004DD43C();

  sub_1004DBEEC();
  v38 = &_swiftEmptyArrayStorage;
  sub_100010984(&qword_1006321C0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004CB8(&unk_100632480);
  sub_100008F60(&qword_1006321C8, &unk_100632480);
  sub_1004DE92C();
  (*(v33 + 104))(v32, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  *&v3[v30] = sub_1004DE17C();
  *&v3[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserverToken] = 0;
  v13 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserver;
  if (qword_100631F38 != -1)
  {
    swift_once();
  }

  *&v4[v13] = qword_100671920;
  *&v4[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks] = &_swiftEmptyArrayStorage;
  v14 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracksByStoreIdentifier;
  *&v4[v14] = sub_10002763C(&_swiftEmptyArrayStorage);
  v4[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload] = 0;
  if (v35)
  {

    v15 = sub_1004DD3FC();
  }

  else
  {

    v15 = 0;
  }

  v39.receiver = v4;
  v39.super_class = v31;
  v16 = v36;
  v17 = objc_msgSendSuper2(&v39, "initWithNibName:bundle:", v15, v36);

  v18 = objc_opt_self();
  v19 = v17;
  [v18 setFilteringDisabled:1];
  v20 = *&v19[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserver];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = objc_allocWithZone(NSUUID);

  v23 = [v22 init];
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1000109CC;
  *(v24 + 24) = v21;
  swift_beginAccess();
  v25 = v23;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v20 + 40);
  *(v20 + 40) = 0x8000000000000000;
  sub_10000E398(sub_100010A0C, v24, v25, isUniquelyReferenced_nonNull_native);

  *(v20 + 40) = v37;
  swift_endAccess();

  v27 = *&v19[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserverToken];
  *&v19[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserverToken] = v25;

  return v19;
}

void sub_10000977C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10000BB34();
  }
}

id sub_100009858()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView];
  if (v2)
  {
    v3 = v2;
    [v3 setDataSource:0];
    [v3 setDelegate:0];
  }

  v4 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserverToken];
  if (v4)
  {
    v5 = v4;

    sub_10002804C(v5);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for MusicMessagesSharingViewController();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t type metadata accessor for MusicMessagesSharingViewController()
{
  result = qword_100632388;
  if (!qword_100632388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100009A8C()
{
  v1 = v0;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for MusicMessagesSharingViewController();
  objc_msgSendSuper2(&v34, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [v1 view];
  if (!v12)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  if (qword_100631EB0 != -1)
  {
    swift_once();
  }

  [v13 setBackgroundColor:qword_1006718A0];

  v14 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  v15 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionFlowLayout;
  v16 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionFlowLayout];
  *&v1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionFlowLayout] = v14;
  v17 = v14;

  if (!v17)
  {
    goto LABEL_19;
  }

  [v17 setSectionHeadersPinToVisibleBounds:0];

  v18 = *&v1[v15];
  if (!v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = [objc_allocWithZone(type metadata accessor for SharingCollectionView()) initWithFrame:v18 collectionViewLayout:{v5, v7, v9, v11}];
  v20 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView;
  v21 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView];
  *&v1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView] = v19;
  v22 = v19;

  if (!v22)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v22 setAutoresizingMask:18];

  v23 = *&v1[v20];
  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v23 setAlwaysBounceVertical:1];
  v24 = *&v1[v20];
  if (!v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  type metadata accessor for SharingCollectionViewHeader();
  sub_1004DD43C();
  v25 = v24;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  v26 = *&v1[v20];
  if (!v26)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  type metadata accessor for LaunchMusicCellView();
  v27 = v26;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  v28 = *&v1[v20];
  if (!v28)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  type metadata accessor for TrackCellView();
  v29 = v28;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  v30 = *&v1[v20];
  if (!v30)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v30 setDelegate:v1];
  v31 = *&v1[v20];
  if (!v31)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v31 setDataSource:v1];
  v32 = [v1 view];
  if (!v32)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (*&v1[v20])
  {
    v33 = v32;
    [v32 addSubview:?];

    sub_10000B6E8();
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_100009F2C()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for MusicMessagesSharingViewController();
  result = objc_msgSendSuper2(&v6, "viewDidLayoutSubviews");
  v3 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack;
  if (*&v0[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack])
  {
    v4 = [v0 presentedViewController];
    if (v4)
    {
      v5 = v4;
      [v4 dismissViewControllerAnimated:0 completion:0];
    }

    *&v1[v3] = 0;

    if (qword_100631E68 != -1)
    {
      swift_once();
    }

    result = sub_100007320();
    if (v1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload] == 1)
    {
      v1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload] = 0;
      return sub_10000BB34();
    }
  }

  return result;
}

uint64_t sub_10000A14C(char a1, SEL *a2)
{
  v4 = v2;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for MusicMessagesSharingViewController();
  objc_msgSendSuper2(&v7, *a2, a1 & 1);
  *&v4[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack] = 0;

  if (qword_100631E68 != -1)
  {
    swift_once();
  }

  result = sub_100007320();
  if (v4[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload] == 1)
  {
    v4[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload] = 0;
    return sub_10000BB34();
  }

  return result;
}

void sub_10000A26C(uint64_t a1, char *a2)
{
  v2 = *&a2[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionFlowLayout];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v2 invalidateLayout];
  v4 = [a2 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

uint64_t sub_10000A2F8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

unint64_t sub_10000A548()
{
  v1 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_43:
    type metadata accessor for LaunchMusicCellView();
    static UICollectionReusableView.reuseIdentifier.getter();
    v3 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

    return v3;
  }

  if (sub_1004DED5C() < 1)
  {
    goto LABEL_43;
  }

LABEL_3:
  type metadata accessor for TrackCellView();
  static UICollectionReusableView.reuseIdentifier.getter();
  v3 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

  result = sub_1004D85AC();
  v5 = *(v0 + v1);
  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v5 + 8 * result + 32);

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_48;
  }

  v42 = result;

  v6 = sub_10000E01C(v42, v5);

LABEL_7:
  if (*(v6 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title + 8))
  {
    v7 = *(v6 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title);
    v8 = *(v6 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title + 8);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__titleLabel;
  v10 = *&v3[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__titleLabel];

  v11 = [v10 text];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1004DD43C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  if (v13 == v7 && v15 == v8)
  {
  }

  else
  {
    v17 = sub_1004DF08C();

    if (v17)
    {
    }

    else
    {
      v18 = *&v3[v9];
      v19 = sub_1004DD3FC();

      [v18 setText:v19];

      [v3 setNeedsLayout];
    }
  }

  v20 = *(v6 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isExplicit);
  v21 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel;
  if (v20 == [*&v3[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel] isHidden])
  {
    [*&v3[v21] setHidden:v20 ^ 1u];
    [v3 setNeedsLayout];
  }

  if (*(v6 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist + 8))
  {
    v22 = *(v6 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist);
    v23 = *(v6 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist + 8);
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artistLabel;
  v25 = *&v3[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artistLabel];

  v26 = [v25 text];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1004DD43C();
    v30 = v29;

    if (v28 != v22)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v30 = 0xE000000000000000;
    if (v22)
    {
      goto LABEL_32;
    }
  }

  if (v30 == v23)
  {

    goto LABEL_35;
  }

LABEL_32:
  v31 = sub_1004DF08C();

  if (v31)
  {
  }

  else
  {
    v32 = *&v3[v24];
    v33 = sub_1004DD3FC();

    [v32 setText:v33];

    [v3 setNeedsLayout];
  }

LABEL_35:
  v34 = *(v6 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isNowPlaying);
  [*&v3[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingLabel] setHidden:(v34 & 1) == 0];
  [*&v3[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorDimmingView] setHidden:(v34 & 1) == 0];
  v35 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView;
  [*&v3[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView] setHidden:(v34 & 1) == 0];
  result = [v3 setNeedsLayout];
  v36 = *(v6 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isPlaying);
  v37 = *&v3[v35];
  v38 = *(v37 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped);
  *(v37 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped) = v36 ^ 1;
  if (v36 == v38)
  {
    result = sub_100005B14();
  }

  if (*&v3[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView_artworkComponent])
  {
    v39 = *(v6 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser);

    if (v39)
    {
      v40 = sub_10000DE64(v39);
      v41 = v39(v40);
      sub_10000DE74(v39);
    }

    else
    {
      v41 = 0;
    }

    sub_1000126C4(v41);

    return v3;
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_10000AF78(char *a1, char a2)
{
  v3 = *&a1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks];
  if (v3 >> 62)
  {
    v26 = a1;
    v27 = sub_1004DED5C();
    a1 = v26;
    if (v27 < 1)
    {
      return 1;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return 1;
  }

  v4 = a1;
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  [result bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v28.origin.x = v8;
  v28.origin.y = v10;
  v28.size.width = v12;
  v28.size.height = v14;
  if (CGRectGetWidth(v28) < 736.0)
  {
    result = [v4 view];
    if (result)
    {
      v15 = result;
      [result bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v29.origin.x = v17;
      v29.origin.y = v19;
      v29.size.width = v21;
      v29.size.height = v23;
      if (CGRectGetWidth(v29) > 320.0)
      {
        v24 = (a2 & 1) == 0;
        v25 = 1;
        goto LABEL_9;
      }

      return 1;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  v24 = (a2 & 1) == 0;
  v25 = 2;
LABEL_9:
  if (v24)
  {
    return v25 + 1;
  }

  else
  {
    return v25;
  }
}

uint64_t sub_10000B318(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack);
    v5 = result;

    result = 0;
    if (v4)
    {
      v6 = type metadata accessor for TrackPreviewViewController();
      v7 = objc_allocWithZone(v6);
      *&v7[OBJC_IVAR____TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController__cellView] = 0;
      *&v7[OBJC_IVAR____TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController__sharableTrack] = 0;
      v12.receiver = v7;
      v12.super_class = v6;

      v8 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", 0, 0);
      *&v8[OBJC_IVAR____TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController__sharableTrack] = v4;

      [a2 frame];
      v10 = v9 * 1.6;
      [a2 frame];
      [v8 setPreferredContentSize:{v10, v11}];

      return v8;
    }
  }

  return result;
}

void sub_10000B604()
{
  sub_10000BE58();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000B6E8()
{
  v1 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__contextMenuInteraction;
  if (*(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__contextMenuInteraction))
  {
    return;
  }

  v2 = [objc_allocWithZone(UIContextMenuInteraction) initWithDelegate:v0];
  v3 = *(v0 + v1);
  *(v0 + v1) = v2;
  v6 = v2;

  v4 = *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView);
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!v6)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v5 = v4;
  [v5 addInteraction:v6];
}

uint64_t sub_10000B7B8@<X0>(char *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = sub_100004CB8(&qword_100632448);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  v13 = sub_1004D85FC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView;
  v18 = *(v3 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView);
  if (!v18)
  {
    (*(v14 + 56))(v12, 1, 1, v13);
LABEL_7:
    sub_10001074C(v12, &qword_100632448);
    goto LABEL_14;
  }

  v19 = [v18 indexPathForItemAtPoint:{a2, a3}];
  if (v19)
  {
    v20 = v19;
    sub_1004D858C();

    (*(v14 + 56))(v10, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v10, 1, 1, v13);
  }

  sub_1000106D4(v10, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_7;
  }

  v21 = *(v14 + 32);
  v21(v16, v12, v13);
  v22 = *(v3 + v17);
  if (v22)
  {
    v23 = v22;
    isa = sub_1004D856C().super.isa;
    v25 = [v23 cellForItemAtIndexPath:isa];

    if (v25)
    {
      type metadata accessor for TrackCellView();
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        v27 = v26;
        v28 = sub_100004CB8(&qword_100632450);
        v29 = *(v28 + 48);
        v21(a1, v16, v13);
        *&a1[v29] = v27;
        return (*(*(v28 - 8) + 56))(a1, 0, 1, v28);
      }
    }
  }

  (*(v14 + 8))(v16, v13);
LABEL_14:
  v31 = sub_100004CB8(&qword_100632450);
  return (*(*(v31 - 8) + 56))(a1, 1, 1, v31);
}

uint64_t sub_10000BB34()
{
  v1 = sub_1004DBEBC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004DBEFC();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack])
  {
    v0[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload] = 1;
  }

  else
  {
    v10 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracksByStoreIdentifier];
    v11 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserver];
    v17 = v2;
    v12 = *(v11 + 16);
    v16[1] = *&v0[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__mediaLibraryQueue];
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v10;
    v13[4] = v0;
    aBlock[4] = sub_10000DECC;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012680;
    aBlock[3] = &unk_1005CF5D8;
    v14 = _Block_copy(aBlock);
    v16[0] = v12;

    v15 = v0;
    sub_1004DBEDC();
    v18 = &_swiftEmptyArrayStorage;
    sub_100010984(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_1006323E0);
    sub_100008F60(&qword_1006321B0, &unk_1006323E0);
    sub_1004DE92C();
    sub_1004DE15C();
    _Block_release(v14);

    (*(v17 + 8))(v4, v1);
    (*(v6 + 8))(v9, v5);
  }

  return result;
}

void sub_10000BE58()
{
  if (!qword_100632398)
  {
    sub_1004D85FC();
    v0 = sub_1004DE7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_100632398);
    }
  }
}

id sub_10000BEB0(void *a1, uint64_t a2, void *a3)
{
  v4 = swift_allocObject();
  v5 = sub_10002763C(&_swiftEmptyArrayStorage);
  v152 = v4;
  *(v4 + 16) = v5;
  v157 = (v4 + 16);
  v154 = &_swiftEmptyArrayStorage;
  v162 = &_swiftEmptyArrayStorage;
  if ((sub_10001E438(a1) & 1) == 0)
  {
LABEL_22:
    result = [objc_opt_self() playbackHistoryPlaylist];
    if (result)
    {
      v151 = result;
      v38 = [result items];
      sub_100006F10(0, &qword_1006323F0);
      v39 = sub_1004DD87C();

      v156 = v39;
      if (v39 >> 62)
      {
        goto LABEL_83;
      }

      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (v40)
      {
        while (__OFSUB__(v40--, 1))
        {
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          v40 = sub_1004DED5C();
          if (!v40)
          {
            goto LABEL_84;
          }
        }

        if ((v156 & 0xC000000000000001) != 0)
        {
          v54 = sub_10000E1C8(v40, v156, &qword_1006323F0);
          goto LABEL_35;
        }

        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_81;
        }

        if (v40 >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_82;
        }

        v54 = *(v156 + 32 + 8 * v40);
LABEL_35:
        v55 = v54;
        sub_100004CB8(&qword_1006323F8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100511B10;
        sub_1004DD43C();
        sub_1004DEA4C();
        sub_1004DD43C();
        sub_1004DEA4C();
        sub_1004DD43C();
        sub_1004DEA4C();
        v160 = sub_1004DD43C();
        v161 = v57;
        sub_1004DEA4C();
        sub_100010218(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        isa = sub_1004DDC2C().super.isa;

        v59 = [v55 valuesForProperties:isa];

        if (v59)
        {
          v60 = sub_1004DD21C();
        }

        else
        {
          v60 = sub_100027854(&_swiftEmptyArrayStorage);
        }

        v61 = sub_1004DD43C();
        v63 = sub_10000D068(v61, v62, v60);
        v65 = v64;

        v66 = sub_1004DD43C();
        v68 = sub_10000D068(v66, v67, v60);
        v70 = v69;

        v71 = sub_1004DD43C();
        v158 = sub_10000D068(v71, v72, v60);
        v159 = v73;

        if (v70)
        {
          v74 = v63;
        }

        else
        {
          v74 = v68;
        }

        if (v70 & 1) != 0 && (v65)
        {

          sub_1004DDF9C();
          sub_100004CB8(&qword_100632400);
          v75 = swift_allocObject();
          *(v75 + 16) = xmmword_100511B20;
          v76 = [v55 title];
          if (v76)
          {
            v77 = v76;
            v78 = sub_1004DD43C();
            v80 = v79;
          }

          else
          {
            v78 = 0;
            v80 = 0;
          }

          v160 = v78;
          v161 = v80;
          sub_100004CB8(&qword_100632408);
          v90 = sub_1004DD4DC();
          v92 = v91;
          *(v75 + 56) = &type metadata for String;
          v93 = sub_100010378();
          *(v75 + 64) = v93;
          *(v75 + 32) = v90;
          *(v75 + 40) = v92;
          v94 = [v55 artist];
          if (v94)
          {
            v95 = v94;
            v96 = sub_1004DD43C();
            v98 = v97;
          }

          else
          {
            v96 = 0;
            v98 = 0;
          }

          v160 = v96;
          v161 = v98;
          v99 = sub_1004DD4DC();
          *(v75 + 96) = &type metadata for String;
          *(v75 + 104) = v93;
          *(v75 + 72) = v99;
          *(v75 + 80) = v100;
          v101 = [v55 albumTitle];
          if (v101)
          {
            v102 = v101;
            v103 = sub_1004DD43C();
            v105 = v104;
          }

          else
          {
            v103 = 0;
            v105 = 0;
          }

          v160 = v103;
          v161 = v105;
          v106 = sub_1004DD4DC();
          *(v75 + 136) = &type metadata for String;
          *(v75 + 144) = v93;
          *(v75 + 112) = v106;
          *(v75 + 120) = v107;
          v108 = [v55 albumArtist];
          if (v108)
          {
            v41 = v108;
            sub_1004DD43C();
            v43 = v42;
          }

          else
          {
            v43 = 0;
          }

          v161 = v43;
          v44 = sub_1004DD4DC();
          *(v75 + 176) = &type metadata for String;
          *(v75 + 184) = v93;
          *(v75 + 152) = v44;
          *(v75 + 160) = v45;
          sub_100004CB8(&qword_100632418);
          v46 = sub_1004DD4DC();
          *(v75 + 216) = &type metadata for String;
          *(v75 + 224) = v93;
          *(v75 + 192) = v46;
          *(v75 + 200) = v47;
          v48 = sub_1004DD4DC();
          *(v75 + 256) = &type metadata for String;
          *(v75 + 264) = v93;
          *(v75 + 232) = v48;
          *(v75 + 240) = v49;
          v160 = v158;
          LOBYTE(v161) = v159 & 1;
          v50 = sub_1004DD4DC();
          *(v75 + 296) = &type metadata for String;
          *(v75 + 304) = v93;
          *(v75 + 272) = v50;
          *(v75 + 280) = v51;
          sub_100006F10(0, &unk_100632420);
          v52 = sub_1004DE79C();
          sub_1004D953C();
        }

        else if (*(*v157 + 16) && (sub_100028EF8(v74), (v81 & 1) != 0))
        {
        }

        else
        {
          if (*(a2 + 16) && (v82 = sub_100028EF8(v74), (v83 & 1) != 0))
          {
            v84 = *(*(a2 + 56) + 8 * v82);
          }

          else
          {
            type metadata accessor for SharableTrack();
            swift_allocObject();
            v84 = sub_100025274(v74);
          }

          v85 = [v55 title];
          if (v85)
          {
            v86 = v85;
            v87 = sub_1004DD43C();
            v89 = v88;
          }

          else
          {
            v87 = 0;
            v89 = 0;
          }

          v109 = (v84 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title);
          *v109 = v87;
          v109[1] = v89;

          v110 = [v55 artist];
          if (v110)
          {
            v111 = v110;
            v112 = sub_1004DD43C();
            v114 = v113;
          }

          else
          {
            v112 = 0;
            v114 = 0;
          }

          v115 = (v84 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist);
          *v115 = v112;
          v115[1] = v114;

          v116 = [v55 albumTitle];
          if (v116)
          {
            v117 = v116;
            v118 = sub_1004DD43C();
            v120 = v119;
          }

          else
          {
            v118 = 0;
            v120 = 0;
          }

          v121 = (v84 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_album);
          *v121 = v118;
          v121[1] = v120;

          v122 = [v55 albumArtist];
          if (v122)
          {
            v123 = v122;
            v124 = sub_1004DD43C();
            v126 = v125;
          }

          else
          {
            v124 = 0;
            v126 = 0;
          }

          v127 = (v84 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_albumArtist);
          *v127 = v124;
          v127[1] = v126;

          v128 = v84 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_albumStoreIdentifier;
          *v128 = v158;
          *(v128 + 8) = v159 & 1;
          v129 = sub_1004DD43C();
          v131 = sub_10000D15C(v129, v130, v60);

          *(v84 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isExplicit) = v131 & 1;
          sub_1000253E0();
          *(v84 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isNowPlaying) = 0;
          *(v84 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isPlaying) = 0;
          v132 = swift_allocObject();
          *(v132 + 16) = v55;
          v133 = (v84 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser);
          v134 = *(v84 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser);
          *v133 = sub_100010468;
          v133[1] = v132;
          v135 = v55;
          sub_10000DE74(v134);
          v136 = swift_allocObject();
          *(v136 + 16) = v135;
          v137 = (v84 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForSharing);
          v138 = *(v84 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForSharing);
          *v137 = sub_1000104C8;
          v137[1] = v136;
          v139 = v135;
          sub_10000DE74(v138);

          v140 = *v157;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v160 = v140;
          *v157 = 0x8000000000000000;
          sub_10000E51C(v84, v74, isUniquelyReferenced_nonNull_native);
          *v157 = v160;

          sub_1004DD84C();
          if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1004DD8BC();
          }

          sub_1004DD90C();
          v154 = v162;
          if (v162 >> 62)
          {
            v142 = sub_1004DED5C();
          }

          else
          {
            v142 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v142 >= 30)
          {
            break;
          }
        }
      }

LABEL_84:

      sub_100006F10(0, &qword_1006321B8);
      v143 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v144 = swift_allocObject();
      v144[2] = v143;
      v144[3] = v154;
      v144[4] = v152;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_10001044C, v144);

      if (qword_100631F18 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v145 = *v157;
      v146 = *(*v157 + 16);
      if (v146)
      {
        v147 = sub_100025110(*(*v157 + 16), 0);
        v148 = sub_10000E668(&v160, v147 + 4, v146, v145);

        sub_100010458();
        if (v148 == v146)
        {
LABEL_90:
          v149 = swift_allocObject();
          *(v149 + 16) = a3;
          v150 = a3;
          sub_1000212A4(v147, sub_100010460, v149);
        }

        __break(1u);
      }

      v147 = &_swiftEmptyArrayStorage;
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  result = kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier;
  if (!kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v7 = sub_10001E914(kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier, a1);
  if ((v8 & 1) == 0)
  {
    v9 = v7;
    if (v7)
    {
LABEL_8:
      if (*(a2 + 16) && (v11 = sub_100028EF8(v9), (v12 & 1) != 0))
      {
        v13 = *(*(a2 + 56) + 8 * v11);
      }

      else
      {
        type metadata accessor for SharableTrack();
        swift_allocObject();
        v13 = sub_100025274(v9);
      }

      v14 = sub_10001E4FC(a1);
      v15 = (v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title);
      *v15 = v14;
      v15[1] = v16;

      v17 = sub_10001E508(a1);
      v18 = (v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist);
      *v18 = v17;
      v18[1] = v19;

      v20 = sub_10001E514(a1);
      v21 = (v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_album);
      *v21 = v20;
      v21[1] = v22;

      result = kMRMediaRemoteNowPlayingInfoIsExplicitTrack;
      if (!kMRMediaRemoteNowPlayingInfoIsExplicitTrack)
      {
        goto LABEL_94;
      }

      *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isExplicit) = sub_10001E780(kMRMediaRemoteNowPlayingInfoIsExplicitTrack, a1) & 1;
      result = kMRMediaRemoteNowPlayingInfoAlbumiTunesStoreAdamIdentifier;
      if (!kMRMediaRemoteNowPlayingInfoAlbumiTunesStoreAdamIdentifier)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v23 = sub_10001E914(kMRMediaRemoteNowPlayingInfoAlbumiTunesStoreAdamIdentifier, a1);
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v23;
      }

      v26 = v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_albumStoreIdentifier;
      *v26 = v25;
      *(v26 + 8) = v24 & 1 | (v23 == 0);
      *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isNowPlaying) = 1;
      v27 = sub_10001E6AC(a1);
      v28 = (v27 & &_mh_execute_header) == 0;
      if (*&v27 <= 0.0)
      {
        v28 = 0;
      }

      *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isPlaying) = v28;
      sub_1000253E0();
      v29 = swift_allocObject();
      *(v29 + 16) = a1;
      v30 = (v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser);
      v31 = *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser);
      *v30 = sub_100010520;
      v30[1] = v29;
      v32 = a1;
      sub_10000DE74(v31);
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      v34 = (v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForSharing);
      v35 = *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForSharing);
      *v34 = sub_100010528;
      v34[1] = v33;
      v36 = v32;
      sub_10000DE74(v35);

      v37 = swift_isUniquelyReferenced_nonNull_native();
      v160 = v5;
      *v157 = 0x8000000000000000;
      sub_10000E51C(v13, v9, v37);
      *v157 = v160;

      sub_1004DD84C();
      if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004DD8BC();
      }

      sub_1004DD90C();

      v154 = v162;
      goto LABEL_22;
    }
  }

  result = kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier;
  if (!kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  result = sub_10001E914(kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier, a1);
  if ((v10 & 1) == 0)
  {
    v9 = result;
    if (!result)
    {
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    goto LABEL_8;
  }

LABEL_97:
  __break(1u);
  return result;
}

id sub_10000CE60(void *a1)
{
  v1 = *&qword_100633198;
  v2 = sub_10001E5E0(a1);
  if (v3 >> 60 != 15)
  {
    v4 = v2;
    v5 = v3;
    v6 = objc_allocWithZone(UIImage);
    sub_100010530(v4, v5);
    isa = sub_1004D80FC().super.isa;
    v8 = [v6 initWithData:isa];

    sub_100010584(v4, v5);
    if (v8)
    {
      v9 = [objc_opt_self() staticArtworkCatalogWithImage:v8];
      [v9 setFittingSize:{v1, v1}];

      sub_100010584(v4, v5);
      return v9;
    }

    sub_100010584(v4, v5);
  }

  return 0;
}

id sub_10000CF68(void *a1)
{
  v1 = sub_10001E5E0(a1);
  if (v2 >> 60 != 15)
  {
    v3 = v1;
    v4 = v2;
    v5 = objc_allocWithZone(UIImage);
    sub_100010530(v3, v4);
    isa = sub_1004D80FC().super.isa;
    v7 = [v5 initWithData:isa];

    sub_100010584(v3, v4);
    if (v7)
    {
      v8 = [objc_opt_self() staticArtworkCatalogWithImage:v7];
      [v8 setFittingSize:{300.0, 300.0}];

      sub_100010584(v3, v4);
      return v8;
    }

    sub_100010584(v3, v4);
  }

  return 0;
}

id sub_10000D068(void *a1, uint64_t a2, uint64_t a3)
{

  sub_1004DEA4C();
  if (*(a3 + 16) && (v4 = sub_100028F3C(v9), (v5 & 1) != 0))
  {
    sub_10000904C(*(a3 + 56) + 32 * v4, v10);
    sub_1000105EC(v9);
    sub_100006F10(0, &qword_100632430);
    if (swift_dynamicCast())
    {
      v6 = [a1 longLongValue];

      if (v6)
      {
        return v6;
      }
    }
  }

  else
  {
    sub_1000105EC(v9);
  }

  return 0;
}

id sub_10000D15C(void *a1, uint64_t a2, uint64_t a3)
{

  sub_1004DEA4C();
  if (*(a3 + 16) && (v4 = sub_100028F3C(v9), (v5 & 1) != 0))
  {
    sub_10000904C(*(a3 + 56) + 32 * v4, v10);
    sub_1000105EC(v9);
    sub_100006F10(0, &qword_100632430);
    if (swift_dynamicCast())
    {
      v6 = [a1 BOOLValue];

      return v6;
    }
  }

  else
  {
    sub_1000105EC(v9);
  }

  return 0;
}

void sub_10000D244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    *(Strong + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks) = a2;

    swift_beginAccess();
    *&v6[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracksByStoreIdentifier] = *(a3 + 16);

    if ([v6 isViewLoaded])
    {
      v7 = *&v6[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView];
      if (!v7)
      {
        __break(1u);
        return;
      }

      v8 = v7;
      [v8 reloadData];
    }
  }
}

uint64_t sub_10000D338(uint64_t a1, void *a2)
{
  sub_100006F10(0, &qword_1006321B8);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = a2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100010658, v4);
}

uint64_t sub_10000D3DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100632438);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracksByStoreIdentifier;
  v11 = (v7 + 63) >> 6;

  v13 = 0;
  while (v9)
  {
LABEL_9:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v13 << 6);
    v17 = *(a1 + 56) + 16 * v16;
    if ((*(v17 + 8) & 1) == 0)
    {
      v18 = *(a2 + v10);
      if (*(v18 + 16))
      {
        v19 = *v17;
        result = sub_100028EF8(*(*(a1 + 48) + 8 * v16));
        if (v20)
        {
          v28 = a2;
          v21 = *(*(v18 + 56) + 8 * result);

          sub_100010660(v19, 0);
          v22 = [v19 productPageURL];
          if (v22)
          {
            v23 = v22;
            sub_1004D802C();

            v24 = 0;
          }

          else
          {
            v24 = 1;
          }

          v25 = sub_1004D809C();
          (*(*(v25 - 8) + 56))(v6, v24, 1, v25);
          v26 = OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_trackStoreURL;
          swift_beginAccess();
          sub_1000107AC(v6, v21 + v26, &qword_100632438);
          swift_endAccess();
          *(v21 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_audioPreviews) = sub_100023D94();

          v27 = sub_100024714();
          sub_10001066C(v19, 0);
          *(v21 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_offerTypes) = v27;

          a2 = v28;
        }
      }
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v9 = *(a1 + 64 + 8 * v14);
    ++v13;
    if (v9)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10000D6E0()
{
  v1 = v0;
  v52.receiver = v0;
  v52.super_class = type metadata accessor for TrackPreviewViewController();
  objc_msgSendSuper2(&v52, "viewDidLoad");
  v2 = [objc_allocWithZone(type metadata accessor for TrackCellView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController__cellView;
  v4 = *&v0[OBJC_IVAR____TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController__cellView];
  *&v0[OBJC_IVAR____TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController__cellView] = v2;

  v5 = *&v0[OBJC_IVAR____TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController__sharableTrack];
  if (!v5)
  {
LABEL_44:
    v49 = [v1 view];
    if (v49)
    {
      if (*&v1[v3])
      {
        v50 = v49;
        [v49 addSubview:?];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_49;
  }

  v6 = *&v0[v3];
  if (!v6)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (*(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title + 8))
  {
    v7 = *(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title);
    v8 = *(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title + 8);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__titleLabel;
  v10 = *&v6[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__titleLabel];
  v51 = v6;

  v11 = [v10 text];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1004DD43C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  if (v13 == v7 && v15 == v8)
  {

    v18 = *&v1[v3];
    if (v18)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

  v17 = sub_1004DF08C();

  if ((v17 & 1) == 0)
  {
    v32 = *&v6[v9];
    v33 = sub_1004DD3FC();

    [v32 setText:v33];

    v9 = v51;
    [v51 setNeedsLayout];

    v18 = *&v1[v3];
    if (v18)
    {
      goto LABEL_17;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v18 = *&v1[v3];
  if (!v18)
  {
    goto LABEL_32;
  }

LABEL_17:
  v19 = *(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isExplicit);
  v20 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel;
  v21 = *&v18[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel];
  v22 = v18;
  if (v19 == [v21 isHidden])
  {
    [*&v18[v20] setHidden:v19 ^ 1u];
    [v22 setNeedsLayout];
  }

  v6 = *&v1[v3];
  if (!v6)
  {
    goto LABEL_50;
  }

  if (*(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist + 8))
  {
    v23 = *(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist);
    v24 = *(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist + 8);
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  v9 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artistLabel;
  v25 = *&v6[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artistLabel];
  v51 = v6;

  v26 = [v25 text];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1004DD43C();
    v30 = v29;

    if (v28 != v23)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v30 = 0xE000000000000000;
    if (v23)
    {
      goto LABEL_29;
    }
  }

  if (v30 == v24)
  {

    goto LABEL_34;
  }

LABEL_29:
  v31 = sub_1004DF08C();

  if (v31)
  {

    goto LABEL_34;
  }

LABEL_33:
  v34 = *&v6[v9];
  v35 = sub_1004DD3FC();

  [v34 setText:v35];

  [v51 setNeedsLayout];
LABEL_34:
  v36 = *&v1[v3];
  if (!v36)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v37 = *(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isNowPlaying);
  v38 = *&v36[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingLabel];
  v39 = v36;
  [v38 setHidden:(v37 & 1) == 0];
  [*&v39[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorDimmingView] setHidden:(v37 & 1) == 0];
  [*&v39[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView] setHidden:(v37 & 1) == 0];
  [v39 setNeedsLayout];

  v40 = *&v1[v3];
  if (!v40)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v41 = *(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isPlaying);
  v42 = *&v40[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView];
  v43 = *(v42 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped);
  *(v42 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped) = v41 ^ 1;
  if (v41 == v43)
  {
    v44 = v40;
    sub_100005B14();
  }

  v45 = *&v1[v3];
  if (!v45)
  {
    goto LABEL_53;
  }

  if (*(v45 + OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView_artworkComponent))
  {
    v46 = *(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser);

    if (v46)
    {
      v47 = sub_10000DE64(v46);
      v48 = v46(v47);
      sub_10000DE74(v46);
    }

    else
    {
      v48 = 0;
    }

    sub_1000126C4(v48);

    goto LABEL_44;
  }

LABEL_54:
  __break(1u);
}

id sub_10000DDBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrackPreviewViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000DE64(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000DE74(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000DE84()
{

  return swift_deallocObject();
}

uint64_t sub_10000DED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DEF0()
{

  return swift_deallocObject();
}

id sub_10000DF28(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_10000DF78(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100006F10(0, &unk_100632470);
  v2 = sub_1004DD87C();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_10000E01C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_1004DED7C();
    type metadata accessor for SharableTrack();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_1004DEAAC(85);
    v3._countAndFlagsBits = 0xD000000000000046;
    v3._object = 0x80000001004E7460;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for SharableTrack();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_1004DEAAC(82);
  v3._object = 0x80000001004E7410;
  v3._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  sub_1004DD5FC(v3);
  v5._countAndFlagsBits = 0x656C626172616853;
  v5._object = 0xED00006B63617254;
  sub_1004DD5FC(v5);
  v6._countAndFlagsBits = 0x756F662074756220;
  v6._object = 0xEB0000000020646ELL;
  sub_1004DD5FC(v6);
  swift_getObjectType();
  v7._countAndFlagsBits = sub_1004DF34C();
  sub_1004DD5FC(v7);

  result = sub_1004DECDC();
  __break(1u);
  return result;
}

uint64_t sub_10000E1C8(unint64_t a1, unint64_t a2, unint64_t *a3)
{
  sub_100006F10(0, a3);
  if (a2 >> 62)
  {
    v5 = sub_1004DED7C();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v5;
    }

LABEL_10:
    sub_1004DEAAC(85);
    v6._countAndFlagsBits = 0xD000000000000046;
    v6._object = 0x80000001004E7460;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v5;
  }

  sub_1004DEAAC(82);
  v6._object = 0x80000001004E7410;
  v6._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  sub_1004DD5FC(v6);
  v8._countAndFlagsBits = sub_1004DF34C();
  sub_1004DD5FC(v8);

  v9._countAndFlagsBits = 0x756F662074756220;
  v9._object = 0xEB0000000020646ELL;
  sub_1004DD5FC(v9);
  swift_getObjectType();
  v10._countAndFlagsBits = sub_1004DF34C();
  sub_1004DD5FC(v10);

  result = sub_1004DECDC();
  __break(1u);
  return result;
}

id sub_10000E398(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_100028EA8(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_1000225E4(v15, a4 & 1);
      v10 = sub_100028EA8(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_100006F10(0, &qword_100632490);
        result = sub_1004DF16C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_10002971C();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a3;
  v23 = (v20[7] + 16 * v10);
  *v23 = a1;
  v23[1] = a2;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  return a3;
}

unint64_t sub_10000E51C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100028EF8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100022AE8(v14, a3 & 1);
      result = sub_100028EF8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1004DF16C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100029A04();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void *sub_10000E668(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_10000E768()
{
  v1 = v0;
  v2 = sub_1004DE13C();
  v15 = *(v2 - 8);
  v16 = v2;
  __chkstk_darwin(v2);
  v14 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004DE0FC();
  __chkstk_darwin(v4);
  v5 = sub_1004DBEFC();
  __chkstk_darwin(v5 - 8);
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__contextMenuInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack) = 0;
  v6 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewedItemIndexToIgnoreForNextSelect;
  v7 = sub_1004D85FC();
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionFlowLayout) = 0;
  v13 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__mediaLibraryQueue;
  v12 = sub_100006F10(0, &qword_1006321B8);
  type metadata accessor for MusicMessagesSharingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = NSStringFromClass(ObjCClassFromMetadata);
  sub_1004DD43C();

  sub_1004DBEEC();
  v17 = &_swiftEmptyArrayStorage;
  sub_100010984(&qword_1006321C0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004CB8(&unk_100632480);
  sub_100008F60(&qword_1006321C8, &unk_100632480);
  sub_1004DE92C();
  (*(v15 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *(v0 + v13) = sub_1004DE17C();
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserverToken) = 0;
  v10 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserver;
  if (qword_100631F38 != -1)
  {
    swift_once();
  }

  *(v1 + v10) = qword_100671920;
  *(v1 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks) = &_swiftEmptyArrayStorage;
  v11 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracksByStoreIdentifier;
  *(v1 + v11) = sub_10002763C(&_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload) = 0;
  sub_1004DECCC();
  __break(1u);
}

char *sub_10000EB38()
{
  type metadata accessor for SharingCollectionViewHeader();
  sub_1004DD43C();
  static UICollectionReusableView.reuseIdentifier.getter();
  v0 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

  if (qword_100631E78 != -1)
  {
    swift_once();
  }

  v2 = qword_1006321D0;
  v1 = *algn_1006321D8;
  v3 = OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader__label;
  v4 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader__label];

  v5 = [v4 text];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1004DD43C();
    v9 = v8;

    if (v7 != v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0xE000000000000000;
    if (v2)
    {
      goto LABEL_9;
    }
  }

  if (v9 == v1)
  {

    return v0;
  }

LABEL_9:
  v10 = sub_1004DF08C();

  if (v10)
  {
  }

  else
  {
    v11 = *&v0[v3];
    v12 = sub_1004DD3FC();

    [v11 setText:v12];

    [*&v0[v3] sizeToFit];
    [v0 setNeedsLayout];
  }

  return v0;
}

BOOL sub_10000ED1C()
{
  v1 = sub_100004CB8(&qword_100632448);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v14[-v5];
  v7 = sub_1004D85FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewedItemIndexToIgnoreForNextSelect;
  swift_beginAccess();
  sub_1000108DC(v0 + v11, v6, &qword_100632448);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10001074C(v6, &qword_100632448);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = sub_1004D857C();
    (*(v8 + 8))(v10, v7);
    if (v12)
    {
      (*(v8 + 56))(v4, 1, 1, v7);
      swift_beginAccess();
      sub_1000107AC(v4, v0 + v11, &qword_100632448);
      swift_endAccess();
      return 0;
    }
  }

  return *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack) == 0;
}

void sub_10000EF8C()
{
  v1 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks);
  if (v2 >> 62)
  {
    if (sub_1004DED5C() >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    v3 = sub_1004D85AC();
    v4 = *(v0 + v1);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = v3;

      v5 = sub_10000E01C(v11, v4);

      goto LABEL_7;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v4 + 8 * v3 + 32);

LABEL_7:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        *(v8 + 24) = v5;
        swift_unknownObjectRetain();

        sub_1000259B8(sub_100010A90, v8);

        swift_unknownObjectRelease();
      }

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v12 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  if (!v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = [objc_opt_self() defaultWorkspace];
  if (!v9)
  {
LABEL_24:

    __break(1u);
    return;
  }

  v10 = v9;
  [v9 openApplicationWithBundleID:v12];
  swift_unknownObjectRelease();
}

double sub_10000F1A0(void *a1)
{
  v4 = *&qword_1006330B8;
  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = sub_1004DE2CC();
  v8 = sub_10000AF78(v1, v7 & 1);
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v8;
  [a1 bounds];
  Width = CGRectGetWidth(v24);
  v10 = [v1 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  v12 = sub_1004DE2BC();
  v13 = sub_1004DE2DC();

  if (v13)
  {
    v14 = [v1 traitCollection];
    v15 = [v14 preferredContentSizeCategory];

    LOBYTE(v14) = sub_1004DE2CC();
    if ((v14 & 1) == 0)
    {
LABEL_7:
      v19 = 0x4052400000000000;
LABEL_12:
      v20 = *&v19;
      v21 = [objc_opt_self() defaultMetrics];
      [v21 scaledValueForValue:v20];

      goto LABEL_13;
    }

    v16 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks];
    if (!(v16 >> 62))
    {
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

LABEL_10:
    if (sub_1004DED5C() > 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v17 = [v1 traitCollection];
    v18 = [v17 horizontalSizeClass];

    if (v18 == 1)
    {
      goto LABEL_7;
    }

LABEL_11:
    v19 = 0x404B800000000000;
    goto LABEL_12;
  }

LABEL_13:

  return CGSize.nonNegative()((Width - (v4 + v4) + v9 * -10.0) / v7);
}

double sub_10000F40C(void *a1)
{
  type metadata accessor for SharingCollectionViewHeader();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_100631E78 != -1)
  {
    swift_once();
  }

  v4 = qword_1006321D0;
  v3 = *algn_1006321D8;
  v5 = OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader__label;
  v6 = *&v2[OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader__label];

  v7 = [v6 text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1004DD43C();
    v11 = v10;

    if (v9 != v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0xE000000000000000;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  if (v11 == v3)
  {

    goto LABEL_12;
  }

LABEL_9:
  v12 = sub_1004DF08C();

  if (v12)
  {
  }

  else
  {
    v13 = *&v2[v5];
    v14 = sub_1004DD3FC();

    [v13 setText:v14];

    [*&v2[v5] sizeToFit];
    [v2 setNeedsLayout];
  }

LABEL_12:
  [a1 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [a1 contentInset];
  v28.origin.x = sub_10001087C(v16, v18, v20, v22, v23, v24);
  [v2 sizeThatFits:{CGRectGetWidth(v28), 0.0}];
  v26 = v25;

  return v26;
}

id sub_10000F634(void *a1)
{
  v3 = sub_100004CB8(&qword_100632460);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_100004CB8(&qword_100632468);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks);
  if (v9 >> 62)
  {
    if (sub_1004DED5C() < 1)
    {
      return 0;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return 0;
  }

  [a1 locationInView:*(v1 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView)];
  sub_10000B7B8(v5, v10, v11);
  v12 = sub_100004CB8(&qword_100632450);
  if ((*(*(v12 - 8) + 48))(v5, 1, v12) == 1)
  {
    sub_10001074C(v5, &qword_100632460);
    return 0;
  }

  v14 = *&v5[*(v12 + 48)];
  v15 = *(v6 + 48);
  v16 = sub_1004D85FC();
  v17 = *(v16 - 8);
  (*(v17 + 32))(v8, v5, v16);
  *&v8[v15] = v14;
  v18 = *&v8[*(v6 + 48)];
  (*(v17 + 8))(v8, v16);
  v19 = [objc_allocWithZone(UITargetedPreview) initWithView:v18];

  return v19;
}

id sub_10000F894(double a1, double a2)
{
  v5 = sub_100004CB8(&qword_100632458);
  v71 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v64 - v6;
  v8 = sub_1004D809C();
  v72 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v70 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v64 - v11;
  v13 = sub_100004CB8(&qword_100632448);
  __chkstk_darwin(v13 - 8);
  v73 = &v64 - v14;
  v15 = sub_100004CB8(&qword_100632460);
  __chkstk_darwin(v15 - 8);
  v17 = &v64 - v16;
  v18 = sub_100004CB8(&qword_100632468);
  __chkstk_darwin(v18);
  v20 = &v64 - v19;
  v21 = sub_1004D85FC();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks;
  v26 = *(v2 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks);
  if (v26 >> 62)
  {
    v66 = v2;
    v61 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks;
    v62 = sub_1004DED5C();
    v25 = v61;
    v2 = v66;
    if (v62 < 1)
    {
      return 0;
    }
  }

  else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return 0;
  }

  v67 = v7;
  v68 = v25;
  v69 = v12;
  v27 = v2;
  sub_10000B7B8(v17, a1, a2);
  v28 = sub_100004CB8(&qword_100632450);
  if ((*(*(v28 - 8) + 48))(v17, 1, v28) == 1)
  {
    sub_10001074C(v17, &qword_100632460);
    return 0;
  }

  v65 = v8;
  v29 = v24;
  v30 = v27;
  v31 = *&v17[*(v28 + 48)];
  v32 = *(v18 + 48);
  v66 = v30;
  v34 = v22 + 32;
  v33 = *(v22 + 32);
  v33(v20, v17, v21);
  *&v20[v32] = v31;
  v35 = v29;
  v36 = v21;
  v37 = *&v20[*(v18 + 48)];
  v33(v29, v20, v21);
  v38 = v66;
  v39 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack;
  if (*(v66 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack))
  {

    (*(v22 + 8))(v29, v21);
    return 0;
  }

  v41 = sub_1004D85AC();
  v42 = *(v38 + v68);
  if ((v42 & 0xC000000000000001) != 0)
  {
    v63 = v41;

    v43 = sub_10000E01C(v63, v42);

    v34 = v22;
    goto LABEL_12;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v41 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v34 = v22;
  v43 = *(v42 + 8 * v41 + 32);

LABEL_12:
  *(v38 + v39) = v43;

  v44 = v73;
  (*(v34 + 16))(v73, v35, v21);
  (*(v34 + 56))(v44, 0, 1, v21);
  v45 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewedItemIndexToIgnoreForNextSelect;
  swift_beginAccess();
  sub_1000107AC(v44, v38 + v45, &qword_100632448);
  swift_endAccess();
  v46 = *(v38 + v39);
  if (!v46)
  {
    goto LABEL_19;
  }

  v47 = *(v46 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_audioPreviews);
  if (!*(v47 + 16))
  {
    goto LABEL_19;
  }

  v48 = v67;
  sub_1000108DC(v47 + ((*(v71 + 80) + 32) & ~*(v71 + 80)), v67, &qword_100632458);
  v49 = *(v72 + 32);
  v50 = v70;
  v51 = v48;
  v52 = v65;
  v49(v70, v51, v65);
  v49(v69, v50, v52);
  if (([*&v37[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingLabel] isHidden] & 1) != 0 || *(*&v37[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView] + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped) == 1)
  {
    if (qword_100631E68 == -1)
    {
LABEL_17:
      v53 = qword_100671800;
      sub_100006F9C(v69);
      *(v53 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer_volume) = 1065353216;
      LODWORD(v54) = 1.0;
      [*(v53 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player) setVolume:v54];
      goto LABEL_18;
    }

LABEL_25:
    swift_once();
    goto LABEL_17;
  }

LABEL_18:
  (*(v72 + 8))(v69, v65);
LABEL_19:
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = v37;
  v57 = objc_opt_self();
  v78 = sub_100010874;
  v79 = v56;
  aBlock = _NSConcreteStackBlock;
  v75 = 1107296256;
  v76 = sub_10000DF28;
  v77 = &unk_1005CF7B8;
  v58 = _Block_copy(&aBlock);

  v78 = static MPMediaLibraryFilteringOptions.none.getter;
  v79 = 0;
  aBlock = _NSConcreteStackBlock;
  v75 = 1107296256;
  v76 = sub_10000DF78;
  v77 = &unk_1005CF7E0;
  v59 = _Block_copy(&aBlock);

  v60 = [v57 configurationWithIdentifier:0 previewProvider:v58 actionProvider:v59];

  _Block_release(v59);
  _Block_release(v58);
  (*(v34 + 8))(v35, v36);

  return v60;
}

uint64_t sub_1000100D8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack;
  v3 = *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack);
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = v3;
      swift_retain_n();
      swift_unknownObjectRetain();
      sub_1000259B8(sub_100010744, v6);

      swift_unknownObjectRelease();
    }
  }

  *(v1 + v2) = 0;

  if (qword_100631E68 != -1)
  {
    swift_once();
  }

  result = sub_100007320();
  if (*(v1 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload) == 1)
  {
    *(v1 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload) = 0;

    return sub_10000BB34();
  }

  return result;
}

Swift::Int sub_100010218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100632440);
    v3 = sub_1004DEA8C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_100010678(v6 + 40 * v4, v19);
      result = sub_1004DEA2C(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_100010678(*(v3 + 48) + 40 * i, v18);
        v11 = sub_1004DEA3C();
        result = sub_1000105EC(v18);
        if (v11)
        {
          sub_1000105EC(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_100010378()
{
  result = qword_100632410;
  if (!qword_100632410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100632410);
  }

  return result;
}

uint64_t sub_1000103CC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100010404()
{

  return swift_deallocObject();
}

id sub_100010468()
{
  v1 = *&qword_100633198;
  v2 = [*(v0 + 16) artworkCatalog];
  [v2 setFittingSize:{v1, v1}];
  return v2;
}

id sub_1000104C8()
{
  v1 = [*(v0 + 16) artworkCatalog];
  [v1 setFittingSize:{300.0, 300.0}];
  return v1;
}

uint64_t sub_100010530(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100010584(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010598(a1, a2);
  }

  return a1;
}

uint64_t sub_100010598(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_100010660(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_10001066C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000106D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100632448);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001074C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100004CB8(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000107AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100004CB8(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001082C(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_10001089C()
{

  return swift_deallocObject();
}

uint64_t sub_1000108DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100004CB8(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100010944()
{

  return swift_deallocObject();
}

uint64_t sub_100010984(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000109D4()
{

  return swift_deallocObject();
}

id sub_100010A94()
{
  _s24LoadingStatusCoordinatorCMa();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(NSHashTable) initWithOptions:5 capacity:0];
  result = [objc_allocWithZone(NSMapTable) initWithKeyOptions:5 valueOptions:0 capacity:0];
  *(v0 + 24) = result;
  qword_100671810 = v0;
  return result;
}

void sub_100010B18(uint64_t a1)
{
  v3 = &selRef_scaledValueForValue_;
  [*(v1 + 16) removeObject:a1];
  v4 = sub_100027990(_swiftEmptyArrayStorage);
  v87 = v4;
  v79 = v1;
  v5 = [*(v1 + 24) keyEnumerator];
  v74 = v5;
  v83 = a1;
  if ([v5 nextObject])
  {
    while (1)
    {
      sub_1004DE8DC();
      swift_unknownObjectRelease();
      sub_10000904C(v86, &v84);
      sub_100011884();
      if (swift_dynamicCast())
      {
        v6 = v85;
        v7 = [*(v79 + 24) objectForKey:v85];
        if (v7)
        {
          v8 = v7;
          v9 = v87;
          if ((v87 & 0xC000000000000001) != 0)
          {
            if (v87 < 0)
            {
              v10 = v87;
            }

            else
            {
              v10 = v87 & 0xFFFFFFFFFFFFFF8;
            }

            v11 = sub_1004DEC9C();
            if (__OFADD__(v11, 1))
            {
              goto LABEL_73;
            }

            v9 = sub_100011588(v10, v11 + 1);
            v87 = v9;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v84 = v9;
          v13 = sub_100028FF8(v6);
          v15 = *(v9 + 16);
          v16 = (v14 & 1) == 0;
          v17 = __OFADD__(v15, v16);
          v18 = v15 + v16;
          if (v17)
          {
            goto LABEL_72;
          }

          v19 = v14;
          if (*(v9 + 24) < v18)
          {
            sub_100022D58(v18, isUniquelyReferenced_nonNull_native);
            v13 = sub_100028FF8(v6);
            if ((v19 & 1) != (v20 & 1))
            {
              goto LABEL_75;
            }

            goto LABEL_19;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_19:
            v21 = v84;
            if ((v19 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v22 = v13;
            sub_100029B60();
            v13 = v22;
            v5 = v74;
            v21 = v84;
            if ((v19 & 1) == 0)
            {
LABEL_22:
              v21[(v13 >> 6) + 8] |= 1 << v13;
              *(v21[6] + 8 * v13) = v6;
              *(v21[7] + 8 * v13) = v8;
              sub_100008D24(v86);
              v23 = v21[2];
              v17 = __OFADD__(v23, 1);
              v24 = v23 + 1;
              if (v17)
              {
                goto LABEL_74;
              }

              v21[2] = v24;
              v87 = v21;
              goto LABEL_5;
            }
          }

          *(v21[7] + 8 * v13) = v8;

          sub_100008D24(v86);
          v87 = v21;
          goto LABEL_5;
        }

        sub_10001143C(v6);
      }

      sub_100008D24(v86);
LABEL_5:
      if (![v5 nextObject])
      {
        v4 = v87;
        v3 = &selRef_scaledValueForValue_;
        break;
      }
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    if (sub_1004DEC9C() <= 0)
    {
      goto LABEL_66;
    }

    v25 = sub_1004DEC8C();
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v4 = v25 | 0x8000000000000000;
  }

  else
  {
    if (!*(v4 + 16))
    {
      goto LABEL_66;
    }

    v29 = -1 << *(v4 + 32);
    v26 = v4 + 64;
    v27 = ~v29;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v28 = v31 & *(v4 + 64);
  }

  v32 = 0;
  v81 = _swiftEmptyArrayStorage;
  v33 = (v27 + 64) >> 6;
  v75 = v33;
  v72 = v26;
  v73 = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_37;
  }

LABEL_43:
  v43 = sub_1004DECBC();
  if (!v43 || (v45 = v44, v85 = v43, sub_100011884(), swift_dynamicCast(), v42 = v84, v85 = v45, _s24LoadingStatusCoordinatorC12ObserverListCMa(), swift_dynamicCast(), v82 = v84, v34 = v32, v38 = v28, !v42))
  {
LABEL_62:
    sub_100010458();
    v68 = v81[2];
    if (v68)
    {
      v69 = v81 + 5;
      do
      {
        v70 = *(v69 - 1);

        v70(v71);

        v69 += 2;
        --v68;
      }

      while (v68);

      v5 = v74;
      goto LABEL_67;
    }

LABEL_66:

LABEL_67:

    return;
  }

  while (1)
  {
    v77 = v42;
    v78 = v38;
    swift_beginAccess();
    v46 = v82[2];
    v47 = *(v46 + 16);
    v80 = (v46 + 16);
    if (v47)
    {
      v76 = v34;

      v48 = -v47;
      v49 = v47 - 1;
      v50 = 24 * v47 + 32;
      v51 = v80;
      v52 = v81;
      v53 = &selRef_scaledValueForValue_;
      do
      {
        if (!v48)
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        if (v49 >= *v51)
        {
          goto LABEL_69;
        }

        v56 = *(v51 + v50 - 40);
        v57 = *(v51 + v50 - 32);
        v58 = *(v51 + v50 - 24);

        [v58 v3[21]];
        if (![v58 v53[24]])
        {
          swift_beginAccess();
          v59 = v82[2];
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v82[2] = v59;
          if ((v60 & 1) == 0)
          {
            v59 = sub_100011810(v59);
            v82[2] = v59;
          }

          v61 = *(v59 + 2);
          if (v49 >= v61)
          {
            goto LABEL_70;
          }

          v62 = v61 - 1;
          v63 = v52;
          v64 = *&v59[v50 - 8];
          memmove(&v59[v50 - 24], &v59[v50], 24 * (v48 + v61));
          *(v59 + 2) = v62;
          v82[2] = v59;
          swift_endAccess();

          v52 = v63;

          v65 = swift_allocObject();
          *(v65 + 16) = v56;
          *(v65 + 24) = v57;
          v66 = v63[2];

          v67 = swift_isUniquelyReferenced_nonNull_native();
          if (!v67 || v66 >= v52[3] >> 1)
          {
            v52 = sub_100024EBC(v67, v66 + 1, 1, v52);
          }

          v3 = &selRef_scaledValueForValue_;
          sub_100004CB8(&qword_100632768);
          swift_arrayDestroy();
          v54 = v52[2];
          memmove(v52 + 6, v52 + 4, 16 * v54);
          v52[2] = v54 + 1;
          v52[4] = sub_10001185C;
          v52[5] = v65;
          v53 = &selRef_scaledValueForValue_;
          v51 = v80;
        }

        --v49;
        v50 -= 24;
      }

      while (!__CFADD__(v48++, 1));
      v81 = v52;

      v4 = v73;
      if (!*(v82[2] + 16))
      {
        v5 = v74;
        v26 = v72;
        v34 = v76;
        goto LABEL_36;
      }

      v32 = v76;
      v28 = v78;
      v5 = v74;
      v33 = v75;
      v26 = v72;
      if ((v73 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
LABEL_36:
      v35 = *(v79 + 24);
      [v35 removeObjectForKey:v77];

      v32 = v34;
      v28 = v78;
      v33 = v75;
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }
    }

LABEL_37:
    v36 = v32;
    v37 = v28;
    v34 = v32;
    if (!v28)
    {
      break;
    }

LABEL_41:
    v38 = (v37 - 1) & v37;
    v39 = (v34 << 9) | (8 * __clz(__rbit64(v37)));
    v40 = v5;
    v41 = *(*(v4 + 56) + v39);
    v42 = *(*(v4 + 48) + v39);
    v82 = v41;
    v5 = v40;

    if (!v42)
    {
      goto LABEL_62;
    }
  }

  while (1)
  {
    v34 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v34 >= v33)
    {
      goto LABEL_62;
    }

    v37 = *(v26 + 8 * v34);
    ++v36;
    if (v37)
    {
      goto LABEL_41;
    }
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  sub_1004DF16C();
  __break(1u);
}

uint64_t WeakValuesDictionary.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100011308()
{

  return swift_deallocClassInstance();
}

__n128 sub_100011390(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000113A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000113EC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10001143C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_100028FF8(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_100029590(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_100029B60();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1004DECAC();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1004DEC9C();
  v8 = sub_100011588(v4, v7);

  v9 = sub_100028FF8(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_100029590(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_100011588(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100004CB8(&qword_100632778);
    v2 = sub_1004DEDAC();
    v19 = v2;
    sub_1004DEC8C();
    v3 = sub_1004DECBC();
    if (v3)
    {
      v4 = v3;
      sub_100011884();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        _s24LoadingStatusCoordinatorC12ObserverListCMa();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100022D58(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1004DE5EC(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1004DECBC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_1000117AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1004DED5C();
  }

  return sub_1004DEB3C();
}

uint64_t sub_100011824()
{

  return swift_deallocObject();
}

unint64_t sub_100011884()
{
  result = qword_100632770;
  if (!qword_100632770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100632770);
  }

  return result;
}

uint64_t sub_1000118D0()
{
  result = UIRoundToViewScale();
  qword_100632780 = v1;
  return result;
}

id sub_100011920(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_100011964()
{
  if (qword_100631E90 != -1)
  {
    swift_once();
  }

  v1 = qword_100632788;
  qword_100671818 = qword_100632788;

  return v1;
}

char *sub_1000119C8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_platterView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_customBackgroundView;
  v11 = [objc_allocWithZone(UIView) init];
  if (qword_100631EA0 != -1)
  {
    swift_once();
  }

  [v11 setBackgroundColor:qword_100671818];
  v12 = [v11 layer];
  if (qword_100631E88 != -1)
  {
    swift_once();
  }

  [v12 setCornerRadius:*&qword_100632780];

  v13 = [v11 layer];
  [v13 setCornerCurve:kCACornerCurveContinuous];

  [v11 setClipsToBounds:1];
  *&v4[v10] = v11;
  v14 = OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_highlightDimmingView;
  v15 = [objc_allocWithZone(UIView) init];
  if (qword_100631E98 != -1)
  {
    swift_once();
  }

  [v15 setBackgroundColor:qword_100632790];
  v16 = [v15 layer];
  [v16 setCornerRadius:*&qword_100632780];

  v17 = [v15 layer];
  [v17 setCornerCurve:kCACornerCurveContinuous];

  [v15 setClipsToBounds:1];
  [v15 setAlpha:0.0];
  *&v4[v14] = v15;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for PlatterCellView();
  v18 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 contentView];
  v20 = OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_platterView;
  [v19 addSubview:*&v18[OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_platterView]];

  [*&v18[v20] addSubview:*&v18[OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_customBackgroundView]];
  [*&v18[v20] addSubview:*&v18[OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_highlightDimmingView]];

  return v18;
}

id sub_100011D3C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for PlatterCellView();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_platterView];
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame:{v4, v6, v8, v10}];
  v11 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_highlightDimmingView];
  [v1 bringSubviewToFront:v11];
  [v1 bounds];
  [v11 setFrame:?];
  v12 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_customBackgroundView];
  [v1 bounds];
  return [v12 setFrame:?];
}

void sub_100011F38(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PlatterCellView();
  objc_msgSendSuper2(&v9, "setHighlighted:", a1 & 1);
  if ([v1 isHighlighted])
  {
    v3 = 0.15;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v8[4] = sub_100012380;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100012680;
  v8[3] = &unk_1005CF9F0;
  v6 = _Block_copy(v8);
  v7 = v1;

  [v4 animateWithDuration:v6 animations:v3];
  _Block_release(v6);
}

uint64_t sub_100012070()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PlatterCellView();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100012344;
  *(v3 + 24) = v2;
  v8[4] = sub_10001185C;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000121E8;
  v8[3] = &unk_1005CF9A0;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v1 performWithoutAnimation:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_100012258()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatterCellView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001230C()
{

  return swift_deallocObject();
}

uint64_t sub_100012368(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100012380()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_highlightDimmingView];
  v3 = [v1 isHighlighted];
  v4 = 0.15;
  if (!v3)
  {
    v4 = 0.0;
  }

  return [v2 setAlpha:v4];
}

void sub_1000123EC()
{
  v1 = OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_platterView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_customBackgroundView;
  v3 = [objc_allocWithZone(UIView) init];
  if (qword_100631EA0 != -1)
  {
    swift_once();
  }

  [v3 setBackgroundColor:qword_100671818];
  v4 = [v3 layer];
  if (qword_100631E88 != -1)
  {
    swift_once();
  }

  [v4 setCornerRadius:*&qword_100632780];

  v5 = [v3 layer];
  [v5 setCornerCurve:kCACornerCurveContinuous];

  [v3 setClipsToBounds:1];
  *(v0 + v2) = v3;
  v6 = OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_highlightDimmingView;
  v7 = [objc_allocWithZone(UIView) init];
  if (qword_100631E98 != -1)
  {
    swift_once();
  }

  [v7 setBackgroundColor:qword_100632790];
  v8 = [v7 layer];
  [v8 setCornerRadius:*&qword_100632780];

  v9 = [v7 layer];
  [v9 setCornerCurve:kCACornerCurveContinuous];

  [v7 setClipsToBounds:1];
  [v7 setAlpha:0.0];
  *(v0 + v6) = v7;
  sub_1004DECCC();
  __break(1u);
}

uint64_t sub_100012680(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1000126C4(id a1)
{
  v2 = v1[8];
  v52 = a1;
  if (!v2)
  {
    if (!a1)
    {
      v14 = v1[22];
      if (!v14)
      {
        return;
      }

      v15 = v1[19];
      v16 = v1[20];
      v17 = v1[21];
      v19 = v1[23];
      v18 = v1[24];
      v21 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent);
      v20 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 8);
      v23 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 16);
      v22 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 24);
      v25 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 32);
      v24 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 40);
      v26 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 48);
      v54[0] = v15;
      v54[1] = v16;
      v54[2] = v17;
      v54[3] = v14;
      v54[4] = v19;
      v54[5] = v18;
      if (v26 == 255)
      {
        v49 = v25;
        v51 = v24;
        v29 = v22;
        v47 = v18;
        v30 = v17;
        v31 = v14;
        v32 = v15;
        v33 = v16;
        sub_10001C7F0(v21, v20, v23, v29, v49, v51, 255);
        v34 = v15;
        v35 = v16;
        v36 = v17;
        v37 = v14;
        v38 = v19;
        v39 = v47;
        v40 = 1;
      }

      else
      {
        if (v26)
        {
          v53[0] = v21;
          v53[1] = v20;
          v53[2] = v23;
          v53[3] = v22;
          v53[4] = v25;
          v53[5] = v24;
          v44 = v22;
          v45 = v17;
          v27 = v25;
          v48 = v25;
          v28 = v24;
          v50 = v24;
          sub_10001C784(v21, v20, v23, v22, v25, v24, v26);
          sub_10001C784(v21, v20, v23, v44, v27, v28, v26);
          sub_10001B558(v15, v16, v45, v14);
          v46 = static Artwork.Placeholder.__derived_struct_equals(_:_:)(v53, v54);
          sub_10001B5B0(v15, v16, v45, v14);

          sub_10001C7F0(v21, v20, v23, v44, v48, v50, v26);
          v4 = v52;
          if (v46)
          {
            goto LABEL_13;
          }

LABEL_11:
          v12 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
          if (v12)
          {

            v12(v13);
            sub_10000DE74(v12);
            v4 = v52;
          }

          goto LABEL_13;
        }

        v41 = v22;
        v42 = v25;
        v43 = v24;
        sub_10001C784(v21, v20, v23, v22, v25, v24, v26);
        sub_10001C79C(v21, v20, v23, v41, v42, v43, 0);

        v34 = v21;
        v35 = v20;
        v36 = v23;
        v37 = v41;
        v38 = v42;
        v39 = v43;
        v40 = v26;
      }

      sub_10001C7F0(v34, v35, v36, v37, v38, v39, v40);
LABEL_10:
      v4 = v52;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (!a1)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v3 = [v2 isArtworkVisuallyIdenticalToCatalog:a1];
  v4 = v52;
  if (!v3)
  {
LABEL_7:
    v5 = v1[14];
    v6 = v52;
    v7 = [v5 traitCollection];
    [v7 displayScale];
    v9 = v8;

    [v6 setDestinationScale:v9];
    v10 = v6;
    [v10 setRenderHint:{objc_msgSend(v10, "renderHint") | 1}];

    a1 = v52;
    v2 = v1[8];
LABEL_9:
    v1[8] = a1;
    v11 = v10;

    goto LABEL_10;
  }

  if ((*(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_13:
}

uint64_t sub_100012A7C(double a1, double a2)
{
  type metadata accessor for CGSize(0);
  v8 = *(v2 + 80);
  result = sub_1004D868C();
  if (result)
  {
    result = *(v2 + 64);
    if (result)
    {
      result = [result setFittingSize:{*(v2 + 80), *(v2 + 88), v8, *&a1, *&a2}];
    }

    if (*(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) != 1 || (*(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) != 0 || !*(v2 + 72))
    {
      v6 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
      if (v6)
      {

        v6(v7);
        return sub_10000DE74(v6);
      }
    }
  }

  return result;
}

void sub_100012B60(void **a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v10 = *(v1 + 152);
  v9 = *(v1 + 160);
  v11 = *(v1 + 168);
  v12 = *(v1 + 176);
  v14 = *(v1 + 184);
  v13 = *(v1 + 192);
  if (v6)
  {
    if (v12)
    {
      v22[0] = *(v1 + 152);
      v22[1] = v9;
      v22[2] = v11;
      v22[3] = v12;
      v22[4] = v14;
      v22[5] = v13;
      v21[0] = v4;
      v21[1] = v3;
      v21[2] = v5;
      v21[3] = v6;
      v21[4] = v8;
      v21[5] = v7;
      sub_10001B558(v10, v9, v11, v12);
      sub_1000108DC(a1, v20, &qword_100632FD0);
      v15 = static Artwork.Placeholder.__derived_struct_equals(_:_:)(v21, v22);

      sub_10001074C(a1, &qword_100632FD0);
      if (v15)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if (!v12)
  {
    return;
  }

  v18 = a1[1];
  v19 = a1[2];
  sub_10001B558(*(v1 + 152), v9, v11, v12);
  sub_1000108DC(a1, v22, &qword_100632FD0);
  sub_10001B5B0(v4, v18, v19, v6);
  sub_10001B5B0(v10, v9, v11, v12);
LABEL_7:
  v16 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  if (v16)
  {

    v16(v17);
    sub_10000DE74(v16);
  }
}

uint64_t sub_100012D00(uint64_t a1)
{
  v3 = sub_1004DE53C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v22 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&qword_100632FD8);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_100004CB8(&qword_100632FE0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_1000108DC(a1, v12, &qword_100632FD8);
  sub_1000108DC(v1 + v13, &v12[v14], &qword_100632FD8);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_10001074C(v12, &qword_100632FD8);
    }
  }

  else
  {
    sub_1000108DC(v12, v8, &qword_100632FD8);
    if (v15(&v12[v14], 1, v3) != 1)
    {
      v19 = v22;
      (*(v4 + 32))(v22, &v12[v14], v3);
      sub_10001C73C(&qword_100632FE8, &type metadata accessor for UIView.Corner);
      v20 = sub_1004DD35C();
      v21 = *(v4 + 8);
      v21(v19, v3);
      v21(v8, v3);
      result = sub_10001074C(v12, &qword_100632FD8);
      if (v20)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v8, v3);
  }

  result = sub_10001074C(v12, &qword_100632FE0);
LABEL_7:
  v17 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  if (v17)
  {

    v17(v18);
    return sub_10000DE74(v17);
  }

  return result;
}

void sub_10001307C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_borderTreatment);
  v6 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_borderTreatment);
  v7 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_borderTreatment + 8);
  v8 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_borderTreatment + 16);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v15 = v8;
  if (v8)
  {
    if (a3)
    {
      v9 = a2;
      v10 = a3;
      if (static UIView.Border.__derived_struct_equals(_:_:)(v6, v7 & 1, v15, a1, v9 & 1))
      {

        v11 = v15;
LABEL_12:

        return;
      }
    }
  }

  else
  {
    if (!a3)
    {
      return;
    }

    v12 = a3;
  }

  v13 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  if (!v13)
  {

    v11 = a3;
    goto LABEL_12;
  }

  v13(v14);

  sub_10000DE74(v13);
}

double sub_1000131D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1004DE53C();
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin(v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004CB8(&qword_100632FE0);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = sub_100004CB8(&qword_100632FD8);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v52 - v19;
  __chkstk_darwin(v18);
  v22 = &v52 - v21;
  v23 = sub_1000138A0(a1, a2, a3 & 1, v4);
  v25 = v24;
  v26 = v4[14];
  v27 = [v26 image];
  if (!v27 || (v28 = v27, [v27 size], v30 = v29, v32 = v31, v28, v33 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed, *(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1) && (*(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && v4[9] || (v58 = v30, v59 = 0.0, (sub_1004D868C() & 1) == 0) || (v58 = v32, v59 = 0.0, (sub_1004D868C() & 1) == 0))
  {
LABEL_19:
    sub_1004DE43C();
    goto LABEL_20;
  }

  v52 = v33;
  v53 = v26;
  v34 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_1000108DC(v4 + v34, v22, &qword_100632FD8);
  sub_1004DE52C();
  v35 = v55;
  v36 = v56;
  (*(v55 + 56))(v20, 0, 1, v56);
  v37 = *(v11 + 48);
  sub_1000108DC(v22, v13, &qword_100632FD8);
  v54 = v37;
  sub_1000108DC(v20, &v13[v37], &qword_100632FD8);
  v38 = *(v35 + 48);
  if (v38(v13, 1, v36) != 1)
  {
    sub_1000108DC(v13, v17, &qword_100632FD8);
    v39 = v54;
    if (v38(&v13[v54], 1, v56) != 1)
    {
      v48 = v55;
      v49 = &v13[v39];
      v50 = v56;
      (*(v55 + 32))(v10, v49, v56);
      sub_10001C73C(&qword_100632FE8, &type metadata accessor for UIView.Corner);
      LODWORD(v54) = sub_1004DD35C();
      v51 = *(v48 + 8);
      v51(v10, v50);
      sub_10001074C(v20, &qword_100632FD8);
      sub_10001074C(v22, &qword_100632FD8);
      v51(v17, v50);
      sub_10001074C(v13, &qword_100632FD8);
      v40 = v53;
      if (v54)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    sub_10001074C(v20, &qword_100632FD8);
    sub_10001074C(v22, &qword_100632FD8);
    (*(v55 + 8))(v17, v56);
LABEL_12:
    sub_10001074C(v13, &qword_100632FE0);
    v40 = v53;
LABEL_13:
    if (v4[18] == 1)
    {
      sub_1004DE43C();
      v42 = v41;
      sub_1004DE43C();
      if (vabdd_f64(v42, v43) > 0.1 && (v30 >= v32 || v25 >= v23))
      {
        v44 = [v40 traitCollection];
        [v44 displayScale];

        v59 = v23 / v30;
        v57 = v25 / v32;
        if (sub_1004D868C())
        {
          sub_1004D871C();
          v23 = v45;
          sub_1004D871C();
        }
      }
    }

    goto LABEL_19;
  }

  sub_10001074C(v20, &qword_100632FD8);
  sub_10001074C(v22, &qword_100632FD8);
  if (v38(&v13[v54], 1, v56) != 1)
  {
    goto LABEL_12;
  }

  sub_10001074C(v13, &qword_100632FD8);
LABEL_22:
  if (v25 < v23)
  {
    v23 = v25;
  }

  v46 = 1.0;
LABEL_20:
  *(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_lastProposedAspectRatio) = v46;
  return v23;
}

double sub_1000138A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3 & 1) == 0 && (sub_1004D868C() & 1) != 0 && (sub_1004D868C())
  {
    return *&a1;
  }

  if (*(a4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(a4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0)
  {
    v7 = 96;
    if (!*(a4 + 72))
    {
      v7 = 80;
    }
  }

  else
  {
    v7 = 80;
  }

  return *(a4 + v7);
}

uint64_t sub_100013990(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100004CB8(&qword_100632FD8);
  __chkstk_darwin(v10 - 8);
  v12 = v111 - v11;
  v121 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed;
  if (*(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) != 1 || (*(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) != 0 || (v13 = v4[9]) == 0)
  {
    v13 = v4[8];
  }

  v14 = v13;
  v15 = v4[14];
  v16 = [v15 artworkCatalog];
  v17 = v13 == 0;
  v122 = v13;
  if (v16)
  {
    v18 = v16;
    if (v13)
    {
      sub_100006F10(0, &qword_1006330A8);
      v19 = v13;
      v20 = sub_1004DE5FC();

      if (v20)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  else if (!v13)
  {
LABEL_10:
    v21 = 0;
    goto LABEL_13;
  }

  [v15 clearArtworkCatalogs];
  *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  v5[25] = 0;
  v5[26] = 0;

  v21 = 1;
LABEL_13:
  v22 = [v15 traitCollection];
  [v22 displayScale];
  v24 = v23;

  type metadata accessor for CGRect(0);
  [v15 frame];
  *&aBlock = v25;
  *(&aBlock + 1) = v26;
  *&v124 = v27;
  *(&v124 + 1) = v28;
  v128 = a1;
  v129 = a2;
  v130 = a3;
  v131 = a4;
  if (sub_1004D868C())
  {
    [v15 setFrame:{a1, a2, a3, a4}];
  }

  v29 = v5[15];
  if (v29)
  {
    v30 = v29;
    [v30 frame];
    *&aBlock = v31;
    *(&aBlock + 1) = v32;
    *&v124 = v33;
    *(&v124 + 1) = v34;
    v128 = 0.0;
    v129 = 0.0;
    v130 = a3;
    v131 = a4;
    if (sub_1004D868C())
    {
      [v30 setFrame:{0.0, 0.0, a3, a4}];
    }
  }

  v35 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_borderTreatment);
  v36 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_borderTreatment + 8);
  v37 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_borderTreatment + 16);
  v38 = v37;
  UIView.border.setter(v35, v36, v37);
  v39 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_1000108DC(v5 + v39, v12, &qword_100632FD8);
  sub_1004DE54C();
  v40 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_foregroundOverlayView);
  if (v40)
  {
    [v40 setFrame:{0.0, 0.0, a3, a4}];
  }

  sub_1000162EC();
  v41 = v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent;
  v42 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 48);
  if (v42 != 255 && (v42 & 1) != 0)
  {
    v43 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_placeholderView);
    if (v43)
    {
      v44 = v43;
      [v15 bounds];
      [v44 setFrame:?];

      v42 = v41[48];
    }
  }

  v45 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_needsArtworkReload;
  v46 = v21 | *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_needsArtworkReload);
  if (v42 != 255)
  {
    v119 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_needsArtworkReload;
    LODWORD(v120) = v17;
    v47 = *v41;
    v48 = *(v41 + 1);
    v49 = *(v41 + 2);
    v50 = *(v41 + 3);
    v52 = *(v41 + 4);
    v51 = *(v41 + 5);
    if (v42)
    {
      v128 = *v41;
      v129 = *&v48;
      v130 = *&v49;
      v131 = *&v50;
      v132 = v52;
      v133 = v51;
      if (v46)
      {
        v53 = 1;
        sub_10001C79C(v47, v48, v49, v50, v52, v51, 1);

LABEL_41:
        v54 = v122;
        LOBYTE(v17) = v120;
LABEL_42:
        v45 = v119;
        goto LABEL_43;
      }

      v56 = v5[19];
      v55 = v5[20];
      v57 = v5[21];
      v58 = v5[22];
      v59 = v5[23];
      v60 = v5[24];
      v118 = v57;
      v117 = v59;
      v116 = v55;
      v115 = v56;
      if (v58)
      {
        v127[0] = v56;
        v127[1] = v55;
        v127[2] = v57;
        v127[3] = v58;
        v127[4] = v59;
        v127[5] = v60;
        v111[1] = v60;
        v61 = v57;
        v114 = v58;
        sub_10001C784(v47, v48, v49, v50, v52, v51, v42);
        v62 = v49;
        v63 = v50;
        v113 = v47;
        v64 = v48;
        v65 = v115;
        v66 = v116;
        sub_10001B558(v115, v116, v61, v114);
        v112 = static Artwork.Placeholder.__derived_struct_equals(_:_:)(v127, &v128);

        v67 = v113;
        sub_10001B5B0(v65, v66, v118, v114);
        v53 = v112 ^ 1;
        goto LABEL_41;
      }

      sub_10001C784(v47, v48, v49, v50, v52, v51, v42);
      sub_10001B5B0(v115, v116, v118, 0);
      sub_10001B5B0(v47, v48, v49, v50);
    }

    else
    {
      sub_10001C79C(*v41, *(v41 + 1), *(v41 + 2), *(v41 + 3), *(v41 + 4), *(v41 + 5), 0);

      if ((v46 & 1) == 0)
      {
        v54 = v122;
        LOBYTE(v17) = v120;
        if (!v122)
        {

          LOBYTE(v17) = 1;
          v45 = v119;
          goto LABEL_53;
        }

        v68 = v122;
        v69 = [v68 isArtworkVisuallyIdenticalToCatalog:v47];

        v53 = v69 ^ 1;
        goto LABEL_42;
      }
    }

    v53 = 1;
    goto LABEL_41;
  }

  v54 = v122;
  if (!(v46 & 1 | (v122 != 0)))
  {
    if (v5[22])
    {
      LOBYTE(v17) = 1;
      goto LABEL_53;
    }

    goto LABEL_49;
  }

  v53 = 1;
LABEL_43:
  if (!*(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_decodingCatalog) || !v54)
  {
    if (v53)
    {
      goto LABEL_53;
    }

LABEL_49:
    v71 = 0;
    goto LABEL_50;
  }

  v70 = [v54 isArtworkVisuallyIdenticalToCatalog:?];
  v71 = v70;
  if (v53)
  {
    if (v70)
    {
      v71 = 1;
      goto LABEL_50;
    }

    LOBYTE(v17) = 0;
LABEL_53:
    if (qword_100631E80 != -1)
    {
      swift_once();
    }

    [*(qword_100671810 + 16) addObject:v5];
    if (*(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isReusable) == 1)
    {
      [v15 setImage:0];
      sub_100019F64();
    }

    v73 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_placeholderView);
    if (v73)
    {
      [v73 setHidden:1];
    }

    [v15 setHidden:0];
    *(v5 + v45) = 0;
    v74 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_imageViewDidResetHandler);
    if (v74)
    {

      v74(v75);
      sub_10000DE74(v74);
    }

    v77 = v5[19];
    v76 = v5[20];
    v79 = v5[21];
    v78 = v5[22];
    v80 = v5[23];
    v81 = v5[24];
    if (v17)
    {
      if (v78)
      {
        *&aBlock = v5[19];
        *(&aBlock + 1) = v76;
        *&v124 = v79;
        *(&v124 + 1) = v78;
        *&v125 = v80;
        *(&v125 + 1) = v81;
        v72 = 1;
        v126 = 1;
        sub_10001B558(v77, v76, v79, v78);
        v82 = v79;
        v83 = v78;
        v84 = v77;
        v85 = v76;
        sub_100015958(&aBlock);

        return v72 & 1;
      }

      v125 = 0u;
      v124 = 0u;
      aBlock = 0u;
      v126 = -1;
      sub_100015958(&aBlock);
    }

    else
    {
      if (*(v5 + v121) == 1 && (*(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && v5[9])
      {
        v86 = 13;
        v87 = 12;
      }

      else
      {
        v86 = 11;
        v87 = 10;
      }

      v88 = *&v5[v86];
      v89 = *&v5[v87];
      v90 = v5[19];
      v91 = v5[20];
      v92 = v5[21];
      v93 = v5[22];
      v120 = v5[23];
      sub_10001B558(v90, v91, v92, v93);
      [v54 setFittingSize:{v89, v88}];
      [v54 setDestinationScale:v24];

      v94 = sub_1004DD3FC();

      [v54 setCacheIdentifier:v94 forCacheReference:v5[2]];

      if ((v5[6] & 1) == 0)
      {
        v119 = v79;
        v95 = v54;
        v96 = v5[5];

        v97 = sub_1004DD3FC();

        v98 = v5[2];
        v99 = objc_opt_self();
        v100 = v98;
        v54 = v95;
        v79 = v119;
        [v99 setCacheLimit:v96 forCacheIdentifier:v97 cacheReference:v100];
      }

      if (*(v5 + v121) == 1 && (*(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && v5[9])
      {
        v101 = [objc_opt_self() defaultController];
        v119 = v79;
        v102 = v54;
        v103 = v101;
        v104 = sub_1004DD3FC();
        v105 = [v103 takeAssertionPreventingResourceReclamationWithReason:v104];

        v54 = v102;
        v79 = v119;

        v106 = 3;
      }

      else
      {
        v105 = 0;
        v106 = 1;
      }

      v107 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_resourceReclamationAssertion);
      *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_resourceReclamationAssertion) = v105;

      v108 = swift_allocObject();
      swift_weakInit();
      *&v125 = sub_10001C9EC;
      *(&v125 + 1) = v108;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v124 = sub_100014F88;
      *(&v124 + 1) = &unk_1005CFD78;
      v109 = _Block_copy(&aBlock);

      [v54 setDestination:v15 forRepresentationKinds:v106 configurationBlock:v109];
      sub_10001B5B0(v77, v76, v79, v78);

      _Block_release(v109);
    }

    v72 = 1;
    return v72 & 1;
  }

LABEL_50:

  v72 = (v41[48] != 255) | v71;
  return v72 & 1;
}

void sub_1000145BC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [*(Strong + 112) artworkCatalog];
    if (v5)
    {
      v6 = v5;
      v7 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed;
      if ((*(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) & 1) != 0 && (*(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && (v8 = v4[9]) != 0 || (v8 = v4[8]) != 0)
      {
        v9 = v8;
        v10 = [v9 isArtworkVisuallyIdenticalToCatalog:v6];

        if (v10)
        {
          v11 = [a2 imageRepresentation];
          if (v11 || (v11 = [a2 videoRepresentation]) != 0)
          {

            v12 = 1;
          }

          else
          {
            v12 = 0;
          }

          if (*(v4 + v7) != 1 || (v13 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork, (*(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) != 0) || ((v4[9] != 0) & ~v12) == 0)
          {
            v14 = [v6 visualIdenticalityIdentifier];
            v15 = v14;
            if (v14)
            {
              if ([v14 respondsToSelector:"stringRepresentation"])
              {
                v16 = [v15 stringRepresentation];
                swift_unknownObjectRelease();
                if (v16)
                {
                  v15 = sub_1004DD43C();
                  v18 = v17;

                  goto LABEL_21;
                }
              }

              else
              {
                swift_unknownObjectRelease();
              }

              v15 = 0;
            }

            v18 = 0;
LABEL_21:
            v4[25] = v15;
            v4[26] = v18;

            v19 = [a2 imageRepresentation];
            v20 = [a2 videoRepresentation];
            if (v19)
            {
              v21 = v19;
              v22 = [v21 image];
              if (v22)
              {
                v23 = v22;
                LOBYTE(aBlock) = 0;
                v24 = sub_10001C9F4();
                if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v24) & 1) != 0 && ![v21 isImagePrepared])
                {
                  v42 = *(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_decodingCatalog);
                  *(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_decodingCatalog) = v6;
                  v43 = v6;

                  v44 = swift_allocObject();
                  v44[2] = v43;
                  v44[3] = v4;
                  v44[4] = v23;
                  *&v50 = sub_10001CA90;
                  *(&v50 + 1) = v44;
                  *&aBlock = _NSConcreteStackBlock;
                  *(&aBlock + 1) = 1107296256;
                  *&v49 = sub_100014F1C;
                  *(&v49 + 1) = &unk_1005CFDC8;
                  v45 = _Block_copy(&aBlock);
                  v46 = v43;
                  v47 = v23;

                  [v47 prepareForDisplayWithCompletionHandler:v45];

                  _Block_release(v45);
                  if (!v20)
                  {
                    goto LABEL_44;
                  }
                }

                else
                {
                  *&aBlock = v6;
                  *(&aBlock + 1) = v23;
                  v49 = 0u;
                  v50 = 0u;
                  v51 = 0;
                  v25 = v6;
                  v26 = v23;
                  sub_100015958(&aBlock);

                  if (!v20)
                  {
                    goto LABEL_44;
                  }
                }

LABEL_29:
                v27 = v20;
                v28 = [a2 isBestRepresentationForKind:{objc_msgSend(v27, "kind")}];

                if (v28)
                {
                  v29 = [v27 video];
                  sub_100016688(v29);

LABEL_45:

                  return;
                }

LABEL_44:
                sub_100016688(0);

                goto LABEL_45;
              }
            }

            if (!v20)
            {
              v30 = v4[22];
              if (v30)
              {
                v31 = v4[23];
                v32 = v4[24];
                v34 = v4[20];
                v33 = v4[21];
                *&aBlock = v4[19];
                *(&aBlock + 1) = v34;
                *&v49 = v33;
                *(&v49 + 1) = v30;
                *&v50 = v31;
                *(&v50 + 1) = v32;
                v51 = 1;
                sub_10001B558(aBlock, v34, v33, v30);
                v35 = v33;
                v36 = v30;
                v37 = aBlock;
                v38 = v34;
                sub_100015958(&aBlock);
              }

              else
              {
                v49 = 0u;
                v50 = 0u;
                aBlock = 0u;
                v51 = -1;
                sub_100015958(&aBlock);
              }

              goto LABEL_44;
            }

            goto LABEL_29;
          }

          v39 = *(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
          *(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
          if (v39)
          {
            [v39 invalidate];
          }

          *(v4 + v13) = 1;
          v40 = *(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
          if (v40)
          {

            v40(v41);

            sub_10000DE74(v40);
            return;
          }
        }
      }
    }
  }
}

uint64_t sub_100014B28(void *a1, void *a2, uint64_t a3, void *a4)
{
  sub_100006F10(0, &qword_1006321B8);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  v8[5] = a4;
  v9 = a1;
  v10 = a4;
  v11 = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_10001CAEC, v8);
}

void sub_100014BE8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1004D966C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && (v12 = *(a2 + 72)) != 0 || (v12 = *(a2 + 64)) != 0) && (v13 = v12, sub_100006F10(0, &qword_1006330A8), v14 = a1, v15 = sub_1004DE5FC(), v13, v14, (v15))
  {
    if (a3)
    {
      v30 = v14;
      v31 = a3;
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
      v16 = v14;
      v17 = a3;
      sub_100015958(&v30);
    }

    else
    {
      v21 = Logger.artwork.unsafeMutableAddressor();
      (*(v9 + 16))(v11, v21, v8);
      v22 = a4;
      v23 = sub_1004D964C();
      v24 = sub_1004DDF7C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v22;
        *v26 = v22;
        v27 = v22;
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to prepare image: %@", v25, 0xCu);
        sub_10001074C(v26, &qword_100633038);
      }

      (*(v9 + 8))(v11, v8);
      v30 = v14;
      v31 = v22;
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
      sub_100015958(&v30);
    }

    v28 = *(a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_decodingCatalog);
    *(a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_decodingCatalog) = 0;
  }

  else
  {
    v18 = *(a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_decodingCatalog);
    *(a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_decodingCatalog) = 0;

    v19 = *(a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v19)
    {

      v19(v20);

      sub_10000DE74(v19);
    }
  }
}

void sub_100014F1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100014F88(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v8[3] = swift_getObjectType();
  v8[0] = a2;

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v8, v6);

  return sub_100008D24(v8);
}

uint64_t sub_100015218()
{
  v7 = sub_1004DE13C();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004DE0FC();
  __chkstk_darwin(v3);
  v4 = sub_1004DBEFC();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100006F10(0, &qword_1006321B8);
  sub_1004DBEDC();
  v8 = _swiftEmptyArrayStorage;
  sub_10001C73C(&qword_1006321C0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004CB8(&unk_100632480);
  sub_100008F60(&qword_1006321C8, &unk_100632480);
  sub_1004DE92C();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_1004DE17C();
  qword_1006327D8 = result;
  return result;
}

void sub_100015478(void *a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
  *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = a1;
  if (a1)
  {
    if (v3)
    {
      sub_100006F10(0, &qword_1006330A0);
      v2 = v2;
      v5 = v3;
      v4 = sub_1004DE5FC();

      if (v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v2 = a1;
    }
  }

  else if (!v3)
  {
    return;
  }

  [v3 invalidate];
  v5 = v3;
LABEL_9:
}

id sub_100015558(void *a1)
{
  v2 = v1;
  v4 = sub_1004DBF6C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006321B8);
  *v7 = sub_1004DE14C();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_1004DBF9C();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v10 = *(v2 + 144);
  v11 = *(v2 + 112);
  v12 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed;
  if (*(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && *(v2 + 72))
  {
    v13 = *(v2 + 136);
    v14 = v13;
    v15 = sub_10001BBB0(v13);
    result = [v11 contentMode];
    if (result == v15)
    {
      return result;
    }

    result = [v11 setContentMode:v15];
    goto LABEL_20;
  }

  if (!a1)
  {
    goto LABEL_18;
  }

  [a1 size];
  if (v16 < v17)
  {
    if (*(v2 + v12) == 1 && (*(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0)
    {
      v25 = *(v2 + 72);
      v26 = 96;
      if (!v25)
      {
        v26 = 80;
      }

      v18 = *(v2 + v26);
      if (v25)
      {
        v19 = 104;
LABEL_13:
        if (*(v2 + v19) < v18)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v18 = *(v2 + 80);
    }

    v19 = 88;
    goto LABEL_13;
  }

LABEL_14:
  if (v10 == 1)
  {
LABEL_15:
    [a1 size];
    sub_1004DE43C();
    v21 = v20;
    sub_1004DE43C();
    if (vabdd_f64(v21, v22) > 0.1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

LABEL_18:
  result = [v11 contentMode];
  if (result == v10)
  {
    return result;
  }

  result = [v11 setContentMode:v10];
LABEL_20:
  v23 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_contentModeDidChangeHandler);
  if (v23)
  {

    v23(v24);
    return sub_10000DE74(v23);
  }

  return result;
}

uint64_t sub_10001585C(uint64_t a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 48);
  if ((*(a1 + 48) & 1) == 0)
  {
    v18 = *a2;
    v16 = v2;
    v13 = v16;
    if (v4)
    {
      v15 = 0;
    }

    else
    {
      v15 = [v16 isArtworkVisuallyIdenticalToCatalog:v18];
    }

    goto LABEL_8;
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = a2[2];
  v10 = *(a1 + 24);
  v19[0] = *a1;
  v19[1] = v6;
  v19[2] = v5;
  v19[3] = v10;
  v20 = *(a1 + 32);
  if (v4)
  {
    v21 = v3;
    v22 = v7;
    v23 = v8;
    v24 = v9;
    v11 = v5;
    v12 = v10;
    v13 = v2;
    v14 = v6;
    v15 = static Artwork.Placeholder.__derived_struct_equals(_:_:)(v19, &v21);

LABEL_8:
    return v15 & 1;
  }

  v15 = 0;
  return v15 & 1;
}

void sub_100015958(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1004DBF6C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006321B8);
  *v8 = sub_1004DE14C();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = sub_1004DBF9C();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_40:
    swift_once();
    goto LABEL_38;
  }

  v10 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock);
  if ((v10 & 1) == 0)
  {
    *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = v10 | 1;
  }

  v11 = *(v3 + 112);
  v12 = [v11 image];
  sub_100015558(v12);

  v13 = v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent;
  v14 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent);
  v64 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 8);
  v65 = v14;
  v15 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 16);
  v62 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 24);
  v63 = v15;
  v16 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 40);
  v61 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 32);
  v60 = v16;
  v59 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 48);
  v17 = *(a1 + 16);
  *v13 = *a1;
  *(v13 + 16) = v17;
  *(v13 + 32) = *(a1 + 32);
  *(v13 + 48) = *(a1 + 48);
  sub_1000108DC(a1, &aBlock, &qword_100633068);
  v18 = AccessibilityIdentifier.artwork.unsafeMutableAddressor();
  v19 = *v18;
  v20 = v18[1];
  sub_100006F10(0, &qword_100633070);

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v19, v20);
  v21 = *(a1 + 48);
  if (v21 == 255)
  {
    [v11 setHidden:1];
    v30 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_placeholderView);
    if (v30)
    {
      [v30 setHidden:1];
    }

    sub_100019F64();
    v31 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
    v2 = v59;
    if (v31)
    {

      v31(0);
      sub_10000DE74(v31);
    }
  }

  else
  {
    v22 = *(a1 + 8);
    if (v21)
    {
      v58 = *(a1 + 8);
      v23 = *a1;
      v25 = *(a1 + 16);
      v24 = *(a1 + 24);
      v72 = *(a1 + 32);
      v26 = v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_placeholderView;
      v27 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_placeholderView);
      if (v27)
      {
        v28 = *(v26 + 8);
        v29 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_placeholderView);
      }

      else
      {
        aBlock = v23;
        v68 = v58;
        v69 = v25;
        v70 = v24;
        v71 = *(a1 + 32);
        sub_10001C868();
        v29 = MusicUIContentConfiguration.makeContentView()(&type metadata for Artwork.Placeholder);
        v28 = v33;
        v27 = 0;
      }

      v57[1] = swift_getObjectType();
      v34 = v27;
      v35 = [v29 superview];
      if (v35)
      {
      }

      else
      {
        [v11 insertSubview:v29 atIndex:0];
      }

      v40 = *v26;
      *v26 = v29;
      *(v26 + 8) = v28;
      v41 = v29;

      [v41 setHidden:0];
      v42 = v58;
      v73 = v23;
      v74 = v58;
      v75 = v25;
      v70 = &type metadata for Artwork.Placeholder;
      *&v71 = sub_10001C8BC();
      v43 = swift_allocObject();
      aBlock = v43;
      *(v43 + 16) = v23;
      *(v43 + 24) = v42;
      *(v43 + 32) = v25;
      *(v43 + 40) = v24;
      *(v43 + 48) = v72;
      v44 = v24;
      sub_1000108DC(&v73, v66, &qword_100633088);
      sub_1000108DC(&v74, v66, &qword_100633088);
      sub_1000108DC(&v75, v66, &qword_100633090);
      sub_1004D970C();
      v45 = *(v13 + 48);
      if (v45 != 255 && (v45 & 1) != 0 && *v26)
      {
        v46 = *v26;
        [v11 bounds];
        [v46 setFrame:?];
      }

      v47 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
      v2 = v59;
      if (v47)
      {

        v47(v48);
        sub_10000DE74(v47);
      }
    }

    else
    {
      [v11 setHidden:0];
      v32 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_placeholderView);
      if (v32)
      {
        [v32 setHidden:1];
      }

      v2 = v59;
      if (v59 == 255)
      {
        v36 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component__fadeImageView);
        v37 = [v11 image];
        [v36 setImage:v37];

        v38 = [v36 image];
        if (v38)
        {

          v39 = 0;
        }

        else
        {
          v39 = [v11 backgroundColor];
        }

        [v36 setBackgroundColor:v39];

        [v36 setAlpha:1.0];
        [v36 setHidden:0];
        [v11 setImage:v22];
        v49 = objc_opt_self();
        *&v71 = sub_10001C960;
        *(&v71 + 1) = v3;
        aBlock = _NSConcreteStackBlock;
        v68 = 1107296256;
        v69 = sub_100012680;
        v70 = &unk_1005CFD28;
        v50 = _Block_copy(&aBlock);

        *&v71 = sub_10001C97C;
        *(&v71 + 1) = v3;
        aBlock = _NSConcreteStackBlock;
        v68 = 1107296256;
        v69 = sub_100016298;
        v70 = &unk_1005CFD50;
        v51 = _Block_copy(&aBlock);

        [v49 animateWithDuration:v50 animations:v51 completion:0.2];
        _Block_release(v51);
        _Block_release(v50);
      }

      else
      {
        [v11 setImage:v22];
      }

      [v22 size];
      sub_1004DE43C();
      sub_1004DE43C();
      sub_1004DE43C();
      aBlock = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_lastProposedAspectRatio);
      *&v72 = v52;
      if (sub_1004D868C())
      {
        v53 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
        if (v53)
        {

          v53(v54);
          sub_10000DE74(v53);
        }
      }

      sub_100015558(v22);
    }
  }

  sub_1000162EC();
  v55 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
  if (v55)
  {

    v55(v56);
    sub_10000DE74(v55);
  }

  if (qword_100631E80 != -1)
  {
    goto LABEL_40;
  }

LABEL_38:
  sub_100010B18(v3);
  sub_10001C7F0(v65, v64, v63, v62, v61, v60, v2);
}

uint64_t sub_100016298(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1000162EC()
{
  v1 = *(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_explicitBackgroundColor);
  v2 = v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent;
  v3 = *(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 48);
  v32 = v1;
  if (v3 == 255)
  {
    v13 = v1;
    v12 = v32;
    goto LABEL_5;
  }

  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 32);
  v8 = *(v2 + 40);
  if (v3)
  {
    v10 = v1;
    sub_10001C784(v5, v4, v6, v7, v9, v8, v3);
    v11 = v10;

    v12 = [objc_opt_self() clearColor];
    goto LABEL_5;
  }

  if (!v1)
  {
    sub_10001C79C(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), 0);
    [v4 size];
    v20 = v19;
    [v4 size];
    if (v20 >= v21)
    {
      goto LABEL_21;
    }

    if (*(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0)
    {
      v30 = *(v0 + 72);
      v31 = 96;
      if (!v30)
      {
        v31 = 80;
      }

      v22 = *(v0 + v31);
      if (v30)
      {
        v23 = 104;
LABEL_19:
        if (*(v0 + v23) < v22)
        {
LABEL_20:
          v12 = [objc_opt_self() blackColor];

          goto LABEL_5;
        }

LABEL_21:
        v24 = COERCE_DOUBLE(MPArtworkCatalog.originalSize.getter());
        if ((v27 & 1) == 0)
        {
          v26 = v24;
          if (v24 < v25)
          {
            goto LABEL_20;
          }
        }

        if ([v5 dataSource])
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {

            swift_unknownObjectRelease();
            goto LABEL_30;
          }

          swift_unknownObjectRelease();
        }

        v28 = [v5 existingColorAnalysisWithAlgorithm:1];
        if (v28)
        {
          v29 = v28;
          v12 = [v28 backgroundColor];

LABEL_5:
          v14 = *(v0 + 112);
          if (!v12)
          {
            v15 = [objc_opt_self() clearColor];
            v16 = 0;
            goto LABEL_11;
          }

          goto LABEL_9;
        }

LABEL_30:
        v14 = *(v0 + 112);
        v18 = *(v0 + 56);
        goto LABEL_10;
      }
    }

    else
    {
      v22 = *(v0 + 80);
    }

    v23 = 88;
    goto LABEL_19;
  }

  v17 = v1;
  sub_10001C784(v5, v4, v6, v7, v9, v8, v3);
  v12 = v17;

  v14 = *(v0 + 112);
LABEL_9:
  v18 = v12;
LABEL_10:
  v15 = v18;
  v16 = v18;
LABEL_11:
  [v14 setBackgroundColor:v15];
}

void sub_100016688(void *a1)
{
  v2 = v1;
  v4 = sub_1004DBF6C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006321B8);
  *v7 = sub_1004DE14C();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_1004DBF9C();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (a1)
    {
      v9 = *(v2 + 128);
      if (v9)
      {
        v10 = a1;
        v11 = [v9 player];
        v12 = [v11 currentItem];

        if (v12)
        {
          v9 = [v12 asset];

          if (v9)
          {
            sub_100006F10(0, &qword_100633060);
            v13 = v10;
            v9 = v9;
            v14 = sub_1004DE5FC();

            if (v14)
            {

              return;
            }
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v17 = a1;
      }

      sub_1000168F0(a1);
    }

    else
    {
      v15 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock);
      if ((v15 & 2) == 0)
      {
        *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = v15 | 2;
        v16 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
        if (v16)
        {

          v16(0);
          sub_10000DE74(v16);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000168F0(void *a1)
{
  v26 = *v1;
  v27 = a1;
  v2 = sub_1004DBEBC();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1004DBEFC();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004DBECC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DBF6C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006321B8);
  *v13 = sub_1004DE14C();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = sub_1004DBF9C();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v16 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock);
    if ((v16 & 2) == 0)
    {
      *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = v16 | 2;
    }

    (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v6);
    v17 = sub_1004DE18C();
    (*(v7 + 8))(v9, v6);
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v20 = v26;
    v21 = v27;
    v19[2] = v18;
    v19[3] = v21;
    v19[4] = v20;
    aBlock[4] = sub_10001C68C;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012680;
    aBlock[3] = &unk_1005CFB98;
    v22 = _Block_copy(aBlock);

    v23 = v21;
    sub_1004DBEDC();
    v33 = _swiftEmptyArrayStorage;
    sub_10001C73C(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_1006323E0);
    sub_100008F60(&qword_1006321B0, &unk_1006323E0);
    v24 = v29;
    v25 = v32;
    sub_1004DE92C();
    sub_1004DE15C();
    _Block_release(v22);

    (*(v31 + 8))(v24, v25);
    (*(v28 + 8))(v5, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100016DE8(uint64_t a1, void *a2)
{
  v3 = sub_1004D966C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v100 - v9;
  __chkstk_darwin(v8);
  v12 = v100 - v11;
  v13 = sub_1004DBEBC();
  v113 = *(v13 - 8);
  __chkstk_darwin(v13);
  v111 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004DBEFC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v112 = v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v110 = v16;
  v19 = *(result + 72);
  if (!v19)
  {
  }

  v108 = v15;
  v109 = result;
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 auxiliarySession];
  aBlock = 0;
  v23 = [v22 setParticipatesInNowPlayingAppPolicy:0 error:&aBlock];
  v24 = aBlock;
  v107 = v13;
  v106 = v22;
  v105 = v21;
  if ((v23 & 1) == 0)
  {
    v61 = aBlock;
    v62 = sub_1004D7F4C();

    swift_willThrow();
    v63 = Logger.motion.unsafeMutableAddressor();
    (*(v4 + 16))(v12, v63, v3);
    swift_errorRetain();
    v64 = sub_1004D964C();
    v65 = sub_1004DDF7C();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      aBlock = v67;
      *v66 = 136315138;
      v114 = v62;
      swift_errorRetain();
      sub_100004CB8(&qword_100633048);
      v68 = sub_1004DD4DC();
      v70 = sub_10001B608(v68, v69, &aBlock);

      *(v66 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v64, v65, "Error creating non-now-playing session: %s", v66, 0xCu);
      sub_100008D24(v67);
    }

    (*(v4 + 8))(v12, v3);
    sub_100006F10(0, &qword_1006321B8);
    v71 = sub_1004DE14C();
    v119 = sub_10001CB28;
    v120 = v109;
    aBlock = _NSConcreteStackBlock;
    v116 = 1107296256;
    v117 = sub_100012680;
    v118 = &unk_1005CFBC0;
    v72 = _Block_copy(&aBlock);

    v73 = v112;
    sub_1004DBEDC();
    aBlock = _swiftEmptyArrayStorage;
    sub_10001C73C(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_1006323E0);
    sub_100008F60(&qword_1006321B0, &unk_1006323E0);
    v74 = v111;
    v75 = v107;
    sub_1004DE92C();
    sub_1004DE15C();

    _Block_release(v72);

    goto LABEL_26;
  }

  aBlock = 0;
  v25 = v24;
  v26 = [v22 setCategory:AVAudioSessionCategoryAmbient error:&aBlock];
  v27 = aBlock;
  if (!v26)
  {
    v76 = aBlock;
    v77 = sub_1004D7F4C();

    swift_willThrow();
    v78 = Logger.motion.unsafeMutableAddressor();
    (*(v4 + 16))(v10, v78, v3);
    swift_errorRetain();
    v79 = sub_1004D964C();
    v80 = sub_1004DDF7C();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      aBlock = v82;
      *v81 = 136315138;
      v114 = v77;
      swift_errorRetain();
      sub_100004CB8(&qword_100633048);
      v83 = sub_1004DD4DC();
      v85 = sub_10001B608(v83, v84, &aBlock);

      *(v81 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v79, v80, "Error creating ambient audio session: %s", v81, 0xCu);
      sub_100008D24(v82);
    }

    (*(v4 + 8))(v10, v3);
    sub_100006F10(0, &qword_1006321B8);
    v86 = sub_1004DE14C();
    v119 = sub_10001C6B0;
    v120 = v109;
    aBlock = _NSConcreteStackBlock;
    v116 = 1107296256;
    v117 = sub_100012680;
    v118 = &unk_1005CFBE8;
    v87 = _Block_copy(&aBlock);

    v73 = v112;
    sub_1004DBEDC();
    aBlock = _swiftEmptyArrayStorage;
    sub_10001C73C(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_1006323E0);
    sub_100008F60(&qword_1006321B0, &unk_1006323E0);
    v74 = v111;
    v75 = v107;
    sub_1004DE92C();
    sub_1004DE15C();

    _Block_release(v87);
    goto LABEL_25;
  }

  aBlock = 0;
  v28 = v27;
  v29 = [v22 setRequiresNoAudioResources:1 error:&aBlock];
  v30 = aBlock;
  if (!v29)
  {
    v88 = aBlock;
    v89 = sub_1004D7F4C();

    swift_willThrow();
    v90 = Logger.motion.unsafeMutableAddressor();
    (*(v4 + 16))(v7, v90, v3);
    swift_errorRetain();
    v91 = sub_1004D964C();
    v92 = sub_1004DDF7C();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      aBlock = v94;
      *v93 = 136315138;
      v114 = v89;
      swift_errorRetain();
      sub_100004CB8(&qword_100633048);
      v95 = sub_1004DD4DC();
      v97 = sub_10001B608(v95, v96, &aBlock);

      *(v93 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v91, v92, "Error creating audio-resource-less session: %s", v93, 0xCu);
      sub_100008D24(v94);
    }

    (*(v4 + 8))(v7, v3);
    sub_100006F10(0, &qword_1006321B8);
    v98 = sub_1004DE14C();
    v119 = sub_10001CB28;
    v120 = v109;
    aBlock = _NSConcreteStackBlock;
    v116 = 1107296256;
    v117 = sub_100012680;
    v118 = &unk_1005CFC10;
    v99 = _Block_copy(&aBlock);

    v73 = v112;
    sub_1004DBEDC();
    aBlock = _swiftEmptyArrayStorage;
    sub_10001C73C(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_1006323E0);
    sub_100008F60(&qword_1006321B0, &unk_1006323E0);
    v74 = v111;
    v75 = v107;
    sub_1004DE92C();
    sub_1004DE15C();

    _Block_release(v99);
LABEL_25:

LABEL_26:
    (*(v113 + 8))(v74, v75);
    return (*(v110 + 8))(v73, v108);
  }

  v31 = objc_allocWithZone(MPCScriptedLooper);
  v32 = v30;
  v33 = [v31 initWithAsset:a2 audioSession:v22];
  v34 = [v33 player];
  v35 = [v34 currentItem];
  if (v35)
  {
    v36 = v35;
    [v21 scaledFittingSize];
    [v36 setPreferredMinimumResolution:?];
  }

  [v34 setAutomaticallyWaitsToMinimizeStalling:1];
  [v34 setMuted:1];
  [v34 setAllowsExternalPlayback:0];
  [v34 setPreventsDisplaySleepDuringVideoPlayback:0];
  [v34 _setSuppressesAudioRendering:1];
  if (qword_100631EA8 != -1)
  {
    swift_once();
  }

  v102 = qword_1006327D8;
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v33;
  v119 = sub_10001C720;
  v120 = v38;
  aBlock = _NSConcreteStackBlock;
  v116 = 1107296256;
  v103 = &v117;
  v117 = sub_100012680;
  v118 = &unk_1005CFC60;
  v39 = _Block_copy(&aBlock);

  v101 = v33;
  v40 = v112;
  sub_1004DBEDC();
  v114 = _swiftEmptyArrayStorage;
  v41 = sub_10001C73C(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags);
  v42 = sub_100004CB8(&unk_1006323E0);
  v43 = sub_100008F60(&qword_1006321B0, &unk_1006323E0);
  v44 = v111;
  v100[1] = v42;
  v100[0] = v43;
  v104 = v41;
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v39);
  v45 = *(v113 + 8);
  v113 += 8;
  v102 = v45;
  v45(v44, v13);
  v46 = *(v110 + 8);
  v110 += 8;
  v46(v40, v108);

  v47 = [v34 currentItem];
  if (v47)
  {
    v48 = v47;
    v49 = [a2 mediaSelectionGroupForMediaCharacteristic:AVMediaCharacteristicAudible];
    if (v49)
    {
      v50 = v49;
      [v48 selectMediaOption:0 inMediaSelectionGroup:v49];

      v48 = v50;
    }
  }

  sub_100006F10(0, &qword_1006321B8);
  v51 = sub_1004DE14C();
  v52 = swift_allocObject();
  v53 = v101;
  v54 = v109;
  v52[2] = v101;
  v52[3] = v54;
  v52[4] = v34;
  v119 = sub_10001C728;
  v120 = v52;
  aBlock = _NSConcreteStackBlock;
  v116 = 1107296256;
  v117 = sub_100012680;
  v118 = &unk_1005CFCB0;
  v55 = _Block_copy(&aBlock);
  v56 = v53;

  v57 = v34;

  v58 = v112;
  sub_1004DBEDC();
  aBlock = _swiftEmptyArrayStorage;
  v59 = v111;
  v60 = v107;
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v55);

  v102(v59, v60);
  return (v46)(v58, v108);
}

void sub_100017F50(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
  *(a1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
  if (v2)
  {
    [v2 invalidate];
  }

  *(a1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) = 1;
  v3 = *(a1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  if (v3)
  {

    v3(v4);

    sub_10000DE74(v3);
  }
}

void sub_100017FF4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 128);
    *(Strong + 128) = a2;
    v5 = a2;
  }
}

void sub_100018064(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 128);
  if (v3)
  {
    sub_100006F10(0, &qword_100633050);
    v7 = a1;
    v8 = v3;
    LOBYTE(a1) = sub_1004DE5FC();

    if (a1)
    {
      v9 = objc_opt_self();
      v10 = swift_allocObject();
      swift_weakInit();
      v17[4] = sub_10001C734;
      v17[5] = v10;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 1107296256;
      v17[2] = sub_100018634;
      v17[3] = &unk_1005CFCD8;
      v11 = _Block_copy(v17);

      v12 = [v9 scheduledTimerWithTimeInterval:0 repeats:v11 block:8.0];
      _Block_release(v11);
      sub_100015478(v12);
      v13 = *(a2 + 120);
      if (v13)
      {
        v14 = v13;
        v15 = [v14 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setPlayer:a3];
      }

      sub_10001869C(v7);
      v16 = *(a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
      if (v16)
      {

        v16(v7);
        sub_10000DE74(v16);
      }
    }
  }
}

uint64_t sub_10001827C()
{
  v0 = sub_1004D966C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Logger.motion.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);

  v5 = sub_1004D964C();
  v6 = sub_1004DDF5C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315394;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_1000108DC(Strong + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_loggingContext, v26, &qword_100633028);
    }

    else
    {
      v27 = 0;
      memset(v26, 0, sizeof(v26));
    }

    sub_100004CB8(&qword_100633028);
    v10 = sub_1004DD4DC();
    v12 = sub_10001B608(v10, v11, &v28);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    swift_beginAccess();
    v13 = swift_weakLoadStrong();
    if (v13)
    {
      v25[1] = v8;
      v14 = *(v13 + 128);
      v15 = v14;

      if (v14)
      {
        v16 = [v15 player];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    *&v26[0] = v16;
    sub_100004CB8(&qword_100633058);
    v17 = sub_1004DD4DC();
    v19 = sub_10001B608(v17, v18, &v28);

    *(v7 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "Timed out loading video artwork [player was not ready to play]. context=%s player=%s, privacy: .public)", v7, 0x16u);
    swift_arrayDestroy();
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v22 = *(result + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
    *(result + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
    if (v22)
    {
      [v22 invalidate];
    }

    *(v21 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) = 1;
    v23 = *(v21 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v23)
    {

      v23(v24);

      return sub_10000DE74(v23);
    }

    else
    {
    }
  }

  return result;
}

void sub_100018634(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10001869C(void *a1)
{
  v3 = [a1 player];
  sub_100004CB8(&qword_1006320B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100511D90;
  type metadata accessor for Whitetail.Binding();
  KeyPath = swift_getKeyPath();
  v25 = sub_100004CB8(&qword_100633000);
  v26 = &protocol witness table for KeyValueObservationTrigger<A, B>;
  v23 = a1;
  v24 = KeyPath;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v6;
  v8 = a1;
  *(v4 + 32) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v23, 1, sub_10001C530, v7);
  v9 = swift_getKeyPath();
  v25 = sub_100004CB8(&qword_100633008);
  v26 = &protocol witness table for KeyValueObservationTrigger<A, B>;
  v23 = v3;
  v24 = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = v8;
  v12 = v3;
  *(v4 + 40) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v23, 1, sub_10001C5B8, v10);
  v13 = swift_getKeyPath();
  v25 = sub_100004CB8(&qword_100633010);
  v26 = &protocol witness table for KeyValueObservationTrigger<A, B>;
  v23 = v12;
  v24 = v13;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = v12;
  *(v4 + 48) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v23, 1, sub_10001C600, v14);
  v16 = swift_getKeyPath();
  v25 = sub_100004CB8(&qword_100633018);
  v26 = &protocol witness table for KeyValueObservationTrigger<A, B>;
  v23 = v15;
  v24 = v16;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v17;
  v18[4] = v15;
  v19 = v15;
  v20 = v11;
  v21 = v19;
  *(v4 + 56) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v23, 1, sub_10001C654, v18);

  *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoBindings) = v4;
}

void sub_1000189B0(void *a1, uint64_t a2)
{
  v4 = sub_1004D966C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v53 - v9;
  v11 = [a1 status];
  if (v11 <= 1)
  {
    if (!v11)
    {
      return;
    }

    if (v11 == 1)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v13 = *(Strong + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
        *(Strong + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
        if (v13)
        {
          [v13 invalidate];
        }

        else
        {
        }
      }

      return;
    }

LABEL_34:
    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;
    sub_1004DEAAC(25);

    [a1 status];
    *&v59 = 0xD00000000000002CLL;
    *(&v59 + 1) = 0x80000001004E7F40;
    [a1 status];
    v62._countAndFlagsBits = sub_1004DE33C();
    sub_1004DD5FC(v62);

    sub_1004DECCC();
    __break(1u);
    return;
  }

  if (v11 == 2)
  {
    v14 = [a1 error];
    if (!v14 || (*&v59 = v14, sub_100004CB8(&qword_100633048), type metadata accessor for AVError(0), (swift_dynamicCast() & 1) == 0) || (v15 = v5, v16 = v58, *&v59 = v58, sub_10001C73C(&qword_100632088, type metadata accessor for AVError), sub_1004D7EFC(), v16, v5 = v15, v58 != -11819))
    {
      v17 = [a1 error];
      if (!v17 || (*&v59 = v17, sub_100004CB8(&qword_100633048), type metadata accessor for AVError(0), (swift_dynamicCast() & 1) == 0) || (v18 = v5, v19 = v58, *&v59 = v58, sub_10001C73C(&qword_100632088, type metadata accessor for AVError), sub_1004D7EFC(), v19, v5 = v18, v58 != -11818))
      {
        v20 = [a1 player];
        v21 = [v20 status];

        if (v21 == 2)
        {
          swift_beginAccess();
          v22 = swift_weakLoadStrong();
          if (v22)
          {
            v23 = *(v22 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLooperDidFailHandler);
            sub_10000DE64(v23);

            if (v23)
            {
              v23(a1);
              sub_10000DE74(v23);
            }
          }
        }

        sub_100006F10(0, &qword_1006321B8);

        static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_10001CB24, a2);

        v24 = Logger.motion.unsafeMutableAddressor();
        (*(v5 + 16))(v10, v24, v4);

        v25 = a1;
        v26 = sub_1004D964C();
        v27 = sub_1004DDF7C();

        if (os_log_type_enabled(v26, v27))
        {
          v55 = v5;
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v57 = v54;
          *v28 = 136446722;
          *&v59 = [v25 error];
          sub_100004CB8(&qword_100633040);
          v30 = sub_1004DD4DC();
          v32 = sub_10001B608(v30, v31, &v57);

          *(v28 + 4) = v32;
          *(v28 + 12) = 2114;
          *(v28 + 14) = v25;
          *v29 = v25;
          *(v28 + 22) = 2082;
          swift_beginAccess();
          v33 = swift_weakLoadStrong();
          if (v33)
          {
            sub_1000108DC(v33 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_loggingContext, &v59, &qword_100633028);
            v34 = v25;
          }

          else
          {
            v61 = 0;
            v59 = 0u;
            v60 = 0u;
            v49 = v25;
          }

          sub_100004CB8(&qword_100633028);
          v50 = sub_1004DD4DC();
          v52 = sub_10001B608(v50, v51, &v57);

          *(v28 + 24) = v52;
          _os_log_impl(&_mh_execute_header, v26, v27, "MPCScriptedLooper failed. error=%{public}s videoLooper=%{public}@ context=%{public}s", v28, 0x20u);
          sub_10001074C(v29, &qword_100633038);

          swift_arrayDestroy();

          (*(v55 + 8))(v10, v4);
        }

        else
        {

          (*(v5 + 8))(v10, v4);
        }
      }
    }
  }

  else
  {
    if (v11 != 3)
    {
      goto LABEL_34;
    }

    sub_100006F10(0, &qword_1006321B8);

    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_10001C668, a2);

    v35 = Logger.motion.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v35, v4);

    v36 = a1;
    v37 = sub_1004D964C();
    v38 = sub_1004DDF7C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = v5;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v56[0] = v42;
      *v40 = 138543618;
      *(v40 + 4) = v36;
      *v41 = v36;
      *(v40 + 12) = 2082;
      swift_beginAccess();
      v43 = swift_weakLoadStrong();
      if (v43)
      {
        sub_1000108DC(v43 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_loggingContext, &v59, &qword_100633028);
        v44 = v36;
      }

      else
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v45 = v36;
      }

      sub_100004CB8(&qword_100633028);
      v46 = sub_1004DD4DC();
      v48 = sub_10001B608(v46, v47, v56);

      *(v40 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v37, v38, "MPCScriptedLooper was cancelled. videoLooper=%{public}@ context=%{public}s", v40, 0x16u);
      sub_10001074C(v41, &qword_100633038);

      sub_100008D24(v42);

      (*(v39 + 8))(v8, v4);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_100019308()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
    *(result + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
    if (v2)
    {
      [v2 invalidate];
    }

    *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) = 1;
    v3 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v3)
    {

      v3(v4);

      return sub_10000DE74(v3);
    }

    else
    {
    }
  }

  return result;
}

void sub_1000193DC(void *a1)
{
  v2 = sub_1004D966C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 player];
  [v6 rate];
  v8 = v7;

  if (v8 == 1.0)
  {
    v9 = [a1 player];
    v38 = [v9 reasonForWaitingToPlay];

    if (v38)
    {
      v10 = sub_1004DD43C();
      v12 = v11;
      if (v10 == sub_1004DD43C() && v12 == v13)
      {
        goto LABEL_10;
      }

      v15 = sub_1004DF08C();

      if (v15)
      {
        goto LABEL_11;
      }

      v16 = sub_1004DD43C();
      v18 = v17;
      if (v16 == sub_1004DD43C() && v18 == v19)
      {
LABEL_10:

        goto LABEL_11;
      }

      v35 = sub_1004DF08C();

      if (v35)
      {
LABEL_11:
        v20 = Logger.motion.unsafeMutableAddressor();
        (*(v3 + 16))(v5, v20, v2);
        v21 = v38;
        v22 = a1;
        v23 = sub_1004D964C();
        v24 = sub_1004DDF9C();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v39 = v21;
          v40 = v26;
          *v25 = 136446466;
          type metadata accessor for WaitingReason(0);
          v38 = v3;
          v37 = v21;
          v27 = sub_1004DD4DC();
          v29 = sub_10001B608(v27, v28, &v40);

          *(v25 + 4) = v29;
          *(v25 + 12) = 2082;
          v30 = [v22 player];
          v31 = [v30 currentItem];

          v39 = v31;
          sub_100004CB8(&qword_100633020);
          v32 = sub_1004DD4DC();
          v34 = sub_10001B608(v32, v33, &v40);

          *(v25 + 14) = v34;
          _os_log_impl(&_mh_execute_header, v23, v24, "AVPlayer waiting because %{public}s currentItem=%{public}s", v25, 0x16u);
          swift_arrayDestroy();

          (*(v38 + 1))(v5, v2);
        }

        else
        {

          (*(v3 + 8))(v5, v2);
        }

        return;
      }

      v36 = v38;
    }
  }
}

void sub_100019824()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (!*(Strong + 128) || (v1 = Strong, (v2 = [*(Strong + 128) player]) == 0))
    {

      return;
    }

    v3 = v2;
    v4 = [v2 timeControlStatus];
    [v3 rate];
    if (v4)
    {
      if (v4 == 2 && v5 == 1.0)
      {
        v6 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isPlaying);
        *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isPlaying) = 1;
        if (v6 != 1)
        {
          v7 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler);
          if (v7)
          {

            v8 = 1;
LABEL_16:
            v7(v8);

            sub_10000DE74(v7);
            return;
          }
        }
      }
    }

    else if (v5 == 0.0)
    {
      v9 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isPlaying);
      *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isPlaying) = 0;
      if (v9)
      {
        v7 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler);
        if (v7)
        {

          v8 = 0;
          goto LABEL_16;
        }
      }
    }
  }
}

void sub_1000199AC(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 player];
  v6 = [v5 currentItem];

  if (v6)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = sub_1004DD3FC();
      v10 = swift_allocObject();
      *(v10 + 16) = a3;
      *(v10 + 24) = a2;
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v11 = a3;

      *(v8 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_itemFailedToPlayToEndTimeObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v9, v6, 1, 1, sub_10001C660, v10);
    }

    else
    {
    }
  }
}

uint64_t sub_100019B04(uint64_t a1, void *a2)
{
  v3 = sub_1004D966C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004D7B6C();
  if (v7)
  {
    v8 = v7;
    *&v37[0] = sub_1004DD43C();
    *(&v37[0] + 1) = v9;
    sub_1004DEA4C();
    if (*(v8 + 16))
    {
      v10 = sub_100028F3C(v33);
      if (v11)
      {
        sub_10000904C(*(v8 + 56) + 32 * v10, v37);
        sub_1000105EC(v33);

        goto LABEL_7;
      }
    }

    sub_1000105EC(v33);
  }

  memset(v37, 0, 32);
LABEL_7:
  v12 = Logger.motion.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v12, v3);
  sub_1000108DC(v37, v36, &qword_100632198);
  v13 = a2;

  v14 = sub_1004D964C();
  v15 = sub_1004DDF7C();

  if (os_log_type_enabled(v14, v15))
  {
    v31 = v4;
    v32 = v3;
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35 = v30;
    *v16 = 136446722;
    sub_1000108DC(v36, v33, &qword_100632198);
    sub_100004CB8(&qword_100632198);
    v17 = sub_1004DD4DC();
    v19 = v18;
    sub_10001074C(v36, &qword_100632198);
    v20 = sub_10001B608(v17, v19, &v35);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    *&v33[0] = [v13 currentItem];
    sub_100004CB8(&qword_100633020);
    v21 = sub_1004DD4DC();
    v23 = sub_10001B608(v21, v22, &v35);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2082;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_1000108DC(Strong + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_loggingContext, v33, &qword_100633028);
    }

    else
    {
      v34 = 0;
      memset(v33, 0, sizeof(v33));
    }

    v25 = v31;
    sub_100004CB8(&qword_100633028);
    v26 = sub_1004DD4DC();
    v28 = sub_10001B608(v26, v27, &v35);

    *(v16 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, "AVPlayerItem failed to play to end. error=%{public}s currentItem=%{public}s context=%{public}s", v16, 0x20u);
    swift_arrayDestroy();

    (*(v25 + 8))(v6, v32);
  }

  else
  {

    sub_10001074C(v36, &qword_100632198);
    (*(v4 + 8))(v6, v3);
  }

  return sub_10001074C(v37, &qword_100632198);
}