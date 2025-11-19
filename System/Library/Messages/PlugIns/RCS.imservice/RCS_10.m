unint64_t RCSMessageMetadata.init(item:)(void *a1)
{
  v2 = sub_E9318(_swiftEmptyArrayStorage);

  return v2;
}

Swift::Void __swiftcall RCSMessageMetadata.merge(with:)(CoreRCS::RCSMessageMetadata with)
{
  v2 = v1;
  v3 = with.entries._rawValue + 64;
  v4 = 1 << *(with.entries._rawValue + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(with.entries._rawValue + 8);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v11 = v8;
LABEL_11:
    v12 = (*(with.entries._rawValue + 7) + ((v11 << 10) | (16 * __clz(__rbit64(v6)))));
    v13 = *v12;
    v14 = v12[1];

    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    v31 = *v2;
    v18 = sub_E92AC();
    v20 = *(v17 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_F126C();
      __break(1u);
      return;
    }

    v24 = v19;
    if (*(v17 + 24) >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v18;
        sub_BCE08();
        v18 = v29;
      }
    }

    else
    {
      sub_BB1C8(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_E92AC();
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_26;
      }
    }

    v6 &= v6 - 1;
    if (v24)
    {
      v9 = (*(v31 + 56) + 16 * v18);
      v10 = v9[1];
      *v9 = v13;
      v9[1] = v14;
    }

    else
    {
      *(v31 + 8 * (v18 >> 6) + 64) |= 1 << v18;
      v26 = (*(v31 + 56) + 16 * v18);
      *v26 = v13;
      v26[1] = v14;
      v27 = *(v31 + 16);
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_25;
      }

      *(v31 + 16) = v28;
    }

    *v2 = v31;
    v8 = v11;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v11];
    ++v8;
    if (v6)
    {
      goto LABEL_11;
    }
  }
}

uint64_t RCSMessageMetadata.Entry.init(key:value:)(uint64_t a1, void *a2, uint64_t a3)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_11F880;
  v8._object = a2;
  v6 = sub_F112C(v5, v8);

  if (v6)
  {

    return 0;
  }

  return a3;
}

BOOL RCSMessageMetadata.Entry.HeaderKeys.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_11F8B8;
  v6._object = a2;
  v4 = sub_F112C(v3, v6);

  return v4 != 0;
}

Swift::tuple_key_String_value_String __swiftcall RCSMessageMetadata.Entry.toPair()()
{
  v2 = v1;
  v3 = v0;

  v4 = 0x80000000000FFF10;
  v5 = 0xD000000000000012;
  v6 = v3;
  v7 = v2;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  result.key._object = v4;
  result.key._countAndFlagsBits = v5;
  return result;
}

Swift::Int sub_E0988()
{
  sub_F12FC();
  sub_F089C();
  return sub_F132C();
}

Swift::Int sub_E09FC()
{
  sub_F12FC();
  sub_F089C();
  return sub_F132C();
}

uint64_t sub_E0A50@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_11F8F0;
  v7._object = v3;
  v5 = sub_F112C(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t RCSMessageMetadata.entries.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

CoreRCS::RCSMessageMetadata __swiftcall RCSMessageMetadata.init(pairs:)(Swift::OpaquePointer pairs)
{
  v2 = sub_E9318(_swiftEmptyArrayStorage);
  v3 = *(pairs._rawValue + 2);
  if (!v3)
  {
LABEL_17:

    return v2;
  }

  v4 = 0;
  v5 = (pairs._rawValue + 56);
  while (v4 < *(pairs._rawValue + 2))
  {
    v7 = *(v5 - 1);
    v6 = *v5;
    v9 = *(v5 - 3);
    v8 = *(v5 - 2);

    v10._rawValue = &off_11F928;
    v28._countAndFlagsBits = v9;
    v28._object = v8;
    v11 = sub_F112C(v10, v28);

    if (v11)
    {
      goto LABEL_3;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_E92AC();
    v15 = v2[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_19;
    }

    v19 = v14;
    if (v2[3] < v18)
    {
      sub_BB1C8(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_E92AC();
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_21;
      }

LABEL_12:
      if (v19)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v23 = v13;
    sub_BCE08();
    v13 = v23;
    if (v19)
    {
LABEL_13:
      v21 = (v2[7] + 16 * v13);
      v22 = v21[1];
      *v21 = v7;
      v21[1] = v6;
LABEL_3:

      goto LABEL_4;
    }

LABEL_15:
    v2[(v13 >> 6) + 8] |= 1 << v13;
    v24 = (v2[7] + 16 * v13);
    *v24 = v7;
    v24[1] = v6;
    v25 = v2[2];
    v17 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v17)
    {
      goto LABEL_20;
    }

    v2[2] = v26;
LABEL_4:
    ++v4;
    v5 += 4;
    if (v3 == v4)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result.entries._rawValue = sub_F126C();
  __break(1u);
  return result;
}

unint64_t sub_E0D2C()
{
  result = qword_12A9C0[0];
  if (!qword_12A9C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_12A9C0);
  }

  return result;
}

uint64_t sub_E0D90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_E0DD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_E0E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_BC440(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_51FEC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_BCF64();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_EE478(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_E0F2C(uint64_t a1, _OWORD *a2)
{
  v5 = sub_388C8(&qword_12AAD0, &qword_F7850);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for TypingIndicator();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_372B0(a1, &qword_12AAD0, &qword_F7850);
    sub_C79BC(a2, v8);
    sub_3CAB8(a2);
    return sub_372B0(v8, &qword_12AAD0, &qword_F7850);
  }

  else
  {
    sub_BDEA0(a1, v13);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_BC5B8(v13, a2, isUniquelyReferenced_nonNull_native);
    result = sub_3CAB8(a2);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_E10D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 49) = a4;
  *(v5 + 120) = a3;
  *(v5 + 128) = v4;
  *(v5 + 104) = a1;
  *(v5 + 112) = a2;
  return _swift_task_switch(sub_2D234, v4, 0);
}

uint64_t sub_E1100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  return _swift_task_switch(sub_2D7C8, v3, 0);
}

uint64_t sub_E1124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  return _swift_task_switch(sub_2DD9C, v3, 0);
}

uint64_t RCSReachabilityController.__allocating_init(delegate:operationConfiguration:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  RCSReachabilityController.init(delegate:operationConfiguration:)(a1, a2);
  return v4;
}

uint64_t RCSReachabilityController.init(delegate:operationConfiguration:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = a1;
  type metadata accessor for RCSOperationController();
  swift_allocObject();
  *(v3 + 24) = RCSOperationController.init(configuration:)(a2);
  return v3;
}

uint64_t RCSReachabilityController.receivedCapabilities(_:operationID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_2E378, 0, 0);
}

unint64_t sub_E1210(uint64_t a1, void *a2)
{
  result = sub_E9400(_swiftEmptyArrayStorage);
  v10 = result;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 40);
    do
    {
      v8 = *v7;
      v9[0] = *(v7 - 1);
      v9[1] = v8;

      sub_E12C8(&v10, v9, v2, a2);

      v7 += 2;
      --v6;
    }

    while (v6);
    return v10;
  }

  return result;
}

uint64_t sub_E12C8(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v34 = a1;
  v7 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = a2[1];
  v33 = *a2;
  v12 = *(a3 + 16);

  v13 = [v12 internalServiceName];
  if (!v13)
  {
    sub_F07EC();
    v13 = sub_F07BC();
  }

  v14 = [a4 serviceOfLastMessage];
  if (v14)
  {
    v15 = v14;
    v16 = sub_F07EC();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = [v12 internalServiceName];
  v20 = sub_F07EC();
  v22 = v21;

  if (v18)
  {
    if (v16 == v20 && v18 == v22)
    {

      v23 = 1;
      goto LABEL_16;
    }

    v24 = sub_F122C();

    if (v24)
    {
      v23 = 1;
      goto LABEL_16;
    }
  }

  else
  {
  }

  if (qword_128F98 != -1)
  {
    swift_once();
  }

  v25 = sub_3C96C(v7, qword_12A288);
  v26 = v32;
  (*(v32 + 16))(v10, v25, v7);
  sub_F044C();
  (*(v26 + 8))(v10, v7);
  v23 = v35;
LABEL_16:
  v27 = objc_allocWithZone(IMServiceReachabilityHandleResult);
  v28 = v33;
  v29 = sub_F07BC();
  v30 = [v27 initWithHandleID:v29 service:v13 isReachable:v23 supportsEncryption:0];

  return sub_E0E34(v30, v28, v11);
}

uint64_t sub_E15B0(void *a1)
{
  v3 = *v1;
  v4 = [a1 handleIDs];
  v5 = sub_F09FC();

  v6 = *(v5 + 16);

  if (!v6)
  {
    if (qword_128F40 != -1)
    {
      swift_once();
    }

    v26 = sub_F06CC();
    sub_3C96C(v26, static Logger.reachability);
    v27 = sub_F06AC();
    v28 = sub_F0CCC();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_15;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "RCS is unavailable for sending: no handles requested";
    goto LABEL_13;
  }

  v7 = v1[2];
  v10 = v3 + 80;
  v9 = *(v3 + 80);
  v8 = *(v10 + 8);
  if (((*(v8 + 120))(v9, v8) & 1) == 0)
  {
    if (qword_128F40 != -1)
    {
      swift_once();
    }

    v32 = sub_F06CC();
    sub_3C96C(v32, static Logger.reachability);
    v33 = sub_F06AC();
    v34 = sub_F0CCC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "RCS is unavailable for sending: Messages is not the default text app", v35, 2u);
    }

    return 8;
  }

  v11 = [a1 context];
  v12 = (*(v8 + 128))();

  if ((v12 & 1) == 0)
  {
    if (qword_128F40 != -1)
    {
      swift_once();
    }

    v36 = sub_F06CC();
    sub_3C96C(v36, static Logger.reachability);
    v37 = sub_F06AC();
    v38 = sub_F0CCC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "RCS is unavailable for sending: RCS disabled", v39, 2u);
    }

    return 3;
  }

  v13 = [a1 handleIDs];
  v14 = sub_F09FC();

  v15 = *(v14 + 16);

  v16 = [a1 context];
  v17 = [v7 maxChatParticipantsForContext:v16];

  if (v17 < v15)
  {
    if (qword_128F40 != -1)
    {
      swift_once();
    }

    v18 = sub_F06CC();
    sub_3C96C(v18, static Logger.reachability);
    v19 = a1;
    v20 = sub_F06AC();
    v21 = sub_F0CCC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      v23 = [v19 handleIDs];
      v24 = sub_F09FC();

      v25 = *(v24 + 16);

      *(v22 + 4) = v25;

      _os_log_impl(&dword_0, v20, v21, "Too many participants (%ld) greater than service max participants", v22, 0xCu);
    }

    else
    {
    }

    return 1;
  }

  v40 = [a1 context];
  v41 = [v40 conversationWasDowngraded];

  if ((v41 & 1) == 0)
  {
    if ([v7 networkDataAvailable])
    {
      v46 = [a1 context];
      v47 = (*(v8 + 64))();

      if (v47)
      {
        if (qword_128F40 != -1)
        {
          swift_once();
        }

        v48 = sub_F06CC();
        sub_3C96C(v48, static Logger.reachability);
        v49 = sub_F06AC();
        v50 = sub_F0CCC();
        if (!os_log_type_enabled(v49, v50))
        {
          goto LABEL_49;
        }

        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = "RCS is available for sending: carrier supports interworking";
LABEL_48:
        _os_log_impl(&dword_0, v49, v50, v52, v51, 2u);

LABEL_49:

        return 1;
      }

      v54 = [a1 handleIDs];
      v55 = sub_F09FC();

      LOBYTE(v54) = sub_E41D4(v55);

      if (v54)
      {
        if (qword_128F40 != -1)
        {
          swift_once();
        }

        v56 = sub_F06CC();
        sub_3C96C(v56, static Logger.reachability);
        v49 = sub_F06AC();
        v50 = sub_F0CCC();
        if (!os_log_type_enabled(v49, v50))
        {
          goto LABEL_49;
        }

        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = "RCS is available for sending: assume RCS is avaibable for chat bot";
        goto LABEL_48;
      }

      v57 = [a1 handleIDs];
      v58 = sub_F09FC();

      if (!v58[2])
      {
        goto LABEL_57;
      }

      v60 = v58[4];
      v59 = v58[5];

      v61 = [a1 handleIDs];
      v62 = sub_F09FC();

      v63 = *(v62 + 16);

      if (v63 != 1 || (v64 = sub_F07BC(), v65 = [v7 hasValidDowngradeRequestForHandleID:v64], v64, (v65 & 1) == 0))
      {
LABEL_57:

        v71 = [a1 handleIDs];
        v72 = sub_F09FC();

        v73 = (v72 + 40);
        v74 = -*(v72 + 16);
        v75 = -1;
        while (v74 + v75 != -1)
        {
          if (++v75 >= *(v72 + 16))
          {
            __break(1u);
            goto LABEL_70;
          }

          v76 = v73 + 2;
          v78 = *(v73 - 1);
          v77 = *v73;

          v79 = sub_F07BC();
          IsStewie = IMStringIsStewie();

          v73 = v76;
          if (IsStewie)
          {

            return 9;
          }
        }

        if (((*(v8 + 32))(v9, v8) & 1) == 0)
        {
          return 0;
        }

        if (qword_128F40 != -1)
        {
          swift_once();
        }

        v81 = sub_F06CC();
        sub_3C96C(v81, static Logger.reachability);
        v49 = sub_F06AC();
        v50 = sub_F0CCC();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          v52 = "isRetryingMessages, so skip RCS downgrade";
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      if (qword_128F40 != -1)
      {
        swift_once();
      }

      v66 = sub_F06CC();
      sub_3C96C(v66, static Logger.reachability);

      v27 = sub_F06AC();
      v67 = sub_F0CCC();

      if (!os_log_type_enabled(v27, v67))
      {

        goto LABEL_15;
      }

      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v82 = v69;
      *v68 = 136315138;
      v70 = sub_3E850(v60, v59, &v82);

      *(v68 + 4) = v70;
      _os_log_impl(&dword_0, v27, v67, "RCS is unavailable for sending: %s requested downgrade", v68, 0xCu);
      sub_1EDC(v69);

LABEL_14:

LABEL_15:

      return 0;
    }

    if (qword_128F40 != -1)
    {
      swift_once();
    }

    v53 = sub_F06CC();
    sub_3C96C(v53, static Logger.reachability);
    v27 = sub_F06AC();
    v28 = sub_F0CCC();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_15;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "RCS is unavailable for sending: network unavailable";
LABEL_13:
    _os_log_impl(&dword_0, v27, v28, v30, v29, 2u);
    goto LABEL_14;
  }

  if (qword_128F40 != -1)
  {
LABEL_70:
    swift_once();
  }

  v42 = sub_F06CC();
  sub_3C96C(v42, static Logger.reachability);
  v43 = sub_F06AC();
  v44 = sub_F0CCC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_0, v43, v44, "RCS service downgraded", v45, 2u);
  }

  return 7;
}

