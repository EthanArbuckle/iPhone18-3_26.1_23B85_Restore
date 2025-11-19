uint64_t sub_1001DBE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_1001DBEC4, 0, 0);
}

uint64_t sub_1001DBEC4()
{
  v1 = *sub_1001DE244((v0[2] + 112), *(v0[2] + 136));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1001DBF78;
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];

  return sub_1001BE538(v6, v5, v3, v4, 0, 0);
}

uint64_t sub_1001DBF78()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001DC0AC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1001DC0AC()
{
  v14 = v0;
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, qword_100377698);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v8 = v0[3];
    v7 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10024B050(v8, v7, &v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to unshare %s during performAccountsSync", v9, 0xCu);
    sub_1001DDD7C(v10);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001DC25C()
{
  v1 = *(v0[19] + 64);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1001DC380;
  v2 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100372E38, &unk_10029DBF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001DD224;
  v0[13] = &unk_1003273A0;
  v0[14] = v2;
  [v1 fetchSharedAccountsWithGroupID:0 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001DC380()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1001DC900;
  }

  else
  {
    v3 = sub_1001DC490;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001DC490()
{
  v50 = v0;
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
LABEL_38:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = v1 & 0xC000000000000001;
      v44 = v1 & 0xFFFFFFFFFFFFFF8;
      v48 = &_swiftEmptyDictionarySingleton;
      v46 = v2;
      v47 = v1;
      v45 = v1 & 0xC000000000000001;
      while (1)
      {
        if (v4)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *(v44 + 16))
          {
            goto LABEL_35;
          }

          v5 = *(v1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v8 = [v5 shareInfo];
        if (v8)
        {
          v9 = v8;
          if ([v8 isCurrentUser])
          {
            v10 = [v6 clientID];
            v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v13 = v12;

            v14 = v6;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v49 = v48;
            v17 = sub_10023A350(v11, v13);
            v18 = v48[2];
            v19 = (v16 & 1) == 0;
            v20 = v18 + v19;
            if (__OFADD__(v18, v19))
            {
              goto LABEL_36;
            }

            v1 = v16;
            if (v48[3] >= v20)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                if ((v16 & 1) == 0)
                {
                  goto LABEL_28;
                }
              }

              else
              {
                sub_100231F20();
                if ((v1 & 1) == 0)
                {
                  goto LABEL_28;
                }
              }
            }

            else
            {
              sub_100230E98(v20, isUniquelyReferenced_nonNull_native);
              v21 = sub_10023A350(v11, v13);
              if ((v1 & 1) != (v22 & 1))
              {

                return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              }

              v17 = v21;
              if ((v1 & 1) == 0)
              {
LABEL_28:
                v36 = v49;
                v49[(v17 >> 6) + 8] |= 1 << v17;
                v37 = (v36[6] + 16 * v17);
                *v37 = v11;
                v37[1] = v13;
                *(v36[7] + 8 * v17) = v14;

                v38 = v36[2];
                v39 = __OFADD__(v38, 1);
                v40 = v38 + 1;
                if (v39)
                {
                  goto LABEL_37;
                }

                v48 = v36;
                v36[2] = v40;
                goto LABEL_30;
              }
            }

            v48 = v49;
            v34 = v49[7];
            v35 = *(v34 + 8 * v17);
            *(v34 + 8 * v17) = v14;

LABEL_30:
            v2 = v46;
            v1 = v47;
            v4 = v45;
            goto LABEL_6;
          }
        }

        else
        {
          if (qword_100371BD8 != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          sub_1001AD2E4(v23, qword_100377698);
          v24 = v6;
          v6 = Logger.logObject.getter();
          v25 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v6, v25))
          {

            goto LABEL_6;
          }

          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v49 = v27;
          *v26 = 136315138;
          v28 = [v24 clientID];
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          v32 = v29;
          v1 = v47;
          v33 = sub_10024B050(v32, v31, &v49);

          *(v26 + 4) = v33;
          _os_log_impl(&_mh_execute_header, v6, v25, "Shared SIWA account (%s) with nil share info. Skipping...", v26, 0xCu);
          sub_1001DDD7C(v27);

          v4 = v45;
          v2 = v46;
        }

LABEL_6:
        ++v3;
        if (v7 == v2)
        {
          goto LABEL_40;
        }
      }
    }
  }

  v48 = &_swiftEmptyDictionarySingleton;
LABEL_40:

  v42 = *(v43 + 8);

  return v42(v48);
}

uint64_t sub_1001DC900()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2();
}

uint64_t sub_1001DC96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = *(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001DCA18, 0, 0);
}

