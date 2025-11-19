uint64_t MetricsActivity.PageReferrer.init(app:externalURL:openURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for MetricsActivity.PageReferrer(0);
  sub_1893C(a3, a5 + *(v8 + 20));
  v9 = a5 + *(v8 + 24);

  return sub_1893C(a4, v9);
}

char *MetricsActivity.init(pageContextTracker:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for MetricsActivity.State(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v30[-v9];
  *&v1[OBJC_IVAR____TtC8ShelfKit15MetricsActivity_pageContextTracker] = a1;
  *v10 = 0;
  v10[8] = 0;
  v11 = v5[8];
  v12 = type metadata accessor for MetricsActivity.PageReferrer(0);
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *&v10[v5[9]] = 0;
  v13 = &v10[v5[10]];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v10[v5[11]];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v10[v5[12]];
  *v15 = 0;
  v15[8] = 1;
  v16 = v5[13];
  v17 = sub_3E8B34();
  (*(*(v17 - 8) + 56))(&v10[v16], 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2FB0);
  v18 = swift_allocObject();
  *(v18 + ((*(*v18 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_12C310(v10, v7, type metadata accessor for MetricsActivity.State);

  sub_12B2B4(v10, type metadata accessor for MetricsActivity.State);
  sub_12B8C8(v7, v18 + *(*v18 + class metadata base offset for ManagedBuffer + 16), type metadata accessor for MetricsActivity.State);
  *&v1[OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state] = v18;
  v33.receiver = v1;
  v33.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v33, "init");
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 sharedCoordinator];
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_12B968;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_8;
  v24 = _Block_copy(aBlock);

  v25 = [v22 registerCleanupHandler:v24];
  _Block_release(v24);

  v26 = *&v21[OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state];
  v31 = v25;
  v27 = *(*v26 + class metadata base offset for ManagedBuffer + 16);
  v28 = (*(*v26 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v26 + v28));
  sub_12B988((v26 + v27));
  os_unfair_lock_unlock((v26 + v28));

  return v21;
}

void sub_128D9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
    v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
    v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
    v4 = Strong;
    os_unfair_lock_lock((v1 + v3));
    v5 = v1 + *(type metadata accessor for MetricsActivity.State(0) + 24);
    sub_FCF8(v5 + v2, &qword_4F2F90);
    v6 = type metadata accessor for MetricsActivity.PageReferrer(0);
    (*(*(v6 - 8) + 56))(v5 + v2, 1, 1, v6);
    os_unfair_lock_unlock((v1 + v3));
  }
}

Swift::Void __swiftcall MetricsActivity.reset()()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = v1 + *(type metadata accessor for MetricsActivity.State(0) + 24);
  sub_FCF8(v4 + v2, &qword_4F2F90);
  v5 = type metadata accessor for MetricsActivity.PageReferrer(0);
  (*(*(v5 - 8) + 56))(v4 + v2, 1, 1, v5);

  os_unfair_lock_unlock((v1 + v3));
}

id MetricsActivity.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v2);
  v4 = (&v9.receiver - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_3E9874();

  v5 = *v4;
  v6 = *v4;
  sub_12B2B4(v4, type metadata accessor for MetricsActivity.State);
  if (v5)
  {
    v7 = [objc_opt_self() sharedCoordinator];
    [v7 removeCleanupHandler:v6];
  }

  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "dealloc");
}

char *sub_129160()
{
  sub_3E87F4();
  v0 = sub_3E87E4();
  v1 = objc_allocWithZone(type metadata accessor for MetricsActivity());
  result = MetricsActivity.init(pageContextTracker:)(v0);
  qword_4F2F70 = result;
  return result;
}

id static MetricsActivity.shared.getter()
{
  if (qword_4E89B8 != -1)
  {
    swift_once();
  }

  v1 = qword_4F2F70;

  return v1;
}

uint64_t MetricsActivity.firstPageEventWithReferrer.getter()
{
  v0 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9874();
  v3 = v2[8];
  sub_12B2B4(v2, type metadata accessor for MetricsActivity.State);
  return v3;
}

uint64_t sub_129308@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9874();
  v5 = v4[8];
  result = sub_12B2B4(v4, type metadata accessor for MetricsActivity.State);
  *a1 = v5;
  return result;
}

void sub_1293C0(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  v4 = v3 + *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  *(v4 + 8) = v2;

  os_unfair_lock_unlock((v3 + v5));
}

void MetricsActivity.firstPageEventWithReferrer.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  v4 = v3 + *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  *(v4 + 8) = a1;

  os_unfair_lock_unlock((v3 + v5));
}

void (*MetricsActivity.firstPageEventWithReferrer.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(*(type metadata accessor for MetricsActivity.State(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = *(v1 + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = v4;
  sub_3E9874();
  v7 = *(v6 + 8);
  sub_12B2B4(v6, type metadata accessor for MetricsActivity.State);
  *(a1 + 16) = v7;
  return sub_1295C8;
}

void sub_1295C8(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = v1 + *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v5));
  *(v4 + 8) = v3;
  os_unfair_lock_unlock((v1 + v5));

  free(v2);
}

BOOL MetricsActivity.hasActiveCrossfireReferral.getter()
{
  v0 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F90);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  sub_3E9874();
  sub_FBD0(&v2[*(v0 + 24)], v5, &qword_4F2F90);
  sub_12B2B4(v2, type metadata accessor for MetricsActivity.State);
  v6 = type metadata accessor for MetricsActivity.PageReferrer(0);
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6) != 1;
  sub_FCF8(v5, &qword_4F2F90);
  return v7;
}

uint64_t MetricsActivity.pageReferrer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9874();
  sub_FBD0(&v4[*(v2 + 24)], a1, &qword_4F2F90);
  return sub_12B2B4(v4, type metadata accessor for MetricsActivity.State);
}

void MetricsActivity.beginActiveCrossfireReferral(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_12B9CC(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_12994C(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for MetricsActivity.State(0) + 24);
  sub_FCF8(a1 + v4, &qword_4F2F90);
  sub_12C310(a2, a1 + v4, type metadata accessor for MetricsActivity.PageReferrer);
  v5 = type metadata accessor for MetricsActivity.PageReferrer(0);
  return (*(*(v5 - 8) + 56))(a1 + v4, 0, 1, v5);
}

uint64_t MetricsActivity.currentPageFields.getter()
{
  v0 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9874();
  v3 = *&v2[*(v0 + 28)];

  sub_12B2B4(v2, type metadata accessor for MetricsActivity.State);
  return v3;
}

uint64_t sub_129AC0@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9874();
  v5 = *&v4[*(v2 + 28)];

  result = sub_12B2B4(v4, type metadata accessor for MetricsActivity.State);
  *a1 = v5;
  return result;
}

void sub_129B88(uint64_t a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  v3 = *(*v2 + class metadata base offset for ManagedBuffer + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_12C3C0(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));
}

uint64_t MetricsActivity.currentPageFields.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_12B9E8(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_129CE4(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for MetricsActivity.State(0) + 28);

  *(a1 + v4) = a2;
  return result;
}

