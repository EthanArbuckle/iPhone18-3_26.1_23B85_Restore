__n128 sub_100001E3C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001E48(uint64_t a1, int a2)
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

uint64_t sub_100001E68(uint64_t result, int a2, int a3)
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

__n128 sub_100001ECC()
{
  [v0 deviceMotionRotation];
  [v0 deviceOrientation];
  return v2;
}

uint64_t sub_100001F40(uint64_t a1, id *a2)
{
  result = sub_100010834();
  *a2 = 0;
  return result;
}

uint64_t sub_100001FB8(uint64_t a1, id *a2)
{
  v3 = sub_100010844();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100002038()
{
  sub_100010854();
  v0 = sub_100010824();

  return v0;
}

NSString sub_100002080@<X0>(void *a1@<X8>)
{
  result = sub_100002038();
  *a1 = result;
  return result;
}

uint64_t sub_1000020A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100004688();
}

uint64_t sub_1000020B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_100010824();

  *a2 = v5;
  return result;
}

uint64_t sub_1000020FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000C420(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_100002140@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002150@<X0>(uint64_t *a1@<X8>)
{
  result = _sSo13PREditingLookC31AmbientPhotoFramePosterProviderE21pu_timeFontIdentifierSo08PUPosterjK0aSgvg_0();
  *a1 = result;
  return result;
}

uint64_t sub_100002184@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100002898(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000021B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100002530(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000021E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000028B0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10000221C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100002900(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100002250@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100002924(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10000229C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10000293C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10000230C(uint64_t a1)
{
  v2 = sub_1000026C4(&qword_1000236F0, type metadata accessor for PRRenderingEventType);
  v3 = sub_1000026C4(&qword_1000236F8, type metadata accessor for PRRenderingEventType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000023D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100002950(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000023FC()
{
  sub_100010854();
  v0 = sub_1000108A4();

  return v0;
}

uint64_t sub_100002434()
{
  sub_100010854();
  sub_100010874();
}

Swift::Int sub_100002488()
{
  sub_100010854();
  sub_100010A84();
  sub_100010874();
  v0 = sub_100010A94();

  return v0;
}

__n128 sub_10000256C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002578(uint64_t a1, int a2)
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

uint64_t sub_100002598(uint64_t result, int a2, int a3)
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

void sub_1000025E8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000026C4(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1000028B8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_100002900(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_100002924(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_100002950(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1000029B0()
{
  result = sub_100010854();
  qword_100024C80 = result;
  *algn_100024C88 = v1;
  return result;
}

uint64_t sub_1000029E0()
{
  [objc_allocWithZone(type metadata accessor for PosterUpdater()) init];
  v0 = sub_10000597C(&qword_100023A30, qword_100012A90);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1000107E4();
  sub_10000C3B4(&qword_1000240A0);
  sub_100010774();
}

uint64_t sub_100002ABC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000107F4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_100010804();
  v5 = sub_1000107C4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1000107D4();
  v8 = sub_100002BE8();

  *a1 = v8;
  return result;
}

id sub_100002BA8(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_100002BE8()
{
  sub_10000597C(&qword_1000240A8, &qword_100012E28);
  v0 = *(sub_1000104D4() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100012A10;
  sub_1000107F4();
  sub_10000B9F8(&qword_1000240B0, &type metadata accessor for PRRenderingConfiguration);

  sub_1000104C4();
  sub_1000107C4();
  sub_10000B9F8(&qword_1000240B8, &type metadata accessor for PREditingConfiguration);

  sub_1000104C4();
  return v3;
}

uint64_t sub_100002D94()
{
  sub_10000C340(0, &qword_1000240E0, OS_os_log_ptr);
  if (qword_1000235F0 != -1)
  {
    swift_once();
  }

  result = sub_1000109B4();
  qword_100023820 = result;
  return result;
}

void sub_100002E44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char *a6, uint64_t a7, void *a8)
{
  sub_1000109A4();
  if (qword_1000235F8 != -1)
  {
    swift_once();
  }

  v11 = qword_100023820;
  sub_100010794();
  v12 = sub_100010974();
  log = v11;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = sub_100010A04();
    v26 = a6;
    v25 = a7;
    v16 = sub_10000F000(v14, v15, &v30);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = [a4 description];
    v18 = sub_100010854();
    v19 = a8;
    v21 = v20;

    v22 = v18;
    a7 = v25;
    v23 = sub_10000F000(v22, v21, &v30);
    a8 = v19;

    *(v13 + 14) = v23;
    a6 = v26;
    _os_log_impl(&_mh_execute_header, log, v12, "%s - %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v24 = objc_autoreleasePoolPush();
  sub_100003180(a6, a7, a8);
  objc_autoreleasePoolPop(v24);
  if (!v29)
  {
    sub_100010994();
    sub_100010794();
  }

  swift_unknownObjectRelease();
}

void sub_1000030FC(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v5 = v2;
  swift_unknownObjectRetain();
  v6 = a1;
  sub_100002E44("Renderer.Initialize", 19, 2, v6, v5, v5, a2, v6);
}

void sub_100003180(char *a1, uint64_t a2, void *a3)
{
  v5 = (*(*(sub_10000597C(&qword_100023958, qword_100012A78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v41 - v6;
  v8 = sub_100010484();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin();
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C340(0, &qword_1000240F8, PHPhotoLibrary_ptr);
  v12 = [objc_opt_self() systemPhotoLibraryURL];
  sub_100010474();

  v13 = sub_10000C534(v11);
  sub_1000059C4(v7, 1, 1, v8);
  v14 = objc_allocWithZone(type metadata accessor for RenderingEnvironment(0));
  v15 = swift_unknownObjectRetain();
  v16 = sub_100004350(v15, v7, 0, 1);
  v17 = OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD414PosterRenderer_renderingEnvironment;
  v18 = *&a1[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD414PosterRenderer_renderingEnvironment];
  *&a1[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD414PosterRenderer_renderingEnvironment] = v16;

  sub_10000BA3C(&qword_100024118, &qword_100024120, PRRenderer_ptr);
  v19 = objc_allocWithZone(sub_100010544());
  v20 = v13;
  v21 = a3;
  v22 = sub_100010504();
  v23 = *&a1[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD414PosterRenderer_controller];
  *&a1[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD414PosterRenderer_controller] = v22;
  v24 = v22;

  v25 = *&a1[v17];
  if (v25)
  {
    sub_10000B9F8(&qword_100024128, type metadata accessor for RenderingEnvironment);
    v26 = v25;
    sub_100010524();

    v27 = sub_100010974();
    if (qword_1000235F8 != -1)
    {
      swift_once();
    }

    v28 = qword_100023820;
    if (!os_log_type_enabled(qword_100023820, v27))
    {

      return;
    }

    v42 = v20;
    v43 = a1;
    v29 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v29 = 136315394;
    v30 = [v21 description];
    v31 = sub_100010854();
    v33 = v32;

    v34 = sub_10000F000(v31, v33, &v44);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = *&a1[v17];
    if (v35)
    {
      v36 = v35;

      v37 = sub_100004B34();
      v39 = v38;

      v40 = sub_10000F000(v37, v39, &v44);

      *(v29 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v28, v27, "initialize %s %s", v29, 0x16u);
      swift_arrayDestroy();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000035B8(void *a1, uint64_t a2, void *a3)
{
  v6 = (*(*(sub_10000597C(&qword_100023958, qword_100012A78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = v31 - v7;
  v34 = a3;
  v32 = a3;
  v9 = v3;
  swift_unknownObjectRetain();
  v33 = a1;
  sub_1000109A4();
  if (qword_1000235F8 != -1)
  {
    swift_once();
  }

  v10 = qword_100023820;
  v31[1] = OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD414PosterRenderer_signpostID;
  sub_100010794();
  v11 = sub_100010974();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = sub_100010A04();
    v15 = sub_10000F000(v13, v14, &v35);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = [v33 description];
    v17 = sub_100010854();
    v19 = v18;

    v20 = sub_10000F000(v17, v19, &v35);

    *(v12 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s - %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v21 = objc_autoreleasePoolPush();
  v22 = sub_100010484();
  sub_1000059C4(v8, 1, 1, v22);
  v23 = objc_allocWithZone(type metadata accessor for RenderingEnvironment(0));
  v24 = swift_unknownObjectRetain();
  v25 = sub_100004350(v24, v8, 0, 1);
  v26 = *&v9[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD414PosterRenderer_renderingEnvironment];
  *&v9[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD414PosterRenderer_renderingEnvironment] = v25;
  v27 = v25;

  v28 = *&v9[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD414PosterRenderer_controller];
  if (v28)
  {
    if (v34)
    {
      sub_10000BA3C(&qword_100024130, &qword_100024138, PRPosterTransition_ptr);
    }

    sub_10000BA3C(&qword_100024118, &qword_100024120, PRRenderer_ptr);
    sub_10000B9F8(&qword_100024128, type metadata accessor for RenderingEnvironment);
    v29 = v28;
    v30 = v33;
    sub_100010534();

    objc_autoreleasePoolPop(v21);
    sub_100010994();
    sub_100010794();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000039D4(void *a1)
{
  v2 = v1;
  v4 = sub_100010974();
  if (qword_1000235F8 != -1)
  {
    swift_once();
  }

  v5 = qword_100023820;
  if (os_log_type_enabled(qword_100023820, v4))
  {
    v6 = v1;
    v7 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = [a1 description];
    v9 = sub_100010854();
    v11 = v10;

    v12 = sub_10000F000(v9, v11, v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v13 = *&v6[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD414PosterRenderer_renderingEnvironment];
    if (!v13)
    {

      __break(1u);
      __break(1u);
      return;
    }

    v14 = v13;

    v15 = sub_100004B34();
    v17 = v16;

    v18 = sub_10000F000(v15, v17, v33);

    *(v7 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v5, v4, "invalidate %s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v32 = v2;
  v19 = a1;
  sub_1000109A4();
  sub_100010794();
  v20 = sub_100010974();
  if (os_log_type_enabled(v5, v20))
  {
    v21 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v21 = 136315394;
    v22 = sub_100010A04();
    v24 = sub_10000F000(v22, v23, v33);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    v25 = [v19 description];
    v26 = sub_100010854();
    v28 = v27;

    v29 = sub_10000F000(v26, v28, v33);

    *(v21 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v5, v20, "%s - %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  v30 = objc_autoreleasePoolPush();
  sub_100003D98(v32);
  objc_autoreleasePoolPop(v30);
  sub_100010994();
  sub_100010794();
}

void sub_100003D98(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD414PosterRenderer_controller;
  v2 = *(a1 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD414PosterRenderer_controller);
  if (v2)
  {
    sub_10000BA3C(&qword_100024118, &qword_100024120, PRRenderer_ptr);
    v4 = v2;
    sub_1000104F4();

    v5 = *(a1 + v1);
    *(a1 + v1) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_100003EAC(void *a1)
{
  v18 = v1;
  v3 = a1;
  sub_1000109A4();
  if (qword_1000235F8 != -1)
  {
    swift_once();
  }

  v4 = qword_100023820;
  sub_100010794();
  v5 = sub_100010974();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = sub_100010A04();
    v9 = sub_10000F000(v7, v8, &v19);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = [v3 description];
    v11 = sub_100010854();
    v13 = v12;

    v14 = sub_10000F000(v11, v13, &v19);

    *(v6 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v15 = objc_autoreleasePoolPush();
  v16 = *&v18[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD414PosterRenderer_controller];
  if (v16)
  {
    sub_10000BA3C(&qword_100024118, &qword_100024120, PRRenderer_ptr);
    v17 = v16;
    sub_100010514();

    objc_autoreleasePoolPop(v15);
    sub_100010994();
    sub_100010794();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1000042B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_px_traitCollection);
  v2 = v1;
  return v1;
}

uint64_t sub_10000433C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_px_traitCollection);
  *(v1 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_px_traitCollection) = a1;
  return _objc_release_x1();
}

id sub_100004350(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *&v4[OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_px_traitCollection] = 0;
  v8 = &v4[OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_px_salientContentRectangle];
  *v8 = 0u;
  v8[1] = 0u;
  v9 = &v4[OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_px_backdropPrimaryOcclusionRect];
  *v9 = 0u;
  v9[1] = 0u;
  v10 = &v4[OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_px_backdropInspectorOcclusionRect];
  *v10 = 0u;
  v10[1] = 0u;
  v11 = &v4[OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_px_callServicesOcclusionRect];
  *v11 = 0u;
  v11[1] = 0u;
  v4[OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_px_isDepthEffectDisabled] = 0;
  *&v4[OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_posterKitEnvironment] = a1;
  sub_10000C288(a2, &v4[OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_debugAssetDirectory], &qword_100023958, qword_100012A78);
  v12 = &v4[OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_debugContentType];
  *v12 = a3;
  v12[8] = a4 & 1;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for RenderingEnvironment(0);
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_10000C2E8(a2, &qword_100023958, qword_100012A78);
  return v13;
}

id sub_100004470()
{
  result = [*(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_posterKitEnvironment) context];
  if (result)
  {
    v2 = result;
    v3 = [result mode];

    return (v3 == 1);
  }

  return result;
}

uint64_t sub_1000045D4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_posterKitEnvironment) role];
  v2 = sub_100010854();
  v4 = v3;
  if (v2 == sub_100010854() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100010A64();
  }

  return v7 & 1;
}

uint64_t sub_100004688()
{
  v0 = sub_100010854();
  v2 = v1;
  if (v0 == sub_100010854() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_100010A64();
  }

  return v5 & 1;
}

uint64_t sub_10000485C@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(sub_10000597C(&qword_100023958, qword_100012A78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v13 - v4;
  sub_10000C288(v1 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_debugAssetDirectory, &v13 - v4, &qword_100023958, qword_100012A78);
  v6 = sub_100010484();
  if (sub_10000BAD0(v5, 1, v6) == 1)
  {
    v7 = [objc_msgSend(*(v1 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_posterKitEnvironment) "contents")];
    swift_unknownObjectRelease();
    sub_100010474();

    if (sub_10000BAD0(v5, 1, v6) != 1)
    {
      sub_10000C2E8(v5, &qword_100023958, qword_100012A78);
    }
  }

  else
  {
    (*(*(v6 - 8) + 32))(a1, v5, v6);
  }

  sub_10000C4DC();
  return sub_1000059C4(v8, v9, v10, v11);
}

uint64_t sub_100004A7C()
{
  if (*(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_debugContentType + 8) != 1)
  {
    return *(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_debugContentType);
  }

  v1 = [*(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_posterKitEnvironment) contents];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    return 1;
  }

  else
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass() != 0;
    swift_unknownObjectRelease();
    return 2 * v3;
  }
}

uint64_t sub_100004B34()
{
  v1 = [objc_msgSend(*(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_posterKitEnvironment) "contents")];
  swift_unknownObjectRelease();
  if (!v1)
  {
    return 0;
  }

  v2 = sub_100010854();

  return v2;
}

id sub_100004C3C()
{
  v1 = PPAmbientPosterEnvironmentFromRenderingEnvironment(*(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_posterKitEnvironment));

  return v1;
}

id sub_100004D04()
{
  v1 = *(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_posterKitEnvironment);
  swift_getObjectType();
  return sub_100001EBC();
}

double sub_100004D8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider20RenderingEnvironment_posterKitEnvironment);
  swift_getObjectType();
  *&result = sub_100001ECC().n128_u64[0];
  return result;
}

id sub_1000050B0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t PRRenderer.px_updatePreferences(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C51C();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = sub_10000C51C();
  *(v7 + 16) = sub_10000540C;
  *(v7 + 24) = v6;
  v10[4] = sub_10000C41C;
  v10[5] = v7;
  sub_10000C460();
  sub_10000C510();
  v10[2] = sub_10000C458;
  v10[3] = &unk_10001CE10;
  v8 = _Block_copy(v10);

  [v3 updatePreferences:v8];
  _Block_release(v8);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_100005370(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t))
{
  v5 = objc_allocWithZone(type metadata accessor for MutablePosterRenderingPreferences());
  v6 = swift_unknownObjectRetain();
  v7 = sub_100005ADC(v6);
  a3(v7, a2);
}

uint64_t sub_100005414(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id PRRenderer.px_extendRenderSession(forReason:)()
{
  v1 = sub_100010824();
  v2 = [v0 extendRenderingSessionForReason:v1];

  v3 = [v2 assertion];
  v4 = type metadata accessor for InvalidatableWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD420InvalidatableWrapper_invalidatable] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, "init");

  return v6;
}

uint64_t sub_1000056B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_100005748(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  if (!a3)
  {
    v15 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v20 = a3;
  v21 = a4;
  sub_10000C460();
  sub_10000C510();
  v18 = sub_10000C428;
  v19 = v14;
  v15 = _Block_copy(v17);

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = a5;
  v21 = a6;
  sub_10000C460();
  sub_10000C510();
  v18 = sub_1000056B8;
  v19 = a8;
  v16 = _Block_copy(v17);

LABEL_6:
  [a1 *a9];
  _Block_release(v16);
  _Block_release(v15);
}

id PRRenderer.px_environment.getter()
{
  v1 = (*(*(sub_10000597C(&qword_100023958, qword_100012A78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = &v8 - v2;
  v4 = [v0 environment];
  v5 = sub_100010484();
  sub_1000059C4(v3, 1, 1, v5);
  v6 = objc_allocWithZone(type metadata accessor for RenderingEnvironment(0));
  return sub_100004350(v4, v3, 0, 1);
}

uint64_t sub_10000597C(uint64_t *a1, uint64_t *a2)
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

id PRRenderer.px_preferences.getter()
{
  v0 = objc_allocWithZone(type metadata accessor for PosterRenderingPreferences());

  return [v0 init];
}

id sub_100005ADC(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_px_preferredTitleBounds];
  *v2 = 0u;
  v2[1] = 0u;
  v3 = &v1[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_px_preferredSalientContentRectangle];
  *v3 = 0u;
  v3[1] = 0u;
  v1[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_px_contentOcclusionRectangleUpdatesRequested] = 0;
  *&v1[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_px_adaptiveTimeMode] = 0;
  *&v1[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_px_powerLogIdentifier] = 0;
  *&v1[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_posterKitPreferences] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MutablePosterRenderingPreferences();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_100005BAC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_posterKitPreferences) timeFont];

  return v1;
}

void sub_100005C48(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_posterKitPreferences) setTimeFont:a1];
}

id sub_100005CDC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_posterKitPreferences) timeColor];

  return v1;
}

void sub_100005D78(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_posterKitPreferences) setTimeColor:a1];
}

id sub_100005E0C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_posterKitPreferences) statusBarTintColor];

  return v1;
}

void sub_100005EA8(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_posterKitPreferences) setStatusBarTintColor:a1];
}

unint64_t sub_100005FE8()
{
  result = [*(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_posterKitPreferences) significantEventOptions];
  if (result > 4 || ((1 << result) & 0x16) == 0)
  {
    result = sub_100010A24();
    __break(1u);
  }

  return result;
}

id sub_1000060C8(unint64_t a1)
{
  if (a1 <= 4 && ((1 << a1) & 0x16) != 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_posterKitPreferences);

    return [v3 setSignificantEventOptions:a1];
  }

  else
  {
    result = sub_100010A24();
    __break(1u);
  }

  return result;
}

uint64_t sub_100006264()
{
  v1 = [*(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_posterKitPreferences) requestedRenderingEventTypes];
  type metadata accessor for PRRenderingEventType(0);
  v2 = sub_1000108D4();

  v5 = PRRenderingEventTypeTap;
  v4[2] = &v5;
  LOBYTE(v1) = sub_10000C024(sub_10000C250, v4, v2);

  return v1 & 1;
}

void sub_100006370(char a1)
{
  LOBYTE(v2) = a1;
  LOBYTE(v3) = sub_100010974();
  if (qword_1000235F8 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v4 = qword_100023820;
    if (os_log_type_enabled(qword_100023820, v3))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v2 & 1;
      _os_log_impl(&_mh_execute_header, v4, v3, "userTapEventsRequested set to %{BOOL}d", v5, 8u);
    }

    if ((sub_100006264() & 1) == (v2 & 1))
    {
      break;
    }

    if (v2)
    {
      v2 = *(v1 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_posterKitPreferences);
      v6 = [v2 requestedRenderingEventTypes];
      type metadata accessor for PRRenderingEventType(0);
      v3 = sub_1000108D4();

      v7 = PRRenderingEventTypeTap;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_53:
        v3 = sub_10000BAF8(0, *(v3 + 16) + 1, 1, v3);
      }

      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        v3 = sub_10000BAF8((v8 > 1), v9 + 1, 1, v3);
      }

      *(v3 + 16) = v9 + 1;
      *(v3 + 8 * v9 + 32) = v7;
      isa = sub_1000108C4().super.isa;

      [v2 setRequestedRenderingEventTypes:isa];

      return;
    }

    v2 = *(v1 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_posterKitPreferences);
    v10 = [v2 requestedRenderingEventTypes];
    type metadata accessor for PRRenderingEventType(0);
    v3 = v11;
    v1 = sub_1000108D4();

    v7 = 0;
    v12 = *(v1 + 16);
    while (1)
    {
      v13 = *(v1 + 16);
      if (v12 == v7)
      {
        v7 = *(v1 + 16);
LABEL_44:
        sub_10000C0F0(v7, v13);
        v40 = sub_1000108C4().super.isa;

        [v2 setRequestedRenderingEventTypes:v40];

        return;
      }

      if (v7 >= v13)
      {
        __break(1u);
        goto LABEL_47;
      }

      v14 = *(v1 + 32 + 8 * v7);
      v15 = sub_100010854();
      v17 = v16;
      if (v15 == sub_100010854() && v17 == v18)
      {
        break;
      }

      v20 = sub_100010A64();

      if (v20)
      {
        goto LABEL_23;
      }

      ++v7;
    }

LABEL_23:
    v21 = *(v1 + 16);
    if (v21 - 1 == v7)
    {
      v13 = v7 + 1;
      goto LABEL_44;
    }

    v22 = v7 + 5;
    while (1)
    {
      v23 = v22 - 4;
      if (v22 - 4 >= v21)
      {
        break;
      }

      v24 = *(v1 + 8 * v22);
      v25 = sub_100010854();
      v27 = v26;
      if (v25 == sub_100010854() && v27 == v28)
      {
      }

      else
      {
        v30 = sub_100010A64();

        if ((v30 & 1) == 0)
        {
          if (v23 != v7)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

            v31 = *(v1 + 16);
            if (v7 >= v31)
            {
              goto LABEL_50;
            }

            if (v23 >= v31)
            {
              goto LABEL_51;
            }

            v32 = *(v1 + 8 * v22);
            v33 = *(v1 + 32 + 8 * v7);
            v34 = v32;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1 = sub_10000C238(v1);
            }

            v35 = v1 + 8 * v7;
            v36 = *(v35 + 32);
            *(v35 + 32) = v34;

            if (v23 >= *(v1 + 16))
            {
              goto LABEL_52;
            }

            v37 = *(v1 + 8 * v22);
            *(v1 + 8 * v22) = v33;
          }

          ++v7;
        }
      }

      v21 = *(v1 + 16);
      v38 = v22 + 1;
      v39 = v22 - 3;
      ++v22;
      if (v39 == v21)
      {
        v13 = v38 - 4;
        if ((v38 - 4) >= v7)
        {
          goto LABEL_44;
        }

        __break(1u);
        return;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }
}

id sub_100006850()
{
  v1 = *(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_posterKitPreferences);
  swift_getObjectType();
  return sub_100001F18();
}

id sub_1000068D8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_posterKitPreferences);
  swift_getObjectType();
  return sub_100001F28(a1);
}

id sub_10000694C()
{
  result = [*(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_posterKitPreferences) deviceMotionMode];
  if (result >= 3)
  {
    result = sub_100010A24();
    __break(1u);
  }

  return result;
}

id sub_100006A18(unint64_t a1)
{
  if (a1 >= 3)
  {
    result = sub_100010A24();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_posterKitPreferences);

    return [v3 setDeviceMotionMode:a1];
  }

  return result;
}

double sub_100006B88()
{
  result = *(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_px_preferredTitleBounds);
  v2 = *(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_px_preferredTitleBounds + 8);
  v3 = *(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_px_preferredTitleBounds + 16);
  v4 = *(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_px_preferredTitleBounds + 24);
  return result;
}

void sub_100006BC4(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_px_preferredTitleBounds);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_100006C00()
{
  result = *(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_px_preferredSalientContentRectangle);
  v2 = *(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_px_preferredSalientContentRectangle + 8);
  v3 = *(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_px_preferredSalientContentRectangle + 16);
  v4 = *(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_px_preferredSalientContentRectangle + 24);
  return result;
}

void sub_100006C3C(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD433MutablePosterRenderingPreferences_px_preferredSalientContentRectangle);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_100006E3C()
{
  result = *(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD426PosterRenderingPreferences_px_preferredSalientContentRectangle);
  v2 = *(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD426PosterRenderingPreferences_px_preferredSalientContentRectangle + 8);
  v3 = *(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD426PosterRenderingPreferences_px_preferredSalientContentRectangle + 16);
  v4 = *(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD426PosterRenderingPreferences_px_preferredSalientContentRectangle + 24);
  return result;
}

void sub_100006E78(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD426PosterRenderingPreferences_px_preferredSalientContentRectangle);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

id sub_100006F6C()
{
  v1 = &v0[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD426PosterRenderingPreferences_px_preferredSalientContentRectangle];
  *v1 = 0u;
  v1[1] = 0u;
  v0[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD426PosterRenderingPreferences_px_contentOcclusionRectangleUpdatesRequested] = 0;
  *&v0[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD426PosterRenderingPreferences_px_adaptiveTimeMode] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PosterRenderingPreferences();
  return objc_msgSendSuper2(&v3, "init");
}

void PRPosterTransition.px_duration.getter()
{
  v1 = [v0 animationSettings];
  if (v1)
  {
    v2 = v1;
    [v1 duration];
  }
}

void PRPosterTransition.px_duration.setter(double a1)
{
  v2 = [objc_opt_self() settingsWithDuration:a1];
  [v1 setAnimationSettings:v2];
}

uint64_t sub_1000071AC()
{
  sub_10000C340(0, &qword_1000240E0, OS_os_log_ptr);
  if (qword_1000235F0 != -1)
  {
    swift_once();
  }

  result = sub_1000109B4();
  qword_100023828 = result;
  return result;
}

void sub_10000725C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  sub_1000109A4();
  if (qword_100023600 != -1)
  {
    swift_once();
  }

  sub_100010794();
  v10 = objc_autoreleasePoolPush();
  sub_100007C44(a5, a6, a7);
  objc_autoreleasePoolPop(v10);
  if (!v7)
  {
    sub_100010994();
    sub_100010794();
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1000073A0()
{
  sub_1000109A4();
  if (qword_100023600 != -1)
  {
    swift_once();
  }

  sub_100010794();
  v0 = objc_autoreleasePoolPush();
  sub_10000597C(&qword_1000240E8, &qword_100012E40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100012A20;
  v2 = objc_allocWithZone(PREditingLook);
  *(v1 + 32) = sub_10000B43C();
  objc_autoreleasePoolPop(v0);
  sub_100010994();
  sub_100010794();
  return v1;
}

uint64_t sub_100007518(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 128) = a3;
  *(v6 + 16) = a1;
  *(v6 + 56) = sub_100010934();
  *(v6 + 64) = sub_100010924();
  v8 = sub_100010904();
  *(v6 + 72) = v8;
  *(v6 + 80) = v7;

  return _swift_task_switch(sub_1000075C0, v8, v7);
}

uint64_t sub_1000075C0()
{
  sub_1000109A4();
  if (qword_100023600 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD412PosterEditor_signpostID;
  *(v0 + 88) = qword_100023828;
  *(v0 + 96) = v5;
  v11 = *(v0 + 32);
  v6 = *(v0 + 128);
  sub_100010794();
  *(v0 + 104) = sub_100010924();
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *(v7 + 16) = v11;
  v8 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_100007738;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100007738()
{
  sub_10000C4EC();
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v5 = *v0;
  sub_10000C4C4();
  *v6 = v5;

  v7 = *(v1 + 80);
  v8 = *(v1 + 72);

  return _swift_task_switch(sub_10000788C, v8, v7);
}

uint64_t sub_10000788C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = *(v0 + 128);

  sub_100010994();
  sub_100010794();
  sub_10000C4F8();

  return v8();
}

void sub_10000792C(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = sub_10000597C(&qword_100024100, &qword_100012E48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = objc_autoreleasePoolPush();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  a2(sub_10000BD4C, v11);

  objc_autoreleasePoolPop(v9);
}

uint64_t sub_100007AD0()
{
  if (*(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD412PosterEditor_controller))
  {
  }

  else
  {
    sub_1000109F4(64);
    v3._object = 0x8000000100018920;
    v3._countAndFlagsBits = 0xD00000000000003ELL;
    sub_100010884(v3);
    v4._countAndFlagsBits = sub_100010A04();
    sub_100010884(v4);

    sub_100010A24();
    __break(1u);
  }

  return _objc_retain_x3();
}

void sub_100007BC0(void *a1, void *a2)
{
  swift_getObjectType();
  v5 = a1;
  v6 = v2;
  swift_unknownObjectRetain();
  sub_10000725C("PosterEditor.Initialize", 23, 2, v6, v5, v6, a2);
}

uint64_t sub_100007C44(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_100010484();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C340(0, &qword_1000240F8, PHPhotoLibrary_ptr);
  v10 = [objc_opt_self() systemPhotoLibraryURL];
  sub_100010474();

  v11 = sub_10000C534(v9);
  v12 = sub_10000C340(0, &qword_1000240D0, PREditor_ptr);
  v27 = v12;
  v13 = sub_10000BA3C(&qword_1000240D8, &qword_1000240D0, PREditor_ptr);
  v28 = v13;
  v26[0] = a1;
  v14 = objc_allocWithZone(sub_100010644());
  v15 = a1;
  v16 = v11;
  v17 = sub_1000105F4();
  v18 = *(a2 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD412PosterEditor_controller);
  *(a2 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD412PosterEditor_controller) = v17;
  v19 = v17;

  v20 = sub_100007E8C(a3);
  v21 = *(a2 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD412PosterEditor_editingEnvironment);
  *(a2 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD412PosterEditor_editingEnvironment) = v20;
  v22 = v20;

  v27 = v12;
  v28 = v13;
  v26[0] = v15;
  v25[3] = type metadata accessor for EditingEnvironment(0);
  v25[4] = sub_10000B9F8(&qword_1000240F0, type metadata accessor for EditingEnvironment);
  v25[0] = v22;
  v23 = v15;
  sub_100010614();

  sub_10000BBFC(v25);
  return sub_10000BBFC(v26);
}

uint64_t sub_100007E8C(void *a1)
{
  v2 = sub_100010744();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v114 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1000105D4();
  v116 = *(v111 - 8);
  v5 = *(v116 + 64);
  v6 = __chkstk_darwin(v111);
  v109 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v110 = &v104 - v8;
  v113 = sub_100010724();
  v115 = *(v113 - 8);
  v9 = v115[8];
  v10 = __chkstk_darwin(v113);
  v106 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v107 = &v104 - v12;
  v13 = sub_10000597C(&qword_1000240C8, &qword_100012E38);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v112 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v117 = &v104 - v17;
  v18 = sub_10000597C(&qword_1000240C0, &qword_100012E30);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v104 - v20;
  v22 = sub_1000106D4();
  v119 = *(v22 - 8);
  v23 = *(v119 + 64);
  v24 = __chkstk_darwin(v22);
  v108 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v118 = &v104 - v27;
  __chkstk_darwin(v26);
  v29 = &v104 - v28;
  v128 = sub_100010484();
  v126 = *(v128 - 8);
  v30 = *(v126 + 64);
  v31 = __chkstk_darwin(v128);
  v33 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v31);
  v123 = &v104 - v35;
  v36 = __chkstk_darwin(v34);
  v121 = &v104 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v104 - v39;
  __chkstk_darwin(v38);
  v42 = &v104 - v41;
  v43 = [a1 targetConfiguration];
  v44 = [v43 assetDirectory];

  v127 = v42;
  sub_100010474();

  v45 = [objc_msgSend(a1 "sourceContents")];
  swift_unknownObjectRelease();
  v124 = v40;
  sub_100010474();

  v122 = a1;
  v46 = [a1 sourceContents];
  objc_opt_self();
  v47 = swift_dynamicCastObjCClass();
  v120 = v46;
  if (v47)
  {
    v48 = v47;
    sub_100009BE8(v47, v21);
    if (sub_10000BAD0(v21, 1, v22) != 1)
    {
      v49 = v119;
      (*(v119 + 32))(v29, v21, v22);
      v50 = v118;
      (*(v49 + 16))(v118, v29, v22);
      v51 = [v48 assetDirectory];
      v52 = v121;
      sub_100010474();

      v54 = v126;
      v53 = v127;
      v55 = v123;
      v56 = v128;
      (*(v126 + 16))(v123, v127, v128);
      v57 = objc_allocWithZone(type metadata accessor for EditingEnvironment(0));
      v58 = swift_unknownObjectRetain();
      v59 = sub_10000A7F4(v58, v50, v52, v55, &OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD418EditingEnvironment_posterDescriptor, &type metadata accessor for AmbientPhotoFramePosterDescriptor, &OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD418EditingEnvironment_sourcePosterConfiguration, &type metadata accessor for AmbientPhotoFramePosterConfiguration);
      swift_unknownObjectRelease();
      (*(v49 + 8))(v29, v22);
      v60 = *(v54 + 8);
      v60(v124, v56);
      v60(v53, v56);
      return v59;
    }

    __break(1u);
  }

  else
  {
    v61 = v112;
    v62 = v113;
    v63 = v117;
    objc_opt_self();
    v64 = swift_dynamicCastObjCClass();
    if (v64)
    {
      v65 = v64;
      v66 = [v64 assetDirectory];
      v105 = v33;
      sub_100010474();

      sub_100009E34(v65, v63);
      v67 = v61;
      sub_10000C288(v63, v61, &qword_1000240C8, &qword_100012E38);
      v68 = sub_10000BAD0(v61, 1, v62);
      v70 = v115;
      v69 = v116;
      if (v68 == 1)
      {
        v125 = v22;
        swift_unknownObjectRelease();
        sub_10000C2E8(v63, &qword_1000240C8, &qword_100012E38);
        v71 = *(v126 + 8);
        v117 = v126 + 8;
        v120 = v71;
        v71(v105, v128);
        sub_10000C2E8(v67, &qword_1000240C8, &qword_100012E38);
        sub_100010984();
        v72 = sub_1000104E4();
        sub_100010784();

        sub_10000C340(0, &qword_1000240F8, PHPhotoLibrary_ptr);
        v73 = [objc_opt_self() systemPhotoLibraryURL];
        v74 = v121;
        sub_100010474();

        v115 = sub_10000C534(v74);
        v75 = enum case for AmbientPhotoFramePosterKind.featured(_:);
        v76 = v69;
        v77 = *(v69 + 104);
        v78 = v111;
        v77(v110, enum case for AmbientPhotoFramePosterKind.featured(_:), v111);
        v79 = v109;
        v77(v109, v75, v78);
        sub_100010734();
        (*(v76 + 8))(v79, v78);
        sub_100010664();
        v80 = v118;
        sub_100010694();
        v81 = v119;
        v82 = v108;
        (*(v119 + 16))(v108, v80, v125);
        v83 = *(v126 + 16);
        v84 = v124;
        v85 = v128;
        v83(v74, v124, v128);
        v86 = v123;
        v87 = v127;
        v88 = v85;
        v83(v123, v127, v85);
        v89 = objc_allocWithZone(type metadata accessor for EditingEnvironment(0));
        v90 = swift_unknownObjectRetain();
        v59 = sub_10000A7F4(v90, v82, v74, v86, &OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD418EditingEnvironment_posterDescriptor, &type metadata accessor for AmbientPhotoFramePosterDescriptor, &OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD418EditingEnvironment_sourcePosterConfiguration, &type metadata accessor for AmbientPhotoFramePosterConfiguration);

        (*(v81 + 8))(v80, v125);
        v91 = v120;
        v120(v84, v88);
        v91(v87, v88);
      }

      else
      {
        v92 = v107;
        (v115[4])(v107, v67, v62);
        v93 = v106;
        (v70[2])(v106, v92, v62);
        v94 = v126;
        v95 = *(v126 + 16);
        v96 = v121;
        v97 = v128;
        v95(v121, v105, v128);
        v98 = v70;
        v99 = v123;
        v95(v123, v127, v97);
        v100 = objc_allocWithZone(type metadata accessor for EditingEnvironment(0));
        v101 = swift_unknownObjectRetain();
        v59 = sub_10000A7F4(v101, v93, v96, v99, &OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD418EditingEnvironment_sourcePosterConfiguration, &type metadata accessor for AmbientPhotoFramePosterConfiguration, &OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD418EditingEnvironment_posterDescriptor, &type metadata accessor for AmbientPhotoFramePosterDescriptor);
        swift_unknownObjectRelease();
        (v98[1])(v92, v62);
        sub_10000C2E8(v117, &qword_1000240C8, &qword_100012E38);
        v102 = *(v94 + 8);
        v102(v105, v97);
        v102(v124, v97);
        v102(v127, v97);
      }

      return v59;
    }
  }

  result = sub_100010A24();
  __break(1u);
  return result;
}

void sub_100008ACC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(v8, a4);

  swift_unknownObjectRelease();
}

void sub_100008B54(void *a1, uint64_t a2, void *a3)
{
  v16 = a3;
  v6 = v3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1000109A4();
  if (qword_100023600 != -1)
  {
    swift_once();
  }

  sub_100010794();
  v15 = objc_autoreleasePoolPush();
  v8 = OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD412PosterEditor_editingEnvironment;
  v9 = *&v6[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD412PosterEditor_editingEnvironment];
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD418EditingEnvironment_posterKitEnvironment);
    *(v9 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD418EditingEnvironment_posterKitEnvironment) = a2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v11 = sub_100007AD0();
    v18[3] = sub_10000C340(0, &qword_1000240D0, PREditor_ptr);
    v18[4] = sub_10000BA3C(&qword_1000240D8, &qword_1000240D0, PREditor_ptr);
    v18[0] = v7;
    v12 = *&v6[v8];
    if (v12)
    {
      v17[3] = type metadata accessor for EditingEnvironment(0);
      v17[4] = sub_10000B9F8(&qword_1000240F0, type metadata accessor for EditingEnvironment);
      v17[0] = v12;
      v13 = v7;
      v14 = v12;
      sub_100010634();

      sub_10000BBFC(v17);
      sub_10000BBFC(v18);
      objc_autoreleasePoolPop(v15);
      sub_100010994();
      sub_100010794();

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100008DC4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(id, uint64_t, void *))
{
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = a1;
  a6(v10, a4, a5);

  swift_unknownObjectRelease();
}

uint64_t sub_100008E68(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100010934();
  v2[4] = sub_100010924();
  v4 = sub_100010904();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100008F00, v4, v3);
}

uint64_t sub_100008F00()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = "PosterEditor.Finalize";
  *(v3 + 32) = 21;
  *(v3 + 40) = 2;
  *(v3 + 48) = v2;
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_100009010;
  v7 = v0[3];

  return sub_100007518("PosterEditor.Finalize", 21, 2, sub_10000BABC, v3);
}

uint64_t sub_100009010()
{
  sub_10000C4EC();
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *v0;
  sub_10000C4C4();
  *v5 = v4;

  v6 = *(v1 + 48);
  v7 = *(v1 + 40);

  return _swift_task_switch(sub_100009148, v7, v6);
}

uint64_t sub_100009148()
{
  v1 = *(v0 + 32);

  sub_10000C4F8();

  return v2();
}

uint64_t sub_1000091A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = sub_100007AD0();
  v11[3] = sub_10000C340(0, &qword_1000240D0, PREditor_ptr);
  v11[4] = sub_10000BA3C(&qword_1000240D8, &qword_1000240D0, PREditor_ptr);
  v11[0] = a7;
  v9 = a7;
  sub_100010624();

  return sub_10000BBFC(v11);
}

uint64_t sub_1000092F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_100010934();
  v3[5] = sub_100010924();
  v5 = sub_100010904();

  return _swift_task_switch(sub_100009394, v5, v4);
}

uint64_t sub_100009394()
{
  sub_10000C4EC();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_100009454;
  v8 = v0[4];
  v9 = v0[2];

  return sub_100008E68(v9);
}

uint64_t sub_100009454()
{
  sub_10000C4EC();
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 16);
  v5 = *v0;
  sub_10000C4C4();
  *v6 = v5;

  v2[2](v2);
  _Block_release(v2);
  sub_10000C4F8();

  return v7();
}

void sub_10000959C(void *a1)
{
  v3 = v1;
  v4 = a1;
  sub_1000109A4();
  if (qword_100023600 != -1)
  {
    swift_once();
  }

  sub_100010794();
  v5 = objc_autoreleasePoolPush();
  sub_100010964();
  sub_100010784();
  v6 = sub_100007AD0();
  v9[3] = sub_10000C340(0, &qword_1000240D0, PREditor_ptr);
  v9[4] = sub_10000BA3C(&qword_1000240D8, &qword_1000240D0, PREditor_ptr);
  v9[0] = v4;
  v7 = v4;
  sub_1000105E4();

  sub_10000BBFC(v9);
  v8 = *&v3[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD412PosterEditor_controller];
  *&v3[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD412PosterEditor_controller] = 0;

  objc_autoreleasePoolPop(v5);
  sub_100010994();
  sub_100010794();
}

uint64_t sub_10000989C(void *a1, void *a2, void *a3)
{
  swift_unknownObjectRetain();
  v7 = v3;
  v8 = a1;
  v22 = a3;
  sub_1000109A4();
  if (qword_100023600 != -1)
  {
    swift_once();
  }

  sub_100010794();
  v21 = objc_autoreleasePoolPush();
  v9 = [a2 backgroundView];
  v10 = objc_opt_self();
  v11 = [v10 blackColor];
  [v9 setBackgroundColor:v11];

  v12 = [v9 window];
  if (v12)
  {
    v13 = v12;
    v14 = [v10 blackColor];
    [v13 setBackgroundColor:v14];
  }

  v15 = sub_100007AD0();
  v24[3] = sub_10000C340(0, &qword_1000240D0, PREditor_ptr);
  v24[4] = sub_10000BA3C(&qword_1000240D8, &qword_1000240D0, PREditor_ptr);
  v24[0] = v8;
  v16 = type metadata accessor for EditorViews();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD411EditorViews_posterKitViewProviding] = a2;
  v23.receiver = v17;
  v23.super_class = v16;
  swift_unknownObjectRetain();
  v18 = v8;
  v19 = objc_msgSendSuper2(&v23, "init");
  sub_100010604();

  sub_10000BBFC(v24);
  objc_autoreleasePoolPop(v21);
  sub_100010994();
  sub_100010794();

  return swift_unknownObjectRelease();
}

uint64_t sub_100009BE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100010484();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 assetDirectory];
  sub_100010474();

  sub_1000106B4();
  (*(v5 + 8))(v8, v4);
  v10 = sub_1000106D4();
  return sub_1000059C4(a2, 0, 1, v10);
}

uint64_t sub_100009E34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000104B4();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  (__chkstk_darwin)();
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_100010744() - 8) + 64);
  (__chkstk_darwin)();
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_1000105D4() - 8) + 64);
  (__chkstk_darwin)();
  v11 = *(*(sub_10000597C(&qword_1000240C8, &qword_100012E38) - 8) + 64);
  v12 = (__chkstk_darwin)();
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  v17 = sub_1000106D4();
  v31 = *(v17 - 8);
  v18 = *(v31 + 64);
  __chkstk_darwin(v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100010484();
  v36 = *(v21 - 8);
  v37 = v21;
  v22 = *(v36 + 64);
  __chkstk_darwin(v21);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [a1 assetDirectory];
  sub_100010474();

  v26 = sub_100010724();
  v35 = a2;
  sub_1000059C4(a2, 1, 1, v26);
  if (sub_100010684())
  {
    sub_1000106B4();
    sub_1000106A4();
    sub_100010674();
    v30 = sub_1000106E4();
    sub_1000104A4();
    sub_100010494();
    (*(v33 + 8))(v7, v34);
    sub_100010704();
    (*(v31 + 8))(v20, v17);
    v28 = v35;
    sub_10000C2E8(v35, &qword_1000240C8, &qword_100012E38);
    (*(v36 + 8))(v24, v37);
    sub_1000059C4(v16, 0, 1, v26);
    v29 = v16;
  }

  else
  {
    if ((sub_1000106F4() & 1) == 0)
    {
      return (*(v36 + 8))(v24, v37);
    }

    sub_100010714();
    v28 = v35;
    sub_10000C2E8(v35, &qword_1000240C8, &qword_100012E38);
    (*(v36 + 8))(v24, v37);
    sub_1000059C4(v14, 0, 1, v26);
    v29 = v14;
  }

  return sub_10000BC48(v29, v28);
}

