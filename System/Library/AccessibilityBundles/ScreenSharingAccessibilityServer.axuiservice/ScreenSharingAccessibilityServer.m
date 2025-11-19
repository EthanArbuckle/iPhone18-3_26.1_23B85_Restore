uint64_t ScreenSharingAnnotationUIService.coordinator.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = OBJC_IVAR___ScreenSharingAnnotationUIService____lazy_storage___coordinator;
  swift_beginAccess();
  sub_5518(v1 + v4, &v15, &qword_C448, &qword_5F60);
  if (v16)
  {
    return sub_1840(&v15, a1);
  }

  sub_5580(&v15, &qword_C448, &qword_5F60);
  v6 = sub_573C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_572C();
  v16 = v6;
  v17 = &protocol witness table for ScreenSharingAnnotationDisplayManager;
  *&v15 = v9;
  v10 = sub_571C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v13 = v1;
  v14 = sub_570C();
  a1[3] = v10;
  a1[4] = &protocol witness table for ScreenSharingAnnotationCoordinator;

  *a1 = v14;
  sub_17DC(a1, &v15);
  swift_beginAccess();
  sub_5624(&v15, v2 + v4, &qword_C448, &qword_5F60);
  return swift_endAccess();
}

uint64_t sub_1794(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_17DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1840(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_187C(uint64_t a1, uint64_t *a2)
{
  sub_17DC(a1, v7);
  v3 = *a2;
  sub_1840(v7, v6);
  v4 = OBJC_IVAR___ScreenSharingAnnotationUIService____lazy_storage___coordinator;
  swift_beginAccess();
  sub_5624(v6, v3 + v4, &qword_C448, &qword_5F60);
  return swift_endAccess();
}

uint64_t ScreenSharingAnnotationUIService.coordinator.setter(__int128 *a1)
{
  sub_1840(a1, v4);
  v2 = OBJC_IVAR___ScreenSharingAnnotationUIService____lazy_storage___coordinator;
  swift_beginAccess();
  sub_5624(v4, v1 + v2, &qword_C448, &qword_5F60);
  return swift_endAccess();
}

void (*ScreenSharingAnnotationUIService.coordinator.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  ScreenSharingAnnotationUIService.coordinator.getter(v3);
  return sub_19E0;
}

void sub_19E0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    sub_17DC(*a1, (v2 + 5));
    v4 = OBJC_IVAR___ScreenSharingAnnotationUIService____lazy_storage___coordinator;
    swift_beginAccess();
    sub_5624((v2 + 5), v3 + v4, &qword_C448, &qword_5F60);
    swift_endAccess();
    sub_53AC(v2);
  }

  else
  {
    sub_1840(*a1, (v2 + 5));
    v5 = OBJC_IVAR___ScreenSharingAnnotationUIService____lazy_storage___coordinator;
    swift_beginAccess();
    sub_5624((v2 + 5), v3 + v5, &qword_C448, &qword_5F60);
    swift_endAccess();
  }

  free(v2);
}

