uint64_t sub_1D554(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_9878(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1F774(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1F8B0(v3, v4);
    }

    else
    {
      v6 = sub_1F82C(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_8F68(v8);
  return v6;
}

uint64_t sub_1D610(uint64_t a1)
{
  v2 = sub_7E8C(&qword_39288, &qword_2A540);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v50 = &v46[-v4];
  v5 = sub_28268();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v46[-v10];
  v12 = sub_7E8C(&qword_39B70, &qword_2AE48);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v46[-v14];
  v16 = sub_28498();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v46[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v23 = &v46[-v22];
  sub_1EFF8(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_925C(v15, &qword_39B70, &qword_2AE48);
    sub_28178();

    v24 = sub_28258();
    v25 = sub_29138();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = v5;
      v28 = swift_slowAlloc();
      v52 = v28;
      *v26 = 136315138;
      v29 = sub_28348();
      v31 = sub_89C0(v29, v30, &v52);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_0, v24, v25, "AXGuestPassNetworkConnection: sent data to %s!", v26, 0xCu);
      sub_8F68(v28);

      (*(v51 + 8))(v9, v27);
    }

    else
    {

      (*(v51 + 8))(v9, v5);
    }

    v41 = sub_28F98();
    v42 = v50;
    (*(*(v41 - 8) + 56))(v50, 1, 1, v41);
    sub_28F78();
    v43 = sub_28F68();
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = &protocol witness table for MainActor;
    sub_16BFC(0, 0, v42, &unk_2AE58, v44);
  }

  else
  {
    v50 = v5;
    (*(v17 + 32))(v23, v15, v16);
    sub_28178();
    v32 = *(v17 + 16);
    v32(v21, v23, v16);
    v33 = sub_28258();
    v34 = sub_29128();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v52 = v49;
      *v35 = 136315394;
      *(v35 + 4) = sub_89C0(0x6C796150646E6573, 0xEF293A5F2864616FLL, &v52);
      *(v35 + 12) = 2112;
      sub_2092C(&qword_39B78, &type metadata accessor for NWError);
      swift_allocError();
      v47 = v34;
      v32(v36, v21, v16);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      v38 = *(v17 + 8);
      v38(v21, v16);
      *(v35 + 14) = v37;
      v39 = v48;
      *v48 = v37;
      _os_log_impl(&dword_0, v33, v47, "AXGuestPassNetworkConnection: %s %@", v35, 0x16u);
      sub_925C(v39, &qword_391E8, &qword_2A080);

      sub_8F68(v49);

      (*(v51 + 8))(v11, v50);
      return (v38)(v23, v16);
    }

    else
    {

      v45 = *(v17 + 8);
      v45(v21, v16);
      (*(v51 + 8))(v11, v50);
      return (v45)(v23, v16);
    }
  }
}

uint64_t sub_1DCA4()
{
  v1 = sub_28268();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  sub_28F78();
  v0[5] = sub_28F68();
  v5 = sub_28F58();
  v0[6] = v5;
  v0[7] = v4;

  return _swift_task_switch(sub_1DD94, v5, v4);
}

uint64_t sub_1DD94()
{
  *(v0 + 64) = sub_280B8();
  v1 = async function pointer to AXGuestPassService.endGuestPassTransfer()[1];
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1DE30;

  return AXGuestPassService.endGuestPassTransfer()();
}

uint64_t sub_1DE30()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = *(v2 + 56);
    v6 = sub_1DF4C;
  }

  else
  {

    v4 = *(v2 + 48);
    v5 = *(v2 + 56);
    v6 = sub_A718;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1DF4C()
{
  v1 = v0[10];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];

  sub_28178();
  swift_errorRetain();
  v5 = sub_28258();
  v6 = sub_29128();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v5, v6, "Error ending guest pass transfer after network transfer: %@", v9, 0xCu);
    sub_925C(v10, &qword_391E8, &qword_2A080);
  }

  else
  {
    v12 = v0[10];
  }

  (*(v0[3] + 8))(v0[4], v0[2]);
  v13 = v0[4];

  v14 = v0[1];

  return v14();
}

void sub_1E0E0(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2 >> 60 == 15)
    {
LABEL_28:

      return;
    }

    v6 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_27;
      }

      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      v9 = v7 - v8;
      if (!__OFSUB__(v7, v8))
      {
LABEL_13:
        sub_8FB4(a1, a2);
        if (v9 == 8)
        {
LABEL_14:
          v10 = a1;
          if (v6)
          {
            if (v6 == 2)
            {
              v11 = *(a1 + 16);
              v12 = sub_27EB8();
              if (!v12)
              {
LABEL_35:
                sub_27EC8();
LABEL_36:
                __break(1u);
                goto LABEL_37;
              }

              v13 = v12;
              v14 = sub_27ED8();
              if (__OFSUB__(v11, v14))
              {
                goto LABEL_33;
              }

              v15 = (v11 - v14 + v13);
              sub_27EC8();
              if (!v15)
              {
                goto LABEL_36;
              }
            }

            else
            {
              if (a1 > a1 >> 32)
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
LABEL_34:
                __break(1u);
                goto LABEL_35;
              }

              v16 = sub_27EB8();
              if (!v16)
              {
LABEL_37:
                sub_27EC8();
                __break(1u);
                goto LABEL_38;
              }

              v17 = v16;
              v18 = sub_27ED8();
              if (__OFSUB__(a1, v18))
              {
                goto LABEL_34;
              }

              v15 = (a1 - v18 + v17);
              sub_27EC8();
              if (!v15)
              {
LABEL_38:
                __break(1u);
                return;
              }
            }

            v10 = *v15;
          }

          v19 = bswap64(v10);
          if ((v19 & 0x8000000000000000) == 0)
          {
            v20 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v21 = swift_allocObject();
            *(v21 + 16) = v20;
            *(v21 + 24) = v19;

            sub_283B8();

            goto LABEL_27;
          }

          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_27:
        sub_90BC(a1, a2);
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (!v6)
    {
      if (BYTE6(a2) != 8)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_31;
    }

    v9 = HIDWORD(a1) - a1;
    goto LABEL_13;
  }
}

