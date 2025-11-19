uint64_t sub_1002C3C50(char a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_1002C43B8;
  }

  else
  {
    *(v4 + 419) = a1 & 1;
    v5 = sub_1002C3D7C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C3D7C()
{
  v46 = v0;
  if (*(v0 + 419) == 1)
  {
    v1 = *(v0 + 380);
    v2 = *(v0 + 372);
    v3 = *(v0 + 364);
    v4 = *(v0 + 356);
    v5 = *(v0 + 48);
    v44 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 376);
    v7 = *(v0 + 368);
    v8 = *(v0 + 360);
    v9 = *(v0 + 352);
    v10 = swift_task_alloc();
    *(v0 + 304) = v10;
    *v10 = v0;
    v10[1] = sub_1002C4864;
    v11 = *(v0 + 272);

    return v44(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 216);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  if (v15)
  {
    v43 = *(v0 + 176);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    *v19 = 136315394;
    v22 = StaticString.description.getter();
    v24 = sub_1002346CC(v22, v23, &v45);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v20 = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Error in %s: %{public}@", v19, 0x16u);
    sub_1000032A8(v20, &qword_10077F920);

    sub_10000710C(v21);

    (*(v18 + 8))(v16, v43);
  }

  else
  {

    (*(v18 + 8))(v16, v17);
  }

  v26 = *(v0 + 280);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v31 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v29);
  (*(v30 + 16))(v26, v29, v31);
  (*(v28 + 104))(v26, enum case for MarketplaceKitServiceResult.failure<A>(_:), v27);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
LABEL_13:

    goto LABEL_14;
  }

  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(v0 + 152);
  if (!*(v0 + 48))
  {
    (*(v33 + 8))(*(v0 + 168), *(v0 + 152));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v35);

  (*(v33 + 8))(v32, v34);
LABEL_14:
  sub_100213FA0(&qword_10077FAE0, &qword_10077FAC8);
  sub_100213FA0(&qword_10077FAE8, &qword_10077FAC8);
  v36 = encodeXPCValues<A>(_:)();
  v38 = v37;
  v39 = *(v0 + 280);
  v40 = *(v0 + 256);
  v41 = *(v0 + 264);
  (*(v0 + 104))(v36, v37);
  sub_100007158(v36, v38);
  (*(v41 + 8))(v39, v40);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1002C43B8()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FAE0, &qword_10077FAC8);
  sub_100213FA0(&qword_10077FAE8, &qword_10077FAC8);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002C4864()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002C4B90;
  }

  else
  {
    v2 = sub_1002C4978;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C4978()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for MarketplaceKitServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 312);
  sub_100213FA0(&qword_10077FAE0, &qword_10077FAC8);
  sub_100213FA0(&qword_10077FAE8, &qword_10077FAC8);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002C4B90()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FAE0, &qword_10077FAC8);
  sub_100213FA0(&qword_10077FAE8, &qword_10077FAC8);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002C503C(char a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1002C5790;
  }

  else
  {
    *(v4 + 420) = a1 & 1;
    v5 = sub_1002C5168;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C5168()
{
  v47 = v0;
  if (*(v0 + 420) == 1)
  {
    v1 = *(v0 + 412);
    v2 = *(v0 + 404);
    v3 = *(v0 + 396);
    v4 = *(v0 + 388);
    v5 = *(v0 + 48);
    v45 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 408);
    v7 = *(v0 + 400);
    v8 = *(v0 + 392);
    v9 = *(v0 + 384);
    v10 = swift_task_alloc();
    *(v0 + 336) = v10;
    *v10 = v0;
    v10[1] = sub_1002C5C28;
    v11 = *(v0 + 240);

    return v45(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  v13 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 184);
  if (v16)
  {
    v44 = *(v0 + 176);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v20 = 136315394;
    v23 = StaticString.description.getter();
    v25 = sub_1002346CC(v23, v24, &v46);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v21 = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error in %s: %{public}@", v20, 0x16u);
    sub_1000032A8(v21, &qword_10077F920);

    sub_10000710C(v22);

    (*(v19 + 8))(v17, v44);
  }

  else
  {

    (*(v19 + 8))(v17, v18);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v32 = *(v0 + 128);
  sub_100296AD4(v13, v30);
  (*(v31 + 16))(v27, v30, v32);
  (*(v29 + 104))(v27, enum case for ServiceResult.failure<A>(_:), v28);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
LABEL_13:

    goto LABEL_14;
  }

  v34 = *(v0 + 136);
  v33 = *(v0 + 144);
  v35 = *(v0 + 128);
  if (!*(v0 + 48))
  {
    (*(v34 + 8))(*(v0 + 144), *(v0 + 128));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v36);

  (*(v34 + 8))(v33, v35);
LABEL_14:
  sub_100213FA0(&qword_10077FAD0, &qword_10077FAC0);
  sub_100213FA0(&qword_10077FAD8, &qword_10077FAC0);
  v37 = encodeXPCValues<A>(_:)();
  v39 = v38;
  v40 = *(v0 + 248);
  v41 = *(v0 + 224);
  v42 = *(v0 + 232);
  (*(v0 + 104))(v37, v38);
  sub_100007158(v37, v39);
  (*(v42 + 8))(v40, v41);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1002C5790()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 328);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FAD0, &qword_10077FAC0);
  sub_100213FA0(&qword_10077FAD8, &qword_10077FAC0);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002C5C28()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1002C5F54;
  }

  else
  {
    v2 = sub_1002C5D3C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C5D3C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 344);
  sub_100213FA0(&qword_10077FAD0, &qword_10077FAC0);
  sub_100213FA0(&qword_10077FAD8, &qword_10077FAC0);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002C5F54()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 344);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FAD0, &qword_10077FAC0);
  sub_100213FA0(&qword_10077FAD8, &qword_10077FAC0);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002C63EC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v19;
  *(v8 + 104) = v18;
  *(v8 + 418) = v17;
  *(v8 + 88) = v16;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 417) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 48) = a3;
  *(v8 + 416) = a2;
  v9 = type metadata accessor for ManagedAppDistributionError();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for MarketplaceKitError();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v12 = sub_1001F0C48(&qword_10077F8F0);
  *(v8 + 224) = v12;
  *(v8 + 232) = *(v12 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v13 = sub_1001F0C48(&qword_10077F8F8);
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1002C66A4, 0, 0);
}

uint64_t sub_1002C66A4()
{
  v103 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 416) != 1)
  {
    if (v1)
    {
      v24 = *(v0 + 56);
      if ((v24[8] & 1) == 0)
      {
        v101 = *(v0 + 417);
        v81 = v24[7];
        *(v0 + 384) = v81;
        v82 = v24[6];
        *(v0 + 388) = v82;
        v83 = v24[5];
        *(v0 + 392) = v83;
        v84 = v24[4];
        *(v0 + 396) = v84;
        v85 = v24[3];
        *(v0 + 400) = v85;
        v86 = v24[2];
        *(v0 + 404) = v86;
        v87 = v24[1];
        *(v0 + 408) = v87;
        v88 = *v24;
        *(v0 + 412) = v88;
        swift_unknownObjectRetain();
        v75 = swift_task_alloc();
        v76 = v88 | (v87 << 32);
        *(v0 + 320) = v75;
        v77 = v86 | (v85 << 32);
        v78 = v84 | (v83 << 32);
        v79 = v82 | (v81 << 32);
        *v75 = v0;
        v80 = sub_1002C8728;
        goto LABEL_26;
      }
    }

    static Logger.xpc.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = sub_100625FA0();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Unable to obtain XPC connection, client, and audit token", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
    }

    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);

    (*(v31 + 8))(v30, v32);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    v33 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 200);
    v38 = *(v0 + 176);
    v39 = *(v0 + 184);
    if (v36)
    {
      v100 = *(v0 + 176);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v102[0] = v42;
      *v40 = 136315394;
      v43 = StaticString.description.getter();
      v45 = sub_1002346CC(v43, v44, v102);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2114;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v46;
      *v41 = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error in %s: %{public}@", v40, 0x16u);
      sub_1000032A8(v41, &qword_10077F920);

      sub_10000710C(v42);

      (*(v39 + 8))(v37, v100);
    }

    else
    {

      (*(v39 + 8))(v37, v38);
    }

    v57 = *(v0 + 248);
    v58 = *(v0 + 224);
    v59 = *(v0 + 232);
    v61 = *(v0 + 136);
    v60 = *(v0 + 144);
    v62 = *(v0 + 128);
    sub_100296AD4(v33, v60);
    (*(v61 + 16))(v57, v60, v62);
    (*(v59 + 104))(v57, enum case for ServiceResult.failure<A>(_:), v58);
    if (os_variant_has_internal_content())
    {
      v64 = *(v0 + 136);
      v63 = *(v0 + 144);
      v65 = *(v0 + 128);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
        v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v66);

        (*(v64 + 8))(v63, v65);
LABEL_34:
        sub_100213FA0(&qword_10077F908, &qword_10077F8F0);
        sub_100213FA0(&qword_10077F910, &qword_10077F8F0);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v97;
        v94 = *(v0 + 248);
        v95 = *(v0 + 224);
        v96 = *(v0 + 232);
        goto LABEL_35;
      }

      (*(v64 + 8))(*(v0 + 144), *(v0 + 128));
    }

    else
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    }

    goto LABEL_34;
  }

  if (!v1 || (v2 = *(v0 + 56), (v2[8] & 1) != 0))
  {
    static Logger.xpc.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = sub_100625FA0();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Unable to obtain XPC connection, client, and audit token", v5, 0xCu);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);

    (*(v10 + 8))(v8, v9);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    if (v13)
    {
      v99 = *(v0 + 176);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v102[0] = v19;
      *v17 = 136315394;
      v20 = StaticString.description.getter();
      v22 = sub_1002346CC(v20, v21, v102);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2114;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error in %s: %{public}@", v17, 0x16u);
      sub_1000032A8(v18, &qword_10077F920);

      sub_10000710C(v19);

      (*(v16 + 8))(v14, v99);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v47 = *(v0 + 280);
    v48 = *(v0 + 256);
    v49 = *(v0 + 264);
    v51 = *(v0 + 160);
    v50 = *(v0 + 168);
    v52 = *(v0 + 152);
    swift_getErrorValue();
    sub_1004B53F8(*(v0 + 24), *(v0 + 32), v50);
    (*(v51 + 16))(v47, v50, v52);
    (*(v49 + 104))(v47, enum case for MarketplaceKitServiceResult.failure<A>(_:), v48);
    if (os_variant_has_internal_content())
    {
      v54 = *(v0 + 160);
      v53 = *(v0 + 168);
      v55 = *(v0 + 152);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
        v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v56);

        (*(v54 + 8))(v53, v55);
LABEL_31:
        sub_100213FA0(&qword_10077F928, &qword_10077F8F8);
        sub_100213FA0(&qword_10077F930, &qword_10077F8F8);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v92;
        v94 = *(v0 + 280);
        v95 = *(v0 + 256);
        v96 = *(v0 + 264);
LABEL_35:
        (*(v0 + 104))(v91, v93);
        sub_100007158(v91, v93);
        (*(v96 + 8))(v94, v95);

        v98 = *(v0 + 8);

        return v98();
      }

      (*(v54 + 8))(*(v0 + 168), *(v0 + 152));
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    }

    goto LABEL_31;
  }

  v101 = *(v0 + 417);
  v67 = v2[7];
  *(v0 + 352) = v67;
  v68 = v2[6];
  *(v0 + 356) = v68;
  v69 = v2[5];
  *(v0 + 360) = v69;
  v70 = v2[4];
  *(v0 + 364) = v70;
  v71 = v2[3];
  *(v0 + 368) = v71;
  v72 = v2[2];
  *(v0 + 372) = v72;
  v73 = v2[1];
  *(v0 + 376) = v73;
  v74 = *v2;
  *(v0 + 380) = v74;
  swift_unknownObjectRetain();
  v75 = swift_task_alloc();
  v76 = v74 | (v73 << 32);
  *(v0 + 288) = v75;
  v77 = v72 | (v71 << 32);
  v78 = v70 | (v69 << 32);
  v79 = v68 | (v67 << 32);
  *v75 = v0;
  v80 = sub_1002C733C;
LABEL_26:
  v75[1] = v80;
  v89 = *(v0 + 64);

  return sub_100322914(v89, v101 & 1, v76, v77, v78, v79);
}

uint64_t sub_1002C733C(char a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_1002C7AA4;
  }

  else
  {
    *(v4 + 419) = a1 & 1;
    v5 = sub_1002C7468;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C7468()
{
  v46 = v0;
  if (*(v0 + 419) == 1)
  {
    v1 = *(v0 + 380);
    v2 = *(v0 + 372);
    v3 = *(v0 + 364);
    v4 = *(v0 + 356);
    v5 = *(v0 + 48);
    v44 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 376);
    v7 = *(v0 + 368);
    v8 = *(v0 + 360);
    v9 = *(v0 + 352);
    v10 = swift_task_alloc();
    *(v0 + 304) = v10;
    *v10 = v0;
    v10[1] = sub_1002C7F50;
    v11 = *(v0 + 272);

    return v44(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 216);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  if (v15)
  {
    v43 = *(v0 + 176);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    *v19 = 136315394;
    v22 = StaticString.description.getter();
    v24 = sub_1002346CC(v22, v23, &v45);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v20 = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Error in %s: %{public}@", v19, 0x16u);
    sub_1000032A8(v20, &qword_10077F920);

    sub_10000710C(v21);

    (*(v18 + 8))(v16, v43);
  }

  else
  {

    (*(v18 + 8))(v16, v17);
  }

  v26 = *(v0 + 280);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v31 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v29);
  (*(v30 + 16))(v26, v29, v31);
  (*(v28 + 104))(v26, enum case for MarketplaceKitServiceResult.failure<A>(_:), v27);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
LABEL_13:

    goto LABEL_14;
  }

  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(v0 + 152);
  if (!*(v0 + 48))
  {
    (*(v33 + 8))(*(v0 + 168), *(v0 + 152));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v35);

  (*(v33 + 8))(v32, v34);
LABEL_14:
  sub_100213FA0(&qword_10077F928, &qword_10077F8F8);
  sub_100213FA0(&qword_10077F930, &qword_10077F8F8);
  v36 = encodeXPCValues<A>(_:)();
  v38 = v37;
  v39 = *(v0 + 280);
  v40 = *(v0 + 256);
  v41 = *(v0 + 264);
  (*(v0 + 104))(v36, v37);
  sub_100007158(v36, v38);
  (*(v41 + 8))(v39, v40);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1002C7AA4()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077F928, &qword_10077F8F8);
  sub_100213FA0(&qword_10077F930, &qword_10077F8F8);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002C7F50()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002C827C;
  }

  else
  {
    v2 = sub_1002C8064;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C8064()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for MarketplaceKitServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 312);
  sub_100213FA0(&qword_10077F928, &qword_10077F8F8);
  sub_100213FA0(&qword_10077F930, &qword_10077F8F8);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002C827C()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077F928, &qword_10077F8F8);
  sub_100213FA0(&qword_10077F930, &qword_10077F8F8);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002C8728(char a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1002C8E7C;
  }

  else
  {
    *(v4 + 420) = a1 & 1;
    v5 = sub_1002C8854;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C8854()
{
  v47 = v0;
  if (*(v0 + 420) == 1)
  {
    v1 = *(v0 + 412);
    v2 = *(v0 + 404);
    v3 = *(v0 + 396);
    v4 = *(v0 + 388);
    v5 = *(v0 + 48);
    v45 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 408);
    v7 = *(v0 + 400);
    v8 = *(v0 + 392);
    v9 = *(v0 + 384);
    v10 = swift_task_alloc();
    *(v0 + 336) = v10;
    *v10 = v0;
    v10[1] = sub_1002C9314;
    v11 = *(v0 + 240);

    return v45(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  v13 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 184);
  if (v16)
  {
    v44 = *(v0 + 176);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v20 = 136315394;
    v23 = StaticString.description.getter();
    v25 = sub_1002346CC(v23, v24, &v46);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v21 = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error in %s: %{public}@", v20, 0x16u);
    sub_1000032A8(v21, &qword_10077F920);

    sub_10000710C(v22);

    (*(v19 + 8))(v17, v44);
  }

  else
  {

    (*(v19 + 8))(v17, v18);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v32 = *(v0 + 128);
  sub_100296AD4(v13, v30);
  (*(v31 + 16))(v27, v30, v32);
  (*(v29 + 104))(v27, enum case for ServiceResult.failure<A>(_:), v28);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
LABEL_13:

    goto LABEL_14;
  }

  v34 = *(v0 + 136);
  v33 = *(v0 + 144);
  v35 = *(v0 + 128);
  if (!*(v0 + 48))
  {
    (*(v34 + 8))(*(v0 + 144), *(v0 + 128));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v36);

  (*(v34 + 8))(v33, v35);
LABEL_14:
  sub_100213FA0(&qword_10077F908, &qword_10077F8F0);
  sub_100213FA0(&qword_10077F910, &qword_10077F8F0);
  v37 = encodeXPCValues<A>(_:)();
  v39 = v38;
  v40 = *(v0 + 248);
  v41 = *(v0 + 224);
  v42 = *(v0 + 232);
  (*(v0 + 104))(v37, v38);
  sub_100007158(v37, v39);
  (*(v42 + 8))(v40, v41);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1002C8E7C()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 328);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077F908, &qword_10077F8F0);
  sub_100213FA0(&qword_10077F910, &qword_10077F8F0);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002C9314()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1002C9640;
  }

  else
  {
    v2 = sub_1002C9428;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C9428()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 344);
  sub_100213FA0(&qword_10077F908, &qword_10077F8F0);
  sub_100213FA0(&qword_10077F910, &qword_10077F8F0);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002C9640()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 344);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077F908, &qword_10077F8F0);
  sub_100213FA0(&qword_10077F910, &qword_10077F8F0);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002C9AD8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v19;
  *(v8 + 104) = v18;
  *(v8 + 418) = v17;
  *(v8 + 88) = v16;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 417) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 48) = a3;
  *(v8 + 416) = a2;
  v9 = type metadata accessor for ManagedAppDistributionError();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for MarketplaceKitError();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v12 = sub_1001F0C48(&qword_10077FA08);
  *(v8 + 224) = v12;
  *(v8 + 232) = *(v12 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v13 = sub_1001F0C48(&qword_10077FA10);
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1002C9D90, 0, 0);
}

uint64_t sub_1002C9D90()
{
  v103 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 416) != 1)
  {
    if (v1)
    {
      v24 = *(v0 + 56);
      if ((v24[8] & 1) == 0)
      {
        v101 = *(v0 + 417);
        v81 = v24[7];
        *(v0 + 384) = v81;
        v82 = v24[6];
        *(v0 + 388) = v82;
        v83 = v24[5];
        *(v0 + 392) = v83;
        v84 = v24[4];
        *(v0 + 396) = v84;
        v85 = v24[3];
        *(v0 + 400) = v85;
        v86 = v24[2];
        *(v0 + 404) = v86;
        v87 = v24[1];
        *(v0 + 408) = v87;
        v88 = *v24;
        *(v0 + 412) = v88;
        swift_unknownObjectRetain();
        v75 = swift_task_alloc();
        v76 = v88 | (v87 << 32);
        *(v0 + 320) = v75;
        v77 = v86 | (v85 << 32);
        v78 = v84 | (v83 << 32);
        v79 = v82 | (v81 << 32);
        *v75 = v0;
        v80 = sub_1002CBE14;
        goto LABEL_26;
      }
    }

    static Logger.xpc.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = sub_100625FA0();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Unable to obtain XPC connection, client, and audit token", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
    }

    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);

    (*(v31 + 8))(v30, v32);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    v33 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 200);
    v38 = *(v0 + 176);
    v39 = *(v0 + 184);
    if (v36)
    {
      v100 = *(v0 + 176);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v102[0] = v42;
      *v40 = 136315394;
      v43 = StaticString.description.getter();
      v45 = sub_1002346CC(v43, v44, v102);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2114;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v46;
      *v41 = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error in %s: %{public}@", v40, 0x16u);
      sub_1000032A8(v41, &qword_10077F920);

      sub_10000710C(v42);

      (*(v39 + 8))(v37, v100);
    }

    else
    {

      (*(v39 + 8))(v37, v38);
    }

    v57 = *(v0 + 248);
    v58 = *(v0 + 224);
    v59 = *(v0 + 232);
    v61 = *(v0 + 136);
    v60 = *(v0 + 144);
    v62 = *(v0 + 128);
    sub_100296AD4(v33, v60);
    (*(v61 + 16))(v57, v60, v62);
    (*(v59 + 104))(v57, enum case for ServiceResult.failure<A>(_:), v58);
    if (os_variant_has_internal_content())
    {
      v64 = *(v0 + 136);
      v63 = *(v0 + 144);
      v65 = *(v0 + 128);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
        v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v66);

        (*(v64 + 8))(v63, v65);