id sub_10000A434(void *a1, void *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  *&v4[*a1] = 0;
  *&v4[*a2] = 0;
  v6 = *a3;
  if (qword_1000235F8 != -1)
  {
    swift_once();
  }

  v7 = qword_100023820;
  sub_1000107A4();
  v9.receiver = v4;
  v9.super_class = a4(0);
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_10000A564(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v8 = *a5;
  v9 = sub_1000107B4();
  sub_10000C4B4(v9);
  v11 = *(v10 + 8);

  return v11(a1 + v8);
}

id sub_10000A630()
{
  v1 = [*(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD411EditorViews_posterKitViewProviding) backgroundView];

  return v1;
}

id sub_10000A6B4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD411EditorViews_posterKitViewProviding) foregroundView];

  return v1;
}

id sub_10000A738()
{
  v1 = [*(v0 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD411EditorViews_posterKitViewProviding) floatingView];

  return v1;
}

id sub_10000A7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t *a7, uint64_t (*a8)(void))
{
  v15 = *a5;
  v16 = a6(0);
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v8[v15], a2, v16);
  sub_10000C4DC();
  sub_1000059C4(v18, v19, v20, v21);
  *&v8[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD418EditingEnvironment_posterKitEnvironment] = a1;
  v22 = *a7;
  v23 = a8(0);
  sub_1000059C4(&v8[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD418EditingEnvironment_sourceAssetDirectory;
  v25 = sub_100010484();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v27(&v8[v24], a3, v25);
  v27(&v8[OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD418EditingEnvironment_targetAssetDirectory], a4, v25);
  v32.receiver = v8;
  v32.super_class = type metadata accessor for EditingEnvironment(0);
  v28 = objc_msgSendSuper2(&v32, "init");
  v29 = *(v26 + 8);
  v29(a4, v25);
  v29(a3, v25);
  (*(v17 + 8))(a2, v16);
  return v28;
}

uint64_t sub_10000AA00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_100010484();
  sub_10000C4B4(v5);
  (*(v6 + 16))(a2, v2 + v4, v5);
  sub_10000C4DC();

  return sub_1000059C4(v7, v8, v9, v10);
}

