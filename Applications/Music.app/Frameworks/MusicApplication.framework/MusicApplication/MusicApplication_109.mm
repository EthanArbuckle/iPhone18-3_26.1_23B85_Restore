uint64_t sub_9B39F4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_9B3A48()
{
  v1 = sub_AB31C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_9B3B08()
{
  v1 = *(sub_AB31C0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);

  sub_9AECF8(v0 + v2, v5, v6, v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_9B3BAC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_9B3BE4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_9B3C24(result);
  }

  return result;
}

unint64_t sub_9B3C24(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    return (result & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

unint64_t sub_9B3C34(unint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_9B3C4C(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_9B3C4C(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_9B3C24(a1);
    v4 = vars8;
  }
}

uint64_t sub_9B3C8C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_9B35CC(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t JSShareRequestCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_99EBFC(_swiftEmptyArrayStorage);
  *(v0 + 24) = sub_99ED48(_swiftEmptyArrayStorage);
  return v0;
}

uint64_t JSShareRequestCoordinator.init()()
{
  *(v0 + 16) = sub_99EBFC(_swiftEmptyArrayStorage);
  *(v0 + 24) = sub_99ED48(_swiftEmptyArrayStorage);
  return v0;
}

Swift::Int sub_9B3DBC()
{
  sub_ABB5C0();
  sub_ABA7A0();
  sub_AB93F0();

  sub_AB92A0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9B3EC8()
{
  sub_ABA7A0();
  sub_AB93F0();

  sub_AB92A0();
  sub_AB93F0();
}

Swift::Int sub_9B3FB8()
{
  sub_ABB5C0();
  sub_ABA7A0();
  sub_AB93F0();

  sub_AB92A0();
  sub_AB93F0();

  return sub_ABB610();
}

void JSShareRequestCoordinator.perform(shareRequest:responseHandler:)(_BYTE *a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = *&a1[OBJC_IVAR____TtC11MusicJSCore14JSShareRequest_activityType];
  v9 = a1[OBJC_IVAR____TtC11MusicJSCore14JSShareRequest_requestContent + 8];
  v10.super.isa = sub_AB8FD0().super.isa;
  swift_beginAccess();
  v11 = *(v3 + 24);
  v12 = *(v11 + 16);
  v13 = v8;
  if (v12)
  {

    v14 = sub_9A1CF4(v10.super.isa, v9, v13);
    if (v15)
    {
      v16 = *(v11 + 56) + 16 * v14;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *v16;
      swift_errorRetain();

      a2(v17, v18);

      return;
    }
  }

  swift_beginAccess();
  v20 = *(v4 + 16);
  if (!*(v20 + 16))
  {
    goto LABEL_13;
  }

  v21 = sub_9A1CF4(v10.super.isa, v9, v13);
  if ((v22 & 1) == 0)
  {

LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24B40);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_AF4EC0;
    v35 = swift_allocObject();
    *(v35 + 16) = a2;
    *(v35 + 24) = a3;
    *(v34 + 32) = sub_9B4A34;
    *(v34 + 40) = v35;
    swift_beginAccess();
    v36 = v13;

    v37 = a1;
    v38 = v10.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_9A3688(v37, v34, v38, v9, v36, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v47;
    swift_endAccess();
    v40 = swift_allocObject();
    *(v40 + 16) = v4;
    *(v40 + 24) = v38;
    *(v40 + 32) = v9;
    *(v40 + 40) = v36;
    v41 = v36;
    v42 = v38;

    JSShareRequest.perform(responseHandler:)(sub_9B4AAC, v40);

    return;
  }

  v23 = *(v20 + 56) + 16 * v21;
  v24 = *(v23 + 8);
  v25 = *v23;

  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;

  v27 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_A9897C(0, v24[2] + 1, 1, v24);
  }

  v28 = v27[2];
  v29 = v27[3];
  v30 = v28 + 1;
  if (v28 >= v29 >> 1)
  {
    v43 = v27;
    v44 = v27[2];
    v45 = sub_A9897C((v29 > 1), v28 + 1, 1, v43);
    v28 = v44;
    v27 = v45;
  }

  v27[2] = v30;
  v31 = &v27[2 * v28];
  v31[4] = sub_9B4C84;
  v31[5] = v26;
  swift_beginAccess();
  v32 = v25;

  v33 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_9A3688(v32, v27, v10.super.isa, v9, v13, v33);

  *(v4 + 16) = v46;
  swift_endAccess();
}

uint64_t sub_9B4504(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, void *a6)
{
  sub_13C80(0, &qword_DE8ED0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  v13 = a1;
  swift_errorRetain();

  v14 = a4;
  v15 = a6;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B4C6C, v12);
}

uint64_t sub_9B45E4(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, void *a6)
{
  swift_beginAccess();
  v12 = a1;
  swift_errorRetain();
  v13 = v12;
  swift_errorRetain();
  v14 = a4;
  v15 = a6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(a3 + 24);
  *(a3 + 24) = 0x8000000000000000;
  sub_9A3804(a1, a2, v14, a5, v15, isUniquelyReferenced_nonNull_native);

  *(a3 + 24) = v29;
  swift_endAccess();
  swift_beginAccess();
  v17 = *(a3 + 16);
  v18 = *(v17 + 16);

  if (v18 && (v19 = sub_9A1CF4(v14, a5, v15), (v20 & 1) != 0))
  {
    v21 = *(v17 + 56) + 16 * v19;
    v22 = *(v21 + 8);
    v23 = *v21;

    swift_beginAccess();
    sub_9A0A2C(0, 0, v14, a5, v15);
    swift_endAccess();
    v24 = *(v22 + 16);
    if (v24)
    {

      v25 = v22 + 40;
      do
      {
        v26 = *(v25 - 8);
        v28 = a2;
        v29 = a1;

        v26(&v29, &v28);

        v25 += 16;
        --v24;
      }

      while (v24);

      swift_bridgeObjectRelease_n();
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t JSShareRequestCoordinator.deinit()
{

  return v0;
}

uint64_t sub_9B482C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  sub_13C80(0, &qword_DFA720);
  if ((sub_ABA790() & 1) == 0)
  {
    goto LABEL_26;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0x616C5065726F7473;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 1)
    {
      v8 = 0xED00006D726F6674;
    }

    else
    {
      v8 = 0x8000000000B7D230;
    }

    v9 = a5;
    if (a5)
    {
LABEL_10:
      if (v9 == 1)
      {
        v10 = 0x616C5065726F7473;
      }

      else
      {
        v10 = 0xD000000000000010;
      }

      if (v9 == 1)
      {
        v11 = 0xED00006D726F6674;
      }

      else
      {
        v11 = 0x8000000000B7D230;
      }

      if (v7 != v10)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v8 = 0x8000000000B7D200;
    v7 = 0xD000000000000012;
    v9 = a5;
    if (a5)
    {
      goto LABEL_10;
    }
  }

  v11 = 0x8000000000B7D200;
  if (v7 != 0xD000000000000012)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (v8 == v11)
  {

    goto LABEL_23;
  }

LABEL_22:
  v12 = sub_ABB3C0();

  if ((v12 & 1) == 0)
  {
LABEL_26:
    v17 = 0;
    return v17 & 1;
  }

LABEL_23:
  v13 = sub_AB92A0();
  v15 = v14;
  if (v13 == sub_AB92A0() && v15 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_ABB3C0();
  }

  return v17 & 1;
}

uint64_t sub_9B49FC()
{

  return swift_deallocObject();
}

uint64_t sub_9B4A64()
{

  return swift_deallocObject();
}

uint64_t sub_9B4AE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_9B4B3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_9B4BC0()
{
  result = qword_E24C28;
  if (!qword_E24C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E24C28);
  }

  return result;
}

uint64_t sub_9B4C14()
{

  return swift_deallocObject();
}

uint64_t sub_9B4C88()
{
  sub_12E1C(v0 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_url, &unk_DF2AE0);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return sub_12E1C(v0 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseExpirationDate, &unk_E01230);
}

id JSStoreHTTPRequest.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest];
  if (v3)
  {
    sub_13C80(0, &qword_E07CC0);
    v4 = v3;
    v5 = static ICURLSessionManager.musicSession.getter();
    [v5 cancelRequest:v4];
  }

  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_9B4F6C()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest];
  if (v1)
  {
    v2 = v0;
    sub_13C80(0, &qword_E07CC0);
    v3 = v1;
    v4 = static ICURLSessionManager.musicSession.getter();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v6 = v2;
    ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(v3, sub_9B81C4, v5);
  }
}

void sub_9B5040()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryTimer;
  if (*(v0 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_ABA200();
    swift_unknownObjectRelease();
    *(v0 + v1) = 0;
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest);
  if (v2)
  {
    sub_13C80(0, &qword_E07CC0);
    v3 = v2;
    v4 = static ICURLSessionManager.musicSession.getter();
    [v4 cancelRequest:v3];
  }
}

void JSStoreHTTPRequest.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin();
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v31 - v9;
  if ((*(v3 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_frozen) & 1) == 0)
  {
    v36[0] = a1;
    v36[1] = a2;
    sub_15F84(a3, v37, &unk_DE8E40);
    if (v38)
    {
      sub_15F84(v37, &v34, &unk_DE8E40);

      if (swift_dynamicCast())
      {
        v12 = v31[0];
        v11 = v31[1];
        if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_ABB3C0() & 1) != 0)
        {
          sub_AB3180();
          v13 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_url;
          swift_beginAccess();
          sub_160B4(v10, v3 + v13, &unk_DF2AE0);
          swift_endAccess();
          sub_15F84(v3 + v13, v8, &unk_DF2AE0);
          v14 = sub_AB31C0();
          if ((*(*(v14 - 8) + 48))(v8, 1, v14) != 1)
          {

            sub_12E1C(v8, &unk_DF2AE0);
            goto LABEL_37;
          }

          sub_12E1C(v8, &unk_DF2AE0);
          v15 = sub_AB9F30();
          if (qword_E23F98 != -1)
          {
            swift_once();
          }

          v16 = static OS_os_log.scripting;
          if (os_log_type_enabled(static OS_os_log.scripting, v15))
          {
            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v32[0] = v18;
            *v17 = 136446210;
            v19 = sub_425E68(v12, v11, v32);

            *(v17 + 4) = v19;
            _os_log_impl(&dword_0, v16, v15, "Failed to make an URL with string %{public}s. Did you forget to escape the URL string?", v17, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v18);

LABEL_37:
            __swift_destroy_boxed_opaque_existential_0(&v34);
LABEL_38:
            sub_12E1C(v37, &unk_DE8E40);

            return;
          }

LABEL_36:

          goto LABEL_37;
        }

        if (a1 == 0x646F6874656DLL && a2 == 0xE600000000000000 || (sub_ABB3C0() & 1) != 0)
        {
          v20 = sub_9DBDAC(v12, v11);
          if (v20 != 6)
          {
            *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_method) = v20;
          }

          goto LABEL_37;
        }
      }

      __swift_destroy_boxed_opaque_existential_0(&v34);
    }

    else
    {
    }

    if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_ABB3C0() & 1) != 0)
    {
      sub_15F84(a3, v32, &unk_DE8E40);
      if (v33)
      {
        sub_9ACFC(v32, &v34);
        __swift_project_boxed_opaque_existential_1(&v34, v35);
        v21 = sub_ABB3A0();
        __swift_destroy_boxed_opaque_existential_0(&v34);
        *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_body) = v21;
      }

      else
      {
        sub_12E1C(v32, &unk_DE8E40);
        *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_body) = 0;
      }

      swift_unknownObjectRelease();
      goto LABEL_38;
    }

    if (v38)
    {
      sub_15F84(v37, &v34, &unk_DE8E40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07D60);
      if (swift_dynamicCast())
      {
        v22 = v32[0];
        if (a1 == 0x6574497972657571 && a2 == 0xEA0000000000736DLL || (sub_ABB3C0() & 1) != 0)
        {
          v23 = Dictionary.filterIncludingPairsWithStringValues()(v22, &type metadata for String, &type metadata for Swift.AnyObject + 8, &protocol witness table for String);

          v24 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_queryItems;
LABEL_35:
          *(v3 + v24) = v23;
          goto LABEL_36;
        }

        if (a1 == 0x73726564616568 && a2 == 0xE700000000000000 || (sub_ABB3C0() & 1) != 0)
        {
          v25 = Dictionary.filterIncludingPairsWithStringValues()(v22, &type metadata for String, &type metadata for Swift.AnyObject + 8, &protocol witness table for String);

          v23 = Dictionary.filteredDictionary(_:)(sub_9DB9A0, 0, v25, &type metadata for String, &type metadata for String, &protocol witness table for String);

          v24 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_headers;
          goto LABEL_35;
        }
      }

      sub_13C80(0, &qword_DF1300);
      if (swift_dynamicCast())
      {
        v26 = v32[0];
        if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (sub_ABB3C0() & 1) != 0)
        {
          [v26 doubleValue];
          v28 = v27;

          *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_timeout) = v28 / 1000.0;
          goto LABEL_37;
        }

        if (a1 == 0x756F437972746572 && a2 == 0xEA0000000000746ELL || (sub_ABB3C0() & 1) != 0)
        {
          v29 = [v26 integerValue];

          *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryCount) = v29;
          goto LABEL_37;
        }
      }

      if (swift_dynamicCast())
      {
        v30 = v32[0];
        if (a1 == 0xD00000000000001DLL && 0x8000000000B7E360 == a2 || (sub_ABB3C0() & 1) != 0)
        {
          *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_shouldSuppressResponseDialogs) = v30;
          goto LABEL_37;
        }

        if (a1 == 0xD000000000000017 && 0x8000000000B7E380 == a2 || (sub_ABB3C0() & 1) != 0)
        {
          *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_shouldPrioritizeRequest) = v30;
          goto LABEL_37;
        }
      }

      __swift_destroy_boxed_opaque_existential_0(&v34);
    }

    sub_12E1C(v36, &unk_E27200);
  }
}

uint64_t static JSStoreHTTPRequest.isAuthenticating.setter(char a1)
{
  result = swift_beginAccess();
  static JSStoreHTTPRequest.isAuthenticating = a1;
  return result;
}

Swift::Void __swiftcall JSStoreHTTPRequest.scheduleResponseCallback()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  *&v2 = __chkstk_darwin().n128_u64[0];
  v4 = v18 - v3;
  v5 = *&v0[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_response];
  if (v5)
  {
    if ([v5 parsedBody])
    {
      sub_ABAB50();
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v21 = v19;
    v22 = v20;
    if (*(&v20 + 1))
    {
      v6 = *&v0[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseStatusCode];
      if (v6 == 200)
      {
        sub_15F84(&v21, &v19, &unk_DE8E40);
        if (*(&v20 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07D60);
          if (swift_dynamicCast())
          {
            sub_9B5E08(v18[1]);
          }
        }

        else
        {
          sub_12E1C(&v19, &unk_DE8E40);
        }

        v6 = 200;
      }
    }

    else
    {
      v6 = 901;
    }
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v6 = 901;
  }

  sub_15F84(&v21, &v19, &unk_DE8E40);
  v7 = *&v1[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_performanceMetrics];
  v8 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseExpirationDate;
  swift_beginAccess();
  sub_15F84(&v1[v8], v4, &unk_E01230);
  v9 = type metadata accessor for JSStoreHTTPResponse();
  objc_allocWithZone(v9);
  v10 = v7;
  v11 = JSStoreHTTPResponse.init(statusCode:output:performanceMetrics:expirationDate:)(v6, &v19, v7, v4);
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v12 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF4EC0;
  *(v13 + 56) = v9;
  *(v13 + 32) = v11;
  sub_13C80(0, &qword_DE8ED0);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = _swiftEmptyArrayStorage;
  *(v14 + 32) = 0x6E6F707365526E6FLL;
  *(v14 + 40) = 0xEA00000000006573;
  *(v14 + 48) = v1;
  *(v14 + 56) = v12;
  *(v14 + 64) = 0;
  v15 = v11;
  v16 = v1;
  v17 = v12;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v14);

  sub_12E1C(&v21, &unk_DE8E40);
}

void sub_9B5E08(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = v1;
    v4 = sub_2EBF88(0x6E6F69746361, 0xE600000000000000);
    if (v5)
    {
      v28 = *(*(a1 + 56) + 8 * v4);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07D60);
      if (swift_dynamicCast())
      {
        if (*(v27 + 16))
        {
          sub_2EBF88(0x74756F6E676973, 0xE700000000000000);
          v7 = v6;

          if (v7)
          {
            v8 = *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest);
            if (v8)
            {
              v9 = [v8 storeRequestContext];
              if (v9)
              {
                v10 = v9;
                v11 = [v9 identityStore];
                sub_13C80(0, &unk_DF2B00);
                v12 = static ICUserIdentity.active.getter();
                v28 = 0;
                v13 = [v11 getPropertiesForUserIdentity:v12 error:&v28];
                if (v13)
                {
                  v14 = v13;
                  v15 = v28;
                  v16 = [v10 identity];
                  v28 = 0;
                  v17 = [v11 getPropertiesForUserIdentity:v16 error:&v28];
                  if (v17)
                  {
                    v18 = v17;
                    v19 = v28;
                    v20 = [v14 DSID];
                    if (v20)
                    {

                      v21 = [v14 DSID];
                      v22 = [v18 DSID];
                      v23 = v22;
                      if (v21)
                      {
                        if (v22)
                        {
                          sub_13C80(0, &qword_DF1300);
                          v24 = sub_ABA790();

                          if ((v24 & 1) == 0)
                          {
                            goto LABEL_27;
                          }

LABEL_24:
                          if (([v14 isManagedAppleID] & 1) == 0)
                          {
                            [v11 setActiveAccountWithDSID:0 completionHandler:0];
                          }

                          goto LABEL_27;
                        }
                      }

                      else
                      {
                        if (!v22)
                        {
                          goto LABEL_24;
                        }
                      }
                    }

LABEL_27:

                    return;
                  }

                  v26 = v28;
                  sub_AB3050();

                  swift_willThrow();
                  v12 = v16;
                }

                else
                {
                  v25 = v28;
                  sub_AB3050();

                  swift_willThrow();
                }

                sub_AB9F30();
                if (qword_E23F98 != -1)
                {
                  swift_once();
                }

                sub_AB4A90();
              }
            }
          }
        }

        else
        {
        }
      }
    }
  }
}