LABEL_34:
        sub_100213FA0(&qword_10077FA18, &qword_10077FA08);
        sub_100213FA0(&qword_10077FA20, &qword_10077FA08);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v97;
        v94 = *(v0 + 248);
        v95 = *(v0 + 224);
        v96 = *(v0 + 232);
        goto LABEL_35;
      }

      (*(v64 + 8))(*(v0 + 144), *(v0 + 128));
    }

    else
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    }

    goto LABEL_34;
  }

  if (!v1 || (v2 = *(v0 + 56), (v2[8] & 1) != 0))
  {
    static Logger.xpc.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = sub_100625FA0();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Unable to obtain XPC connection, client, and audit token", v5, 0xCu);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);

    (*(v10 + 8))(v8, v9);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    if (v13)
    {
      v99 = *(v0 + 176);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v102[0] = v19;
      *v17 = 136315394;
      v20 = StaticString.description.getter();
      v22 = sub_1002346CC(v20, v21, v102);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2114;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error in %s: %{public}@", v17, 0x16u);
      sub_1000032A8(v18, &qword_10077F920);

      sub_10000710C(v19);

      (*(v16 + 8))(v14, v99);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v47 = *(v0 + 280);
    v48 = *(v0 + 256);
    v49 = *(v0 + 264);
    v51 = *(v0 + 160);
    v50 = *(v0 + 168);
    v52 = *(v0 + 152);
    swift_getErrorValue();
    sub_1004B53F8(*(v0 + 24), *(v0 + 32), v50);
    (*(v51 + 16))(v47, v50, v52);
    (*(v49 + 104))(v47, enum case for MarketplaceKitServiceResult.failure<A>(_:), v48);
    if (os_variant_has_internal_content())
    {
      v54 = *(v0 + 160);
      v53 = *(v0 + 168);
      v55 = *(v0 + 152);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
        v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v56);

        (*(v54 + 8))(v53, v55);
LABEL_31:
        sub_100213FA0(&qword_10077FA28, &qword_10077FA10);
        sub_100213FA0(&qword_10077FA30, &qword_10077FA10);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v92;
        v94 = *(v0 + 280);
        v95 = *(v0 + 256);
        v96 = *(v0 + 264);
LABEL_35:
        (*(v0 + 104))(v91, v93);
        sub_100007158(v91, v93);
        (*(v96 + 8))(v94, v95);

        v98 = *(v0 + 8);

        return v98();
      }

      (*(v54 + 8))(*(v0 + 168), *(v0 + 152));
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    }

    goto LABEL_31;
  }

  v101 = *(v0 + 417);
  v67 = v2[7];
  *(v0 + 352) = v67;
  v68 = v2[6];
  *(v0 + 356) = v68;
  v69 = v2[5];
  *(v0 + 360) = v69;
  v70 = v2[4];
  *(v0 + 364) = v70;
  v71 = v2[3];
  *(v0 + 368) = v71;
  v72 = v2[2];
  *(v0 + 372) = v72;
  v73 = v2[1];
  *(v0 + 376) = v73;
  v74 = *v2;
  *(v0 + 380) = v74;
  swift_unknownObjectRetain();
  v75 = swift_task_alloc();
  v76 = v74 | (v73 << 32);
  *(v0 + 288) = v75;
  v77 = v72 | (v71 << 32);
  v78 = v70 | (v69 << 32);
  v79 = v68 | (v67 << 32);
  *v75 = v0;
  v80 = sub_1002CAA28;
LABEL_26:
  v75[1] = v80;
  v89 = *(v0 + 64);

  return sub_100322914(v89, v101 & 1, v76, v77, v78, v79);
}

uint64_t sub_1002CAA28(char a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_1002CB190;
  }

  else
  {
    *(v4 + 419) = a1 & 1;
    v5 = sub_1002CAB54;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002CAB54()
{
  v46 = v0;
  if (*(v0 + 419) == 1)
  {
    v1 = *(v0 + 380);
    v2 = *(v0 + 372);
    v3 = *(v0 + 364);
    v4 = *(v0 + 356);
    v5 = *(v0 + 48);
    v44 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 376);
    v7 = *(v0 + 368);
    v8 = *(v0 + 360);
    v9 = *(v0 + 352);
    v10 = swift_task_alloc();
    *(v0 + 304) = v10;
    *v10 = v0;
    v10[1] = sub_1002CB63C;
    v11 = *(v0 + 272);

    return v44(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 216);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  if (v15)
  {
    v43 = *(v0 + 176);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    *v19 = 136315394;
    v22 = StaticString.description.getter();
    v24 = sub_1002346CC(v22, v23, &v45);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v20 = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Error in %s: %{public}@", v19, 0x16u);
    sub_1000032A8(v20, &qword_10077F920);

    sub_10000710C(v21);

    (*(v18 + 8))(v16, v43);
  }

  else
  {

    (*(v18 + 8))(v16, v17);
  }

  v26 = *(v0 + 280);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v31 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v29);
  (*(v30 + 16))(v26, v29, v31);
  (*(v28 + 104))(v26, enum case for MarketplaceKitServiceResult.failure<A>(_:), v27);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
LABEL_13:

    goto LABEL_14;
  }

  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(v0 + 152);
  if (!*(v0 + 48))
  {
    (*(v33 + 8))(*(v0 + 168), *(v0 + 152));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v35);

  (*(v33 + 8))(v32, v34);
LABEL_14:
  sub_100213FA0(&qword_10077FA28, &qword_10077FA10);
  sub_100213FA0(&qword_10077FA30, &qword_10077FA10);
  v36 = encodeXPCValues<A>(_:)();
  v38 = v37;
  v39 = *(v0 + 280);
  v40 = *(v0 + 256);
  v41 = *(v0 + 264);
  (*(v0 + 104))(v36, v37);
  sub_100007158(v36, v38);
  (*(v41 + 8))(v39, v40);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1002CB190()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FA28, &qword_10077FA10);
  sub_100213FA0(&qword_10077FA30, &qword_10077FA10);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002CB63C()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002CB968;
  }

  else
  {
    v2 = sub_1002CB750;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CB750()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for MarketplaceKitServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 312);
  sub_100213FA0(&qword_10077FA28, &qword_10077FA10);
  sub_100213FA0(&qword_10077FA30, &qword_10077FA10);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002CB968()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FA28, &qword_10077FA10);
  sub_100213FA0(&qword_10077FA30, &qword_10077FA10);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002CBE14(char a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1002CC568;
  }

  else
  {
    *(v4 + 420) = a1 & 1;
    v5 = sub_1002CBF40;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002CBF40()
{
  v47 = v0;
  if (*(v0 + 420) == 1)
  {
    v1 = *(v0 + 412);
    v2 = *(v0 + 404);
    v3 = *(v0 + 396);
    v4 = *(v0 + 388);
    v5 = *(v0 + 48);
    v45 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 408);
    v7 = *(v0 + 400);
    v8 = *(v0 + 392);
    v9 = *(v0 + 384);
    v10 = swift_task_alloc();
    *(v0 + 336) = v10;
    *v10 = v0;
    v10[1] = sub_1002CCA00;
    v11 = *(v0 + 240);

    return v45(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  v13 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 184);
  if (v16)
  {
    v44 = *(v0 + 176);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v20 = 136315394;
    v23 = StaticString.description.getter();
    v25 = sub_1002346CC(v23, v24, &v46);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v21 = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error in %s: %{public}@", v20, 0x16u);
    sub_1000032A8(v21, &qword_10077F920);

    sub_10000710C(v22);

    (*(v19 + 8))(v17, v44);
  }

  else
  {

    (*(v19 + 8))(v17, v18);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v32 = *(v0 + 128);
  sub_100296AD4(v13, v30);
  (*(v31 + 16))(v27, v30, v32);
  (*(v29 + 104))(v27, enum case for ServiceResult.failure<A>(_:), v28);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
LABEL_13:

    goto LABEL_14;
  }

  v34 = *(v0 + 136);
  v33 = *(v0 + 144);
  v35 = *(v0 + 128);
  if (!*(v0 + 48))
  {
    (*(v34 + 8))(*(v0 + 144), *(v0 + 128));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v36);

  (*(v34 + 8))(v33, v35);
LABEL_14:
  sub_100213FA0(&qword_10077FA18, &qword_10077FA08);
  sub_100213FA0(&qword_10077FA20, &qword_10077FA08);
  v37 = encodeXPCValues<A>(_:)();
  v39 = v38;
  v40 = *(v0 + 248);
  v41 = *(v0 + 224);
  v42 = *(v0 + 232);
  (*(v0 + 104))(v37, v38);
  sub_100007158(v37, v39);
  (*(v42 + 8))(v40, v41);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1002CC568()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 328);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FA18, &qword_10077FA08);
  sub_100213FA0(&qword_10077FA20, &qword_10077FA08);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002CCA00()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1002CCD2C;
  }

  else
  {
    v2 = sub_1002CCB14;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CCB14()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 344);
  sub_100213FA0(&qword_10077FA18, &qword_10077FA08);
  sub_100213FA0(&qword_10077FA20, &qword_10077FA08);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002CCD2C()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 344);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FA18, &qword_10077FA08);
  sub_100213FA0(&qword_10077FA20, &qword_10077FA08);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002CD1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  *(v7 + 16) = a1;
  v15 = (a7 + *a7);
  v13 = swift_task_alloc();
  *(v7 + 24) = v13;
  *v13 = v7;
  v13[1] = sub_1002CD2EC;

  return v15(a2, a3, a4, a5, a6);
}

uint64_t sub_1002CD2EC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100302ED0, 0, 0);
  }
}

uint64_t sub_1002CD454()
{
  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CD528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  *(v7 + 16) = a1;
  v15 = (a7 + *a7);
  v13 = swift_task_alloc();
  *(v7 + 24) = v13;
  *v13 = v7;
  v13[1] = sub_1002CD650;

  return v15(a2, a3, a4, a5, a6);
}

uint64_t sub_1002CD650()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1002CD780, 0, 0);
  }
}

