uint64_t NoticePresenter.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter);
  sub_1004D86BC();

  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return sub_10031CF38(v5 + v3, a1);
}

uint64_t sub_10031D374@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter);
  sub_1004D86BC();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return sub_10031CF38(v3 + v4, a2);
}

uint64_t sub_10031D43C(uint64_t a1, uint64_t a2)
{
  sub_10031CF38(a2, v6);
  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_10031CF38(a1 + v3, v5);
  swift_beginAccess();
  sub_100320C38(v6, a1 + v3);
  swift_endAccess();
  sub_10031CF70(v5);
  sub_100320B60(v5);
  return sub_100320B60(v6);
}

void (*NoticePresenter.configuration.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter);
  sub_1004D86BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004D86DC();

  v4[7] = sub_10031D12C(v4);
  return sub_10031D624;
}

uint64_t NoticePresenter.willPresentHandler.getter()
{
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter);
  sub_1004D86BC();

  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_10000DE64(*v1);
  return v2;
}

uint64_t sub_10031D764@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter);
  sub_1004D86BC();

  v4 = (v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1003226E0;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_10000DE64(v5);
}

uint64_t sub_10031D870(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100322680;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10000DE64(v1);
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter);
  sub_1004D86AC();
  sub_10000DE74(v4);
}

uint64_t sub_10031D9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a2;
  v5[1] = a3;
  sub_10000DE64(a2);
  return sub_10000DE74(v6);
}

void (*NoticePresenter.willPresentHandler.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter);
  sub_1004D86BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004D86DC();

  v4[7] = sub_10031D630();
  return sub_10031DB88;
}

void *sub_10031DB94()
{
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter);
  sub_1004D86BC();

  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  v2 = v1;
  return v1;
}

id sub_10031DC44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter);
  sub_1004D86BC();

  v4 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *a2 = v4;

  return v4;
}

void sub_10031DD04(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for NoticePresenter.PassthroughWindow();
      v6 = v5;
      v7 = a1;
      v8 = sub_1004DE5FC();

      if (v8)
      {
        v9 = *(v2 + v4);
        goto LABEL_8;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter);
    sub_1004D86AC();

    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v7 = 0;
LABEL_8:
  *(v2 + v4) = a1;
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter);
  v11 = v7;
  sub_1004D86BC();

  if (v9)
  {
    v12 = *(v2 + v4);
    if (!v12 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v13 = v12, v9 = v9, v14 = sub_1004DE5FC(), v9, v13, (v14 & 1) == 0))
    {
      [v9 resignKeyWindow];
    }
  }

  else
  {
  }
}

void sub_10031DF4C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v5 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow) = a2;
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter);
  v6 = a2;
  sub_1004D86BC();

  if (v5)
  {
    v7 = *(a1 + v4);
    if (!v7 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v8 = v7, v5 = v5, v9 = sub_1004DE5FC(), v5, v8, (v9 & 1) == 0))
    {
      [v5 resignKeyWindow];
    }
  }
}

uint64_t NoticePresenter.deinit()
{
  sub_10001074C(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &qword_10063F9A8);

  sub_100320B60(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  sub_10000DE74(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = sub_1004D86FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NoticePresenter.__deallocating_deinit()
{
  sub_10001074C(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &qword_10063F9A8);

  sub_100320B60(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  sub_10000DE74(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = sub_1004D86FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t View.noticePresenting(_:configurator:)()
{
  sub_100004CB8(&qword_10063F6E8);
  sub_1004DB9DC();
  sub_1004DB6EC();
}

__n128 NoticePresentingResolverModifier.init(noticePresenter:configurator:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_100004CB8(&qword_10063F6E8);
  sub_1004DB9DC();
  result = v13;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v13;
  return result;
}

uint64_t NoticePresentingResolverModifier.noticePresenter.getter()
{
  sub_100004CB8(&qword_10063F9B8);
  sub_1004DBB5C();
  return v1;
}

void (*NoticePresentingResolverModifier.noticePresenter.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v3[10] = *v1;
  v3[11] = v6;
  v7 = v1[2];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_100321B00((v3 + 6), (v3 + 3));

  sub_1000108DC((v4 + 7), (v4 + 3), &qword_10063F9C0);
  v4[13] = sub_100004CB8(&qword_10063F9B8);
  sub_1004DBB5C();
  return sub_10031E544;
}

void sub_10031E544(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v2[3] = *(*a1 + 80);
  v2[9] = v2[8];
  v4 = v2[12];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    sub_1004DBB6C();
    sub_100321B5C((v2 + 6));

    sub_10001074C((v2 + 7), &qword_10063F9C0);
  }

  else
  {
    sub_1004DBB6C();
    sub_100321B5C((v2 + 6));

    sub_10001074C((v2 + 7), &qword_10063F9C0);
  }

  free(v2);
}

uint64_t NoticePresentingResolverModifier.$noticePresenter.getter()
{
  sub_100004CB8(&qword_10063F9B8);
  sub_1004DBB7C();
  return v1;
}

uint64_t NoticePresentingResolverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = sub_100004CB8(&qword_10063F9C8);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = sub_1004DBD1C();
  v10 = v9;
  v12 = v2[6];
  v28[0] = v2[5];
  v11 = v28[0];
  v28[1] = v12;
  sub_100004CB8(&qword_10063F6F8);
  sub_1004DBA0C();
  v22 = v26;
  v13 = v27;
  v14 = sub_100004CB8(&qword_10063F9D0);
  (*(*(v14 - 8) + 16))(v7, a1, v14);
  v15 = &v7[*(v5 + 36)];
  *v15 = v22;
  *(v15 + 2) = v13;
  *(v15 + 3) = v8;
  *(v15 + 4) = v10;
  *&v26 = v11;
  *(&v26 + 1) = v12;
  sub_1004DB9EC();
  v16 = v28[0];
  v25 = v28[0];
  *&v26 = v12;
  v17 = *v3;
  v18 = v3[3];
  v29 = v3[2];
  v30 = v17;
  v28[0] = v11;
  v19 = swift_allocObject();
  v20 = *(v3 + 1);
  *(v19 + 16) = *v3;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v3 + 2);
  *(v19 + 64) = v3[6];
  sub_100321B00(&v30, v24);

  sub_1000108DC(&v29, v24, &qword_10063F9C0);
  sub_10000DE64(v18);
  sub_1000108DC(v28, v24, &qword_10063F6E8);
  sub_1000108DC(&v26, v24, &qword_10063F9D8);
  sub_100004CB8(&qword_10063F6E8);
  sub_100321C20();
  sub_1003195FC();
  sub_1004DB70C();

  return sub_10001074C(v7, &qword_10063F9C8);
}

uint64_t sub_10031E924(uint64_t a1, void **a2, __int128 *a3)
{
  v4 = *a2;
  v5 = *(a3 + 3);
  if (!v5)
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (!v4)
  {
    goto LABEL_6;
  }

  sub_10000DE64(*(a3 + 3));
  v6 = v4;
  v7 = UIWindowScene.noticePresenter.getter();
  swift_getKeyPath();
  *&v12 = v7;
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter);
  sub_1004D86BC();

  v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_10031CF38(v7 + v8, &v12);

  v5(&v12);
  UIWindowScene.noticePresenter.getter();
  sub_10031CF38(&v12, v11);
  NoticePresenter.configuration.setter(v11);
  sub_10000DE74(v5);

  sub_100320B60(&v12);
LABEL_5:
  v9 = UIWindowScene.noticePresenter.getter();
LABEL_7:
  v12 = *a3;
  v13 = *(a3 + 2);
  v11[0] = v9;
  sub_100004CB8(&qword_10063F9B8);
  return sub_1004DBB6C();
}

uint64_t UIWindowScene.noticePresenter.getter()
{
  UIWindowScene.noticePresenting.getter(v5);
  if (!v6)
  {
    sub_10001074C(v5, &qword_10063F9F0);
    goto LABEL_5;
  }

  sub_100004CB8(&qword_10063F9F8);
  type metadata accessor for NoticePresenter();
  if (!swift_dynamicCast())
  {
LABEL_5:
    v1 = type metadata accessor for NoticePresenter();
    v0 = swift_allocObject();
    NoticePresenter.init()();
    v6 = v1;
    v7 = &protocol witness table for NoticePresenter;
    v5[0] = v0;

    UIWindowScene.noticePresenting.setter(v5);
    swift_getKeyPath();
    v5[0] = v0;
    sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter);
    sub_1004D86BC();

    v5[0] = v0;
    swift_getKeyPath();
    sub_1004D86DC();

    v2 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
    swift_beginAccess();
    sub_10031CF38(v0 + v2, v5);
    swift_unknownObjectWeakAssign();
    sub_10031CF38(v0 + v2, v4);
    swift_beginAccess();
    sub_100320C38(v5, v0 + v2);
    swift_endAccess();
    sub_10031CF70(v4);
    sub_100320B60(v4);
    sub_100320B60(v5);
    v5[0] = v0;
    swift_getKeyPath();
    sub_1004D86CC();

    return v0;
  }

  return v4[0];
}

__n128 sub_10031ED24@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_100004CB8(&qword_10063FC98);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  *v5 = sub_1004DA90C();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_100004CB8(&qword_10063FCA0);
  sub_10031EE80(v1, &v5[*(v6 + 44)]);
  sub_1004DBD1C();
  sub_1004DA45C();
  sub_100047F38(v5, a1, &qword_10063FC98);
  v7 = a1 + *(sub_100004CB8(&qword_10063FCA8) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_10031EE80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v95 = a2;
  v93 = sub_100004CB8(&qword_10063FCB0);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v4 = &KeyPath - v3;
  v5 = sub_100004CB8(&qword_10063F9A8);
  __chkstk_darwin(v5 - 8);
  v7 = &KeyPath - v6;
  v8 = type metadata accessor for Notice(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004CB8(&qword_10063FCB8);
  __chkstk_darwin(v12 - 8);
  v14 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v87 = &KeyPath - v16;
  v88 = a1[4];
  sub_1004DBD1C();
  sub_1004D9F5C();
  v92 = v100;
  v91 = v102;
  v90 = v104;
  v89 = v105;
  v114 = 1;
  v113 = v101;
  v112 = v103;
  v17 = a1[1];
  v86 = *a1;
  v106 = v86;
  v107 = v17;
  v85 = v17;
  sub_100004CB8(&qword_10063FCC0);
  sub_1004DB9EC();
  v18 = v99;
  swift_getKeyPath();
  v106 = v18;
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter);
  sub_1004D86BC();

  v19 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_1000108DC(v18 + v19, v7, &qword_10063F9A8);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001074C(v7, &qword_10063F9A8);
    v20 = 1;
    v21 = v87;
    v22 = v93;
  }

  else
  {
    v84 = v11;
    sub_100322178(v7, v11);
    sub_1003221DC(v11, v4);
    v23 = type metadata accessor for NoticeView(0);
    v24 = &v4[v23[5]];
    *v24 = swift_getKeyPath();
    *(v24 + 1) = 0;
    *(v24 + 8) = 0;
    v25 = &v4[v23[6]];
    v111 = 0x3FF0000000000000;
    sub_1004DB9DC();
    v26 = v107;
    *v25 = v106;
    *(v25 + 1) = v26;
    v27 = &v4[v23[7]];
    LOBYTE(v111) = 0;
    sub_1004D9E8C();
    v28 = v107;
    v29 = v108;
    *v27 = v106;
    *(v27 + 1) = v28;
    *(v27 + 1) = v29;
    v30 = &v4[v23[8]];
    LOBYTE(v111) = 0;
    sub_1004DB9DC();
    v31 = v107;
    *v30 = v106;
    *(v30 + 1) = v31;
    LOBYTE(v30) = sub_1004DAF5C();
    sub_1004D9C8C();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = &v4[*(sub_100004CB8(&qword_10063FCD0) + 36)];
    *v40 = v30;
    *(v40 + 1) = v33;
    *(v40 + 2) = v35;
    *(v40 + 3) = v37;
    *(v40 + 4) = v39;
    v40[40] = 0;
    LOBYTE(v30) = sub_1004DAF7C();
    sub_1004D9C8C();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = &v4[*(sub_100004CB8(&qword_10063FCD8) + 36)];
    *v49 = v30;
    *(v49 + 1) = v42;
    *(v49 + 2) = v44;
    *(v49 + 3) = v46;
    *(v49 + 4) = v48;
    v49[40] = 0;
    LOBYTE(v30) = sub_1004DAF8C();
    sub_1004D9C8C();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = &v4[*(sub_100004CB8(&qword_10063FCE0) + 36)];
    *v58 = v30;
    *(v58 + 1) = v51;
    *(v58 + 2) = v53;
    *(v58 + 3) = v55;
    *(v58 + 4) = v57;
    v58[40] = 0;
    sub_1004D9F9C();
    sub_1004DBD3C();
    sub_1004D9FBC();

    sub_1004DBE7C();
    sub_1004D9F8C();
    sub_1004DBD3C();
    sub_1004D9FBC();

    sub_1004DBE7C();
    sub_1004D9F8C();
    sub_1004DBD3C();
    sub_1004D9FBC();

    sub_1004D9F7C();

    v59 = sub_1004D9FAC();

    *&v4[*(sub_100004CB8(&qword_10063FCE8) + 36)] = v59;
    KeyPath = swift_getKeyPath();
    v111 = v85;
    sub_1004DDA4C();

    sub_1000108DC(&v111, &v106, &qword_10063FCF0);
    v60 = sub_1004DDA3C();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = &protocol witness table for MainActor;
    v62 = *(a1 + 1);
    *(v61 + 32) = *a1;
    *(v61 + 48) = v62;
    *(v61 + 64) = *(a1 + 2);

    sub_1000108DC(&v111, &v106, &qword_10063FCF0);
    v63 = sub_1004DDA3C();
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = &protocol witness table for MainActor;
    v65 = *(a1 + 1);
    *(v64 + 32) = *a1;
    *(v64 + 48) = v65;
    *(v64 + 64) = *(a1 + 2);
    sub_1004DBB8C();
    sub_10025AD60(v84);
    v66 = v106;
    v67 = v107;
    v68 = v108;
    v69 = v93;
    v70 = &v4[*(v93 + 36)];
    *v70 = KeyPath;
    *(v70 + 1) = v66;
    *(v70 + 2) = v67;
    v70[24] = v68;
    v21 = v87;
    sub_100047F38(v4, v87, &qword_10063FCB0);
    v20 = 0;
    v22 = v69;
  }

  (*(v94 + 56))(v21, v20, 1, v22);
  sub_1004DBD1C();
  sub_1004D9F5C();
  v94 = v106;
  v93 = v108;
  v88 = v109;
  v87 = v110;
  v98 = 1;
  v97 = v107;
  v96 = BYTE8(v108);
  v71 = v114;
  v72 = v113;
  v73 = v112;
  sub_1000108DC(v21, v14, &qword_10063FCB8);
  v74 = v98;
  v75 = v97;
  v76 = v96;
  v77 = v95;
  *v95 = 0;
  *(v77 + 8) = v71;
  v77[2] = v92;
  *(v77 + 24) = v72;
  v77[4] = v91;
  *(v77 + 40) = v73;
  v78 = v89;
  v77[6] = v90;
  v77[7] = v78;
  v79 = sub_100004CB8(&qword_10063FCC8);
  sub_1000108DC(v14, v77 + *(v79 + 48), &qword_10063FCB8);
  v80 = v77 + *(v79 + 64);
  *v80 = 0;
  v80[8] = v74;
  *(v80 + 2) = v94;
  v80[24] = v75;
  *(v80 + 4) = v93;
  v80[40] = v76;
  v81 = v87;
  *(v80 + 6) = v88;
  *(v80 + 7) = v81;
  sub_10001074C(v21, &qword_10063FCB8);
  return sub_10001074C(v14, &qword_10063FCB8);
}

uint64_t sub_10031F8FC@<X0>(__int128 *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = sub_100004CB8(&qword_10063F9A8);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v11 = *a1;
  sub_100004CB8(&qword_10063FCC0);
  sub_1004DB9EC();
  v7 = v12;
  swift_getKeyPath();
  *&v11 = v7;
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter);
  sub_1004D86BC();

  v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_1000108DC(v7 + v8, v6, &qword_10063F9A8);

  v9 = type metadata accessor for Notice(0);
  LOBYTE(v8) = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  result = sub_10001074C(v6, &qword_10063F9A8);
  *a2 = v8;
  return result;
}

_BYTE *sub_10031FABC(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    sub_100004CB8(&qword_10063FCC0);
    sub_1004DB9EC();
    NoticePresenter.dismiss(_:)(1);
  }

  return result;
}

void NoticePresenter.Configuration.insets.setter(double a1, double a2, double a3, double a4)
{
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
}