id sub_E2148(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v13 = *v7;
  sub_37380(a4, &v57, &qword_127EB8, &qword_F2C80);
  v56 = a3;
  if (v58)
  {
    sub_55248(&v57, v59);
    sub_E4188();
    sub_1F28(v59, &v57);
    v14 = [a3 context];
    v15 = [v14 chatStyle];

    v16 = sub_D2AA4(&v57, v15 == 43, a1, a2);
    sub_1EDC(v59);
  }

  else
  {
    sub_372B0(&v57, &qword_127EB8, &qword_F2C80);
    v17 = IMServiceNameRCS;
    v18 = objc_allocWithZone(IMServiceReachabilityHandleResult);
    v19 = v17;
    v20 = sub_F07BC();
    v16 = [v18 initWithHandleID:v20 service:v19 isReachable:a5 & 1 supportsEncryption:a6 & 1];
  }

  v21 = [objc_opt_self() sharedFeatureFlags];
  v22 = [v21 isRelayChatBotEnabled];

  if (v22)
  {
    v23 = v7[2];
    v24 = [v56 context];
    v27 = v13 + 80;
    v26 = *(v13 + 80);
    v25 = *(v27 + 8);
    v28 = (*(v25 + 16))();

    if (v28)
    {
      v29 = [v56 context];
      v30 = [v29 chatIdentifier];

      if (v30)
      {
        v31 = sub_F07EC();
        v33 = v32;

        if ((v31 != a1 || v33 != a2) && (sub_F122C() & 1) == 0)
        {
          goto LABEL_20;
        }

        v34 = v56;
        v35 = [v56 context];
        v36 = [v35 requestPersistentMenu];

        if (v36)
        {
          v37 = (*(v25 + 80))(v31, v33, v26, v25);
          if (v37)
          {
            v38 = v37;
            v39 = [v37 relayDictionaryRepresentation];
            v40 = sub_F076C();

            sub_51844(v40);

            v41 = sub_F075C();

            [v16 setPersistentMenuDictionary:v41];
          }

          else
          {
            v42 = [objc_opt_self() relayEmptyStampProperty];
            v43 = sub_F076C();

            sub_51844(v43);

            v41 = sub_F075C();

            [v16 setPersistentMenuDictionary:v41];
          }

          v34 = v56;
        }

        v44 = [v34 context];
        v45 = [v44 requestBrandInfo];

        if (v45)
        {
          v46 = (*(v25 + 96))(v31, v33, v26, v25);
          if (v46)
          {
            v47 = v46;
            v48 = [v46 relayDictionaryRepresentation];
            v49 = sub_F076C();

            sub_51844(v49);

            v50 = sub_F075C();

            [v16 setBrandInfoDictionary:v50];
          }

          v51 = (*(v25 + 104))(v31, v33, v26, v25);
          v53 = v52;

          if (v53 >> 60 != 15)
          {
            v54 = sub_F024C();
            [v16 setBrandLogoData:v54];

            sub_66124(v51, v53);
          }
        }

        else
        {
LABEL_20:
        }
      }
    }
  }

  return v16;
}

uint64_t sub_E271C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 18) = a5;
  *(a9 + 19) = a6;
  *(a9 + 20) = a7;
  *(a9 + 21) = a8;
  *(a9 + 22) = a10;
  v13 = type metadata accessor for RCSReachabilityController.MockRCSHandleCapabilities();
  result = sub_E40F0(a11, a9 + *(v13 + 64));
  *(a9 + *(v13 + 68)) = a12;
  return result;
}

uint64_t RCSReachabilityController.calculateReachability(with:responseHandler:)(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = *v2;
  v3[16] = *(*v2 + 88);
  v3[17] = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[18] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v3[19] = v6;
  v7 = *(v6 + 64) + 15;
  v3[20] = swift_task_alloc();
  v8 = sub_F0DEC();
  v3[21] = v8;
  v9 = *(v8 - 8);
  v3[22] = v9;
  v10 = *(v9 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v11 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v3[25] = v11;
  v12 = *(v11 - 8);
  v3[26] = v12;
  v13 = *(v12 + 64) + 15;
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_2E520, 0, 0);
}

uint64_t sub_E29F0(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  return _swift_task_switch(sub_303B8, 0, 0);
}

void sub_E2A14(uint64_t a1, char a2, char a3, id a4, uint64_t a5, void *a6, void *a7)
{
  LOBYTE(v10) = a2;
  v12 = [*(a5 + 16) internalServiceName];
  if (!v12)
  {
    sub_F07EC();
    v12 = sub_F07BC();
  }

  v13 = *(a1 + 16);
  v53 = a6;
  if (!v13)
  {
    v26 = 0;
    v27 = 0;
    goto LABEL_37;
  }

  v54 = a3;
  v14 = v10;
  v15 = &selRef__setLocalPath_;
  v16 = [a6 handleIDs];
  v17 = sub_F09FC();

  v18 = *(v17 + 16);

  if (v13 == v18)
  {
    v19 = a4;
    a4 = a6;
    v20 = 1 << *(a1 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(a1 + 64);
    v23 = (v20 + 63) >> 6;

    v10 = 0;
    do
    {
      if (!v22)
      {
        while (1)
        {
          v24 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v24 >= v23)
          {
            v26 = 1;
            goto LABEL_32;
          }

          v22 = *(a1 + 64 + 8 * v24);
          ++v10;
          if (v22)
          {
            v10 = v24;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_45;
      }

      v24 = v10;
LABEL_14:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
    }

    while (([*(*(a1 + 56) + ((v24 << 9) | (8 * v25))) isReachable] & 1) != 0);
    v26 = 0;
LABEL_32:

    a6 = a4;
    LOBYTE(v10) = v14;
    a4 = v19;
    v15 = &selRef__setLocalPath_;
    v28 = *(a1 + 16);
    if (v28)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

  v26 = 0;
  LOBYTE(v10) = v14;
  v28 = *(a1 + 16);
  if (!v28)
  {
LABEL_33:
    v27 = 0;
LABEL_36:
    a3 = v54;
LABEL_37:
    v38 = objc_allocWithZone(IMServiceReachabilityResult);
    sub_E4188();
    v39 = sub_F075C();
    LOBYTE(v51) = a3 & 1;
    a4 = [v38 initWithService:v12 error:a4 handleResults:v39 isFinal:v10 & 1 allAreReachable:v26 allSupportEncryption:v27 didCheckServer:v51];

    if (qword_128F40 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_46;
  }

LABEL_18:
  v29 = [a6 v15[65]];
  v30 = sub_F09FC();

  v31 = *(v30 + 16);

  if (v28 != v31)
  {
LABEL_30:
    v27 = 0;
LABEL_35:
    LOBYTE(v10) = v14;
    goto LABEL_36;
  }

  v32 = 1 << *(a1 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v10 = v33 & *(a1 + 64);
  v34 = (v32 + 63) >> 6;

  v35 = 0;
  while (v10)
  {
    v36 = v35;
LABEL_28:
    v37 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    if (([*(*(a1 + 56) + ((v36 << 9) | (8 * v37))) supportsEncryption] & 1) == 0)
    {

      goto LABEL_30;
    }
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v34)
    {

      v27 = 1;
      goto LABEL_35;
    }

    v10 = *(a1 + 64 + 8 * v36);
    ++v35;
    if (v10)
    {
      v35 = v36;
      goto LABEL_28;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_38:
  v40 = sub_F06CC();
  sub_3C96C(v40, static Logger.reachability);
  v55 = a4;
  v41 = sub_F06AC();
  v42 = sub_F0CCC();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v56 = v44;
    *v43 = 67109634;
    *(v43 + 4) = [v55 allAreReachable];

    *(v43 + 8) = 1024;
    *(v43 + 10) = v10 & 1;
    *(v43 + 14) = 2080;
    v45 = [v55 handleResults];
    v46 = sub_F076C();

    sub_E3CDC(v46);

    v47 = sub_F077C();
    v49 = v48;

    v50 = sub_3E850(v47, v49, &v56);

    *(v43 + 16) = v50;
    _os_log_impl(&dword_0, v41, v42, "All handles reachable over RCS %{BOOL}d isFinal %{BOOL}d per-handle reachability %s", v43, 0x18u);
    sub_1EDC(v44);
  }

  else
  {
  }

  [a7 reachabilityRequest:v53 updatedWithResult:v55];
}

uint64_t sub_E2F78(void *a1, uint64_t *a2, id a3)
{
  v6 = *a2;
  v7 = [a1 context];
  v39 = [v7 isForPendingConversation];

  v8 = objc_opt_self();
  v9 = [v8 sharedFeatureFlags];
  v10 = [v9 isRelayChatBotEnabled];

  if (v10)
  {
    v11 = [a1 context];
    v12 = [v11 requestPersistentMenu];

    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v14 = [a1 context];
      v13 = [v14 requestBrandInfo];
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = *(v6 + 80);
  v16 = *(v6 + 88);
  v37 = v15;
  v38 = a2[2];
  v17 = (*(v16 + 144))();
  v18 = [a1 handleIDs];
  v19 = sub_F09FC();

  v20 = [a1 context];
  v21 = sub_E1210(v19, v20);

  if (v17 & 1) != 0 && ((v39 | v13))
  {
    sub_E2A14(v21, 0, 0, 0, a2, a1, a3);

    v22 = [v8 sharedFeatureFlags];
    v23 = [v22 isRelayChatBotEnabled];

    if (v23 && ((v24 = [a1 context], v25 = objc_msgSend(v24, "requestPersistentMenu"), v24, (v25 & 1) != 0) || (v26 = objc_msgSend(a1, "context"), v27 = objc_msgSend(v26, "requestBrandInfo"), v26, v27)))
    {
      v28 = objc_allocWithZone(IMServiceReachabilityResponseBlockHandler);
      aBlock[4] = sub_333E4;
      aBlock[5] = a2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_E3C58;
      aBlock[3] = &unk_1229C8;
      v29 = _Block_copy(aBlock);

      v30 = [v28 initWithBlock:v29];
      _Block_release(v29);

      sub_388C8(&qword_128BB8, &unk_F41E0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_F56F0;
      *(v31 + 32) = a3;
      *(v31 + 40) = v30;
      v32 = objc_allocWithZone(IMMultiplexingServiceReachabilityResponseHandler);
      swift_unknownObjectRetain();
      v33 = v30;
      sub_388C8(qword_12AB00, &unk_F78D8);
      v34 = sub_F09EC();

      a3 = [v32 initWithResponseHandlers:v34];
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v36 = *(v16 + 152);
    swift_unknownObjectRetain();
    v36(a1, a3, v37, v16);
    return swift_unknownObjectRelease_n();
  }

  else
  {
    sub_E2A14(v21, 1, 0, 0, a2, a1, a3);
  }
}

void sub_E3404(int a1, id a2, void *a3)
{
  v38 = *a3;
  v4 = [a2 handleResults];
  sub_E4188();
  v5 = sub_F076C();

  v6 = 0;
  v8 = v5 + 64;
  v7 = *(v5 + 64);
  v37 = v5;
  v9 = *(v5 + 32);
  v10 = a3;
  v11 = 1 << v9;
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v7;
  v14 = (v11 + 63) >> 6;
  v35 = a3;
  if ((v12 & v7) != 0)
  {
    do
    {
      while (1)
      {
LABEL_10:
        v16 = __clz(__rbit64(v13)) | (v6 << 6);
        v17 = (*(v37 + 48) + 16 * v16);
        v18 = *v17;
        v19 = v17[1];
        v20 = *(*(v37 + 56) + 8 * v16);

        v21 = v20;
        v22 = [v21 persistentMenuDictionary];
        if (v22)
        {
          v23 = v22;
          v24 = sub_F076C();

          v25 = v10;
          v26 = v10[2];
          (*(*(v38 + 88) + 88))(v24, v18, v19, *(v38 + 80));
          v10 = v25;
        }

        v39 = v18;
        v13 &= v13 - 1;
        v27 = [v21 brandInfoDictionary];
        if (v27)
        {
          break;
        }

        if (!v13)
        {
          goto LABEL_6;
        }
      }

      v28 = v27;
      v36 = sub_F076C();

      v29 = v10[2];
      v30 = [v21 brandLogoData];
      if (v30)
      {
        v31 = v30;
        v32 = sub_F025C();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0xF000000000000000;
      }

      (*(*(v38 + 88) + 112))(v36, v32, v34, v39, v19, *(v38 + 80));

      sub_66124(v32, v34);

      v10 = v35;
    }

    while (v13);
  }

  while (1)
  {
LABEL_6:
    v15 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v8 + 8 * v15);
    ++v6;
    if (v13)
    {
      v6 = v15;
      goto LABEL_10;
    }
  }
}

uint64_t sub_E36EC(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 64) = a2;
  *(v4 + 24) = a1;
  return _swift_task_switch(sub_30858, 0, 0);
}

uint64_t RCSReachabilityController.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return v0;
}

uint64_t RCSReachabilityController.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_E377C()
{
  sub_F0F9C(25);

  sub_F08CC(*v0);
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  sub_F08CC(v2);
  return 0xD000000000000016;
}

uint64_t sub_E3800(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return RCSOperationController.OperationID.description.getter(a1, WitnessTable);
}

uint64_t sub_E3854(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 400) = a5;
  *(v6 + 408) = v5;
  *(v6 + 73) = a4;
  *(v6 + 384) = a2;
  *(v6 + 392) = a3;
  *(v6 + 376) = a1;
  v7 = *v5;
  *(v6 + 416) = *(*v5 + 88);
  *(v6 + 424) = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 432) = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  *(v6 + 440) = v9;
  *(v6 + 448) = *(v9 + 64);
  *(v6 + 456) = swift_task_alloc();

  return _swift_task_switch(sub_30ABC, 0, 0);
}

uint64_t sub_E396C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = a7;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 64) = *a3;
  return _swift_task_switch(sub_31DC0, 0, 0);
}

uint64_t sub_E39C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, uint64_t a6)
{
  *(v6 + 112) = a4;
  *(v6 + 120) = a6;
  *(v6 + 232) = a5;
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  *(v6 + 88) = a1;
  v7 = *a4;
  *(v6 + 128) = *(*a4 + 88);
  *(v6 + 136) = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 144) = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  *(v6 + 152) = v9;
  *(v6 + 160) = *(v9 + 64);
  *(v6 + 168) = swift_task_alloc();
  v10 = *(*(sub_388C8(&qword_127EB0, &unk_F2B30) - 8) + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  v11 = sub_388C8(&qword_12AAE8, &qword_F7880);
  *(v6 + 192) = v11;
  v12 = *(v11 - 8);
  *(v6 + 200) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_31FE8, 0, 0);
}

uint64_t sub_E3B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 16) = a1;
  v13 = swift_task_alloc();
  *(v8 + 24) = v13;
  *v13 = v8;
  v13[1] = sub_32858;

  return sub_E3854(a5, a6, a7, a8, v16);
}

void sub_E3C58(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

void *sub_E3CDC(uint64_t a1)
{
  sub_388C8(&qword_12AAF8, qword_F78C0);
  result = sub_F10EC();
  v3 = result;
  v4 = 0;
  v25 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v24 = (result + 8);
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v25 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v25 + 56) + 8 * v15);

      result = [v19 isReachable];
      *&v24[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
      v20 = (v3[6] + 16 * v15);
      *v20 = v18;
      v20[1] = v17;
      *(v3[7] + v15) = result;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v3[2] = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_E3E60(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_32978;

  return v6(v2 + 16);
}

void sub_E3FDC()
{
  sub_E4098();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_E4098()
{
  if (!qword_12AAC8)
  {
    sub_F030C();
    v0 = sub_F0DEC();
    if (!v1)
    {
      atomic_store(v0, &qword_12AAC8);
    }
  }
}

uint64_t sub_E40F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_127B20, &unk_F74E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_E4160(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

unint64_t sub_E4188()
{
  result = qword_12AAF0;
  if (!qword_12AAF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_12AAF0);
  }

  return result;
}

BOOL sub_E41D4(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = v1 + 2;
    v5 = *(v1 - 1);
    v4 = *v1;

    v6 = sub_F07BC();

    LODWORD(v4) = [v6 __im_isChatBot];

    v1 = v3;
  }

  while (!v4);
  return v2 != 0;
}

uint64_t sub_E4264()
{
  result = sub_F035C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_E4308(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_E4344(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000747865746ELL;
  v3 = 0x6F632D656E6F6870;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1919251317;
    }

    else
    {
      v5 = 0x6F632D656E6F6870;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xED0000747865746ELL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6E657265666E6F63;
    v6 = 0xEA00000000006563;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 25199;
    }

    else
    {
      v5 = 0x726F70736E617274;
    }

    if (v4 == 3)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE900000000000074;
    }
  }

  v7 = 0x6E657265666E6F63;
  v8 = 0xEA00000000006563;
  v9 = 0xE200000000000000;
  v10 = 25199;
  if (a2 != 3)
  {
    v10 = 0x726F70736E617274;
    v9 = 0xE900000000000074;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 1919251317;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_F122C();
  }

  return v13 & 1;
}

