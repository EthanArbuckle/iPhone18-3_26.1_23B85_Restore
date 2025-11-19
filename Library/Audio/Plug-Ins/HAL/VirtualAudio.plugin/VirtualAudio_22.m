void sub_1CD890()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_4:
    v4 = v0[2];

    v5 = v0[11];
    v6 = v0[7];
    v7 = v0[8];

    v8 = v0[1];

    v8();
    return;
  }

  (*(v3 + 32))(v0[7], v1, v2);
  if (sub_5134BC())
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    goto LABEL_4;
  }

  v9 = v0[15];
  v10 = v0[7];
  v11 = v0[4] + v0[13];
  os_unfair_lock_lock(v11);
  sub_1CDD04((v11 + 8));
  os_unfair_lock_unlock(v11);
  if (!v9)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    v12 = sub_51338C();
    v13 = sub_1D1BD4(&qword_6E4980, &type metadata accessor for InferenceMonitor.AsyncIterator);
    v14 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_1CD724;
    v16 = v0[8];

    dispatch thunk of AsyncIteratorProtocol.next()(v16, v12, v13);
  }
}

uint64_t sub_1CDAA4()
{
  v1 = v0[4];
  v0[3] = v0[15];
  sub_1D1138(&qword_6E4988, &qword_5170C8);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1CDB3C, v1, 0);
}

uint64_t sub_1CDB3C()
{
  v1 = v0[2];

  if (qword_6E4C40 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_51342C();
  sub_1D129C(v3, qword_70A508);
  swift_errorRetain();
  v4 = sub_51341C();
  v5 = sub_5134CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v4, v5, "VA ModelManagerMonitor:: exception while executing Task...%@", v8, 0xCu);
    sub_1D1C1C(v9, &qword_6E4990, &unk_5170D0);
  }

  else
  {
  }

  v11 = v0[11];
  v12 = v0[7];
  v13 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1CDD04(uint64_t *a1)
{
  v2 = sub_5133BC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *a1 + 64;
  v9 = 1 << *(*a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(*a1 + 64);
  v12 = (v9 + 63) >> 6;
  v27 = enum case for InferenceMonitor.Event.inferencesRunning(_:);
  v25 = (v4 + 8);
  v26 = (v4 + 104);
  v28 = v7;

  v14 = 0;
  *&v15 = 67109120;
  v23 = v15;
  v24 = v6;
  while (v11)
  {
LABEL_10:
    v17 = *(v28 + 56) + ((v14 << 10) | (16 * __clz(__rbit64(v11))));
    v18 = *(v17 + 8);
    v29 = *v17;
    (*v26)(v6, v27, v2);

    v30 = sub_5133AC();
    (*v25)(v6, v2);
    if (qword_6E4C40 != -1)
    {
      swift_once();
    }

    v19 = sub_51342C();
    sub_1D129C(v19, qword_70A508);
    v20 = sub_51341C();
    v21 = sub_5134CC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = v23;
      *(v22 + 4) = v30 & 1;
      _os_log_impl(&dword_0, v20, v21, "VA ModelManagerMonitor calling observer with inferencesRunning  = %{BOOL}d", v22, 8u);
      v6 = v24;
    }

    v11 &= v11 - 1;

    v31 = v30 & 1;
    v29(&v31);
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
    }

    v11 = *(v8 + 8 * v16);
    ++v14;
    if (v11)
    {
      v14 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CDFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D1138(&qword_6E48F8, &qword_516E88);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1D15E8(a3, v27 - v11);
  v13 = sub_51349C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D1C1C(v12, &qword_6E48F8, &qword_516E88);
  }

  else
  {
    sub_51348C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_51346C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_51345C() + 32;
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

      sub_1D1C1C(a3, &qword_6E48F8, &qword_516E88);

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

  sub_1D1C1C(a3, &qword_6E48F8, &qword_516E88);
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

uint64_t sub_1CE484(uint64_t a1, void *aBlock, const void *a3, uint64_t a4)
{
  v4[2] = a4;
  v7 = _Block_copy(aBlock);
  v4[3] = _Block_copy(a3);
  v8 = swift_allocObject();
  v4[4] = v8;
  *(v8 + 16) = v7;

  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1CE588;

  return sub_1CD0B0(a1, sub_1D1984, v8);
}

uint64_t sub_1CE588(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v10 = *v1;

  (*(v6 + 16))(v6, a1);
  _Block_release(*(v3 + 24));
  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_1CE6FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1CE71C, v1, 0);
}

uint64_t sub_1CE71C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = (v2 + OBJC_IVAR___VAModelManagerMonitor_mEventObservers);
  os_unfair_lock_lock((v2 + OBJC_IVAR___VAModelManagerMonitor_mEventObservers));
  sub_1CE7AC(&v3[2], v1, v2);
  os_unfair_lock_unlock(v3);
  v4 = v0[1];

  return v4();
}

void sub_1CE7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_6E4C40 != -1)
  {
    swift_once();
  }

  v6 = sub_51342C();
  sub_1D129C(v6, qword_70A508);
  v7 = sub_51341C();
  v8 = sub_5134CC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "VA ModelManagerMonitor::unregister_from_inference_monitor", v9, 2u);
  }

  v10 = sub_1D0E20(a2);
  sub_1D11AC(v10);
  v11 = *(*a1 + 16);
  v12 = sub_51341C();
  v13 = sub_5134CC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v11;
    _os_log_impl(&dword_0, v12, v13, "VA ModelManagerMonitor:: remaining observers count %ld", v14, 0xCu);
  }

  if (!v11)
  {
    v15 = OBJC_IVAR___VAModelManagerMonitor_mInferenceTask;
    if (*(a3 + OBJC_IVAR___VAModelManagerMonitor_mInferenceTask))
    {
      v16 = *(a3 + OBJC_IVAR___VAModelManagerMonitor_mInferenceTask);

      sub_5134AC();

      v17 = *(a3 + v15);
    }

    *(a3 + v15) = 0;
  }
}

uint64_t sub_1CEB6C(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);

  return _swift_task_switch(sub_1CEBEC, a3, 0);
}

uint64_t sub_1CEBEC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = (v1 + OBJC_IVAR___VAModelManagerMonitor_mEventObservers);
  os_unfair_lock_lock((v1 + OBJC_IVAR___VAModelManagerMonitor_mEventObservers));
  sub_1CE7AC(&v4[2], v3, v1);
  os_unfair_lock_unlock(v4);

  (*(v2 + 16))(v2);
  _Block_release(*(v0 + 32));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1CECA4()
{
  v1 = v0 + OBJC_IVAR___VAModelManagerMonitor_mEventObservers;
  os_unfair_lock_lock((v0 + OBJC_IVAR___VAModelManagerMonitor_mEventObservers));
  v3 = v1 + 8;
  v2 = *(v1 + 8);

  *(v1 + 8) = &_swiftEmptyDictionarySingleton;
  os_unfair_lock_unlock(v1);
  v4 = OBJC_IVAR___VAModelManagerMonitor_mInferenceTask;
  if (*(v0 + OBJC_IVAR___VAModelManagerMonitor_mInferenceTask))
  {
    v5 = *(v0 + OBJC_IVAR___VAModelManagerMonitor_mInferenceTask);

    sub_5134AC();

    v6 = *(v0 + v4);
  }

  *(v0 + v4) = 0;

  v7 = OBJC_IVAR___VAModelManagerMonitor_mInferenceMonitor;
  v8 = sub_5133DC();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + v4);

  sub_1D1C1C(v3, &qword_6E4908, &qword_516EE0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1CEDBC()
{
  sub_1CECA4();

  return _swift_defaultActor_deallocate(v0);
}

id sub_1CEDE8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_5133CC();
  *&v3[OBJC_IVAR___VAModelManagerMonitor_mInferenceTask] = 0;
  v4 = &v3[OBJC_IVAR___VAModelManagerMonitor_mEventObservers];
  v5 = sub_1D1024(&_swiftEmptyArrayStorage);
  v8 = 0;
  nullsub_44(&v8);
  *v4 = v8;
  *(v4 + 1) = v5;
  v7.receiver = v3;
  v7.super_class = v0;
  return objc_msgSendSuper2(&v7, "init");
}

id sub_1CEE94()
{
  swift_defaultActor_initialize();
  sub_5133CC();
  *&v0[OBJC_IVAR___VAModelManagerMonitor_mInferenceTask] = 0;
  v1 = &v0[OBJC_IVAR___VAModelManagerMonitor_mEventObservers];
  v2 = sub_1D1024(&_swiftEmptyArrayStorage);
  v5 = 0;
  nullsub_44(&v5);
  *v1 = v5;
  *(v1 + 1) = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for VAModelManagerMonitor();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_1CEF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1CEF90, v4, 0);
}

uint64_t sub_1CEF90()
{
  if (qword_6E4C40 != -1)
  {
    swift_once();
  }

  v1 = sub_51342C();
  sub_1D129C(v1, qword_70A508);
  v2 = sub_51341C();
  v3 = sub_5134CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "VA ModelManagerAssertion:: acquiring model manager assertion", v4, 2u);
  }

  v5 = v0[6];

  if (*(v5 + 112))
  {
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[5];
    v9 = v0[3];
    sub_51340C();
    v10 = async function pointer to Assertion.__allocating_init(policy:description:)[1];

    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = sub_1CF154;
    v12 = v0[4];
    v13 = v0[5];
    v15 = v0[2];
    v14 = v0[3];

    return Assertion.__allocating_init(policy:description:)(v15, v14, v12, v13);
  }
}

uint64_t sub_1CF154(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 56);
  v7 = *v2;

  v8 = *(v4 + 48);
  if (v1)
  {

    v9 = sub_1CF304;
  }

  else
  {
    *(v5 + 64) = a1;
    v9 = sub_1CF298;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1CF298()
{
  v1 = v0[6];
  v2 = *(v1 + 112);
  *(v1 + 112) = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1CF304()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1CF500(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = sub_51344C();
  v7 = v6;
  v4[4] = v6;
  v8 = sub_51344C();
  v10 = v9;
  v4[5] = v9;

  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1CF5FC;

  return sub_1CEF68(v5, v7, v8, v10);
}

uint64_t sub_1CF5FC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v9 = *v0;

  (*(v5 + 16))(v5);
  _Block_release(*(v1 + 24));
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1CF7A4()
{
  if (qword_6E4C40 != -1)
  {
    swift_once();
  }

  v1 = sub_51342C();
  sub_1D129C(v1, qword_70A508);
  v2 = sub_51341C();
  v3 = sub_5134CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "VA ModelManagerAssertion:: invalidating model manager assertion", v4, 2u);
  }

  v5 = v0[2];

  v6 = *(v5 + 112);
  v0[3] = v6;
  if (v6)
  {
    v7 = async function pointer to Assertion.invalidate()[1];

    v8 = swift_task_alloc();
    v0[4] = v8;
    *v8 = v0;
    v8[1] = sub_1CF940;

    return Assertion.invalidate()();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1CF940()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return _swift_task_switch(sub_1CFA6C, v3, 0);
}

uint64_t sub_1CFA6C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1CFC4C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1CFCF4;

  return sub_1CF784();
}

uint64_t sub_1CFCF4()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  (*(v3 + 16))(v3);
  _Block_release(*(v1 + 24));
  v5 = *(v7 + 8);

  return v5();
}

id sub_1CFE3C()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_1CFEE0()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1CFF18()
{
  v0 = sub_51342C();
  sub_1D19B4(v0, qword_70A508);
  sub_1D129C(v0, qword_70A508);
  sub_1D1A18();
  sub_5134DC();
  return sub_51343C();
}

uint64_t sub_1CFFAC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D00A4;

  return v7(a1);
}

uint64_t sub_1D00A4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D019C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1D1C80;

  return v7();
}

uint64_t sub_1D0284(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1D036C;

  return v8();
}

uint64_t sub_1D036C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D0460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D1138(&qword_6E48F8, &qword_516E88);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1D15E8(a3, v25 - v11);
  v13 = sub_51349C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D1C1C(v12, &qword_6E48F8, &qword_516E88);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_51348C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_51346C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_51345C() + 32;
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

    sub_1D1C1C(a3, &qword_6E48F8, &qword_516E88);

    return v23;
  }

LABEL_8:
  sub_1D1C1C(a3, &qword_6E48F8, &qword_516E88);
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

uint64_t sub_1D074C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D1C84;

  return v7(a1);
}

unint64_t sub_1D0844(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_51353C();

  return sub_1D0888(a1, v4);
}