void sub_1E308(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_28268();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  if (a2 >> 60 == 15)
  {
    goto LABEL_17;
  }

  v17 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(a2);
      if (a7 < 0)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v17 != 2)
  {
    v18 = 0;
    if ((a7 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  v20 = *(a1 + 16);
  v19 = *(a1 + 24);
  v18 = v19 - v20;
  if (__OFSUB__(v19, v20))
  {
    __break(1u);
LABEL_11:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      goto LABEL_57;
    }

    v18 = HIDWORD(a1) - a1;
  }

  sub_8FB4(a1, a2);
  if ((a7 & 0x8000000000000000) == 0)
  {
LABEL_14:
    if (v18 == a7)
    {
      v21 = sub_27E68();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      sub_27E58();
      sub_7E8C(&qword_39B88, &qword_2AE70);
      sub_1FA58();
      v18 = 0;
      sub_27E48();
      goto LABEL_21;
    }

    sub_90BC(a1, a2);
LABEL_17:

    return;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  v69 = v18;

  v24 = v71[0];
  sub_28178();
  sub_8FB4(a1, a2);
  v25 = sub_28258();
  v26 = sub_29138();
  if (!os_log_type_enabled(v25, v26))
  {
    sub_90BC(a1, a2);
    goto LABEL_34;
  }

  v27 = swift_slowAlloc();
  *v27 = 134217984;
  if (v17 > 1)
  {
    if (v17 != 2)
    {
      v28 = 0;
      goto LABEL_33;
    }

    v30 = *(a1 + 16);
    v29 = *(a1 + 24);
    v31 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (!v31)
    {
      goto LABEL_33;
    }

    __break(1u);
LABEL_30:
    LODWORD(v28) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v28 = v28;
      goto LABEL_33;
    }

LABEL_57:
    __break(1u);
  }

  if (v17)
  {
    goto LABEL_30;
  }

  v28 = BYTE6(a2);
LABEL_33:
  *(v27 + 4) = v28;
  v32 = v27;
  sub_90BC(a1, a2);
  _os_log_impl(&dword_0, v25, v26, "AXGuestPassNetworkConnection: Retrieved data... %ld bytes", v32, 0xCu);

LABEL_34:

  (*(v11 + 8))(v14, v10);
  if (v24[2] && (v33 = sub_11FDC(0x6C43656369766564, 0xEB00000000737361), (v34 & 1) != 0))
  {
    v35 = v24[7] + 16 * v33;
    v37 = *v35;
    v36 = *(v35 + 8);
  }

  else
  {
    v37 = 0;
    v36 = 0xE000000000000000;
  }

  v38 = objc_opt_self();
  sub_28168();
  sub_28118();
  isa = sub_28E38().super.isa;

  v71[0] = 0;
  v40 = [v38 dataWithPropertyList:isa format:100 options:0 error:v71];

  v41 = v71[0];
  if (v40)
  {
    v70 = sub_28028();
    v43 = v42;
  }

  else
  {
    v44 = v41;
    sub_27F78();

    swift_willThrow();

    v69 = 0;
    v70 = 0;
    v43 = 0xF000000000000000;
  }

  v45 = [objc_opt_self() deviceClassForBuddy];
  if (v45)
  {
    v46 = v45;
    v47 = sub_28EC8();
    v49 = v48;

    if (v37 == v47 && v36 == v49)
    {

      goto LABEL_51;
    }

    v50 = sub_29308();

    if (v50)
    {
      goto LABEL_51;
    }
  }

  v51 = sub_1FAD4(v37, v36);

  if (!v51)
  {
LABEL_52:
    v60 = v70;
    sub_1D10C(v70, v43);

    sub_90BC(a1, a2);
    sub_90BC(v60, v43);
    return;
  }

  v52 = v51[2];
  if (!v52)
  {
LABEL_51:

    goto LABEL_52;
  }

  v68 = v43;
  if (v52 == 1)
  {
    v53 = sub_1EABC(v51);

    v71[0] = v53;
    sub_7E8C(&qword_39B98, &qword_2AE78);
    v54 = sub_291E8();

    v71[0] = 0;
    v55 = [v38 dataWithPropertyList:v54 format:100 options:0 error:v71];
    swift_unknownObjectRelease();
    v56 = v71[0];
    if (v55)
    {
      v57 = sub_28028();
      v59 = v58;
    }

    else
    {
      v66 = v56;
      sub_27F78();

      swift_willThrow();

      v57 = 0;
      v59 = 0xF000000000000000;
    }

    sub_1D10C(v57, v59);

    sub_90BC(a1, a2);
    sub_90BC(v70, v68);
    sub_90BC(v57, v59);
  }

  else
  {
    type metadata accessor for AXGuestPassServer();
    v61 = sub_AD5C();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v67 - 2) = v61;
    *(&v67 - 1) = v51;
    v71[0] = v61;
    sub_2092C(&qword_39550, type metadata accessor for AXGuestPassServer);
    sub_28078();

    sub_290A8();
    v63 = sub_28FE8();
    v64 = direct field offset for AXSettings.guestPass;
    swift_beginAccess();
    v65 = *&v63[v64];

    sub_29088();
    sub_90BC(a1, a2);
    sub_90BC(v70, v68);
  }
}

uint64_t sub_1EABC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_29218();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_208B8(v3, *(a1 + 36), 0, a1);
}

id AXGuestPassNetworkConnection.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_connection] = 0;
  *&v0[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_senderConnection] = 0;
  *&v0[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_listener] = 0;
  v2 = OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection__connectionState;
  v3 = enum case for NWConnection.State.setup(_:);
  v4 = sub_28388();
  (*(*(v4 - 8) + 104))(&v0[v2], v3, v4);
  v5 = &v0[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentDomain];
  *v5 = 0xD000000000000018;
  *(v5 + 1) = 0x800000000002B350;
  v6 = &v0[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentType];
  *v6 = 0xD000000000000012;
  *(v6 + 1) = 0x800000000002B370;
  _s17AXGuestPassServer0aB17NetworkConnectionC22__observationRegistrar33_F8B8A65206FC09C8A21103A3AFF7C9E911Observation0rG0Vvpfi_0();
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t type metadata accessor for AXGuestPassNetworkConnection()
{
  result = qword_39B60;
  if (!qword_39B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1EDBC()
{
  result = sub_28388();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_280A8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1EEA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_8FB4(a1, a2);
  }

  return a1;
}

uint64_t sub_1EEB8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_28008();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1F14C(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_1F14C(v3, v4);
  }

  return sub_28008();
}

uint64_t sub_1EFF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_7E8C(&qword_39B70, &qword_2AE48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F068()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1F0A0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_77F4;

  return sub_1DCA4();
}