id sub_1002CD7D4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for Service()
{
  result = qword_10077F8B0;
  if (!qword_10077F8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002CD8D4()
{
  result = type metadata accessor for BagService();
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

uint64_t sub_1002CD97C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v52 = *(v13 - 8);
  v14 = *(v52 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v54 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = enum case for LogKey.Prefix.appReview(_:);
  v19 = type metadata accessor for LogKey.Prefix();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v56 = sub_1001F6740(&off_100758470);
  sub_1002FC188(&unk_100758490);
  v21 = swift_allocObject();
  v21[2] = v4;
  v21[3] = a1;
  v21[4] = a2;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1006A0FD0;
  *(v22 + 24) = v21;
  v53 = v22;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = objc_opt_self();
  v25 = v4;
  v55 = v21;

  sub_10020ABFC(a1, a2);
  v26 = [v24 currentConnection];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v29 = swift_dynamicCast();
    v30 = v62;
    if (!v29)
    {
      v30 = 0;
    }

    v51 = v30;
    [v27 auditToken];
    v46 = v61;
    v49 = v60;
  }

  else
  {
    v51 = 0;
    v49 = 0u;
    v46 = 0u;
  }

  v63 = v27 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  v31 = v54;
  sub_100005934(v17, v54, &qword_10077F8D0);
  v32 = (v52[80] + 49) & ~v52[80];
  v33 = v32 + v14;
  v34 = (v32 + v14) & 0xFFFFFFFFFFFFFFF8;
  v48 = v10;
  v50 = v12;
  v52 = v17;
  v35 = (v34 + 75) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = v27;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = "Set distributor ID overridable";
  *(v37 + 40) = 30;
  *(v37 + 48) = 2;
  sub_10020A668(v31, v37 + v32, &qword_10077F8D0);
  *(v37 + v33) = 1;
  *(v37 + v34 + 8) = v51;
  v38 = v37 + ((v34 + 19) & 0xFFFFFFFFFFFFFFF8);
  v39 = v46;
  *v38 = v49;
  *(v38 + 16) = v39;
  *(v38 + 32) = v63;
  v40 = v37 + ((v34 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v40 = v56;
  *(v40 + 8) = 1;
  v41 = (v37 + v35);
  v42 = v53;
  *v41 = &unk_1006A0FD8;
  v41[1] = v42;
  v43 = (v37 + v36);
  v44 = v59;
  *v43 = v58;
  v43[1] = v44;
  *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v48, &unk_1006A0FE0, v37);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v52, &qword_10077F8D0);
}

uint64_t sub_1002CDF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[7] = a2;
  v9 = type metadata accessor for Logger();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[17] = v10;
  *v10 = v8;
  v10[1] = sub_1002CE02C;

  return sub_100324690((v8 + 2));
}

uint64_t sub_1002CE02C()
{

  return _swift_task_switch(sub_1002CE128, 0, 0);
}

uint64_t sub_1002CE128()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_100006D8C(v0 + 2, v2);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1002CE1F0;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002CE1F0(char a1)
{
  *(*v1 + 161) = a1;

  return _swift_task_switch(sub_1002CE2F0, 0, 0);
}

uint64_t sub_1002CE2F0()
{
  v25 = v0;
  if (*(v0 + 161) == 1)
  {
    decodeXPCValues<A>(from:)();
    v5 = *(v0 + 160);
    *(v0 + 162) = v5;
    static Logger.daemon.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = *(v0 + 112);
    if (v8)
    {
      v12 = *(v0 + 72);
      v21 = *(v0 + 80);
      v14 = *(v0 + 56);
      v13 = *(v0 + 64);
      v23 = *(v0 + 112);
      v15 = swift_slowAlloc();
      v22 = v9;
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136446466;
      v17 = audit_token_t.processDescription.getter(v14, v13, v12, v21);
      v19 = sub_1002346CC(v17, v18, &v24);

      *(v15 + 4) = v19;
      *(v15 + 12) = 1026;
      *(v15 + 14) = v5;
      sub_10000710C(v16);

      (*(v10 + 8))(v22, v23);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    v20 = *(*sub_100006D8C((*(v0 + 88) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(*(v0 + 88) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_distributor);
    *(v0 + 152) = v20;

    return _swift_task_switch(sub_1002CE60C, v20, 0);
  }

  else
  {
    v1 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, enum case for MarketplaceKitError.featureUnavailable(_:), v1);
    swift_willThrow();
    sub_10000710C(v0 + 16);

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1002CE60C()
{
  *(*(v0 + 152) + 112) = *(v0 + 162);
  v1 = [objc_opt_self() standardUserDefaults];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v3];

  return _swift_task_switch(sub_1002CE6FC, 0, 0);
}

uint64_t sub_1002CE6FC()
{
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CE7A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a3;
  v58 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v53 = *(v13 - 8);
  v14 = *(v53 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v55 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = enum case for LogKey.Prefix.general(_:);
  v19 = type metadata accessor for LogKey.Prefix();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v21 = swift_allocObject();
  v21[2] = v4;
  v21[3] = a1;
  v54 = v21;
  v21[4] = a2;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = objc_opt_self();
  v24 = v4;
  sub_10020ABFC(a1, a2);
  v25 = [v23 currentConnection];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v28 = swift_dynamicCast();
    v29 = v61;
    if (!v28)
    {
      v29 = 0;
    }

    v52 = v29;
    [v26 auditToken];
    v48 = v60;
    v49 = v59;
  }

  else
  {
    v52 = 0;
    v49 = 0u;
    v48 = 0u;
  }

  v62 = v26 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  v30 = v55;
  sub_100005934(v17, v55, &qword_10077F8D0);
  v31 = (v53[80] + 49) & ~v53[80];
  v50 = v26;
  v51 = v12;
  v32 = v31 + v14;
  v33 = (v31 + v14) & 0xFFFFFFFFFFFFFFF8;
  v53 = v17;
  v47 = v10;
  v34 = (v33 + 75) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = "Get distributor ID";
  *(v37 + 40) = 18;
  *(v37 + 48) = 2;
  sub_10020A668(v30, v37 + v31, &qword_10077F8D0);
  *(v37 + v32) = 1;
  *(v37 + v33 + 8) = v52;
  v38 = v37 + ((v33 + 19) & 0xFFFFFFFFFFFFFFF8);
  v39 = v48;
  *v38 = v49;
  *(v38 + 16) = v39;
  *(v38 + 32) = v62;
  v40 = v37 + ((v33 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v40 = &_swiftEmptySetSingleton;
  *(v40 + 8) = 1;
  v41 = (v37 + v34);
  v42 = v54;
  *v41 = &unk_1006A0F80;
  v41[1] = v42;
  v43 = (v37 + v35);
  v44 = v58;
  *v43 = v57;
  v43[1] = v44;
  *(v37 + v36) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v47, &unk_1006A0F90, v37);

  swift_unknownObjectRelease();

  sub_1000032A8(v51, &unk_100780380);
  return sub_1000032A8(v53, &qword_10077F8D0);
}

uint64_t sub_1002CECCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v13;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v8[9] = a1;
  v8[10] = a3;
  v9 = type metadata accessor for Logger();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[20] = v10;
  *v10 = v8;
  v10[1] = sub_1002CEDE4;

  return sub_100324690((v8 + 2));
}

uint64_t sub_1002CEDE4()
{

  return _swift_task_switch(sub_1002CEEE0, 0, 0);
}

uint64_t sub_1002CEEE0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_100006D8C(v0 + 2, v2);
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_1002CEFA8;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002CEFA8(char a1)
{
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_1002CF0A8, 0, 0);
}

uint64_t sub_1002CF0A8()
{
  v34 = v0;
  if (*(v0 + 200) == 1)
  {
    sub_1001F0C48(&unk_10077FA80);
    sub_100300844(&qword_10077FD30);
    sub_100300844(&qword_10077FD38);
    decodeXPCValues<A>(from:)();
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    *(v0 + 176) = v5;
    static Logger.daemon.getter();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    v12 = *(v0 + 136);
    if (v9)
    {
      v29 = *(v0 + 96);
      v30 = *(v0 + 104);
      v31 = *(v0 + 152);
      v32 = *(v0 + 136);
      v13 = v6;
      v15 = *(v0 + 80);
      v14 = *(v0 + 88);
      v16 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v16 = 136446466;
      v17 = v15;
      v6 = v13;
      v18 = audit_token_t.processDescription.getter(v17, v14, v29, v30);
      v20 = sub_1002346CC(v18, v19, v33);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      if (v5)
      {
        v21 = v5;
      }

      else
      {
        v13 = 0x29656E6F6E28;
        v21 = 0xE600000000000000;
      }

      v22 = sub_1002346CC(v13, v21, v33);

      *(v16 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v7, v8, "Getting distributor ID value for %{public}s with potential override %{public}s", v16, 0x16u);
      swift_arrayDestroy();

      (*(v11 + 8))(v31, v32);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v23 = swift_task_alloc();
    *(v0 + 184) = v23;
    *v23 = v0;
    v23[1] = sub_1002CF494;
    v24 = *(v0 + 104);
    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);

    return sub_1002CF6A4(v27, v28, v25, v26, v24, v6, v5);
  }

  else
  {
    v1 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, enum case for MarketplaceKitError.featureUnavailable(_:), v1);
    swift_willThrow();
    sub_10000710C(v0 + 16);

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1002CF494()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1002CF638;
  }

  else
  {
    v2 = sub_1002CF5C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CF5C8()
{
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CF638()
{
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CF6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return _swift_task_switch(sub_1002CF6D0, 0, 0);
}

uint64_t sub_1002CF6D0()
{
  v1 = audit_token_t.signingIdentifier.getter(v0[3], v0[4], v0[5], v0[6]);
  v0[10] = v2;
  if (v2)
  {
    v3 = v0[9];
    v0[11] = v1;
    v4 = *(*sub_100006D8C((v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_distributor);
    v0[12] = v4;

    return _swift_task_switch(sub_1002CF860, v4, 0);
  }

  else
  {
    v5 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for MarketplaceKitError.appNotInstalled(_:), v5);
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1002CF860()
{
  sub_100273508(v0[11], v0[10], v0[7], v0[8], v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002CF930(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a3;
  v58 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v52 = *(v13 - 8);
  v14 = *(v52 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = type metadata accessor for LogKey.Prefix();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v54 = sub_1001F6740(&off_1007584B0);
  swift_arrayDestroy();
  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = a1;
  v19[4] = a2;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1006A0F60;
  *(v21 + 24) = v19;
  v53 = v21;
  v22 = objc_opt_self();
  v23 = v4;
  v55 = v19;

  sub_10020ABFC(a1, a2);
  v24 = [v22 currentConnection];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v27 = swift_dynamicCast();
    v28 = v61;
    if (!v27)
    {
      v28 = 0;
    }

    v51 = v28;
    [v25 auditToken];
    v47 = v60;
    v48 = v59;
  }

  else
  {
    v51 = 0;
    v48 = 0u;
    v47 = 0u;
  }

  v62 = v25 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v17, &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_10077F8D0);
  v29 = v52[80];
  v52 = v12;
  v30 = (v29 + 49) & ~v29;
  v49 = v25;
  v31 = v30 + v14;
  v32 = (v30 + v14) & 0xFFFFFFFFFFFFFFF8;
  v46 = v10;
  v33 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v50 = v17;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = "pauseInstall";
  *(v36 + 40) = 12;
  *(v36 + 48) = 2;
  sub_10020A668(v33, v36 + v30, &qword_10077F8D0);
  *(v36 + v31) = 1;
  *(v36 + v32 + 8) = v51;
  v37 = v36 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v38 = v47;
  *v37 = v48;
  *(v37 + 16) = v38;
  *(v37 + 32) = v62;
  v39 = v36 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  v40 = v53;
  *v39 = v54;
  *(v39 + 8) = 0;
  v41 = (v36 + v34);
  *v41 = &unk_1006A0F68;
  v41[1] = v40;
  v42 = (v36 + v35);
  v43 = v58;
  *v42 = v57;
  v42[1] = v43;
  *(v36 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v46, &unk_1006A0F70, v36);

  swift_unknownObjectRelease();

  sub_1000032A8(v52, &unk_100780380);
  return sub_1000032A8(v50, &qword_10077F8D0);
}

uint64_t sub_1002CFE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[8] = a2;
  v9 = type metadata accessor for Logger();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[18] = v10;
  *v10 = v8;
  v10[1] = sub_1002CFF8C;

  return sub_100324690((v8 + 2));
}

uint64_t sub_1002CFF8C()
{

  return _swift_task_switch(sub_1002D0088, 0, 0);
}

uint64_t sub_1002D0088()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_100006D8C(v0 + 2, v2);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1002D0150;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002D0150(char a1)
{
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_1002D0250, 0, 0);
}

uint64_t sub_1002D0250()
{
  if (*(v0 + 192) == 1)
  {
    v1 = audit_token_t.signingIdentifier.getter(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
    *(v0 + 160) = v2;
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      decodeXPCValues<A>(from:)();
      v17 = *(v0 + 56);
      *(v0 + 168) = *(*sub_100006D8C((*(v0 + 96) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(*(v0 + 96) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);

      v18 = swift_task_alloc();
      *(v0 + 176) = v18;
      *v18 = v0;
      v18[1] = sub_1002D0574;

      return sub_100533EB0(v17, v3, v4);
    }

    static Logger.xpc.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = sub_100625FA0();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%@] No signing identifier", v7, 0xCu);
      sub_1000032A8(v8, &qword_10077F920);
    }

    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v12 = *(v0 + 120);

    (*(v11 + 8))(v10, v12);
  }

  v13 = type metadata accessor for MarketplaceKitError();
  sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  (*(*(v13 - 8) + 104))(v14, enum case for MarketplaceKitError.featureUnavailable(_:), v13);
  swift_willThrow();
  sub_10000710C(v0 + 16);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1002D0574()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1002D06C4;
  }

  else
  {
    v2 = sub_100302F68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D06C4()
{
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D0764(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a3;
  v58 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v52 = *(v13 - 8);
  v14 = *(v52 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = type metadata accessor for LogKey.Prefix();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v54 = sub_1001F6740(&off_100758510);
  swift_arrayDestroy();
  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = a1;
  v19[4] = a2;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1006A0F40;
  *(v21 + 24) = v19;
  v53 = v21;
  v22 = objc_opt_self();
  v23 = v4;
  v55 = v19;

  sub_10020ABFC(a1, a2);
  v24 = [v22 currentConnection];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v27 = swift_dynamicCast();
    v28 = v61;
    if (!v27)
    {
      v28 = 0;
    }

    v51 = v28;
    [v25 auditToken];
    v47 = v60;
    v48 = v59;
  }

  else
  {
    v51 = 0;
    v48 = 0u;
    v47 = 0u;
  }

  v62 = v25 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v17, &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_10077F8D0);
  v29 = v52[80];
  v52 = v12;
  v30 = (v29 + 49) & ~v29;
  v49 = v25;
  v31 = v30 + v14;
  v32 = (v30 + v14) & 0xFFFFFFFFFFFFFFF8;
  v46 = v10;
  v33 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v50 = v17;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = "resumeInstall";
  *(v36 + 40) = 13;
  *(v36 + 48) = 2;
  sub_10020A668(v33, v36 + v30, &qword_10077F8D0);
  *(v36 + v31) = 1;
  *(v36 + v32 + 8) = v51;
  v37 = v36 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v38 = v47;
  *v37 = v48;
  *(v37 + 16) = v38;
  *(v37 + 32) = v62;
  v39 = v36 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  v40 = v53;
  *v39 = v54;
  *(v39 + 8) = 0;
  v41 = (v36 + v34);
  *v41 = &unk_1006A0F48;
  v41[1] = v40;
  v42 = (v36 + v35);
  v43 = v58;
  *v42 = v57;
  v42[1] = v43;
  *(v36 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v46, &unk_1006A0F50, v36);

  swift_unknownObjectRelease();

  sub_1000032A8(v52, &unk_100780380);
  return sub_1000032A8(v50, &qword_10077F8D0);
}

uint64_t sub_1002D0CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[8] = a2;
  v9 = type metadata accessor for Logger();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[18] = v10;
  *v10 = v8;
  v10[1] = sub_1002D0DC0;

  return sub_100324690((v8 + 2));
}

uint64_t sub_1002D0DC0()
{

  return _swift_task_switch(sub_1002D0EBC, 0, 0);
}

uint64_t sub_1002D0EBC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_100006D8C(v0 + 2, v2);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1002D0F84;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002D0F84(char a1)
{
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_1002D1084, 0, 0);
}

uint64_t sub_1002D1084()
{
  if (*(v0 + 192) == 1)
  {
    v1 = audit_token_t.signingIdentifier.getter(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
    *(v0 + 160) = v2;
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      decodeXPCValues<A>(from:)();
      v17 = *(v0 + 56);
      *(v0 + 168) = *(*sub_100006D8C((*(v0 + 96) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(*(v0 + 96) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);

      v18 = swift_task_alloc();
      *(v0 + 176) = v18;
      *v18 = v0;
      v18[1] = sub_1002D13A8;

      return sub_1005346F4(v17, v3, v4);
    }

    static Logger.xpc.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = sub_100625FA0();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%@] No signing identifier", v7, 0xCu);
      sub_1000032A8(v8, &qword_10077F920);
    }

    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v12 = *(v0 + 120);

    (*(v11 + 8))(v10, v12);
  }

  v13 = type metadata accessor for MarketplaceKitError();
  sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  (*(*(v13 - 8) + 104))(v14, enum case for MarketplaceKitError.featureUnavailable(_:), v13);
  swift_willThrow();
  sub_10000710C(v0 + 16);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1002D13A8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100302F74;
  }

  else
  {
    v2 = sub_100302F68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D152C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v50 = *(v13 - 8);
  v14 = *(v50 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v53 = sub_1001F6740(&off_100758570);
  sub_1002FC188(&unk_100758590);
  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = a1;
  v20[4] = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1006A0F20;
  *(v21 + 24) = v20;
  v51 = v21;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = objc_opt_self();
  v24 = v4;
  v52 = v20;

  sub_10020ABFC(a1, a2);
  v25 = [v23 currentConnection];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v28 = swift_dynamicCast();
    v29 = v59;
    if (!v28)
    {
      v29 = 0;
    }

    v49 = v29;
    [v26 auditToken];
    v44 = v58;
    v46 = v57;
  }

  else
  {
    v49 = 0;
    v46 = 0u;
    v44 = 0u;
  }

  v60 = v26 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, v16, &qword_10077F8D0);
  v30 = (v50[80] + 49) & ~v50[80];
  v31 = v30 + v14;
  v50 = v12;
  v32 = (v30 + v14) & 0xFFFFFFFFFFFFFFF8;
  v45 = v10;
  v47 = v26;
  v48 = v18;
  v33 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = "cancelInstall";
  *(v35 + 40) = 13;
  *(v35 + 48) = 2;
  sub_10020A668(v16, v35 + v30, &qword_10077F8D0);
  *(v35 + v31) = 1;
  *(v35 + v32 + 8) = v49;
  v36 = v35 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v37 = v44;
  *v36 = v46;
  *(v36 + 16) = v37;
  *(v36 + 32) = v60;
  v38 = v35 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v38 = v53;
  *(v38 + 8) = 1;
  v39 = (v35 + v33);
  v40 = v51;
  *v39 = &unk_1006A0F28;
  v39[1] = v40;
  v41 = (v35 + v34);
  v42 = v56;
  *v41 = v55;
  v41[1] = v42;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v45, &unk_1006A0F30, v35);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v48, &qword_10077F8D0);
}

uint64_t sub_1002D1A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[8] = a2;
  v9 = type metadata accessor for Logger();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[18] = v10;
  *v10 = v8;
  v10[1] = sub_1002D1B88;

  return sub_100324690((v8 + 2));
}

uint64_t sub_1002D1B88()
{

  return _swift_task_switch(sub_1002D1C84, 0, 0);
}

uint64_t sub_1002D1C84()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_100006D8C(v0 + 2, v2);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1002D1D4C;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002D1D4C(char a1)
{
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_1002D1E4C, 0, 0);
}

uint64_t sub_1002D1E4C()
{
  if (*(v0 + 200) == 1)
  {
    v1 = audit_token_t.signingIdentifier.getter(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
    *(v0 + 160) = v2;
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      decodeXPCValues<A>(from:)();
      v17 = *(v0 + 56);
      *(v0 + 168) = *(*sub_100006D8C((*(v0 + 96) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(*(v0 + 96) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);

      v18 = swift_task_alloc();
      *(v0 + 176) = v18;
      *v18 = v0;
      v18[1] = sub_1002D2170;

      return sub_10054EA58(v17, v3, v4);
    }

    static Logger.xpc.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = sub_100625FA0();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%@] No signing identifier", v7, 0xCu);
      sub_1000032A8(v8, &qword_10077F920);
    }

    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v12 = *(v0 + 120);

    (*(v11 + 8))(v10, v12);
  }

  v13 = type metadata accessor for MarketplaceKitError();
  sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  (*(*(v13 - 8) + 104))(v14, enum case for MarketplaceKitError.featureUnavailable(_:), v13);
  swift_willThrow();
  sub_10000710C(v0 + 16);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1002D2170(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v5 = *(v3 + 168);
  if (v1)
  {

    v6 = sub_1002D2364;
    v7 = 0;
  }

  else
  {

    v6 = sub_1002D22E0;
    v7 = v5;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1002D22E0()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    sub_1005F6C58(3, 0, 0);
  }

  return _swift_task_switch(sub_100302F68, 0, 0);
}

uint64_t sub_1002D2364()
{
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D2404(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v52 = *(v13 - 8);
  v14 = *(v52 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = type metadata accessor for LogKey.Prefix();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v53 = sub_1001F6740(&off_1007585B0);
  swift_arrayDestroy();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = a1;
  v54 = v20;
  v20[4] = a2;
  v21 = objc_opt_self();
  v22 = v4;
  sub_10020ABFC(a1, a2);
  v23 = [v21 currentConnection];
  v24 = v23;
  if (v23)
  {
    v25 = [v23 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v26 = swift_dynamicCast();
    v27 = v60;
    if (!v26)
    {
      v27 = 0;
    }

    v51 = v27;
    [v24 auditToken];
    v47 = v59;
    v48 = v58;
  }

  else
  {
    v51 = 0;
    v48 = 0u;
    v47 = 0u;
  }

  v61 = v24 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v17, &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_10077F8D0);
  v28 = v52[80];
  v52 = v12;
  v29 = (v28 + 49) & ~v28;
  v30 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v29 + v14;
  v49 = v24;
  v50 = v17;
  v32 = (v29 + v14) & 0xFFFFFFFFFFFFFFF8;
  v46 = v10;
  v33 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = "handleSecureButtonActionRequest";
  *(v36 + 40) = 31;
  *(v36 + 48) = 2;
  sub_10020A668(v30, v36 + v29, &qword_10077F8D0);
  *(v36 + v31) = 1;
  *(v36 + v32 + 8) = v51;
  v37 = v36 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v38 = v47;
  *v37 = v48;
  *(v37 + 16) = v38;
  *(v37 + 32) = v61;
  v39 = v36 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  v40 = v54;
  *v39 = v53;
  *(v39 + 8) = 0;
  v41 = (v36 + v33);
  *v41 = &unk_1006A0ED0;
  v41[1] = v40;
  v42 = (v36 + v34);
  v43 = v57;
  *v42 = v56;
  v42[1] = v43;
  *(v36 + v35) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v46, &unk_1006A0EE0, v36);

  swift_unknownObjectRelease();

  sub_1000032A8(v52, &unk_100780380);
  return sub_1000032A8(v50, &qword_10077F8D0);
}

uint64_t sub_1002D290C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[51] = a8;
  v8[52] = v19;
  v8[49] = a6;
  v8[50] = a7;
  v8[47] = a4;
  v8[48] = a5;
  v8[45] = a1;
  v8[46] = a3;
  v9 = type metadata accessor for ActionButtonInstallMetadata();
  v8[53] = v9;
  v8[54] = *(v9 - 8);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  v8[57] = v10;
  v8[58] = *(v10 - 8);
  v8[59] = swift_task_alloc();
  v11 = type metadata accessor for SecureButtonActionRequest.Action();
  v8[60] = v11;
  v8[61] = *(v11 - 8);
  v8[62] = swift_task_alloc();
  v12 = type metadata accessor for SecureButtonActionResponse.ResponseType();
  v8[63] = v12;
  v8[64] = *(v12 - 8);
  v8[65] = swift_task_alloc();
  v13 = type metadata accessor for SecureButtonActionResponse();
  v8[66] = v13;
  v8[67] = *(v13 - 8);
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v14 = type metadata accessor for SecureButtonActionRequest();
  v8[70] = v14;
  v8[71] = *(v14 - 8);
  v8[72] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v8[73] = v15;
  v8[74] = *(v15 - 8);
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  v8[77] = swift_task_alloc();
  v8[78] = swift_task_alloc();
  v8[79] = swift_task_alloc();
  v8[80] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_bagService;
  v16 = swift_task_alloc();
  v8[81] = v16;
  *v16 = v8;
  v16[1] = sub_1002D2C98;

  return sub_100324268((v8 + 25));
}

uint64_t sub_1002D2C98()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_1002D64F4;
  }

  else
  {
    v2 = sub_1002D2DAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D2DAC()
{
  v2 = v0[28];
  v1 = v0[29];
  v0[83] = v2;
  sub_100006D8C(v0 + 25, v2);
  v3 = *(v2 - 8);
  v0[84] = v3;
  v4 = swift_task_alloc();
  v0[85] = v4;
  (*(v3 + 16))();
  v5 = swift_task_alloc();
  v0[86] = v5;
  *v5 = v0;
  v5[1] = sub_1002D2EF4;

  return sub_100519B04(v4, v2, v1);
}

uint64_t sub_1002D2EF4(char a1)
{
  *(*v1 + 961) = a1;

  return _swift_task_switch(sub_1002D2FF4, 0, 0);
}

uint64_t sub_1002D2FF4()
{
  v99 = v0;
  v1 = v0;
  v2 = *(v0 + 961);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = v1[83];
  if (v2 != 1)
  {
    v16 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, enum case for MarketplaceKitError.featureUnavailable(_:), v16);
    swift_willThrow();
    (*(v4 + 8))(v3, v5);

    goto LABEL_14;
  }

  v7 = v1[48];
  v6 = v1[49];
  v9 = v1[46];
  v8 = v1[47];
  (*(v4 + 8))(v3, v1[83]);

  v10 = audit_token_t.signingIdentifier.getter(v9, v8, v7, v6);
  v1[87] = v10;
  v1[88] = v11;
  if (!v11)
  {
    static Logger.install.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Can't handle secure button action request with no signing identifier", v20, 2u);
    }

    v21 = v1[79];
    v22 = v1[74];
    v23 = v1[73];

    (*(v22 + 8))(v21, v23);
    v24 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, enum case for MarketplaceKitError.featureUnavailable(_:), v24);
    swift_willThrow();
    goto LABEL_14;
  }

  v12 = v10;
  v13 = v11;
  v14 = v1[82];
  sub_100302E04(&qword_10077FCD0, &type metadata accessor for SecureButtonActionRequest);
  v15 = v1;
  sub_100302E04(&qword_10077FCD8, &type metadata accessor for SecureButtonActionRequest);
  decodeXPCValues<A>(from:)();
  if (v14)
  {

LABEL_14:
    sub_10000710C((v1 + 25));

    v64 = v1[1];

    return v64();
  }

  v96 = v12;
  v26 = v1[72];
  v27 = v1[65];
  v28 = v1[63];
  v29 = v1[64];
  v31 = v1[48];
  v30 = v1[49];
  v32 = v1[46];
  v33 = v1[47];
  v34 = enum case for SecureButtonActionResponse.ResponseType.none(_:);
  v35 = *(v29 + 104);
  v15[89] = v35;
  v15[90] = (v29 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v35(v27, v34, v28);
  SecureButtonActionResponse.init(type:)();
  sub_100274320(v26, v32, v33, v31, v30);
  v36 = v15[72];
  v1 = v15;
  if ((v37 & 1) == 0)
  {
    v59 = v15[71];
    v60 = v1[70];
    v61 = v1[69];
    v62 = v1[67];
    v63 = v1[66];

    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v62 + 8))(v61, v63);
    (*(v59 + 8))(v36, v60);
    goto LABEL_14;
  }

  v38 = v15[61];
  v39 = v1[62];
  v40 = v1[60];
  v1[91] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
  SecureButtonActionRequest.action.getter();
  v41 = (*(v38 + 88))(v39, v40);
  if (v41 == enum case for SecureButtonActionRequest.Action.delete(_:))
  {
    v42 = v1[62];
    v43 = v1[59];
    v45 = v1[57];
    v44 = v1[58];
    (*(v1[61] + 96))(v42, v1[60]);
    v95 = *v42;
    (*(v44 + 104))(v43, enum case for LogKey.Prefix.none(_:), v45);
    v46 = objc_allocWithZone(type metadata accessor for LogKey());
    v47 = LogKey.init(prefix:)();
    sub_10062611C();

    static Logger.install.getter();

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    v50 = os_log_type_enabled(v48, v49);
    v51 = v1[77];
    v52 = v1[74];
    v53 = v1[73];
    if (v50)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v93 = v1;
      v56 = swift_slowAlloc();
      v98[0] = v56;
      *v54 = 138412802;
      v57 = sub_100625FA0();
      *(v54 + 4) = v57;
      *v55 = v57;
      *(v54 + 12) = 2050;
      v58 = v96;
      *(v54 + 14) = v95;
      *(v54 + 22) = 2082;
      *(v54 + 24) = sub_1002346CC(v96, v13, v98);
      sub_1000032A8(v55, &qword_10077F920);

      sub_10000710C(v56);
      v1 = v93;

      (*(v52 + 8))(v51, v53);
    }

    else
    {

      (*(v52 + 8))(v51, v53);
      v58 = v96;
    }

    v97 = sub_1003708BC;
    v82 = swift_task_alloc();
    v1[101] = v82;
    *v82 = v1;
    v83 = sub_1002D4C44;
LABEL_26:
    v82[1] = v83;

    return (v97)(v95, v58, v13);
  }

  if (v41 == enum case for SecureButtonActionRequest.Action.launch(_:))
  {
    v66 = v1[62];
    v67 = v1[59];
    v69 = v1[57];
    v68 = v1[58];
    (*(v1[61] + 96))(v66, v1[60]);
    v95 = *v66;
    (*(v68 + 104))(v67, enum case for LogKey.Prefix.none(_:), v69);
    v70 = objc_allocWithZone(type metadata accessor for LogKey());
    v71 = LogKey.init(prefix:)();
    sub_10062611C();

    static Logger.install.getter();

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();

    v74 = os_log_type_enabled(v72, v73);
    v75 = v1[76];
    v76 = v1[74];
    v77 = v1[73];
    if (v74)
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v94 = v1;
      v80 = swift_slowAlloc();
      v98[0] = v80;
      *v78 = 138412802;
      v81 = sub_100625FA0();
      *(v78 + 4) = v81;
      *v79 = v81;
      *(v78 + 12) = 2050;
      v58 = v96;
      *(v78 + 14) = v95;
      *(v78 + 22) = 2082;
      *(v78 + 24) = sub_1002346CC(v96, v13, v98);
      sub_1000032A8(v79, &qword_10077F920);

      sub_10000710C(v80);
      v1 = v94;

      (*(v76 + 8))(v75, v77);
    }

    else
    {

      (*(v76 + 8))(v75, v77);
      v58 = v96;
    }

    v97 = sub_100371620;
    v82 = swift_task_alloc();
    v1[103] = v82;
    *v82 = v1;
    v83 = sub_1002D503C;
    goto LABEL_26;
  }

  if (v41 == enum case for SecureButtonActionRequest.Action.preflight(_:))
  {
    v84 = v1[62];
    (*(v1[61] + 96))(v84, v1[60]);
    v1[105] = *v84;
    v1[106] = v84[1];
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100302E04(&unk_10077FCE0, type metadata accessor for ActionButtonInstallMetadata);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    v85 = sub_1001F6740(&off_100758670);
    v1[107] = v85;
    swift_arrayDestroy();
    v86 = swift_task_alloc();
    v1[108] = v86;
    *v86 = v1;
    v87 = sub_1002D52D4;
  }

  else
  {
    if (v41 != enum case for SecureButtonActionRequest.Action.preflightBatch(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v88 = v1[62];
    (*(v1[61] + 96))(v88, v1[60]);
    v1[92] = *v88;
    v1[93] = v88[1];
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1001F0C48(&qword_10077FCF0);
    sub_1003000F8();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    v1[94] = v1[43];

    v85 = sub_1001F6740(&off_100758610);
    v1[95] = v85;
    swift_arrayDestroy();
    v86 = swift_task_alloc();
    v1[96] = v86;
    *v86 = v1;
    v87 = sub_1002D3E00;
  }

  v86[1] = v87;
  v89 = v1[48];
  v90 = v1[49];
  v91 = v1[46];
  v92 = v1[47];

  return sub_100322914(v85, 0, v91, v92, v89, v90);
}

uint64_t sub_1002D3E00(char a1)
{
  v4 = *v2;
  *(*v2 + 776) = v1;

  if (v1)
  {

    swift_bridgeObjectRelease_n();
    v5 = sub_1002D475C;
  }

  else
  {
    *(v4 + 962) = a1 & 1;
    v5 = sub_1002D3F6C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002D3F6C()
{
  v66 = v0;
  if (*(v0 + 962) == 1)
  {
    v52 = *(*(v0 + 464) + 104);
    v52(*(v0 + 472), enum case for LogKey.Prefix.adp(_:), *(v0 + 456));
    v51 = type metadata accessor for LogKey();
    v1 = objc_allocWithZone(v51);
    v2 = LogKey.init(prefix:)();
    sub_10062611C();

    static Logger.install.getter();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 752);
    if (v5)
    {
      v7 = *(v0 + 704);
      v8 = *(v0 + 696);
      v61 = *(v0 + 624);
      v9 = *(v0 + 592);
      v56 = *(v0 + 584);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v65 = v12;
      *v10 = 138412802;
      v13 = sub_100625FA0();
      *(v10 + 4) = v13;
      *v11 = v13;
      *(v10 + 12) = 2082;
      *(v10 + 14) = sub_1002346CC(v8, v7, &v65);
      *(v10 + 22) = 2050;
      *(v10 + 24) = *(v6 + 16);

      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Handling batch installation request from secure button for %{public}s with %{public}ld installs", v10, 0x20u);
      sub_1000032A8(v11, &qword_10077F920);

      sub_10000710C(v12);

      (*(v9 + 8))(v61, v56);
    }

    else
    {
      v23 = *(v0 + 624);
      v24 = *(v0 + 592);
      v25 = *(v0 + 584);

      (*(v24 + 8))(v23, v25);
    }

    v26 = (v0 + 964);
    v27 = *(v0 + 752);
    *(v0 + 352) = _swiftEmptyArrayStorage;
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = *(v0 + 432);
      v58 = *(v0 + 400) + *(v0 + 728);
      v30 = v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v54 = *(v29 + 72);
      v50 = enum case for LogKey.Prefix.undefined(_:);
      do
      {
        v62 = v28;
        sub_10030173C(v30, *(v0 + 448), type metadata accessor for ActionButtonInstallMetadata);
        if (qword_10077E598 != -1)
        {
          swift_once();
        }

        TaskLocal.get()();
        v31 = *(v0 + 288);
        if (!v31 || (, , , os_unfair_lock_lock((v31 + 24)), v32 = *(v31 + 16), v33 = v32, os_unfair_lock_unlock((v31 + 24)), , !v32))
        {
          v52(*(v0 + 472), v50, *(v0 + 456));
          v34 = objc_allocWithZone(v51);
          v33 = LogKey.init(prefix:)();
        }

        v35 = *(v0 + 728);
        v36 = *(v0 + 704);
        v37 = *(v0 + 696);
        v38 = *(v0 + 448);
        v39 = *(v0 + 400);
        *(v0 + 328) = v37;
        *(v0 + 336) = v36;
        v40 = *(v58 + 24);
        v41 = *(v58 + 72);
        v42 = sub_100006D8C((v39 + v35), v40);
        v43 = sub_1003000A4();

        sub_10061C574(v33, v0 + 328, v37, v36, v0 + 200, v42, v38, v40, &type metadata for NativeDistributor, v41, v43);

        sub_1003017A4(v38, type metadata accessor for ActionButtonInstallMetadata);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v0 + 352) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 352) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v30 += v54;
        v28 = v62 - 1;
      }

      while (v62 != 1);
      v44 = *(v0 + 352);

      v26 = (v0 + 964);
    }

    else
    {

      v44 = _swiftEmptyArrayStorage;
    }

    v45 = *(v0 + 400) + *(v0 + 728);
    v59 = *(v0 + 384);
    v63 = *(v0 + 368);
    swift_bridgeObjectRelease_n();
    *v26 = v63;
    v26[1] = v59;
    *(v0 + 996) = 0;
    type metadata accessor for ADPBatchInstallTask();
    swift_allocObject();
    *(v0 + 784) = sub_1004B2148(v44, v26);
    v46 = *(v45 + 24);
    v60 = *(v45 + 56);
    v64 = *(v45 + 40);
    v53 = *(v45 + 88);
    v55 = *(v45 + 72);
    v47 = sub_100006D8C(v45, v46);
    *(v0 + 40) = v46;
    *(v0 + 48) = v64;
    *(v0 + 64) = v60;
    *(v0 + 80) = v55;
    *(v0 + 96) = v53;
    v48 = sub_10020A748((v0 + 16));
    (*(*(v46 - 8) + 16))(v48, v47, v46);
    v49 = swift_task_alloc();
    *(v0 + 792) = v49;
    *v49 = v0;
    v49[1] = sub_1002D48D4;

    return sub_1004B1ADC(v0 + 16);
  }

  else
  {
    v14 = *(v0 + 744);
    v15 = *(v0 + 736);
    v57 = *(v0 + 576);
    v16 = *(v0 + 568);
    v17 = *(v0 + 560);
    v18 = *(v0 + 552);
    v19 = *(v0 + 536);
    v20 = *(v0 + 528);

    swift_bridgeObjectRelease_n();
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_100007158(v15, v14);
    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v57, v17);
    sub_10000710C(v0 + 200);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1002D475C()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[67];
  v6 = v0[66];
  sub_100007158(v0[92], v0[93]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 25));

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002D48D4()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  if (v0)
  {
    v3 = sub_1002D6610;
  }

  else
  {
    sub_10000710C(v2 + 16);
    v3 = sub_1002D49F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002D49F0()
{
  v1 = v0[98];
  v14 = v0[92];
  v15 = v0[93];
  v13 = v0[89];
  v2 = v0[71];
  v16 = v0[70];
  v17 = v0[72];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[63];
  v9 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19ADPBatchInstallTask_id;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 16))(v7, v1 + v9, v10);
  v13(v7, enum case for SecureButtonActionResponse.ResponseType.confirmInstallBatch(_:), v8);
  SecureButtonActionResponse.init(type:)();
  sub_100007158(v14, v15);

  (*(v5 + 8))(v3, v6);
  (*(v2 + 8))(v17, v16);
  (*(v5 + 32))(v3, v4, v6);
  (*(v0[67] + 32))(v0[45], v0[69], v0[66]);
  sub_10000710C((v0 + 25));

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002D4C44()
{
  *(*v1 + 816) = v0;

  if (v0)
  {
    v2 = sub_1002D4ED8;
  }

  else
  {
    v2 = sub_1002D4D78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D4D78()
{
  (*(v0[71] + 8))(v0[72], v0[70]);
  (*(v0[67] + 32))(v0[45], v0[69], v0[66]);
  sub_10000710C((v0 + 25));

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002D4ED8()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  (*(v0[67] + 8))(v0[69], v0[66]);
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 25));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002D503C()
{
  *(*v1 + 832) = v0;

  if (v0)
  {
    v2 = sub_1002D5170;
  }

  else
  {
    v2 = sub_100302FD8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D5170()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  (*(v0[67] + 8))(v0[69], v0[66]);
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 25));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002D52D4(char a1)
{
  v4 = *v2;
  *(*v2 + 872) = v1;

  if (v1)
  {

    v5 = sub_1002D5AB4;
  }

  else
  {
    *(v4 + 963) = a1 & 1;
    v5 = sub_1002D542C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002D542C()
{
  v50 = v0;
  if (*(v0 + 963) == 1)
  {
    sub_100006D8C((v0 + 200), *(v0 + 224));
    if (dispatch thunk of Bag.isExpired.getter())
    {
      v1 = swift_task_alloc();
      *(v0 + 880) = v1;
      *v1 = v0;
      v1[1] = sub_1002D5C4C;

      return sub_100324268(v0 + 240);
    }

    else
    {
      sub_10020A980(v0 + 200, v0 + 240);
      (*(*(v0 + 464) + 104))(*(v0 + 472), enum case for LogKey.Prefix.adp(_:), *(v0 + 456));
      v11 = objc_allocWithZone(type metadata accessor for LogKey());
      v12 = LogKey.init(prefix:)();
      sub_10062611C();

      static Logger.install.getter();

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = *(v0 + 704);
        v16 = *(v0 + 696);
        v46 = *(v0 + 600);
        v17 = *(v0 + 592);
        v18 = *(v0 + 584);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v49 = v21;
        *v19 = 138412546;
        v22 = sub_100625FA0();
        *(v19 + 4) = v22;
        *v20 = v22;
        *(v19 + 12) = 2082;
        *(v19 + 14) = sub_1002346CC(v16, v15, &v49);
        _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Handling installation request from secure button for %{public}s", v19, 0x16u);
        sub_1000032A8(v20, &qword_10077F920);

        sub_10000710C(v21);

        (*(v17 + 8))(v46, v18);
      }

      else
      {
        v23 = *(v0 + 600);
        v24 = *(v0 + 592);
        v25 = *(v0 + 584);

        (*(v24 + 8))(v23, v25);
      }

      v26 = *(v0 + 704);
      v27 = *(v0 + 696);
      v28 = *(v0 + 440);
      v29 = *(v0 + 400) + *(v0 + 728);
      v44 = *(v0 + 384);
      v47 = *(v0 + 368);
      v30 = sub_100625FA0();
      *(v0 + 312) = v27;
      *(v0 + 320) = v26;
      v31 = *(v29 + 24);
      v32 = *(v29 + 72);
      v33 = sub_100006D8C(v29, v31);
      v34 = sub_1003000A4();

      *(v0 + 896) = sub_10061C574(v30, v0 + 312, v27, v26, v0 + 240, v33, v28, v31, &type metadata for NativeDistributor, v32, v34);
      swift_bridgeObjectRelease_n();

      *(v0 + 928) = v47;
      *(v0 + 944) = v44;
      *(v0 + 960) = 0;
      type metadata accessor for ADPInstallTask();
      swift_allocObject();

      *(v0 + 904) = sub_100400560(v35, v0 + 928);
      v36 = *(v29 + 24);
      v37 = *(v29 + 56);
      v48 = *(v29 + 72);
      v42 = *(v29 + 40);
      v45 = *(v29 + 88);
      v38 = sub_100006D8C(v29, v36);
      *(v0 + 136) = v36;
      *(v0 + 144) = v42;
      *(v0 + 160) = v37;
      *(v0 + 168) = v48;
      *(v0 + 184) = v45;
      v39 = sub_10020A748((v0 + 112));
      (*(*(v36 - 8) + 16))(v39, v38, v36);
      v40 = swift_task_alloc();
      *(v0 + 912) = v40;
      *v40 = v0;
      v40[1] = sub_1002D6148;

      return sub_1003FA244(v0 + 112);
    }
  }

  else
  {
    v3 = *(v0 + 848);
    v4 = *(v0 + 840);
    v43 = *(v0 + 576);
    v5 = *(v0 + 568);
    v41 = *(v0 + 560);
    v6 = *(v0 + 552);
    v7 = *(v0 + 536);
    v8 = *(v0 + 528);
    v9 = *(v0 + 440);

    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_100007158(v4, v3);
    sub_1003017A4(v9, type metadata accessor for ActionButtonInstallMetadata);
    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v43, v41);
    sub_10000710C(v0 + 200);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1002D5AB4()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[55];
  sub_100007158(v0[105], v0[106]);
  sub_1003017A4(v7, type metadata accessor for ActionButtonInstallMetadata);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 25));

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002D5C4C()
{
  *(*v1 + 888) = v0;

  if (v0)
  {

    v2 = sub_1002D679C;
  }

  else
  {
    v2 = sub_1002D5D68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D5D68()
{
  v39 = v0;
  (*(*(v0 + 464) + 104))(*(v0 + 472), enum case for LogKey.Prefix.adp(_:), *(v0 + 456));
  v1 = objc_allocWithZone(type metadata accessor for LogKey());
  v2 = LogKey.init(prefix:)();
  sub_10062611C();

  static Logger.install.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 704);
    v6 = *(v0 + 696);
    v35 = *(v0 + 600);
    v7 = *(v0 + 592);
    v8 = *(v0 + 584);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38 = v11;
    *v9 = 138412546;
    v12 = sub_100625FA0();
    *(v9 + 4) = v12;
    *v10 = v12;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_1002346CC(v6, v5, &v38);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Handling installation request from secure button for %{public}s", v9, 0x16u);
    sub_1000032A8(v10, &qword_10077F920);

    sub_10000710C(v11);

    (*(v7 + 8))(v35, v8);
  }

  else
  {
    v13 = *(v0 + 600);
    v14 = *(v0 + 592);
    v15 = *(v0 + 584);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 704);
  v17 = *(v0 + 696);
  v18 = *(v0 + 440);
  v19 = *(v0 + 400) + *(v0 + 728);
  v33 = *(v0 + 384);
  v36 = *(v0 + 368);
  v20 = sub_100625FA0();
  *(v0 + 312) = v17;
  *(v0 + 320) = v16;
  v21 = *(v19 + 24);
  v22 = *(v19 + 72);
  v23 = sub_100006D8C(v19, v21);
  v24 = sub_1003000A4();

  *(v0 + 896) = sub_10061C574(v20, v0 + 312, v17, v16, v0 + 240, v23, v18, v21, &type metadata for NativeDistributor, v22, v24);
  swift_bridgeObjectRelease_n();

  *(v0 + 928) = v36;
  *(v0 + 944) = v33;
  *(v0 + 960) = 0;
  type metadata accessor for ADPInstallTask();
  swift_allocObject();

  *(v0 + 904) = sub_100400560(v25, v0 + 928);
  v26 = *(v19 + 24);
  v27 = *(v19 + 56);
  v37 = *(v19 + 72);
  v32 = *(v19 + 40);
  v34 = *(v19 + 88);
  v28 = sub_100006D8C(v19, v26);
  *(v0 + 136) = v26;
  *(v0 + 144) = v32;
  *(v0 + 160) = v27;
  *(v0 + 168) = v37;
  *(v0 + 184) = v34;
  v29 = sub_10020A748((v0 + 112));
  (*(*(v26 - 8) + 16))(v29, v28, v26);
  v30 = swift_task_alloc();
  *(v0 + 912) = v30;
  *v30 = v0;
  v30[1] = sub_1002D6148;

  return sub_1003FA244(v0 + 112);
}

uint64_t sub_1002D6148()
{
  v2 = *v1;
  *(*v1 + 920) = v0;

  if (v0)
  {
    v3 = sub_1002D6934;
  }

  else
  {
    sub_10000710C(v2 + 112);
    v3 = sub_1002D6264;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002D6264()
{
  v1 = v0[112];
  v12 = v0[105];
  v2 = v0[89];
  v3 = v0[71];
  v17 = v0[70];
  v18 = v0[72];
  v4 = v0[68];
  v5 = v0[67];
  v15 = v0[66];
  v16 = v0[69];
  v6 = v0[65];
  v7 = v0[63];
  v13 = v0[106];
  v14 = v0[55];
  v8 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id;
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 16))(v6, v1 + v8, v9);
  v2(v6, enum case for SecureButtonActionResponse.ResponseType.confirmInstall(_:), v7);
  SecureButtonActionResponse.init(type:)();

  sub_100007158(v12, v13);

  sub_10000710C((v0 + 30));
  sub_1003017A4(v14, type metadata accessor for ActionButtonInstallMetadata);
  (*(v5 + 8))(v16, v15);
  (*(v3 + 8))(v18, v17);
  (*(v5 + 32))(v16, v4, v15);
  (*(v0[67] + 32))(v0[45], v0[69], v0[66]);
  sub_10000710C((v0 + 25));

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002D64F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D6610()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[67];
  v6 = v0[66];
  sub_100007158(v0[92], v0[93]);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 2));
  sub_10000710C((v0 + 25));

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002D679C()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[55];
  sub_100007158(v0[105], v0[106]);
  sub_1003017A4(v7, type metadata accessor for ActionButtonInstallMetadata);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 25));

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002D6934()
{
  v1 = v0[106];
  v2 = v0[105];
  v11 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[69];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[55];

  sub_100007158(v2, v1);

  sub_10000710C((v0 + 30));
  sub_1003017A4(v8, type metadata accessor for ActionButtonInstallMetadata);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v11, v4);
  sub_10000710C((v0 + 14));
  sub_10000710C((v0 + 25));

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002D6B30(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13 - 8);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v54 = sub_1001F6740(&off_1007586D0);
  sub_1002FC188(&unk_1007586F0);
  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = a1;
  v53 = v20;
  v20[4] = a2;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = objc_opt_self();
  v23 = v4;
  sub_10020ABFC(a1, a2);
  v24 = [v22 currentConnection];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v27 = swift_dynamicCast();
    v28 = v60;
    if (!v27)
    {
      v28 = 0;
    }

    v52 = v28;
    [v25 auditToken];
    v47 = v59;
    v48 = v58;
  }

  else
  {
    v52 = 0;
    v48 = 0u;
    v47 = 0u;
  }

  v61 = v25 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_10077F8D0);
  v29 = *(v14 + 80);
  v49 = v25;
  v50 = v12;
  v30 = (v29 + 49) & ~v29;
  v31 = v30 + v15;
  v32 = (v30 + v15) & 0xFFFFFFFFFFFFFFF8;
  v51 = v18;
  v46 = v10;
  v33 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = "Fetch available app metadata";
  *(v36 + 40) = 28;
  *(v36 + 48) = 2;
  sub_10020A668(v33, v36 + v30, &qword_10077F8D0);
  *(v36 + v31) = 1;
  *(v36 + v32 + 8) = v52;
  v37 = v36 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v38 = v47;
  *v37 = v48;
  *(v37 + 16) = v38;
  *(v37 + 32) = v61;
  v39 = v36 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  v40 = v53;
  *v39 = v54;
  *(v39 + 8) = 1;
  v41 = (v36 + v34);
  *v41 = &unk_1006A0E88;
  v41[1] = v40;
  v42 = (v36 + v35);
  v43 = v57;
  *v42 = v56;
  v42[1] = v43;
  *(v36 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v46, &unk_1006A0E98, v36);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v51, &qword_10077F8D0);
}