void (*MetricsActivity.currentPageFields.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = type metadata accessor for MetricsActivity.State(0);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  v5 = *(v1 + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  a1[1] = v4;
  a1[2] = v5;
  v6 = v4;
  sub_3E9874();
  v7 = *(v6 + *(v3 + 28));

  sub_12B2B4(v6, type metadata accessor for MetricsActivity.State);
  *a1 = v7;
  return sub_129E14;
}

void sub_129E14(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  if (a2)
  {

    os_unfair_lock_lock((v3 + v5));
    sub_12C3C0(v3 + v4);
    os_unfair_lock_unlock((v3 + v5));
  }

  else
  {
    os_unfair_lock_lock((v3 + v5));
    sub_12C3C0(v3 + v4);
    os_unfair_lock_unlock((v3 + v5));
  }

  free(v2);
}

uint64_t MetricsActivity.pageContext.getter()
{
  result = sub_3E87D4();
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t MetricsActivity.playReason.getter()
{
  v0 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9874();
  v3 = *&v2[*(v0 + 36)];
  sub_12B2B4(v2, type metadata accessor for MetricsActivity.State);
  return v3;
}

void MetricsActivity.setPlayReason(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = v3 + *(type metadata accessor for MetricsActivity.State(0) + 36) + v4;
  *v6 = a1;
  *(v6 + 8) = 0;

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t MetricsActivity.playbackInitiator.getter()
{
  v0 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9874();
  v3 = *&v2[*(v0 + 32)];
  sub_12B2B4(v2, type metadata accessor for MetricsActivity.State);
  return v3;
}

void MetricsActivity.setInitiator(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = v3 + *(type metadata accessor for MetricsActivity.State(0) + 32) + v4;
  *v6 = a1;
  *(v6 + 8) = 0;

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t MetricsActivity.playContext.getter()
{
  v0 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9874();
  v3 = &v2[*(v0 + 36)];
  v4 = *v3;
  v5 = v3[8];
  sub_12B2B4(v2, type metadata accessor for MetricsActivity.State);
  if ((v5 & 1) == 0)
  {
    if (v4 > 8)
    {
      if (v4 == 9)
      {
        return 1769105747;
      }

      if (v4 == 15)
      {
        return 0x746567646977;
      }
    }

    else
    {
      if (v4 == 7)
      {
        return 0x6979616C50776F6ELL;
      }

      if (v4 == 8)
      {
        return 0xD000000000000010;
      }
    }
  }

  result = sub_3E87D4();
  if (!v7)
  {
    return 0;
  }

  return result;
}

uint64_t MetricsActivity.stopReason.getter()
{
  v0 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9874();
  v3 = *&v2[*(v0 + 40)];
  sub_12B2B4(v2, type metadata accessor for MetricsActivity.State);
  return v3;
}

void MetricsActivity.setStopReason(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = v3 + *(type metadata accessor for MetricsActivity.State(0) + 40) + v4;
  *v6 = a1;
  *(v6 + 8) = 0;

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t MetricsActivity.stopContext.getter()
{
  v0 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v0);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9874();
  v3 = v2[*(v0 + 40) + 8];
  sub_12B2B4(v2, type metadata accessor for MetricsActivity.State);
  result = 0;
  if ((v3 & 1) == 0)
  {
    v5 = NSPersistentStringFromMTStopReason();
    v6 = sub_3ED244();

    return v6;
  }

  return result;
}

uint64_t MetricsActivity.stopType.getter()
{
  v0 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v0);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9874();
  v3 = v2[*(v0 + 32) + 8];
  sub_12B2B4(v2, type metadata accessor for MetricsActivity.State);
  result = 0;
  if ((v3 & 1) == 0)
  {
    v5 = NSPersistentStringFromMTPlaybackAdjustmentInitiator();
    v6 = sub_3ED244();

    return v6;
  }

  return result;
}

Swift::Void __swiftcall MetricsActivity.clearStopInfo()()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  v2 = v1 + *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = type metadata accessor for MetricsActivity.State(0);
  v5 = v2 + *(v4 + 32);
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v2 + *(v4 + 40);
  *v6 = 0;
  *(v6 + 8) = 1;

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t MetricsActivity.widgetContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9874();
  sub_FBD0(&v4[*(v2 + 44)], a1, &qword_4F2F88);
  return sub_12B2B4(v4, type metadata accessor for MetricsActivity.State);
}

uint64_t MetricsActivity.setupWidgetData(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F88);
  __chkstk_darwin(v1 - 8);
  v3 = &v8[-v2];
  sub_3E5CA4();
  v4 = *(v0 + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  v9 = v3;
  v5 = *(*v4 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_12BA58(v4 + v5);
  os_unfair_lock_unlock((v4 + v6));
  return sub_FCF8(v3, &qword_4F2F88);
}

uint64_t sub_12B0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  v9 = sub_3E5DC4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD0(a1, v8, &unk_4E9EE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_FCF8(v8, &unk_4E9EE0);
    sub_13A5BC(a2, a3, v14);
    return sub_FCF8(v14, &unk_501090);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);

    sub_3E9114();
    sub_39AB8(v14, a2, a3);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_12B2B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s8ShelfKit15MetricsActivityC12PageReferrerV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_3E5DC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v39[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9870);
  __chkstk_darwin(v14);
  v45 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v39[-v17];
  v19 = a1[1];
  v20 = a2[1];
  if (v19)
  {
    if (!v20 || (*a1 != *a2 || v19 != v20) && (sub_3EE804() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v41 = v10;
  v43 = v7;
  v21 = type metadata accessor for MetricsActivity.PageReferrer(0);
  v44 = v5;
  v42 = v21;
  v22 = *(v21 + 20);
  v23 = *(v14 + 48);
  sub_FBD0(a1 + v22, v18, &unk_4E9EE0);
  v24 = a2 + v22;
  v25 = v44;
  sub_FBD0(v24, &v18[v23], &unk_4E9EE0);
  v26 = *(v25 + 48);
  if (v26(v18, 1, v4) != 1)
  {
    sub_FBD0(v18, v13, &unk_4E9EE0);
    if (v26(&v18[v23], 1, v4) != 1)
    {
      (*(v25 + 32))(v43, &v18[v23], v4);
      sub_12C378(&qword_4E9880, &type metadata accessor for URL);
      v40 = sub_3ED174();
      v28 = *(v25 + 8);
      v28(v43, v4);
      v28(v13, v4);
      sub_FCF8(v18, &unk_4E9EE0);
      if ((v40 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    (*(v25 + 8))(v13, v4);
LABEL_13:
    v27 = v18;
LABEL_21:
    sub_FCF8(v27, &qword_4E9870);
    return 0;
  }

  if (v26(&v18[v23], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_FCF8(v18, &unk_4E9EE0);
LABEL_15:
  v29 = *(v42 + 24);
  v30 = *(v14 + 48);
  v31 = a1 + v29;
  v32 = v45;
  sub_FBD0(v31, v45, &unk_4E9EE0);
  sub_FBD0(a2 + v29, &v32[v30], &unk_4E9EE0);
  if (v26(v32, 1, v4) == 1)
  {
    if (v26(&v32[v30], 1, v4) == 1)
    {
      sub_FCF8(v32, &unk_4E9EE0);
      return 1;
    }

    goto LABEL_20;
  }

  v33 = v41;
  sub_FBD0(v32, v41, &unk_4E9EE0);
  if (v26(&v32[v30], 1, v4) == 1)
  {
    (*(v44 + 8))(v33, v4);
LABEL_20:
    v27 = v32;
    goto LABEL_21;
  }

  v36 = v43;
  v35 = v44;
  (*(v44 + 32))(v43, &v32[v30], v4);
  sub_12C378(&qword_4E9880, &type metadata accessor for URL);
  v37 = sub_3ED174();
  v38 = *(v35 + 8);
  v38(v36, v4);
  v38(v33, v4);
  sub_FCF8(v32, &unk_4E9EE0);
  return (v37 & 1) != 0;
}

uint64_t sub_12B8C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_12B930()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_12B988(void **a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = v3;

  *a1 = v3;
}

uint64_t sub_12BA00(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for MetricsActivity.State(0) + 28);

  *(a1 + v4) = v3;
  return result;
}

uint64_t sub_12BA58(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for MetricsActivity.State(0);
  return sub_12C2A0(v3, a1 + *(v4 + 44));
}

uint64_t sub_12BB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_12BBF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_12BCA4()
{
  sub_1972C();
  if (v0 <= 0x3F)
  {
    sub_12C19C(319, &qword_4E9918, &type metadata accessor for URL);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_12BD58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F90);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F88);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_12BEB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F88);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_12BFF0()
{
  sub_12C19C(319, &qword_4F30E0, sub_12C1F0);
  if (v0 <= 0x3F)
  {
    sub_12C19C(319, &qword_4F30F0, type metadata accessor for MetricsActivity.PageReferrer);
    if (v1 <= 0x3F)
    {
      sub_12C23C();
      if (v2 <= 0x3F)
      {
        sub_12C19C(319, &qword_4F3100, type metadata accessor for MTPlaybackAdjustmentInitiator);
        if (v3 <= 0x3F)
        {
          sub_12C19C(319, &qword_4F3108, type metadata accessor for MTPlayReason);
          if (v4 <= 0x3F)
          {
            sub_12C19C(319, &qword_4F3110, type metadata accessor for MTStopReason);
            if (v5 <= 0x3F)
            {
              sub_12C19C(319, &unk_4F3118, &type metadata accessor for MetricsWidgetContext);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_12C19C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_12C1F0()
{
  result = qword_4F30E8;
  if (!qword_4F30E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F30E8);
  }

  return result;
}

void sub_12C23C()
{
  if (!qword_4F30F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_503DF0);
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F30F8);
    }
  }
}

uint64_t sub_12C2A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F88);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_12C310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_12C378(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MetricsController.__allocating_init(asPartOf:)()
{
  v0 = swift_allocObject();
  MetricsController.init(asPartOf:)();
  return v0;
}

uint64_t MetricsController.init(asPartOf:)()
{
  v1 = v0;
  v2 = sub_3EC4A4();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE350);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_3EC794();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageEnterGate) = 0;
  v12 = OBJC_IVAR____TtC8ShelfKit17MetricsController_pageMetrics;
  v13 = sub_3EC164();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  sub_3E68D4();
  sub_3EC364();
  *(v1 + 16) = v21;
  type metadata accessor for MetricsActivity();
  sub_3EC364();
  v14 = v21;
  if (!v21)
  {
    if (qword_4E89B8 != -1)
    {
      swift_once();
    }

    v14 = qword_4F2F70;
  }

  *(v1 + 24) = v14;
  sub_3EC364();
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_3EC784();
    if (v15(v7, 1, v8) != 1)
    {
      sub_FCF8(v7, &qword_4EE350);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  (*(v9 + 32))(v1 + OBJC_IVAR____TtC8ShelfKit17MetricsController_metricsFieldsContext, v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3170);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageContext) = v16;
  sub_3E87F4();
  sub_3EC364();
  v17 = v21;
  if (!v21)
  {
    v17 = sub_3E87E4();
  }

  *(v1 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageContextTracker) = v17;
  sub_3EC394();
  (*(v20 + 32))(v1 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pipeline, v4, v2);
  type metadata accessor for MetricsPageEnterGate();
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + 32) = 0;
  *(v18 + 34) = 0;
  *(v18 + 24) = &protocol witness table for MetricsController;
  swift_unknownObjectWeakAssign();

  *(v1 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageEnterGate) = v18;

  return v1;
}

uint64_t MetricsController.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit17MetricsController_pageMetrics;
  swift_beginAccess();
  return sub_FBD0(v1 + v3, a1, &qword_4F3190);
}

uint64_t sub_12C8AC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3190);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_FBD0(a1, &v10 - v5, &qword_4F3190);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC8ShelfKit17MetricsController_pageMetrics;
  swift_beginAccess();
  sub_1309C0(v6, v7 + v8);
  swift_endAccess();
  sub_12CA14();
  return sub_FCF8(v6, &qword_4F3190);
}

uint64_t MetricsController.pageMetrics.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit17MetricsController_pageMetrics;
  swift_beginAccess();
  sub_1309C0(a1, v1 + v3);
  swift_endAccess();
  sub_12CA14();
  return sub_FCF8(a1, &qword_4F3190);
}

uint64_t sub_12CA14()
{
  v1 = sub_3EC144();
  v42 = *(v1 - 8);
  __chkstk_darwin(v1);
  v46 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v48 = v31 - v4;
  v5 = sub_3EC0B4();
  v44 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3190);
  __chkstk_darwin(v8 - 8);
  v10 = v31 - v9;
  v11 = sub_3EC164();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8ShelfKit17MetricsController_pageMetrics;
  swift_beginAccess();
  sub_FBD0(v0 + v15, v10, &qword_4F3190);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    result = sub_FCF8(v10, &qword_4F3190);
    v17 = *(v0 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageEnterGate);
    if (v17)
    {
      result = swift_beginAccess();
      *(v17 + 34) = 0;
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  (*(v12 + 32))(v14, v10, v11);
  result = *(v0 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageEnterGate);
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v31[1] = *(v0 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageEnterGate);

  result = sub_3EC0D4();
  v32 = *(result + 16);
  if (v32)
  {
    v18 = 0;
    v34 = result + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v33 = v44 + 16;
    v45 = v42 + 16;
    v47 = (v42 + 8);
    v35 = (v44 + 8);
    v36 = result;
    v40 = v11;
    v41 = v5;
    v38 = v7;
    v39 = v12;
    v37 = v14;
    while (1)
    {
      if (v18 >= *(result + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      v19 = *(v44 + 72);
      v43 = v18;
      (*(v44 + 16))(v7, v34 + v19 * v18, v5);
      v20 = sub_3EC094();
      sub_3EC134();
      if (*(v20 + 16))
      {
        sub_131964(&qword_4F32A8, &type metadata accessor for PageMetrics.InvocationPoint);
        v21 = sub_3ED114();
        v22 = -1 << *(v20 + 32);
        v23 = v21 & ~v22;
        if ((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          break;
        }
      }

LABEL_7:
      v18 = v43 + 1;

      (*v47)(v48, v1);
      v7 = v38;
      v5 = v41;
      (*v35)(v38, v41);
      v12 = v39;
      v11 = v40;
      result = v36;
      v14 = v37;
      if (v18 == v32)
      {
        goto LABEL_16;
      }
    }

    v24 = ~v22;
    v25 = *(v42 + 72);
    v26 = *(v42 + 16);
    while (1)
    {
      v27 = v46;
      v26(v46, *(v20 + 48) + v25 * v23, v1);
      sub_131964(&qword_4F32B0, &type metadata accessor for PageMetrics.InvocationPoint);
      v28 = sub_3ED174();
      v29 = *v47;
      (*v47)(v27, v1);
      if (v28)
      {
        break;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v29(v48, v1);
    (*v35)(v38, v41);
    v30 = 1;
    v12 = v39;
    v11 = v40;
    v14 = v37;
  }

  else
  {
LABEL_16:

    v30 = 0;
  }

  MetricsPageEnterGate.hasPageMetrics.setter(v30);

  return (*(v12 + 8))(v14, v11);
}

uint64_t (*MetricsController.pageMetrics.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_12D068;
}

uint64_t sub_12D068(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_12CA14();
  }

  return result;
}

Swift::Void __swiftcall MetricsController.reset()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3190);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_3EC164();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC8ShelfKit17MetricsController_pageMetrics;
  swift_beginAccess();
  sub_1309C0(v3, v0 + v5);
  swift_endAccess();
  sub_12CA14();
  sub_FCF8(v3, &qword_4F3190);
  v6 = *(v0 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageEnterGate);
  if (v6)
  {
    swift_beginAccess();
    *(v6 + 32) = 0;

    MetricsPageEnterGate.hasExitedWhileAppeared.setter(0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t MetricsController.process(_:)(uint64_t a1)
{
  v98 = a1;
  v89 = sub_3EBBC4();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_3EBC14();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_3EC044();
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v107 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v4;
  __chkstk_darwin(v5);
  v100 = &v83 - v6;
  v101 = sub_3EC4A4();
  v109 = *(v101 - 8);
  __chkstk_darwin(v101);
  v106 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v7;
  __chkstk_darwin(v8);
  v108 = &v83 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3198);
  v95 = *(v10 - 8);
  v96 = v10;
  __chkstk_darwin(v10);
  v12 = &v83 - v11;
  v92 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v92);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F31A0);
  v15 = *(v90 - 8);
  __chkstk_darwin(v90);
  v17 = &v83 - v16;
  v18 = sub_3EC794();
  v91 = *(v18 - 8);
  __chkstk_darwin(v18);
  v105 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v99 = &v83 - v21;
  __chkstk_darwin(v22);
  v24 = &v83 - v23;
  __chkstk_darwin(v25);
  v27 = &v83 - v26;
  v93 = v28;
  __chkstk_darwin(v29);
  v103 = &v83 - v30;
  aBlock[0] = *(v1 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageContextTracker);

  sub_3EC734();
  sub_3E87F4();
  sub_3EC724();
  v31 = v17;
  v32 = v1;
  (*(v15 + 8))(v31, v90);
  v33 = v18;

  v34 = v92;
  sub_3E9874();
  v35 = *&v14[v34[7]];

  sub_130A30(v14);
  aBlock[0] = v35;
  sub_3EC754();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DF0);
  sub_3EC704();
  v95[1](v12, v96);

  v36 = v91;
  v37 = v91 + 8;
  v38 = *(v91 + 8);
  (v38)(v24, v33);
  LOBYTE(aBlock[0]) = 0;
  if (qword_4E8980 != -1)
  {
    swift_once();
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1570);
  __swift_project_value_buffer(v39, qword_4F1540);
  v40 = v103;
  sub_3EC724();
  v95 = v38;
  v96 = v37;
  (v38)(v27, v33);
  v92 = *(v109 + 16);
  v41 = v101;
  (v92)(v108, v32 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pipeline, v101);
  v42 = *(v102 + 16);
  v43 = v100;
  v42(v100, v98, v104);
  v44 = *(v36 + 16);
  v45 = v33;
  v46 = v99;
  v47 = v40;
  v48 = v45;
  v44(v99, v47);
  (v92)(v106, v108, v41);
  v49 = v43;
  v50 = v104;
  v42(v107, v49, v104);
  (v44)(v105, v46, v48);
  v51 = v109;
  v52 = (*(v109 + 80) + 16) & ~*(v109 + 80);
  v53 = v102;
  v54 = (v94 + *(v102 + 80) + v52) & ~*(v102 + 80);
  v55 = (v97 + *(v36 + 80) + v54) & ~*(v36 + 80);
  v56 = swift_allocObject();
  v57 = v56 + v52;
  v58 = v101;
  (*(v51 + 32))(v57, v108, v101);
  v59 = v53;
  (*(v53 + 32))(v56 + v54, v100, v50);
  v60 = *(v36 + 32);
  v108 = v48;
  v60(v56 + v55, v99, v48);
  v61 = [objc_opt_self() isMainThread];
  v62 = v50;
  v63 = v58;
  v64 = v107;
  v65 = v109;
  if (v61)
  {
    v67 = v105;
    v66 = v106;
    sub_3EC494();

    v68 = v67;
  }

  else
  {
    sub_801B4();
    v100 = sub_3EDBC4();
    v69 = swift_allocObject();
    *(v69 + 16) = sub_130C60;
    *(v69 + 24) = v56;
    aBlock[4] = sub_7A678;
    aBlock[5] = v69;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1279E4;
    aBlock[3] = &block_descriptor_9;
    v99 = _Block_copy(aBlock);

    v70 = v84;
    sub_3EBBE4();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_131964(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
    sub_DA8D4();
    v71 = v58;
    v72 = v62;
    v73 = v86;
    v74 = v59;
    v75 = v89;
    sub_3EE244();
    v77 = v99;
    v76 = v100;
    sub_3EDBE4();
    _Block_release(v77);

    v78 = v73;
    v62 = v72;
    v63 = v71;
    v79 = v75;
    v59 = v74;
    (*(v88 + 8))(v78, v79);
    (*(v85 + 8))(v70, v87);
    v66 = v106;
    v64 = v107;
    v68 = v105;
  }

  v80 = v108;
  v81 = v95;
  (v95)(v68, v108);
  (*(v59 + 8))(v64, v62);
  (*(v65 + 8))(v66, v63);
  return (v81)(v103, v80);
}

uint64_t MetricsController.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit17MetricsController_metricsFieldsContext;
  v2 = sub_3EC794();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC8ShelfKit17MetricsController_pipeline;
  v4 = sub_3EC4A4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageMetrics, &qword_4F3190);
  return v0;
}

uint64_t MetricsController.__deallocating_deinit()
{
  MetricsController.deinit();

  return swift_deallocClassInstance();
}

void MetricsController.addAdHocImpression(_:in:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_3EC544();
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EC5F4();
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EC634();
  __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 16);
  if (v16)
  {
    v37 = v13;
    v38 = v12;
    v36 = v16;

    sub_3E66B4();
    sub_3EC5C4();
    v17 = sub_3E6694();
    v39 = a3;
    v33 = v17;
    v19 = v18;
    v20 = sub_3E6674();
    v34 = v7;
    v22 = v21;
    v23 = sub_3E7A14();
    v35 = v10;
    v24 = v23;
    v26 = v25;
    v27 = sub_3E6684();
    v29 = v28;
    v30 = sub_3E66A4();
    *&v46 = v33;
    *(&v46 + 1) = v19;
    *&v47 = v20;
    *(&v47 + 1) = v22;
    *&v48 = v39;
    *(&v48 + 1) = v24;
    *&v49 = v26;
    *(&v49 + 1) = v27;
    *&v50 = v29;
    *(&v50 + 1) = v30;
    v51 = v31;
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v45 = v31;
    v40 = v46;
    v41 = v47;
    ImpressionFields.metricsFields.getter();
    sub_130DCC(&v46);
    sub_3EC534();
    sub_130E20(_swiftEmptyArrayStorage);
    sub_130E20(_swiftEmptyArrayStorage);
    sub_3EC604();
    sub_3E68A4();

    (*(v37 + 8))(v15, v38);
  }
}

Swift::Void __swiftcall MetricsController.observe(lifecycleEvent:)(ShelfKit::StoreViewControllerLifecycleEvent lifecycleEvent)
{
  v3 = sub_3EC144();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (lifecycleEvent <= ShelfKit_StoreViewControllerLifecycleEvent_willDisappear)
  {
    if (lifecycleEvent)
    {
      if (lifecycleEvent == ShelfKit_StoreViewControllerLifecycleEvent_didAppear)
      {
        v8 = *(v1 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageEnterGate);
        if (!v8)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        swift_beginAccess();
        v9 = *(v8 + 32);
        *(v8 + 32) = 1;
        if ((v9 & 1) == 0)
        {
          swift_beginAccess();
          if (*(v8 + 34) == 1)
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              v10 = *(v8 + 24);
              ObjectType = swift_getObjectType();

              sub_3EC134();
LABEL_19:
              (*(v10 + 8))(v6, ObjectType, v10);

              swift_unknownObjectRelease();
LABEL_29:
              (*(v4 + 8))(v6, v3);
            }
          }
        }
      }

      else
      {
        v18 = *(v1 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageEnterGate);
        if (!v18)
        {
LABEL_34:
          __break(1u);
          return;
        }

        swift_beginAccess();
        *(v18 + 32) = 0;
        if (*(v1 + 16))
        {
          sub_3E68C4();
        }

        sub_3EC124();
        MetricsController.sendEvents(for:)(v6);
        v19 = (*(v4 + 8))(v6, v3);
        v20 = *(*(v1 + 24) + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
        __chkstk_darwin(v19);
        *&v23[-16] = 0;
        v21 = *(*v20 + class metadata base offset for ManagedBuffer + 16);
        v22 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((v20 + v22));
        sub_130F50(v20 + v21);
        os_unfair_lock_unlock((v20 + v22));
      }
    }

    else
    {
      if (*(v1 + 16))
      {
        sub_3E68C4();
      }

      v14 = sub_3E87D4();
      v15 = *(v1 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageContext);
      __chkstk_darwin(v14);
      *&v23[-16] = v16;
      *&v23[-8] = v17;
      os_unfair_lock_lock((v15 + 32));
      sub_130F6C((v15 + 16));
      os_unfair_lock_unlock((v15 + 32));
    }
  }

  else
  {
    if (lifecycleEvent <= ShelfKit_StoreViewControllerLifecycleEvent_appExitedWhileAppeared)
    {
      if (lifecycleEvent == ShelfKit_StoreViewControllerLifecycleEvent_didDisappear)
      {
        return;
      }

      v7 = *(v1 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageEnterGate);
      if (v7)
      {
        swift_beginAccess();
        *(v7 + 33) = 1;
        sub_3EC104();
LABEL_28:
        MetricsController.sendEvents(for:)(v6);
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_32;
    }

    if (lifecycleEvent != ShelfKit_StoreViewControllerLifecycleEvent_appEnteredWhileAppeared)
    {
      sub_3EC0F4();
      goto LABEL_28;
    }

    v12 = *(v1 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageEnterGate);
    if (!v12)
    {
      goto LABEL_33;
    }

    swift_beginAccess();
    v13 = *(v12 + 33);
    *(v12 + 33) = 0;
    if (v13 == 1)
    {
      swift_beginAccess();
      if (*(v12 + 34) == 1)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v10 = *(v12 + 24);
          ObjectType = swift_getObjectType();

          sub_3EC114();
          goto LABEL_19;
        }
      }
    }
  }
}

uint64_t sub_12E5A0(void *a1, uint64_t a2, uint64_t a3)
{

  *a1 = a2;
  a1[1] = a3;
}

uint64_t MetricsController.sendEvents(for:)(uint64_t a1)
{
  v128 = a1;
  v108 = sub_3EBBC4();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_3EBC14();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_3EBBD4();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3EC4A4();
  v124 = *(v5 - 8);
  v125 = v5;
  __chkstk_darwin(v5);
  v122 = v6;
  v123 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v119);
  v118 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F90);
  __chkstk_darwin(v8 - 8);
  v120 = &v91 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3198);
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v91 - v10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F31A0);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v91 - v11;
  v129 = sub_3EC794();
  v121 = *(v129 - 8);
  v12 = *(v121 + 64);
  __chkstk_darwin(v129);
  v126 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v113 = &v91 - v14;
  __chkstk_darwin(v15);
  v117 = &v91 - v16;
  __chkstk_darwin(v17);
  v19 = &v91 - v18;
  v130 = sub_3EC144();
  v127 = *(v130 - 8);
  v20 = *(v127 + 64);
  __chkstk_darwin(v130);
  __chkstk_darwin(v21);
  v109 = &v91 - v22;
  v23 = OBJC_IVAR____TtC8ShelfKit17MetricsController_pageMetrics;
  swift_beginAccess();
  v24 = sub_3EC164();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v25 + 48;
  if (v26(v1 + v23, 1, v24))
  {
    return swift_endAccess();
  }

  v95 = v27;
  v96 = v26;
  v97 = v24;
  v93 = v20;
  v98 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v12;
  v99 = v19;
  v92 = sub_3EC0D4();
  swift_endAccess();
  v29 = v109;
  sub_3EC134();
  sub_131964(&qword_4F31A8, &type metadata accessor for PageMetrics.InvocationPoint);
  v30 = v130;
  sub_3ED514();
  sub_3ED514();
  if (aBlock == v137 && v132 == v138)
  {
    (*(v127 + 8))(v29, v30);

    v31 = v113;
LABEL_7:
    v33 = v31;
    v34 = *(v1 + 24);
    swift_beginAccess();
    v35 = 0;
    if (!v96(v1 + v23, 1, v97))
    {
      v35 = sub_3EC064();
    }

    v36 = swift_endAccess();
    v37 = *(v34 + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
    __chkstk_darwin(v36);
    *(&v91 - 2) = v35;
    v38 = *(*v37 + class metadata base offset for ManagedBuffer + 16);
    v39 = (*(*v37 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v37 + v39));
    sub_131B34(v37 + v38);
    os_unfair_lock_unlock((v37 + v39));

    v31 = v33;
    goto LABEL_10;
  }

  v32 = sub_3EE804();
  (*(v127 + 8))(v29, v30);

  v31 = v113;
  if (v32)
  {
    goto LABEL_7;
  }

LABEL_10:
  v40 = v23;
  v41 = sub_3E87B4();
  v42 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F31B0);
  sub_3E9874();
  if (v132)
  {
    sub_3E87C4();
  }

  v43 = v129;
  v44 = v121;
  v45 = v119;
  v46 = v116;
  v47 = v112;
  v116 = v41;
  aBlock = v41;
  v48 = v110;
  sub_3EC734();
  sub_3E87F4();
  sub_3EC724();
  (*(v111 + 8))(v48, v47);
  swift_beginAccess();
  v49 = 0;
  v50 = v31;
  if (!v96(v1 + v40, 1, v97))
  {
    v49 = sub_3EC064();
  }

  swift_endAccess();
  aBlock = v49;
  v51 = v114;
  sub_3EC754();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DF0);
  v52 = v117;
  sub_3EC704();
  (v115)[1](v51, v46);

  v53 = *(v44 + 8);
  v121 = v44 + 8;
  v119 = v53;
  (v53)(v50, v43);
  v115 = *(v1 + 24);
  v54 = v118;
  sub_3E9874();
  v55 = v52;
  v56 = v54 + v45[6];
  v57 = v120;
  sub_FBD0(v56, v120, &qword_4F2F90);
  sub_130A30(v54);
  v58 = type metadata accessor for MetricsActivity.PageReferrer(0);
  LOBYTE(v54) = (*(*(v58 - 8) + 48))(v57, 1, v58) != 1;
  sub_FCF8(v57, &qword_4F2F90);
  LOBYTE(aBlock) = v54;
  v59 = v44;
  if (qword_4E8980 != -1)
  {
    swift_once();
  }

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1570);
  __swift_project_value_buffer(v60, qword_4F1540);
  v61 = v99;
  sub_3EC724();
  (v119)(v55, v43);
  v62 = OBJC_IVAR____TtC8ShelfKit17MetricsController_pipeline;
  v63 = v127;
  (*(v127 + 16))(v98, v128, v130);
  v64 = v123;
  v65 = v124;
  v66 = v42 + v62;
  v67 = v125;
  (*(v124 + 16))(v123, v66, v125);
  (*(v59 + 16))(v126, v61, v43);
  v68 = (*(v63 + 80) + 24) & ~*(v63 + 80);
  v69 = (v93 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = (*(v65 + 80) + v69 + 8) & ~*(v65 + 80);
  v71 = (v122 + *(v59 + 80) + v70) & ~*(v59 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = v92;
  (*(v63 + 32))(v72 + v68, v98, v130);
  v73 = v115;
  *(v72 + v69) = v115;
  (*(v65 + 32))(v72 + v70, v64, v67);
  v74 = v72 + v71;
  v75 = v129;
  (*(v59 + 32))(v74, v126, v129);
  v76 = objc_opt_self();
  v77 = v73;
  if ([v76 isUnitTesting])
  {
    sub_801B4();
    v78 = v101;
    v79 = v100;
    v80 = v102;
    (*(v101 + 104))(v100, enum case for DispatchQoS.QoSClass.default(_:), v102);
    v81 = sub_3EDC04();
    (*(v78 + 8))(v79, v80);
    v82 = swift_allocObject();
    *(v82 + 16) = sub_1311AC;
    *(v82 + 24) = v72;
    v135 = sub_131330;
    v136 = v82;
    aBlock = _NSConcreteStackBlock;
    v132 = 1107296256;
    v133 = sub_1279E4;
    v134 = &block_descriptor_15_0;
    v83 = _Block_copy(&aBlock);

    v84 = v103;
    sub_3EBBE4();
    v137 = _swiftEmptyArrayStorage;
    sub_131964(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
    sub_DA8D4();
    v85 = v105;
    v86 = v75;
    v87 = v108;
    sub_3EE244();
    sub_3EDBE4();
    _Block_release(v83);

    (*(v107 + 8))(v85, v87);
    (*(v104 + 8))(v84, v106);
    (v119)(v99, v86);
  }

  else
  {
    v88 = [objc_opt_self() processInfo];
    v89 = sub_3ED204();
    v135 = sub_1311AC;
    v136 = v72;
    aBlock = _NSConcreteStackBlock;
    v132 = 1107296256;
    v133 = sub_130968;
    v134 = &block_descriptor_9_0;
    v90 = _Block_copy(&aBlock);

    [v88 performExpiringActivityWithReason:v89 usingBlock:v90];

    _Block_release(v90);

    return (v119)(v99, v75);
  }
}

void sub_12F68C(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v90 = a6;
  v89 = a5;
  v93 = a4;
  v114 = a3;
  v88 = sub_3EBBC4();
  v110 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_3EBC14();
  v109 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_3EC794();
  v92 = *(v106 - 8);
  v10 = *(v92 + 64);
  __chkstk_darwin(v106);
  v105 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_3EC4A4();
  v91 = *(v104 - 8);
  v11 = *(v91 + 64);
  __chkstk_darwin(v104);
  v103 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_3EC9F4();
  v107 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v67 = &v65 - v14;
  v72 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v72);
  v71 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_3EC144();
  v108 = *(v16 - 8);
  v17 = *(v108 + 64);
  __chkstk_darwin(v16);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v65 - v20;
  v111 = sub_3EC0B4();
  v22 = *(v111 - 8);
  __chkstk_darwin(v111);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v102 = dispatch_group_create();
    v101 = *(a2 + 16);
    if (v101)
    {
      v25 = 0;
      v27 = *(v22 + 16);
      v26 = v22 + 16;
      v99 = v27;
      v98 = a2 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
      v70 = OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state;
      v112 = v108 + 16;
      v113 = (v108 + 8);
      v97 = (v26 - 8);
      v66 = (v107 + 8);
      v83 = v91 + 16;
      v82 = v92 + 16;
      v81 = v11 + 7;
      v80 = v10 + 7;
      v79 = v17 + 7;
      v78 = v91 + 32;
      v77 = v92 + 32;
      v76 = v108 + 32;
      v75 = v119;
      v74 = (v110 + 8);
      v73 = (v109 + 8);
      v100 = v26;
      v96 = *(v26 + 56);
      v84 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v95 = v21;
      v107 = v24;
      while (1)
      {
        v110 = v25;
        v99(v24, v98 + v96 * v25, v111);
        v28 = *(sub_3EC094() + 16);

        if (!v28)
        {
          goto LABEL_14;
        }

        v29 = sub_3EC094();
        if (*(v29 + 16))
        {
          sub_131964(&qword_4F32A8, &type metadata accessor for PageMetrics.InvocationPoint);
          v30 = sub_3ED114();
          v31 = -1 << *(v29 + 32);
          v32 = v30 & ~v31;
          if ((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
          {
            break;
          }
        }

LABEL_4:

        v24 = v107;
        (*v97)(v107, v111);
LABEL_5:
        v25 = v110 + 1;
        if (v110 + 1 == v101)
        {
          goto LABEL_21;
        }
      }

      v33 = ~v31;
      v34 = *(v108 + 72);
      v35 = *(v108 + 16);
      while (1)
      {
        v35(v21, *(v29 + 48) + v34 * v32, v16);
        sub_131964(&qword_4F32B0, &type metadata accessor for PageMetrics.InvocationPoint);
        v36 = sub_3ED174();
        (*v113)(v21, v16);
        if (v36)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

LABEL_14:
      sub_3EC044();
      v37 = swift_allocBox();
      sub_3EC0A4();
      sub_3EC134();
      sub_131964(&qword_4F31A8, &type metadata accessor for PageMetrics.InvocationPoint);
      sub_3ED514();
      sub_3ED514();
      v109 = v37;
      if (aBlock == v115 && v118 == v116)
      {
        (*v113)(v18, v16);
      }

      else
      {
        v38 = sub_3EE804();
        (*v113)(v18, v16);

        if ((v38 & 1) == 0)
        {
LABEL_20:
          dispatch_group_enter(v102);
          sub_801B4();
          v94 = sub_3EDBC4();
          v44 = v91;
          (*(v91 + 16))(v103, v89, v104);
          v45 = v92;
          (*(v92 + 16))(v105, v90, v106);
          v46 = v108;
          (*(v108 + 16))(v95, v114, v16);
          v47 = (*(v44 + 80) + 16) & ~*(v44 + 80);
          v48 = (v81 + v47) & 0xFFFFFFFFFFFFFFF8;
          v49 = (*(v45 + 80) + v48 + 8) & ~*(v45 + 80);
          v50 = (v80 + v49) & 0xFFFFFFFFFFFFFFF8;
          v51 = (*(v46 + 80) + v50 + 8) & ~*(v46 + 80);
          v52 = (v79 + v51) & 0xFFFFFFFFFFFFFFF8;
          v53 = swift_allocObject();
          v54 = *(v44 + 32);
          v21 = v95;
          v54(v53 + v47, v103, v104);
          *(v53 + v48) = v109;
          (*(v45 + 32))(v53 + v49, v105, v106);
          v55 = v102;
          *(v53 + v50) = v102;
          (*(v108 + 32))(v53 + v51, v21, v16);
          v56 = v93;
          *(v53 + v52) = v93;
          v119[2] = sub_1317E8;
          v119[3] = v53;
          aBlock = _NSConcreteStackBlock;
          v118 = 1107296256;
          v119[0] = sub_1279E4;
          v119[1] = &block_descriptor_24;
          v57 = _Block_copy(&aBlock);

          v58 = v55;
          v59 = v56;

          v60 = v85;
          sub_3EBBE4();
          aBlock = _swiftEmptyArrayStorage;
          sub_131964(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
          sub_DA8D4();
          v61 = v87;
          v62 = v88;
          sub_3EE244();
          v63 = v94;
          sub_3EDBE4();
          _Block_release(v57);

          (*v74)(v61, v62);
          (*v73)(v60, v86);
          v24 = v107;
          (*v97)(v107, v111);

          v18 = v84;
          goto LABEL_5;
        }
      }

      v39 = v71;
      sub_3E9874();
      v40 = *(v39 + 8);
      sub_130A30(v39);
      if (v40 == 1)
      {
        v41 = v68;
        sub_3EC9D4();
        swift_beginAccess();
        v42 = sub_3EBFF4();
        v43 = v67;
        sub_3152C(v67, v41);
        v42(&aBlock, 0);
        swift_endAccess();
        (*v66)(v43, v69);
      }

      goto LABEL_20;
    }

LABEL_21:
    v64 = v102;
    sub_3EDB04();
  }
}

uint64_t sub_1303DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v27 = a4;
  v28 = a6;
  v26 = a5;
  v6 = sub_3EC144();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EC044();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_projectBox();
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  sub_3EC494();
  (*(v11 + 8))(v13, v10);
  (*(v7 + 16))(v9, v26, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = v27;
  *(v17 + 16) = v27;
  (*(v7 + 32))(v17 + v15, v9, v6);
  v19 = v28;
  *(v17 + v16) = v28;
  v20 = sub_801B4();
  v21 = v18;
  v22 = v19;
  v23 = sub_3EDBC4();
  v29[3] = v20;
  v29[4] = &protocol witness table for OS_dispatch_queue;
  v29[0] = v23;
  sub_3ECDC4();

  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

void sub_13066C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3EC144();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_group_leave(a2);
  sub_3EC134();
  sub_131964(&qword_4F31A8, &type metadata accessor for PageMetrics.InvocationPoint);
  sub_3ED514();
  sub_3ED514();
  if (v20[2] == v20[0] && v20[3] == v20[1])
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v13 = sub_3EE804();
    (*(v10 + 8))(v12, v9);

    if ((v13 & 1) == 0)
    {
      return;
    }
  }

  v14 = *(a4 + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  sub_3E9874();
  v15 = v8[8];
  sub_130A30(v8);
  if (v15 == 1)
  {
    v16 = v14 + *(*v14 + class metadata base offset for ManagedBuffer + 16);
    v17 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v14 + v17));
    *(v16 + 8) = 0;
    os_unfair_lock_unlock((v14 + v17));
    os_unfair_lock_lock((v14 + v17));
    v18 = *(v6 + 24);
    sub_FCF8(v16 + v18, &qword_4F2F90);
    v19 = type metadata accessor for MetricsActivity.PageReferrer(0);
    (*(*(v19 - 8) + 56))(v16 + v18, 1, 1, v19);
    os_unfair_lock_unlock((v14 + v17));
  }
}

uint64_t sub_130968(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1309C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3190);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_130A30(uint64_t a1)
{
  v2 = type metadata accessor for MetricsActivity.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_130A8C()
{
  v17 = sub_3EC4A4();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_3EC044();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_3EC794();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_130C60()
{
  sub_3EC4A4();
  sub_3EC044();
  sub_3EC794();
  sub_3EC494();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_130E20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA1B8);
    v3 = sub_3EE5F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_FBD0(v4, &v13, &qword_4EC480);
      v5 = v13;
      v6 = v14;
      result = sub_B4118(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1FB90(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_130F6C(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
}

uint64_t sub_130FB4()
{
  v17 = sub_3EC144();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 24) & ~v2;
  v3 = (*(v1 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_3EC4A4();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_3EC794();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v14 = *(v9 + 64);
  v12 = v2 | v5 | v10;

  (*(v1 + 8))(v0 + v15, v17);

  (*(v4 + 8))(v0 + v6, v16);
  (*(v9 + 8))(v0 + v11, v8);

  return _swift_deallocObject(v0, v11 + v14, v12 | 7);
}

void sub_1311AC(char a1)
{
  v3 = *(sub_3EC144() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_3EC4A4() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_3EC794() - 8);
  v10 = *(v1 + 16);
  v11 = *(v1 + v5);
  v12 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  sub_12F68C(a1, v10, v1 + v4, v11, v1 + v7, v12);
}

uint64_t sub_1312F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_13135C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8ShelfKit17MetricsController_pageMetrics;
  swift_beginAccess();
  return sub_FBD0(v3 + v4, a2, &qword_4F3190);
}

uint64_t type metadata accessor for MetricsController()
{
  result = qword_4F31E0;
  if (!qword_4F31E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_131420()
{
  sub_3EC794();
  if (v0 <= 0x3F)
  {
    sub_3EC4A4();
    if (v1 <= 0x3F)
    {
      sub_131578();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_131578()
{
  if (!qword_4F31F0)
  {
    sub_3EC164();
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F31F0);
    }
  }
}

uint64_t sub_1315D0()
{
  v17 = sub_3EC4A4();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 16) & ~v2;
  v14 = (*(v1 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_3EC794();
  v3 = *(v16 - 8);
  v4 = *(v3 + 80);
  v5 = (v14 + v4 + 8) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_3EC144();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9 + 8) & ~v9;
  v11 = v2 | v4 | v9;
  v12 = (*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v15, v17);

  (*(v3 + 8))(v0 + v5, v16);

  (*(v8 + 8))(v0 + v10, v7);

  return _swift_deallocObject(v0, v12 + 8, v11 | 7);
}

uint64_t sub_1317E8()
{
  v1 = *(sub_3EC4A4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_3EC794() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_3EC144() - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v0 + v3);
  v10 = *(v0 + v6);
  v11 = *(v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1303DC(v0 + v2, v9, v0 + v5, v10, v0 + v8, v11);
}

uint64_t sub_131964(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1319AC()
{
  v1 = sub_3EC144();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_131A84(uint64_t a1)
{
  v3 = *(sub_3EC144() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_13066C(a1, v5, v1 + v4, v6);
}

void sub_131BA4(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_3EE294();
    sub_36174(0, &qword_4EA188);
    sub_138918();
    sub_3ED844();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_44824();
      return;
    }

    while (1)
    {
      sub_30FC4(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_3EE304())
      {
        sub_36174(0, &qword_4EA188);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_131D8C()
{
  swift_beginAccess();

  return sub_3EC014();
}

uint64_t sub_131E10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_131EA8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t ShowHeaderFactory.__allocating_init(detail:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t MetricsEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *static MetricsEvent.pageMetricsFields(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3190);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  sub_FBD0(a1, &v10 - v3, &qword_4F3190);
  v5 = sub_3EC164();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_FCF8(v4, &qword_4F3190);
    v7 = 0;
  }

  else
  {
    v7 = sub_3EC064();
    (*(v6 + 8))(v4, v5);
  }

  v8 = _s8ShelfKit12MetricsEventC04pageC6FieldsySDySSypGSgAFFZ_0(v7);

  return v8;
}

ShelfKit::FollowMetricsEvent::FollowType_optional __swiftcall FollowMetricsEvent.FollowType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B1350;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t FollowMetricsEvent.FollowType.rawValue.getter()
{
  v1 = 0x776F6C6C6F666E75;
  if (*v0 != 1)
  {
    v1 = 0x6465776F6C6C6F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x776F6C6C6F66;
  }
}

uint64_t sub_1321E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x776F6C6C6F666E75;
  if (v2 != 1)
  {
    v4 = 0x6465776F6C6C6F66;
    v3 = 0xED000073776F6853;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x776F6C6C6F66;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x776F6C6C6F666E75;
  if (*a2 != 1)
  {
    v8 = 0x6465776F6C6C6F66;
    v7 = 0xED000073776F6853;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x776F6C6C6F66;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_1322FC()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_1323A8()
{
  sub_3ED394();
}

Swift::Int sub_132440()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

void sub_1324F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x776F6C6C6F666E75;
  if (v2 != 1)
  {
    v5 = 0x6465776F6C6C6F66;
    v4 = 0xED000073776F6853;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x776F6C6C6F66;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t static FollowMetricsEvent.makeData(followType:shows:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v53 = _swiftEmptyArrayStorage;
    sub_41C6C(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA1B8);
    v6 = (a2 + 64);
    while (1)
    {
      v7 = *(v6 - 4);
      v8 = *(v6 - 3);
      v9 = *(v6 - 2);
      v10 = *(v6 - 1);
      v11 = *v6;
      v47[0] = 0x64496D616461;
      v47[1] = 0xE600000000000000;
      v47[2] = v7;
      v47[3] = v8;
      v47[5] = &type metadata for String;
      strcpy(v48, "deviceShowId");
      HIBYTE(v48[6]) = 0;
      v48[7] = -5120;
      v49 = v9;
      v50 = v10;
      v51 = &type metadata for String;
      v52[0] = 0x6954776F6C6C6F66;
      v52[1] = 0xEA0000000000656DLL;
      v52[5] = &type metadata for Double;
      v52[2] = v11;
      v12 = sub_3EE5F4();

      sub_FBD0(v47, &v44, &qword_4EC480);
      v13 = v44;
      v14 = v45;
      result = sub_552A8(v44, v45);
      if (v16)
      {
        break;
      }

      v17 = v12 + 8;
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v12[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      result = sub_1FB90(v46, (v12[7] + 32 * result));
      v19 = v12[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_19;
      }

      v12[2] = v21;
      sub_FBD0(v48, &v44, &qword_4EC480);
      v22 = v44;
      v23 = v45;
      result = sub_552A8(v44, v45);
      if (v24)
      {
        break;
      }

      *(v17 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v25 = (v12[6] + 16 * result);
      *v25 = v22;
      v25[1] = v23;
      result = sub_1FB90(v46, (v12[7] + 32 * result));
      v26 = v12[2];
      v20 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v20)
      {
        goto LABEL_19;
      }

      v12[2] = v27;
      sub_FBD0(v52, &v44, &qword_4EC480);
      v28 = v44;
      v29 = v45;
      result = sub_552A8(v44, v45);
      if (v30)
      {
        break;
      }

      *(v17 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v31 = (v12[6] + 16 * result);
      *v31 = v28;
      v31[1] = v29;
      result = sub_1FB90(v46, (v12[7] + 32 * result));
      v32 = v12[2];
      v20 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v20)
      {
        goto LABEL_19;
      }

      v12[2] = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC480);
      swift_arrayDestroy();
      v53 = v4;
      v35 = v4[2];
      v34 = v4[3];
      if (v35 >= v34 >> 1)
      {
        sub_41C6C((v34 > 1), v35 + 1, 1);
        v4 = v53;
      }

      v4[2] = v35 + 1;
      v4[v35 + 4] = v12;
      v6 += 5;
      if (!--v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F32B8);
    inited = swift_initStackObject();
    v37 = inited;
    *(inited + 16) = xmmword_3F5300;
    *(inited + 32) = 0x707954746E657665;
    *(inited + 40) = 0xE900000000000065;
    if (v2)
    {
      if (v2 == 1)
      {
        v38 = 0xE800000000000000;
        v39 = 0x776F6C6C6F666E75;
      }

      else
      {
        v38 = 0xED000073776F6853;
        v39 = 0x6465776F6C6C6F66;
      }
    }

    else
    {
      v38 = 0xE600000000000000;
      v39 = 0x776F6C6C6F66;
    }

    *(inited + 48) = v39;
    *(inited + 56) = v38;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 0x6369706F74;
    *(inited + 88) = 0xE500000000000000;
    *(inited + 96) = 0xD000000000000017;
    *(inited + 104) = 0x8000000000427F10;
    *(inited + 120) = &type metadata for String;
    *(inited + 128) = 0x73776F6873;
    *(inited + 136) = 0xE500000000000000;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F32C0);
    *(v37 + 144) = v4;
    sub_61EB0(v37);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC480);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F32C8);
    v40 = sub_3EC9A4();
    v41 = *(v40 - 8);
    v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_3F5630;
    sub_3EC964();
    sub_35418(v43);
    swift_setDeallocating();
    (*(v41 + 8))(v43 + v42, v40);
    swift_deallocClassInstance();
    return sub_3EC014();
  }

  return result;
}

ShelfKit::AppEnterMetricsEvent::EnterKind_optional __swiftcall AppEnterMetricsEvent.EnterKind.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B13B8;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t AppEnterMetricsEvent.EnterKind.rawValue.getter()
{
  v1 = 0x746977536B736174;
  if (*v0 != 1)
  {
    v1 = 1802398060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x68636E75616CLL;
  }
}

uint64_t sub_132BCC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746977536B736174;
  v4 = 0xEA00000000006863;
  if (v2 != 1)
  {
    v3 = 1802398060;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x68636E75616CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x746977536B736174;
  v8 = 0xEA00000000006863;
  if (*a2 != 1)
  {
    v7 = 1802398060;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x68636E75616CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_132CC4()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_132D60()
{
  sub_3ED394();
}

Swift::Int sub_132DE8()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

void sub_132E8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEA00000000006863;
  v5 = 0x746977536B736174;
  if (v2 != 1)
  {
    v5 = 1802398060;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x68636E75616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static AppEnterMetricsEvent.makeData(enterKind:)(unsigned __int8 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F32B8);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_3F5300;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x7265746E65;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 1701869940;
  v4 = 0xE400000000000000;
  *(inited + 88) = 0xE400000000000000;
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0xEA00000000006863;
      v5 = 0x746977536B736174;
    }

    else
    {
      v5 = 1802398060;
    }
  }

  else
  {
    v4 = 0xE600000000000000;
    v5 = 0x68636E75616CLL;
  }

  *(inited + 96) = v5;
  *(inited + 104) = v4;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x6175676E614C736FLL;
  *(inited + 136) = 0xEB00000000736567;
  v6 = sub_3E6004();
  *(v3 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  *(v3 + 144) = v6;
  sub_61EB0(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC480);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A30);
  v7 = sub_3EC9F4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_3F5630;
  sub_3EC9D4();
  sub_35738(v10);
  swift_setDeallocating();
  (*(v8 + 8))(v10 + v9, v7);
  swift_deallocClassInstance();
  return sub_3EC014();
}

ShelfKit::AppExitMetricsEvent::ExitKind_optional __swiftcall AppExitMetricsEvent.ExitKind.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B1420;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t AppExitMetricsEvent.ExitKind.rawValue.getter()
{
  if (*v0)
  {
    return 0x746977536B736174;
  }

  else
  {
    return 1953068401;
  }
}

uint64_t sub_133218(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746977536B736174;
  }

  else
  {
    v3 = 1953068401;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEA00000000006863;
  }

  if (*a2)
  {
    v5 = 0x746977536B736174;
  }

  else
  {
    v5 = 1953068401;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006863;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_1332BC()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_13333C()
{
  sub_3ED394();
}

Swift::Int sub_1333A8()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_133424@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B1420;
  v8._object = v3;
  v5 = sub_3EE624(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_133484(uint64_t *a1@<X8>)
{
  v2 = 1953068401;
  if (*v1)
  {
    v2 = 0x746977536B736174;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006863;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static AppExitMetricsEvent.makeData(exitKind:)(unsigned __int8 *a1)
{
  v2 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  if (qword_4E89B8 != -1)
  {
    swift_once();
  }

  sub_3E9874();
  v6 = *&v4[*(v2 + 28)];

  sub_130A30(v4);
  if (!v6)
  {
    v6 = sub_61EB0(_swiftEmptyArrayStorage);
  }

  v18 = v6;
  sub_39FFC(0x6F43646572616873, 0xED0000746E65746ELL, &v16);
  sub_FCF8(&v16, &unk_501090);
  v17 = &type metadata for String;
  *&v16 = 1953069157;
  *(&v16 + 1) = 0xE400000000000000;
  sub_1FB90(&v16, v15);
  v7 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v7;
  sub_3A0A0(v15, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v9 = v14;
  v10 = 0x746977536B736174;
  if (!v5)
  {
    v10 = 1953068401;
  }

  v11 = 0xEA00000000006863;
  v17 = &type metadata for String;
  if (!v5)
  {
    v11 = 0xE400000000000000;
  }

  *&v16 = v10;
  *(&v16 + 1) = v11;
  sub_1FB90(&v16, v15);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v14 = v9;
  sub_3A0A0(v15, 1701869940, 0xE400000000000000, v12);
  return sub_3EC014();
}

uint64_t static WelcomeSheetMetricsEvent.makeData()()
{
  v0 = sub_3E8094();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F32B8);
  inited = swift_initStackObject();
  *(inited + 32) = 0x707954746E657665;
  *(inited + 16) = xmmword_4056C0;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x6B63696C63;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x79546E6F69746361;
  *(inited + 88) = 0xEA00000000006570;
  *(inited + 96) = 0x657461676976616ELL;
  *(inited + 104) = 0xE800000000000000;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x6449746567726174;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 144) = 0x65756E69746E6F63;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x7954746567726174;
  *(inited + 184) = 0xEA00000000006570;
  *(inited + 192) = 0x6E6F74747562;
  *(inited + 200) = 0xE600000000000000;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x644965676170;
  *(inited + 232) = 0xE600000000000000;
  strcpy((inited + 240), "WelcomeSheet");
  *(inited + 253) = 0;
  *(inited + 254) = -5120;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = 0x6570795465676170;
  *(inited + 280) = 0xE800000000000000;
  *(inited + 288) = v0;
  *(inited + 296) = v2;
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 1701273968;
  *(inited + 328) = 0xE400000000000000;

  v5._countAndFlagsBits = 95;
  v5._object = 0xE100000000000000;
  sub_3ED3D4(v5);
  v6._countAndFlagsBits = 0x53656D6F636C6557;
  v6._object = 0xEC00000074656568;
  sub_3ED3D4(v6);
  *(inited + 360) = &type metadata for String;
  *(inited + 336) = v0;
  *(inited + 344) = v2;
  sub_61EB0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC480);
  swift_arrayDestroy();
  return sub_3EC014();
}

uint64_t sub_133964()
{
  v0 = sub_3EC9F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  sub_3EC9E4();
  swift_beginAccess();
  sub_3152C(v6, v3);
  (*(v1 + 8))(v6, v0);
  return swift_endAccess();
}

uint64_t static ClickMetricsEvent.moreButtonClickEvent()()
{
  v0 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v0);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = &type metadata for String;
  *&v32 = 0x7470697263736564;
  *(&v32 + 1) = 0xEB000000006E6F69;
  sub_1FB90(&v32, v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = _swiftEmptyDictionarySingleton;
  sub_3A0A0(v31, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v4 = v30;
  if (qword_4E89B8 != -1)
  {
    swift_once();
  }

  sub_3E9874();
  v5 = *&v2[*(v0 + 28)];

  sub_130A30(v2);
  v6 = _s8ShelfKit12MetricsEventC04pageC6FieldsySDySSypGSgAFFZ_0(v5);

  if (v6)
  {
    v7 = swift_isUniquelyReferenced_nonNull_native();
    *&v32 = v4;
    sub_137B90(v6, sub_1374A4, 0, v7, &v32);

    v4 = v32;
  }

  if (v4[2] && (v8 = sub_552A8(0x644965676170, 0xE600000000000000), (v9 & 1) != 0) && (sub_2F4AC(v4[7] + 32 * v8, &v32), (swift_dynamicCast() & 1) != 0))
  {
    v10 = *(&v31[0] + 1);
    v29 = *&v31[0];
  }

  else
  {
    v29 = 0;
    v10 = 0xE000000000000000;
  }

  v28 = v10;
  v11 = sub_3E8524();
  v26 = v12;
  v27 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A30);
  v13 = sub_3EC9F4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v25 = xmmword_3F5630;
  *(v16 + 16) = xmmword_3F5630;

  sub_3EC9D4();
  v17 = sub_137ECC(v16);
  swift_setDeallocating();
  v18 = *(v14 + 8);
  v18(v16 + v15, v13);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v19 = swift_allocObject();
  *(v19 + 24) = 0u;
  *(v19 + 40) = 0u;
  *(v19 + 56) = 514;
  v20 = v26;
  *(v19 + 80) = v27;
  *(v19 + 88) = v20;
  v21 = v28;
  *(v19 + 64) = v29;
  *(v19 + 72) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v25;
  sub_3EC9C4();
  v23 = sub_137650(v22, v17);
  swift_setDeallocating();
  v18(v22 + v15, v13);
  swift_deallocClassInstance();

  *(v19 + 96) = v23;
  *(v19 + 16) = v4;
  return v19;
}

uint64_t ClickMetricsEvent.__allocating_init(actionResult:eligibilityType:isFamily:isStudent:targetType:targetId:including:eventFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for ClickMetricsEvent();
  v19 = swift_allocObject();
  *(v19 + 24) = a1;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  *(v19 + 48) = a4;
  *(v19 + 56) = a5;
  *(v19 + 57) = a6;
  *(v19 + 80) = a7;
  *(v19 + 88) = a8;
  *(v19 + 64) = a9;
  *(v19 + 72) = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A30);
  v20 = sub_3EC9F4();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_3F5630;
  sub_3EC9C4();
  v24 = sub_137650(v23, a11);
  swift_setDeallocating();
  (*(v21 + 8))(v23 + v22, v20);
  swift_deallocClassInstance();
  *(v19 + 96) = v24;
  *(v19 + 16) = a12;
  return v19;
}

uint64_t static ClickMetricsEvent.upsellPlanClickEvent(pageType:actionType:pageDetails:pageId:targetId:pageUrl:channelAdamId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11)
{
  v46 = &type metadata for String;
  *&v45 = a3;
  *(&v45 + 1) = a4;
  sub_1FB90(&v45, v44);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v44, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v47 = _swiftEmptyDictionarySingleton;
  sub_FBD0(a5, &v45, &unk_501090);
  if (v46)
  {
    sub_1FB90(&v45, v44);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v44, 0x6174654465676170, 0xEB00000000736C69, v17);
    v47 = _swiftEmptyDictionarySingleton;
  }

  else
  {
    sub_FCF8(&v45, &unk_501090);
    sub_39FFC(0x6174654465676170, 0xEB00000000736C69, v44);
    sub_FCF8(v44, &unk_501090);
  }

  if (a7)
  {
    v46 = &type metadata for String;
    *&v45 = a6;
    *(&v45 + 1) = a7;
    sub_1FB90(&v45, v44);

    v18 = v47;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v44, 0x644965676170, 0xE600000000000000, v19);
    v47 = v18;
  }

  else
  {
    sub_39FFC(0x644965676170, 0xE600000000000000, &v45);
    sub_FCF8(&v45, &unk_501090);
  }

  if (*(&a11 + 1))
  {
    v46 = &type metadata for String;
    v45 = a11;
    sub_1FB90(&v45, v44);

    v20 = v47;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v44, 0x416C656E6E616863, 0xED000064496D6164, v21);
    v47 = v20;
  }

  else
  {
    sub_39FFC(0x416C656E6E616863, 0xED000064496D6164, &v45);
    sub_FCF8(&v45, &unk_501090);
  }

  if (*(&a10 + 1))
  {
    v46 = &type metadata for String;
    v45 = a10;
    sub_1FB90(&v45, v44);

    v22 = v47;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v44, 0x6C725565676170, 0xE700000000000000, v23);
    v47 = v22;
    v24 = a9;
    if (a2)
    {
      goto LABEL_12;
    }

LABEL_15:
    v42 = v47;
    goto LABEL_17;
  }

  sub_39FFC(0x6C725565676170, 0xE700000000000000, &v45);
  sub_FCF8(&v45, &unk_501090);
  v24 = a9;
  if (!a2)
  {
    goto LABEL_15;
  }

LABEL_12:
  v46 = &type metadata for String;
  *&v45 = a1;
  *(&v45 + 1) = a2;
  sub_1FB90(&v45, v44);

  v25 = v47;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v44, 0x6570795465676170, 0xE800000000000000, v26);
  v47 = v25;
  if (a7)
  {
    *&v45 = a1;
    *(&v45 + 1) = a2;

    v48._countAndFlagsBits = 95;
    v48._object = 0xE100000000000000;
    sub_3ED3D4(v48);
    v49._countAndFlagsBits = a6;
    v49._object = a7;
    sub_3ED3D4(v49);
    v46 = &type metadata for String;
    sub_1FB90(&v45, v44);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v44, 1701273968, 0xE400000000000000, v27);
    v42 = v25;
    v47 = v25;
  }

  else
  {
    v42 = v25;
  }

LABEL_17:
  v28 = sub_3E8594();
  v40 = v29;
  v41 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A30);
  v30 = sub_3EC9F4();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_3F5630;
  sub_3EC9D4();
  v34 = sub_137ECC(v33);
  swift_setDeallocating();
  v35 = *(v31 + 8);
  v35(v33 + v32, v30);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v36 = swift_allocObject();
  *(v36 + 24) = 0u;
  *(v36 + 40) = 0u;
  *(v36 + 56) = 514;
  *(v36 + 80) = v41;
  *(v36 + 88) = v40;
  *(v36 + 64) = a8;
  *(v36 + 72) = v24;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_3F5630;

  sub_3EC9C4();
  v38 = sub_137650(v37, v34);
  swift_setDeallocating();
  v35(v37 + v32, v30);
  swift_deallocClassInstance();
  *(v36 + 96) = v38;
  *(v36 + 16) = v42;
  return v36;
}

uint64_t static ClickMetricsEvent.upsellDismissClickEvent(pageType:pageDetails:pageId:pageUrl:channelAdamId:targetId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v56 = &type metadata for String;
  *&v55 = 0x7373696D736964;
  *(&v55 + 1) = 0xE700000000000000;
  sub_1FB90(&v55, v54);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v54, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v57 = _swiftEmptyDictionarySingleton;
  sub_FBD0(a3, &v55, &unk_501090);
  if (v56)
  {
    sub_1FB90(&v55, v54);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v54, 0x6174654465676170, 0xEB00000000736C69, v18);
    v57 = _swiftEmptyDictionarySingleton;
  }

  else
  {
    sub_FCF8(&v55, &unk_501090);
    sub_39FFC(0x6174654465676170, 0xEB00000000736C69, v54);
    sub_FCF8(v54, &unk_501090);
  }

  if (a5)
  {
    v56 = &type metadata for String;
    *&v55 = a4;
    *(&v55 + 1) = a5;
    sub_1FB90(&v55, v54);

    v19 = v57;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v54, 0x644965676170, 0xE600000000000000, v20);
    v57 = v19;
  }

  else
  {
    sub_39FFC(0x644965676170, 0xE600000000000000, &v55);
    sub_FCF8(&v55, &unk_501090);
  }

  if (a9)
  {
    v56 = &type metadata for String;
    *&v55 = a8;
    *(&v55 + 1) = a9;
    sub_1FB90(&v55, v54);

    v21 = v57;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v54, 0x416C656E6E616863, 0xED000064496D6164, v22);
    v57 = v21;
  }

  else
  {
    sub_39FFC(0x416C656E6E616863, 0xED000064496D6164, &v55);
    sub_FCF8(&v55, &unk_501090);
  }

  if (a7)
  {
    v56 = &type metadata for String;
    *&v55 = a6;
    *(&v55 + 1) = a7;
    sub_1FB90(&v55, v54);

    v23 = v57;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v54, 0x6C725565676170, 0xE700000000000000, v24);
    v57 = v23;
    v25 = a10;
    if (a2)
    {
      goto LABEL_12;
    }

LABEL_15:
    v28 = v57;
    goto LABEL_16;
  }

  sub_39FFC(0x6C725565676170, 0xE700000000000000, &v55);
  sub_FCF8(&v55, &unk_501090);
  v25 = a10;
  if (!a2)
  {
    goto LABEL_15;
  }

LABEL_12:
  v56 = &type metadata for String;
  *&v55 = a1;
  *(&v55 + 1) = a2;
  sub_1FB90(&v55, v54);

  v26 = v57;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v54, 0x6570795465676170, 0xE800000000000000, v27);
  v28 = v26;
  v57 = v26;
  if (a5)
  {
    *&v55 = a1;
    *(&v55 + 1) = a2;

    v58._countAndFlagsBits = 95;
    v58._object = 0xE100000000000000;
    sub_3ED3D4(v58);
    v59._countAndFlagsBits = a4;
    v59._object = a5;
    sub_3ED3D4(v59);
    v56 = &type metadata for String;
    sub_1FB90(&v55, v54);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v54, 1701273968, 0xE400000000000000, v29);
    v57 = v26;
  }

LABEL_16:
  v56 = &type metadata for String;
  *&v55 = 0x6E6F74747562;
  *(&v55 + 1) = 0xE600000000000000;
  sub_1FB90(&v55, v54);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v54, 0x6E6F697461636F6CLL, 0xEC00000065707954, v30);
  v56 = &type metadata for String;
  *&v55 = 0x7373696D736964;
  *(&v55 + 1) = 0xE700000000000000;
  sub_1FB90(&v55, v54);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v54, 1701667182, 0xE400000000000000, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA830);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_3F5630;
  *(v32 + 32) = _swiftEmptyDictionarySingleton;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F32C0);
  *&v55 = v32;
  sub_1FB90(&v55, v54);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v54, 0x6E6F697461636F6CLL, 0xE800000000000000, v33);
  v52 = v28;
  v34 = sub_3E8594();
  v49 = v35;
  v50 = v34;
  if (a11)
  {
    v36 = v25;
  }

  else
  {
    v36 = 0;
  }

  v48 = v36;
  if (a11)
  {
    v37 = a11;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A30);
  v38 = sub_3EC9F4();
  v39 = *(v38 - 8);
  v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_3F5630;

  sub_3EC9D4();
  v42 = sub_137ECC(v41);
  swift_setDeallocating();
  v43 = *(v39 + 8);
  v43(v41 + v40, v38);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v44 = swift_allocObject();
  *(v44 + 24) = 0u;
  *(v44 + 40) = 0u;
  *(v44 + 56) = 514;
  *(v44 + 80) = v50;
  *(v44 + 88) = v49;
  *(v44 + 64) = v48;
  *(v44 + 72) = v37;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_3F5630;
  sub_3EC9C4();
  v46 = sub_137650(v45, v42);
  swift_setDeallocating();
  v43(v45 + v40, v38);
  swift_deallocClassInstance();
  *(v44 + 96) = v46;
  *(v44 + 16) = v52;
  return v44;
}