uint64_t sub_1F14C(uint64_t a1, uint64_t a2)
{
  result = sub_27EB8();
  if (!result || (result = sub_27ED8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_27EC8();
      return sub_28008();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1F1E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_7E8C(&qword_395C0, &qword_2A780);
  v38 = a2;
  result = sub_292C8();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_29368();
      sub_28F08();
      result = sub_29378();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1F488(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_11FDC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1F1E0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_11FDC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_29318();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1F604();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_1F604()
{
  v1 = v0;
  sub_7E8C(&qword_395C0, &qword_2A780);
  v2 = *v0;
  v3 = sub_292B8();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

uint64_t sub_1F774(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_1F82C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_27EE8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_27EA8();
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

uint64_t sub_1F8B0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_27EE8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_27EA8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_27FF8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1F92C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1F96C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1F988()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1F9D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1FA10(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_1E0E0(a1, a2);
}

uint64_t sub_1FA18()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1FA58()
{
  result = qword_39B90;
  if (!qword_39B90)
  {
    sub_7F38(&qword_39B88, &qword_2AE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39B90);
  }

  return result;
}

id sub_1FAD4(NSObject *a1, unint64_t a2)
{
  v100 = a2;
  v101 = a1;
  v99 = sub_28268();
  v2 = *(v99 - 8);
  isa = v2[8].isa;
  v4 = __chkstk_darwin(v99);
  v98 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v86 - v6;
  v8 = sub_7E8C(&qword_39208, &unk_2A090);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v86 - v13;
  v15 = sub_27FD8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v86 - v22;
  __chkstk_darwin(v21);
  v103 = &v86 - v24;
  type metadata accessor for AXGuestPassServer();
  v25 = sub_AD5C();
  v26 = *&v25[OBJC_IVAR___AXGuestPassServer_settingsProfileManager];

  v27 = [v26 guestPassLocalStorageURL];
  if (v27)
  {
    v28 = v27;
    sub_27FA8();

    (*(v16 + 56))(v12, 0, 1, v15);
  }

  else
  {
    (*(v16 + 56))(v12, 1, 1, v15);
  }

  sub_98BC(v12, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_925C(v14, &qword_39208, &unk_2A090);
    return 0;
  }

  v95 = v2;
  v97 = v26;
  sub_28EC8();
  sub_27F98();

  v29 = *(v16 + 8);
  v29(v14, v15);
  v30 = v103;
  (*(v16 + 32))(v103, v23, v15);
  v107 = objc_opt_self();
  v31 = [v107 defaultManager];
  sub_27F88(v32);
  v34 = v33;
  v112[0] = 0;
  v35 = [v31 contentsOfDirectoryAtURL:v33 includingPropertiesForKeys:0 options:0 error:v112];

  v36 = v112[0];
  if (!v35)
  {
    v84 = v112[0];
    sub_27F78();

    swift_willThrow();

    v29(v30, v15);
    return 0;
  }

  v108 = v16 + 8;
  v109 = v29;
  v37 = sub_28F48();
  v38 = v36;

  v94 = sub_12218(&_swiftEmptyArrayStorage);
  v93 = sub_12218(&_swiftEmptyArrayStorage);
  v106 = *(v37 + 16);
  if (v106)
  {
    v40 = 0;
    v102 = 0;
    v105 = v37 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v104 = v16 + 16;
    v96 = AXGuestPassPlatformKey;
    v91 = v95 + 1;
    *&v39 = 136315138;
    v90 = v39;
    v92 = v7;
    v41 = v103;
    v42 = v109;
    while (1)
    {
      if (v40 >= *(v37 + 16))
      {
        __break(1u);
      }

      (*(v16 + 16))(v20, v105 + *(v16 + 72) * v40, v15);
      v44 = [v107 defaultManager];
      sub_27FB8(1);
      v42(v20, v15);
      v45 = sub_28E88();

      v46 = [v44 contentsAtPath:v45];

      if (!v46)
      {
        goto LABEL_11;
      }

      v47 = sub_28028();
      v49 = v48;

      v50 = objc_opt_self();
      v51 = sub_28018().super.isa;
      v112[0] = 0;
      v52 = [v50 propertyListWithData:v51 options:0 format:0 error:v112];

      if (!v52)
      {
        v43 = v112[0];
        sub_27F78();

        swift_willThrow();
        v41 = v103;

        v102 = 0;
LABEL_10:
        v113 = 0u;
        v114 = 0u;
        sub_925C(&v113, &qword_39598, &qword_2AEB0);
        sub_9008(v47, v49);
        goto LABEL_11;
      }

      v53 = v112[0];
      sub_291F8();
      swift_unknownObjectRelease();
      sub_7E8C(&qword_395A8, &qword_2A6C0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_10;
      }

      v54 = v113;
      if (!v113)
      {
        goto LABEL_10;
      }

      v110 = sub_28EC8();
      v111 = v55;

      sub_29248();
      if (!*(v54 + 16))
      {
        break;
      }

      v56 = sub_12054(v112);
      if ((v57 & 1) == 0)
      {
        break;
      }

      sub_905C(*(v54 + 56) + 32 * v56, &v113);
      sub_12548(v112);

      if (!*(&v114 + 1))
      {
        goto LABEL_23;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_24;
      }

      v58 = v112[1];
      v95 = v112[0];
LABEL_25:
      sub_28168();
      v110 = sub_28148();
      v111 = v59;
      sub_29248();
      if (*(v54 + 16) && (v60 = sub_12054(v112), (v61 & 1) != 0))
      {
        sub_905C(*(v54 + 56) + 32 * v60, &v113);
        sub_12548(v112);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_9008(v47, v49);
          goto LABEL_37;
        }

        v88 = v110;
        v89 = v111;
        v62 = v58;
        v63 = v100;
        if (v95 == v101 && v62 == v100 || (sub_29308() & 1) != 0)
        {

          sub_28178();

          v95 = sub_28258();
          v64 = sub_29108();

          LODWORD(v87) = v64;
          if (os_log_type_enabled(v95, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v112[0] = v66;
            *v65 = v90;
            *(v65 + 4) = sub_89C0(v101, v100, v112);
            _os_log_impl(&dword_0, v95, v87, "Found payload matching receiver device type: %s", v65, 0xCu);
            sub_8F68(v66);
          }

          (v91->isa)(v92, v99);
          v67 = v94;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v112[0] = v67;
          sub_1F488(v54, v88, v89, isUniquelyReferenced_nonNull_native);

          sub_9008(v47, v49);
          v69 = v112[0];
          v70 = &v116;
        }

        else
        {
          v87 = v62;
          v86 = sub_290A8();
          v71 = sub_28FE8();
          v117._countAndFlagsBits = v101;
          v117._object = v63;
          v72 = sub_28FD8(v117);

          if (!v72)
          {
            sub_9008(v47, v49);

            goto LABEL_38;
          }

          v73 = sub_28FE8();
          v118._countAndFlagsBits = v95;
          v118._object = v87;
          LODWORD(v95) = sub_28FD8(v118);

          if ((v95 & 1) == 0)
          {
            sub_9008(v47, v49);

LABEL_37:

LABEL_38:

            v41 = v103;
            goto LABEL_11;
          }

          v95 = sub_28FE8();
          result = [objc_opt_self() deviceClassForBuddy];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v75 = result;

          v87 = sub_28EC8();
          v77 = v76;

          v119._countAndFlagsBits = v87;
          v119._object = v77;
          v78 = v95;
          LODWORD(v87) = sub_28FD8(v119);

          if (v87)
          {
            sub_9008(v47, v49);

            goto LABEL_38;
          }

          sub_28178();
          v79 = sub_28258();
          v80 = sub_29108();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            *v81 = 0;
            _os_log_impl(&dword_0, v79, v80, "Found payload matching iOS device type. Storing as candidate in case we find a more exact match", v81, 2u);
          }

          (v91->isa)(v98, v99);
          v82 = v93;
          v83 = swift_isUniquelyReferenced_nonNull_native();
          v112[0] = v82;
          sub_1F488(v54, v88, v89, v83);

          sub_9008(v47, v49);
          v69 = v112[0];
          v70 = &v115;
        }

        *(v70 - 32) = v69;
        v41 = v103;
      }

      else
      {
        sub_9008(v47, v49);

        sub_12548(v112);
        v41 = v103;
      }

LABEL_11:
      ++v40;
      v42 = v109;
      if (v106 == v40)
      {
        goto LABEL_52;
      }
    }

    sub_12548(v112);
    v113 = 0u;
    v114 = 0u;
LABEL_23:
    sub_925C(&v113, &qword_39598, &qword_2AEB0);
LABEL_24:
    v95 = 0;
    v58 = 0xE000000000000000;
    goto LABEL_25;
  }

  v41 = v103;
  v42 = v109;
LABEL_52:

  v42(v41, v15);
  if (*(v94 + 16))
  {
    v85 = v94;

    return v85;
  }

  else
  {

    return v93;
  }
}

uint64_t sub_208B8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2092C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20978()
{
  v1 = sub_28188();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AXDeviceHasJindo())
  {
    sub_281E8();
    v6 = sub_281D8();
    v7 = sub_280B8();
    sub_28158();

    (*(v2 + 104))(v5, enum case for AXUIActivityRelevance.guestPass(_:), v1);
    sub_21C0C();
    sub_21C60();
    sub_281C8();
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v8 = *(v0 + 16);
    BSAuditTokenForCurrentProcess();
    v12 = v15;
    v13 = v14;
    v9 = objc_allocWithZone(STActivityAttribution);
    v14 = v13;
    v15 = v12;
    v10 = [v9 initWithAuditToken:&v14];
    v11 = [objc_allocWithZone(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution) initWithBackgroundActivityIdentifier:v8 activityAttribution:v10 showsWhenForeground:1];

    sub_210C4(v11);
  }
}

void *sub_20B74()
{
  v0[2] = sub_28E88();
  v1 = [objc_allocWithZone(STBackgroundActivitiesStatusDomainPublisher) init];
  v0[3] = v1;
  v0[4] = 0;
  v0[5] = 0;
  v0[6] = 0;
  v2 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_21D50;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_2105C;
  v6[3] = &unk_36520;
  v3 = _Block_copy(v6);
  v4 = v1;

  [v4 handleUserInteractionsWithBlock:v3];
  _Block_release(v3);

  return v0;
}

uint64_t sub_20CA4(void *a1)
{
  v2 = sub_28268();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = [a1 activeBackgroundActivities];
    type metadata accessor for STBackgroundActivityIdentifier(0);
    sub_21D58();
    v10 = sub_28FC8();

    v11 = *(v8 + 16);
    v12 = sub_20F08(v11, v10);

    if ((v12 & 1) == 0)
    {
    }

    sub_28178();
    v13 = a1;
    v14 = sub_28258();
    v15 = sub_29138();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_0, v14, v15, "Handling status bar tap %@", v16, 0xCu);
      sub_AC9C(v17);
    }

    (*(v3 + 8))(v6, v2);
    v19 = *(v8 + 40);
    if (v19)
    {
      v20 = *(v8 + 48);

      v19(v21);

      return sub_135D4(v19);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20F08(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 40);
  sub_28EC8();
  sub_29368();
  sub_28F08();
  v4 = sub_29378();

  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + 8 * v6);
      v9 = sub_28EC8();
      v11 = v10;
      if (v9 == sub_28EC8() && v11 == v12)
      {
        break;
      }

      v14 = sub_29308();

      if ((v14 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  return v14 & 1;
}

void sub_2105C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_210C4(void *a1)
{
  v2 = v1;
  v4 = sub_28268();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();
  v30 = a1;
  v9 = a1;

  v10 = sub_28258();
  v11 = sub_29138();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412546;
    v14 = *(v2 + 32);
    *(v12 + 4) = v14;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    v15 = v30;
    *v13 = v14;
    v13[1] = v15;
    v16 = v9;
    v17 = v14;
    _os_log_impl(&dword_0, v10, v11, "Updating status pill attribution from %@ to %@", v12, 0x16u);
    sub_7E8C(&qword_391E8, &qword_2A080);
    swift_arrayDestroy();
  }

  (*(v5 + 8))(v8, v4);
  v18 = *(v2 + 24);
  v19 = swift_allocObject();
  v20 = v30;
  *(v19 + 16) = v2;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_21CB4;
  *(v21 + 24) = v19;
  v35 = sub_21DC0;
  v36 = v21;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_217A0;
  v34 = &unk_36480;
  v22 = _Block_copy(&aBlock);

  v23 = v9;

  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  *(v24 + 24) = v20;
  v35 = sub_21D10;
  v36 = v24;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_C0F8;
  v34 = &unk_364D0;
  v25 = _Block_copy(&aBlock);

  v26 = v23;

  [v18 updateVolatileData:v22 completion:v25];
  _Block_release(v25);
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2146C()
{
  v1 = v0;
  v2 = sub_28268();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  if (v8)
  {
    v9 = v8;
    sub_28178();
    v10 = v9;
    v11 = sub_28258();
    v12 = sub_29138();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v8;
      v15 = v10;
      _os_log_impl(&dword_0, v11, v12, "Ending status pill with attribution: %@", v13, 0xCu);
      sub_AC9C(v14);
    }

    (*(v3 + 8))(v7, v2);
    v16 = *(v1 + 24);
    v17 = swift_allocObject();
    *(v17 + 16) = v10;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_21BBC;
    *(v18 + 24) = v17;
    v26 = sub_21BCC;
    v27 = v18;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_217A0;
    v25 = &unk_363E0;
    v19 = _Block_copy(&aBlock);
    v20 = v10;

    v26 = sub_2180C;
    v27 = 0;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_C0F8;
    v25 = &unk_36408;
    v21 = _Block_copy(&aBlock);
    [v16 updateVolatileData:v19 completion:v21];

    _Block_release(v21);
    _Block_release(v19);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    if (v20)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_217A0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_2180C()
{
  v0 = sub_28268();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();
  v5 = sub_28258();
  v6 = sub_29138();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Status pill attribution removed", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

id sub_21940(id a1, id a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 32))
  {
    [a1 removeAttribution:?];
  }

  if (a4)
  {
    [a1 addAttribution:a4];
  }

  return [a2 setUserInitiated:1];
}

uint64_t sub_219C0(uint64_t a1, void *a2)
{
  v4 = sub_28268();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  *(a1 + 32) = a2;
  v10 = a2;

  sub_28178();
  v11 = sub_28258();
  v12 = sub_29138();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Updated status pill attribution", v13, 2u);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21B0C()
{
  sub_2146C();

  v1 = *(v0 + 48);
  sub_135D4(*(v0 + 40));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_21B84()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_21BCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_21BF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21C0C()
{
  result = qword_39C68;
  if (!qword_39C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39C68);
  }

  return result;
}

unint64_t sub_21C60()
{
  result = qword_39C70;
  if (!qword_39C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39C70);
  }

  return result;
}

uint64_t sub_21CD0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_21D18()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_21D58()
{
  result = qword_391F8;
  if (!qword_391F8)
  {
    type metadata accessor for STBackgroundActivityIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_391F8);
  }

  return result;
}

uint64_t sub_21E18()
{
  sub_28A48();
  v0 = [objc_opt_self() systemBlueColor];
  sub_28A38();
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v1._object = 0x800000000002BE30;
  GuestPassLocString(_:)(v1);
  sub_7E8C(&qword_39C78, &qword_2B008);
  sub_23A24();
  sub_A978();
  sub_28978();
}

uint64_t sub_21F30@<X0>(void *a1@<X8>)
{
  v49 = a1;
  v1 = sub_28638();
  v2 = *(v1 - 8);
  v47 = v1;
  v48 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7E8C(&qword_39CA8, &qword_2B028);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v46 = sub_7E8C(&qword_39CB0, &qword_2B030);
  v44 = *(v46 - 8);
  v11 = v44;
  v12 = *(v44 + 64);
  v13 = __chkstk_darwin(v46);
  v45 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  v17 = sub_7E8C(&qword_39CB8, &qword_2B038);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v42 - v23;
  *v24 = sub_28698();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = sub_7E8C(&qword_39CC0, &qword_2B040);
  sub_2241C(&v24[*(v25 + 44)]);
  v26 = sub_28838();
  sub_285A8();
  v27 = &v24[*(v18 + 44)];
  *v27 = v26;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  sub_7E8C(&qword_39CC8, &qword_2B048);
  sub_23ADC();
  sub_28AA8();
  sub_28628();
  sub_15494(&qword_39CF8, &qword_39CA8, &qword_2B028);
  sub_240A4(&qword_39D00, &type metadata accessor for PlainButtonStyle);
  v43 = v16;
  v32 = v47;
  sub_28928();
  (*(v48 + 8))(v5, v32);
  (*(v7 + 8))(v10, v6);
  sub_1ABBC(v24, v22, &qword_39CB8, &qword_2B038);
  v33 = *(v11 + 16);
  v35 = v45;
  v34 = v46;
  v33(v45, v16, v46);
  v36 = v49;
  *v49 = 0;
  *(v36 + 8) = 1;
  v37 = v36;
  v38 = sub_7E8C(&qword_39D08, &qword_2B060);
  sub_1ABBC(v22, &v37[v38[12]], &qword_39CB8, &qword_2B038);
  v39 = &v37[v38[16]];
  *v39 = 0;
  v39[8] = 1;
  v33(&v37[v38[20]], v35, v34);
  v40 = *(v44 + 8);
  v40(v43, v34);
  sub_925C(v24, &qword_39CB8, &qword_2B038);
  v40(v35, v34);
  return sub_925C(v22, &qword_39CB8, &qword_2B038);
}

uint64_t sub_2241C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_7E8C(&qword_39D40, &qword_2B0B8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v47 - v3;
  v5 = sub_7E8C(&qword_39D48, &qword_2B0C0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v47 - v10;
  v12 = sub_28A48();
  v13 = sub_28858();
  sub_285A8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = sub_28898();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  v23 = sub_288A8();
  sub_925C(v4, &qword_39D40, &qword_2B0B8);
  KeyPath = swift_getKeyPath();
  LOBYTE(v58) = 0;
  v25 = [objc_opt_self() systemBlueColor];
  v26 = sub_28A38();
  *&v58 = v12;
  BYTE8(v58) = v13;
  *v59 = v15;
  *&v59[8] = v17;
  *&v59[16] = v19;
  *&v59[24] = v21;
  v59[32] = 0;
  *&v59[40] = KeyPath;
  *&v59[48] = v23;
  *&v59[56] = v26;
  sub_7E8C(&qword_39D50, &qword_2B0F8);
  sub_23D0C();
  sub_28998();
  v50[2] = *&v59[16];
  v50[3] = *&v59[32];
  v50[4] = *&v59[48];
  v50[0] = v58;
  v50[1] = *v59;
  sub_925C(v50, &qword_39D50, &qword_2B0F8);
  v27 = sub_286C8();
  LOBYTE(v58) = 0;
  sub_22878(v51);
  *(v49 + 7) = v51[0];
  *(&v49[1] + 7) = v51[1];
  *(&v49[2] + 7) = v51[2];
  *(&v49[3] + 7) = v51[3];
  LOBYTE(v4) = v58;
  v28 = sub_28858();
  sub_285A8();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1ABBC(v11, v9, &qword_39D48, &qword_2B0C0);
  v37 = v48;
  sub_1ABBC(v9, v48, &qword_39D48, &qword_2B0C0);
  v38 = sub_7E8C(&qword_39D90, &qword_2B118);
  v39 = *(v38 + 48);
  *(&v54[3] + 1) = v49[3];
  *(&v54[1] + 1) = v49[1];
  v40 = v37 + v39;
  v53 = v27;
  LOBYTE(v54[0]) = v4;
  *&v54[4] = *(&v49[3] + 15);
  *(&v54[2] + 1) = v49[2];
  *(v54 + 1) = v49[0];
  BYTE8(v54[4]) = v28;
  *(&v54[4] + 9) = *v52;
  HIDWORD(v54[4]) = *&v52[3];
  *&v55 = v30;
  *(&v55 + 1) = v32;
  *&v56 = v34;
  *(&v56 + 1) = v36;
  v57 = 0;
  *(v40 + 128) = 0;
  v41 = v54[4];
  *(v40 + 64) = v54[3];
  *(v40 + 80) = v41;
  v42 = v54[2];
  *(v40 + 32) = v54[1];
  *(v40 + 48) = v42;
  v43 = v54[0];
  *v40 = v53;
  *(v40 + 16) = v43;
  v44 = v56;
  *(v40 + 96) = v55;
  *(v40 + 112) = v44;
  v45 = v37 + *(v38 + 64);
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_1ABBC(&v53, &v58, &qword_39D98, &qword_2B120);
  sub_925C(v11, &qword_39D48, &qword_2B0C0);
  *&v59[17] = v49[1];
  *&v59[33] = v49[2];
  *&v59[49] = v49[3];
  v58 = v27;
  v59[0] = v4;
  *&v59[64] = *(&v49[3] + 15);
  *&v59[1] = v49[0];
  v60 = v28;
  *v61 = *v52;
  *&v61[3] = *&v52[3];
  v62 = v30;
  v63 = v32;
  v64 = v34;
  v65 = v36;
  v66 = 0;
  sub_925C(&v58, &qword_39D98, &qword_2B120);
  return sub_925C(v9, &qword_39D48, &qword_2B0C0);
}

uint64_t sub_22878@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000000002B940;
  v2._countAndFlagsBits = 0xD000000000000010;
  GuestPassLocString(_:)(v2);
  sub_A978();
  v3 = sub_288F8();
  v5 = v4;
  v7 = v6;
  sub_28878();
  v8 = sub_288E8();
  v10 = v9;
  v12 = v11;

  sub_1ABAC(v3, v5, v7 & 1);

  sub_28728();
  v13 = sub_288D8();
  v15 = v14;
  v46 = v16;
  v18 = v17;
  sub_1ABAC(v8, v10, v12 & 1);

  type metadata accessor for AXGuestPassServer();
  v19 = sub_AD5C();
  swift_getKeyPath();
  sub_240A4(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  v21 = *&v19[OBJC_IVAR___AXGuestPassServer__senderDescription];
  v20 = *&v19[OBJC_IVAR___AXGuestPassServer__senderDescription + 8];

  if (v20)
  {
    v22._countAndFlagsBits = 0xD00000000000001CLL;
    v22._object = 0x800000000002BE50;
    GuestPassLocString(_:)(v22);
    sub_7E8C(&qword_39DA0, &qword_2B150);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_29DC0;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_23F90();
    *(v23 + 32) = v21;
    *(v23 + 40) = v20;
    sub_28E98();

    v24 = sub_288F8();
    v26 = v25;
    v28 = v27;
    sub_28738();
    v29 = sub_288D8();
    v44 = v15;
    v31 = v30;
    v33 = v32;
    sub_1ABAC(v24, v26, v28 & 1);

    sub_288B8();
    v20 = sub_288E8();
    v35 = v34;
    v45 = a1;
    v36 = v13;
    v38 = v37;
    v40 = v39;

    v41 = v31;
    v15 = v44;
    sub_1ABAC(v29, v41, v33 & 1);

    v42 = v38 & 1;
    v13 = v36;
    a1 = v45;
    sub_1AC24(v20, v35, v42);
  }

  else
  {
    v35 = 0;
    v42 = 0;
    v40 = 0;
  }

  sub_1AC24(v13, v15, v46 & 1);

  sub_23F08(v20, v35, v42, v40);
  sub_23F4C(v20, v35, v42, v40);
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v46 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = v20;
  *(a1 + 40) = v35;
  *(a1 + 48) = v42;
  *(a1 + 56) = v40;
  sub_23F4C(v20, v35, v42, v40);
  sub_1ABAC(v13, v15, v46 & 1);
}

uint64_t sub_22C88()
{
  v0 = sub_7E8C(&qword_39288, &qword_2A540);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_28F98();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_28F78();
  v5 = sub_28F68();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  sub_16BFC(0, 0, v3, &unk_2B0A8, v6);
}

uint64_t sub_22D94()
{
  v1 = sub_28268();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  sub_28F78();
  v0[5] = sub_28F68();
  v5 = sub_28F58();
  v0[6] = v5;
  v0[7] = v4;

  return _swift_task_switch(sub_22E84, v5, v4);
}

uint64_t sub_22E84()
{
  *(v0 + 64) = sub_280B8();
  v1 = async function pointer to AXGuestPassService.endGuestPassSession()[1];
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_22F20;

  return AXGuestPassService.endGuestPassSession()();
}

uint64_t sub_22F20()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = *(v2 + 56);
    v6 = sub_2303C;
  }

  else
  {

    v4 = *(v2 + 48);
    v5 = *(v2 + 56);
    v6 = sub_A718;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_2303C()
{
  v1 = v0[10];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];

  sub_28178();
  swift_errorRetain();
  v5 = sub_28258();
  v6 = sub_29128();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v5, v6, "Unable to end guest pass session %@", v9, 0xCu);
    sub_925C(v10, &qword_391E8, &qword_2A080);
  }

  else
  {
    v12 = v0[10];
  }

  (*(v0[3] + 8))(v0[4], v0[2]);
  v13 = v0[4];

  v14 = v0[1];

  return v14();
}

uint64_t sub_231D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_7E8C(&qword_39CF0, &qword_2B058);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v36 - v4);
  v6 = sub_7E8C(&qword_39CE0, &qword_2B050);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v36 - v8;
  *v5 = sub_28B78();
  v5[1] = v10;
  v11 = sub_7E8C(&qword_39D10, &qword_2B068);
  sub_23440(v5 + *(v11 + 44));
  sub_7E8C(&qword_39D18, &qword_2B070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29DD0;
  v13 = sub_28838();
  *(inited + 32) = v13;
  v14 = sub_28858();
  *(inited + 33) = v14;
  v15 = sub_28848();
  sub_28848();
  if (sub_28848() != v13)
  {
    v15 = sub_28848();
  }

  sub_28848();
  if (sub_28848() != v14)
  {
    v15 = sub_28848();
  }

  sub_285A8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1551C(v5, v9, &qword_39CF0, &qword_2B058);
  v24 = &v9[*(v6 + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = sub_28828();
  sub_285A8();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1551C(v9, a1, &qword_39CE0, &qword_2B050);
  result = sub_7E8C(&qword_39CC8, &qword_2B048);
  v35 = a1 + *(result + 36);
  *v35 = v25;
  *(v35 + 8) = v27;
  *(v35 + 16) = v29;
  *(v35 + 24) = v31;
  *(v35 + 32) = v33;
  *(v35 + 40) = 0;
  return result;
}

uint64_t sub_23440@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v1 = sub_7E8C(&qword_39D20, &qword_2B078);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v5 = &v58 - v4;
  v6 = sub_7E8C(&qword_39D28, &qword_2B080);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v60 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v58 - v11;
  __chkstk_darwin(v10);
  v14 = &v58 - v13;
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = sub_286A8();
  (*(*(v16 - 8) + 104))(v5, v15, v16);
  v59 = objc_opt_self();
  v17 = [v59 systemRedColor];
  sub_28A38();
  v18 = sub_28A28();

  v19 = sub_7E8C(&qword_39D30, &qword_2B088);
  *&v5[*(v19 + 52)] = v18;
  *&v5[*(v19 + 56)] = 256;
  sub_28B78();
  sub_285F8();
  v20 = &v5[*(v2 + 44)];
  v21 = v64;
  *v20 = v63;
  *(v20 + 1) = v21;
  *(v20 + 2) = v65;
  sub_7E8C(&qword_39D18, &qword_2B070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29DD0;
  v23 = sub_28838();
  *(inited + 32) = v23;
  v24 = sub_28858();
  *(inited + 33) = v24;
  v25 = sub_28848();
  sub_28848();
  if (sub_28848() != v23)
  {
    v25 = sub_28848();
  }

  sub_28848();
  if (sub_28848() != v24)
  {
    v25 = sub_28848();
  }

  sub_285A8();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1551C(v5, v12, &qword_39D20, &qword_2B078);
  v34 = &v12[*(v6 + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  sub_1551C(v12, v14, &qword_39D28, &qword_2B080);
  v35._object = 0x800000000002B560;
  v35._countAndFlagsBits = 0xD000000000000024;
  v62 = GuestPassLocString(_:)(v35);
  sub_A978();
  v36 = sub_288F8();
  v38 = v37;
  v40 = v39;
  sub_288C8();
  v41 = sub_288E8();
  v43 = v42;
  v45 = v44;

  sub_1ABAC(v36, v38, v40 & 1);

  v46 = [v59 systemRedColor];
  v62._countAndFlagsBits = sub_28A38();
  v47 = sub_288D8();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_1ABAC(v41, v43, v45 & 1);

  v54 = v60;
  sub_1ABBC(v14, v60, &qword_39D28, &qword_2B080);
  v55 = v61;
  sub_1ABBC(v54, v61, &qword_39D28, &qword_2B080);
  v56 = v55 + *(sub_7E8C(&qword_39D38, &unk_2B090) + 48);
  *v56 = v47;
  *(v56 + 8) = v49;
  *(v56 + 16) = v51 & 1;
  *(v56 + 24) = v53;
  sub_1AC24(v47, v49, v51 & 1);

  sub_925C(v14, &qword_39D28, &qword_2B080);
  sub_1ABAC(v47, v49, v51 & 1);

  return sub_925C(v54, &qword_39D28, &qword_2B080);
}

uint64_t sub_2395C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_286B8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_7E8C(&qword_39C98, &qword_2B018);
  sub_21F30((a1 + *(v2 + 44)));
  v3 = sub_28818();
  sub_285A8();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = sub_7E8C(&qword_39CA0, &qword_2B020);
  v13 = a1 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

unint64_t sub_23A24()
{
  result = qword_39C80;
  if (!qword_39C80)
  {
    sub_7F38(&qword_39C78, &qword_2B008);
    sub_15494(&qword_39C88, &qword_39C90, &qword_2B010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39C80);
  }

  return result;
}

unint64_t sub_23ADC()
{
  result = qword_39CD0;
  if (!qword_39CD0)
  {
    sub_7F38(&qword_39CC8, &qword_2B048);
    sub_23B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39CD0);
  }

  return result;
}

unint64_t sub_23B68()
{
  result = qword_39CD8;
  if (!qword_39CD8)
  {
    sub_7F38(&qword_39CE0, &qword_2B050);
    sub_15494(&qword_39CE8, &qword_39CF0, &qword_2B058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39CD8);
  }

  return result;
}

uint64_t sub_23C20()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_23C58()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_77F4;

  return sub_22D94();
}

unint64_t sub_23D0C()
{
  result = qword_39D58;
  if (!qword_39D58)
  {
    sub_7F38(&qword_39D50, &qword_2B0F8);
    sub_23DC4();
    sub_15494(&qword_39C88, &qword_39C90, &qword_2B010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39D58);
  }

  return result;
}

unint64_t sub_23DC4()
{
  result = qword_39D60;
  if (!qword_39D60)
  {
    sub_7F38(&qword_39D68, &qword_2B100);
    sub_23E7C();
    sub_15494(&qword_39D80, &qword_39D88, &qword_2B110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39D60);
  }

  return result;
}

unint64_t sub_23E7C()
{
  result = qword_39D70;
  if (!qword_39D70)
  {
    sub_7F38(&qword_39D78, &qword_2B108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39D70);
  }

  return result;
}

uint64_t sub_23F08(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1AC24(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23F4C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1ABAC(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_23F90()
{
  result = qword_39DA8;
  if (!qword_39DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39DA8);
  }

  return result;
}

unint64_t sub_23FE8()
{
  result = qword_39DB0;
  if (!qword_39DB0)
  {
    sub_7F38(&qword_39DB8, &qword_2B158);
    sub_23A24();
    sub_240A4(&qword_39DC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39DB0);
  }

  return result;
}

uint64_t sub_240A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_240F0()
{
  result = qword_39DC8;
  if (!qword_39DC8)
  {
    sub_7F38(&qword_39CA0, &qword_2B020);
    sub_15494(&qword_39DD0, &qword_39DD8, &qword_2B160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39DC8);
  }

  return result;
}

uint64_t sub_241B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_277EC(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  *a2 = *(v3 + OBJC_IVAR___AXGuestPassServer__profileList);
}

uint64_t sub_24268(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_277EC(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28078();
}

uint64_t AXGuestPassRootView.init()@<X0>(uint64_t a1@<X8>)
{
  v29 = sub_284C8();
  v27 = *(v29 - 8);
  v2 = v27;
  v3 = *(v27 + 64);
  __chkstk_darwin(v29);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_284E8();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  type metadata accessor for AXGuestPassServer();
  v32 = sub_AD5C();
  sub_28A58();
  v7 = v31;
  *a1 = v30;
  *(a1 + 8) = v7;
  LOBYTE(v32) = 0;
  sub_28A58();
  v8 = v31;
  *(a1 + 16) = v30;
  *(a1 + 24) = v8;
  v9 = type metadata accessor for AXGuestPassRootView();
  v10 = v9[6];
  sub_290A8();
  v11 = sub_28FE8();
  v12 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v13 = *&v11[v12];

  sub_29098();
  sub_277EC(&qword_39DE0, &type metadata accessor for AXSettings.GuestPass);
  sub_28B38();
  v14 = (a1 + v9[7]);
  LODWORD(v10) = *(sub_7E8C(&qword_39040, &qword_29DE0) + 48);
  v15 = sub_280B8();
  v16 = sub_28158();
  v18 = v17;

  *v14 = v16;
  v14[1] = v18;
  sub_284D8();
  sub_7E8C(&qword_39048, &qword_29DE8);
  v19 = *(v2 + 72);
  v20 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29DD0;
  sub_284B8();
  sub_284A8();
  v32 = v21;
  sub_277EC(&qword_39050, &type metadata accessor for NWBrowser.Descriptor.Options.DeviceType);
  sub_7E8C(&qword_39058, &qword_29DF0);
  sub_15494(&qword_39060, &qword_39058, &qword_29DF0);
  sub_29208();
  sub_284F8();
  v22 = enum case for NWBrowser.Descriptor.applicationServiceWithOptions(_:);
  v23 = sub_28508();
  (*(*(v23 - 8) + 104))(v14, v22, v23);
  v24 = v9[8];
  sub_28438();
  *(a1 + v24) = sub_28418();

  sub_283F8();
}

uint64_t type metadata accessor for AXGuestPassRootView()
{
  result = qword_39EA0;
  if (!qword_39EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t property wrapper backing initializer of AXGuestPassRootView.guestPassSettings()
{
  swift_getObjectType();
  sub_277EC(&qword_39DE0, &type metadata accessor for AXSettings.GuestPass);

  return sub_28B38();
}

uint64_t AXGuestPassRootView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = type metadata accessor for AXGuestPassRootView();
  v4 = v3 - 8;
  v64 = *(v3 - 8);
  v5 = *(v64 + 64);
  __chkstk_darwin(v3);
  v65 = v5;
  v68 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7E8C(&qword_39DE8, &qword_2B168);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v47 - v9;
  v51 = sub_7E8C(&qword_39DF0, &qword_2B170);
  v52 = *(v51 - 8);
  v11 = *(v52 + 64);
  __chkstk_darwin(v51);
  object = &v47 - v12;
  v54 = sub_7E8C(&qword_39DF8, &qword_2B178);
  v55 = *(v54 - 8);
  v13 = *(v55 + 64);
  __chkstk_darwin(v54);
  v66 = &v47 - v14;
  v56 = sub_7E8C(&qword_39E00, &qword_2B180);
  v57 = *(v56 - 8);
  v15 = *(v57 + 64);
  __chkstk_darwin(v56);
  v53 = &v47 - v16;
  v77 = sub_28A08();
  v59 = *(v4 + 32);
  v67 = v1;
  sub_28B28();
  swift_getKeyPath();
  sub_28B48();

  v17 = *(v7 + 8);
  v61 = v7 + 8;
  v62 = v17;
  v17(v10, v6);
  v18 = v68;
  sub_25344(v2, v68);
  v64 = *(v64 + 80);
  v19 = (v64 + 16) & ~v64;
  v60 = v19;
  v20 = swift_allocObject();
  sub_253AC(v18, v20 + v19);
  v48 = sub_7E8C(&qword_39E08, &qword_2B1B8);
  v50 = sub_25480();
  v21 = sub_25560();
  sub_289B8();

  v22 = v67;
  sub_28B28();
  swift_getKeyPath();
  sub_28B48();

  v62(v10, v6);
  v23 = v68;
  sub_25344(v22, v68);
  v24 = v60;
  v25 = swift_allocObject();
  sub_253AC(v23, v25 + v24);
  v49 = sub_7E8C(&qword_39E28, &qword_2B1F0);
  v70 = v48;
  v71 = &type metadata for AXSUIGuestPassOnboardingView;
  v72 = v50;
  v73 = v21;
  v50 = &opaque type descriptor for <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_2581C();
  v28 = v51;
  v29 = object;
  sub_289B8();

  (*(v52 + 8))(v29, v28);
  v30._object = 0x800000000002BE70;
  v30._countAndFlagsBits = 0xD00000000000001FLL;
  v31 = GuestPassLocString(_:)(v30);
  object = v31._object;
  v76 = v31;
  v32 = v67;
  sub_28B28();
  swift_getKeyPath();
  sub_28B48();

  v62(v10, v6);
  v69 = v32;
  v33 = sub_7E8C(&qword_39E38, &qword_2B228);
  v70 = v28;
  v71 = v49;
  v72 = OpaqueTypeConformance2;
  v73 = v27;
  v34 = swift_getOpaqueTypeConformance2();
  v45 = sub_A978();
  v46 = sub_15494(&qword_39E40, &qword_39E38, &qword_2B228);
  v35 = v53;
  v36 = v54;
  v37 = v66;
  sub_28988();

  (*(v55 + 8))(v37, v36);
  v38 = v67;
  sub_28B18();
  v39 = v70;
  LOBYTE(v7) = sub_29058();

  LOBYTE(v77) = v7 & 1;
  v40 = v68;
  sub_25344(v38, v68);
  v41 = v60;
  v42 = swift_allocObject();
  sub_253AC(v40, v42 + v41);
  v70 = v36;
  v71 = &type metadata for String;
  v72 = v33;
  v73 = v34;
  v74 = v45;
  v75 = v46;
  swift_getOpaqueTypeConformance2();
  v43 = v56;
  sub_289E8();

  return (*(v57 + 8))(v35, v43);
}

uint64_t sub_25128@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_29038();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25158(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_29048();
}

uint64_t sub_25180@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_7E8C(&qword_39DE8, &qword_2B168);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = *(type metadata accessor for AXGuestPassRootView() + 24);
  sub_28B28();
  swift_getKeyPath();
  sub_28B48();

  v11 = *(v3 + 8);
  v11(v9, v2);
  v12 = v23;
  v13 = v24;
  v19 = v25;
  sub_28B28();
  swift_getKeyPath();
  sub_28B48();

  result = (v11)(v7, v2);
  v15 = v20;
  v16 = v21;
  v17 = v22;
  *a1 = 0;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13;
  *(a1 + 24) = v19;
  *(a1 + 32) = v15;
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  return result;
}

uint64_t sub_25344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXGuestPassRootView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXGuestPassRootView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25410@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for AXGuestPassRootView() - 8) + 80);

  return sub_25180(a1);
}

unint64_t sub_25480()
{
  result = qword_39E10;
  if (!qword_39E10)
  {
    sub_7F38(&qword_39E08, &qword_2B1B8);
    sub_2550C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39E10);
  }

  return result;
}

unint64_t sub_2550C()
{
  result = qword_39E18;
  if (!qword_39E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39E18);
  }

  return result;
}