id ScreenSharingAnnotationUIService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ScreenSharingAnnotationUIService.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(*(sub_1794(&qword_C458, &qword_5F70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v32 = &v31 - v4;
  v31 = sub_1794(&qword_C460, &qword_5F78);
  v5 = *(v31 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v8 = &v31 - v7;
  v9 = sub_1794(&qword_C468, &qword_5F80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (__chkstk_darwin)();
  v13 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v31 - v14;
  v16 = &v1[OBJC_IVAR___ScreenSharingAnnotationUIService____lazy_storage___coordinator];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v17 = OBJC_IVAR___ScreenSharingAnnotationUIService_processMessageContinuation;
  v18 = sub_1794(&qword_C450, &qword_5F68);
  (*(*(v18 - 8) + 56))(&v1[v17], 1, 1, v18);
  *&v1[OBJC_IVAR___ScreenSharingAnnotationUIService_processMessageTask] = 0;
  v33.receiver = v1;
  v33.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v33, "init");
  sub_1794(&qword_C470, &qword_5F88);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  (*(v5 + 104))(v8, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v31);
  v20 = v19;
  sub_58DC();

  v21 = sub_588C();
  v22 = v32;
  (*(*(v21 - 8) + 56))(v32, 1, 1, v21);
  (*(v10 + 16))(v13, v15, v9);
  sub_586C();
  v23 = v20;
  v24 = sub_585C();
  v25 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  *(v27 + 24) = &protocol witness table for MainActor;
  (*(v10 + 32))(v27 + v25, v13, v9);
  *(v27 + v26) = v23;
  v28 = sub_3D64(0, 0, v22, &unk_5F98, v27);
  (*(v10 + 8))(v15, v9);
  v29 = *&v23[OBJC_IVAR___ScreenSharingAnnotationUIService_processMessageTask];
  *&v23[OBJC_IVAR___ScreenSharingAnnotationUIService_processMessageTask] = v28;

  return v23;
}

uint64_t sub_1F38()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1F70(uint64_t a1)
{
  v2 = (*(*(sub_1794(&qword_C480, &qword_5FA8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v9 - v3;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = sub_1794(&qword_C450, &qword_5F68);
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4, a1, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  v8 = OBJC_IVAR___ScreenSharingAnnotationUIService_processMessageContinuation;
  swift_beginAccess();
  sub_5624(v4, Strong + v8, &qword_C480, &qword_5FA8);
  swift_endAccess();
}

id ScreenSharingAnnotationUIService.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1794(&qword_C450, &qword_5F68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR___ScreenSharingAnnotationUIService_processMessageContinuation;
  swift_beginAccess();
  if (!(*(v4 + 48))(&v1[v8], 1, v3))
  {
    (*(v4 + 16))(v7, &v1[v8], v3);
    sub_58AC();
    (*(v4 + 8))(v7, v3);
  }

  if (*&v1[OBJC_IVAR___ScreenSharingAnnotationUIService_processMessageTask])
  {
    v9 = *&v1[OBJC_IVAR___ScreenSharingAnnotationUIService_processMessageTask];

    sub_1794(&qword_C478, &qword_5FA0);
    sub_58EC();
  }

  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = sub_56FC();
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v8 = *(v7 + 64) + 15;
  v5[26] = swift_task_alloc();
  v9 = sub_57AC();
  v5[27] = v9;
  v10 = *(v9 - 8);
  v5[28] = v10;
  v11 = *(v10 + 64) + 15;
  v5[29] = swift_task_alloc();
  v12 = sub_578C();
  v5[30] = v12;
  v13 = *(v12 - 8);
  v5[31] = v13;
  v14 = *(v13 + 64) + 15;
  v5[32] = swift_task_alloc();
  v15 = sub_56CC();
  v5[33] = v15;
  v16 = *(v15 - 8);
  v5[34] = v16;
  v17 = *(v16 + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v18 = *(*(sub_1794(&qword_C548, &qword_6070) - 8) + 64) + 15;
  v5[38] = swift_task_alloc();
  v19 = sub_1794(&unk_C550, &qword_6078);
  v5[39] = v19;
  v20 = *(v19 - 8);
  v5[40] = v20;
  v21 = *(v20 + 64) + 15;
  v5[41] = swift_task_alloc();
  v5[42] = sub_586C();
  v5[43] = sub_585C();
  v23 = sub_584C();
  v5[44] = v23;
  v5[45] = v22;

  return _swift_task_switch(sub_2610, v23, v22);
}

uint64_t sub_2610()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 176);
  sub_1794(&qword_C468, &qword_5F80);
  sub_58BC();
  *(v0 + 456) = enum case for AnnotationUIServicesMessageID.startAnnotationService(_:);
  *(v0 + 460) = enum case for AnnotationUIServicesMessageID.stopAnnotationService(_:);
  *(v0 + 464) = enum case for AnnotationUIServicesMessageID.sendTapGesture(_:);
  *(v0 + 468) = enum case for AnnotationUIServicesMessageID.sendDragGesture(_:);
  *(v0 + 368) = 0;
  v3 = *(v0 + 336);
  v4 = sub_585C();
  *(v0 + 376) = v4;
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  *(v0 + 384) = v6;
  *v6 = v0;
  v6[1] = sub_2730;
  v7 = *(v0 + 328);
  v8 = *(v0 + 304);
  v9 = *(v0 + 312);

  return AsyncStream.Iterator.next(isolation:)(v8, v4, &protocol witness table for MainActor, v9);
}

uint64_t sub_2730()
{
  v1 = *v0;
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 376);
  v7 = *v0;

  v4 = *(v1 + 360);
  v5 = *(v1 + 352);

  return _swift_task_switch(sub_2874, v5, v4);
}

uint64_t sub_2874()
{
  v1 = *(v0 + 304);
  v2 = sub_1794(&qword_C470, &qword_5F88);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 344);
    v5 = *(v0 + 288);
    v4 = *(v0 + 296);
    v6 = *(v0 + 280);
    v7 = *(v0 + 256);
    v8 = *(v0 + 232);
    v9 = *(v0 + 208);
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));

    v10 = *(v0 + 8);
LABEL_3:

    return v10();
  }

  v12 = *(v0 + 456);
  v14 = *(v0 + 288);
  v13 = *(v0 + 296);
  v15 = *(v0 + 264);
  v16 = *(v0 + 272);
  v17 = *(v1 + *(v2 + 48));
  (*(v16 + 32))(v13, v1, v15);
  v18 = *(v16 + 16);
  v18(v14, v13, v15);
  v19 = (*(v16 + 88))(v14, v15);
  if (v19 == v12)
  {
    v20 = *(v0 + 184);

    ScreenSharingAnnotationUIService.coordinator.getter((v0 + 136));
    v21 = *(v0 + 160);
    v22 = *(v0 + 168);
    sub_55E0((v0 + 136), v21);
    v23 = async function pointer to dispatch thunk of ScreenSharingAnnotationCoordinatorProtocol.startAnnotationUIService()[1];
    v24 = swift_task_alloc();
    *(v0 + 392) = v24;
    *v24 = v0;
    v24[1] = sub_2FC8;

    return dispatch thunk of ScreenSharingAnnotationCoordinatorProtocol.startAnnotationUIService()(v21, v22);
  }

  if (v19 == *(v0 + 460))
  {
    v25 = *(v0 + 184);

    ScreenSharingAnnotationUIService.coordinator.getter((v0 + 96));
    v26 = *(v0 + 120);
    v27 = *(v0 + 128);
    sub_55E0((v0 + 96), v26);
    v28 = async function pointer to dispatch thunk of ScreenSharingAnnotationCoordinatorProtocol.stopAnnotationUIService()[1];
    v29 = swift_task_alloc();
    *(v0 + 408) = v29;
    *v29 = v0;
    v29[1] = sub_31E4;

    return dispatch thunk of ScreenSharingAnnotationCoordinatorProtocol.stopAnnotationUIService()(v26, v27);
  }

  if (v19 == *(v0 + 464))
  {
    v30 = *(v0 + 368);
    v31 = *(v0 + 256);
    sub_579C();
    *(v0 + 424) = v30;
    if (!v30)
    {
      v32 = *(v0 + 184);
      ScreenSharingAnnotationUIService.coordinator.getter((v0 + 56));
      v33 = *(v0 + 80);
      v34 = *(v0 + 88);
      sub_55E0((v0 + 56), v33);
      v35 = async function pointer to dispatch thunk of ScreenSharingAnnotationCoordinatorProtocol.processTapGestureMessage(_:)[1];
      v36 = swift_task_alloc();
      *(v0 + 432) = v36;
      *v36 = v0;
      v36[1] = sub_3400;
      v37 = *(v0 + 256);

      return dispatch thunk of ScreenSharingAnnotationCoordinatorProtocol.processTapGestureMessage(_:)(v37, v33, v34);
    }

LABEL_21:
    v40 = *(v0 + 344);
    v42 = *(v0 + 320);
    v41 = *(v0 + 328);
    v43 = *(v0 + 312);
    v44 = *(v0 + 296);
    v45 = *(v0 + 264);
    v46 = *(v0 + 272);

    (*(v46 + 8))(v44, v45);
    (*(v42 + 8))(v41, v43);
    v47 = *(v0 + 328);
    v48 = *(v0 + 296);
    v49 = *(v0 + 304);
    v51 = *(v0 + 280);
    v50 = *(v0 + 288);
    v52 = *(v0 + 256);
    v53 = *(v0 + 232);
    v54 = *(v0 + 208);

    v10 = *(v0 + 8);
    goto LABEL_3;
  }

  if (v19 == *(v0 + 468))
  {
    v38 = *(v0 + 368);
    v39 = *(v0 + 232);
    sub_57BC();
    *(v0 + 440) = v38;
    if (v38)
    {
      goto LABEL_21;
    }

    v82 = *(v0 + 184);
    ScreenSharingAnnotationUIService.coordinator.getter((v0 + 16));
    v83 = *(v0 + 40);
    v84 = *(v0 + 48);
    sub_55E0((v0 + 16), v83);
    v85 = async function pointer to dispatch thunk of ScreenSharingAnnotationCoordinatorProtocol.processDragGestureMessage(_:)[1];
    v86 = swift_task_alloc();
    *(v0 + 448) = v86;
    *v86 = v0;
    v86[1] = sub_3628;
    v87 = *(v0 + 232);

    return dispatch thunk of ScreenSharingAnnotationCoordinatorProtocol.processDragGestureMessage(_:)(v87, v83, v84);
  }

  else
  {
    v55 = *(v0 + 296);
    v56 = *(v0 + 280);
    v57 = *(v0 + 264);
    v58 = *(v0 + 208);

    sub_56DC();
    v18(v56, v55, v57);
    v59 = sub_56EC();
    v60 = sub_591C();
    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 280);
    v63 = *(v0 + 264);
    v64 = (*(v0 + 272) + 8);
    if (v61)
    {
      v65 = swift_slowAlloc();
      *v65 = 134349056;
      v66 = sub_56BC();
      v67 = *v64;
      (*v64)(v62, v63);
      *(v65 + 4) = v66;
      _os_log_impl(&dword_0, v59, v60, "Unhandled service message: %{public}ld", v65, 0xCu);
    }

    else
    {
      v67 = *v64;
      (*v64)(*(v0 + 280), *(v0 + 264));
    }

    v69 = *(v0 + 288);
    v68 = *(v0 + 296);
    v70 = *(v0 + 264);
    v71 = *(v0 + 272);
    v73 = *(v0 + 200);
    v72 = *(v0 + 208);
    v74 = *(v0 + 192);

    (*(v73 + 8))(v72, v74);
    v67(v68, v70);
    v67(v69, v70);
    v75 = *(v0 + 336);
    v76 = sub_585C();
    *(v0 + 376) = v76;
    v77 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v78 = swift_task_alloc();
    *(v0 + 384) = v78;
    *v78 = v0;
    v78[1] = sub_2730;
    v79 = *(v0 + 328);
    v80 = *(v0 + 304);
    v81 = *(v0 + 312);

    return AsyncStream.Iterator.next(isolation:)(v80, v76, &protocol witness table for MainActor, v81);
  }
}