uint64_t sub_E44B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0xE800000000000000;
    v13 = 0x6E6F697461636F6CLL;
    if (a1 != 2)
    {
      v13 = 0x70756F7267;
      v12 = 0xE500000000000000;
    }

    v14 = 0x726566736E617274;
    if (a1)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v14 = 1954047348;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x6574736567677573;
    v4 = 0xEE00796C70655264;
    v5 = 0x6574736567677573;
    v6 = 0xEF6E6F6974634164;
    if (a1 != 7)
    {
      v5 = 0x6341656369766564;
      v6 = 0xEC0000006E6F6974;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xE600000000000000;
    v8 = 0x676E69707974;
    if (a1 != 4)
    {
      v8 = 0x6472614368636972;
      v7 = 0xE900000000000073;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x6E6F697461636F6CLL)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE500000000000000;
        if (v9 != 0x70756F7267)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE800000000000000;
      if (v9 != 0x726566736E617274)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1954047348)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x676E69707974)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE900000000000073;
      if (v9 != 0x6472614368636972)
      {
LABEL_52:
        v16 = sub_F122C();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xEE00796C70655264;
    if (v9 != 0x6574736567677573)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xEF6E6F6974634164;
    if (v9 != 0x6574736567677573)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xEC0000006E6F6974;
    if (v9 != 0x6341656369766564)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

void __swiftcall RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(CoreRCS::RCSHandle *__return_ptr retstr, Swift::String scheme, Swift::String id, Swift::OpaquePointer attributes, CoreRCS::RCSHandle::BotStatus botStatus, Swift::String_optional alternateHandle)
{
  object = alternateHandle.value._object;
  countAndFlagsBits = alternateHandle.value._countAndFlagsBits;
  v9 = id._object;
  v10 = id._countAndFlagsBits;
  v11 = scheme._object;
  v12 = scheme._countAndFlagsBits;
  sub_E7DC8(_swiftEmptyArrayStorage);
  v14 = sub_E5BB4(attributes._rawValue);

  v18._countAndFlagsBits = v12;
  v18._object = v11;
  v19._countAndFlagsBits = v10;
  v19._object = v9;
  *v20 = v14;
  *&v20[8] = countAndFlagsBits;
  *&v20[16] = object;
  v20[24] = botStatus;
  v21[0] = v12;
  v21[1] = v11;
  v21[2] = v10;
  v21[3] = v9;
  v21[4] = v14;
  v21[5] = countAndFlagsBits;
  v21[6] = object;
  v22 = botStatus;
  sub_38910(&v18, v17);
  sub_3CAB8(v21);
  v15 = v19;
  retstr->scheme = v18;
  retstr->id = v15;
  *&retstr->attributes._rawValue = *v20;
  *(&retstr->alternateHandle + 1) = *&v20[9];
}

uint64_t RCSHandle.canonicalizedHandle(for:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v2 + 8);
  if (*v2 != 7103860 || v7 != 0xE300000000000000)
  {
    v9 = *v2;
    v10 = *(v2 + 8);
    if ((sub_F122C() & 1) == 0)
    {
      v34 = v6 == 0x6F746C69616DLL && v7 == 0xE600000000000000;
      if (v34 || (sub_F122C() & 1) != 0)
      {
        v61 = *(v2 + 16);
        sub_E7EC0(&v61, &v54);
        v35 = sub_53E04(_swiftEmptyArrayStorage);
        sub_E7DC8(_swiftEmptyArrayStorage);
        v46 = v61;
        v36 = sub_E5BB4(v35);

        v47 = 7367027;
        v48 = 0xE300000000000000;
        v49 = v46;
        v51 = 0;
        v52 = 0;
        v50 = v36;
        v53 = 0;
        v54 = 7367027;
        v55 = 0xE300000000000000;
        v56 = v46;
        v59 = 0;
        v57 = v36;
        goto LABEL_21;
      }

      v38 = *(v2 + 56);
      v40 = *(v3 + 40);
      v39 = *(v3 + 48);
      v15 = *(v3 + 24);
      v41 = *(v3 + 32);
      v14 = *(v3 + 16);
LABEL_24:
      result = sub_38910(v3, &v54);
      goto LABEL_25;
    }
  }

  v11 = a1();
  v13 = v12;
  v14 = *(v2 + 16);
  v15 = *(v2 + 24);
  v16 = sub_F07BC();
  v43 = v11;
  if (v13)
  {

    v17 = sub_F07BC();
  }

  else
  {
    v17 = 0;
  }

  v18 = IMPhoneNumberRefCopyForPhoneNumber();

  v19 = v18;
  v20 = IMNormalizedPhoneNumberForCFPhoneNumberRef();
  if (!v20)
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v27 = sub_F06CC();
    sub_3C96C(v27, static Logger.rcs);

    sub_38910(v3, &v54);
    v28 = sub_F06AC();
    v29 = sub_F0CEC();
    sub_3CAB8(v3);

    if (os_log_type_enabled(v28, v29))
    {
      log = v28;
      v30 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_3E850(v14, v15, &v47);
      *(v30 + 12) = 2080;
      v54 = v43;
      v55 = v13;
      sub_388C8(&qword_12AB88, &qword_F7970);
      v31 = sub_F083C();
      v44 = v19;
      v33 = sub_3E850(v31, v32, &v47);

      *(v30 + 14) = v33;
      _os_log_impl(&dword_0, log, v29, "Could not normalize phone number %s country code %s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v38 = *(v3 + 56);
    v40 = *(v3 + 40);
    v39 = *(v3 + 48);
    v41 = *(v3 + 32);
    goto LABEL_24;
  }

  v21 = v20;

  v22 = sub_F07EC();
  v24 = v23;

  v25 = sub_53E04(_swiftEmptyArrayStorage);
  sub_E7DC8(_swiftEmptyArrayStorage);
  v26 = sub_E5BB4(v25);

  v47 = 7103860;
  v48 = 0xE300000000000000;
  *&v49 = v22;
  *(&v49 + 1) = v24;
  v51 = 0;
  v52 = 0;
  v50 = v26;
  v53 = 0;
  v54 = 7103860;
  v55 = 0xE300000000000000;
  *&v56 = v22;
  *(&v56 + 1) = v24;
  v59 = 0;
  v57 = v26;
LABEL_21:
  v58 = 0;
  v60 = 0;
  sub_38910(&v47, v45);
  result = sub_3CAB8(&v54);
  v38 = v53;
  v40 = v51;
  v39 = v52;
  v15 = *(&v49 + 1);
  v41 = v50;
  v7 = v48;
  v14 = v49;
  v6 = v47;
LABEL_25:
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v41;
  *(a2 + 40) = v40;
  *(a2 + 48) = v39;
  *(a2 + 56) = v38;
  return result;
}

uint64_t RCSHandle.rawValue.getter()
{
  v1 = v0;
  sub_388C8(&qword_128288, &qword_F3460);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_F2C60;
  v3 = *(v1 + 3);
  *(v2 + 32) = *(v1 + 2);
  *(v2 + 40) = v3;
  v4 = *(v1 + 4);

  v5 = sub_E57D4(v4);
  *&v12 = v2;
  sub_E77D8(v5);
  v12 = *v1;
  v11 = v12;
  sub_E7EC0(&v12, &v10);
  v13._countAndFlagsBits = 58;
  v13._object = 0xE100000000000000;
  sub_F08CC(v13);
  v10 = v2;
  sub_388C8(&qword_128558, &unk_F4430);
  sub_96AA4();
  v6 = sub_F079C();
  v8 = v7;

  v14._countAndFlagsBits = v6;
  v14._object = v8;
  sub_F08CC(v14);

  return v11;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RCSHandle.init(rawValue:botStatus:alternateHandle:)(CoreRCS::RCSHandle *__return_ptr retstr, Swift::String rawValue, CoreRCS::RCSHandle::BotStatus botStatus, Swift::String_optional alternateHandle)
{
  object = alternateHandle.value._object;
  countAndFlagsBits = alternateHandle.value._countAndFlagsBits;
  v6 = botStatus;
  v7 = rawValue._object;
  v8 = rawValue._countAndFlagsBits;
  v90 = sub_E7DC8(_swiftEmptyArrayStorage);
  *v100 = v90;
  v10 = sub_F07BC();
  IsPhoneNumber = IMStringIsPhoneNumber();

  if (IsPhoneNumber)
  {
    scheme._countAndFlagsBits = 7103860;
    scheme._object = 0xE300000000000000;
    id._countAndFlagsBits = v8;
    id._object = v7;
    v100[24] = v6;
    *&v100[8] = countAndFlagsBits;
    *&v100[16] = object;
LABEL_3:
    v93 = scheme;
    v94 = id;
    v95[0] = *v100;
    *(v95 + 9) = *&v100[9];
    v96[0] = scheme;
    v96[1] = id;
    v97[0] = *v100;
    *(v97 + 9) = *&v100[9];
    sub_38910(&v93, &v92);
    sub_3CAB8(v96);
    v12 = v94;
    retstr->scheme = v93;
    retstr->id = v12;
    *&retstr->attributes._rawValue = v95[0];
    *(&retstr->alternateHandle + 1) = *(v95 + 9);
    return;
  }

  v87 = countAndFlagsBits;
  v88 = v6;
  v89 = object;

  v103._countAndFlagsBits = 60;
  v103._object = 0xE100000000000000;
  v13 = sub_F092C(v103);

  v86 = retstr;
  if (!v13 || (v104._countAndFlagsBits = 62, v104._object = 0xE100000000000000, !sub_F093C(v104)))
  {
    v91 = v7;
LABEL_13:
    v22 = sub_F007C();
    v23 = *(v22 - 8);
    v24 = *(v23 + 64);
    __chkstk_darwin(v22);
    v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = sub_388C8(&qword_12AB90, &qword_F7978);
    v28 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v27 - 8);
    v30 = &v82 - v29;
    v31 = v8;
    v32 = v91;
    sub_F006C();
    if ((*(v23 + 48))(v30, 1, v22) == 1)
    {

      sub_372B0(v30, &qword_12AB90, &qword_F7978);
      sub_E7F1C();
      swift_allocError();
      *v33 = v31;
      *(v33 + 8) = v32;
      *(v33 + 16) = 0;
      swift_willThrow();

      return;
    }

    v85 = v31;
    (*(v23 + 32))(v26, v30, v22);
    v34 = sub_F004C();
    v35 = v22;
    *&v96[0] = 59;
    *(&v96[0] + 1) = 0xE100000000000000;
    __chkstk_darwin(v34);
    *(&v82 - 2) = v96;
    v36 = v102;
    v39 = sub_E71DC(0x7FFFFFFFFFFFFFFFLL, 1, sub_3387C, (&v82 - 4), v37, v38, &v82);
    v40 = v39;
    v41 = v39[2];
    if (!v41)
    {

      sub_E7F1C();
      swift_allocError();
      v57 = v91;
      *v58 = v85;
      *(v58 + 8) = v57;
      *(v58 + 16) = 1;
      swift_willThrow();
      (*(v23 + 8))(v26, v35);

      return;
    }

    v83 = v35;
    v84 = v23;
    v90 = &v82;
    v102 = v36;
    v42 = v39[4];
    v43 = v39[5];
    v44 = v39[6];
    v45 = v39[7];

    v46 = sub_F088C();
    v48 = v47;

    id._countAndFlagsBits = v46;
    id._object = v48;
    v82 = v48;
    v100[24] = v88;
    *&v100[8] = v87;
    *&v100[16] = v89;
    v49 = *(v40 + 16);
    v50 = v85;
    if (v49 < v41)
    {
      __break(1u);
    }

    else
    {
      v48 = &scheme;
      if (v49 == v41 - 1)
      {

        goto LABEL_19;
      }
    }

    sub_E7AD8(v40, v40 + 32, 1, (2 * v41) | 1);
    v81 = v80;

    v40 = v81;
LABEL_19:
    v51 = v83;
    sub_E8AE0(v40, v50, v91, &v48[2]);

    v52 = v26;
    v53 = sub_F005C();
    if (v54)
    {
      v55 = v53;
      v56 = v54;

      scheme._countAndFlagsBits = v55;
      scheme._object = v56;
      if (v55 != 7367027 || v56 != 0xE300000000000000)
      {
        v69 = sub_F122C();

        (*(v84 + 8))(v26, v51);
        retstr = v86;
        if ((v69 & 1) == 0 || v88)
        {
          goto LABEL_3;
        }

        goto LABEL_38;
      }

      (*(v84 + 8))(v26, v51);
LABEL_34:
      retstr = v86;
      if (v88)
      {
        goto LABEL_3;
      }

LABEL_38:
      v100[24] = 1;
      goto LABEL_3;
    }

    v59 = *v100;
    if (*(*v100 + 16))
    {
      v60 = sub_335DC(2u);
      if (v61)
      {
        v62 = (*(v59 + 56) + 16 * v60);
        v63 = v62[1];
        if (v63)
        {
          v64 = *v62 & 0xFFFFFFFFFFFFLL;
          if ((v63 & 0x2000000000000000) != 0 ? HIBYTE(v63) & 0xF : v64)
          {

            (*(v84 + 8))(v26, v51);
            scheme._countAndFlagsBits = 7367027;
            scheme._object = 0xE300000000000000;
            retstr = v86;
            goto LABEL_3;
          }
        }
      }
    }

    v66 = v91;
    v67 = sub_F07BC();
    IsEmail = IMStringIsEmail();

    if (IsEmail)
    {

      (*(v84 + 8))(v52, v51);
      scheme._countAndFlagsBits = 7367027;
      scheme._object = 0xE300000000000000;
      goto LABEL_34;
    }

    v102 = v59;

    v70 = sub_F07BC();
    v71 = [v70 im_stripCategoryLabel];

    v72 = sub_F07EC();
    v74 = v73;

    if (v72 == v50 && v74 == v66)
    {
    }

    else
    {
      v75 = sub_F122C();

      if ((v75 & 1) == 0)
      {
        v77._countAndFlagsBits = v72;
        v77._object = v74;
        v78.value._countAndFlagsBits = v87;
        v78.value._object = v89;
        RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v101, v77, v88, v78);
        if (!v79)
        {
          (*(v84 + 8))(v52, v51);

          scheme = v101.scheme;
          id = v101.id;
          *v100 = *&v101.attributes._rawValue;
          *&v100[9] = *(&v101.alternateHandle + 1);
          retstr = v86;
          goto LABEL_3;
        }

        (*(v84 + 8))(v52, v51);

        goto LABEL_45;
      }
    }

    sub_E7F1C();
    swift_allocError();
    *v76 = v50;
    *(v76 + 8) = v66;
    *(v76 + 16) = 2;
    swift_willThrow();
    (*(v84 + 8))(v52, v51);

LABEL_45:

    return;
  }

  v14 = sub_E8A30(1uLL, v8, v7);
  v16 = v15;

  if (__OFSUB__(sub_F0E1C(), 1))
  {
    __break(1u);
  }

  else
  {
    v17 = sub_F0E0C();
    if (v18)
    {
      v19 = v16;
    }

    else
    {
      v19 = v17;
    }

    if (v19 >> 14 >= v14 >> 14)
    {
      sub_F0E3C();

      v8 = sub_F088C();
      v21 = v20;

      v91 = v21;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_E57D4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    sub_6EB68(0, v2, 0);
    v36 = &_swiftEmptyArrayStorage;
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = sub_F0E9C();
    v6 = result;
    v7 = 0;
    v37 = *(v1 + 36);
    v32 = v1 + 72;
    v33 = v2;
    v34 = v1 + 64;
    v35 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_50;
      }

      if (v37 != *(v1 + 36))
      {
        goto LABEL_51;
      }

      v10 = *(*(v1 + 48) + v6);
      v11 = (*(v1 + 56) + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        v13 = *v11;
        v14 = 0x726F70736E617274;
        if (v10 == 3)
        {
          v14 = 25199;
        }

        v15 = 0xE900000000000074;
        if (v10 == 3)
        {
          v15 = 0xE200000000000000;
        }

        if (v10 == 2)
        {
          v14 = 0x6E657265666E6F63;
          v15 = 0xEA00000000006563;
        }

        v16 = 0x6F632D656E6F6870;
        if (v10)
        {
          v16 = 1919251317;
        }

        v17 = 0xED0000747865746ELL;
        if (v10)
        {
          v17 = 0xE400000000000000;
        }

        if (v10 <= 1)
        {
          v18 = v16;
        }

        else
        {
          v18 = v14;
        }

        if (v10 <= 1)
        {
          v19 = v17;
        }

        else
        {
          v19 = v15;
        }

        v38._countAndFlagsBits = v18;
        v38._object = v19;
        sub_F08CC(v38);

        v39._countAndFlagsBits = 61;
        v39._object = 0xE100000000000000;
        sub_F08CC(v39);
        v20._countAndFlagsBits = v13;
      }

      else if (v10 <= 1)
      {
        v20._countAndFlagsBits = 0x6F632D656E6F6870;
        v12 = 0xED0000747865746ELL;
        if (v10)
        {
          v12 = 0xE400000000000000;
          v20._countAndFlagsBits = 1919251317;
        }
      }

      else if (v10 == 2)
      {
        v20._countAndFlagsBits = 0x6E657265666E6F63;
        v12 = 0xEA00000000006563;
      }

      else if (v10 == 3)
      {
        v12 = 0xE200000000000000;
        v20._countAndFlagsBits = 25199;
      }

      else
      {
        v20._countAndFlagsBits = 0x726F70736E617274;
        v12 = 0xE900000000000074;
      }

      v20._object = v12;
      sub_F08CC(v20);

      v21 = v36;
      v23 = v36[2];
      v22 = v36[3];
      if (v23 >= v22 >> 1)
      {
        result = sub_6EB68((v22 > 1), v23 + 1, 1);
        v21 = v36;
      }

      v21[2] = v23 + 1;
      v24 = &v21[2 * v23];
      v24[4] = 0;
      v24[5] = 0xE000000000000000;
      v1 = v35;
      v8 = 1 << *(v35 + 32);
      if (v6 >= v8)
      {
        goto LABEL_52;
      }

      v4 = v34;
      v25 = *(v34 + 8 * v9);
      if ((v25 & (1 << v6)) == 0)
      {
        goto LABEL_53;
      }

      v36 = v21;
      if (v37 != *(v35 + 36))
      {
        goto LABEL_54;
      }

      v26 = v25 & (-2 << (v6 & 0x3F));
      if (v26)
      {
        v8 = __clz(__rbit64(v26)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v9 << 6;
        v28 = v9 + 1;
        v29 = (v32 + 8 * v9);
        while (v28 < (v8 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_E03E4(v6, v37, 0);
            v8 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_E03E4(v6, v37, 0);
      }

LABEL_4:
      ++v7;
      v6 = v8;
      if (v7 == v33)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  return result;
}

uint64_t sub_E5BB4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_388C8(&qword_129720, qword_F52E0);
    v2 = sub_F110C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_16:
    v15 = __clz(__rbit64(v5)) | (v9 << 6);
    v16 = *(*(a1 + 48) + v15);
    v17 = (*(a1 + 56) + 16 * v15);
    v24 = *v17;
    v25 = v17[1];

    sub_388C8(&qword_12AB88, &qword_F7970);
    swift_dynamicCast();
    v18 = v2[5];
    sub_F12FC();
    sub_F089C();

    result = sub_F132C();
    v10 = -1 << *(v2 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    if (((-1 << v11) & ~*&v7[8 * (v11 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v10) >> 6;
      while (++v12 != v20 || (v19 & 1) == 0)
      {
        v21 = v12 == v20;
        if (v12 == v20)
        {
          v12 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v12];
        if (v22 != -1)
        {
          v13 = __clz(__rbit64(~v22)) + (v12 << 6);
          goto LABEL_10;
        }
      }

      goto LABEL_27;
    }

    v13 = __clz(__rbit64((-1 << v11) & ~*&v7[8 * (v11 >> 6)])) | v11 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
    v5 &= v5 - 1;
    *&v7[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
    *(v2[6] + v13) = v16;
    *(v2[7] + 16 * v13) = v23;
    ++v2[2];
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v9;
    if (v5)
    {
      v9 = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t RCSHandle.uri.getter()
{
  v3 = *v0;
  v4 = v3;
  sub_E7EC0(&v4, &v2);
  v5._countAndFlagsBits = 58;
  v5._object = 0xE100000000000000;
  sub_F08CC(v5);
  sub_F08CC(v0[1]);
  return v3._countAndFlagsBits;
}

uint64_t RCSHandle.Attribute.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6F632D656E6F6870;
  v2 = 0x6E657265666E6F63;
  v3 = 25199;
  if (a1 != 3)
  {
    v3 = 0x726F70736E617274;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1919251317;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_E5FC0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreRCS9RCSHandleV9AttributeO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_E5FF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000747865746ELL;
  v4 = 0x6F632D656E6F6870;
  v5 = 0xEA00000000006563;
  v6 = 0x6E657265666E6F63;
  v7 = 0xE200000000000000;
  v8 = 25199;
  if (v2 != 3)
  {
    v8 = 0x726F70736E617274;
    v7 = 0xE900000000000074;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1919251317;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_E6090()
{
  v1 = *v0;
  sub_F12FC();
  sub_F089C();

  return sub_F132C();
}

uint64_t sub_E6174()
{
  *v0;
  *v0;
  *v0;
  sub_F089C();
}

Swift::Int sub_E6244()
{
  v1 = *v0;
  sub_F12FC();
  sub_F089C();

  return sub_F132C();
}

uint64_t static RCSHandle.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_F122C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_F122C() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = a2[4];

  return sub_E63B4(v6, v7);
}

uint64_t sub_E63B4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 56) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 48) + v12);

    result = sub_335DC(v16);
    if ((v17 & 1) == 0)
    {
LABEL_25:

      return 0;
    }

    v18 = (*(a2 + 56) + 16 * result);
    v19 = v18[1];
    if (v19)
    {
      if (!v14)
      {
        return 0;
      }

      if (*v18 == v15 && v19 == v14)
      {
      }

      else
      {
        v21 = sub_F122C();

        if ((v21 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v14)
    {
      goto LABEL_25;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t RCSHandle.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RCSHandle.attributes.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t RCSHandle.chatBotId.getter()
{
  countAndFlagsBits = v0[3]._countAndFlagsBits;
  if (countAndFlagsBits)
  {
    object = v0[2]._object;

    v3._countAndFlagsBits = object;
    v3._object = countAndFlagsBits;
    RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v24, v3, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
    if (v4)
    {
      if (qword_128F48 != -1)
      {
        swift_once();
      }

      v5 = sub_F06CC();
      sub_3C96C(v5, static Logger.chatbot);
      swift_errorRetain();
      v6 = sub_F06AC();
      v7 = sub_F0CEC();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        swift_errorRetain();
        v10 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v10;
        *v9 = v10;
        _os_log_impl(&dword_0, v6, v7, "Failed to get chat Bot ID, error: %@", v8, 0xCu);
        sub_372B0(v9, &qword_127AF0, &qword_F28E0);
      }

      else
      {
      }

      return 0;
    }

    v13 = v24.scheme._countAndFlagsBits;
    v12 = v24.scheme._object;
    v14 = v24.scheme._countAndFlagsBits == 7367027 && v24.scheme._object == 0xE300000000000000;
    if (!v14 && (sub_F122C() & 1) == 0)
    {
      if (qword_128F48 != -1)
      {
        swift_once();
      }

      v16 = sub_F06CC();
      sub_3C96C(v16, static Logger.chatbot);
      sub_38910(&v24, &v22);
      v17 = sub_F06AC();
      v18 = sub_F0CEC();
      sub_3CAB8(&v24);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v23[0] = v20;
        *v19 = 136315138;
        v22._countAndFlagsBits = v13;
        v22._object = v12;

        v27._countAndFlagsBits = 58;
        v27._object = 0xE100000000000000;
        sub_F08CC(v27);
        sub_F08CC(v24.id);
        sub_3CAB8(&v24);
        v21 = sub_3E850(v22._countAndFlagsBits, v22._object, v23);

        *(v19 + 4) = v21;
        _os_log_impl(&dword_0, v17, v18, "Alternate handle is not a sip, something is very wrong: %s", v19, 0xCu);
        sub_1EDC(v20);
      }

      else
      {

        sub_3CAB8(&v24);
      }

      return 0;
    }

    v22._countAndFlagsBits = v13;
    v22._object = v12;

    v26._countAndFlagsBits = 58;
    v26._object = 0xE100000000000000;
    sub_F08CC(v26);
    sub_F08CC(v24.id);
    sub_3CAB8(&v24);
    return v22._countAndFlagsBits;
  }

  v24.scheme = *v0;
  v11 = v24.scheme._countAndFlagsBits == 7367027 && v24.scheme._object == 0xE300000000000000;
  if (v11 || (sub_F122C() & 1) != 0)
  {
    v22 = *v0;
    sub_E7EC0(&v24, v23);
    v25._countAndFlagsBits = 58;
    v25._object = 0xE100000000000000;
    sub_F08CC(v25);
    sub_F08CC(v0[1]);
    return v22._countAndFlagsBits;
  }

  return 0;
}

void RCSHandle.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  sub_F089C();
  v6 = v2[2];
  v7 = v2[3];
  sub_F089C();
  sub_E78CC(a1, v2[4]);
  if (v2[6])
  {
    v8 = v2[5];
    sub_F131C(1u);
    sub_F089C();
  }

  else
  {
    sub_F131C(0);
  }

  sub_F130C(*(v2 + 56));
}

Swift::Int RCSHandle.hashValue.getter()
{
  sub_F12FC();
  v1 = *v0;
  v2 = v0[1];
  sub_F089C();
  v3 = v0[2];
  v4 = v0[3];
  sub_F089C();
  sub_E78CC(v7, v0[4]);
  if (v0[6])
  {
    v5 = v0[5];
    sub_F131C(1u);
    sub_F089C();
  }

  else
  {
    sub_F131C(0);
  }

  sub_F130C(*(v0 + 56));
  return sub_F132C();
}

Swift::Int sub_E6B54()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 56);
  sub_F12FC();
  sub_F089C();
  sub_F089C();
  sub_E78CC(v10, v6);
  if (v7)
  {
    sub_F131C(1u);
    sub_F089C();
  }

  else
  {
    sub_F131C(0);
  }

  sub_F130C(v8);
  return sub_F132C();
}

void sub_E6C24(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + 56);
  sub_F089C();
  sub_F089C();
  sub_E78CC(a1, v8);
  if (v9)
  {
    sub_F131C(1u);
    sub_F089C();
  }

  else
  {
    sub_F131C(0);
  }

  sub_F130C(v10);
}

Swift::Int sub_E6CCC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 56);
  sub_F12FC();
  sub_F089C();
  sub_F089C();
  sub_E78CC(v10, v6);
  if (v7)
  {
    sub_F131C(1u);
    sub_F089C();
  }

  else
  {
    sub_F131C(0);
  }

  sub_F130C(v8);
  return sub_F132C();
}

uint64_t sub_E6D98(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_F122C() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_F122C() & 1) == 0)
  {
    return 0;
  }

  return sub_E63B4(v3, v7);
}

uint64_t RCSHandle.ParseError.errorDescription.getter(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_F0F9C(81);
      v8._object = 0x8000000000100D90;
      v8._countAndFlagsBits = 0xD00000000000001BLL;
      sub_F08CC(v8);
      v9._countAndFlagsBits = a1;
      v9._object = a2;
      sub_F08CC(v9);
      v5 = " a nil URL scheme.";
      v6._countAndFlagsBits = 0xD000000000000034;
    }

    else
    {
      sub_F0F9C(63);
      v12._object = 0x8000000000100D90;
      v12._countAndFlagsBits = 0xD00000000000001BLL;
      sub_F08CC(v12);
      v13._countAndFlagsBits = a1;
      v13._object = a2;
      sub_F08CC(v13);
      v5 = "RCSHandle failed to parse ";
      v6._countAndFlagsBits = 0xD000000000000022;
    }
  }

  else
  {
    sub_F0F9C(66);
    v10._object = 0x8000000000100D90;
    v10._countAndFlagsBits = 0xD00000000000001BLL;
    sub_F08CC(v10);
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    sub_F08CC(v11);
    v5 = "ata in path section.";
    v6._countAndFlagsBits = 0xD000000000000025;
  }

  v6._object = (v5 | 0x8000000000000000);
  sub_F08CC(v6);
  return 0;
}