id sub_10031FBB0(uint64_t a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for NoticePresenter.PassthroughWindow();
  result = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  if (*(v3 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) != 1)
  {
    goto LABEL_6;
  }

  if (result)
  {
    v8 = result;
    v9 = [v3 rootViewController];
    result = v8;
    if (!v9)
    {
      goto LABEL_6;
    }

    result = [v9 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = [v8 isDescendantOfView:result];

    result = v8;
    if ((v11 & 1) == 0)
    {
LABEL_6:

      return 0;
    }
  }

  return result;
}

id sub_10031FEB4(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration;
  swift_beginAccess();
  sub_100320C38(a1, v4);
  swift_endAccess();
  if (![v1 isViewLoaded])
  {
    return sub_100320B60(a1);
  }

  sub_1004DAF9C();
  v5 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(*(v4 + 16));
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1004DA9CC();
  v13[2] = v5;
  *(v13 + 3) = v7;
  *(v13 + 4) = v9;
  *(v13 + 5) = v11;
  v12(&v17, 0);
  result = [v1 view];
  if (result)
  {
    v15 = result;
    [result setNeedsLayout];

    result = [v2 view];
    if (result)
    {
      v16 = result;
      [result layoutIfNeeded];

      return sub_100320B60(a1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10032013C()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  v6 = &v1[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  sub_1004DAF9C();
  v7 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v6[2]);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1004DA9CC();
  v15[2] = v7;
  *(v15 + 3) = v9;
  *(v15 + 4) = v11;
  *(v15 + 5) = v13;
  v14(v22, 0);
  v16 = [v1 view];
  if (!v16)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v17 = v16;
  v18 = [v2 view];
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = v18;
  [v17 addSubview:v18];

  v20 = [v2 view];
  if (v20)
  {
    v21 = v20;
    [v20 layoutIfNeeded];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100320350()
{
  v42.receiver = v0;
  v42.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v42, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  [v1 bounds];

  v3 = &v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  v4 = [v0 view];
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 effectiveUserInterfaceLayoutDirection];

  sub_1004DE40C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1003222E4;
  *(v16 + 24) = v15;
  aBlock[4] = sub_100107FC0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000121E8;
  aBlock[3] = &unk_1005EEC70;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  [v14 performWithoutAnimation:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = *&v18[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  sub_1004DA97C();
  v22 = v21;
  v23 = [v18 traitCollection];
  [v23 displayScale];

  v40 = v22;
  sub_1004DE3CC();
  MinX = v24;
  MinY = v26;
  v29 = v28;
  v31 = v30;
  v32 = v7;
  v33 = v9;
  v34 = v11;
  v35 = v13;
  if (v3[8] > 1u)
  {
    if (v3[8] == 2)
    {
      MaxY = CGRectGetMaxY(*&v32);
      v43.origin.x = MinX;
      v43.origin.y = MinY;
      v43.size.width = v29;
      v43.size.height = v31;
      MinY = MaxY - CGRectGetHeight(v43);
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v32);
      v44.origin.x = MinX;
      v44.origin.y = MinY;
      v44.size.width = v29;
      v44.size.height = v31;
      MinX = MaxX - CGRectGetWidth(v44);
    }
  }

  else if (v3[8])
  {
    MinX = CGRectGetMinX(*&v32);
  }

  else
  {
    MinY = CGRectGetMinY(*&v32);
  }

  v38 = [v20 view];
  if (v38)
  {
    v39 = v38;
    [v38 setFrame:{MinX, MinY, v29, v31}];

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_100320728(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

id sub_100320864(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id UIView.noticePresenter.getter()
{
  result = [v0 window];
  if (result)
  {
    v2 = result;
    v3 = [result windowScene];

    if (v3)
    {
      v4 = UIWindowScene.noticePresenter.getter();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id UIViewController.noticePresenter.getter()
{
  if ([v0 isViewLoaded])
  {
    result = [v0 view];
    if (result)
    {
      v2 = result;
      v3 = [result window];
      if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5))
      {
        v6 = UIWindowScene.noticePresenter.getter();

        return v6;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    result = [v0 parentViewController];
    if (result)
    {
      v7 = result;
      v8 = UIViewController.noticePresenter.getter();

      return v8;
    }
  }

  return result;
}

uint64_t _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (v5)
    {
      sub_100006F10(0, &qword_10063F778);
      v7 = sub_1004DE5FC();

      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v5)
  {

    goto LABEL_11;
  }

LABEL_7:
  v8 = sub_1004DAFAC();
  if (v8 != sub_1004DAFAC() || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_11;
  }

  v9 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 24), *(a2 + 24)), vceqq_f64(*(a1 + 40), *(a2 + 40)))));
  return v9 & 1;
}

uint64_t type metadata accessor for NoticePresenter()
{
  result = qword_10063FA28;
  if (!qword_10063FA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100320CE4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10031DD04(v1);
}

uint64_t sub_100320D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100004CB8(&qword_10063F9A8);
  __chkstk_darwin(v8 - 8);
  v10 = (&v20 - v9);
  v11 = sub_100004CB8(&qword_10063FCF8);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1000108DC(a1, &v20 - v12, &qword_10063F9A8);
  sub_1000108DC(a2, &v13[v15], &qword_10063F9A8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1000108DC(v13, v10, &qword_10063F9A8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_100322178(&v13[v15], v7);
      v18 = static Notice.== infix(_:_:)(v10, v7);
      sub_10025AD60(v7);
      sub_10025AD60(v10);
      sub_10001074C(v13, &qword_10063F9A8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_10025AD60(v10);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_10001074C(v13, &qword_10063FCF8);
    v17 = 1;
    return v17 & 1;
  }

  sub_10001074C(v13, &qword_10063F9A8);
  v17 = 0;
  return v17 & 1;
}

char *sub_100320FBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1004DAEAC();
  __chkstk_darwin(v6 - 8);
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController__noticePresenter] = a1;
  v7 = &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  sub_10031CF38(a2, &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration]);
  swift_beginAccess();
  swift_retain_n();
  sub_1004DAF9C();
  v8 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v7[2]);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v30 = a1;
  type metadata accessor for NoticePresenter();
  sub_1004DB9DC();
  v26 = v8;
  v27 = v10;
  v28 = v12;
  v29 = v14;
  v15 = objc_allocWithZone(sub_100004CB8(&qword_10063FD00));
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController] = sub_1004DA9BC();
  v25.receiver = v3;
  v25.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  v16 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  v17 = OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController;
  v18 = *&v16[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v19 = v16;
  v20 = v18;
  sub_1004DAE8C();
  sub_1004DA98C();

  v21 = *&v16[v17];
  v22 = v19;
  [v22 addChildViewController:v21];
  v23 = *&v16[v17];
  [v23 didMoveToParentViewController:v22];

  sub_100320B60(a2);
  return v22;
}

_BYTE *_s11MusicCoreUI15NoticePresenterC7present_12internalOnlyy0aB00D0V_SbtF_0(uint64_t a1, char a2)
{
  v3 = v2;
  v50 = a1;
  v48 = sub_1004DBF2C();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v44 - v9;
  v11 = sub_1004DBEBC();
  __chkstk_darwin(v11);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Notice(0);
  v14 = *(v49 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v49);
  if ((a2 & 1) == 0 || (result = DeviceCapabilities.isInternalInstall.unsafeMutableAddressor(), *result == 1))
  {
    v44[1] = v11;
    v44[2] = v13;
    v45 = v7;
    v46 = v10;
    v47 = v5;
    swift_getKeyPath();
    aBlock = v3;
    sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter);
    sub_1004D86BC();

    v17 = (v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
    swift_beginAccess();
    v18 = *v17;
    v19 = &unk_10063F000;
    if (*v17)
    {
      v44[0] = v14;
      swift_getKeyPath();
      aBlock = v3;

      sub_1004D86BC();

      aBlock = v3;
      swift_getKeyPath();
      sub_1004D86DC();

      v20 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
      swift_beginAccess();
      sub_10031CF38(v3 + v20, &aBlock);
      v18(&aBlock);
      sub_10000DE74(v18);
      sub_10031CF38(v3 + v20, v52);
      swift_beginAccess();
      v21 = v3 + v20;
      v19 = &unk_10063F000;
      sub_100320C38(&aBlock, v21);
      swift_endAccess();
      sub_10031CF70(v52);
      sub_100320B60(v52);
      sub_100320B60(&aBlock);
      aBlock = v3;
      v14 = v44[0];
      swift_getKeyPath();
      sub_1004D86CC();
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_1004D86BC();

    v22 = v19[304];
    swift_beginAccess();
    sub_10031CF38(v3 + v22, &aBlock);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_100320B60(&aBlock);
    if (Strong)
    {
      sub_10031C7A8(v3, Strong);
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_1004D86BC();

    v24 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
    v25 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v25)
    {
      *(v25 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 1;
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_1004D86BC();

    v26 = *(v3 + v24);
    if (v26)
    {
      [v26 makeKeyAndVisible];
    }

    v27 = objc_opt_self();
    sub_1003221DC(v50, v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v3;
    sub_100322178(v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1003225CC;
    *(v30 + 24) = v29;
    v57 = sub_100108324;
    v58 = v30;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_1000121E8;
    v56 = &unk_1005EECE8;
    v31 = _Block_copy(&aBlock);

    [v27 performWithoutAnimation:v31];
    _Block_release(v31);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      __break(1u);
    }

    else
    {
      v32 = v49;
      v33 = (v50 + *(v49 + 36));
      if ((v33[1] & 1) == 0)
      {
        v34 = *v33;
        v35 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
        [v35 notificationOccurred:v34];
      }

      if (*(v50 + *(v32 + 40)) == 1)
      {
        v57 = sub_100322630;
        v58 = v3;
        aBlock = _NSConcreteStackBlock;
        v54 = 1107296256;
        v55 = sub_100012680;
        v56 = &unk_1005EED10;
        _Block_copy(&aBlock);
        v51 = _swiftEmptyArrayStorage;
        sub_100322638(&qword_10063E488, &type metadata accessor for DispatchWorkItemFlags);

        sub_100004CB8(&qword_10063E490);
        sub_100042B08(&qword_10063E498, &qword_10063E490);
        sub_1004DE92C();
        sub_1004DBF5C();
        swift_allocObject();
        v36 = sub_1004DBF3C();

        sub_100006F10(0, &qword_100642240);
        v37 = sub_1004DE14C();
        v38 = v45;
        sub_1004DBF1C();
        v39 = v46;
        sub_1004DBF8C();
        v40 = *(v47 + 8);
        v41 = v38;
        v42 = v48;
        v40(v41, v48);
        sub_1004DE11C();

        v40(v39, v42);
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v44[-2] = v3;
        v44[-1] = v36;
        aBlock = v3;
        sub_1004D86AC();
      }
    }
  }

  return result;
}

uint64_t sub_100321BB0()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_100321C20()
{
  result = qword_10063F9E0;
  if (!qword_10063F9E0)
  {
    sub_100008DE4(&qword_10063F9C8);
    sub_100042B08(&qword_10063F9E8, &qword_10063F9D0);
    sub_100042B08(&qword_10063F750, &qword_10063F758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F9E0);
  }

  return result;
}

unint64_t sub_100321D04()
{
  result = qword_10063F770;
  if (!qword_10063F770)
  {
    sub_100006F10(255, &qword_10063F778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F770);
  }

  return result;
}

void sub_100321D90()
{
  sub_100321E7C();
  if (v0 <= 0x3F)
  {
    sub_1004D86FC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100321E7C()
{
  if (!qword_10063FA38)
  {
    type metadata accessor for Notice(255);
    v0 = sub_1004DE7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_10063FA38);
    }
  }
}

uint64_t sub_100321ED4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100321EEC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100321F18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 56))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100321F5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_100322004()
{
  sub_1004DA32C();
  sub_100322068();
  return swift_getWitnessTable();
}

unint64_t sub_100322068()
{
  result = qword_10063FC90;
  if (!qword_10063FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FC90);
  }

  return result;
}

uint64_t sub_1003220BC()
{
  sub_100008DE4(&qword_10063F9C8);
  sub_100008DE4(&qword_10063F6E8);
  sub_100321C20();
  sub_1003195FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100322178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003221DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100322258()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003222AC()
{

  return swift_deallocObject();
}

uint64_t sub_1003222FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100322330(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063F9A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003223BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063F9A8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032242C()
{
  v1 = type metadata accessor for Notice(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = *(v1 + 20);
  v5 = type metadata accessor for Notice.Thumbnail(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_1004DCC9C();
      (*(*(v8 - 8) + 8))(v3 + v4, v8);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  if (*(v3 + *(v1 + 32)))
  {
  }

  return swift_deallocObject();
}

void sub_1003225CC()
{
  v1 = *(type metadata accessor for Notice(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_10031C984(v2, v3);
}

uint64_t sub_100322638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003226A8()
{

  return swift_deallocObject();
}

unint64_t sub_10032270C()
{
  result = qword_10063FD08;
  if (!qword_10063FD08)
  {
    sub_100008DE4(&qword_10063FCA8);
    sub_100042B08(&qword_10063FD10, &qword_10063FC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FD08);
  }

  return result;
}

uint64_t NoticeView.init(notice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NoticeView(0);
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = (a2 + v4[6]);
  sub_1004DB9DC();
  *v6 = v10;
  v6[1] = v11;
  v7 = a2 + v4[7];
  sub_1004D9E8C();
  *v7 = v10;
  *(v7 + 8) = v11;
  *(v7 + 16) = v12;
  v8 = a2 + v4[8];
  sub_1004DB9DC();
  *v8 = v10;
  *(v8 + 8) = v11;
  return sub_100327608(a1, a2, type metadata accessor for Notice);
}

uint64_t EnvironmentValues.noticeDismissal.getter()
{
  sub_100322B98();
  sub_1004DA75C();
  return v1;
}

double sub_100322990@<D0>(uint64_t a1@<X8>)
{
  sub_100322B98();
  sub_1004DA75C();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

double sub_1003229E8@<D0>(uint64_t a1@<X8>)
{
  sub_100322B98();
  sub_1004DA75C();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_100322A40(uint64_t *a1)
{
  sub_100322E64(*a1, a1[1]);
  sub_100322B98();
  return sub_1004DA76C();
}

unint64_t sub_100322B98()
{
  result = qword_10063FD18;
  if (!qword_10063FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FD18);
  }

  return result;
}

uint64_t sub_100322C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NoticeView.dismiss.getter()
{
  v1 = sub_1004DA74C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for NoticeView(0) + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  if (*(v5 + 17) == 1)
  {
    sub_100322E64(*v5, v7);
  }

  else
  {

    sub_1004DDF8C();
    v9 = sub_1004DAECC();
    sub_1004D953C();

    sub_1004DA73C();
    swift_getAtKeyPath();
    sub_100322E14(v6, v7, v8, 0);
    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_100322E14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_100322E20(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_100322E20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100322E64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t NoticeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v117 = a1;
  v116 = sub_100004CB8(&qword_10063FD20);
  __chkstk_darwin(v116);
  v115 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v114 = &v111 - v5;
  v142 = sub_1004DA25C();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v139 = &v111 - v8;
  v113 = sub_100004CB8(&qword_10063FD28);
  __chkstk_darwin(v113);
  v112 = &v111 - v9;
  v137 = sub_1004D9D2C();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for NoticeView(0);
  v124 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = v11;
  v148 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1004DAB0C();
  __chkstk_darwin(v122);
  v121 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_100004CB8(&qword_10063FD30);
  __chkstk_darwin(v138);
  v134 = &v111 - v13;
  v14 = type metadata accessor for NoticeView.Content(0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100004CB8(&qword_10063FD38);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v111 - v20;
  v22 = sub_100004CB8(&qword_10063FD40);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v111 - v24;
  *&v119 = sub_100004CB8(&qword_10063FD48);
  __chkstk_darwin(v119);
  v27 = &v111 - v26;
  v120 = sub_100004CB8(&qword_10063FD50);
  __chkstk_darwin(v120);
  v29 = &v111 - v28;
  v146 = sub_100004CB8(&qword_10063FD58);
  __chkstk_darwin(v146);
  v145 = &v111 - v30;
  v131 = sub_100004CB8(&qword_10063FD60);
  v128 = *(v131 - 8);
  __chkstk_darwin(v131);
  v125 = &v111 - v31;
  v132 = sub_100004CB8(&qword_10063FD68);
  v129 = *(v132 - 8);
  __chkstk_darwin(v132);
  v126 = &v111 - v32;
  v123 = sub_100004CB8(&qword_10063FD70);
  __chkstk_darwin(v123);
  v130 = &v111 - v33;
  v127 = sub_100004CB8(&qword_10063FD78);
  __chkstk_darwin(v127);
  v133 = &v111 - v34;
  v144 = sub_100004CB8(&qword_10063FD80);
  __chkstk_darwin(v144);
  v143 = &v111 - v35;
  v36 = v2;
  sub_100327670(v2, v17, type metadata accessor for Notice);
  *&v17[*(v15 + 36)] = swift_getKeyPath();
  sub_100004CB8(&unk_100641090);
  swift_storeEnumTagMultiPayload();
  *&v17[*(v15 + 40)] = swift_getKeyPath();
  sub_100004CB8(&unk_10063DC50);
  swift_storeEnumTagMultiPayload();
  *&v157 = 0x4041000000000000;
  sub_100327560();
  sub_1004D9EDC();
  *&v157 = 0x4010000000000000;
  sub_1003275B4();
  sub_1004D9EDC();
  sub_1004DBD1C();
  sub_1004DA45C();
  sub_100327608(v17, v21, type metadata accessor for NoticeView.Content);
  v37 = &v21[*(v19 + 44)];
  v38 = v162;
  *(v37 + 4) = v161;
  *(v37 + 5) = v38;
  *(v37 + 6) = v163;
  v39 = v158;
  *v37 = v157;
  *(v37 + 1) = v39;
  v40 = v160;
  *(v37 + 2) = v159;
  *(v37 + 3) = v40;
  v41 = &v25[*(v23 + 44)];
  sub_1004DBCFC();
  LOBYTE(v23) = sub_1004DAF2C();
  v41[*(sub_100004CB8(&qword_10063FD98) + 36)] = v23;
  sub_100047F38(v21, v25, &qword_10063FD38);
  if (qword_10063D908 != -1)
  {
    swift_once();
  }

  v42 = static Corner.extraLarge;
  v43 = unk_100673880;
  v44 = byte_100673888;
  sub_100047F38(v25, v27, &qword_10063FD40);
  v45 = &v27[*(v119 + 36)];
  *v45 = v42;
  *(v45 + 1) = v43;
  v45[16] = v44;
  v46 = v2 + *(v149 + 28);
  v47 = *v46;
  v48 = *(v46 + 8);
  v49 = *(v46 + 16);
  v50 = *(v46 + 24);
  LOBYTE(v153) = *v46;
  v154 = v48;
  v155 = v49;
  v156 = v50;
  sub_100004CB8(&qword_10063FDA0);
  sub_1004D9E9C();
  if (v150)
  {
    v51 = 0.4;
  }

  else
  {
    v51 = 1.0;
  }

  sub_100047F38(v27, v29, &qword_10063FD48);
  *&v29[*(v120 + 36)] = v51;
  v52 = sub_1004DBD5C();
  LOBYTE(v153) = v47;
  v154 = v48;
  v155 = v49;
  v156 = v50;
  sub_1004D9E9C();
  v53 = v150;
  v54 = v29;
  v55 = v145;
  sub_100047F38(v54, v145, &qword_10063FD50);
  v56 = v55 + *(v146 + 36);
  *v56 = v52;
  *(v56 + 8) = v53;
  sub_1004DAC3C();
  v57 = v134;
  sub_1004D9DBC();
  LOBYTE(v153) = v47;
  v154 = v48;
  v155 = v49;
  v156 = v50;
  sub_1004D9EAC();
  LODWORD(v121) = v150;
  v120 = v151;
  v119 = v152;
  v118 = v36;
  v58 = v148;
  v122 = type metadata accessor for NoticeView;
  sub_100327670(v36, v148, type metadata accessor for NoticeView);
  v59 = (*(v124 + 80) + 16) & ~*(v124 + 80);
  v60 = swift_allocObject();
  v124 = type metadata accessor for NoticeView;
  sub_100327608(v58, v60 + v59, type metadata accessor for NoticeView);
  v61 = sub_100004CB8(&qword_10063FDA8);
  v62 = v57 + *(v61 + 44);
  *v62 = v121;
  *(v62 + 8) = v120;
  *(v62 + 16) = v119;
  v63 = (v57 + *(v61 + 48));
  *v63 = sub_1003276DC;
  v63[1] = v60;
  v64 = v135;
  sub_1004D9D1C();
  sub_100327670(v36, v58, type metadata accessor for NoticeView);
  v65 = swift_allocObject();
  sub_100327608(v58, v65 + v59, type metadata accessor for NoticeView);
  v66 = swift_allocObject();
  *(v66 + 16) = sub_100327960;
  *(v66 + 24) = v65;
  v67 = v138;
  v68 = v137;
  sub_1004DBC4C();

  (*(v136 + 8))(v64, v68);
  sub_1004D9DDC();
  v69 = sub_1003279B0();
  v70 = sub_100042B08(&qword_10063FDF8, &qword_10063FD30);
  v71 = v125;
  v72 = v146;
  v73 = v145;
  sub_1004DB6AC();
  sub_10001074C(v57, &qword_10063FD30);
  sub_10001074C(v73, &qword_10063FD58);
  v74 = v118;
  v75 = v148;
  sub_100327670(v118, v148, v122);
  v76 = swift_allocObject();
  sub_100327608(v75, v76 + v59, v124);
  type metadata accessor for Notice(0);
  v153 = v72;
  v154 = v67;
  v155 = v69;
  v156 = v70;
  swift_getOpaqueTypeConformance2();
  sub_100327D74(&qword_10063FE00, type metadata accessor for Notice);
  v77 = v126;
  v78 = v131;
  sub_1004DB70C();

  (*(v128 + 8))(v71, v78);
  v79 = v130;
  v80 = &v130[*(v123 + 36)];
  sub_100004CB8(&qword_10063FE08);
  sub_1004DA49C();
  *v80 = swift_getKeyPath();
  (*(v129 + 32))(v79, v77, v132);
  v81 = (v74 + *(v149 + 24));
  v82 = *v81;
  v83 = v81[1];
  v153 = v82;
  v154 = v83;
  sub_100004CB8(&qword_10063FE10);
  sub_1004DB9EC();
  v84 = v150;
  sub_1004DBE7C();
  v86 = v85;
  v88 = v87;
  v89 = v79;
  v90 = v133;
  sub_100047F38(v89, v133, &qword_10063FD70);
  v91 = (v90 + *(v127 + 36));
  *v91 = v84;
  v91[1] = v84;
  v91[2] = v86;
  v91[3] = v88;
  sub_1004DBD3C();
  v92 = sub_1004DBD4C();

  v93 = v143;
  v94 = &v143[*(v144 + 36)];
  v95 = sub_100004CB8(&qword_10063FE18);
  sub_100327670(v74, v94 + *(v95 + 36), type metadata accessor for Notice);
  *v94 = v92;
  sub_100047F38(v90, v93, &qword_10063FD78);
  v96 = v141;
  v97 = *(v141 + 104);
  v98 = v139;
  v99 = v142;
  v97(v139, enum case for DynamicTypeSize.xSmall(_:), v142);
  v100 = v140;
  v97(v140, enum case for DynamicTypeSize.accessibility2(_:), v99);
  sub_100327D74(&qword_10063E998, &type metadata accessor for DynamicTypeSize);
  result = sub_1004DD33C();
  if (result)
  {
    v102 = v98;
    v103 = *(v96 + 32);
    v104 = v114;
    v103(v114, v102, v99);
    v105 = v116;
    v103((v104 + *(v116 + 48)), v100, v99);
    v106 = v115;
    sub_1000108DC(v104, v115, &qword_10063FD20);
    v107 = *(v105 + 48);
    v108 = v112;
    v103(v112, v106, v99);
    v109 = *(v96 + 8);
    v109(v106 + v107, v99);
    sub_100047F38(v104, v106, &qword_10063FD20);
    v103((v108 + *(v113 + 36)), (v106 + *(v105 + 48)), v99);
    v109(v106, v99);
    sub_100327EF0();
    sub_100042B08(&qword_10063FE48, &qword_10063FD28);
    v110 = v143;
    sub_1004DB4AC();
    sub_10001074C(v108, &qword_10063FD28);
    return sub_10001074C(v110, &qword_10063FD80);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10032427C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Notice(0);
  if ((*(a4 + *(result + 40)) & 1) != 0 || *(a4 + *(result + 32)) && (type metadata accessor for NoticeView(0), sub_100004CB8(&qword_100640118), result = sub_1004DB9EC(), (v7 & 1) == 0))
  {
    *a2 = 1;
  }

  return result;
}

uint64_t sub_100324318(uint64_t a1)
{
  type metadata accessor for NoticeView(0);
  sub_100004CB8(&qword_100640118);
  sub_1004DB9EC();
  if ((v5 & 1) == 0)
  {
    sub_1004DB9FC();
    v2 = *(a1 + *(type metadata accessor for Notice(0) + 32));
    if (v2)
    {
      v2();
    }
  }

  result = type metadata accessor for Notice(0);
  if (*(a1 + *(result + 40)) == 1)
  {
    result = NoticeView.dismiss.getter();
    if (v4)
    {
      sub_100004CB8(&qword_100643290);
      sub_1004DBB6C();
    }
  }

  return result;
}

void sub_100324458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for NoticeView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_1004DBD3C();
  v11 = a3;
  sub_1004DA0EC();

  sub_100329910();
  v7 = sub_1004DE14C();
  sub_100327670(a3, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NoticeView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_100327608(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for NoticeView);
  OS_dispatch_queue.asyncAfter(_:block:)(sub_10032995C, v9);
}

uint64_t sub_100324604()
{
  sub_1004DBD3C();
  sub_1004DA0EC();
}

uint64_t sub_10032468C()
{
  type metadata accessor for NoticeView(0);
  sub_100004CB8(&qword_10063FE10);
  return sub_1004DB9FC();
}

uint64_t sub_100324714@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004DA74C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004CB8(&unk_100641090);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NoticeView.Content(0);
  sub_1000108DC(v1 + *(v10 + 28), v9, &unk_100641090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1004DA25C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1004DDF8C();
    v13 = sub_1004DAECC();
    sub_1004D953C();

    sub_1004DA73C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10032491C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004DA74C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004CB8(&unk_10063DC50);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NoticeView.Content(0);
  sub_1000108DC(v1 + *(v10 + 32), v9, &unk_10063DC50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1004DA30C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1004DDF8C();
    v13 = sub_1004DAECC();
    sub_1004D953C();

    sub_1004DA73C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

__n128 sub_100324B24@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_100004CB8(&qword_10063FFF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_1004DA25C();
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Notice(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100327670(v1, v11, type metadata accessor for Notice);
  sub_100324714(v8);
  sub_100328DE0(v11, v8, v19);
  if (sub_100324D08())
  {
    v12 = sub_1004DA7AC();
  }

  else
  {
    v12 = sub_1004DA7CC();
  }

  v13 = v20;
  *v5 = v12;
  *(v5 + 1) = v13;
  v5[16] = 0;
  v14 = sub_100004CB8(&qword_10063FFF8);
  sub_100324F1C(v1, v19, &v5[*(v14 + 44)]);
  v15 = sub_1004DAF2C();
  sub_100047F38(v5, a1, &qword_10063FFF0);
  v16 = a1 + *(sub_100004CB8(&qword_100640000) + 36);
  *v16 = v15;
  result = v19[0];
  *(v16 + 24) = v19[1];
  *(v16 + 8) = result;
  *(v16 + 40) = 0;
  return result;
}

BOOL sub_100324D08()
{
  v1 = v0;
  v2 = sub_100004CB8(&qword_1006400D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_1004DA25C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100324714(v8);
  v9 = sub_1004DA24C();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v10 = type metadata accessor for Notice(0);
    v11 = (v1 + *(v10 + 28));
    v12 = v11[1];
    if (v12)
    {
      v13 = *v11 & 0xFFFFFFFFFFFFLL;
      if ((v12 & 0x2000000000000000) != 0 ? HIBYTE(v12) & 0xF : v13)
      {
        sub_1000108DC(v1 + *(v10 + 20), v4, &qword_1006400D0);
        v15 = type metadata accessor for Notice.Thumbnail(0);
        if ((*(*(v15 - 8) + 48))(v4, 1, v15) != 1)
        {
          v17 = swift_getEnumCaseMultiPayload() == 1;
          sub_10032988C(v4, type metadata accessor for Notice.Thumbnail);
          return v17;
        }

        sub_10001074C(v4, &qword_1006400D0);
      }
    }
  }

  return 0;
}

uint64_t sub_100324F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v40 = a1;
  v4 = sub_100004CB8(&qword_100640008);
  __chkstk_darwin(v4 - 8);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v9 = sub_100004CB8(&qword_100640010);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v13 = sub_100004CB8(&qword_100640018);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = sub_100004CB8(&qword_100640020);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v41 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  __chkstk_darwin(v23);
  v25 = &v40 - v24;
  sub_100325368(a1, v12);
  sub_1004DAFFC();
  sub_1004DB06C();
  v26 = sub_1004DB0BC();

  KeyPath = swift_getKeyPath();
  v28 = &v12[*(sub_100004CB8(&qword_100640028) + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  *&v12[*(v10 + 44)] = sub_1004DABEC();
  sub_1004DBD1C();
  sub_1004DA45C();
  sub_100047F38(v12, v16, &qword_100640010);
  v29 = &v16[*(v14 + 44)];
  v30 = v50;
  *(v29 + 4) = v49;
  *(v29 + 5) = v30;
  *(v29 + 6) = v51;
  v31 = v46;
  *v29 = v45;
  *(v29 + 1) = v31;
  v32 = v48;
  *(v29 + 2) = v47;
  *(v29 + 3) = v32;
  sub_100047F38(v16, v22, &qword_100640018);
  v33 = &v22[*(v18 + 44)];
  *v33 = 0x3FF0000000000000;
  *(v33 + 4) = 0;
  sub_100047F38(v22, v25, &qword_100640020);
  *v8 = sub_1004DA91C();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v34 = sub_100004CB8(&qword_100640030);
  sub_100325DA4(v40, v43, &v8[*(v34 + 44)]);
  v35 = v41;
  sub_1000108DC(v25, v41, &qword_100640020);
  v36 = v42;
  sub_1000108DC(v8, v42, &qword_100640008);
  v37 = v44;
  sub_1000108DC(v35, v44, &qword_100640020);
  v38 = sub_100004CB8(&qword_100640038);
  sub_1000108DC(v36, v37 + *(v38 + 48), &qword_100640008);
  sub_10001074C(v8, &qword_100640008);
  sub_10001074C(v25, &qword_100640020);
  sub_10001074C(v36, &qword_100640008);
  return sub_10001074C(v35, &qword_100640020);
}

uint64_t sub_100325368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v62 = sub_100004CB8(&qword_100640098);
  __chkstk_darwin(v62);
  v4 = &v46 - v3;
  v63 = sub_100004CB8(&qword_1006400A0);
  __chkstk_darwin(v63);
  v6 = &v46 - v5;
  v50 = sub_1004D866C();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&qword_1006400A8);
  __chkstk_darwin(v8);
  v51 = &v46 - v9;
  v61 = sub_100004CB8(&qword_1006400B0);
  __chkstk_darwin(v61);
  v54 = &v46 - v10;
  v55 = sub_1004DCC9C();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v60 = &v46 - v13;
  v14 = sub_100004CB8(&qword_1006400B8);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  v57 = sub_100004CB8(&qword_1006400C0);
  __chkstk_darwin(v57);
  v58 = (&v46 - v17);
  v18 = sub_100004CB8(&qword_1006400C8);
  __chkstk_darwin(v18);
  v59 = &v46 - v19;
  v20 = sub_100004CB8(&qword_1006400D0);
  __chkstk_darwin(v20 - 8);
  v22 = (&v46 - v21);
  v23 = *(type metadata accessor for Notice(0) + 20);
  v52 = a1;
  sub_1000108DC(a1 + v23, v22, &qword_1006400D0);
  v24 = type metadata accessor for Notice.Thumbnail(0);
  if ((*(*(v24 - 8) + 48))(v22, 1, v24) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_100329570();
    sub_1004DAADC();
    v25 = &qword_1006400A0;
    sub_1000108DC(v6, v16, &qword_1006400A0);
    swift_storeEnumTagMultiPayload();
    sub_10032962C();
    sub_100329800();
    sub_1004DAADC();
    v26 = v6;
LABEL_9:
    v42 = v25;
    return sub_10001074C(v26, v42);
  }

  v46 = v16;
  v56 = v18;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    *v58 = *v22;
    swift_storeEnumTagMultiPayload();
    sub_1003296B8();

    v41 = v59;
    sub_1004DAADC();
    v25 = &qword_1006400C8;
    sub_1000108DC(v41, v46, &qword_1006400C8);
    swift_storeEnumTagMultiPayload();
    sub_10032962C();
    sub_100329800();
    sub_1004DAADC();

    v26 = v41;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1004DB87C();
    (*(v48 + 104))(v49, enum case for CircularProgressView.LineStyle.round(_:), v50);
    LOBYTE(v65) = 1;
    v43 = v51;
    sub_1004D865C();
    sub_1004DBD1C();
    sub_1004D9F5C();
    v44 = (v43 + *(v8 + 36));
    v45 = v66;
    *v44 = v65;
    v44[1] = v45;
    v44[2] = v67;
    sub_1000108DC(v43, v4, &qword_1006400A8);
    swift_storeEnumTagMultiPayload();
    sub_100329570();
    sub_1004DAADC();
    sub_1000108DC(v6, v46, &qword_1006400A0);
    swift_storeEnumTagMultiPayload();
    sub_10032962C();
    sub_100329800();
    sub_1004DAADC();
    sub_10001074C(v6, &qword_1006400A0);
    v26 = v43;
    v42 = &qword_1006400A8;
    return sub_10001074C(v26, v42);
  }

  v62 = v14;
  v28 = v53;
  v29 = v60;
  v30 = v55;
  (*(v53 + 32))(v60, v22, v55);
  (*(v28 + 16))(v47, v29, v30);
  type metadata accessor for NoticeView.Content(0);
  sub_100004CB8(&qword_10063FF18);
  sub_1004D9EEC();
  v31 = v54;
  sub_1004D935C();
  sub_100004CB8(&qword_10063FF20);
  sub_1004D9EEC();
  v32 = v65;
  v33 = v31 + *(sub_100004CB8(&qword_100640100) + 36);
  *v33 = v32;
  *(v33 + 8) = -1;
  *(v33 + 16) = 0;
  if (qword_10063D910 != -1)
  {
    swift_once();
  }

  v34 = static Border.artwork;
  v35 = qword_100673898;
  v36 = byte_1006738A0;
  sub_1004D9EEC();
  v37 = v65;
  v38 = v31 + *(v61 + 36);
  *v38 = v34;
  *(v38 + 8) = v35;
  *(v38 + 16) = v36;
  *(v38 + 24) = v37;
  *(v38 + 32) = -1;
  *(v38 + 40) = 0;
  sub_1000108DC(v31, v58, &qword_1006400B0);
  swift_storeEnumTagMultiPayload();
  sub_1003296B8();

  v39 = v59;
  sub_1004DAADC();
  sub_1000108DC(v39, v46, &qword_1006400C8);
  swift_storeEnumTagMultiPayload();
  sub_10032962C();
  sub_100329800();
  sub_1004DAADC();
  sub_10001074C(v39, &qword_1006400C8);
  sub_10001074C(v31, &qword_1006400B0);
  return (*(v28 + 8))(v60, v30);
}

uint64_t sub_100325DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v59 = a2;
  v65 = a3;
  v66 = sub_1004DB0CC();
  v63 = *(v66 - 8);
  __chkstk_darwin(v66);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&qword_100640040);
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v75 = &v59 - v7;
  v74 = sub_100004CB8(&qword_100640048);
  __chkstk_darwin(v74);
  v79 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = &v59 - v10;
  __chkstk_darwin(v11);
  v78 = &v59 - v12;
  v13 = *(type metadata accessor for Notice(0) + 28);
  v73 = a1;
  v14 = (a1 + v13);
  v15 = v14[1];
  if (v15)
  {
    *&v81 = *v14;
    *(&v81 + 1) = v15;
    sub_1002E6780();

    v16 = sub_1004DB34C();
    v18 = v17;
    v20 = v19;
    sub_1004DB10C();
    v21 = sub_1004DB2AC();
    v23 = v22;
    v25 = v24;

    sub_100051E10(v16, v18, v20 & 1);

    LODWORD(v81) = sub_1004DAC1C();
    v26 = sub_1004DB24C();
    v28 = v27;
    LOBYTE(v16) = v29;
    v31 = v30;
    sub_100051E10(v21, v23, v25 & 1);

    KeyPath = swift_getKeyPath();
    v71 = v26;
    v70 = v28;
    v67 = v16 & 1;
    sub_100051E00(v26, v28, v16 & 1);
    v69 = v31;

    v68 = KeyPath;

    v64 = 2;
  }

  else
  {
    v71 = 0;
    v70 = 0;
    v67 = 0;
    v69 = 0;
    v68 = 0;
    v64 = 0;
  }

  sub_1003264B4(v73, &v81);
  v80 = *(&v81 + 1);
  v33 = v81;
  v34 = v83;
  v61 = v82;
  v60 = v84;
  v35 = v85;
  sub_1004DAFFC();
  v36 = v63;
  v37 = v66;
  (*(v63 + 104))(v5, enum case for Font.Leading.tight(_:), v66);
  sub_1004DB0FC();

  v38 = v5;
  v39 = v34;
  v40 = v61;
  v41 = v37;
  v42 = v60;
  (*(v36 + 8))(v38, v41);
  sub_1004DB06C();
  v43 = sub_1004DB0BC();

  v44 = swift_getKeyPath();
  v92 = v35;
  v62 = v33;
  *&v81 = v33;
  *(&v81 + 1) = v80;
  v82 = v40;
  v83 = v39;
  v63 = v39;
  v84 = v42;
  LODWORD(v66) = v35;
  v85 = v35;
  v86 = v90;
  v87 = v91;
  v88 = v44;
  v89 = v43;
  if (sub_100324D08())
  {
    type metadata accessor for NoticeView.Content(0);
    sub_100004CB8(&qword_10063FF18);
    sub_1004D9EEC();
  }

  sub_100004CB8(&qword_100640050);
  sub_100329198();
  v45 = v75;
  sub_1004DB49C();
  sub_1003293DC(v62, v80, v40, v63, v42, v66);

  v46 = swift_getKeyPath();
  v47 = v72;
  (*(v76 + 32))(v72, v45, v77);
  v48 = v47 + *(v74 + 36);
  *v48 = v46;
  *(v48 + 8) = 4;
  *(v48 + 16) = 0;
  v49 = v78;
  sub_100047F38(v47, v78, &qword_100640048);
  v50 = v79;
  sub_1000108DC(v49, v79, &qword_100640048);
  v51 = v71;
  v52 = v65;
  v53 = v70;
  *v65 = v71;
  v52[1] = v53;
  v54 = v67;
  v55 = v69;
  v52[2] = v67;
  v52[3] = v55;
  v56 = v64;
  v52[4] = v68;
  v52[5] = v56;
  *(v52 + 48) = 0;
  v57 = sub_100004CB8(&qword_100640090);
  sub_1000108DC(v50, v52 + *(v57 + 48), &qword_100640048);
  sub_1003294D0(v51, v53, v54, v55);
  sub_100329520(v51, v53, v54, v55);
  sub_10001074C(v49, &qword_100640048);
  sub_10001074C(v50, &qword_100640048);
  return sub_100329520(v51, v53, v54, v55);
}

void sub_1003264B4(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v132 = a2;
  v3 = sub_1004D83DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v130 = &v124[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1004DA30C();
  v131 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v124[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v124[-v10];
  v12 = sub_100004CB8(&qword_10063E7B8);
  __chkstk_darwin(v12 - 8);
  v14 = &v124[-v13];
  v15 = type metadata accessor for Notice(0);
  if (*(a1 + *(v15 + 32)))
  {
    v128 = v3;
    sub_100324714(v14);
    v16 = sub_1004DA25C();
    (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
    v17 = sub_1004DE30C();
    v18 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v17];

    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v20];
    v22 = [v21 fontDescriptorWithSymbolicTraits:32770];

    v129 = v4;
    if (v22)
    {

      v23 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];
    }

    else
    {
      v23 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v20];
      v22 = v20;
    }

    v24 = v23;

    v25 = [objc_opt_self() configurationWithFont:v24 scale:1];
    v26 = sub_1004DD3FC();
    v27 = [objc_opt_self() systemImageNamed:v26 withConfiguration:v25];

    if (v27)
    {
      v28 = [v27 imageWithRenderingMode:2];

      v29 = v129;
      if (v28)
      {
        sub_10032491C(v11);
        v30 = v131;
        (v131)[13](v8, enum case for LayoutDirection.rightToLeft(_:), v6);
        v31 = sub_1004DA2FC();
        v32 = v30[1];
        v32(v8, v6);
        v32(v11, v6);
        v127 = v28;
        if (v31)
        {
          v33 = objc_opt_self();
          v34 = (a1 + *(v15 + 24));
          v36 = *v34;
          v35 = v34[1];
          v37 = sub_1004DD3FC();
          v38 = [v33 dominantLanguageForString:v37];

          if (v38)
          {
            sub_1004DD43C();
            v39 = v130;
            sub_1004D839C();
            v40 = sub_1004D83BC();
            (*(v29 + 8))(v39, v128);
            if (v40 == 1)
            {
              v41 = v28;
              sub_1004DB8DC();
              v42 = sub_1004DB35C();
              v44 = v43;
              v131 = v38;
              v46 = v45;
              LODWORD(v136) = sub_1004DAC1C();
              v47 = sub_1004DB24C();
              v49 = v48;
              v51 = v50;
              sub_100051E10(v42, v44, v46 & 1);

              String.nonBreakingSpace.unsafeMutableAddressor();

              v130 = sub_1004DB27C();
              v129 = v52;
              LODWORD(v126) = v53;
              v128 = v54;

              sub_100051E10(v47, v49, v51 & 1);

              *&v136 = v36;
              *(&v136 + 1) = v35;
              sub_1002E6780();

              v55 = sub_1004DB34C();
              v57 = v56;
              v59 = v58;
              LODWORD(v136) = sub_1004DABEC();
              v60 = sub_1004DB24C();
              v62 = v61;
              LOBYTE(v42) = v63;
              sub_100051E10(v55, v57, v59 & 1);

              v64 = v130;
              v65 = v129;
              v66 = sub_1004DB27C();
              v68 = v67;
              v125 = v69;
              v71 = v70;
              sub_100051E10(v60, v62, v42 & 1);

              sub_100051E10(v64, v65, v126 & 1);

              LOBYTE(v42) = v125 & 1;
              *&v133 = v66;
              *(&v133 + 1) = v68;
              *&v134 = v125 & 1;
              *(&v134 + 1) = v71;
              LOBYTE(v135) = 0;
              sub_100051E00(v66, v68, v125 & 1);

              sub_100051E00(v66, v68, v42);

              sub_1004DAADC();

              sub_100051E10(v66, v68, v42);

              sub_100051E10(v66, v68, v42);

LABEL_15:
              v134 = v137;
              v133 = v136;
              v135 = v138;
              sub_100004CB8(&qword_100640080);
              sub_100329360();
              sub_1004DAADC();

              v86 = v136;
              v87 = v137;
              goto LABEL_16;
            }
          }
        }

        v88 = (a1 + *(v15 + 24));
        v89 = v88[1];
        *&v136 = *v88;
        *(&v136 + 1) = v89;
        sub_1002E6780();

        v90 = sub_1004DB34C();
        v92 = v91;
        v94 = v93;
        LODWORD(v136) = sub_1004DABEC();
        v95 = sub_1004DB24C();
        v97 = v96;
        v99 = v98;
        sub_100051E10(v90, v92, v94 & 1);

        String.nonBreakingSpace.unsafeMutableAddressor();

        v131 = sub_1004DB27C();
        v130 = v100;
        LODWORD(v128) = v101;
        v129 = v102;

        sub_100051E10(v95, v97, v99 & 1);

        v103 = v28;
        sub_1004DB8DC();
        v104 = sub_1004DB35C();
        v106 = v105;
        v108 = v107;
        LODWORD(v136) = sub_1004DAC1C();
        v109 = sub_1004DB24C();
        v111 = v110;
        LOBYTE(v92) = v112;
        sub_100051E10(v104, v106, v108 & 1);

        v113 = v131;
        v114 = v130;
        v126 = sub_1004DB27C();
        v116 = v115;
        v118 = v117;
        v120 = v119;
        sub_100051E10(v109, v111, v92 & 1);

        sub_100051E10(v113, v114, v128 & 1);

        *&v133 = v126;
        *(&v133 + 1) = v116;
        *&v134 = v118 & 1;
        *(&v134 + 1) = v120;
        LOBYTE(v135) = 1;
        sub_1004DAADC();
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v72 = (a1 + *(v15 + 24));
  v73 = v72[1];
  *&v136 = *v72;
  *(&v136 + 1) = v73;
  sub_1002E6780();

  v74 = sub_1004DB34C();
  v76 = v75;
  v78 = v77;
  LODWORD(v136) = sub_1004DABEC();
  v79 = sub_1004DB24C();
  v81 = v80;
  v83 = v82;
  v85 = v84;
  sub_100051E10(v74, v76, v78 & 1);

  *&v133 = v79;
  *(&v133 + 1) = v81;
  *&v134 = v83 & 1;
  *(&v134 + 1) = v85;
  v135 = 256;
  sub_100004CB8(&qword_100640080);
  sub_100329360();
  sub_1004DAADC();
  v86 = v136;
  v87 = v137;
LABEL_16:
  v121 = v138;
  v122 = v139;
  v123 = v132;
  *v132 = v86;
  v123[1] = v87;
  *(v123 + 32) = v121;
  *(v123 + 33) = v122;
}

uint64_t NoticeDismissal.presented.getter()
{
  sub_100004CB8(&qword_100643290);
  sub_1004DBB5C();
  return v1;
}

void (*NoticeDismissal.presented.modify(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 19) = a4 & 1;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *v8 = a2;
  *(v8 + 8) = a3;
  *(v8 + 16) = a4 & 1;

  *(v9 + 64) = sub_100004CB8(&qword_100643290);
  sub_1004DBB5C();
  return sub_1003271D8;
}

void sub_1003271D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_1004DBB6C();

  free(v1);
}

uint64_t NoticeDismissal.$presented.getter()
{
  sub_100004CB8(&qword_100643290);
  sub_1004DBB7C();
  return v1;
}

void sub_1003272A4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void (*EnvironmentValues.noticeDismissal.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = sub_100322B98();
  sub_1004DA75C();
  v5 = *(v4 + 40);
  *v4 = *(v4 + 24);
  *(v4 + 16) = v5;
  return sub_100327354;
}

void sub_100327354(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[3] = v4;
  v6 = *(v3 + 16);
  v3[4] = v5;
  *(v3 + 40) = v6;
  if (a2)
  {
    sub_100322E64(v4, v5);
    sub_1004DA76C();
    sub_100322E20(*v3, v3[1]);
  }

  else
  {
    sub_1004DA76C();
  }

  free(v3);
}

unint64_t sub_100327560()
{
  result = qword_10063FD88;
  if (!qword_10063FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FD88);
  }

  return result;
}

unint64_t sub_1003275B4()
{
  result = qword_10063FD90;
  if (!qword_10063FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FD90);
  }

  return result;
}

uint64_t sub_100327608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100327670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003276DC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for NoticeView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_10032427C(a1, a2, a3, v8);
}

uint64_t sub_100327764()
{
  v1 = type metadata accessor for NoticeView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = type metadata accessor for Notice(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Notice.Thumbnail(0);
  if (!(*(*(v5 - 8) + 48))(v2 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_1004DCC9C();
      (*(*(v8 - 8) + 8))(v2 + v4, v8);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  if (*(v2 + *(v3 + 32)))
  {
  }

  sub_100322E14(*(v2 + *(v1 + 20)), *(v2 + *(v1 + 20) + 8), *(v2 + *(v1 + 20) + 16), *(v2 + *(v1 + 20) + 17));

  return swift_deallocObject();
}

uint64_t sub_100327978()
{

  return swift_deallocObject();
}

unint64_t sub_1003279B0()
{
  result = qword_10063FDB0;
  if (!qword_10063FDB0)
  {
    sub_100008DE4(&qword_10063FD58);
    sub_100327A68();
    sub_100042B08(&qword_10063FDE8, &qword_10063FDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FDB0);
  }

  return result;
}

unint64_t sub_100327A68()
{
  result = qword_10063FDB8;
  if (!qword_10063FDB8)
  {
    sub_100008DE4(&qword_10063FD50);
    sub_100327AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FDB8);
  }

  return result;
}

unint64_t sub_100327AF4()
{
  result = qword_10063FDC0;
  if (!qword_10063FDC0)
  {
    sub_100008DE4(&qword_10063FD48);
    sub_100327B80();
    sub_100312414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FDC0);
  }

  return result;
}

unint64_t sub_100327B80()
{
  result = qword_10063FDC8;
  if (!qword_10063FDC8)
  {
    sub_100008DE4(&qword_10063FD40);
    sub_100327C38();
    sub_100042B08(&qword_10063FDE0, &qword_10063FD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FDC8);
  }

  return result;
}

unint64_t sub_100327C38()
{
  result = qword_10063FDD0;
  if (!qword_10063FDD0)
  {
    sub_100008DE4(&qword_10063FD38);
    sub_100327D74(&qword_10063FDD8, type metadata accessor for NoticeView.Content);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FDD0);
  }

  return result;
}

void sub_100327CF4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NoticeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100324458(a1, a2, v6);
}

uint64_t sub_100327D74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100327DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_100327EF0()
{
  result = qword_10063FE20;
  if (!qword_10063FE20)
  {
    sub_100008DE4(&qword_10063FD80);
    sub_100327FA8();
    sub_100042B08(&qword_10063FE40, &qword_10063FE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FE20);
  }

  return result;
}

unint64_t sub_100327FA8()
{
  result = qword_10063FE28;
  if (!qword_10063FE28)
  {
    sub_100008DE4(&qword_10063FD78);
    sub_100328034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FE28);
  }

  return result;
}

unint64_t sub_100328034()
{
  result = qword_10063FE30;
  if (!qword_10063FE30)
  {
    sub_100008DE4(&qword_10063FD70);
    sub_100008DE4(&qword_10063FD60);
    type metadata accessor for Notice(255);
    sub_100008DE4(&qword_10063FD58);
    sub_100008DE4(&qword_10063FD30);
    sub_1003279B0();
    sub_100042B08(&qword_10063FDF8, &qword_10063FD30);
    swift_getOpaqueTypeConformance2();
    sub_100327D74(&qword_10063FE00, type metadata accessor for Notice);
    swift_getOpaqueTypeConformance2();
    sub_100042B08(&qword_10063FE38, &qword_10063FE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063FE30);
  }

  return result;
}

uint64_t sub_100328244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Notice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100328318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Notice(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 16) = (a2 - 1);
  }

  return result;
}

void sub_1003283D4()
{
  type metadata accessor for Notice(319);
  if (v0 <= 0x3F)
  {
    sub_10032850C();
    if (v1 <= 0x3F)
    {
      sub_100328570(319, &qword_10063FEC8, &type metadata for Double, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100328570(319, &qword_10063FED0, &type metadata for Bool, &type metadata accessor for GestureState);
        if (v3 <= 0x3F)
        {
          sub_100328570(319, &unk_10063FED8, &type metadata for Bool, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10032850C()
{
  if (!qword_10063FEB8)
  {
    sub_100008DE4(&qword_10063FEC0);
    v0 = sub_1004D9DCC();
    if (!v1)
    {
      atomic_store(v0, &qword_10063FEB8);
    }
  }
}

void sub_100328570(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1003285C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100328608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100328658()
{
  sub_100008DE4(&qword_10063FD80);
  sub_100008DE4(&qword_10063FD28);
  sub_100327EF0();
  sub_100042B08(&qword_10063FE48, &qword_10063FD28);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100328730(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Notice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100004CB8(&qword_10063FF18);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100004CB8(&qword_10063FF20);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_100004CB8(&qword_10063FF28);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_100004CB8(&qword_10063FF30);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_100328944(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Notice(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100004CB8(&qword_10063FF18);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100004CB8(&qword_10063FF20);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_100004CB8(&qword_10063FF28);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_100004CB8(&qword_10063FF30);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_100328B50()
{
  type metadata accessor for Notice(319);
  if (v0 <= 0x3F)
  {
    sub_100328C9C(319, &qword_10063FFA0, sub_100327560);
    if (v1 <= 0x3F)
    {
      sub_100328C9C(319, &qword_10063FFA8, sub_1003275B4);
      if (v2 <= 0x3F)
      {
        sub_100328CFC(319, &qword_1006415A0, &type metadata accessor for DynamicTypeSize);
        if (v3 <= 0x3F)
        {
          sub_100328CFC(319, &qword_10063FFB0, &type metadata accessor for LayoutDirection);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100328C9C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1004D9EFC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100328CFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004D9DCC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100328D7C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1004DA6FC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100328DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = sub_100004CB8(&qword_1006400D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Notice(0);
  sub_1000108DC(a1 + *(v9 + 20), v8, &qword_1006400D0);
  v10 = type metadata accessor for Notice.Thumbnail(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_10001074C(v8, &qword_1006400D0);
    v11 = 0;
  }

  else
  {
    v11 = swift_getEnumCaseMultiPayload() == 1;
    sub_10032988C(v8, type metadata accessor for Notice.Thumbnail);
  }

  v12 = sub_1004DA25C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 88))(a2, v12);
  if (v14 == enum case for DynamicTypeSize.xSmall(_:) || v14 == enum case for DynamicTypeSize.small(_:))
  {
    result = sub_10032988C(a1, type metadata accessor for Notice);
    v17 = 6.0;
    if (!v11)
    {
      v17 = 0.0;
    }

    v18 = 4.0;
    v19 = 12.0;
    if (v11)
    {
      v20 = 12.0;
    }

    else
    {
      v20 = 4.0;
    }
  }

  else
  {
    if (v14 == enum case for DynamicTypeSize.medium(_:) || v14 == enum case for DynamicTypeSize.large(_:) || v14 == enum case for DynamicTypeSize.xLarge(_:))
    {
      goto LABEL_29;
    }

    if (v14 != enum case for DynamicTypeSize.xxLarge(_:) && v14 != enum case for DynamicTypeSize.xxxLarge(_:) && v14 != enum case for DynamicTypeSize.accessibility1(_:) && v14 != enum case for DynamicTypeSize.accessibility2(_:) && v14 != enum case for DynamicTypeSize.accessibility3(_:) && v14 != enum case for DynamicTypeSize.accessibility4(_:) && v14 != enum case for DynamicTypeSize.accessibility5(_:))
    {
      (*(v13 + 8))(a2, v12);
LABEL_29:
      if (v11)
      {
        v20 = 10.0;
      }

      else
      {
        v20 = 12.0;
      }

      v23 = *(a1 + *(v9 + 32));
      sub_10000DE64(v23);
      result = sub_10032988C(a1, type metadata accessor for Notice);
      if (v23)
      {
        result = sub_10000DE74(v23);
        v19 = 19.0;
      }

      else
      {
        v19 = 20.0;
      }

      v18 = 4.0;
      if (v11)
      {
        v17 = 10.0;
      }

      else
      {
        v17 = 4.0;
      }

      goto LABEL_41;
    }

    result = sub_10032988C(a1, type metadata accessor for Notice);
    v17 = 10.0;
    if (!v11)
    {
      v17 = 6.0;
    }

    v19 = 20.0;
    v20 = 12.0;
    v18 = 8.0;
  }

LABEL_41:
  *a3 = v18;
  a3[1] = v20;
  a3[2] = v18;
  a3[3] = v19;
  a3[4] = v17;
  return result;
}

unint64_t sub_100329198()
{
  result = qword_100640058;
  if (!qword_100640058)
  {
    sub_100008DE4(&qword_100640050);
    sub_100329250();
    sub_100042B08(&unk_100641BF0, &qword_100640088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640058);
  }

  return result;
}

unint64_t sub_100329250()
{
  result = qword_100640060;
  if (!qword_100640060)
  {
    sub_100008DE4(&qword_100640068);
    sub_1003292D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640060);
  }

  return result;
}

unint64_t sub_1003292D4()
{
  result = qword_100640070;
  if (!qword_100640070)
  {
    sub_100008DE4(&qword_100640078);
    sub_100329360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640070);
  }

  return result;
}

unint64_t sub_100329360()
{
  result = qword_100641EE0;
  if (!qword_100641EE0)
  {
    sub_100008DE4(&qword_100640080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641EE0);
  }

  return result;
}

uint64_t sub_1003293DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_100051E10(a1, a2, a3 & 1);
  }

  else
  {

    return sub_100329430(a1, a2, a3);
  }
}

uint64_t sub_100329430(uint64_t a1, uint64_t a2, char a3)
{
  sub_100051E10(a1, a2, a3 & 1);
}

uint64_t sub_10032946C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1004DA6FC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1003294D0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100051E00(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100329520(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100051E10(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_100329570()
{
  result = qword_1006400D8;
  if (!qword_1006400D8)
  {
    sub_100008DE4(&qword_1006400A8);
    sub_100327D74(&qword_1006400E0, &type metadata accessor for CircularProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006400D8);
  }

  return result;
}

unint64_t sub_10032962C()
{
  result = qword_1006400E8;
  if (!qword_1006400E8)
  {
    sub_100008DE4(&qword_1006400C8);
    sub_1003296B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006400E8);
  }

  return result;
}

unint64_t sub_1003296B8()
{
  result = qword_1006400F0;
  if (!qword_1006400F0)
  {
    sub_100008DE4(&qword_1006400B0);
    sub_100329744();
    sub_100312488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006400F0);
  }

  return result;
}

unint64_t sub_100329744()
{
  result = qword_1006400F8;
  if (!qword_1006400F8)
  {
    sub_100008DE4(&qword_100640100);
    sub_100327D74(&qword_100640108, &type metadata accessor for ArtworkImage);
    sub_100312414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006400F8);
  }

  return result;
}

unint64_t sub_100329800()
{
  result = qword_100640110;
  if (!qword_100640110)
  {
    sub_100008DE4(&qword_1006400A0);
    sub_100329570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640110);
  }

  return result;
}

uint64_t sub_10032988C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100329910()
{
  result = qword_100642240;
  if (!qword_100642240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100642240);
  }

  return result;
}

uint64_t sub_100329974(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NoticeView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100329A0C()
{
  result = qword_100640120;
  if (!qword_100640120)
  {
    sub_100008DE4(&qword_100640000);
    sub_100042B08(&qword_100640128, &qword_10063FFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640120);
  }

  return result;
}

uint64_t Optional<A>.fontTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for Font.TextStyle.body(_:);
  v3 = sub_1004DB11C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100329B64(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t MusicUIContentConfiguration.makeContentView()(uint64_t a1)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(v3 + 16))(v5, v1, a1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 32))(v5, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t MusicUIContentView.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 40);
  a3[3] = swift_getAssociatedTypeWitness();
  a3[4] = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1000357EC(a3);
  return v6(a1, a2);
}

uint64_t MusicUIContentView.configuration.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v11[-v7 - 8];
  sub_100035868(a1, v11);
  sub_100004CB8(&qword_10063E480);
  swift_dynamicCast();
  (*(a3 + 48))(v8, a2, a3);
  return sub_100008D24(a1);
}

void (*MusicUIContentView.configuration.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  *a1 = v7;
  v7[11] = a3;
  v7[12] = v3;
  v7[10] = a2;
  MusicUIContentView.configuration.getter(a2, a3, v7);
  return sub_100329F4C;
}

void sub_100329F4C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[11];
    v4 = v2[10];
    sub_100035868(*a1, (v2 + 5));
    MusicUIContentView.configuration.setter((v2 + 5), v4, v3);
    sub_100008D24(v2);
  }

  else
  {
    MusicUIContentView.configuration.setter(*a1, v2[10], v2[11]);
  }

  free(v2);
}

uint64_t MPModelPlaylistType.variant.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v3 = &enum case for Playlist.Variant.genius(_:);
      }

      else
      {
        v3 = &enum case for Playlist.Variant.folder(_:);
      }

      goto LABEL_12;
    }

    if (!a1)
    {
      v4 = enum case for Playlist.Variant.regular(_:);
      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v3 = &enum case for Playlist.Variant.smart(_:);
      goto LABEL_12;
    }
  }

  else
  {
    if (a1 < 7)
    {
      goto LABEL_11;
    }

    switch(a1)
    {
      case 7:
        v3 = &enum case for Playlist.Variant.personalMix(_:);
        goto LABEL_12;
      case 8:
LABEL_11:
        v3 = &enum case for Playlist.Variant.subscribed(_:);
        goto LABEL_12;
      case 9:
        v3 = &enum case for Playlist.Variant.favoriteSongs(_:);
LABEL_12:
        v4 = *v3;
LABEL_13:
        v5 = sub_1004DCEEC();
        v12 = *(v5 - 8);
        (*(v12 + 104))(a2, v4, v5);
        v6 = *(v12 + 56);
        v7 = a2;
        v8 = 0;
        v9 = v5;
        goto LABEL_14;
    }
  }

  v11 = sub_1004DCEEC();
  v6 = *(*(v11 - 8) + 56);
  v9 = v11;
  v7 = a2;
  v8 = 1;
LABEL_14:

  return v6(v7, v8, 1, v9);
}

uint64_t Playlist.Variant.symbolName.getter()
{
  v1 = v0;
  v2 = sub_1004DCEEC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Playlist.Variant.smart(_:))
  {
    return 0x7061687372616567;
  }

  if (v7 == enum case for Playlist.Variant.genius(_:))
  {
    return 0x7375696E6567;
  }

  if (v7 == enum case for Playlist.Variant.folder(_:))
  {
    return 0x7265646C6F66;
  }

  (*(v3 + 8))(v6, v2);
  return 0x6F6E2E636973756DLL;
}

uint64_t ArtworkImage.ViewModel.init(artwork:cropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004DCC9C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for ArtworkImage.ViewModel(0);
  return sub_100047F38(a2, a3 + *(v7 + 20), &qword_100641A60);
}

uint64_t sub_10032A40C(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_100035430(v4, a3);
}

uint64_t sub_10032A4F4@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1004DA74C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004CB8(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_1000108DC(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1004DDF8C();
    v17 = sub_1004DAECC();
    sub_1004D953C();

    sub_1004DA73C();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_10032A6F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1004DA74C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&qword_10063DBB8);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_1000108DC(v2, &v13 - v9, &qword_10063DBB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100047F38(v10, a1, &qword_100640150);
  }

  sub_1004DDF8C();
  v12 = sub_1004DAECC();
  sub_1004D953C();

  sub_1004DA73C();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t ArtworkImage.ViewModel.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004DCC9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ArtworkImage.ViewModel.init(optionalArtwork:cropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004DCC9C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1, v6) == 1)
  {
    sub_10001074C(a2, &qword_100641A60);
    sub_10001074C(a1, &unk_100642930);
    v8 = type metadata accessor for ArtworkImage.ViewModel(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v8;
    v11 = a3;
    v12 = 1;
  }

  else
  {
    (*(v7 + 32))(a3, a1, v6);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100047F38(a2, a3 + *(v13 + 20), &qword_100641A60);
    v9 = *(*(v13 - 8) + 56);
    v11 = a3;
    v12 = 0;
    v10 = v13;
  }

  return v9(v11, v12, 1, v10);
}

uint64_t ArtworkImage.ViewModel.init(artworkCatalog:cropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004DCC9C();
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    sub_1004DCB5C();
    (*(v7 + 32))(a3, v9, v6);
    v11 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100047F38(a2, a3 + *(v11 + 20), &qword_100641A60);
    return (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
  }

  else
  {
    sub_10001074C(a2, &qword_100641A60);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a3, 1, 1, v13);
  }
}

uint64_t ArtworkImage.ViewModel.calculatedAspectRatio.getter()
{
  if (sub_1004DCC2C() < 1 || sub_1004DCC3C() < 1)
  {
    *&result = 0.0;
  }

  else
  {
    v0 = sub_1004DCC2C();
    *&result = v0 / sub_1004DCC3C();
  }

  return result;
}

uint64_t ArtworkImage.Info.size.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArtworkImage.Info(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v4[2];
  v8 = *(v4 + 24);
  v9 = v4[4];
  v10 = *(v4 + 40);
  LOBYTE(v4) = *(v4 + 41);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 41) = v4;
  return result;
}

uint64_t ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6 & 1;
  *(a8 + 41) = a7;
  return result;
}

__n128 ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  sub_100047F38(a1, a9, &qword_100642C70);
  v17 = type metadata accessor for ArtworkImage.Info(0);
  sub_100336DD4(a2, a9 + v17[5], type metadata accessor for ArtworkImage.Placeholder);
  v18 = a9 + v17[6];
  *v18 = a3;
  *(v18 + 8) = a4 & 1;
  v19 = a9 + v17[7];
  v20 = *(a5 + 16);
  *v19 = *a5;
  *(v19 + 16) = v20;
  result = *(a5 + 26);
  *(v19 + 26) = result;
  v22 = a9 + v17[8];
  *v22 = a6;
  *(v22 + 8) = a7;
  *(v22 + 16) = a8;
  return result;
}

uint64_t ArtworkImage.Size.height.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ArtworkImage.Size.fittingAspectRatio.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t ArtworkImage.Size.init(cgSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3 & 1;
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *a4 = v5;
  *(a4 + 8) = v4;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  *(a4 + 16) = v6;
  *(a4 + 24) = v4;
  *(a4 + 32) = 0;
  *(a4 + 40) = 513;
  return result;
}

uint64_t ArtworkImage.Size.init(width:aspectRatio:fittingAspectRatio:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = 0.0;
  if ((a2 & 1) == 0)
  {
    v6 = *&result / a6;
    if ((a4 & 1) == 0 && a3 > a6)
    {
      v6 = *&result / a3;
      *&result = *&result / a3 * a6;
    }
  }

  *a5 = *&result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = v6;
  *(a5 + 24) = a2 & 1;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4 & 1;
  *(a5 + 41) = 2;
  return result;
}

uint64_t ArtworkImage.Size.init(height:aspectRatio:fittingAspectRatio:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = 0.0;
  if ((a2 & 1) == 0)
  {
    v6 = *&result * a6;
    if ((a4 & 1) == 0 && a3 < a6)
    {
      v6 = *&result * a3;
      *&result = *&result * a3 / a6;
    }
  }

  *a5 = v6;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = *&result;
  *(a5 + 24) = a2 & 1;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4 & 1;
  *(a5 + 41) = 2;
  return result;
}

uint64_t sub_10032B140(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 26);
  return _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(&v5, &v7) & 1;
}

uint64_t ArtworkImage.init(artwork:width:height:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v8 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v8 - 8);
  if (a3)
  {
    sub_1000108DC(a1, &v11 - v9, &unk_100642930);
    if (a5)
    {
      sub_1004D933C();
    }

    else
    {
      sub_1004D932C();
    }
  }

  else
  {
    sub_1000108DC(a1, &v11 - v9, &unk_100642930);
    if (a5)
    {
      sub_1004D931C();
    }

    else
    {
      sub_1004D930C();
    }
  }

  return sub_10001074C(a1, &unk_100642930);
}

uint64_t static ArtworkImage.with(_:placeholder:size:reusePolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ArtworkImage.Placeholder(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  sub_1003368E0(a2, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkImage.Placeholder);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  sub_100336DD4(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ArtworkImage.Placeholder);
  v15 = (v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = a3[1];
  *v15 = *a3;
  v15[1] = v16;
  *(v15 + 26) = *(a3 + 26);
  sub_10032B920(a1, sub_1003366B0, v14, a3, a4, a5);
}

uint64_t sub_10032B4B8(uint64_t a1)
{
  v3 = type metadata accessor for ArtworkImage.Placeholder(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_100004CB8(&qword_100640888);
  __chkstk_darwin(v6);
  v8 = (v31 - v7);
  v9 = sub_100004CB8(&unk_100641AA0);
  __chkstk_darwin(v9);
  v11 = (v31 - v10);
  if (*(a1 + 8) & 1) != 0 || (*(a1 + 24))
  {
    sub_1003368E0(v1, v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkImage.Placeholder);
    v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v13 = swift_allocObject();
    sub_100336DD4(v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ArtworkImage.Placeholder);
    v14 = (v13 + ((v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
    v15 = *(a1 + 16);
    *v14 = *a1;
    v14[1] = v15;
    *(v14 + 26) = *(a1 + 26);
    *v8 = sub_100339D1C;
    v8[1] = v13;
    swift_storeEnumTagMultiPayload();
    sub_100004CB8(&qword_100640710);
    sub_1003384E0();
    sub_100042B08(&unk_100641AD0, &qword_100640710);
    return sub_1004DAADC();
  }

  else
  {
    v17 = *a1;
    v18 = *(a1 + 16);
    v19 = sub_10032D3B4();
    v21 = v20;
    sub_10032D3B4();
    v23 = v22;

    sub_10032D3B4();
    v25 = v24;

    v26 = type metadata accessor for ArtworkImage.Placeholder.View(0);
    v27 = *(v26 + 32);
    *(v11 + v27) = swift_getKeyPath();
    sub_100004CB8(&qword_10063DBB8);
    swift_storeEnumTagMultiPayload();
    v28 = *(v26 + 36);
    *(v11 + v28) = swift_getKeyPath();
    sub_100004CB8(&unk_10063DBC0);
    swift_storeEnumTagMultiPayload();
    *v11 = v19;
    v11[1] = v21;
    v11[2] = v23;
    v11[3] = v17;
    v11[4] = v18;
    v11[5] = v25;
    *(v11 + *(sub_100004CB8(&unk_100641AB0) + 36)) = 0;
    sub_1004DBD1C();
    sub_1004D9F5C();
    v29 = (v11 + *(v9 + 36));
    v30 = v31[1];
    *v29 = v31[0];
    v29[1] = v30;
    v29[2] = v31[2];
    sub_1000108DC(v11, v8, &unk_100641AA0);
    swift_storeEnumTagMultiPayload();
    sub_100004CB8(&qword_100640710);
    sub_1003384E0();
    sub_100042B08(&unk_100641AD0, &qword_100640710);
    sub_1004DAADC();
    return sub_10001074C(v11, &unk_100641AA0);
  }
}

uint64_t sub_10032B920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a5;
  v60 = a3;
  v57 = a6;
  v58 = a2;
  v8 = sub_100004CB8(&qword_100641A60);
  __chkstk_darwin(v8 - 8);
  v66 = &v54 - v9;
  v10 = sub_1004DCC0C();
  v67 = *(v10 - 8);
  __chkstk_darwin(v10);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004CB8(&qword_100642C70);
  __chkstk_darwin(v12 - 8);
  v56 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  v23 = sub_1004D934C();
  v70 = *(v23 - 8);
  __chkstk_darwin(v23);
  v68 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v62 = &v54 - v26;
  __chkstk_darwin(v27);
  v63 = &v54 - v28;
  __chkstk_darwin(v29);
  v31 = &v54 - v30;
  __chkstk_darwin(v32);
  v69 = &v54 - v33;
  v61 = a1;
  sub_1000108DC(a1, v16, &qword_100642C70);
  v34 = type metadata accessor for ArtworkImage.ViewModel(0);
  v55 = *(*(v34 - 8) + 48);
  v35 = v55(v16, 1, v34);
  v64 = v23;
  if (v35 == 1)
  {
    sub_10001074C(v16, &qword_100642C70);
    v36 = sub_1004DCC9C();
    (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
  }

  else
  {
    v37 = sub_1004DCC9C();
    v38 = *(v37 - 8);
    v54 = v10;
    v39 = v38;
    (*(v38 + 16))(v22, v16, v37);
    sub_100336880(v16, type metadata accessor for ArtworkImage.ViewModel);
    (*(v39 + 56))(v22, 0, 1, v37);
    v10 = v54;
  }

  v40 = *(a4 + 8);
  v41 = *(a4 + 24);
  sub_1000108DC(v22, v19, &unk_100642930);
  if (v40)
  {
    if (v41)
    {
      sub_1004D933C();
    }

    else
    {
      sub_1004D932C();
    }
  }

  else if (v41)
  {
    sub_1004D931C();
  }

  else
  {
    sub_1004D930C();
  }

  v42 = v64;
  sub_10001074C(v22, &unk_100642930);
  (*(v70 + 32))(v69, v31, v42);
  sub_1004D92EC();
  v43 = v56;
  sub_1000108DC(v61, v56, &qword_100642C70);
  v44 = v55(v43, 1, v34);
  v45 = v65;
  if (v44 == 1)
  {
    sub_10001074C(v43, &qword_100642C70);
    v47 = v66;
    v46 = v67;
    (*(v67 + 56))(v66, 1, 1, v10);
  }

  else
  {
    v47 = v66;
    sub_1000108DC(v43 + *(v34 + 20), v66, &qword_100641A60);
    sub_100336880(v43, type metadata accessor for ArtworkImage.ViewModel);
    v46 = v67;
    if ((*(v67 + 48))(v47, 1, v10) != 1)
    {
      (*(v46 + 32))(v45, v47, v10);
      goto LABEL_19;
    }
  }

  if (qword_10063D958 != -1)
  {
    swift_once();
  }

  v48 = sub_100035430(v10, static Artwork.CropStyle.fallback);
  (*(v46 + 16))(v45, v48, v10);
  if ((*(v46 + 48))(v47, 1, v10) != 1)
  {
    sub_10001074C(v47, &qword_100641A60);
  }

LABEL_19:
  v49 = v62;
  v50 = v68;
  sub_1004D92CC();
  (*(v46 + 8))(v45, v10);
  v51 = *(v70 + 8);
  v51(v50, v42);
  v52 = v63;
  sub_1004D92FC();
  v51(v49, v42);
  sub_100004CB8(&qword_1006406E8);
  sub_100338428();
  sub_1004D92DC();
  v51(v52, v42);
  return (v51)(v69, v42);
}

uint64_t sub_10032C0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a5;
  v60 = a3;
  v57 = a6;
  v58 = a2;
  v8 = sub_100004CB8(&qword_100641A60);
  __chkstk_darwin(v8 - 8);
  v66 = &v54 - v9;
  v10 = sub_1004DCC0C();
  v67 = *(v10 - 8);
  __chkstk_darwin(v10);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004CB8(&qword_100642C70);
  __chkstk_darwin(v12 - 8);
  v56 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  v23 = sub_1004D934C();
  v70 = *(v23 - 8);
  __chkstk_darwin(v23);
  v68 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v62 = &v54 - v26;
  __chkstk_darwin(v27);
  v63 = &v54 - v28;
  __chkstk_darwin(v29);
  v31 = &v54 - v30;
  __chkstk_darwin(v32);
  v69 = &v54 - v33;
  v61 = a1;
  sub_1000108DC(a1, v16, &qword_100642C70);
  v34 = type metadata accessor for ArtworkImage.ViewModel(0);
  v55 = *(*(v34 - 8) + 48);
  v35 = v55(v16, 1, v34);
  v64 = v23;
  if (v35 == 1)
  {
    sub_10001074C(v16, &qword_100642C70);
    v36 = sub_1004DCC9C();
    (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
  }

  else
  {
    v37 = sub_1004DCC9C();
    v38 = *(v37 - 8);
    v54 = v10;
    v39 = v38;
    (*(v38 + 16))(v22, v16, v37);
    sub_100336880(v16, type metadata accessor for ArtworkImage.ViewModel);
    (*(v39 + 56))(v22, 0, 1, v37);
    v10 = v54;
  }

  v40 = *(a4 + 8);
  v41 = *(a4 + 24);
  sub_1000108DC(v22, v19, &unk_100642930);
  if (v40)
  {
    if (v41)
    {
      sub_1004D933C();
    }

    else
    {
      sub_1004D932C();
    }
  }

  else if (v41)
  {
    sub_1004D931C();
  }

  else
  {
    sub_1004D930C();
  }

  v42 = v64;
  sub_10001074C(v22, &unk_100642930);
  (*(v70 + 32))(v69, v31, v42);
  sub_1004D92EC();
  v43 = v56;
  sub_1000108DC(v61, v56, &qword_100642C70);
  v44 = v55(v43, 1, v34);
  v45 = v65;
  if (v44 == 1)
  {
    sub_10001074C(v43, &qword_100642C70);
    v47 = v66;
    v46 = v67;
    (*(v67 + 56))(v66, 1, 1, v10);
  }

  else
  {
    v47 = v66;
    sub_1000108DC(v43 + *(v34 + 20), v66, &qword_100641A60);
    sub_100336880(v43, type metadata accessor for ArtworkImage.ViewModel);
    v46 = v67;
    if ((*(v67 + 48))(v47, 1, v10) != 1)
    {
      (*(v46 + 32))(v45, v47, v10);
      goto LABEL_19;
    }
  }

  if (qword_10063D958 != -1)
  {
    swift_once();
  }

  v48 = sub_100035430(v10, static Artwork.CropStyle.fallback);
  (*(v46 + 16))(v45, v48, v10);
  if ((*(v46 + 48))(v47, 1, v10) != 1)
  {
    sub_10001074C(v47, &qword_100641A60);
  }

LABEL_19:
  v49 = v62;
  v50 = v68;
  sub_1004D92CC();
  (*(v46 + 8))(v45, v10);
  v51 = *(v70 + 8);
  v51(v50, v42);
  v52 = v63;
  sub_1004D92FC();
  v51(v49, v42);
  sub_1003386E4();
  sub_1004D92DC();
  v51(v52, v42);
  return (v51)(v69, v42);
}

uint64_t static ArtworkImage.with<A>(_:placeholderViewBuilder:size:reusePolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v75 = a5;
  v90 = a4;
  v87 = a2;
  v88 = a3;
  v77 = a8;
  v11 = sub_100004CB8(&qword_100641A60);
  __chkstk_darwin(v11 - 8);
  v80 = v69 - v12;
  v13 = sub_1004DCC0C();
  v81 = *(v13 - 8);
  v82 = v13;
  __chkstk_darwin(v13);
  v15 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a6;
  v91 = a6;
  v92 = a7;
  v76 = a7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = *(OpaqueTypeMetadata2 - 8);
  v86 = OpaqueTypeMetadata2;
  __chkstk_darwin(OpaqueTypeMetadata2);
  v83 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v84 = v69 - v19;
  v20 = sub_100004CB8(&qword_100642C70);
  __chkstk_darwin(v20 - 8);
  v71 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v69 - v23;
  v25 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v25 - 8);
  v27 = v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = v69 - v29;
  v78 = sub_1004D934C();
  v31 = *(v78 - 8);
  __chkstk_darwin(v78);
  v33 = v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v73 = v69 - v35;
  __chkstk_darwin(v36);
  v74 = v69 - v37;
  __chkstk_darwin(v38);
  v40 = v69 - v39;
  __chkstk_darwin(v41);
  v43 = v69 - v42;
  v72 = a1;
  sub_1000108DC(a1, v24, &qword_100642C70);
  v44 = type metadata accessor for ArtworkImage.ViewModel(0);
  v45 = *(v44 - 8);
  v70 = *(v45 + 48);
  v69[1] = v45 + 48;
  v46 = v70(v24, 1, v44);
  v79 = v15;
  if (v46 == 1)
  {
    sub_10001074C(v24, &qword_100642C70);
    v47 = sub_1004DCC9C();
    (*(*(v47 - 8) + 56))(v30, 1, 1, v47);
  }

  else
  {
    v48 = sub_1004DCC9C();
    v49 = *(v48 - 8);
    (*(v49 + 16))(v30, v24, v48);
    sub_100336880(v24, type metadata accessor for ArtworkImage.ViewModel);
    (*(v49 + 56))(v30, 0, 1, v48);
  }

  v50 = *(v90 + 8);
  v51 = *(v90 + 24);
  sub_1000108DC(v30, v27, &unk_100642930);
  if (v50)
  {
    if (v51)
    {
      sub_1004D933C();
    }

    else
    {
      sub_1004D932C();
    }
  }

  else if (v51)
  {
    sub_1004D931C();
  }

  else
  {
    sub_1004D930C();
  }

  v52 = v79;
  sub_10001074C(v30, &unk_100642930);
  v53 = v78;
  (*(v31 + 32))(v43, v40, v78);
  sub_1004D92EC();
  v54 = v71;
  sub_1000108DC(v72, v71, &qword_100642C70);
  if (v70(v54, 1, v44) == 1)
  {
    sub_10001074C(v54, &qword_100642C70);
    v55 = v80;
    v56 = v81;
    v57 = v82;
    (*(v81 + 56))(v80, 1, 1, v82);
  }

  else
  {
    v55 = v80;
    sub_1000108DC(v54 + *(v44 + 20), v80, &qword_100641A60);
    sub_100336880(v54, type metadata accessor for ArtworkImage.ViewModel);
    v56 = v81;
    v57 = v82;
    if ((*(v81 + 48))(v55, 1, v82) != 1)
    {
      (*(v56 + 32))(v52, v55, v57);
      goto LABEL_19;
    }
  }

  if (qword_10063D958 != -1)
  {
    swift_once();
  }

  v58 = sub_100035430(v57, static Artwork.CropStyle.fallback);
  (*(v56 + 16))(v52, v58, v57);
  if ((*(v56 + 48))(v55, 1, v57) != 1)
  {
    sub_10001074C(v55, &qword_100641A60);
  }

LABEL_19:
  v59 = v73;
  sub_1004D92CC();
  (*(v56 + 8))(v52, v57);
  v60 = *(v31 + 8);
  v60(v33, v53);
  v61 = v74;
  sub_1004D92FC();
  v60(v59, v53);
  v62 = v83;
  sub_1004D92DC();
  v60(v61, v53);
  v60(v43, v53);
  v64 = v84;
  v63 = v85;
  v65 = *(v85 + 16);
  v66 = v86;
  v65(v84, v62, v86);
  v67 = *(v63 + 8);
  v67(v62, v66);
  v65(v77, v64, v66);
  return (v67)(v64, v66);
}

uint64_t static ArtworkImage.socialArtworkImage(_:displayName:size:reusePolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  sub_10032C0F8(a1, sub_100336778, v12, a4, a5, a6);
}

uint64_t sub_10032D290@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t ArtworkImage.Placeholder.view(availableSize:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = sub_10032D3B4();
  v8 = v7;
  sub_10032D3B4();
  v10 = v9;

  sub_10032D3B4();
  v12 = v11;

  v13 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v14 = *(v13 + 32);
  *(a1 + v14) = swift_getKeyPath();
  sub_100004CB8(&qword_10063DBB8);
  swift_storeEnumTagMultiPayload();
  v15 = *(v13 + 36);
  *(a1 + v15) = swift_getKeyPath();
  sub_100004CB8(&unk_10063DBC0);
  swift_storeEnumTagMultiPayload();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = v12;
  result = sub_100004CB8(&unk_100641AB0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_10032D3B4()
{
  v1 = v0;
  v2 = sub_1004DCEEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v9 = sub_100004CB8(&qword_10063E508);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003368E0(v1, v17, type metadata accessor for ArtworkImage.Placeholder);
  v18 = sub_100004CB8(&unk_100641A80);
  v19 = (*(*(v18 - 8) + 48))(v17, 11, v18);
  if (v19 > 5)
  {
    if (v19 > 8)
    {
      if (v19 == 9)
      {
        v20 = 0x6F69646172;
        sub_1004DB05C();
        return v20;
      }

      if (v19 != 10)
      {
        sub_1004DB04C();
        return 0xD000000000000013;
      }

      v20 = 0x73726174697567;
      goto LABEL_5;
    }

    if (v19 == 6)
    {
      v20 = 30324;
      sub_1004DB05C();
      return v20;
    }

    if (v19 == 7)
    {
      sub_1004DB05C();
      return 0x696D2E636973756DLL;
    }

    v20 = 0x662E6E6F73726570;
LABEL_24:
    sub_1004DB05C();
    return v20;
  }

  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v20 = 0xD000000000000011;
      sub_1004DB04C();
      return v20;
    }

    if (v19 == 4)
    {
      v20 = 1937075312;
      sub_1004DB04C();
      return v20;
    }

    v20 = 0x6F6E2E636973756DLL;
    goto LABEL_24;
  }

  if (v19)
  {
    v20 = 0x636973756DLL;
LABEL_5:
    sub_1004DB04C();
    return v20;
  }

  sub_100047F38(v17, v14, &qword_10063E508);
  sub_1000108DC(v14, v11, &qword_10063E508);
  v21 = *(v3 + 48);
  if (v21(v11, 1, v2) == 1)
  {
    (*(v3 + 104))(v8, enum case for Playlist.Variant.regular(_:), v2);
    if (v21(v11, 1, v2) != 1)
    {
      sub_10001074C(v11, &qword_10063E508);
    }
  }

  else
  {
    (*(v3 + 32))(v8, v11, v2);
  }

  (*(v3 + 16))(v5, v8, v2);
  v22 = (*(v3 + 88))(v5, v2);
  if (v22 == enum case for Playlist.Variant.smart(_:))
  {
    (*(v3 + 8))(v8, v2);
    v20 = 0x7061687372616567;
  }

  else if (v22 == enum case for Playlist.Variant.genius(_:))
  {
    (*(v3 + 8))(v8, v2);
    v20 = 0x7375696E6567;
  }

  else
  {
    v23 = enum case for Playlist.Variant.folder(_:);
    v24 = *(v3 + 8);
    v25 = v22;
    v24(v8, v2);
    if (v25 == v23)
    {
      v20 = 0x7265646C6F66;
    }

    else
    {
      v20 = 0x6F6E2E636973756DLL;
      v24(v5, v2);
    }
  }

  sub_1004DB04C();
  sub_10001074C(v14, &qword_10063E508);
  return v20;
}

uint64_t ArtworkImage.Placeholder.View.init(name:weight:availableSize:scaleFactor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v14 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v15 = *(v14 + 32);
  *(a3 + v15) = swift_getKeyPath();
  sub_100004CB8(&qword_10063DBB8);
  swift_storeEnumTagMultiPayload();
  v16 = *(v14 + 36);
  *(a3 + v16) = swift_getKeyPath();
  sub_100004CB8(&unk_10063DBC0);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  return result;
}

double sub_10032DA90@<D0>(uint64_t *a1@<X8>)
{
  sub_1004D9FFC();
  v3 = v2;
  v5 = v4;
  v6 = sub_10032D3B4();
  v8 = v7;
  sub_10032D3B4();
  v10 = v9;

  sub_10032D3B4();
  v12 = v11;

  v13 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v14 = *(v13 + 32);
  *(a1 + v14) = swift_getKeyPath();
  sub_100004CB8(&qword_10063DBB8);
  swift_storeEnumTagMultiPayload();
  v15 = *(v13 + 36);
  *(a1 + v15) = swift_getKeyPath();
  sub_100004CB8(&unk_10063DBC0);
  swift_storeEnumTagMultiPayload();
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v3;
  a1[4] = v5;
  a1[5] = v12;
  *(a1 + *(sub_100004CB8(&unk_100641AB0) + 36)) = 0;
  sub_1004DBD1C();
  sub_1004D9F5C();
  v16 = (a1 + *(sub_100004CB8(&unk_100641AA0) + 36));
  *v16 = v18;
  v16[1] = v19;
  result = *&v20;
  v16[2] = v20;
  return result;
}

uint64_t EnvironmentValues.placeholderStyle.getter()
{
  sub_10033680C();

  return sub_1004DA75C();
}

uint64_t sub_10032DCAC(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100640150);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000108DC(a1, &v9 - v6, &qword_100640150);
  sub_1000108DC(v7, v4, &qword_100640150);
  sub_10033680C();
  sub_1004DA76C();
  return sub_10001074C(v7, &qword_100640150);
}

uint64_t EnvironmentValues.placeholderStyle.setter(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100640150);
  __chkstk_darwin(v2 - 8);
  sub_1000108DC(a1, &v5 - v3, &qword_100640150);
  sub_10033680C();
  sub_1004DA76C();
  return sub_10001074C(a1, &qword_100640150);
}

uint64_t ArtworkImage.Placeholder.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1004DA8BC();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004CB8(&qword_100640150);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v37 - v11;
  v37[3] = type metadata accessor for ArtworkImage.Placeholder.View(0);
  sub_10032A6F4(v12);
  v13 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v12, 1, v13) == 1)
  {
    sub_10001074C(v12, &qword_100640150);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
  }

  else
  {
    sub_1000108DC((v12 + 40), &v40, &qword_100641D90);
    sub_100336880(v12, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    if (*(&v41 + 1))
    {
      sub_100035850(&v40, v43);
      v37[2] = v45;
      v15 = sub_100008C70(v43, v44);
      v37[1] = v37;
      v16 = __chkstk_darwin(v15);
      (*(v18 + 16))(v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
      v19 = sub_1004D9F6C();
      sub_100008D24(v43);
      goto LABEL_6;
    }
  }

  sub_10001074C(&v40, &qword_100641D90);
  sub_10032A4F4(&unk_10063DBC0, &type metadata accessor for ColorSchemeContrast, v6);
  v20 = [objc_opt_self() secondarySystemFillColor];
  v21 = sub_1004DB8CC();
  (*(v38 + 8))(v6, v39);
  v43[0] = v21;
  v19 = sub_1004D9F6C();
LABEL_6:
  sub_10032A6F4(v9);
  if (v14(v9, 1, v13) == 1)
  {
    sub_10001074C(v9, &qword_100640150);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
LABEL_10:
    sub_10001074C(&v40, &qword_100641D90);
    sub_10032A4F4(&unk_10063DBC0, &type metadata accessor for ColorSchemeContrast, v6);
    v27 = [objc_opt_self() tertiaryLabelColor];
    v28 = sub_1004DB8CC();
    (*(v38 + 8))(v6, v39);
    v43[0] = v28;
    v26 = sub_1004D9F6C();
    goto LABEL_11;
  }

  sub_1000108DC(v9, &v40, &qword_100641D90);
  sub_100336880(v9, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  if (!*(&v41 + 1))
  {
    goto LABEL_10;
  }

  sub_100035850(&v40, v43);
  v22 = sub_100008C70(v43, v44);
  v23 = __chkstk_darwin(v22);
  (*(v25 + 16))(v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v26 = sub_1004D9F6C();
  sub_100008D24(v43);
LABEL_11:
  v29 = sub_1004DB85C();
  v30 = sub_1004DAF2C();

  v31 = sub_1004DBD1C();
  v33 = v32;
  v34 = a1 + *(sub_100004CB8(&qword_100640158) + 36);
  sub_10032E4C4(v2, v26, v34);

  result = sub_100004CB8(&qword_100640160);
  v36 = (v34 + *(result + 36));
  *v36 = v31;
  v36[1] = v33;
  *a1 = v29;
  *(a1 + 8) = v19;
  *(a1 + 16) = v30;
  return result;
}

uint64_t sub_10032E4C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = sub_100004CB8(&qword_100640150);
  __chkstk_darwin(v5 - 8);
  v42 = v39 - v6;
  v7 = sub_100004CB8(&qword_100640168);
  __chkstk_darwin(v7 - 8);
  v46 = v39 - v8;
  v9 = sub_1004DBDAC();
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v45 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004CB8(&qword_100641CB0);
  __chkstk_darwin(v11 - 8);
  v13 = v39 - v12;
  v14 = sub_100004CB8(&qword_100640840);
  v15 = *(v14 - 8);
  v40 = v14;
  v41 = v15;
  __chkstk_darwin(v14);
  v17 = v39 - v16;
  v18 = sub_100004CB8(&qword_100640848);
  __chkstk_darwin(v18 - 8);
  v20 = v39 - v19;
  v39[1] = a1;

  v21 = sub_1004DB90C();
  v22 = sub_1004DB02C();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);

  v23 = sub_1004DB07C();
  sub_10001074C(v13, &qword_100641CB0);
  KeyPath = swift_getKeyPath();
  v48 = v21;
  v49 = a2;
  v50 = KeyPath;
  v51 = v23;
  v25 = sub_100004CB8(&qword_100640850);
  v26 = sub_1003399C0();
  sub_1004DB3AC();

  v48 = v25;
  v49 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v40;
  sub_1004DB44C();
  (*(v41 + 8))(v17, v27);
  type metadata accessor for ArtworkImage.Placeholder.View(0);
  v28 = v42;
  sub_10032A6F4(v42);
  v29 = v28;
  v30 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
  {
    sub_10001074C(v29, &qword_100640150);
    v32 = v43;
    v31 = v44;
    v33 = v46;
    (*(v43 + 56))(v46, 1, 1, v44);
  }

  else
  {
    v34 = v29 + *(v30 + 24);
    v33 = v46;
    sub_1000108DC(v34, v46, &qword_100640168);
    sub_100336880(v29, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    v32 = v43;
    v31 = v44;
    if ((*(v43 + 48))(v33, 1, v44) != 1)
    {
      v35 = v45;
      (*(v32 + 32))(v45, v33, v31);
      goto LABEL_7;
    }
  }

  v35 = v45;
  (*(v32 + 104))(v45, enum case for BlendMode.normal(_:), v31);
  if ((*(v32 + 48))(v33, 1, v31) != 1)
  {
    sub_10001074C(v33, &qword_100640168);
  }

LABEL_7:
  v36 = sub_100004CB8(&qword_100640880);
  v37 = v47;
  (*(v32 + 32))(v47 + *(v36 + 36), v35, v31);
  return sub_100339B30(v20, v37);
}

uint64_t ArtworkImage.Placeholder.View.Style.init(foreground:background:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  *a4 = 0u;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *(a4 + 3) = 0u;
  *(a4 + 4) = 0u;
  v9 = *(v8 + 24);
  v10 = sub_1004DBDAC();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  sub_1000107AC(a1, a4, &qword_100641D90);
  sub_1000107AC(a2, (a4 + 40), &qword_100641D90);
  return sub_1000107AC(a3, &a4[v9], &qword_100640168);
}

uint64_t sub_10032ED64()
{
  v0 = sub_100004CB8(&qword_100640168);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_100035718(v3, static ArtworkImage.Placeholder.View.Style.nowPlaying);
  v4 = sub_100035430(v3, static ArtworkImage.Placeholder.View.Style.nowPlaying);
  sub_1004DB87C();
  v5 = sub_1004DB88C();

  v12[3] = &type metadata for Color;
  v12[4] = &protocol witness table for Color;
  v12[0] = v5;
  sub_1004DB84C();
  v6 = sub_1004DB88C();

  v11[3] = &type metadata for Color;
  v11[4] = &protocol witness table for Color;
  v11[0] = v6;
  v7 = sub_1004DBDAC();
  v8 = *(*(v7 - 8) + 56);
  v8(v2, 1, 1, v7);
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = 0u;
  v9 = *(v3 + 24);
  v8(&v4[v9], 1, 1, v7);
  sub_1000107AC(v12, v4, &qword_100641D90);
  sub_1000107AC(v11, (v4 + 40), &qword_100641D90);
  return sub_1000107AC(v2, &v4[v9], &qword_100640168);
}

uint64_t sub_10032EFA4()
{
  v0 = sub_100004CB8(&qword_100640168);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - v1;
  v3 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_100035718(v3, static ArtworkImage.Placeholder.View.Style.miniPlayer);
  v4 = sub_100035430(v3, static ArtworkImage.Placeholder.View.Style.miniPlayer);
  v5 = objc_opt_self();
  v6 = [v5 quaternaryLabelColor];
  v7 = sub_1004DB8CC();
  v15[3] = &type metadata for Color;
  v15[4] = &protocol witness table for Color;
  v15[0] = v7;
  v8 = [v5 tertiarySystemFillColor];
  v9 = sub_1004DB8CC();
  v14[3] = &type metadata for Color;
  v14[4] = &protocol witness table for Color;
  v14[0] = v9;
  v10 = sub_1004DBDAC();
  v11 = *(*(v10 - 8) + 56);
  v11(v2, 1, 1, v10);
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = 0u;
  v12 = *(v3 + 24);
  v11(&v4[v12], 1, 1, v10);
  sub_1000107AC(v15, v4, &qword_100641D90);
  sub_1000107AC(v14, (v4 + 40), &qword_100641D90);
  return sub_1000107AC(v2, &v4[v12], &qword_100640168);
}

uint64_t sub_10032F1E8()
{
  v0 = sub_100004CB8(&qword_100640168);
  __chkstk_darwin(v0 - 8);
  v2 = v13 - v1;
  v3 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_100035718(v3, static ArtworkImage.Placeholder.View.Style.widgets);
  v4 = sub_100035430(v3, static ArtworkImage.Placeholder.View.Style.widgets);
  sub_1004DB87C();
  v5 = sub_1004DB88C();

  v14[3] = &type metadata for Color;
  v14[4] = &protocol witness table for Color;
  v14[0] = v5;
  sub_1004DB87C();
  v6 = sub_1004DB88C();

  v13[3] = &type metadata for Color;
  v13[4] = &protocol witness table for Color;
  v13[0] = v6;
  v7 = enum case for BlendMode.plusLighter(_:);
  v8 = sub_1004DBDAC();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  v10 = *(v9 + 56);
  v10(v2, 0, 1, v8);
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = 0u;
  v11 = *(v3 + 24);
  v10(&v4[v11], 1, 1, v8);
  sub_1000107AC(v14, v4, &qword_100641D90);
  sub_1000107AC(v13, (v4 + 40), &qword_100641D90);
  return sub_1000107AC(v2, &v4[v11], &qword_100640168);
}

uint64_t sub_10032F460()
{
  v0 = sub_100004CB8(&qword_100640168);
  __chkstk_darwin(v0 - 8);
  v2 = v10 - v1;
  v3 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_100035718(v3, static ArtworkImage.Placeholder.View.Style.accentuated);
  v4 = sub_100035430(v3, static ArtworkImage.Placeholder.View.Style.accentuated);
  v5 = sub_1004DB7FC();
  v12[3] = &type metadata for Color;
  v12[4] = &protocol witness table for Color;
  v12[0] = v5;
  v6 = sub_1004DBDAC();
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v7 = *(*(v6 - 8) + 56);
  v7(v2, 1, 1, v6);
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = 0u;
  v8 = *(v3 + 24);
  v7(&v4[v8], 1, 1, v6);
  sub_1000107AC(v12, v4, &qword_100641D90);
  sub_1000107AC(v10, (v4 + 40), &qword_100641D90);
  return sub_1000107AC(v2, &v4[v8], &qword_100640168);
}

uint64_t sub_10032F668@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v6 = sub_100035430(v5, a2);
  return sub_1003368E0(v6, a3, type metadata accessor for ArtworkImage.Placeholder.View.Style);
}

uint64_t sub_10032F6D0@<X0>(char *a1@<X8>)
{
  v2 = sub_100004CB8(&qword_100640168);
  __chkstk_darwin(v2 - 8);
  v4 = v14 - v3;
  v15[3] = &type metadata for Color;
  v15[4] = &protocol witness table for Color;
  v5 = objc_opt_self();
  v6 = [v5 tertiaryLabelColor];
  v7 = sub_1004DB8CC();
  v14[4] = &protocol witness table for Color;
  v15[0] = v7;
  v14[3] = &type metadata for Color;
  v8 = [v5 secondarySystemFillColor];
  v14[0] = sub_1004DB8CC();
  v9 = sub_1004DBDAC();
  v10 = *(*(v9 - 8) + 56);
  v10(v4, 1, 1, v9);
  v11 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  v12 = *(v11 + 24);
  v10(&a1[v12], 1, 1, v9);
  sub_1000107AC(v15, a1, &qword_100641D90);
  sub_1000107AC(v14, (a1 + 40), &qword_100641D90);
  return sub_1000107AC(v4, &a1[v12], &qword_100640168);
}

uint64_t sub_10032F890(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6F69646172;
    v7 = 0x65726E6567;
    if (a1 != 10)
    {
      v7 = 0x7265736F706D6F63;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 30324;
    v9 = 0x6F68706F7263696DLL;
    if (a1 != 7)
    {
      v9 = 0x6E6F73726570;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x636973756DLL;
    v2 = 0x6C79616C5077656ELL;
    v3 = 0x7473696C79616C70;
    if (a1 != 4)
    {
      v3 = 0x646956636973756DLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6979616C50776F6ELL;
    if (a1 != 1)
    {
      v4 = 0x65646C6F4677656ELL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10032FA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003395F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10032FA44(uint64_t a1)
{
  v2 = sub_100336948();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FA80(uint64_t a1)
{
  v2 = sub_100336948();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FABC(uint64_t a1)
{
  v2 = sub_10033699C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FAF8(uint64_t a1)
{
  v2 = sub_10033699C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FB34@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10032FB64(uint64_t a1)
{
  v2 = sub_1003369F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FBA0(uint64_t a1)
{
  v2 = sub_1003369F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FBDC(uint64_t a1)
{
  v2 = sub_100336AEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FC18(uint64_t a1)
{
  v2 = sub_100336AEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FC54(uint64_t a1)
{
  v2 = sub_100336D38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FC90(uint64_t a1)
{
  v2 = sub_100336D38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FCCC(uint64_t a1)
{
  v2 = sub_100336B94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FD08(uint64_t a1)
{
  v2 = sub_100336B94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FD44(uint64_t a1)
{
  v2 = sub_100336C90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FD80(uint64_t a1)
{
  v2 = sub_100336C90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FDBC(uint64_t a1)
{
  v2 = sub_100336C3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FDF8(uint64_t a1)
{
  v2 = sub_100336C3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FE34(uint64_t a1)
{
  v2 = sub_100336CE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FE70(uint64_t a1)
{
  v2 = sub_100336CE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FEAC(uint64_t a1)
{
  v2 = sub_100336A98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FEE8(uint64_t a1)
{
  v2 = sub_100336A98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032FF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004DF08C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10032FFBC(uint64_t a1)
{
  v2 = sub_100336BE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032FFF8(uint64_t a1)
{
  v2 = sub_100336BE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100330034(uint64_t a1)
{
  v2 = sub_100336A44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100330070(uint64_t a1)
{
  v2 = sub_100336A44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003300AC(uint64_t a1)
{
  v2 = sub_100336B40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003300E8(uint64_t a1)
{
  v2 = sub_100336B40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ArtworkImage.Placeholder.encode(to:)(void *a1)
{
  v2 = sub_100004CB8(&qword_100640170);
  v84 = *(v2 - 8);
  v85 = v2;
  __chkstk_darwin(v2);
  v83 = &v53 - v3;
  v4 = sub_100004CB8(&qword_100640178);
  v81 = *(v4 - 8);
  v82 = v4;
  __chkstk_darwin(v4);
  v80 = &v53 - v5;
  v6 = sub_100004CB8(&qword_100640180);
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v77 = &v53 - v7;
  v8 = sub_100004CB8(&qword_100640188);
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v74 = &v53 - v9;
  v10 = sub_100004CB8(&qword_100640190);
  v72 = *(v10 - 8);
  v73 = v10;
  __chkstk_darwin(v10);
  v71 = &v53 - v11;
  v70 = sub_100004CB8(&qword_100640198);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v53 - v12;
  v65 = sub_100004CB8(&qword_1006401A0);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v53 - v13;
  v68 = sub_100004CB8(&qword_1006401A8);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v53 - v14;
  v15 = sub_100004CB8(&qword_10063E508);
  __chkstk_darwin(v15 - 8);
  v61 = &v53 - v16;
  v60 = sub_100004CB8(&qword_1006401B0);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v53 - v17;
  v57 = sub_100004CB8(&qword_1006401B8);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v19 = &v53 - v18;
  v55 = sub_100004CB8(&qword_1006401C0);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v21 = &v53 - v20;
  v22 = sub_100004CB8(&qword_1006401C8);
  v53 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v53 - v23;
  v25 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v25 - 8);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100004CB8(&qword_1006401D0);
  v29 = *(v28 - 8);
  v88 = v28;
  v89 = v29;
  __chkstk_darwin(v28);
  v31 = &v53 - v30;
  sub_100008C70(a1, a1[3]);
  sub_100336948();
  v87 = v31;
  sub_1004DF30C();
  sub_1003368E0(v86, v27, type metadata accessor for ArtworkImage.Placeholder);
  v32 = sub_100004CB8(&unk_100641A80);
  v33 = (*(*(v32 - 8) + 48))(v27, 11, v32);
  if (v33 <= 5)
  {
    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v92 = 2;
        sub_100336C90();
        v39 = v87;
        v38 = v88;
        sub_1004DEEEC();
        v43 = *(v56 + 8);
        v44 = v19;
        v45 = &v89;
      }

      else if (v33 == 4)
      {
        v93 = 3;
        sub_100336C3C();
        v42 = v58;
        v39 = v87;
        v38 = v88;
        sub_1004DEEEC();
        v43 = *(v59 + 8);
        v44 = v42;
        v45 = v94;
      }

      else
      {
        v94[17] = 5;
        sub_100336B94();
        v52 = v62;
        v39 = v87;
        v38 = v88;
        sub_1004DEEEC();
        v43 = *(v63 + 8);
        v44 = v52;
        v45 = &v95;
      }
    }

    else
    {
      if (!v33)
      {
        v46 = v61;
        sub_100047F38(v27, v61, &qword_10063E508);
        v94[16] = 4;
        sub_100336BE8();
        v47 = v64;
        v49 = v87;
        v48 = v88;
        sub_1004DEEEC();
        sub_1004DCEEC();
        sub_100336D8C(&qword_100640220, &type metadata accessor for Playlist.Variant);
        v50 = v68;
        sub_1004DEF0C();
        (*(v67 + 8))(v47, v50);
        sub_10001074C(v46, &qword_10063E508);
        return (*(v89 + 8))(v49, v48);
      }

      if (v33 == 1)
      {
        v90 = 0;
        sub_100336D38();
        v34 = v87;
        v35 = v88;
        sub_1004DEEEC();
        (*(v53 + 8))(v24, v22);
        return (*(v89 + 8))(v34, v35);
      }

      v91 = 1;
      sub_100336CE4();
      v39 = v87;
      v38 = v88;
      sub_1004DEEEC();
      v43 = *(v54 + 8);
      v44 = v21;
      v45 = &v87;
    }

    goto LABEL_23;
  }

  if (v33 > 8)
  {
    if (v33 == 9)
    {
      v94[21] = 9;
      sub_100336A44();
      v37 = v77;
      v39 = v87;
      v38 = v88;
      sub_1004DEEEC();
      v41 = v78;
      v40 = v79;
    }

    else if (v33 == 10)
    {
      v94[22] = 10;
      sub_1003369F0();
      v37 = v80;
      v39 = v87;
      v38 = v88;
      sub_1004DEEEC();
      v41 = v81;
      v40 = v82;
    }

    else
    {
      v94[23] = 11;
      sub_10033699C();
      v37 = v83;
      v39 = v87;
      v38 = v88;
      sub_1004DEEEC();
      v41 = v84;
      v40 = v85;
    }

    goto LABEL_25;
  }

  if (v33 != 6)
  {
    if (v33 == 7)
    {
      v94[19] = 7;
      sub_100336AEC();
      v37 = v71;
      v39 = v87;
      v38 = v88;
      sub_1004DEEEC();
      v41 = v72;
      v40 = v73;
    }

    else
    {
      v94[20] = 8;
      sub_100336A98();
      v37 = v74;
      v39 = v87;
      v38 = v88;
      sub_1004DEEEC();
      v41 = v75;
      v40 = v76;
    }

LABEL_25:
    v43 = *(v41 + 8);
    v44 = v37;
    goto LABEL_26;
  }

  v94[18] = 6;
  sub_100336B40();
  v51 = v66;
  v39 = v87;
  v38 = v88;
  sub_1004DEEEC();
  v43 = *(v69 + 8);
  v44 = v51;
  v45 = &v96;
LABEL_23:
  v40 = *(v45 - 32);
LABEL_26:
  v43(v44, v40);
  return (*(v89 + 8))(v39, v38);
}

void ArtworkImage.Placeholder.hash(into:)()
{
  v1 = sub_1004DCEEC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004CB8(&qword_10063E508);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003368E0(v0, v13, type metadata accessor for ArtworkImage.Placeholder);
  v14 = sub_100004CB8(&unk_100641A80);
  v15 = (*(*(v14 - 8) + 48))(v13, 11, v14);
  if (v15 > 5)
  {
    if (v15 > 8)
    {
      if (v15 == 9)
      {
        v16 = 9;
      }

      else if (v15 == 10)
      {
        v16 = 10;
      }

      else
      {
        v16 = 11;
      }
    }

    else if (v15 == 6)
    {
      v16 = 6;
    }

    else if (v15 == 7)
    {
      v16 = 7;
    }

    else
    {
      v16 = 8;
    }

    goto LABEL_23;
  }

  if (v15 > 2)
  {
    if (v15 == 3)
    {
      v16 = 2;
    }

    else if (v15 == 4)
    {
      v16 = 3;
    }

    else
    {
      v16 = 5;
    }

    goto LABEL_23;
  }

  if (v15)
  {
    v16 = v15 != 1;
LABEL_23:
    sub_1004DF27C(v16);
    return;
  }

  sub_100047F38(v13, v10, &qword_10063E508);
  sub_1004DF27C(4uLL);
  sub_1000108DC(v10, v7, &qword_10063E508);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1004DF28C(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1004DF28C(1u);
    sub_100336D8C(&qword_100640248, &type metadata accessor for Playlist.Variant);
    sub_1004DD2BC();
    (*(v2 + 8))(v4, v1);
  }

  sub_10001074C(v10, &qword_10063E508);
}

Swift::Int ArtworkImage.Placeholder.hashValue.getter()
{
  sub_1004DF26C();
  ArtworkImage.Placeholder.hash(into:)();
  return sub_1004DF2BC();
}

uint64_t ArtworkImage.Placeholder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = sub_100004CB8(&qword_100640250);
  v91 = *(v3 - 8);
  v92 = v3;
  __chkstk_darwin(v3);
  v100 = &v68 - v4;
  v5 = sub_100004CB8(&qword_100640258);
  v89 = *(v5 - 8);
  v90 = v5;
  __chkstk_darwin(v5);
  v101 = &v68 - v6;
  v88 = sub_100004CB8(&qword_100640260);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v104 = &v68 - v7;
  v86 = sub_100004CB8(&qword_100640268);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v99 = &v68 - v8;
  v84 = sub_100004CB8(&qword_100640270);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v98 = &v68 - v9;
  v82 = sub_100004CB8(&qword_100640278);
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v97 = &v68 - v10;
  v78 = sub_100004CB8(&qword_100640280);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v95 = &v68 - v11;
  v81 = sub_100004CB8(&qword_100640288);
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v96 = &v68 - v12;
  v75 = sub_100004CB8(&qword_100640290);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v103 = &v68 - v13;
  v74 = sub_100004CB8(&qword_100640298);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v94 = &v68 - v14;
  v72 = sub_100004CB8(&qword_1006402A0);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v93 = &v68 - v15;
  v70 = sub_100004CB8(&qword_1006402A8);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v17 = &v68 - v16;
  v18 = sub_100004CB8(&qword_1006402B0);
  v105 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  v21 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v21);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v68 - v25;
  v27 = a1[3];
  v107 = a1;
  sub_100008C70(a1, v27);
  sub_100336948();
  v28 = v106;
  sub_1004DF2FC();
  if (!v28)
  {
    v68 = v23;
    v30 = v103;
    v29 = v104;
    v106 = v26;
    v31 = sub_1004DEEDC();
    if (*(v31 + 16) == 1)
    {
      v32 = *(v31 + 32);
      if (v32 != 12)
      {
        if (*(v31 + 32) > 5u)
        {
          v41 = v105;
          if (*(v31 + 32) > 8u)
          {
            v33 = v102;
            if (v32 == 9)
            {
              v117 = 9;
              sub_100336A44();
              sub_1004DEE4C();
              (*(v87 + 8))(v29, v88);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v54 = sub_100004CB8(&unk_100641A80);
              v37 = v106;
              (*(*(v54 - 8) + 56))(v106, 9, 11, v54);
            }

            else if (v32 == 10)
            {
              v118 = 10;
              sub_1003369F0();
              v48 = v101;
              sub_1004DEE4C();
              (*(v89 + 8))(v48, v90);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v49 = sub_100004CB8(&unk_100641A80);
              v37 = v106;
              (*(*(v49 - 8) + 56))(v106, 10, 11, v49);
            }

            else
            {
              v60 = v102;
              v119 = 11;
              sub_10033699C();
              v61 = v100;
              sub_1004DEE4C();
              (*(v91 + 8))(v61, v92);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v66 = sub_100004CB8(&unk_100641A80);
              v37 = v106;
              (*(*(v66 - 8) + 56))(v106, 11, 11, v66);
              v33 = v60;
            }
          }

          else
          {
            v33 = v102;
            if (v32 == 6)
            {
              v114 = 6;
              sub_100336B40();
              v50 = v97;
              sub_1004DEE4C();
              (*(v80 + 8))(v50, v82);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v51 = sub_100004CB8(&unk_100641A80);
              v37 = v106;
              (*(*(v51 - 8) + 56))(v106, 6, 11, v51);
            }

            else if (v32 == 7)
            {
              v115 = 7;
              sub_100336AEC();
              v42 = v98;
              sub_1004DEE4C();
              (*(v83 + 8))(v42, v84);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v43 = sub_100004CB8(&unk_100641A80);
              v37 = v106;
              (*(*(v43 - 8) + 56))(v106, 7, 11, v43);
            }

            else
            {
              v116 = 8;
              sub_100336A98();
              v57 = v99;
              sub_1004DEE4C();
              (*(v85 + 8))(v57, v86);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v58 = sub_100004CB8(&unk_100641A80);
              v37 = v106;
              (*(*(v58 - 8) + 56))(v106, 8, 11, v58);
            }
          }

          goto LABEL_29;
        }

        if (*(v31 + 32) <= 2u)
        {
          v33 = v102;
          if (*(v31 + 32))
          {
            if (v32 == 1)
            {
              v109 = 1;
              sub_100336CE4();
              v34 = v93;
              sub_1004DEE4C();
              v35 = v105;
              (*(v71 + 8))(v34, v72);
              (*(v35 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v36 = sub_100004CB8(&unk_100641A80);
              v37 = v106;
              (*(*(v36 - 8) + 56))(v106, 2, 11, v36);
            }

            else
            {
              v110 = 2;
              sub_100336C90();
              v55 = v94;
              sub_1004DEE4C();
              v56 = v105;
              (*(v73 + 8))(v55, v74);
              (*(v56 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v64 = sub_100004CB8(&unk_100641A80);
              v37 = v106;
              (*(*(v64 - 8) + 56))(v106, 3, 11, v64);
            }
          }

          else
          {
            v108 = 0;
            sub_100336D38();
            sub_1004DEE4C();
            (*(v69 + 8))(v17, v70);
            (*(v105 + 8))(v20, v18);
            swift_unknownObjectRelease();
            v63 = sub_100004CB8(&unk_100641A80);
            v37 = v106;
            (*(*(v63 - 8) + 56))(v106, 1, 11, v63);
          }

          goto LABEL_29;
        }

        if (v32 == 3)
        {
          v111 = 3;
          sub_100336C3C();
          sub_1004DEE4C();
          v52 = v105;
          (*(v76 + 8))(v30, v75);
          (*(v52 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v53 = sub_100004CB8(&unk_100641A80);
          v37 = v106;
          (*(*(v53 - 8) + 56))(v106, 4, 11, v53);
        }

        else
        {
          v44 = v105;
          if (v32 == 4)
          {
            v112 = 4;
            sub_100336BE8();
            v45 = v96;
            sub_1004DEE4C();
            sub_1004DCEEC();
            sub_100336D8C(&qword_1006402C0, &type metadata accessor for Playlist.Variant);
            v46 = v68;
            v47 = v81;
            sub_1004DEE7C();
            (*(v79 + 8))(v45, v47);
            (*(v44 + 8))(v20, v18);
            swift_unknownObjectRelease();
            v67 = sub_100004CB8(&unk_100641A80);
            (*(*(v67 - 8) + 56))(v46, 0, 11, v67);
            v37 = v106;
            sub_100336DD4(v46, v106, type metadata accessor for ArtworkImage.Placeholder);
            v33 = v102;
LABEL_29:
            sub_100336DD4(v37, v33, type metadata accessor for ArtworkImage.Placeholder);
            return sub_100008D24(v107);
          }

          v113 = 5;
          sub_100336B94();
          v59 = v95;
          sub_1004DEE4C();
          (*(v77 + 8))(v59, v78);
          (*(v44 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v65 = sub_100004CB8(&unk_100641A80);
          v37 = v106;
          (*(*(v65 - 8) + 56))(v106, 5, 11, v65);
        }

        v33 = v102;
        goto LABEL_29;
      }
    }

    v38 = sub_1004DEB5C();
    swift_allocError();
    v40 = v39;
    sub_100004CB8(&qword_1006402B8);
    *v40 = v21;
    sub_1004DEE5C();
    sub_1004DEB4C();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    (*(v105 + 8))(v20, v18);
    swift_unknownObjectRelease();
  }

  return sub_100008D24(v107);
}

uint64_t sub_100332660()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_1003326C8()
{
  sub_1004DF26C();
  ArtworkImage.Placeholder.hash(into:)();
  return sub_1004DF2BC();
}

uint64_t GenericMusicItem.placeholder.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004DD05C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004D8BFC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = *(v8 + 16);
  v14(&v45 - v12, v1, v7, v11);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for GenericMusicItem.album(_:))
  {
    goto LABEL_2;
  }

  v49 = a1;
  if (v15 == enum case for GenericMusicItem.artist(_:))
  {
LABEL_5:
    (*(v8 + 8))(v13, v7);
    v16 = sub_100004CB8(&unk_100641A80);
    v17 = *(*(v16 - 8) + 56);
    v18 = v49;
    v19 = 7;
    return v17(v18, v19, 11, v16);
  }

  if (v15 == enum case for GenericMusicItem.composer(_:))
  {
    v21 = sub_100004CB8(&unk_100641A80);
    (*(*(v21 - 8) + 56))(v49, 11, 11, v21);
    return (*(v8 + 8))(v13, v7);
  }

  if (v15 == enum case for GenericMusicItem.creditArtist(_:) || v15 == enum case for GenericMusicItem.curator(_:))
  {
    goto LABEL_5;
  }

  if (v15 == enum case for GenericMusicItem.editorialItem(_:))
  {
LABEL_15:
    (*(v8 + 8))(v13, v7);
    v16 = sub_100004CB8(&unk_100641A80);
    v17 = *(*(v16 - 8) + 56);
    v18 = v49;
    goto LABEL_3;
  }

  if (v15 == enum case for GenericMusicItem.genre(_:))
  {
    v23 = sub_100004CB8(&unk_100641A80);
    (*(*(v23 - 8) + 56))(v49, 10, 11, v23);
    return (*(v8 + 8))(v13, v7);
  }

  if (v15 == enum case for GenericMusicItem.musicMovie(_:))
  {
    goto LABEL_19;
  }

  if (v15 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v25 = sub_100004CB8(&unk_100641A80);
    (*(*(v25 - 8) + 56))(v49, 5, 11, v25);
    return (*(v8 + 8))(v13, v7);
  }

  if (v15 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v8 + 96))(v13, v7);
    (*(v4 + 32))(v6, v13, v3);
    v26 = v49;
    sub_1004DCF0C();
    (*(v4 + 8))(v6, v3);
    v27 = sub_100004CB8(&unk_100641A80);
    return (*(*(v27 - 8) + 56))(v26, 0, 11, v27);
  }

  if (v15 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    v28 = enum case for Playlist.Variant.folder(_:);
    v29 = sub_1004DCEEC();
    v30 = *(v29 - 8);
    v31 = v49;
    (*(v30 + 104))(v49, v28, v29);
    (*(v30 + 56))(v31, 0, 1, v29);
    v32 = sub_100004CB8(&unk_100641A80);
    (*(*(v32 - 8) + 56))(v31, 0, 11, v32);
    return (*(v8 + 8))(v13, v7);
  }

  if (v15 == enum case for GenericMusicItem.radioShow(_:))
  {
    goto LABEL_27;
  }

  if (v15 == enum case for GenericMusicItem.recordLabel(_:))
  {
    goto LABEL_5;
  }

  if (v15 == enum case for GenericMusicItem.socialProfile(_:))
  {
    v34 = sub_100004CB8(&unk_100641A80);
    (*(*(v34 - 8) + 56))(v49, 8, 11, v34);
    return (*(v8 + 8))(v13, v7);
  }

  a1 = v49;
  if (v15 == enum case for GenericMusicItem.song(_:))
  {
    goto LABEL_2;
  }

  if (v15 == enum case for GenericMusicItem.station(_:))
  {
LABEL_27:
    (*(v8 + 8))(v13, v7);
    v33 = sub_100004CB8(&unk_100641A80);
    return (*(*(v33 - 8) + 56))(v49, 9, 11, v33);
  }

  if (v15 == enum case for GenericMusicItem.tvEpisode(_:) || v15 == enum case for GenericMusicItem.tvSeason(_:) || v15 == enum case for GenericMusicItem.tvShow(_:))
  {
LABEL_19:
    (*(v8 + 8))(v13, v7);
    v24 = sub_100004CB8(&unk_100641A80);
    return (*(*(v24 - 8) + 56))(v49, 6, 11, v24);
  }

  a1 = v49;
  if (v15 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
LABEL_2:
    (*(v8 + 8))(v13, v7);
    v16 = sub_100004CB8(&unk_100641A80);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1;
LABEL_3:
    v19 = 1;
    return v17(v18, v19, 11, v16);
  }

  if (v15 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    goto LABEL_19;
  }

  if (v15 == enum case for GenericMusicItem.other(_:))
  {
    goto LABEL_15;
  }

  if (qword_10063D968 != -1)
  {
    swift_once();
  }

  v35 = sub_1004D966C();
  sub_100035430(v35, static Logger.artwork);
  (v14)(v48, v1, v7);
  v36 = sub_1004D964C();
  v47 = sub_1004DDF8C();
  if (os_log_type_enabled(v36, v47))
  {
    v37 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v37 = 136315394;
    *(v37 + 4) = sub_1002E5CC4(0xD000000000000010, 0x80000001004F5210, &v50);
    *(v37 + 12) = 2080;
    sub_100336D8C(&qword_10063E770, &type metadata accessor for GenericMusicItem);
    v38 = v48;
    v39 = sub_1004DEFFC();
    v41 = v40;
    v42 = *(v8 + 8);
    v42(v38, v7);
    v43 = sub_1002E5CC4(v39, v41, &v50);

    *(v37 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v36, v47, "Unhandled case for %s: %s", v37, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v42 = *(v8 + 8);
    v42(v48, v7);
  }

  v44 = sub_100004CB8(&unk_100641A80);
  (*(*(v44 - 8) + 56))(v49, 1, 11, v44);
  return (v42)(v13, v7);
}

uint64_t GenericMusicItem.aspectRatio.getter()
{
  v1 = sub_100004CB8(&qword_100642C70);
  __chkstk_darwin(v1 - 8);
  v3 = &v35[-v2];
  v4 = sub_1004D916C();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1004D8BFC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v11);
  v14 = &v35[-v13];
  v15 = *(v8 + 16);
  v15(&v35[-v13], v0, v7, v12);
  v16 = (*(v8 + 88))(v14, v7);
  v22 = v16 == enum case for GenericMusicItem.album(_:) || v16 == enum case for GenericMusicItem.artist(_:) || v16 == enum case for GenericMusicItem.composer(_:) || v16 == enum case for GenericMusicItem.creditArtist(_:) || v16 == enum case for GenericMusicItem.curator(_:) || v16 == enum case for GenericMusicItem.editorialItem(_:) || v16 == enum case for GenericMusicItem.genre(_:);
  if (v22 || v16 == enum case for GenericMusicItem.musicMovie(_:) || v16 == enum case for GenericMusicItem.musicVideo(_:) || v16 == enum case for GenericMusicItem.playlist(_:) || v16 == enum case for GenericMusicItem.playlistFolder(_:) || v16 == enum case for GenericMusicItem.radioShow(_:) || v16 == enum case for GenericMusicItem.recordLabel(_:) || v16 == enum case for GenericMusicItem.socialProfile(_:) || v16 == enum case for GenericMusicItem.song(_:) || v16 == enum case for GenericMusicItem.station(_:) || v16 == enum case for GenericMusicItem.tvEpisode(_:) || v16 == enum case for GenericMusicItem.tvSeason(_:) || v16 == enum case for GenericMusicItem.tvShow(_:) || v16 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    return (*(v8 + 8))(v14, v7);
  }

  if (v16 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v8 + 96))(v14, v7);
    v24 = v37;
    (*(v37 + 32))(v6, v14, v4);
    sub_1002E0490(v3);
    v25 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v25 - 8) + 48))(v3, 1, v25) == 1)
    {
      (*(v24 + 8))(v6, v4);
      return sub_10001074C(v3, &qword_100642C70);
    }

    else if (sub_1004DCC2C() < 1 || sub_1004DCC3C() < 1)
    {
      (*(v24 + 8))(v6, v4);
      return sub_100336880(v3, type metadata accessor for ArtworkImage.ViewModel);
    }

    else
    {
      sub_1004DCC2C();
      sub_1004DCC3C();
      (*(v24 + 8))(v6, v4);
      return sub_100336880(v3, type metadata accessor for ArtworkImage.ViewModel);
    }
  }

  if (v16 == enum case for GenericMusicItem.other(_:))
  {
    return (*(v8 + 8))(v14, v7);
  }

  if (qword_10063D968 != -1)
  {
    swift_once();
  }

  v26 = sub_1004D966C();
  sub_100035430(v26, static Logger.artwork);
  (v15)(v10, v0, v7);
  v27 = sub_1004D964C();
  v28 = sub_1004DDF8C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v29 = 136315394;
    *(v29 + 4) = sub_1002E5CC4(0xD000000000000010, 0x80000001004F5210, &v38);
    *(v29 + 12) = 2080;
    sub_100336D8C(&qword_10063E770, &type metadata accessor for GenericMusicItem);
    v36 = v28;
    v30 = sub_1004DEFFC();
    v32 = v31;
    v33 = *(v8 + 8);
    v33(v10, v7);
    v34 = sub_1002E5CC4(v30, v32, &v38);

    *(v29 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v27, v36, "Unhandled case for %s: %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v33 = *(v8 + 8);
    v33(v10, v7);
  }

  return (v33)(v14, v7);
}

void Playlist.Variant.symbolImage.getter()
{
  v1 = v0;
  v2 = sub_1004DCEEC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != enum case for Playlist.Variant.smart(_:) && v7 != enum case for Playlist.Variant.genius(_:) && v7 != enum case for Playlist.Variant.folder(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  v8 = sub_1004DD3FC();

  v9 = [objc_opt_self() _systemImageNamed:v8];

  if (!v9)
  {
    __break(1u);
  }
}

uint64_t ArtworkImage.ViewModel.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004DCC9C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArtworkImage.ViewModel(0);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = v9;
    v13 = a1;
    sub_1004DCB5C();
    v14 = [v13 token];
    sub_1004DE8DC();
    swift_unknownObjectRelease();
    sub_100006F10(0, &qword_1006402C8);
    if ((swift_dynamicCast() & 1) != 0 && (v15 = v22, v16 = [v22 cropStyle], v15, v16))
    {
      (*(v5 + 16))(v12, v7, v4);
      Artwork.CropStyle.init(_:)(v16, &v12[*(v8 + 20)]);

      (*(v5 + 8))(v7, v4);
    }

    else
    {

      v17 = *(v8 + 20);
      v18 = sub_1004DCC0C();
      (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
      (*(v5 + 32))(v12, v7, v4);
    }

    sub_100336DD4(v12, a2, type metadata accessor for ArtworkImage.ViewModel);
    return (*(v21 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v20 = *(v9 + 56);

    return v20(a2, 1, 1, v8, v10);
  }
}

uint64_t Artwork.CropStyle.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004DCC0C();
  v6 = __chkstk_darwin(v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_53;
  }

  v61 = v5;
  v9 = sub_1004DD43C();
  v11 = v10;
  if (v9 == sub_1004DD43C() && v11 == v12)
  {
    v26 = a1;

    goto LABEL_16;
  }

  v14 = sub_1004DF08C();
  v15 = a1;

  if (v14)
  {
LABEL_16:
    sub_1004DCB8C();
LABEL_17:

    (*(v61 + 32))(a2, v8, v4);
    return (*(v61 + 56))(a2, 0, 1, v4);
  }

  v16 = sub_1004DD43C();
  v18 = v17;
  if (v16 == sub_1004DD43C() && v18 == v19)
  {

    goto LABEL_19;
  }

  v21 = sub_1004DF08C();

  if (v21)
  {
LABEL_19:
    sub_1004DCBAC();
    goto LABEL_17;
  }

  v22 = sub_1004DD43C();
  v24 = v23;
  if (v22 == sub_1004DD43C() && v24 == v25)
  {

LABEL_21:
    sub_1004DCBBC();
    goto LABEL_17;
  }

  v28 = sub_1004DF08C();

  if (v28)
  {
    goto LABEL_21;
  }

  v29 = sub_1004DD43C();
  v31 = v30;
  if (v29 == sub_1004DD43C() && v31 == v32)
  {

LABEL_26:
    sub_1004DCBEC();
    goto LABEL_17;
  }

  v33 = sub_1004DF08C();

  if (v33)
  {
    goto LABEL_26;
  }

  v34 = sub_1004DD43C();
  v36 = v35;
  if (v34 == sub_1004DD43C() && v36 == v37)
  {

LABEL_31:
    sub_1004DCBDC();
    goto LABEL_17;
  }

  v38 = sub_1004DF08C();

  if (v38)
  {
    goto LABEL_31;
  }

  v39 = sub_1004DD43C();
  v41 = v40;
  if (v39 == sub_1004DD43C() && v41 == v42)
  {

LABEL_36:
    sub_1004DCBFC();
    goto LABEL_17;
  }

  v43 = sub_1004DF08C();

  if (v43)
  {
    goto LABEL_36;
  }

  v44 = sub_1004DD43C();
  v46 = v45;
  if (v44 == sub_1004DD43C() && v46 == v47)
  {

LABEL_41:
    sub_1004DCB9C();
    goto LABEL_17;
  }

  v48 = sub_1004DF08C();

  if (v48)
  {
    goto LABEL_41;
  }

  v49 = sub_1004DD43C();
  v51 = v50;
  if (v49 == sub_1004DD43C() && v51 == v52)
  {

LABEL_46:
    sub_1004DCBCC();
    goto LABEL_17;
  }

  v53 = sub_1004DF08C();

  if (v53)
  {
    goto LABEL_46;
  }

  v54 = sub_1004DD43C();
  v56 = v55;
  if (v54 == sub_1004DD43C() && v56 == v57)
  {

LABEL_51:
    sub_1004DCB7C();
    goto LABEL_17;
  }

  v58 = sub_1004DF08C();

  if (v58)
  {
    goto LABEL_51;
  }

  v5 = v61;
LABEL_53:
  v59 = *(v5 + 56);

  return v59(a2, 1, 1, v4, v6);
}

uint64_t sub_1003343B4()
{
  v0 = sub_1004DCC0C();
  sub_100035718(v0, static Artwork.CropStyle.fallback);
  sub_100035430(v0, static Artwork.CropStyle.fallback);
  return sub_1004DCB8C();
}

uint64_t sub_100334438()
{
  v0 = sub_1004DCB6C();
  sub_100035718(v0, static Artwork.ImageFormat.fallback);
  v1 = sub_100035430(v0, static Artwork.ImageFormat.fallback);
  v2 = enum case for Artwork.ImageFormat.heic(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Artwork.monogramArtwork(for:layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_100006F10(0, &qword_10063E4A8);
  if (static MPArtworkCatalog.monogram(for:layoutDirection:)(a1, a2, a3, a4 & 1))
  {
    sub_1004DCB5C();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_1004DCC9C();
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

uint64_t sub_1003345EC()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.artwork);
  sub_100035430(v0, static Logger.artwork);
  return static Logger.music(_:)();
}

uint64_t sub_1003346A8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100035430(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_10033474C()
{
  v0 = sub_100004CB8(&qword_100640150);
  sub_100035718(v0, qword_100640130);
  v1 = sub_100035430(v0, qword_100640130);
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1003347EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10063D970 != -1)
  {
    swift_once();
  }

  v2 = sub_100004CB8(&qword_100640150);
  v3 = sub_100035430(v2, qword_100640130);
  return sub_1000108DC(v3, a1, &qword_100640150);
}

void (*EnvironmentValues.placeholderStyle.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100004CB8(&qword_100640150) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_10033680C();
  sub_1004DA75C();
  return sub_100334994;
}

void sub_100334994(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_1000108DC((*a1)[3], (*a1)[2], &qword_100640150);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_1000108DC(v3[2], v3[1], &qword_100640150);
    sub_1004DA76C();
    sub_10001074C(v6, &qword_100640150);
  }

  else
  {
    sub_1004DA76C();
  }

  sub_10001074C(v4, &qword_100640150);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t sub_100334AA4(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = sub_100004CB8(&qword_100640168);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_1004DBDAC();
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004CB8(&qword_100640150);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000108DC(a2, v11, &qword_100640150);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_10001074C(v11, &qword_100640150);
  }

  sub_100336DD4(v11, v15, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  sub_1000108DC(v15, &v23, &qword_100641D90);
  if (v24)
  {
    sub_100035850(&v23, v25);
    v17 = v22;
    sub_10001074C(v22, &qword_100641D90);
    sub_100035850(v25, v17);
  }

  else
  {
    sub_10001074C(&v23, &qword_100641D90);
    v17 = v22;
  }

  v18 = v21;
  sub_1000108DC((v15 + 40), &v23, &qword_100641D90);
  if (v24)
  {
    sub_100035850(&v23, v25);
    sub_10001074C(v17 + 40, &qword_100641D90);
    sub_100035850(v25, v17 + 40);
  }

  else
  {
    sub_10001074C(&v23, &qword_100641D90);
  }

  sub_1000108DC(&v15[*(v12 + 24)], v5, &qword_100640168);
  sub_100336880(v15, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  if ((*(v18 + 48))(v5, 1, v6) == 1)
  {
    return sub_10001074C(v5, &qword_100640168);
  }

  v19 = *(v18 + 32);
  v19(v8, v5, v6);
  v20 = *(v12 + 24);
  sub_10001074C(v17 + v20, &qword_100640168);
  v19((v17 + v20), v8, v6);
  return (*(v18 + 56))(v17 + v20, 0, 1, v6);
}

uint64_t PlaceholderStyleModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(sub_100004CB8(&qword_1006402D0) + 36));
  v6 = *(sub_100004CB8(&qword_1006402D8) + 28);
  sub_100334FEC(&v5[v6]);
  v7 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v7 - 8) + 56))(&v5[v6], 0, 1, v7);
  *v5 = KeyPath;
  v8 = sub_100004CB8(&qword_1006402E0);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_100334FEC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100004CB8(&qword_100640168);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_100004CB8(&qword_100640150);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  type metadata accessor for PlaceholderStyleModifier(0);
  sub_10032A6F4(v9);
  v10 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v9, 1, v10) == 1)
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    v12 = sub_1004DBDAC();
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v13 = *(*(v12 - 8) + 56);
    v13(v6, 1, 1, v12);
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    v18 = v2;
    v14 = *(v10 + 24);
    v13(&a1[v14], 1, 1, v12);
    sub_1000107AC(v21, a1, &qword_100641D90);
    sub_1000107AC(v19, (a1 + 40), &qword_100641D90);
    v15 = &a1[v14];
    v2 = v18;
    sub_1000107AC(v6, v15, &qword_100640168);
    if (v11(v9, 1, v10) != 1)
    {
      sub_10001074C(v9, &qword_100640150);
    }
  }

  else
  {
    sub_100336DD4(v9, a1, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  }

  return (*v2)(a1);
}

uint64_t View.placeholderStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v4 = sub_100004CB8(&qword_100640150);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for PlaceholderStyleModifier(0);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000108DC(a1, v7, &qword_100640150);
  v11 = *(v8 + 20);
  *(v10 + v11) = swift_getKeyPath();
  sub_100004CB8(&qword_10063DBB8);
  swift_storeEnumTagMultiPayload();
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_100047F38(v7, v13 + v12, &qword_100640150);
  *v10 = sub_100336E60;
  v10[1] = v13;
  sub_1004DB6EC();
  return sub_100336880(v10, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t View.placeholderStyle(_:)(void (*a1)(__n128))
{
  v2 = sub_100004CB8(&qword_100640150);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for PlaceholderStyleModifier(0);
  v7 = __chkstk_darwin(v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  a1(v7);
  v10 = *(v6 + 20);
  *(v9 + v10) = swift_getKeyPath();
  sub_100004CB8(&qword_10063DBB8);
  swift_storeEnumTagMultiPayload();
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_100047F38(v5, v12 + v11, &qword_100640150);
  *v9 = sub_100339DD4;
  v9[1] = v12;
  sub_1004DB6EC();
  return sub_100336880(v9, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t View.placeholderStyle(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderStyleModifier(0);
  __chkstk_darwin(v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v7 + 20);
  *(v6 + v8) = swift_getKeyPath();
  sub_100004CB8(&qword_10063DBB8);
  swift_storeEnumTagMultiPayload();
  *v6 = a1;
  v6[1] = a2;

  sub_1004DB6EC();
  return sub_100336880(v6, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*(a1 + 8) & 1) == 0)
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }

LABEL_7:
    v3 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 16) != *(a2 + 16))
      {
        v3 = 1;
      }

      if (v3)
      {
        return 0;
      }
    }

    v4 = *(a2 + 40);
    if (*(a1 + 40))
    {
      if (!*(a2 + 40))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 32) != *(a2 + 32))
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }
    }

    v5 = *(a2 + 41);
    if (*(a1 + 41) == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 2 || (sub_1004D9D9C() & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 8))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4InfoV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&qword_100642C70);
  __chkstk_darwin(v8 - 8);
  v10 = &v39[-1] - v9;
  v11 = sub_100004CB8(&unk_100641C70);
  __chkstk_darwin(v11 - 8);
  v13 = &v39[-1] - v12;
  v15 = *(v14 + 56);
  sub_1000108DC(a1, &v39[-1] - v12, &qword_100642C70);
  sub_1000108DC(a2, &v13[v15], &qword_100642C70);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1000108DC(v13, v10, &qword_100642C70);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_100336DD4(&v13[v15], v7, type metadata accessor for ArtworkImage.ViewModel);
      v17 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(v10, v7);
      sub_100336880(v7, type metadata accessor for ArtworkImage.ViewModel);
      sub_100336880(v10, type metadata accessor for ArtworkImage.ViewModel);
      sub_10001074C(v13, &qword_100642C70);
      if (!v17)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_100336880(v10, type metadata accessor for ArtworkImage.ViewModel);
LABEL_6:
    sub_10001074C(v13, &unk_100641C70);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_10001074C(v13, &qword_100642C70);
LABEL_8:
  v18 = type metadata accessor for ArtworkImage.Info(0);
  if (_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(a1 + v18[5], a2 + v18[5]))
  {
    v19 = v18[6];
    v20 = (a1 + v19);
    v21 = *(a1 + v19 + 8);
    v22 = (a2 + v19);
    v23 = *(a2 + v19 + 8);
    if (v21)
    {
      if (!v23)
      {
        return 0;
      }
    }

    else
    {
      if (*v20 != *v22)
      {
        LOBYTE(v23) = 1;
      }

      if (v23)
      {
        return 0;
      }
    }

    v24 = (a1 + v18[7]);
    v25 = *(v24 + 26);
    v26 = v24[1];
    v38 = *v24;
    v39[0] = v26;
    *(v39 + 10) = v25;
    v27 = (a2 + v18[7]);
    *&v41[10] = *(v27 + 26);
    v28 = v27[1];
    v40 = *v27;
    *v41 = v28;
    if (_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(&v38, &v40))
    {
      v29 = v18[8];
      v30 = a1 + v29;
      v31 = *(a1 + v29);
      v32 = *(a1 + v29 + 16);
      v33 = a2 + v29;
      v34 = *(a2 + v29);
      v35 = *(v33 + 8);
      v36 = *(v33 + 16);
      if (v32)
      {
        if (v32 == 1)
        {
          if (v36 != 1 || v31 != v34)
          {
            return 0;
          }
        }

        else if (v36 != 2 || v35 | *&v34)
        {
          return 0;
        }
      }

      else if (v36 || v31 != v34 || *(v30 + 8) != v35)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DCEEC();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004CB8(&qword_10063E508);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_100004CB8(&qword_100640890);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004CB8(&qword_100640898);
  __chkstk_darwin(v16 - 8);
  v18 = &v31 - v17;
  v20 = *(v19 + 56);
  sub_1003368E0(a1, &v31 - v17, type metadata accessor for ArtworkImage.Placeholder);
  sub_1003368E0(a2, &v18[v20], type metadata accessor for ArtworkImage.Placeholder);
  v21 = sub_100004CB8(&unk_100641A80);
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v18, 11, v21);
  if (v23 <= 5)
  {
    if (v23 > 2)
    {
      if (v23 == 3)
      {
        if (v22(&v18[v20], 11, v21) != 3)
        {
          goto LABEL_36;
        }
      }

      else if (v23 == 4)
      {
        if (v22(&v18[v20], 11, v21) != 4)
        {
          goto LABEL_36;
        }
      }

      else if (v22(&v18[v20], 11, v21) != 5)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v23)
    {
      if (v23 == 1)
      {
        if (v22(&v18[v20], 11, v21) != 1)
        {
          goto LABEL_36;
        }
      }

      else if (v22(&v18[v20], 11, v21) != 2)
      {
        goto LABEL_36;
      }

LABEL_35:
      sub_100336880(v18, type metadata accessor for ArtworkImage.Placeholder);
      return 1;
    }

    sub_1003368E0(v18, v15, type metadata accessor for ArtworkImage.Placeholder);
    if (v22(&v18[v20], 11, v21))
    {
      sub_10001074C(v15, &qword_10063E508);
      goto LABEL_36;
    }

    v25 = *(v10 + 48);
    sub_100047F38(v15, v12, &qword_10063E508);
    sub_100047F38(&v18[v20], &v12[v25], &qword_10063E508);
    v27 = v31;
    v26 = v32;
    v28 = *(v31 + 48);
    if (v28(v12, 1, v32) == 1)
    {
      if (v28(&v12[v25], 1, v26) == 1)
      {
        sub_10001074C(v12, &qword_10063E508);
        goto LABEL_35;
      }
    }

    else
    {
      sub_1000108DC(v12, v9, &qword_10063E508);
      if (v28(&v12[v25], 1, v26) != 1)
      {
        (*(v27 + 32))(v6, &v12[v25], v26);
        sub_100336D8C(&qword_1006408A0, &type metadata accessor for Playlist.Variant);
        v29 = sub_1004DD35C();
        v30 = *(v27 + 8);
        v30(v6, v26);
        v30(v9, v26);
        sub_10001074C(v12, &qword_10063E508);
        if (v29)
        {
          goto LABEL_35;
        }

LABEL_44:
        sub_100336880(v18, type metadata accessor for ArtworkImage.Placeholder);
        return 0;
      }

      (*(v27 + 8))(v9, v26);
    }

    sub_10001074C(v12, &qword_100640890);
    goto LABEL_44;
  }

  if (v23 <= 8)
  {
    if (v23 == 6)
    {
      if (v22(&v18[v20], 11, v21) != 6)
      {
        goto LABEL_36;
      }
    }

    else if (v23 == 7)
    {
      if (v22(&v18[v20], 11, v21) != 7)
      {
        goto LABEL_36;
      }
    }

    else if (v22(&v18[v20], 11, v21) != 8)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v23 == 9)
  {
    if (v22(&v18[v20], 11, v21) != 9)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v23 == 10)
  {
    if (v22(&v18[v20], 11, v21) != 10)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v22(&v18[v20], 11, v21) == 11)
  {
    goto LABEL_35;
  }

LABEL_36:
  sub_10001074C(v18, &qword_100640898);
  return 0;
}

BOOL _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DCC0C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&qword_100641A60);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100004CB8(&qword_1006408A8);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if ((sub_1004DCC8C() & 1) == 0)
  {
    return 0;
  }

  v22 = v7;
  v14 = *(type metadata accessor for ArtworkImage.ViewModel(0) + 20);
  v15 = *(v11 + 48);
  sub_1000108DC(a1 + v14, v13, &qword_100641A60);
  sub_1000108DC(a2 + v14, &v13[v15], &qword_100641A60);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_10001074C(v13, &qword_100641A60);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1000108DC(v13, v10, &qword_100641A60);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_10001074C(v13, &qword_1006408A8);
    return 0;
  }

  v18 = v22;
  (*(v5 + 32))(v22, &v13[v15], v4);
  sub_100336D8C(&qword_1006408B0, &type metadata accessor for Artwork.CropStyle);
  v19 = sub_1004DD35C();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v10, v4);
  sub_10001074C(v13, &qword_100641A60);
  return (v19 & 1) != 0;
}

uint64_t sub_100336740()
{

  return swift_deallocObject();
}

uint64_t sub_100336778@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

unint64_t sub_10033680C()
{
  result = qword_100640148;
  if (!qword_100640148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640148);
  }

  return result;
}

uint64_t sub_100336880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003368E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100336948()
{
  result = qword_1006401D8;
  if (!qword_1006401D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006401D8);
  }

  return result;
}

unint64_t sub_10033699C()
{
  result = qword_1006401E0;
  if (!qword_1006401E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006401E0);
  }

  return result;
}

unint64_t sub_1003369F0()
{
  result = qword_1006401E8;
  if (!qword_1006401E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006401E8);
  }

  return result;
}

unint64_t sub_100336A44()
{
  result = qword_1006401F0;
  if (!qword_1006401F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006401F0);
  }

  return result;
}

unint64_t sub_100336A98()
{
  result = qword_1006401F8;
  if (!qword_1006401F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006401F8);
  }

  return result;
}

unint64_t sub_100336AEC()
{
  result = qword_100640200;
  if (!qword_100640200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640200);
  }

  return result;
}

unint64_t sub_100336B40()
{
  result = qword_100640208;
  if (!qword_100640208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640208);
  }

  return result;
}

unint64_t sub_100336B94()
{
  result = qword_100640210;
  if (!qword_100640210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640210);
  }

  return result;
}

unint64_t sub_100336BE8()
{
  result = qword_100640218;
  if (!qword_100640218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640218);
  }

  return result;
}

unint64_t sub_100336C3C()
{
  result = qword_100640228;
  if (!qword_100640228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640228);
  }

  return result;
}

unint64_t sub_100336C90()
{
  result = qword_100640230;
  if (!qword_100640230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640230);
  }

  return result;
}

unint64_t sub_100336CE4()
{
  result = qword_100640238;
  if (!qword_100640238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640238);
  }

  return result;
}

unint64_t sub_100336D38()
{
  result = qword_100640240;
  if (!qword_100640240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640240);
  }

  return result;
}

uint64_t sub_100336D8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100336DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100336E64()
{
  v1 = *(sub_100004CB8(&qword_100640150) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 24))
    {
      sub_100008D24(v0 + v2);
    }

    if (*(v3 + 64))
    {
      sub_100008D24(v3 + 40);
    }

    v5 = *(v4 + 24);
    v6 = sub_1004DBDAC();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_100337008(uint64_t a1)
{
  v3 = *(sub_100004CB8(&qword_100640150) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100334AA4(a1, v4);
}

uint64_t sub_100337118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004DCC9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100004CB8(&qword_100641A60);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100337228(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1004DCC9C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100004CB8(&qword_100641A60);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100337330()
{
  sub_1004DCC9C();
  if (v0 <= 0x3F)
  {
    sub_10033772C(319, &unk_100640358, &type metadata accessor for Artwork.CropStyle, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1003373F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004CB8(&qword_100642C70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ArtworkImage.Placeholder(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 41);
  if (v14 <= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = *(a1 + *(a3 + 28) + 41);
  }

  v16 = v15 - 2;
  if (v14 >= 2)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100337530(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100004CB8(&qword_100642C70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ArtworkImage.Placeholder(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 41) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100337648()
{
  sub_10033772C(319, &qword_1006403F0, type metadata accessor for ArtworkImage.ViewModel, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArtworkImage.Placeholder(319);
    if (v1 <= 0x3F)
    {
      sub_100337790();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10033772C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100337790()
{
  if (!qword_1006403F8)
  {
    v0 = sub_1004DE7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1006403F8);
    }
  }
}

uint64_t sub_1003377E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 41);
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

uint64_t sub_100337834(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1003378A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&unk_100641A80);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 0xC)
  {
    return v5 - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100337934(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 11);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100004CB8(&unk_100641A80);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1003379C4()
{
  sub_100337A1C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100337A1C()
{
  if (!qword_1006404B8)
  {
    sub_10033772C(0, &unk_1006404C0, &type metadata accessor for Playlist.Variant, &type metadata accessor for Optional);
    if (!v1)
    {
      atomic_store(v0, &qword_1006404B8);
    }
  }
}

uint64_t sub_100337AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004CB8(&qword_1006404E8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100004CB8(&qword_1006404F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100337BF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100004CB8(&qword_1006404E8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100004CB8(&qword_1006404F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100337D34()
{
  _s3__C6CGSizeVMa_1(319);
  if (v0 <= 0x3F)
  {
    sub_1003380CC(319, &qword_100640560, &qword_100640150, &unk_10052C4D0, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10033772C(319, &unk_100640568, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100337E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100004CB8(&qword_100640168);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100337F3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100004CB8(&qword_100640168);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100337FEC()
{
  sub_1003380CC(319, &qword_100640610, &qword_100640618, &unk_10052C850, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10033772C(319, &unk_100640620, &type metadata accessor for BlendMode, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003380CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100008DE4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100338144(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004CB8(&qword_1006404E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100338214(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&qword_1006404E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1003382C4()
{
  sub_100338374();
  if (v0 <= 0x3F)
  {
    sub_1003380CC(319, &qword_100640560, &qword_100640150, &unk_10052C4D0, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100338374()
{
  result = qword_100641930;
  if (!qword_100641930)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100641930);
  }

  return result;
}

uint64_t sub_1003383C4()
{
  sub_100008DE4(&qword_1006406E8);
  sub_100338428();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100338428()
{
  result = qword_100641A90;
  if (!qword_100641A90)
  {
    sub_100008DE4(&qword_1006406E8);
    sub_1003384E0();
    sub_100042B08(&unk_100641AD0, &qword_100640710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641A90);
  }

  return result;
}

unint64_t sub_1003384E0()
{
  result = qword_1006406F0;
  if (!qword_1006406F0)
  {
    sub_100008DE4(&unk_100641AA0);
    sub_10033856C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006406F0);
  }

  return result;
}

unint64_t sub_10033856C()
{
  result = qword_1006406F8;
  if (!qword_1006406F8)
  {
    sub_100008DE4(&unk_100641AB0);
    sub_100336D8C(&qword_100640700, type metadata accessor for ArtworkImage.Placeholder.View);
    sub_100042B08(&unk_100641AC0, &qword_100640708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006406F8);
  }

  return result;
}

unint64_t sub_1003386E4()
{
  result = qword_100642CA0;
  if (!qword_100642CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642CA0);
  }

  return result;
}

unint64_t sub_100338740()
{
  result = qword_100640718;
  if (!qword_100640718)
  {
    sub_100008DE4(&qword_100640158);
    sub_1003387F8();
    sub_100042B08(&qword_100640740, &qword_100640160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640718);
  }

  return result;
}

unint64_t sub_1003387F8()
{
  result = qword_100640720;
  if (!qword_100640720)
  {
    sub_100008DE4(&qword_100640728);
    sub_100042B08(&qword_100640730, &qword_100640738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640720);
  }

  return result;
}

unint64_t sub_1003388B4()
{
  result = qword_100640748;
  if (!qword_100640748)
  {
    sub_100008DE4(&qword_1006402D0);
    sub_100042B08(&qword_100640750, &qword_1006402E0);
    sub_100042B08(&qword_100640758, &qword_1006402D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640748);
  }

  return result;
}

uint64_t sub_100338998()
{
  type metadata accessor for PlaceholderStyleModifier(255);
  sub_1004DA32C();
  sub_100336D8C(&unk_100641D50, type metadata accessor for PlaceholderStyleModifier);
  return swift_getWitnessTable();
}

uint64_t _s11PlaceholderO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11PlaceholderO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100338C58()
{
  result = qword_100640760;
  if (!qword_100640760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640760);
  }

  return result;
}

unint64_t sub_100338CB0()
{
  result = qword_100640768;
  if (!qword_100640768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640768);
  }

  return result;
}

unint64_t sub_100338D08()
{
  result = qword_100640770;
  if (!qword_100640770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640770);
  }

  return result;
}

unint64_t sub_100338D60()
{
  result = qword_100640778;
  if (!qword_100640778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640778);
  }

  return result;
}

unint64_t sub_100338DB8()
{
  result = qword_100640780;
  if (!qword_100640780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640780);
  }

  return result;
}

unint64_t sub_100338E10()
{
  result = qword_100640788;
  if (!qword_100640788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640788);
  }

  return result;
}

unint64_t sub_100338E68()
{
  result = qword_100640790;
  if (!qword_100640790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640790);
  }

  return result;
}

unint64_t sub_100338EC0()
{
  result = qword_100640798;
  if (!qword_100640798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640798);
  }

  return result;
}

unint64_t sub_100338F18()
{
  result = qword_1006407A0;
  if (!qword_1006407A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407A0);
  }

  return result;
}

unint64_t sub_100338F70()
{
  result = qword_1006407A8;
  if (!qword_1006407A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407A8);
  }

  return result;
}

unint64_t sub_100338FC8()
{
  result = qword_1006407B0;
  if (!qword_1006407B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407B0);
  }

  return result;
}

unint64_t sub_100339020()
{
  result = qword_1006407B8;
  if (!qword_1006407B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407B8);
  }

  return result;
}

unint64_t sub_100339078()
{
  result = qword_1006407C0;
  if (!qword_1006407C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407C0);
  }

  return result;
}

unint64_t sub_1003390D0()
{
  result = qword_1006407C8;
  if (!qword_1006407C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407C8);
  }

  return result;
}

unint64_t sub_100339128()
{
  result = qword_1006407D0;
  if (!qword_1006407D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407D0);
  }

  return result;
}

unint64_t sub_100339180()
{
  result = qword_1006407D8;
  if (!qword_1006407D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407D8);
  }

  return result;
}

unint64_t sub_1003391D8()
{
  result = qword_1006407E0;
  if (!qword_1006407E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407E0);
  }

  return result;
}

unint64_t sub_100339230()
{
  result = qword_1006407E8;
  if (!qword_1006407E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407E8);
  }

  return result;
}

unint64_t sub_100339288()
{
  result = qword_1006407F0;
  if (!qword_1006407F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407F0);
  }

  return result;
}

unint64_t sub_1003392E0()
{
  result = qword_1006407F8;
  if (!qword_1006407F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006407F8);
  }

  return result;
}

unint64_t sub_100339338()
{
  result = qword_100640800;
  if (!qword_100640800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640800);
  }

  return result;
}

unint64_t sub_100339390()
{
  result = qword_100640808;
  if (!qword_100640808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640808);
  }

  return result;
}

unint64_t sub_1003393E8()
{
  result = qword_100640810;
  if (!qword_100640810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640810);
  }

  return result;
}

unint64_t sub_100339440()
{
  result = qword_100640818;
  if (!qword_100640818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640818);
  }

  return result;
}

unint64_t sub_100339498()
{
  result = qword_100640820;
  if (!qword_100640820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640820);
  }

  return result;
}

unint64_t sub_1003394F0()
{
  result = qword_100640828;
  if (!qword_100640828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640828);
  }

  return result;
}

unint64_t sub_100339548()
{
  result = qword_100640830;
  if (!qword_100640830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640830);
  }

  return result;
}