void sub_10000AAEC(uint64_t a1, uint64_t a2)
{
  v4 = [*(v2 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProviderP33_7CD6DA06E7A58C5800FB180BD1A66BD418EditingEnvironment_posterKitEnvironment) targetConfiguration];
  if (a2)
  {
    v5 = sub_100010824();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v4 setDisplayNameLocalizationKey:?];
}

id PREditor.pu_requestDismissal(with:)(unint64_t a1)
{
  if (a1 >= 2)
  {
    result = sub_100010A24();
    __break(1u);
  }

  else
  {

    return [v1 requestDismissalWithAction:a1];
  }

  return result;
}

uint64_t PREditor.px_updatePreferences(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C51C();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = sub_10000C51C();
  *(v7 + 16) = sub_10000B4C8;
  *(v7 + 24) = v6;
  v10[4] = sub_10000B4D0;
  v10[5] = v7;
  sub_10000C460();
  sub_10000C510();
  v10[2] = sub_10000C458;
  v10[3] = &unk_10001CF28;
  v8 = _Block_copy(v10);

  [v3 updatePreferences:v8];
  _Block_release(v8);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_10000AF58(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = swift_dynamicCastObjCProtocolUnconditional();
  v5 = [objc_allocWithZone(NSObject) init];
  v6 = swift_dynamicCastObjCProtocolUnconditional();
  a3(v4, v6);
}

uint64_t sub_10000B00C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, v7);

  return swift_unknownObjectRelease();
}