unint64_t sub_1D0888(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D08F4(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  result = sub_1D0844(a3);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_1D0A48(v17, isUniquelyReferenced_nonNull_native);
    result = sub_1D0844(a3);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    result = sub_51352C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = result;
    sub_1D0CBC();
    result = v22;
    v19 = v11;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v19 = v11;
  if (v4)
  {
LABEL_7:
    v20 = (v19[7] + 16 * result);
    result = *v20;
    v21 = v20[1];
    *v20 = a1;
    v20[1] = a2;
LABEL_12:
    *v5 = v19;
    return result;
  }

LABEL_10:
  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a3;
  v23 = (v19[7] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  v24 = v19[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v16)
  {
    result = 0;
    v19[2] = v25;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D0A48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1D1138(&qword_6E4968, &qword_5170A0);
  result = sub_51350C();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      result = sub_51353C();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void *sub_1D0CBC()
{
  v1 = v0;
  sub_1D1138(&qword_6E4968, &qword_5170A0);
  v2 = *v0;
  v3 = sub_5134FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D0E20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1D0844(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D0CBC();
    v9 = v15;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  sub_1D0EB4(v10, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_1D0EB4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_5134EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_51353C();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D1024(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1D1138(&qword_6E4968, &qword_5170A0);
  v3 = sub_51351C();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_1D0844(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_1D0844(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1138(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1D1180(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1D11AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for VAModelManagerMonitor()
{
  result = qword_6E4D70;
  if (!qword_6E4D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1208()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1C80;

  return sub_1CD444(v3, v4, v5, v2);
}

uint64_t sub_1D129C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1D1300()
{
  result = sub_5133DC();
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

uint64_t sub_1D13B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D1C80;

  return sub_1CFC4C(v2, v3);
}

uint64_t sub_1D145C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D1C80;

  return sub_1D019C(v2, v3, v5);
}

uint64_t sub_1D151C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D1C80;

  return sub_1D0284(a1, v4, v5, v7);
}

uint64_t sub_1D15E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1138(&qword_6E48F8, &qword_516E88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1658(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D1C80;

  return sub_1D074C(a1, v5);
}

uint64_t sub_1D1710()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D1C80;

  return sub_1CF500(v2, v3, v5, v4);
}

uint64_t sub_1D17D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D036C;

  return sub_1CEB6C(v2, v3, v4);
}

uint64_t sub_1D1884()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D1C80;

  return sub_1CE484(v2, v3, v5, v4);
}

uint64_t sub_1D1944()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t *sub_1D19B4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_1D1A18()
{
  result = qword_6E4970;
  if (!qword_6E4970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_6E4970);
  }

  return result;
}

uint64_t sub_1D1A64(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D1C80;

  return sub_1CFFAC(a1, v5);
}

uint64_t sub_1D1B1C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D036C;

  return sub_1CFFAC(a1, v5);
}

uint64_t sub_1D1BD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1C1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1D1138(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D1C88(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_5170E0;
  *(a1 + 24) = xmmword_5170F0;
  *(a1 + 40) = 0x3F90624DD2F1A9FCLL;
  *(a1 + 48) = -1;
  if ((byte_6E4D80 & 1) == 0)
  {
    if (getenv("CA_NoVector"))
    {
      fwrite("CA_NoVector set; Vector unit optimized routines will be bypassed\n", 0x41uLL, 1uLL, __stderrp);
    }

    else
    {
      byte_6E4D80 = 1;
    }
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 48) = 0xFFFFFFFFLL;
  return a1;
}

uint64_t sub_1D1D48(_DWORD *a1, _DWORD *a2, BOOL *a3)
{
  *a2 = 0;
  if (a1[2] != 1819304813)
  {
    return 0;
  }

  if (a1[5] != 1)
  {
    return 0;
  }

  v3 = a1[6];
  if (v3 != a1[4])
  {
    return 0;
  }

  v4 = a1[8];
  if (v3 < v4 >> 3)
  {
    return 0;
  }

  v5 = a1[7];
  if (!v5)
  {
    return 0;
  }

  v6 = a1[3];
  if (a3)
  {
    *a3 = (a1[3] & 0x20) == 0;
  }

  if ((v6 & 0x20) == 0)
  {
    v7 = v3 == v3 / v5 * v5;
    v3 /= v5;
    if (!v7)
    {
      return 0;
    }
  }

  result = 1;
  if ((v6 & 2) == 0 && 8 * v3 == v4)
  {
    if (v6)
    {
      if ((v6 & 0x1F84) != 0)
      {
        return 0;
      }

      if (v3 != 4)
      {
        if (v3 != 8)
        {
          return result;
        }

        LODWORD(result) = 4;
      }

      goto LABEL_29;
    }

    if ((v6 & 4) == 0)
    {
      return result;
    }

    v9 = (v6 >> 7) & 0x3F;
    if (v9 == 24 && v3 == 4)
    {
      LODWORD(result) = 3;
LABEL_29:
      *a2 = result;
      return 1;
    }

    if (!v9 && v3 == 4)
    {
      LODWORD(result) = 5;
      goto LABEL_29;
    }

    if (!v9 && v3 == 2)
    {
      LODWORD(result) = 2;
      goto LABEL_29;
    }
  }

  return result;
}

void sub_1D1E5C(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

uint64_t sub_1D1E9C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*(a2 + 8) - *a2 != 48 || v2[1] - *v2 < 0x808uLL || v2[4] - v2[3] < 0x808uLL)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 16);
      if (v8)
      {
        v9 = *(v8 + 72);
        v10 = *(a1 + 88);
        v11 = *(a1 + 84) + 1;
        *(a1 + 84) = v11;
        v12 = (*(a1 + 68) / *(a1 + 64)) * (v11 - v10);
        if (v12 >= *(a1 + 72))
        {
          *(a1 + 88) = v11;
          *(a1 + 80) = 0;
        }

        else if (v12 >= *(a1 + 76) && (*(a1 + 80) & 1) == 0)
        {
          *(a1 + 80) = 1;
          v13 = *(a1 + 40);
          if (!v13 || (v14 = *(a1 + 32), (v15 = std::__shared_weak_count::lock(v13)) == 0))
          {
            sub_175EA0();
          }

          v16 = v15;
          p_shared_weak_owners = &v15->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v15);
          block[0] = _NSConcreteStackBlock;
          block[1] = 1174405120;
          block[2] = sub_1D215C;
          block[3] = &unk_6B5F68;
          block[4] = a1;
          block[5] = v14;
          v40 = v16;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          v41 = v8;
          v42 = v7;
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          dispatch_async(v9, block);
          if (v42)
          {
            sub_1A8C0(v42);
          }

          if (v40)
          {
            std::__shared_weak_count::__release_weak(v40);
          }

          std::__shared_weak_count::__release_weak(v16);
        }
      }

      sub_1A8C0(v7);
    }
  }

  v18 = *(a1 + 144);
  if (*(a1 + 148) == v18)
  {
    return 0;
  }

  v20 = *(a1 + 104) - *(a1 + 96);
  if (!v20 || *(a1 + 128) == *(a1 + 120))
  {
    return 0;
  }

  v21 = v20 >> 3;
  *(a1 + 148) = v18;
  v22 = **a2;
  v23 = *(*a2 + 24);
  if (v21 >= 0x200)
  {
    v24 = 512;
  }

  else
  {
    v24 = v21;
  }

  v22[1] = 4 * v24;
  bzero(v22 + 2, 0x800uLL);
  v25 = *(a1 + 96);
  if (v24 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = 2;
  do
  {
    v28 = *v25++;
    v29 = v28;
    *&v22[v27++] = v29;
    --v26;
  }

  while (v26);
  v30 = *(a1 + 144);
  *v23 = v30;
  *v22 = v30;
  v32 = *(a1 + 120);
  v31 = *(a1 + 128);
  if (((v31 - v32) >> 3) >= 0x200)
  {
    LODWORD(v33) = 512;
  }

  else
  {
    v33 = (v31 - v32) >> 3;
  }

  v23[1] = 4 * v33;
  v34 = (v23 + 2);
  bzero(v34, 0x800uLL);
  if (v31 == v32)
  {
    return 4112;
  }

  v35 = *(a1 + 120);
  if (v33 <= 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = v33;
  }

  result = 4112;
  do
  {
    v37 = *v35++;
    v38 = v37;
    *v34++ = v38;
    --v36;
  }

  while (v36);
  return result;
}

void sub_1D215C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = a1[7];
        *(v3 + 104) = *(v3 + 96);
        *(v3 + 128) = *(v3 + 120);
        v7 = *(v3 + 84);
        v9 = *(v3 + 64);
        v8 = *(v3 + 68);
        (*(*v6 + 176))(v6, 2344);
        (*(*v6 + 176))(v6, 2569, v3 + 120);
        *(v3 + 144) = (v8 / v9) * v7;
      }

      sub_1A8C0(v5);
    }
  }
}

void sub_1D249C(void *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  JUMPOUT(0x1D2494);
}

void sub_1D24AC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_1A8C0(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *sub_1D24FC(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1D2530(uint64_t result, float a2)
{
  *(result + 72) = a2;
  *(result + 76) = fmaxf(a2 + -0.1, 0.0);
  return result;
}

uint64_t sub_1D254C(uint64_t a1, int a2, float a3, float a4)
{
  *(a1 + 64) = a3;
  *(a1 + 68) = a2;
  result = (*(*a1 + 64))(a1, a4);
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  return result;
}

void sub_1D25B0(uint64_t a1)
{
  if (atomic_exchange_explicit((a1 + 8), 1u, memory_order_acquire))
  {
    v2 = -200;
    while (!__CFADD__(v2++, 1))
    {
      usleep(0x1388u);
      if ((atomic_exchange_explicit((a1 + 8), 1u, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v6 = sub_5544(26);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = "AncFilterLoggerV4.cpp";
      v10 = 1024;
      v11 = 130;
      v12 = 2080;
      v13 = "CloseFile";
      v14 = 1024;
      v15 = 1000;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d %s failed to aquire lock after %u ms", &v8, 0x22u);
    }
  }

  else
  {
LABEL_5:
    v4 = *(a1 + 48);
    if (v4)
    {
      fclose(v4);
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      fclose(v5);
    }

    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    atomic_store(0, (a1 + 8));
  }
}

BOOL sub_1D26F4(void *a1, const char **a2)
{
  v3 = a1[3];
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (!a1[2])
  {
    goto LABEL_14;
  }

  v7 = *a2;
  if (a2[1] - *a2 != 48)
  {
    goto LABEL_14;
  }

  v8 = *a2;
  if (v7[23] < 0)
  {
    v8 = *v7;
  }

  v9 = v7 + 24;
  if (v7[47] < 0)
  {
    v9 = *v9;
  }

  if ((!a1[6] || !a1[7]) && (v10 = fopen(v8, "w"), (a1[6] = v10) != 0))
  {
    v11 = fopen(v9, "w");
    a1[7] = v11;
    v12 = v11 != 0;
  }

  else
  {
LABEL_14:
    v12 = 0;
  }

  sub_1A8C0(v6);
  return v12;
}

void sub_1D27EC(void *a1)
{
  sub_1D2824(a1);

  operator delete();
}

void *sub_1D2824(void *a1)
{
  *a1 = off_6B5F10;
  sub_1D25B0(a1);
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    a1[13] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  *a1 = off_6CE430;
  v5 = a1[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_1D2B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  __cxa_free_exception(v14);
  sub_1A8C0(v13);
  v16 = v10[6].__vftable;
  if (v16)
  {
    v10[6].__shared_owners_ = v16;
    operator delete(v16);
  }

  v17 = *a10;
  if (*a10)
  {
    v10[5].__shared_owners_ = v17;
    operator delete(v17);
  }

  shared_weak_owners = v10[2].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  v10[1].__vftable = v12;
  v19 = v10[2].__vftable;
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_1D2BB8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6B5FA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

unint64_t sub_1D2C2C(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    return 0;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (*(a1 + 64))
  {
    if ((a2 == 0) != (*(a1 + 8) == 0))
    {
      v9 = *(a1 + 56);
      v10 = *(a1 + 52) + 1;
      *(a1 + 52) = v10;
      if (((*(a1 + 24) / *(a1 + 20)) * (v10 - v9)) >= *(a1 + 28))
      {
        *(a1 + 56) = v10;
        v13 = (a1 + 96);
        v11 = *(a1 + 119);
        if ((v11 & 0x8000000000000000) != 0)
        {
          v11 = *(a1 + 104);
          if (a2)
          {
            v14 = a3 - 1;
            if (v11 >= a3 - 1)
            {
              v11 = a3 - 1;
            }

            v13 = *v13;
            goto LABEL_19;
          }
        }

        else if (a2)
        {
          v14 = a3 - 1;
          if (a3 - 1 < v11)
          {
            v11 = a3 - 1;
          }

LABEL_19:
          strncpy(a2, v13, v14);
        }

        v15 = *(a1 + 72);
        if (v15)
        {
          v16 = std::__shared_weak_count::lock(v15);
          if (v16)
          {
            v17 = v16;
            v18 = *(a1 + 64);
            if (v18)
            {
              v19 = *(a1 + 88);
              if (!v19 || (v20 = *(v18 + 72), v21 = *(a1 + 80), (v22 = std::__shared_weak_count::lock(v19)) == 0))
              {
                sub_175EA0();
              }

              v23 = v22;
              p_shared_weak_owners = &v22->__shared_weak_owners_;
              atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_1A8C0(v22);
              block[0] = _NSConcreteStackBlock;
              block[1] = 1174405120;
              block[2] = sub_1D2E28;
              block[3] = &unk_6B66A8;
              block[4] = a1;
              block[5] = v21;
              v26 = v23;
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              dispatch_async(v20, block);
              if (v26)
              {
                std::__shared_weak_count::__release_weak(v26);
              }

              std::__shared_weak_count::__release_weak(v23);
            }

            sub_1A8C0(v17);
          }
        }

        goto LABEL_7;
      }
    }
  }

  v11 = 0;
LABEL_7:
  sub_1A8C0(v8);
  return v11;
}

void sub_1D2E0C(_Unwind_Exception *a1)
{
  sub_1A8C0(v2);
  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

void sub_1D2E28(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = a1[5] != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = *(v2 + 72);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(v2 + 64);
      if (v9)
      {
        v10 = v5;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        v11 = -6;
        while ((atomic_exchange((v2 + 16), 1u) & 1) != 0)
        {
          usleep(0x1388u);
          if (__CFADD__(v11++, 1))
          {
            goto LABEL_187;
          }
        }

        v54 = v8;
        if (*(v2 + 119) < 0)
        {
          **(v2 + 96) = 0;
          *(v2 + 104) = 0;
        }

        else
        {
          *(v2 + 96) = 0;
          *(v2 + 119) = 0;
        }

        v13 = (v2 + 96);
        if (*(v2 + 17))
        {
          v14 = 32;
        }

        else
        {
          v14 = 44;
        }

        if (!*(v2 + 60))
        {
          *(v2 + 60) = *(v2 + 32);
          std::string::append((v2 + 96), "\n", 1uLL);
          memset(&v65, 0, sizeof(v65));
          memset(&v63, 0, sizeof(v63));
          v15 = qword_6E4D88;
          if (qword_6E4D88 == qword_6E4D90)
          {
            v23 = 0;
          }

          else
          {
            do
            {
              if (*(v2 + 17) == 1)
              {
                sub_53E8(&v62, *(v15 + 16));
                sub_53E8(&v61, *(v15 + 24));
                std::string::resize(&v62, *(v15 + 8), 32);
                std::string::resize(&v61, *(v15 + 8), 32);
                sub_1D3D28(&__p, &v62.__r_.__value_.__l.__data_, v14);
                if ((v60 & 0x80u) == 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p;
                }

                if ((v60 & 0x80u) == 0)
                {
                  v17 = v60;
                }

                else
                {
                  v17 = v59;
                }

                std::string::append(&v65, p_p, v17);
                if (v60 < 0)
                {
                  operator delete(__p);
                }

                sub_1D3D28(&__p, &v61.__r_.__value_.__l.__data_, v14);
                if ((v60 & 0x80u) == 0)
                {
                  v18 = &__p;
                }

                else
                {
                  v18 = __p;
                }

                if ((v60 & 0x80u) == 0)
                {
                  v19 = v60;
                }

                else
                {
                  v19 = v59;
                }

                std::string::append(&v63, v18, v19);
                if (v60 < 0)
                {
                  operator delete(__p);
                }

                if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v61.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v62.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                if (*v15 == -1)
                {
                  v22 = strlen(*(v15 + 16));
                  std::string::append(&v65, *(v15 + 16), v22);
                }

                else
                {
                  sub_38DAD0(&v62, *v15);
                  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v20 = &v62;
                  }

                  else
                  {
                    v20 = v62.__r_.__value_.__r.__words[0];
                  }

                  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v62.__r_.__value_.__l.__size_;
                  }

                  std::string::append(&v65, v20, size);
                  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v62.__r_.__value_.__l.__data_);
                  }
                }

                std::string::push_back(&v65, v14);
              }

              v15 += 32;
            }

            while (v15 != qword_6E4D90);
            if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v23 = v65.__r_.__value_.__l.__size_;
            }
          }

          sub_B0848(&v62, v23 + 1);
          if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = &v62;
          }

          else
          {
            v24 = v62.__r_.__value_.__r.__words[0];
          }

          if (v23)
          {
            if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v65;
            }

            else
            {
              v25 = v65.__r_.__value_.__r.__words[0];
            }

            memmove(v24, v25, v23);
          }

          *(&v24->__r_.__value_.__l.__data_ + v23) = 10;
          if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &v62;
          }

          else
          {
            v26 = v62.__r_.__value_.__r.__words[0];
          }

          if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = v62.__r_.__value_.__l.__size_;
          }

          std::string::append((v2 + 96), v26, v27);
          if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v62.__r_.__value_.__l.__data_);
          }

          v28 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
          if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v29 = v63.__r_.__value_.__l.__size_;
          }

          if (v29)
          {
            sub_B0848(&v62, v29 + 1);
            if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = &v62;
            }

            else
            {
              v30 = v62.__r_.__value_.__r.__words[0];
            }

            if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = &v63;
            }

            else
            {
              v31 = v63.__r_.__value_.__r.__words[0];
            }

            memmove(v30, v31, v29);
            *(&v30->__r_.__value_.__l.__data_ + v29) = 10;
            if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = &v62;
            }

            else
            {
              v32 = v62.__r_.__value_.__r.__words[0];
            }

            if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v33 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v33 = v62.__r_.__value_.__l.__size_;
            }

            std::string::append((v2 + 96), v32, v33);
            if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v62.__r_.__value_.__l.__data_);
            }

            v28 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
          }

          if (v28 < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v65.__r_.__value_.__l.__data_);
          }
        }

        if (*(v2 + 32))
        {
          v34 = *(v2 + 60) - 1;
        }

        else
        {
          v34 = 1;
        }

        *(v2 + 60) = v34;
        v35 = qword_6E4D88;
        if (qword_6E4D88 != qword_6E4D90)
        {
          do
          {
            memset(&v63, 0, sizeof(v63));
            v36 = v35[1];
            if (v36 > 3)
            {
              if (v36 == 4)
              {
                std::to_string(&v65, v9[80]);
LABEL_129:
                if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v63.__r_.__value_.__l.__data_);
                }

                v63 = v65;
                goto LABEL_132;
              }

              if (v36 == 5)
              {
LABEL_115:
                memset(&v62, 0, sizeof(v62));
                if ((*(*v9 + 176))(v9, *v35, &v62) && v62.__r_.__value_.__l.__size_ - v62.__r_.__value_.__r.__words[0] == 8)
                {
                  v38 = *v62.__r_.__value_.__l.__data_;
                  v39 = v35[1];
                  switch(v39)
                  {
                    case 3u:
                      v44 = v38;
                      v38 = (logf(v44) * 20.0);
                      std::to_string(&v65, v38);
LABEL_147:
                      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v63.__r_.__value_.__l.__data_);
                      }

                      v63 = v65;
                      v39 = v35[1];
                      break;
                    case 2u:
                      v40 = v38;
                      v38 = (logf(v40) * 10.0);
                      std::to_string(&v65, v38);
                      goto LABEL_147;
                    case 5u:
                      sub_2288C(&v65);
                      *(&v67[-1].__locale_ + *(v65.__r_.__value_.__r.__words[2] - 24)) = *(&v67[-1].__locale_ + *(v65.__r_.__value_.__r.__words[2] - 24)) & 0xFFFFFFB5 | 8;
                      std::ostream::operator<<();
                      sub_53E8(&v61, "0x");
                      if ((v72 & 0x10) != 0)
                      {
                        v46 = v71;
                        if (v71 < v68)
                        {
                          v71 = v68;
                          v46 = v68;
                        }

                        locale = v67[4].__locale_;
                      }

                      else
                      {
                        if ((v72 & 8) == 0)
                        {
                          v45 = 0;
                          v60 = 0;
                          goto LABEL_167;
                        }

                        locale = v67[1].__locale_;
                        v46 = v67[3].__locale_;
                      }

                      v45 = v46 - locale;
                      if ((v46 - locale) >= 0x7FFFFFFFFFFFFFF8)
                      {
                        sub_755AC();
                      }

                      if (v45 >= 0x17)
                      {
                        operator new();
                      }

                      v60 = v46 - locale;
                      if (v45)
                      {
                        memmove(&__p, locale, v45);
                      }

LABEL_167:
                      *(&__p + v45) = 0;
                      if ((v60 & 0x80u) == 0)
                      {
                        v48 = &__p;
                      }

                      else
                      {
                        v48 = __p;
                      }

                      if ((v60 & 0x80u) == 0)
                      {
                        v49 = v60;
                      }

                      else
                      {
                        v49 = v59;
                      }

                      v50 = std::string::append(&v61, v48, v49);
                      v51 = v50->__r_.__value_.__r.__words[0];
                      v64[0] = v50->__r_.__value_.__l.__size_;
                      *(v64 + 7) = *(&v50->__r_.__value_.__r.__words[1] + 7);
                      v52 = HIBYTE(v50->__r_.__value_.__r.__words[2]);
                      v50->__r_.__value_.__l.__size_ = 0;
                      v50->__r_.__value_.__r.__words[2] = 0;
                      v50->__r_.__value_.__r.__words[0] = 0;
                      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v63.__r_.__value_.__l.__data_);
                      }

                      v63.__r_.__value_.__r.__words[0] = v51;
                      v63.__r_.__value_.__l.__size_ = v64[0];
                      *(&v63.__r_.__value_.__r.__words[1] + 7) = *(v64 + 7);
                      *(&v63.__r_.__value_.__s + 23) = v52;
                      if (v60 < 0)
                      {
                        operator delete(__p);
                      }

                      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v61.__r_.__value_.__l.__data_);
                      }

                      v65.__r_.__value_.__r.__words[0] = v57;
                      *(v65.__r_.__value_.__r.__words + *(v57 - 24)) = v56;
                      v65.__r_.__value_.__r.__words[2] = v55;
                      if (v70 < 0)
                      {
                        operator delete(v69);
                      }

                      std::locale::~locale(v67);
                      std::iostream::~basic_iostream();
                      std::ios::~ios();
                      break;
                    default:
                      std::to_string(&v65, v38);
                      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v63.__r_.__value_.__l.__data_);
                      }

                      v63 = v65;
                      break;
                  }
                }

                else
                {
                  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v63.__r_.__value_.__l.__size_ = 6;
                    v41 = v63.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    *(&v63.__r_.__value_.__s + 23) = 6;
                    v41 = &v63;
                  }

                  strcpy(v41, "!ERROR");
                }

                if (v62.__r_.__value_.__r.__words[0])
                {
                  v62.__r_.__value_.__l.__size_ = v62.__r_.__value_.__r.__words[0];
                  operator delete(v62.__r_.__value_.__l.__data_);
                }

                goto LABEL_132;
              }
            }

            else
            {
              if ((v36 - 1) < 3)
              {
                goto LABEL_115;
              }

              if (!v36)
              {
                if (*(v2 + 28) == 0.0)
                {
                  v37 = sub_37D544(*(v2 + 40)) / 1000.0;
                  if ((v37 - *(v2 + 48)) > 5.0)
                  {
                    *(v2 + 40) = mach_absolute_time();
                    v37 = 0.0;
                  }

                  *(v2 + 48) = v37;
                  std::to_string(&v65, v37);
                }

                else
                {
                  std::to_string(&v65, (*(v2 + 24) / *(v2 + 20)) * *(v2 + 52));
                }

                goto LABEL_129;
              }
            }

            *(&v63.__r_.__value_.__s + 23) = 7;
            qmemcpy(&v63, "!FORMAT", 7);