unint64_t sub_25560()
{
  result = qword_39E20;
  if (!qword_39E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39E20);
  }

  return result;
}

uint64_t sub_255B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_29058();
  *a2 = result & 1;
  return result;
}

uint64_t sub_255E4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_29068();
}

uint64_t sub_2560C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AXGuestPassRootView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = *(v5 + 36);
  v9 = sub_28508();
  (*(*(v9 - 8) + 16))(a2, a1 + v8, v9);
  v10 = *(a1 + *(v5 + 40));
  sub_25344(a1, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_253AC(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = type metadata accessor for AXDevicePickerRepresentable(0);
  *(a2 + *(v13 + 24)) = v10;
  v14 = (a2 + *(v13 + 20));
  *v14 = sub_27DC4;
  v14[1] = v12;

  LOBYTE(v12) = sub_28808();
  v15 = sub_28618();
  result = sub_7E8C(&qword_39E28, &qword_2B1F0);
  v17 = a2 + *(result + 36);
  *v17 = v15;
  *(v17 + 8) = v12;
  return result;
}

uint64_t sub_257AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AXGuestPassRootView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2560C(v4, a1);
}

unint64_t sub_2581C()
{
  result = qword_39E30;
  if (!qword_39E30)
  {
    sub_7F38(&qword_39E28, &qword_2B1F0);
    sub_277EC(&qword_397A8, type metadata accessor for AXDevicePickerRepresentable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39E30);
  }

  return result;
}