uint64_t static ClickMetricsEvent.makeTranscriptSearchClickEvent(adamId:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v23 = &type metadata for String;
    *&v22 = a1;
    *(&v22 + 1) = a2;
    sub_1FB90(&v22, v21);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v21, 0x644965676170, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  v3 = sub_3E8004();
  v23 = &type metadata for String;
  *&v22 = v3;
  *(&v22 + 1) = v4;
  sub_1FB90(&v22, v21);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v21, 0x6570795465676170, 0xE800000000000000, v5);
  v23 = &type metadata for String;
  *&v22 = 0x7463656C6573;
  *(&v22 + 1) = 0xE600000000000000;
  sub_1FB90(&v22, v21);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v21, 0x79546E6F69746361, 0xEA00000000006570, v6);
  v23 = &type metadata for String;
  *&v22 = 0x6B63696C63;
  *(&v22 + 1) = 0xE500000000000000;
  sub_1FB90(&v22, v21);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v21, 0x707954746E657665, 0xE900000000000065, v7);
  v8 = sub_3E8594();
  v20 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A30);
  v10 = sub_3EC9F4();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_3F5630;
  sub_3EC9D4();
  v14 = sub_137ECC(v13);
  swift_setDeallocating();
  v15 = *(v11 + 8);
  v15(v13 + v12, v10);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v16 = swift_allocObject();
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 514;
  *(v16 + 80) = v8;
  *(v16 + 88) = v20;
  *(v16 + 64) = 0xD000000000000010;
  *(v16 + 72) = 0x8000000000427F30;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_3F5630;
  sub_3EC9C4();
  v18 = sub_137650(v17, v14);
  swift_setDeallocating();
  v15(v17 + v12, v10);
  swift_deallocClassInstance();
  *(v16 + 96) = v18;
  *(v16 + 16) = _swiftEmptyDictionarySingleton;
  return v16;
}