void sub_1001DCA18()
{
  v56 = v0;
  v1 = v0[11];
  v2 = v0[10];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v46 = v0 + 2;
  v6 = -1;
  v7 = -1 << *(v0[10] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v53 = v0[10];

  v10 = 0;
  v54 = v0;
  v51 = v9;
  v52 = v4;
  v47 = v1;
  while (v8)
  {
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = (*(v53 + 48) + ((v10 << 10) | (16 * v12)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v1 + 16);

    if (v16 && (v17 = v0[11], v18 = sub_10023A350(v15, v14), (v19 & 1) != 0))
    {
      v20 = v0[14];
      v49 = v0[13];
      v21 = v0[12];
      v22 = *(*(v1 + 56) + 8 * v18);
      v23 = type metadata accessor for TaskPriority();
      v24 = *(v23 - 8);
      (*(v24 + 56))(v20, 1, 1, v23);
      v25 = swift_allocObject();
      v25[2] = 0;
      v48 = v25 + 2;
      v25[3] = 0;
      v25[4] = v21;
      v25[5] = v22;
      v25[6] = v15;
      v25[7] = v14;
      sub_1001DE11C(v20, v49);
      LODWORD(v20) = (*(v24 + 48))(v49, 1, v23);
      v50 = v22;

      v26 = v54[13];
      if (v20 == 1)
      {
        sub_100010DD0(v54[13]);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v24 + 8))(v26, v23);
      }

      if (*v48)
      {
        v33 = v25[3];
        v34 = *v48;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v35 = dispatch thunk of Actor.unownedExecutor.getter();
        v37 = v36;
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      v0 = v54;
      v38 = *v54[9];
      v39 = swift_allocObject();
      *(v39 + 16) = &unk_10029DBD8;
      *(v39 + 24) = v25;

      if (v37 | v35)
      {
        v40 = v46;
        *v46 = 0;
        v46[1] = 0;
        v54[4] = v35;
        v54[5] = v37;
      }

      else
      {
        v40 = 0;
      }

      v41 = v54[14];
      v54[6] = 1;
      v54[7] = v40;
      v54[8] = v38;
      swift_task_create();

      sub_100010DD0(v41);
      v1 = v47;
      v9 = v51;
      v4 = v52;
    }

    else
    {
      if (qword_100371BD8 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_1001AD2E4(v27, qword_100377698);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v55 = v31;
        *v30 = 136315138;
        v32 = sub_10024B050(v15, v14, &v55);

        *(v30 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v28, v29, "No account found matching bundleID %s", v30, 0xCu);
        sub_1001DDD7C(v31);
        v9 = v51;

        v4 = v52;
      }

      else
      {
      }

      v0 = v54;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  v42 = v0[13];
  v43 = v0[14];
  v44 = v0[10];

  v45 = v0[1];

  v45();
}

uint64_t sub_1001DCF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;

  return _swift_task_switch(sub_1001DCF94, 0, 0);
}

uint64_t sub_1001DCF94()
{
  v17 = v0;
  v1 = *(v0[3] + 64);
  v0[2] = 0;
  v2 = [v1 removeSharedAccount:v0[4] error:v0 + 2];
  v3 = v0[2];
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v5 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v6 = v0[6];
    v7 = type metadata accessor for Logger();
    sub_1001AD2E4(v7, qword_100377698);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[5];
      v10 = v0[6];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10024B050(v11, v10, &v16);
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to remove account %s during performAccountsSync", v12, 0xCu);
      sub_1001DDD7C(v13);
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1001DD1A0()
{
  sub_1001DDD7C((v0 + 24));
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();
  sub_1001DDD7C((v0 + 72));
  sub_1001DDD7C((v0 + 112));
  sub_1001DDD7C((v0 + 152));

  return swift_deallocClassInstance();
}

uint64_t sub_1001DD224(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1001DE244((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1001DE980(0, &qword_1003743E0, AKSignInWithAppleAccount_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1001DD314(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100011C60;

  return v7(a1);
}

void *sub_1001DD40C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1001DD998(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1001DD4A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1001AD17C(&unk_100374240, &unk_10029F630);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void (*sub_1001DD6EC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1001DD76C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001DD77C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1001DE9D8;

  return sub_1001DA364(a1, a2, v7, v6);
}

Swift::Int sub_1001DD830(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001AD17C(&qword_100372E40, &qword_10029DC40);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
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

uint64_t sub_1001DD998(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = result;
  v30 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
  v31 = v10;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v15 = v12 | (v5 << 6);
    if (!*(a4 + 16))
    {
      goto LABEL_23;
    }

    v34 = v9;
    v16 = (*(a3 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v32 = v15;
    v19 = *(*(a3 + 56) + 8 * v15);
    v20 = *(a4 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v21 = Hasher._finalize()();
    v22 = -1 << *(a4 + 32);
    v23 = v21 & ~v22;
    if ((*(v11 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
    {
      v24 = ~v22;
      while (1)
      {
        v25 = (*(a4 + 48) + 16 * v23);
        v26 = *v25 == v17 && v25[1] == v18;
        if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v11 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v10 = v31;
      v9 = v34;
    }

    else
    {
LABEL_22:

      v10 = v31;
      v15 = v32;
      v9 = v34;
LABEL_23:
      *(v29 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
        return sub_1001DD4A8(v29, a2, v30, a3);
      }
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1001DD4A8(v29, a2, v30, a3);
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001DDBBC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1001DD40C(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1001DD998(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1001DDD7C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1001DDDC8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1001DE9DC;

  return sub_1001DBB00(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1001DDE90(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1001DDF54;

  return sub_1001DC96C(a1, a2, v6, v7, v8);
}

uint64_t sub_1001DDF54()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001DE048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1001DE9E0;

  return sub_1001DCF00(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001DE11C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DE18C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001DE9F0;

  return sub_1001DD314(a1, v5);
}

void *sub_1001DE244(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1001DE288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1001DE9E4;

  return sub_1001DBE9C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001DE364(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001DE41C;

  return sub_1001DD314(a1, v5);
}

uint64_t sub_1001DE41C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001DE510(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001DE9E8;

  return sub_1001DA764(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001DE5D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001DE9F4;

  return sub_1001DD314(a1, v5);
}

void sub_1001DE690(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1001AD17C(&qword_100372E48, qword_10029DC48);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1001DE980(0, &qword_100373FE0, BSAction_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1001DE980(0, &qword_100373FE0, BSAction_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1001DE980(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t Logger.akd.unsafeMutableAddressor()
{
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1001AD2E4(v0, static Logger.akd);
}

uint64_t sub_1001DEA5C()
{
  v0 = type metadata accessor for Logger();
  sub_1001DEB84(v0, static Logger.akd);
  sub_1001AD2E4(v0, static Logger.akd);

  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.akd.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1001AD2E4(v2, static Logger.akd);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_1001DEB84(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1001DEBE8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v62 - v8;
  __chkstk_darwin(v7);
  v11 = &v62 - v10;
  v12 = v0[2];
  v13 = [v12 primaryAuthKitAccount];
  if (!v13)
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1001AD2E4(v19, qword_100377698);
    v14 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v14, v20, "No primary AuthKit account found.", v21, 2u);
    }

    goto LABEL_13;
  }

  v14 = v13;
  v15 = [v12 sharingGroupLastNotificationDateForAccount:v13];
  if (!v15)
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1001AD2E4(v22, qword_100377698);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "There was no KCSharing group update notification saved. Skipping token rotation.", v25, 2u);
    }

LABEL_13:
    v26 = 0;
    return v26 & 1;
  }

  v16 = v15;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = *sub_1001BB81C(v0 + 3, v0[6]);
  v18 = sub_10020FE10();
  v28 = v18;
  if (v18)
  {
    v67 = v1;
    v29 = OBJC_IVAR___AKSharedGroupsMembershipInfo_savedDate;
    v30 = v18;
    v66 = v29;
    v26 = static Date.< infix(_:_:)();
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    v32 = sub_1001AD2E4(v31, qword_100377698);
    v33 = v30;
    v71 = v32;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    v69 = v33;

    v65 = v35;
    v68 = v34;
    v36 = os_log_type_enabled(v34, v35);
    v70 = v2;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v62 = v37;
      v63 = swift_slowAlloc();
      v72[0] = v63;
      *v37 = 136315138;
      v64 = *(v2 + 16);
      v38 = v67;
      v64(v9, v66 + v28, v67);
      sub_1001E174C();
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v2 + 8))(v9, v38);
      v42 = sub_10024B050(v39, v41, v72);

      v43 = v62;
      *(v62 + 1) = v42;
      v44 = v68;
      _os_log_impl(&_mh_execute_header, v68, v65, "lastSavedMembershipInfo - %s", v43, 0xCu);
      sub_1001E17A4(v63);

      v64(v6, v11, v38);
    }

    else
    {

      v38 = v67;
      (*(v2 + 16))(v6, v11, v67);
    }

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v66 = v51;
      v68 = swift_slowAlloc();
      v72[0] = v68;
      *v51 = 136315138;
      sub_1001E174C();
      LODWORD(v67) = v50;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      v55 = *(v70 + 8);
      v55(v6, v38);
      v56 = sub_10024B050(v52, v54, v72);

      v57 = v66;
      *(v66 + 1) = v56;
      _os_log_impl(&_mh_execute_header, v49, v67, "sharingGroupUpdateLastNotificationDate - %s", v57, 0xCu);
      sub_1001E17A4(v68);
    }

    else
    {

      v55 = *(v70 + 8);
      v55(v6, v38);
    }

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 67109120;
      *(v60 + 4) = v26 & 1;
      _os_log_impl(&_mh_execute_header, v58, v59, "needsTokenRotation - %{BOOL}d", v60, 8u);
    }

    v61 = v69;

    v55(v11, v38);
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1001AD2E4(v45, qword_100377698);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "There was no last saved membership info. Need token rotation.", v48, 2u);
    }

    (*(v2 + 8))(v11, v1);
    v26 = 1;
  }

  return v26 & 1;
}

uint64_t sub_1001DF470()
{
  v1 = v0[2];
  v2 = *sub_1001BB81C((v1 + 24), *(v1 + 48));
  v0[3] = sub_10020FE10();
  v3 = *sub_1001BB81C((v1 + 24), *(v1 + 48));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1001DF570;

  return sub_10020FF44();
}

uint64_t sub_1001DF570(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v5 = sub_1001DF7A4;
  }

  else
  {
    v5 = sub_1001DF684;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001DF684()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *sub_1001BB81C((*(v0 + 16) + 24), *(*(v0 + 16) + 48));
  sub_1002103AC(v1);
  if (v2)
  {
    v4 = *(v0 + 24);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = sub_1001DF808;
    v8 = *(v0 + 40);
    v9 = *(v0 + 24);

    return sub_1002107F8(v9, v8);
  }
}

uint64_t sub_1001DF7A4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001DF808(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = sub_1001DFAD4;
  }

  else
  {
    v5 = sub_1001DF91C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001DF91C()
{
  if (*(v0[8] + 16))
  {
    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_1001DFB40;
    v2 = v0[8];
    v3 = v0[2];

    return sub_1001DFD48(v2);
  }

  else
  {

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1001AD2E4(v5, qword_100377698);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[5];
    v10 = v0[3];
    if (v8)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No groups with depatures detected.", v11, 2u);
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1001DFAD4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001DFB40()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1001DFCDC;
  }

  else
  {
    v4 = sub_1001DFC70;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001DFC70()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001DFCDC()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001DFD48(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001DFD68, 0, 0);
}

uint64_t sub_1001DFD68()
{
  v16 = v0;
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[4] = sub_1001AD2E4(v2, qword_100377698);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v8 = Set.description.getter();
    v10 = sub_10024B050(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Rotating share tokens for accounts in groups - %s", v6, 0xCu);
    sub_1001E17A4(v7);
  }

  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_1001DFF4C;
  v12 = v0[2];
  v13 = v0[3];

  return sub_1001E086C(v12);
}

uint64_t sub_1001DFF4C(uint64_t a1)
{
  v3 = *(*v2 + 40);
  v4 = *v2;
  *(v4 + 48) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_1001E0080, 0, 0);
  }
}

uint64_t sub_1001E0080()
{
  if (*(v0[6] + 16))
  {
    v1 = *sub_1001BB81C((v0[3] + 72), *(v0[3] + 96));
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1001E01E8;
    v3 = v0[6];

    return sub_1001D077C(v3);
  }

  else
  {
    v5 = v0[4];

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No SIWA accounts found in the departed groups.", v8, 2u);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1001E01E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {
    v6 = *(v3 + 48);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_1001E0338, 0, 0);
  }
}

uint64_t sub_1001E0338()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[9] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v5 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1001E0430;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1001E0430()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v7 = v2[8];
    v6 = v2[9];
    v8 = v2[6];

    return _swift_task_switch(sub_1001E0580, 0, 0);
  }
}

uint64_t sub_1001E0580()
{
  v1 = *sub_1001BB81C((*(v0 + 24) + 24), *(*(v0 + 24) + 48));
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_1001E0620;

  return sub_10020FF44();
}

uint64_t sub_1001E0620(uint64_t a1)
{
  v3 = *(*v2 + 88);
  v4 = *v2;
  v4[12] = a1;
  v4[13] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_1001E0754, 0, 0);
  }
}

uint64_t sub_1001E0754()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *sub_1001BB81C((*(v0 + 24) + 24), *(*(v0 + 24) + 48));
  sub_1002103AC(v1);
  if (v2)
  {

    v4 = *(v0 + 8);
  }

  else
  {
    v5 = *(v0 + 32);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Token rotation complete", v8, 2u);
    }

    v4 = *(v0 + 8);
  }

  return v4();
}

uint64_t sub_1001E086C(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_1001E088C, 0, 0);
}

uint64_t sub_1001E088C()
{
  v1 = *(v0[20] + 64);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1001E09AC;
  v2 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100372E38, &unk_10029DBF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001DD224;
  v0[13] = &unk_100327500;
  v0[14] = v2;
  [v1 fetchAllSharedAccountsWithShareTokenWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001E09AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1001E0F30;
  }

  else
  {
    v3 = sub_1001E0ABC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001E0ABC()
{
  v47 = v0;
  v44 = *(v0 + 144);
  if (v44 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v40 = v0)
  {
    v2 = 0;
    v3 = *(v0 + 152);
    v4 = v44 & 0xC000000000000001;
    v45 = v3 + 56;
    v42 = &_swiftEmptyDictionarySingleton;
    v41 = i;
    while (1)
    {
      if (v4)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v5 = *(v44 + 32 + 8 * v2);
      }

      v6 = v5;
      if (__OFADD__(v2++, 1))
      {
        break;
      }

      v8 = [v5 shareInfo];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 groupID];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        if (*(v3 + 16) && (v14 = *(v3 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v15 = Hasher._finalize()(), v16 = -1 << *(v3 + 32), v17 = v15 & ~v16, ((*(v45 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
        {
          v0 = ~v16;
          while (1)
          {
            v18 = (*(v3 + 48) + 16 * v17);
            v19 = *v18 == v11 && v18[1] == v13;
            if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v17 = (v17 + 1) & v0;
            if (((*(v45 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          if ([v9 isCurrentUser])
          {
            v32 = [v6 clientID];
            v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v35 = v34;

            v36 = v6;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v46 = v42;
            sub_100231834(v36, v33, v35, isUniquelyReferenced_nonNull_native);

            v42 = v46;
          }

          else
          {
          }
        }

        else
        {
LABEL_4:
        }
      }

      else
      {
        if (qword_100371BD8 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_1001AD2E4(v20, qword_100377698);
        v21 = v6;
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v46 = v43;
          *v24 = 136315138;
          v25 = v4;
          v26 = v3;
          v27 = [v21 clientID];
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;

          v3 = v26;
          v4 = v25;
          v31 = sub_10024B050(v28, v30, &v46);

          *(v24 + 4) = v31;
          i = v41;
          _os_log_impl(&_mh_execute_header, v22, v23, "Shared SIWA account (%s) with nil share info. Skipping...", v24, 0xCu);
          v0 = v43;
          sub_1001E17A4(v43);
        }

        else
        {
        }
      }

      if (v2 == i)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  v42 = &_swiftEmptyDictionarySingleton;
LABEL_34:

  v38 = *(v40 + 8);

  return v38(v42);
}

uint64_t sub_1001E0F30()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

uint64_t sub_1001E0F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = *(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001E1048, 0, 0);
}

void sub_1001E1048()
{
  v50 = v0;
  v1 = v0[10];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v38 = v0[10];
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_29;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v42 = v0 + 2;
  v48 = v0[11];
  v47 = v1 & 0xC000000000000001;
  v45 = v0[10] + 32;
  v43 = v0;
  v44 = v2;
  do
  {
    if (v47)
    {
      v4 = v0[10];
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v45 + 8 * v3);
    }

    v6 = v5;
    v7 = &v5[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID];
    if (*(v48 + 16) && (v8 = v0[11], v9 = *v7, v10 = v7[1], , v11 = sub_10023A350(v9, v10), LOBYTE(v8) = v12, , (v8 & 1) != 0))
    {
      v14 = v0[13];
      v13 = v0[14];
      v15 = v0[12];
      v16 = *(*(v48 + 56) + 8 * v11);
      v17 = type metadata accessor for TaskPriority();
      v18 = *(v17 - 8);
      (*(v18 + 56))(v13, 1, 1, v17);
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v15;
      v19[5] = v16;
      v19[6] = v6;
      sub_1001DE11C(v13, v14);
      LODWORD(v14) = (*(v18 + 48))(v14, 1, v17);
      v46 = v16;

      v20 = v6;
      v21 = v43[13];
      if (v14 == 1)
      {
        sub_100010DD0(v43[13]);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v18 + 8))(v21, v17);
      }

      v0 = v43;
      if (v19[2])
      {
        v31 = v19[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v32 = dispatch thunk of Actor.unownedExecutor.getter();
        v34 = v33;
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      v35 = *v43[9];

      if (v34 | v32)
      {
        v36 = v42;
        *v42 = 0;
        v42[1] = 0;
        v43[4] = v32;
        v43[5] = v34;
      }

      else
      {
        v36 = 0;
      }

      v37 = v43[14];
      v43[6] = 1;
      v43[7] = v36;
      v43[8] = v35;
      swift_task_create();

      sub_100010DD0(v37);
      v2 = v44;
    }

    else
    {
      if (qword_100371BD8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1001AD2E4(v22, qword_100377698);
      v23 = v6;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v49 = v27;
        *v26 = 136315138;
        v28 = *v7;
        v29 = v7[1];

        v30 = sub_10024B050(v28, v29, &v49);

        *(v26 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v24, v25, "No matching account found with bundleID %s", v26, 0xCu);
        sub_1001E17A4(v27);
      }
    }

    ++v3;
  }

  while (v2 != v3);
LABEL_29:
  v40 = v0[13];
  v39 = v0[14];

  v41 = v0[1];

  v41();
}

uint64_t sub_1001E1500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;

  return _swift_task_switch(sub_1001E1594, 0, 0);
}

uint64_t sub_1001E1594()
{
  v1 = *(v0[3] + 64);
  v0[2] = 0;
  v2 = [v1 removeSharedAccount:v0[4] error:v0 + 2];
  v3 = v0[2];
  if (v2 && (v4 = v0[5], v0[2] = 0, v5 = v3, v6 = [v1 addSharedAccountWithCredential:v4 error:v0 + 2], v3 = v0[2], v6))
  {
    v11 = v0[1];
    v7 = v3;
    v8 = v11;
  }

  else
  {
    v9 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_1001E16D8()
{
  sub_1001E17A4((v0 + 24));
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();
  sub_1001E17A4((v0 + 72));

  return swift_deallocClassInstance();
}

unint64_t sub_1001E174C()
{
  result = qword_100372F30;
  if (!qword_100372F30)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100372F30);
  }

  return result;
}

uint64_t sub_1001E17A4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1001E17F0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1001E18B4;

  return sub_1001E0F9C(a1, a2, v6, v7, v8);
}

uint64_t sub_1001E18B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001E19A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001E1A70;

  return sub_1001E1500(a1, v4, v5, v6, v7, v8);
}

id AppleIDPasskeyDaemonService.exportedObject.getter@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for AppleIDPasskeyDaemonService();
  *a1 = v3;

  return v3;
}

Swift::Bool __swiftcall AppleIDPasskeyDaemonService.shouldAcceptNewConnection(_:)(NSXPCConnection a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AppleIDPasskeyDaemonService();
  v3 = objc_msgSendSuper2(&v8, "shouldAcceptNewConnection:", a1.super.isa);
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(AKClient) initWithConnection:a1.super.isa];
    v6 = *&v1[OBJC_IVAR___AKAppleIDPasskeyDaemonService_client];
    *&v1[OBJC_IVAR___AKAppleIDPasskeyDaemonService_client] = v5;

    LOBYTE(v3) = v4;
  }

  return v3;
}

id AppleIDPasskeyDaemonService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppleIDPasskeyDaemonService.init()()
{
  *&v0[OBJC_IVAR___AKAppleIDPasskeyDaemonService_client] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleIDPasskeyDaemonService();
  return objc_msgSendSuper2(&v2, "init");
}

id AppleIDPasskeyDaemonService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleIDPasskeyDaemonService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t AppleIDPasskeyDaemonService.setupAppleIDPasskey(with:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_1001E1DE4, 0, 0);
}

uint64_t sub_1001E1DE4()
{
  receiver = v0[4].receiver;
  super_class = v0[4].super_class;
  v3 = OBJC_IVAR___AKAppleIDPasskeyDaemonService_client;
  v4 = *(super_class + OBJC_IVAR___AKAppleIDPasskeyDaemonService_client);
  v5 = v4;
  v6 = sub_1001B0778(receiver, v4);
  v0[5].receiver = v6;

  if (v6)
  {
    v7 = v0[4].receiver;
    v8 = *(super_class + v3);
    v9 = v8;
    v10 = sub_1001B0BCC(v7, v8);
    v0[5].super_class = v10;

    if (v10)
    {
      sub_1001E48C8();
      v0[6].receiver = v11;
      v25 = v11;
      v26 = [objc_allocWithZone(AKAppleIDPasskeyAuthenticationController) init];
      v27 = type metadata accessor for AppleIDPasskeyCredentialProvider();
      v28 = objc_allocWithZone(v27);
      *&v28[OBJC_IVAR___AKAppleIDPasskeyCredentialProvider_authorizationController] = v26;
      v0[1].receiver = v28;
      v0[1].super_class = v27;
      v29 = objc_msgSendSuper2(v0 + 1, "init");
      v0[6].super_class = v29;
      v30 = type metadata accessor for AppleIDPasskeyEnrollController();
      v31 = objc_allocWithZone(v30);
      *&v31[OBJC_IVAR___AKAppleIDPasskeyEnrollController_passkeyValidator] = v25;
      *&v31[OBJC_IVAR___AKAppleIDPasskeyEnrollController_challengeProvider] = v6;
      *&v31[OBJC_IVAR___AKAppleIDPasskeyEnrollController_credentialProvider] = v29;
      *&v31[OBJC_IVAR___AKAppleIDPasskeyEnrollController_registrationProvider] = v10;
      v0[2].receiver = v31;
      v0[2].super_class = v30;
      swift_unknownObjectRetain();
      v32 = v6;
      v33 = v29;
      v34 = v10;
      v0[7].receiver = objc_msgSendSuper2(v0 + 2, "init");
      v35 = swift_task_alloc();
      v0[7].super_class = v35;
      *v35 = v0;
      *(v35 + 1) = sub_1001E2264;

      return sub_1001B0268(0);
    }
  }

  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1001AD2E4(v12, qword_1003776B0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Passkey setup is missing provider.", v15, 2u);
  }

  type metadata accessor for AppleIDPasskeyError(0);
  v0[3].super_class = -120018;
  sub_1001E4150(&_swiftEmptyArrayStorage);
  sub_1001B1020();
  _BridgedStoredNSError.init(_:userInfo:)();
  v16 = v0[3].receiver;
  swift_willThrow();
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1001AD2E4(v17, qword_1003776B0);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v22;
    *v21 = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "Setup passkey failed with error: %@.", v20, 0xCu);
    sub_1001B4EB8(v21);
  }

  swift_willThrow();
  v23 = v0->super_class;

  return v23(0);
}

uint64_t sub_1001E2264(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_1001E241C;
  }

  else
  {
    *(v4 + 136) = a1 & 1;
    v7 = sub_1001E2390;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001E2390()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);

  swift_unknownObjectRelease();
  v5 = *(v0 + 8);
  v6 = *(v0 + 136);

  return v5(v6);
}

uint64_t sub_1001E241C()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);

  swift_unknownObjectRelease();
  v5 = *(v0 + 128);
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1001AD2E4(v6, qword_1003776B0);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Setup passkey failed with error: %@.", v9, 0xCu);
    sub_1001B4EB8(v10);
  }

  swift_willThrow();
  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_1001E2750(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001E2814;

  return AppleIDPasskeyDaemonService.setupAppleIDPasskey(with:)(v6);
}

uint64_t sub_1001E2814(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 32);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t AppleIDPasskeyDaemonService.verifyAppleIDPasskey(with:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_1001E29E4, 0, 0);
}

uint64_t sub_1001E29E4()
{
  sub_1001E48C8();
  v0[3].receiver = v1;
  v2 = v1;
  receiver = v0[2].receiver;
  v4 = *(v0[2].super_class + OBJC_IVAR___AKAppleIDPasskeyDaemonService_client);
  v5 = v4;
  v6 = sub_1001F2AA4(receiver, v4);
  v0[3].super_class = v6;

  v7 = type metadata accessor for AppleIDPasskeyVerificationController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___AKAppleIDPasskeyVerificationController_passkeyValidator] = v2;
  *&v8[OBJC_IVAR___AKAppleIDPasskeyVerificationController_verificationProvider] = v6;
  v0[1].receiver = v8;
  v0[1].super_class = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v0[4].receiver = objc_msgSendSuper2(v0 + 1, "init");
  v9 = swift_task_alloc();
  v0[4].super_class = v9;
  *v9 = v0;
  *(v9 + 1) = sub_1001E2C8C;
  v10 = v0[2].receiver;

  return sub_1001F2414(v10);
}

uint64_t sub_1001E2C8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_1001E2E30;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_1001E2DB4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001E2DB4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);
  v4 = *(v0 + 88);

  return v3(v4);
}

uint64_t sub_1001E2E30()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = *(v0 + 80);
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1001AD2E4(v4, qword_1003776B0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Verify passkey failed with error: %@.", v7, 0xCu);
    sub_1001B4EB8(v8);
  }

  swift_willThrow();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1001E3158(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001E5974;

  return AppleIDPasskeyDaemonService.verifyAppleIDPasskey(with:)(v6);
}

uint64_t AppleIDPasskeyDaemonService.unenrollAppleIDPasskey(with:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_1001E323C, 0, 0);
}