void sub_258D8(uint64_t a1, char **a2)
{
  v4 = sub_28298();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_28268();
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();
  (*(v5 + 16))(v8, a1, v4);
  v13 = sub_28258();
  v14 = sub_29108();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v9;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = a2;
    v18 = v17;
    v33 = v17;
    *v16 = 136315138;
    v19 = sub_28278();
    v30 = a1;
    v21 = v20;
    (*(v5 + 8))(v8, v4);
    v22 = sub_89C0(v19, v21, &v33);
    a1 = v30;

    *(v16 + 4) = v22;
    _os_log_impl(&dword_0, v13, v14, "AXGuestPassRootView: Endpoint selected %s", v16, 0xCu);
    sub_8F68(v18);
    a2 = v29;

    (*(v31 + 8))(v12, v28);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    (*(v31 + 8))(v12, v9);
  }

  v23 = a2[3];
  LOBYTE(v33) = *(a2 + 16);
  v34 = v23;
  LOBYTE(v32) = 1;
  sub_7E8C(&qword_39F00, &qword_2B2B0);
  sub_28A78();
  v24 = a2[1];
  v33 = *a2;
  v34 = v24;
  sub_7E8C(&qword_393B0, &qword_2A450);
  sub_28A68();
  v25 = v32;
  swift_getKeyPath();
  v33 = v25;
  sub_277EC(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  v26 = *&v25[OBJC_IVAR___AXGuestPassServer__networkConnection];

  sub_1B474(a1);
}