uint64_t static ClickMetricsEvent.makeBackClickEvent()()
{
  v17 = &type metadata for String;
  *&v16 = 1801675106;
  *(&v16 + 1) = 0xE400000000000000;
  sub_1FB90(&v16, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v15, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v17 = &type metadata for String;
  *&v16 = 0x6B63696C63;
  *(&v16 + 1) = 0xE500000000000000;
  sub_1FB90(&v16, v15);
  v1 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v15, 0x707954746E657665, 0xE900000000000065, v1);
  v2 = sub_3E8594();
  v14 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A30);
  v4 = sub_3EC9F4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_3F5630;
  sub_3EC9E4();
  v8 = sub_35738(v7);
  swift_setDeallocating();
  v9 = *(v5 + 8);
  v9(v7 + v6, v4);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v10 = swift_allocObject();
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 514;
  *(v10 + 80) = v2;
  *(v10 + 88) = v14;
  *(v10 + 64) = xmmword_4056D0;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_3F5630;
  sub_3EC9C4();
  v12 = sub_137650(v11, v8);
  swift_setDeallocating();
  v9(v11 + v6, v4);
  swift_deallocClassInstance();
  *(v10 + 96) = v12;
  *(v10 + 16) = _swiftEmptyDictionarySingleton;
  return v10;
}

uint64_t static ClickMetricsEvent.makeTranscriptFooterButtonClickEvent(isOn:)(char a1)
{
  v21 = &type metadata for String;
  *&v20 = 0x657461676976616ELL;
  *(&v20 + 1) = 0xE800000000000000;
  sub_1FB90(&v20, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v19, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v21 = &type metadata for String;
  *&v20 = 0x6B63696C63;
  *(&v20 + 1) = 0xE500000000000000;
  sub_1FB90(&v20, v19);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v19, 0x707954746E657665, 0xE900000000000065, v3);
  v5 = sub_3E8594();
  v6 = 0x6E61725465646968;
  if (a1)
  {
    v6 = 0x6E617254776F6873;
  }

  v17 = v6;
  v18 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A30);
  v7 = sub_3EC9F4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_3F5630;
  sub_3EC9D4();
  v11 = sub_137ECC(v10);
  swift_setDeallocating();
  v12 = *(v8 + 8);
  v12(v10 + v9, v7);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v13 = swift_allocObject();
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 514;
  *(v13 + 80) = v5;
  *(v13 + 88) = v18;
  *(v13 + 64) = v17;
  *(v13 + 72) = 0xEE00747069726373;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_3F5630;
  sub_3EC9C4();
  v15 = sub_137650(v14, v11);
  swift_setDeallocating();
  v12(v14 + v9, v7);
  swift_deallocClassInstance();
  *(v13 + 96) = v15;
  *(v13 + 16) = _swiftEmptyDictionarySingleton;
  return v13;
}

uint64_t static ClickMetricsEvent.makeQueueFooterButtonClickEvent(isOn:)(char a1)
{
  v21 = &type metadata for String;
  *&v20 = 0x657461676976616ELL;
  *(&v20 + 1) = 0xE800000000000000;
  sub_1FB90(&v20, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v19, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v21 = &type metadata for String;
  *&v20 = 0x6B63696C63;
  *(&v20 + 1) = 0xE500000000000000;
  sub_1FB90(&v20, v19);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v19, 0x707954746E657665, 0xE900000000000065, v3);
  v4 = sub_3E8594();
  v17 = v5;
  v18 = v4;
  if (a1)
  {
    v6 = 0x75657551776F6873;
  }

  else
  {
    v6 = 0x7565755165646968;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A30);
  v7 = sub_3EC9F4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_3F5630;
  sub_3EC9D4();
  v11 = sub_137ECC(v10);
  swift_setDeallocating();
  v12 = *(v8 + 8);
  v12(v10 + v9, v7);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v13 = swift_allocObject();
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 514;
  *(v13 + 80) = v18;
  *(v13 + 88) = v17;
  *(v13 + 64) = v6;
  *(v13 + 72) = 0xE900000000000065;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_3F5630;
  sub_3EC9C4();
  v15 = sub_137650(v14, v11);
  swift_setDeallocating();
  v12(v14 + v9, v7);
  swift_deallocClassInstance();
  *(v13 + 96) = v15;
  *(v13 + 16) = _swiftEmptyDictionarySingleton;
  return v13;
}