uint64_t sub_2FC8()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 360);
  v6 = *(v2 + 352);
  if (v0)
  {
    v7 = sub_3850;
  }

  else
  {
    v7 = sub_3104;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_3104()
{
  (*(v0[34] + 8))(v0[37], v0[33]);
  sub_53AC(v0 + 17);
  v0[46] = v0[50];
  v1 = v0[42];
  v2 = sub_585C();
  v0[47] = v2;
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[48] = v4;
  *v4 = v0;
  v4[1] = sub_2730;
  v5 = v0[41];
  v6 = v0[38];
  v7 = v0[39];

  return AsyncStream.Iterator.next(isolation:)(v6, v2, &protocol witness table for MainActor, v7);
}

uint64_t sub_31E4()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 360);
  v6 = *(v2 + 352);
  if (v0)
  {
    v7 = sub_3968;
  }

  else
  {
    v7 = sub_3320;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_3320()
{
  (*(v0[34] + 8))(v0[37], v0[33]);
  sub_53AC(v0 + 12);
  v0[46] = v0[52];
  v1 = v0[42];
  v2 = sub_585C();
  v0[47] = v2;
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[48] = v4;
  *v4 = v0;
  v4[1] = sub_2730;
  v5 = v0[41];
  v6 = v0[38];
  v7 = v0[39];

  return AsyncStream.Iterator.next(isolation:)(v6, v2, &protocol witness table for MainActor, v7);
}

uint64_t sub_3400()
{
  v1 = *v0;
  v2 = *(*v0 + 432);
  v6 = *v0;

  v3 = *(v1 + 360);
  v4 = *(v1 + 352);

  return _swift_task_switch(sub_3520, v4, v3);
}

uint64_t sub_3520()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[34];
  (*(v0[31] + 8))(v0[32], v0[30]);
  (*(v3 + 8))(v1, v2);
  sub_53AC(v0 + 7);
  v0[46] = v0[53];
  v4 = v0[42];
  v5 = sub_585C();
  v0[47] = v5;
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[48] = v7;
  *v7 = v0;
  v7[1] = sub_2730;
  v8 = v0[41];
  v9 = v0[38];
  v10 = v0[39];

  return AsyncStream.Iterator.next(isolation:)(v9, v5, &protocol witness table for MainActor, v10);
}