uint64_t sub_1002D7038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v15;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[7] = a1;
  v9 = type metadata accessor for Logger();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v11 = type metadata accessor for AvailableAppMetadataRequest();
  v8[20] = v11;
  v8[21] = *(v11 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[24] = v12;
  *v12 = v8;
  v12[1] = sub_1002D7214;

  return sub_100324690((v8 + 2));
}

uint64_t sub_1002D7214()
{

  return _swift_task_switch(sub_1002D7310, 0, 0);
}

uint64_t sub_1002D7310()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_100006D8C(v0 + 2, v2);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_1002D73D8;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002D73D8(char a1)
{
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_1002D74D8, 0, 0);
}

uint64_t sub_1002D74D8()
{
  v48 = v0;
  if (*(v0 + 264) == 1)
  {
    sub_100302E04(&qword_10077FC90, &type metadata accessor for AvailableAppMetadataRequest);
    sub_100302E04(&qword_10077FC98, &type metadata accessor for AvailableAppMetadataRequest);
    decodeXPCValues<A>(from:)();
    v2 = *(v0 + 176);
    v1 = *(v0 + 184);
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    (*(*(v0 + 144) + 104))(*(v0 + 152), enum case for LogKey.Prefix.general(_:), *(v0 + 136));
    v5 = objc_allocWithZone(type metadata accessor for LogKey());
    v6 = LogKey.init(prefix:)();
    *(v0 + 208) = v6;
    static Logger.daemon.getter();
    (*(v3 + 16))(v2, v1, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);
    v12 = *(v0 + 160);
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v15 = *(v0 + 112);
    if (v9)
    {
      v42 = *(v0 + 80);
      v43 = *(v0 + 88);
      v39 = *(v0 + 64);
      v40 = *(v0 + 72);
      v46 = v6;
      v16 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v16 = 136446466;
      v44 = v13;
      v45 = v15;
      v17 = AvailableAppMetadataRequest.distributorID.getter();
      v19 = v18;
      v41 = v8;
      v22 = *(v10 + 8);
      v20 = v10 + 8;
      v21 = v22;
      v22(v11, v12);
      v23 = sub_1002346CC(v17, v19, v47);

      *(v16 + 4) = v23;
      *(v16 + 12) = 2080;
      v24 = audit_token_t.signingIdentifier.getter(v39, v40, v42, v43);
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v24 = 0x6E776F6E6B6E75;
        v26 = 0xE700000000000000;
      }

      v27 = sub_1002346CC(v24, v26, v47);

      *(v16 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v7, v41, "Fetching available app metadata from %{public}s for %s", v16, 0x16u);
      swift_arrayDestroy();

      v6 = v46;

      (*(v14 + 8))(v44, v45);
    }

    else
    {

      v32 = *(v10 + 8);
      v20 = v10 + 8;
      v21 = v32;
      v32(v11, v12);
      (*(v14 + 8))(v13, v15);
    }

    *(v0 + 216) = v20;
    *(v0 + 224) = v21;
    v33 = v6;
    sub_10062611C();

    v34 = AvailableAppMetadataRequest.ids.getter();
    *(v0 + 232) = v34;
    v35 = AvailableAppMetadataRequest.distributorID.getter();
    v37 = v36;
    *(v0 + 240) = v36;
    v38 = swift_task_alloc();
    *(v0 + 248) = v38;
    *v38 = v0;
    v38[1] = sub_1002D79B0;

    return sub_100495318(v34, v35, v37, v33);
  }

  else
  {
    v28 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, enum case for MarketplaceKitError.featureUnavailable(_:), v28);
    swift_willThrow();
    sub_10000710C(v0 + 16);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1002D79B0(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_1002D7AEC, 0, 0);
}