uint64_t sub_1001E323C()
{
  sub_1001E48C8();
  v0[3].receiver = v1;
  v2 = v1;
  receiver = v0[2].receiver;
  v4 = *(v0[2].super_class + OBJC_IVAR___AKAppleIDPasskeyDaemonService_client);
  v5 = v4;
  v6 = sub_100206718(receiver, v4);
  v0[3].super_class = v6;

  v7 = type metadata accessor for AppleIDPasskeyUnenrollController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___AKAppleIDPasskeyUnenrollController_passkeyValidator] = v2;
  *&v8[OBJC_IVAR___AKAppleIDPasskeyUnenrollController_unenrollProvider] = v6;
  v0[1].receiver = v8;
  v0[1].super_class = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v0[4].receiver = objc_msgSendSuper2(v0 + 1, "init");
  v9 = swift_task_alloc();
  v0[4].super_class = v9;
  *v9 = v0;
  *(v9 + 1) = sub_1001E34FC;

  return sub_100206B80(0);
}

uint64_t sub_1001E34FC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_1001E36A4;
  }

  else
  {
    *(v4 + 88) = a1 & 1;
    v7 = sub_1001E3628;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001E3628()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);
  v4 = *(v0 + 88);

  return v3(v4);
}

uint64_t sub_1001E36A4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = *(v0 + 80);
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1001AD2E4(v4, qword_1003776B0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unenroll passkey failed with error: %@.", v7, 0xCu);
    sub_1001B4EB8(v8);
  }

  swift_willThrow();
  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_1001E39D0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001E59A0;

  return AppleIDPasskeyDaemonService.unenrollAppleIDPasskey(with:)(v6);
}

uint64_t AppleIDPasskeyDaemonService.appleIDPasskeyStatus(with:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001E3B3C;

  return sub_1001E4B90(a1);
}

uint64_t sub_1001E3B3C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1001E3DC4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1001E3E98;

  return sub_1001E4B90(v6);
}

uint64_t sub_1001E3E98(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  if (v3)
  {
    a1 = _convertErrorToNSError(_:)();

    v10 = a1;
LABEL_3:
    v11 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v10 = 0;
    goto LABEL_3;
  }

  sub_1001AD17C(&qword_1003728B0, &qword_10029D460);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = isa;
  v10 = 0;
  a1 = isa;
LABEL_6:
  v13 = *(v5 + 32);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v9 + 8);

  return v14();
}

uint64_t sub_1001E406C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_1001E40CC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1001E40DC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_1001E4150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001AD17C(&unk_100374250, &qword_10029D9A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1001E58BC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100013518(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000122C0(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void _s3akd27AppleIDPasskeyDaemonServiceC26configureExportedInterfaceyySo14NSXPCInterfaceCF_0()
{
  sub_1001AD17C(&unk_100374270, &qword_10029DE30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10029DD30;
  v1 = sub_1001E592C(0, &qword_100372FE0, AKAppleIDPasskeySetupContext_ptr);
  *(v0 + 56) = sub_1001AD17C(&qword_100372FE8, &qword_10029DE38);
  *(v0 + 32) = v1;
  v9 = sub_1001E592C(0, &qword_100372FF0, NSData_ptr);
  *(v0 + 88) = sub_1001AD17C(&qword_100372FF8, &qword_10029DE40);
  *(v0 + 64) = v9;
  v8 = sub_1001E592C(0, &qword_100373000, NSError_ptr);
  *(v0 + 120) = sub_1001AD17C(&unk_100373008, &qword_10029DE48);
  *(v0 + 96) = v8;
  v2 = sub_1001E592C(0, &qword_100372950, NSString_ptr);
  *(v0 + 152) = sub_1001AD17C(&qword_100373018, &qword_10029DE50);
  *(v0 + 128) = v2;
  v3 = sub_1001E592C(0, &qword_100373020, NSDictionary_ptr);
  *(v0 + 184) = sub_1001AD17C(&qword_100373028, &qword_10029DE58);
  *(v0 + 160) = v3;
  v4 = sub_1001E592C(0, &qword_100373030, NSNull_ptr);
  *(v0 + 216) = sub_1001AD17C(&qword_100373038, qword_10029DE60);
  *(v0 + 192) = v4;
  v5 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v5 initWithArray:isa];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001E48C8()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 primaryAuthKitAccount];
  if (v1)
  {
    v2 = v1;
    v14 = [objc_opt_self() sharedManager];
    v3 = [objc_allocWithZone(type metadata accessor for AppleIDPasskeyServerConfiguration()) init];
    v4 = [objc_opt_self() currentDevice];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(AKCDPFactory) init];
      v7 = [objc_allocWithZone(AKAppleIDPasskeyAuthenticationController) init];
      v8 = type metadata accessor for AppleIDPasskeyValidator();
      v9 = objc_allocWithZone(v8);
      *&v9[OBJC_IVAR___AKAppleIDPasskeyValidator_account] = v2;
      *&v9[OBJC_IVAR___AKAppleIDPasskeyValidator_accountManager] = v0;
      *&v9[OBJC_IVAR___AKAppleIDPasskeyValidator_featureManager] = v14;
      *&v9[OBJC_IVAR___AKAppleIDPasskeyValidator_configuration] = v3;
      *&v9[OBJC_IVAR___AKAppleIDPasskeyValidator_device] = v5;
      *&v9[OBJC_IVAR___AKAppleIDPasskeyValidator_cdpFactory] = v6;
      *&v9[OBJC_IVAR___AKAppleIDPasskeyValidator_authenticationController] = v7;
      v15.receiver = v9;
      v15.super_class = v8;
      objc_msgSendSuper2(&v15, "init");
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1001AD2E4(v10, qword_1003776B0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Missing primary account.", v13, 2u);
    }

    type metadata accessor for AppleIDPasskeyError(0);
    v16 = -120017;
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001B1020();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

uint64_t sub_1001E4BB0()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = type metadata accessor for AppleIDPasskeyStatusController();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___AKAppleIDPasskeyStatusController_accountManager] = v1;
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v0[2].super_class = objc_msgSendSuper2(v0 + 1, "init");
  v4 = swift_task_alloc();
  v0[3].receiver = v4;
  *v4 = v0;
  v4[1] = sub_1001E4CAC;
  receiver = v0[2].receiver;

  return sub_1001BB90C(receiver);
}

uint64_t sub_1001E4CAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_1001E4E3C;
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = sub_1001E4DD4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001E4DD4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_1001E4E3C()
{
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, qword_1003776B0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 56);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Passkey status failed with error: %@.", v6, 0xCu);
    sub_1001B4EB8(v7);
  }

  v9 = *(v0 + 56);

  swift_willThrow();
  v10 = *(v0 + 8);
  v11 = *(v0 + 56);

  return v10();
}

uint64_t sub_1001E4FCC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001E5080;

  return sub_1001E3DC4(v2, v3, v4);
}

uint64_t sub_1001E5080()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001E5174()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001E597C;

  return sub_1001E39D0(v2, v3, v4);
}

uint64_t sub_1001E5228()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001E5980;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_1001E52E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001E5984;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_1001E53B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001E5988;

  return sub_1001E3158(v2, v3, v4);
}

uint64_t sub_1001E5468()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001E598C;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_1001E5528(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001E5990;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_1001E55F4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001E563C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001E5994;

  return sub_1001E2750(v2, v3, v4);
}

uint64_t sub_1001E56F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001E5998;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_1001E57B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001E57F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001E599C;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_1001E58BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AD17C(&unk_100372FD0, &qword_10029F6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E592C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id sub_1001E59A4(char *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1001E6248();
  v8 = *&a1[OBJC_IVAR___AKSignInWithAppleSharedCredential_userID];
  v7 = *&a1[OBJC_IVAR___AKSignInWithAppleSharedCredential_userID + 8];

  v9 = String._bridgeToObjectiveC()();

  [v6 setAccount:v9];

  v11 = *&a1[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID];
  v10 = *&a1[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID + 8];

  v12 = String._bridgeToObjectiveC()();

  [v6 setLabel:v12];

  v14 = *&a1[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID];
  v13 = *&a1[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID + 8];

  v15 = String._bridgeToObjectiveC()();

  [v6 setServer:v15];

  v17 = *&a1[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID];
  v16 = *&a1[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID + 8];

  v18 = String._bridgeToObjectiveC()();

  [v6 setSharingGroup:v18];

  v19 = type metadata accessor for JSONEncoder();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for SignInWithAppleSharedCredential();
  sub_1001E6334(&qword_100373048, type metadata accessor for SignInWithAppleSharedCredential);
  v22 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v3)
  {
  }

  else
  {
    v24 = v22;
    v25 = v23;

    v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    isa = Data._bridgeToObjectiveC()().super.isa;
    v4 = [v26 initWithDescriptor:v6 value:isa];
    sub_100013B34(v24, v25);
  }

  return v4;
}

char *sub_1001E5C20(char *a1)
{
  v2 = a1;
  v3 = [a1 descriptor];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v3 server];
  if (!v5)
  {

    goto LABEL_11;
  }

  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = [v4 account];
  if (!v10)
  {

    goto LABEL_10;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = [v2 value];
  if (!v15)
  {

    goto LABEL_10;
  }

  v64 = v12;
  v66 = v7;
  v68 = v14;
  v16 = v15;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = type metadata accessor for JSONDecoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v23 = type metadata accessor for SignInWithAppleSharedCredential();
  sub_1001E6334(&qword_100373040, type metadata accessor for SignInWithAppleSharedCredential);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v62 = v19;
    v63 = v23;

    v25 = v72;
    v26 = &v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID];
    v61 = v17;
    if (*&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID] == v66 && *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID + 8] == v9)
    {

LABEL_17:
      v28 = &v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_userID];
      if (*&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_userID] == v64 && *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_userID + 8] == v68)
      {
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) == 0)
        {

          sub_100013B34(v17, v62);
          goto LABEL_11;
        }
      }

      v69 = *v26;
      v65 = *(v26 + 1);
      v30 = *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_teamID + 8];
      v59 = *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_teamID];
      v31 = *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientName + 8];
      v57 = *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientName];
      v67 = *v28;
      v60 = *(v28 + 1);
      v32 = *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_shareToken + 8];
      v58 = *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_shareToken];
      v33 = *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID + 8];
      v56 = *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID];
      v54 = *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID + 8];
      v55 = *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID];
      v52 = *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantName + 8];
      v53 = *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantName];
      v51 = *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_privateEmail];
      v49 = *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_privateEmail + 8];
      v34 = *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_developerName + 8];
      v50 = *&v72[OBJC_IVAR___AKSignInWithAppleSharedCredential_developerName];
      v35 = objc_allocWithZone(v63);
      *&v35[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs] = &_swiftEmptySetSingleton;
      v36 = &v35[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID];
      *v36 = v69;
      *(v36 + 1) = v65;
      v37 = &v35[OBJC_IVAR___AKSignInWithAppleSharedCredential_teamID];
      *v37 = v59;
      *(v37 + 1) = v30;
      v38 = &v35[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientName];
      *v38 = v57;
      *(v38 + 1) = v31;
      v39 = &v35[OBJC_IVAR___AKSignInWithAppleSharedCredential_userID];
      *v39 = v67;
      *(v39 + 1) = v60;
      v40 = &v35[OBJC_IVAR___AKSignInWithAppleSharedCredential_shareToken];
      *v40 = v58;
      *(v40 + 1) = v32;
      v41 = &v35[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID];
      *v41 = v56;
      *(v41 + 1) = v33;
      v42 = &v35[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID];
      *v42 = v55;
      *(v42 + 1) = v54;
      v43 = &v35[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantName];
      *v43 = v53;
      *(v43 + 1) = v52;
      v44 = &v35[OBJC_IVAR___AKSignInWithAppleSharedCredential_privateEmail];
      *v44 = v51;
      *(v44 + 1) = v49;
      v45 = &v35[OBJC_IVAR___AKSignInWithAppleSharedCredential_developerName];
      *v45 = v50;
      *(v45 + 1) = v34;
      v70.receiver = v35;
      v70.super_class = v63;

      v46 = objc_msgSendSuper2(&v70, "init");

      sub_100013B34(v61, v62);
      v47 = *&v25[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs];
      v2 = v46;

      v48 = *&v2[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs];
      *&v2[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs] = v47;

      return v2;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_17;
    }

    sub_100013B34(v17, v62);
LABEL_10:

    goto LABEL_11;
  }

  sub_100013B34(v17, v19);

LABEL_11:
  type metadata accessor for SignInWithAppleError(0);
  v71 = -16009;
  sub_1001E4150(&_swiftEmptyArrayStorage);
  sub_1001E6334(&qword_100372690, type metadata accessor for SignInWithAppleError);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  return v2;
}

id sub_1001E6248()
{
  v0 = [objc_allocWithZone(AAFKeychainItemDescriptor) init];
  [v0 setItemClass:2];
  [v0 setAccessGroup:AKSignInWithAppleKeychainAccessGroup];
  [v0 setSynchronizable:1];
  [v0 setItemAccessible:1];
  [v0 setUseDataProtection:2];
  String.init(_:)(kSecAttrProtocolHTTPS);
  v1 = String._bridgeToObjectiveC()();

  [v0 setItemProtocol:v1];

  return v0;
}

uint64_t sub_1001E6334(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1001E637C()
{
  result = [objc_allocWithZone(type metadata accessor for SignInWithAppleHealthCheckService()) init];
  qword_100377658 = result;
  return result;
}

uint64_t sub_1001E6408()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1001AD2E4(v3, qword_100377698);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, v15);
    _os_log_impl(&_mh_execute_header, v4, v5, "Registering SIWA health check activity - %s", v6, 0xCu);
    sub_1001E94CC(v7);
  }

  v8 = *&v1[OBJC_IVAR___AKSignInWithAppleHealthCheckService_serialQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = ObjectType;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1001E7C80;
  *(v10 + 24) = v9;
  v15[4] = sub_1001E7C88;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1001FAEC8;
  v15[3] = &unk_100327758;
  v11 = _Block_copy(v15);
  v12 = v1;

  dispatch_sync(v8, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1001E6678(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v8[4] = sub_1001E7C90;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100248CF4;
  v8[3] = &unk_1003277A8;
  v5 = _Block_copy(v8);
  v6 = a1;

  v7 = String.utf8CString.getter();
  xpc_activity_register((v7 + 32), XPC_ACTIVITY_CHECK_IN, v5);

  _Block_release(v5);
}

uint64_t sub_1001E678C(_xpc_activity_s *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v39 - v7;
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1001AD2E4(v9, qword_100377698);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Registered SIWA health check service", v12, 2u);
  }

  String.utf8CString.getter();
  v13 = os_transaction_create();

  state = xpc_activity_get_state(a1);
  v15 = Logger.logObject.getter();
  if (state != 2)
  {
    if (state)
    {
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v40 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, &v40);
        v19 = "Error handling activity: %s";
        goto LABEL_19;
      }
    }

    else
    {
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v40 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, &v40);
        v19 = "Checked in %s";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v15, v16, v19, v17, 0xCu);
        sub_1001E94CC(v18);

        return swift_unknownObjectRelease();
      }
    }