Swift::Void __swiftcall JSStoreHTTPRequest.scheduleRetry()()
{
  v1 = v0;
  v2 = sub_AB7C10();
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin();
  v46 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB7C50();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin();
  v45 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB7C80();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin();
  v41 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = v37 - v8;
  v39 = sub_AB7BE0();
  v52 = *(v39 - 8);
  __chkstk_darwin();
  v40 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = (v37 - v10);
  v11 = sub_ABA1D0();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin();
  v16 = v37 - v15;
  v17 = *&v0[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_response];
  *&v0[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_response] = 0;

  v18 = sub_AB3430();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  v19 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseExpirationDate;
  swift_beginAccess();
  sub_160B4(v16, &v0[v19], &unk_E01230);
  swift_endAccess();
  *&v0[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseStatusCode] = 0;
  sub_13C80(0, &qword_E24CB0);
  sub_13C80(0, &qword_DE8ED0);
  v20 = sub_ABA150();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_9B8220(&qword_E24CB8, &type metadata accessor for OS_dispatch_source.TimerFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24CC0);
  sub_809E0(&qword_E24CC8, &qword_E24CC0);
  sub_ABABB0();
  v21 = sub_ABA1E0();

  (*(v12 + 8))(v14, v11);
  v38 = v1;
  *&v1[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryTimer] = v21;
  v37[1] = v21;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v23 = v51;
  v22 = v52;
  *v51 = 100;
  v24 = *(v22 + 104);
  v25 = v39;
  v24(v23, enum case for DispatchTimeInterval.milliseconds(_:), v39);
  swift_getObjectType();
  v26 = v41;
  sub_AB7C70();
  v27 = v42;
  sub_AB7CE0();
  v28 = v44;
  v29 = *(v43 + 8);
  v29(v26, v44);
  v30 = v40;
  v24(v40, enum case for DispatchTimeInterval.never(_:), v25);
  sub_ABA3E0();
  v52 = *(v52 + 8);
  (v52)(v30, v25);
  v29(v27, v28);
  v31 = swift_allocObject();
  v32 = v38;
  *(v31 + 16) = v38;
  aBlock[4] = sub_9B7FAC;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_256;
  v33 = _Block_copy(aBlock);
  v34 = v32;
  v35 = v45;
  sub_AB7C30();
  v36 = v46;
  sub_9B7344();
  sub_ABA1F0();
  _Block_release(v33);
  (*(v49 + 8))(v36, v50);
  (*(v47 + 8))(v35, v48);

  sub_ABA210();
  swift_unknownObjectRelease();
  (v52)(v51, v25);
}

uint64_t sub_9B6900@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DispatchTimeInterval.never(_:);
  v3 = sub_AB7BE0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_9B6974(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryTimer;
  if (*(a1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_ABA200();
    swift_unknownObjectRelease();
    *(a1 + v2) = 0;
    swift_unknownObjectRelease();
  }

  sub_9B69E4();
}

void sub_9B69E4()
{
  v1 = v0;
  v2 = sub_AB9300();
  v69 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB2A90();
  v70 = *(v5 - 8);
  __chkstk_darwin();
  v71 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB31C0();
  v8 = *(v7 - 1);
  __chkstk_darwin();
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v62 - v11;
  __chkstk_darwin();
  v14 = &v62 - v13;
  v15 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_url;
  swift_beginAccess();
  if ((*(v8 + 48))(&v1[v15], 1, v7))
  {
    v16 = [objc_allocWithZone(NSError) initWithDomain:NSURLErrorDomain code:-1000 userInfo:0];
    sub_9B75BC(0, v16);

    return;
  }

  v62 = v4;
  v63 = v2;
  v68 = v5;
  v17 = *(v8 + 16);
  v17(v10, &v1[v15], v7);

  URL.parametrize(_:)(v18, v12);

  v64 = *(v8 + 8);
  v65 = v8 + 8;
  v64(v10, v7);
  (*(v8 + 32))(v14, v12, v7);
  v17(v10, v14, v7);
  sub_AB2A50();
  v19 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_method;
  sub_AB2A20();
  v20 = v1[v19];
  v66 = v14;
  v67 = v7;
  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = sub_ABB3C0();

  if ((v21 & 1) == 0)
  {
    v23 = v1[v19];
    if (v23 == 1)
    {
LABEL_7:

      goto LABEL_5;
    }

    v22 = v1;
    v25 = v62;
    v24 = v63;
    v26 = v69;
    v27 = sub_ABB3C0();

    if ((v27 & 1) == 0)
    {
      v28 = *&v1[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_body];
      if (v28)
      {
        v72[2] = *&v1[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_body];
        swift_unknownObjectRetain_n();
        v29 = swift_dynamicCast();
        v30 = v29;
        if (v29)
        {
          sub_AB92F0();
          v7 = sub_AB92B0();
          v32 = v31;

          v33 = v24;
          v34 = v32;
          (*(v26 + 8))(v25, v33);
          swift_unknownObjectRelease();
          if (v32 >> 60 == 15)
          {
            swift_unknownObjectRelease();
            goto LABEL_19;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          v35 = objc_opt_self();
          v72[0] = 0;
          v36 = [v35 dataWithJSONObject:v28 options:0 error:v72];
          v37 = v72[0];
          if (!v36)
          {
            v39 = v37;
            v7 = sub_AB3050();

            swift_willThrow();
            swift_unknownObjectRelease();

            goto LABEL_19;
          }

          v7 = sub_AB3260();
          v34 = v38;
        }

        sub_90090(v7, v34);
        sub_AB2A70();
        if ((v30 & 1) == 0)
        {
          v75._countAndFlagsBits = 0x2D746E65746E6F43;
          v75._object = 0xEC00000065707954;
          v73.value._object = 0x8000000000B7E490;
          v73.value._countAndFlagsBits = 0xD00000000000001FLL;
          sub_AB2A80(v73, v75);
        }

        swift_unknownObjectRelease();
        sub_466B8(v7, v34);
      }
    }

LABEL_19:
    v69 = 0;
    goto LABEL_20;
  }

LABEL_5:
  v69 = 0;
  v22 = v1;
LABEL_20:
  v40 = *(v22 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_headers);
  v41 = (v40 + 64);
  v42 = 1 << *(v40 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v40 + 64);
  v45 = (v42 + 63) >> 6;

  v46 = 0;
  if (v44)
  {
    while (1)
    {
      v47 = v46;
LABEL_28:
      v48 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v49 = (v47 << 10) | (16 * v48);
      v50 = (*(v40 + 48) + v49);
      v51 = *v50;
      v7 = v50[1];
      v52 = (*(v40 + 56) + v49);
      v53 = *v52;
      v54 = v52[1];

      v74.value._countAndFlagsBits = v53;
      v74.value._object = v54;
      v76._countAndFlagsBits = v51;
      v76._object = v7;
      sub_AB2A80(v74, v76);

      if (!v44)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
LABEL_24:
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v47 >= v45)
    {
      break;
    }

    v44 = v41[v47];
    ++v46;
    if (v44)
    {
      v46 = v47;
      goto LABEL_28;
    }
  }

  v55 = *(v22 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_shouldSuppressResponseDialogs);
  sub_13C80(0, &qword_DEE560);
  __chkstk_darwin();
  *(&v62 - 16) = v55;
  v56 = static ICStoreRequestContext.default(withConfigurationBlock:)(sub_9B8268, (&v62 - 4));
  v57 = objc_allocWithZone(ICStoreURLRequest);
  v41 = v56;
  v44 = v71;
  v58 = sub_AB2A30();
  v59 = [v57 initWithURLRequest:v58 requestContext:v41];

  v60 = v59;
  [v60 setMaxRetryCount:0];
  [v60 setShouldUseMescalSigning:1];
  [v60 setPrioritize:*(v22 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_shouldPrioritizeRequest)];

  v61 = *(v22 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest);
  *(v22 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest) = v60;
  v7 = v60;

  if (qword_E23F90 == -1)
  {
    goto LABEL_31;
  }

LABEL_33:
  swift_once();
LABEL_31:
  sub_9DA2FC(v22);

  (*(v70 + 8))(v44, v68);
  v64(v66, v67);
}

uint64_t sub_9B7344()
{
  sub_AB7C10();
  sub_9B8220(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_809E0(&qword_DF06D0, &unk_DE9C30);
  return sub_ABABB0();
}

void sub_9B741C(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = _s11MusicJSCore29SpecialHTTPResponseStatusCodeO8rawValueACSgSi_tcfC_0(*&v1[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseStatusCode]);
  if (v4 == 8 || (a1 & 1) == 0 || v4 - 1 < 2)
  {
LABEL_4:

    JSStoreHTTPRequest.scheduleResponseCallback()();
    return;
  }

  if (v4 == 4)
  {
    if (qword_E23F90 != -1)
    {
      swift_once();
    }

    v5 = static JSHTTPRequestCoordinator.shared;
    v14[3] = ObjectType;
    v14[4] = &protocol witness table for JSStoreHTTPRequest;
    v14[0] = v1;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 24);
      v7 = swift_getObjectType();
      v8 = *(v6 + 8);
      v9 = v1;
      v8(v14, v7, v6);
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = v1;
    }

    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryCount];
    v11 = v10 < 1;
    v12 = v10 - 1;
    if (v11)
    {
      goto LABEL_4;
    }

    *&v1[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryCount] = v12;

    JSStoreHTTPRequest.scheduleRetry()();
  }
}

void sub_9B75BC(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin();
  v6 = &v33 - v5;
  if (a2)
  {
    v7 = a2;
    v8 = [v7 domain];
    v9 = sub_AB92A0();
    v11 = v10;

    if (v9 == sub_AB92A0() && v11 == v12)
    {
    }

    else
    {
      v14 = sub_ABB3C0();

      if ((v14 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if ([v7 code] == -1001)
    {
      v20 = &stru_338 + 76;
LABEL_26:
      *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseStatusCode) = v20;
      sub_9B741C(1);

      goto LABEL_29;
    }

LABEL_14:
    if (a1 && (v21 = [a1 urlResponse]) != 0)
    {
      v22 = v21;
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v20 = [v23 statusCode];
      }

      else
      {
        v20 = &stru_388 + 46;
      }
    }

    else
    {
      v20 = &stru_388 + 46;
    }

    goto LABEL_26;
  }

  if (a1)
  {
    v15 = *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_response);
    *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_response) = a1;
    v16 = a1;

    v17 = [v16 expirationDate];
    if (v17)
    {
      v18 = v17;
      sub_AB33F0();

      v19 = sub_AB3430();
      (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
    }

    else
    {
      v24 = sub_AB3430();
      (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    }

    v25 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseExpirationDate;
    swift_beginAccess();
    sub_160B4(v6, v2 + v25, &unk_E01230);
    swift_endAccess();
    v26 = [v16 urlResponse];
    if (v26)
    {
      v27 = v26;
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      v29 = v28;
      if (v28)
      {
        v26 = [v28 statusCode];
      }

      else
      {

        v26 = 0;
      }
    }

    else
    {
      v29 = 0;
    }

    *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseStatusCode) = v26;
    v30 = [v16 performanceMetrics];
    v31 = *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_performanceMetrics);
    *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_performanceMetrics) = v30;

    sub_9B741C(1);
  }

LABEL_29:
  v32 = *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest);
  *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest) = 0;
}

void sub_9B793C(void *a1, char a2)
{
  v4 = [objc_opt_self() defaultInfo];
  [a1 setClientInfo:v4];

  v5 = [objc_allocWithZone(ICURLResponseAuthenticationProvider) initWithUserInteractionLevel:1];
  [a1 setAuthenticationProvider:v5];

  if ((a2 & 1) == 0)
  {
    v6 = [objc_allocWithZone(ICStoreDialogResponseHandler) init];
    [a1 setStoreDialogResponseHandler:v6];
  }
}

uint64_t sub_9B7A40(void *a1, uint64_t a2, void *a3)
{
  sub_13C80(0, &qword_DE8ED0);
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = a2;
  v7 = a3;
  v8 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B8214, v6);
}

void sub_9B7AF8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_AB3040();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  sub_9B75BC(a2, v4);
}

id JSStoreHTTPRequest.init(type:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_url;
  v4 = sub_AB31C0();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_method) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_body) = 0;
  v5 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_queryItems;
  *(v1 + v5) = sub_96B2C(&_swiftEmptyArrayStorage);
  v6 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_headers;
  *(v1 + v6) = sub_96B2C(&_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_timeout) = 0x403E000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryCount) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_shouldSuppressResponseDialogs) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_shouldIgnoreCache) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_shouldPrioritizeRequest) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_performanceMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_frozen) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_mescalPrimeRetryCount) = 2;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryTimer) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_response) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseStatusCode) = 0;
  v7 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseExpirationDate;
  v8 = sub_AB3430();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);

  return JSObject.init(type:)(a1);
}

void _s11MusicJSCore18JSStoreHTTPRequestC12invokeMethod_9argumentsySS_SayypGtF_0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_frozen;
  if ((*(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_frozen) & 1) == 0)
  {
    if (a1 == 1684956531 && a2 == 0xE400000000000000 || (sub_ABB3C0() & 1) != 0)
    {
      *(v2 + v3) = 1;

      sub_9B69E4();
    }

    else if (a1 == 0x6C65636E6163 && a2 == 0xE600000000000000 || (sub_ABB3C0() & 1) != 0)
    {

      sub_9B5040();
    }
  }
}

uint64_t sub_9B7F1C()
{

  return swift_deallocObject();
}