uint64_t sub_25C7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_29078();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25CAC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_29088();
}

uint64_t sub_25CD4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v57 = a2;
  v59 = sub_7E8C(&qword_393E0, &qword_2A530);
  v3 = *(v59 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v59);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v52 - v8;
  v10 = type metadata accessor for AXGuestPassRootView();
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  __chkstk_darwin(v10 - 8);
  v54 = v12;
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7E8C(&qword_39F08, &unk_2B2C8);
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = *(v55 + 64);
  v16 = __chkstk_darwin(v14);
  v60 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v63 = &v52 - v18;
  v19 = a1[1];
  v64 = *a1;
  v65 = v19;
  sub_7E8C(&qword_393B0, &qword_2A450);
  sub_28A68();
  v20 = v66;
  swift_getKeyPath();
  v64 = v20;
  sub_277EC(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  v21 = *&v20[OBJC_IVAR___AXGuestPassServer__profileList];

  v22 = *(v21 + 16);
  v58 = v3;
  v61 = v9;
  v62 = v7;
  if (!v22)
  {
    goto LABEL_4;
  }

  v23 = sub_27760(v22, 0);
  v24 = sub_27834(&v64, v23 + 4, v22, v21);
  sub_2798C();
  if (v24 != v22)
  {
    __break(1u);
LABEL_4:

    v23 = &_swiftEmptyArrayStorage;
  }

  v64 = v23;
  swift_getKeyPath();
  v52 = a1;
  sub_25344(a1, v13);
  v25 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v26 = swift_allocObject();
  sub_253AC(v13, v26 + v25);
  sub_7E8C(&unk_39580, &unk_2B320);
  sub_15494(&qword_39F10, &unk_39580, &unk_2B320);
  sub_15494(&qword_39688, &qword_393E0, &qword_2A530);
  sub_28B08();
  v27._object = 0x800000000002BE90;
  v27._countAndFlagsBits = 0xD000000000000019;
  GuestPassLocString(_:)(v27);
  sub_7E8C(&qword_39DA0, &qword_2B150);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_29DC0;
  v29 = [objc_opt_self() currentDevice];
  v30 = [v29 name];

  v31 = sub_28EC8();
  v33 = v32;

  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_23F90();
  *(v28 + 32) = v31;
  *(v28 + 40) = v33;
  v34 = sub_28ED8();
  v36 = v35;

  v64 = v34;
  v65 = v36;
  sub_25344(v52, v13);
  v37 = swift_allocObject();
  sub_253AC(v13, v37 + v25);
  sub_A978();
  v38 = v61;
  sub_28AC8();
  v39 = v55;
  v40 = v56;
  v41 = *(v55 + 16);
  v42 = v60;
  v41(v60, v63, v56);
  v43 = v58;
  v44 = v59;
  v45 = *(v58 + 16);
  v45(v62, v38, v59);
  v46 = v57;
  v41(v57, v42, v40);
  v47 = sub_7E8C(&qword_39F18, &qword_2B330);
  v48 = v62;
  v45(&v46[*(v47 + 48)], v62, v44);
  v49 = *(v43 + 8);
  v49(v61, v44);
  v50 = *(v39 + 8);
  v50(v63, v40);
  v49(v48, v44);
  return (v50)(v60, v40);
}