LABEL_132:
            if (*(v2 + 17) == 1)
            {
              std::string::resize(&v63, v35[2], 32);
            }

            sub_1D3D28(&v65, &v63.__r_.__value_.__l.__data_, v14);
            if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v42 = &v65;
            }

            else
            {
              v42 = v65.__r_.__value_.__r.__words[0];
            }

            if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v43 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v43 = v65.__r_.__value_.__l.__size_;
            }

            std::string::append((v2 + 96), v42, v43);
            if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v65.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v63.__r_.__value_.__l.__data_);
            }

            v35 += 8;
          }

          while (v35 != qword_6E4D90);
        }

        std::string::append((v2 + 96), "\n", 1uLL);
        v53 = *(v2 + 8);
        v8 = v54;
        if (v53)
        {
          if (*(v2 + 119) < 0)
          {
            v13 = *v13;
          }

          fputs(v13, v53);
        }

        atomic_store(0, (v2 + 16));
      }

LABEL_187:
      sub_1A8C0(v8);
    }
  }

  if (v4)
  {
    sub_1A8C0(v4);
  }
}

void sub_1D3CFC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1D3D0C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1D3D28(uint64_t a1, const void **a2, char a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  result = sub_B0848(a1, v5 + 1);
  if (*(result + 23) >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a3;
  v9[1] = 0;
  return result;
}

uint64_t sub_1D3DAC(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void sub_1D3F20(uint64_t a1)
{
  sub_1D3F58(a1);

  operator delete();
}

uint64_t sub_1D3F58(uint64_t a1)
{
  *a1 = off_6B6660;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = off_6D6730;
  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1D4050(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D42B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  __cxa_free_exception(v14);
  sub_1A8C0(v13);
  if (*(v10 + 143) < 0)
  {
    operator delete(*a10);
  }

  v16 = *(v10 + 112);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  *(v10 + 24) = v12;
  v17 = *(v10 + 96);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v18);
  _Unwind_Resume(a1);
}

void sub_1D4360(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6B66E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

BOOL sub_1D43D4(uint64_t a1)
{
  v18 = 0;
  v1 = atomic_load((a1 + 83));
  if (v1)
  {
    return 1;
  }

  v4 = sub_5544(26);
  v5 = *v4;
  if (*v4)
  {
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 60);
      v8 = *(a1 + 64);
      v9 = *(a1 + 68);
      *buf = 136316418;
      v20 = "AncManagerV4.cpp";
      v21 = 1024;
      v22 = 281;
      v23 = 2048;
      v24 = v6;
      v25 = 2048;
      v26 = v7;
      v27 = 2048;
      v28 = v8;
      v29 = 2048;
      v30 = v9;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d ANC V4 ApplyTrimGains:%f:%f:%f:%f", buf, 0x3Au);
    }
  }

  if (((*(*a1 + 200))(a1, 1469, &v18) & 1) == 0)
  {
    v10 = sub_5544(26);
    v11 = *v10;
    if (!*v10)
    {
      return 0;
    }

    result = os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136315394;
    v20 = "AncManagerV4.cpp";
    v21 = 1024;
    v22 = 285;
    v12 = "%25s:%-5d Failure reading mic_vx_scale_cal";
LABEL_31:
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x12u);
    return 0;
  }

  v18 = vcvtad_u64_f64(vcvtd_n_f64_u32(v18, 0x14uLL) * __exp10(*(a1 + 56) / 20.0) * 1048576.0);
  if (((*(*a1 + 232))(a1, 1469) & 1) == 0)
  {
    v13 = sub_5544(26);
    v11 = *v13;
    if (!*v13)
    {
      return 0;
    }

    result = os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136315394;
    v20 = "AncManagerV4.cpp";
    v21 = 1024;
    v22 = 293;
    v12 = "%25s:%-5d Failure writing mic_vx_scale_cal";
    goto LABEL_31;
  }

  if (((*(*a1 + 200))(a1, 2970, &v18) & 1) == 0)
  {
    v14 = sub_5544(26);
    v11 = *v14;
    if (!*v14)
    {
      return 0;
    }

    result = os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136315394;
    v20 = "AncManagerV4.cpp";
    v21 = 1024;
    v22 = 299;
    v12 = "%25s:%-5d Failure reading kAncParam_mic_err_scale";
    goto LABEL_31;
  }

  v18 = vcvtad_u64_f64(vcvtd_n_f64_u32(v18, 0x14uLL) * __exp10(*(a1 + 64) / 20.0) * 1048576.0);
  if (((*(*a1 + 232))(a1, 2970) & 1) == 0)
  {
    v15 = sub_5544(26);
    v11 = *v15;
    if (!*v15)
    {
      return 0;
    }

    result = os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136315394;
    v20 = "AncManagerV4.cpp";
    v21 = 1024;
    v22 = 307;
    v12 = "%25s:%-5d Failure writing kAncParam_mic_err_scale";
    goto LABEL_31;
  }

  if ((*(*a1 + 200))(a1, 2973, &v18))
  {
    v18 = vcvtad_u64_f64(vcvtd_n_f64_u32(v18, 0x14uLL) * __exp10(*(a1 + 60) / 20.0) * 1048576.0);
    if ((*(*a1 + 232))(a1, 2973))
    {
      result = 1;
      atomic_store(1u, (a1 + 83));
      return result;
    }

    v17 = sub_5544(26);
    v11 = *v17;
    if (!*v17)
    {
      return 0;
    }

    result = os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136315394;
    v20 = "AncManagerV4.cpp";
    v21 = 1024;
    v22 = 321;
    v12 = "%25s:%-5d Failure writing kAncParam_mic_ref1_scale";
    goto LABEL_31;
  }

  v16 = sub_5544(26);
  v11 = *v16;
  if (*v16)
  {
    result = os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136315394;
    v20 = "AncManagerV4.cpp";
    v21 = 1024;
    v22 = 313;
    v12 = "%25s:%-5d Failure reading kAncParam_mic_ref1_scale";
    goto LABEL_31;
  }

  return 0;
}

void sub_1D4908(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = atomic_load((a1 + 81));
    if (v2)
    {
      sub_8BD14(&v9, *(a1 + 88), *(a1 + 96));
      v4 = v9;
      v3 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_1A8C0(v3);
      }

      v5 = dispatch_time(0, 200000000);
      v6 = *(a1 + 72);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1174405120;
      v7[2] = sub_1D4A04;
      v7[3] = &unk_6B6880;
      v7[4] = v4;
      v8 = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      dispatch_after(v5, v6, v7);
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }
}

void sub_1D4A04(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = atomic_load((v5 + 81));
        if (v6)
        {
          v7 = atomic_load((v5 + 82));
          if (v7)
          {
            state64 = 0;
            notify_get_state(*(v5 + 40), &state64);
            *(v5 + 44) = state64 == 0;
            (*(*v5 + 232))(v5, 2884);
          }
        }

        (*(*v5 + 280))(v5, 0);
      }

      sub_1A8C0(v4);
    }
  }
}