uint64_t sub_9B7F74()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_256(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for JSStoreHTTPRequest()
{
  result = qword_E24D10;
  if (!qword_E24D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9B8020()
{
  sub_9B8170(319, &qword_E24D20, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    sub_9B8170(319, &qword_E247E0, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_9B8170(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_ABA9C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_9B81CC()
{

  return swift_deallocObject();
}

uint64_t sub_9B8220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_9B8274()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E75668);
  __swift_project_value_buffer(v0, qword_E75668);
  return static Logger.music(_:)();
}

uint64_t sub_9B8304()
{
  if (qword_E23F70 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();
  __swift_project_value_buffer(v0, qword_E75668);
  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Initial metadata fetch", v3, 2u);
  }

  return _swift_task_switch(sub_9B8420, 0, 0);
}

uint64_t sub_9B8420()
{
  v1 = v0[10];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_9B84B8;
  v2 = swift_continuation_init();
  sub_9B85C0(v2);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_9B84B8()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_9B85C0(uint64_t a1)
{
  if ([objc_opt_self() isEnabled])
  {
    BagProvider.shared.unsafeMutableAddressor();
    v2 = swift_allocObject();
    *(v2 + 16) = a1;

    BagProvider.getBag(completion:)(sub_9B8CC4, v2);
  }

  else
  {
    if (qword_E23F70 != -1)
    {
      swift_once();
    }

    v4 = sub_AB4BC0();
    __swift_project_value_buffer(v4, qword_E75668);
    v5 = sub_AB4BA0();
    v6 = sub_AB9F50();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "SocialLayer disabled", v7, 2u);
    }

    sub_9B8C60();
    v8 = swift_allocError();
    *v9 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    swift_allocError();
    *v10 = v8;

    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_9B8798(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin();
  v4 = &v21 - v3;
  v5 = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  if (sub_9B8AA0())
  {
    v10 = sub_AB3430();
    v11 = *(*(v10 - 8) + 56);
    v11(v9, 1, 1, v10);
    v12 = &v9[*(v5 + 20)];
    sub_AB33C0();
    v11(v4, 0, 1, v10);
    sub_386514(v4, v9);
    *v12 = -1082130432;
    v12[4] = 0;
    sub_9B8CCC(v9, v7);
    sub_9B8D30(v7, *(*(a2 + 64) + 40));
    swift_continuation_throwingResume();
    return sub_9B8D94(v9);
  }

  else
  {
    if (qword_E23F70 != -1)
    {
      swift_once();
    }

    v14 = sub_AB4BC0();
    __swift_project_value_buffer(v14, qword_E75668);
    v15 = sub_AB4BA0();
    v16 = sub_AB9F50();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Disabled in bag", v17, 2u);
    }

    sub_9B8C60();
    v18 = swift_allocError();
    *v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    swift_allocError();
    *v20 = v18;

    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_9B8AA0()
{
  result = sub_9B8B4C();
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_2EBF88(0xD000000000000012, 0x8000000000B7E560), (v3 & 1) != 0))
    {
      sub_808B0(*(v1 + 56) + 32 * v2, v5);

      if (swift_dynamicCast())
      {
        return v4;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_9B8B4C()
{
  ICURLBag.subscript.getter(ICURLBagKeyMusicCommon, &v4);
  if (!v5)
  {
    sub_9BC10(&v4);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  if ((swift_dynamicCast() & 1) == 0 || !v3)
  {
    return 0;
  }

  if (!*(v3 + 16) || (v0 = sub_2EBF88(0xD00000000000001ALL, 0x8000000000B7E580), (v1 & 1) == 0))
  {

    return 0;
  }

  sub_808B0(*(v3 + 56) + 32 * v0, &v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_9B8C60()
{
  result = qword_E24D28;
  if (!qword_E24D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E24D28);
  }

  return result;
}

uint64_t sub_9B8CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9B8D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9B8D94(uint64_t a1)
{
  v2 = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_9B8E04()
{
  result = qword_E24D30;
  if (!qword_E24D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E24D30);
  }

  return result;
}

id sub_9B8E58(char a1, uint64_t a2, double a3, double a4)
{
  v30 = sub_AB3430();
  v9 = *(v30 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC11MusicJSCore23JSStorePlaybackPosition_bookmarkTimestamp) = a3;
  *(v4 + OBJC_IVAR____TtC11MusicJSCore23JSStorePlaybackPosition_bookmarkTime) = a4;
  *(v4 + OBJC_IVAR____TtC11MusicJSCore23JSStorePlaybackPosition_hasBeenPlayed) = a1;
  *(v4 + OBJC_IVAR____TtC11MusicJSCore23JSStorePlaybackPosition_userPlayCount) = a2;
  v12 = sub_97420(_swiftEmptyArrayStorage);
  sub_AB32A0();
  sub_9B921C();
  v13 = static NSDateFormatter.iso8601ExtendedDateFormatter.getter();
  isa = sub_AB3370().super.isa;
  v15 = [v13 stringFromDate:isa];

  v16 = sub_AB92A0();
  v18 = v17;

  v35 = &type metadata for String;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_9ACFC(&v33, v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v12;
  sub_9330C(v32, 0xD000000000000016, 0x8000000000B7E640, isUniquelyReferenced_nonNull_native);
  v20 = v31;
  v35 = &type metadata for Double;
  *&v33 = a4;
  sub_9ACFC(&v33, v32);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v20;
  sub_9330C(v32, 0x6B72616D6B6F6F62, 0xEC000000656D6954, v21);
  v22 = v31;
  v35 = &type metadata for Bool;
  LOBYTE(v33) = a1;
  sub_9ACFC(&v33, v32);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v22;
  sub_9330C(v32, 0x506E656542736168, 0xED0000646579616CLL, v23);
  v24 = v31;
  v35 = &type metadata for Int;
  *&v33 = a2;
  sub_9ACFC(&v33, v32);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v24;
  sub_9330C(v32, 0x79616C5072657375, 0xED0000746E756F43, v25);
  v26 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_AF4EC0;
  *(v27 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  *(v27 + 32) = v26;
  v33 = v27;
  v34 = 0;
  v35 = 0;
  v36 = 1;
  v37 = 0;
  v28 = JSObject.init(type:)(&v33);
  (*(v9 + 8))(v11, v30);
  return v28;
}

unint64_t sub_9B921C()
{
  result = qword_E24D80;
  if (!qword_E24D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E24D80);
  }

  return result;
}

void JSShelfItem.shelfSection.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*JSShelfItem.shelfSection.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore11JSShelfItem_shelfSection;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_9B93B4;
}

void sub_9B93B4(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

Swift::Void __swiftcall JSShelfItem.didSelectCloseButton()()
{
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v1 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF4EC0;
  *(v2 + 56) = type metadata accessor for JSShelfItem();
  *(v2 + 32) = v0;
  sub_60044();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = _swiftEmptyArrayStorage;
  *(v3 + 32) = 0xD00000000000001FLL;
  *(v3 + 40) = 0x8000000000B7E660;
  *(v3 + 48) = v0;
  *(v3 + 56) = v1;
  *(v3 + 64) = 0;
  v4 = v0;
  v5 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v3);
}

uint64_t type metadata accessor for JSShelfItem()
{
  result = qword_E24DB0;
  if (!qword_E24DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9B95B8()
{

  return swift_deallocObject();
}

id JSShelfItem.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  return JSGridItem.init(type:)(a1);
}

id JSShelfItem.init(type:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();

  return JSGridItem.init(type:)(a1);
}

id JSShelfItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSShelfItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSString sub_9B9744()
{
  result = sub_AB9260();
  static JSShelf.sectionsDidChangeNotification = result;
  return result;
}

uint64_t *JSShelf.sectionsDidChangeNotification.unsafeMutableAddressor()
{
  if (qword_E23F78 != -1)
  {
    swift_once();
  }

  return &static JSShelf.sectionsDidChangeNotification;
}

id static JSShelf.sectionsDidChangeNotification.getter()
{
  if (qword_E23F78 != -1)
  {
    swift_once();
  }

  v1 = static JSShelf.sectionsDidChangeNotification;

  return v1;
}

uint64_t JSShelf.sections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_9B98EC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_9B99C8(unint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (!(a1 >> 62))
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_3;
    }
  }

  result = sub_ABB060();
  v5 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_9BAECC(v6, a1, type metadata accessor for JSShelfSection, 0x53666C656853534ALL, 0xEE006E6F69746365);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      *&v7[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_delegate + 8] = &protocol witness table for JSShelf;
      swift_unknownObjectWeakAssign();
    }

    while (v5 != v6);
  }

  __break(1u);
  return result;
}

uint64_t JSShelf.$sections.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24DC8);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t sub_9B9BEC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24DC8);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t sub_9B9C64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24E30);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24DC8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

void *JSShelf.contentArtwork.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_contentArtwork;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *JSShelf.containerDetailLink.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_containerDetailLink;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t JSShelf.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[0] = a1;
  v23[1] = a2;
  sub_F46A0(a3, v24);
  if (!v24[3])
  {

    goto LABEL_15;
  }

  sub_F46A0(v24, v22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E246C0);
  if (!swift_dynamicCast())
  {
LABEL_17:
    if (swift_dynamicCast())
    {
      if (a1 == 0x7469747265707573 && a2 == 0xEA0000000000656CLL || (sub_ABB3C0() & 1) != 0)
      {
        v13 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_supertitle;
LABEL_22:
        v14 = &v3[v13];
        swift_beginAccess();
        *v14 = v20;
        *(v14 + 1) = v21;

LABEL_48:
        __swift_destroy_boxed_opaque_existential_0(v22);
        sub_12E1C(v24, &unk_DE8E40);
      }

      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v13 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_title;
        goto LABEL_22;
      }

      if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v13 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_subtitle;
        goto LABEL_22;
      }

      if (a1 == 0xD000000000000014 && 0x8000000000B534C0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v13 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_accessoryButtonTitle;
        goto LABEL_22;
      }
    }

    type metadata accessor for JSArtwork();
    if (swift_dynamicCast())
    {
      v15 = v20;
      if (a1 == 0x41746E65746E6F63 && a2 == 0xEE006B726F777472 || (sub_ABB3C0() & 1) != 0)
      {
        v16 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_contentArtwork;
LABEL_47:
        swift_beginAccess();
        v17 = *&v3[v16];
        *&v3[v16] = v15;

        goto LABEL_48;
      }
    }

    type metadata accessor for JSContainerDetailLink();
    if (swift_dynamicCast())
    {
      v15 = v20;
      if (a1 == 0xD000000000000013 && 0x8000000000B7E6C0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v16 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_containerDetailLink;
        goto LABEL_47;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v22);
LABEL_15:
    JSViewModel.updateProperty(_:value:)(a1, a2, a3);
    return sub_12E1C(v23, &unk_E27200);
  }

  if ((a1 != 0x736E6F6974636573 || a2 != 0xE800000000000000) && (sub_ABB3C0() & 1) == 0)
  {

    goto LABEL_17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_9A155C(v19);
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v3;
  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v9 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_52:

    v18 = [objc_opt_self() defaultCenter];
    if (qword_E23F78 != -1)
    {
      swift_once();
    }

    [v18 postNotificationName:static JSShelf.sectionsDidChangeNotification object:v7];

    __swift_destroy_boxed_opaque_existential_0(v22);
    sub_12E1C(v24, &unk_DE8E40);
  }

  result = sub_ABB060();
  v9 = result;
  if (!result)
  {
    goto LABEL_52;
  }

LABEL_8:
  if (v9 >= 1)
  {
    v10 = 0;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v11 = sub_9BAECC(v10, _swiftEmptyArrayStorage, type metadata accessor for JSShelfSection, 0x53666C656853534ALL, 0xEE006E6F69746365);
      }

      else
      {
        v11 = _swiftEmptyArrayStorage[v10 + 4];
      }

      v12 = v11;
      ++v10;
      *&v11[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_delegate + 8] = &protocol witness table for JSShelf;
      swift_unknownObjectWeakAssign();
    }

    while (v9 != v10);
    goto LABEL_52;
  }

  __break(1u);
  return result;
}

void JSShelf.shelfSectionDidChange(_:)()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_E23F78 != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 postNotificationName:static JSShelf.sectionsDidChangeNotification object:v0];
}

id JSShelf.init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24DC8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - v5;
  v7 = OBJC_IVAR____TtC11MusicJSCore7JSShelf__sections;
  v15[1] = &_swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E246C0);
  sub_AB54D0();
  (*(v4 + 32))(v1 + v7, v6, v3);
  v8 = (v1 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_supertitle);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_title);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v1 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_subtitle);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v1 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_accessoryButtonTitle);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_contentArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_containerDetailLink) = 0;
  v12 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v13 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v13 = 0;
  v13[1] = 0;
  return JSObject.init(type:)(a1);
}

void sub_9BA798()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore7JSShelf__sections;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24DC8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_containerDetailLink);
}

uint64_t sub_9BA964(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for JSApplicationMessageTarget();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for JSApplicationMessageTarget();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B7E7E0;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_9BAB44(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for JSDeferrableRequest();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for JSDeferrableRequest();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B7E730;
  v6._countAndFlagsBits = 0xD000000000000013;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_9BACF8(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for JSContainerDetailLink();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for JSContainerDetailLink();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B7E750;
  v6._countAndFlagsBits = 0xD000000000000015;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_9BAECC(unint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  if (a2 >> 62)
  {
    v8 = sub_ABB080();
    a3(0);
    if (swift_dynamicCastClass())
    {
      return v8;
    }

LABEL_10:
    sub_ABAD90(85);
    v9._countAndFlagsBits = 0xD000000000000046;
    v9._object = 0x8000000000B60250;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  a3(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v8;
  }

  sub_ABAD90(82);
  v9._object = 0x8000000000B60200;
  v9._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  sub_AB94A0(v9);
  v11._countAndFlagsBits = a4;
  v11._object = a5;
  sub_AB94A0(v11);
  v12._countAndFlagsBits = 0x756F662074756220;
  v12._object = 0xEB0000000020646ELL;
  sub_AB94A0(v12);
  swift_getObjectType();
  v13._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v13);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_9BB0B8(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for JSViewModelRequestCoordinator.OperationGroup();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for JSViewModelRequestCoordinator.OperationGroup();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B7E770;
  v6._countAndFlagsBits = 0xD000000000000035;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t (*sub_9BB294(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_9BAECC(a2, a3, type metadata accessor for JSSocialProfile, 0x6C6169636F53534ALL, 0xEF656C69666F7250);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_9BB348(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_360924(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

void (*sub_9BB3C8(void (*result)(id *a1), unint64_t a2, unint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_9BAECC(a2, a3, type metadata accessor for JSGridItem, 0x744964697247534ALL, 0xEA00000000006D65);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1CD1D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_9BB474(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_9BAECC(a2, a3, type metadata accessor for JSShelfItem, 0x49666C656853534ALL, 0xEB000000006D6574);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_9BB524(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_9BAECC(a2, a3, type metadata accessor for JSFlowcaseItem, 0x6163776F6C46534ALL, 0xEE006D6574496573);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_9BB5D8(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_3612B8(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_9BB658(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_9BAECC(a2, a3, type metadata accessor for JSGridSection, 0x655364697247534ALL, 0xED00006E6F697463);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_9BB70C(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_9BAECC(a2, a3, type metadata accessor for JSMenuSection, 0x6553756E654D534ALL, 0xED00006E6F697463);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_9BB7C0(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_9BAECC(a2, a3, type metadata accessor for JSBrickItem, 0x496B63697242534ALL, 0xEB000000006D6574);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_9BB870(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_9BAECC(a2, a3, type metadata accessor for JSShelfSection, 0x53666C656853534ALL, 0xEE006E6F69746365);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for JSShelf()
{
  result = qword_E24DF8;
  if (!qword_E24DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9BB980()
{
  sub_9BBA2C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_9BBA2C()
{
  if (!qword_E24E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E246C0);
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E24E08);
    }
  }
}

uint64_t JSLibraryCollectionComponentController.init(viewModel:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = 0x646F4D776569765FLL;
  *(inited + 40) = 0xEA00000000006C65;
  *(inited + 48) = a1;
  v4 = a1;
  v5 = sub_99F19C(inited);
  swift_setDeallocating();
  sub_9BBC5C(inited + 32);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore38JSLibraryCollectionComponentController_LibraryCollectionViewModel) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF4EC0;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24E60);
  *(v6 + 32) = v5;
  v8[0] = v6;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0xD000000000000024;
  v8[4] = 0x8000000000B7E800;
  v9 = 0;
  return sub_A874E4(v8, v1);
}

uint64_t sub_9BBC5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24E58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for JSLibraryCollectionComponentController()
{
  result = qword_E24E90;
  if (!qword_E24E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JSBarButtonItem.title.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_9BBDE4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_9BBE68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return JSBarButtonItem.title.setter(v1, v2);
}

uint64_t JSBarButtonItem.title.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;
  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v9 == a1 && v10 == a2)
  {
  }

  else
  {
    v7 = sub_ABB3C0();

    if ((v7 & 1) == 0)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v8 = type metadata accessor for JSHeaderItem();
        JSHeaderItem.artworkDidChange(_:)(v5, v8, &off_D55BA8);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void (*JSBarButtonItem.title.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_9BC124;
}

void sub_9BC124(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if (a2)
  {

    JSBarButtonItem.title.setter(v3, v4);
  }

  else
  {
    JSBarButtonItem.title.setter(**a1, v4);
  }

  free(v2);
}

uint64_t JSBarButtonItem.$title.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSBarButtonItem.$title.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem__title;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD158;
}

uint64_t sub_9BC4AC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

void sub_9BC52C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_9BD210(v1);
}

uint64_t JSBarButtonItem.menu.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

void sub_9BC5F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_9BD210(v1);
}

uint64_t sub_9BC644()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24EC0);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t sub_9BC6BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F08);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24EC0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t JSBarButtonItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = a1;
  v17[1] = a2;
  sub_F46A0(a3, v18);
  if (!v18[3])
  {

    return sub_12E1C(v17, &unk_E27200);
  }

  sub_F46A0(v18, v16);

  if (!swift_dynamicCast())
  {
LABEL_9:
    type metadata accessor for JSMenu();
    if (swift_dynamicCast())
    {
      if (a1 == 1970169197 && a2 == 0xE400000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v6 = v14;
        sub_AB5510();

        swift_getKeyPath();
        swift_getKeyPath();
        v7 = v6;
        v8 = v3;
        sub_AB5520();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_AB5510();

        if (v13)
        {
          if (v14)
          {
            v9 = v13;
            v10 = sub_ABA790();

            if (v10)
            {

              v7 = v9;
LABEL_27:

              goto LABEL_28;
            }
          }
        }

        else
        {
          if (!v14)
          {

            goto LABEL_27;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = type metadata accessor for JSHeaderItem();
          JSHeaderItem.artworkDidChange(_:)(v8, v11, &off_D55BA8);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v7 = v13;
        goto LABEL_27;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v16);
    return sub_12E1C(v17, &unk_E27200);
  }

  if ((a1 != 0x656C746974 || a2 != 0xE500000000000000) && (sub_ABB3C0() & 1) == 0)
  {

    goto LABEL_9;
  }

  JSBarButtonItem.title.setter(v14, v15);
LABEL_28:
  __swift_destroy_boxed_opaque_existential_0(v16);
  sub_12E1C(v18, &unk_DE8E40);
}

id JSBarButtonItem.init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24EC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - v9;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem_barButtonItemDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem__title;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_AB54D0();
  (*(v8 + 32))(v1 + v11, v10, v7);
  v12 = OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem__menu;
  v14[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24EB0);
  sub_AB54D0();
  (*(v4 + 32))(v1 + v12, v6, v3);
  return JSObject.init(type:)(a1);
}

uint64_t sub_9BCDE8()
{
  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem_barButtonItemDelegate);
  v1 = OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem__title;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem__menu;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24EC0);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

id JSBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBarButtonItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSBarButtonItem()
{
  result = qword_E24EF0;
  if (!qword_E24EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9BD034@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSBarButtonItem();
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

void sub_9BD084()
{
  sub_9BD15C();
  if (v0 <= 0x3F)
  {
    sub_9BD1AC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_9BD15C()
{
  if (!qword_DFE858)
  {
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_DFE858);
    }
  }
}

void sub_9BD1AC()
{
  if (!qword_E24F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E24EB0);
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E24F00);
    }
  }
}

void sub_9BD210(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v3 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = a1;
  v4 = a1;
  v5 = v1;
  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (!v3)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v10 || (type metadata accessor for JSMenu(), v6 = v3, v7 = sub_ABA790(), v6, v10, (v7 & 1) == 0))
  {
LABEL_7:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = type metadata accessor for JSHeaderItem();
      JSHeaderItem.artworkDidChange(_:)(v5, v8, &off_D55BA8);
      swift_unknownObjectRelease();
    }

    v6 = v3;
  }
}

uint64_t JSSettingsViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSSettingsViewModel.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_425B94;
}

uint64_t JSSettingsViewModel.sectionsForAuthenticatedState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_9BD5D4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_9BD658(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t JSSettingsViewModel.sectionsForAuthenticatedState.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

uint64_t (*JSSettingsViewModel.sectionsForAuthenticatedState.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSSettingsViewModel.$sectionsForAuthenticatedState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F30);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F28);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSettingsViewModel.$sectionsForAuthenticatedState.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F30);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel__sectionsForAuthenticatedState;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F28);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t JSSettingsViewModel.unauthenticatedSections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

double sub_9BDB6C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_9BDBF0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_9BF038(v2);
  return sub_AB5520();
}

uint64_t JSSettingsViewModel.unauthenticatedSections.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

void (*JSSettingsViewModel.unauthenticatedSections.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BCE8C;
}

uint64_t JSSettingsViewModel.$unauthenticatedSections.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F50);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F48);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSettingsViewModel.$unauthenticatedSections.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F50);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel__unauthenticatedSections;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F48);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD154;
}

Swift::Void __swiftcall JSSettingsViewModel.didSelectDoneButton()()
{
  ObjectType = swift_getObjectType();
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v2 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_AF4EC0;
  *(v3 + 56) = ObjectType;
  *(v3 + 32) = v0;
  sub_60044();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = _swiftEmptyArrayStorage;
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = 0x8000000000B7E940;
  *(v4 + 48) = v0;
  *(v4 + 56) = v2;
  *(v4 + 64) = 0;
  v5 = v0;
  v6 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BE1A0, v4);
}