LABEL_22:

    return swift_unknownObjectRelease();
  }

  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v40 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, &v40);
    _os_log_impl(&_mh_execute_header, v15, v20, "Running %s", v21, 0xCu);
    sub_1001E94CC(v22);
  }

  if (xpc_activity_should_defer(a1))
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, &v40);
      _os_log_impl(&_mh_execute_header, v23, v24, "Activity (%s) transistion to state RUN, but criteria are no longer satisfied. Deferring", v25, 0xCu);
      sub_1001E94CC(v26);
    }

    if (!xpc_activity_set_state(a1, 3))
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v40 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, &v40);
        _os_log_impl(&_mh_execute_header, v27, v28, "Activity (%s) failed to transition to state DEFER", v29, 0xCu);
        sub_1001E94CC(v30);

        return swift_unknownObjectRelease();
      }
    }

    goto LABEL_22;
  }

  if (!xpc_activity_set_state(a1, 4))
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, &v40);
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to set activity(%s) state to Continue", v37, 0xCu);
      sub_1001E94CC(v38);
    }

    xpc_activity_set_state(a1, 5);
    goto LABEL_22;
  }

  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v33;
  *(v34 + 40) = 1;
  *(v34 + 48) = a1;
  *(v34 + 56) = v13;
  *(v34 + 64) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1001E745C(0, 0, v8, &unk_10029DED0, v34);
  swift_unknownObjectRelease();

  return sub_100010DD0(v8);
}

uint64_t sub_1001E6EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  return _swift_task_switch(sub_1001E6F10, 0, 0);
}

uint64_t sub_1001E6F10()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if ([*(Strong + OBJC_IVAR___AKSignInWithAppleHealthCheckService_currentDevice) isUnlocked])
    {
      v4 = swift_task_alloc();
      v0[8] = v4;
      *v4 = v0;
      v4[1] = sub_1001E70F4;

      return sub_1001E8BF0();
    }

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1001AD2E4(v6, qword_100377698);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Device is not unlocked. Skipping health check.", v9, 2u);
    }
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001E70F4()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_1001E71F0, 0, 0);
}

uint64_t sub_1001E71F0()
{
  v14 = v0;
  if (*(v0 + 72) != 1)
  {

    goto LABEL_14;
  }

  if (xpc_activity_set_state(*(v0 + 48), 5))
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1001AD2E4(v1, qword_100377698);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 56);
    if (!v4)
    {
      goto LABEL_13;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, &v13);
    v8 = "Activity(%s) state set to Done";
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1001AD2E4(v9, qword_100377698);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 56);
    if (!v10)
    {
      goto LABEL_13;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, &v13);
    v8 = "Failed to set activity(%s) state to Done";
  }

  _os_log_impl(&_mh_execute_header, v2, v3, v8, v6, 0xCu);
  sub_1001E94CC(v7);

LABEL_13:

LABEL_14:
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1001E745C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1001DE11C(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100010DD0(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
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

id sub_1001E7744(void *a1)
{
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, qword_100377698);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "SIWA health check: Releasing Lock Assertion", v5, 2u);
  }

  return [a1 unlock];
}

id sub_1001E783C()
{
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v12);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v11 = OBJC_IVAR___AKSignInWithAppleHealthCheckService_serialQueue;
  sub_1001E7B78();
  static DispatchQoS.unspecified.getter();
  v14 = &_swiftEmptyArrayStorage;
  sub_1001E7BC4();
  sub_1001AD17C(&unk_1003734F0, &unk_10029DEA8);
  sub_1001E7C1C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *&v0[v11] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    *&v0[OBJC_IVAR___AKSignInWithAppleHealthCheckService_currentDevice] = result;
    v13.receiver = v0;
    v13.super_class = ObjectType;
    return objc_msgSendSuper2(&v13, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001E7AD0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001E7B78()
{
  result = qword_1003734E0;
  if (!qword_1003734E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003734E0);
  }

  return result;
}

unint64_t sub_1001E7BC4()
{
  result = qword_100373090;
  if (!qword_100373090)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373090);
  }

  return result;
}

unint64_t sub_1001E7C1C()
{
  result = qword_1003730A0;
  if (!qword_1003730A0)
  {
    sub_1001C5270(&unk_1003734F0, &unk_10029DEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003730A0);
  }

  return result;
}

uint64_t sub_1001E7C98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1001E7D78;

  return sub_1001E6EEC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001E7D78()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001E7E6C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001E9524;

  return sub_10024ADDC(a1, v5);
}

uint64_t sub_1001E7F24(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001E7FDC;

  return sub_10024ADDC(a1, v5);
}

uint64_t sub_1001E7FDC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_1001E80D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for SharedGroupsMembershipController();
  v28[3] = v9;
  v28[4] = &off_100328758;
  v28[0] = a2;
  v26 = v8;
  v27 = &off_1003270E8;
  v25[0] = a4;
  type metadata accessor for SharedAccountsTokenRotationController();
  v10 = swift_allocObject();
  v11 = sub_1001E947C(v28, v9);
  v12 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = v26;
  v17 = sub_1001E947C(v25, v26);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v14;
  v23 = *v20;
  v10[6] = v9;
  v10[7] = &off_100328758;
  v10[12] = v8;
  v10[13] = &off_1003270E8;
  v10[2] = a1;
  v10[3] = v22;
  v10[8] = a3;
  v10[9] = v23;
  sub_1001E94CC(v25);
  sub_1001E94CC(v28);
  return v10;
}

void *sub_1001E82E8()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [objc_allocWithZone(AAFKeychainManager) init];
  v2 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
  v57 = v1;
  v3 = v0;
  v59 = sub_100244CAC(v57, v3, v2);
  v58 = objc_opt_self();
  v4 = [v58 sharedInstance];
  v5 = [objc_allocWithZone(AKCDPFactory) init];
  v6 = type metadata accessor for AccountSharingPreFlightChecker();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  v8 = AKURLBagKeySIWAFetchSharedGroups;
  v9 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
  v10 = String._bridgeToObjectiveC()();
  [v9 setAltDSID:v10];

  v11 = type metadata accessor for AccountSharingRequestProvider();
  v12 = [objc_allocWithZone(v11) initWithContext:v9 urlBagKey:v8];
  [v12 setAuthenticatedRequest:1];
  v13 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v12];

  v14 = type metadata accessor for AccountSharingService();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = AKURLBagKeySIWARevokeShareToken;
  v17 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
  v18 = String._bridgeToObjectiveC()();
  [v17 setAltDSID:v18];

  v19 = [objc_allocWithZone(v11) initWithContext:v17 urlBagKey:v16];
  [v19 setAuthenticatedRequest:1];
  v20 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v19];

  v21 = type metadata accessor for AccountUnsharingService();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = type metadata accessor for SharedGroupsMembershipController();
  v24 = swift_allocObject();
  v25 = v57;
  *(v24 + 16) = v3;
  *(v24 + 24) = v25;
  v57 = v25;
  v56 = v3;
  v58 = [v58 sharedInstance];
  v69[3] = v6;
  v69[4] = &off_100328630;
  v69[0] = v7;
  v67 = v14;
  v68 = &off_1003270E8;
  v66[0] = v15;
  v64 = v21;
  v65 = &off_1003269B8;
  v63[0] = v22;
  v61 = v23;
  v62 = &off_100328758;
  v60[0] = v24;
  type metadata accessor for SharedGroupsSyncController();
  v26 = swift_allocObject();
  v27 = sub_1001E947C(v69, v6);
  v28 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = (&v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = v67;
  v33 = sub_1001E947C(v66, v67);
  v34 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = (&v55 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  v38 = v64;
  v39 = sub_1001E947C(v63, v64);
  v40 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v39);
  v42 = (&v55 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = v61;
  v45 = sub_1001E947C(v60, v61);
  v46 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v45);
  v48 = (&v55 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48);
  v50 = *v30;
  v51 = *v36;
  v52 = *v42;
  v53 = *v48;
  v26[6] = v6;
  v26[7] = &off_100328630;
  v26[3] = v50;
  v26[12] = v14;
  v26[13] = &off_1003270E8;
  v26[9] = v51;
  v26[17] = v21;
  v26[18] = &off_1003269B8;
  v26[14] = v52;
  v26[22] = v23;
  v26[23] = &off_100328758;

  v26[19] = v53;
  v26[2] = v58;
  v26[8] = v59;
  sub_1001E94CC(v60);
  sub_1001E94CC(v63);
  sub_1001E94CC(v66);
  sub_1001E94CC(v69);
  return v26;
}

void *sub_1001E897C()
{
  v21 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
  v0 = String._bridgeToObjectiveC()();
  [v21 setAltDSID:v0];

  v1 = [objc_opt_self() sharedInstance];
  v2 = [objc_allocWithZone(AAFKeychainManager) init];
  v3 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
  v4 = v2;
  v5 = v1;
  v6 = sub_100244CAC(v4, v5, v3);
  type metadata accessor for SharedGroupsMembershipController();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  v8 = AKURLBagKeySIWARotateShareTokens;
  v9 = objc_allocWithZone(AKAppleIDAuthenticationContext);
  v10 = v4;
  v11 = v5;
  v12 = [v9 init];
  v13 = String._bridgeToObjectiveC()();
  [v12 setAltDSID:v13];

  v14 = [objc_allocWithZone(type metadata accessor for AccountSharingRequestProvider()) initWithContext:v12 urlBagKey:v8];
  [v14 setAuthenticatedRequest:1];
  v15 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v14];

  type metadata accessor for AccountSharingService();
  v16 = swift_allocObject();
  v16[2] = v15;
  v17 = [objc_opt_self() sharedInstance];

  v18 = v6;

  v19 = sub_1001E80D0(v17, v7, v18, v16);

  return v19;
}

uint64_t sub_1001E8C0C()
{
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[2] = sub_1001AD2E4(v1, qword_100377698);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SIWA health check: Taking Lock Assertion", v4, 2u);
  }

  v0[3] = [objc_opt_self() lock];
  v5 = [objc_opt_self() sharedManager];
  v6 = [v5 isSiwaCredentialSharingEnabled];

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  if (v6)
  {
    if (v9)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Running SIWA health check", v10, 2u);
    }

    v11 = objc_opt_self();
    v12 = [v11 sharedInstance];
    v13 = [v12 primaryAuthKitAccount];
    v0[4] = v13;

    if (v13)
    {
      v14 = [v11 sharedInstance];
      v15 = [v14 altDSIDForAccount:v13];

      if (v15)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v0[5] = sub_1001E82E8();
        v0[6] = sub_1001E897C();

        v16 = swift_task_alloc();
        v0[7] = v16;
        *v16 = v0;
        v16[1] = sub_1001E8FDC;

        return sub_1001D629C();
      }
    }

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "No primary AuthKit account found. Skipping health check.";
      goto LABEL_18;
    }
  }

  else if (v9)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "SIWA account sharing is not enabled. Skipping health check.";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v7, v8, v19, v18, 2u);
  }

  v20 = v0[3];
  sub_1001E7744(v20);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1001E8FDC()
{
  v2 = *(*v1 + 56);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1001E951C;
  }

  else
  {
    v3 = sub_1001E90F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001E90F4()
{
  v1 = *(v0 + 48);
  if (sub_1001DEBE8())
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1001E9268;
    v3 = *(v0 + 48);

    return sub_1001DF450();
  }

  else
  {
    v5 = *(v0 + 16);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "SIWA health check completed", v8, 2u);
    }

    v10 = *(v0 + 40);
    v9 = *(v0 + 48);

    v11 = *(v0 + 24);
    sub_1001E7744(v11);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1001E9268()
{
  v2 = *(*v1 + 64);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1001E9520;
  }

  else
  {
    v3 = sub_1001E9380;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001E9380()
{
  v1 = *(v0 + 16);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SIWA health check completed", v4, 2u);
  }

  v6 = *(v0 + 40);
  v5 = *(v0 + 48);

  v7 = *(v0 + 24);
  sub_1001E7744(v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001E947C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1001E94CC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_1001E956C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleIDPasskeyServerConfiguration();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001E9668()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___AKSharedAccountsStorageController__cachedSharedGroupsMembershipInfo;
  v0[3] = OBJC_IVAR___AKSharedAccountsStorageController__cachedSharedGroupsMembershipInfo;
  v3 = *(v1 + v2);
  if (v3)
  {
    v8 = v0[1];
    v4 = v3;

    return v8(v4);
  }

  else
  {
    v6 = *sub_1001F1344((v1 + OBJC_IVAR___AKSharedAccountsStorageController_sharedGroupsMembershipController), *(v1 + OBJC_IVAR___AKSharedAccountsStorageController_sharedGroupsMembershipController + 24));
    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_1001E9764;

    return sub_10020FF44();
  }
}

uint64_t sub_1001E9764(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_1001E98B0, 0, 0);
  }
}