double RCSHandle.canonicalizedHandle(for:)@<D0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  sub_E83E4(v2, a1, v6);
  v4 = v6[1];
  *a2 = v6[0];
  a2[1] = v4;
  a2[2] = v7[0];
  result = *(v7 + 9);
  *(a2 + 41) = *(v7 + 9);
  return result;
}

void RCSHandle.init(destination:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 extractedUri];
  v5 = sub_F07EC();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = &selRef_extractedUri;
  }

  else
  {
    v9 = &selRef_uri;
  }

  v10 = [a1 *v9];
  v11 = sub_F07EC();
  v13 = v12;

  if ([a1 isBot])
  {
    v14 = CoreRCS_RCSHandle_BotStatus_isChatBot;
  }

  else
  {
    v14 = CoreRCS_RCSHandle_BotStatus_notChatBot;
  }

  v15 = [a1 identities];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 identityList];

    v18 = sub_F09FC();
    if (!v18[2])
    {
      __break(1u);
      return;
    }

    v19 = v18[4];
    v20 = v18[5];
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v21._countAndFlagsBits = v11;
  v21._object = v13;
  v22.value._countAndFlagsBits = v19;
  v22.value._object = v20;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v25, v21, v14, v22);

  if (!v23)
  {
    id = v25.id;
    *a2 = v25.scheme;
    *(a2 + 16) = id;
    *(a2 + 32) = *&v25.attributes._rawValue;
    *(a2 + 41) = *(&v25.alternateHandle + 1);
  }
}