uint64_t sub_1002D7AEC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 56);

  v2(v3, v4);
  sub_10000710C(v0 + 16);
  *v5 = v1;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002D7BFC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13 - 8);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v54 = sub_1001F6740(&off_100758710);
  sub_1002FC188(&unk_100758730);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v53 = v20;
  v20[4] = v4;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = objc_opt_self();
  v23 = v4;
  sub_10020ABFC(a1, a2);
  v24 = [v22 currentConnection];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v27 = swift_dynamicCast();
    v28 = v60;
    if (!v27)
    {
      v28 = 0;
    }

    v52 = v28;
    [v25 auditToken];
    v47 = v59;
    v48 = v58;
  }

  else
  {
    v52 = 0;
    v48 = 0u;
    v47 = 0u;
  }

  v61 = v25 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_10077F8D0);
  v29 = *(v14 + 80);
  v49 = v25;
  v50 = v12;
  v30 = (v29 + 49) & ~v29;
  v31 = v30 + v15;
  v32 = (v30 + v15) & 0xFFFFFFFFFFFFFFF8;
  v51 = v18;
  v46 = v10;
  v33 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = "Fetch data";
  *(v36 + 40) = 10;
  *(v36 + 48) = 2;
  sub_10020A668(v33, v36 + v30, &qword_10077F8D0);
  *(v36 + v31) = 1;
  *(v36 + v32 + 8) = v52;
  v37 = v36 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v38 = v47;
  *v37 = v48;
  *(v37 + 16) = v38;
  *(v37 + 32) = v61;
  v39 = v36 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  v40 = v53;
  *v39 = v54;
  *(v39 + 8) = 1;
  v41 = (v36 + v34);
  *v41 = &unk_1006A0E60;
  v41[1] = v40;
  v42 = (v36 + v35);
  v43 = v57;
  *v42 = v56;
  v42[1] = v43;
  *(v36 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v46, &unk_1006A0E68, v36);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v51, &qword_10077F8D0);
}

uint64_t sub_1002D8104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[37] = a8;
  v8[38] = v18;
  v8[35] = a1;
  v8[36] = a7;
  v9 = type metadata accessor for Logger();
  v8[39] = v9;
  v8[40] = *(v9 - 8);
  v8[41] = swift_task_alloc();
  v10 = type metadata accessor for LocalizerLookupStrategy();
  v8[42] = v10;
  v8[43] = *(v10 - 8);
  v8[44] = swift_task_alloc();
  v11 = type metadata accessor for LocalizedStringsRequest.LocalizedString();
  v8[45] = v11;
  v8[46] = *(v11 - 8);
  v8[47] = swift_task_alloc();
  sub_1001F0C48(&qword_1007812A0);
  v8[48] = swift_task_alloc();
  v12 = type metadata accessor for CodableAuditToken();
  v8[49] = v12;
  v8[50] = *(v12 - 8);
  v8[51] = swift_task_alloc();
  Data = type metadata accessor for FetchDataResponse.Response();
  v8[52] = Data;
  v8[53] = *(Data - 8);
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  PrivateData = type metadata accessor for FetchPrivateDataRequest.Request();
  v8[56] = PrivateData;
  v8[57] = *(PrivateData - 8);
  v8[58] = swift_task_alloc();
  PrivateDataRequest = type metadata accessor for FetchPrivateDataRequest();
  v8[59] = PrivateDataRequest;
  v8[60] = *(PrivateDataRequest - 8);
  v8[61] = swift_task_alloc();

  return _swift_task_switch(sub_1002D843C, 0, 0);
}