uint64_t JSSettingsViewModel.didRemoveItem(item:)(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v4 = sub_9BE364(v12, a1);

  if (v4)
  {
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v6 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_AF85F0;
    *(v7 + 56) = ObjectType;
    *(v7 + 32) = v1;
    *(v7 + 88) = type metadata accessor for JSSettingsItem();
    *(v7 + 64) = a1;
    sub_60044();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = _swiftEmptyArrayStorage;
    *(v8 + 32) = 0xD000000000000015;
    *(v8 + 40) = 0x8000000000B7E960;
    *(v8 + 48) = v1;
    *(v8 + 56) = v6;
    *(v8 + 64) = 0;
    v9 = v1;
    v10 = a1;
    v11 = v6;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v8);
  }

  return result;
}

uint64_t sub_9BE364(unint64_t a1, uint64_t a2)
{
  if (!(a1 >> 62))
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_17:
  v3 = sub_ABB060();
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = sub_3618EC(i, a1);
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_16;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v8 = sub_A822A8(a2, v21[0]);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      break;
    }

    if (v7 == v3)
    {
      return 0;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v11 = sub_AB5500();

  v11(v21, 0);

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v12 = static JSBridge.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v13 = v21[0];
  v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24FA8);
  v21[0] = v13;
  sub_60044();
  sub_F46A0(v21, v20);
  v14 = swift_allocObject();
  *(v14 + 16) = 1;
  v15 = v20[1];
  *(v14 + 24) = v20[0];
  *(v14 + 40) = v15;
  *(v14 + 56) = 0x736D657469;
  *(v14 + 64) = 0xE500000000000000;
  *(v14 + 72) = v6;
  *(v14 + 80) = v12;
  *(v14 + 88) = 0;
  v16 = v6;
  v17 = v12;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF020, v14);

  sub_12E1C(v21, &unk_DE8E40);
  return 1;
}

uint64_t objectdestroyTm_26()
{

  return swift_deallocObject();
}

uint64_t JSSettingsViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[0] = a1;
  v23[1] = a2;
  sub_F46A0(a3, v24);
  if (v24[3])
  {
    sub_F46A0(v24, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F18);
    if (swift_dynamicCast())
    {
      if (a1 == 0xD00000000000001DLL && 0x8000000000B7E9A0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        v7 = v3;
        sub_AB5520();
        v8 = &v7[OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = *(v8 + 1);
          ObjectType = swift_getObjectType();
          (*(v9 + 8))(v7, v21, ObjectType, v9);
          swift_unknownObjectRelease();
        }

LABEL_19:
        __swift_destroy_boxed_opaque_existential_0(v22);
        sub_12E1C(v24, &unk_DE8E40);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F58);
    if (swift_dynamicCast())
    {
      if (a1 == 0xD00000000000001FLL && 0x8000000000B7E980 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v11 = sub_9EBC10(v21);
        if (v11)
        {
          v13 = v11;
          v14 = v12;
          swift_getKeyPath();
          swift_getKeyPath();
          v15 = v3;
          v16 = v13;

          sub_AB5520();
          v17 = &v15[OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel_delegate];
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v18 = *(v17 + 1);
            v19 = swift_getObjectType();
            (*(v18 + 16))(v15, v16, v14, v19, v18);
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_19;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v23, &unk_E27200);
}

id JSSettingsViewModel.init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F48);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F28);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel__sectionsForAuthenticatedState;
  v16[0] = &_swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F18);
  sub_AB54D0();
  (*(v8 + 32))(v1 + v11, v10, v7);
  v12 = OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel__unauthenticatedSections;
  v16[0] = 0;
  v16[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F38);
  sub_AB54D0();
  (*(v4 + 32))(v1 + v12, v6, v3);
  v13 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v14 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v14 = 0;
  v14[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_9BECC4()
{
  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel_delegate);
  v1 = OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel__sectionsForAuthenticatedState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F28);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel__unauthenticatedSections;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F48);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t type metadata accessor for JSSettingsViewModel()
{
  result = qword_E24F88;
  if (!qword_E24F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9BEEBC()
{
  sub_3641C(319, &qword_E24F98, &qword_E24F18);
  if (v0 <= 0x3F)
  {
    sub_3641C(319, &qword_E24FA0, &qword_E24F38);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_9BEFC8()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  }

  return swift_deallocObject();
}

void *sub_9BF038(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

uint64_t sub_9BF080(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_items;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_9BF130(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_selectedItem;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (a1)
  {
    if (v5)
    {
      type metadata accessor for JSMultiChoiceItem();
      v6 = v5;
      v7 = a1;
      v8 = sub_ABA790();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!v5)
  {
    return;
  }

  v9 = &v2[OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v2, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  if ((v2[OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_isUpdatingFromJS] & 1) == 0)
  {
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v12 = static JSBridge.shared;
    v13 = *&v2[v4];
    if (v13)
    {
      v14 = type metadata accessor for JSMultiChoiceItem();
    }

    else
    {
      v14 = 0;
      v21[1] = 0;
      v21[2] = 0;
    }

    v21[0] = v13;
    v21[3] = v14;
    sub_60044();
    sub_F46A0(v21, v20);
    v15 = swift_allocObject();
    *(v15 + 16) = 1;
    v16 = v20[1];
    *(v15 + 24) = v20[0];
    *(v15 + 40) = v16;
    strcpy((v15 + 56), "selectedItem");
    *(v15 + 69) = 0;
    *(v15 + 70) = -5120;
    *(v15 + 72) = v2;
    *(v15 + 80) = v12;
    *(v15 + 88) = 0;
    v17 = v13;
    v18 = v2;
    v19 = v12;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF020, v15);

    sub_12E1C(v21, &unk_DE8E40);
  }
}

void *JSMultiChoiceViewModel.selectedItem.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_selectedItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void JSMultiChoiceViewModel.selectedItem.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_selectedItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_9BF130(v4);
}

void (*JSMultiChoiceViewModel.selectedItem.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_selectedItem;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_9BF4AC;
}

void sub_9BF4AC(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    sub_9BF130(v8);

    v8 = *v5;
  }

  else
  {
    sub_9BF130(v8);
  }

  free(v3);
}

uint64_t JSMultiChoiceViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSMultiChoiceViewModel.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_425B94;
}

uint64_t JSMultiChoiceViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_isUpdatingFromJS;
  v8 = *(v3 + OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_isUpdatingFromJS);
  *(v3 + OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_isUpdatingFromJS) = 1;
  v19[0] = a1;
  v19[1] = a2;
  sub_F46A0(a3, v20);
  if (v20[3])
  {
    sub_F46A0(v20, v17);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24FD0);
    if (swift_dynamicCast())
    {
      if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v9 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_items;
        swift_beginAccess();
        *(v3 + v9) = v16;

        __swift_destroy_boxed_opaque_existential_0(v17);
        goto LABEL_19;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
  }

  if ((a1 != 0x64657463656C6573 || a2 != 0xEC0000006D657449) && (sub_ABB3C0() & 1) == 0)
  {
    JSViewModel.updateProperty(_:value:)(a1, a2, a3);
    result = sub_12E1C(v19, &unk_E27200);
    goto LABEL_20;
  }

  sub_F46A0(a3, v17);
  if (v18)
  {
    type metadata accessor for JSMultiChoiceItem();
    if (swift_dynamicCast())
    {
      v10 = v15;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_12E1C(v17, &unk_DE8E40);
    v10 = 0;
  }

  v11 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_selectedItem;
  swift_beginAccess();
  v12 = *(v3 + v11);
  *(v3 + v11) = v10;
  v13 = v10;
  sub_9BF130(v12);

LABEL_19:
  sub_12E1C(v20, &unk_DE8E40);

LABEL_20:
  *(v3 + v7) = v8;
  return result;
}

id JSMultiChoiceViewModel.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_items] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_selectedItem] = 0;
  *&v3[OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_isUpdatingFromJS] = 0;
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_B10830;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v5 = 0;
  v5[1] = 0;
  return JSObject.init(type:)(a1);
}

id JSMultiChoiceViewModel.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_items) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_selectedItem) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_isUpdatingFromJS) = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v4 = 0;
  v4[1] = 0;

  return JSObject.init(type:)(a1);
}

uint64_t sub_9BFAA0()
{

  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_delegate;

  return sub_176DC(v1);
}

id JSMultiChoiceViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMultiChoiceViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_9BFB48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_items;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_9BFC04()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t JSAlertAction.AlertActionStyle.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x746C7561666564;
  }

  if (a1 == 1)
  {
    return 0x6C65636E6163;
  }

  return 0x7463757274736564;
}

uint64_t sub_9BFCBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6C65636E6163;
  if (v2 != 1)
  {
    v4 = 0x7463757274736564;
    v3 = 0xEB00000000657669;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6C65636E6163;
  if (*a2 != 1)
  {
    v8 = 0x7463757274736564;
    v7 = 0xEB00000000657669;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_ABB3C0();
  }

  return v11 & 1;
}

Swift::Int sub_9BFDC8()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9BFE70()
{
  sub_AB93F0();
}

Swift::Int sub_9BFF04()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9BFFA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore13JSAlertActionC05AlertD5StyleO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_9BFFD8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6C65636E6163;
  if (v2 != 1)
  {
    v5 = 0x7463757274736564;
    v4 = 0xEB00000000657669;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t JSAlertAction.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSAlertAction.alertActionStyle.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_alertActionStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSAlertAction.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  sub_F46A0(a3, v14);
  if (v14[3])
  {
    sub_F46A0(v14, v12);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = (v3 + OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_title);
        swift_beginAccess();
        *v6 = v11;

LABEL_7:
        __swift_destroy_boxed_opaque_existential_0(v12);
        sub_12E1C(v14, &unk_DE8E40);
      }

      if (a1 == 0xD000000000000010 && 0x8000000000B7EA80 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v8._rawValue = &off_D4E560;
        v9 = sub_ABB140(v8, v11);

        if (v9 <= 2)
        {
          v10 = OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_alertActionStyle;
          swift_beginAccess();
          *(v3 + v10) = v9;
        }

        goto LABEL_7;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
  }

  return sub_12E1C(v13, &unk_E27200);
}

id JSAlertAction.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_title];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_alertActionStyle] = 0;
  return JSObject.init(type:)(a1);
}

id JSAlertAction.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_alertActionStyle) = 0;
  return JSObject.init(type:)(a1);
}

uint64_t _s11MusicJSCore13JSAlertActionC05AlertD5StyleO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4E560;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_9C03D8()
{
  result = qword_E25010;
  if (!qword_E25010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E25010);
  }

  return result;
}

uint64_t JSCookieStorage.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin();
  v2 = v20 - v1 + 64;
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  v7 = OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_indexedCookies;
  *(v0 + v7) = sub_99EA14(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_invalidationTimers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_commonCookiesChangedNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_isUpdatingCookies) = 0;
  sub_AB3180();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    (*(v4 + 16))(v0 + OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_defaultURL, v6, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
    inited = swift_initStackObject();
    v19 = xmmword_AF4EC0;
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = 0x55746C7561666564;
    v10 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEA00000000004C52;
    *(inited + 48) = 0xD000000000000016;
    *(inited + 56) = 0x8000000000B7EAD0;
    v11 = sub_97420(inited);
    swift_setDeallocating();
    sub_12E1C(v10, &qword_DF06F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v12 = swift_allocObject();
    *(v12 + 16) = v19;
    *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
    *(v12 + 32) = v11;
    v20[0] = v12;
    v20[1] = 1;
    memset(&v20[2], 0, 24);
    v21 = 0;
    v13 = JSObject.init(type:)(v20);
    sub_9C3250(&unk_D520C0, sub_9C3740, &block_descriptor_43_13);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = objc_opt_self();
    v16 = NSHTTPCookieManagerCookiesChangedNotification;
    v17 = [v15 sharedHTTPCookieStorage];
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v18 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v16, v17, 1, 1, sub_9C2E60, v14);
    (*(v4 + 8))(v6, v3);
    *&v13[OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_commonCookiesChangedNotificationObserver] = v18;

    return v13;
  }

  return result;
}

void sub_9C0880()
{
  v0 = sub_AB7C10();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB7C50();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C20();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_isUpdatingCookies) == 1)
    {
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_isUpdatingCookies) = 1;
      v19 = v5;
      v13 = Strong;
      sub_13C80(0, &qword_DE8ED0);
      (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.background(_:), v8);
      v18 = sub_ABA190();
      (*(v9 + 8))(v11, v8);
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      aBlock[4] = sub_9C3740;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_36_7;
      v15 = _Block_copy(aBlock);
      v16 = v13;
      sub_AB7C30();
      v20 = _swiftEmptyArrayStorage;
      sub_8FFF0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_D1010();
      sub_ABABB0();
      v17 = v18;
      sub_ABA160();
      _Block_release(v15);

      (*(v1 + 8))(v3, v0);
      (*(v19 + 8))(v7, v4);
    }
  }
}

Swift::Void __swiftcall JSCookieStorage.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v5 = sub_AB7C10();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C50();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB7C20();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (countAndFlagsBits == 0x556D726F66726570 && object == 0xED00006574616470 || (sub_ABB3C0() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_808B0(arguments._rawValue + 32, aBlock);
      v15 = sub_9C2E68(aBlock);
      if (v16)
      {
        v19 = v16;
        v29 = v18;
        v30 = v17;
        v20 = v15;
        sub_13C80(0, &qword_DE8ED0);
        (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.userInitiated(_:), v11);
        v21 = v35;
        v22 = sub_ABA190();
        (*(v12 + 8))(v14, v11);
        v23 = swift_allocObject();
        *(v23 + 16) = v20;
        *(v23 + 24) = v19;
        v24 = v29;
        *(v23 + 32) = v30 & 1;
        *(v23 + 40) = v24;
        *(v23 + 48) = v21;
        aBlock[4] = sub_9C3120;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B5EB4;
        aBlock[3] = &block_descriptor_257;
        v25 = _Block_copy(aBlock);

        v26 = v24;
        v27 = v21;
        sub_AB7C30();
        v36 = _swiftEmptyArrayStorage;
        sub_8FFF0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
        sub_D1010();
        v28 = v34;
        sub_ABABB0();
        sub_ABA160();
        _Block_release(v25);

        (*(v33 + 8))(v7, v28);
        (*(v31 + 8))(v10, v32);
      }
    }
  }
}