void sub_1D4B00(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1D4B10(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D4B3C(uint64_t a1, int a2)
{
  if ((byte_6E8454 & 1) == 0)
  {
    v18 = 0;
    if (sub_1235F4(@"ANCPollRate", @"com.apple.audio.virtualaudio", &v18))
    {
      v4 = *sub_5544(14);
      v5 = v4;
      if (v4)
      {
        v6 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        v7 = v18;
        if (v6)
        {
          *buf = 136315906;
          *&buf[4] = "RunTimeDefaults.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1446;
          v20 = 2080;
          v21 = "ANCPollRate";
          v22 = 1024;
          v23 = v18;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default %s: %d.", buf, 0x22u);
        }
      }

      else
      {
        v7 = v18;
      }

      dword_6E8450 = v7;
    }

    byte_6E8454 = 1;
  }

  v8 = dword_6E8450;
  v9 = atomic_load((a1 + 81));
  if (v9)
  {
    if (!dword_6E8450)
    {
      v8 = 10000;
    }

    v10 = 1000000 * v8;
    sub_8BD14(buf, *(a1 + 88), *(a1 + 96));
    v12 = *buf;
    v11 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_1A8C0(v11);
    }

    if (a2)
    {
      v13 = 200000000;
    }

    else
    {
      v13 = v10;
    }

    v14 = dispatch_time(0, v13);
    v15 = *(a1 + 72);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1174405120;
    v16[2] = sub_1D4D68;
    v16[3] = &unk_6B6850;
    v16[4] = a1;
    v16[5] = v12;
    v17 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_after(v14, v15, v16);
    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_1D4D68(void *a1)
{
  v2 = a1[6];
  if (!v2 || (v3 = a1[4], (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    v5 = 0;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    goto LABEL_45;
  }

  v5 = v4;
  v6 = a1[5];
  v50 = 0;
  v51 = 0;
  v49 = 0;
  if (!v6)
  {
LABEL_45:
    v29 = sub_5544(26);
    v30 = *v29;
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v53 = "AncManagerV4.cpp";
      v54 = 1024;
      v55 = 143;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid this", buf, 0x12u);
    }

LABEL_48:
    if (!v5)
    {
      return;
    }

    goto LABEL_49;
  }

  v7 = atomic_load(v6 + 81);
  if ((v7 & 1) == 0)
  {
    v31 = sub_5544(26);
    v32 = *v31;
    if (!*v31 || !os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 136315394;
    v53 = "AncManagerV4.cpp";
    v54 = 1024;
    v55 = 149;
    v33 = "%25s:%-5d Client disabled";
LABEL_78:
    _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, v33, buf, 0x12u);
    goto LABEL_49;
  }

  (*(*v3 + 296))(v3);
  if (((*(*v6 + 200))(v6, 2732, &v71) & 1) == 0)
  {
    v8 = sub_5544(26);
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v53 = "AncManagerV4.cpp";
        v54 = 1024;
        v55 = 155;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Failure reading clip 1", buf, 0x12u);
      }
    }
  }

  if (((*(*v6 + 200))(v6, 2733, &v71.i8[4]) & 1) == 0)
  {
    v10 = sub_5544(26);
    v11 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v53 = "AncManagerV4.cpp";
        v54 = 1024;
        v55 = 157;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failure reading clip 2", buf, 0x12u);
      }
    }
  }

  if (((*(*v6 + 200))(v6, 2734, &v71.u64[1]) & 1) == 0)
  {
    v12 = sub_5544(26);
    v13 = *v12;
    if (*v12)
    {
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v53 = "AncManagerV4.cpp";
        v54 = 1024;
        v55 = 159;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Failure reading clip 3", buf, 0x12u);
      }
    }
  }

  if (((*(*v6 + 200))(v6, 2735, &v71 | 0xC) & 1) == 0)
  {
    v14 = sub_5544(26);
    v15 = *v14;
    if (*v14)
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v53 = "AncManagerV4.cpp";
        v54 = 1024;
        v55 = 161;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Failure reading clip 4", buf, 0x12u);
      }
    }
  }

  if (((*(*v6 + 200))(v6, 2736, &v72) & 1) == 0)
  {
    v16 = sub_5544(26);
    v17 = *v16;
    if (*v16)
    {
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v53 = "AncManagerV4.cpp";
        v54 = 1024;
        v55 = 163;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Failure reading clip 5", buf, 0x12u);
      }
    }
  }

  if (((*(*v6 + 200))(v6, 2915, &v69) & 1) == 0)
  {
    v34 = sub_5544(26);
    v32 = *v34;
    if (!*v34 || !os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 136315394;
    v53 = "AncManagerV4.cpp";
    v54 = 1024;
    v55 = 167;
    v33 = "%25s:%-5d Failure reading fifo overflow 1";
    goto LABEL_78;
  }

  if (((*(*v6 + 200))(v6, 2916, &v69 + 4) & 1) == 0)
  {
    v35 = sub_5544(26);
    v32 = *v35;
    if (!*v35 || !os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 136315394;
    v53 = "AncManagerV4.cpp";
    v54 = 1024;
    v55 = 172;
    v33 = "%25s:%-5d Failure reading fifo overflow 2";
    goto LABEL_78;
  }

  if (((*(*v6 + 200))(v6, 2917, &v70) & 1) == 0)
  {
    v36 = sub_5544(26);
    v32 = *v36;
    if (!*v36 || !os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 136315394;
    v53 = "AncManagerV4.cpp";
    v54 = 1024;
    v55 = 177;
    v33 = "%25s:%-5d Failure reading fifo overflow 3";
    goto LABEL_78;
  }

  if (((*(*v6 + 200))(v6, 2238, &v51) & 1) == 0)
  {
    v37 = sub_5544(26);
    v32 = *v37;
    if (!*v37 || !os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 136315394;
    v53 = "AncManagerV4.cpp";
    v54 = 1024;
    v55 = 182;
    v33 = "%25s:%-5d Failure reading power state";
    goto LABEL_78;
  }

  if (((*(*v6 + 200))(v6, 2433, &v50 + 4) & 1) == 0)
  {
    v38 = sub_5544(26);
    v32 = *v38;
    if (!*v38 || !os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 136315394;
    v53 = "AncManagerV4.cpp";
    v54 = 1024;
    v55 = 187;
    v33 = "%25s:%-5d Failure reading SNLM";
    goto LABEL_78;
  }

  if (((*(*v6 + 200))(v6, 2884, &v50) & 1) == 0)
  {
    v39 = sub_5544(26);
    v32 = *v39;
    if (!*v39 || !os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 136315394;
    v53 = "AncManagerV4.cpp";
    v54 = 1024;
    v55 = 192;
    v33 = "%25s:%-5d Failure reading prox_offear";
    goto LABEL_78;
  }

  if (((*(*v6 + 200))(v6, 2864, &v49) & 1) == 0)
  {
    v40 = sub_5544(26);
    v32 = *v40;
    if (!*v40 || !os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 136315394;
    v53 = "AncManagerV4.cpp";
    v54 = 1024;
    v55 = 197;
    v33 = "%25s:%-5d Failure reading offear_detection_result";
    goto LABEL_78;
  }

  v18.i64[0] = v69;
  v19.i32[0] = v72;
  v20 = vextq_s8(vextq_s8(v19, v19, 4uLL), v18, 0xCuLL);
  v20.i32[3] = v70;
  v21 = vorrq_s8(v71, v20);
  if (vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)))
  {
    v22 = sub_5544(26);
    v23 = *v22;
    if (*v22)
    {
      if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136317442;
        v53 = "AncManagerV4.cpp";
        v54 = 1024;
        v55 = 202;
        v56 = 1024;
        *v57 = v71.i32[0];
        *&v57[4] = 1024;
        *&v57[6] = v71.i32[1];
        *v58 = 1024;
        *&v58[2] = v71.i32[2];
        v59 = 1024;
        v60 = v71.i32[3];
        v61 = 1024;
        v62 = v72;
        v63 = 1024;
        v64 = v69;
        v65 = 1024;
        v66 = HIDWORD(v69);
        v67 = 1024;
        v68 = v70;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d BAD State Clip:%x:%x:%x:%x:%x overflow:%x:%x:%x", buf, 0x42u);
      }
    }
  }

  if (((*(*v6 + 200))(v6, 2765, &v51 + 4) & 1) == 0)
  {
    v41 = sub_5544(26);
    v32 = *v41;
    if (!*v41 || !os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 136315394;
    v53 = "AncManagerV4.cpp";
    v54 = 1024;
    v55 = 207;
    v33 = "%25s:%-5d Failure reading clp_sw_state";
    goto LABEL_78;
  }

  if (BYTE4(v51) == 6)
  {
    sub_1D5B80(buf, &v51);
    sub_DB9F4(&v55 + 2, "SNLM", &v50 + 1);
    sub_1D5C54(&v58[2], "Fifo1", &v69);
    sub_1D5C54(&v63, "Fifo2", &v69 + 1);
    sub_1D5C54(&v68 + 2, "Fifo3", &v70);
    v47[0] = buf;
    v47[1] = 5;
    v24 = sub_69CE8(v47);
    v48 = v24;
    for (i = 64; i != -16; i -= 16)
    {
      sub_1D5D20(&buf[i]);
    }

    sub_1D5D64(v24);
    v26 = sub_5544(26);
    v27 = *v26;
    if (*v26)
    {
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
      {
        v28 = *(v6 + 13);
        *buf = 136316674;
        v53 = "AncManagerV4.cpp";
        v54 = 1024;
        v55 = 221;
        v56 = 1024;
        *v57 = HIDWORD(v50);
        *&v57[4] = 1024;
        *&v57[6] = v51;
        *v58 = 1024;
        *&v58[2] = v28;
        v59 = 1024;
        v60 = v50;
        v61 = 1024;
        v62 = v49;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d ANC status ok. SNLM:%x AncActive:%d Hang:%d offear:%d:%d", buf, 0x30u);
      }
    }

    *(v6 + 13) = 0;
    v6[80] = 1;
    atomic_store(1u, v6 + 82);
    (*(*v6 + 264))(v6, 0);
    sub_4BA7C(&v48);
    goto LABEL_48;
  }

  v42 = *(v6 + 13) + 1;
  *(v6 + 13) = v42;
  HIDWORD(v43) = -858993459 * v42;
  LODWORD(v43) = -858993459 * v42;
  if ((v43 >> 1) <= 0x19999999)
  {
    v44 = sub_5544(26);
    v45 = *v44;
    if (*v44)
    {
      if (os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v46) = v3[13];
        *buf = 136315906;
        v53 = "AncManagerV4.cpp";
        v54 = 1024;
        v55 = 233;
        v56 = 2048;
        *v57 = v46 * 200.0 / 1000.0;
        *&v57[8] = 1024;
        *v58 = HIDWORD(v51);
        _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d Warning: ANC DSP program still not booted after %g seconds, clp_sw_state = 0x%x", buf, 0x22u);
      }
    }
  }

  (*(*v6 + 264))(v6, 1);
LABEL_49:
  sub_1A8C0(v5);
}

void sub_1D5B54(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1D5B64(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1D5B80(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "AncActive");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1D5C20(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D5C54(uint64_t a1, char *a2, int *a3)
{
  sub_88CE8(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1D5CEC(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D5D20(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void sub_1D5D64(uint64_t a1)
{
  if (qword_6E7110 != -1)
  {
    dispatch_once(&qword_6E7110, &stru_6B68D0);
  }

  if (off_6E7170)
  {
    v2 = off_6E7170;

    v2(a1, 1, 0);
  }
}

void sub_1D5DE4(id a1)
{
  v1 = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (v1)
  {
    v2 = v1;
    qword_6E7118 = dlsym(v1, "CreateSharedCAReportingClient");
    qword_6E7120 = dlsym(v2, "CAReportingClientCreateReporterID");
    qword_6E7128 = dlsym(v2, "CAReportingClientCreateReporterIDFromSessionID");
    qword_6E7130 = dlsym(v2, "CAReportingClientCreatePerformanceReporterID");
    qword_6E7138 = dlsym(v2, "CAReportingClientStartReporter");
    qword_6E7140 = dlsym(v2, "CAReportingClientStopReporter");
    qword_6E7148 = dlsym(v2, "CAReportingClientSetAudioServiceType");
    qword_6E7150 = dlsym(v2, "CAReportingClientGetAudioServiceType");
    qword_6E7158 = dlsym(v2, "CAReportingClientSetConfiguration");
    qword_6E7160 = dlsym(v2, "CAReportingClientCopyConfiguration");
    off_6E7168 = dlsym(v2, "CAReportingClientSendMessage");
    off_6E7170 = dlsym(v2, "CAReportingClientSendSingleMessage");
    qword_6E7178 = dlsym(v2, "CAReportingClientDestroyReporterID");
    qword_6E7180 = dlsym(v2, "CAReportingClientRequestMessage");
  }
}

void sub_1D5F64(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_6ACD8();
}

const void **sub_1D5FAC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1D5FE0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1D6014(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1D406C();
}

void sub_1D60D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D6158()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "unsupported");
}

BOOL sub_1D61B4(uint64_t a1, CFMutableStringRef theString, int a3)
{
  if (theString)
  {
    v5 = *(a1 + 56);
    if (a3)
    {
      CFStringAppendFormat(theString, 0, @"%-20s %-.6f\n", "Voice mic trim:", *(a1 + 56));
      CFStringAppendFormat(theString, 0, @"%-20s %-.6f\n", "Ref mic trim:", *(a1 + 60));
      CFStringAppendFormat(theString, 0, @"%-20s %-.6f\n", "Error mic trim:", *(a1 + 64));
      CFStringAppendFormat(theString, 0, @"%-20s %-.6f\n", "Receiver trim:", *(a1 + 68));
      CFStringAppendFormat(theString, 0, @"%-20s ", "ANC DSP SW version:");
    }

    else
    {
      CFStringAppendFormat(theString, 0, @"Voice mic trim, %-.6f\n", *(a1 + 56));
      CFStringAppendFormat(theString, 0, @"Ref mic trim, %-.6f\n", *(a1 + 60));
      CFStringAppendFormat(theString, 0, @"Error mic trim, %-.6f\n", *(a1 + 64));
      CFStringAppendFormat(theString, 0, @"Receiver trim, %-.6f\n", *(a1 + 68));
      CFStringAppend(theString, @"ANC DSP SW version, ");
    }

    v7 = 0;
    if ((*(**(a1 + 16) + 104))(*(a1 + 16), 11572224, 1, 4, &v7, *(a1 + 24)))
    {
      CFStringAppend(theString, @"*** ERROR ***\n");
    }

    else
    {
      CFStringAppendFormat(theString, 0, @"0x%08x\n", v7);
    }
  }

  return theString != 0;
}

float sub_1D6438(uint64_t a1)
{
  v4 = 48000.0;
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 48000.0;
  }

  (*(*v2 + 168))(v2, &v4, *(a1 + 24));
  return v4;
}

void sub_1D64B0(uint64_t a1)
{
  sub_1D64E8(a1);

  operator delete();
}

void *sub_1D64E8(uint64_t a1)
{
  *a1 = off_6B6720;
  atomic_store(0, (a1 + 81));
  *(a1 + 80) = 0;
  atomic_store(0, (a1 + 82));
  v2 = *(a1 + 40);
  if (v2)
  {
    notify_cancel(v2);
  }

  dispatch_release(*(a1 + 72));
  v3 = *(a1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return sub_1E89C0(a1);
}

uint64_t sub_1D6578(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1D65A8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1D6610(void *a1, int a2, uint64_t *a3, _BYTE *a4, uint64_t a5)
{
  v5 = a4;
  if (a4)
  {
    v7 = a4[3];
    v57 = a4[1];
    v58 = *a4 ^ 1;
  }

  else
  {
    v7 = 0;
    v57 = 0;
    v58 = 1;
  }

  v8 = *(a1 + 4);
  if (!v8)
  {
    v8 = (*(*a1 + 64))(a1, a1[1], a5);
    *(a1 + 4) = v8;
  }

  if (v58 & 1 | ((v57 & 1) == 0))
  {
    if (a3[1] == *a3)
    {
      v13 = sub_5544(26);
      v14 = *v13;
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v63 = "L77Device.cpp";
        v64 = 1024;
        v65 = 202;
        v66 = 2080;
        v67 = "SetDataBlockWithOptions";
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d L77Device::%s FAILED payload size", buf, 0x1Cu);
      }

      v12 = 0;
      if (v7)
      {
        *(v5 + 1) = 0;
      }
    }

    else
    {
      if (v5 && v5[3] == 1)
      {
        v9 = mach_absolute_time();
        v8 = *(a1 + 4);
      }

      else
      {
        v9 = 0;
      }

      if (v57)
      {
        v61 = malloc_type_calloc(v8, 4uLL, 0x100004052888210uLL);
      }

      else
      {
        v61 = 0;
      }

      v15 = *a3;
      v16 = a3[1] - *a3;
      if (v16)
      {
        v48 = v9;
        v49 = v7;
        v56 = 0;
        v17 = 0;
        v18 = 0;
        v19 = v8 >> 2;
        v20 = v16 >> 2;
        v52 = v8 >> 2;
        v55 = v5;
        v51 = v8 >> 2;
        while (1)
        {
          if (v19 >= v20 - v18)
          {
            v21 = v20 - v18;
          }

          else
          {
            v21 = v19;
          }

          if (!*(a1 + 4))
          {
            *(a1 + 4) = (*(*a1 + 64))(a1, a1[1], a5);
          }

          v22 = 4 * v18;
          if (!v5 || v55[2] != 1)
          {
            break;
          }

          if (v21)
          {
            v23 = 0;
            v24 = (v56 + v20);
            if (v52 < v24)
            {
              v24 = v52;
            }

            v25 = (v15 + v22);
            do
            {
              v26 = *v25++;
              v23 |= v26;
              --v24;
            }

            while (v24);
            if (v23)
            {
              break;
            }
          }

LABEL_70:
          v19 = v51;
          v5 = v55;
          v15 = *a3;
          v20 = (a3[1] - *a3) >> 2;
          v56 -= v51;
          v18 += v51;
          v17 = v18;
          if (v20 <= v18)
          {
            v12 = 0;
LABEL_80:
            v7 = v49;
            v9 = v48;
            goto LABEL_86;
          }
        }

        v27 = a2 + 4 * v18;
        v59 = v15 + 4 * v17;
        if (v52 >= (v56 + v20))
        {
          v28 = (v56 + v20);
        }

        else
        {
          v28 = v52;
        }

        v29 = v15 + v22;
        v30 = 5;
        v31 = 1;
        do
        {
          v32 = (*(*a1 + 56))(a1, a1[1], a1 + 3, v58 & 1, v27, v21, (4 * v21), v59, a5);
          if (v32)
          {
            v12 = v32;
            v33 = sub_5544(26);
            v34 = *v33;
            if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316674;
              v63 = "L77Device.cpp";
              v64 = 1024;
              v65 = 239;
              v66 = 2080;
              v67 = "SetDataBlockWithOptions";
              v68 = 1024;
              v69 = a2 + 4 * v18;
              v70 = 1024;
              v71 = v21;
              v72 = 1024;
              v73 = v12;
              v74 = 1024;
              v75 = v30 - 1;
              _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d L77Device::%s _SetRegister( addr=0x%x, len=%d) failed, status = %d. Tries remaining = %d", buf, 0x34u);
            }
          }

          else
          {
            if ((v57 & 1) != 0 && !sub_1D6E28(a1, v27))
            {
              v35 = (*(*a1 + 48))(a1, a1[1], a1 + 3, v27, v21, (4 * v21), v61, a5);
              if (v35)
              {
                v12 = v35;
                v41 = sub_5544(26);
                v42 = *v41;
                if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316418;
                  v63 = "L77Device.cpp";
                  v64 = 1024;
                  v65 = 246;
                  v66 = 2080;
                  v67 = "SetDataBlockWithOptions";
                  v68 = 1024;
                  v69 = a2 + 4 * v18;
                  v70 = 1024;
                  v71 = v21;
                  v72 = 1024;
                  v73 = v12;
                  _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d L77Device::%s _GetRegister( addr=0x%x, len=%d) failed, status = %d", buf, 0x2Eu);
                }

                goto LABEL_76;
              }

              if (!v21)
              {
                goto LABEL_70;
              }

              v36 = 0;
              while (1)
              {
                v37 = *(v29 + 4 * v36);
                v38 = v61[v36];
                if (v37 != v38)
                {
                  if (HIBYTE(v38) != 255)
                  {
                    break;
                  }

                  if ((v37 & 0xFF800000) != 0x800000 || ((v38 ^ v37) & 0xFFFFFF) != 0)
                  {
                    break;
                  }
                }

                if (v28 == ++v36)
                {
                  goto LABEL_70;
                }
              }

              v40 = *sub_5544(26);
              if (v40)
              {
                log = v40;
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316674;
                  v63 = "L77Device.cpp";
                  v64 = 1024;
                  v65 = 269;
                  v66 = 2080;
                  v67 = "SetDataBlockWithOptions";
                  v68 = 1024;
                  v69 = v37;
                  v70 = 1024;
                  v71 = v38;
                  v72 = 1024;
                  v73 = v27 + v36;
                  v74 = 1024;
                  v75 = v30;
                  _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d L77Device::%s verify failed (0x%x != 0x%x), addr=0x%x. Tries remaining = %u", buf, 0x34u);
                }
              }
            }

            else if (v31)
            {
              goto LABEL_70;
            }

            v31 = 0;
            v12 = 0;
          }

          --v30;
        }

        while (v30);
        if (!v12)
        {
          if (v31)
          {
            goto LABEL_70;
          }

          v45 = sub_5544(26);
          v46 = *v45;
          v7 = v49;
          v9 = v48;
          if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v63 = "L77Device.cpp";
            v64 = 1024;
            v65 = 284;
            v66 = 2080;
            v67 = "SetDataBlockWithOptions";
            _os_log_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d L77Device::%s verification failed", buf, 0x1Cu);
          }

          v12 = 0xFFFFFFFFLL;
          goto LABEL_85;
        }

LABEL_76:
        v43 = sub_5544(26);
        v44 = *v43;
        if (!*v43)
        {
          v5 = v55;
          goto LABEL_80;
        }

        v7 = v49;
        v9 = v48;
        if (os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v63 = "L77Device.cpp";
          v64 = 1024;
          v65 = 279;
          v66 = 2080;
          v67 = "SetDataBlockWithOptions";
          _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d L77Device::%s Failed", buf, 0x1Cu);
        }

LABEL_85:
        v5 = v55;
      }

      else
      {
        v12 = 0;
      }

LABEL_86:
      if (v57)
      {
        free(v61);
      }

      if (v7)
      {
        *(v5 + 1) = sub_37D544(v9);
      }
    }
  }

  else
  {
    v10 = sub_5544(26);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v63 = "L77Device.cpp";
      v64 = 1024;
      v65 = 196;
      v66 = 2080;
      v67 = "SetDataBlockWithOptions";
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d L77Device::%s cannot write memory asynchronously with verifyWrite enabled.", buf, 0x1Cu);
    }

    return 5;
  }

  return v12;
}

uint64_t sub_1D6ECC(int a1, uint64_t a2, NSObject **a3, uint64_t a4, int a5, int a6, size_t size, void *buffer, uint64_t a9)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = -1;
  if (!a9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "context is null");
  }

  if (a6)
  {
    v9 = a4;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = sub_1D705C;
    v14[3] = &unk_6B6930;
    v15 = size;
    v16 = a5;
    v14[6] = a2;
    v14[7] = a9;
    v17 = a6;
    v18 = a4;
    v14[4] = &v19;
    v14[5] = dispatch_data_create(buffer, size, 0, 0);
    v11 = *a3;
    if (v9)
    {
      dispatch_sync(v11, v14);
      v9 = *(v20 + 6);
    }

    else
    {
      dispatch_async(v11, v14);
      *(v20 + 6) = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v19, 8);
  return v9;
}

void sub_1D7034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D705C(uint64_t a1)
{
  v12 = 0;
  buffer_ptr = 0;
  v2 = dispatch_data_create_map(*(a1 + 40), &buffer_ptr, &v12);
  if (v12 >= *(a1 + 64))
  {
    v7 = sub_44F7FC(*(a1 + 48), 0x73627761u, 0, 0, 4, (a1 + 68), *(a1 + 56));
    if (!v7)
    {
      v7 = sub_44F7FC(*(a1 + 48), 0x7362776Cu, 0, 0, 4, (a1 + 72), *(a1 + 56));
      if (!v7)
      {
        *buf = 0;
        v7 = sub_44F7FC(*(a1 + 48), 0x63616E63u, 4, buf, *(a1 + 64), buffer_ptr, *(a1 + 56));
      }
    }

    v6 = v7;
  }

  else
  {
    v3 = sub_5544(26);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 64);
      *buf = 136316162;
      v15 = "L77Device.cpp";
      v16 = 1024;
      v17 = 59;
      v18 = 2080;
      v19 = "SetRegister_block_invoke";
      v20 = 2048;
      *v21 = v12;
      *&v21[8] = 1024;
      v22[0] = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d L77Device::%s Invalid data buffer size (%lu != %u)", buf, 0x2Cu);
    }

    v6 = -2;
  }

  dispatch_release(v2);
  dispatch_release(*(a1 + 40));
  if (v6)
  {
    v8 = sub_5544(26);
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 68);
        v11 = *(a1 + 72);
        *buf = 136316418;
        v15 = "L77Device.cpp";
        v16 = 1024;
        v17 = 73;
        v18 = 2080;
        v19 = "SetRegister_block_invoke";
        v20 = 1024;
        *v21 = v10;
        *&v21[4] = 1024;
        *&v21[6] = v11;
        LOWORD(v22[0]) = 1024;
        *(v22 + 2) = v6;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d L77Device::%s failed, addr=0x%x, length=0x%x, status = 0x%x", buf, 0x2Eu);
      }
    }
  }

  if (*(a1 + 76) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = v6;
  }
}