uint64_t sub_1002D843C()
{
  sub_100302E04(&qword_10077FC40, &type metadata accessor for FetchPrivateDataRequest);
  sub_100302E04(&qword_10077FC48, &type metadata accessor for FetchPrivateDataRequest);
  decodeXPCValues<A>(from:)();
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  FetchPrivateDataRequest.request.getter();
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == enum case for FetchPrivateDataRequest.Request.approvedDeveloper(_:))
  {
    v5 = *(v0 + 480);
    v6 = *(v0 + 464);
    v114 = *(v0 + 472);
    v116 = *(v0 + 488);
    v7 = *(v0 + 424);
    v8 = *(v0 + 432);
    v9 = *(v0 + 416);
    v10 = *(v0 + 304);
    (*(*(v0 + 456) + 96))(v6, *(v0 + 448));
    v11 = *v6;
    v12 = v6[1];
    sub_100006D8C((v10 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v10 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24));

    LOBYTE(v11) = sub_10058AF60(v11, v12);

    *v8 = v11 & 1;
    (*(v7 + 104))(v8, enum case for FetchDataResponse.Response.approvedDeveloper(_:), v9);
    FetchDataResponse.init(response:)();
    (*(v5 + 8))(v116, v114);
LABEL_23:

    v67 = *(v0 + 8);

    return v67();
  }

  if (v4 == enum case for FetchPrivateDataRequest.Request.associatedApps(_:))
  {
    v13 = *(v0 + 464);
    (*(*(v0 + 456) + 96))(v13, *(v0 + 448));
    v14 = *v13;
    v15 = v13[1];
    v16 = [objc_opt_self() enumeratorWithOptions:0];
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v17 + 24) = v15;
    *(v0 + 48) = sub_1002FF8AC;
    *(v0 + 56) = v17;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100009BE4;
    *(v0 + 40) = &unk_10075DD50;
    v18 = _Block_copy((v0 + 16));

    [v16 setFilter:v18];
    _Block_release(v18);
    v19 = [v16 nextObject];
    if (v19)
    {
      v20 = v19;
      v21 = _swiftEmptyArrayStorage;
      do
      {
        v22 = [v20 bundleIdentifier];
        if (v22)
        {
          v24 = v22;
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_100009530(0, *(v21 + 2) + 1, 1, v21);
          }

          v29 = *(v21 + 2);
          v28 = *(v21 + 3);
          if (v29 >= v28 >> 1)
          {
            v21 = sub_100009530((v28 > 1), v29 + 1, 1, v21);
          }

          *(v21 + 2) = v29 + 1;
          v30 = &v21[16 * v29];
          *(v30 + 4) = v25;
          *(v30 + 5) = v27;
          v23 = [v16 nextObject];
        }

        else
        {

          v23 = [v16 nextObject];
        }

        v20 = v23;
      }

      while (v20);
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    v62 = *(v0 + 480);
    v61 = *(v0 + 488);
    v63 = *(v0 + 472);
    v64 = *(v0 + 424);
    v65 = *(v0 + 432);
    v66 = *(v0 + 416);
    *v65 = v21;
    (*(v64 + 104))(v65, enum case for FetchDataResponse.Response.associatedApps(_:), v66);
    FetchDataResponse.init(response:)();

    (*(v62 + 8))(v61, v63);
    goto LABEL_23;
  }

  if (v4 == enum case for FetchPrivateDataRequest.Request.passbookProvisioning(_:))
  {
    v31 = *(v0 + 464);
    v33 = *(v0 + 400);
    v32 = *(v0 + 408);
    v35 = *(v0 + 384);
    v34 = *(v0 + 392);
    v36 = *(v0 + 304);
    (*(*(v0 + 456) + 96))(v31, *(v0 + 448));
    v37 = (v31 + *(sub_1001F0C48(&qword_10077FC50) + 48));
    v38 = *v37;
    *(v0 + 496) = *v37;
    v39 = v37[1];
    *(v0 + 504) = v39;
    (*(v33 + 32))(v32, v31, v34);
    v40 = CodableAuditToken.auditToken.getter();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = sub_100006D8C((v36 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v36 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24));
    sub_100005934(*v47 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v35, &qword_1007812A0);
    v48 = swift_task_alloc();
    *(v0 + 512) = v48;
    *v48 = v0;
    v48[1] = sub_1002D92C4;
    v49 = *(v0 + 384);

    return sub_10036D2B8(v40, v42, v44, v46, v38, v39, v49);
  }

  if (v4 == enum case for FetchPrivateDataRequest.Request.showInstallSheet(_:))
  {
    v51 = *(v0 + 480);
    v52 = *(v0 + 464);
    v115 = *(v0 + 472);
    v117 = *(v0 + 488);
    v54 = *(v0 + 424);
    v53 = *(v0 + 432);
    v113 = *(v0 + 416);
    v55 = *(v0 + 304);
    (*(*(v0 + 456) + 96))(v52, *(v0 + 448));
    v56 = *v52;
    v57 = v52[1];
    sub_100006D8C((v55 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v55 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24));

    v58 = sub_1000071AC();
    *(v0 + 240) = v56;
    *(v0 + 248) = v57;
    v59 = swift_task_alloc();
    *(v59 + 16) = v0 + 240;
    v60 = sub_10020A1BC(sub_1001F7FFC, v59, v58);

    *v53 = (v60 & 1) == 0;
    (*(v54 + 104))(v53, enum case for FetchDataResponse.Response.showInstallSheet(_:), v113);
    FetchDataResponse.init(response:)();
    (*(v51 + 8))(v117, v115);
    goto LABEL_23;
  }

  if (v4 == enum case for FetchPrivateDataRequest.Request.searchTerritoryForDistributor(_:))
  {
    v68 = *(v0 + 464);
    v69 = *(v0 + 304);
    (*(*(v0 + 456) + 96))(v68, *(v0 + 448));
    v70 = *v68;
    v71 = v68[1];
    *(v0 + 544) = v71;
    v72 = *(*sub_100006D8C((v69 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v69 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_secureStorage);
    *(v0 + 552) = v72;
    v73 = swift_task_alloc();
    *(v0 + 560) = v73;
    *(v73 + 16) = v70;
    *(v73 + 24) = v71;

    v74 = swift_task_alloc();
    *(v0 + 568) = v74;
    *v74 = v0;
    v74[1] = sub_1002D9934;

    return sub_1003B33C0(sub_100302FA8, v73, v72);
  }

  if (v4 != enum case for FetchPrivateDataRequest.Request.localizedStrings(_:))
  {
    if (v4 == enum case for FetchPrivateDataRequest.Request.allApprovedDevelopers(_:))
    {
      v85 = *(v0 + 480);
      v84 = *(v0 + 488);
      v86 = *(v0 + 472);
      v87 = *(v0 + 440);
      v88 = *(v0 + 416);
      v89 = *(v0 + 424);
      sub_100006D8C((*(v0 + 304) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(*(v0 + 304) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24));

      v90 = sub_10058BEFC();

      v91 = _swiftEmptyArrayStorage;
      if (v90)
      {
        v91 = v90;
      }

      *v87 = v91;
      (*(v89 + 104))(v87, enum case for FetchDataResponse.Response.allApprovedDevelopers(_:), v88);
      FetchDataResponse.init(response:)();
      (*(v85 + 8))(v84, v86);
      goto LABEL_23;
    }

    if (v4 == enum case for FetchPrivateDataRequest.Request.distributorPriorityList(_:))
    {
      v93 = *(v0 + 480);
      v92 = *(v0 + 488);
      v94 = *(v0 + 472);
      v96 = *(v0 + 424);
      v95 = *(v0 + 432);
      v97 = *(v0 + 416);
      *v95 = sub_100651F28();
      (*(v96 + 104))(v95, enum case for FetchDataResponse.Response.distributorPriorityList(_:), v97);
    }

    else
    {
      if (v4 != enum case for FetchPrivateDataRequest.Request.showAppInstallationSettings(_:))
      {
        if (v4 != enum case for FetchPrivateDataRequest.Request.ageExceptionRequests(_:))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        *(v0 + 704) = *(*sub_100006D8C((*(v0 + 304) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(*(v0 + 304) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_exceptionRequestService);

        v108 = swift_task_alloc();
        *(v0 + 712) = v108;
        *v108 = v0;
        v108[1] = sub_1002DA6AC;

        return sub_1005A09B0(0, 0);
      }

      v104 = *(v0 + 304);
      v105 = sub_100651F28()[2];

      v106 = v105 > 1;
      sub_100006D8C((v104 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v104 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24));

      v107 = sub_10058BEFC();

      if (v107)
      {
        if (v105 < 2)
        {
          v109 = *(v107 + 16);

          v106 = v109 != 0;
        }

        else
        {

          v106 = 1;
        }
      }

      v93 = *(v0 + 480);
      v92 = *(v0 + 488);
      v94 = *(v0 + 472);
      v110 = *(v0 + 424);
      v111 = *(v0 + 432);
      v112 = *(v0 + 416);
      *v111 = v106;
      (*(v110 + 104))(v111, enum case for FetchDataResponse.Response.showAppInstallationSettings(_:), v112);
    }

    FetchDataResponse.init(response:)();
    (*(v93 + 8))(v92, v94);
    goto LABEL_23;
  }

  v75 = *(v0 + 464);
  (*(*(v0 + 456) + 96))(v75, *(v0 + 448));
  result = *v75;
  *(v0 + 600) = *v75;
  v76 = *(result + 16);
  *(v0 + 608) = v76;
  if (!v76)
  {

    v99 = *(v0 + 480);
    v98 = *(v0 + 488);
    v100 = *(v0 + 472);
    v101 = *(v0 + 424);
    v102 = *(v0 + 432);
    v103 = *(v0 + 416);
    *v102 = _swiftEmptyDictionarySingleton;
    (*(v101 + 104))(v102, enum case for FetchDataResponse.Response.localizedStrings(_:), v103);
    FetchDataResponse.init(response:)();
    (*(v99 + 8))(v98, v100);
    goto LABEL_23;
  }

  v77 = *(v0 + 368);
  v78 = *(v0 + 304);
  v79 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
  *(v0 + 616) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
  v80 = *(v77 + 80);
  *(v0 + 728) = v80;
  *(v0 + 732) = enum case for LocalizerLookupStrategy.default(_:);
  *(v0 + 640) = _swiftEmptyDictionarySingleton;
  *(v0 + 632) = 0;
  *(v0 + 624) = _swiftEmptyDictionarySingleton;
  if (*(result + 16))
  {
    v81 = (v78 + v79);
    (*(v77 + 16))(*(v0 + 376), result + ((v80 + 32) & ~v80), *(v0 + 360));
    *(v0 + 648) = *(*sub_100006D8C(v81, v81[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);

    *(v0 + 656) = LocalizedStringsRequest.LocalizedString.key.getter();
    *(v0 + 664) = v82;
    *(v0 + 672) = LocalizedStringsRequest.LocalizedString.replacementTokens.getter();
    v83 = swift_task_alloc();
    *(v0 + 680) = v83;
    *v83 = v0;
    v83[1] = sub_1002D9C00;

    return sub_10065CD08();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002D92C4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[65] = v2;

  v7 = v6[48];
  if (v2)
  {
    sub_1000032A8(v7, &qword_1007812A0);
    v8 = sub_1002D95BC;
  }

  else
  {
    v6[66] = a2;
    v6[67] = a1;
    sub_1000032A8(v7, &qword_1007812A0);
    v8 = sub_1002D9434;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002D9434()
{
  v1 = v0[67];
  v2 = v0[66];
  v4 = v0[62];
  v3 = v0[63];
  v5 = v0[60];
  v14 = v0[59];
  v15 = v0[61];
  v6 = v0[53];
  v7 = v0[54];
  v8 = v0[52];
  v13 = v0[51];
  v10 = v0[49];
  v9 = v0[50];
  *v7 = v1;
  v7[1] = v2;
  (*(v6 + 104))(v7, enum case for FetchDataResponse.Response.passbookProvisioning(_:), v8);
  sub_10020ABFC(v1, v2);
  FetchDataResponse.init(response:)();
  sub_100007158(v4, v3);
  sub_100007158(v1, v2);
  (*(v9 + 8))(v13, v10);
  (*(v5 + 8))(v15, v14);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002D95BC()
{
  v38 = v0;
  *(v0 + 272) = *(v0 + 520);
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  if (swift_dynamicCast())
  {

    v1 = *(v0 + 64);
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    static Logger.daemon.getter();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    v36 = v2;
    v35 = v1;
    v34 = v3;
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v37 = v7;
      *v6 = 136446210;
      v8 = sub_10036BCD8(v1, v3, v2);
      if (!v9)
      {
        *(v0 + 88) = v1;
        *(v0 + 96) = v3;
        *(v0 + 104) = v2;

        v8 = String.init<A>(describing:)();
      }

      v11 = *(v0 + 320);
      v10 = *(v0 + 328);
      v12 = *(v0 + 312);
      v13 = sub_1002346CC(v8, v9, &v37);

      *(v6 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error in passbook provisioning: %{public}s", v6, 0xCu);
      sub_10000710C(v7);

      (*(v11 + 8))(v10, v12);
    }

    else
    {
      v21 = *(v0 + 320);
      v20 = *(v0 + 328);
      v22 = *(v0 + 312);

      (*(v21 + 8))(v20, v22);
    }

    v24 = *(v0 + 496);
    v23 = *(v0 + 504);
    v25 = *(v0 + 480);
    v33 = *(v0 + 488);
    v26 = *(v0 + 472);
    v27 = *(v0 + 400);
    v28 = *(v0 + 408);
    v29 = *(v0 + 392);
    sub_1002FF858();
    swift_allocError();
    *v30 = v35;
    *(v30 + 8) = v34;
    *(v30 + 16) = v36;
    swift_willThrow();
    sub_100007158(v24, v23);
    (*(v27 + 8))(v28, v29);
    (*(v25 + 8))(v33, v26);
  }

  else
  {
    v15 = *(v0 + 480);
    v14 = *(v0 + 488);
    v16 = *(v0 + 472);
    v18 = *(v0 + 400);
    v17 = *(v0 + 408);
    v19 = *(v0 + 392);
    sub_100007158(*(v0 + 496), *(v0 + 504));
    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002D9934(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 576) = v2;

  if (v2)
  {

    v7 = sub_1002DA900;
  }

  else
  {
    *(v6 + 584) = a2;
    *(v6 + 592) = a1;

    v7 = sub_1002D9AC8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002D9AC8()
{
  v1 = v0[73];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[59];
  v5 = v0[53];
  v6 = v0[54];
  v7 = v0[52];
  *v6 = v0[74];
  v6[1] = v1;
  (*(v5 + 104))(v6, enum case for FetchDataResponse.Response.searchTerritory(_:), v7);
  FetchDataResponse.init(response:)();
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002D9C00()
{
  v1 = *(*v0 + 648);

  return _swift_task_switch(sub_1002D9D10, v1, 0);
}

uint64_t sub_1002D9D10()
{
  v1 = *(v0 + 648);
  v2 = sub_10036A7A0(*(v0 + 656), *(v0 + 664));
  v3 = v2;
  v5 = v4;
  if (*(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_localizer))
  {
    v61 = v2;
    v6 = *(v0 + 344);
    v7 = *(v0 + 352);
    v8 = *(v0 + 336);
    (*(v6 + 104))(v7, *(v0 + 732), v8);

    v9 = AppleServicesLocalizer.string(forKey:with:using:)();
    v11 = v10;

    (*(v6 + 8))(v7, v8);
    if (!v5 || (v12._countAndFlagsBits = v9, v12._object = v11, AppleServicesLocalizer.isLocalizedString(_:)(v12)))
    {

      goto LABEL_30;
    }

    v37 = *(v0 + 672);

    v38 = 0;
    v39 = *(v37 + 64);
    v40 = -1;
    v41 = -1 << *(v37 + 32);
    if (-v41 < 64)
    {
      v40 = ~(-1 << -v41);
    }

    v42 = v40 & v39;
    v43 = (63 - v41) >> 6;
    v3 = v61;
    if ((v40 & v39) != 0)
    {
      do
      {
        v44 = v3;
        v45 = v5;
        v46 = v38;
LABEL_25:
        v47 = __clz(__rbit64(v42));
        v42 &= v42 - 1;
        v48 = (v46 << 10) | (16 * v47);
        v49 = (*(v37 + 48) + v48);
        v50 = *v49;
        v51 = v49[1];
        v52 = (*(v37 + 56) + v48);
        v53 = *v52;
        v54 = v52[1];
        *(v0 + 176) = v44;
        *(v0 + 184) = v45;
        *(v0 + 192) = 16448;
        *(v0 + 200) = 0xE200000000000000;

        v55._countAndFlagsBits = v50;
        v55._object = v51;
        String.append(_:)(v55);

        v56._countAndFlagsBits = 16448;
        v56._object = 0xE200000000000000;
        String.append(_:)(v56);
        v57 = *(v0 + 200);
        *(v0 + 208) = *(v0 + 192);
        *(v0 + 216) = v57;
        *(v0 + 224) = v53;
        *(v0 + 232) = v54;
        sub_100005E50();
        v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v5 = v58;
      }

      while (v42);
    }

    while (1)
    {
      v46 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v46 >= v43)
      {

        goto LABEL_28;
      }

      v42 = *(v37 + 64 + 8 * v46);
      ++v38;
      if (v42)
      {
        v44 = v3;
        v45 = v5;
        v38 = v46;
        goto LABEL_25;
      }
    }

LABEL_34:
    __break(1u);
    return _swift_task_switch(v13, v14, v15);
  }

  v16 = *(v0 + 672);
  if (v5)
  {
    v17 = 0;
    v60 = *(v0 + 672);
    v18 = -1;
    v19 = -1 << *(v16 + 32);
    if (-v19 < 64)
    {
      v18 = ~(-1 << -v19);
    }

    v20 = v18 & *(v16 + 64);
    for (i = (63 - v19) >> 6; v20; v13 = )
    {
      v22 = v3;
      v23 = v5;
      v24 = v17;
LABEL_14:
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = (v24 << 10) | (16 * v25);
      v27 = (*(v60 + 48) + v26);
      v28 = *v27;
      v29 = v27[1];
      v30 = (*(v60 + 56) + v26);
      v31 = *v30;
      v32 = v30[1];
      *(v0 + 112) = v22;
      *(v0 + 120) = v23;
      *(v0 + 128) = 16448;
      *(v0 + 136) = 0xE200000000000000;

      v33._countAndFlagsBits = v28;
      v33._object = v29;
      String.append(_:)(v33);

      v34._countAndFlagsBits = 16448;
      v34._object = 0xE200000000000000;
      String.append(_:)(v34);
      v35 = *(v0 + 136);
      *(v0 + 144) = *(v0 + 128);
      *(v0 + 152) = v35;
      *(v0 + 160) = v31;
      *(v0 + 168) = v32;
      sub_100005E50();
      v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v5 = v36;
    }

    while (1)
    {
      v24 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v24 >= i)
      {
LABEL_28:

        v9 = v3;
        v11 = v5;
        goto LABEL_30;
      }

      v20 = *(v16 + 64 + 8 * v24);
      ++v17;
      if (v20)
      {
        v22 = v3;
        v23 = v5;
        v17 = v24;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v9 = 0;
  v11 = 0;
LABEL_30:
  *(v0 + 696) = v11;
  *(v0 + 688) = v9;
  v13 = sub_1002DA1D8;
  v14 = 0;
  v15 = 0;

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_1002DA1D8()
{
  v1 = *(v0 + 696);
  v2 = LocalizedStringsRequest.LocalizedString.key.getter();
  v4 = v2;
  v5 = v3;
  if (!v1)
  {
    v4 = sub_10052213C(v2, v3);
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      v8 = (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
      v33 = *(v0 + 640);
      v21 = *(v0 + 624);
      goto LABEL_19;
    }

    v18 = *(v0 + 624);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 256) = v18;
    if (!isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_31;
    }

    v20 = (v0 + 624);
    goto LABEL_11;
  }

  v6 = *(v0 + 624);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 264) = v6;
  v8 = sub_10052213C(v4, v5);
  v10 = *(v6 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_28;
  }

  LOBYTE(v1) = v9;
  if (*(*(v0 + 624) + 24) >= v13)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_29;
    }

    while (1)
    {
LABEL_13:
      v23 = *(v0 + 696);
      v24 = *(v0 + 688);
      v26 = *(v0 + 368);
      v25 = *(v0 + 376);
      v27 = *(v0 + 360);
      if (v1)
      {
        v4 = v8;

        v21 = *(v0 + 264);
        v28 = (v21[7] + 16 * v4);
        *v28 = v24;
        v28[1] = v23;

        v8 = (*(v26 + 8))(v25, v27);
      }

      else
      {
        v21 = *(v0 + 264);
        v21[(v8 >> 6) + 8] |= 1 << v8;
        v29 = (v21[6] + 16 * v8);
        *v29 = v4;
        v29[1] = v5;
        v30 = (v21[7] + 16 * v8);
        *v30 = v24;
        v30[1] = v23;
        v8 = (*(v26 + 8))(v25, v27);
        v31 = v21[2];
        v12 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v12)
        {
          __break(1u);
LABEL_31:
          v20 = (v0 + 256);
          sub_1005C3CD4();
LABEL_11:
          v21 = *v20;
          v22 = *(v0 + 368);
          v5 = *(v0 + 376);
          v1 = *(v0 + 360);

          sub_1005BFE88(v4, v21);
          v8 = (*(v22 + 8))(v5, v1);
        }

        else
        {
          v21[2] = v32;
        }
      }

      v33 = v21;
LABEL_19:
      v34 = *(v0 + 632) + 1;
      if (v34 == *(v0 + 608))
      {

        v36 = *(v0 + 480);
        v35 = *(v0 + 488);
        v37 = *(v0 + 472);
        v38 = *(v0 + 424);
        v39 = *(v0 + 432);
        v40 = *(v0 + 416);
        *v39 = v33;
        (*(v38 + 104))(v39, enum case for FetchDataResponse.Response.localizedStrings(_:), v40);
        FetchDataResponse.init(response:)();
        (*(v36 + 8))(v35, v37);

        v41 = *(v0 + 8);

        return v41();
      }

      *(v0 + 640) = v33;
      *(v0 + 632) = v34;
      *(v0 + 624) = v21;
      v42 = *(v0 + 600);
      if (v34 < *(v42 + 16))
      {
        break;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      v46 = v8;
      sub_1005C3CD4();
      v8 = v46;
    }

    v43 = (*(v0 + 304) + *(v0 + 616));
    (*(*(v0 + 368) + 16))(*(v0 + 376), v42 + ((*(v0 + 728) + 32) & ~*(v0 + 728)) + *(*(v0 + 368) + 72) * v34, *(v0 + 360));
    *(v0 + 648) = *(*sub_100006D8C(v43, v43[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);

    *(v0 + 656) = LocalizedStringsRequest.LocalizedString.key.getter();
    *(v0 + 664) = v44;
    *(v0 + 672) = LocalizedStringsRequest.LocalizedString.replacementTokens.getter();
    v45 = swift_task_alloc();
    *(v0 + 680) = v45;
    *v45 = v0;
    v45[1] = sub_1002D9C00;

    return sub_10065CD08();
  }

  else
  {
    sub_1005B996C(v13, v7);
    v8 = sub_10052213C(v4, v5);
    if ((v1 & 1) == (v14 & 1))
    {
      goto LABEL_13;
    }

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }
}

uint64_t sub_1002DA6AC(uint64_t a1)
{
  *(*v1 + 720) = a1;

  return _swift_task_switch(sub_1002DA7CC, 0, 0);
}

uint64_t sub_1002DA7CC()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[59];
  v4 = v0[53];
  v5 = v0[54];
  v6 = v0[52];
  *v5 = v0[90];
  (*(v4 + 104))(v5, enum case for FetchDataResponse.Response.ageExceptionRequests(_:), v6);
  FetchDataResponse.init(response:)();
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002DA900()
{
  (*(v0[60] + 8))(v0[61], v0[59]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002DA9F4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 typeForInstallMachinery];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_10;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v10)
  {
LABEL_10:

    return 0;
  }

  if (v8 == v11 && v10 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = [a1 iTunesMetadata];
  v17 = [v16 distributorInfo];

  v18 = [v17 developerID];
  if (!v18)
  {
    return 0;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 != a2 || v21 != a3)
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      return sub_10060C798() & 1;
    }

    return 0;
  }

  return sub_10060C798() & 1;
}

uint64_t sub_1002DABD4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v50 = *(v13 - 8);
  v14 = *(v50 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v53 = sub_1001F6740(&off_100758750);
  sub_1002FC188(&unk_100758770);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v4;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1006A0E40;
  *(v21 + 24) = v20;
  v51 = v21;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = objc_opt_self();
  v24 = v4;
  v52 = v20;

  sub_10020ABFC(a1, a2);
  v25 = [v23 currentConnection];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v28 = swift_dynamicCast();
    v29 = v59;
    if (!v28)
    {
      v29 = 0;
    }

    v49 = v29;
    [v26 auditToken];
    v44 = v58;
    v46 = v57;
  }

  else
  {
    v49 = 0;
    v46 = 0u;
    v44 = 0u;
  }

  v60 = v26 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, v16, &qword_10077F8D0);
  v30 = (v50[80] + 49) & ~v50[80];
  v31 = v30 + v14;
  v50 = v12;
  v32 = (v30 + v14) & 0xFFFFFFFFFFFFFFF8;
  v45 = v10;
  v47 = v26;
  v48 = v18;
  v33 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = "Set data";
  *(v35 + 40) = 8;
  *(v35 + 48) = 2;
  sub_10020A668(v16, v35 + v30, &qword_10077F8D0);
  *(v35 + v31) = 1;
  *(v35 + v32 + 8) = v49;
  v36 = v35 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v37 = v44;
  *v36 = v46;
  *(v36 + 16) = v37;
  *(v36 + 32) = v60;
  v38 = v35 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v38 = v53;
  *(v38 + 8) = 1;
  v39 = (v35 + v33);
  v40 = v51;
  *v39 = &unk_1006A0E48;
  v39[1] = v40;
  v41 = (v35 + v34);
  v42 = v56;
  *v41 = v55;
  v41[1] = v42;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v45, &unk_1006A0E50, v35);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v48, &qword_10077F8D0);
}

uint64_t sub_1002DB120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[46] = a7;
  v8[47] = a8;
  v8[44] = a5;
  v8[45] = a6;
  v8[42] = a3;
  v8[43] = a4;
  v8[41] = a2;
  v9 = type metadata accessor for SetPrivateDataRequest.Request();
  v8[48] = v9;
  v8[49] = *(v9 - 8);
  v8[50] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[51] = v10;
  v8[52] = *(v10 - 8);
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v11 = type metadata accessor for SetPrivateDataRequest();
  v8[55] = v11;
  v8[56] = *(v11 - 8);
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();

  return _swift_task_switch(sub_1002DB2BC, 0, 0);
}

uint64_t sub_1002DB2BC()
{
  v133 = v0;
  sub_100302E04(&qword_10077FC18, &type metadata accessor for SetPrivateDataRequest);
  sub_100302E04(&unk_10077FC20, &type metadata accessor for SetPrivateDataRequest);
  decodeXPCValues<A>(from:)();
  v0[59] = 0;
  v2 = v0[57];
  v3 = v0[58];
  v4 = v0[55];
  v5 = v0[56];
  static Logger.daemon.getter();
  (*(v5 + 16))(v2, v3, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[56];
  v9 = v0[57];
  v12 = v0[54];
  v11 = v0[55];
  v13 = v0[51];
  v14 = v0[52];
  if (v8)
  {
    v121 = v0[43];
    v123 = v0[44];
    v118 = v0[41];
    v119 = v0[42];
    v130 = v0[51];
    v15 = swift_slowAlloc();
    v132[0] = swift_slowAlloc();
    *v15 = 136446466;
    v16 = SetPrivateDataRequest.stringValue.getter();
    v127 = v12;
    v18 = v17;
    v120 = v7;
    v19 = *(v10 + 8);
    v19(v9, v11);
    v20 = sub_1002346CC(v16, v18, v132);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    v21 = audit_token_t.signingIdentifier.getter(v118, v119, v121, v123);
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v21 = 0x6E776F6E6B6E55;
      v23 = 0xE700000000000000;
    }

    v24 = sub_1002346CC(v21, v23, v132);

    *(v15 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v6, v120, "Set private data request %{public}s called by %{public}s", v15, 0x16u);
    swift_arrayDestroy();

    v25 = *(v14 + 8);
    v25(v127, v130);
  }

  else
  {

    v19 = *(v10 + 8);
    v19(v9, v11);
    v25 = *(v14 + 8);
    v25(v12, v13);
  }

  v0[60] = v25;
  v0[61] = v19;
  v27 = v0[49];
  v26 = v0[50];
  v28 = v0[48];
  SetPrivateDataRequest.request.getter();
  v29 = (*(v27 + 88))(v26, v28);
  if (v29 == enum case for SetPrivateDataRequest.Request.approveDeveloper(_:))
  {
    v30 = v0[50];
    (*(v0[49] + 96))(v30, v0[48]);
    v0[62] = *v30;
    v0[63] = v30[1];
    v0[64] = v30[2];
    v0[65] = v30[3];
    v0[66] = v30[4];
    v0[67] = v30[5];
    v31 = swift_task_alloc();
    v0[68] = v31;
    *v31 = v0;
    v31[1] = sub_1002DC2B0;
    v32 = (v0 + 25);
LABEL_15:

    return sub_100324690(v32);
  }

  if (v29 == enum case for SetPrivateDataRequest.Request.conditionallyApproveDeveloper(_:))
  {
    v33 = v0[50];
    (*(v0[49] + 96))(v33, v0[48]);
    v0[70] = *v33;
    v0[71] = v33[1];
    v34 = swift_task_alloc();
    v0[72] = v34;
    *v34 = v0;
    v34[1] = sub_1002DC808;
    v32 = (v0 + 20);
    goto LABEL_15;
  }

  if (v29 == enum case for SetPrivateDataRequest.Request.distributorPriorityList(_:))
  {
    v35 = v0[50];
    v36 = v0[47];
    (*(v0[49] + 96))(v35, v0[48]);
    v37 = *v35;
    sub_100006D8C((v36 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v36 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24));

    sub_10064FD5C(v37);
    v19(v0[58], v0[55]);

    goto LABEL_20;
  }

  if (v29 != enum case for SetPrivateDataRequest.Request.revokeDeveloperApproval(_:))
  {
    if (v29 != enum case for SetPrivateDataRequest.Request.showInstallSheet(_:))
    {
      if (v29 != enum case for SetPrivateDataRequest.Request.searchTerritoryForDistributor(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v55 = v0[50];
      v56 = v0[47];
      (*(v0[49] + 96))(v55, v0[48]);
      v57 = *v55;
      v58 = v55[1];
      v0[94] = v58;
      v59 = v55[2];
      v60 = v55[3];
      v0[95] = v60;
      v61 = *(*sub_100006D8C((v56 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v56 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_secureStorage);
      v0[96] = v61;
      v62 = swift_task_alloc();
      v0[97] = v62;
      v62[2] = v57;
      v62[3] = v58;
      v62[4] = v59;
      v62[5] = v60;
      v131 = sub_10052F6E8;

      v63 = swift_task_alloc();
      v0[98] = v63;
      *v63 = v0;
      v63[1] = sub_1002DD954;
      v64 = sub_100302F4C;
      goto LABEL_49;
    }

    v46 = v0[50];
    v47 = v0[47];
    (*(v0[49] + 96))(v46, v0[48]);
    v48 = *v46;
    v49 = *(v46 + 8);
    v50 = *(v46 + 16);
    sub_100006D8C((v47 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v47 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24));

    v51 = sub_1000071AC();
    v52 = sub_100652310(v48, v49, v50, v51);

    sub_100651160(v52);
    v53 = v0[58];
    v54 = v0[55];

    v19(v53, v54);
LABEL_20:

    v38 = v0[1];

    return v38();
  }

  v39 = v0[50];
  v40 = v0[47];
  (*(v0[49] + 96))(v39, v0[48]);
  v41 = *v39;
  v0[76] = *v39;
  v42 = *(v39 + 8);
  v0[77] = v42;
  v43 = *(v39 + 16);
  v44 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
  v0[78] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
  sub_100006D8C((v40 + v44), *(v40 + v44 + 24));

  v0[79] = sub_10058B67C(v41, v42);
  v0[80] = v45;

  v65 = [objc_opt_self() enumeratorWithOptions:0];
  v0[81] = v65;
  v66 = swift_allocObject();
  *(v66 + 16) = v41;
  *(v66 + 24) = v42;
  v0[18] = sub_1002FF73C;
  v0[19] = v66;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_100009BE4;
  v0[17] = &unk_10075DC10;
  v67 = _Block_copy(v0 + 14);

  [v65 setFilter:v67];
  _Block_release(v67);
  v128 = v65;
  v68 = [v65 allObjects];
  v69 = &type metadata for Any;
  v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v71 = *(v70 + 16);
  if (v71)
  {
    v122 = v43;
    v125 = v19;
    v72 = _swiftEmptyArrayStorage;
    v73 = v70 + 32;
    v74 = &qword_100784500;
    do
    {
      sub_10020A6D0(v73, (v0 + 30));
      sub_10020A6D0((v0 + 30), (v0 + 34));
      sub_100006190(0, v74);
      if (swift_dynamicCast() && (v75 = v0[38], v76 = [v75 bundleIdentifier], v75, v76))
      {
        v77 = v74;
        v78 = v69;
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        sub_10000710C((v0 + 30));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_100009530(0, *(v72 + 2) + 1, 1, v72);
        }

        v83 = *(v72 + 2);
        v82 = *(v72 + 3);
        if (v83 >= v82 >> 1)
        {
          v72 = sub_100009530((v82 > 1), v83 + 1, 1, v72);
        }

        *(v72 + 2) = v83 + 1;
        v84 = &v72[16 * v83];
        *(v84 + 4) = v79;
        *(v84 + 5) = v81;
        v69 = v78;
        v74 = v77;
      }

      else
      {
        sub_10000710C((v0 + 30));
      }

      v73 += 32;
      --v71;
    }

    while (v71);

    v19 = v125;
    v43 = v122;
  }

  else
  {

    v72 = _swiftEmptyArrayStorage;
  }

  v0[82] = v72;
  v93 = *(v72 + 2);
  v0[83] = v93;
  if (!v93)
  {
    v19(v0[58], v0[55]);

    goto LABEL_20;
  }

  if (v43)
  {
    v0[84] = 0;
    if (*(v72 + 2))
    {
      v95 = *(v72 + 4);
      v94 = *(v72 + 5);

      static Logger.daemon.getter();

      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = v0[80];
        v99 = swift_slowAlloc();
        v0[40] = swift_slowAlloc();
        *v99 = 136446466;
        *(v99 + 4) = sub_1002346CC(v95, v94, v0 + 40);
        *(v99 + 12) = 2082;
        if (v98)
        {
          v100 = v0 + 79;
          v101 = v0[80];
        }

        else
        {
          v100 = v0 + 76;
          v101 = v0[77];
        }

        v108 = *v100;
        v126 = v0[53];
        v129 = v0[60];
        v124 = v0[51];

        v109 = sub_1002346CC(v108, v101, v0 + 40);

        *(v99 + 14) = v109;
        _os_log_impl(&_mh_execute_header, v96, v97, "Uninstalling %{public}s after revoking approval of %{public}s", v99, 0x16u);
        swift_arrayDestroy();

        v129(v126, v124);
      }

      else
      {
        v105 = v0[60];
        v106 = v0[53];
        v107 = v0[51];

        v105(v106, v107);
      }

      v110 = objc_allocWithZone(IXApplicationIdentity);
      v111 = String._bridgeToObjectiveC()();
      v112 = [v110 initWithBundleID:v111];
      v0[85] = v112;

      v85 = [objc_allocWithZone(IXUninstallOptions) init];
      v0[86] = v85;
      if (v85)
      {
        v113 = v85;

        [v113 setRequestUserConfirmation:0];
        v114 = sub_100006190(0, &qword_10077FC30);
        v115 = swift_task_alloc();
        v0[87] = v115;
        v115[2] = v114;
        v115[3] = v112;
        v115[4] = v113;
        v116 = swift_task_alloc();
        v0[88] = v116;
        type metadata accessor for IXUninstallDisposition(0);
        v92 = v117;
        *v116 = v0;
        v116[1] = sub_1002DD00C;
        v90 = sub_100271CF0;
        v85 = v0 + 39;
        v88 = 0xD00000000000001BLL;
        v89 = 0x80000001006C4EE0;
        v86 = 0;
        v87 = 0;
        v91 = v115;

        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v85, v86, v87, v88, v89, v90, v91, v92);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v85, v86, v87, v88, v89, v90, v91, v92);
  }

  v102 = v0[78];
  v103 = v0[47];

  v61 = *(*sub_100006D8C((v103 + v102), *(v103 + v102 + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_webDistributionUpdateDatabase);
  v0[90] = v61;
  v62 = swift_task_alloc();
  v0[91] = v62;
  v62[2] = v72;
  v131 = sub_10052C9E4;

  v104 = swift_task_alloc();
  v0[92] = v104;
  *v104 = v0;
  v104[1] = sub_1002DD720;
  v64 = sub_1002FF744;
LABEL_49:

  return v131(v131, v64, v62, v61);
}

uint64_t sub_1002DC2B0()
{

  return _swift_task_switch(sub_1002DC3AC, 0, 0);
}

uint64_t sub_1002DC3AC()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = sub_100006D8C(v0 + 25, v2);
  v4 = swift_task_alloc();
  v0[69] = v4;
  *v4 = v0;
  v4[1] = sub_1002DC474;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002DC474(char a1)
{
  *(*v1 + 800) = a1;

  return _swift_task_switch(sub_1002DC574, 0, 0);
}

uint64_t sub_1002DC574()
{
  v1 = *(v0 + 536);
  if (*(v0 + 800) == 1)
  {
    v2 = *(v0 + 528);
    v3 = *(v0 + 520);
    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 496);
    sub_100006D8C((*(v0 + 376) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(*(v0 + 376) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24));

    sub_10058B130(v6, v5, v4, v3, v2, v1);
    (*(*(v0 + 448) + 8))(*(v0 + 464), *(v0 + 440));
  }

  else
  {
    v7 = *(v0 + 464);
    v8 = *(v0 + 440);
    v9 = *(v0 + 448);

    v10 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for MarketplaceKitError.featureUnavailable(_:), v10);
    swift_willThrow();
    (*(v9 + 8))(v7, v8);
  }

  sub_10000710C(v0 + 200);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1002DC808()
{

  return _swift_task_switch(sub_1002DC904, 0, 0);
}

uint64_t sub_1002DC904()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = sub_100006D8C(v0 + 20, v2);
  v4 = swift_task_alloc();
  v0[73] = v4;
  *v4 = v0;
  v4[1] = sub_1002DC9CC;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002DC9CC(char a1)
{
  *(*v1 + 801) = a1;

  return _swift_task_switch(sub_1002DCACC, 0, 0);
}

uint64_t sub_1002DCACC()
{
  if (*(v0 + 801) == 1)
  {
    v1 = *(v0 + 376) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
    v2 = *(v1 + 24);
    v17 = *(v1 + 56);
    v18 = *(v1 + 40);
    v15 = *(v1 + 88);
    v16 = *(v1 + 72);
    v3 = sub_100006D8C(v1, v2);
    *(v0 + 40) = v2;
    *(v0 + 48) = v18;
    *(v0 + 64) = v17;
    *(v0 + 80) = v16;
    *(v0 + 96) = v15;
    v4 = sub_10020A748((v0 + 16));
    (*(*(v2 - 8) + 16))(v4, v3, v2);
    v5 = swift_task_alloc();
    *(v0 + 592) = v5;
    *v5 = v0;
    v5[1] = sub_1002DCD60;
    v6 = *(v0 + 568);
    v7 = *(v0 + 560);

    return sub_1004260D8(v7, v6, v0 + 16);
  }

  else
  {
    v9 = *(v0 + 488);
    v10 = *(v0 + 464);
    v11 = *(v0 + 440);

    v12 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for MarketplaceKitError.featureUnavailable(_:), v12);
    swift_willThrow();
    v9(v10, v11);
    sub_10000710C(v0 + 160);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1002DCD60()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v3 = sub_1002DCF44;
  }

  else
  {
    sub_10000710C(v2 + 16);
    v3 = sub_1002DCE8C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002DCE8C()
{
  (*(v0 + 488))(*(v0 + 464), *(v0 + 440));
  sub_10000710C(v0 + 160);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002DCF44()
{
  (*(v0 + 488))(*(v0 + 464), *(v0 + 440));
  sub_10000710C(v0 + 160);
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002DD00C()
{
  *(*v1 + 712) = v0;

  if (v0)
  {

    v2 = sub_1002DD648;
  }

  else
  {

    v2 = sub_1002DD16C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002DD16C()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 664);
  v3 = *(v0 + 672) + 1;

  if (v3 != v2)
  {
    v19 = *(v0 + 672) + 1;
    *(v0 + 672) = v19;
    v20 = *(v0 + 656);
    if (v19 >= *(v20 + 16))
    {
      __break(1u);
    }

    else
    {
      v21 = v20 + 16 * v19;
      v23 = *(v21 + 32);
      v22 = *(v21 + 40);

      static Logger.daemon.getter();

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = *(v0 + 640);
        v27 = swift_slowAlloc();
        *(v0 + 320) = swift_slowAlloc();
        *v27 = 136446466;
        *(v27 + 4) = sub_1002346CC(v23, v22, (v0 + 320));
        *(v27 + 12) = 2082;
        if (v26)
        {
          v28 = (v0 + 632);
          v29 = *(v0 + 640);
        }

        else
        {
          v29 = *(v0 + 616);
          v28 = (v0 + 608);
        }

        v33 = *v28;
        v44 = *(v0 + 424);
        v45 = *(v0 + 480);
        v34 = *(v0 + 408);

        v35 = sub_1002346CC(v33, v29, (v0 + 320));

        *(v27 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v24, v25, "Uninstalling %{public}s after revoking approval of %{public}s", v27, 0x16u);
        swift_arrayDestroy();

        v45(v44, v34);
      }

      else
      {
        v30 = *(v0 + 480);
        v31 = *(v0 + 424);
        v32 = *(v0 + 408);

        v30(v31, v32);
      }

      v36 = objc_allocWithZone(IXApplicationIdentity);
      v37 = String._bridgeToObjectiveC()();
      v38 = [v36 initWithBundleID:v37];
      *(v0 + 680) = v38;

      v4 = [objc_allocWithZone(IXUninstallOptions) init];
      *(v0 + 688) = v4;
      if (v4)
      {
        v39 = v4;

        [v39 setRequestUserConfirmation:0];
        v40 = sub_100006190(0, &qword_10077FC30);
        v41 = swift_task_alloc();
        *(v0 + 696) = v41;
        v41[2] = v40;
        v41[3] = v38;
        v41[4] = v39;
        v42 = swift_task_alloc();
        *(v0 + 704) = v42;
        type metadata accessor for IXUninstallDisposition(0);
        v11 = v43;
        *v42 = v0;
        v42[1] = sub_1002DD00C;
        v9 = sub_100271CF0;
        v4 = (v0 + 312);
        v8 = 0x80000001006C4EE0;
        v5 = 0;
        v6 = 0;
        v7 = 0xD00000000000001BLL;
        v10 = v41;

        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    __break(1u);
    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = *(v0 + 656);
  v13 = *(v0 + 624);
  v14 = *(v0 + 376);

  v15 = *(*sub_100006D8C((v14 + v13), *(v14 + v13 + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_webDistributionUpdateDatabase);
  *(v0 + 720) = v15;
  v16 = swift_task_alloc();
  *(v0 + 728) = v16;
  *(v16 + 16) = v12;

  v17 = swift_task_alloc();
  *(v0 + 736) = v17;
  *v17 = v0;
  v17[1] = sub_1002DD720;

  return sub_10052C9E4(sub_10052C9E4, sub_1002FF744, v16, v15);
}

uint64_t sub_1002DD648()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 648);
  v3 = *(v0 + 488);
  v4 = *(v0 + 464);
  v5 = *(v0 + 440);

  v3(v4, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002DD720()
{
  *(*v1 + 744) = v0;

  if (v0)
  {
    v2 = sub_1002DDB94;
  }

  else
  {
    v2 = sub_1002DD894;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002DD894()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 464);
  v3 = *(v0 + 440);

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002DD954()
{
  *(*v1 + 792) = v0;

  if (v0)
  {
    v2 = sub_1002DDC5C;
  }

  else
  {
    v2 = sub_1002DDAE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002DDAE4()
{
  (*(v0 + 488))(*(v0 + 464), *(v0 + 440));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002DDB94()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 464);
  v3 = *(v0 + 440);

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002DDC5C()
{
  (*(v0 + 488))(*(v0 + 464), *(v0 + 440));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002DDD14(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 iTunesMetadata];
  v6 = [v5 distributorInfo];

  v7 = [v6 developerID];
  if (!v7)
  {
    return 0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v8 == a2 && v10 == a3)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_10060C798() & 1;
}

void sub_1002DDE04(void **a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v20 = *a1;
    type metadata accessor for MarketplaceUpdateEntity.Entity();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = sub_100213FA0(&qword_10077F9E8, &qword_10077F9E0);
    v4 = (a2 + 40);
    while (1)
    {
      v21 = v4;
      v22 = v2;
      v6 = *(v4 - 1);
      v5 = *v4;
      v25 = sub_1001F0C48(&qword_10077F9E0);
      v26 = v18;
      LOWORD(aBlock) = 2;
      *(&aBlock + 1) = v6;
      v24 = v5;
      sub_1001F0C48(&qword_10077F9F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10069E680;
      sub_1001DFDBC(&aBlock, inited + 32);
      sub_1001F0C48(&qword_10077F9F8);
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_10069E680;
      *(v8 + 32) = inited;
      swift_bridgeObjectRetain_n();
      v9 = sub_1005AEA0C(v8);
      swift_setDeallocating();
      sub_1000032A8(v8 + 32, &qword_10077FA00);
      v28 = 0;
      v10 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:ObjCClassFromMetadata memoryEntityClass:0];
      v11 = sub_10047EDB4(0, v9);
      [v10 setPredicate:v11];

      v12 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:v20 descriptor:v10];
      v13 = swift_allocObject();
      v13[2] = &v28;
      v13[3] = sub_1003D3B74;
      v13[4] = 0;
      v13[5] = v20;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1002398F8;
      *(v14 + 24) = v13;
      v26 = sub_100302FA4;
      v27 = v14;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v24 = sub_10047E468;
      v25 = &unk_10075DC88;
      v15 = _Block_copy(&aBlock);
      v16 = v20;

      [v12 enumeratePersistentIDsUsingBlock:v15];

      _Block_release(v15);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if (v15)
      {
        break;
      }

      v17 = v28;

      if (v17)
      {
        [v17 deleteFromDatabase];
      }

      v4 = v21 + 2;
      v2 = v22 - 1;
      if (v22 == 1)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002DE1C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v52 = *(v13 - 8);
  v14 = *(v52 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = type metadata accessor for LogKey.Prefix();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v53 = sub_1001F6740(&off_1007587F0);
  swift_arrayDestroy();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v54 = v20;
  v20[4] = v4;
  v21 = objc_opt_self();
  v22 = v4;
  sub_10020ABFC(a1, a2);
  v23 = [v21 currentConnection];
  v24 = v23;
  if (v23)
  {
    v25 = [v23 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v26 = swift_dynamicCast();
    v27 = v60;
    if (!v26)
    {
      v27 = 0;
    }

    v51 = v27;
    [v24 auditToken];
    v47 = v59;
    v48 = v58;
  }

  else
  {
    v51 = 0;
    v48 = 0u;
    v47 = 0u;
  }

  v61 = v24 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v17, &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_10077F8D0);
  v28 = v52[80];
  v52 = v12;
  v29 = (v28 + 49) & ~v28;
  v30 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v29 + v14;
  v49 = v24;
  v50 = v17;
  v32 = (v29 + v14) & 0xFFFFFFFFFFFFFFF8;
  v46 = v10;
  v33 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = "Fetch data for distributor";
  *(v36 + 40) = 26;
  *(v36 + 48) = 2;
  sub_10020A668(v30, v36 + v29, &qword_10077F8D0);
  *(v36 + v31) = 1;
  *(v36 + v32 + 8) = v51;
  v37 = v36 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v38 = v47;
  *v37 = v48;
  *(v37 + 16) = v38;
  *(v37 + 32) = v61;
  v39 = v36 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  v40 = v54;
  *v39 = v53;
  *(v39 + 8) = 0;
  v41 = (v36 + v33);
  *v41 = &unk_1006A0DF8;
  v41[1] = v40;
  v42 = (v36 + v34);
  v43 = v57;
  *v42 = v56;
  v42[1] = v43;
  *(v36 + v35) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v46, &unk_1006A0E08, v36);

  swift_unknownObjectRelease();

  sub_1000032A8(v52, &unk_100780380);
  return sub_1000032A8(v50, &qword_10077F8D0);
}

uint64_t sub_1002DE6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v14;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a1;
  v8[3] = a3;
  Data = type metadata accessor for FetchDataResponse.Response();
  v8[10] = Data;
  v8[11] = *(Data - 8);
  v8[12] = swift_task_alloc();
  PublicData = type metadata accessor for FetchPublicDataRequest.Request();
  v8[13] = PublicData;
  v8[14] = *(PublicData - 8);
  v8[15] = swift_task_alloc();
  PublicDataRequest = type metadata accessor for FetchPublicDataRequest();
  v8[16] = PublicDataRequest;
  v8[17] = *(PublicDataRequest - 8);
  v8[18] = swift_task_alloc();

  return _swift_task_switch(sub_1002DE854, 0, 0);
}

uint64_t sub_1002DE854()
{
  v1 = audit_token_t.signingIdentifier.getter(v0[3], v0[4], v0[5], v0[6]);
  v0[19] = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    sub_100302E04(&qword_10077FC08, &type metadata accessor for FetchPublicDataRequest);
    sub_100302E04(&qword_10077FC10, &type metadata accessor for FetchPublicDataRequest);
    decodeXPCValues<A>(from:)();
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    FetchPublicDataRequest.request.getter();
    v12 = (*(v10 + 88))(v9, v11);
    if (v12 == enum case for FetchPublicDataRequest.Request.searchTerritory(_:))
    {
      v13 = *(*sub_100006D8C((v0[9] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v0[9] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_secureStorage);
      v0[20] = v13;
      v14 = swift_task_alloc();
      v0[21] = v14;
      *(v14 + 16) = v3;
      *(v14 + 24) = v4;

      v15 = swift_task_alloc();
      v0[22] = v15;
      *v15 = v0;
      v15[1] = sub_1002DECBC;

      return sub_1003B33C0(sub_1002FF640, v14, v13);
    }

    else if (v12 == enum case for FetchPublicDataRequest.Request.ageExceptionRequests(_:))
    {
      v0[26] = *(*sub_100006D8C((v0[9] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v0[9] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_exceptionRequestService);

      v16 = swift_task_alloc();
      v0[27] = v16;
      *v16 = v0;
      v16[1] = sub_1002DEF34;

      return sub_1005A09B0(v3, v4);
    }

    else
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  else
  {
    v5 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for MarketplaceKitError.featureUnavailable(_:), v5);
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1002DECBC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 184) = v2;

  if (v2)
  {

    v7 = sub_1002DF158;
  }

  else
  {
    *(v6 + 192) = a2;
    *(v6 + 200) = a1;

    v7 = sub_1002DEE48;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002DEE48()
{
  *v0[6].i64[0] = vextq_s8(v0[12], v0[12], 8uLL);
  v2 = v0[8].i64[1];
  v1 = v0[9].i64[0];
  v3 = v0[8].i64[0];
  (*(v0[5].i64[1] + 104))(v0[6].i64[0], enum case for FetchDataResponse.Response.searchTerritory(_:), v0[5].i64[0]);
  FetchDataResponse.init(response:)();
  (*(v2 + 8))(v1, v3);

  v4 = v0->i64[1];

  return v4();
}

uint64_t sub_1002DEF34(uint64_t a1)
{
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_1002DF070, 0, 0);
}

uint64_t sub_1002DF070()
{
  **(v0 + 96) = *(v0 + 224);
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  (*(*(v0 + 88) + 104))(*(v0 + 96), enum case for FetchDataResponse.Response.ageExceptionRequests(_:), *(v0 + 80));
  FetchDataResponse.init(response:)();
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002DF158()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002DF1F4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_1002FA83C(4, *a1, sub_100536034);
  if (!result)
  {
    goto LABEL_6;
  }

  v8 = result;
  if (!*(result + 16) || (v9 = sub_10052213C(a2, a3), (v10 & 1) == 0))
  {

LABEL_6:
    v13 = 0;
    v12 = 0;
    goto LABEL_7;
  }

  v11 = (*(v8 + 56) + 16 * v9);
  v13 = *v11;
  v12 = v11[1];

LABEL_7:
  *a4 = v13;
  a4[1] = v12;
  return result;
}

uint64_t sub_1002DF2DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a3;
  v58 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v52 = *(v13 - 8);
  v14 = *(v52 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = type metadata accessor for LogKey.Prefix();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v54 = sub_1001F6740(&off_100758850);
  swift_arrayDestroy();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v4;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1006A0DA8;
  *(v21 + 24) = v19;
  v53 = v21;
  v22 = objc_opt_self();
  v23 = v4;
  v55 = v19;

  sub_10020ABFC(a1, a2);
  v24 = [v22 currentConnection];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v27 = swift_dynamicCast();
    v28 = v61;
    if (!v27)
    {
      v28 = 0;
    }

    v51 = v28;
    [v25 auditToken];
    v47 = v60;
    v48 = v59;
  }

  else
  {
    v51 = 0;
    v48 = 0u;
    v47 = 0u;
  }

  v62 = v25 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v17, &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_10077F8D0);
  v29 = v52[80];
  v52 = v12;
  v30 = (v29 + 49) & ~v29;
  v49 = v25;
  v31 = v30 + v14;
  v32 = (v30 + v14) & 0xFFFFFFFFFFFFFFF8;
  v46 = v10;
  v33 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v50 = v17;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = "Set data for distributor";
  *(v36 + 40) = 24;
  *(v36 + 48) = 2;
  sub_10020A668(v33, v36 + v30, &qword_10077F8D0);
  *(v36 + v31) = 1;
  *(v36 + v32 + 8) = v51;
  v37 = v36 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v38 = v47;
  *v37 = v48;
  *(v37 + 16) = v38;
  *(v37 + 32) = v62;
  v39 = v36 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  v40 = v53;
  *v39 = v54;
  *(v39 + 8) = 0;
  v41 = (v36 + v34);
  *v41 = &unk_1006A0DB8;
  v41[1] = v40;
  v42 = (v36 + v35);
  v43 = v58;
  *v42 = v57;
  v42[1] = v43;
  *(v36 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v46, &unk_1006A0DC0, v36);

  swift_unknownObjectRelease();

  sub_1000032A8(v52, &unk_100780380);
  return sub_1000032A8(v50, &qword_10077F8D0);
}

uint64_t sub_1002DF828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[76] = a8;
  v8[75] = a7;
  v8[74] = a6;
  v8[73] = a5;
  v8[72] = a4;
  v8[71] = a3;
  v8[70] = a2;
  v9 = type metadata accessor for UUID();
  v8[77] = v9;
  v8[78] = *(v9 - 8);
  v8[79] = swift_task_alloc();
  v8[80] = swift_task_alloc();
  v8[81] = swift_task_alloc();
  v8[82] = swift_task_alloc();
  v10 = type metadata accessor for SetPublicDataRequest.Request();
  v8[83] = v10;
  v8[84] = *(v10 - 8);
  v8[85] = swift_task_alloc();
  v11 = type metadata accessor for SetPublicDataRequest();
  v8[86] = v11;
  v8[87] = *(v11 - 8);
  v8[88] = swift_task_alloc();

  return _swift_task_switch(sub_1002DF9DC, 0, 0);
}

uint64_t sub_1002DF9DC()
{
  sub_100302E04(&qword_10077FB90, &type metadata accessor for SetPublicDataRequest);
  sub_100302E04(&qword_10077FB98, &type metadata accessor for SetPublicDataRequest);
  decodeXPCValues<A>(from:)();
  v3 = audit_token_t.signingIdentifier.getter(v0[70], v0[71], v0[72], v0[73]);
  v0[89] = v4;
  v5 = v0[88];
  if (v4)
  {
    v6 = v3;
    v7 = v4;
    v8 = v0[85];
    v9 = v0[84];
    v10 = v0[83];
    SetPublicDataRequest.request.getter();
    v11 = (*(v9 + 88))(v8, v10);
    if (v11 == enum case for SetPublicDataRequest.Request.searchTerritory(_:))
    {
      v12 = v0[85];
      v13 = v0[76];
      (*(v0[84] + 96))(v12, v0[83]);
      v14 = *v12;
      v15 = v12[1];
      v0[117] = v15;
      v16 = *(*sub_100006D8C((v13 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v13 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_secureStorage);
      v0[118] = v16;
      v17 = swift_task_alloc();
      v0[119] = v17;
      v17[2] = v14;
      v17[3] = v15;
      v17[4] = v6;
      v17[5] = v7;

      v18 = swift_task_alloc();
      v0[120] = v18;
      *v18 = v0;
      v18[1] = sub_1002E263C;

      return sub_10052F6E8(sub_10052F6E8, sub_1002FF228, v17, v16);
    }

    else
    {
      if (v11 == enum case for SetPublicDataRequest.Request.cancelPendingInstall(_:))
      {
        v23 = v0[85];
        v24 = v0[84];
        v25 = v0[83];
        v26 = v0[82];
        v27 = v0[78];
        v28 = v0[77];

        (*(v24 + 96))(v23, v25);
        (*(v27 + 32))(v26, v23, v28);
        v29 = swift_task_alloc();
        v0[90] = v29;
        *v29 = v0;
        v29[1] = sub_1002E0198;
        v30 = (v0 + 65);
      }

      else if (v11 == enum case for SetPublicDataRequest.Request.confirmPendingInstall(_:))
      {
        v31 = v0[85];
        v32 = v0[84];
        v33 = v0[83];
        v34 = v0[81];
        v35 = v0[78];
        v36 = v0[77];

        (*(v32 + 96))(v31, v33);
        v37 = sub_1001F0C48(&qword_10077FBA8);
        v38 = (v31 + *(v37 + 48));
        v0[95] = *v38;
        v0[96] = v38[1];
        v39 = (v31 + *(v37 + 64));
        v0[97] = *v39;
        v0[98] = v39[1];
        (*(v35 + 32))(v34, v31, v36);
        v40 = swift_task_alloc();
        v0[99] = v40;
        *v40 = v0;
        v40[1] = sub_1002E0A98;
        v30 = (v0 + 60);
      }

      else if (v11 == enum case for SetPublicDataRequest.Request.cancelPendingInstallBatch(_:))
      {
        v41 = v0[85];
        v42 = v0[84];
        v43 = v0[83];
        v44 = v0[80];
        v45 = v0[78];
        v46 = v0[77];

        (*(v42 + 96))(v41, v43);
        (*(v45 + 32))(v44, v41, v46);
        v47 = swift_task_alloc();
        v0[104] = v47;
        *v47 = v0;
        v47[1] = sub_1002E13F8;
        v30 = (v0 + 55);
      }

      else
      {
        if (v11 != enum case for SetPublicDataRequest.Request.confirmPendingInstallBatch(_:))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v48 = v0[85];
        v49 = v0[84];
        v50 = v0[83];
        v51 = v0[79];
        v52 = v0[78];
        v53 = v0[77];

        (*(v49 + 96))(v48, v50);
        v54 = sub_1001F0C48(&qword_10077FBA0);
        v0[109] = *(v48 + *(v54 + 48));
        v55 = (v48 + *(v54 + 64));
        v0[110] = *v55;
        v0[111] = v55[1];
        (*(v52 + 32))(v51, v48, v53);
        v56 = swift_task_alloc();
        v0[112] = v56;
        *v56 = v0;
        v56[1] = sub_1002E1CE8;
        v30 = (v0 + 50);
      }

      return sub_100324690(v30);
    }
  }

  else
  {
    v19 = v0[87];
    v20 = v0[86];
    v21 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, enum case for MarketplaceKitError.featureUnavailable(_:), v21);
    swift_willThrow();
    (*(v19 + 8))(v5, v20);

    v1 = v0[1];

    return v1();
  }
}

uint64_t sub_1002E0198()
{

  return _swift_task_switch(sub_1002E0294, 0, 0);
}

uint64_t sub_1002E0294()
{
  v1 = v0[68];
  v2 = v0[69];
  v3 = sub_100006D8C(v0 + 65, v1);
  v4 = swift_task_alloc();
  v0[91] = v4;
  *v4 = v0;
  v4[1] = sub_1002E0360;

  return sub_100519B04(v3, v1, v2);
}

uint64_t sub_1002E0360(char a1)
{
  *(*v1 + 976) = a1;

  return _swift_task_switch(sub_1002E0460, 0, 0);
}

uint64_t sub_1002E0460()
{
  if (*(v0 + 976) == 1)
  {
    v1 = *(v0 + 608) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
    audit_token_t.signingIdentifier.getter(*(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584));
    *(v0 + 736) = v2;
    v3 = *(v1 + 24);
    v19 = *(v1 + 56);
    v20 = *(v1 + 40);
    v17 = *(v1 + 88);
    v18 = *(v1 + 72);
    v4 = sub_100006D8C(v1, v3);
    *(v0 + 328) = v3;
    *(v0 + 336) = v20;
    *(v0 + 352) = v19;
    *(v0 + 368) = v18;
    *(v0 + 384) = v17;
    v5 = sub_10020A748((v0 + 304));
    (*(*(v3 - 8) + 16))(v5, v4, v3);
    v6 = swift_task_alloc();
    *(v0 + 744) = v6;
    *v6 = v0;
    v6[1] = sub_1002E0774;

    JUMPOUT(0x100426504);
  }

  v7 = *(v0 + 704);
  v8 = *(v0 + 696);
  v9 = *(v0 + 688);
  v10 = *(v0 + 656);
  v11 = *(v0 + 624);
  v12 = *(v0 + 616);
  v13 = type metadata accessor for MarketplaceKitError();
  sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  (*(*(v13 - 8) + 104))(v14, enum case for MarketplaceKitError.featureUnavailable(_:), v13);
  swift_willThrow();
  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v7, v9);
  sub_10000710C(v0 + 520);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1002E0774()
{
  v2 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v3 = sub_1002E0998;
  }

  else
  {
    sub_10000710C(v2 + 304);
    v3 = sub_1002E08A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002E08A0()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  (*(v0[78] + 8))(v0[82], v0[77]);
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 65));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002E0998()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  (*(v0[78] + 8))(v0[82], v0[77]);
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 65));
  sub_10000710C((v0 + 38));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002E0A98()
{

  return _swift_task_switch(sub_1002E0B94, 0, 0);
}

uint64_t sub_1002E0B94()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = sub_100006D8C(v0 + 60, v2);
  v4 = swift_task_alloc();
  v0[100] = v4;
  *v4 = v0;
  v4[1] = sub_1002E0C5C;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002E0C5C(char a1)
{
  *(*v1 + 977) = a1;

  return _swift_task_switch(sub_1002E0D5C, 0, 0);
}

uint64_t sub_1002E0D5C()
{
  if (*(v0 + 977) == 1)
  {
    v1 = *(v0 + 608) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
    audit_token_t.signingIdentifier.getter(*(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584));
    *(v0 + 808) = v2;
    v3 = *(v1 + 24);
    v20 = *(v1 + 56);
    v21 = *(v1 + 40);
    v18 = *(v1 + 88);
    v19 = *(v1 + 72);
    v4 = sub_100006D8C(v1, v3);
    *(v0 + 232) = v3;
    *(v0 + 240) = v21;
    *(v0 + 256) = v20;
    *(v0 + 272) = v19;
    *(v0 + 288) = v18;
    v5 = sub_10020A748((v0 + 208));
    (*(*(v3 - 8) + 16))(v5, v4, v3);
    v6 = swift_task_alloc();
    *(v0 + 816) = v6;
    *v6 = v0;
    v6[1] = sub_1002E1094;

    JUMPOUT(0x100426504);
  }

  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  v22 = *(v0 + 704);
  v9 = *(v0 + 696);
  v10 = *(v0 + 688);
  v11 = *(v0 + 648);
  v12 = *(v0 + 624);
  v13 = *(v0 + 616);

  v14 = type metadata accessor for MarketplaceKitError();
  sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  (*(*(v14 - 8) + 104))(v15, enum case for MarketplaceKitError.featureUnavailable(_:), v14);
  swift_willThrow();
  sub_10020B0E0(v8, v7);
  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v22, v10);
  sub_10000710C(v0 + 480);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1002E1094()
{
  v2 = *v1;
  *(*v1 + 824) = v0;

  if (v0)
  {
    v3 = sub_1002E12E4;
  }

  else
  {
    sub_10000710C(v2 + 208);
    v3 = sub_1002E11D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002E11D8()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[81];
  v5 = v0[78];
  v6 = v0[77];
  sub_10020B0E0(v0[97], v0[98]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 60));

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002E12E4()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[81];
  v5 = v0[78];
  v6 = v0[77];
  sub_10020B0E0(v0[97], v0[98]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 60));
  sub_10000710C((v0 + 26));

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002E13F8()
{

  return _swift_task_switch(sub_1002E14F4, 0, 0);
}

uint64_t sub_1002E14F4()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = sub_100006D8C(v0 + 55, v2);
  v4 = swift_task_alloc();
  v0[105] = v4;
  *v4 = v0;
  v4[1] = sub_1002E15BC;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002E15BC(char a1)
{
  *(*v1 + 978) = a1;

  return _swift_task_switch(sub_1002E16BC, 0, 0);
}

uint64_t sub_1002E16BC()
{
  if (*(v0 + 978) == 1)
  {
    v1 = *(v0 + 608) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
    v2 = audit_token_t.signingIdentifier.getter(*(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584));
    v4 = v3;
    *(v0 + 848) = v3;
    v5 = *(v1 + 24);
    v22 = *(v1 + 56);
    v23 = *(v1 + 40);
    v20 = *(v1 + 88);
    v21 = *(v1 + 72);
    v6 = sub_100006D8C(v1, v5);
    *(v0 + 136) = v5;
    *(v0 + 144) = v23;
    *(v0 + 160) = v22;
    *(v0 + 176) = v21;
    *(v0 + 192) = v20;
    v7 = sub_10020A748((v0 + 112));
    (*(*(v5 - 8) + 16))(v7, v6, v5);
    v8 = swift_task_alloc();
    *(v0 + 856) = v8;
    *v8 = v0;
    v8[1] = sub_1002E19C4;
    v9 = *(v0 + 640);

    return sub_1004B2A04(v9, v2, v4, 0, 0, 0, 0xF000000000000000, v0 + 112);
  }

  else
  {
    v11 = *(v0 + 704);
    v12 = *(v0 + 696);
    v13 = *(v0 + 688);
    v14 = *(v0 + 640);
    v15 = *(v0 + 624);
    v16 = *(v0 + 616);
    v17 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, enum case for MarketplaceKitError.featureUnavailable(_:), v17);
    swift_willThrow();
    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
    sub_10000710C(v0 + 440);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1002E19C4()
{
  v2 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v3 = sub_1002E1BE8;
  }

  else
  {
    sub_10000710C(v2 + 112);
    v3 = sub_1002E1AF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002E1AF0()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  (*(v0[78] + 8))(v0[80], v0[77]);
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 55));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002E1BE8()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  (*(v0[78] + 8))(v0[80], v0[77]);
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 55));
  sub_10000710C((v0 + 14));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002E1CE8()
{

  return _swift_task_switch(sub_1002E1DE4, 0, 0);
}

uint64_t sub_1002E1DE4()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = sub_100006D8C(v0 + 50, v2);
  v4 = swift_task_alloc();
  v0[113] = v4;
  *v4 = v0;
  v4[1] = sub_1002E1EAC;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002E1EAC(char a1)
{
  *(*v1 + 979) = a1;

  return _swift_task_switch(sub_1002E1FAC, 0, 0);
}

uint64_t sub_1002E1FAC()
{
  if (*(v0 + 979) == 1)
  {
    v1 = *(v0 + 872);
    v2 = *(v0 + 608) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
    v3 = audit_token_t.signingIdentifier.getter(*(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584));
    v5 = v4;
    *(v0 + 912) = v4;
    v6 = *(v2 + 24);
    v26 = *(v2 + 56);
    v27 = *(v2 + 40);
    v24 = *(v2 + 88);
    v25 = *(v2 + 72);
    v7 = sub_100006D8C(v2, v6);
    *(v0 + 40) = v6;
    *(v0 + 48) = v27;
    *(v0 + 64) = v26;
    *(v0 + 80) = v25;
    *(v0 + 96) = v24;
    v8 = sub_10020A748((v0 + 16));
    (*(*(v6 - 8) + 16))(v8, v7, v6);
    v9 = swift_task_alloc();
    *(v0 + 920) = v9;
    *v9 = v0;
    v9[1] = sub_1002E22D8;
    v10 = *(v0 + 888);
    v11 = *(v0 + 880);
    v12 = *(v0 + 632);

    return sub_1004B2A04(v12, v3, v5, 1, v1, v11, v10, v0 + 16);
  }

  else
  {
    v14 = *(v0 + 888);
    v15 = *(v0 + 880);
    v28 = *(v0 + 704);
    v16 = *(v0 + 696);
    v17 = *(v0 + 688);
    v18 = *(v0 + 632);
    v19 = *(v0 + 624);
    v20 = *(v0 + 616);

    v21 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, enum case for MarketplaceKitError.featureUnavailable(_:), v21);
    swift_willThrow();
    sub_10020B0E0(v15, v14);
    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v28, v17);
    sub_10000710C(v0 + 400);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1002E22D8()
{
  v2 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    v3 = sub_1002E2528;
  }

  else
  {
    sub_10000710C(v2 + 16);
    v3 = sub_1002E241C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002E241C()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  sub_10020B0E0(v0[110], v0[111]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 50));

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002E2528()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  sub_10020B0E0(v0[110], v0[111]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 50));
  sub_10000710C((v0 + 2));

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002E263C()
{
  *(*v1 + 968) = v0;

  if (v0)
  {
    v2 = sub_1002E2898;
  }

  else
  {
    v2 = sub_1002E27CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E27CC()
{
  (*(v0[87] + 8))(v0[88], v0[86]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002E2898()
{
  (*(v0[87] + 8))(v0[88], v0[86]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002E2964(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for CharacterSet();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  if (a3 && (String.count.getter() < 2 || String.count.getter() >= 4 || (v26 = a2, v27 = a3, static CharacterSet.letters.getter(), CharacterSet.inverted.getter(), v25 = a4, v17 = *(v11 + 8), v17(v16, v10), sub_100005E50(), StringProtocol.rangeOfCharacter(from:options:range:)(), v19 = v18, v17(v14, v10), a4 = v25, (v19 & 1) == 0)))
  {
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    v20 = *a1;
    v21 = sub_1002FA83C(4, v20, sub_100536034);
    v22 = _swiftEmptyDictionarySingleton;
    if (v21)
    {
      v22 = v21;
    }

    v26 = v22;

    sub_1005B7830(a2, a3, a4, a5);
    sub_1002FAA10(v26, 4, v20, &off_100758790, &off_1007587C0, sub_100634360);
  }
}

uint64_t sub_1002E2C58(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13 - 8);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v54 = sub_1001F6740(&off_1007588B0);
  sub_1002FC188(&unk_1007588D0);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v53 = v20;
  v20[4] = v4;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = objc_opt_self();
  v23 = v4;
  sub_10020ABFC(a1, a2);
  v24 = [v22 currentConnection];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v27 = swift_dynamicCast();
    v28 = v60;
    if (!v27)
    {
      v28 = 0;
    }

    v52 = v28;
    [v25 auditToken];
    v47 = v59;
    v48 = v58;
  }

  else
  {
    v52 = 0;
    v48 = 0u;
    v47 = 0u;
  }

  v61 = v25 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_10077F8D0);
  v29 = *(v14 + 80);
  v49 = v25;
  v50 = v12;
  v30 = (v29 + 49) & ~v29;
  v31 = v30 + v15;
  v32 = (v30 + v15) & 0xFFFFFFFFFFFFFFF8;
  v51 = v18;
  v46 = v10;
  v33 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = "Perform action";
  *(v36 + 40) = 14;
  *(v36 + 48) = 2;
  sub_10020A668(v33, v36 + v30, &qword_10077F8D0);
  *(v36 + v31) = 1;
  *(v36 + v32 + 8) = v52;
  v37 = v36 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v38 = v47;
  *v37 = v48;
  *(v37 + 16) = v38;
  *(v37 + 32) = v61;
  v39 = v36 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  v40 = v53;
  *v39 = v54;
  *(v39 + 8) = 1;
  v41 = (v36 + v34);
  *v41 = &unk_1006A0D60;
  v41[1] = v40;
  v42 = (v36 + v35);
  v43 = v57;
  *v42 = v56;
  v42[1] = v43;
  *(v36 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v46, &unk_1006A0D70, v36);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v51, &qword_10077F8D0);
}

uint64_t sub_1002E3160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v17;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v8[9] = a1;
  v8[10] = a3;
  v9 = type metadata accessor for LogKey.Prefix();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v10 = type metadata accessor for PerformActionResponse.Response();
  v8[20] = v10;
  v8[21] = *(v10 - 8);
  v8[22] = swift_task_alloc();
  v11 = type metadata accessor for PerformActionRequest.Request();
  v8[23] = v11;
  v8[24] = *(v11 - 8);
  v8[25] = swift_task_alloc();
  v12 = type metadata accessor for PerformActionResponse();
  v8[26] = v12;
  v8[27] = *(v12 - 8);
  v8[28] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v8[29] = v13;
  v8[30] = *(v13 - 8);
  v8[31] = swift_task_alloc();
  v14 = type metadata accessor for PerformActionRequest();
  v8[32] = v14;
  v8[33] = *(v14 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();

  return _swift_task_switch(sub_1002E340C, 0, 0);
}

uint64_t sub_1002E340C()
{
  v34 = v0;
  sub_100302E04(&qword_10077FB80, &type metadata accessor for PerformActionRequest);
  sub_100302E04(&qword_10077FB88, &type metadata accessor for PerformActionRequest);
  decodeXPCValues<A>(from:)();
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  static Logger.daemon.getter();
  (*(v4 + 16))(v1, v2, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[33];
  v8 = v0[34];
  v11 = v0[31];
  v10 = v0[32];
  v12 = v0[29];
  v13 = v0[30];
  if (v7)
  {
    v29 = v0[12];
    v30 = v0[13];
    v26 = v0[10];
    v27 = v0[11];
    v32 = v0[29];
    v14 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v14 = 136446466;
    v15 = PerformActionRequest.stringValue.getter();
    v31 = v11;
    v17 = v16;
    v28 = v6;
    v18 = *(v9 + 8);
    v18(v8, v10);
    v19 = sub_1002346CC(v15, v17, v33);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    v20 = audit_token_t.signingIdentifier.getter(v26, v27, v29, v30);
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v20 = 0x6E776F6E6B6E55;
      v22 = 0xE700000000000000;
    }

    v23 = sub_1002346CC(v20, v22, v33);

    *(v14 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v5, v28, "Perform action request %{public}s called by %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v13 + 8))(v31, v32);
  }

  else
  {

    v18 = *(v9 + 8);
    v18(v8, v10);
    (*(v13 + 8))(v11, v12);
  }

  v0[36] = v18;
  v24 = swift_task_alloc();
  v0[37] = v24;
  *v24 = v0;
  v24[1] = sub_1002E37DC;

  return sub_100324268((v0 + 2));
}

uint64_t sub_1002E37DC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002E47A0;
  }

  else
  {
    v2 = sub_1002E38F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E38F0()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[39] = v2;
  sub_100006D8C(v0 + 2, v2);
  v3 = *(v2 - 8);
  v0[40] = v3;
  v4 = swift_task_alloc();
  v0[41] = v4;
  (*(v3 + 16))();
  v5 = swift_task_alloc();
  v0[42] = v5;
  *v5 = v0;
  v5[1] = sub_1002E3A38;

  return sub_100519B04(v4, v2, v1);
}

uint64_t sub_1002E3A38(char a1)
{
  *(*v1 + 401) = a1;

  return _swift_task_switch(sub_1002E3B38, 0, 0);
}

uint64_t sub_1002E3B38()
{
  v101 = v0;
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  if (*(v0 + 401) != 1)
  {
    v31 = *(v0 + 280);
    v32 = *(v0 + 288);
    v33 = *(v0 + 256);
    v34 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, enum case for MarketplaceKitError.featureUnavailable(_:), v34);
    swift_willThrow();
    (*(v2 + 8))(v1, v3);
    v32(v31, v33);

LABEL_7:
    sub_10000710C(v0 + 16);

    v30 = *(v0 + 8);
    goto LABEL_8;
  }

  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  (*(v2 + 8))(*(v0 + 328), *(v0 + 312));

  v8 = audit_token_t.signingIdentifier.getter(v7, v6, v5, v4);
  *(v0 + 344) = v9;
  if (!v9)
  {
    v36 = *(v0 + 280);
    v37 = *(v0 + 288);
    v38 = *(v0 + 256);
    v39 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v39 - 8) + 104))(v40, enum case for MarketplaceKitError.featureUnavailable(_:), v39);
    swift_willThrow();
    v37(v36, v38);
    goto LABEL_7;
  }

  v10 = v8;
  v11 = v9;
  v13 = *(v0 + 192);
  v12 = *(v0 + 200);
  v14 = *(v0 + 184);
  v15 = *(v0 + 128) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
  PerformActionRequest.request.getter();
  v16 = (*(v13 + 88))(v12, v14);
  if (v16 == enum case for PerformActionRequest.Request.handleSuccessfulAuth(_:))
  {
    v94 = *(v0 + 280);
    v96 = *(v0 + 288);
    v92 = *(v0 + 256);
    v18 = *(v0 + 192);
    v17 = *(v0 + 200);
    v19 = *(v0 + 176);
    v20 = *(v0 + 184);
    v21 = *(v0 + 168);
    v89 = *(v0 + 160);
    v85 = *(v0 + 96);
    v87 = *(v0 + 80);

    (*(v18 + 96))(v17, v20);
    v23 = *v17;
    v22 = v17[1];
    v24 = *(*sub_100006D8C(v15, *(v15 + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_restoreManager);
    *(v0 + 368) = v87;
    *(v0 + 384) = v85;
    *(v0 + 400) = 0;
    v25 = *(v15 + 24);
    v86 = *(v15 + 56);
    v88 = *(v15 + 40);
    v84 = *(v15 + 72);
    v26 = v15;
    v27 = *(v15 + 88);
    v28 = *(v15 + 96);
    v29 = sub_100006D8C(v26, v25);

    sub_10046413C(v0 + 16, 2, 0, 0, v23, v22, 2, (v0 + 368), v29, v24, v25, v88, v86, v84, v27, v28);

    (*(v21 + 104))(v19, enum case for PerformActionResponse.Response.ignored(_:), v89);
    PerformActionResponse.init(response:)();
    v96(v94, v92);
    (*(*(v0 + 216) + 32))(*(v0 + 72), *(v0 + 224), *(v0 + 208));
    sub_10000710C(v0 + 16);

    v30 = *(v0 + 8);
LABEL_8:

    return v30();
  }

  if (v16 != enum case for PerformActionRequest.Request.renewLicenses(_:))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v90 = v15;
  v42 = *(v0 + 200);
  v44 = *(v0 + 144);
  v43 = *(v0 + 152);
  v45 = *(v0 + 136);
  (*(*(v0 + 192) + 96))(v42, *(v0 + 184));
  v46 = *v42;
  (*(v44 + 104))(v43, enum case for LogKey.Prefix.license(_:), v45);
  v47 = objc_allocWithZone(type metadata accessor for LogKey());
  v48 = LogKey.init(prefix:)();
  sub_10062611C();

  v91 = v10;
  v93 = v11;
  v98 = v10;
  v99 = v11;

  v49._countAndFlagsBits = 58;
  v49._object = 0xE100000000000000;
  String.append(_:)(v49);
  v50 = *(v46 + 16);
  v95 = v46;
  v97 = v50;
  if (v50)
  {
    v100 = _swiftEmptyArrayStorage;
    sub_100526304(0, v50, 0);
    v51 = _swiftEmptyArrayStorage;
    v52 = (v46 + 32);
    do
    {
      v53 = *v52++;
      *(v0 + 56) = v53;
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v100 = v51;
      v58 = v51[2];
      v57 = v51[3];
      if (v58 >= v57 >> 1)
      {
        sub_100526304((v57 > 1), v58 + 1, 1);
        v51 = v100;
      }

      v51[2] = v58 + 1;
      v59 = &v51[2 * v58];
      v59[4] = v54;
      v59[5] = v56;
      --v50;
    }

    while (v50);
  }

  else
  {
    v51 = _swiftEmptyArrayStorage;
  }

  *(v0 + 64) = v51;
  sub_1001F0C48(&unk_10077FB40);
  sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
  v60 = BidirectionalCollection<>.joined(separator:)();
  v62 = v61;

  v63._countAndFlagsBits = v60;
  v63._object = v62;
  String.append(_:)(v63);

  v65 = v98;
  v64 = v99;
  sub_1006258D8();
  if (qword_10077E5A0 != -1)
  {
    swift_once();
  }

  sub_1002710CC(*(v0 + 232), qword_1007B88E8);

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v98 = v69;
    *v68 = 136446210;

    *(v68 + 4) = sub_1002346CC(v65, v64, &v98);
    _os_log_impl(&_mh_execute_header, v66, v67, "Activity associated with %{public}s", v68, 0xCu);
    sub_10000710C(v69);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  if (v97)
  {
    v98 = _swiftEmptyArrayStorage;
    sub_1005266DC(0, v97, 0);
    v70 = v97;
    v71 = v98;
    v72 = 0;
    v73 = v98[2];
    v74 = 3 * v73;
    do
    {
      v75 = *(v95 + 32 + 8 * v72);
      v98 = v71;
      v76 = v71[3];
      v77 = v73 + v72 + 1;
      if (v73 + v72 >= v76 >> 1)
      {
        sub_1005266DC((v76 > 1), v73 + v72 + 1, 1);
        v70 = v97;
        v71 = v98;
      }

      ++v72;
      v71[2] = v77;
      v78 = &v71[v74];
      v78[4] = v75;
      v78[5] = 0;
      *(v78 + 48) = 0;
      v74 += 3;
    }

    while (v70 != v72);
  }

  else
  {

    v71 = _swiftEmptyArrayStorage;
  }

  *(v0 + 352) = v71;
  v79 = v90[3];
  v80 = v90[8];
  v81 = v90[9];
  v82 = sub_100006D8C(v90, v79);
  v83 = swift_task_alloc();
  *(v0 + 360) = v83;
  *v83 = v0;
  v83[1] = sub_1002E4530;

  return (sub_1005794DC)(v71, v82, 0, v91, v93, v79, v80, v81);
}