uint64_t sub_9C102C(uint64_t a1, uint64_t a2, int a3, char *a4, void *a5)
{
  v93 = a5;
  v89 = a2;
  v87 = a1;
  v7 = sub_AB7C10();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v90 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB7C50();
  v91 = *(v10 - 8);
  v92 = v10;
  __chkstk_darwin();
  v86 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a3;
  if (a3)
  {
    v12 = &a4[OBJC_IVAR____TtC11MusicJSCore8JSCookie_name];
    swift_beginAccess();
    v13 = *(v12 + 1);
    if (v13)
    {
      v14 = *v12;
      v15 = &a4[OBJC_IVAR____TtC11MusicJSCore8JSCookie_domain];
      swift_beginAccess();
      v16 = v15[1];
      if (v16)
      {
        v85 = *v15;
        v17 = &a4[OBJC_IVAR____TtC11MusicJSCore8JSCookie_path];
        swift_beginAccess();
        v18 = v17;
        v19 = *(v17 + 1);
        if (v19)
        {
          v81 = v15;
          v82 = v18;
          v83 = a4;
          v20 = *v18;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
          inited = swift_initStackObject();
          v79 = v8;
          v80 = v7;
          v22 = inited;
          *(inited + 16) = xmmword_AF8820;
          *(inited + 32) = sub_AB92A0();
          v22[9] = &type metadata for String;
          v22[5] = v23;
          v22[6] = v14;
          v22[7] = v13;
          v22[10] = sub_AB92A0();
          v22[11] = v24;
          v22[15] = &type metadata for String;
          v22[12] = v85;
          v22[13] = v16;
          v22[16] = sub_AB92A0();
          v22[17] = v25;
          v22[21] = &type metadata for String;
          v22[18] = v20;
          v22[19] = v19;

          v26 = sub_97420(v22);
          v8 = v79;
          v7 = v80;
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
          swift_arrayDestroy();
          v27 = [objc_opt_self() sharedCookieStore];
          sub_3E8814(v26);

          isa = sub_AB8FD0().super.isa;

          [v27 removeCookiesWithProperties:isa];

          v29 = objc_opt_self();
          v30 = [v29 sharedHTTPCookieStorage];
          v31 = [v30 cookies];

          if (v31)
          {
            sub_13C80(0, &qword_E24E10);
            v32 = sub_AB9760();

            v78 = v29;
            if (v32 >> 62)
            {
              goto LABEL_42;
            }

            for (i = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
            {
              v34 = 0;
              v84 = v32 & 0xFFFFFFFFFFFFFF8;
              v85 = v32 & 0xC000000000000001;
              while (1)
              {
                if (v85)
                {
                  v35 = sub_9BB07C(v34, v32);
                }

                else
                {
                  if (v34 >= *(v84 + 16))
                  {
                    goto LABEL_41;
                  }

                  v35 = *(v32 + 8 * v34 + 32);
                }

                v36 = v35;
                v37 = v34 + 1;
                if (__OFADD__(v34, 1))
                {
                  break;
                }

                v38 = [v35 name];
                v39 = sub_AB92A0();
                v41 = v40;

                v42 = *(v12 + 1);
                if (v42)
                {
                  if (v39 == *v12 && v42 == v41)
                  {
                  }

                  else
                  {
                    v44 = sub_ABB3C0();

                    if ((v44 & 1) == 0)
                    {
                      goto LABEL_32;
                    }
                  }

                  v45 = [v36 path];
                  v46 = sub_AB92A0();
                  v48 = v47;

                  v49 = *(v82 + 1);
                  if (v49)
                  {
                    if (v46 == *v82 && v49 == v48)
                    {
                    }

                    else
                    {
                      v50 = sub_ABB3C0();

                      if ((v50 & 1) == 0)
                      {
                        goto LABEL_32;
                      }
                    }

                    v51 = [v36 domain];
                    v52 = sub_AB92A0();
                    v54 = v53;

                    v55 = v81[1];
                    if (v55)
                    {
                      if (v52 == *v81 && v55 == v54)
                      {

LABEL_39:
                        v76 = v78;

                        v77 = [v76 sharedHTTPCookieStorage];
                        [v77 deleteCookie:v36];

                        goto LABEL_44;
                      }

                      v56 = sub_ABB3C0();

                      if (v56)
                      {
                        goto LABEL_39;
                      }

LABEL_32:

                      goto LABEL_10;
                    }
                  }
                }

LABEL_10:
                ++v34;
                if (v37 == i)
                {
                  goto LABEL_43;
                }
              }

              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
              ;
            }

LABEL_43:

LABEL_44:
            v8 = v79;
            v7 = v80;
          }

          goto LABEL_36;
        }
      }
    }
  }

  else
  {
    sub_13C80(0, &qword_E24E10);
    v57 = NSHTTPCookie.init(scriptingCookie:)(a4);
    if (v57)
    {
      v58 = v57;
      v83 = a4;
      v59 = [objc_opt_self() sharedCookieStore];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_AF82B0;
      *(v60 + 32) = v58;
      v61 = v58;
      v62 = sub_AB9740().super.isa;

      sub_AB30F0(OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_defaultURL);
      v64 = v63;
      v65 = [objc_allocWithZone(NSNumber) initWithInteger:-1];
      [v59 saveCookies:v62 forURL:v64 userIdentifier:v65];

LABEL_36:
      sub_9C3250(&unk_D520C0, sub_9C3740, &block_descriptor_43_13);
      a4 = v83;
    }
  }

  sub_13C80(0, &qword_DE8ED0);
  v66 = sub_ABA150();
  v67 = swift_allocObject();
  v68 = v93;
  v69 = v87;
  *(v67 + 16) = v93;
  *(v67 + 24) = v69;
  *(v67 + 32) = v89;
  *(v67 + 40) = v88 & 1;
  *(v67 + 48) = a4;
  aBlock[4] = sub_9C3650;
  aBlock[5] = v67;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_25_5;
  v70 = _Block_copy(aBlock);
  v71 = v68;

  v72 = a4;

  v73 = v86;
  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_8FFF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_D1010();
  v74 = v90;
  sub_ABABB0();
  sub_ABA160();
  _Block_release(v70);

  (*(v8 + 8))(v74, v7);
  return (*(v91 + 8))(v73, v92);
}

uint64_t sub_9C1944(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v6 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF85F0;
  v8 = type metadata accessor for JSCookieStorage();
  *(v7 + 32) = a1;
  *(v7 + 88) = &type metadata for String;
  *(v7 + 56) = v8;
  *(v7 + 64) = a2;
  *(v7 + 72) = a3;
  sub_13C80(0, &qword_DE8ED0);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = _swiftEmptyArrayStorage;
  *(v9 + 32) = 0xD000000000000018;
  *(v9 + 40) = 0x8000000000B7EBF0;
  *(v9 + 48) = a1;
  *(v9 + 56) = v6;
  *(v9 + 64) = 0;
  v10 = a1;

  v11 = v6;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v9);
}

uint64_t sub_9C1B44(char *a1)
{
  v118 = a1;
  v2 = sub_AB7C10();
  v115 = *(v2 - 8);
  __chkstk_darwin();
  v113 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_AB7C50();
  v112 = *(v114 - 8);
  __chkstk_darwin();
  v111 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin();
  v119 = &v102 - v5;
  v120 = sub_AB3430();
  v117 = *(v120 - 8);
  __chkstk_darwin();
  v108 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v110 = &v102 - v7;
  __chkstk_darwin();
  v109 = &v102 - v8;
  v9 = [objc_opt_self() sharedCookieStore];
  sub_AB30F0(OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_defaultURL);
  v11 = v10;
  v12 = [v9 getCookiesForURL:v10 userIdentifier:0];

  if (v12)
  {
    sub_13C80(0, &qword_E24E10);
    v13 = sub_AB9760();
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v14 = sub_99EA14(_swiftEmptyArrayStorage);
  if (v13 >> 62)
  {
    goto LABEL_22;
  }

  v15 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
  v116 = v2;
  if (v15)
  {
    while (v15 >= 1)
    {
      v2 = 0;
      v122 = v15;
      v123 = v13 & 0xC000000000000001;
      v121 = v13;
      while (1)
      {
        v16 = v123 ? sub_9BB07C(v2, v13) : *(v13 + 8 * v2 + 32);
        v17 = v16;
        v18 = [v16 name];
        v19 = sub_AB92A0();
        v21 = v20;

        v22 = v17;
        v1 = _s11MusicJSCore8JSCookieC12nativeCookieACSo12NSHTTPCookieC_tcfC_0(v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&aBlock = v14;
        v13 = v14;
        v25 = sub_2EBF88(v19, v21);
        v26 = *(v14 + 16);
        v27 = (v24 & 1) == 0;
        v28 = v26 + v27;
        if (__OFADD__(v26, v27))
        {
          break;
        }

        v29 = v24;
        if (*(v14 + 24) >= v28)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_A9BB4C();
          }
        }

        else
        {
          sub_A9A33C(v28, isUniquelyReferenced_nonNull_native);
          v30 = sub_2EBF88(v19, v21);
          if ((v29 & 1) != (v31 & 1))
          {
            goto LABEL_78;
          }

          v25 = v30;
        }

        v32 = v122;
        v14 = aBlock;
        if (v29)
        {
          v33 = *(aBlock + 56);
          v34 = *(v33 + 8 * v25);
          *(v33 + 8 * v25) = v1;

          v22 = v34;
        }

        else
        {
          sub_A9C160(v25, v19, v21, v1, aBlock);
        }

        v13 = v121;
        ++v2;

        if (v32 == v2)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_22:
      v15 = sub_ABB060();
      v116 = v2;
      if (!v15)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_76;
  }

LABEL_23:

  v121 = OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_indexedCookies;
  v35 = *&v118[OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_indexedCookies];
  v36 = v35 + 64;
  v37 = 1 << *(v35 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v35 + 64);
  v40 = (v37 + 63) >> 6;

  v123 = v35;

  v41 = 0;
  v42 = v14;
  if (!v39)
  {
    while (1)
    {
LABEL_27:
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v43 >= v40)
      {
        break;
      }

      v39 = *(v36 + 8 * v43);
      ++v41;
      if (v39)
      {
        goto LABEL_30;
      }
    }

    if (*(v42 + 16))
    {
      goto LABEL_47;
    }
  }

  while (1)
  {
    v43 = v41;
LABEL_30:
    if (!*(v42 + 16))
    {
      break;
    }

    v44 = __clz(__rbit64(v39)) | (v43 << 6);
    v45 = (*(v123 + 48) + 16 * v44);
    v46 = *v45;
    v1 = v45[1];
    v47 = *(*(v123 + 56) + 8 * v44);

    v48 = v47;
    v49 = sub_2EBF88(v46, v1);
    if ((v50 & 1) == 0)
    {

LABEL_45:

      break;
    }

    v51 = *(*(v42 + 56) + 8 * v49);
    if (!_s11MusicJSCore8JSCookieC3eetoiySbAC_ACtFZ_0(v51, v48))
    {

      goto LABEL_45;
    }

    v39 &= v39 - 1;
    v52 = v46;
    v53 = v42;
    v122 = sub_2EBF88(v52, v1);
    v55 = v54;

    if (v55)
    {
      v1 = v122;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v53;
      if (!v56)
      {
        sub_A9BB4C();
        v53 = aBlock;
      }

      sub_9A5118(v1, v53);
    }

    v41 = v43;
    v42 = v53;
    if (!v39)
    {
      goto LABEL_27;
    }
  }

LABEL_47:
  v58 = v118;
  *(v121 + v118) = v14;

  v1 = OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_invalidationTimers;
  v43 = *&v58[OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_invalidationTimers];
  if (v43 >> 62)
  {
LABEL_57:
    v59 = sub_ABB060();
    v123 = v42;
    if (v59)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v59 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
    v123 = v42;
    if (v59)
    {
LABEL_49:
      if (v59 < 1)
      {
        goto LABEL_77;
      }

      for (i = 0; i != v59; ++i)
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          v61 = sub_9BB090(i, v43);
        }

        else
        {
          v61 = *(v43 + 8 * i + 32);
        }

        v62 = v61;
        [v61 invalidate];
      }

      goto LABEL_59;
    }
  }