id sub_10000B0A0()
{
  v1 = [v0 contentOverlayView];

  return v1;
}

void sub_10000B124(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8[4] = a3;
    v8[5] = a4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10000C428;
    v8[3] = &unk_10001D010;
    v7 = _Block_copy(v8);
  }

  else
  {
    v7 = 0;
  }

  [v4 presentViewController:a1 animated:a2 & 1 completion:v7];
  _Block_release(v7);
}

uint64_t sub_10000B1FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_10000B264(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_10000C428;
    v6[3] = &unk_10001CFE8;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 dismissViewControllerAnimated:a1 & 1 completion:v5];
  _Block_release(v5);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000B4F8();
  sub_10000C3B4(&qword_100023A28);
  sub_100010754();
  return 0;
}

id sub_10000B43C()
{
  v1 = sub_100010824();

  v2 = sub_100010824();

  v3 = [v0 initWithIdentifier:v1 displayName:v2];

  return v3;
}

uint64_t sub_10000B4D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_10000B4F8()
{
  result = qword_100023A20;
  if (!qword_100023A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023A20);
  }

  return result;
}

uint64_t sub_10000B54C(uint64_t *a1, uint64_t *a2)
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

void sub_10000B5C4()
{
  sub_10000B960(319, &qword_100023B88, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10000B6F8()
{
  result = sub_1000107B4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000B7E0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B818()
{
  sub_10000B960(319, &qword_100023FD0, &type metadata accessor for AmbientPhotoFramePosterDescriptor);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10000B960(319, &qword_100023FD8, &type metadata accessor for AmbientPhotoFramePosterConfiguration);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_100010484();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10000B960(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_10000C504();
    v4 = sub_1000109C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10000B9F8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_10000C504();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000BA3C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000C340(255, a2, a3);
    sub_10000C504();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000BA7C()
{

  return _swift_deallocObject(v0, 56, 7);
}

char *sub_10000BAF8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10000597C(&qword_100024110, &unk_100012E60);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_10000EFD4((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    type metadata accessor for PRRenderingEventType(0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000BBFC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000BC48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000597C(&qword_1000240C8, &qword_100012E38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BCC0()
{
  v1 = sub_10000597C(&qword_100024100, &qword_100012E48);
  sub_10000C4B4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000BD4C()
{
  v0 = *(*(sub_10000597C(&qword_100024100, &qword_100012E48) - 8) + 80);

  return sub_100007A94();
}

uint64_t sub_10000BDB8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000BE00()
{
  sub_10000C4EC();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000BEB0;

  return sub_1000092F8(v2, v3, v4);
}

uint64_t sub_10000BEB0()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_10000C4C4();
  *v3 = v2;

  sub_10000C4F8();

  return v4();
}

uint64_t sub_10000BF98()
{
  v0 = sub_100010854();
  v2 = v1;
  if (v0 == sub_100010854() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_100010A64();
  }

  return v5 & 1;
}

BOOL sub_10000C024(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v13 = *v6;
    v9 = v13;
    v10 = a1(&v13);
    if (v3)
    {

      return v7 != 0;
    }

    v11 = v10;

    ++v6;
  }

  while ((v11 & 1) == 0);
  return v7 != 0;
}

uint64_t sub_10000C0CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_10000BF98() & 1;
}

int64_t sub_10000C0F0(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_10000C1D0(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 8 * v5);
  type metadata accessor for PRRenderingEventType(0);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_10000EFD4((v9 + 8 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

char *sub_10000C1D0(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_10000BAF8(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_10000C288(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000597C(a3, a4);
  sub_10000C4B4(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10000C2E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000597C(a2, a3);
  sub_10000C4B4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10000C340(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000C3B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000B54C(&qword_100023A30, qword_100012A90);
    sub_10000C504();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000C480(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v6 = (v5 + a1);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
}

double sub_10000C490@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  return result;
}

uint64_t sub_10000C4F8()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10000C51C()
{

  return swift_allocObject();
}

id sub_10000C534(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100010464(v3);
  v5 = v4;
  v6 = [v2 initWithPhotoLibraryURL:v4];

  v7 = sub_100010484();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

uint64_t sub_10000C5D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000597C(&qword_100024370, &qword_100012F08);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_100010954();
  sub_1000059C4(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_100012F18;
  v10[5] = v9;
  sub_10000EB38(0, 0, v7, &unk_100012F28, v10);
}

uint64_t sub_10000C6E0()
{
  sub_10000C340(0, &qword_1000240E0, OS_os_log_ptr);
  if (qword_1000235F0 != -1)
  {
    swift_once();
  }

  result = sub_1000109B4();
  qword_100024CD0 = result;
  return result;
}

id sub_10000C798()
{
  v1 = v0;
  v2 = sub_100010484();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10000FF34();
  v6 = v5 - v4;
  v7 = OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider13PosterUpdater____lazy_storage___photoLibrary;
  v8 = *(v1 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider13PosterUpdater____lazy_storage___photoLibrary);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider13PosterUpdater____lazy_storage___photoLibrary);
  }

  else
  {
    sub_10000C340(0, &qword_1000240F8, PHPhotoLibrary_ptr);
    v10 = [objc_opt_self() systemPhotoLibraryURL];
    sub_100010474();

    v11 = sub_10000C534(v6);
    v12 = *(v1 + v7);
    *(v1 + v7) = v11;
    v9 = v11;

    v8 = 0;
  }

  v13 = v8;
  return v9;
}

uint64_t sub_10000C898(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 72) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = sub_1000107B4();
  *(v6 + 48) = v7;
  v8 = *(v7 - 8);
  *(v6 + 56) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_10000C960, v5, 0);
}

void sub_10000C960()
{
  if (qword_100023608 != -1)
  {
    sub_10000FE9C();
  }

  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 72);
  v7 = qword_100024CD0;
  sub_1000107A4();
  sub_1000109A4();
  sub_10000FFBC();
  v8 = objc_autoreleasePoolPush();
  v3(&v16);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 48);
  sub_10001000C();
  sub_100010994();
  sub_10000FF98();
  v12 = sub_10000FEEC();
  v13(v12);

  sub_10000FFE0();
  sub_10000FF64();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_10000CAC4()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10000CB1C()
{
  type metadata accessor for PosterUpdater.Serializer();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_100024CD8 = v0;
  return result;
}

uint64_t sub_10000CB58(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_10000FE8C();
}

uint64_t sub_10000CB6C()
{
  sub_10000C4EC();
  if (qword_100023610 != -1)
  {
    sub_10000FECC();
  }

  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_10000CC7C;

  return (sub_10000C898)("updateDescriptors", 17, 2, sub_10000F820, v1);
}

uint64_t sub_10000CC7C()
{
  sub_10000C4EC();
  v3 = v2;
  sub_10000FF1C();
  v5 = v4;
  sub_10000FF44();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  sub_10000C4C4();
  *v10 = v9;
  *(v5 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10000CDBC, 0, 0);
  }

  else
  {
    v11 = *(v5 + 32);

    v12 = *(v9 + 8);

    return v12(v3);
  }
}

uint64_t sub_10000CDBC()
{
  sub_10000FF8C();
  v1 = *(v0 + 32);

  sub_10000C4F8();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_10000CE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v64 = a1;
  v65 = a2;
  v67 = sub_1000105D4();
  v6 = *(v67 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v67);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v49 - v11;
  sub_100010964();
  if (qword_100023608 != -1)
  {
    swift_once();
  }

  v12 = qword_100024CD0;
  sub_100010784();
  v69 = _swiftEmptyArrayStorage;
  v13 = sub_1000105C4();
  v15 = v13;
  v16 = *(v13 + 16);
  if (!v16)
  {

    v57 = _swiftEmptyArrayStorage;
    goto LABEL_35;
  }

  v56 = v3;
  v55 = 0;
  v17 = 0;
  v62 = v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v60 = v16;
  v61 = v6 + 16;
  v63 = (v6 + 8);
  v53 = v16 - 1;
  v54 = a3;
  v57 = _swiftEmptyArrayStorage;
  *&v14 = 136315138;
  v59 = v14;
  v58 = v6;
LABEL_5:
  v18 = v17;
  do
  {
    if (v18 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_46;
    }

    v17 = v18 + 1;
    (*(v6 + 16))(v66, v62 + *(v6 + 72) * v18, v67);
    v19 = sub_100010654();
    v21 = v20;
    v22 = sub_10000D874();
    v23 = *(v65 + 16);
    if (v22)
    {
      if (v23 && (sub_10000F570(v19, v21), (v29 & 1) != 0))
      {
        v30 = sub_100010964();
        if (os_log_type_enabled(v12, v30))
        {
          v31 = swift_slowAlloc();
          v51 = v30;
          v32 = v31;
          v52 = swift_slowAlloc();
          v68[0] = v52;
          *v32 = v59;
          v33 = sub_10000F000(v19, v21, v68);
          v50 = v32;
          *(v32 + 4) = v33;
          v34 = v51;
          v35 = v12;
          v36 = "Maintained %s";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v35, v34, v36, v32, 0xCu);
          sub_10000BBFC(v52);
        }
      }

      else
      {
        v37 = sub_100010964();
        if (os_log_type_enabled(v12, v37))
        {
          v38 = swift_slowAlloc();
          v51 = v37;
          v32 = v38;
          v52 = swift_slowAlloc();
          v68[0] = v52;
          *v32 = v59;
          v39 = sub_10000F000(v19, v21, v68);
          v50 = v32;
          *(v32 + 4) = v39;
          v34 = v51;
          v35 = v12;
          v36 = "Added %s";
          goto LABEL_21;
        }
      }

      v40 = v56;
      sub_10000DAD0(v19, v21, v66);
      v56 = v40;
      if (v40)
      {

        (*v63)(v66, v67);
      }

      sub_1000108B4();
      if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000108E4();
      }

      sub_1000108F4();
      v57 = v69;
      if (v55)
      {
        (*v63)(v66, v67);
LABEL_30:
        v55 = 1;
        if (v53 != v18)
        {
          goto LABEL_5;
        }

        a3 = v54;
        goto LABEL_41;
      }

      v41 = v66;
      v42 = sub_1000105A4();
      (*v63)(v41, v67);
      if ((v42 & 1) == 0)
      {
        goto LABEL_30;
      }

      v55 = 0;
      if (v53 != v18)
      {
        goto LABEL_5;
      }

LABEL_46:

      v4 = v56;
      a3 = v54;
      goto LABEL_35;
    }

    if (v23 && (sub_10000F570(v19, v21), (v24 & 1) != 0) && (v25 = sub_100010964(), os_log_type_enabled(v12, v25)))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v68[0] = v27;
      *v26 = v59;
      v28 = sub_10000F000(v19, v21, v68);

      *(v26 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v12, v25, "Removed '%s'", v26, 0xCu);
      sub_10000BBFC(v27);
      v6 = v58;
    }

    else
    {
    }

    (*v63)(v66, v67);
    v18 = v17;
  }

  while (v60 != v17);

  v4 = v56;
  a3 = v54;
  if (v55)
  {
    goto LABEL_41;
  }

LABEL_35:
  sub_100010964();
  sub_100010784();
  (*(v6 + 104))(v10, enum case for AmbientPhotoFramePosterKind.featured(_:), v67);
  v43 = sub_100010654();
  sub_10000DAD0(v43, v44, v10);
  if (!v4)
  {

    sub_1000108B4();
    if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000108E4();
    }

    sub_1000108F4();
    v57 = v69;
    (*(v6 + 8))(v10, v67);
LABEL_41:
    v46 = sub_100010964();
    result = os_log_type_enabled(v12, v46);
    v47 = v57;
    if (result)
    {

      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = sub_10000EFB0(v47);

      _os_log_impl(&_mh_execute_header, v12, v46, "Returned %ld descriptors", v48, 0xCu);
    }

    *a3 = v47;
    return result;
  }

  (*(v6 + 8))(v10, v67);
}

uint64_t sub_10000D5C8(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_10000C340(0, &qword_100024378, PRPosterDescriptor_ptr);
  v7 = sub_100010814();
  v4[6] = v7;
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[7] = v9;
  *v9 = v4;
  v9[1] = sub_10000D6CC;

  return sub_10000CB58(v7);
}

uint64_t sub_10000D6CC()
{
  sub_10000FF80();
  v2 = v0;
  sub_10000FF1C();
  v4 = v3;
  sub_10000FF44();
  *v5 = v4;
  v7 = v6[7];
  v8 = v6[6];
  v9 = v6[3];
  v10 = v6[2];
  v11 = *v1;
  sub_10000C4C4();
  *v12 = v11;

  if (v2)
  {
    v13 = sub_100010454();

    isa = 0;
    v15 = v13;
  }

  else
  {
    v16 = *(v4 + 40);
    isa = sub_1000108C4().super.isa;

    v13 = 0;
    v15 = isa;
  }

  v17 = *(v4 + 32);
  (v17)[2](v17, isa, v13);

  _Block_release(v17);
  sub_10000C4F8();

  return v18();
}

uint64_t sub_10000D874()
{
  v0 = sub_100010594();
  if (v1)
  {
    return 1;
  }

  v3 = v0;
  v4 = [sub_100010564() supportedTypes];
  LOBYTE(v5) = v4;
  if (v4)
  {
    sub_10000F69C(0, 1, 1);
    sub_10000FEBC();
    if (v7)
    {
      goto LABEL_42;
    }

    goto LABEL_11;
  }

  if ((v4 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v5 & 8) != 0)
  {
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000FE68();
      }

      sub_10000FEBC();
      if (v7)
      {
        sub_10000FE2C(v11);
        sub_100010000();
      }

      sub_10000FFF4(v11);
      *(v12 + 32) = 8;
      if ((v5 & 4) == 0)
      {
        break;
      }

LABEL_22:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000FE68();
      }

      sub_10000FEBC();
      if (v7)
      {
        sub_10000FE2C(v13);
        sub_100010000();
      }

      sub_10000FFF4(v13);
      *(v14 + 32) = 4;
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }

LABEL_27:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000FE68();
      }

      v16 = *(&_swiftEmptyArrayStorage + 2);
      v15 = *(&_swiftEmptyArrayStorage + 3);
      v5 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        sub_10000F69C((v15 > 1), v16 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v5;
      *(&_swiftEmptyArrayStorage + v16 + 4) = 16;
LABEL_32:
      v17 = 0;
      while (1)
      {
        v6 = *(&_swiftEmptyArrayStorage + 2);
        if (v17 >= v6)
        {
          break;
        }

        if ((*(&_swiftEmptyArrayStorage + v17 + 4) & ~v3) == 0)
        {
          v18 = sub_10000C798();
          v19 = sub_100010554();

          if (v19)
          {
            v2 = 1;
            goto LABEL_39;
          }
        }

        if (v5 == ++v17)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_42:
      sub_10000FE2C(v6);
      sub_100010000();
LABEL_11:
      sub_10000FFF4(v6);
      *(v8 + 32) = 1;
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000FE68();
      }

      sub_10000FEBC();
      if (v7)
      {
        sub_10000FE2C(v9);
        sub_100010000();
      }

      sub_10000FFF4(v9);
      *(v10 + 32) = 2;
      if ((v5 & 8) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    if ((v5 & 4) != 0)
    {
      goto LABEL_22;
    }
  }

  if ((v5 & 0x10) != 0)
  {
    goto LABEL_27;
  }

LABEL_8:
  v5 = *(&_swiftEmptyArrayStorage + 2);
  if (v5)
  {
    goto LABEL_32;
  }

LABEL_37:
  v2 = 0;
LABEL_39:

  return v2;
}

uint64_t sub_10000DAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = 0xE90000000000006CLL;
  v6 = sub_1000106D4();
  v7 = sub_10000FE54(v6);
  v73 = v8;
  v74 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_10000FF34();
  v69 = v12 - v11;
  v13 = sub_100010744();
  v14 = sub_10000FE54(v13);
  v71 = v15;
  v72 = v14;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v14);
  v63 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v64 = &v58 - v20;
  v68 = sub_100010484();
  v21 = sub_10000FE54(v68);
  v65 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_10000FF34();
  v27 = v26 - v25;
  v28 = sub_1000105D4();
  v29 = sub_10000FE54(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v29);
  v36 = &v58 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v58 - v37;
  v61 = sub_100010574();
  v60 = sub_100010584();
  v59 = sub_1000105A4();
  sub_10000C340(0, &qword_100024350, PRMutablePosterDescriptor_ptr);

  v66 = a1;
  v67 = a2;
  v39 = sub_10000E17C();
  v40 = enum case for AmbientPhotoFramePosterKind.people(_:);
  (*(v31 + 104))(v38, enum case for AmbientPhotoFramePosterKind.people(_:), v28);
  v58 = sub_1000105B4();
  (*(v31 + 8))(v38, v28);
  v62 = *(v31 + 16);
  v62(v36, a3, v28);
  v41 = (*(v31 + 88))(v36, v28);
  if (v41 == enum case for AmbientPhotoFramePosterKind.featured(_:))
  {
    v42 = 0xD00000000000002CLL;
    v43 = "ME_DESCRIPTOR_TITLE_PETS";
LABEL_5:
    sub_10000F7BC(v42, v43 | 0x8000000000000000, v39);
    goto LABEL_6;
  }

  if (v41 == enum case for AmbientPhotoFramePosterKind.nature(_:))
  {
    v43 = "ME_DESCRIPTOR_TITLE_CITIES";
    v42 = 0xD00000000000002ALL;
    goto LABEL_5;
  }

  if (v41 == enum case for AmbientPhotoFramePosterKind.pets(_:))
  {
    v75 = 0xED00006C6C69662ELL;
    v42 = 0xD000000000000028;
    v43 = "ME_DESCRIPTOR_TITLE_PEOPLE";
    goto LABEL_5;
  }

  if (v41 == enum case for AmbientPhotoFramePosterKind.cities(_:))
  {
    v75 = 0xED00006C6C69662ELL;
    v43 = "le.fill.badge.checkmark";
LABEL_18:
    v42 = 0xD00000000000002ALL;
    goto LABEL_5;
  }

  if (v41 == v40)
  {
    v43 = "ME_DESCRIPTOR_TITLE_NATURE";
    v75 = 0xEB000000006C6C69;
    goto LABEL_18;
  }

  if (v41 != enum case for AmbientPhotoFramePosterKind.album(_:))
  {
    result = sub_100010A24();
    __break(1u);
    return result;
  }

  v75 = 0x8000000100018D10;
LABEL_6:
  v44 = sub_100010824();

  if (v58)
  {
    v45 = sub_100010824();
  }

  else
  {
    v45 = 0;
  }

  PPConfigureAmbientPosterDescriptor(v39, v59 & 1, v61 & 1, v60 & 1, v44, v45);

  v46 = v39;
  v47 = [v46 assetDirectory];
  sub_100010474();

  v48 = sub_10000C798();
  v49 = v64;
  sub_100010734();

  v50 = v28;
  v51 = v49;
  v62(v38, a3, v50);
  v52 = v71;
  v53 = v49;
  v54 = v72;
  (*(v71 + 16))(v63, v53, v72);

  sub_100010664();
  v55 = v69;
  sub_100010694();
  v56 = v70;
  sub_1000106C4();
  if (v56)
  {
  }

  (*(v73 + 8))(v55, v74);
  (*(v52 + 8))(v51, v54);
  (*(v65 + 8))(v27, v68);
  return v46;
}

id sub_10000E17C()
{
  v0 = sub_100010824();

  v1 = [swift_getObjCClassFromMetadata() mutableDescriptorWithIdentifier:v0];

  return v1;
}

uint64_t sub_10000E1F4()
{
  sub_10000C4EC();
  if (qword_100023610 != -1)
  {
    sub_10000FECC();
  }

  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_10000E304;

  return sub_10000C898("updateConfiguration", 19, 2, sub_10000E858, v2);
}

uint64_t sub_10000E304()
{
  sub_10000C4EC();
  v3 = v2;
  sub_10000FF1C();
  v5 = v4;
  sub_10000FF44();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  sub_10000C4C4();
  *v10 = v9;

  if (v0)
  {
  }

  else
  {
    v12 = *(v5 + 24);

    v13 = *(v9 + 8);

    return v13(v3);
  }
}

uint64_t sub_10000E448(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  sub_10000FF54();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = a3;
  v14 = a4;
  v15 = a1;

  return sub_10000C5D0(a7, v12);
}

id sub_10000E4CC()
{
  *&v0[OBJC_IVAR____TtC31AmbientPhotoFramePosterProvider13PosterUpdater____lazy_storage___photoLibrary] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterUpdater();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_10000E50C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_10000E5D8;

  return sub_10000E1E0(v8);
}

uint64_t sub_10000E5D8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;
  sub_10000C4C4();
  *v11 = v10;

  v12 = *(v5 + 40);
  if (v3)
  {
    v13 = sub_100010454();

    (v12)[2](v12, 0, v13);

    _Block_release(v12);
  }

  else
  {
    (v12)[2](*(v5 + 40), a1, 0);
    _Block_release(v12);
  }

  v14 = *(v10 + 8);

  return v14();
}