unint64_t sub_1003395A0()
{
  result = qword_100640838;
  if (!qword_100640838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640838);
  }

  return result;
}

uint64_t sub_1003395F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1004DF08C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6979616C50776F6ELL && a2 == 0xEA0000000000676ELL || (sub_1004DF08C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65646C6F4677656ELL && a2 == 0xE900000000000072 || (sub_1004DF08C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79616C5077656ELL && a2 == 0xEB00000000747369 || (sub_1004DF08C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000 || (sub_1004DF08C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65 || (sub_1004DF08C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000 || (sub_1004DF08C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F68706F7263696DLL && a2 == 0xEA0000000000656ELL || (sub_1004DF08C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F73726570 && a2 == 0xE600000000000000 || (sub_1004DF08C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F69646172 && a2 == 0xE500000000000000 || (sub_1004DF08C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_1004DF08C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7265736F706D6F63 && a2 == 0xE800000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1004DF08C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_1003399C0()
{
  result = qword_100640858;
  if (!qword_100640858)
  {
    sub_100008DE4(&qword_100640850);
    sub_100339A78();
    sub_100042B08(&unk_100641BF0, &qword_100640088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640858);
  }

  return result;
}

unint64_t sub_100339A78()
{
  result = qword_100640860;
  if (!qword_100640860)
  {
    sub_100008DE4(&qword_100640868);
    sub_100042B08(&qword_100640870, &qword_100640878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640860);
  }

  return result;
}

uint64_t sub_100339B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100640848);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100339BA0()
{
  v1 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_100004CB8(&unk_100641A80);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 11, v3))
  {
    v4 = sub_1004DCEEC();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  return swift_deallocObject();
}

double sub_100339D1C@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ArtworkImage.Placeholder(0);

  return sub_10032DA90(a1);
}

double BadgedPunchOut.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_10033C9E0(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_100339E24(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1004D9C1C();
  return sub_1002D2FCC;
}

uint64_t sub_100339EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10033E51C();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100339F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10033E51C();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100339F74(uint64_t a1)
{
  v2 = sub_10033E51C();

  return Shape.body.getter(a1, v2);
}

uint64_t TextBadge.init(immersive:)(char a1)
{
  if (a1)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}