uint64_t static ClickMetricsEvent.makeSearchContextMenuClickEvent(for:metricsFields:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = &type metadata for String;
  strcpy(&v36, "actionSheet");
  HIDWORD(v36) = -352321536;
  sub_1FB90(&v36, v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = _swiftEmptyDictionarySingleton;
  sub_3A0A0(v35, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v5 = v38;
  v37 = &type metadata for String;
  *&v36 = 0x6E6F74747562;
  *(&v36 + 1) = 0xE600000000000000;
  sub_1FB90(&v36, v35);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  v38 = v5;
  sub_3A0A0(v35, 0x7954746567726174, 0xEA00000000006570, v6);
  v7 = v38;
  v37 = &type metadata for String;
  strcpy(&v36, "SearchResults");
  HIWORD(v36) = -4864;
  sub_1FB90(&v36, v35);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v7;
  sub_3A0A0(v35, 0x6570795465676170, 0xE800000000000000, v8);
  v38 = v7;
  if (!a3)
  {
    sub_39FFC(0x737265746C6966, 0xE700000000000000, v35);
    sub_FCF8(v35, &unk_501090);
    goto LABEL_13;
  }

  if (!*(a3 + 16) || (v9 = sub_552A8(0x737265746C6966, 0xE700000000000000), (v10 & 1) == 0))
  {
    sub_39FFC(0x737265746C6966, 0xE700000000000000, v35);
    sub_FCF8(v35, &unk_501090);
    if (*(a3 + 16))
    {
      goto LABEL_7;
    }

LABEL_13:
    sub_39FFC(0x644965676170, 0xE600000000000000, v35);
    sub_FCF8(v35, &unk_501090);
    v31 = v38;
    goto LABEL_14;
  }

  sub_2F4AC(*(a3 + 56) + 32 * v9, &v36);
  sub_1FB90(&v36, v35);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v7;
  sub_3A0A0(v35, 0x737265746C6966, 0xE700000000000000, v11);
  v38 = v7;
  if (!*(a3 + 16))
  {
    goto LABEL_13;
  }

LABEL_7:
  v12 = sub_552A8(0x737265746C6966, 0xE700000000000000);
  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_2F4AC(*(a3 + 56) + 32 * v12, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!v34[2] || (v14 = sub_552A8(0xD000000000000013, 0x8000000000427F50), (v15 & 1) == 0))
  {

    goto LABEL_13;
  }

  sub_2F4AC(v34[7] + 32 * v14, &v36);

  sub_1FB90(&v36, v35);
  v16 = v38;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v35, 0x644965676170, 0xE600000000000000, v17);
  v31 = v16;
  v38 = v16;
LABEL_14:
  v30 = sub_3E8594();
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A30);
  v20 = sub_3EC9F4();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_3F5630;
  sub_3EC9D4();
  v24 = sub_137ECC(v23);
  swift_setDeallocating();
  v25 = *(v21 + 8);
  v25(v23 + v22, v20);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v26 = swift_allocObject();
  *(v26 + 24) = 0u;
  *(v26 + 40) = 0u;
  *(v26 + 56) = 514;
  *(v26 + 80) = v30;
  *(v26 + 88) = v19;
  *(v26 + 64) = a1;
  *(v26 + 72) = a2;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_3F5630;

  sub_3EC9C4();
  v28 = sub_137650(v27, v24);
  swift_setDeallocating();
  v25(v27 + v22, v20);
  swift_deallocClassInstance();
  *(v26 + 96) = v28;
  *(v26 + 16) = v31;
  return v26;
}

uint64_t static ClickMetricsEvent.makePlayerContextMenuClickEvent(for:)(uint64_t a1, uint64_t a2)
{
  v24 = &type metadata for String;
  *&v23 = 0x68536E6F69746361;
  *(&v23 + 1) = 0xEB00000000746565;
  sub_1FB90(&v23, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v22, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v24 = &type metadata for String;
  *&v23 = 0x6E6F74747562;
  *(&v23 + 1) = 0xE600000000000000;
  sub_1FB90(&v23, v22);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v22, 0x7954746567726174, 0xEA00000000006570, v3);
  v4 = sub_3E7FF4();
  v24 = &type metadata for String;
  *&v23 = v4;
  *(&v23 + 1) = v5;
  sub_1FB90(&v23, v22);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v22, 0x6570795465676170, 0xE800000000000000, v6);
  v19 = sub_3E8594();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A30);
  v9 = sub_3EC9F4();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_3F5630;
  sub_3EC9D4();
  v13 = sub_137ECC(v12);
  swift_setDeallocating();
  v14 = *(v10 + 8);
  v14(v12 + v11, v9);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v15 = swift_allocObject();
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 514;
  *(v15 + 80) = v19;
  *(v15 + 88) = v8;
  *(v15 + 64) = a1;
  *(v15 + 72) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_3F5630;

  sub_3EC9C4();
  v17 = sub_137650(v16, v13);
  swift_setDeallocating();
  v14(v16 + v11, v9);
  swift_deallocClassInstance();
  *(v15 + 96) = v17;
  *(v15 + 16) = _swiftEmptyDictionarySingleton;
  return v15;
}

uint64_t static ClickMetricsEvent.makeTranscriptTextClickEvent(for:)(uint64_t a1, uint64_t a2)
{
  v25 = &type metadata for String;
  *&v24 = 2036427888;
  *(&v24 + 1) = 0xE400000000000000;
  sub_1FB90(&v24, v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v23, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v25 = &type metadata for String;
  strcpy(&v24, "transcriptText");
  HIBYTE(v24) = -18;
  sub_1FB90(&v24, v23);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v23, 0x7954746567726174, 0xEA00000000006570, v3);
  v25 = &type metadata for String;
  *&v24 = 0x6B63696C63;
  *(&v24 + 1) = 0xE500000000000000;
  sub_1FB90(&v24, v23);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v23, 0x707954746E657665, 0xE900000000000065, v4);
  v5 = sub_3E7FF4();
  v25 = &type metadata for String;
  *&v24 = v5;
  *(&v24 + 1) = v6;
  sub_1FB90(&v24, v23);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v23, 0x6570795465676170, 0xE800000000000000, v7);
  v20 = sub_3E8544();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A30);
  v10 = sub_3EC9F4();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_3F5630;
  sub_3EC9D4();
  v14 = sub_137ECC(v13);
  swift_setDeallocating();
  v15 = *(v11 + 8);
  v15(v13 + v12, v10);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v16 = swift_allocObject();
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 514;
  *(v16 + 80) = v20;
  *(v16 + 88) = v9;
  *(v16 + 64) = a1;
  *(v16 + 72) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_3F5630;

  sub_3EC9C4();
  v18 = sub_137650(v17, v14);
  swift_setDeallocating();
  v15(v17 + v12, v10);
  swift_deallocClassInstance();
  *(v16 + 96) = v18;
  *(v16 + 16) = _swiftEmptyDictionarySingleton;
  return v16;
}

uint64_t static ClickMetricsEvent.makeClickEvent(targetId:actionType:targetType:channelAdamId:pageId:pageType:location:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, Swift::String a9, uint64_t a10, void *a11, Swift::String *a12)
{
  v14 = a12[7];
  v68 = a12[6];
  v69 = v14;
  v70 = a12[8];
  v15 = a12[3];
  v64 = a12[2];
  v65 = v15;
  v16 = a12[5];
  v66 = a12[4];
  v67 = v16;
  v17 = a12[1];
  v62 = *a12;
  v63 = v17;
  v53._object = &type metadata for String;
  v52._countAndFlagsBits = a3;
  v52._object = a4;
  sub_1FB90(&v52, v49);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v50 = _swiftEmptyDictionarySingleton;
  sub_3A0A0(v49, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v19 = v50;
  v53._object = &type metadata for String;
  v52._countAndFlagsBits = 0x6B63696C63;
  v52._object = 0xE500000000000000;
  sub_1FB90(&v52, v49);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *&v50 = v19;
  sub_3A0A0(v49, 0x707954746E657665, 0xE900000000000065, v20);
  v21 = v50;
  v61 = v50;
  if (a9._object)
  {
    v53._object = &type metadata for String;
    v52 = a9;
    sub_1FB90(&v52, v49);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    *&v50 = v21;
    sub_3A0A0(v49, 0x644965676170, 0xE600000000000000, v22);
    v61 = v50;
    v23 = a10;
    if (!a11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_39FFC(0x644965676170, 0xE600000000000000, &v52);
  sub_FCF8(&v52, &unk_501090);
  v23 = a10;
  if (a11)
  {
LABEL_3:
    v53._object = &type metadata for String;
    v52._countAndFlagsBits = v23;
    v52._object = a11;
    sub_1FB90(&v52, v49);

    v24 = v61;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v50 = v24;
    sub_3A0A0(v49, 0x6570795465676170, 0xE800000000000000, v25);
    v61 = v50;
  }

LABEL_4:
  if (a8)
  {
    v52._countAndFlagsBits = a7;
    v52._object = a8;
    sub_138570();

    if (sub_3ED894())
    {
      v53._object = &type metadata for String;
      v52._countAndFlagsBits = a7;
      v52._object = a8;
      sub_1FB90(&v52, v49);
      v26 = v61;
      v27 = swift_isUniquelyReferenced_nonNull_native();
      *&v50 = v26;
      sub_3A0A0(v49, 0x416C656E6E616863, 0xED000064496D6164, v27);
      v61 = v50;
    }

    else
    {
    }
  }

  if (a9._object && a11)
  {
    v52._countAndFlagsBits = v23;
    v52._object = a11;

    v71._countAndFlagsBits = 95;
    v71._object = 0xE100000000000000;
    sub_3ED3D4(v71);
    sub_3ED3D4(a9);
    v53._object = &type metadata for String;
    sub_1FB90(&v52, v49);
    v28 = v61;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *&v50 = v28;
    sub_3A0A0(v49, 1701273968, 0xE400000000000000, v29);
    v61 = v50;
  }

  v58 = v68;
  v59 = v69;
  v60 = v70;
  v54 = v64;
  v55 = v65;
  v56 = v66;
  v57 = v67;
  v52 = v62;
  v53 = v63;
  if (sub_138558(&v52) == 1)
  {
    v43 = v61;
  }

  else
  {
    v49[6] = v58;
    v49[7] = v59;
    v49[8] = v60;
    v49[2] = v54;
    v49[3] = v55;
    v49[4] = v56;
    v49[5] = v57;
    v49[0] = v52;
    v49[1] = v53;
    v30 = ChildAndParentLocation.fields.getter();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F32C0);
    *&v50 = v30;
    sub_1FB90(&v50, v48);
    v31 = v61;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v48, 0x6E6F697461636F6CLL, 0xE800000000000000, v32);
    v43 = v31;
    v61 = v31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A30);
  v33 = sub_3EC9F4();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_3F5630;
  sub_3EC9D4();
  v42 = sub_137ECC(v36);
  swift_setDeallocating();
  v37 = *(v34 + 8);
  v37(v36 + v35, v33);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v38 = swift_allocObject();
  *(v38 + 24) = 0u;
  *(v38 + 40) = 0u;
  *(v38 + 56) = 514;
  *(v38 + 80) = a5;
  *(v38 + 88) = a6;
  *(v38 + 64) = a1;
  *(v38 + 72) = a2;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_3F5630;

  sub_3EC9C4();
  v40 = sub_137650(v39, v42);
  swift_setDeallocating();
  v37(v39 + v35, v33);
  swift_deallocClassInstance();
  *(v38 + 96) = v40;
  *(v38 + 16) = v43;
  return v38;
}

uint64_t sub_136A40()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v31 = v2;
  v3 = *(v1 + 32);
  if (v3)
  {
    v4 = *(v1 + 24);
    v30 = &type metadata for String;
    *&v29 = v4;
    *(&v29 + 1) = v3;
    sub_1FB90(&v29, &v27);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(&v27, 0x65526E6F69746361, 0xEC000000746C7573, isUniquelyReferenced_nonNull_native);
    v31 = v2;
  }

  else
  {

    sub_39FFC(0x65526E6F69746361, 0xEC000000746C7573, &v29);
    sub_FCF8(&v29, &unk_501090);
  }

  v6 = *(v1 + 48);
  if (v6)
  {
    v7 = *(v1 + 40);
    *(&v28 + 1) = &type metadata for String;
    *&v27 = v7;
    *(&v27 + 1) = v6;
    sub_1FB90(&v27, &v29);
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v8 = [objc_allocWithZone(NSNull) init];
    v30 = sub_36174(0, &qword_4F32D8);
    *&v29 = v8;
    if (*(&v28 + 1))
    {
      sub_FCF8(&v27, &unk_501090);
    }
  }

  if (v30)
  {
    sub_1FB90(&v29, &v27);

    v9 = v31;
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(&v27, 0x6C69626967696C65, 0xEF65707954797469, v10);
    v31 = v9;
  }

  else
  {

    sub_FCF8(&v29, &unk_501090);
    sub_39FFC(0x6C69626967696C65, 0xEF65707954797469, &v27);
    sub_FCF8(&v27, &unk_501090);
  }

  v11 = *(v1 + 56);
  if (v11 == 2)
  {
    v27 = 0u;
    v28 = 0u;
    v12 = [objc_allocWithZone(NSNull) init];
    v30 = sub_36174(0, &qword_4F32D8);
    *&v29 = v12;
    if (*(&v28 + 1))
    {
      sub_FCF8(&v27, &unk_501090);
    }
  }

  else
  {
    *(&v28 + 1) = &type metadata for Bool;
    LOBYTE(v27) = v11 & 1;
    sub_1FB90(&v27, &v29);
  }

  if (v30)
  {
    sub_1FB90(&v29, &v27);
    v13 = v31;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(&v27, 0x796C696D61467369, 0xE800000000000000, v14);
    v31 = v13;
  }

  else
  {
    sub_FCF8(&v29, &unk_501090);
    sub_39FFC(0x796C696D61467369, 0xE800000000000000, &v27);
    sub_FCF8(&v27, &unk_501090);
  }

  v15 = *(v1 + 57);
  if (v15 == 2)
  {
    v27 = 0u;
    v28 = 0u;
    v16 = [objc_allocWithZone(NSNull) init];
    v30 = sub_36174(0, &qword_4F32D8);
    *&v29 = v16;
    if (*(&v28 + 1))
    {
      sub_FCF8(&v27, &unk_501090);
    }
  }

  else
  {
    *(&v28 + 1) = &type metadata for Bool;
    LOBYTE(v27) = v15 & 1;
    sub_1FB90(&v27, &v29);
  }

  if (v30)
  {
    sub_1FB90(&v29, &v27);
    v17 = v31;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(&v27, 0x6E65647574537369, 0xE900000000000074, v18);
  }

  else
  {
    sub_FCF8(&v29, &unk_501090);
    sub_39FFC(0x6E65647574537369, 0xE900000000000074, &v27);
    sub_FCF8(&v27, &unk_501090);
    v17 = v31;
  }

  v30 = &type metadata for String;
  *&v29 = 0x6B63696C63;
  *(&v29 + 1) = 0xE500000000000000;
  sub_1FB90(&v29, &v27);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(&v27, 0x707954746E657665, 0xE900000000000065, v19);
  v20 = *(v1 + 80);
  v21 = *(v1 + 88);
  v30 = &type metadata for String;
  *&v29 = v20;
  *(&v29 + 1) = v21;
  sub_1FB90(&v29, &v27);

  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(&v27, 0x7954746567726174, 0xEA00000000006570, v22);
  v31 = v17;
  v23 = *(v1 + 72);
  if (v23)
  {
    v24 = *(v1 + 64);
    v30 = &type metadata for String;
    *&v29 = v24;
    *(&v29 + 1) = v23;
    sub_1FB90(&v29, &v27);

    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(&v27, 0x6449746567726174, 0xE800000000000000, v25);
  }

  else
  {
    sub_39FFC(0x6449746567726174, 0xE800000000000000, &v29);
    sub_FCF8(&v29, &unk_501090);
  }

  swift_beginAccess();

  return sub_3EC014();
}

uint64_t ClickMetricsEvent.__allocating_init(actionResult:eligibilityType:isFamily:isStudent:targetTypeRaw:targetId:including:eventFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = swift_allocObject();
  *(v19 + 24) = a1;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  *(v19 + 48) = a4;
  *(v19 + 56) = a5;
  *(v19 + 57) = a6;
  *(v19 + 80) = a7;
  *(v19 + 88) = a8;
  *(v19 + 64) = a9;
  *(v19 + 72) = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A30);
  v20 = sub_3EC9F4();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_3F5630;
  sub_3EC9C4();
  v24 = sub_137650(v23, a11);
  swift_setDeallocating();
  (*(v21 + 8))(v23 + v22, v20);
  swift_deallocClassInstance();
  *(v19 + 96) = v24;
  *(v19 + 16) = a12;
  return v19;
}

uint64_t ClickMetricsEvent.init(actionResult:eligibilityType:isFamily:isStudent:targetTypeRaw:targetId:including:eventFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5;
  *(v12 + 57) = a6;
  *(v12 + 80) = a7;
  *(v12 + 88) = a8;
  *(v12 + 64) = a9;
  *(v12 + 72) = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A30);
  v13 = sub_3EC9F4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_3F5630;
  sub_3EC9C4();
  v17 = sub_137650(v16, a11);
  swift_setDeallocating();
  (*(v14 + 8))(v16 + v15, v13);
  swift_deallocClassInstance();
  *(v12 + 96) = v17;
  *(v12 + 16) = a12;
  return v12;
}

uint64_t sub_137394()
{
}

uint64_t ClickMetricsEvent.deinit()
{

  return v0;
}