uint64_t sub_26354(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for AXGuestPassRootView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = *a1;
  v7 = a1[1];
  v13[0] = v8;
  v13[1] = v7;
  sub_25344(a2, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_253AC(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = (v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v8;
  v11[1] = v7;
  sub_A978();
  swift_bridgeObjectRetain_n();
  return sub_28AC8();
}

uint64_t sub_264A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v24 = v6;
  sub_7E8C(&qword_393B0, &qword_2A450);
  sub_28A68();
  swift_getKeyPath();
  v23 = v22;
  sub_277EC(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  v7 = *&v22[OBJC_IVAR___AXGuestPassServer__profileList];

  if (!*(v7 + 16))
  {
  }

  v8 = sub_11FDC(a2, a3);
  if ((v9 & 1) == 0)
  {
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  v11 = objc_opt_self();
  isa = sub_28E38().super.isa;

  v23 = 0;
  v13 = [v11 dataWithPropertyList:isa format:100 options:0 error:&v23];

  v14 = v23;
  if (v13)
  {
    v15 = sub_28028();
    v17 = v16;
  }

  else
  {
    v19 = v14;
    sub_27F78();

    swift_willThrow();

    v15 = 0;
    v17 = 0xF000000000000000;
  }

  v23 = v5;
  v24 = v6;
  sub_28A68();
  swift_getKeyPath();
  v23 = v22;
  sub_28088();

  v20 = *&v22[OBJC_IVAR___AXGuestPassServer__networkConnection];

  sub_1D10C(v15, v17);
  LODWORD(v20) = *(type metadata accessor for AXGuestPassRootView() + 24);
  sub_7E8C(&qword_39DE8, &qword_2B168);
  sub_28B18();
  v21 = v23;
  sub_29088();

  return sub_90BC(v15, v17);
}

uint64_t sub_26798(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_28168();
  sub_28118();
  isa = sub_28E38().super.isa;

  v15[0] = 0;
  v4 = [v2 dataWithPropertyList:isa format:100 options:0 error:v15];

  v5 = v15[0];
  if (v4)
  {
    v6 = sub_28028();
    v8 = v7;
  }

  else
  {
    v9 = v5;
    sub_27F78();

    swift_willThrow();

    v6 = 0;
    v8 = 0xF000000000000000;
  }

  v10 = *(a1 + 8);
  v15[0] = *a1;
  v15[1] = v10;
  sub_7E8C(&qword_393B0, &qword_2A450);
  sub_28A68();
  swift_getKeyPath();
  v15[0] = v14;
  sub_277EC(&qword_39550, type metadata accessor for AXGuestPassServer);
  sub_28088();

  v11 = *&v14[OBJC_IVAR___AXGuestPassServer__networkConnection];

  sub_1D10C(v6, v8);
  LODWORD(v11) = *(type metadata accessor for AXGuestPassRootView() + 24);
  sub_7E8C(&qword_39DE8, &qword_2B168);
  sub_28B18();
  v12 = v15[0];
  sub_29088();

  return sub_90BC(v6, v8);
}

uint64_t sub_269D4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_7E8C(&qword_39288, &qword_2A540);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  LODWORD(v7) = *a2;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  if (v7 == 1 || (v17 = *(a3 + 16), v18 = v10, sub_7E8C(&qword_39F00, &qword_2B2B0), sub_28A68(), (v16 & 1) != 0))
  {
    v17 = v9;
    v18 = v10;
    v16 = 0;
    sub_7E8C(&qword_39F00, &qword_2B2B0);
    return sub_28A78();
  }

  else
  {
    v12 = sub_28F98();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    sub_28F78();
    v13 = sub_28F68();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = &protocol witness table for MainActor;
    sub_16BFC(0, 0, v8, &unk_2B2C0, v14);
  }
}

uint64_t sub_26B6C(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for AXGuestPassRootView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_269D4(a1, a2, v6);
}

uint64_t sub_26C08()
{
  v1 = sub_28268();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  sub_28F78();
  v0[5] = sub_28F68();
  v5 = sub_28F58();
  v0[6] = v5;
  v0[7] = v4;

  return _swift_task_switch(sub_26CF8, v5, v4);
}

uint64_t sub_26CF8()
{
  *(v0 + 64) = sub_280B8();
  v1 = async function pointer to AXGuestPassService.endGuestPassTransfer()[1];
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_26D94;

  return AXGuestPassService.endGuestPassTransfer()();
}

uint64_t sub_26D94()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = *(v2 + 56);
    v6 = sub_26EB0;
  }

  else
  {

    v4 = *(v2 + 48);
    v5 = *(v2 + 56);
    v6 = sub_A718;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_26EB0()
{
  v1 = v0[10];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];

  sub_28178();
  swift_errorRetain();
  v5 = sub_28258();
  v6 = sub_29128();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v5, v6, "Error ending guest pass transfer after user UI dismissal: %@", v9, 0xCu);
    sub_AC9C(v10);
  }

  else
  {
    v12 = v0[10];
  }

  (*(v0[3] + 8))(v0[4], v0[2]);
  v13 = v0[4];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2704C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_7E8C(&qword_39DE8, &qword_2B168);
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
      v13 = sub_28508();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_27190(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_7E8C(&qword_39DE8, &qword_2B168);
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
      v13 = sub_28508();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_272C0()
{
  sub_2743C(319, &qword_39EB0, type metadata accessor for AXGuestPassServer, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_273EC();
    if (v1 <= 0x3F)
    {
      sub_2743C(319, &unk_39EC0, &type metadata accessor for AXSettings.GuestPass, &type metadata accessor for Bindable);
      if (v2 <= 0x3F)
      {
        sub_28508();
        if (v3 <= 0x3F)
        {
          sub_28438();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_273EC()
{
  if (!qword_39EB8)
  {
    v0 = sub_28A98();
    if (!v1)
    {
      atomic_store(v0, &qword_39EB8);
    }
  }
}

void sub_2743C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_274A0()
{
  sub_7F38(&qword_39E00, &qword_2B180);
  sub_7F38(&qword_39DF8, &qword_2B178);
  sub_7F38(&qword_39E38, &qword_2B228);
  sub_7F38(&qword_39DF0, &qword_2B170);
  sub_7F38(&qword_39E28, &qword_2B1F0);
  sub_7F38(&qword_39E08, &qword_2B1B8);
  sub_25480();
  sub_25560();
  swift_getOpaqueTypeConformance2();
  sub_2581C();
  swift_getOpaqueTypeConformance2();
  sub_A978();
  sub_15494(&qword_39E40, &qword_39E38, &qword_2B228);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2767C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_276B4()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_77F4;

  return sub_26C08();
}

void *sub_27760(uint64_t a1, uint64_t a2)
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

  sub_7E8C(&unk_39F20, &unk_2B360);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_277EC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_27834(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_27994(uint64_t *a1)
{
  v3 = *(type metadata accessor for AXGuestPassRootView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26354(a1, v4);
}

uint64_t sub_27A14()
{
  v1 = *(type metadata accessor for AXGuestPassRootView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26798(v2);
}

uint64_t sub_27A7C()
{
  v1 = (type metadata accessor for AXGuestPassRootView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = *(v5 + 8);

  v7 = *(v5 + 24);

  v8 = v1[8];
  v9 = sub_7E8C(&qword_39DE8, &qword_2B168);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v1[9];
  v11 = sub_28508();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = *(v5 + v1[10]);

  v13 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_27BE0()
{
  v1 = *(type metadata accessor for AXGuestPassRootView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_264A8(v0 + v2, v4, v5);
}

uint64_t sub_27C70()
{
  v1 = (type metadata accessor for AXGuestPassRootView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = v1[8];
  v8 = sub_7E8C(&qword_39DE8, &qword_2B168);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[9];
  v10 = sub_28508();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = *(v0 + v3 + v1[10]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_27DC4(uint64_t a1)
{
  v3 = *(type metadata accessor for AXGuestPassRootView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_258D8(a1, v4);
}