id sub_10000E7CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterUpdater();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000E858@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_10000E888(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000FE04;

  return v7();
}

uint64_t sub_10000E970(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000EA58;

  return v8();
}

uint64_t sub_10000EA58()
{
  sub_10000FF8C();
  sub_10000FF1C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10000C4C4();
  *v4 = v3;

  sub_10000C4F8();

  return v5();
}

uint64_t sub_10000EB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000597C(&qword_100024370, &qword_100012F08);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10000FAD4(a3, v25 - v11);
  v13 = sub_100010954();
  if (sub_10000BAD0(v12, 1, v13) == 1)
  {
    sub_10000FB44(v12);
  }

  else
  {
    sub_100010944();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_100010904();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100010864() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000FB44(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000FB44(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000EDD4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000EECC;

  return v7(a1);
}

uint64_t sub_10000EECC()
{
  sub_10000FF8C();
  sub_10000FF1C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10000C4C4();
  *v4 = v3;

  sub_10000C4F8();

  return v5();
}

uint64_t sub_10000EFB0(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

char *sub_10000EFD4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[8 * a2] <= __dst)
  {
    return memmove(__dst, __src, 8 * a2);
  }

  return __src;
}

uint64_t sub_10000F000(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000F0C4(v11, 0, 0, 1, a1, a2);
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
    sub_10000F83C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_10000BBFC(v11);
  return v7;
}

unint64_t sub_10000F0C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000F1C4(a5, a6);
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
    result = sub_100010A14();
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

char *sub_10000F1C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000F210(a1, a2);
  sub_10000F328(&off_10001CB68);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000F210(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_100010894())
  {
    result = sub_10000F40C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1000109E4();
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
          result = sub_100010A14();
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

uint64_t sub_10000F328(uint64_t result)
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

    result = sub_10000F47C(result, v8, 1, v3);
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

void *sub_10000F40C(uint64_t a1, uint64_t a2)
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

  sub_10000597C(&unk_100024360, &qword_100012EF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10000F47C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000597C(&unk_100024360, &qword_100012EF0);
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

unint64_t sub_10000F570(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100010A84();
  sub_100010874();
  v6 = sub_100010A94();

  return sub_10000F5E8(a1, a2, v6);
}

unint64_t sub_10000F5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_100010A64() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

char *sub_10000F69C(char *a1, int64_t a2, char a3)
{
  result = sub_10000F6BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000F6BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000597C(&qword_100024358, &qword_100012EE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_10000F7BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100010824();

  [a3 setDisplayNameLocalizationKey:v4];
}

uint64_t sub_10000F83C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000F89C()
{
  sub_10000FF80();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10000FF28(v5);
  *v6 = v7;
  v8 = sub_10000FE08(v6);

  return v9(v8);
}

uint64_t sub_10000F93C()
{
  sub_10000FF80();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10000FF28(v5);
  *v6 = v7;
  v8 = sub_10000FE08(v6);

  return v9(v8);
}

uint64_t sub_10000F9D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = sub_10000FF54();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10000FA10()
{
  sub_10000FF80();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = sub_10000FF28(v7);
  *v8 = v9;
  v8[1] = sub_10000FE04;

  return sub_10000E970(v2, v3, v4, v6);
}

uint64_t sub_10000FAD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000597C(&qword_100024370, &qword_100012F08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FB44(uint64_t a1)
{
  v2 = sub_10000597C(&qword_100024370, &qword_100012F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000FBAC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000FBE4()
{
  sub_10000C4EC();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10000FF28(v3);
  *v4 = v5;
  v6 = sub_10000FEFC(v4);

  return v7(v6);
}

uint64_t sub_10000FC7C()
{
  sub_10000C4EC();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10000FF28(v3);
  *v4 = v5;
  v6 = sub_10000FEFC(v4);

  return v7(v6);
}

uint64_t sub_10000FD14()
{
  _Block_release(*(v0 + 32));

  v1 = sub_10000FF54();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000FD5C()
{
  sub_10000FF80();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10000FF28(v5);
  *v6 = v7;
  v8 = sub_10000FE08(v6);

  return v9(v8);
}

uint64_t sub_10000FE08(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

char *sub_10000FE2C@<X0>(int64_t a1@<X8>)
{

  return sub_10000F69C((v1 > 1), a1, 1);
}

char *sub_10000FE68()
{
  v2 = *(v0 + 16) + 1;

  return sub_10000F69C(0, v2, 1);
}

uint64_t sub_10000FE9C()
{

  return swift_once();
}

uint64_t sub_10000FECC()
{

  return swift_once();
}

uint64_t sub_10000FEFC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_10000FF98()
{

  return sub_100010794();
}

uint64_t sub_10000FFBC()
{

  return sub_100010794();
}

void sub_10001000C()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 72);

  objc_autoreleasePoolPop(v1);
}

void PPConfigureAmbientPosterDescriptor(void *a1, unsigned int a2, int a3, int a4, void *a5, void *a6)
{
  v14 = a1;
  v11 = a5;
  v12 = a6;
  if (objc_opt_respondsToSelector())
  {
    [v14 setAmbientSupportedDataLayout:1];
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [objc_alloc(NSClassFromString(@"PRMutablePosterAmbientConfiguration")) initWithSupportedDataLayout:1 creationBehavior:a2 editingBehavior:a3 ^ 1u deletionBehavior:a4 ^ 1u];
    if (objc_opt_respondsToSelector())
    {
      [v13 setDisplayNameSystemSymbolName:v11];
    }

    if (objc_opt_respondsToSelector())
    {
      [v13 setNeedsAuthentication:1];
    }

    if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v13 setEditingSystemSymbolName:v12];
    }

    [v14 setAmbientConfiguration:v13];
  }
}

void PPPosterPreferencesSetHideChrome(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 setHideChrome:a2];
  }
}

id PPPosterPreferencesIsChromeHidden(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 hideChrome];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PPAmbientPosterEnvironmentFromRenderingEnvironment(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 ambientEnvironment];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PPPosterTitleAlignmentFromEnvironment(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 titleAlignment];
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

uint64_t PPPosterBoundingShapeFromEnvironment(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 boundingShape];
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

void PPPresentTitledViewControllerInEditor(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 presentTitledViewController:v4 animated:1 completion:0];
  }

  else
  {
    [v3 presentViewController:v4 animated:1 completion:0];
  }
}

double PPSafeAreaBoundsForEditor(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 safeAreaBounds];
    x = v2;
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  return x;
}