uint64_t ClickMetricsEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1374A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_2F4AC((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_1374F0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2F4AC(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_1FB90(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_FCF8(v21, &qword_4F34D8);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_137650(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EC9F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v20 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v4, v9);
      sub_3152C(v11, v7);
      (*(v13 - 8))(v11, v4);
      v16 += v17;
      --v12;
    }

    while (v12);
    return v20;
  }

  return a2;
}

void *_s8ShelfKit12MetricsEventC04pageC6FieldsySDySSypGSgAFFZ_0(void *result)
{
  if (result)
  {
    v1 = result;
    if (result[2] && (v2 = sub_552A8(0x6C725565676170, 0xE700000000000000), (v3 & 1) != 0) && (sub_2F4AC(v1[7] + 32 * v2, &v24), (swift_dynamicCast() & 1) != 0))
    {
      v4 = *(&v23[0] + 1);
      v22 = *&v23[0];
    }

    else
    {
      v22 = 0;
      v4 = 0xE000000000000000;
    }

    if (v1[2] && (v5 = sub_552A8(0x6174654465676170, 0xEB00000000736C69), (v6 & 1) != 0) && (sub_2F4AC(v1[7] + 32 * v5, &v24), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DF0), (swift_dynamicCast() & 1) != 0))
    {
      v21 = *&v23[0];
    }

    else
    {
      v21 = sub_61EB0(_swiftEmptyArrayStorage);
    }

    if (v1[2] && (v7 = sub_552A8(0x644965676170, 0xE600000000000000), (v8 & 1) != 0) && (sub_2F4AC(v1[7] + 32 * v7, &v24), (swift_dynamicCast() & 1) != 0))
    {
      v10 = *(&v23[0] + 1);
      v9 = *&v23[0];
    }

    else
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    if (v1[2] && (v11 = sub_552A8(0x6570795465676170, 0xE800000000000000), (v12 & 1) != 0) && (sub_2F4AC(v1[7] + 32 * v11, &v24), (swift_dynamicCast() & 1) != 0))
    {
      v14 = *(&v23[0] + 1);
      v13 = *&v23[0];
    }

    else
    {
      v13 = 0;
      v14 = 0xE000000000000000;
    }

    *&v24 = v13;
    *(&v24 + 1) = v14;

    v26._countAndFlagsBits = 95;
    v26._object = 0xE100000000000000;
    sub_3ED3D4(v26);
    v27._countAndFlagsBits = v9;
    v27._object = v10;
    sub_3ED3D4(v27);
    v15 = v24;
    v25 = &type metadata for String;
    *&v24 = v22;
    *(&v24 + 1) = v4;
    sub_1FB90(&v24, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v23, 0x6C725565676170, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DF0);
    *&v24 = v21;
    sub_1FB90(&v24, v23);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v23, 0x6174654465676170, 0xEB00000000736C69, v17);
    v25 = &type metadata for String;
    *&v24 = v9;
    *(&v24 + 1) = v10;
    sub_1FB90(&v24, v23);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v23, 0x644965676170, 0xE600000000000000, v18);
    v25 = &type metadata for String;
    *&v24 = v13;
    *(&v24 + 1) = v14;
    sub_1FB90(&v24, v23);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v23, 0x6570795465676170, 0xE800000000000000, v19);
    v25 = &type metadata for String;
    v24 = v15;
    sub_1FB90(&v24, v23);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v23, 1701273968, 0xE400000000000000, v20);
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_137B90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_1374F0(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  sub_1FB90(v47, v45);
  v14 = *a5;
  result = sub_552A8(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_39D44(v20, a4 & 1);
    result = sub_552A8(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_3EE894();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_36FA0();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_2F4AC(*(*a5 + 56) + 32 * result, v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_1Tm(v25 + v24);
    sub_1FB90(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_1FB90(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_1374F0(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        sub_1FB90(v47, v45);
        v34 = *a5;
        result = sub_552A8(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_39D44(v38, 1);
          result = sub_552A8(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          sub_2F4AC(*(*a5 + 56) + 32 * result, v44);
          __swift_destroy_boxed_opaque_existential_1Tm(v45);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_1Tm(v33 + v32);
          sub_1FB90(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_1FB90(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_1374F0(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_44824();
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_137ECC(uint64_t a1)
{
  v2 = sub_3EC9F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A60);
    v9 = sub_3EE394();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v33 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    v31 = v8;
    v32 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v13 * v10, v2);
      sub_1388D4(&unk_4F8A50);
      v15 = sub_3ED114();
      v16 = -1 << *(v9 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = *(v36 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if (((1 << v17) & v19) != 0)
      {
        v21 = ~v16;
        do
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v17 * v13, v2);
          sub_1388D4(&qword_4EA160);
          v23 = sub_3ED174();
          v24 = *v14;
          (*v14)(v5, v2);
          if (v23)
          {
            v24(v37, v2);
            v11 = v22;
            v8 = v31;
            goto LABEL_4;
          }

          v17 = (v17 + 1) & v21;
          v18 = v17 >> 6;
          v19 = *(v36 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v11 = v22;
        }

        while (((1 << v17) & v19) != 0);
        v8 = v31;
      }

      v25 = v37;
      *(v36 + 8 * v18) = v20 | v19;
      result = (*v32)(*(v9 + 48) + v17 * v13, v25, v2);
      v27 = *(v9 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v9 + 16) = v29;
LABEL_4:
      v10 = v34 + 1;
      if (v34 + 1 == v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t _s8ShelfKit17ClickMetricsEventC019upsellBannerDismisscE08targetId011channelAdamJ08pageTypeACSSSg_AHSStFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = &type metadata for String;
  *&v33 = a5;
  *(&v33 + 1) = a6;
  sub_1FB90(&v33, v32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = _swiftEmptyDictionarySingleton;
  sub_3A0A0(v32, 0x6570795465676170, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v11 = v35;
  v34 = &type metadata for String;
  *&v33 = 0x7373696D736964;
  *(&v33 + 1) = 0xE700000000000000;
  sub_1FB90(&v33, v32);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v32, 0x79546E6F69746361, 0xEA00000000006570, v12);
  v35 = v11;
  if (a4)
  {
    v34 = &type metadata for String;
    *&v33 = a3;
    *(&v33 + 1) = a4;
    sub_1FB90(&v33, v32);

    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v32, 0x416C656E6E616863, 0xED000064496D6164, v13);
    v31 = v11;
    v35 = v11;
  }

  else
  {
    sub_39FFC(0x416C656E6E616863, 0xED000064496D6164, &v33);
    sub_FCF8(&v33, &unk_501090);
    v31 = v35;
  }

  v14 = sub_3E8594();
  v29 = v15;
  v30 = v14;
  if (a2)
  {
    v16 = a1;
  }

  else
  {
    v16 = 0;
  }

  v28 = v16;
  if (a2)
  {
    v17 = a2;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A30);
  v18 = sub_3EC9F4();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_3F5630;

  sub_3EC9D4();
  v22 = sub_137ECC(v21);
  swift_setDeallocating();
  v23 = *(v19 + 8);
  v23(v21 + v20, v18);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v24 = swift_allocObject();
  *(v24 + 24) = 0u;
  *(v24 + 40) = 0u;
  *(v24 + 56) = 514;
  *(v24 + 80) = v30;
  *(v24 + 88) = v29;
  *(v24 + 64) = v28;
  *(v24 + 72) = v17;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_3F5630;
  sub_3EC9C4();
  v26 = sub_137650(v25, v22);
  swift_setDeallocating();
  v23(v25 + v20, v18);
  swift_deallocClassInstance();
  *(v24 + 96) = v26;
  *(v24 + 16) = v31;
  return v24;
}

uint64_t sub_138558(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_138570()
{
  result = qword_4F32D0;
  if (!qword_4F32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F32D0);
  }

  return result;
}

unint64_t sub_1385C8()
{
  result = qword_4F32E0;
  if (!qword_4F32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F32E0);
  }

  return result;
}

unint64_t sub_138620()
{
  result = qword_4F32E8;
  if (!qword_4F32E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F32E8);
  }

  return result;
}

unint64_t sub_138678()
{
  result = qword_4F32F0;
  if (!qword_4F32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F32F0);
  }

  return result;
}

uint64_t sub_1386CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1388D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_3EC9F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_138918()
{
  result = qword_4F34E0;
  if (!qword_4F34E0)
  {
    sub_36174(255, &qword_4EA188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F34E0);
  }

  return result;
}

ShelfKit::MetricsLabel_optional __swiftcall MetricsLabel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_3EE834();

  v5 = 0;
  v6 = 22;
  switch(v3)
  {
    case 0:
      goto LABEL_35;
    case 1:
      v5 = 1;
      goto LABEL_35;
    case 2:
      v5 = 2;
      goto LABEL_35;
    case 3:
      v5 = 3;
      goto LABEL_35;
    case 4:
      v5 = 4;
      goto LABEL_35;
    case 5:
      v5 = 5;
      goto LABEL_35;
    case 6:
      v5 = 6;
      goto LABEL_35;
    case 7:
      v5 = 7;
      goto LABEL_35;
    case 8:
      v5 = 8;
      goto LABEL_35;
    case 9:
      v5 = 9;
      goto LABEL_35;
    case 10:
      v5 = 10;
      goto LABEL_35;
    case 11:
      v5 = 11;
      goto LABEL_35;
    case 12:
      v5 = 12;
      goto LABEL_35;
    case 13:
      v5 = 13;
      goto LABEL_35;
    case 14:
      v5 = 14;
      goto LABEL_35;
    case 15:
      v5 = 15;
      goto LABEL_35;
    case 16:
      v5 = 16;
      goto LABEL_35;
    case 17:
      v5 = 17;
      goto LABEL_35;
    case 18:
      v5 = 18;
      goto LABEL_35;
    case 19:
      v5 = 19;
      goto LABEL_35;
    case 20:
      v5 = 20;
      goto LABEL_35;
    case 21:
      v5 = 21;
LABEL_35:
      v6 = v5;
      break;
    case 22:
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    default:
      v6 = 40;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t MetricsLabel.rawValue.getter()
{
  result = 1702257011;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 2037411683;
      break;
    case 4:
      result = 0x6568744F79706F63;
      break;
    case 5:
    case 0xA:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0x64616F6C6E776F64;
      break;
    case 7:
      result = 0x657469726F766166;
      break;
    case 8:
    case 9:
      result = 0xD000000000000012;
      break;
    case 0xB:
      result = 0xD000000000000019;
      break;
    case 0xC:
      result = 0x646579616C70;
      break;
    case 0xD:
      result = 0x646579616C706E75;
      break;
    case 0xE:
      result = 0x657461676976616ELL;
      break;
    case 0xF:
      result = 0x636E657265666572;
      break;
    case 0x10:
      result = 2036427888;
      break;
    case 0x11:
    case 0x12:
      result = 0x7369704579616C70;
      break;
    case 0x13:
      result = 0x63646F5079616C70;
      break;
    case 0x14:
      result = 0xD00000000000001ALL;
      break;
    case 0x15:
      result = 0x6F4465766F6D6572;
      break;
    case 0x16:
      result = 0x657661736E75;
      break;
    case 0x17:
      result = 0xD000000000000018;
      break;
    case 0x18:
    case 0x19:
      result = 0xD000000000000013;
      break;
    case 0x1A:
      result = 0xD000000000000011;
      break;
    case 0x1B:
      result = 0xD000000000000010;
      break;
    case 0x1C:
      result = 0xD000000000000015;
      break;
    case 0x1D:
      result = 0x74726F706572;
      break;
    case 0x1E:
      result = 0x7463656C6573;
      break;
    case 0x1F:
      result = 0x73676E6974746573;
      break;
    case 0x20:
      result = 0x6572616873;
      break;
    case 0x21:
      result = 0x4C52556572616873;
      break;
    case 0x22:
      result = 0x776F6C6C6F66;
      break;
    case 0x23:
      result = 0x4C74736567677573;
      break;
    case 0x24:
      result = 0x6F7661466F646E75;
      break;
    case 0x25:
      result = 0x676775536F646E75;
      break;
    case 0x26:
      result = 0x776F6C6C6F666E75;
      break;
    case 0x27:
      result = 0x6E61725477656976;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1390C4()
{
  v0 = MetricsLabel.rawValue.getter();
  v2 = v1;
  if (v0 == MetricsLabel.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_3EE804();
  }

  return v5 & 1;
}

unint64_t sub_139164()
{
  result = qword_4F34E8;
  if (!qword_4F34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F34E8);
  }

  return result;
}

Swift::Int sub_1391B8()
{
  sub_3EE954();
  MetricsLabel.rawValue.getter();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_139220()
{
  MetricsLabel.rawValue.getter();
  sub_3ED394();
}

Swift::Int sub_139284()
{
  sub_3EE954();
  MetricsLabel.rawValue.getter();
  sub_3ED394();

  return sub_3EE9A4();
}

unint64_t sub_1392F4@<X0>(unint64_t *a1@<X8>)
{
  result = MetricsLabel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MetricsLabel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsLabel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t MetricsPageEnterGate.hasPageMetrics.setter(char a1)
{
  v3 = sub_3EC144();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  v8 = *(v1 + 34);
  *(v1 + 34) = a1;
  if (v8 & 1) == 0 && (a1)
  {
    result = swift_beginAccess();
    if (*(v1 + 32) == 1)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v9 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        sub_3EC134();
        (*(v9 + 8))(v6, ObjectType, v9);
        swift_unknownObjectRelease();
        return (*(v4 + 8))(v6, v3);
      }
    }
  }

  return result;
}

uint64_t MetricsPageEnterGate.hasAppeared.setter(char a1)
{
  v3 = a1 & 1;
  v4 = sub_3EC144();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  v9 = *(v1 + 32);
  *(v1 + 32) = a1;
  if (v9 != v3)
  {
    result = swift_beginAccess();
    if (*(v1 + 34) == 1 && (a1 & 1) != 0)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v10 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        sub_3EC134();
        (*(v10 + 8))(v7, ObjectType, v10);
        swift_unknownObjectRelease();
        return (*(v5 + 8))(v7, v4);
      }
    }
  }

  return result;
}

uint64_t MetricsPageEnterGate.hasExitedWhileAppeared.setter(char a1)
{
  v3 = sub_3EC144();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  v8 = *(v1 + 33);
  *(v1 + 33) = a1;
  if (v8 == 1 && (a1 & 1) == 0)
  {
    result = swift_beginAccess();
    if (*(v1 + 34))
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v9 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        sub_3EC114();
        (*(v9 + 8))(v6, ObjectType, v9);
        swift_unknownObjectRelease();
        return (*(v4 + 8))(v6, v3);
      }
    }
  }

  return result;
}

uint64_t sub_1398AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v8 = a3(a1, v3, ObjectType, a2);
  swift_unknownObjectRelease();
  return v8;
}

void (*MetricsPageEnterGate.hasAppeared.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = sub_3EC144();
  *(v4 + 56) = v5;
  v6 = *(v5 - 8);
  *(v4 + 64) = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  *(v4 + 72) = v7;
  swift_beginAccess();
  *(v4 + 80) = *(v1 + 32);
  return sub_139A2C;
}

void sub_139A2C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v4 = v2[9];
    MetricsPageEnterGate.hasAppeared.setter(*(*a1 + 80));
  }

  else
  {
    v5 = v2[6];
    v6 = *(v5 + 32);
    *(v5 + 32) = v3;
    if (v3 != v6)
    {
      v7 = v2[6];
      swift_beginAccess();
      if (v3)
      {
        if ((*(v7 + 34) & 1) != 0 && swift_unknownObjectWeakLoadStrong())
        {
          v9 = v2[8];
          v8 = v2[9];
          v10 = v2[7];
          v11 = *(v2[6] + 24);
          ObjectType = swift_getObjectType();
          sub_3EC134();
          (*(v11 + 8))(v8, ObjectType, v11);
          swift_unknownObjectRelease();
          (*(v9 + 8))(v8, v10);
        }
      }
    }

    v4 = v2[9];
  }

  free(v4);

  free(v2);
}

void (*MetricsPageEnterGate.hasExitedWhileAppeared.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = sub_3EC144();
  *(v4 + 56) = v5;
  v6 = *(v5 - 8);
  *(v4 + 64) = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  *(v4 + 72) = v7;
  swift_beginAccess();
  *(v4 + 80) = *(v1 + 33);
  return sub_139C6C;
}

void sub_139C6C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v4 = v2[9];
    MetricsPageEnterGate.hasExitedWhileAppeared.setter(v3);
  }

  else
  {
    v5 = v2[6];
    v6 = *(v5 + 33);
    *(v5 + 33) = v3;
    if (v6 == 1 && (v3 & 1) == 0)
    {
      v7 = v2[6];
      swift_beginAccess();
      if (*(v7 + 34))
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = v2[8];
          v8 = v2[9];
          v10 = v2[7];
          v11 = *(v2[6] + 24);
          ObjectType = swift_getObjectType();
          sub_3EC114();
          (*(v11 + 8))(v8, ObjectType, v11);
          swift_unknownObjectRelease();
          (*(v9 + 8))(v8, v10);
        }
      }
    }

    v4 = v2[9];
  }

  free(v4);

  free(v2);
}

void (*MetricsPageEnterGate.hasPageMetrics.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = sub_3EC144();
  *(v4 + 56) = v5;
  v6 = *(v5 - 8);
  *(v4 + 64) = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  *(v4 + 72) = v7;
  swift_beginAccess();
  *(v4 + 80) = *(v1 + 34);
  return sub_139EA8;
}

void sub_139EA8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v4 = v2[9];
    MetricsPageEnterGate.hasPageMetrics.setter(v3);
  }

  else
  {
    v5 = v2[6];
    v6 = *(v5 + 34);
    *(v5 + 34) = v3;
    if ((v6 & 1) == 0)
    {
      if (v3)
      {
        v7 = v2[6];
        swift_beginAccess();
        if (*(v7 + 32) == 1)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v9 = v2[8];
            v8 = v2[9];
            v10 = v2[7];
            v11 = *(v2[6] + 24);
            ObjectType = swift_getObjectType();
            sub_3EC134();
            (*(v11 + 8))(v8, ObjectType, v11);
            swift_unknownObjectRelease();
            (*(v9 + 8))(v8, v10);
          }
        }
      }
    }

    v4 = v2[9];
  }

  free(v4);

  free(v2);
}

uint64_t MetricsPageEnterGate.__deallocating_deinit()
{
  sub_13A0E0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_13A018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 32) = 0;
  *(a2 + 34) = 0;
  *(a2 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return a2;
}

uint64_t sub_13A074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 32) = 0;
  *(v5 + 34) = 0;
  *(v5 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t sub_13A108@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_13A178@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_13A1E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 34);
  return result;
}

void *MetricsPageFields.metricsFields.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v29 = *(v0 + 40);
  if (v0[6])
  {
    v6 = v0[6];
  }

  else
  {
    v6 = _swiftEmptyDictionarySingleton;
  }

  v33 = v6;

  v7 = sub_3E7884();
  v9 = v7;
  v10 = v8;
  if (v1)
  {
    v32 = &type metadata for String;
    *&v31 = v2;
    *(&v31 + 1) = v1;
    sub_1FB90(&v31, v30);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_39B88(v30, v9, v10, isUniquelyReferenced_nonNull_native);

    v12 = v6;
    v33 = v6;
  }

  else
  {
    sub_13A5BC(v7, v8, &v31);

    sub_837D0(&v31);
    v12 = v33;
  }

  v13 = sub_3E7894();
  v15 = v14;
  v32 = &type metadata for String;
  *&v31 = v4;
  *(&v31 + 1) = v3;
  sub_1FB90(&v31, v30);

  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_39B88(v30, v13, v15, v16);

  v33 = v12;
  v17 = sub_3E78F4();
  v19 = v17;
  v20 = v18;
  if (v5)
  {
    v21 = sub_81D9C(v5);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DF0);
    *&v31 = v21;
    sub_1FB90(&v31, v30);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_39B88(v30, v19, v20, v22);

    v23 = v12;
    v33 = v12;
  }

  else
  {
    sub_13A5BC(v17, v18, &v31);

    sub_837D0(&v31);
    v23 = v33;
  }

  v24 = sub_3E7934();
  v26 = v25;
  v32 = &type metadata for Bool;
  LOBYTE(v31) = v29;
  sub_1FB90(&v31, v30);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_39B88(v30, v24, v26, v27);

  return v23;
}

uint64_t MetricsPageFields.init(pageID:pageType:pageDetails:sharedContent:customFields:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t MetricsPageFields.init(pageID:pageType:pageDetails:sharedContent:customFields:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  if (a1)
  {
    result = 0;
    v14 = 0;
  }

  else
  {
    sub_17A28();
    result = sub_3EE1F4();
  }

  *a7 = result;
  *(a7 + 8) = v14;
  *(a7 + 16) = a2;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5 & 1;
  *(a7 + 48) = a6;
  return result;
}

double sub_13A5BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_B4118(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_36FA0();
      v10 = v12;
    }

    sub_1FB90((*(v10 + 56) + 32 * v8), a3);
    sub_36DF0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_13A660(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_13A6A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id MetricsPageViewController.__allocating_init(asPartOf:wrapping:with:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_13B3A4(a1, a2, a3);

  return v8;
}

id MetricsPageViewController.init(asPartOf:wrapping:with:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = sub_13B3A4(a1, a2, a3);

  return v3;
}

id MetricsPageViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

Swift::Void __swiftcall MetricsPageViewController.viewDidLoad()()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC8ShelfKit25MetricsPageViewController_viewController];
  [v0 addChildViewController:v1];
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame:{v7, v9, v11, v13}];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  v16 = [v1 view];
  if (v16)
  {
    v17 = v16;
    [v15 addSubview:v16];

    v18 = [v0 navigationItem];
    v19 = [v1 title];
    [v18 setTitle:v19];

    [v1 didMoveToParentViewController:v0];
    return;
  }

LABEL_9:
  __break(1u);
}

Swift::Void __swiftcall MetricsPageViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewWillAppear:", a1);
  v3 = *&v1[OBJC_IVAR____TtC8ShelfKit25MetricsPageViewController_metricsController];
  if (*(v3 + 16))
  {
    sub_3E68C4();
  }

  v4 = sub_3E87D4();
  v5 = *(v3 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageContext);
  __chkstk_darwin(v4);
  os_unfair_lock_lock((v5 + 32));
  sub_13B7F4((v5 + 16));
  os_unfair_lock_unlock((v5 + 32));
}

Swift::Void __swiftcall MetricsPageViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_3EC144();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1, v6);
  v9 = *(*&v1[OBJC_IVAR____TtC8ShelfKit25MetricsPageViewController_metricsController] + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageEnterGate);
  if (v9)
  {
    swift_beginAccess();
    v10 = *(v9 + 32);
    *(v9 + 32) = 1;
    if (v10 != 1)
    {
      swift_beginAccess();
      if (*(v9 + 34) == 1)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v9 + 24);
          v12 = swift_getObjectType();

          sub_3EC134();
          (*(v11 + 8))(v8, v12, v11);

          swift_unknownObjectRelease();
          (*(v5 + 8))(v8, v4);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall MetricsPageViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_3EC144();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v1;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "viewWillDisappear:", a1, v6);
  v9 = *&v1[OBJC_IVAR____TtC8ShelfKit25MetricsPageViewController_metricsController];
  v10 = *(v9 + OBJC_IVAR____TtC8ShelfKit17MetricsController_pageEnterGate);
  if (v10)
  {
    swift_beginAccess();
    *(v10 + 32) = 0;
    if (*(v9 + 16))
    {
      sub_3E68C4();
    }

    sub_3EC124();
    MetricsController.sendEvents(for:)(v8);
    v11 = (*(v5 + 8))(v8, v4);
    v12 = *(*(v9 + 24) + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
    __chkstk_darwin(v11);
    *(&v15 - 2) = 0;
    v13 = *(*v12 + class metadata base offset for ManagedBuffer + 16);
    v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v12 + v14));
    sub_130F50(v12 + v13);
    os_unfair_lock_unlock((v12 + v14));
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall MetricsPageViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "viewDidDisappear:", a1);
}