uint64_t sub_1D72C0(uint64_t a1, uint64_t a2, NSObject **a3, int a4, uint64_t a5, int a6, int *a7, uint64_t a8)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = -1;
  if (!a8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "context is null");
  }

  v8 = a5;
  if (a5)
  {
    v11 = *a3;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 0x40000000;
    v23[2] = sub_1D75A8;
    v23[3] = &unk_6B6980;
    v23[4] = &v27;
    v23[5] = a2;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v23[6] = a8;
    v23[7] = a7;
    dispatch_sync(v11, v23);
    if (v8 >= 4)
    {
      v12 = sub_5544(26);
      v13 = *v12;
      if (*v12)
      {
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
        {
          v14 = *a7;
          v15 = a7[1];
          v16 = a7[3];
          v17 = a7[4];
          *buf = 136317186;
          v32 = "L77Device.cpp";
          v33 = 1024;
          v34 = 114;
          v35 = 2080;
          v36 = "GetRegister";
          v37 = 1024;
          v38 = a4;
          v39 = 1024;
          v40 = v8;
          v41 = 1024;
          v42 = v14;
          v43 = 1024;
          v44 = v15;
          v45 = 1024;
          v46 = v16;
          v47 = 1024;
          v48 = v17;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d L77Device::%s addr=0x%x, length=0x%x Data:%08x:%08x:%08x:%08x", buf, 0x40u);
        }
      }
    }

    if (*(v28 + 6))
    {
      v18 = sub_5544(26);
      v19 = *v18;
      if (*v18)
      {
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          v20 = *(v28 + 6);
          *buf = 136316418;
          v32 = "L77Device.cpp";
          v33 = 1024;
          v34 = 116;
          v35 = 2080;
          v36 = "GetRegister";
          v37 = 1024;
          v38 = a4;
          v39 = 1024;
          v40 = v8;
          v41 = 1024;
          v42 = v20;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d L77Device::%s failed, addr=0x%x, length=0x%x, status = 0x%x", buf, 0x2Eu);
        }
      }
    }

    v8 = *(v28 + 6);
  }

  _Block_object_dispose(&v27, 8);
  return v8;
}

void sub_1D7578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1D75A8(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1D7634;
  v3[3] = &unk_6B6958;
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v1 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = v1;
  return sub_138DB0(v3);
}

uint64_t sub_1D7634(uint64_t a1)
{
  result = sub_44F7FC(*(a1 + 40), 0x73627261u, 0, 0, 4, (a1 + 64), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!result)
  {
    result = sub_44F7FC(*(a1 + 40), 0x7362726Cu, 0, 0, 4, (a1 + 68), *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = result;
    if (!result)
    {
      v3 = *(a1 + 72);
      v4 = 0;
      result = sub_44FB2C(*(a1 + 40), 0x63616E63u, 4, &v4, &v3, *(a1 + 56), *(a1 + 48));
      *(*(*(a1 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

void sub_1D7714(uint64_t a1)
{
  sub_1D8A20(a1);

  operator delete();
}

void sub_1D77C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float sub_1D77DC(uint64_t a1, float *a2, uint64_t a3)
{
  v10 = 0.0;
  v9 = 8;
  v4 = sub_44FB2C(*(a1 + 8), 0x6E737274u, 0, 0, &v9, &v10, a3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_5544(26);
    v8 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v12 = "CodecDevice.cpp";
        v13 = 1024;
        v14 = 406;
        v15 = 2080;
        v16 = "getSampleRate";
        v17 = 1024;
        v18 = v5;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d CodecDevice::%s failed to get sampleRate status:%x", buf, 0x22u);
      }
    }
  }

  else
  {
    result = v10;
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D7900(uint64_t a1, uint64_t a2, int a3, const void **a4, uint64_t a5, uint64_t a6)
{
  v42 = (*(*a1 + 24))(a1);
  v11 = (*(*a1 + 160))(a1, a2);
  v43 = a1;
  v12 = *(a1 + 16);
  if (v12)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_49:
    if (!a5 || *(a5 + 3) != 1)
    {
      return 0;
    }

    v34 = 0;
    *(a5 + 4) = 0;
    return v34;
  }

  v12 = (*(*a1 + 64))(a1, *(a1 + 8), a6);
  *(a1 + 16) = v12;
  if (!a3)
  {
    goto LABEL_49;
  }

LABEL_3:
  if (a5 && *(a5 + 3) == 1)
  {
    v36 = mach_absolute_time();
    v12 = *(a1 + 16);
  }

  else
  {
    v36 = 0;
  }

  v44 = malloc_type_calloc(v12, 1uLL, 0xAB0DE897uLL);
  if (v42)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  v37 = a5;
  if (a3 < 1)
  {
LABEL_47:
    v34 = 0;
  }

  else
  {
    v14 = *(v43 + 16) >> v13;
    if (v11)
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    v38 = v15;
    v39 = *(v43 + 16) >> v13;
    v40 = v13;
    while (1)
    {
      v16 = a3 >= v14 ? v14 : a3;
      v17 = (*(*v43 + 48))(v43, *(v43 + 8), v43 + 24, a2, v16, (v16 << v13), v44, a6);
      if (v17)
      {
        break;
      }

      if (v42)
      {
        if (v14)
        {
          if (v16 <= 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = v16;
          }

          v19 = v44;
          do
          {
            sub_AFD28(a4, v19++);
            --v18;
          }

          while (v18);
        }
      }

      else if (v14)
      {
        if (v16 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v16;
        }

        v21 = a4[1];
        v22 = v44;
        do
        {
          v24 = *v22++;
          v23 = v24;
          v25 = a4[2];
          if (v21 >= v25)
          {
            v26 = *a4;
            v27 = v21 - *a4;
            v28 = (v27 >> 2) + 1;
            if (v28 >> 62)
            {
              sub_189A00();
            }

            v29 = v25 - v26;
            if (v29 >> 1 > v28)
            {
              v28 = v29 >> 1;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v30 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              sub_1D7C28(v30);
            }

            v31 = (4 * (v27 >> 2));
            *v31 = v23;
            v21 = (v31 + 1);
            memcpy(0, v26, v27);
            v32 = *a4;
            *a4 = 0;
            a4[1] = v21;
            a4[2] = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *v21 = v23;
            v21 += 4;
          }

          a4[1] = v21;
          --v20;
        }

        while (v20);
      }

      v14 = v39;
      a2 = ((v16 << v38) + a2);
      v33 = __OFSUB__(a3, v16);
      a3 -= v16;
      v13 = v40;
      if ((a3 < 0) ^ v33 | (a3 == 0))
      {
        goto LABEL_47;
      }
    }

    v34 = v17;
  }

  if (v37 && *(v37 + 3) == 1)
  {
    *(v37 + 4) = sub_37D544(v36);
  }

  free(v44);
  return v34;
}

void sub_1D7C28(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  sub_6ACD8();
}

uint64_t sub_1D7C9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    return (*(*a1 + 48))(a1, a1[1], a1 + 3, a2, a3, a4, a5, a6);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7CE4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    if (a2[1] != *a2)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v7 = *(a3 + 3);
  if (a2[1] == *a2)
  {
    if (*(a3 + 3))
    {
      v19 = 0;
      *(a3 + 4) = 0;
      return v19;
    }

    return 0;
  }

  if (!*(a3 + 3))
  {
LABEL_6:
    v8 = 0;
    v9 = 0;
    goto LABEL_7;
  }

  v8 = 1;
  v9 = mach_absolute_time();
LABEL_7:
  v23 = a3;
  __p = 0;
  v27 = 0;
  v28 = 0;
  v21 = v9;
  v22 = v8;
  if ((*(*a1 + 24))(a1, 0))
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  v11 = *a2;
  if (a2[1] != *a2)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = (v11 + 8 * v12);
      v18 = *v17;
      v25 = v17[1];
      if (v16)
      {
        sub_F2A2C(&__p, 0);
        v14 = (v18 - v10);
        v15 = v18;
      }

      v16 = v18 - v14 != v10;
      if (v18 - v14 == v10)
      {
        sub_AFD28(&__p, &v25);
        v12 = ++v13;
        if (v13 == (a2[1] - *a2) >> 3)
        {
          v19 = (*(*a1 + 88))(a1, v15, &__p, v23, a4);
          if (v19)
          {
            goto LABEL_22;
          }

          v16 = 1;
        }
      }

      else
      {
        v19 = (*(*a1 + 88))(a1, v15, &__p, v23, a4);
        if (v19)
        {
          goto LABEL_22;
        }

        v12 = v13;
        v18 = v14;
      }

      v11 = *a2;
      v14 = v18;
    }

    while (v12 < (a2[1] - *a2) >> 3);
  }

  v19 = 0;
LABEL_22:
  if (v22)
  {
    *(v23 + 4) = sub_37D544(v21);
  }

  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  return v19;
}

void sub_1D7F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D7F40(uint64_t a1, int a2, int **a3, uint64_t a4, uint64_t a5)
{
  v66 = (*(*a1 + 24))(a1);
  if (a4)
  {
    v62 = *a4 ^ 1;
    v7 = *(a4 + 3);
    v60 = *(a4 + 1);
  }

  else
  {
    v7 = 0;
    v60 = 0;
    v62 = 1;
  }

  v8 = *(a1 + 16);
  if (!v8)
  {
    v8 = (*(*a1 + 64))(a1, *(a1 + 8), a5);
    *(a1 + 16) = v8;
  }

  if (!(v62 & 1 | ((v60 & 1) == 0)))
  {
    v10 = sub_5544(26);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v68 = "CodecDevice.cpp";
      v69 = 1024;
      v70 = 107;
      v71 = 2080;
      v72 = "SetDataBlockWithOptions";
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d L77Device::%s cannot write memory asynchronously with verifyWrite enabled.", buf, 0x1Cu);
    }

    return 5;
  }

  if (a3[1] == *a3)
  {
    v12 = 0;
    if (v7)
    {
      *(a4 + 4) = 0;
    }

    return v12;
  }

  if (a4 && *(a4 + 3) == 1)
  {
    v9 = mach_absolute_time();
    v8 = *(a1 + 16);
  }

  else
  {
    v9 = 0;
  }

  if (v66)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  v53 = v13;
  v50 = v9;
  if (v60)
  {
    v65 = malloc_type_calloc(v8, 4uLL, 0x100004052888210uLL);
  }

  else
  {
    v65 = 0;
  }

  v14 = *a3;
  v15 = a3[1];
  v56 = a4;
  v51 = v7;
  if ((v66 & 1) == 0 && v14 != v15)
  {
    v16 = *v14;
    operator new();
  }

  if (v15 == v14)
  {
    v12 = 0;
    goto LABEL_104;
  }

  v59 = 0;
  v17 = 0;
  v18 = 0;
  v19 = v8 >> v53;
  v20 = v15 - v14;
  v57 = v8 >> v53;
  while (1)
  {
    if (v19 >= v20 - v18)
    {
      v21 = v20 - v18;
    }

    else
    {
      v21 = v19;
    }

    if (v66)
    {
      v22 = &v14[v17];
    }

    else
    {
      v22 = v17;
    }

    v63 = v22;
    if (v66)
    {
      v23 = 0;
    }

    else
    {
      v23 = v17;
    }

    if (v66)
    {
      v24 = &v14[v17];
    }

    else
    {
      v24 = 0;
    }

    if (!*(a1 + 16))
    {
      *(a1 + 16) = (*(*a1 + 64))(a1, *(a1 + 8), a5);
    }

    v58 = v18;
    if (!a4 || *(v56 + 2) != 1)
    {
      break;
    }

    if (v66)
    {
      if (!v21)
      {
        goto LABEL_90;
      }

      v25 = 0;
      v26 = (v59 + v20);
      if (v57 < v26)
      {
        v26 = v57;
      }

      do
      {
        v27 = *v24++;
        v25 |= v27;
        --v26;
      }

      while (v26);
    }

    else
    {
      if (!v21)
      {
        goto LABEL_90;
      }

      v25 = 0;
      v28 = (v59 + v20);
      if (v57 < v28)
      {
        v28 = v57;
      }

      do
      {
        v29 = *v23++;
        v25 |= v29;
        --v28;
      }

      while (v28);
    }

    if (v25)
    {
      break;
    }

LABEL_90:
    v19 = v57;
    v17 = v58 + v57;
    v14 = *a3;
    v20 = a3[1] - *a3;
    v59 -= v57;
    v18 = v58 + v57;
    a4 = v56;
    if (v20 <= v17)
    {
      v12 = 0;
      v7 = v51;
      goto LABEL_104;
    }
  }

  v30 = (v18 << v53) + a2;
  v31 = (v21 << v53);
  v61 = v18;
  if (v57 >= (v59 + v20))
  {
    v32 = (v59 + v20);
  }

  else
  {
    v32 = v57;
  }

  v33 = &v14[v18];
  v34 = 5;
  v35 = 1;
  while (2)
  {
    v12 = (*(*a1 + 56))(a1, *(a1 + 8), a1 + 24, v62 & 1, v30, v21, v31, v63, a5);
    if (v12)
    {
      v36 = sub_5544(26);
      v37 = *v36;
      if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v68 = "CodecDevice.cpp";
        v69 = 1024;
        v70 = 169;
        v71 = 2080;
        v72 = "SetDataBlockWithOptions";
        v73 = 1024;
        v74 = v30;
        v75 = 1024;
        v76 = v21;
        v77 = 1024;
        v78 = v12;
        v79 = 1024;
        v80 = v34 - 1;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d L77Device::%s _SetRegister( addr=0x%x, len=%d) failed, status = %d. Tries remaining = %d", buf, 0x34u);
      }

LABEL_68:
      if (--v34)
      {
        continue;
      }

      if (v12)
      {
        goto LABEL_96;
      }

      if (v35)
      {
        goto LABEL_90;
      }

      v47 = sub_5544(26);
      v48 = *v47;
      v7 = v51;
      if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v68 = "CodecDevice.cpp";
        v69 = 1024;
        v70 = 215;
        v71 = 2080;
        v72 = "SetDataBlockWithOptions";
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d L77Device::%s verification failed", buf, 0x1Cu);
      }

      v12 = 0xFFFFFFFFLL;
LABEL_103:
      a4 = v56;
      goto LABEL_104;
    }

    break;
  }

  if (v60 & 1) == 0 || ((*(*a1 + 32))(a1, v30))
  {
    if (v35)
    {
      goto LABEL_90;
    }

LABEL_67:
    v35 = 0;
    v12 = 0;
    goto LABEL_68;
  }

  v12 = (*(*a1 + 48))(a1, *(a1 + 8), a1 + 24, v30, v21, v31, v65, a5);
  if (!v12)
  {
    if (!v21)
    {
      goto LABEL_90;
    }

    v38 = 0;
    while (1)
    {
      if (v66)
      {
        v39 = v33[v38];
        v40 = v65[v38];
      }

      else
      {
        v39 = *(v61 + v38);
        v40 = *(v65 + v38);
      }

      if (v39 != v40)
      {
        if (HIBYTE(v40) != 255)
        {
          break;
        }

        if ((v39 & 0xFF800000) != 0x800000 || ((v40 ^ v39) & 0xFFFFFF) != 0)
        {
          break;
        }
      }

      if (v32 == ++v38)
      {
        goto LABEL_90;
      }
    }

    v42 = *sub_5544(26);
    if (v42)
    {
      log = v42;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v68 = "CodecDevice.cpp";
        v69 = 1024;
        v70 = 200;
        v71 = 2080;
        v72 = "SetDataBlockWithOptions";
        v73 = 1024;
        v74 = v39;
        v75 = 1024;
        v76 = v40;
        v77 = 1024;
        v78 = v30 + v38;
        v79 = 1024;
        v80 = v34;
        _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d L77Device::%s verify failed (0x%x != 0x%x), addr=0x%x. Tries remaining = %u", buf, 0x34u);
      }
    }

    goto LABEL_67;
  }

  v43 = sub_5544(26);
  v44 = *v43;
  if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316418;
    v68 = "CodecDevice.cpp";
    v69 = 1024;
    v70 = 176;
    v71 = 2080;
    v72 = "SetDataBlockWithOptions";
    v73 = 1024;
    v74 = v30;
    v75 = 1024;
    v76 = v21;
    v77 = 1024;
    v78 = v12;
    _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d L77Device::%s _GetRegister( addr=0x%x, len=%d) failed, status = %d", buf, 0x2Eu);
  }