void *sub_E71DC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = sub_F096C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_D8B54(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_D8B54((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_F095C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_F08AC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_F08AC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_F096C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_D8B54(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_F096C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_D8B54(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_D8B54((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_F08AC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_E759C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_F12FC();
  v4 = *a1;
  v5 = *(a1 + 8);
  sub_F089C();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_F089C();
  sub_E78CC(v11, *(a1 + 32));
  if (*(a1 + 48))
  {
    v8 = *(a1 + 40);
    sub_F131C(1u);
    sub_F089C();
  }

  else
  {
    sub_F131C(0);
  }

  sub_F130C(*(a1 + 56));
  v9 = sub_F132C();

  return sub_E766C(a1, v9);
}

unint64_t sub_E766C(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v6 = *a1;
    v7 = a1[1];
    do
    {
      v10 = (*(v2 + 48) + (v4 << 6));
      v12 = v10[2];
      v11 = v10[3];
      v13 = v10[4];
      v14 = v10[6];
      v15 = *v10 == v6 && v10[1] == v7;
      if (v15 || (v16 = v10[1], (sub_F122C() & 1) != 0))
      {
        v17 = v12 == a1[2] && v11 == a1[3];
        if (v17 || (sub_F122C() & 1) != 0)
        {
          v8 = a1[4];

          LOBYTE(v8) = sub_E63B4(v9, v8);

          if (v8)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v19;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_E77D8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_6E2D8(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_E78CC(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v7)
  {
    v17 = v9;
LABEL_12:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = *(*(a2 + 48) + v12);
    v14 = (*(a2 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    v7 &= v7 - 1;
    v20 = a1[2];
    v21 = a1[3];
    v22 = *(a1 + 8);
    v18 = *a1;
    v19 = a1[1];

    sub_F089C();

    if (v15)
    {
      sub_F131C(1u);
      sub_F089C();
    }

    else
    {
      sub_F131C(0);
    }

    v9 = sub_F132C() ^ v17;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      sub_F130C(v9);
      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v17 = v9;
      v10 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_E7AD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_388C8(&qword_12A6E0, &qword_F73A8);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_E7BB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_1296F0, &qword_F5B90);
    v3 = sub_F110C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_51FEC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_E7CB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_129710, &qword_F52D0);
    v3 = sub_F110C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_51FEC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_E7DC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_129720, qword_F52E0);
    v3 = sub_F110C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_335DC(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_E7F1C()
{
  result = qword_12AB98;
  if (!qword_12AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12AB98);
  }

  return result;
}

uint64_t sub_E7F70@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  if (*a1 != 7103860 || v7 != 0xE300000000000000)
  {
    v9 = *a1;
    if ((sub_F122C() & 1) == 0)
    {
      v33 = v6 == 0x6F746C69616DLL && v7 == 0xE600000000000000;
      if (v33 || (sub_F122C() & 1) != 0)
      {
        v35 = *(a1 + 16);
        v34 = *(a1 + 24);

        v36 = sub_53E04(_swiftEmptyArrayStorage);
        sub_E7DC8(_swiftEmptyArrayStorage);
        v37 = sub_E5BB4(v36);

        v47 = 7367027;
        v48 = 0xE300000000000000;
        v49 = v35;
        v50 = v34;
        v52 = 0;
        v53 = 0;
        v51 = v37;
        v54 = 0;
        v55 = 7367027;
        v56 = 0xE300000000000000;
        v57 = v35;
        v58 = v34;
        v61 = 0;
        v59 = v37;
        goto LABEL_21;
      }

      v39 = *(a1 + 56);
      v41 = *(a1 + 40);
      v40 = *(a1 + 48);
      v14 = *(a1 + 24);
      v42 = *(a1 + 32);
      v13 = *(a1 + 16);
LABEL_24:
      result = sub_38910(a1, &v55);
      goto LABEL_25;
    }
  }

  v10 = a2();
  v12 = v11;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = sub_F07BC();
  v44 = v10;
  if (v12)
  {

    v16 = sub_F07BC();
  }

  else
  {
    v16 = 0;
  }

  v17 = IMPhoneNumberRefCopyForPhoneNumber();

  v18 = v17;
  v19 = IMNormalizedPhoneNumberForCFPhoneNumberRef();
  if (!v19)
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v26 = sub_F06CC();
    sub_3C96C(v26, static Logger.rcs);

    sub_38910(a1, &v55);
    v27 = sub_F06AC();
    v28 = sub_F0CEC();
    sub_3CAB8(a1);

    if (os_log_type_enabled(v27, v28))
    {
      log = v27;
      v29 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_3E850(v13, v14, &v47);
      *(v29 + 12) = 2080;
      v55 = v44;
      v56 = v12;
      sub_388C8(&qword_12AB88, &qword_F7970);
      v30 = sub_F083C();
      v45 = v18;
      v32 = sub_3E850(v30, v31, &v47);

      *(v29 + 14) = v32;
      _os_log_impl(&dword_0, log, v28, "Could not normalize phone number %s country code %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v39 = *(a1 + 56);
    v41 = *(a1 + 40);
    v40 = *(a1 + 48);
    v42 = *(a1 + 32);
    goto LABEL_24;
  }

  v20 = v19;

  v21 = sub_F07EC();
  v23 = v22;

  v24 = sub_53E04(_swiftEmptyArrayStorage);
  sub_E7DC8(_swiftEmptyArrayStorage);
  v25 = sub_E5BB4(v24);

  v47 = 7103860;
  v48 = 0xE300000000000000;
  v49 = v21;
  v50 = v23;
  v52 = 0;
  v53 = 0;
  v51 = v25;
  v54 = 0;
  v55 = 7103860;
  v56 = 0xE300000000000000;
  v57 = v21;
  v58 = v23;
  v61 = 0;
  v59 = v25;
LABEL_21:
  v60 = 0;
  v62 = 0;
  sub_38910(&v47, v46);
  result = sub_3CAB8(&v55);
  v39 = v54;
  v41 = v52;
  v40 = v53;
  v14 = v50;
  v42 = v51;
  v7 = v48;
  v13 = v49;
  v6 = v47;
LABEL_25:
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v13;
  *(a3 + 24) = v14;
  *(a3 + 32) = v42;
  *(a3 + 40) = v41;
  *(a3 + 48) = v40;
  *(a3 + 56) = v39;
  return result;
}

uint64_t sub_E83E4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  if (*a1 != 7103860 || v7 != 0xE300000000000000)
  {
    v9 = *a1;
    if ((sub_F122C() & 1) == 0)
    {
      v38 = v6 == 0x6F746C69616DLL && v7 == 0xE600000000000000;
      if (v38 || (sub_F122C() & 1) != 0)
      {
        v40 = *(a1 + 16);
        v39 = *(a1 + 24);

        v41 = sub_53E04(_swiftEmptyArrayStorage);
        sub_E7DC8(_swiftEmptyArrayStorage);
        v42 = sub_E5BB4(v41);

        v52 = 7367027;
        v53 = 0xE300000000000000;
        v54 = v40;
        v55 = v39;
        v57 = 0;
        v58 = 0;
        v56 = v42;
        v59 = 0;
        v60 = 7367027;
        v61 = 0xE300000000000000;
        v62 = v40;
        v63 = v39;
        v66 = 0;
        v64 = v42;
        goto LABEL_24;
      }

      v44 = *(a1 + 56);
      v46 = *(a1 + 40);
      v45 = *(a1 + 48);
      v20 = *(a1 + 24);
      v47 = *(a1 + 32);
      v19 = *(a1 + 16);
LABEL_27:
      result = sub_38910(a1, &v60);
      goto LABEL_28;
    }
  }

  v10 = a2();
  if (v10)
  {
    v11 = v10;
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 sharedInstance];
    v15 = [v14 copyIsoCountryCodeForSubscriptionContext:v13];

    v16 = sub_F07EC();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  v21 = sub_F07BC();
  v49 = v16;
  if (v18)
  {

    v22 = sub_F07BC();
  }

  else
  {
    v22 = 0;
  }

  v23 = IMPhoneNumberRefCopyForPhoneNumber();

  v24 = IMNormalizedPhoneNumberForCFPhoneNumberRef();
  if (!v24)
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v31 = sub_F06CC();
    sub_3C96C(v31, static Logger.rcs);

    sub_38910(a1, &v60);
    v32 = sub_F06AC();
    v33 = sub_F0CEC();
    sub_3CAB8(a1);

    if (os_log_type_enabled(v32, v33))
    {
      log = v32;
      v34 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v34 = 136315394;
      *(v34 + 4) = sub_3E850(v19, v20, &v52);
      *(v34 + 12) = 2080;
      v60 = v49;
      v61 = v18;
      sub_388C8(&qword_12AB88, &qword_F7970);
      v35 = sub_F083C();
      v50 = v33;
      v37 = sub_3E850(v35, v36, &v52);

      *(v34 + 14) = v37;
      _os_log_impl(&dword_0, log, v50, "Could not normalize phone number %s country code %s", v34, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v44 = *(a1 + 56);
    v46 = *(a1 + 40);
    v45 = *(a1 + 48);
    v47 = *(a1 + 32);
    goto LABEL_27;
  }

  v25 = v24;

  v26 = sub_F07EC();
  v28 = v27;

  v29 = sub_53E04(_swiftEmptyArrayStorage);
  sub_E7DC8(_swiftEmptyArrayStorage);
  v30 = sub_E5BB4(v29);

  v52 = 7103860;
  v53 = 0xE300000000000000;
  v54 = v26;
  v55 = v28;
  v57 = 0;
  v58 = 0;
  v56 = v30;
  v59 = 0;
  v60 = 7103860;
  v61 = 0xE300000000000000;
  v62 = v26;
  v63 = v28;
  v66 = 0;
  v64 = v30;
LABEL_24:
  v65 = 0;
  v67 = 0;
  sub_38910(&v52, v51);
  result = sub_3CAB8(&v60);
  v44 = v59;
  v46 = v57;
  v45 = v58;
  v20 = v55;
  v47 = v56;
  v7 = v53;
  v19 = v54;
  v6 = v52;
LABEL_28:
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v19;
  *(a3 + 24) = v20;
  *(a3 + 32) = v47;
  *(a3 + 40) = v46;
  *(a3 + 48) = v45;
  *(a3 + 56) = v44;
  return result;
}

unint64_t sub_E88C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_129718, &qword_F52D8);
    v3 = sub_F110C();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[4];
      v20 = v4[3];
      v21 = v6;
      v7 = v4[2];
      v18 = v4[1];
      v19 = v7;
      v17 = *v4;
      v8 = v21;
      v22 = v17;
      v23 = v18;
      v24[0] = v7;
      *(v24 + 9) = *(v4 + 41);
      sub_37380(&v17, &v16, &qword_12ABC0, &qword_F7CA8);
      result = sub_E759C(&v22);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + (result << 6));
      v12 = v23;
      *v11 = v22;
      v11[1] = v12;
      v11[2] = v24[0];
      *(v11 + 41) = *(v24 + 9);
      *(v3[7] + 16 * result) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_11;
      }

      v3[2] = v15;
      if (!i)
      {

        return v3;
      }

      v4 += 5;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_E8A30(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_F08BC();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_F096C();
}

void sub_E8AE0(uint64_t a1, uint64_t a2, unint64_t a3, void **a4)
{
  v86 = *(a1 + 16);
  if (!v86)
  {
    return;
  }

  v4 = 0;
  v84 = a1 + 32;
  while (2)
  {
    v88 = v4;
    v11 = (v84 + 32 * v4);
    v12 = *v11;
    v13 = v11[2];
    v14 = v11[3];
    v15 = v11[1] >> 14;

    v16 = _swiftEmptyArrayStorage;
    if (v15 == v12 >> 14)
    {
LABEL_37:
      v51 = v16[2];
      if (!v51)
      {
        break;
      }

      goto LABEL_38;
    }

    v17 = v12;
    v87 = _swiftEmptyArrayStorage;
    do
    {
      v18 = v17 >> 14;
      if (v17 >> 14 == v15)
      {
        break;
      }

      while (1)
      {
        while (sub_F0E2C() != 61 || v19 != 0xE100000000000000)
        {
          v20 = sub_F122C();

          if (v20)
          {
            goto LABEL_14;
          }

          v18 = sub_F0DFC() >> 14;
          if (v18 == v15)
          {
            goto LABEL_23;
          }
        }

LABEL_14:
        if (v17 >> 14 != v18)
        {
          break;
        }

        v17 = sub_F0DFC();
        v18 = v17 >> 14;
        if (v17 >> 14 == v15)
        {
          goto LABEL_23;
        }
      }

      if (v18 < v17 >> 14)
      {
        goto LABEL_64;
      }

      v83 = sub_F0E3C();
      v79 = v22;
      v80 = v21;
      v24 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_D8B54(0, *(v87 + 2) + 1, 1, v87);
      }

      v26 = *(v87 + 2);
      v25 = *(v87 + 3);
      if (v26 >= v25 >> 1)
      {
        v87 = sub_D8B54((v25 > 1), v26 + 1, 1, v87);
      }

      *(v87 + 2) = v26 + 1;
      v27 = &v87[32 * v26];
      *(v27 + 4) = v83;
      *(v27 + 5) = v80;
      *(v27 + 6) = v24;
      *(v27 + 7) = v79;
      v17 = sub_F0DFC();
    }

    while (*(v87 + 2) != 2);
LABEL_23:
    if (v17 >> 14 != v15)
    {
      if (v15 < v17 >> 14)
      {
        goto LABEL_62;
      }

      v30 = sub_F0E3C();
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v29 = v87;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_D8B54(0, *(v87 + 2) + 1, 1, v87);
      }

      v38 = *(v29 + 2);
      v37 = *(v29 + 3);
      v28 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v29 = sub_D8B54((v37 > 1), v38 + 1, 1, v29);
      }

      *(v29 + 2) = v28;
      v39 = &v29[32 * v38];
      *(v39 + 4) = v30;
      *(v39 + 5) = v32;
      *(v39 + 6) = v34;
      *(v39 + 7) = v36;
LABEL_32:
      v89 = _swiftEmptyArrayStorage;
      sub_6EB68(0, v28, 0);
      v16 = v89;
      v40 = (v29 + 56);
      do
      {
        v41 = *(v40 - 3);
        v42 = *(v40 - 2);
        v43 = *(v40 - 1);
        v44 = *v40;

        v45 = sub_F088C();
        v47 = v46;

        v89 = v16;
        v49 = v16[2];
        v48 = v16[3];
        if (v49 >= v48 >> 1)
        {
          sub_6EB68((v48 > 1), v49 + 1, 1);
          v16 = v89;
        }

        v16[2] = v49 + 1;
        v50 = &v16[2 * v49];
        v50[4] = v45;
        v50[5] = v47;
        v40 += 4;
        --v28;
      }

      while (v28);

      goto LABEL_37;
    }

    v28 = *(v87 + 2);
    if (v28)
    {
      v29 = v87;
      goto LABEL_32;
    }

    v16 = _swiftEmptyArrayStorage;
    v51 = _swiftEmptyArrayStorage[2];
    if (v51)
    {
LABEL_38:
      v52 = v16[4];
      v53 = v16[5];
      if (v51 == 1)
      {
        v54 = 0;
        v55 = 0;
      }

      else
      {
        v54 = v16[6];
        v55 = v16[7];
      }

      swift_bridgeObjectRetain_n();

      v56._rawValue = &off_11F6B0;
      v90._countAndFlagsBits = v52;
      v90._object = v53;
      v57 = sub_F112C(v56, v90);

      if (v57 > 4)
      {

        if (qword_128F38 != -1)
        {
          swift_once();
        }

        v69 = sub_F06CC();
        sub_3C96C(v69, static Logger.rcs);

        v70 = sub_F06AC();
        v71 = sub_F0CEC();

        if (os_log_type_enabled(v70, v71))
        {
          v5 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *v5 = 136315650;
          v6 = sub_F088C();
          v8 = v7;

          v9 = sub_3E850(v6, v8, &v89);

          *(v5 + 4) = v9;
          *(v5 + 12) = 2080;
          *(v5 + 14) = sub_3E850(a2, a3, &v89);
          *(v5 + 22) = 2080;
          v10 = sub_3E850(v52, v53, &v89);

          *(v5 + 24) = v10;
          _os_log_impl(&dword_0, v70, v71, "Skipping path component %s in RCS URI %s: unknown part %s", v5, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
        }

        goto LABEL_4;
      }

      v58 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = *a4;
      v60 = v89;
      v61 = sub_335DC(v57);
      v63 = v60[2];
      v64 = (v62 & 1) == 0;
      v65 = __OFADD__(v63, v64);
      v66 = v63 + v64;
      if (v65)
      {
        goto LABEL_61;
      }

      v67 = v62;
      if (v60[3] < v66)
      {
        sub_BAEA4(v66, isUniquelyReferenced_nonNull_native);
        v61 = sub_335DC(v57);
        if ((v67 & 1) != (v68 & 1))
        {
          goto LABEL_65;
        }

LABEL_51:
        v72 = v89;
        if ((v67 & 1) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_52;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_51;
      }

      v75 = v61;
      sub_BCCA4();
      v61 = v75;
      v72 = v89;
      if ((v67 & 1) == 0)
      {
LABEL_56:
        v72[(v61 >> 6) + 8] |= 1 << v61;
        *(v72[6] + v61) = v57;
        v76 = (v72[7] + 16 * v61);
        *v76 = v54;
        v76[1] = v55;
        v77 = v72[2];
        v65 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (v65)
        {
          goto LABEL_63;
        }

        v72[2] = v78;
        goto LABEL_58;
      }

LABEL_52:
      v73 = (v72[7] + 16 * v61);
      v74 = v73[1];
      *v73 = v54;
      v73[1] = v55;

LABEL_58:
      *a4 = v72;
LABEL_4:
      v4 = v88 + 1;
      if (v88 + 1 == v86)
      {
        return;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  sub_F126C();
  __break(1u);
}

unint64_t sub_E9280(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_E92AC()
{
  v1 = *(v0 + 40);
  sub_F12FC();
  sub_F089C();
  v2 = sub_F132C();

  return sub_E9280(v2);
}

unint64_t sub_E9318(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_129708, &qword_F52B8);
    v3 = sub_F110C();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_E92AC();
      if (v8)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v9 = (*(v3 + 56) + 16 * result);
      *v9 = v6;
      v9[1] = v5;
      v10 = *(v3 + 16);
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v12;
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

unint64_t sub_E9400(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_129700, &qword_F52B0);
    v3 = sub_F110C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_51FEC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_E9504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_1296F8, &unk_F52A0);
    v3 = sub_F110C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_51FEC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void *sub_E9608(uint64_t a1)
{
  v2 = sub_388C8(&qword_12ABB8, &qword_F7CA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v24 - v5);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_388C8(&qword_1296E8, &qword_F5298);
  v8 = sub_F110C();
  v9 = *(v2 + 48);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = *(v3 + 72);

  sub_37380(a1 + v10, v6, &qword_12ABB8, &qword_F7CA0);
  v12 = v6[1];
  v24 = *v6;
  v25 = v12;
  v26[0] = v6[2];
  *(v26 + 9) = *(v6 + 41);
  v13 = sub_E759C(&v24);
  if (v14)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v8;
  }

  v15 = v13;
  v16 = *(*(type metadata accessor for TypingIndicator() - 8) + 72);
  v17 = a1 + v11 + v10;
  while (1)
  {
    *(v8 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
    memmove((v8[6] + (v15 << 6)), v6, 0x39uLL);
    result = sub_BDEA0(v6 + v9, v8[7] + v16 * v15);
    v19 = v8[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      break;
    }

    v8[2] = v21;
    if (!--v7)
    {
      goto LABEL_8;
    }

    sub_37380(v17, v6, &qword_12ABB8, &qword_F7CA0);
    v22 = v6[1];
    v24 = *v6;
    v25 = v22;
    v26[0] = v6[2];
    *(v26 + 9) = *(v6 + 41);
    v15 = sub_E759C(&v24);
    v17 += v11;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7CoreRCS9RCSHandleV9AttributeO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_11F960;
  v6._object = a2;
  v4 = sub_F112C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_E9894()
{
  result = qword_12ABA0;
  if (!qword_12ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12ABA0);
  }

  return result;
}

unint64_t sub_E98EC()
{
  result = qword_12ABA8;
  if (!qword_12ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12ABA8);
  }

  return result;
}

unint64_t sub_E9944()
{
  result = qword_12ABB0;
  if (!qword_12ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12ABB0);
  }

  return result;
}

uint64_t sub_E999C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_E99E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_E9A70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_E9AB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_E9BF4()
{
  result = qword_129528;
  if (!qword_129528)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129528);
  }

  return result;
}

uint64_t IMDChatRCSGroupSnapshot.originalGroupID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IMDChatRCSGroupSnapshot.originalGroupID.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t IMDChatRCSGroupSnapshot.properties.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t IMDChatRCSGroupSnapshot.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

void *IMDChatRCSGroupSnapshot.__allocating_init(originalGroupID:properties:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = 0;
  swift_beginAccess();
  v6[2] = a1;
  v6[3] = a2;
  swift_beginAccess();
  v6[4] = a3;
  return v6;
}

void *IMDChatRCSGroupSnapshot.init(originalGroupID:properties:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = 0;
  swift_beginAccess();
  v3[2] = a1;
  v3[3] = a2;
  swift_beginAccess();
  v3[4] = a3;
  return v3;
}

Swift::Bool __swiftcall IMDChatRCSGroupSnapshot.updateProperties(_:)(Swift::OpaquePointer_optional a1)
{
  if (!a1.value._rawValue)
  {
    goto LABEL_52;
  }

  v2 = v1;
  rawValue = a1.value._rawValue;
  v4 = a1.value._rawValue + 64;
  v5 = 1 << *(a1.value._rawValue + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1.value._rawValue + 8);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_18:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v10 << 6);
    sub_54ED8(rawValue[6] + 40 * v14, &v53);
    sub_3FE38(rawValue[7] + 32 * v14, v52);
    v56 = v53;
    v57 = v54;
    *&v58 = v55;
    sub_54F88(v52, (&v58 + 8));
LABEL_19:
    v63[0] = v58;
    v63[1] = v59;
    v64 = v60;
    v61 = v56;
    v62 = v57;
    if (!*(&v57 + 1))
    {

      return 1;
    }

    v56 = v61;
    v57 = v62;
    *&v58 = *&v63[0];
    sub_54F88((v63 + 8), v52);
    sub_3FE38(v52, &v53);
    sub_37310(0, &qword_12AD08, NSNull_ptr);
    if (swift_dynamicCast())
    {

      swift_beginAccess();
      if (!*(v2 + 32))
      {
        goto LABEL_50;
      }

      v15 = sub_51FA8(&v56);
      if (v16)
      {
        v17 = v15;
        v18 = *(v2 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = *(v2 + 32);
        *&v49[0] = v20;
        *(v2 + 32) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_76F14();
          v20 = *&v49[0];
        }

        sub_54F34(*(v20 + 48) + 40 * v17);
        sub_54F88((*(v20 + 56) + 32 * v17), &v53);
        sub_7656C(v17, v20);
        v21 = *(v2 + 32);
        *(v2 + 32) = v20;
      }

      else
      {
        v53 = 0u;
        v54 = 0u;
      }

      sub_372B0(&v53, &unk_127FB0, &qword_F2F40);
    }

    else
    {
      sub_54ED8(&v56, &v53);
      sub_3FE38(v52, &v50);
      swift_beginAccess();
      if (!*(v2 + 32))
      {
        goto LABEL_51;
      }

      if (v51)
      {
        sub_54F88(&v50, v49);
        v22 = *(v2 + 32);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v24 = *(v2 + 32);
        *(v2 + 32) = 0x8000000000000000;
        v25 = sub_51FA8(&v53);
        v27 = v24[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          goto LABEL_48;
        }

        v31 = v26;
        if (v24[3] >= v30)
        {
          if (v23)
          {
            goto LABEL_38;
          }

          v43 = v25;
          sub_76F14();
          v25 = v43;
          v41 = v24;
          if ((v31 & 1) == 0)
          {
            goto LABEL_43;
          }

LABEL_39:
          v42 = (v41[7] + 32 * v25);
          sub_1EDC(v42);
          sub_54F88(v49, v42);
          sub_54F34(&v53);
        }

        else
        {
          sub_76100(v30, v23);
          v25 = sub_51FA8(&v53);
          if ((v31 & 1) != (v32 & 1))
          {
            goto LABEL_53;
          }

LABEL_38:
          v41 = v24;
          if (v31)
          {
            goto LABEL_39;
          }

LABEL_43:
          v41[(v25 >> 6) + 8] |= 1 << v25;
          v44 = v25;
          sub_54ED8(&v53, v41[6] + 40 * v25);
          sub_54F88(v49, (v41[7] + 32 * v44));
          sub_54F34(&v53);
          v45 = v41[2];
          v29 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v29)
          {
            goto LABEL_49;
          }

          v41[2] = v46;
        }

        v47 = *(v2 + 32);
        *(v2 + 32) = v41;

        goto LABEL_7;
      }

      sub_372B0(&v50, &unk_127FB0, &qword_F2F40);
      v33 = *(v2 + 32);
      v34 = sub_51FA8(&v53);
      if (v35)
      {
        v36 = v34;
        v37 = *(v2 + 32);
        v38 = swift_isUniquelyReferenced_nonNull_native();
        v39 = *(v2 + 32);
        *(v2 + 32) = 0x8000000000000000;
        if (!v38)
        {
          sub_76F14();
        }

        sub_54F34(*(v39 + 48) + 40 * v36);
        sub_54F88((*(v39 + 56) + 32 * v36), v49);
        sub_7656C(v36, v39);
        sub_54F34(&v53);
        v40 = *(v2 + 32);
        *(v2 + 32) = v39;
      }

      else
      {
        sub_54F34(&v53);
        memset(v49, 0, sizeof(v49));
      }

      sub_372B0(v49, &unk_127FB0, &qword_F2F40);
    }

LABEL_7:
    swift_endAccess();
    sub_1EDC(v52);
    sub_54F34(&v56);
  }

  if (v8 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      v7 = 0;
      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      v9 = v12;
      v56 = 0u;
      v57 = 0u;
      goto LABEL_19;
    }

    v7 = *&v4[8 * v10];
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_F126C();
  __break(1u);
  return result;
}

uint64_t IMDChatRCSGroupSnapshot.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t IMDChatRCSGroupSnapshot.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_EA4C4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_EA514()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
}

uint64_t sub_EA558(Swift::OpaquePointer_optional a1)
{
  v2 = *v1;
  IMDChatRCSGroupSnapshot.updateProperties(_:)(a1);
  return 1;
}

void static IMDChatRCSGroupIdentity.encodeGroupID(_:)(uint64_t a1, unint64_t a2)
{

  v4 = sub_EA620(a1, a2);
  v6 = v5;
  v7 = sub_F024C();
  sub_5F048(v4, v6);
  v8 = [v7 __imHexString];

  if (v8)
  {
    sub_F07EC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_EA620(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_388C8(&qword_12AE10, &qword_F7E08);
  if (swift_dynamicCast())
  {
    sub_3928(__src, &v41);
    sub_373E8(&v41, v42);
    sub_F013C();
    __src[0] = v40;
    sub_1EDC(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_372B0(__src, qword_12AE18, &unk_F7E10);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_F0FDC();
  }

  sub_EDA70(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_EE2D8(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_EDB38(sub_34398);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_F022C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_EE090(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_F08DC();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_F090C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_F0FDC();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_EE090(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_F08EC();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_F023C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_F023C();
    sub_66124(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_66124(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_660D0(*&__src[0], *(&__src[0] + 1));

  sub_5F048(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_EAB88()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_373E8(v0, v1);
  v3 = (*(v2 + 24))(v1, v2);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  *&v9 = 0xD000000000000017;
  *(&v9 + 1) = 0x8000000000100EB0;
  sub_F0F3C();
  if (!*(v4 + 16) || (v5 = sub_51FA8(v8), (v6 & 1) == 0))
  {

    sub_54F34(v8);
LABEL_8:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_9;
  }

  sub_3FE38(*(v4 + 56) + 32 * v5, &v9);
  sub_54F34(v8);

  if (!*(&v10 + 1))
  {
LABEL_9:
    sub_372B0(&v9, &unk_127FB0, &qword_F2F40);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v8[0];
  }

  return 0;
}

uint64_t sub_EACC4()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_373E8(v0, v1);
  v3 = (*(v2 + 24))(v1, v2);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  *&v9 = 0x70756F7247534352;
  *(&v9 + 1) = 0xEB00000000495255;
  sub_F0F3C();
  if (!*(v4 + 16) || (v5 = sub_51FA8(&v8), (v6 & 1) == 0))
  {

    sub_54F34(&v8);
LABEL_10:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_11;
  }

  sub_3FE38(*(v4 + 56) + 32 * v5, &v9);
  sub_54F34(&v8);

  if (!*(&v10 + 1))
  {
LABEL_11:
    sub_372B0(&v9, &unk_127FB0, &qword_F2F40);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_EAE10(uint64_t a1, uint64_t a2)
{
  sub_1F28(v2, v13);
  v5 = v14;
  v6 = v15;
  sub_373E8(v13, v14);
  sub_388C8(&qword_128508, "ȷ");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_F2C60;
  *&v11 = 0x70756F7247534352;
  *(&v11 + 1) = 0xEB00000000495255;
  sub_F0F3C();
  if (a2)
  {
    *(&v12 + 1) = &type metadata for String;
    *&v11 = a1;
    *(&v11 + 1) = a2;
    sub_54F88(&v11, (inited + 72));
  }

  else
  {
    v12 = 0u;
    v8 = [objc_allocWithZone(NSNull) init];
    *(inited + 96) = sub_37310(0, &qword_12AD08, NSNull_ptr);
    *(inited + 72) = v8;
    if (*(&v12 + 1))
    {
      sub_372B0(&v11, &unk_127FB0, &qword_F2F40);
    }
  }

  v9 = sub_80F34(inited);
  swift_setDeallocating();
  sub_372B0(inited + 32, &qword_128510, &unk_F36A0);
  (*(v6 + 32))(v9, v5, v6);

  return sub_1EDC(v13);
}

void sub_EAFBC(uint64_t a1, unint64_t a2)
{
  sub_1F28(v2, v14);
  v5 = v15;
  v6 = v16;
  sub_373E8(v14, v15);
  if (!a2)
  {
    v13 = 0;
    goto LABEL_5;
  }

  v7 = sub_EA620(a1, a2);
  v9 = v8;
  v10 = sub_F024C();
  sub_5F048(v7, v9);
  v11 = [v10 __imHexString];

  if (v11)
  {
    a1 = sub_F07EC();
    v13 = v12;

LABEL_5:
    (*(v6 + 16))(a1, v13, v5, v6);

    sub_1EDC(v14);
    return;
  }

  __break(1u);
}

uint64_t IMDChatRCSGroupIdentity.uri.getter()
{
  v1 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v29[-v4 - 8];
  v6 = sub_EAB88();
  if (v6 == 1)
  {
    return sub_EACC4();
  }

  if (v6)
  {
    if (qword_128F50 != -1)
    {
      swift_once();
    }

    v23 = sub_F06CC();
    sub_3C96C(v23, static Logger.groups);
    sub_85608(v0, v29);
    v24 = sub_F06AC();
    v25 = sub_F0CEC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      v27 = sub_EAB88();
      sub_39BC4(v29);
      *(v26 + 4) = v27;
      _os_log_impl(&dword_0, v24, v25, "Unknown identity version %ld, unable to generate raw group focus URI.", v26, 0xCu);
    }

    else
    {
      sub_39BC4(v29);
    }

    return 0;
  }

  if (qword_128FA8 != -1)
  {
    swift_once();
  }

  v7 = sub_3C96C(v1, qword_12A2B8);
  (*(v2 + 16))(v5, v7, v1);
  sub_F044C();
  (*(v2 + 8))(v5, v1);
  if (v29[0] != 1)
  {
    return 0;
  }

  v8 = v0[3];
  v9 = v0[4];
  sub_373E8(v0, v8);
  result = (*(v9 + 8))(v8, v9);
  if (!v11)
  {
    return result;
  }

  v12 = objc_opt_self();
  v13 = sub_F07BC();
  v14 = [v12 __imDataWithHexString:v13];

  if (!v14)
  {

    return 0;
  }

  v15 = sub_F025C();
  v17 = v16;

  v18 = sub_F081C();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  sub_F080C();
  v20 = sub_F07FC();
  v22 = v21;
  sub_5F048(v15, v17);

  if (v22)
  {
    return v20;
  }

  else
  {
    return 0;
  }
}

void IMDChatRCSGroupIdentity.uri.setter(uint64_t a1, unint64_t a2)
{
  v5 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8 - 8];
  v10 = sub_EAB88();
  if (v10 == 1)
  {

    sub_EAE10(a1, a2);
  }

  else
  {
    if (!v10)
    {
      if (qword_128FA8 != -1)
      {
        swift_once();
      }

      v11 = sub_3C96C(v5, qword_12A2B8);
      (*(v6 + 16))(v9, v11, v5);
      sub_F044C();
      (*(v6 + 8))(v9, v5);
      if (v21[0] == 1)
      {
        sub_EAFBC(a1, a2);
        return;
      }

      goto LABEL_20;
    }

    if (qword_128F50 != -1)
    {
      swift_once();
    }

    v12 = sub_F06CC();
    sub_3C96C(v12, static Logger.groups);
    sub_85608(v2, v21);

    v13 = sub_F06AC();
    v14 = sub_F0CEC();

    if (!os_log_type_enabled(v13, v14))
    {
      sub_39BC4(v21);

LABEL_20:

      return;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315394;
    if (a2)
    {
      v17 = a1;
    }

    else
    {
      v17 = 0x3E6C696E3CLL;
    }

    if (!a2)
    {
      a2 = 0xE500000000000000;
    }

    v18 = sub_3E850(v17, a2, &v20);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2048;
    v19 = sub_EAB88();
    sub_39BC4(v21);
    *(v15 + 14) = v19;
    _os_log_impl(&dword_0, v13, v14, "Discarding newValue %s for rawURI, invalid version %ld", v15, 0x16u);
    sub_1EDC(v16);
  }
}

uint64_t (*IMDChatRCSGroupIdentity.uri.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = IMDChatRCSGroupIdentity.uri.getter();
  a1[1] = v3;
  return sub_342E4;
}

uint64_t IMDChatRCSGroupIdentity.isValid.getter()
{
  v1 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v34 - v4;
  v6 = sub_EAB88();
  if (v6 == 1)
  {
    IMDChatRCSGroupIdentity.uri.getter();
    if (v9)
    {

      IMDChatRCSGroupIdentity.conversationID.getter();
      if (v10)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    if (!v6)
    {
      if (qword_128FA8 != -1)
      {
        swift_once();
      }

      v7 = sub_3C96C(v1, qword_12A2B8);
      (*(v2 + 16))(v5, v7, v1);
      sub_F044C();
      (*(v2 + 8))(v5, v1);
      if (v39[0] != 1)
      {
        return 0;
      }

      IMDChatRCSGroupIdentity.uri.getter();
      if (!v8)
      {
        return 0;
      }

LABEL_10:

      return 1;
    }

    if (qword_128F50 != -1)
    {
      swift_once();
    }

    v12 = sub_F06CC();
    sub_3C96C(v12, static Logger.groups);
    sub_85608(v0, v39);
    sub_85608(v0, v36);
    v13 = sub_F06AC();
    v14 = sub_F0CEC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v16;
      *v15 = 134218242;
      v17 = sub_EAB88();
      sub_39BC4(v39);
      *(v15 + 4) = v17;
      *(v15 + 12) = 2080;
      v18 = v37;
      v19 = v38;
      sub_373E8(v36, v37);
      (*(v19 + 8))(v18, v19);
      if (v20)
      {
        v21 = objc_opt_self();
        v22 = sub_F07BC();
        v23 = [v21 __imDataWithHexString:v22];

        if (v23)
        {
          v24 = sub_F025C();
          v26 = v25;

          v27 = sub_F081C();
          v28 = *(*(v27 - 8) + 64);
          __chkstk_darwin(v27 - 8);
          sub_F080C();
          v29 = sub_F07FC();
          v31 = v30;
          sub_5F048(v24, v26);

          if (v31)
          {
            sub_39BC4(v36);
            v32 = v29;
LABEL_21:
            v33 = sub_3E850(v32, v31, &v35);

            *(v15 + 14) = v33;
            _os_log_impl(&dword_0, v13, v14, "Invalid version %ld, groupID %s is not valid", v15, 0x16u);
            sub_1EDC(v16);

            return 0;
          }
        }

        else
        {
        }
      }

      sub_39BC4(v36);

      v31 = 0xE500000000000000;
      v32 = 0x3E6C696E3CLL;
      goto LABEL_21;
    }

    sub_39BC4(v39);

    sub_39BC4(v36);
  }

  return 0;
}

uint64_t IMDChatRCSGroupIdentity.conversationID.getter()
{
  v1 = v0;
  if (sub_EAB88() != 1)
  {
    return 0;
  }

  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isMissingMessagesEnabled];

  v4 = v1[3];
  v5 = v1[4];
  sub_373E8(v1, v4);
  if (!v3)
  {
    result = (*(v5 + 8))(v4, v5);
    if (!v21)
    {
      return result;
    }

    v22 = objc_opt_self();
    v23 = sub_F07BC();
    v24 = [v22 __imDataWithHexString:v23];

    if (v24)
    {
      v25 = sub_F025C();
      v27 = v26;

      v28 = sub_F081C();
      v29 = *(*(v28 - 8) + 64);
      __chkstk_darwin(v28 - 8);
      sub_F080C();
      v30 = sub_F07FC();
      v32 = v31;
      sub_5F048(v25, v27);
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  v6 = sub_F07EC();
  (*(v5 + 40))(v6);
  v8 = v7;

  if (v8)
  {
    v9 = objc_opt_self();

    v10 = sub_F07BC();
    v11 = [v9 __imDataWithHexString:v10];

    if (v11)
    {
      v12 = sub_F025C();
      v14 = v13;

      v15 = sub_F081C();
      v16 = *(*(v15 - 8) + 64);
      __chkstk_darwin(v15 - 8);
      sub_F080C();
      v17 = sub_F07FC();
      v19 = v18;
      sub_5F048(v12, v14);
      swift_bridgeObjectRelease_n();
      if (v19)
      {
        return v17;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  if (qword_128F50 != -1)
  {
    swift_once();
  }

  v33 = sub_F06CC();
  sub_3C96C(v33, static Logger.groups);
  sub_85608(v1, v68);
  v34 = sub_F06AC();
  v35 = sub_F0CEC();
  if (!os_log_type_enabled(v34, v35))
  {

    sub_39BC4(v68);
    goto LABEL_22;
  }

  v36 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  v67 = v37;
  *v36 = 136315138;
  v38 = v69;
  v39 = v70;
  sub_373E8(v68, v69);
  (*(v39 + 8))(v38, v39);
  if (!v40)
  {
    goto LABEL_20;
  }

  v41 = objc_opt_self();
  v42 = sub_F07BC();
  v43 = [v41 __imDataWithHexString:v42];

  if (!v43)
  {

    goto LABEL_20;
  }

  v44 = sub_F025C();
  v46 = v45;

  v47 = sub_F081C();
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47 - 8);
  sub_F080C();
  v66 = sub_F07FC();
  v50 = v49;
  sub_5F048(v44, v46);

  if (!v50)
  {
LABEL_20:
    sub_39BC4(v68);

    v50 = 0xE500000000000000;
    v51 = 0x3E6C696E3CLL;
    goto LABEL_21;
  }

  sub_39BC4(v68);
  v51 = v66;
LABEL_21:
  v52 = sub_3E850(v51, v50, &v67);

  *(v36 + 4) = v52;
  _os_log_impl(&dword_0, v34, v35, "Could not find latest RCS conversation ID for groupID %s", v36, 0xCu);
  sub_1EDC(v37);

LABEL_22:
  v53 = v1[3];
  v54 = v1[4];
  sub_373E8(v1, v53);
  v55 = (*(v54 + 8))(v53, v54);
  if (!v56)
  {

    return v55;
  }

  v57 = objc_opt_self();
  v58 = sub_F07BC();
  v59 = [v57 __imDataWithHexString:v58];

  if (!v59)
  {

LABEL_30:

    return 0;
  }

  v60 = sub_F025C();
  v62 = v61;

  v63 = sub_F081C();
  v64 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63 - 8);
  sub_F080C();
  v30 = sub_F07FC();
  v32 = v65;
  sub_5F048(v60, v62);

LABEL_25:

  if (v32)
  {
    return v30;
  }

  else
  {
    return 0;
  }
}

void IMDChatRCSGroupIdentity.conversationID.setter(uint64_t a1, unint64_t a2)
{
  if (sub_EAB88() == 1)
  {
    v5 = [objc_opt_self() sharedFeatureFlags];
    v6 = [v5 isMissingMessagesEnabled];

    if (v6)
    {
      sub_1F28(v2, v18);
      v7 = v19;
      v8 = v20;
      sub_373E8(v18, v19);
      if (a2)
      {
        swift_bridgeObjectRetain_n();
        v9 = sub_EA620(a1, a2);
        v11 = v10;
        v12 = sub_F024C();
        sub_5F048(v9, v11);
        v13 = [v12 __imHexString];

        if (!v13)
        {
          __break(1u);
          return;
        }

        a1 = sub_F07EC();
        v15 = v14;
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v15 = 0;
      }

      v16 = sub_F07EC();
      (*(v8 + 48))(a1, v15, v16, v17, 0, v7, v8);

      sub_1EDC(v18);
      return;
    }

    sub_EAFBC(a1, a2);
  }

  else
  {
  }
}

uint64_t (*IMDChatRCSGroupIdentity.conversationID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = IMDChatRCSGroupIdentity.conversationID.getter();
  a1[1] = v3;
  return sub_342FC;
}

id IMDChatRCSGroupIdentity.encrypted.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_373E8(v0, v1);
  v3 = (*(v2 + 24))(v1, v2);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  sub_F07EC();
  sub_F0F3C();
  if (!*(v4 + 16) || (v5 = sub_51FA8(v10), (v6 & 1) == 0))
  {

    sub_54F34(v10);
LABEL_8:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_9;
  }

  sub_3FE38(*(v4 + 56) + 32 * v5, &v11);
  sub_54F34(v10);

  if (!*(&v12 + 1))
  {
LABEL_9:
    sub_372B0(&v11, &unk_127FB0, &qword_F2F40);
    return 0;
  }

  sub_37310(0, &qword_128050, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v7 = v10[0];
    v8 = [v10[0] BOOLValue];

    return v8;
  }

  return 0;
}

uint64_t IMDChatRCSGroupIdentity.init(chat:conversationID:groupURI:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  sub_1F28(a1, a6);
  if (a3)
  {
    v11._countAndFlagsBits = a2;
    v11._object = a3;
    v12._countAndFlagsBits = a4;
    v12._object = a5;
    IMDChatRCSGroupIdentity.migrateToLatest(conversationID:groupURI:)(v11, v12);
  }

  else
  {
    v13._countAndFlagsBits = a4;
    v13._object = a5;
    IMDChatRCSGroupIdentity.migrateToLegacy(groupURI:)(v13);
  }

  return sub_1EDC(a1);
}

Swift::Void __swiftcall IMDChatRCSGroupIdentity.migrateToLatest(conversationID:groupURI:)(Swift::String conversationID, Swift::String groupURI)
{
  object = groupURI._object;
  countAndFlagsBits = groupURI._countAndFlagsBits;
  v5 = conversationID._object;
  v6 = conversationID._countAndFlagsBits;
  if (sub_EAB88() != 1)
  {
    goto LABEL_14;
  }

  v7 = IMDChatRCSGroupIdentity.conversationID.getter();
  if (!v8)
  {
    goto LABEL_14;
  }

  if (v7 == v6 && v8 == v5)
  {
  }

  else
  {
    v9 = sub_F122C();

    if ((v9 & 1) == 0)
    {
LABEL_14:
      v13 = v2[3];
      v14 = v2[4];
      sub_373E8(v2, v13);
      sub_388C8(&qword_128508, "ȷ");
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_F2C60;
      sub_F0F3C();
      *(inited + 96) = &type metadata for Int;
      *(inited + 72) = 1;
      v16 = sub_80F34(inited);
      swift_setDeallocating();
      sub_372B0(inited + 32, &qword_128510, &unk_F36A0);
      (*(v14 + 32))(v16, v13, v14);

      IMDChatRCSGroupIdentity.conversationID.setter(v6, v5);

      IMDChatRCSGroupIdentity.uri.setter(countAndFlagsBits, object);
      v17 = v2[3];
      v18 = v2[4];
      sub_373E8(v2, v17);
      (*(v18 + 56))(v17, v18);
      return;
    }
  }

  v10 = IMDChatRCSGroupIdentity.uri.getter();
  if (!v11)
  {
    goto LABEL_14;
  }

  if (v10 != countAndFlagsBits || v11 != object)
  {
    v12 = sub_F122C();

    if (v12)
    {
      return;
    }

    goto LABEL_14;
  }
}

Swift::Void __swiftcall IMDChatRCSGroupIdentity.migrateToLegacy(groupURI:)(Swift::String groupURI)
{
  object = groupURI._object;
  countAndFlagsBits = groupURI._countAndFlagsBits;
  if (sub_EAB88())
  {
    goto LABEL_4;
  }

  IMDChatRCSGroupIdentity.conversationID.getter();
  if (v4)
  {

LABEL_4:
    v5 = v1[3];
    v6 = v1[4];
    sub_373E8(v1, v5);
    sub_388C8(&qword_128508, "ȷ");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_F2C60;
    sub_F0F3C();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = 0;
    v8 = sub_80F34(inited);
    swift_setDeallocating();
    sub_372B0(inited + 32, &qword_128510, &unk_F36A0);
    (*(v6 + 32))(v8, v5, v6);

    IMDChatRCSGroupIdentity.uri.setter(countAndFlagsBits, object);
    v9 = v1[3];
    v10 = v1[4];
    sub_373E8(v1, v9);
    (*(v10 + 56))(v9, v10);
    return;
  }

  v11 = IMDChatRCSGroupIdentity.uri.getter();
  if (!v12)
  {
    goto LABEL_4;
  }

  if (v11 == countAndFlagsBits && v12 == object)
  {
  }

  else
  {
    v13 = sub_F122C();

    if ((v13 & 1) == 0)
    {
      goto LABEL_4;
    }
  }
}

Swift::Void __swiftcall IMDChatRCSGroupIdentity.reset()()
{
  IMDChatRCSGroupIdentity.conversationID.setter(0, 0);
  IMDChatRCSGroupIdentity.uri.setter(0, 0);
  v1 = v0[3];
  v2 = v0[4];
  sub_373E8(v0, v1);
  sub_388C8(&qword_128508, "ȷ");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_F2C60;
  sub_F0F3C();
  v4 = [objc_allocWithZone(NSNull) init];
  *(inited + 96) = sub_37310(0, &qword_12AD08, NSNull_ptr);
  *(inited + 72) = v4;
  v5 = sub_80F34(inited);
  swift_setDeallocating();
  sub_372B0(inited + 32, &qword_128510, &unk_F36A0);
  (*(v2 + 32))(v5, v1, v2);

  v6 = v0[3];
  v7 = v0[4];
  sub_373E8(v0, v6);
  (*(v7 + 56))(v6, v7);
}

uint64_t sub_ECE64(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_F0EAC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_F12FC();

      sub_F089C();
      v13 = sub_F132C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_ED014(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = a2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = (result + 1) & ~v4;
  if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
    goto LABEL_34;
  }

  v6 = ~v4;
  v49 = result;
  v45 = v3;
  v43 = (sub_F0EAC() + 1) & ~v4;
  v44 = v6;
  v46 = v2;
  while (2)
  {
    v7 = *(v2 + 40);
    v47 = v5 << 6;
    v48 = v5;
    v8 = (*(v2 + 48) + (v5 << 6));
    v10 = v8[1];
    v9 = v8[2];
    v11 = *v8;
    *&v58[9] = *(v8 + 41);
    v57[1] = v10;
    *v58 = v9;
    v57[0] = v11;
    sub_F12FC();
    sub_38910(v57, v50);
    sub_F089C();
    sub_F089C();
    v12 = *v58;
    v13 = *v58 + 64;
    v14 = 1 << *(*v58 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(*v58 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    v19 = 0;
    while (v16)
    {
LABEL_14:
      v21 = __clz(__rbit64(v16)) | (v19 << 6);
      v22 = *(*(v12 + 48) + v21);
      v23 = (*(v12 + 56) + 16 * v21);
      v25 = *v23;
      v24 = v23[1];
      v16 &= v16 - 1;
      v50[2] = v54;
      v50[3] = v55;
      v51 = v56;
      v50[0] = v52;
      v50[1] = v53;

      sub_F089C();

      if (v24)
      {
        sub_F131C(1u);
        sub_F089C();
      }

      else
      {
        sub_F131C(0);
      }

      result = sub_F132C();
      v18 ^= result;
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v20 >= v17)
      {
        break;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        v19 = v20;
        goto LABEL_14;
      }
    }

    sub_F130C(v18);
    if (*&v58[16])
    {
      sub_F131C(1u);
      sub_F089C();
    }

    else
    {
      sub_F131C(0);
    }

    sub_F130C(v58[24]);
    v26 = sub_F132C();
    result = sub_3CAB8(v57);
    v27 = v26 & v44;
    v28 = v49;
    if (v49 >= v43)
    {
      v29 = v45;
      v2 = v46;
      v30 = v48;
      if (v27 < v43)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v29 = v45;
      v2 = v46;
      v30 = v48;
      if (v27 >= v43)
      {
LABEL_24:
        v31 = *(v2 + 48);
        v32 = (v31 + (v49 << 6));
        v33 = (v31 + v47);
        if (v49 << 6 != v47 || v32 >= v33 + 4)
        {
          v34 = *v33;
          v35 = v33[1];
          v36 = v33[3];
          v32[2] = v33[2];
          v32[3] = v36;
          *v32 = v34;
          v32[1] = v35;
        }

        v37 = *(v2 + 56);
        v38 = (v37 + 16 * v49);
        v39 = (v37 + 16 * v30);
        if (v49 != v30 || v38 >= v39 + 1)
        {
          *v38 = *v39;
          v28 = v30;
        }

        goto LABEL_30;
      }
    }

    if (v49 >= v27)
    {
      goto LABEL_24;
    }

LABEL_30:
    v5 = (v30 + 1) & v44;
    if ((*(v29 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v49 = v28;
      continue;
    }

    break;
  }

  *(v29 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v28) - 1;
LABEL_34:
  v40 = *(v2 + 16);
  v41 = __OFSUB__(v40, 1);
  v42 = v40 - 1;
  if (v41)
  {
LABEL_37:
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v42;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_ED448(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_F0EAC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_F12FC();

      sub_F089C();
      v14 = sub_F132C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_ED5F8(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = a2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = (result + 1) & ~v4;
  if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
    goto LABEL_40;
  }

  v6 = ~v4;
  v49 = result;
  v46 = v3;
  v44 = (sub_F0EAC() + 1) & ~v4;
  v45 = v6;
  v47 = v2;
  while (2)
  {
    v50 = v5;
    v7 = *(v2 + 40);
    v48 = v5 << 6;
    v8 = (*(v2 + 48) + (v5 << 6));
    v10 = v8[1];
    v9 = v8[2];
    v11 = *v8;
    *&v59[9] = *(v8 + 41);
    v58[1] = v10;
    *v59 = v9;
    v58[0] = v11;
    sub_F12FC();
    sub_38910(v58, v51);
    sub_F089C();
    sub_F089C();
    v12 = *v59;
    v13 = *v59 + 64;
    v14 = 1 << *(*v59 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(*v59 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    v19 = 0;
    while (v16)
    {
LABEL_14:
      v21 = __clz(__rbit64(v16)) | (v19 << 6);
      v22 = *(*(v12 + 48) + v21);
      v23 = (*(v12 + 56) + 16 * v21);
      v25 = *v23;
      v24 = v23[1];
      v16 &= v16 - 1;
      v51[2] = v55;
      v51[3] = v56;
      v52 = v57;
      v51[0] = v53;
      v51[1] = v54;

      sub_F089C();

      if (v24)
      {
        sub_F131C(1u);
        sub_F089C();
      }

      else
      {
        sub_F131C(0);
      }

      result = sub_F132C();
      v18 ^= result;
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v20 >= v17)
      {
        break;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        v19 = v20;
        goto LABEL_14;
      }
    }

    sub_F130C(v18);
    if (*&v59[16])
    {
      sub_F131C(1u);
      sub_F089C();
    }

    else
    {
      sub_F131C(0);
    }

    sub_F130C(v59[24]);
    v26 = sub_F132C();
    result = sub_3CAB8(v58);
    v27 = v26 & v45;
    v28 = v49;
    if (v49 >= v44)
    {
      v2 = v47;
      if (v27 < v44)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    v2 = v47;
    if (v27 < v44)
    {
LABEL_23:
      if (v49 < v27)
      {
        goto LABEL_36;
      }
    }

    v29 = *(v2 + 48);
    v30 = (v29 + (v49 << 6));
    v31 = (v29 + v48);
    if (v49 << 6 != v48 || v30 >= v31 + 4)
    {
      v32 = *v31;
      v33 = v31[1];
      v34 = v31[3];
      v30[2] = v31[2];
      v30[3] = v34;
      *v30 = v32;
      v30[1] = v33;
    }

    v35 = *(v2 + 56);
    v36 = *(*(type metadata accessor for TypingIndicator() - 8) + 72);
    v37 = v36 * v49;
    result = v35 + v36 * v49;
    v38 = v36 * v50;
    v39 = v35 + v36 * v50 + v36;
    if (v37 < v38 || result >= v39)
    {
      result = swift_arrayInitWithTakeFrontToBack();
LABEL_35:
      v28 = v50;
      goto LABEL_36;
    }

    v28 = v50;
    if (v37 != v38)
    {
      result = swift_arrayInitWithTakeBackToFront();
      goto LABEL_35;
    }

LABEL_36:
    v5 = (v50 + 1) & v45;
    if ((*(v46 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v49 = v28;
      continue;
    }

    break;
  }

  *(v46 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v28) - 1;
LABEL_40:
  v41 = *(v2 + 16);
  v42 = __OFSUB__(v41, 1);
  v43 = v41 - 1;
  if (v42)
  {
LABEL_43:
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v43;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_EDA70@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_EE220(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_F00EC();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_F009C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_F021C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_EDB38(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_5F048(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      result = a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v3 = v21[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_5F048(v6, v5);
    *v3 = xmmword_F2990;
    sub_5F048(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_F00AC() && __OFSUB__(v6, sub_F00DC()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_F00EC();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_F008C();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_EDFDC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_5F048(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_F2990;
    sub_5F048(0, 0xC000000000000000);
    sub_F01FC();
    result = sub_EDFDC(*(v19 + 2), *(v19 + 3), a1);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v19;
      v3[1] = v10;
      return result;
    }

    *v3 = v19;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v2)
  {
    return v19;
  }

  return result;
}

_BYTE *sub_EDEDC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_EE220(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_EE378(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_EE3F4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_EDF70(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_EDFDC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_F00AC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_F00DC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_F00CC();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_EE090(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_F091C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_F08FC();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_EE10C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_F0FAC();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_EE180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_EE1C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_EE220(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_EE2D8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_F00EC();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_F00BC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_F021C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_EE378(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_F00EC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_F009C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_F021C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_EE3F4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_F00EC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_F009C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t RCSCompatibleMessageTransformer.init(delegate:)()
{
  swift_unknownObjectUnownedInit();

  return swift_unknownObjectRelease();
}

uint64_t RCSCompatibleMessageTransformer.transform(rcsMessage:message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = *(*(sub_388C8(&qword_128F00, &unk_F43F0) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v6 = *(*(sub_388C8(&unk_127FA0, &qword_F34C0) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = type metadata accessor for RCSMessage(0);
  v4[25] = v7;
  v8 = *(v7 - 8);
  v4[26] = v8;
  v9 = *(v8 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_34424, 0, 0);
}

void sub_EE67C(unint64_t a1, id a2, uint64_t a3)
{
  v6 = [a2 replicatedFallbackGUIDs];
  v7 = &selRef__setLocalPath_;
  v37 = a1;
  if (v6)
  {
  }

  else
  {
    v8 = sub_F09EC();
    [a2 setReplicatedFallbackGUIDs:v8];

    swift_beginAccess();
    *(a3 + 16) = 1;
  }

  swift_beginAccess();
  v9 = [a2 replicatedFallbackGUIDs];
  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = v9;
  v38 = v37 + 1;
  v11 = __OFADD__(v37, 1);
  v39 = v11;
  while (1)
  {
    v12 = sub_F09FC();

    v13 = *(v12 + 16);

    if (v39)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v13 >= v38)
    {
      break;
    }

    v14 = v7;
    v15 = sub_F035C();
    v16 = *(v15 - 8);
    v17 = *(v16 + 64);
    __chkstk_darwin(v15);
    v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_F034C();
    v20 = sub_F032C();
    v22 = v21;
    (*(v16 + 8))(v19, v15);
    v23 = [a2 replicatedFallbackGUIDs];
    if (!v23)
    {
      goto LABEL_26;
    }

    v24 = v23;
    v25 = sub_F09FC();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_6E2D8(0, *(v25 + 16) + 1, 1, v25);
    }

    v27 = *(v25 + 16);
    v26 = *(v25 + 24);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_6E2D8((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 16) = v27 + 1;
    v28 = v25 + 16 * v27;
    *(v28 + 32) = v20;
    *(v28 + 40) = v22;
    v29 = sub_F09EC();

    v7 = v14;
    [a2 v14[98]];

    *(a3 + 16) = 1;
    v10 = [a2 replicatedFallbackGUIDs];
    if (!v10)
    {
      goto LABEL_25;
    }
  }

  v30 = [a2 replicatedFallbackGUIDs];
  if (!v30)
  {
    goto LABEL_27;
  }

  v31 = v30;
  v32 = sub_F09FC();

  if ((v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (*(v32 + 16) > v37)
  {
    v33 = v32 + 16 * v37;
    v34 = *(v33 + 32);
    v35 = *(v33 + 40);

    return;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_EE9EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_EEA28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_EEA6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_EEAC0()
{
  result = sub_F07EC();
  static CTLazuliOperationError.errorDomain = result;
  *algn_12FCC8 = v1;
  return result;
}

uint64_t *CTLazuliOperationError.errorDomain.unsafeMutableAddressor()
{
  if (qword_128FB0 != -1)
  {
    swift_once();
  }

  return &static CTLazuliOperationError.errorDomain;
}

uint64_t static CTLazuliOperationError.errorDomain.getter()
{
  if (qword_128FB0 != -1)
  {
    swift_once();
  }

  v0 = static CTLazuliOperationError.errorDomain;

  return v0;
}

id NSError.init(operationError:)(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  if (qword_128FB0 != -1)
  {
    swift_once();
  }

  v3 = sub_F07BC();
  v4 = [a1 value];
  sub_388C8(&qword_1285A0, &unk_F74F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_F2C60;
  *(inited + 32) = sub_F07EC();
  *(inited + 40) = v6;
  [a1 value];
  type metadata accessor for CTLazuliErrorType(0);
  v7 = sub_F085C();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  sub_81270(inited);
  swift_setDeallocating();
  sub_EED44(inited + 32);
  v9 = sub_F075C();

  v10 = [v2 initWithDomain:v3 code:v4 userInfo:v9];

  return v10;
}

uint64_t sub_EED44(uint64_t a1)
{
  v2 = sub_388C8(&qword_1285C0, &qword_F3780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *RCSActor.shared.unsafeMutableAddressor()
{
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  return &static RCSActor.shared;
}

uint64_t sub_EEDFC()
{
  type metadata accessor for RCSActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static RCSActor.shared = v0;
  return result;
}

uint64_t static RCSActor.shared.getter()
{
  if (qword_128FB8 != -1)
  {
    swift_once();
  }
}

uint64_t RCSActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_EEEE8()
{
  result = qword_12AEA0;
  if (!qword_12AEA0)
  {
    type metadata accessor for RCSActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12AEA0);
  }

  return result;
}

uint64_t sub_EEF60(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RCSActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

void *RCSTypingTracker.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  v7[16] = 0;
  v7[17] = sub_E9504(_swiftEmptyArrayStorage);
  v7[15] = a2;
  swift_unknownObjectUnownedInit();
  v8 = sub_F0B1C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;

  sub_3CC0C(0, 0, v6, &unk_F7F50, v9);
  swift_unknownObjectRelease();

  return v7;
}

void *RCSTypingTracker.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  swift_defaultActor_initialize();
  v2[16] = 0;
  v2[17] = sub_E9504(_swiftEmptyArrayStorage);
  v2[15] = a2;
  swift_unknownObjectUnownedInit();
  v8 = sub_F0B1C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;

  sub_3CC0C(0, 0, v7, &unk_F7F58, v9);
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_EF248()
{
  v1 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  v5 = sub_F0B1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F0AFC();
  v10 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AsyncPersistentTimer();
  v11 = swift_allocObject();

  swift_defaultActor_initialize();
  (*(v6 + 16))(v4, v9, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = 0x402E000000000000;
  v12[5] = &unk_F8030;
  v12[6] = v10;

  v13 = sub_C7510(0, 0, v4, &unk_F58C8, v12);

  sub_372B0(v4, &qword_127EB0, &unk_F2B30);
  (*(v6 + 8))(v9, v5);
  *(v11 + 112) = v13;

  v14 = *(v0 + 128);
  *(v0 + 128) = v11;
}

uint64_t RCSTypingTracker.sender(_:finishedTypingInChat:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(*(sub_388C8(&qword_12AAD0, &qword_F7850) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_360E4, v3, 0);
}

uint64_t sub_EF560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = *(*(sub_388C8(&qword_12AAD0, &qword_F7850) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for TypingIndicator();
  v4[18] = v6;
  v7 = *(v6 - 8);
  v4[19] = v7;
  v8 = *(v7 + 64) + 15;
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_36328, v3, 0);
}

uint64_t RCSTypingTracker.sender(_:beganTypingInChat:encryption:subscription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  v13 = *(*(sub_388C8(&qword_12AAD0, &qword_F7850) - 8) + 64) + 15;
  v9[30] = swift_task_alloc();
  v14 = type metadata accessor for TypingIndicator();
  v9[31] = v14;
  v15 = *(v14 - 8);
  v9[32] = v15;
  v16 = *(v15 + 64) + 15;
  v9[33] = swift_task_alloc();
  v17 = swift_task_alloc();
  v9[34] = v17;
  *v17 = v9;
  v17[1] = sub_36858;

  return sub_EF560(a1, a2, a3);
}

uint64_t RCSTypingTracker.deinit()
{
  sub_EFEA4(v0 + 112);
  v1 = *(v0 + 128);

  v2 = *(v0 + 136);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RCSTypingTracker.__deallocating_deinit()
{
  sub_EFEA4(v0 + 112);
  v1 = *(v0 + 128);

  v2 = *(v0 + 136);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_EF830(uint64_t a1, void **a2)
{
  v51 = a2;
  v55 = type metadata accessor for TypingIndicator();
  v59 = *(v55 - 8);
  v3 = *(v59 + 64);
  v4 = __chkstk_darwin(v55);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v53 = &v48 - v7;
  __chkstk_darwin(v6);
  v50 = &v48 - v8;
  v58 = sub_388C8(&unk_12B0F0, &qword_F8048);
  v9 = *(*(v58 - 8) + 64);
  v10 = __chkstk_darwin(v58);
  v52 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v14 = &v48 - v13;
  __chkstk_darwin(v12);
  v16 = (&v48 - v15);
  v57 = &_swiftEmptyDictionarySingleton;
  v64 = &_swiftEmptyDictionarySingleton;
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;

  v23 = 0;
  v56 = result;
  v49 = v14;
  while (v20)
  {
LABEL_11:
    v28 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v29 = v28 | (v23 << 6);
    v30 = *(result + 56);
    v31 = (*(result + 48) + (v29 << 6));
    v33 = v31[1];
    v32 = v31[2];
    v34 = *v31;
    *&v63[9] = *(v31 + 41);
    v62 = v33;
    *v63 = v32;
    v61 = v34;
    v35 = *(v59 + 72);
    v36 = v58;
    sub_BDE3C(v30 + v35 * v29, v16 + *(v58 + 48));
    v37 = v62;
    *v16 = v61;
    v16[1] = v37;
    v16[2] = *v63;
    *(v16 + 41) = *&v63[9];
    sub_EFFBC(v16, v14);
    v38 = &v14[*(v36 + 48)];
    v39 = *(v55 + 28);
    sub_38910(&v61, v60);
    sub_F02AC();
    if (fabs(v40) <= 30.0)
    {
      v46 = v50;
      sub_BDE3C(v38, v50);
      sub_EFFBC(v14, v52);
      sub_BDEA0(v46, v54);
      v47 = v57[2];
      if (v57[3] <= v47)
      {
        sub_BB9B8(v47 + 1, 1);
      }

      v24 = *(v58 + 48);
      v25 = v52;
      v26 = v52[1];
      v65[0] = *v52;
      v65[1] = v26;
      *v66 = v52[2];
      *&v66[9] = *(v52 + 41);
      v57 = v64;
      sub_EFCF4(v65, v54, v64);
      sub_EFE48(v25 + v24);
    }

    else
    {
      sub_BDE3C(v38, v53);
      v41 = v51;
      v42 = *v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v41 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = sub_D8D6C(0, v42[2] + 1, 1, v42);
        *v51 = v42;
      }

      v45 = v42[2];
      v44 = v42[3];
      if (v45 >= v44 >> 1)
      {
        v42 = sub_D8D6C(v44 > 1, v45 + 1, 1, v42);
        *v51 = v42;
      }

      v42[2] = v45 + 1;
      sub_BDEA0(v53, v42 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + v45 * v35);
      v14 = v49;
      sub_372B0(v49, &unk_12B0F0, &qword_F8048);
    }

    result = v56;
  }

  while (1)
  {
    v27 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v27 >= v21)
    {

      return v57;
    }

    v20 = *(v17 + 8 * v27);
    ++v23;
    if (v20)
    {
      v23 = v27;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_EFCF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 40);
  sub_F12FC();
  v7 = *a1;
  v8 = a1[1];
  sub_F089C();
  v9 = a1[2];
  v10 = a1[3];
  sub_F089C();
  sub_E78CC(v19, a1[4]);
  if (a1[6])
  {
    v11 = a1[5];
    sub_F131C(1u);
    sub_F089C();
  }

  else
  {
    sub_F131C(0);
  }

  sub_F130C(*(a1 + 56));
  sub_F132C();
  v12 = -1 << *(a3 + 32);
  v13 = sub_F0EBC();
  *(a3 + 64 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
  v14 = (*(a3 + 48) + (v13 << 6));
  v15 = *(a1 + 1);
  *v14 = *a1;
  v14[1] = v15;
  v14[2] = *(a1 + 2);
  *(v14 + 41) = *(a1 + 41);
  v16 = *(a3 + 56);
  v17 = type metadata accessor for TypingIndicator();
  result = sub_BDEA0(a2, v16 + *(*(v17 - 8) + 72) * v13);
  ++*(a3 + 16);
  return result;
}

uint64_t sub_EFE48(uint64_t a1)
{
  v2 = type metadata accessor for TypingIndicator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EFF18()
{
  result = sub_F030C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_EFFBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&unk_12B0F0, &qword_F8048);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}