uint64_t sub_1001E98B0()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v3 + v2);
  *(v3 + v2) = v1;
  v5 = v1;

  v6 = v0[5];
  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1001E9948()
{
  v1 = v0[20];
  v2 = OBJC_IVAR___AKSharedAccountsStorageController__cachedCurrentUserParticipantIdentifier;
  v0[21] = OBJC_IVAR___AKSharedAccountsStorageController__cachedCurrentUserParticipantIdentifier;
  v3 = (v1 + v2);
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v9 = v0[1];

    return v9(v5, v4);
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR___AKSharedAccountsStorageController_keychainGroupManager);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1001E9AE4;
    v8 = swift_continuation_init();
    v0[17] = sub_1001AD17C(&unk_1003731F0, &unk_10029DFB0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001E9CF0;
    v0[13] = &unk_100327898;
    v0[14] = v8;
    [v7 fetchCurrentUserIdentifierWithReply:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1001E9AE4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1001E9C84;
  }

  else
  {
    v3 = sub_1001E9BF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001E9BF4()
{
  v1 = (v0[20] + v0[21]);
  v3 = v0[18];
  v2 = v0[19];
  v4 = v1[1];
  *v1 = v3;
  v1[1] = v2;

  v5 = v0[1];

  return v5(v3, v2);
}

uint64_t sub_1001E9C84()
{
  v1 = *(v0 + 176);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 176);

  return v2();
}

uint64_t sub_1001E9CF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1001F1344((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return swift_continuation_throwingResume();
  }
}

void sub_1001E9DC4(void *a1)
{
  v3 = v1;
  sub_1001F18B4(0, &qword_1003723F8, AAFKeychainItem_ptr);
  v5 = sub_1001E59A4(a1);
  if (!v2)
  {
    v6 = v5;
    v7 = *(v3 + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
    v10 = 0;
    if ([v7 addWithItem:v6 error:&v10])
    {
      v8 = v10;
    }

    else
    {
      v9 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1001E9EDC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;

  return _swift_task_switch(sub_1001E9F70, 0, 0);
}

uint64_t sub_1001E9F70()
{
  v1 = v0[5];
  v2 = *(v0[6] + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
  v3 = sub_1001E6248();
  if (v1)
  {
    v4 = v0[4];
    v5 = v0[5];
    v1 = String._bridgeToObjectiveC()();
  }

  v0[2] = 0;
  v6 = [v2 keychainItemsForDescriptor:v3 withGroup:v1 error:v0 + 2];

  v7 = v0[2];
  if (v6)
  {
    sub_1001F18B4(0, &qword_1003723F8, AAFKeychainItem_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v0[7] = v8;
    v9 = v7;

    v0[3] = &_swiftEmptyArrayStorage;
    if (v8 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
      v0[8] = v20;
      if (v20)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[8] = v10;
      if (v10)
      {
LABEL_6:
        v0[9] = &_swiftEmptyArrayStorage;
        v11 = v0[7];
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v12 = *(v11 + 32);
        }

        v0[10] = v12;
        v0[11] = 1;
        v13 = sub_1001E5C20(v12);
        v0[12] = v13;
        v17 = v13;
        v18 = swift_task_alloc();
        v0[13] = v18;
        *v18 = v0;
        v18[1] = sub_1001EA258;
        v19 = v0[6];

        return sub_1001EA6E8(v17, 0);
      }
    }

    v21 = v0[7];

    v22 = v0[1];

    return v22(&_swiftEmptyArrayStorage);
  }

  else
  {
    v14 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1001EA258(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v9 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = v3[9];
    v6 = v3[7];

    v7 = sub_1001EA650;
  }

  else
  {
    v7 = sub_1001EA3B4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001EA3B4()
{
  v1 = *(v0 + 112);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v22 = *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v7 = *(v0 + 24);
  if (v4 == v6)
  {
    v8 = *(v0 + 56);

    v9 = *(v0 + 8);

    return v9(v7);
  }

  v11 = *(v0 + 120);
  v12 = *(v0 + 88);
  *(v0 + 72) = v7;
  v13 = *(v0 + 56);
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v14 = *(v13 + 8 * v12 + 32);
  }

  *(v0 + 80) = v14;
  *(v0 + 88) = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
LABEL_20:
    __break(1u);
  }

  v15 = v14;
  v16 = sub_1001E5C20(v15);
  *(v0 + 96) = v16;
  if (v11)
  {
    v17 = *(v0 + 56);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v19 = v16;
    v20 = swift_task_alloc();
    *(v0 + 104) = v20;
    *v20 = v0;
    v20[1] = sub_1001EA258;
    v21 = *(v0 + 48);

    return sub_1001EA6E8(v19, 0);
  }
}

uint64_t sub_1001EA650()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 120);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001EA6E8(uint64_t a1, char a2)
{
  *(v3 + 152) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return _swift_task_switch(sub_1001EA70C, 0, 0);
}

uint64_t sub_1001EA70C()
{
  v1 = v0[2];
  v2 = v1 + OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID;
  v3 = *(v1 + OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID);
  v0[4] = v3;
  v18 = v3;
  v4 = *(v2 + 8);
  v0[5] = v4;
  v5 = v1 + OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID;
  v6 = *(v1 + OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID);
  v0[6] = v6;
  v7 = *(v5 + 8);
  v0[7] = v7;
  v8 = (v1 + OBJC_IVAR___AKSignInWithAppleSharedCredential_participantName);
  v9 = *v8;
  v10 = v8[1];
  v11 = objc_allocWithZone(AKSignInWithAppleAccountShareInfo);
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v0[8] = [v11 initWithGroupID:v12 participantID:v13 participantName:v14];

  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_1001EA894;
  v16 = v0[3];

  return sub_1001F090C(v6, v7, v18, v4);
}

uint64_t sub_1001EA894(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v6 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return _swift_task_switch(sub_1001EA994, 0, 0);
}

uint64_t sub_1001EA994()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = String._bridgeToObjectiveC()();

  [v3 setParticipantHandle:v4];

  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1001EAA60;
  v6 = v0[3];

  return sub_1001E9928();
}

uint64_t sub_1001EAA60(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 96);
  v8 = *v3;
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = v2;

  if (v2)
  {
    v6 = sub_1001EAFCC;
  }

  else
  {
    v6 = sub_1001EAB78;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001EAB78()
{
  if (v0[13] == v0[6] && v0[14] == v0[7])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v3 = v0[14];
  }

  v4 = v0[8];

  [v4 setIsCurrentUser:v2 & 1];
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1001EAC60;
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return sub_1001F090C(v7, v6, v8, v9);
}

uint64_t sub_1001EAC60(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v6 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;

  return _swift_task_switch(sub_1001EAD60, 0, 0);
}

uint64_t sub_1001EAD60()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 64);
  v4 = *(v0 + 152);
  v5 = String._bridgeToObjectiveC()();

  [v3 setParticipantHandle:v5];

  if (v4 == 1)
  {
    v6 = *(v0 + 64);
    v7 = (*(v0 + 16) + OBJC_IVAR___AKSignInWithAppleSharedCredential_shareToken);
    v8 = *v7;
    v9 = v7[1];
    v10 = String._bridgeToObjectiveC()();
    [v6 setShareToken:v10];
  }

  v11 = *(v0 + 16);
  v13 = *(v11 + OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID);
  v12 = *(v11 + OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID + 8);
  v14 = *(v11 + OBJC_IVAR___AKSignInWithAppleSharedCredential_userID);
  v15 = *(v11 + OBJC_IVAR___AKSignInWithAppleSharedCredential_userID + 8);
  v16 = objc_allocWithZone(AKSignInWithAppleAccount);
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 initWithClientID:v17 userID:v18];

  v20 = *(v11 + OBJC_IVAR___AKSignInWithAppleSharedCredential_clientName);
  v21 = *(v11 + OBJC_IVAR___AKSignInWithAppleSharedCredential_clientName + 8);
  v22 = String._bridgeToObjectiveC()();
  [v19 setLocalizedAppName:v22];

  if (*(v11 + OBJC_IVAR___AKSignInWithAppleSharedCredential_privateEmail + 8))
  {
    v23 = *(v11 + OBJC_IVAR___AKSignInWithAppleSharedCredential_privateEmail);
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v0 + 64);
  v26 = *(v0 + 16);
  [v19 setPrivateEmail:v24];

  v27 = *(v26 + OBJC_IVAR___AKSignInWithAppleSharedCredential_teamID);
  v28 = *(v26 + OBJC_IVAR___AKSignInWithAppleSharedCredential_teamID + 8);
  v29 = String._bridgeToObjectiveC()();
  [v19 setTeamID:v29];

  v30 = *(v26 + OBJC_IVAR___AKSignInWithAppleSharedCredential_developerName);
  v31 = *(v26 + OBJC_IVAR___AKSignInWithAppleSharedCredential_developerName + 8);
  v32 = String._bridgeToObjectiveC()();
  [v19 setLocalizedAppDeveloperName:v32];

  [v19 setShareInfo:v25];
  v33 = *(v0 + 8);

  return v33(v19);
}

uint64_t sub_1001EAFCC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 120);

  return v1();
}

uint64_t sub_1001EB1B8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1001EB29C;

  return sub_1001E9EDC(a1, v7);
}