LABEL_59:
  v63 = *(v14 + 64);
  v64 = _swiftEmptyArrayStorage;
  v128 = _swiftEmptyArrayStorage;
  v65 = 1 << *(v14 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & v63;
  v68 = (v65 + 63) >> 6;
  v69 = (v117 + 6);
  v121 = (v117 + 2);
  v122 = (v117 + 4);
  v107 = NSRunLoopCommonModes;
  ++v117;

  v70 = 0;
  while (1)
  {
    v71 = v70;
    if (!v67)
    {
      break;
    }

LABEL_66:
    v72 = __clz(__rbit64(v67));
    v67 &= v67 - 1;
    v73 = *(*(v14 + 56) + ((v70 << 9) | (8 * v72)));
    v74 = OBJC_IVAR____TtC11MusicJSCore8JSCookie_expirationDate;
    swift_beginAccess();
    v75 = v73 + v74;
    v76 = v119;
    sub_2EC64(v75, v119);
    if ((*v69)(v76, 1, v120) == 1)
    {
      sub_12E1C(v76, &unk_E01230);
    }

    else
    {
      v105 = v1;
      v77 = v109;
      v78 = v120;
      (*v122)(v109, v76, v120);
      (*v121)(v108, v77, v78);
      v104 = v73;
      sub_AB3320();
      aBlock = 0u;
      v125 = 0u;
      isa = sub_AB3370().super.isa;
      v79 = *(&v125 + 1);
      if (*(&v125 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v125 + 1));
        v102 = &v102;
        v80 = *(v79 - 8);
        v81 = __chkstk_darwin();
        v83 = &v102 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v80 + 16))(v83, v81);
        v84 = v118;
        v85 = v118;
        v103 = sub_ABB3A0();
        (*(v80 + 8))(v83, v79);
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
      }

      else
      {
        v84 = v118;
        v86 = v118;
        v103 = 0;
      }

      v87 = objc_allocWithZone(NSTimer);
      v88 = isa;
      v89 = [v87 initWithFireDate:isa interval:v84 target:"handleCookieDidExpire:" selector:v103 userInfo:0 repeats:1.79769313e308];

      swift_unknownObjectRelease();
      v90 = [objc_opt_self() currentRunLoop];
      [v90 addTimer:v89 forMode:v107];

      v91 = v89;
      sub_AB9730();
      if (*(&dword_10 + (v128 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v128 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();

      v92 = *v117;
      v93 = v120;
      (*v117)(v110, v120);
      v92(v109, v93);
      v64 = v128;
      v1 = v105;
    }
  }

  while (1)
  {
    v70 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      break;
    }

    if (v70 >= v68)
    {

      v94 = v118;
      *&v118[v1] = v64;

      sub_13C80(0, &qword_DE8ED0);
      v95 = sub_ABA150();
      v96 = swift_allocObject();
      *(v96 + 16) = v94;
      *(v96 + 24) = v14;
      v126 = sub_9C35FC;
      v127 = v96;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v125 = sub_1B5EB4;
      *(&v125 + 1) = &block_descriptor_16_5;
      v97 = _Block_copy(&aBlock);
      v98 = v94;

      v99 = v111;
      sub_AB7C30();
      *&aBlock = _swiftEmptyArrayStorage;
      sub_8FFF0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_D1010();
      v100 = v113;
      v101 = v116;
      sub_ABABB0();
      sub_ABA160();
      _Block_release(v97);

      (*(v115 + 8))(v100, v101);
      (*(v112 + 8))(v99, v114);
    }

    v67 = *(v14 + 64 + 8 * v70);
    ++v71;
    if (v67)
    {
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

uint64_t sub_9C289C(void *a1, uint64_t a2)
{
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v4 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF85F0;
  *(v5 + 56) = type metadata accessor for JSCookieStorage();
  *(v5 + 32) = a1;
  *(v5 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E250A0);
  *(v5 + 64) = a2;
  sub_13C80(0, &qword_DE8ED0);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = _swiftEmptyArrayStorage;
  *(v6 + 32) = 0xD000000000000014;
  *(v6 + 40) = 0x8000000000B7EBD0;
  *(v6 + 48) = a1;
  *(v6 + 56) = v4;
  *(v6 + 64) = 0;
  v7 = a1;

  v8 = v4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BE1A0, v6);

  v7[OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_isUpdatingCookies] = 0;
  return result;
}

uint64_t sub_9C2A20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574656C6564;
  }

  else
  {
    v3 = 7628147;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6574656C6564;
  }

  else
  {
    v5 = 7628147;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_9C2ABC()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9C2B34()
{
  sub_AB93F0();
}

Swift::Int sub_9C2B98()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9C2C0C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D4DF08;
  v8._object = v3;
  v5 = sub_ABB140(v4, v8);

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

void sub_9C2C6C(uint64_t *a1@<X8>)
{
  v2 = 7628147;
  if (*v1)
  {
    v2 = 0x6574656C6564;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_9C2CD0()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_defaultURL;
  v2 = sub_AB31C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t sub_9C2E28()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_9C2E68(uint64_t a1)
{
  sub_808B0(a1, &v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07D60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (!*(v9 + 16))
  {
    goto LABEL_17;
  }

  sub_2EBF88(0x696669746E656469, 0xEA00000000007265);
  if ((v2 & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
LABEL_14:

    return 0;
  }

  if (!*(v9 + 16) || (countAndFlagsBits = v10._countAndFlagsBits, sub_2EBF88(0x65696B6F6F63, 0xE600000000000000), (v4 & 1) == 0))
  {

LABEL_17:

LABEL_18:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return 0;
  }

  type metadata accessor for JSCookie();
  swift_unknownObjectRetain();
  if (!swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  if (!*(v9 + 16) || (sub_2EBF88(1701869940, 0xE400000000000000), (v5 & 1) == 0))
  {
    swift_unknownObjectRelease();

    goto LABEL_17;
  }

  swift_unknownObjectRetain();

  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v6._rawValue = &off_D4DF08;
  v7 = sub_ABB140(v6, v10);

  __swift_destroy_boxed_opaque_existential_0(a1);
  if (v7 < 2)
  {
    return countAndFlagsBits;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_9C30D8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_257(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for JSCookieStorage()
{
  result = qword_E25090;
  if (!qword_E25090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9C319C()
{
  result = sub_AB31C0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_9C3250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v22 = a1;
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C50();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB7C20();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v3[OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_isUpdatingCookies] & 1) == 0)
  {
    v3[OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_isUpdatingCookies] = 1;
    sub_13C80(0, &qword_DE8ED0);
    v21 = v9;
    (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.background(_:), v12);
    v20 = v8;
    v16 = sub_ABA190();
    (*(v13 + 8))(v15, v12);
    v17 = swift_allocObject();
    *(v17 + 16) = v3;
    aBlock[4] = v23;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = v24;
    v18 = _Block_copy(aBlock);
    v19 = v3;
    sub_AB7C30();
    v25 = _swiftEmptyArrayStorage;
    sub_8FFF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_D1010();
    sub_ABABB0();
    sub_ABA160();
    _Block_release(v18);

    (*(v5 + 8))(v7, v4);
    (*(v21 + 8))(v11, v20);
  }
}

uint64_t sub_9C35BC()
{

  return swift_deallocObject();
}

uint64_t sub_9C3608()
{

  return swift_deallocObject();
}

uint64_t sub_9C3664()
{

  return swift_deallocObject();
}

unint64_t sub_9C36C0()
{
  result = qword_E250A8;
  if (!qword_E250A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E250A8);
  }

  return result;
}

uint64_t sub_9C375C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_ABAE60();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_44F40C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_9C3A5C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_ABAE60();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_9CBB18(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t JSIdentifierSet.ContentKind.rawValue.getter(char a1)
{
  result = 0x6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x7473696C79616C70;
      break;
    case 2:
      result = 1735290739;
      break;
    case 3:
      result = 0x6174536F69646172;
      break;
    case 4:
      result = 0x6569766F6DLL;
      break;
    case 5:
      result = 0x776F68537674;
      break;
    case 6:
      result = 0x6E6F736165537674;
      break;
    case 7:
      result = 0x646F736970457674;
      break;
    case 8:
      result = 0x747369747261;
      break;
    case 9:
      result = 0x726F7461727563;
      break;
    case 10:
      result = 0x72506C6169636F73;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x614C64726F636572;
      break;
    case 14:
      result = 0x4173746964657263;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_9C3F38(char *a1, char *a2)
{
  v2 = *a2;
  v3 = JSIdentifierSet.ContentKind.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == JSIdentifierSet.ContentKind.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_9C3FC0()
{
  v1 = *v0;
  sub_ABB5C0();
  JSIdentifierSet.ContentKind.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9C4024()
{
  JSIdentifierSet.ContentKind.rawValue.getter(*v0);
  sub_AB93F0();
}

Swift::Int sub_9C4078()
{
  v1 = *v0;
  sub_ABB5C0();
  JSIdentifierSet.ContentKind.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9C40D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore15JSIdentifierSetC11ContentKindO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_9C4108@<X0>(unint64_t *a1@<X8>)
{
  result = JSIdentifierSet.ContentKind.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_9C4170(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_9C41DC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t JSIdentifierSet.contentKind.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind;
  swift_beginAccess();
  return *(v0 + v1);
}

Swift::Bool __swiftcall JSIdentifierSet.hasContentIdentifiers(for:)(MusicJSCore::JSIdentifierSet::ContentIdentifierKind a1)
{
  if (a1.rawValue)
  {
    rawValue = a1.rawValue;
    v4 = v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID;
    swift_beginAccess();
    if (*(v4 + 8) != 1)
    {
      return 1;
    }

    v5 = v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID;
    swift_beginAccess();
    if (*(v5 + 8) != 1)
    {
      return 1;
    }

    v6 = v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudAlbumID;
    swift_beginAccess();
    if (*(v6 + 8))
    {
      return 1;
    }

    v7 = v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID;
    swift_beginAccess();
    if (*(v7 + 8))
    {
      return 1;
    }

    if ((rawValue & 2) == 0)
    {
      return 0;
    }
  }

  else if ((a1.rawValue & 2) == 0)
  {
    return 0;
  }

  v8 = v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID;
  swift_beginAccess();
  if (!*(v8 + 8))
  {
    v9 = v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_socialProfileID;
    swift_beginAccess();
    return *(v9 + 8) != 0;
  }

  return 1;
}

uint64_t JSIdentifierSet.preferredPersonlizationStyle.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID;
  swift_beginAccess();
  if (*(v1 + 8) == 1 && (v2 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID, swift_beginAccess(), *(v2 + 8) == 1) && (v3 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudAlbumID, swift_beginAccess(), !*(v3 + 8)) && (v4 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID, swift_beginAccess(), !*(v4 + 8)))
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

id JSIdentifierSet.modelObject(with:)(uint64_t a1)
{
  result = JSIdentifierSet.toMPIdentifierSet.getter();
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() sharedServerObjectDatabase];
    v5 = [v4 modelObjectMatchingIdentifierSet:v3 propertySet:a1];

    if (v5)
    {
      v6 = [v5 relativeModelObjectForStoreLibraryPersonalization];
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v5 = v5;
        v7 = [v5 innermostModelObject];
      }

      return v7;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t JSIdentifierSet.storeBrowseContentItem(with:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 == 15)
  {
    return sub_9CA464(a1);
  }

  v5 = JSIdentifierSet.modelObject(with:)(a1);
  if (!v5)
  {
    return sub_9CA464(a1);
  }

  v6 = v5;
  switch(v4)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_26;
    case 3:
      goto LABEL_14;
    case 4:
      goto LABEL_32;
    case 5:
      goto LABEL_38;
    case 6:
      goto LABEL_29;
    case 7:
      goto LABEL_44;
    case 8:
      goto LABEL_20;
    case 9:
      goto LABEL_41;
    case 10:
      goto LABEL_11;
    case 11:
      goto LABEL_17;
    case 12:
      goto LABEL_35;
    case 13:
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (!v14)
      {
        goto LABEL_47;
      }

      v15 = v14;
      v16 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v15;
      v17 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v18 = swift_allocObject();
      *(v18 + 16) = sub_9CC0EC;
      *(v18 + 24) = v92;
      v98 = sub_3F328C;
      v99 = v18;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_41A314;
      v97 = &block_descriptor_258;
      v19 = _Block_copy(&aBlock);

      v12 = [v17 initWithIdentifiers:v16 block:v19];

      _Block_release(v19);

      LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

      if ((v16 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_11:
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (!v20)
      {
        goto LABEL_47;
      }

      v21 = v20;
      v22 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v21;
      v23 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v24 = swift_allocObject();
      *(v24 + 16) = sub_9CC13C;
      *(v24 + 24) = v92;
      v98 = sub_445458;
      v99 = v24;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_41A314;
      v97 = &block_descriptor_7_3;
      v25 = _Block_copy(&aBlock);

      v12 = [v23 initWithIdentifiers:v22 block:v25];

      _Block_release(v25);

      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if ((v22 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_14:
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (!v26)
      {
        goto LABEL_47;
      }

      v27 = v26;
      v28 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v27;
      v29 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v30 = swift_allocObject();
      *(v30 + 16) = sub_9CC254;
      *(v30 + 24) = v92;
      v98 = sub_445458;
      v99 = v30;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_41A314;
      v97 = &block_descriptor_56_4;
      v31 = _Block_copy(&aBlock);

      v12 = [v29 initWithIdentifiers:v28 block:v31];

      _Block_release(v31);

      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      if ((v28 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_17:
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (!v32)
      {
        goto LABEL_47;
      }

      v33 = v32;
      v34 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v33;
      v35 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v36 = swift_allocObject();
      *(v36 + 16) = sub_9CCCC4;
      *(v36 + 24) = v92;
      v98 = sub_445458;
      v99 = v36;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_41A314;
      v97 = &block_descriptor_70_3;
      v37 = _Block_copy(&aBlock);

      v12 = [v35 initWithIdentifiers:v34 block:v37];

      _Block_release(v37);

      LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

      if ((v34 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_20:
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (!v38)
      {
        goto LABEL_47;
      }

      v39 = v38;
      v40 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v39;
      v41 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v42 = swift_allocObject();
      *(v42 + 16) = sub_9CC18C;
      *(v42 + 24) = v92;
      v98 = sub_445458;
      v99 = v42;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_41A314;
      v97 = &block_descriptor_21_3;
      v43 = _Block_copy(&aBlock);

      v12 = [v41 initWithIdentifiers:v40 block:v43];

      _Block_release(v43);

      LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

      if ((v40 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_23:
      objc_opt_self();
      v44 = swift_dynamicCastObjCClass();
      if (!v44)
      {
        goto LABEL_47;
      }

      v45 = v44;
      v46 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v45;
      v47 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v48 = swift_allocObject();
      *(v48 + 16) = sub_9CC2A4;
      *(v48 + 24) = v92;
      v98 = sub_445458;
      v99 = v48;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_41A314;
      v97 = &block_descriptor_84_0;
      v49 = _Block_copy(&aBlock);

      v12 = [v47 initWithIdentifiers:v46 block:v49];

      _Block_release(v49);

      LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

      if ((v46 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_26:
      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      if (!v50)
      {
        goto LABEL_47;
      }

      v51 = v50;
      v52 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v51;
      v53 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v54 = swift_allocObject();
      *(v54 + 16) = sub_9CC27C;
      *(v54 + 24) = v92;
      v98 = sub_445458;
      v99 = v54;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_41A314;
      v97 = &block_descriptor_77_2;
      v55 = _Block_copy(&aBlock);

      v12 = [v53 initWithIdentifiers:v52 block:v55];

      _Block_release(v55);

      LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

      if ((v52 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_29:
      objc_opt_self();
      v56 = swift_dynamicCastObjCClass();
      if (!v56)
      {
        goto LABEL_47;
      }

      v57 = v56;
      v58 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v57;
      v59 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v60 = swift_allocObject();
      *(v60 + 16) = sub_9CC1DC;
      *(v60 + 24) = v92;
      v98 = sub_445458;
      v99 = v60;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_41A314;
      v97 = &block_descriptor_35_6;
      v61 = _Block_copy(&aBlock);

      v12 = [v59 initWithIdentifiers:v58 block:v61];

      _Block_release(v61);

      LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

      if ((v58 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_32:
      objc_opt_self();
      v62 = swift_dynamicCastObjCClass();
      if (!v62)
      {
        goto LABEL_47;
      }

      v63 = v62;
      v64 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v63;
      v65 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v66 = swift_allocObject();
      *(v66 + 16) = sub_9CC22C;
      *(v66 + 24) = v92;
      v98 = sub_445458;
      v99 = v66;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_41A314;
      v97 = &block_descriptor_49_2;
      v67 = _Block_copy(&aBlock);

      v12 = [v65 initWithIdentifiers:v64 block:v67];

      _Block_release(v67);

      LOBYTE(v64) = swift_isEscapingClosureAtFileLocation();

      if ((v64 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_35:
      objc_opt_self();
      v68 = swift_dynamicCastObjCClass();
      if (!v68)
      {
        goto LABEL_47;
      }

      v69 = v68;
      v70 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v69;
      v71 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v72 = swift_allocObject();
      *(v72 + 16) = sub_9CCCC4;
      *(v72 + 24) = v92;
      v98 = sub_445458;
      v99 = v72;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_41A314;
      v97 = &block_descriptor_63_7;
      v73 = _Block_copy(&aBlock);

      v12 = [v71 initWithIdentifiers:v70 block:v73];

      _Block_release(v73);

      LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

      if ((v70 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_38:
      objc_opt_self();
      v74 = swift_dynamicCastObjCClass();
      if (!v74)
      {
        goto LABEL_47;
      }

      v75 = v74;
      v76 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v75;
      v77 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v78 = swift_allocObject();
      *(v78 + 16) = sub_9CC204;
      *(v78 + 24) = v92;
      v98 = sub_445458;
      v99 = v78;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_41A314;
      v97 = &block_descriptor_42_3;
      v79 = _Block_copy(&aBlock);

      v12 = [v77 initWithIdentifiers:v76 block:v79];

      _Block_release(v79);

      LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

      if ((v76 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_41:
      objc_opt_self();
      v80 = swift_dynamicCastObjCClass();
      if (!v80)
      {
        goto LABEL_47;
      }

      v81 = v80;
      v82 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v81;
      v83 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v84 = swift_allocObject();
      *(v84 + 16) = sub_9CC164;
      *(v84 + 24) = v92;
      v98 = sub_445458;
      v99 = v84;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_41A314;
      v97 = &block_descriptor_14_2;
      v85 = _Block_copy(&aBlock);

      v12 = [v83 initWithIdentifiers:v82 block:v85];

      _Block_release(v85);

      LOBYTE(v82) = swift_isEscapingClosureAtFileLocation();

      if ((v82 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_44:
      objc_opt_self();
      v86 = swift_dynamicCastObjCClass();
      if (v86)
      {
        v87 = v86;
        v88 = [objc_opt_self() emptyIdentifierSet];
        __chkstk_darwin();
        v93 = v87;
        v89 = objc_allocWithZone(MPModelStoreBrowseContentItem);
        v90 = swift_allocObject();
        *(v90 + 16) = sub_9CC1B4;
        *(v90 + 24) = v92;
        v98 = sub_445458;
        v99 = v90;
        aBlock = _NSConcreteStackBlock;
        v95 = 1107296256;
        v96 = sub_41A314;
        v97 = &block_descriptor_28_0;
        v91 = _Block_copy(&aBlock);

        v12 = [v89 initWithIdentifiers:v88 block:v91];

        _Block_release(v91);

        LOBYTE(v88) = swift_isEscapingClosureAtFileLocation();

        if (v88)
        {
          __break(1u);
          JUMPOUT(0x9C5B10);
        }

LABEL_46:
        result = v12;
      }

      else
      {
LABEL_47:

        result = 0;
      }

      break;
    case 14:
      goto LABEL_47;
    default:
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (!v7)
      {
        goto LABEL_47;
      }

      v8 = v7;
      v9 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v8;
      v10 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      a1 = swift_allocObject();
      *(a1 + 16) = sub_9CC2CC;
      *(a1 + 24) = v92;
      v98 = sub_445458;
      v99 = a1;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_41A314;
      v97 = &block_descriptor_91_2;
      v11 = _Block_copy(&aBlock);

      v12 = [v10 initWithIdentifiers:v9 block:v11];

      _Block_release(v11);

      LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

      if ((v9 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
      return sub_9CA464(a1);
  }

  return result;
}

id JSIdentifierSet.toMPIdentifierSet.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 == 15)
  {
    return 0;
  }

  v4 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID;
  swift_beginAccess();
  if (*(v4 + 8) == 1)
  {
    v5 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID;
    swift_beginAccess();
    if (*(v5 + 8) == 1)
    {
      v6 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudAlbumID;
      swift_beginAccess();
      if (!*(v6 + 8))
      {
        v7 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID;
        swift_beginAccess();
        if (!*(v7 + 8))
        {
          v8 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID;
          swift_beginAccess();
          if (!*(v8 + 8))
          {
            v9 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_socialProfileID;
            swift_beginAccess();
            if (!*(v9 + 8))
            {
              return 0;
            }
          }
        }
      }
    }
  }

  switch(v2)
  {
    case 1:
      goto LABEL_28;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_24;
    case 4:
      goto LABEL_16;
    case 5:
      goto LABEL_30;
    case 6:
      goto LABEL_34;
    case 7:
      goto LABEL_26;
    case 8:
      goto LABEL_38;
    case 9:
      goto LABEL_20;
    case 10:
      goto LABEL_36;
    case 11:
      goto LABEL_14;
    case 12:
      goto LABEL_18;
    case 13:
      goto LABEL_32;
    case 14:
      goto LABEL_12;
    default:
      v10 = objc_opt_self();
      v11 = [objc_opt_self() kindWithVariants:7];
      v12 = [v10 kindWithSongKind:v11];

      __chkstk_darwin();
      v63 = v0;
      v13 = objc_allocWithZone(MPIdentifierSet);
      v0 = swift_allocObject();
      *(v0 + 16) = sub_9CC364;
      *(v0 + 24) = v62;
      v68 = sub_445458;
      v69 = v0;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_41A314;
      v67 = &block_descriptor_195_1;
      v14 = _Block_copy(&aBlock);

      v15 = [v13 initWithModelKind:v12 block:v14];

      _Block_release(v14);

      LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

      if ((v12 & 1) == 0)
      {
        goto LABEL_39;
      }

      __break(1u);
LABEL_12:
      sub_13C80(0, &qword_E250E8);
      v16 = [swift_getObjCClassFromMetadata() identityKind];
      __chkstk_darwin();
      v63 = v0;
      v17 = objc_allocWithZone(MPIdentifierSet);
      v0 = swift_allocObject();
      *(v0 + 16) = sub_9CC2F4;
      *(v0 + 24) = v62;
      v68 = sub_445458;
      v69 = v0;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_41A314;
      v67 = &block_descriptor_97_1;
      v18 = _Block_copy(&aBlock);

      v15 = [v17 initWithModelKind:v16 block:v18];

      _Block_release(v18);

      LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

      if (v16)
      {
        __break(1u);
LABEL_14:
        v19 = [objc_opt_self() kindWithVariants:7];
        __chkstk_darwin();
        v63 = v0;
        v20 = objc_allocWithZone(MPIdentifierSet);
        v0 = swift_allocObject();
        *(v0 + 16) = sub_9CC34C;
        *(v0 + 24) = v62;
        v68 = sub_445458;
        v69 = v0;
        aBlock = _NSConcreteStackBlock;
        v65 = 1107296256;
        v66 = sub_41A314;
        v67 = &block_descriptor_174;
        v21 = _Block_copy(&aBlock);

        v15 = [v20 initWithModelKind:v19 block:v21];

        _Block_release(v21);

        LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

        if (v19)
        {
          __break(1u);
LABEL_16:
          sub_13C80(0, &unk_E03780);
          v22 = static MPModelMovie.defaultMusicKind.getter();
          __chkstk_darwin();
          v63 = v0;
          v23 = objc_allocWithZone(MPIdentifierSet);
          v0 = swift_allocObject();
          *(v0 + 16) = sub_9CC334;
          *(v0 + 24) = v62;
          v68 = sub_445458;
          v69 = v0;
          aBlock = _NSConcreteStackBlock;
          v65 = 1107296256;
          v66 = sub_41A314;
          v67 = &block_descriptor_153_3;
          v24 = _Block_copy(&aBlock);

          v15 = [v23 initWithModelKind:v22 block:v24];

          _Block_release(v24);

          LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

          if (v22)
          {
            __break(1u);
LABEL_18:
            v25 = [objc_opt_self() kindWithVariants:7];
            __chkstk_darwin();
            v63 = v0;
            v26 = objc_allocWithZone(MPIdentifierSet);
            v0 = swift_allocObject();
            *(v0 + 16) = sub_9CC344;
            *(v0 + 24) = v62;
            v68 = sub_445458;
            v69 = v0;
            aBlock = _NSConcreteStackBlock;
            v65 = 1107296256;
            v66 = sub_41A314;
            v67 = &block_descriptor_167_5;
            v27 = _Block_copy(&aBlock);

            v15 = [v26 initWithModelKind:v25 block:v27];

            _Block_release(v27);

            LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

            if (v25)
            {
              __break(1u);
LABEL_20:
              sub_13C80(0, &unk_E25100);
              v28 = [swift_getObjCClassFromMetadata() identityKind];
              __chkstk_darwin();
              v63 = v0;
              v29 = objc_allocWithZone(MPIdentifierSet);
              v0 = swift_allocObject();
              *(v0 + 16) = sub_9CC30C;
              *(v0 + 24) = v62;
              v68 = sub_445458;
              v69 = v0;
              aBlock = _NSConcreteStackBlock;
              v65 = 1107296256;
              v66 = sub_41A314;
              v67 = &block_descriptor_118_1;
              v30 = _Block_copy(&aBlock);

              v15 = [v29 initWithModelKind:v28 block:v30];

              _Block_release(v30);

              LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

              if (v28)
              {
                __break(1u);
LABEL_22:
                v31 = [objc_opt_self() kindWithVariants:7];
                __chkstk_darwin();
                v63 = v0;
                v32 = objc_allocWithZone(MPIdentifierSet);
                v0 = swift_allocObject();
                *(v0 + 16) = sub_9CC354;
                *(v0 + 24) = v62;
                v68 = sub_445458;
                v69 = v0;
                aBlock = _NSConcreteStackBlock;
                v65 = 1107296256;
                v66 = sub_41A314;
                v67 = &block_descriptor_181_0;
                v33 = _Block_copy(&aBlock);

                v15 = [v32 initWithModelKind:v31 block:v33];

                _Block_release(v33);

                LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

                if (v31)
                {
                  __break(1u);
LABEL_24:
                  sub_13C80(0, &unk_E25110);
                  v34 = [swift_getObjCClassFromMetadata() identityKind];
                  __chkstk_darwin();
                  v63 = v0;
                  v35 = objc_allocWithZone(MPIdentifierSet);
                  v0 = swift_allocObject();
                  *(v0 + 16) = sub_9CC33C;
                  *(v0 + 24) = v62;
                  v68 = sub_445458;
                  v69 = v0;
                  aBlock = _NSConcreteStackBlock;
                  v65 = 1107296256;
                  v66 = sub_41A314;
                  v67 = &block_descriptor_160_2;
                  v36 = _Block_copy(&aBlock);

                  v15 = [v35 initWithModelKind:v34 block:v36];

                  _Block_release(v36);

                  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

                  if (v34)
                  {
                    __break(1u);
LABEL_26:
                    sub_13C80(0, &unk_DE9C00);
                    v37 = static MPModelTVEpisode.defaultMusicKind.getter();
                    __chkstk_darwin();
                    v63 = v0;
                    v38 = objc_allocWithZone(MPIdentifierSet);
                    v0 = swift_allocObject();
                    *(v0 + 16) = sub_9CC31C;
                    *(v0 + 24) = v62;
                    v68 = sub_445458;
                    v69 = v0;
                    aBlock = _NSConcreteStackBlock;
                    v65 = 1107296256;
                    v66 = sub_41A314;
                    v67 = &block_descriptor_132_3;
                    v39 = _Block_copy(&aBlock);

                    v15 = [v38 initWithModelKind:v37 block:v39];

                    _Block_release(v39);

                    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

                    if (v37)
                    {
                      __break(1u);
LABEL_28:
                      v40 = objc_opt_self();
                      sub_13C80(0, &qword_DE9C10);
                      v41 = v0;
                      v42 = static MPModelPlaylistEntry.defaultMusicKind.getter();
                      v43 = [v40 kindWithPlaylistEntryKind:v42 options:0];

                      __chkstk_darwin();
                      v63 = v41;
                      v44 = objc_allocWithZone(MPIdentifierSet);
                      v0 = swift_allocObject();
                      *(v0 + 16) = sub_9CC35C;
                      *(v0 + 24) = v62;
                      v68 = sub_445458;
                      v69 = v0;
                      aBlock = _NSConcreteStackBlock;
                      v65 = 1107296256;
                      v66 = sub_41A314;
                      v67 = &block_descriptor_188;
                      v45 = _Block_copy(&aBlock);

                      v15 = [v44 initWithModelKind:v43 block:v45];

                      _Block_release(v45);

                      LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

                      if (v43)
                      {
                        __break(1u);
LABEL_30:
                        sub_13C80(0, &unk_DE8EC0);
                        v46 = static MPModelTVShow.defaultMusicKind.getter();
                        __chkstk_darwin();
                        v63 = v0;
                        v47 = objc_allocWithZone(MPIdentifierSet);
                        v0 = swift_allocObject();
                        *(v0 + 16) = sub_9CC32C;
                        *(v0 + 24) = v62;
                        v68 = sub_445458;
                        v69 = v0;
                        aBlock = _NSConcreteStackBlock;
                        v65 = 1107296256;
                        v66 = sub_41A314;
                        v67 = &block_descriptor_146;
                        v48 = _Block_copy(&aBlock);

                        v15 = [v47 initWithModelKind:v46 block:v48];

                        _Block_release(v48);

                        LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

                        if (v46)
                        {
                          __break(1u);
LABEL_32:
                          sub_13C80(0, &qword_E250F0);
                          v49 = [swift_getObjCClassFromMetadata() identityKind];
                          __chkstk_darwin();
                          v63 = v0;
                          v50 = objc_allocWithZone(MPIdentifierSet);
                          v0 = swift_allocObject();
                          *(v0 + 16) = sub_9CC2FC;
                          *(v0 + 24) = v62;
                          v68 = sub_445458;
                          v69 = v0;
                          aBlock = _NSConcreteStackBlock;
                          v65 = 1107296256;
                          v66 = sub_41A314;
                          v67 = &block_descriptor_104_1;
                          v51 = _Block_copy(&aBlock);

                          v15 = [v50 initWithModelKind:v49 block:v51];

                          _Block_release(v51);

                          LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

                          if (v49)
                          {
                            __break(1u);
LABEL_34:
                            sub_13C80(0, &unk_E00010);
                            v52 = static MPModelTVSeason.defaultMusicKind.getter();
                            __chkstk_darwin();
                            v63 = v0;
                            v53 = objc_allocWithZone(MPIdentifierSet);
                            v0 = swift_allocObject();
                            *(v0 + 16) = sub_9CC324;
                            *(v0 + 24) = v62;
                            v68 = sub_445458;
                            v69 = v0;
                            aBlock = _NSConcreteStackBlock;
                            v65 = 1107296256;
                            v66 = sub_41A314;
                            v67 = &block_descriptor_139_1;
                            v54 = _Block_copy(&aBlock);

                            v15 = [v53 initWithModelKind:v52 block:v54];

                            _Block_release(v54);

                            LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

                            if (v52)
                            {
                              __break(1u);
LABEL_36:
                              sub_13C80(0, &qword_E250F8);
                              v55 = [swift_getObjCClassFromMetadata() identityKind];
                              __chkstk_darwin();
                              v63 = v0;
                              v56 = objc_allocWithZone(MPIdentifierSet);
                              v0 = swift_allocObject();
                              *(v0 + 16) = sub_9CC304;
                              *(v0 + 24) = v62;
                              v68 = sub_445458;
                              v69 = v0;
                              aBlock = _NSConcreteStackBlock;
                              v65 = 1107296256;
                              v66 = sub_41A314;
                              v67 = &block_descriptor_111_1;
                              v57 = _Block_copy(&aBlock);

                              v15 = [v56 initWithModelKind:v55 block:v57];

                              _Block_release(v57);

                              LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

                              if (v55)
                              {
                                __break(1u);
LABEL_38:
                                sub_13C80(0, &qword_DE8E78);
                                v58 = static MPModelArtist.defaultMusicKind.getter();
                                __chkstk_darwin();
                                v63 = v0;
                                v59 = objc_allocWithZone(MPIdentifierSet);
                                v60 = swift_allocObject();
                                *(v60 + 16) = sub_9CC314;
                                *(v60 + 24) = v62;
                                v68 = sub_445458;
                                v69 = v60;
                                aBlock = _NSConcreteStackBlock;
                                v65 = 1107296256;
                                v66 = sub_41A314;
                                v67 = &block_descriptor_125_0;
                                v61 = _Block_copy(&aBlock);

                                v15 = [v59 initWithModelKind:v58 block:v61];

                                _Block_release(v61);

                                LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

                                if (v58)
                                {
                                  __break(1u);
                                  JUMPOUT(0x9C721CLL);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_39:
      result = v15;
      break;
  }

  return result;
}

uint64_t sub_9C7258(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_9CC834;
  *(v5 + 24) = v4;
  v22 = sub_57B84;
  v23 = v5;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_4522E8;
  v21 = &block_descriptor_233_1;
  v6 = _Block_copy(&v18);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_13C80(0, &qword_DF0600);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    sub_AB92A0();
    v12 = sub_AB9260();

    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_9CCCD4;
    *(v14 + 24) = v13;
    v22 = sub_445458;
    v23 = v14;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_4522E8;
    v21 = &block_descriptor_242_0;
    v15 = _Block_copy(&v18);
    v16 = v7;

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v15];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

id sub_9C7558(void *a1, uint64_t a2)
{
  v4 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {

      v8 = sub_AB9260();

      v9 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

      [a1 setAdamID:v9];
    }
  }

  v10 = a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID;
  result = swift_beginAccess();
  if ((*(v10 + 8) & 1) == 0)
  {
    if (*v10)
    {
      return [a1 setPurchasedAdamID:?];
    }
  }

  return result;
}

uint64_t sub_9C7650(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_9CC83C;
  *(v5 + 24) = v4;
  v22 = sub_C3FB8;
  v23 = v5;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_4522E8;
  v21 = &block_descriptor_252_0;
  v6 = _Block_copy(&v18);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_13C80(0, &qword_DF0600);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    sub_AB92A0();
    v12 = sub_AB9260();

    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_9CC844;
    *(v14 + 24) = v13;
    v22 = sub_445458;
    v23 = v14;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_4522E8;
    v21 = &block_descriptor_262_0;
    v15 = _Block_copy(&v18);
    v16 = v7;

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v15];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

void sub_9C7950(void *a1, uint64_t a2)
{
  v4 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {

      v8 = sub_AB9260();
      v9 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

      [a1 setAdamID:v9];
      v10 = sub_AB9260();

      [a1 setGlobalPlaylistID:v10];
    }
  }

  v11 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID);
  swift_beginAccess();
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {

      v15 = sub_AB9260();

      [a1 setUniversalCloudLibraryID:v15];
    }
  }
}

uint64_t sub_9C7AAC(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_9CC860;
  *(v5 + 24) = v4;
  v22 = sub_C3FB8;
  v23 = v5;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_4522E8;
  v21 = &block_descriptor_272_0;
  v6 = _Block_copy(&v18);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_13C80(0, &qword_DF0600);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    sub_AB92A0();
    v12 = sub_AB9260();

    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_9CCCC8;
    *(v14 + 24) = v13;
    v22 = sub_445458;
    v23 = v14;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_4522E8;
    v21 = &block_descriptor_282;
    v15 = _Block_copy(&v18);
    v16 = v7;

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v15];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

id sub_9C7DAC(void *a1, uint64_t a2)
{
  v3 = a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID;
  result = swift_beginAccess();
  if ((*(v3 + 8) & 1) == 0)
  {
    if (*v3)
    {
      return [a1 setCloudID:?];
    }
  }

  return result;
}

uint64_t sub_9C7E14(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_9CC87C;
  *(v5 + 24) = v4;
  v18 = sub_C3FB8;
  v19 = v5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_4522E8;
  v17 = &block_descriptor_292_0;
  v6 = _Block_copy(&v14);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
    return result;
  }

  sub_13C80(0, &qword_DF0600);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    sub_AB92A0();
    v12 = sub_AB9260();

    v18 = UIScreen.Dimensions.size.getter;
    v19 = 0;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_4522E8;
    v17 = &block_descriptor_295;
    v13 = _Block_copy(&v14);

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];

    _Block_release(v13);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

uint64_t sub_9C80A0(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_9CCCCC;
  *(v5 + 24) = v4;
  v18 = sub_C3FB8;
  v19 = v5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_4522E8;
  v17 = &block_descriptor_305_0;
  v6 = _Block_copy(&v14);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
    return result;
  }

  sub_13C80(0, &qword_DF0600);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    sub_AB92A0();
    v12 = sub_AB9260();

    v18 = UIScreen.Dimensions.size.getter;
    v19 = 0;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_4522E8;
    v17 = &block_descriptor_308_0;
    v13 = _Block_copy(&v14);

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];

    _Block_release(v13);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

id sub_9C832C(void *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  result = swift_beginAccess();
  v5 = v3[1];
  if (v5)
  {
    v6 = *v3;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {

      v8 = sub_AB9260();

      v9 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

      return [a1 setAdamID:v9];
    }
  }

  return result;
}

uint64_t sub_9C83E0(void *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      v8 = swift_allocObject();
      v9 = sub_9CC8D0;
      *(v8 + 16) = sub_9CC8D0;
      *(v8 + 24) = v7;
      v22 = sub_445458;
      v23 = v8;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_4522E8;
      v21 = &block_descriptor_320_0;
      v10 = _Block_copy(&aBlock);

      [a1 setRadioIdentifiersWithBlock:v10];
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }
  }

  v9 = 0;
LABEL_8:
  sub_13C80(0, &qword_DF0600);
  v12 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (!v12)
  {
    return sub_17654(v9);
  }

  v13 = v12;
  v14 = [v12 stringValue];

  if (!v14)
  {
    sub_AB92A0();
    v14 = sub_AB9260();
  }

  v22 = UIScreen.Dimensions.size.getter;
  v23 = 0;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_4522E8;
  v21 = &block_descriptor_311;
  v15 = _Block_copy(&aBlock);

  [a1 setPersonalStoreIdentifiersWithPersonID:v14 block:v15];

  _Block_release(v15);
  v16 = swift_isEscapingClosureAtFileLocation();
  result = sub_17654(v9);
  if (v16)
  {
    __break(1u);
    return sub_17654(v9);
  }

  return result;
}

uint64_t sub_9C86B8(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_9CCCD0;
  *(v5 + 24) = v4;
  v22 = sub_C3FB8;
  v23 = v5;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_4522E8;
  v21 = &block_descriptor_330;
  v6 = _Block_copy(&v18);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_13C80(0, &qword_DF0600);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    sub_AB92A0();
    v12 = sub_AB9260();

    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_9CC8DC;
    *(v14 + 24) = v13;
    v22 = sub_445458;
    v23 = v14;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_4522E8;
    v21 = &block_descriptor_340;
    v15 = _Block_copy(&v18);
    v16 = v7;

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v15];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

uint64_t sub_9C89B8(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_9CC8F8;
  *(v5 + 24) = v4;
  v18 = sub_C3FB8;
  v19 = v5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_4522E8;
  v17 = &block_descriptor_350;
  v6 = _Block_copy(&v14);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
    return result;
  }

  sub_13C80(0, &qword_DF0600);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    sub_AB92A0();
    v12 = sub_AB9260();

    v18 = UIScreen.Dimensions.size.getter;
    v19 = 0;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_4522E8;
    v17 = &block_descriptor_353_1;
    v13 = _Block_copy(&v14);

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];

    _Block_release(v13);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

uint64_t sub_9C8C44(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_9CCCD8;
  *(v5 + 24) = v4;
  v18 = sub_C3FB8;
  v19 = v5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_4522E8;
  v17 = &block_descriptor_363_2;
  v6 = _Block_copy(&v14);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
    return result;
  }

  sub_13C80(0, &qword_DF0600);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    sub_AB92A0();
    v12 = sub_AB9260();

    v18 = UIScreen.Dimensions.size.getter;
    v19 = 0;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_4522E8;
    v17 = &block_descriptor_366;
    v13 = _Block_copy(&v14);

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];

    _Block_release(v13);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

void sub_9C8ED0(void *a1, uint64_t a2)
{
  v4 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {

      v8 = sub_AB9260();

      v9 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

      [a1 setAdamID:v9];
    }
  }

  v10 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID);
  swift_beginAccess();
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;
    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      v14 = sub_AB9260();

      [a1 setUniversalCloudLibraryID:v14];
    }
  }
}

uint64_t sub_9C9000(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_9CCCD0;
  *(v5 + 24) = v4;
  v22 = sub_C3FB8;
  v23 = v5;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_4522E8;
  v21 = &block_descriptor_376;
  v6 = _Block_copy(&v18);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_13C80(0, &qword_DF0600);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    sub_AB92A0();
    v12 = sub_AB9260();

    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_9CCCD4;
    *(v14 + 24) = v13;
    v22 = sub_445458;
    v23 = v14;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_4522E8;
    v21 = &block_descriptor_386_0;
    v15 = _Block_copy(&v18);
    v16 = v7;

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v15];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

void sub_9C9300(void *a1, uint64_t a2)
{
  v4 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {

      v8 = sub_AB9260();

      v9 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

      [a1 setAdamID:v9];
    }
  }

  v10 = a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID;
  swift_beginAccess();
  if ((*(v10 + 8) & 1) == 0 && *v10)
  {
    [a1 setPurchasedAdamID:?];
  }

  v11 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID);
  swift_beginAccess();
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {

      v15 = sub_AB9260();

      [a1 setUniversalCloudLibraryID:v15];
    }
  }
}

void sub_9C9470(void *a1, uint64_t a2)
{
  v4 = a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID;
  swift_beginAccess();
  if ((*(v4 + 8) & 1) == 0 && *v4)
  {
    [a1 setCloudID:?];
  }

  v5 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudAlbumID);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v8 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {

      v9 = sub_AB9260();

      [a1 setCloudAlbumID:v9];
    }
  }
}

uint64_t sub_9C955C(void *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      v8 = swift_allocObject();
      v9 = sub_9CCCC0;
      *(v8 + 16) = sub_9CCCC0;
      *(v8 + 24) = v7;
      v22 = sub_C3FB8;
      v23 = v8;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_4522E8;
      v21 = &block_descriptor_399;
      v10 = _Block_copy(&aBlock);

      [a1 setUniversalStoreIdentifiersWithBlock:v10];
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }
  }

  v9 = 0;
LABEL_8:
  sub_13C80(0, &qword_DF0600);
  v12 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (!v12)
  {
    return sub_17654(v9);
  }

  v13 = v12;
  v14 = [v12 stringValue];

  if (!v14)
  {
    sub_AB92A0();
    v14 = sub_AB9260();
  }

  v22 = UIScreen.Dimensions.size.getter;
  v23 = 0;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_4522E8;
  v21 = &block_descriptor_389;
  v15 = _Block_copy(&aBlock);

  [a1 setPersonalStoreIdentifiersWithPersonID:v14 block:v15];

  _Block_release(v15);
  v16 = swift_isEscapingClosureAtFileLocation();
  result = sub_17654(v9);
  if (v16)
  {
    __break(1u);
    return sub_17654(v9);
  }

  return result;
}

uint64_t sub_9C9834(void *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      v8 = swift_allocObject();
      v9 = sub_9CC914;
      *(v8 + 16) = sub_9CC914;
      *(v8 + 24) = v7;
      v22 = sub_C3FB8;
      v23 = v8;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_4522E8;
      v21 = &block_descriptor_412;
      v10 = _Block_copy(&aBlock);

      [a1 setUniversalStoreIdentifiersWithBlock:v10];
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }
  }

  v9 = 0;
LABEL_8:
  sub_13C80(0, &qword_DF0600);
  v12 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (!v12)
  {
    return sub_17654(v9);
  }

  v13 = v12;
  v14 = [v12 stringValue];

  if (!v14)
  {
    sub_AB92A0();
    v14 = sub_AB9260();
  }

  v22 = UIScreen.Dimensions.size.getter;
  v23 = 0;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_4522E8;
  v21 = &block_descriptor_402;
  v15 = _Block_copy(&aBlock);

  [a1 setPersonalStoreIdentifiersWithPersonID:v14 block:v15];

  _Block_release(v15);
  v16 = swift_isEscapingClosureAtFileLocation();
  result = sub_17654(v9);
  if (v16)
  {
    __break(1u);
    return sub_17654(v9);
  }

  return result;
}

uint64_t sub_9C9B0C(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_9CC930;
  *(v5 + 24) = v4;
  v18 = sub_C3FB8;
  v19 = v5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_4522E8;
  v17 = &block_descriptor_422;
  v6 = _Block_copy(&v14);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
    return result;
  }

  sub_13C80(0, &qword_DF0600);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    sub_AB92A0();
    v12 = sub_AB9260();

    v18 = UIScreen.Dimensions.size.getter;
    v19 = 0;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_4522E8;
    v17 = &block_descriptor_425_0;
    v13 = _Block_copy(&v14);

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];

    _Block_release(v13);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

void sub_9C9D98(void *a1, uint64_t a2)
{
  v4 = a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID;
  swift_beginAccess();
  if (*(v4 + 8))
  {

    v5 = sub_AB9260();

    v6 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

    [a1 setAdamID:v6];
  }

  if (![a1 adamID])
  {
    v7 = a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_socialProfileID;
    swift_beginAccess();
    if (*(v7 + 8))
    {

      v8 = sub_AB9260();

      [a1 setSocialProfileID:v8];
    }
  }
}

uint64_t sub_9C9EB4(void *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      v8 = swift_allocObject();
      v9 = sub_9CCCC0;
      *(v8 + 16) = sub_9CCCC0;
      *(v8 + 24) = v7;
      v22 = sub_C3FB8;
      v23 = v8;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_4522E8;
      v21 = &block_descriptor_438;
      v10 = _Block_copy(&aBlock);

      [a1 setUniversalStoreIdentifiersWithBlock:v10];
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }
  }

  v9 = 0;
LABEL_8:
  sub_13C80(0, &qword_DF0600);
  v12 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (!v12)
  {
    return sub_17654(v9);
  }

  v13 = v12;
  v14 = [v12 stringValue];

  if (!v14)
  {
    sub_AB92A0();
    v14 = sub_AB9260();
  }

  v22 = UIScreen.Dimensions.size.getter;
  v23 = 0;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_4522E8;
  v21 = &block_descriptor_428;
  v15 = _Block_copy(&aBlock);

  [a1 setPersonalStoreIdentifiersWithPersonID:v14 block:v15];

  _Block_release(v15);
  v16 = swift_isEscapingClosureAtFileLocation();
  result = sub_17654(v9);
  if (v16)
  {
    __break(1u);
    return sub_17654(v9);
  }

  return result;
}

uint64_t sub_9CA18C(void *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      v8 = swift_allocObject();
      v9 = sub_9CC938;
      *(v8 + 16) = sub_9CC938;
      *(v8 + 24) = v7;
      v22 = sub_C3FB8;
      v23 = v8;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_4522E8;
      v21 = &block_descriptor_451_0;
      v10 = _Block_copy(&aBlock);

      [a1 setUniversalStoreIdentifiersWithBlock:v10];
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }
  }

  v9 = 0;
LABEL_8:
  sub_13C80(0, &qword_DF0600);
  v12 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (!v12)
  {
    return sub_17654(v9);
  }

  v13 = v12;
  v14 = [v12 stringValue];

  if (!v14)
  {
    sub_AB92A0();
    v14 = sub_AB9260();
  }

  v22 = UIScreen.Dimensions.size.getter;
  v23 = 0;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_4522E8;
  v21 = &block_descriptor_441;
  v15 = _Block_copy(&aBlock);

  [a1 setPersonalStoreIdentifiersWithPersonID:v14 block:v15];

  _Block_release(v15);
  v16 = swift_isEscapingClosureAtFileLocation();
  result = sub_17654(v9);
  if (v16)
  {
    __break(1u);
    return sub_17654(v9);
  }

  return result;
}

uint64_t sub_9CA464(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 == 15)
  {
    return 0;
  }

  result = JSIdentifierSet.toMPIdentifierSet.getter();
  if (result)
  {
    v7 = result;
    if (v5 != 2)
    {
      if (v5 != 1)
      {
        if (v5)
        {
          goto LABEL_24;
        }

        v63 = a1;
        v8 = objc_allocWithZone(MPModelAlbum);
        v77 = UIScreen.Dimensions.size.getter;
        v78 = 0;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        v75 = sub_41A314;
        v76 = &block_descriptor_474;
        v9 = _Block_copy(&aBlock);
        v10 = [v8 initWithIdentifiers:v7 block:v9];
        _Block_release(v9);

        result = swift_isEscapingClosureAtFileLocation();
        if (result)
        {
          goto LABEL_38;
        }

        __chkstk_darwin();
        v62 = v10;
        v11 = objc_allocWithZone(MPModelStoreBrowseContentItem);
        a1 = swift_allocObject();
        *(a1 + 16) = sub_9CCCE0;
        *(a1 + 24) = v61;
        v77 = sub_445458;
        v78 = a1;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        v75 = sub_41A314;
        v76 = &block_descriptor_481_0;
        v12 = _Block_copy(&aBlock);

        v13 = [v11 initWithIdentifiers:v7 block:v12];
        _Block_release(v12);

        LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

        if ((v12 & 1) == 0)
        {
          goto LABEL_15;
        }

        __break(1u);
      }

      v63 = a1;
      v14 = objc_allocWithZone(MPModelPlaylist);
      v77 = UIScreen.Dimensions.size.getter;
      v78 = 0;
      aBlock = _NSConcreteStackBlock;
      v74 = 1107296256;
      v75 = sub_41A314;
      v76 = &block_descriptor_464;
      v15 = _Block_copy(&aBlock);
      v16 = [v14 initWithIdentifiers:v7 block:v15];
      _Block_release(v15);

      result = swift_isEscapingClosureAtFileLocation();
      if (result)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      __chkstk_darwin();
      v62 = v16;
      v17 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      a1 = swift_allocObject();
      *(a1 + 16) = sub_9CCCDC;
      *(a1 + 24) = v61;
      v77 = sub_445458;
      v78 = a1;
      aBlock = _NSConcreteStackBlock;
      v74 = 1107296256;
      v75 = sub_41A314;
      v76 = &block_descriptor_471;
      v18 = _Block_copy(&aBlock);

      v13 = [v17 initWithIdentifiers:v7 block:v18];
      _Block_release(v18);

      LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    v63 = a1;
    v19 = objc_allocWithZone(MPModelSong);
    v77 = UIScreen.Dimensions.size.getter;
    v78 = 0;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_41A314;
    v76 = &block_descriptor_454;
    v20 = _Block_copy(&aBlock);
    v21 = [v19 initWithIdentifiers:v7 block:v20];
    _Block_release(v20);

    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      __chkstk_darwin();
      v62 = v21;
      v22 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v23 = swift_allocObject();
      *(v23 + 16) = sub_9CCCC4;
      *(v23 + 24) = v61;
      v77 = sub_445458;
      v78 = v23;
      aBlock = _NSConcreteStackBlock;
      v74 = 1107296256;
      v75 = sub_41A314;
      v76 = &block_descriptor_461;
      v24 = _Block_copy(&aBlock);

      v13 = [v22 initWithIdentifiers:v7 block:v24];
      _Block_release(v24);

      LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

      if ((v24 & 1) == 0)
      {
LABEL_15:
        if (v13)
        {
          v25 = sub_97E70(_swiftEmptyArrayStorage);
          v26 = *(v2 + v4);
          if (v26 != 15)
          {
            *&v66 = 1684957547;
            *(&v66 + 1) = 0xE400000000000000;
            sub_ABAD10();
            v27 = JSIdentifierSet.ContentKind.rawValue.getter(v26);
            v67 = &type metadata for String;
            *&v66 = v27;
            *(&v66 + 1) = v28;
            sub_9ACFC(&v66, v65);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v72 = v25;
            sub_913C0(v65, &aBlock, isUniquelyReferenced_nonNull_native);
            sub_8085C(&aBlock);
            v25 = v72;
          }

          v30 = (v2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID);
          swift_beginAccess();
          if ((v30[1] & 1) == 0)
          {
            v31 = *v30;
            *&v66 = 0x644961676173;
            *(&v66 + 1) = 0xE600000000000000;
            sub_ABAD10();
            v32 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v31];
            v67 = sub_13C80(0, &qword_DF1300);
            *&v66 = v32;
            sub_9ACFC(&v66, v65);
            v33 = swift_isUniquelyReferenced_nonNull_native();
            v71 = v25;
            sub_913C0(v65, &aBlock, v33);
            sub_8085C(&aBlock);
            v25 = v71;
          }

          v34 = (v2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudAlbumID);
          swift_beginAccess();
          v35 = v34[1];
          if (v35)
          {
            v36 = *v34;
            strcpy(&v66, "libraryAlbumId");
            HIBYTE(v66) = -18;

            sub_ABAD10();
            v67 = &type metadata for String;
            *&v66 = v36;
            *(&v66 + 1) = v35;
            sub_9ACFC(&v66, v65);
            v37 = swift_isUniquelyReferenced_nonNull_native();
            v70 = v25;
            sub_913C0(v65, &aBlock, v37);
            sub_8085C(&aBlock);
            v25 = v70;
          }

          v38 = (v2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
          swift_beginAccess();
          v39 = v38[1];
          if (v39)
          {
            v40 = *v38;
            *&v66 = 0xD000000000000010;
            *(&v66 + 1) = 0x8000000000B7ECF0;
            swift_bridgeObjectRetain_n();
            sub_ABAD10();
            v67 = &type metadata for String;
            *&v66 = v40;
            *(&v66 + 1) = v39;
            sub_9ACFC(&v66, v65);
            v41 = swift_isUniquelyReferenced_nonNull_native();
            v69 = v25;
            sub_913C0(v65, &aBlock, v41);
            sub_8085C(&aBlock);
            v25 = v69;
          }

          else
          {
            v40 = 0;
          }

          v42 = v2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID;
          swift_beginAccess();
          if ((*(v42 + 8) & 1) == 0)
          {
            v43 = *v42;

            *&v66 = 0x6573616863727570;
            *(&v66 + 1) = 0xEF64496D61644164;
            sub_ABAD10();
            v44 = [objc_allocWithZone(NSNumber) initWithLongLong:v43];
            v67 = sub_13C80(0, &qword_DF1300);
            *&v66 = v44;
            sub_9ACFC(&v66, v65);
            v45 = swift_isUniquelyReferenced_nonNull_native();
            v68 = v25;
            sub_913C0(v65, &aBlock, v45);
            sub_8085C(&aBlock);
            v25 = v68;
            aBlock = v43;
            v40 = sub_ABB330();
            v39 = v46;
          }

          v47 = (v2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID);
          swift_beginAccess();
          v48 = v47[1];
          if (v48)
          {
            v49 = *v47;
            if (*(v2 + v4) == 1)
            {
              *&v66 = 0xD000000000000011;
              *(&v66 + 1) = 0x8000000000B7ECD0;
            }

            else
            {
              strcpy(&v66, "libraryTrackId");
              HIBYTE(v66) = -18;
            }

            sub_ABAD10();
            v67 = &type metadata for String;
            *&v66 = v49;
            *(&v66 + 1) = v48;
            sub_9ACFC(&v66, v65);
            v50 = swift_isUniquelyReferenced_nonNull_native();
            v64 = v25;
            sub_913C0(v65, &aBlock, v50);
            sub_8085C(&aBlock);
          }

          v51 = objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
          isa = sub_AB8FD0().super.isa;
          v53 = [v51 initWithStorePlatformDictionary:isa];

          v54 = [v13 innermostModelObject];
          (*&stru_68.segname[(swift_isaMask & *v53) - 8])(v54);
          (*&stru_68.segname[(swift_isaMask & *v53) + 16])(v40, v39);
          v55 = objc_allocWithZone(MPModelStoreBrowseContentItemBuilder);
          result = [v55 initWithRequestedPropertySet:v63];
          if (result)
          {
            v56 = result;

            sub_13C80(0, &unk_DF2B00);
            v57 = v53;
            v58 = v13;
            v59 = static ICUserIdentity.active.getter();
            v60 = [v56 modelObjectWithStoreItemMetadata:v57 sourceModelObject:v58 userIdentity:v59];

            return v60;
          }

LABEL_40:
          __break(1u);
          return result;
        }

LABEL_24:

        return 0;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  return result;
}