uint64_t sub_3628()
{
  v1 = *v0;
  v2 = *(*v0 + 448);
  v6 = *v0;

  v3 = *(v1 + 360);
  v4 = *(v1 + 352);

  return _swift_task_switch(sub_3748, v4, v3);
}

uint64_t sub_3748()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[34];
  (*(v0[28] + 8))(v0[29], v0[27]);
  (*(v3 + 8))(v1, v2);
  sub_53AC(v0 + 2);
  v0[46] = v0[55];
  v4 = v0[42];
  v5 = sub_585C();
  v0[47] = v5;
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[48] = v7;
  *v7 = v0;
  v7[1] = sub_2730;
  v8 = v0[41];
  v9 = v0[38];
  v10 = v0[39];

  return AsyncStream.Iterator.next(isolation:)(v9, v5, &protocol witness table for MainActor, v10);
}

uint64_t sub_3850()
{
  v1 = v0[43];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  v5 = v0[37];
  v6 = v0[33];
  v7 = v0[34];

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_53AC(v0 + 17);
  v8 = v0[50];
  v9 = v0[41];
  v11 = v0[37];
  v10 = v0[38];
  v13 = v0[35];
  v12 = v0[36];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[26];

  v17 = v0[1];

  return v17();
}

uint64_t sub_3968()
{
  v1 = v0[43];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  v5 = v0[37];
  v6 = v0[33];
  v7 = v0[34];

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_53AC(v0 + 12);
  v8 = v0[52];
  v9 = v0[41];
  v11 = v0[37];
  v10 = v0[38];
  v13 = v0[35];
  v12 = v0[36];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[26];

  v17 = v0[1];

  return v17();
}