uint64_t sub_1001EB29C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);

  if (v2)
  {
    isa = _convertErrorToNSError(_:)();

    v10 = isa;
    v11 = 0;
  }

  else
  {
    sub_1001F18B4(0, &qword_1003743E0, AKSignInWithAppleAccount_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = isa;
    v10 = 0;
  }

  v12 = *(v4 + 24);
  (v12)[2](v12, v11, v10);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_1001EB454()
{
  *(v1 + 32) = v0;

  return _swift_task_switch(sub_1001EB4E4, 0, 0);
}

uint64_t sub_1001EB4E4()
{
  v1 = *(v0[4] + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
  v2 = sub_1001E6248();
  v0[2] = 0;
  v3 = [v1 keychainItemsForDescriptor:v2 withGroup:0 error:v0 + 2];

  v4 = v0[2];
  if (v3)
  {
    sub_1001F18B4(0, &qword_1003723F8, AAFKeychainItem_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v0[5] = v5;
    v6 = v4;

    v0[3] = &_swiftEmptyArrayStorage;
    if (v5 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
      v0[6] = v17;
      if (v17)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[6] = v7;
      if (v7)
      {
LABEL_4:
        v0[7] = &_swiftEmptyArrayStorage;
        v8 = v0[5];
        if ((v8 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v9 = *(v8 + 32);
        }

        v0[8] = v9;
        v0[9] = 1;
        v10 = sub_1001E5C20(v9);
        v0[10] = v10;
        v14 = v10;
        v15 = swift_task_alloc();
        v0[11] = v15;
        *v15 = v0;
        v15[1] = sub_1001EB7BC;
        v16 = v0[4];

        return sub_1001EA6E8(v14, 1);
      }
    }

    v18 = v0[5];

    v19 = v0[1];

    return v19(&_swiftEmptyArrayStorage);
  }

  else
  {
    v11 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1001EB7BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v9 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = v3[7];
    v6 = v3[5];

    v7 = sub_1001EBBB4;
  }

  else
  {
    v7 = sub_1001EB918;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001EB918()
{
  v1 = *(v0 + 96);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v22 = *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v7 = *(v0 + 24);
  if (v4 == v6)
  {
    v8 = *(v0 + 40);

    v9 = *(v0 + 8);

    return v9(v7);
  }

  v11 = *(v0 + 104);
  v12 = *(v0 + 72);
  *(v0 + 56) = v7;
  v13 = *(v0 + 40);
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v14 = *(v13 + 8 * v12 + 32);
  }

  *(v0 + 64) = v14;
  *(v0 + 72) = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
LABEL_20:
    __break(1u);
  }

  v15 = v14;
  v16 = sub_1001E5C20(v15);
  *(v0 + 80) = v16;
  if (v11)
  {
    v17 = *(v0 + 40);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v19 = v16;
    v20 = swift_task_alloc();
    *(v0 + 88) = v20;
    *v20 = v0;
    v20[1] = sub_1001EB7BC;
    v21 = *(v0 + 32);

    return sub_1001EA6E8(v19, 1);
  }
}

uint64_t sub_1001EBBB4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 104);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001EBDC0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1001EBE68;

  return sub_1001EB454();
}

uint64_t sub_1001EBE68()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_1001F18B4(0, &qword_1003743E0, AKSignInWithAppleAccount_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1001EC004(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;

  return _swift_task_switch(sub_1001EC098, 0, 0);
}

uint64_t sub_1001EC098()
{
  v66 = v0;
  if (qword_100371BD8 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    v0[9] = sub_1001AD2E4(v1, qword_100377698);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Fetching keychain SIWA shared credentials", v4, 2u);
    }

    v5 = v0[7];

    v6 = sub_1001E6248();
    v0[10] = v6;

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[6];
      v9 = v0[7];
      v11 = v6;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v65[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10024B050(v10, v9, v65);
      _os_log_impl(&_mh_execute_header, v7, v8, "Searching keychain for groups with SIWA app ID %s", v12, 0xCu);
      sub_1001F2370(v13);

      v6 = v11;
    }

    v14 = v0[7];
    v15 = v0[8];
    v16 = v0[6];
    v17 = String._bridgeToObjectiveC()();
    [v6 setServer:v17];

    v18 = *(v15 + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
    v0[3] = 0;
    v19 = [v18 keychainItemsForDescriptor:v6 withGroup:0 error:v0 + 3];
    v20 = v0[3];
    if (v19)
    {
      v21 = v19;
      sub_1001F18B4(0, &qword_1003723F8, AAFKeychainItem_ptr);
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v20;
    }

    else
    {
      v24 = v20;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v22 = &_swiftEmptyArrayStorage;
    }

    v0[2] = v22;
    v25 = v22 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v25)
    {
      break;
    }

    v26 = v0[7];

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    v61 = v6;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = v0[6];
      v29 = v0[7];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v65[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_10024B050(v30, v29, v65);
      _os_log_impl(&_mh_execute_header, v27, v28, "There are no items matching clientID. Looking for items that have %s in their groupedAppsBundleIDs", v31, 0xCu);
      sub_1001F2370(v32);
    }

    v33 = sub_1001E6248();
    v0[5] = 0;
    v34 = [v18 keychainItemsForDescriptor:v33 withGroup:0 error:v0 + 5];

    v35 = v0[5];
    if (v34)
    {
      sub_1001F18B4(0, &qword_1003723F8, AAFKeychainItem_ptr);
      v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v35;
    }

    else
    {
      v38 = v35;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v36 = &_swiftEmptyArrayStorage;
    }

    if (v36 >> 62)
    {
      v64 = v36 & 0xFFFFFFFFFFFFFF8;
      v39 = _CocoaArrayWrapper.endIndex.getter();
      if (!v39)
      {
LABEL_46:

        v6 = v61;
        break;
      }
    }

    else
    {
      v64 = v36 & 0xFFFFFFFFFFFFFF8;
      v39 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v39)
      {
        goto LABEL_46;
      }
    }

    v40 = 0;
    v62 = v36 + 32;
    v63 = v36 & 0xC000000000000001;
    while (v63)
    {
      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v42 = __OFADD__(v40++, 1);
      if (v42)
      {
        goto LABEL_41;
      }

LABEL_25:
      v43 = v41;
      v44 = sub_1001E5C20(v43);
      v45 = *&v44[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs];
      if (!*(v45 + 16))
      {
        goto LABEL_21;
      }

      v46 = v0[6];
      v47 = v0[7];
      v48 = *(v45 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v49 = Hasher._finalize()();
      v50 = -1 << *(v45 + 32);
      v51 = v49 & ~v50;
      if ((*(v45 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
      {
        v52 = ~v50;
        while (1)
        {
          v53 = (*(v45 + 48) + 16 * v51);
          v54 = *v53 == v0[6] && v53[1] == v0[7];
          if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v51 = (v51 + 1) & v52;
          if (((*(v45 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v55 = v43;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v56 = *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v22 = v0[2];
        if (v40 == v39)
        {
          goto LABEL_46;
        }
      }

      else
      {
LABEL_20:

LABEL_21:

        if (v40 == v39)
        {
          goto LABEL_46;
        }
      }
    }

    if (v40 >= *(v64 + 16))
    {
      goto LABEL_42;
    }

    v41 = *(v62 + 8 * v40);
    v42 = __OFADD__(v40++, 1);
    if (!v42)
    {
      goto LABEL_25;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  v0[11] = v22;
  v0[12] = v22;
  if (v22 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_53;
    }

LABEL_49:
    v0[4] = &_swiftEmptyArrayStorage;
    v57 = swift_task_alloc();
    v0[13] = v57;
    *v57 = v0;
    v57[1] = sub_1001EC8B4;
    v58 = v0[8];

    return sub_1001E9648();
  }

  else
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

LABEL_53:

    v60 = v0[1];

    return v60(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1001EC8B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v9 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v6 = *(v4 + 96);

    v7 = sub_1001ED540;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_1001ECA0C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001ECA0C()
{
  v50 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *&v1[OBJC_IVAR___AKSharedGroupsMembershipInfo_groupsAndParticipants];

  *(v0 + 128) = sub_10022C268(v4);

  if (v2 >> 62)
  {
LABEL_35:
    v5 = *(v0 + 88) & 0xFFFFFFFFFFFFFF8;
    if (*(v0 + 96) < 0)
    {
      v48 = *(v0 + 96);
    }

    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *(v0 + 88) & 0xFFFFFFFFFFFFFF8;
    v6 = *(v5 + 0x10);
  }

  *(v0 + 136) = v5;
  *(v0 + 144) = v6;
  v7 = *(v0 + 112);
  *(v0 + 152) = &_swiftEmptyArrayStorage;
  if (!v6)
  {
LABEL_27:
    v39 = *(v0 + 128);
    v40 = *(v0 + 96);
    v41 = *(v0 + 80);

    v42 = *(v0 + 152);
    v43 = *(v0 + 8);

    return v43(v42);
  }

  v8 = 0;
  while (1)
  {
    if ((*(v0 + 88) & 0xC000000000000001) != 0)
    {
      v35 = *(v0 + 96);
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(*(v0 + 136) + 16))
      {
        goto LABEL_34;
      }

      v9 = *(*(v0 + 96) + 8 * v8 + 32);
    }

    v10 = __OFADD__(v8++, 1);
    *(v0 + 160) = v9;
    *(v0 + 168) = v8;
    if (v10)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v11 = v9;
    v12 = sub_1001E5C20(v11);
    *(v0 + 176) = v12;
    if (v7)
    {
      v44 = *(v0 + 152);
      v45 = *(v0 + 128);
      v46 = *(v0 + 96);

      v47 = *(v0 + 8);

      return v47();
    }

    v13 = v12;
    v14 = *(v0 + 128);
    v15 = &v12[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID];
    if (*(v14 + 16))
    {
      break;
    }

LABEL_21:
    v26 = *(v0 + 72);
    v27 = v13;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v49 = v31;
      *v30 = 136315138;
      v32 = *v15;
      v33 = v15[1];

      v34 = sub_10024B050(v32, v33, &v49);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Detected credential but the current user no longer has access to the group %s. Skipping...", v30, 0xCu);
      sub_1001F2370(v31);
    }

    v7 = 0;
    if (v8 == *(v0 + 144))
    {
      goto LABEL_27;
    }
  }

  v17 = *v15;
  v16 = v15[1];
  v18 = *(v14 + 40);
  Hasher.init(_seed:)();

  String.hash(into:)();
  v19 = Hasher._finalize()();
  v20 = -1 << *(v14 + 32);
  v21 = v19 & ~v20;
  if (((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v21) & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  v22 = ~v20;
  v23 = *(v0 + 128);
  while (1)
  {
    v24 = (*(v23 + 48) + 16 * v21);
    v25 = *v24 == v17 && v24[1] == v16;
    if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v23 = *(v0 + 128);
    v21 = (v21 + 1) & v22;
    if (((*(v23 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v21) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v36 = swift_task_alloc();
  *(v0 + 184) = v36;
  *v36 = v0;
  v36[1] = sub_1001ECEB4;
  v37 = *(v0 + 64);

  return sub_1001EA6E8(v13, 0);
}

uint64_t sub_1001ECEB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v10 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
    v5 = v3[19];
    v6 = v3[16];
    v7 = v3[12];

    v8 = sub_1001ED5D0;
  }

  else
  {
    v8 = sub_1001ED01C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1001ED01C()
{
  v50 = v0;
  v1 = [*(v0 + 192) shareInfo];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v1;
  if ([v1 isCurrentUser])
  {

LABEL_4:
    v3 = *(v0 + 192);
    v4 = *(v0 + 176);

    v5 = *(v0 + 200);
    v2 = *(v0 + 168);
    goto LABEL_7;
  }

  v6 = *(v0 + 192);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_39:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v7 = *(v0 + 192);
  v8 = *(v0 + 176);
  v9 = *(v0 + 160);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v5 = *(v0 + 200);
  v2 = *(v0 + 168);
  *(v0 + 152) = *(v0 + 32);
LABEL_7:
  if (v2 == *(v0 + 144))
  {
LABEL_8:
    v10 = *(v0 + 128);
    v11 = *(v0 + 96);
    v12 = *(v0 + 80);

    v13 = *(v0 + 152);
    v14 = *(v0 + 8);

    return v14(v13);
  }

  while (1)
  {
    if ((*(v0 + 88) & 0xC000000000000001) != 0)
    {
      v42 = *(v0 + 96);
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v2 >= *(*(v0 + 136) + 16))
      {
        goto LABEL_38;
      }

      v16 = *(*(v0 + 96) + 8 * v2 + 32);
    }

    v17 = __OFADD__(v2++, 1);
    *(v0 + 160) = v16;
    *(v0 + 168) = v2;
    if (v17)
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v18 = v16;
    v19 = sub_1001E5C20(v18);
    *(v0 + 176) = v19;
    if (v5)
    {
      v45 = *(v0 + 152);
      v46 = *(v0 + 128);
      v47 = *(v0 + 96);

      v48 = *(v0 + 8);

      return v48();
    }

    v20 = v19;
    v21 = *(v0 + 128);
    v22 = &v19[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID];
    if (*(v21 + 16))
    {
      break;
    }

LABEL_28:
    v33 = *(v0 + 72);
    v34 = v20;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v49 = v38;
      *v37 = 136315138;
      v39 = *v22;
      v40 = v22[1];

      v41 = sub_10024B050(v39, v40, &v49);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Detected credential but the current user no longer has access to the group %s. Skipping...", v37, 0xCu);
      sub_1001F2370(v38);
    }

    v5 = 0;
    if (v2 == *(v0 + 144))
    {
      goto LABEL_8;
    }
  }

  v24 = *v22;
  v23 = v22[1];
  v25 = *(v21 + 40);
  Hasher.init(_seed:)();

  String.hash(into:)();
  v26 = Hasher._finalize()();
  v27 = -1 << *(v21 + 32);
  v28 = v26 & ~v27;
  if (((*(v21 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v28) & 1) == 0)
  {
LABEL_27:

    goto LABEL_28;
  }

  v29 = ~v27;
  v30 = *(v0 + 128);
  while (1)
  {
    v31 = (*(v30 + 48) + 16 * v28);
    v32 = *v31 == v24 && v31[1] == v23;
    if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v30 = *(v0 + 128);
    v28 = (v28 + 1) & v29;
    if (((*(v30 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v28) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v43 = swift_task_alloc();
  *(v0 + 184) = v43;
  *v43 = v0;
  v43[1] = sub_1001ECEB4;
  v44 = *(v0 + 64);

  return sub_1001EA6E8(v20, 0);
}

uint64_t sub_1001ED540()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001ED5D0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);

  v3 = *(v0 + 200);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001ED800(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1001ED8D4;

  return sub_1001EC004(v5, v7);
}

uint64_t sub_1001ED8D4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_1001F18B4(0, &qword_1003743E0, AKSignInWithAppleAccount_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id sub_1001EDA94(void *a1)
{
  v4 = sub_1001E6248();
  v5 = [a1 clientID];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  [v4 setServer:v5];

  v6 = [a1 userID];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  [v4 setAccount:v6];

  v7 = String._bridgeToObjectiveC()();
  [v4 setSharingGroup:v7];

  v8 = [a1 shareInfo];
  if (!v8)
  {
    type metadata accessor for SignInWithAppleError(0);
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    return v4;
  }

  v9 = v8;
  v10 = *(v1 + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
  v47 = 0;
  v11 = [v10 keychainItemsForDescriptor:v4 withGroup:0 error:&v47];
  v12 = v47;
  if (!v11)
  {
    v20 = v47;
    _convertNSErrorToError(_:)();

LABEL_34:
    swift_willThrow();

    return v4;
  }

  v13 = v11;
  sub_1001F18B4(0, &qword_1003723F8, AAFKeychainItem_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v12;

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

  if (_CocoaArrayWrapper.endIndex.getter() != 1 || !_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_33:

    type metadata accessor for SignInWithAppleError(0);
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    goto LABEL_34;
  }

LABEL_9:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v16 = *(v14 + 32);
  }

  v17 = v16;

  v18 = v17;
  v19 = sub_1001E5C20(v18);
  if (!v2)
  {
    v45 = v18;
    v46 = v19;
    v22 = *&v19[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID];
    v21 = *&v19[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID + 8];

    v23 = [v9 participantID];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v22 == v24 && v21 == v26)
    {

      v27 = v46;
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v27 = v46;
      if ((v28 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v30 = *&v27[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID];
    v29 = *&v27[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID + 8];

    v31 = [v9 groupID];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if (v30 == v32 && v29 == v34)
    {

      v27 = v46;
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v27 = v46;
      if ((v35 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v37 = *&v27[OBJC_IVAR___AKSignInWithAppleSharedCredential_userID];
    v36 = *&v27[OBJC_IVAR___AKSignInWithAppleSharedCredential_userID + 8];

    v38 = [a1 userID];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    if (v37 == v39 && v36 == v41)
    {

LABEL_29:
      v4 = *&v27[OBJC_IVAR___AKSignInWithAppleSharedCredential_shareToken];
      v43 = *&v27[OBJC_IVAR___AKSignInWithAppleSharedCredential_shareToken + 8];

      return v4;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {

      goto LABEL_29;
    }

LABEL_30:
    type metadata accessor for SignInWithAppleError(0);
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    return v4;
  }

  return v4;
}

uint64_t sub_1001EE308(int a1, void *aBlock, void *a3)
{
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v3[2] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[3] = v5;
  v3[6] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[7] = v6;
  *v6 = v3;
  v6[1] = sub_1001EE3C8;

  return sub_1001E9648();
}

uint64_t sub_1001EE3C8(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *v2;

  if (v3)
  {
    v9 = *(v5 + 40);
    v8 = *(v5 + 48);

    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);

    _Block_release(*(v5 + 40));
    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    v13 = *(v5 + 16);
    *(v5 + 64) = a1;
    *(v5 + 72) = v13;

    return _swift_task_switch(sub_1001EE560, 0, 0);
  }
}

uint64_t sub_1001EE560()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *&v2[OBJC_IVAR___AKSharedGroupsMembershipInfo_groupsAndParticipants];

  v8 = sub_10022C268(v7);

  LOBYTE(v1) = sub_10022C454(v1, v3, v8);

  (*(v4 + 16))(v4, v1 & 1, 0);
  _Block_release(*(v0 + 40));
  v9 = *(v0 + 8);

  return v9();
}

void sub_1001EE638(void *a1)
{
  v3 = [a1 shareInfo];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1001E6248();
    v6 = [a1 clientID];
    if (!v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = String._bridgeToObjectiveC()();
    }

    [v5 setServer:v6];

    v7 = [a1 userID];
    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();
    }

    [v5 setAccount:v7];

    v8 = [v4 groupID];
    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = String._bridgeToObjectiveC()();
    }

    [v5 setSharingGroup:v8];

    v9 = *(v1 + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
    v12 = 0;
    if ([v9 deleteKeychainItemsFor:v5 error:&v12])
    {
      v10 = v12;
    }

    else
    {
      v11 = v12;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for SignInWithAppleError(0);
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

uint64_t sub_1001EE880(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  a5(v7);

  return 1;
}

uint64_t sub_1001EE920()
{
  *(v1 + 32) = v0;

  return _swift_task_switch(sub_1001EE9B0, 0, 0);
}

uint64_t sub_1001EE9B0()
{
  v0[5] = sub_1001E6248();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1001EEA74;
  v2 = v0[4];

  return sub_1001E9928();
}

uint64_t sub_1001EEA74(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v10 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v8 = sub_1001EF360;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v8 = sub_1001EEBD0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1001EEBD0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = String._bridgeToObjectiveC()();

  [v3 setLabel:v5];

  v6 = *(v4 + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
  *(v0 + 16) = 0;
  v7 = [v6 keychainItemsForDescriptor:v3 withGroup:0 error:v0 + 16];
  v8 = *(v0 + 16);
  if (v7)
  {
    v9 = v7;
    sub_1001F18B4(0, &qword_1003723F8, AAFKeychainItem_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v8;

    v12 = *(v0 + 56);
  }

  else
  {
    v13 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v12 = 0;
    v10 = &_swiftEmptyArrayStorage;
  }

  *(v0 + 80) = v10;
  if (v10 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 88) = v26;
    if (v26)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 88) = v14;
    if (v14)
    {
LABEL_6:
      *(v0 + 24) = &_swiftEmptyArrayStorage;
      *(v0 + 96) = &_swiftEmptyArrayStorage;
      v15 = *(v0 + 80);
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v16 = *(v15 + 32);
      }

      *(v0 + 104) = v16;
      *(v0 + 112) = 1;
      v17 = v16;
      v18 = sub_1001E5C20(v17);
      *(v0 + 120) = v18;
      if (v12)
      {
        v19 = *(v0 + 96);
        v20 = *(v0 + 80);

        v21 = *(v0 + 8);

        return v21();
      }

      else
      {
        v23 = v18;
        v24 = swift_task_alloc();
        *(v0 + 128) = v24;
        *v24 = v0;
        v24[1] = sub_1001EEEFC;
        v25 = *(v0 + 32);

        return sub_1001EA6E8(v23, 0);
      }
    }
  }

  v27 = *(v0 + 40);

  v28 = *(v0 + 8);

  return v28(&_swiftEmptyArrayStorage);
}

uint64_t sub_1001EEEFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v9 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v5 = v3[12];
    v6 = v3[10];

    v7 = sub_1001EF3F0;
  }

  else
  {
    v7 = sub_1001EF058;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001EF058()
{
  v1 = [*(v0 + 136) shareInfo];
  if (v1)
  {
    v2 = v1;
    if ([v1 isCurrentUser])
    {
      v3 = *(v0 + 136);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_26;
      }

      while (1)
      {
        v4 = *(v0 + 136);
        v5 = *(v0 + 120);
        v6 = *(v0 + 104);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v7 = *(v0 + 144);
        v8 = *(v0 + 112);
        *(v0 + 96) = *(v0 + 24);
        if (v8 == *(v0 + 88))
        {
          goto LABEL_8;
        }

LABEL_12:
        v17 = *(v0 + 80);
        if ((v17 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v18 = *(v17 + 8 * v8 + 32);
        }

        *(v0 + 104) = v18;
        *(v0 + 112) = v8 + 1;
        if (!__OFADD__(v8, 1))
        {
          v19 = v18;
          v20 = sub_1001E5C20(v19);
          *(v0 + 120) = v20;
          if (v7)
          {
            v21 = *(v0 + 96);
            v22 = *(v0 + 80);

            v23 = *(v0 + 8);

            return v23();
          }

          else
          {
            v24 = v20;
            v25 = swift_task_alloc();
            *(v0 + 128) = v25;
            *v25 = v0;
            v25[1] = sub_1001EEEFC;
            v26 = *(v0 + 32);

            return sub_1001EA6E8(v24, 0);
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }
  }

  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v2 = *(v0 + 120);
  v11 = *(v0 + 88);

  if (v10 != v11)
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 112);
    goto LABEL_12;
  }

LABEL_8:
  v12 = *(v0 + 80);
  v13 = *(v0 + 40);

  v14 = *(v0 + 96);
  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_1001EF360()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001EF3F0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);

  v3 = *(v0 + 144);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001EF60C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1001F2410;

  return sub_1001EE920();
}

uint64_t sub_1001EF6B4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;

  return _swift_task_switch(sub_1001EF748, 0, 0);
}

uint64_t sub_1001EF748()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1001E6248();
  v0[6] = v3;
  v4 = String._bridgeToObjectiveC()();
  [v3 setServer:v4];

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1001EF844;
  v6 = v0[5];

  return sub_1001E9928();
}

uint64_t sub_1001EF844(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v10 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v8 = sub_1001EFC10;
  }

  else
  {
    *(v6 + 72) = a2;
    *(v6 + 80) = a1;
    v8 = sub_1001EF9A0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1001EF9A0()
{
  v26 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v5 = String._bridgeToObjectiveC()();

  [v3 setLabel:v5];

  v6 = *(v4 + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
  v0[2] = 0;
  v7 = [v6 deleteKeychainItemsFor:v3 error:v0 + 2];
  v8 = v0[2];
  if (v7)
  {
    v9 = qword_100371BD8;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = v0[4];
    v12 = type metadata accessor for Logger();
    sub_1001AD2E4(v12, qword_100377698);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[6];
    if (v15)
    {
      v18 = v0[3];
      v17 = v0[4];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10024B050(v18, v17, &v25);
      _os_log_impl(&_mh_execute_header, v13, v14, "Deleted keychain item for %s.", v19, 0xCu);
      sub_1001F2370(v20);
    }

    v21 = v0[1];
  }

  else
  {
    v22 = v0[6];
    v23 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v21 = v0[1];
  }

  return v21();
}

uint64_t sub_1001EFC10()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001EFE28(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1001EFEFC;

  return sub_1001EF6B4(v5, v7);
}

uint64_t sub_1001EFEFC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1001F0224(int a1, void *aBlock, void *a3)
{
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v3[2] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[3] = v5;
  v3[6] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[7] = v6;
  *v6 = v3;
  v6[1] = sub_1001F02E4;

  return sub_1001E9928();
}

uint64_t sub_1001F02E4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v3 + 56);
  v6 = *v3;
  *(v6 + 64) = a2;
  *(v6 + 72) = v2;

  if (v2)
  {
    v8 = *(v6 + 40);
    v7 = *(v6 + 48);
    v9 = *(v6 + 32);

    v10 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v10);

    _Block_release(*(v6 + 40));
    v11 = *(v6 + 8);

    return v11();
  }

  else
  {
    v13 = *(v6 + 16);
    *(v6 + 80) = a1;
    *(v6 + 88) = v13;

    return _swift_task_switch(sub_1001F0478, 0, 0);
  }
}

uint64_t sub_1001F0478()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  sub_1001F056C();
  v7 = *(v0 + 64);
  if (v4)
  {

    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = *(v0 + 32);

    v11 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v11);
  }

  else
  {
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    v14 = *(v0 + 32);

    (*(v12 + 16))(v12, 0);
  }

  _Block_release(*(v0 + 40));
  v15 = *(v0 + 8);

  return v15();
}

void sub_1001F056C()
{
  v1 = sub_1001E6248();
  v2 = String._bridgeToObjectiveC()();
  [v1 setSharingGroup:v2];

  v3 = String._bridgeToObjectiveC()();
  [v1 setLabel:v3];

  v4 = *(v0 + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
  v7 = 0;
  if ([v4 deleteKeychainItemsFor:v1 error:&v7])
  {
    v5 = v7;
  }

  else
  {
    v6 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1001F0774()
{
  v1 = sub_1001E6248();
  v2 = String._bridgeToObjectiveC()();
  [v1 setSharingGroup:v2];

  v3 = *(v0 + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
  v6 = 0;
  if ([v3 deleteKeychainItemsFor:v1 error:&v6])
  {
    v4 = v6;
  }

  else
  {
    v5 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1001F090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  return _swift_task_switch(sub_1001F0934, 0, 0);
}

uint64_t sub_1001F0934()
{
  v1 = v0[30];
  v2 = OBJC_IVAR___AKSharedAccountsStorageController_participantIDToHandleMap;
  v0[31] = OBJC_IVAR___AKSharedAccountsStorageController_participantIDToHandleMap;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = v0[26];
    v4 = v0[27];

    v6 = sub_10023A350(v5, v4);
    if (v7)
    {
      v8 = (*(v3 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];

      v11 = v0[1];

      return v11(v9, v10);
    }
  }

  v13 = v0[29];
  v14 = v0[27];
  v15 = v0[28];
  v16 = v0[26];
  v0[32] = *(v0[30] + OBJC_IVAR___AKSharedAccountsStorageController_keychainGroupManager);
  v0[33] = String._bridgeToObjectiveC()();
  v0[34] = String._bridgeToObjectiveC()();
  v17 = swift_task_alloc();
  v0[35] = v17;
  *v17 = v0;
  v17[1] = sub_1001F0AAC;
  v18 = v0[30];

  return sub_1001E9928();
}

uint64_t sub_1001F0AAC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 280);
  v12 = *v3;

  if (v2)
  {
    v9 = v6[33];
    v8 = v6[34];

    v10 = sub_1001F0F54;
  }

  else
  {
    v6[36] = a2;
    v6[37] = a1;
    v10 = sub_1001F0BE4;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1001F0BE4()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v6 = String._bridgeToObjectiveC()();
  v0[38] = v6;

  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_1001F0D3C;
  v7 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&unk_1003731F0, &unk_10029DFB0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001E9CF0;
  v0[13] = &unk_100327870;
  v0[14] = v7;
  [v5 fetchParticipantHandleFor:v4 groupID:v3 currentUserParticipantID:v6 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001F0D3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = sub_1001F103C;
  }

  else
  {
    v3 = sub_1001F0E4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001F0E4C()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);

  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v8 = *(v0 + 208);
  v7 = *(v0 + 216);
  swift_beginAccess();

  v9 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v6 + v5);
  *(v6 + v5) = 0x8000000000000000;
  sub_1002316AC(v3, v4, v8, v7, isUniquelyReferenced_nonNull_native);

  *(v6 + v5) = v13;
  swift_endAccess();
  v11 = *(v0 + 8);

  return v11(v3, v4);
}

uint64_t sub_1001F0F54()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[26];
  v3 = v0[27];
  swift_beginAccess();

  v5 = *(v2 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v1);
  *(v2 + v1) = 0x8000000000000000;
  sub_1002316AC(0, 0xE000000000000000, v4, v3, isUniquelyReferenced_nonNull_native);

  *(v2 + v1) = v9;
  swift_endAccess();
  v7 = v0[1];

  return v7(0, 0xE000000000000000);
}

uint64_t sub_1001F103C()
{
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[33];
  v3 = v0[34];
  swift_willThrow();

  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[26];
  v7 = v0[27];
  swift_beginAccess();

  v9 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v6 + v5);
  *(v6 + v5) = 0x8000000000000000;
  sub_1002316AC(0, 0xE000000000000000, v8, v7, isUniquelyReferenced_nonNull_native);

  *(v6 + v5) = v13;
  swift_endAccess();
  v11 = v0[1];

  return v11(0, 0xE000000000000000);
}

id sub_1001F1178()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedAccountsStorageController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001F1260(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = &a3[OBJC_IVAR___AKSharedAccountsStorageController__cachedCurrentUserParticipantIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&a3[OBJC_IVAR___AKSharedAccountsStorageController_participantIDToHandleMap] = &_swiftEmptyDictionarySingleton;
  *&a3[OBJC_IVAR___AKSharedAccountsStorageController__cachedSharedGroupsMembershipInfo] = 0;
  *&a3[OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController] = a1;
  *&a3[OBJC_IVAR___AKSharedAccountsStorageController_keychainGroupManager] = a2;
  v7 = type metadata accessor for SharedGroupsMembershipController();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;
  v9 = &a3[OBJC_IVAR___AKSharedAccountsStorageController_sharedGroupsMembershipController];
  v9[3] = v7;
  v9[4] = &off_100328758;
  *v9 = v8;
  v11.receiver = a3;
  v11.super_class = type metadata accessor for SharedAccountsStorageController();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return objc_msgSendSuper2(&v11, "init");
}

void *sub_1001F1344(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1001F1388()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F23C8;

  return sub_1001F0224(v2, v3, v4);
}

uint64_t sub_1001F143C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F23EC;

  return sub_1001EFE28(v2, v3, v4);
}

uint64_t sub_1001F14F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001F23CC;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_1001F15B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001F23D0;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_1001F167C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001F23D4;

  return sub_1001EF60C(v2, v3);
}

uint64_t sub_1001F1728()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001F23D8;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_1001F17E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001F23DC;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_1001F18B4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1001F18FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F23E0;

  return sub_1001EE308(v2, v3, v4);
}

uint64_t sub_1001F19B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001F23E4;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_1001F1A70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001F23E8;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_1001F1B3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F2404;

  return sub_1001ED800(v2, v3, v4);
}

uint64_t sub_1001F1BF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001F23F0;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_1001F1CB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001F23F4;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_1001F1D7C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001F23F8;

  return sub_1001EBDC0(v2, v3);
}

uint64_t sub_1001F1E28()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001F23FC;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_1001F1EE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001F2400;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_1001F1FB4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001F1FFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F20B0;

  return sub_1001EB1B8(v2, v3, v4);
}

uint64_t sub_1001F20B0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001F21A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001F2408;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_1001F2264()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001F22A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001F240C;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_1001F2370(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1001F2414(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_1001F2434, 0, 0);
}

uint64_t sub_1001F2434()
{
  if ([*(v0[20] + OBJC_IVAR___AKAppleIDPasskeyVerificationController_passkeyValidator) canVerifyPasskey])
  {
    v1 = v0[19];
    v2 = *(v0[20] + OBJC_IVAR___AKAppleIDPasskeyVerificationController_verificationProvider);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1001F26BC;
    v3 = swift_continuation_init();
    v0[17] = sub_1001AD17C(&unk_100373240, qword_10029E0E0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001F28D0;
    v0[13] = &unk_100327C08;
    v0[14] = v3;
    [v2 performVerificationRequestWith:v1 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1001AD2E4(v4, qword_1003776B0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Passkey verification failed. Device is not passkey eligible.", v7, 2u);
    }

    type metadata accessor for AppleIDPasskeyError(0);
    v0[18] = -12002;
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001B1020();
    _BridgedStoredNSError.init(_:userInfo:)();
    v8 = v0[10];
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1001F26BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1001F27E8;
  }

  else
  {
    v3 = sub_1001F27CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001F27E8()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 168);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001F28D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1001B1078((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1001AD17C(&qword_1003728B0, &qword_10029D460);
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

id sub_1001F29FC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001F2AA4(void *a1, uint64_t a2)
{
  v4 = sub_1001AD17C(&qword_100372298, &qword_10029CF30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v9 = result;
    v10 = [result generateVerificationTokenURL];

    if (v10)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
      sub_1001F2EFC(v7);
      v12 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
      v13 = [a1 altDSID];
      if (!v13)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = String._bridgeToObjectiveC()();
      }

      [v12 setAltDSID:v13];

      v14 = [objc_allocWithZone(type metadata accessor for AppleIDPasskeyRequestProvider()) initWithContext:v12 urlBagKey:AKURLBagKeyGenerateVerificationToken];
      [v14 setAuthenticatedRequest:1];
      [v14 setClient:a2];
      v15 = [objc_allocWithZone(AKAuthHandlerImpl) init];
      [v15 setForceSilentAuth:1];
      v16 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v14];
      [v16 setAuthenticationDelegate:v15];

      v17 = [objc_opt_self() sharedInstance];
      v18 = [objc_allocWithZone(AKMIDKeychain) init];
      v19 = [objc_opt_self() sharedManager];
      v20 = [objc_opt_self() sharedManager];

      type metadata accessor for AppleIDPasskeyVerificationProvider();
      result = swift_allocObject();
      *(result + 48) = 3;
      *(result + 2) = v16;
      *(result + 3) = v17;
      *(result + 4) = v18;
      *(result + 5) = v19;
      *(result + 7) = v20;
    }

    else
    {
      v21 = type metadata accessor for URL();
      (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
      sub_1001F2EFC(v7);
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1001AD2E4(v22, qword_1003776B0);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Missing passkey verification url.", v25, 2u);
      }

      type metadata accessor for AppleIDPasskeyError(0);
      v26 = -120013;
      sub_1001E4150(&_swiftEmptyArrayStorage);
      sub_1001B1020();
      _BridgedStoredNSError.init(_:userInfo:)();
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F2EFC(uint64_t a1)
{
  v2 = sub_1001AD17C(&qword_100372298, &qword_10029CF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001F2FD8(uint64_t a1, char *a2)
{
  v4 = sub_1001AD17C(&qword_100373298, qword_10029E138);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  sub_1001F3964();
  v9 = *&a2[OBJC_IVAR___AKAppleIDPasskeyChallengeProvider_serviceController];
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1001F4514;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100234B90;
  aBlock[3] = &unk_100327CD0;
  v12 = _Block_copy(aBlock);
  v13 = a2;

  [v9 executeRequestWithCompletion:v12];
  _Block_release(v12);
}

uint64_t sub_1001F3324(const void *a1, void *a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1001F339C, 0, 0);
}

uint64_t sub_1001F339C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = sub_1001F44C8();
  *v4 = v0;
  v4[1] = sub_1001F3498;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000019, 0x80000001002AB730, sub_1001F44C0, v2, v5);
}

uint64_t sub_1001F3498()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1001F363C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1001F35B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001F35B4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 16);
  (v1)[2](v1, v2, 0);
  _Block_release(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001F363C()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  v4 = _convertErrorToNSError(_:)();

  (v3)[2](v3, 0, v4);

  _Block_release(v3);
  v5 = *(v0 + 8);

  return v5();
}

id sub_1001F371C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001F37C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001F3870;

  return sub_1001F3324(v2, v3);
}

uint64_t sub_1001F3870()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1001F3964()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR___AKAppleIDPasskeyChallengeProvider_accountManager);
  v7 = [v6 primaryAuthKitAccount];
  if (v7)
  {
    v8 = v7;
    static Date.now.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v2 + 8))(v5, v1);
    [v6 setPasskeyRegistrationAttemptDateForAccount:isa forAccount:v8];

    v28 = 0;
    if ([v6 saveAccount:v8 error:&v28])
    {
      v10 = qword_100371BE0;
      v11 = v28;
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1001AD2E4(v12, qword_1003776B0);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Saved passkeyRegistrationAttemptDate to account", v15, 2u);
      }
    }

    else
    {
      v20 = v28;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1001AD2E4(v21, qword_1003776B0);
      swift_errorRetain();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        swift_errorRetain();
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v26;
        *v25 = v26;
        _os_log_impl(&_mh_execute_header, v22, v23, "Failed to save passkeyRegistrationAttemptDate with error %@.", v24, 0xCu);
        sub_1001B4EB8(v25);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1001AD2E4(v16, qword_1003776B0);
    v27 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v27, v17, "Missing primary account.", v18, 2u);
    }

    v19 = v27;
  }
}

uint64_t sub_1001F3DD4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  isa = 0;
  if (a3 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v4 = [objc_opt_self() dictionaryFromObject:isa ofType:@"application/json"];
  swift_unknownObjectRelease();
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v6 = sub_10023A30C(v23);
  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_1000087A8(*(v5 + 56) + 32 * v6, v24);
  sub_1001AD3EC(v23);
  if (swift_dynamicCast())
  {
    AnyHashable.init<A>(_:)();
    if (*(v5 + 16) && (v8 = sub_10023A30C(v23), (v9 & 1) != 0))
    {
      sub_1000087A8(*(v5 + 56) + 32 * v8, v24);
      sub_1001AD3EC(v23);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_15:

        goto LABEL_16;
      }

      AnyHashable.init<A>(_:)();
      if (*(v5 + 16))
      {
        v10 = sub_10023A30C(v23);
        if (v11)
        {
          sub_1000087A8(*(v5 + 56) + 32 * v10, v24);
          sub_1001AD3EC(v23);

          if (swift_dynamicCast())
          {
            sub_1001F42D8();
            v16 = objc_allocWithZone(AKAppleIDPasskeyCredentialRequestContext);
            v17 = String._bridgeToObjectiveC()();

            v18 = String._bridgeToObjectiveC()();

            v19 = String._bridgeToObjectiveC()();

            v20 = String._bridgeToObjectiveC()();

            v21 = [v16 initWithRelyingPartyIdentifier:v17 challengeString:v18 userIDString:v19 credentialName:v20];

            v23[0] = v21;
            sub_1001AD17C(&qword_100373298, qword_10029E138);
            return CheckedContinuation.resume(returning:)();
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
    }

LABEL_18:

    sub_1001AD3EC(v23);
    goto LABEL_19;
  }

LABEL_16:

LABEL_19:
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1001AD2E4(v12, qword_1003776B0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed passkey registration. Missing challenge parameters.", v15, 2u);
  }

  type metadata accessor for AppleIDPasskeyError(0);
  v24[0] = -12008;
  sub_1001E4150(&_swiftEmptyArrayStorage);
  sub_1001B1020();
  _BridgedStoredNSError.init(_:userInfo:)();
  v24[0] = v23[0];
  sub_1001AD17C(&qword_100373298, qword_10029E138);
  return CheckedContinuation.resume(throwing:)();
}

id sub_1001F42D8()
{
  v1 = [*(v0 + OBJC_IVAR___AKAppleIDPasskeyChallengeProvider_accountManager) primaryAuthKitAccount];
  if (v1)
  {
    v2 = v1;
    result = [v1 username];
    if (result)
    {
      v4 = result;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1001AD2E4(v6, qword_1003776B0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Missing primary authKit account.", v9, 2u);
    }

    type metadata accessor for AppleIDPasskeyError(0);
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001B1020();
    _BridgedStoredNSError.init(_:userInfo:)();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1001F4480()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1001F44C8()
{
  result = qword_100373290;
  if (!qword_100373290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100373290);
  }

  return result;
}

uint64_t sub_1001F4514(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(sub_1001AD17C(&qword_100373298, qword_10029E138) - 8);
  v8 = *(v3 + ((*(v7 + 64) + ((*(v7 + 80) + 16) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001F3DD4(a1, a2, a3);
}

uint64_t sub_1001F468C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001F46AC, 0, 0);
}

uint64_t sub_1001F46AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
  v0[4] = v3;
  v4 = [v1 altDSID];
  [v3 setAltDSID:v4];

  v5 = [objc_allocWithZone(AKDeviceListRequestProvider) initWithContext:v3 urlBagKey:AKURLBagKeyDeviceList];
  v0[5] = v5;
  v6 = sub_1001F4BF0(v1);
  [v5 setDeviceRequestContext:v6];

  [v5 setClient:*(v2 + OBJC_IVAR___AKDeviceListRequester_client)];
  v7 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v5];
  v0[6] = v7;
  v8 = *(v2 + OBJC_IVAR___AKDeviceListRequester_storeManager);
  v9 = *(v2 + OBJC_IVAR___AKDeviceListRequester_cdpFactory);
  v10 = *(v2 + OBJC_IVAR___AKDeviceListRequester_accountManager);
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_1001F486C;
  v12 = v0[2];

  return sub_1002358F0(v12, v9, v7, v10);
}

uint64_t sub_1001F486C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_1001F4A08;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_1001F4994;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001F4994()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  v3 = *(v0 + 8);
  v4 = *(v0 + 72);

  return v3(v4);
}

uint64_t sub_1001F4A08()
{
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1001AD2E4(v3, qword_100377668);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[8];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2112;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch device list  for context - %@ with error - %@", v9, 0x16u);
    sub_1001AD17C(&unk_1003726A0, &unk_10029CFA0);
    swift_arrayDestroy();
  }

  v13 = v0[8];
  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[4];

  swift_willThrow();
  v17 = v0[1];
  v18 = v0[8];

  return v17();
}

id sub_1001F4BF0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___AKDeviceListRequester_cdpFactory);
  v3 = [a1 altDSID];
  LODWORD(v2) = [v2 isHSA2EnabledForAltDSID:v3];

  if (v2 && ([a1 includeFamilyDevices] & 1) == 0)
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1001AD2E4(v5, qword_100377668);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "Setting server provided context from context - %@", v9, 0xCu);
      sub_1001B4EB8(v10);
    }

    v12 = [objc_allocWithZone(AKDeviceListRequestContext) init];
    v13 = [v6 altDSID];
    [v12 setAltDSID:v13];

    [v12 setIncludeUntrustedDevices:1];
    return v12;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_1001F4F98(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001F505C;

  return sub_1001F468C(v6);
}

uint64_t sub_1001F505C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1001F5214(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001F5234, 0, 0);
}

uint64_t sub_1001F5234()
{
  v1 = *(v0[3] + OBJC_IVAR___AKDeviceListRequester_storeManager);
  v0[4] = v1;
  v2 = *(v1 + OBJC_IVAR___AKDeviceListStoreManager_deviceListProvider);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1001F52EC;
  v4 = v0[2];

  return sub_1001BCE30(v4);
}

uint64_t sub_1001F52EC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7(0);
  }

  else
  {
    *(v4 + 56) = a1 & 1;

    return _swift_task_switch(sub_1001F5440, 0, 0);
  }
}

uint64_t sub_1001F5440()
{
  if (*(v0 + 56) == 1)
  {
    v1 = *(*(v0 + 32) + OBJC_IVAR___AKDeviceListStoreManager_deletedDeviceListProvider);
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_1001F552C;
    v3 = *(v0 + 16);

    return sub_1001BCE30(v3);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5(0);
  }
}

uint64_t sub_1001F552C(char a1)
{
  v4 = *(*v2 + 48);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_1001F57BC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001F5880;

  return sub_1001F5214(v6);
}

uint64_t sub_1001F5880(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 32);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v13 = *(v10 + 8);

  return v13();
}

id sub_1001F5A60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceListRequester();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001F5B24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F5BD8;

  return sub_1001F57BC(v2, v3, v4);
}

uint64_t sub_1001F5BD8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001F5CCC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001F5D14()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F5F58;

  return sub_1001F4F98(v2, v3, v4);
}

uint64_t sub_1001F5DC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001F5F5C;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_1001F5E88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001F5F60;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_1001F5FD8(void *a1, uint64_t a2)
{
  v5 = sub_1001AD17C(&qword_100372300, &unk_10029CF90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v77 - v8;
  v10 = *&v2[OBJC_IVAR___AKAppleIDPasskeyRegistrationProvider_serviceController];
  v11 = [v10 requestProvider];
  type metadata accessor for AppleIDPasskeyRequestProvider();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v80 = v9;
    v81 = v6;
    v82 = v12;
    v83 = a2;
    v13 = [a1 attestationDataString];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {
      goto LABEL_17;
    }

    v18 = [a1 clientDataString];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      goto LABEL_17;
    }

    v23 = [a1 originalChallengeString];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v78 = v10;
      v79 = v5;
      sub_1001AD17C(&unk_100373FF0, &qword_10029E208);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10029DA60;
      v84 = 1684631666;
      v85 = 0xE400000000000000;
      swift_unknownObjectRetain();
      AnyHashable.init<A>(_:)();
      v29 = [a1 relyingPartyIdentifier];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v30;
      *(inited + 80) = v32;
      v84 = 0x7461747365747461;
      v85 = 0xEB000000006E6F69;
      AnyHashable.init<A>(_:)();
      v33 = [a1 attestationDataString];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      *(inited + 168) = &type metadata for String;
      *(inited + 144) = v34;
      *(inited + 152) = v36;
      v84 = 0x676E656C6C616863;
      v85 = 0xE900000000000065;
      AnyHashable.init<A>(_:)();
      v37 = [a1 originalChallengeString];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      *(inited + 240) = &type metadata for String;
      *(inited + 216) = v38;
      *(inited + 224) = v40;
      v84 = 0x646E614872657375;
      v85 = 0xEA0000000000656CLL;
      AnyHashable.init<A>(_:)();
      v41 = [a1 userIDString];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      *(inited + 312) = &type metadata for String;
      *(inited + 288) = v42;
      *(inited + 296) = v44;
      v84 = 0x6144746E65696C63;
      v85 = 0xEA00000000006174;
      AnyHashable.init<A>(_:)();
      v45 = [a1 clientDataString];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      *(inited + 384) = &type metadata for String;
      *(inited + 360) = v46;
      *(inited + 368) = v48;
      sub_10023A660(inited);
      swift_setDeallocating();
      sub_1001AD17C(&qword_100373320, qword_10029E210);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v82 setAuthKitBody:isa];
      swift_unknownObjectRelease();

      v50 = [a1 clientDataString];
      if (!v50)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = String._bridgeToObjectiveC()();
      }

      v82 = v2;
      v51 = [v50 aaf_toBase64DecodedString];

      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_1001AD2E4(v55, qword_1003776B0);

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v84 = v59;
        *v58 = 136315138;
        v60 = sub_10024B050(v52, v54, &v84);

        *(v58 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v56, v57, "Client data string decoded %s.", v58, 0xCu);
        sub_1001AD48C(v59);
      }

      else
      {
      }

      v70 = v79;
      v71 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v73 = v80;
      v72 = v81;
      (*(v81 + 16))(v80, v83, v70);
      v74 = (*(v72 + 80) + 24) & ~*(v72 + 80);
      v75 = swift_allocObject();
      *(v75 + 16) = v71;
      (*(v72 + 32))(v75 + v74, v73, v70);
      v88 = sub_1001F7AE8;
      v89 = v75;
      v84 = _NSConcreteStackBlock;
      v85 = 1107296256;
      v86 = sub_100234B90;
      v87 = &unk_100327EB0;
      v76 = _Block_copy(&v84);

      [v78 executeRequestWithCompletion:v76];
      _Block_release(v76);
    }

    else
    {
LABEL_17:
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      sub_1001AD2E4(v61, qword_1003776B0);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "Failed to register passkeys. Missing required parameters.", v64, 2u);
      }

      type metadata accessor for AppleIDPasskeyError(0);
      v90 = -120012;
      sub_1001E4150(&_swiftEmptyArrayStorage);
      sub_1001B1020();
      _BridgedStoredNSError.init(_:userInfo:)();
      v90 = v84;
      CheckedContinuation.resume(throwing:)();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_1001AD2E4(v65, qword_1003776B0);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Failed to register passkeys. Request provider type mismatch.", v68, 2u);
    }

    type metadata accessor for AppleIDPasskeyError(0);
    v90 = -12009;
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001B1020();
    _BridgedStoredNSError.init(_:userInfo:)();
    v90 = v84;
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1001F6B0C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_1001F6B98, 0, 0);
}