Swift::Void __swiftcall MetricsPageViewController.viewWillLayoutSubviews()()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewWillLayoutSubviews");
  v1 = [*&v0[OBJC_IVAR____TtC8ShelfKit25MetricsPageViewController_viewController] view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 setFrame:{v6, v8, v10, v12}];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id MetricsPageViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_3ED204();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_13B3A4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v27 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_3EC544();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3190);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = a3[1];
  v24 = *a3;
  v23 = v14;
  v15 = *(a3 + 4);
  v16 = *(a3 + 40);
  v17 = *(a3 + 6);
  type metadata accessor for MetricsController();
  swift_allocObject();

  v18 = MetricsController.init(asPartOf:)();
  v29 = v24;
  v30 = v23;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  sub_3EC534();
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A70);
  sub_3EC0B4();
  *(swift_allocObject() + 16) = xmmword_3F5310;
  sub_3EC084();
  sub_3EC074();
  MetricsPageFields.metricsFields.getter();
  (*(v5 + 16))(v7, v10, v4);
  sub_3EC0C4();
  v40 = v34;
  sub_FCF8(&v40, &unk_4F8A10);
  v39 = v35;
  sub_FCF8(&v39, &qword_4E94E0);
  v38 = v36;
  sub_FCF8(&v38, &unk_4F8A20);
  sub_16AC0(v37);
  (*(v5 + 8))(v10, v4);

  v19 = sub_3EC164();
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  v20 = OBJC_IVAR____TtC8ShelfKit17MetricsController_pageMetrics;
  swift_beginAccess();
  sub_1309C0(v13, v18 + v20);
  swift_endAccess();
  sub_12CA14();
  sub_FCF8(v13, &qword_4F3190);
  v21 = v25;
  *&v25[OBJC_IVAR____TtC8ShelfKit25MetricsPageViewController_metricsController] = v18;
  *&v21[OBJC_IVAR____TtC8ShelfKit25MetricsPageViewController_viewController] = v27;
  v28.receiver = v21;
  v28.super_class = ObjectType;
  return objc_msgSendSuper2(&v28, "initWithNibName:bundle:", 0, 0);
}

uint64_t NativeClickMetricsAction.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3EC044();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t NativeClickMetricsAction.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3EC044();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NativeClickMetricsAction.data.setter(uint64_t a1)
{
  v3 = sub_3EC044();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NativeClickMetricsAction.locationFields(from:at:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_3E6414();
  v23 = a1;
  if (v4 <= 4)
  {
    if (v4 - 2 >= 3)
    {
      goto LABEL_9;
    }

LABEL_8:
    v5 = sub_3E85B4();
    goto LABEL_10;
  }

  if (v4 != 5)
  {
    if (v4 != 7)
    {
      if (v4 == 6)
      {
        v5 = sub_3E8594();
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:
  v5 = sub_3E8554();
LABEL_10:
  v22 = v5;
  v7 = v6;
  sub_3EC034();
  v8 = sub_3E78A4();
  v9 = sub_1279E0(v8);
  v11 = v10;

  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v14 = sub_3E7A14();
  v16 = v15;
  sub_3EC034();
  v17 = sub_3E7924();
  v18 = sub_1279E0(v17);
  v20 = v19;

  *a2 = v12;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;
  a2[4] = v23;
  a2[5] = v22;
  a2[6] = v7;
  a2[7] = v18;
  a2[8] = v20;
  return result;
}

uint64_t sub_13BB14(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EC044();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_13BB94(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EC044();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for NativeClickMetricsAction()
{
  result = qword_4F3638;
  if (!qword_4F3638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13BC50()
{
  result = sub_3EC044();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void NativeImpressionMetricsItem.assertItemHasNoImpressionMetrics(_:)(uint64_t a1)
{
  v2 = sub_3EC634();
  if ((*(*(v2 - 8) + 48))(a1, 1, v2) != 1)
  {
    sub_3ED9D4();
    sub_36174(0, &qword_4F6BF0);
    v3 = sub_3EE0C4();
    sub_3E9754();
  }
}

__n128 ImpressionFields.init(type:name:impressionIndex:idType:channelAdamId:eligibilityType:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

void *ImpressionFields.metricsFields.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  v6 = v0[6];
  v35 = v0[4];
  v36 = v0[7];
  v7 = v0[8];
  v37 = v0[9];
  v8 = v0[10];
  v41 = &type metadata for String;
  if (!v4)
  {
    v3 = 0;
  }

  v9 = 0xE000000000000000;
  if (v4)
  {
    v9 = v4;
  }

  *&v40 = v3;
  *(&v40 + 1) = v9;
  sub_1FB90(&v40, &v38);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = _swiftEmptyDictionarySingleton;
  sub_3A0A0(&v38, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v11 = v42;
  v41 = &type metadata for String;
  *&v40 = v1;
  *(&v40 + 1) = v2;
  sub_1FB90(&v40, &v38);

  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(&v38, 0x6973736572706D69, 0xEE00657079546E6FLL, v12);
  v42 = v11;
  v13 = sub_3E7874();
  v15 = v13;
  v16 = v14;
  if (v6)
  {
    v41 = &type metadata for String;
    *&v40 = v5;
    *(&v40 + 1) = v6;
    sub_1FB90(&v40, &v38);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_39B88(&v38, v15, v16, v17);

    v42 = v11;
  }

  else
  {
    sub_13A5BC(v13, v14, &v40);

    sub_837D0(&v40);
  }

  if (v1 == sub_3E85F4() && v2 == v18)
  {

LABEL_12:
    v20 = 0xE200000000000000;
    v21 = 12589;
    goto LABEL_13;
  }

  v19 = sub_3EE804();

  if (v19)
  {
    goto LABEL_12;
  }

  if (v1 == sub_3E8584() && v2 == v33)
  {

LABEL_27:
    v20 = 0xE100000000000000;
    v21 = 48;
    goto LABEL_13;
  }

  v34 = sub_3EE804();

  if (v34)
  {
    goto LABEL_27;
  }

  *&v40 = v35;
  v21 = sub_3EE7A4();
LABEL_13:
  v41 = &type metadata for String;
  *&v40 = v21;
  *(&v40 + 1) = v20;
  sub_1FB90(&v40, &v38);
  v22 = v42;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(&v38, 0x6973736572706D69, 0xEF7865646E496E6FLL, v23);
  if (v7)
  {
    v41 = &type metadata for String;
    *&v40 = v36;
    *(&v40 + 1) = v7;
    sub_1FB90(&v40, &v38);

    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(&v38, 0x416C656E6E616863, 0xED000064496D6164, v24);
  }

  v25 = [objc_allocWithZone(NSNull) init];
  v26 = sub_36174(0, &qword_4F32D8);
  v41 = v26;
  *&v40 = v25;
  sub_1FB90(&v40, &v38);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(&v38, 0x796C696D61467369, 0xE800000000000000, v27);
  v28 = [objc_allocWithZone(NSNull) init];
  v41 = v26;
  *&v40 = v28;
  sub_1FB90(&v40, &v38);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(&v38, 0x6E65647574537369, 0xE900000000000074, v29);
  v42 = v22;
  if (v8)
  {
    *(&v39 + 1) = &type metadata for String;
    *&v38 = v37;
    *(&v38 + 1) = v8;
    sub_1FB90(&v38, &v40);
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v30 = [objc_allocWithZone(NSNull) init];
    v41 = v26;
    *&v40 = v30;
    if (*(&v39 + 1))
    {
      sub_837D0(&v38);
    }
  }

  if (v41)
  {
    sub_1FB90(&v40, &v38);

    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(&v38, 0x6C69626967696C65, 0xEF65707954797469, v31);
    return v22;
  }

  else
  {

    sub_837D0(&v40);
    sub_39FFC(0x6C69626967696C65, 0xEF65707954797469, &v38);
    sub_837D0(&v38);
    return v42;
  }
}

Swift::String __swiftcall NativeImpressionMetricsItem.generateImpressionId(from:)(Swift::String from)
{
  sub_68DC4();
  v1 = sub_3EE194();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_13C3AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_13C3F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int StoreViewControllerLifecycleEvent.hashValue.getter(unsigned __int8 a1)
{
  sub_3EE954();
  sub_3EE964(a1);
  return sub_3EE9A4();
}

unint64_t sub_13C504()
{
  result = qword_4F3670;
  if (!qword_4F3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3670);
  }

  return result;
}

void *UniversalMetricsDictionary.dictionary.getter()
{
  v1 = v0;
  v2 = [objc_allocWithZone(ASKCapacityData) init];
  v3 = [v2 totalSystemCapacity];
  v4 = sub_36174(0, &qword_4F1C20);
  v60 = v4;
  *&v59 = v3;
  sub_1FB90(&v59, v58);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v58, 0x7974696361706163, 0xEE006D6574737953, isUniquelyReferenced_nonNull_native);
  v6 = [v2 totalSystemAvailable];
  v60 = v4;
  *&v59 = v6;
  sub_1FB90(&v59, v58);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v58, 0xD000000000000017, 0x80000000004281C0, v7);
  v8 = [v2 totalDataCapacity];
  v60 = v4;
  *&v59 = v8;
  sub_1FB90(&v59, v58);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v58, 0x7974696361706163, 0xEC00000061746144, v9);
  v10 = [v2 totalDataAvailable];
  v60 = v4;
  *&v59 = v10;
  sub_1FB90(&v59, v58);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v58, 0xD000000000000015, 0x80000000004281E0, v11);
  v12 = ASKMetricsGetNetworkConnectionTypeString();
  v13 = sub_3ED244();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v60 = &type metadata for String;
    *&v59 = v13;
    *(&v59 + 1) = v15;
    sub_1FB90(&v59, v58);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v58, 0x697463656E6E6F63, 0xEA00000000006E6FLL, v17);
  }

  else
  {
  }

  v18 = [v2 totalDiskCapacity];
  v60 = v4;
  *&v59 = v18;
  sub_1FB90(&v59, v58);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v58, 0x7974696361706163, 0xEC0000006B736944, v19);
  v20 = ASKMetricsGetCookieString();
  v21 = sub_3ED244();
  v23 = v22;

  v60 = &type metadata for String;
  *&v59 = v21;
  *(&v59 + 1) = v23;
  sub_1FB90(&v59, v58);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v58, 0x65696B6F6F63, 0xE600000000000000, v24);
  v25 = *(v1 + OBJC_IVAR____TtC8ShelfKit26UniversalMetricsDictionary_accountStore);
  v26 = [v25 ams_activeiTunesAccount];
  v27 = v26;
  if (v26)
  {
  }

  v60 = &type metadata for Bool;
  LOBYTE(v59) = v27 != 0;
  sub_1FB90(&v59, v58);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v58, 0x64656E6769537369, 0xEA00000000006E49, v28);
  v29 = [v25 ams_isActiveAccountCombined];
  v60 = &type metadata for Bool;
  LOBYTE(v59) = v29;
  sub_1FB90(&v59, v58);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v58, 0x6E756F6363417078, 0xEF686374614D7374, v30);
  v31 = *(v1 + OBJC_IVAR____TtC8ShelfKit26UniversalMetricsDictionary_screenScale);
  v60 = &type metadata for CGFloat;
  *&v59 = v31;
  sub_1FB90(&v59, v58);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v58, 0x7461526C65786970, 0xEA00000000006F69, v32);
  v33 = (v1 + OBJC_IVAR____TtC8ShelfKit26UniversalMetricsDictionary_screenSize);
  v34 = v33[1];
  v60 = &type metadata for CGFloat;
  *&v59 = v34;
  sub_1FB90(&v59, v58);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v58, 0x65486E6565726373, 0xEC00000074686769, v35);
  v36 = *v33;
  v60 = &type metadata for CGFloat;
  *&v59 = v36;
  sub_1FB90(&v59, v58);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v58, 0x69576E6565726373, 0xEB00000000687464, v37);
  v38 = [objc_opt_self() mainBundle];
  v39 = [v38 bundleIdentifier];
  if (v39)
  {
    v40 = v39;
    v41 = sub_3ED244();
    v43 = v42;

    v60 = &type metadata for String;
    *&v59 = v41;
    *(&v59 + 1) = v43;
    sub_1FB90(&v59, v58);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    sub_3A0A0(v58, 7368801, 0xE300000000000000, v44);
  }

  v45 = [objc_opt_self() currentDevice];
  v46 = [v45 systemVersion];

  v47 = sub_3ED244();
  v49 = v48;

  v60 = &type metadata for String;
  *&v59 = v47;
  *(&v59 + 1) = v49;
  sub_1FB90(&v59, v58);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v58, 0x6F6973726556736FLL, 0xE90000000000006ELL, v50);
  v51 = ASKMetricsGetDeviceUserAgent();
  v52 = sub_3ED244();
  v54 = v53;

  v60 = &type metadata for String;
  *&v59 = v52;
  *(&v59 + 1) = v54;
  sub_1FB90(&v59, v58);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v58, 0x6E65674172657375, 0xE900000000000074, v55);
  v60 = &type metadata for Int;
  *&v59 = 1;
  sub_1FB90(&v59, v58);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  sub_3A0A0(v58, 0x656372756F736572, 0xEE006D754E766552, v56);

  return _swiftEmptyDictionarySingleton;
}

id UniversalMetricsDictionary.init()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_13CF5C();
  v4 = v3;
  v6 = v5;
  v7 = [objc_opt_self() ams_sharedAccountStore];
  *&v0[OBJC_IVAR____TtC8ShelfKit26UniversalMetricsDictionary_accountStore] = v7;
  v8 = &v0[OBJC_IVAR____TtC8ShelfKit26UniversalMetricsDictionary_screenSize];
  *v8 = v2;
  *(v8 + 1) = v4;
  *&v0[OBJC_IVAR____TtC8ShelfKit26UniversalMetricsDictionary_screenScale] = v6;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

void sub_13CEC4(void *a1@<X8>)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  [v2 scale];
  v8 = v7;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
}

double sub_13CF5C()
{
  if ([objc_opt_self() isMainThread])
  {
    v0 = [objc_opt_self() mainScreen];
    [v0 bounds];
    v2 = v1;
    [v0 scale];
  }

  else
  {
    sub_36174(0, &qword_4F10B0);
    v3 = sub_3EDBC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F36B8);
    sub_3EDBD4();

    return v5;
  }

  return v2;
}

uint64_t sub_13D0C4()
{
  *(v0 + 80) = sub_3E6E54();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_13D18C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
}

uint64_t sub_13D18C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_13D77C;
  }

  else
  {

    v2 = sub_13D2A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_13D2A8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v0[8] = 10;
  v3 = sub_3E6E54();
  v0[13] = v3;
  v4 = swift_task_alloc();
  v0[14] = v4;
  v5 = sub_FCD5C();
  *v4 = v0;
  v4[1] = sub_13D3A4;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 7, v0 + 8, v3, &type metadata for FetchUpNextEpisodesIntent, v5, v1, v2);
}

uint64_t sub_13D3A4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_13D7E0;
  }

  else
  {

    v2 = sub_13D4C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_13D4C0()
{
  v1 = v0[15];
  v2 = v0[7];
  v0[16] = v2;
  sub_3ED774();
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[17] = v5;
    v6 = sub_3E6E64();
    v7 = sub_13D8B8();
    *v5 = v0;
    v5[1] = sub_13D5E4;

    return LibraryEntityQuery.fetchEntities(for:)(v2, v6, v7);
  }
}

uint64_t sub_13D5E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_13D84C;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_13D70C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_13D70C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 152);

  return v1(v2);
}

uint64_t sub_13D77C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_13D7E0()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_13D84C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_13D8B8()
{
  result = qword_4F36C0;
  if (!qword_4F36C0)
  {
    sub_3E6E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F36C0);
  }

  return result;
}

uint64_t EpisodeEntity.init(offer:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v3 - 8);
  v62 = v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v5 - 8);
  v61 = v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F15C0);
  __chkstk_darwin(v7 - 8);
  v60 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v11 - 8);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F36C8);
  __chkstk_darwin(v17 - 8);
  v19 = v47 - v18;
  v57 = *a1;
  v67 = v57;
  sub_17A28();
  v20 = sub_3EE1F4();
  v53 = v21;
  v54 = v20;
  v22 = type metadata accessor for EpisodeOffer();
  v23 = v22;
  v24 = (a1 + v22[10]);
  v25 = (a1 + v22[11]);
  v26 = v25[1];
  if (v26)
  {
    v27 = *v25;
    v51 = v26;
    v52 = v27;
  }

  else
  {
    v51 = 0xE000000000000000;
    v52 = 0;
  }

  v28 = v24[1];
  v50 = *v24;
  v29 = a1 + v22[6];
  v30 = type metadata accessor for ShowOffer();
  v31 = v30;
  v32 = &v29[*(v30 + 36)];
  v33 = *(v32 + 1);
  v59 = v13;
  v66 = v28;
  if (v33)
  {
    v34 = *v32;
    v48 = v33;
    v49 = v34;
  }

  else
  {
    v48 = 0xE000000000000000;
    v49 = 0;
  }

  v35 = &v29[*(v30 + 32)];
  v37 = *v35;
  v36 = *(v35 + 1);
  v47[2] = v37;
  v65 = v36;
  v38 = *(v29 + 2);
  v47[1] = *(v29 + 1);
  v64 = v38;
  v39 = sub_3E6D44();
  v40 = *(*(v39 - 8) + 56);
  v55 = v19;
  v40(v19, 1, 1, v39);
  v41 = sub_3E5F84();
  v42 = *(*(v41 - 8) + 56);
  v58 = v16;
  v42(v16, 1, 1, v41);
  if (*(a1 + v23[12]))
  {

    sub_3E6B14();
  }

  else
  {
    v42(v59, 1, 1, v41);
  }

  v43 = v23[22];
  v44 = v56;
  sub_FBD0(a1 + v43, v56, &qword_4F15C0);
  v45 = sub_3E9354();
  (*(*(v45 - 8) + 48))(v44, 1, v45);
  sub_13DEB0(v44);
  sub_FBD0(&v29[*(v31 + 28)], v61, &qword_4F1D50);
  sub_FBD0(a1 + v23[7], v62, &unk_4E9EE0);
  sub_FBD0(a1 + v43, v60, &qword_4F15C0);
  sub_3E6E84();
  return sub_3D91C(a1);
}

uint64_t sub_13DEB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F15C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShowEntity.init(offer:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v45 = &v35 - v13;
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v17 = *a1;
  v46 = *a1;
  sub_17A28();
  v18 = sub_3EE1F4();
  v40 = v19;
  v41 = v18;
  v20 = type metadata accessor for ShowOffer();
  v36 = v20[13];
  v42 = v16;
  sub_FBD0(a1 + v36, v16, &unk_4E9EE0);
  if (*(a1 + v20[10]) == 2)
  {
    v39 = 0;
  }

  else
  {
    v21 = sub_3E79D4();
    v23 = v22;
    v24 = 1;
    if (v21 != sub_3E79D4() || v23 != v25)
    {
      v24 = sub_3EE804();
    }

    v39 = v24;
  }

  v26 = a1[1];
  v37 = *(a1 + v20[8]);
  v38 = v26;
  v27 = sub_3E5F84();
  v28 = *(*(v27 - 8) + 56);
  v43 = v8;
  v28(v8, 1, 1, v27);
  sub_FBD0(a1 + v20[7], v5, &qword_4F1D50);
  v29 = sub_3E5DC4();
  v30 = *(*(v29 - 8) + 56);
  v30(v45, 1, 1, v29);
  result = objc_opt_self();
  if (v17 < 0)
  {
    __break(1u);
  }

  else
  {
    v32 = result;

    v33 = [v32 storeCleanURLForAdamID:v17];
    if (v33)
    {
      v34 = v33;
      sub_3E5D44();

      v30(v11, 0, 1, v29);
    }

    else
    {
      sub_FBD0(a1 + v36, v11, &unk_4E9EE0);
    }

    sub_3E6CF4();
    return sub_6C938(a1);
  }

  return result;
}

uint64_t LegacyActionButton.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LegacyActionButton() + 28);

  return sub_7EA24(v3, a1);
}

uint64_t type metadata accessor for LegacyActionButton()
{
  result = qword_4F3728;
  if (!qword_4F3728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LegacyActionButton.impressionMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LegacyActionButton() + 28);

  return sub_13E434(a1, v3);
}

uint64_t sub_13E434(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LegacyActionButton.init(title:action:presentation:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(type metadata accessor for LegacyActionButton() + 28);
  v13 = sub_3EC634();
  (*(*(v13 - 8) + 56))(a6 + v12, 1, 1, v13);
  *a6 = a1;
  *(a6 + 8) = a2;
  sub_1D4F0(a3, a6 + 16);
  *(a6 + 56) = a4;

  return sub_13E434(a5, a6 + v12);
}

uint64_t LegacyActionButton.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v35 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v40 = sub_3EBF94();
  v7 = *(v40 - 8);
  __chkstk_darwin(v40);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBDF4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  sub_3EBE04();
  v34 = sub_3EBDC4();
  v39 = v15;
  v16 = v14;
  v17 = v36;
  v38 = *(v11 + 8);
  v38(v16, v10);
  v18 = v37;
  sub_3EC244();
  if (v18)
  {

    (*(v7 + 8))(v17, v40);
    return (v38)(a1, v10);
  }

  else
  {
    v32 = a1;
    v37 = 0;
    sub_3EBE04();
    v33 = v6;
    v31 = *(v7 + 16);
    v31(v9, v17, v40);
    sub_4CDFC();
    sub_3EC574();
    v20 = v43;
    if (v44)
    {
      v20 = 0;
    }

    v42 = v20;
    v21 = sub_3EC634();
    v30 = v10;
    v22 = v21;
    v23 = v32;
    sub_3EBE04();
    v24 = v9;
    v25 = v40;
    v31(v24, v17, v40);
    v26 = v33;
    sub_3EC574();
    (*(v7 + 8))(v17, v25);
    v38(v23, v30);
    v27 = *(type metadata accessor for LegacyActionButton() + 28);
    v28 = v35;
    (*(*(v22 - 8) + 56))(v35 + v27, 1, 1, v22);
    v29 = v39;
    *v28 = v34;
    *(v28 + 8) = v29;
    sub_1D4F0(&v41, v28 + 16);
    *(v28 + 56) = v42;
    return sub_13E434(v26, v28 + v27);
  }
}