LABEL_96:
  v45 = sub_5544(26);
  v46 = *v45;
  v7 = v51;
  if (!*v45)
  {
    goto LABEL_103;
  }

  a4 = v56;
  if (os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v68 = "CodecDevice.cpp";
    v69 = 1024;
    v70 = 210;
    v71 = 2080;
    v72 = "SetDataBlockWithOptions";
    _os_log_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d L77Device::%s Failed", buf, 0x1Cu);
  }

LABEL_104:
  if (v60)
  {
    free(v65);
  }

  if (v7)
  {
    *(a4 + 4) = sub_37D544(v50);
  }

  return v12;
}

void sub_1D8890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D88FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    return (*(*a1 + 56))(a1, a1[1], a1 + 3, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8A20(uint64_t a1)
{
  *a1 = off_6B6B10;
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1D8ACC;
  block[3] = &unk_6B6BE0;
  block[4] = a1;
  dispatch_sync(v2, block);
  dispatch_release(*(a1 + 24));
  sub_1D8B48((a1 + 8));
  return a1;
}

uint64_t sub_1D8ACC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1D8BAC;
  v3[3] = &unk_6B6BC0;
  v3[4] = v1;
  return sub_138DB0(v3);
}

uint64_t *sub_1D8B48(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

void sub_1D8BB8(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_6ACD8();
}

std::string *sub_1D8C10(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1D8C58(a1, __s, v4);
}

std::string *sub_1D8C58(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

void *sub_1D8D14(void *result, unsigned int *a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a3)
  {
    v3 = a2;
    v4 = 0;
    v5 = result + 1;
    while (1)
    {
      v6 = result + 1;
      if (v5 == result + 1)
      {
        goto LABEL_9;
      }

      v7 = v4;
      v8 = result + 1;
      if (v4)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *v3;
      if (*(v6 + 8) < *v3)
      {
LABEL_9:
        v11 = v4 ? v6 + 1 : result + 1;
      }

      else
      {
        v11 = result + 1;
        if (v4)
        {
          v11 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v4;
              v13 = *(v4 + 32);
              if (v10 >= v13)
              {
                break;
              }

              v4 = *v12;
              v11 = v12;
              if (!*v12)
              {
                goto LABEL_13;
              }
            }

            if (v13 >= v10)
            {
              break;
            }

            v11 = v12 + 1;
            v4 = v12[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v11)
      {
LABEL_13:
        operator new();
      }

      v3 += 6;
      if (v3 == &a2[6 * a3])
      {
        break;
      }

      v5 = *result;
      v4 = result[1];
    }
  }

  return result;
}

uint64_t sub_1D8EB0(uint64_t a1)
{
  sub_1D8EEC(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1D8EEC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      sub_1D8F30((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_1D8F30(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1D8F88(uint64_t a1, char **a2, const void **a3, const void **a4, const void **a5, uint64_t a6)
{
  if (!*a3)
  {
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "DSPHALInterface.cpp";
      v30 = 1024;
      v31 = 53;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v28, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_1DB958(a1);
  if ((a1 + 24) != a2)
  {
    sub_16B928((a1 + 24), *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  v12 = *(a1 + 48);
  v13 = *a3;
  *(a1 + 48) = *a3;
  if (v13)
  {
    CFRetain(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v14 = *(a1 + 56);
  v15 = *a4;
  *(a1 + 56) = *a4;
  if (v15)
  {
    CFRetain(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v16 = *(a1 + 64);
  v17 = *a5;
  *(a1 + 64) = *a5;
  if (v17)
  {
    CFRetain(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v18 = (a1 + 104);
  if (a1 + 104 != a6)
  {
    *(a1 + 136) = *(a6 + 32);
    v19 = *(a6 + 16);
    v20 = *(a1 + 112);
    if (v20)
    {
      for (i = 0; i != v20; ++i)
      {
        *(*v18 + 8 * i) = 0;
      }

      v22 = *(a1 + 120);
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      if (v22)
      {
        v23 = v19 == 0;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        v24 = v22;
      }

      else
      {
        do
        {
          std::string::operator=((v22 + 2), (v19 + 2));
          std::string::operator=((v22 + 5), (v19 + 5));
          v24 = *v22;
          sub_1DBC58(v18, v22);
          v19 = *v19;
          if (!v24)
          {
            break;
          }

          v22 = v24;
        }

        while (v19);
      }

      sub_1D8EEC(v24);
    }

    if (v19)
    {
      operator new();
    }
  }
}

void sub_1D9258(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    sub_1D8EEC(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1D929C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1D92B8(uint64_t a1)
{
  if ((*(a1 + 149) & 1) == 0)
  {
    v2 = sub_5544(25);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      sub_1D9C0C(&__p, *(a1 + 24), *(a1 + 32));
      v4 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "DSPHALInterface.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 67;
      *&buf[18] = 2080;
      *&buf[20] = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Loading HAL DSP. Input Streams: %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    memset(&__p, 0, sizeof(__p));
    sub_88CE8(buf, "dsp graph");
    v5 = *(a1 + 48);
    if (v5)
    {
      CFRetain(*(a1 + 48));
    }

    *&buf[8] = v5;
    sub_88E68(&__p, buf);
    if (*&buf[8])
    {
      CFRelease(*&buf[8]);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }

    sub_1D9D24(buf, "target stream", (a1 + 144));
    sub_88E68(&__p, buf);
    if (*&buf[8])
    {
      CFRelease(*&buf[8]);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }

    if (*(a1 + 56))
    {
      sub_88CE8(buf, "au tuning strip");
      v6 = *(a1 + 56);
      if (v6)
      {
        CFRetain(*(a1 + 56));
      }

      *&buf[8] = v6;
      sub_88E68(&__p, buf);
      if (*&buf[8])
      {
        CFRelease(*&buf[8]);
      }

      if (*buf)
      {
        CFRelease(*buf);
      }
    }

    if (*(a1 + 64))
    {
      sub_88CE8(buf, "property strip");
      v7 = *(a1 + 64);
      if (v7)
      {
        CFRetain(*(a1 + 64));
      }

      *&buf[8] = v7;
      sub_88E68(&__p, buf);
      if (*&buf[8])
      {
        CFRelease(*&buf[8]);
      }

      if (*buf)
      {
        CFRelease(*buf);
      }
    }

    if (*(a1 + 24) != *(a1 + 32))
    {
      v8 = sub_AFB90((a1 + 24));
      cf[0] = v8;
      sub_88CE8(buf, "input stream busses");
      CFRetain(v8);
      *&buf[8] = v8;
      sub_88E68(&__p, buf);
      if (*&buf[8])
      {
        CFRelease(*&buf[8]);
      }

      if (*buf)
      {
        CFRelease(*buf);
      }

      CFRelease(v8);
    }

    if (*(a1 + 72))
    {
      sub_88CE8(buf, "initialization properties");
      v9 = *(a1 + 72);
      if (v9)
      {
        CFRetain(*(a1 + 72));
      }

      *&buf[8] = v9;
      sub_88E68(&__p, buf);
      if (*&buf[8])
      {
        CFRelease(*&buf[8]);
      }

      if (*buf)
      {
        CFRelease(*buf);
      }
    }

    v10 = *(a1 + 128);
    if (v10)
    {
      memset(buf, 0, 24);
      sub_68DB4(buf, v10);
      v11 = *(a1 + 120);
      if (v11)
      {
        v12 = *&buf[8];
        do
        {
          if (v12 >= *&buf[16])
          {
            v12 = sub_1D9F54(buf, v11 + 16, (v11 + 40));
          }

          else
          {
            sub_1D9DF0(v12, v11 + 16, (v11 + 40));
            v12 += 2;
          }

          *&buf[8] = v12;
          v11 = *v11;
        }

        while (v11);
      }

      v13 = sub_65448(buf);
      v37[0] = buf;
      sub_65830(v37);
      v36 = v13;
      sub_88CE8(cf, "dsp graph string substitutions");
      CFRetain(v13);
      cf[1] = v13;
      sub_88E68(&__p, cf);
      if (cf[1])
      {
        CFRelease(cf[1]);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      CFRelease(v13);
    }

    if (*(a1 + 156) == 1)
    {
      sub_88CE8(buf, "client channel count");
      LODWORD(cf[0]) = *(a1 + 152);
      *&buf[8] = CFNumberCreate(0, kCFNumberIntType, cf);
      if (!*&buf[8])
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      sub_88E68(&__p, buf);
      if (*&buf[8])
      {
        CFRelease(*&buf[8]);
      }

      if (*buf)
      {
        CFRelease(*buf);
      }
    }

    v14 = sub_65448(&__p);
    v34 = v14;
    sub_1DA068(*(a1 + 16), &v34);
    v15 = *(a1 + 16);
    strcpy(v37, "psdhptuo");
    BYTE1(v37[1]) = 0;
    WORD1(v37[1]) = 0;
    sub_160714(buf, v15);
    v16 = *buf;
    if (*buf || (buf[16] & 1) == 0)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      *v25 = &off_6DDDD0;
      v25[2] = v16;
    }

    v17 = *&buf[8];
    if (!*&buf[8])
    {
      v36 = 0;
      v26 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v26, "Could not construct");
    }

    CFRetain(*&buf[8]);
    v36 = v17;
    CFRelease(v17);
    sub_A4C5C(buf, v17, "dsp graph");
    if (buf[24])
    {
      if (buf[23] < 0)
      {
        sub_54A0(cf, *buf, *&buf[8]);
        operator delete(*buf);
      }

      else
      {
        *cf = *buf;
        v33 = *&buf[16];
      }
    }

    else
    {
      sub_53E8(cf, "");
    }

    CFRelease(v17);
    v18 = *(a1 + 48);
    if (!v18)
    {
      v27 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v27, "Could not construct");
    }

    sub_125D8(buf, v18);
    if (v33 >= 0)
    {
      v19 = HIBYTE(v33);
    }

    else
    {
      v19 = cf[1];
    }

    v20 = buf[23];
    v21 = buf[23];
    if ((buf[23] & 0x80u) != 0)
    {
      v20 = *&buf[8];
    }

    if (v19 == v20)
    {
      if (v33 >= 0)
      {
        v22 = cf;
      }

      else
      {
        v22 = cf[0];
      }

      if ((buf[23] & 0x80u) == 0)
      {
        v23 = buf;
      }

      else
      {
        v23 = *buf;
      }

      v24 = memcmp(v22, v23, v19) == 0;
      if ((v21 & 0x80000000) == 0)
      {
LABEL_89:
        if (!v24)
        {
          v28 = sub_5544(14);
          v29 = *v28;
          if (*v28)
          {
            if (os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "DSPHALInterface.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 97;
              _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }
          }

          v30 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v30, "Postcondition failure.");
        }

        *(a1 + 149) = 1;
        if (SHIBYTE(v33) < 0)
        {
          operator delete(cf[0]);
          if (!v14)
          {
LABEL_95:
            *buf = &__p;
            sub_65830(buf);
            return;
          }
        }

        else if (!v14)
        {
          goto LABEL_95;
        }

        CFRelease(v14);
        goto LABEL_95;
      }
    }

    else
    {
      v24 = 0;
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_89;
      }
    }

    operator delete(*buf);
    goto LABEL_89;
  }
}

void sub_1D9A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, __int16 *a24, uint64_t a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_4BA7C(&a15);
  a24 = &a16;
  sub_65830(&a24);
  _Unwind_Resume(a1);
}

std::string *sub_1D9C0C(std::string *a1, unsigned int *a2, unsigned int *a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      std::to_string(&v9, *a2);
      v7 = (v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v9 : v9.__r_.__value_.__r.__words[0];
      v8 = (v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v9.__r_.__value_.__r.__words[2]) : v9.__r_.__value_.__l.__size_;
      std::string::append(a1, v7, v8);
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      if (++a2 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_1D9CE8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D0C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1D9CF4);
}

uint64_t sub_1D9D24(uint64_t a1, char *a2, int *a3)
{
  sub_88CE8(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1D9DBC(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

CFStringRef *sub_1D9DF0(CFStringRef *a1, const UInt8 *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  v11 = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
  a1[1] = v11;
  if (!v11)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
  }

  return a1;
}

void sub_1D9F00(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9F54(uint64_t a1, const UInt8 *a2, uint64_t a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    sub_189A00();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v4)
  {
    v4 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    sub_1DB894(v7);
  }

  v14 = 0;
  v15 = 16 * v3;
  sub_1D9DF0((16 * v3), a2, a3);
  v16 = (16 * v3 + 16);
  v8 = *(a1 + 8);
  v9 = (16 * v3 + *a1 - v8);
  sub_65184(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_65134(&v14);
  return v13;
}

void sub_1DA054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_65134(va);
  _Unwind_Resume(a1);
}

void sub_1DA068(uint64_t a1, CFTypeRef *a2)
{
  v3 = (*(*a1 + 120))(a1);
  *&v38.mSelector = 0x6F75747068647370;
  v38.mElement = 0;
  v4 = sub_5544(14);
  if ((*(v4 + 8) & 1) != 0 && *v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v56.__cv_.__sig = *&v38.mSelector;
    *v56.__cv_.__opaque = v38.mElement;
    sub_22CE0(&v57);
  }

  buf = v38;
  if (!AudioObjectHasProperty(v3, &buf))
  {
    v34 = sub_5544(14);
    if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      v56.__cv_.__sig = *&v38.mSelector;
      *v56.__cv_.__opaque = v38.mElement;
      sub_22CE0(&v57);
    }

LABEL_109:
    v35 = sub_5544(14);
    v36 = *v35;
    if (*v35)
    {
      if (os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315394;
        *&buf.mScope = "DSPHALInterface.cpp";
        v50 = 1024;
        v51 = 217;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", &buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Postcondition failure.");
  }

  memset(v57.__m_.__opaque, 0, sizeof(v57.__m_.__opaque));
  v57.__m_.__sig = 850045863;
  memset(v56.__cv_.__opaque, 0, sizeof(v56.__cv_.__opaque));
  v56.__cv_.__sig = 1018212795;
  v48 = 0;
  sub_745E8(v47, v3, &v38, &v56, &v57, &v48);
  v43 = v3;
  v44 = v38;
  v45 = 0;
  v46 = 0;
  buf = v38;
  if (!sub_66E40(v3, &buf))
  {
    v8 = sub_5544(14);
    LODWORD(v9) = 1852797029;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      cf1 = v38;
      sub_22CE0(__p);
    }

    goto LABEL_104;
  }

  sub_1DB194(&cf, &v43);
  if (cf.mElement)
  {
    goto LABEL_24;
  }

  v5 = *&cf.mSelector;
  if (*&cf.mSelector)
  {
    CFRetain(*&cf.mSelector);
  }

  v6 = *a2;
  if (!*a2)
  {
    v7 = sub_1DB450(v5, 0);
    if (!v5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  CFRetain(*a2);
  v7 = sub_1DB450(v5, v6);
  CFRelease(v6);
  if (v5)
  {
LABEL_17:
    CFRelease(v5);
  }

LABEL_18:
  if (v7)
  {
    v10 = sub_5544(14);
    if ((*(v10 + 8) & 1) == 0)
    {
LABEL_23:
      LOBYTE(v11) = 0;
      LODWORD(v9) = 0;
      goto LABEL_34;
    }

    v9 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        buf.mSelector = 136315650;
        *&buf.mScope = "HALPropertySynchronizer.h";
        v50 = 1024;
        v51 = 294;
        v52 = 1024;
        LODWORD(v53) = v3;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
      }

      goto LABEL_23;
    }

LABEL_32:
    LOBYTE(v11) = 0;
    goto LABEL_34;
  }

LABEL_24:
  v12 = sub_5544(14);
  if ((*(v12 + 8) & 1) != 0 && *v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
  {
    cf1 = v38;
    sub_22CE0(__p);
  }

  buf = v38;
  __p[0] = *a2;
  LODWORD(v9) = AudioObjectSetPropertyData(v3, &buf, 0, 0, 8u, __p);
  if (v9)
  {
    v13 = sub_5544(14);
    v11 = *v13;
    if (!*v13)
    {
      goto LABEL_34;
    }

    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, v9);
      v39 = v38;
      sub_22CE0(&cf1);
    }

    goto LABEL_32;
  }

  LOBYTE(v11) = 1;
LABEL_34:
  if (*&cf.mSelector)
  {
    CFRelease(*&cf.mSelector);
  }

  if (v11)
  {
    sub_1DB194(&cf1, &v43);
    if (cf1.mElement)
    {
LABEL_50:
      v19 = 2000;
      while (1)
      {
        sub_1DB194(&cf, &v43);
        v20 = *&cf.mSelector;
        if (cf.mElement)
        {
          v21 = 1;
          LODWORD(v9) = cf.mElement;
          if (!*&cf.mSelector)
          {
            goto LABEL_95;
          }

          goto LABEL_94;
        }

        if (*&cf.mSelector)
        {
          CFRetain(*&cf.mSelector);
        }

        v22 = *a2;
        if (!*a2)
        {
          break;
        }

        CFRetain(*a2);
        v23 = sub_1DB450(v20, v22);
        CFRelease(v22);
        if (v20)
        {
          goto LABEL_60;
        }

LABEL_61:
        if (v23)
        {
          v21 = 16;
          if (!v20)
          {
            goto LABEL_95;
          }

          goto LABEL_94;
        }

        if (v19 > 0)
        {
          v24.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          v25 = sub_5544(14);
          if (*(v25 + 8))
          {
            v26 = *v25;
            if (*v25)
            {
              if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
              {
                buf.mSelector = 136315906;
                *&buf.mScope = "HALPropertySynchronizer.h";
                v50 = 1024;
                v51 = 354;
                v52 = 2080;
                v53 = "with timeout";
                v54 = 1024;
                v55 = v3;
                _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
              }
            }
          }

          sub_27A4();
          LOBYTE(__p[0]) = sub_2E6B08();
          *&buf.mSelector = &v57;
          LOBYTE(buf.mElement) = 1;
          std::mutex::lock(&v57);
          v27.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
          while (1)
          {
            if ((v48 & 1) != 0 || v27.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
            {
LABEL_86:
              if (LOBYTE(buf.mElement) == 1)
              {
                std::mutex::unlock(*&buf.mSelector);
              }

              sub_1DB4C4(__p);
              v21 = 0;
              v19 += (std::chrono::system_clock::now().__d_.__rep_ - v24.__d_.__rep_) / -1000;
              if (!v20)
              {
                goto LABEL_95;
              }

LABEL_94:
              CFRelease(v20);
              goto LABEL_95;
            }

            v28.__d_.__rep_ = v27.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
            if (v28.__d_.__rep_ >= 1)
            {
              break;
            }

LABEL_85:
            if (std::chrono::steady_clock::now().__d_.__rep_ >= v27.__d_.__rep_)
            {
              goto LABEL_86;
            }
          }

          std::chrono::steady_clock::now();
          v29.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          if (v29.__d_.__rep_)
          {
            if (v29.__d_.__rep_ < 1)
            {
              if (v29.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
              {
                goto LABEL_80;
              }

              v30 = 0x8000000000000000;
            }

            else
            {
              if (v29.__d_.__rep_ > 0x20C49BA5E353F7)
              {
                v30 = 0x7FFFFFFFFFFFFFFFLL;
                goto LABEL_81;
              }

LABEL_80:
              v30 = 1000 * v29.__d_.__rep_;
LABEL_81:
              if (v30 > (v28.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
              {
                v31.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_84:
                std::condition_variable::__do_timed_wait(&v56, &buf, v31);
                std::chrono::steady_clock::now();
                goto LABEL_85;
              }
            }
          }

          else
          {
            v30 = 0;
          }

          v31.__d_.__rep_ = v30 + v28.__d_.__rep_;
          goto LABEL_84;
        }

        v32 = sub_5544(14);
        if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
        {
          v39 = v38;
          sub_22CE0(__p);
        }

        v21 = 1;
        LODWORD(v9) = 2003329396;
        if (v20)
        {
          goto LABEL_94;
        }

LABEL_95:
        if (v21)
        {
          if (v21 != 16)
          {
            goto LABEL_102;
          }

          v33 = sub_5544(14);
          if ((*(v33 + 8) & 1) != 0 && *v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_DEBUG))
          {
            cf = v38;
            sub_22CE0(__p);
          }

LABEL_101:
          LODWORD(v9) = 0;
LABEL_102:
          if (*&cf1.mSelector)
          {
            CFRelease(*&cf1.mSelector);
          }

          goto LABEL_104;
        }
      }

      v23 = sub_1DB450(v20, 0);
      if (!v20)
      {
        goto LABEL_61;
      }

LABEL_60:
      CFRelease(v20);
      goto LABEL_61;
    }

    v14 = *&cf1.mSelector;
    if (*&cf1.mSelector)
    {
      CFRetain(*&cf1.mSelector);
    }

    v15 = *a2;
    if (*a2)
    {
      CFRetain(*a2);
      v16 = sub_1DB450(v14, v15);
      CFRelease(v15);
      if (!v14)
      {
LABEL_45:
        if (v16)
        {
          v17 = sub_5544(14);
          if (*(v17 + 8))
          {
            v18 = *v17;
            if (*v17)
            {
              if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
              {
                buf.mSelector = 136315650;
                *&buf.mScope = "HALPropertySynchronizer.h";
                v50 = 1024;
                v51 = 322;
                v52 = 1024;
                LODWORD(v53) = v3;
                _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
              }
            }
          }

          goto LABEL_101;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v16 = sub_1DB450(v14, 0);
      if (!v14)
      {
        goto LABEL_45;
      }
    }

    CFRelease(v14);
    goto LABEL_45;
  }

LABEL_104:
  sub_73C20(v47);
  std::condition_variable::~condition_variable(&v56);
  std::mutex::~mutex(&v57);
  if (v9)
  {
    goto LABEL_109;
  }
}

void sub_1DAD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, const void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, AudioObjectPropertySelector a32)
{
  sub_1DB490(&a17);
  sub_73C20(&a32);
  std::condition_variable::~condition_variable((v32 - 216));
  std::mutex::~mutex((v32 - 168));
  _Unwind_Resume(a1);
}

_BYTE *sub_1DAEC8(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

CFTypeID sub_1DAF78(CFTypeID result, const __CFString *a2)
{
  v2 = result;
  if (a2 && (TypeID = CFStringGetTypeID(), result = CFGetTypeID(a2), TypeID == result))
  {
    result = sub_1DAFFC(&v5, a2);
    *v2 = v5;
    *(v2 + 16) = v6;
    *(v2 + 24) = 1;
  }

  else
  {
    *v2 = 0;
    *(v2 + 24) = 0;
  }

  return result;
}

_BYTE *sub_1DAFFC(UInt8 *a1, CFStringRef theString)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {
    return sub_53E8(a1, CStringPtr);
  }

  Length = CFStringGetLength(theString);
  maxBufLen = 0;
  v9.location = 0;
  v9.length = Length;
  CFStringGetBytes(theString, v9, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  sub_1DAEC8(a1, maxBufLen, 0);
  if ((a1[23] & 0x80u) == 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v10.location = 0;
  v10.length = Length;
  return CFStringGetBytes(theString, v10, 0x8000100u, 0, 0, v7, maxBufLen, &maxBufLen);
}

const void **sub_1DB0E0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1DB114(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

const void **sub_1DB160(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1DB194(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 4;
  *&inAddress.mSelector = *(a2 + 4);
  v5 = *(a2 + 16);
  inAddress.mElement = *(a2 + 12);
  v6 = *(a2 + 24);
  LODWORD(v7) = 2003329396;
  if (!AudioObjectHasProperty(*a2, &inAddress))
  {
    LODWORD(v7) = 2003332927;
    v14 = 2003332927;
    LOBYTE(v15) = 0;
    v16 = 0;
    goto LABEL_9;
  }

  v14 = 2003329396;
  LOBYTE(v15) = 0;
  v16 = 0;
  ioDataSize = sub_543D0(*a2, &inAddress, v5, v6);
  if (!ioDataSize || (outData[0] = 0, LODWORD(v7) = AudioObjectGetPropertyData(*a2, &inAddress, v5, v6, &ioDataSize, outData), (v14 = v7) != 0))
  {
LABEL_9:
    v9 = sub_5544(14);
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      sub_22170(outData, v7);
      cf = *v4;
      v11 = *(v4 + 8);
      sub_22CE0(__p);
    }

    goto LABEL_12;
  }

  v8 = outData[0];
  __p[0] = outData[0];
  sub_A3C4C(&cf, __p);
  v7 = cf;
  v16 = 1;
  v15 = cf;
  if (v8)
  {
    CFRelease(v8);
    v7 = v15;
  }

  if (v7)
  {
    CFRetain(v7);
    *a1 = v7;
    *(a1 + 8) = 0;
    CFRelease(v7);
    return;
  }

LABEL_12:
  *a1 = 0;
  *(a1 + 8) = v7;
}

void sub_1DB3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

BOOL sub_1DB450(unint64_t cf1, unint64_t a2)
{
  result = (cf1 | a2) == 0;
  if (cf1)
  {
    if (a2)
    {
      return CFEqual(cf1, a2) != 0;
    }
  }

  return result;
}

const void **sub_1DB490(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

_BYTE *sub_1DB4C4(_BYTE *a1)
{
  sub_27A4();
  if (*a1 == 1)
  {
    std::mutex::lock(&qword_6E9560);
    v2 = dword_6E95B8;
    if (dword_6E95B8)
    {
      goto LABEL_3;
    }

    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "RoutingMutex.cpp";
      v8 = 1024;
      v9 = 123;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: no one was blocking on the HAL run loop", &v6, 0x12u);
    }

    v2 = dword_6E95B8;
    if (dword_6E95B8)
    {
LABEL_3:
      dword_6E95B8 = v2 - 1;
    }

    std::mutex::lock(&qword_6E95C0);
    byte_6E9600 = 1;
    std::condition_variable::notify_all(&qword_6E9608);
    std::mutex::unlock(&qword_6E95C0);
    std::mutex::unlock(&qword_6E9560);
    sub_42A43C(&qword_6E94F8);
  }

  return a1;
}

void sub_1DB608(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    std::mutex::unlock(&qword_6E9560);
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1DB63C(_BYTE *a1)
{
  if (*a1 == 1)
  {
    sub_27A4();
    (*(qword_6E94F8 + 16))();
  }

  return a1;
}

std::string *sub_1DB6A0(std::string *a1, uint64_t *a2, uint64_t *a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    v7 = *a2;
    v8 = *(a2 + 2);
    sub_22CE0(&__p);
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_1DB78C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DB7B0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DB798);
}

_BYTE *sub_1DB7C8(_BYTE *a1)
{
  *a1 = 0;
  sub_27A4();
  v2 = atomic_load(&qword_6E9558);
  if (v2 == pthread_self())
  {
    sub_27A4();
    (*(qword_6E94F8 + 24))();
    *a1 = 1;
  }

  return a1;
}

_BYTE *sub_1DB848(_BYTE **a1, _BYTE *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1DB63C(result);

    operator delete();
  }

  return result;
}

void sub_1DB894(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_1DB8DC(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_6ACD8();
}

const void **sub_1DB924(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1DB958(uint64_t a1)
{
  if (*(a1 + 149) == 1)
  {
    v2 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
    if (!v2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    cf = v2;
    v3 = CFGetTypeID(v2);
    if (v3 != CFStringGetTypeID())
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v11, "Could not construct");
    }

    sub_88CE8(buf, "dsp graph");
    CFRetain(cf);
    *&v16[4] = cf;
    sub_1D9D24(&v16[12], "target stream", (a1 + 144));
    v13[0] = buf;
    v13[1] = 2;
    v4 = sub_69CE8(v13);
    v5 = 0;
    v14 = v4;
    do
    {
      v6 = *&v16[v5 + 20];
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = *&v16[v5 + 12];
      if (v7)
      {
        CFRelease(v7);
      }

      v5 -= 16;
    }

    while (v5 != -32);
    CFRelease(cf);
    sub_1DA068(*(a1 + 16), &v14);
    *(a1 + 149) = 0;
    v8 = sub_5544(25);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v16 = "DSPHALInterface.cpp";
      *&v16[8] = 1024;
      *&v16[10] = 198;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unloading HAL DSP", buf, 0x12u);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }
}

void sub_1DBB94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  sub_1DB0E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1DBC58(uint64_t a1, void *a2)
{
  v4 = sub_1DC1CC((a2 + 2));
  a2[1] = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 8);
    }

    if (prime > v5)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      sub_6ACD8();
    }

    if (prime < v5)
    {
      v12 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v13 = vcnt_s8(v5), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
      {
        v12 = std::__next_prime(v12);
      }

      else
      {
        v14 = 1 << -__clz(v12 - 1);
        if (v12 >= 2)
        {
          v12 = v14;
        }
      }

      if (prime <= v12)
      {
        prime = v12;
      }

      if (prime >= v5)
      {
        v5 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v15 = *a1;
        *a1 = 0;
        if (v15)
        {
          operator delete(v15);
        }

        v5 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v5);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v4;
    if (v5 <= v4)
    {
      v18 = v4 % v5;
    }
  }

  else
  {
    v18 = (v5 - 1) & v4;
  }

  v19 = *(*a1 + 8 * v18);
  v28 = *a1;
  if (v19)
  {
    v20 = *v19;
    if (*v19)
    {
      v21 = 0;
      do
      {
        v22 = v20;
        v23 = v20[1];
        if (v17 > 1)
        {
          v24 = v23;
          if (v23 >= v5)
          {
            v24 = v23 % v5;
          }
        }

        else
        {
          v24 = v23 & (v5 - 1);
        }

        if (v24 != v18)
        {
          break;
        }

        v25 = v23 == v4 && sub_1DC61C(v22 + 2, a2 + 2);
        if ((v21 & (v25 != (v21 & 1))) != 0)
        {
          break;
        }

        v21 |= v25 != (v21 & 1);
        v20 = *v22;
        v19 = v22;
      }

      while (*v22);
    }
  }

  v26 = a2[1];
  if (v17 > 1)
  {
    if (v26 >= v5)
    {
      v26 %= v5;
    }
  }

  else
  {
    v26 &= v5 - 1;
  }

  if (!v19)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v28[v26] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_65;
    }

    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

LABEL_64:
    *(*a1 + 8 * v27) = a2;
    goto LABEL_65;
  }

  *a2 = *v19;
  *v19 = a2;
  if (*a2)
  {
    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

    if (v27 != v26)
    {
      goto LABEL_64;
    }
  }

LABEL_65:
  ++*(a1 + 24);
}

uint64_t sub_1DC0EC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1D8F30(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_1DC138(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_54A0(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_54A0(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_1DC1B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1DC1CC(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

BOOL sub_1DC61C(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void sub_1DC690(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_6ACD8();
}

BOOL sub_1DC6D8(uint64_t a1, char a2, int a3, UInt32 *a4, _BYTE *a5)
{
  v9.mElement = 0;
  inQualifierData = a3;
  if (a2)
  {
    v6 = 1768845428;
  }

  else
  {
    v6 = 1869968496;
  }

  v9.mSelector = 1684500594;
  v9.mScope = v6;
  *a5 = 1;
  v7 = (*(*a1 + 120))(a1);
  return AudioObjectGetPropertyDataSize(v7, &v9, 4u, &inQualifierData, a4) == 0;
}

uint64_t sub_1DC770(uint64_t a1, char a2, int a3, float a4)
{
  inQualifierData = a3;
  inData = a4;
  if (a2)
  {
    v4 = 1768845428;
  }

  else
  {
    v4 = 1869968496;
  }

  inAddress.mSelector = 1684500589;
  inAddress.mScope = v4;
  inAddress.mElement = 0;
  v5 = (*(*a1 + 120))(a1);
  return AudioObjectSetPropertyData(v5, &inAddress, 4u, &inQualifierData, 4u, &inData);
}

const void **sub_1DC7F8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1DC82C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1DC860(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_1DC8A0(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1DC9A4(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void sub_1DC9A4(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_6ACD8();
}

uint64_t sub_1DC9EC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = sub_70DB0(a2, a3);
  v16 = sub_5544(25);
  v17 = *v16;
  if (HIDWORD(v15))
  {
    if (v17 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
    {
      v23 = v33;
      sub_22170(v33, a3);
      if (v34 < 0)
      {
        v23 = v33[0];
      }

      sub_22170(__p, a2);
      v24 = v32;
      v25 = __p[0];
      sub_22170(v29, v15);
      v26 = __p;
      if (v24 < 0)
      {
        v26 = v25;
      }

      v27 = v29;
      if (v30 < 0)
      {
        v27 = v29[0];
      }

      *buf = 136316162;
      v36 = "DSPGraphChain.cpp";
      v37 = 1024;
      v38 = 207;
      v39 = 2080;
      v40 = v23;
      v41 = 2080;
      v42 = v26;
      v43 = 2080;
      v44 = v27;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Translating DSPProperty %s for AU subtype %s to graph property %s", buf, 0x30u);
      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    return sub_2C31B0(a1, 1685287015, v15, a4, a5, a6, a7, a8);
  }

  else
  {
    if (v17 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v33, a3);
      v18 = v34;
      v19 = v33[0];
      sub_22170(__p, a2);
      v20 = v33;
      if (v18 < 0)
      {
        v20 = v19;
      }

      v21 = __p;
      if (v32 < 0)
      {
        v21 = __p[0];
      }

      *buf = 136315906;
      v36 = "DSPGraphChain.cpp";
      v37 = 1024;
      v38 = 213;
      v39 = 2080;
      v40 = v20;
      v41 = 2080;
      v42 = v21;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting DSPProperty %s for AU subtype %s", buf, 0x26u);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    return sub_2C31B0(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_1DCCD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DCD18(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = sub_70DB0(a2, a3);
  v16 = sub_5544(25);
  v18 = *v16;
  if (HIDWORD(v15))
  {
    if (v18 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(v33, a3);
      if (v34 >= 0)
      {
        v24 = v33;
      }

      else
      {
        v24 = v33[0];
      }

      sub_22170(__p, a2);
      v25 = v32;
      v26 = __p[0];
      sub_22170(v29, v15);
      v27 = __p;
      if (v25 < 0)
      {
        v27 = v26;
      }

      v28 = v29;
      if (v30 < 0)
      {
        v28 = v29[0];
      }

      *buf = 136316162;
      v36 = "DSPGraphChain.cpp";
      v37 = 1024;
      v38 = 186;
      v39 = 2080;
      v40 = v24;
      v41 = 2080;
      v42 = v27;
      v43 = 2080;
      v44 = v28;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Translating DSPProperty %s for AU subtype %s to graph property %s", buf, 0x30u);
      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    return sub_2C346C(a1, 1685287015, v15, a4, a5, a6, v17, a8);
  }

  else
  {
    if (v18 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(v33, a3);
      v19 = v34;
      v20 = v33[0];
      sub_22170(__p, a2);
      v21 = v33;
      if (v19 < 0)
      {
        v21 = v20;
      }

      v22 = __p;
      if (v32 < 0)
      {
        v22 = __p[0];
      }

      *buf = 136315906;
      v36 = "DSPGraphChain.cpp";
      v37 = 1024;
      v38 = 192;
      v39 = 2080;
      v40 = v21;
      v41 = 2080;
      v42 = v22;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Getting DSPProperty %s for AU subtype %s", buf, 0x26u);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    return sub_2C346C(a1, a2, a3, a4, a5, a6, v17, a8);
  }
}

void sub_1DCFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DD038(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_70DB0(a2, a3);
  v13 = sub_5544(25);
  v14 = *v13;
  if (HIDWORD(v12))
  {
    if (v14 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v29, a3);
      if (v30 >= 0)
      {
        v20 = v29;
      }

      else
      {
        v20 = v29[0];
      }

      sub_22170(__p, a2);
      v21 = v28;
      v22 = __p[0];
      sub_22170(v25, v12);
      v23 = __p;
      if (v21 < 0)
      {
        v23 = v22;
      }

      if (v26 >= 0)
      {
        v24 = v25;
      }

      else
      {
        v24 = v25[0];
      }

      *buf = 136316162;
      v32 = "DSPGraphChain.cpp";
      v33 = 1024;
      v34 = 152;
      v35 = 2080;
      v36 = v20;
      v37 = 2080;
      v38 = v23;
      v39 = 2080;
      v40 = v24;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Translating DSPProperty %s for AU subtype %s to graph property %s", buf, 0x30u);
      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      if (v28 < 0)
      {
        operator delete(__p[0]);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }
    }

    return sub_2C3608(a1, 1685287015, v12, a4, a5, a6);
  }

  else
  {
    if (v14 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v29, a3);
      v15 = v30;
      v16 = v29[0];
      sub_22170(__p, a2);
      v17 = v29;
      if (v15 < 0)
      {
        v17 = v16;
      }

      if (v28 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      *buf = 136315906;
      v32 = "DSPGraphChain.cpp";
      v33 = 1024;
      v34 = 157;
      v35 = 2080;
      v36 = v17;
      v37 = 2080;
      v38 = v18;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Getting DSPPropertyInfo %s for AU subtype %s", buf, 0x26u);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }
    }

    return sub_2C3608(a1, a2, a3, a4, a5, a6);
  }
}

void sub_1DD304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DD34C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_1DD35C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_8BE08(a2, a3);
  if (HIDWORD(v10))
  {
    v13 = v10;
    v11 = a1;
    v12 = 1685287015;
  }

  else
  {
    v11 = a1;
    v12 = a2;
    v13 = a3;
  }

  return sub_2C3688(v11, v12, v13, a4, a5);
}

uint64_t sub_1DD3E8(uint64_t a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "DSPGraphChain.cpp";
      v9 = 1024;
      v10 = 132;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Only one DSPProcessorInstance allowed in graph-based chain", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Only one DSPProcessorInstance allowed in graph-based chain");
  }

  return sub_2C3700(a1, 0, a3);
}

void sub_1DD514()
{
  v0 = sub_5544(25);
  v1 = *v0;
  if (*v0 && os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "DSPGraphChain.cpp";
    v7 = 1024;
    v8 = 126;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d unsupported DestroyDSPProcessorInstance", &v5, 0x12u);
  }

  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2)
  {
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "DSPGraphChain.cpp";
      v7 = 1024;
      v8 = 127;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): unsupported method DestroyDSPProcessorInstance", &v5, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "unsupported method DestroyDSPProcessorInstance");
}

void sub_1DD66C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1DD6AC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1DD6DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1DD718(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_1DD754(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void *sub_1DD78C(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 4 * a3;
    do
    {
      sub_1DF868(a1, v4, *a2++);
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1DD808(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  *(a1 + 8) = a4 == 0;
  *a1 = off_6DA470;
  sub_85CE4(a1 + 16, a2);
  if (*(a3 + 23) < 0)
  {
    sub_54A0((a1 + 48), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 64) = *(a3 + 2);
    *(a1 + 48) = v6;
  }

  return a1;
}

void sub_1DD904(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DD920(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      operator new();
    }

    sub_189A00();
  }
}

void sub_1DD9B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DD9D4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(a1 + 8) = 1;
  *a1 = off_6DA598;
  v5 = a1 + 16;
  v6 = (a2 + 24);
  v7 = *(a2 + 24);
  if (!v7)
  {
    v6 = (a1 + 40);
    goto LABEL_5;
  }

  if (v7 != a2)
  {
    *(a1 + 40) = v7;
LABEL_5:
    *v6 = 0;
    goto LABEL_7;
  }

  *(a1 + 40) = v5;
  (*(**v6 + 24))(*v6, v5);
LABEL_7:
  if (*(a3 + 23) < 0)
  {
    sub_54A0((a1 + 48), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 64) = *(a3 + 2);
    *(a1 + 48) = v8;
  }

  return a1;
}

uint64_t sub_1DDAC4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1DDB44(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    sub_46A74();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_1DDB8C(uint64_t a1, uint64_t a2)
{
  v3[0] = 0;
  v3[4] = 0;
  return (*(*a1 + 48))(a1, a2, v3);
}

uint64_t sub_1DDBD8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1[8])
  {
    a2 = a3;
  }

  return (*(*a1 + 48))(a1, a2, a4);
}

uint64_t sub_1DDC0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_63250(&v12);
  sub_22564(&v12, "[ ", 2);
  if (*(a1 + 8))
  {
    v4 = "src";
  }

  else
  {
    v4 = "dst";
  }

  sub_22564(&v12, v4, 3);
  sub_22564(&v12, ": ", 2);
  v7 = *(a1 + 48);
  v6 = a1 + 48;
  v5 = v7;
  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  sub_22564(&v12, v9, v10);
  sub_22564(&v12, "]", 1);
  sub_1DDDEC(a2, &v12);
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1DDDD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DDE94(va);
  _Unwind_Resume(a1);
}

const void *sub_1DDDEC(_BYTE *a1, uint64_t a2)
{
  result = sub_22C94(a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

uint64_t sub_1DDE94(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

uint64_t sub_1DDFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = 0;
  v4[4] = 0;
  return (*(*a1 + 32))(a1, a2, a3, v4);
}

void sub_1DE000(uint64_t a1)
{
  sub_1DE038(a1);

  operator delete();
}

uint64_t sub_1DE038(uint64_t a1)
{
  *a1 = off_6DA598;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  sub_1DDAC4(a1 + 16);
  return a1;
}

uint64_t sub_1DE094(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if ((*(*a2 + 160))(a2))
    {
      v6 = a2[36] == 1886216820;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      if (*a3 == 1920167288)
      {
        v7 = *(a3 + 4);
      }

      else
      {
        v7 = 0;
      }

      if (*(a3 + 4) == 1 && *a3 == 1920167273)
      {
        return 1;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1DE1F0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_1DE284(&v4, a1 + 8);
  v3 = std::string::insert(&v4, 0, "Port endpoint type inclusion policy: %s", 0x27uLL);
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_1DE268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DE284(_BYTE *a1, uint64_t a2)
{
  sub_63250(&v10);
  if (*a2 == 2)
  {
    v4 = "Require";
  }

  else
  {
    v4 = "Forbid";
  }

  if (*a2 == 2)
  {
    v5 = 7;
  }

  else
  {
    v5 = 6;
  }

  sub_22564(&v10, v4, v5);
  sub_22564(&v10, ": ", 2);
  sub_1DE4C8(&__p, *(a2 + 8), (a2 + 16));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_22564(&v10, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_1DDDEC(a1, &v10);
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1DE44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1DDE94(&a15);
  _Unwind_Resume(a1);
}

std::logic_error *sub_1DE494(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

std::string *sub_1DE4C8(std::string *a1, void *a2, void *a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      std::to_string(&v12, *(a2 + 7));
      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v12;
      }

      else
      {
        v7 = v12.__r_.__value_.__r.__words[0];
      }

      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v12.__r_.__value_.__l.__size_;
      }

      std::string::append(a1, v7, size);
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      v9 = a2[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = a2[2];
          v11 = *v10 == a2;
          a2 = v10;
        }

        while (!v11);
      }

      if (v10 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
      a2 = v10;
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_1DE5D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE5F4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE5DCLL);
}

uint64_t sub_1DE60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 40))
  {
    a2 = a3;
  }

  v5 = (*(*a2 + 112))(a2);
  if ((v5 & 0x100000000) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_4B8C4(a1 + 8, v6);
}

void sub_1DE678(uint64_t a1)
{
  sub_477A0(*(a1 + 24));

  operator delete();
}

void sub_1DE730(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_53E8(&v9, "NOT ");
  (*(**(a1 + 8) + 24))(__p);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1DE7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DE828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = 0;
  v4[4] = 0;
  return (*(*a1 + 32))(a1, a2, a3, v4);
}

uint64_t sub_1DEA08(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 112))(a2);
  if ((v2 & 0x100000000) != 0 && v2 == 1701865584)
  {
    return 1;
  }

  else
  {
    return BYTE4(v2) & (v2 == 1701865569);
  }
}

uint64_t sub_1DEBA4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 304) != 1781740087)
  {
    return 0;
  }

  if (sub_48EDC())
  {
    return 1;
  }

  result = MGGetBoolAnswer();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

uint64_t sub_1DEC98(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DED5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DEE20(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1DF054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5)
  {
    return 1;
  }

  v9 = v4 + 8;
  do
  {
    result = (*(**(v9 - 8) + 32))(*(v9 - 8), a2, a3, a4);
    if (result)
    {
      v11 = v9 == v5;
    }

    else
    {
      v11 = 1;
    }

    v9 += 8;
  }

  while (!v11);
  return result;
}

uint64_t sub_1DF0E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_63250(&v9);
  sub_22564(&v9, "Aggregate Connection Inclusion Policy: [ ", 41);
  v4 = *(a1 + 8);
  for (i = *(a1 + 16); v4 != i; v4 += 8)
  {
    (*(**v4 + 24))(v13);
    if ((v14 & 0x80u) == 0)
    {
      v6 = v13;
    }

    else
    {
      v6 = v13[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v7 = v14;
    }

    else
    {
      v7 = v13[1];
    }

    sub_22564(&v9, v6, v7);
    sub_22564(&v9, "; ", 2);
    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  sub_22564(&v9, "]", 1);
  sub_1DDDEC(a2, &v9);
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  std::locale::~locale(v11);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_1DF31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = 0;
  v4[4] = 0;
  return (*(*a1 + 32))(a1, a2, a3, v4);
}

void sub_1DF368(void *a1)
{
  *a1 = off_6DA4B8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  operator delete();
}

void *sub_1DF3D8(void *a1)
{
  *a1 = off_6DA4B8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1DF4F4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    sub_46A74();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_1DF53C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_63250(&v12);
  sub_22564(&v12, "[ ", 2);
  if (*(a1 + 8))
  {
    v4 = "src";
  }

  else
  {
    v4 = "dst";
  }

  sub_22564(&v12, v4, 3);
  sub_22564(&v12, ": ", 2);
  v7 = *(a1 + 48);
  v6 = a1 + 48;
  v5 = v7;
  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  sub_22564(&v12, v9, v10);
  sub_22564(&v12, "]", 1);
  sub_1DDDEC(a2, &v12);
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1DF708(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DDE94(va);
  _Unwind_Resume(a1);
}

void sub_1DF71C(uint64_t a1)
{
  sub_1DF754(a1);

  operator delete();
}

uint64_t sub_1DF754(uint64_t a1)
{
  *a1 = off_6DA470;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  sub_85148(a1 + 16);
  return a1;
}

void *sub_1DF868(void *result, uint64_t *a2, int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 7), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (*(v7 + 7) < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (*v3)
    {
      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 28);
          if (v15 <= a3)
          {
            break;
          }

          v13 = *v14;
          v3 = v14;
          if (!*v14)
          {
            goto LABEL_38;
          }
        }

        if (v15 >= a3)
        {
          break;
        }

        v3 = v14 + 1;
        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v8 = v3;
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && *(v10 + 7) <= a3)
  {
    for (i = *v3; i; i = v18[1])
    {
      while (1)
      {
        v18 = i;
        v19 = *(i + 28);
        if (v19 <= a3)
        {
          break;
        }

        i = *v18;
        v3 = v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        goto LABEL_39;
      }

      v3 = v18 + 1;
    }

LABEL_38:
    operator new();
  }

LABEL_19:
  if (!*v8)
  {
    goto LABEL_38;
  }

  return result;
}