uint64_t sub_1001F6B98()
{
  v1 = swift_task_alloc();
  v0[2].i64[1] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  v0[3].i64[0] = v3;
  *v3 = v0;
  v3[1] = sub_1001F6C8C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(&v0[4], 0, 0, 0xD000000000000021, 0x80000001002AB8A0, sub_1001F7ABC, v1, &type metadata for Bool);
}

uint64_t sub_1001F6C8C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1001F6E30;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1001F6DA8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001F6DA8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  (*(v1 + 16))(v1, *(v0 + 64), 0);
  _Block_release(*(v0 + 32));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001F6E30()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);

  v5 = _convertErrorToNSError(_:)();

  (*(v3 + 16))(v3, 0, v5);

  _Block_release(*(v0 + 32));
  v6 = *(v0 + 8);

  return v6();
}

id sub_1001F6F14()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001F6FBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F7070;

  return sub_1001F6B0C(v2, v3, v4);
}

uint64_t sub_1001F7070()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1001F7164(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a3 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }

    v11 = [objc_opt_self() dictionaryFromObject:isa ofType:@"application/json"];
    swift_unknownObjectRelease();
    if (v11)
    {
      v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *&v25[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v25[0] + 1) = v13;
      AnyHashable.init<A>(_:)();
      if (!*(v12 + 16) || (v14 = sub_10023A30C(v26), (v15 & 1) == 0))
      {

        sub_1001AD3EC(v26);
        memset(v25, 0, sizeof(v25));
        sub_100011FF4(v25, &qword_100372080, &qword_10029C6E0);
        sub_1001F76A4();
        if (qword_100371BE0 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_1001AD2E4(v19, qword_1003776B0);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v20, v21, "Finished passkey registration.", v22, 2u);
        }

        LOBYTE(v26[0]) = 1;
        sub_1001AD17C(&qword_100372300, &unk_10029CF90);
        CheckedContinuation.resume(returning:)();
        goto LABEL_27;
      }

      sub_1000087A8(*(v12 + 56) + 32 * v14, v25);
      sub_1001AD3EC(v26);

      sub_100011FF4(v25, &qword_100372080, &qword_10029C6E0);
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1001AD2E4(v16, qword_1003776B0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v17, v18))
      {
LABEL_26:

        type metadata accessor for AppleIDPasskeyError(0);
        *&v25[0] = -12009;
        sub_1001E4150(&_swiftEmptyArrayStorage);
        sub_1001B1020();
        _BridgedStoredNSError.init(_:userInfo:)();
        *&v25[0] = v26[0];
        sub_1001AD17C(&qword_100372300, &unk_10029CF90);
        CheckedContinuation.resume(throwing:)();
LABEL_27:

        return;
      }
    }

    else
    {
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1001AD2E4(v23, qword_1003776B0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_26;
      }
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Failed to register passkey. Missing response.", v24, 2u);

    goto LABEL_26;
  }

  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1001AD2E4(v7, qword_1003776B0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to register passkey. AppleIDPasskeyRegistrationProvider instance is nil.", v10, 2u);
  }

  type metadata accessor for AppleIDPasskeyError(0);
  sub_1001E4150(&_swiftEmptyArrayStorage);
  sub_1001B1020();
  _BridgedStoredNSError.init(_:userInfo:)();
  *&v25[0] = v26[0];
  sub_1001AD17C(&qword_100372300, &unk_10029CF90);
  CheckedContinuation.resume(throwing:)();
}