uint64_t sub_13E9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_13EAC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_13EB74()
{
  sub_1972C();
  if (v0 <= 0x3F)
  {
    sub_83E10();
    if (v1 <= 0x3F)
    {
      sub_4D334();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

Swift::Int sub_13EC18(char a1)
{
  sub_3EE954();
  if (a1)
  {
    v2 = 0x4046000000000000;
  }

  else
  {
    v2 = 0x4040000000000000;
  }

  sub_3EE994(v2);
  return sub_3EE9A4();
}

Swift::Int sub_13EC6C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

Swift::Int sub_13ED74()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

Swift::Int sub_13EE74()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_13EF5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3938);
  result = swift_allocObject();
  *(result + 16) = 0;
  off_4F3768[0] = result;
  return result;
}

void *sub_13EFA0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_13EFAC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_13F068()
{
  sub_3EE954();
  sub_3ED394();
  return sub_3EE9A4();
}

Swift::Int sub_13F0BC()
{
  sub_3EE954();
  sub_3ED394();
  return sub_3EE9A4();
}

ShelfKit::ActionButton::Role_optional __swiftcall ActionButton.Role.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B1850;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t ActionButton.Role.rawValue.getter()
{
  if (*v0)
  {
    return 0x7463757274736564;
  }

  else
  {
    return 0x6C65636E6163;
  }
}

uint64_t sub_13F1A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7463757274736564;
  }

  else
  {
    v3 = 0x6C65636E6163;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEB00000000657669;
  }

  if (*a2)
  {
    v5 = 0x7463757274736564;
  }

  else
  {
    v5 = 0x6C65636E6163;
  }

  if (*a2)
  {
    v6 = 0xEB00000000657669;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_13F254()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_13F2DC()
{
  sub_3ED394();
}

Swift::Int sub_13F350()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_13F3D4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B1850;
  v8._object = v3;
  v5 = sub_3EE624(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_13F434(uint64_t *a1@<X8>)
{
  v2 = 0x6C65636E6163;
  if (*v1)
  {
    v2 = 0x7463757274736564;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000657669;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ActionButton.role.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActionButton();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ActionButton.role.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ActionButton();
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t ActionButton.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActionButton() + 32);

  return sub_1F958(v3, a1);
}

uint64_t ActionButton.action.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ActionButton() + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + v3);

  return sub_1D4F0(a1, v1 + v3);
}

uint64_t ActionButton.init(id:title:icon:role:action:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v14 = *a6;
  v15 = type metadata accessor for ActionButton();
  v16 = v15[6];
  v17 = sub_3E7784();
  (*(*(v17 - 8) + 56))(&a9[v16], 1, 1, v17);
  v18 = v15[7];
  a9[v18] = 2;
  v19 = v15[9];
  v20 = sub_3EC634();
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  sub_51F9C(a5, &a9[v16], &qword_4F1D50);
  a9[v18] = v14;
  sub_1D4F0(a7, &a9[v15[8]]);
  return sub_51F9C(a8, &a9[v19], &unk_4E9170);
}

uint64_t ActionButton.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = *(a1 + 56);
  if (*(a1 + 8))
  {
    v11 = *a1;
    v28 = *(a1 + 8);
    v29 = v11;
  }

  else
  {
    v28 = 0xE000000000000000;
    v29 = 0;
  }

  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v27 = v12;
  v13 = sub_3E7784();
  v14 = *(*(v13 - 8) + 56);
  v14(v9, 1, 1, v13);
  v15 = type metadata accessor for ActionButton();
  sub_1F958(a1 + 16, a2 + v15[8]);
  v16 = type metadata accessor for LegacyActionButton();
  sub_FBD0(a1 + *(v16 + 28), v6, &unk_4E9170);

  v17 = _s8ShelfKit12ActionButtonV2IDVAEycfC_0();
  v19 = v18;
  v26 = v6;
  v20 = v15[6];
  v14(a2 + v20, 1, 1, v13);
  v21 = v15[7];
  *(a2 + v21) = 2;
  v22 = v15[9];
  v23 = sub_3EC634();
  (*(*(v23 - 8) + 56))(a2 + v22, 1, 1, v23);
  *a2 = v17;
  a2[1] = v19;
  v24 = v28;
  a2[2] = v29;
  a2[3] = v24;
  sub_51F9C(v9, a2 + v20, &qword_4F1D50);
  *(a2 + v21) = v27;
  sub_51F9C(v26, a2 + v22, &unk_4E9170);
  return sub_1411C4(a1);
}

uint64_t sub_13FC48()
{
  sub_3ED394();
}

uint64_t sub_13FD20@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1420A8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_13FD50(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE400000000000000;
  v6 = 1701605234;
  v7 = 0xE600000000000000;
  v8 = 0x6E6F69746361;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000000422950;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (v2 != 1)
  {
    v10 = 1852793705;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_13FDF0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1701605234;
  v4 = 0x6E6F69746361;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_13FE8C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1420A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_13FEB4(uint64_t a1)
{
  v2 = sub_141220();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_13FEF0(uint64_t a1)
{
  v2 = sub_141220();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ActionButton.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v3 - 8);
  v69 = &v63 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v5 - 8);
  v72 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3770);
  __chkstk_darwin(v7 - 8);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v73 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB330);
  v74 = *(v11 - 8);
  v75 = v11;
  __chkstk_darwin(v11);
  v13 = &v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3778);
  __chkstk_darwin(v14 - 8);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3780);
  v76 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v63 - v21;
  v23 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v24 = sub_141220();
  v25 = v77;
  sub_3EE9F4();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v80);
  }

  v67 = v16;
  v68 = v24;
  v26 = v13;
  v77 = v19;
  v27 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3790);
  LOBYTE(v78[0]) = 0;
  sub_141274();
  sub_3EE684();
  v28 = v79[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F37B8);
  LOBYTE(v78[0]) = 1;
  sub_1413D0();
  sub_3EE684();
  v66 = v28;
  v29 = v79[0];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F37D0);
  LOBYTE(v79[0]) = 2;
  sub_1414E4();
  sub_3EE684();
  v65 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F37E8);
  LOBYTE(v78[0]) = 3;
  sub_14161C();
  sub_3EE684();
  v63 = v22;
  v64 = 0;
  v32 = LOBYTE(v79[0]);
  __swift_project_boxed_opaque_existential_1(v80, v80[3]);
  sub_3EE9D4();
  sub_3EBF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB338);
  sub_3ED0C4();

  (*(v74 + 8))(v26, v75);
  if (!*&v78[0])
  {
    sub_4F8F0();
  }

  LOBYTE(v78[0]) = 4;
  v33 = v63;
  v34 = v64;
  sub_DCC00(v79);
  v35 = v65;
  if (v34)
  {
    sub_1414D0(v66, *(&v66 + 1));
    sub_1414D0(v35, *(&v35 + 1));
    sub_FCF8(v77, &qword_4F3778);
    (*(v27 + 8))(v33, v20);
    return __swift_destroy_boxed_opaque_existential_1Tm(v80);
  }

  LODWORD(v75) = v32;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3810);
  LOBYTE(v78[0]) = 5;
  sub_141778();
  sub_3EE684();
  v37 = v36;
  v64 = 0;
  v38 = *(&v66 + 1);
  if (*(&v66 + 1) < 2uLL)
  {
    v39 = _s8ShelfKit12ActionButtonV2IDVAEycfC_0();
    v41 = v40;
    sub_1414D0(v66, v38);
    *&v66 = v39;
    *(&v66 + 1) = v41;
  }

  v42 = v69;
  v43 = v72;
  v44 = v30;
  (*(v27 + 8))(v63, v20);
  v45 = v71;
  v46 = v67;
  if (*(&v65 + 1) < 2uLL)
  {
    sub_1414D0(v65, *(&v65 + 1));
    *&v65 = 0;
    *(&v65 + 1) = 0xE000000000000000;
  }

  v47 = v70;
  v48 = v73;
  v49 = v66;
  sub_FACC(v77, v46, &qword_4F3778);
  if ((*(*(v44 - 8) + 48))(v46, 1, v44) == 1)
  {
    sub_FCF8(v46, &qword_4F3778);
    v50 = sub_3E7784();
    (*(*(v50 - 8) + 56))(v43, 1, 1, v50);
  }

  else
  {
    sub_FBD0(v46, v43, &qword_4F1D50);
    sub_FCF8(v46, &qword_4F37D0);
  }

  v51 = v49;
  if (v75 == 3)
  {
    v52 = 2;
  }

  else
  {
    v52 = v75;
  }

  sub_1D4F0(v79, v78);
  sub_FACC(v48, v45, &qword_4F3770);
  if ((*(*(v37 - 8) + 48))(v45, 1, v37) == 1)
  {
    sub_FCF8(v45, &qword_4F3770);
    v53 = sub_3EC634();
    (*(*(v53 - 8) + 56))(v42, 1, 1, v53);
  }

  else
  {
    sub_FBD0(v45, v42, &unk_4E9170);
    sub_FCF8(v45, &qword_4F3810);
  }

  v54 = v42;
  v55 = type metadata accessor for ActionButton();
  v56 = v55[6];
  v57 = sub_3E7784();
  (*(*(v57 - 8) + 56))(&v47[v56], 1, 1, v57);
  v58 = v55[7];
  v47[v58] = 2;
  v59 = v55[9];
  v60 = sub_3EC634();
  (*(*(v60 - 8) + 56))(&v47[v59], 1, 1, v60);
  v61 = *(&v66 + 1);
  *v47 = v51;
  *(v47 + 1) = v61;
  v62 = *(&v65 + 1);
  *(v47 + 2) = v65;
  *(v47 + 3) = v62;
  sub_51F9C(v72, &v47[v56], &qword_4F1D50);
  v47[v58] = v52;
  sub_1D4F0(v78, &v47[v55[8]]);
  sub_51F9C(v54, &v47[v59], &unk_4E9170);
  return __swift_destroy_boxed_opaque_existential_1Tm(v80);
}

uint64_t ActionButton.encode(to:)(void *a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB330);
  v21 = *(v19 - 8);
  __chkstk_darwin(v19);
  v20 = &v17 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3828);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_141220();
  sub_3EEA14();
  v9 = v1[1];
  v23 = *v1;
  v24 = v9;
  v25 = 0;
  sub_1418B0();
  v10 = v22;
  sub_3EE764();
  if (v10)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v22 = v8;
  v12 = v5;
  LOBYTE(v23) = 1;
  sub_3EE734();
  v13 = type metadata accessor for ActionButton();
  v18 = v4;
  LOBYTE(v23) = 2;
  sub_3E7784();
  sub_141958(&qword_4F00E0, &type metadata accessor for ArtworkModel);
  sub_3EE724();
  LOBYTE(v23) = *(v1 + *(v13 + 28));
  v25 = 3;
  sub_141904();
  sub_3EE724();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_3EEA04();
  v14 = v20;
  sub_3EBF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB338);
  sub_3ED0C4();

  (*(v21 + 8))(v14, v19);
  if (!v23)
  {
    sub_4F8F0();
  }

  v15 = *(v13 + 32);
  LOBYTE(v23) = 4;
  sub_DCFA4(v1 + v15);
  v16 = v18;
  LOBYTE(v23) = 5;
  sub_3EC634();
  sub_141958(&qword_4F0138, &type metadata accessor for ImpressionMetrics);
  sub_3EE724();
  return (*(v12 + 8))(v7, v16);
}

unint64_t ActionButton.ID.debugDescription.getter(uint64_t a1, void *a2)
{
  sub_3EE3C4(31);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  sub_3ED3D4(v5);
  v6._countAndFlagsBits = 10530;
  v6._object = 0xE200000000000000;
  sub_3ED3D4(v6);
  return 0xD00000000000001BLL;
}

unint64_t sub_140F68()
{
  v1 = *v0;
  v2 = v0[1];
  sub_3EE3C4(31);

  v4._countAndFlagsBits = v1;
  v4._object = v2;
  sub_3ED3D4(v4);
  v5._countAndFlagsBits = 10530;
  v5._object = 0xE200000000000000;
  sub_3ED3D4(v5);
  return 0xD00000000000001BLL;
}

uint64_t sub_141028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_3DE458(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

unint64_t _s8ShelfKit12ActionButtonV2IDVAEycfC_0()
{
  if (qword_4E89C0 != -1)
  {
    swift_once();
  }

  atomic_fetch_add((*(*off_4F3768[0] + 136))(), 1uLL);
  sub_3EE3C4(40);

  v1._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v1);

  return 0xD000000000000026;
}

uint64_t type metadata accessor for ActionButton()
{
  result = qword_4F38C0;
  if (!qword_4F38C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1411C4(uint64_t a1)
{
  v2 = type metadata accessor for LegacyActionButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_141220()
{
  result = qword_4F3788;
  if (!qword_4F3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3788);
  }

  return result;
}

unint64_t sub_141274()
{
  result = qword_4F3798;
  if (!qword_4F3798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F3790);
    sub_1412F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3798);
  }

  return result;
}

unint64_t sub_1412F8()
{
  result = qword_4F37A0;
  if (!qword_4F37A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F37A8);
    sub_14137C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F37A0);
  }

  return result;
}

unint64_t sub_14137C()
{
  result = qword_4F37B0;
  if (!qword_4F37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F37B0);
  }

  return result;
}

unint64_t sub_1413D0()
{
  result = qword_4F37C0;
  if (!qword_4F37C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F37B8);
    sub_141454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F37C0);
  }

  return result;
}

unint64_t sub_141454()
{
  result = qword_4F37C8;
  if (!qword_4F37C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4E9950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F37C8);
  }

  return result;
}

uint64_t sub_1414D0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1414E4()
{
  result = qword_4F37D8;
  if (!qword_4F37D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F37D0);
    sub_141568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F37D8);
  }

  return result;
}

unint64_t sub_141568()
{
  result = qword_4F37E0;
  if (!qword_4F37E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1D50);
    sub_141958(&qword_4F0148, &type metadata accessor for ArtworkModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F37E0);
  }

  return result;
}

unint64_t sub_14161C()
{
  result = qword_4F37F0;
  if (!qword_4F37F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F37E8);
    sub_1416A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F37F0);
  }

  return result;
}

unint64_t sub_1416A0()
{
  result = qword_4F37F8;
  if (!qword_4F37F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F3800);
    sub_141724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F37F8);
  }

  return result;
}

unint64_t sub_141724()
{
  result = qword_4F3808;
  if (!qword_4F3808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3808);
  }

  return result;
}

unint64_t sub_141778()
{
  result = qword_4F3818;
  if (!qword_4F3818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F3810);
    sub_1417FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3818);
  }

  return result;
}

unint64_t sub_1417FC()
{
  result = qword_4F3820;
  if (!qword_4F3820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_4E9170);
    sub_141958(&qword_4F0198, &type metadata accessor for ImpressionMetrics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3820);
  }

  return result;
}

unint64_t sub_1418B0()
{
  result = qword_4F3830;
  if (!qword_4F3830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3830);
  }

  return result;
}

unint64_t sub_141904()
{
  result = qword_4F3838;
  if (!qword_4F3838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3838);
  }

  return result;
}

uint64_t sub_141958(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1419A4()
{
  result = qword_4F3840;
  if (!qword_4F3840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3840);
  }

  return result;
}

unint64_t sub_1419FC()
{
  result = qword_4F3848;
  if (!qword_4F3848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3848);
  }

  return result;
}

unint64_t sub_141A54()
{
  result = qword_4F3850;
  if (!qword_4F3850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3850);
  }

  return result;
}

unint64_t sub_141AAC()
{
  result = qword_4F3858;
  if (!qword_4F3858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3858);
  }

  return result;
}

unint64_t sub_141B10()
{
  result = qword_4F3860;
  if (!qword_4F3860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3860);
  }

  return result;
}

uint64_t sub_141B90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_141CE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_141E1C()
{
  sub_95A68(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v0 <= 0x3F)
  {
    sub_141F20();
    if (v1 <= 0x3F)
    {
      sub_83E10();
      if (v2 <= 0x3F)
      {
        sub_95A68(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_141F20()
{
  if (!qword_4F38D0)
  {
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F38D0);
    }
  }
}

unint64_t sub_141FA4()
{
  result = qword_4F3910;
  if (!qword_4F3910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3910);
  }

  return result;
}

unint64_t sub_141FFC()
{
  result = qword_4F3918;
  if (!qword_4F3918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3918);
  }

  return result;
}

unint64_t sub_142054()
{
  result = qword_4F3920;
  if (!qword_4F3920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3920);
  }

  return result;
}

uint64_t sub_1420A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B18A0;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1420F4()
{
  result = qword_4F3928;
  if (!qword_4F3928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3928);
  }

  return result;
}

unint64_t sub_142148()
{
  result = qword_4F3930;
  if (!qword_4F3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3930);
  }

  return result;
}

uint64_t ActionButton.init<>(actionButton:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v30 = sub_3EA244();
  v3 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3940);
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3948);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - v15;
  sub_142558(a1, v13);
  v17 = type metadata accessor for ActionButton();
  v18 = *(*(v17 - 8) + 48);
  if (v18(v13, 1, v17) == 1)
  {
    sub_1425C8(v13);
    v19 = 1;
    v20 = v30;
  }

  else
  {
    v28 = a1;
    v21 = v13[*(v17 + 28)];
    sub_142AF8(v13);
    if (v21 == 2)
    {
      v19 = 1;
      a1 = v28;
      v20 = v30;
    }

    else
    {
      v20 = v30;
      if (v21)
      {
        v22 = v29;
        sub_3EA214();
      }

      else
      {
        v22 = v29;
        sub_3EA234();
      }

      (*(v3 + 32))(v16, v22, v20);
      v19 = 0;
      a1 = v28;
    }
  }

  (*(v3 + 56))(v16, v19, 1, v20);
  sub_142558(a1, v10);
  if (v18(v10, 1, v17) == 1)
  {
    sub_1425C8(v10);
    memset(v33, 0, sizeof(v33));
    v34 = 0;
  }

  else
  {
    sub_1F958(&v10[*(v17 + 32)], v33);
    sub_142AF8(v10);
  }

  sub_142558(a1, v7);
  v23 = a1;
  v24 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v25 = swift_allocObject();
  sub_142A0C(v7, v25 + v24);
  sub_3E9624();
  return sub_1425C8(v23);
}

uint64_t sub_142558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1425C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_142630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3940);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  sub_142558(a1, v14 - v5);
  v7 = type metadata accessor for ActionButton();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1425C8(v6);
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v8 = *(v6 + 2);
    v9 = *(v6 + 3);

    sub_142AF8(v6);
  }

  v14[0] = v8;
  v14[1] = v9;
  sub_68DC4();
  result = sub_3EB394();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

uint64_t sub_142754()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3940) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for ActionButton();
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {

    v7 = v5 + v6[6];
    v8 = sub_3E7784();
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {

      v9 = *(v7 + 32);
      if (v9 != 255)
      {
        sub_F2248(*(v7 + 16), *(v7 + 24), v9);
      }

      v10 = *(v7 + 64);
      if (v10 != 255)
      {
        sub_F2260(*(v7 + 56), v10);
      }

      v11 = *(v7 + 80);
      if (v11 != 255)
      {
        sub_F2260(*(v7 + 72), v11);
      }

      v12 = *(v7 + 96);
      if (v12 != 255)
      {
        sub_F2260(*(v7 + 88), v12);
      }

      v13 = *(v7 + 112);
      if (v13 != 255)
      {
        sub_F2260(*(v7 + 104), v13);
      }

      v14 = *(v7 + 128);
      if (v14 != 255)
      {
        sub_F2260(*(v7 + 120), v14);
      }

      v15 = *(v8 + 44);
      v16 = sub_3E7624();
      (*(*(v16 - 8) + 8))(v7 + v15, v16);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v5 + v6[8]);
    v17 = v6[9];
    v18 = sub_3EC634();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v5 + v17, 1, v18))
    {
      (*(v19 + 8))(v5 + v17, v18);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}