uint64_t sub_3A80()
{
  v1 = sub_1794(&qword_C468, &qword_5F80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_3B64()
{
  v2 = *(sub_1794(&qword_C468, &qword_5F80) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_3C70;

  return sub_234C(v5, v6, v7, v0 + v3, v4);
}

uint64_t sub_3C70()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_3D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_1794(&qword_C458, &qword_5F70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_5518(a3, v23 - v9, &qword_C458, &qword_5F70);
  v11 = sub_588C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_5580(v10, &qword_C458, &qword_5F70);
  }

  else
  {
    sub_587C();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_584C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_582C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_5580(a3, &qword_C458, &qword_5F70);

      return v21;
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

  sub_5580(a3, &qword_C458, &qword_5F70);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

unint64_t ScreenSharingAnnotationUIService.processMessage(_:withIdentifier:fromClientWithIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v63 = a1;
  v64 = a4;
  v62 = a3;
  v73 = a2;
  v68 = sub_1794(&qword_C470, &qword_5F88);
  v6 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v69 = &v59 - v7;
  v8 = sub_1794(&qword_C488, &qword_5FB0);
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  __chkstk_darwin(v8);
  v65 = &v59 - v10;
  v11 = sub_56FC();
  v74 = *(v11 - 8);
  v75 = v11;
  v12 = *(v74 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v70 = &v59 - v16;
  v17 = sub_1794(&qword_C490, &qword_5FB8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v59 - v19;
  v21 = sub_56CC();
  v71 = *(v21 - 8);
  v22 = *(v71 + 64);
  __chkstk_darwin(v21);
  v72 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1794(&qword_C480, &qword_5FA8);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v59 - v26;
  v28 = sub_1794(&qword_C450, &qword_5F68);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v59 - v31;
  v33 = OBJC_IVAR___ScreenSharingAnnotationUIService_processMessageContinuation;
  swift_beginAccess();
  sub_5518(v5 + v33, v27, &qword_C480, &qword_5FA8);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_5580(v27, &qword_C480, &qword_5FA8);
    sub_56DC();
    v34 = sub_56EC();
    v35 = sub_58FC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "Message arrived before monitoring enabled", v36, 2u);
    }

    (*(v74 + 8))(v15, v75);
    return sub_5074(&_swiftEmptyArrayStorage);
  }

  else
  {
    (*(v29 + 32))(v32, v27, v28);
    sub_56AC();
    v38 = v71;
    if ((*(v71 + 48))(v20, 1, v21) == 1)
    {
      sub_5580(v20, &qword_C490, &qword_5FB8);
      v39 = sub_57CC();
      sub_51B0();
      swift_allocError();
      (*(*(v39 - 8) + 104))(v40, enum case for AnnotationUIServiceError.unknownServiceUIMessage(_:), v39);
      swift_willThrow();
      return (*(v29 + 8))(v32, v28);
    }

    else
    {
      v41 = v21;
      (*(v38 + 32))(v72, v20, v21);
      v61 = v32;
      if (v63)
      {
        v42 = v63;
      }

      else
      {
        v42 = sub_5074(&_swiftEmptyArrayStorage);
      }

      v43 = v64;
      v44 = v70;

      v64 = v42;
      v63 = sub_57FC();
      v46 = v45;
      sub_56DC();

      v47 = sub_56EC();
      v48 = sub_590C();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v60 = v41;
        v50 = v49;
        v76 = swift_slowAlloc();
        *v50 = 134349570;
        *(v50 + 4) = v73;
        *(v50 + 12) = 2082;
        *(v50 + 14) = sub_49C0(v62, v43, &v76);
        *(v50 + 22) = 2082;
        v51 = v38;
        v52 = sub_49C0(v63, v46, &v76);

        *(v50 + 24) = v52;
        v38 = v51;
        _os_log_impl(&dword_0, v47, v48, "Service got a message: %{public}ld from client: %{public}s. Payload: %{public}s", v50, 0x20u);
        swift_arrayDestroy();

        v41 = v60;

        (*(v74 + 8))(v70, v75);
      }

      else
      {

        (*(v74 + 8))(v44, v75);
      }

      v53 = v69;
      v54 = *(v68 + 48);
      v55 = v72;
      (*(v38 + 16))(v69, v72, v41);
      *&v53[v54] = v64;
      v56 = v65;
      v57 = v61;
      sub_589C();
      (*(v66 + 8))(v56, v67);
      v58 = sub_5074(&_swiftEmptyArrayStorage);
      (*(v38 + 8))(v55, v41);
      (*(v29 + 8))(v57, v28);
      return v58;
    }
  }
}

uint64_t sub_49C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_4A8C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_53F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_53AC(v11);
  return v7;
}

unint64_t sub_4A8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_4B98(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_596C();
    a6 = v11;
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

char *sub_4B98(uint64_t a1, unint64_t a2)
{
  v4 = sub_4BE4(a1, a2);
  sub_4D14(&off_8448);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_4BE4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_4E00(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_596C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_583C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_4E00(v10, 0);
        result = sub_595C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_4D14(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
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

  result = sub_4E74(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_4E00(uint64_t a1, uint64_t a2)
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

  sub_1794(&qword_C530, &qword_6058);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_4E74(char *result, int64_t a2, char a3, char *a4)
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
    sub_1794(&qword_C530, &qword_6058);
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

unint64_t sub_4F68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_593C(*(v2 + 40));

  return sub_4FAC(a1, v4);
}

unint64_t sub_4FAC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_5468(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_594C();
      sub_54C4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_5074(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1794(&qword_C538, &qword_6060);
    v3 = sub_597C();
    v4 = a1 + 32;

    while (1)
    {
      sub_5518(v4, v13, &qword_C540, &qword_6068);
      result = sub_4F68(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_5458(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_51B0()
{
  result = qword_C498;
  if (!qword_C498)
  {
    sub_57CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C498);
  }

  return result;
}

uint64_t type metadata accessor for ScreenSharingAnnotationUIService()
{
  result = qword_C5D0;
  if (!qword_C5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_525C()
{
  sub_5300();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_5300()
{
  if (!qword_C4C8)
  {
    sub_5364(&qword_C450, &qword_5F68);
    v0 = sub_592C();
    if (!v1)
    {
      atomic_store(v0, &qword_C4C8);
    }
  }
}

uint64_t sub_5364(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_53AC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_53F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_5458(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_5518(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1794(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_5580(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1794(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_55E0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_5624(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1794(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}