void sub_1001F76A4()
{
  v1 = *(v0 + OBJC_IVAR___AKAppleIDPasskeyRegistrationProvider_accountManager);
  v2 = [v1 primaryAuthKitAccount];
  if (v2)
  {
    v3 = v2;
    [v1 setPasskeyPresent:1 forAccount:v2];
    v21 = 0;
    if ([v1 saveAccount:v3 error:&v21])
    {
      v4 = qword_100371BE0;
      v5 = v21;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1001AD2E4(v6, qword_1003776B0);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "AppleIDPasskeyRegistrationProvider: passkeyPresent saved successfully.", v9, 2u);
      }
    }

    else
    {
      v13 = v21;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1001AD2E4(v14, qword_1003776B0);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v19;
        *v18 = v19;
        _os_log_impl(&_mh_execute_header, v15, v16, "AppleIDPasskeyRegistrationProvider: Failed to save passkeyPresent with error %@.", v17, 0xCu);
        sub_100011FF4(v18, &unk_1003726A0, &unk_10029CFA0);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1001AD2E4(v10, qword_1003776B0);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "AppleIDPasskeyRegistrationProvider: Missing primary account.", v12, 2u);
    }
  }
}

uint64_t sub_1001F7A7C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001F7ABC(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  return sub_1001F5FD8(v3, a1);
}

void sub_1001F7AE8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(*(sub_1001AD17C(&qword_100372300, &unk_10029CF90) - 8) + 80);
  v8 = *(v3 + 16);

  sub_1001F7164(a1, a2, a3);
}

id sub_1001F7E78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleIDPasskeyRequestProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSObject *sub_1001F7EF0(void *a1)
{
  v2 = v1;
  v4 = sub_1001F9E20(a1);
  v6 = v5;
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1001AD2E4(v7, qword_100377668);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10024B050(v4, v6, aBlock);
    _os_log_impl(&_mh_execute_header, v8, v9, "DeviceListProvider - Begin fetching devices from cache for query %s", v10, 0xCu);
    sub_1001AD48C(v11);

    v2 = v1;
  }

  v12 = swift_allocObject();
  v12[2] = &_swiftEmptyArrayStorage;
  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() queryWithString:v13];

  v15 = [a1 altDSID];
  if (!v15)
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "DeviceListProvider - Context altDSID is nil, cannot fetch devices", v33, 2u);
    }

    type metadata accessor for DeviceListError(0);
    v30 = v34;
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001BE2F4();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    goto LABEL_16;
  }

  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  sub_1001AD17C(&unk_100374270, &qword_10029DE30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10029BEB0;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 32) = v17;
  *(v20 + 40) = v19;
  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[0] = 0;
  [v14 bindParameters:isa error:aBlock];

  v22 = aBlock[0];
  aBlock[4] = sub_1000133C0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012114;
  aBlock[3] = &unk_100327F00;
  v23 = _Block_copy(aBlock);
  v24 = v22;

  [v14 setRowHandler:v23];
  _Block_release(v23);
  v25 = *(v2 + 16);
  aBlock[0] = 0;
  if (![v25 performQuery:v14 error:aBlock])
  {
    v35 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&_mh_execute_header, v30, v36, "Error %@ fetching devices from cache", v37, 0xCu);
      sub_1001FA4B4(v38, &unk_1003726A0, &unk_10029CFA0);
    }

    swift_willThrow();
LABEL_16:

    return v30;
  }

  v26 = aBlock[0];
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "DeviceListProvider - Finished fetching devices from cache", v29, 2u);
  }

  swift_beginAccess();
  v30 = v12[2];

  return v30;
}