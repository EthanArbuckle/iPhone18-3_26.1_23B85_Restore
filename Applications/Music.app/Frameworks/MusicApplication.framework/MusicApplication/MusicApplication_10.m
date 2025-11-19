uint64_t sub_DB1E0()
{
  v1 = sub_AB31C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);

  if (*(v5 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v5 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_DB2F4()
{
  v1 = *(sub_AB31C0() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_D6FE8(v5, v6, v0 + v2, v4, v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_DB390()
{
  v1 = sub_AB31C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  v5 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);

  if (*(v5 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v5 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_DB460(void *a1)
{
  v3 = *(sub_AB31C0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);

  return sub_D7AE4(a1, v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_DB508()
{

  return swift_deallocObject();
}

uint64_t sub_DB548()
{

  return swift_deallocObject();
}

uint64_t sub_DB5CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_26Tm()
{
  v1 = sub_AB31C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);

  if (*(v5 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v5 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_DB740()
{
  v1 = *(sub_AB31C0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);

  return sub_D7CA4(v4, v0 + v2, v5, v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_DB7DC()
{
  v1 = sub_AB31C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  }

  (*(v2 + 8))(v0 + ((v3 + 88) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_DB8D4(uint64_t a1)
{
  v3 = *(sub_AB31C0() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 80);
  v6 = v1 + ((*(v3 + 80) + 88) & ~*(v3 + 80));
  v7 = *(v6 + *(v3 + 64));

  return sub_D823C(a1, v4, v1 + 24, v5, v6, v7);
}

uint64_t sub_DB970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_DBA6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = *(a1 + 16);
  sub_6D5A0(0, v1, 0);
  v2 = a1 + 56;
  result = sub_ABABC0();
  v4 = v24;
  v5 = a1;
  v6 = 0;
  v7 = *(a1 + 36);
  v26 = v7;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v5 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v2 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_28;
    }

    if (v7 != *(v5 + 36))
    {
      goto LABEL_29;
    }

    if (*(*(v5 + 48) + result))
    {
      v11 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v11 = 0x487972617262696CLL;
    }

    if (*(*(v5 + 48) + result))
    {
      v12 = 0xEF72656461654877;
    }

    else
    {
      v12 = 0xED00007265646165;
    }

    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v23 = result;
      sub_6D5A0((v13 > 1), v14 + 1, 1);
      v5 = a1;
      v7 = v26;
      v4 = v24;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = v11;
    v15[5] = v12;
    v8 = 1 << *(v5 + 32);
    if (result >= v8)
    {
      goto LABEL_30;
    }

    v16 = *(v2 + 8 * v9);
    if ((v16 & v10) == 0)
    {
      goto LABEL_31;
    }

    if (v7 != *(v5 + 36))
    {
      goto LABEL_32;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 64 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_E1798(result, v26, 0);
          v5 = a1;
          v7 = v26;
          v4 = v24;
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_E1798(result, v26, 0);
      v5 = a1;
      v7 = v26;
      v4 = v24;
    }

LABEL_4:
    ++v6;
    result = v8;
    if (v6 == v4)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_DBDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_E11D4(a3, v25 - v10);
  v12 = sub_AB9990();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_12E1C(v11, &qword_DE9D30);
  }

  else
  {
    sub_AB9980();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_AB98B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_AB93A0() + 32;
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

      sub_12E1C(a3, &qword_DE9D30);

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

  sub_12E1C(a3, &qword_DE9D30);
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

uint64_t sub_DC0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_E11D4(a3, v25 - v10);
  v12 = sub_AB9990();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_12E1C(v11, &qword_DE9D30);
  }

  else
  {
    sub_AB9980();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_AB98B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_AB93A0() + 32;
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

      sub_12E1C(a3, &qword_DE9D30);

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

  sub_12E1C(a3, &qword_DE9D30);
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

uint64_t sub_DC3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_E11D4(a3, v25 - v10);
  v12 = sub_AB9990();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_12E1C(v11, &qword_DE9D30);
  }

  else
  {
    sub_AB9980();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_AB98B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_AB93A0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6E0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_12E1C(a3, &qword_DE9D30);

      return v22;
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

  sub_12E1C(a3, &qword_DE9D30);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6E0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t *UnifiedMessages.Coordinator.shared.unsafeMutableAddressor()
{
  if (qword_DE6800 != -1)
  {
    swift_once();
  }

  return &static UnifiedMessages.Coordinator.shared;
}

uint64_t UnifiedMessages.Placement.init(rawValue:)(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_CEFEC8;
  v7._object = a2;
  v4 = sub_ABB140(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t UnifiedMessages.Coordinator.isEnabled.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_DC7E8;

  return sub_E09D4();
}

uint64_t sub_DC7E8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_DC8E4(char a1)
{
  *(v2 + 72) = v1;
  *(v2 + 144) = a1;
  return _swift_task_switch(sub_DC908, 0, 0);
}

uint64_t sub_DC908()
{
  v1 = [objc_opt_self() sharedPrivacyInfo];
  v2 = [v1 privacyAcknowledgementRequiredForMusic];

  if (v2)
  {
    if (qword_DE6808 != -1)
    {
      swift_once();
    }

    v3 = sub_AB4BC0();
    __swift_project_value_buffer(v3, qword_DEE5B0);
    v4 = sub_AB4BA0();
    v5 = sub_AB9F50();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "💬 GDPR has not been accepted; prevent getting messages.", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7(0);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_DCAD8;

    return sub_E09D4();
  }
}

uint64_t sub_DCAD8(char a1)
{
  *(*v1 + 145) = a1;

  return _swift_task_switch(sub_DCBD8, 0, 0);
}

uint64_t sub_DCBD8()
{
  if (*(v0 + 145) == 1)
  {
    v1 = *(v0 + 72);
    if (*(v0 + 144))
    {
      v2 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v2 = 0x487972617262696CLL;
    }

    if (*(v0 + 144))
    {
      v3 = 0xEF72656461654877;
    }

    else
    {
      v3 = 0xED00007265646165;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = v2;
    *(inited + 40) = v3;

    *(v0 + 88) = sub_11BA4(inited);
    swift_setDeallocating();
    sub_E17A4(inited + 32);
    v5 = v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_serviceType;
    *(v0 + 96) = *(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_serviceType);
    *(v0 + 104) = *(v5 + 8);
    v6 = objc_allocWithZone(AMSEngagementMessageEvent);
    v7 = sub_AB9260();
    isa = sub_AB9B30().super.isa;
    v9 = [v6 initWithServiceType:v7 placements:isa];
    *(v0 + 112) = v9;

    v10 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_engagement);
    v11 = swift_task_alloc();
    *(v0 + 120) = v11;
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;
    v12 = swift_task_alloc();
    *(v0 + 128) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE700);
    *v12 = v0;
    v12[1] = sub_DCF20;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 64, 0, 0, 0xD000000000000015, 0x8000000000B4FFC0, sub_E17F8, v11, v13);
  }

  else
  {
    if (qword_DE6808 != -1)
    {
      swift_once();
    }

    v14 = sub_AB4BC0();
    __swift_project_value_buffer(v14, qword_DEE5B0);
    v15 = sub_AB4BA0();
    v16 = sub_AB9F50();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "💬 Unified Messages is disabled.", v17, 2u);
    }

    v18 = *(v0 + 8);

    return v18(0);
  }
}

uint64_t sub_DCF20()
{
  *(*v1 + 136) = v0;

  if (v0)
  {

    v2 = sub_DD740;
  }

  else
  {

    v2 = sub_DD074;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_DD074()
{
  v54 = v0;
  v1 = *(v0 + 64);
  if (!v1)
  {
    goto LABEL_52;
  }

  v2 = v1;
  v3 = [v2 messageActions];
  if (!v3)
  {
LABEL_19:

LABEL_52:

    if (qword_DE6808 != -1)
    {
      swift_once();
    }

    v40 = sub_AB4BC0();
    __swift_project_value_buffer(v40, qword_DEE5B0);

    v41 = sub_AB4BA0();
    v42 = sub_AB9F50();

    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 112);
    if (v43)
    {
      if (*(v0 + 144))
      {
        v45 = 0xEF72656461654877;
      }

      else
      {
        v45 = 0xED00007265646165;
      }

      if (*(v0 + 144))
      {
        v46 = 0x6F4E6E657473696CLL;
      }

      else
      {
        v46 = 0x487972617262696CLL;
      }

      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v53 = v48;
      *v47 = 136315138;
      v49 = sub_425E68(v46, v45, &v53);

      *(v47 + 4) = v49;
      _os_log_impl(&dword_0, v41, v42, "💬 No response for placement=%s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
    }

    else
    {
    }

    goto LABEL_64;
  }

  v4 = v3;
  sub_E1800();
  v5 = sub_AB9760();

  v51 = v2;
  v52 = v1;
  if (v5 >> 62)
  {
    goto LABEL_50;
  }

  v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  if (!v6)
  {
LABEL_51:

    v1 = v52;
    goto LABEL_52;
  }

LABEL_5:
  v7 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = sub_360614(v7, v5);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_50:
        v6 = sub_ABB060();
        if (!v6)
        {
          goto LABEL_51;
        }

        goto LABEL_5;
      }

      v8 = *(v5 + 8 * v7 + 32);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_18;
      }
    }

    v2 = *(v0 + 96);
    v10 = *(v0 + 104);
    v11 = v8;
    v12 = [v8 serviceType];
    if (sub_AB92A0() == v2 && v13 == v10)
    {

      goto LABEL_22;
    }

    v1 = sub_ABB3C0();

    if (v1)
    {
      break;
    }

    ++v7;
    if (v9 == v6)
    {
      goto LABEL_51;
    }
  }

LABEL_22:

  v15 = v11;
  v16 = [v11 placementsMap];
  if (!v16)
  {
    goto LABEL_38;
  }

  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEE718);
  v18 = sub_AB8FF0();

  if (!*(v18 + 16))
  {
    goto LABEL_37;
  }

  v19 = (*(v0 + 144) & 1) != 0 ? 0x6F4E6E657473696CLL : 0x487972617262696CLL;
  v20 = (*(v0 + 144) & 1) != 0 ? 0xEF72656461654877 : 0xED00007265646165;
  v21 = sub_2EBF88(v19, v20);
  if ((v22 & 1) == 0)
  {
    goto LABEL_37;
  }

  v23 = *(*(v18 + 56) + 8 * v21);

  if (v23 >> 62)
  {
    if (!sub_ABB060())
    {
      goto LABEL_37;
    }

LABEL_33:

    if ((v23 & 0xC000000000000001) != 0)
    {
      v25 = sub_360600(0, v23);
    }

    else
    {
      if (!*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return result;
      }

      v25 = *(v23 + 32);
    }

    v26 = v25;
    v27 = *(v0 + 112);

    v28 = [v26 makeDialogRequest];

    v29 = v28;
    goto LABEL_65;
  }

  if (*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_33;
  }

LABEL_37:

LABEL_38:
  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v30 = sub_AB4BC0();
  __swift_project_value_buffer(v30, qword_DEE5B0);

  v31 = sub_AB4BA0();
  v32 = sub_AB9F50();

  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 112);
  if (v33)
  {
    if (*(v0 + 144))
    {
      v35 = 0xEF72656461654877;
    }

    else
    {
      v35 = 0xED00007265646165;
    }

    if (*(v0 + 144))
    {
      v36 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v36 = 0x487972617262696CLL;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v53 = v38;
    *v37 = 136315138;
    v39 = sub_425E68(v36, v35, &v53);

    *(v37 + 4) = v39;
    _os_log_impl(&dword_0, v31, v32, "💬 No messageRequest for placement=%s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
  }

LABEL_64:
  v29 = 0;
LABEL_65:
  v50 = *(v0 + 8);

  return v50(v29);
}

uint64_t sub_DD740()
{

  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_DEE5B0);
  swift_errorRetain();
  sub_480B4();

  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "💬 Error getting message %@", v4, 0xCu);
    sub_12E1C(v5, &qword_DF9B20);
  }

  v7 = *(v0 + 112);

  v8 = *(v0 + 8);

  return v8(0);
}

uint64_t UnifiedMessages.Placement.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F4E6E657473696CLL;
  }

  else
  {
    return 0x487972617262696CLL;
  }
}

uint64_t sub_DD950(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F4E6E657473696CLL;
  }

  else
  {
    v3 = 0x487972617262696CLL;
  }

  if (v2)
  {
    v4 = 0xED00007265646165;
  }

  else
  {
    v4 = 0xEF72656461654877;
  }

  if (*a2)
  {
    v5 = 0x6F4E6E657473696CLL;
  }

  else
  {
    v5 = 0x487972617262696CLL;
  }

  if (*a2)
  {
    v6 = 0xEF72656461654877;
  }

  else
  {
    v6 = 0xED00007265646165;
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

Swift::Int sub_DDA10()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_DDAAC()
{
  sub_AB93F0();
}

Swift::Int sub_DDB34()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_DDBCC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_CEFEC8;
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

void sub_DDC2C(uint64_t *a1@<X8>)
{
  v2 = 0x487972617262696CLL;
  if (*v1)
  {
    v2 = 0x6F4E6E657473696CLL;
  }

  v3 = 0xED00007265646165;
  if (*v1)
  {
    v3 = 0xEF72656461654877;
  }

  *a1 = v2;
  a1[1] = v3;
}

id sub_DDC94()
{
  result = [objc_allocWithZone(type metadata accessor for UnifiedMessages.Coordinator()) init];
  static UnifiedMessages.Coordinator.shared = result;
  return result;
}

id static UnifiedMessages.Coordinator.shared.getter()
{
  if (qword_DE6800 != -1)
  {
    swift_once();
  }

  v1 = static UnifiedMessages.Coordinator.shared;

  return v1;
}

uint64_t sub_DDD84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

void sub_DDDF8(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6572676F72506E69;
      v6 = 0xEA00000000007373;
    }

    else
    {
      v5 = 0x6574656C706D6F63;
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6E776F6E6B6E75;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x8000000000B48510;
    }
  }

  v7 = 0x6572676F72506E69;
  v8 = 0xEA00000000007373;
  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState) != 2)
  {
    v7 = 0x6574656C706D6F63;
    v8 = 0xE900000000000064;
  }

  v9 = 0xD00000000000001ELL;
  v10 = 0x8000000000B48510;
  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState))
  {
    v9 = 0x6E776F6E6B6E75;
    v10 = 0xE700000000000000;
  }

  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState) <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState) <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {

    return;
  }

  v13 = sub_ABB3C0();

  if (v13)
  {
    return;
  }

  if (*(v1 + v3) > 1u || *(v1 + v3))
  {
    v14 = sub_ABB3C0();

    if ((v14 & 1) == 0)
    {
      v18 = 0x6572676F72506E69;
      v19 = 0xEA00000000007373;
      if (*(v1 + v3) != 2)
      {
        v18 = 0x6574656C706D6F63;
        v19 = 0xE900000000000064;
      }

      v20 = 0xE700000000000000;
      if (*(v1 + v3))
      {
        v21 = 0x6E776F6E6B6E75;
      }

      else
      {
        v21 = 0xD00000000000001ELL;
      }

      if (!*(v1 + v3))
      {
        v20 = 0x8000000000B48510;
      }

      if (*(v1 + v3) <= 1u)
      {
        v22 = v21;
      }

      else
      {
        v22 = v18;
      }

      osloga = v22;
      if (*(v1 + v3) <= 1u)
      {
        v23 = v20;
      }

      else
      {
        v23 = v19;
      }

      v24 = v1;
      if (qword_DE6808 != -1)
      {
        swift_once();
      }

      v25 = sub_AB4BC0();
      __swift_project_value_buffer(v25, qword_DEE5B0);

      v26 = sub_AB4BA0();
      v27 = sub_AB9F50();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v28 = 136315394;
        v29 = 0x6572676F72506E69;
        v30 = 0xEA00000000007373;
        if (a1 != 2)
        {
          v29 = 0x6574656C706D6F63;
          v30 = 0xE900000000000064;
        }

        v31 = 0xE700000000000000;
        if (a1)
        {
          v32 = 0x6E776F6E6B6E75;
        }

        else
        {
          v32 = 0xD00000000000001ELL;
        }

        if (!a1)
        {
          v31 = 0x8000000000B48510;
        }

        if (a1 <= 1u)
        {
          v33 = v32;
        }

        else
        {
          v33 = v29;
        }

        if (a1 <= 1u)
        {
          v34 = v31;
        }

        else
        {
          v34 = v30;
        }

        v35 = sub_425E68(v33, v34, &v49);

        *(v28 + 4) = v35;
        *(v28 + 12) = 2080;
        *(v28 + 14) = sub_425E68(osloga, v23, &v49);
        _os_log_impl(&dword_0, v26, v27, "💬 mliState changing from %s -> %s", v28, 0x16u);
        swift_arrayDestroy();

        v36 = v24;
      }

      else
      {

        v36 = v24;
      }

      v37 = *(v36 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_userDefaults);
      if (v37)
      {
        v38 = sub_AB9260();
        UnifiedMessages.MLI.userDefaultsKey.unsafeMutableAddressor();

        v39 = sub_AB9260();

        [v37 setObject:v38 forKey:v39];
      }

      v40 = [objc_opt_self() defaultStore];
      v41 = sub_AB9260();

      UnifiedMessages.MLI.userDefaultsKey.unsafeMutableAddressor();

      v42 = sub_AB9260();

      [v40 setString:v41 forKey:v42];

      v43 = *(v36 + v3);
      if (a1 == 2)
      {
        if (v43 != 3)
        {
          return;
        }
      }

      else if (a1 != 1 || v43 != 2)
      {
        return;
      }

      v44 = sub_E1B5C(a1, v43);
      v45 = *(v36 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_engagement);
      sub_3E8ADC(v44);
      oslog = sub_AB8FD0().super.isa;

      v46 = [v45 enqueueData:oslog];

      goto LABEL_75;
    }
  }

  else
  {
  }

  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v15 = sub_AB4BC0();
  __swift_project_value_buffer(v15, qword_DEE5B0);
  oslog = sub_AB4BA0();
  v16 = sub_AB9F10();
  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, oslog, v16, "💬 GDPR acceptance required before retrieving mliState.", v17, 2u);
  }

LABEL_75:
}

uint64_t UnifiedMessages.Coordinator.publishEngagementEvent(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_E0864(v4, v1, v2, v3);
}

char *sub_DE530()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC5F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - v4;
  v6 = &v0[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_serviceType];
  *v6 = 0x636973756DLL;
  v6[1] = 0xE500000000000000;
  v7 = OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_bag;
  v8 = objc_allocWithZone(AMSProcessInfo);
  v9 = sub_AB9260();
  v10 = [v8 initWithBundleIdentifier:v9];

  v11 = sub_AB9260();
  v12 = sub_AB9260();
  v13 = [objc_opt_self() bagForProfile:v11 profileVersion:v12 processInfo:v10];

  *&v0[v7] = v13;
  v14 = OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_observedPlacements;
  *&v0[v14] = sub_11D0C(&off_CF00A8);
  *&v0[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_privacyAcknowledgementObserver] = 0;
  v15 = OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_userDefaults;
  UnifiedMessages.groupDefaultsSuiteName.unsafeMutableAddressor();
  v16 = objc_allocWithZone(NSUserDefaults);

  v17 = sub_AB9260();

  v18 = [v16 initWithSuiteName:v17];

  *&v0[v15] = v18;
  *&v0[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_accountDidChangeObserver] = 0;
  v19 = OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator__inlineBubbleTipRequests;
  v31 = sub_97FAC(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE5D0);
  sub_AB54D0();
  (*(v3 + 32))(&v0[v19], v5, v2);
  v20 = [objc_allocWithZone(AMSEngagement) initWithBag:*&v0[v7]];
  *&v0[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_engagement] = v20;
  v0[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState] = 0;
  v30.receiver = v0;
  v30.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v30, "init");
  v22 = [objc_opt_self() sharedPrivacyInfo];
  LODWORD(v2) = [v22 privacyAcknowledgementRequiredForMusic];

  if (v2)
  {
    if (qword_DE6808 != -1)
    {
      swift_once();
    }

    v23 = sub_AB4BC0();
    __swift_project_value_buffer(v23, qword_DEE5B0);
    v24 = sub_AB4BA0();
    v25 = sub_AB9F50();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "💬 GDPR has not been accepted; prevent setup and observing for messages.", v26, 2u);
    }

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for PrivacyAcknowledgementObserver();
    swift_allocObject();
    *&v21[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_privacyAcknowledgementObserver] = PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(1, sub_E1788, v27);
  }

  else
  {
    sub_DEAE4();
  }

  return v21;
}

uint64_t sub_DE990(uint64_t result)
{
  if ((result & 1) == 0)
  {
    if (qword_DE6808 != -1)
    {
      swift_once();
    }

    v1 = sub_AB4BC0();
    __swift_project_value_buffer(v1, qword_DEE5B0);
    v2 = sub_AB4BA0();
    v3 = sub_AB9F50();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "💬 GDPR has been acknowledged, start setup.", v4, 2u);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_DEAE4();
    }

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      *(result + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_privacyAcknowledgementObserver) = 0;
    }
  }

  return result;
}

void sub_DEAE4()
{
  v1 = v0;
  v2 = ICActiveUserIdentityDidChangeNotification;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 defaultIdentityStore];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_accountDidChangeObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v4, v5, 1, 1, sub_E1790, v6);

  v7 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_engagement);
  v8 = sub_DBA6C(*(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_observedPlacements));
  sub_2F3B1C(v8);

  isa = sub_AB9B30().super.isa;

  v10 = sub_AB9260();
  [v7 addObserver:v1 placements:isa serviceType:v10];

  sub_DECA0();
}

void sub_DECA0()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultStore];
  UnifiedMessages.MLI.userDefaultsKey.unsafeMutableAddressor();

  v3 = sub_AB9260();

  v4 = [v2 stringForKey:v3];

  if (v4)
  {
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = *(v0 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_userDefaults);
  if (v8)
  {

    v9 = sub_AB9260();

    v10 = [v8 stringForKey:v9];

    if (v10)
    {
      v11 = sub_AB92A0();
      v8 = v12;
    }

    else
    {
      v11 = 0;
      v8 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v13 = sub_AB4BC0();
  __swift_project_value_buffer(v13, qword_DEE5B0);

  v14 = sub_AB4BA0();
  v15 = sub_AB9F50();

  v42 = v11;
  if (os_log_type_enabled(v14, v15))
  {
    v41 = v1;
    v16 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v16 = 136315394;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
    v17 = sub_AB9350();
    v19 = sub_425E68(v17, v18, &v45);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v43 = v5;
    v44 = v7;

    v20 = sub_AB9350();
    v22 = sub_425E68(v20, v21, &v45);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_0, v14, v15, "💬 mliState UserDefaults: %s, NSUbiquitousKeyValueStore: %s", v16, 0x16u);
    swift_arrayDestroy();

    v1 = v41;
  }

  if (v8)
  {
    v23 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v23 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {

      v24 = sub_E14A4(v11, v8);
      if (v24 == 4)
      {

        v25 = sub_AB4BA0();
        v26 = sub_AB9F30();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v44 = v8;
          v45 = v28;
          *v27 = 136315138;
          v43 = v42;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
          v29 = sub_AB9350();
          v31 = sub_425E68(v29, v30, &v45);

          *(v27 + 4) = v31;
          _os_log_impl(&dword_0, v25, v26, "💬 UserDefaults mliState=%s is not a valid mliState value", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
        }

LABEL_29:

        return;
      }

LABEL_35:
      v40 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState);
      *(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState) = v24;
      sub_DDDF8(v40);

      return;
    }
  }

  if (v7)
  {
    v32 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v32 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {

      v24 = sub_E14A4(v5, v7);
      if (v24 == 4)
      {

        v25 = sub_AB4BA0();
        v33 = sub_AB9F30();

        if (os_log_type_enabled(v25, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v43 = v35;
          *v34 = 136315138;
          *(v34 + 4) = sub_425E68(v5, v7, &v43);
          _os_log_impl(&dword_0, v25, v33, "💬 NSUbiquitousKeyValueStore mliState=%s is not a valid mliState value", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
        }

        goto LABEL_29;
      }

      goto LABEL_35;
    }
  }

  v36 = sub_AB4BA0();
  v37 = sub_AB9F50();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "💬 Setting mliState=unknown", v38, 2u);
  }

  v39 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState);
  *(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState) = 1;
  sub_DDDF8(v39);
}

void sub_DF2E8()
{
  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();
  __swift_project_value_buffer(v0, qword_DEE5B0);
  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "💬 Active user changed, resetting mliState", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_userDefaults);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {
      UnifiedMessages.MLI.userDefaultsKey.unsafeMutableAddressor();

      v8 = sub_AB9260();

      [v7 removeObjectForKey:v8];
    }
  }
}

uint64_t UnifiedMessages.Coordinator.engagement(_:didUpdate:placement:serviceType:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_AB9990();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v4;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a2;
  v13 = a2;
  v14 = v4;

  sub_DBDC8(0, 0, v10, &unk_AFC968, v12);
}

uint64_t sub_DF578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = swift_task_alloc();
  v7[10] = v8;
  *v8 = v7;
  v8[1] = sub_DF620;

  return sub_E09D4();
}

uint64_t sub_DF620(char a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_DF720, 0, 0);
}

uint64_t sub_DF720()
{
  v35 = v0;
  if (*(v0 + 88) != 1)
  {
    if (qword_DE6808 != -1)
    {
      swift_once();
    }

    v6 = sub_AB4BC0();
    __swift_project_value_buffer(v6, qword_DEE5B0);
    v7 = sub_AB4BA0();
    v8 = sub_AB9F50();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_24;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "💬 Unified Messages are disabled; preventing the engagement request from displaying.", v9, 2u);
    goto LABEL_23;
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  v3._rawValue = &off_CEFEC8;
  v37._countAndFlagsBits = v2;
  v37._object = v1;
  v4 = sub_ABB140(v3, v37);

  if (!v4)
  {
    v5 = 0;
    goto LABEL_10;
  }

  if (v4 != 1)
  {
    if (qword_DE6808 != -1)
    {
      swift_once();
    }

    v26 = sub_AB4BC0();
    __swift_project_value_buffer(v26, qword_DEE5B0);

    v7 = sub_AB4BA0();
    v27 = sub_AB9F50();

    if (!os_log_type_enabled(v7, v27))
    {
      goto LABEL_24;
    }

    v29 = *(v0 + 56);
    v28 = *(v0 + 64);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_425E68(v29, v28, &v34);
    _os_log_impl(&dword_0, v7, v27, "💬 Could not create Placement enum for placement string %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);

LABEL_23:

LABEL_24:

    goto LABEL_25;
  }

  v5 = 1;
LABEL_10:
  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v10 = sub_AB4BC0();
  __swift_project_value_buffer(v10, qword_DEE5B0);

  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_425E68(v14, v13, &v34);
    _os_log_impl(&dword_0, v11, v12, "💬 Received pushed message for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  if (!*(v0 + 72))
  {

    v17 = sub_AB4BA0();
    v18 = sub_AB9F50();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 56);
      v19 = *(v0 + 64);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_425E68(v20, v19, &v34);
      _os_log_impl(&dword_0, v17, v18, "💬 Request is nil so removing %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }
  }

  v23 = *(v0 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v23;
  v25 = sub_AB5500();
  sub_2E54F4(v23, v5);
  v25(v0 + 16, 0);

LABEL_25:
  v32 = *(v0 + 8);

  return v32();
}

uint64_t UnifiedMessages.Coordinator.engagement(_:handle:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  return sub_DFD9C(a1, a2, a3, a4, "💬 Dialogs without a specified placement are not supported.");
}

{
  return sub_DFD9C(a1, a2, a3, a4, "💬 Full sheets are not supported.");
}

uint64_t sub_DFD9C(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, const char *a5)
{
  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v7 = sub_AB4BC0();
  __swift_project_value_buffer(v7, qword_DEE5B0);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, a5, v10, 2u);
  }

  sub_E0EC0();
  v11 = swift_allocError();
  a3(0, v11);
}

void sub_DFED8(void *a1, int a2, void *a3, void *a4, void *aBlock, const char *a6)
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_E14F0(v10, a6);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_E0068@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

void sub_E00A8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE720);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  v10 = [a2 enqueueMessageEvent:a3];
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_E18E0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_28;
  v13 = _Block_copy(aBlock);

  [v10 addFinishBlock:v13];
  _Block_release(v13);
}

uint64_t sub_E0280(void *a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE720);
    return sub_AB98C0();
  }

  else
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE720);
    return sub_AB98D0();
  }
}

uint64_t sub_E0304()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DEE5B0);
  __swift_project_value_buffer(v0, qword_DEE5B0);
  return static Logger.music(_:)();
}

uint64_t sub_E0374@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_E03F4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t sub_E046C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_E0564;

  return v6(a1);
}

uint64_t sub_E0564()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_E065C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_E0750;

  return v5(v2 + 32);
}

uint64_t sub_E0750()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_E0864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = *(a2 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_engagement);
  v11 = (*(a4 + 24))(a3, a4);
  sub_3E8ADC(v11);
  isa = sub_AB8FD0().super.isa;

  return (*(v7 + 8))(v9, a3);
}

uint64_t sub_E09F0()
{
  v1 = JSBridge.shared.unsafeMutableAddressor();
  v2 = *v1;
  *(v0 + 288) = *v1;
  v3 = *(&stru_B8.size + (swift_isaMask & *v2));
  v2;
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  *v4 = v0;
  v4[1] = sub_E0B34;

  return v6(v0 + 144);
}

uint64_t sub_E0B34()
{
  v1 = *(*v0 + 288);

  return _swift_task_switch(sub_E0C48, 0, 0);
}

uint64_t sub_E0C48()
{
  v1 = *(v0 + 160);
  v2 = OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isUnifiedMessagesEnabled;
  swift_beginAccess();
  v3 = *(v1 + v2);
  static ApplicationCapabilities.shared.getter((v0 + 16));
  v4 = *(v0 + 48);

  sub_70C54(v0 + 16);
  v5 = sub_472A84(10, v4);

  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v6 = sub_AB4BC0();
  __swift_project_value_buffer(v6, qword_DEE5B0);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = v3;
    *(v9 + 8) = 1024;
    *(v9 + 10) = v5 & 1;
    _os_log_impl(&dword_0, v7, v8, "💬 Are Unified Messages enabled?: %{BOOL}d, %{BOOL}d", v9, 0xEu);
  }

  sub_E1A44(v0 + 144);
  v10 = *(v0 + 8);

  return v10(v3 & v5);
}

uint64_t sub_E0DEC(uint64_t a1)
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
  v10[1] = sub_17CF8;

  return sub_DF578(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_E0EC0()
{
  result = qword_DEE5E0;
  if (!qword_DEE5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE5E0);
  }

  return result;
}

unint64_t sub_E0F18()
{
  result = qword_DEE5E8;
  if (!qword_DEE5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE5E8);
  }

  return result;
}

unint64_t sub_E0F70()
{
  result = qword_DEE5F0;
  if (!qword_DEE5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEE5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE5F0);
  }

  return result;
}

uint64_t type metadata accessor for UnifiedMessages.Coordinator()
{
  result = qword_DEE6C0;
  if (!qword_DEE6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_E1038()
{
  sub_E1108();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_E1108()
{
  if (!qword_DEE6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DEE5D0);
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_DEE6D0);
    }
  }
}

unint64_t sub_E1180()
{
  result = qword_DEE6D8;
  if (!qword_DEE6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE6D8);
  }

  return result;
}

uint64_t sub_E11D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E1244()
{

  return swift_deallocObject();
}

uint64_t sub_E127C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E065C(a1, v4);
}

uint64_t sub_E1334(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E065C(a1, v4);
}

uint64_t sub_E13EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17BD0;

  return sub_E065C(a1, v4);
}

uint64_t sub_E14A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF0028;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_E14F0(uint64_t a1, const char *a2)
{
  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, qword_DEE5B0);
  v5 = sub_AB4BA0();
  v6 = sub_AB9F30();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, a2, v7, 2u);
  }

  sub_E0EC0();
  swift_allocError();
  v8 = sub_AB3040();
  (*(a1 + 16))(a1, 0, v8);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_E167C(uint64_t a1)
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
  v10[1] = sub_17BD0;

  return sub_DF578(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_E1750()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_E1798(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_E1800()
{
  result = qword_DEE710;
  if (!qword_DEE710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DEE710);
  }

  return result;
}

uint64_t sub_E184C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE720);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_E18E0(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE720);

  return sub_E0280(a1, a2);
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_E1984(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E046C(a1, v4);
}

void sub_E1AB0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_AB92A0();
    v5 = v4;
  }

  else
  {

    v5 = 0xEF636973754D2E65;
    v3 = 0x6C7070612E6D6F63;
  }

  qword_E70DF0 = v3;
  *algn_E70DF8 = v5;
}

unint64_t sub_E1B5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = 0xE900000000000064;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF8670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85D0;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  strcpy((inited + 48), "mliStateChange");
  *(inited + 63) = -18;
  *(inited + 64) = 7368801;
  *(inited + 72) = 0xE300000000000000;
  if (qword_DE6810 != -1)
  {
    v13 = inited;
    swift_once();
    inited = v13;
  }

  v6 = *algn_E70DF8;
  *(inited + 80) = qword_E70DF0;
  *(inited + 88) = v6;
  *(inited + 96) = 0x6574617453646C6FLL;
  *(inited + 104) = 0xE800000000000000;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v8 = 0x6572676F72506E69;
      v7 = 0xEA00000000007373;
    }

    else
    {
      v8 = 0x6574656C706D6F63;
      v7 = 0xE900000000000064;
    }
  }

  else if (a1)
  {
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
  }

  else
  {
    v7 = 0x8000000000B48510;
    v8 = 0xD00000000000001ELL;
  }

  *(inited + 112) = v8;
  *(inited + 120) = v7;
  *(inited + 128) = 0x657461745377656ELL;
  *(inited + 136) = 0xE800000000000000;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = 0x6572676F72506E69;
      v4 = 0xEA00000000007373;
    }

    else
    {
      v9 = 0x6574656C706D6F63;
    }
  }

  else if (a2)
  {
    v4 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  else
  {
    v4 = 0x8000000000B48510;
    v9 = 0xD00000000000001ELL;
  }

  *(inited + 144) = v9;
  *(inited + 152) = v4;
  v10 = inited;

  v11 = sub_96B2C(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEE730);
  swift_arrayDestroy();
  return v11;
}

void *TextDrawing.Context.text.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 24))
  {
    v3 = *(v0 + 16);
    v4 = [v1 string];
    v5 = sub_AB92A0();

    sub_E1E78(v1, v2, v3, 1);
    return v5;
  }

  else
  {
  }

  return v1;
}

void sub_E1E78(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

void *TextDrawing.Context.attributedString.getter()
{
  v1 = *v0;
  sub_E1F1C(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  return v1;
}

id sub_E1F1C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return a1;
  }

  else
  {
  }
}

void TextDrawing.Context.hash(into:)()
{
  v1 = v0;
  if (*(v0 + 24))
  {
    sub_ABA7A0();
  }

  else
  {
    sub_AB93F0();
    type metadata accessor for Key(0);
    sub_3FB3C();
    isa = sub_AB8FD0().super.isa;
    sub_ABA7A0();
  }

  sub_ABB5D0(*(v1 + 40));
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_ABB600(*&v3);
  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  sub_ABB600(*&v5);
  v6 = *(v1 + 96);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  sub_ABB600(*&v6);
  v7 = *(v1 + 104);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  sub_ABB600(*&v7);
  sub_ABB5D0(*(v1 + 112));
  v8 = *(v1 + 120);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  sub_ABB600(*&v8);
}

Swift::Int TextDrawing.Context.hashValue.getter()
{
  sub_ABB5C0();
  TextDrawing.Context.hash(into:)();
  return sub_ABB610();
}

Swift::Int sub_E2108()
{
  sub_ABB5C0();
  TextDrawing.Context.hash(into:)();
  return sub_ABB610();
}

uint64_t sub_E2144(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s16MusicApplication11TextDrawingV7ContextV2eeoiySbAE_AEtFZ_0(v13, v14) & 1;
}

void sub_E21B8(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  sub_ABB600(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  sub_ABB600(*&v3);
}

uint64_t _s16MusicApplication11TextDrawingV7ContextV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a2 + 24))
    {
      goto LABEL_22;
    }

    v7 = *(a1 + 16);
    v8 = *(a2 + 16);
    v9 = v4 == v5 && *(a1 + 8) == *(a2 + 8);
    if (!v9 && (sub_ABB3C0() & 1) == 0)
    {
      goto LABEL_22;
    }

    v6 = sub_16A080(v7);
    if (!v6)
    {
      return v6 & 1;
    }

    v10 = v6;
    v11 = sub_16A080(v8);
    if (!v11)
    {

      goto LABEL_22;
    }

    sub_474250(v10, v11);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
LABEL_22:
      LOBYTE(v6) = 0;
      return v6 & 1;
    }

LABEL_15:
    if (*(a1 + 40) == *(a2 + 40) && (sub_ABA520() & 1) != 0)
    {
      sub_7FD28();
      if ((sub_AB38E0() & 1) != 0 && (sub_AB38E0() & 1) != 0 && *(a1 + 112) == *(a2 + 112))
      {
        LOBYTE(v6) = sub_AB38E0();
        return v6 & 1;
      }
    }

    goto LABEL_22;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    goto LABEL_22;
  }

  if (v4 == v5)
  {
    goto LABEL_15;
  }

  LODWORD(v6) = [v4 isEqualToAttributedString:?];
  if (v6)
  {
    goto LABEL_15;
  }

  return v6 & 1;
}

unint64_t sub_E23C8()
{
  result = qword_DEE738;
  if (!qword_DEE738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE738);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_E2440(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_E2488(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_E24F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_ABB5C0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABB5D0(v1);
  sub_ABB5E0(v2);
  return sub_ABB610();
}

void sub_E257C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABB5D0(v1);
  sub_ABB5E0(v2);
}

Swift::Int sub_E25E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_ABB5C0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABB5D0(v1);
  sub_ABB5E0(v2);
  return sub_ABB610();
}

uint64_t sub_E2660(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_13C80(0, &qword_DFA720);
  if ((sub_ABA790() & 1) == 0)
  {
    return 0;
  }

  v6 = sub_ABA790();
  v7 = v3 ^ v5 ^ 1;
  if (v2 != v4)
  {
    v7 = 0;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

id sub_E270C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_13C80(0, &qword_DE6EE0);

  v28 = sub_ABA560();
  v5 = objc_opt_self();
  v6 = [v5 secondaryLabelColor];
  v7 = sub_ABA550();
  v8 = [v5 secondaryLabelColor];
  v9 = sub_ABA550();
  v10 = [v5 secondaryLabelColor];
  v11 = UIView.Corner.small.unsafeMutableAddressor();
  v12 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  v13 = v12[13];
  v14 = sub_ABA680();
  (*(*(v14 - 8) + 16))(a3 + v13, v11, v14);
  v15 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v16 = *v15;
  v27 = v15[1];
  v17 = v15[2];
  v18 = v15[3];
  v19 = *(v15 + 2);
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = 1;
  *(a3 + 40) = 1;
  *(a3 + 48) = a1;
  *(a3 + 56) = a2;
  *(a3 + 64) = v28;
  *(a3 + 72) = v6;
  *(a3 + 80) = 1;
  *(a3 + 88) = 1;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0xE000000000000000;
  *(a3 + 112) = v9;
  *(a3 + 120) = v10;
  *(a3 + 128) = 2;
  *(a3 + 136) = 1;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0xE000000000000000;
  *(a3 + 160) = 3;
  *(a3 + 168) = 0;
  v20 = a3 + v12[14];
  *v20 = v16;
  *(v20 + 8) = v27;
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(v20 + 32) = v19;
  *(a3 + v12[15]) = 0;
  v21 = (a3 + v12[16]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (a3 + v12[17]);
  *v22 = 0;
  v22[1] = 0;
  *(a3 + v12[18]) = 0;
  *(a3 + v12[19]) = 0;
  *(a3 + v12[20]) = 0;
  *(a3 + v12[21]) = 0;
  *(a3 + v12[22]) = 0;
  *(a3 + v12[23]) = 1;
  *(a3 + v12[24]) = 0;
  *(a3 + v12[25]) = 1;
  *(a3 + v12[26]) = 1;
  *(a3 + v12[27]) = 0;
  *(a3 + v12[28]) = 0;
  v23 = v17;
  v24 = v18;
  v25 = v16;

  return v27;
}

id sub_E298C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_13C80(0, &qword_DE6EE0);

  v29 = sub_ABA580();
  v5 = objc_opt_self();
  v6 = [v5 labelColor];
  v7 = sub_ABA550();
  v8 = [v5 secondaryLabelColor];
  v9 = sub_ABA550();
  v10 = [v5 secondaryLabelColor];
  v11 = UIView.Corner.small.unsafeMutableAddressor();
  v12 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  v13 = v12[13];
  v14 = sub_ABA680();
  (*(*(v14 - 8) + 16))(a3 + v13, v11, v14);
  v15 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v16 = *v15;
  v28 = v15[1];
  v17 = v15[2];
  v18 = v15[3];
  v19 = *(v15 + 2);
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = 1;
  *(a3 + 40) = 1;
  *(a3 + 48) = a1;
  *(a3 + 56) = a2;
  *(a3 + 64) = v29;
  *(a3 + 72) = v6;
  *(a3 + 80) = 2;
  *(a3 + 88) = 1;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0xE000000000000000;
  *(a3 + 112) = v9;
  *(a3 + 120) = v10;
  *(a3 + 128) = 2;
  *(a3 + 136) = 1;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0xE000000000000000;
  *(a3 + 160) = 4;
  *(a3 + 168) = 0;
  v20 = a3 + v12[14];
  *v20 = v16;
  *(v20 + 8) = v28;
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(v20 + 32) = v19;
  *(a3 + v12[15]) = 0;
  v21 = (a3 + v12[16]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (a3 + v12[17]);
  *v22 = 0;
  v22[1] = 0;
  *(a3 + v12[18]) = 2;
  *(a3 + v12[19]) = 0;
  *(a3 + v12[20]) = 0;
  *(a3 + v12[21]) = 0;
  *(a3 + v12[22]) = 0;
  *(a3 + v12[23]) = 1;
  *(a3 + v12[24]) = 0;
  *(a3 + v12[25]) = 1;
  *(a3 + v12[26]) = 1;
  v23 = v12[27];
  *(a3 + v12[28]) = 0;
  *(a3 + v23) = 1;
  v24 = v17;
  v25 = v18;
  v26 = v16;

  return v28;
}

id sub_E2C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v41 = a2;
  v39 = a1;
  v5 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a3 horizontalSizeClass];
  sub_13C80(0, &qword_DE6EE0);
  if (v8 == &dword_0 + 1)
  {
    v9 = sub_ABA550();
  }

  else
  {
    v9 = sub_ABA580();
  }

  v37 = v9;
  v38 = v8 != &dword_0 + 1;
  v10 = [objc_opt_self() labelColor];
  v11 = sub_ABA550();
  v12 = objc_opt_self();
  v13 = [v12 secondaryLabelColor];
  v14 = sub_ABA550();
  v15 = [v12 secondaryLabelColor];
  v16 = UIView.Corner.small.unsafeMutableAddressor();
  v17 = v5[13];
  v18 = sub_ABA680();
  (*(*(v18 - 8) + 16))(&v7[v17], v16, v18);
  v19 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v21 = *v19;
  v36 = v19[1];
  v20 = v36;
  v23 = v19[2];
  v22 = v19[3];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  *(v7 + 2) = v11;
  *(v7 + 3) = v13;
  v24 = *(v19 + 2);
  *(v7 + 4) = 1;
  v7[40] = 1;
  v25 = v41;
  *(v7 + 6) = v39;
  *(v7 + 7) = v25;
  *(v7 + 8) = v37;
  *(v7 + 9) = v10;
  *(v7 + 10) = 2;
  v7[88] = 1;
  *(v7 + 12) = 0;
  *(v7 + 13) = 0xE000000000000000;
  *(v7 + 14) = v14;
  *(v7 + 15) = v15;
  *(v7 + 16) = 2;
  v7[136] = 1;
  *(v7 + 18) = 0;
  *(v7 + 19) = 0xE000000000000000;
  v7[160] = 4;
  *(v7 + 21) = 0;
  v26 = &v7[v5[14]];
  *v26 = v21;
  *(v26 + 1) = v20;
  *(v26 + 2) = v23;
  *(v26 + 3) = v22;
  *(v26 + 2) = v24;
  *&v7[v5[15]] = 0;
  v27 = &v7[v5[16]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v7[v5[17]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v7[v5[18]] = 2;
  v7[v5[19]] = 0;
  v7[v5[20]] = 0;
  v7[v5[21]] = 0;
  v7[v5[22]] = 0;
  v7[v5[23]] = 1;
  v7[v5[24]] = 0;
  v29 = v5[25];
  v7[v5[26]] = 1;
  v7[v5[27]] = 0;
  v30 = v5[28];
  v7[v29] = v38;
  v7[v30] = 1;
  sub_E8CF0(v7, v40);
  v31 = v23;
  v32 = v22;

  v33 = v21;
  v34 = v36;

  return v34;
}

id sub_E2F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_13C80(0, &qword_DE6EE0);

  v29 = sub_ABA580();
  v5 = objc_opt_self();
  v6 = [v5 labelColor];
  v7 = sub_ABA550();
  v8 = [v5 secondaryLabelColor];
  v9 = sub_ABA550();
  v10 = [v5 secondaryLabelColor];
  v11 = UIView.Corner.small.unsafeMutableAddressor();
  v12 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  v13 = v12[13];
  v14 = sub_ABA680();
  (*(*(v14 - 8) + 16))(a3 + v13, v11, v14);
  v15 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v16 = *v15;
  v28 = v15[1];
  v17 = v15[2];
  v18 = v15[3];
  v19 = *(v15 + 2);
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = 1;
  *(a3 + 40) = 1;
  *(a3 + 48) = a1;
  *(a3 + 56) = a2;
  *(a3 + 64) = v29;
  *(a3 + 72) = v6;
  *(a3 + 80) = 2;
  *(a3 + 88) = 1;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0xE000000000000000;
  *(a3 + 112) = v9;
  *(a3 + 120) = v10;
  *(a3 + 128) = 2;
  *(a3 + 136) = 1;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0xE000000000000000;
  *(a3 + 160) = 4;
  *(a3 + 168) = 0;
  v20 = a3 + v12[14];
  *v20 = v16;
  *(v20 + 8) = v28;
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(v20 + 32) = v19;
  *(a3 + v12[15]) = 0;
  v21 = (a3 + v12[16]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (a3 + v12[17]);
  *v22 = 0;
  v22[1] = 0;
  *(a3 + v12[18]) = 2;
  *(a3 + v12[19]) = 0;
  *(a3 + v12[20]) = 0;
  *(a3 + v12[21]) = 0;
  *(a3 + v12[22]) = 0;
  *(a3 + v12[23]) = 1;
  *(a3 + v12[24]) = 0;
  *(a3 + v12[25]) = 1;
  v23 = v12[26];
  *(a3 + v12[27]) = 0;
  *(a3 + v12[28]) = 0;
  *(a3 + v23) = 0;
  v24 = v17;
  v25 = v18;
  v26 = v16;

  return v28;
}

id sub_E31CC@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  sub_13C80(0, &qword_DE6EE0);
  v2 = sub_ABA550();
  v3 = objc_opt_self();
  v4 = [v3 secondaryLabelColor];
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = 1;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v5 = sub_ABA580();
  v6 = [v3 labelColor];
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 80) = 2;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  v7 = sub_ABA550();
  v8 = [v3 secondaryLabelColor];
  *(a1 + 112) = v7;
  *(a1 + 120) = v8;
  *(a1 + 128) = 2;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0xE000000000000000;
  *(a1 + 160) = 4;
  *(a1 + 168) = 0;
  v9 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  v10 = v9[13];
  v11 = UIView.Corner.small.unsafeMutableAddressor();
  v12 = sub_ABA680();
  (*(*(v12 - 8) + 16))(a1 + v10, v11, v12);
  v13 = a1 + v9[14];
  v14 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v15 = *v14;
  v25 = v14[1];
  v16 = v14[2];
  v17 = v14[3];
  v18 = *(v14 + 2);
  *v13 = *v14;
  *(v13 + 8) = v25;
  *(v13 + 16) = v16;
  *(v13 + 24) = v17;
  *(v13 + 32) = v18;
  *(a1 + v9[15]) = 0;
  v19 = (a1 + v9[16]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a1 + v9[17]);
  *v20 = 0;
  v20[1] = 0;
  *(a1 + v9[18]) = 0;
  *(a1 + v9[19]) = 0;
  *(a1 + v9[20]) = 0;
  *(a1 + v9[21]) = 0;
  *(a1 + v9[22]) = 0;
  *(a1 + v9[23]) = 1;
  *(a1 + v9[24]) = 0;
  *(a1 + v9[25]) = 1;
  *(a1 + v9[26]) = 1;
  *(a1 + v9[27]) = 0;
  *(a1 + v9[28]) = 0;
  v21 = v16;
  v22 = v17;
  v23 = v15;

  return v25;
}

void *sub_E342C(uint64_t a1)
{
  __chkstk_darwin(a1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E8920(v1, v3);
  v4 = objc_allocWithZone(type metadata accessor for DefaultHeaderContentView());
  v5 = sub_E3E14(v3);
  sub_E8C04(&qword_DEE980, type metadata accessor for DefaultHeaderContentView);
  return v5;
}

void *sub_E34F8()
{
  v1 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  v7 = v0 + OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView____lazy_storage___contentView;
  v8 = *(v0 + OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView____lazy_storage___contentView);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView____lazy_storage___contentView);
  }

  else
  {
    v10 = OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration;
    swift_beginAccess();
    sub_E8920(v0 + v10, v6);
    sub_E8920(v6, v4);
    v11 = objc_allocWithZone(type metadata accessor for DefaultHeaderContentView());
    v12 = sub_E3E14(v4);
    sub_E8C4C(v6);
    v13 = sub_E8C04(&qword_DEE980, type metadata accessor for DefaultHeaderContentView);
    v14 = *v7;
    *v7 = v12;
    *(v7 + 8) = v13;
    v9 = v12;

    v8 = 0;
  }

  v15 = v8;
  return v9;
}

uint64_t sub_E37C8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_artworkCachingReference) = a1;
  swift_retain_n();

  v3 = v1 + OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration;
  swift_beginAccess();
  v4 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  *(v3 + *(v4 + 60)) = a1;

  v5 = sub_E34F8();
  swift_getObjectType();
  v8[3] = v4;
  v8[4] = sub_E8C04(&qword_DEE978, type metadata accessor for CollectionViewSection.ContentConfiguration);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  sub_E8920(v3, boxed_opaque_existential_0);
  sub_AB4C70();
}

uint64_t sub_E3AA0()
{
  result = type metadata accessor for CollectionViewSection.ContentConfiguration(319);
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

uint64_t sub_E3C54@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  return sub_E8BA0(v1 + v3, a1);
}

uint64_t sub_E3CAC(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v1 + v3), a1);
  v4 = swift_endAccess();
  (*&stru_68.segname[swift_isaMask & *v1])(v4);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t (*sub_E3D48(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_E3DAC;
}

uint64_t sub_E3DAC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*&stru_68.segname[swift_isaMask & **(a1 + 24)])(result);
  }

  return result;
}

void *sub_E3E14(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___chevronImageView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___artworkComponent] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_topHairlineView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_bottomHairlineView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizerHandler] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer] = 0;
  sub_E8920(a1, v5);
  v6 = &v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration];
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration + 24] = v3;
  v6[4] = sub_E8C04(&qword_DEE978, type metadata accessor for CollectionViewSection.ContentConfiguration);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
  sub_E8920(v5, boxed_opaque_existential_0);
  v8 = type metadata accessor for SectionHeaderContentView();
  v15.receiver = v1;
  v15.super_class = v8;
  v9 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*&stru_68.segname[swift_isaMask & *v9])();
  sub_E8C4C(v5);
  v10 = v9;
  v11 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel);
  [v10 addSubview:v11];

  v12 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel);
  [v10 addSubview:v12];

  [*(v10 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel) setHidden:1];
  sub_E4180();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF37F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF4EC0;
  *(v13 + 32) = sub_AB5330();
  *(v13 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_ABA6F0();
  sub_E8C4C(a1);

  swift_unknownObjectRelease();

  return v10;
}

id sub_E40E8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(UILabel) init];
    [v5 setNumberOfLines:2];
    [v5 setLineBreakMode:4];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

uint64_t sub_E4180()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v115 - v6;
  v8 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  v9 = __chkstk_darwin(v8);
  v119 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v115 - v12;
  __chkstk_darwin(v11);
  v15 = &v115 - v14;
  v16 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  sub_E8BA0(&v1[v16], v121);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260);
  swift_dynamicCast();
  v116 = v8[16];
  if (*&v15[v116])
  {
    v18 = *(v15 + 7);
    v19 = *(v15 + 6) & 0xFFFFFFFFFFFFLL;
    if ((v18 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(v18) & 0xF;
    }

    v20 = v19 != 0;
  }

  else
  {
    v20 = 0;
  }

  sub_E8BA0(&v1[v16], v121);
  swift_dynamicCast();
  v21 = v13[160];
  if (v21 == 4)
  {
    LOBYTE(v21) = sub_E76D8(v13);
  }

  sub_E8C4C(v13);
  v117 = v17;
  v118 = v16;
  if (v21 <= 1u)
  {
    if (v21)
    {
      v22 = String.trim()();
      v23 = *(v15 + 8);
      v24 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel);
      sub_E4F00(v22._countAndFlagsBits, v22._object, v20, v23, v24);

      v25 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel;
      [*&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel] setTextColor:*(v15 + 9)];
      [*&v1[v25] setNumberOfLines:*(v15 + 10)];
      [*&v1[v25] setAdjustsFontForContentSizeCategory:v15[88]];
      v26 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel);
      [v26 setHidden:0];

      String.trim()();
      v27 = *(v15 + 14);
      v28 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel;
      v29 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel];
      [v29 setAttributedText:0];
      v30 = sub_AB9260();
      [v29 setText:v30];

      [v29 setFont:v27];

      [*&v1[v28] setNumberOfLines:*(v15 + 16)];
      [*&v1[v28] setTextColor:*(v15 + 15)];
      [*&v1[v28] setAdjustsFontForContentSizeCategory:v15[136]];
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v21 != 2)
  {
LABEL_16:
    v69 = String.trim()();
    v70 = *(v15 + 8);
    v71 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel);
    sub_E4F00(v69._countAndFlagsBits, v69._object, v20, v70, v71);

    v72 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel;
    [*&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel] setTextColor:*(v15 + 9)];
    [*&v1[v72] setNumberOfLines:*(v15 + 10)];
    [*&v1[v72] setAdjustsFontForContentSizeCategory:v15[88]];
    v73 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel);
    [v73 setHidden:1];

    v74 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel;
    [*&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel] setText:0];
    [*&v1[v74] setAttributedText:0];
    goto LABEL_17;
  }

  v115 = v5;
  String.trim()();
  v31 = *(v15 + 2);
  v32 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel);
  [v32 setAttributedText:0];
  v33 = sub_AB9260();
  [v32 setText:v33];

  [v32 setFont:v31];

  v34 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel;
  [*&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel] setTextColor:*(v15 + 3)];
  [*&v1[v34] setNumberOfLines:*(v15 + 4)];
  [*&v1[v34] setAdjustsFontForContentSizeCategory:v15[40]];
  v35 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel);
  [v35 setHidden:0];

  v36 = String.trim()();
  v37 = *(v15 + 8);
  v38 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel;
  v39 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel];
  sub_E4F00(v36._countAndFlagsBits, v36._object, v20, v37, v39);

  [*&v1[v38] setNumberOfLines:*(v15 + 10)];
  [*&v1[v38] setTextColor:*(v15 + 9)];
  [*&v1[v38] setAdjustsFontForContentSizeCategory:v15[88]];
  v40 = sub_E53CC();
  v41 = v40;
  v42 = *(v15 + 21);
  if (v42)
  {
    v43 = v42;
    sub_74EA4(v42);
    v44 = v8[13];
    v45 = sub_ABA680();
    v46 = *(v45 - 8);
    (*(v46 + 16))(v7, &v15[v44], v45);
    (*(v46 + 56))(v7, 0, 1, v45);
    v47 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
    swift_beginAccess();
    v48 = v115;
    sub_15F84(v41 + v47, v115, &unk_DFFBC0);
    swift_beginAccess();
    sub_8A01C(v7, v41 + v47);
    swift_endAccess();
    sub_75AE8(v48);
    sub_12E1C(v48, &unk_DFFBC0);
    sub_12E1C(v7, &unk_DFFBC0);
    v49 = &v15[v8[14]];
    v50 = *v49;
    v51 = *(v49 + 1);
    v52 = *(v49 + 2);
    v53 = *(v49 + 3);
    v54 = *(v49 + 2);
    v55 = *(v41 + 168);
    v121[0] = *(v41 + 152);
    v121[1] = v55;
    v121[2] = *(v41 + 184);
    *(v41 + 152) = v50;
    *(v41 + 160) = v51;
    *(v41 + 168) = v52;
    *(v41 + 176) = v53;
    *(v41 + 184) = v54;
    v56 = v52;
    v57 = v53;
    v58 = v50;
    v59 = v51;
    v60 = v56;
    v61 = v57;
    v62 = v58;
    v63 = v59;
    sub_75948(v121);
    sub_12E1C(v121, &unk_DF8690);

    v64 = UIView.Border.artwork.unsafeMutableAddressor();
    v65 = *v64;
    v66 = *(v64 + 8);
    v67 = v64[2];
    v68 = v67;
    sub_75E64(v65, v66, v67);
    *(v41 + 16) = *&v15[v8[15]];

    *(v41 + 24) = 0x70756B636F6CLL;
    *(v41 + 32) = 0xE600000000000000;

    if (([*(v41 + 112) isDescendantOfView:v1] & 1) == 0)
    {
      [v1 addSubview:*(v41 + 112)];
    }
  }

  else
  {
    [*(v40 + 112) removeFromSuperview];
  }

LABEL_17:
  v75 = *&v15[v116];
  v76 = sub_E5474();
  v77 = v76;
  if (v75)
  {
    v78 = [v76 isDescendantOfView:v1];

    if ((v78 & 1) == 0)
    {
      [v1 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___chevronImageView]];
    }

    v79 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v80 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v81 = objc_allocWithZone(type metadata accessor for TapGestureRecognizer());

    v82 = [v81 init];
    v83 = &v82[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer_onTouchDown];
    v84 = *&v82[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer_onTouchDown];
    *v83 = sub_E8DFC;
    v83[1] = v79;

    v85 = v82;
    sub_17654(v84);

    v86 = &v85[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer_onTouchUp];
    v87 = *&v85[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer_onTouchUp];
    *v86 = sub_E8E24;
    v86[1] = v80;

    sub_17654(v87);

    v88 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer];
    *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer] = v85;
    v89 = v85;
    sub_E774C(v88);
  }

  else
  {
    [v76 removeFromSuperview];

    v88 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer];
    *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer] = 0;
    sub_E774C(v88);
  }

  if (!*&v15[v8[17]])
  {
    goto LABEL_33;
  }

  v90 = *(v15 + 19);
  v91 = HIBYTE(v90) & 0xF;
  if ((v90 & 0x2000000000000000) == 0)
  {
    v91 = *(v15 + 18) & 0xFFFFFFFFFFFFLL;
  }

  if (!v91)
  {
LABEL_33:
    v106 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton;
    v107 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton];
    if (v107)
    {
      [v107 removeFromSuperview];
      v105 = *&v1[v106];
    }

    else
    {
      v105 = 0;
    }

    *&v1[v106] = 0;
    goto LABEL_37;
  }

  v92 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton;
  v93 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton];
  if (v93)
  {
    goto LABEL_48;
  }

  v94 = objc_opt_self();
  v95 = [v94 buttonWithType:1];
  v96 = [v95 titleLabel];
  if (v96)
  {
    v97 = v96;
    v98 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v97 setFont:v98];
  }

  [v94 easyTouchDefaultHitRectInsets];
  [v95 setHitRectInsets:?];
  [v95 setContentHorizontalAlignment:2];
  v99 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v100 = sub_13C80(0, &qword_E0BC00);
  ControlEventHandling<>.on(_:handler:)(64, sub_E8DF4, v99, v100);

  v101 = *&v1[v92];
  *&v1[v92] = v95;

  v93 = *&v1[v92];
  if (v93)
  {
LABEL_48:
    v102 = v93;
    v103 = sub_AB9260();
    [v102 setTitle:v103 forState:0];

    v104 = *&v1[v92];
    if (v104)
    {
      v105 = v104;
      if (([v105 isDescendantOfView:v1] & 1) == 0)
      {
        [v1 addSubview:v105];
      }

LABEL_37:
    }
  }

  sub_E8BA0(&v1[v118], v120);
  v108 = v119;
  swift_dynamicCast();
  v109 = *(v108 + v8[18]);
  sub_E8C4C(v108);
  if (!v109)
  {
    [v1 setPreservesSuperviewLayoutMargins:0];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
LABEL_43:
    [v1 setLayoutMargins:{top, left, bottom, right}];
    return sub_E8C4C(v15);
  }

  if (v109 != 1)
  {
    [v1 setPreservesSuperviewLayoutMargins:0];
    [v1 music_inheritedLayoutInsets];
    goto LABEL_43;
  }

  [v1 setPreservesSuperviewLayoutMargins:1];
  return sub_E8C4C(v15);
}

void sub_E4F00(uint64_t a1, void *a2, char a3, void *a4, id a5)
{
  if (a3)
  {
    v10 = [objc_opt_self() defaultParagraphStyle];
    [v10 mutableCopy];
    sub_ABAB50();
    v11 = sub_13C80(0, &unk_E05360);
    swift_dynamicCast();

    swift_unknownObjectRelease();
    [v39 setLineBreakMode:4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF85F0;
    *(inited + 32) = NSFontAttributeName;
    v13 = sub_13C80(0, &qword_DE6EE0);
    *(inited + 40) = a4;
    *(inited + 64) = v13;
    *(inited + 72) = NSParagraphStyleAttributeName;
    *(inited + 104) = v11;
    *(inited + 80) = v39;
    v14 = NSFontAttributeName;
    v15 = a4;
    v16 = NSParagraphStyleAttributeName;
    v36 = v39;
    sub_96EB8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6EE8);
    swift_arrayDestroy();
    v17 = [objc_allocWithZone(NSMutableAttributedString) init];
    v18 = [v5 effectiveUserInterfaceLayoutDirection];
    if (v18 == &dword_0 + 1)
    {
      v41._countAndFlagsBits = a1;
      v41._object = a2;
      sub_AB94A0(v41);
      v19 = String.nonBreakingSpace.unsafeMutableAddressor();
      v20 = *v19;
      v21 = v19[1];

      v42._countAndFlagsBits = v20;
      v42._object = v21;
      sub_AB94A0(v42);
    }

    else
    {
      v23 = String.nonBreakingSpace.unsafeMutableAddressor();
      v24 = *v23;
      v25 = v23[1];

      v43._countAndFlagsBits = v24;
      v43._object = v25;
      sub_AB94A0(v43);
    }

    v26 = objc_allocWithZone(NSAttributedString);
    v27 = sub_AB9260();
    type metadata accessor for Key(0);
    sub_E8C04(&qword_DE6EF0, type metadata accessor for Key);
    isa = sub_AB8FD0().super.isa;

    v29 = [v26 initWithString:v27 attributes:isa];

    [v17 appendAttributedString:v29];
    v30 = [objc_allocWithZone(NSTextAttachment) init];
    v31 = sub_E8E4C();
    [v30 setImage:v31];

    v32 = [objc_opt_self() attributedStringWithAttachment:v30];
    [v17 appendAttributedString:v32];

    if (v18 == &dword_0 + 1)
    {
      v33 = objc_allocWithZone(NSAttributedString);
      v34 = sub_AB9260();
      v35 = [v33 initWithString:{v34, v36}];

      [v17 appendAttributedString:v35];
    }

    [a5 setText:{0, v36}];
    [a5 setFont:0];
    [a5 setAttributedText:v17];
  }

  else
  {
    [a5 setAttributedText:0];
    v22 = sub_AB9260();
    [a5 setText:v22];

    [a5 setFont:a4];
  }
}

uint64_t sub_E53CC()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___artworkComponent;
  if (*(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___artworkComponent))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___artworkComponent);
  }

  else
  {
    v3 = v0;
    type metadata accessor for ArtworkComponentImageView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    _s9ComponentCMa(0);
    swift_allocObject();
    v2 = sub_80104(v4);

    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_E5474()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___chevronImageView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___chevronImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___chevronImageView);
  }

  else
  {
    v4 = sub_E8E4C();
    v5 = [objc_allocWithZone(UIImageView) initWithImage:v4];

    [v5 setContentMode:4];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_E5518(float a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong layer];
    *&v5 = a1;
    [v4 setOpacity:v5];
  }
}

void sub_E55A0(uint64_t a1)
{
  v2 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin(v2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong superview];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for CollectionViewSection.SectionHeaderView(0);
      v9 = swift_dynamicCastClass();
      if (!v9)
      {

        goto LABEL_9;
      }

      v10 = v9;
      v11 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
      swift_beginAccess();
      sub_E8BA0(v6 + v11, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260);
      swift_dynamicCast();
      v12 = *&v4[*(v2 + 68)];
      sub_307CC(v12);
      sub_E8C4C(v4);
      if (v12)
      {
        v12(v10, a1);

        sub_17654(v12);
LABEL_9:

        return;
      }
    }

    v8 = v6;
    goto LABEL_9;
  }
}

double sub_E573C(double a1, double a2)
{
  v5 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v35[-v9];
  v11 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  sub_E8BA0(&v2[v11], v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260);
  swift_dynamicCast();
  v12 = [v2 traitCollection];
  [v12 displayScale];

  sub_E8BA0(&v2[v11], v36);
  swift_dynamicCast();
  if (v8[160] == 4)
  {
    sub_E76D8(v8);
  }

  sub_E8C4C(v8);
  [v2 layoutMargins];
  sub_AB9E60();
  v14 = a1 - v13;
  v15 = v10[21];
  if (v15)
  {
    v16 = v14 + -52.0;
  }

  else
  {
    v16 = v14;
  }

  v17 = *&v2[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton];
  if (v17)
  {
    [v17 sizeThatFits:{a1, a2}];
    v20 = v19;
  }

  else
  {
    v18 = 0.0;
    v20 = 0.0;
  }

  if (*(v10 + *(v5 + 68)))
  {
    v21 = v10[19];
    v22 = v10[18] & 0xFFFFFFFFFFFFLL;
    if ((v21 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v21) & 0xF;
    }

    if (v22 && (v18 != 0.0 || v20 != 0.0))
    {
      v16 = v16 - (v18 + 10.0);
    }
  }

  v23 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel);
  [v23 sizeThatFits:{v16, a2}];
  v25 = v24;

  v26 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel);
  [v26 sizeThatFits:{v16, a2}];
  v28 = v27;

  v29 = 52.0;
  if (!v15)
  {
    v29 = 0.0;
  }

  if (v25 > v28)
  {
    v30 = v25;
  }

  else
  {
    v30 = v28;
  }

  v31 = v29 + v30;
  [v2 layoutMargins];
  sub_AB9E60();
  v33 = v32;
  sub_E8C4C(v10);
  return v31 + v33;
}

double sub_E5BD0()
{
  v1 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v23[-v5];
  v7 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  sub_E8BA0(&v0[v7], v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260);
  swift_dynamicCast();
  v8 = [v0 traitCollection];
  [v8 displayScale];

  sub_E8BA0(&v0[v7], v24);
  swift_dynamicCast();
  if (v4[160] == 4)
  {
    sub_E76D8(v4);
  }

  sub_E8C4C(v4);
  v9 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel);
  [v9 intrinsicContentSize];
  v11 = v10;

  v12 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel);
  [v12 intrinsicContentSize];
  v14 = v13;

  v15 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton];
  if (v15)
  {
    [v15 intrinsicContentSize];
  }

  else
  {
    v16 = 0.0;
  }

  v17 = 52.0;
  if (!*(v6 + 21))
  {
    v17 = v11;
  }

  if (v11 > v14)
  {
    v18 = v11;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18 - v16 + v17;
  [v0 layoutMargins];
  sub_AB9E60();
  v21 = v20;
  sub_E8C4C(v6);
  return v19 + v21;
}

id sub_E5F1C()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin(v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14.receiver = v0;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "music_inheritedLayoutInsetsDidChange");
  v5 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  sub_E8BA0(v0 + v5, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260);
  swift_dynamicCast();
  v6 = v4[*(v2 + 72)];
  sub_E8C4C(v4);
  if (v6)
  {
    if (v6 == 1)
    {
      return [v0 setPreservesSuperviewLayoutMargins:1];
    }

    [v0 setPreservesSuperviewLayoutMargins:0];
    [v0 music_inheritedLayoutInsets];
  }

  else
  {
    [v0 setPreservesSuperviewLayoutMargins:0];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  return [v0 setLayoutMargins:{top, left, bottom, right}];
}

id sub_E60D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  v4 = __chkstk_darwin(v3);
  v6 = v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = (v132 - v7);
  v143.receiver = v1;
  v143.super_class = ObjectType;
  objc_msgSendSuper2(&v143, "layoutSubviews");
  v9 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  sub_E8BA0(&v1[v9], v142);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260);
  swift_dynamicCast();
  sub_E8BA0(&v1[v9], v142);
  swift_dynamicCast();
  v10 = v6[160];
  if (v10 == 4)
  {
    LOBYTE(v10) = sub_E76D8(v6);
  }

  sub_E8C4C(v6);
  v11 = [v1 traitCollection];
  [v11 displayScale];
  v135 = v12;
  v13 = COERCE_DOUBLE([v1 effectiveUserInterfaceLayoutDirection]);
  [v1 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v1 layoutMargins];
  v23 = v22;
  v136 = v15;
  v140 = v19;
  v141 = v17;
  v139 = v21;
  v133 = v24;
  v26 = UIEdgeInsetsInsetRect(v15, v17, v19, v21, v25, v22);
  v28 = v27;
  v134 = v29;
  v30 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_topHairlineView;
  v31 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_topHairlineView];
  if (*(v8 + v3[19]) == 1)
  {
    if (v31)
    {
      v32 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_topHairlineView];
    }

    else
    {
      v33 = v11;
      v34 = [objc_allocWithZone(UIView) init];
      v35 = qword_DE6C70;
      v32 = v34;
      if (v35 != -1)
      {
        swift_once();
      }

      [v32 setBackgroundColor:qword_E718B0];
      [v1 addSubview:v32];
      v36 = *&v1[v30];
      *&v1[v30] = v32;

      v31 = 0;
      v11 = v33;
    }

    v37 = v31;
    sub_ABA490();
    [v32 setFrame:?];
  }

  else if (v31)
  {
    [v31 removeFromSuperview];
  }

  v38 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_bottomHairlineView;
  v39 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_bottomHairlineView];
  v40 = *(v8 + v3[22]) == 1;
  v137 = v26;
  v138 = v28;
  if (v40)
  {
    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v42 = v11;
      v43 = [objc_allocWithZone(UIView) init];
      v44 = qword_DE6C70;
      v41 = v43;
      if (v44 != -1)
      {
        swift_once();
      }

      [v41 setBackgroundColor:qword_E718B0];
      [v1 addSubview:v41];
      v45 = *&v1[v38];
      *&v1[v38] = v41;

      v39 = 0;
      v11 = v42;
    }

    v46 = v140;
    v47 = v140 - v23;
    if (!*(v8 + v3[23]))
    {
      v47 = v140;
    }

    v48 = v136;
    if (*(v8 + v3[23]))
    {
      v49 = v23;
    }

    else
    {
      v49 = v136;
    }

    if (*(v8 + v3[24]))
    {
      v50 = v47 - v133;
    }

    else
    {
      v50 = v47;
    }

    v51 = 1.0 / v135;
    v52 = v39;
    v144.origin.x = v48;
    v53 = v141;
    v144.origin.y = v141;
    v144.size.width = v46;
    v144.size.height = v139;
    CGRectGetMaxY(v144);
    v145.origin.x = v49;
    v145.origin.y = v53;
    v145.size.width = v50;
    v145.size.height = v51;
    CGRectGetHeight(v145);
    sub_ABA490();
    [v41 setFrame:?];

    v26 = v137;
    v28 = v138;
  }

  else if (v39)
  {
    [v39 removeFromSuperview];
  }

  v54 = dbl_AFD140[v10];
  v55 = sub_E40E8(off_CF87B0[v10]);
  v56 = v3[25];
  v57 = *(v8 + v56);
  if (*(v8 + v56))
  {
    v58 = v54;
  }

  else
  {
    v58 = 0.0;
  }

  v59 = v134 - v58;
  v60 = v8[21];
  v134 = v134 - v58;
  if (v60)
  {
    v61 = sub_E53CC();
    v62 = *(v61 + 80);
    v63 = *(v61 + 88);
    v64 = v11;
    v65 = v13;
    v66 = v55;
    *(v61 + 80) = vdupq_n_s64(0x4044000000000000uLL);
    sub_75614(v62, v63);
    v146.origin.x = v26;
    v146.origin.y = v58;
    v146.size.width = v28;
    v146.size.height = v59;
    CGRectGetMinX(v146);
    v147.origin.x = v26;
    v147.origin.y = v58;
    v147.size.width = v28;
    v147.size.height = v59;
    CGRectGetMinY(v147);
    sub_ABA470();
    v67 = [objc_opt_self() defaultMetrics];
    [v67 scaledValueForValue:2.0];

    v55 = v66;
    v13 = v65;
    v11 = v64;
    v68 = sub_76368(0, 0, 1);
    v69 = v137;
    v70 = v138;
    sub_ABA490();
    sub_76B28(v71, v72, v73, v74);

    v75 = v68 + 0.0 + 12.0;
    v26 = v69 + v75;
    v28 = v70 - v75;
  }

  v76 = &selRef__authenticateReturningError_;
  if (*(v8 + v3[17]))
  {
    v77 = v8[19];
    v78 = v8[18] & 0xFFFFFFFFFFFFLL;
    if ((v77 & 0x2000000000000000) != 0)
    {
      v78 = HIBYTE(v77) & 0xF;
    }

    v79 = v134;
    if (v78)
    {
      v80 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton];
      if (v80)
      {
        v135 = v13;
        v81 = v55;
        v82 = v80;
        [v82 sizeThatFits:{v28, v79}];
        v84 = v83;
        v132[1] = v85;
        v148.origin.x = v26;
        v148.origin.y = v58;
        v148.size.width = v28;
        v148.size.height = v79;
        MaxX = CGRectGetMaxX(v148);
        v138 = v84;
        v133 = MaxX - v84;
        v149.origin.x = v26;
        v149.origin.y = v58;
        v149.size.width = v28;
        v149.size.height = v79;
        CGRectGetMinY(v149);
        [v55 _firstBaselineOffsetFromTop];
        v87 = [v82 titleLabel];
        if (v87)
        {
          v88 = v87;
          [v87 _baselineOffsetFromBottom];
          [v82 frame];
          CGRectGetHeight(v150);
          v76 = &selRef__authenticateReturningError_;
          [v88 frame];
          CGRectGetMaxY(v151);

          v55 = v81;
        }

        sub_ABA490();
        sub_ABA490();
        [v82 setFrame:?];

        v28 = v28 - (v138 + 10.0);
      }
    }
  }

  else
  {
    v79 = v134;
  }

  v90 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel);
  [v90 v76[307]];
  v92 = v91;

  v152.origin.x = v26;
  v152.origin.y = v58;
  v152.size.width = v28;
  v152.size.height = v79;
  MinX = CGRectGetMinX(v152);
  v153.origin.x = v26;
  v153.origin.y = v58;
  v153.size.width = v28;
  v153.size.height = v79;
  MinY = CGRectGetMinY(v153);
  v154.origin.x = v26;
  v154.origin.y = v58;
  v138 = v28;
  v154.size.width = v28;
  v154.size.height = v79;
  Width = CGRectGetWidth(v154);
  v137 = v26;
  if (v57)
  {
    if (*(v8 + v3[27]))
    {
      MinY = MinY + 12.0;
    }

    v96 = 2.0;
  }

  else
  {
    v96 = 0.0;
  }

  v97 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel];
  sub_ABA490();
  [v97 setFrame:?];

  v155.origin.x = MinX;
  v155.origin.y = MinY;
  v155.size.width = Width;
  v155.size.height = v92;
  MaxY = CGRectGetMaxY(v155);
  v156.origin.x = MinX;
  v156.origin.y = MinY;
  v156.size.width = Width;
  v156.size.height = v92;
  v99 = v79 - CGRectGetMaxY(v156);
  if (v10 == 1)
  {
    v100 = v96 + MaxY;
  }

  else
  {
    v100 = MaxY;
  }

  if (v10 == 1)
  {
    v101 = v99 - v96;
  }

  else
  {
    v101 = v99;
  }

  v102 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel);
  v103 = v138;
  [v102 v76[307]];

  v104 = v137;
  v157.origin.x = v137;
  v157.origin.y = v100;
  v157.size.width = v103;
  v157.size.height = v101;
  CGRectGetMinX(v157);
  v158.origin.x = v104;
  v158.origin.y = v100;
  v158.size.width = v103;
  v158.size.height = v101;
  CGRectGetMinY(v158);
  v159.origin.x = v104;
  v159.origin.y = v100;
  v159.size.width = v103;
  v159.size.height = v101;
  CGRectGetWidth(v159);
  v105 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel];
  sub_ABA490();
  [v105 setFrame:?];

  if (!*(v8 + v3[16]))
  {
    goto LABEL_64;
  }

  v106 = v8[7];
  v107 = v8[6] & 0xFFFFFFFFFFFFLL;
  if ((v106 & 0x2000000000000000) != 0)
  {
    v107 = HIBYTE(v106) & 0xF;
  }

  if (!v107 || (sub_E6E94(v55) & 1) == 0)
  {
LABEL_64:
    v131 = sub_E5474();
    [v131 setHidden:1];
LABEL_65:

    return sub_E8C4C(v8);
  }

  v108 = sub_E5474();
  [v108 v76[307]];

  v109 = v55;
  [v109 frame];
  [v109 setFrame:?];
  [v109 _firstBaselineOffsetFromTop];
  [v109 _baselineOffsetFromBottom];
  result = [v109 font];
  if (result)
  {
    v111 = result;
    [result lineHeight];

    [v109 frame];
    v113 = v112;
    v115 = v114;
    v117 = v116;
    v119 = v118;

    v160.origin.x = v113;
    v160.origin.y = v115;
    v160.size.width = v117;
    v160.size.height = v119;
    CGRectGetMaxX(v160);
    [v109 frame];
    v121 = v120;
    v123 = v122;
    v125 = v124;
    v127 = v126;

    v161.origin.x = v121;
    v161.origin.y = v123;
    v161.size.width = v125;
    v161.size.height = v127;
    CGRectGetMaxY(v161);
    v128 = [v11 preferredContentSizeCategory];
    LOBYTE(v111) = sub_ABA330();

    if (v111)
    {
      v129 = [objc_opt_self() defaultMetrics];
      [v129 scaledValueForValue:1.0];
    }

    v130 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___chevronImageView;
    [*&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___chevronImageView] setHidden:0];
    v131 = *&v1[v130];
    sub_ABA490();
    [v131 setFrame:?];
    goto LABEL_65;
  }

  __break(1u);
  return result;
}

id sub_E6E94(void *a1)
{
  result = [a1 text];
  if (result)
  {
    v3 = result;
    v4 = sub_AB92A0();
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6 && (v7 = [a1 font]) != 0)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(NSStringDrawingContext) init];
      [v9 setWantsBaselineOffset:1];
      [v9 setMaximumNumberOfLines:0];
      [a1 bounds];
      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF4EC0;
      *(inited + 32) = NSFontAttributeName;
      *(inited + 64) = sub_13C80(0, &qword_DE6EE0);
      *(inited + 40) = v8;
      v13 = NSFontAttributeName;
      v14 = v8;
      sub_96EB8(inited);
      swift_setDeallocating();
      sub_12E1C(inited + 32, &qword_DE6EE8);
      type metadata accessor for Key(0);
      sub_E8C04(&qword_DE6EF0, type metadata accessor for Key);
      isa = sub_AB8FD0().super.isa;

      [v3 boundingRectWithSize:1 options:isa attributes:v9 context:{v11, 1.79769313e308}];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v34.origin.x = v17;
      v34.origin.y = v19;
      v34.size.width = v21;
      v34.size.height = v23;
      Height = CGRectGetHeight(v34);
      [a1 _firstBaselineOffsetFromTop];
      v26 = v25;
      [a1 _baselineOffsetFromBottom];
      v28 = v27;
      result = [a1 font];
      if (result)
      {
        v29 = result;
        v30 = v26 + v28;
        [result lineHeight];
        v32 = v31;

        if (v30 > v32)
        {
          v32 = v30;
        }

        v33 = [a1 numberOfLines];

        return (v32 * v33 < Height);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_E726C()
{
  v1 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin(v1);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  sub_E8BA0(v0 + v4, &v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260);
  swift_dynamicCast();
  v5 = v3[1];
  v22 = *v3;
  v23[0] = v5;
  v6 = v3[7];
  v23[1] = v3[6];
  v23[2] = v6;
  v7 = v3[13];
  v23[3] = v3[12];
  v23[4] = v7;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_2:
  if (v9 <= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11 + 1;
  v13 = &v23[2 * v9];
  while (1)
  {
    if (v9 == 3)
    {
      swift_arrayDestroy();
      v24 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
      sub_2ECD4();
      v20 = sub_AB9140();

      sub_E8C4C(v3);
      return v20;
    }

    if (v12 == ++v9)
    {
      break;
    }

    v15 = *(v13 - 1);
    v14 = *v13;
    v13 += 2;
    v16 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v16 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_6B0F0(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v18 = *(v10 + 2);
      v17 = *(v10 + 3);
      if (v18 >= v17 >> 1)
      {
        result = sub_6B0F0((v17 > 1), v18 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v18 + 1;
      v19 = &v10[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v14;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

UIAccessibilityTraits sub_E74F0()
{
  v1 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v13[-v5];
  v7 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  sub_E8BA0(v0 + v7, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260);
  swift_dynamicCast();
  v8 = v6[160];
  if (v8 == 4)
  {
    LOBYTE(v8) = sub_E76D8(v6);
  }

  sub_E8C4C(v6);
  if (v8 != 3)
  {
    sub_E8BA0(v0 + v7, v14);
    swift_dynamicCast();
    if (*&v4[*(v1 + 64)])
    {
      goto LABEL_6;
    }

    if (!*&v4[*(v1 + 68)])
    {
      goto LABEL_13;
    }

    v10 = *(v4 + 19);
    v11 = *(v4 + 18) & 0xFFFFFFFFFFFFLL;
    if ((v10 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(v10) & 0xF;
    }

    if (v11)
    {
LABEL_6:
      v9 = UIAccessibilityTraitButton;
      if (UIAccessibilityTraitButton)
      {
        if ((UIAccessibilityTraitHeader & ~UIAccessibilityTraitButton) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (!UIAccessibilityTraitHeader)
      {
        v9 = 0;
        goto LABEL_17;
      }

      v9 = UIAccessibilityTraitHeader | UIAccessibilityTraitButton;
    }

    else
    {
LABEL_13:
      v9 = UIAccessibilityTraitHeader;
    }

LABEL_17:
    sub_E8C4C(v4);
    return v9;
  }

  return UIAccessibilityTraitNone;
}

uint64_t sub_E76D8(void *a1)
{
  v1 = a1[1];
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  v4 = a1[6];
  v3 = a1[7];
  if (v2)
  {
    v5 = HIBYTE(v3) & 0xF;
    v6 = v4 & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v7 = v6;
    }

    if (v7)
    {
      return 2;
    }
  }

  else
  {
    v5 = HIBYTE(v3) & 0xF;
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = a1[13];
  v11 = a1[12] & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v10) & 0xF;
  }

  return v11 != 0;
}

void sub_E774C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer;
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer];
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

LABEL_7:
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = sub_13C80(0, &qword_DEE998);
    v11 = v5;

    v12 = UIGestureRecognizerHandling<>.addHandler(_:)(sub_E8E44, v9, v10);

    *&v2[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizerHandler] = v12;

    [v2 addGestureRecognizer:v11];

    if (!a1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    sub_13C80(0, &qword_DEE998);
    v6 = v5;
    v7 = a1;
    v8 = sub_ABA790();

    if (v8)
    {
      return;
    }

    v5 = *&v2[v4];
    if (v5)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v14 = a1;
  [v2 removeGestureRecognizer:?];
  if (*&v2[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizerHandler])
  {
    sub_13C80(0, &qword_DEE998);

    UIGestureRecognizerHandling<>.removeHandler(_:)(v13);
  }

  else
  {
  }
}

void sub_E7960()
{
  v0 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin(v0);
  v2 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong superview];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for CollectionViewSection.SectionHeaderView(0);
      v7 = swift_dynamicCastClass();
      if (!v7)
      {

        goto LABEL_9;
      }

      v8 = v7;
      v9 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
      swift_beginAccess();
      sub_E8BA0(v4 + v9, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260);
      swift_dynamicCast();
      v10 = *&v2[*(v0 + 64)];
      sub_307CC(v10);
      sub_E8C4C(v2);
      if (v10)
      {
        v10(v8);

        sub_17654(v10);
LABEL_9:

        return;
      }
    }

    v6 = v4;
    goto LABEL_9;
  }
}

void sub_E7AEC()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer);
}

void sub_E7CA4(void *a1, uint64_t a2, void *a3, void *a4, SEL *a5, void *a6)
{
  sub_13C80(0, &qword_DEE988);
  sub_E8D54();
  sub_AB9B40();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  isa = sub_AB9B30().super.isa;
  v17.receiver = v13;
  v17.super_class = type metadata accessor for TapGestureRecognizer();
  objc_msgSendSuper2(&v17, *a5, isa, v12);

  v15 = *&v13[*a6];
  if (v15)
  {

    v15(v16);
    sub_17654(v15);
  }
}

id sub_E7E94(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer_onTouchDown];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer_onTouchUp];
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_15F84(a1, v17, &unk_DE8E40);
  v7 = v18;
  if (v18)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v9 = *(v7 - 8);
    __chkstk_darwin(v8);
    v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_ABB3A0();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for TapGestureRecognizer();
  v16.receiver = v2;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, "initWithTarget:action:", v12, a2);
  sub_12E1C(a1, &unk_DE8E40);
  swift_unknownObjectRelease();
  return v14;
}

id sub_E80C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_E819C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_ABA680();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_E825C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_ABA680();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_E8300()
{
  sub_E8440();
  if (v0 <= 0x3F)
  {
    sub_E8490();
    if (v1 <= 0x3F)
    {
      sub_ABA680();
      if (v2 <= 0x3F)
      {
        sub_E84F8();
        if (v3 <= 0x3F)
        {
          sub_E8550();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_E8440()
{
  if (!qword_DEE8C0)
  {
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_DEE8C0);
    }
  }
}

void sub_E8490()
{
  if (!qword_DEB670)
  {
    sub_13C80(255, &qword_E04530);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_DEB670);
    }
  }
}

void sub_E84F8()
{
  if (!qword_DEE8C8)
  {
    type metadata accessor for Artwork.CachingReference();
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_DEE8C8);
    }
  }
}

void sub_E8550()
{
  if (!qword_DEC940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E07D90);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_DEC940);
    }
  }
}

uint64_t getEnumTagSinglePayload for ImpressionTracker.CalculationRule(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImpressionTracker.CalculationRule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_E8724(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_E876C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_E87C4()
{
  result = qword_DEE958;
  if (!qword_DEE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE958);
  }

  return result;
}

unint64_t sub_E881C()
{
  result = qword_DEE960;
  if (!qword_DEE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE960);
  }

  return result;
}

unint64_t sub_E8874()
{
  result = qword_DEE968;
  if (!qword_DEE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE968);
  }

  return result;
}

unint64_t sub_E88CC()
{
  result = qword_DEE970;
  if (!qword_DEE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE970);
  }

  return result;
}

uint64_t sub_E8920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_E8BA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_E8C04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E8C4C(uint64_t a1)
{
  v2 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_E8CA8(void *a1)
{
  [a1 invalidateIntrinsicContentSize];

  return [a1 setNeedsLayout];
}

uint64_t sub_E8CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_E8D54()
{
  result = qword_DEE990;
  if (!qword_DEE990)
  {
    sub_13C80(255, &qword_DEE988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE990);
  }

  return result;
}

uint64_t sub_E8DBC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_E8E4C()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithTextStyle:UIFontTextStyleTitle2 scale:1];
  v2 = [v0 configurationWithWeight:7];
  v3 = [v1 configurationByApplyingConfiguration:v2];

  v4 = v3;
  v5 = sub_AB9260();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {
    v7 = [objc_opt_self() secondaryLabelColor];
    v8 = [v6 flattenedImageWithColor:v7];
    v9 = [v8 imageWithRenderingMode:1];

    return v9;
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

void sub_E9034()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___chevronImageView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___artworkComponent) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_topHairlineView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_bottomHairlineView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizerHandler) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_E90FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v12 = &v20 - v11;
  sub_13C80(0, &qword_DE8ED0);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_15F84(a1, v12, &qword_DEEAA0);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_36B0C(v12, v17 + v14, &qword_DEEAA0);
  *(v17 + v15) = v13;
  v18 = (v17 + v16);
  *v18 = v21;
  v18[1] = a5;
  *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = a2;

  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_EC64C, v17);
}

void sub_E92E4(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v30 = a3;
  v31 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_AB31C0();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  sub_15F84(a1, v8, &qword_DEEAA0);
  v19 = type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor.OutputURLDescriptor(0);
  if ((*(*(v19 - 8) + 48))(v8, 1, v19) == 1)
  {
    sub_12E1C(v8, &qword_DEEAA0);
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_4:
    sub_12E1C(v11, &unk_DF2AE0);
LABEL_5:
    v30(0, v29);
    return;
  }

  v20 = *(v13 + 16);
  v20(v11, v8, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_EBC8C(v8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  (*(v13 + 32))(v18, v11, v12);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v13 + 8))(v18, v12);
    goto LABEL_5;
  }

  v29 = Strong;
  v20(v16, v18, v12);
  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 16) = v30;
  *(v22 + 24) = v23;
  v24 = type metadata accessor for SocialOnboardingNetworkRegistrationController.Operation(0);
  v25 = objc_allocWithZone(v24);
  v20(&v25[OBJC_IVAR____TtCC16MusicApplication45SocialOnboardingNetworkRegistrationControllerP33_A38BE87C3BD3A87290E3ECE22270D9819Operation_registrationURL], v16, v12);
  v26 = &v25[OBJC_IVAR____TtCC16MusicApplication45SocialOnboardingNetworkRegistrationControllerP33_A38BE87C3BD3A87290E3ECE22270D9819Operation_responseHandler];
  *v26 = sub_EBD20;
  v26[1] = v22;
  v32.receiver = v25;
  v32.super_class = v24;

  v27 = objc_msgSendSuper2(&v32, "init");
  v28 = *(v13 + 8);
  v28(v16, v12);
  [*(v29 + 16) addOperation:v27];
  v28(v18, v12);
}

uint64_t sub_E9708(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_13C80(0, &qword_DE8ED0);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a1;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;

  v13 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_EA660, v12);
}

void sub_E97E4(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4, void (*a5)(char *, char *, uint64_t), uint64_t a6)
{
  v46 = a5;
  v47 = a6;
  v50 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v8 - 8);
  v10 = v43 - v9;
  v11 = sub_AB31C0();
  v12 = *(v11 - 8);
  v48 = v11;
  v49 = v12;
  v13 = __chkstk_darwin(v11);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E07D40);
  __chkstk_darwin(v18 - 8);
  v20 = v43 - v19;
  v21 = sub_AB2CE0();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v26 = Strong;
  v27 = [a2 dictionaryForBagKey:MPStoreSocialBagKey];
  if (!v27)
  {

    goto LABEL_12;
  }

  v45 = a4;
  v28 = v27;
  v29 = sub_AB8FF0();

  v52 = 0xD000000000000018;
  v53 = 0x8000000000B50510;
  sub_ABAD10();
  if (!*(v29 + 16) || (v44 = v29, v30 = sub_2EC004(v54), (v31 & 1) == 0))
  {
    sub_8085C(v54);
    goto LABEL_9;
  }

  sub_808B0(*(v44 + 56) + 32 * v30, v55);
  sub_8085C(v54);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v32 = v53;
  sub_AB2CC0();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_12E1C(v20, &unk_E07D40);

LABEL_10:

LABEL_12:
    v50(0, 0);
    return;
  }

  v43[1] = v32;
  (*(v22 + 32))(v24, v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEA98);
  v33 = v22;
  sub_AB2C10();
  *(swift_allocObject() + 16) = xmmword_AF4EC0;
  sub_AB2BE0();
  sub_AB2C30();
  sub_AB2C50();
  v35 = v48;
  v34 = v49;
  if ((*(v49 + 48))(v10, 1, v48) == 1)
  {
    sub_12E1C(v10, &unk_DF2AE0);
    v50(0, 0);
    (*(v33 + 8))(v24, v21);
  }

  else
  {
    (*(v34 + 32))(v17, v10, v35);
    v47 = v33;
    v46 = *(v34 + 16);
    v46(v15, v17, v35);
    v36 = swift_allocObject();
    v37 = v45;
    *(v36 + 16) = v50;
    *(v36 + 24) = v37;
    v38 = type metadata accessor for SocialOnboardingNetworkRegistrationController.Operation(0);
    v39 = objc_allocWithZone(v38);
    v46(&v39[OBJC_IVAR____TtCC16MusicApplication45SocialOnboardingNetworkRegistrationControllerP33_A38BE87C3BD3A87290E3ECE22270D9819Operation_registrationURL], v15, v35);
    v40 = &v39[OBJC_IVAR____TtCC16MusicApplication45SocialOnboardingNetworkRegistrationControllerP33_A38BE87C3BD3A87290E3ECE22270D9819Operation_responseHandler];
    *v40 = sub_EB074;
    v40[1] = v36;
    v51.receiver = v39;
    v51.super_class = v38;

    v41 = objc_msgSendSuper2(&v51, "init");
    v42 = *(v49 + 8);
    v42(v15, v35);
    [*(v26 + 16) addOperation:v41];
    v42(v17, v35);
    (*(v47 + 8))(v24, v21);
  }
}

uint64_t sub_E9EAC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  sub_13C80(0, &qword_DE8ED0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(a6, v11);
}

uint64_t sub_E9F68()
{
  v1 = v0;
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB2A90();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &unk_DF2B00);
  v10 = static ICUserIdentity.active.getter();
  v11 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v10];

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtCC16MusicApplication45SocialOnboardingNetworkRegistrationControllerP33_A38BE87C3BD3A87290E3ECE22270D9819Operation_registrationURL, v2);
  sub_AB2A50();
  v12 = objc_allocWithZone(ICStoreURLRequest);
  v13 = v11;
  v14 = sub_AB2A30();
  v15 = [v12 initWithURLRequest:v14 requestContext:v13];
  (*(v7 + 8))(v9, v6);

  sub_13C80(0, &qword_E07CC0);
  v16 = static ICURLSessionManager.musicSession.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  v18 = v1;
  ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(v15, sub_EBFD4, v17);
}

void sub_EA1F8(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = [a1 urlResponse];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7 && [v7 statusCode] != stru_B8.segname)
      {
        if (!a2)
        {
          sub_EBFDC();
          swift_allocError();
        }

        goto LABEL_7;
      }
    }
  }

  if (a2)
  {
LABEL_7:
    swift_errorRetain();
    v8 = sub_AB3040();
    goto LABEL_9;
  }

  v8 = 0;
LABEL_9:
  v9 = v8;
  [a3 finishWithError:?];
}

id sub_EA438()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SocialOnboardingNetworkRegistrationController.Operation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_EA4F0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_EA574()
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

uint64_t sub_EA610()
{

  return swift_deallocObject();
}

uint64_t sub_EA670@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_AB2C10();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E07D40);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_AB2CE0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2C40();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_12E1C(v13, &unk_E07D40);
LABEL_13:
    v33 = v42;
    v34 = sub_AB31C0();
    return (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  (*(v15 + 32))(v17, v13, v14);
  v18 = sub_AB2C20();
  v19 = v15;
  if (!v18)
  {
    (*(v15 + 8))(v17, v14);
    goto LABEL_13;
  }

  v20 = v18;
  v38 = v17;
  v39 = v19;
  v40 = v14;
  v37 = v8;
  v21 = sub_AB31C0();
  v22 = *(*(v21 - 8) + 56);
  v41 = v10;
  result = v22(v10, 1, 1, v21);
  v24 = *(v20 + 16);
  if (v24)
  {
    v25 = 0;
    v43 = v2 + 16;
    v26 = (v2 + 8);
    while (v25 < *(v20 + 16))
    {
      (*(v2 + 16))(v4, v20 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v25, v1);
      sub_AB2BF0();
      v27 = sub_AB9370();
      v29 = v28;

      if (v27 == 0x7463657269646572 && v29 == 0xEC0000006972755FLL)
      {

LABEL_15:

        sub_AB2C00();
        v35 = v37;
        sub_AB3180();
        (*v26)(v4, v1);
        v32 = v41;
        sub_12E1C(v41, &unk_DF2AE0);
        (*(v39 + 8))(v38, v40);

        sub_36B0C(v35, v32, &unk_DF2AE0);
        v31 = v42;
        return sub_36B0C(v32, v31, &unk_DF2AE0);
      }

      v30 = sub_ABB3C0();

      if (v30)
      {
        goto LABEL_15;
      }

      ++v25;
      result = (*v26)(v4, v1);
      if (v24 == v25)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    (*(v39 + 8))(v38, v40);

    v32 = v41;
    v31 = v42;
    return sub_36B0C(v32, v31, &unk_DF2AE0);
  }

  return result;
}

uint64_t sub_EAB94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v9 = type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor.OutputURLDescriptor(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v38 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA0);
  __chkstk_darwin(v15 - 8);
  v17 = &v34 - v16;
  if (a2)
  {
    v34 = a1;
    v35 = v9;
    v36 = a5;
    v37 = a4;
    v18 = sub_AB3040();
    v19 = [v18 domain];
    v20 = sub_AB92A0();
    v22 = v21;
    if (v20 == sub_AB92A0() && v22 == v23)
    {
    }

    else
    {
      v25 = sub_ABB3C0();

      if ((v25 & 1) == 0)
      {

LABEL_11:
        a4 = v37;
        a1 = v34;
        v9 = v35;
        goto LABEL_12;
      }
    }

    v26 = [v18 code];

    if (v26 == &dword_0 + 1)
    {
      a2 = 0;
    }

    goto LABEL_11;
  }

LABEL_12:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  sub_15F84(a1, v14, &unk_DF2AE0);
  v29 = sub_AB31C0();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v14, 1, v29) == 1)
  {
    sub_12E1C(v14, &unk_DF2AE0);
    v31 = 1;
  }

  else
  {
    v32 = v38;
    (*(v30 + 32))(v38, v14, v29);
    sub_EBC28(v32, v17);
    v31 = 0;
  }

  (*(v10 + 56))(v17, v31, 1, v9);
  a4(v17, a2);
  return sub_12E1C(v17, &qword_DEEAA0);
}

void sub_EAF20(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_AB3150();
    v10 = sub_AB31C0();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_AB31C0();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);
  sub_12E1C(v8, &unk_DF2AE0);
}

void sub_EB0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v94 = a2;
  v88 = a1;
  v8 = sub_AB35C0();
  __chkstk_darwin(v8 - 8);
  v80 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB9250();
  __chkstk_darwin(v10 - 8);
  v79 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB9230();
  __chkstk_darwin(v12 - 8);
  v78 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA0);
  v83 = *(v14 - 8);
  v15 = __chkstk_darwin(v14 - 8);
  v84 = v16;
  v85 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v89 = &v76 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA8);
  v19 = __chkstk_darwin(v18);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v76 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v24 - 8);
  v92 = &v76 - v25;
  v26 = sub_AB31C0();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v87 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = swift_allocObject();
  v93 = a3;
  v29[2] = a3;
  v29[3] = a4;
  v30 = v94;
  v86 = a4;
  v90 = v29;
  v95 = a5;
  v29[4] = a5;
  v31 = *(type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor(0) + 20);
  sub_15F84(v30 + v31, v23, &qword_DEEAA8);
  v32 = *(v18 + 48);
  v33 = *(v27 + 48);
  v91 = v23;
  v34 = v33(&v23[v32], 1, v26);
  v82 = v21;
  v81 = v18;
  if (v34 == 1)
  {
    v77 = v31;
    sub_15F84(v30 + v31, v21, &qword_DEEAA8);
    v35 = *(v18 + 48);

    sub_EA670(v92);
    sub_12E1C(&v21[v35], &unk_DF2AE0);
    v76 = v27;
    v36 = *(v27 + 8);
    v36(v21, v26);
    if (v33(&v91[v32], 1, v26) == 1)
    {
      v37 = v92;
      v38 = v26;
      v31 = v77;
      v27 = v76;
      v39 = v91;
      goto LABEL_7;
    }

    v40 = v91;
    sub_12E1C(&v91[v32], &unk_DF2AE0);
    v37 = v92;
    v38 = v26;
    v31 = v77;
    v27 = v76;
  }

  else
  {
    v40 = v91;
    v37 = v92;
    (*(v27 + 32))(v92, &v91[v32], v26);
    (*(v27 + 56))(v37, 0, 1, v26);
    v38 = v26;
    v36 = *(v27 + 8);
  }

  v39 = v40;
LABEL_7:
  v36(v39, v38);
  if (v33(v37, 1, v38) == 1)
  {
    sub_12E1C(v37, &unk_DF2AE0);
    v41 = type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor.OutputURLDescriptor(0);
    v42 = v89;
    (*(*(v41 - 8) + 56))(v89, 1, 1, v41);
    v43 = [objc_allocWithZone(NSError) initWithDomain:MPStoreSocialErrorDomain code:-3002 userInfo:0];
    v94 = sub_13C80(0, &qword_DE8ED0);
    v44 = swift_allocObject();
    swift_weakInit();
    v45 = v95;
    v46 = v42;
    v47 = v85;
    sub_15F84(v46, v85, &qword_DEEAA0);
    v48 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v49 = (v84 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    sub_36B0C(v47, v51 + v48, &qword_DEEAA0);
    *(v51 + v49) = v44;
    v52 = (v51 + v50);
    *v52 = v86;
    v52[1] = v45;
    *(v51 + ((v50 + 23) & 0xFFFFFFFFFFFFFFF8)) = v43;

    v53 = v43;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_EBBC8, v51);

    sub_12E1C(v89, &qword_DEEAA0);
  }

  else
  {
    v54 = v87;
    (*(v27 + 32))(v87, v37, v38);
    v55 = v94;
    v56 = v82;
    sub_15F84(v94 + v31, v82, &qword_DEEAA8);
    v57 = *(v81 + 48);
    v58 = objc_allocWithZone(MSCLOAuthWebViewController);
    v59 = v36;
    sub_AB30F0(v60);
    v62 = v61;
    sub_AB30F0(v63);
    v65 = v64;
    v66 = [v58 initWithAuthURL:v62 redirectURL:v64];
    v93 = v38;
    v95 = v59;
    v59(v56, v38);

    sub_12E1C(v56 + v57, &unk_DF2AE0);
    v67 = objc_allocWithZone(UINavigationController);
    v68 = v66;
    v69 = [v67 initWithRootViewController:v68];
    v70 = *(v55 + 24);
    v71 = v68;
    if (v70)
    {
      v72 = *(v55 + 16);
      sub_AB9220();
      v97._countAndFlagsBits = 0x207463656E6E6F43;
      v97._object = 0xE800000000000000;
      sub_AB9210(v97);
      v98._countAndFlagsBits = v72;
      v98._object = v70;
      sub_AB9200(v98);
      v99._countAndFlagsBits = 0;
      v99._object = 0xE000000000000000;
      sub_AB9210(v99);
      sub_AB9240();
      sub_AB3550();
      sub_AB9320();
      v71 = sub_AB9260();

      [v68 setTitle:v71];
    }

    v73 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v74 = swift_allocObject();
    v74[2] = v73;
    v74[3] = sub_EBB40;
    v74[4] = v90;
    aBlock[4] = sub_EBC04;
    aBlock[5] = v74;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_EAF20;
    aBlock[3] = &block_descriptor_29;
    v75 = _Block_copy(aBlock);

    [v68 setCompletionBlock:v75];
    _Block_release(v75);
    [v69 setModalPresentationStyle:2];
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v69, 0, 1, 0, 0);
    [v68 startAuthentication];

    v95(v54, v93);
  }
}

uint64_t sub_EBB8C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_EBBCC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_EBC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor.OutputURLDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_EBC8C(uint64_t a1)
{
  v2 = type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor.OutputURLDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EBCE8()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_10Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor.OutputURLDescriptor(0);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3))
  {
    v4 = sub_AB31C0();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

void sub_EBEE8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);

  sub_E92E4(v0 + v2, v5, v7, v8, v6);
}

uint64_t sub_EBF9C()
{

  return swift_deallocObject();
}

unint64_t sub_EBFDC()
{
  result = qword_DEEAB0;
  if (!qword_DEEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEEAB0);
  }

  return result;
}

uint64_t sub_EC0D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_EC1A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_EC254()
{
  sub_EC2D0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_EC2D0()
{
  if (!qword_DEEBB0)
  {
    sub_AB31C0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DF2AE0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_DEEBB0);
    }
  }
}

uint64_t sub_EC350(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_EC398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_EC55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_EC5E8()
{
  result = qword_DEECD8;
  if (!qword_DEECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEECD8);
  }

  return result;
}

void sub_EC654(char a1)
{
  v2 = v1;
  [v1 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v1 traitCollection];
  v13 = &v1[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_normalizedContentOffset];
  v14 = *&v1[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_normalizedContentOffset + 8];
  v15 = -v14;
  v16 = v14 < -0.0;
  v17 = 0.0;
  if (!v16)
  {
    v17 = v15;
  }

  MaxY = v17 + *&v1[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_contentInsetAdditions + 8];
  v19 = *&v1[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_upsellBannerView];
  v55 = v12;
  if (v19)
  {
    v20 = v19;
    v21 = v20;
    if (a1)
    {
      [v20 bounds];
      Height = CGRectGetHeight(v64);
    }

    else
    {
      sub_1D4684(v9);
      Height = v23;
    }

    v65.origin.x = v5;
    v65.origin.y = v7;
    v65.size.width = v9;
    v65.size.height = v11;
    Width = CGRectGetWidth(v65);
    [v21 setFrame:{0.0, MaxY, Width, Height}];
    v66.origin.x = 0.0;
    v66.origin.y = MaxY;
    v66.size.width = Width;
    v66.size.height = Height;
    MaxY = CGRectGetMaxY(v66);

    v12 = v55;
  }

  v25 = OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_promotionalParallaxContentView;
  v26 = *&v2[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_promotionalParallaxContentView];
  if (v26)
  {
    v27 = v26;
    v67.origin.x = v5;
    v67.origin.y = v7;
    v67.size.width = v9;
    v67.size.height = v11;
    v28 = CGRectGetWidth(v67);
    v29 = sub_1A70C4(v55, v28);
    v30 = *&v2[v25];
    if (v30)
    {
      v31 = v30;
      v68.origin.x = v5;
      v68.origin.y = v7;
      v68.size.width = v9;
      v68.size.height = v11;
      v32 = CGRectGetWidth(v68);
      v33 = sub_1AAAF0(v55, v32);
    }

    else
    {
      v33 = 0.0;
    }

    v34 = *v13;
    v35 = v13[1];
    v36 = &v27[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_normalizedContentOffset];
    v37 = *&v27[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_normalizedContentOffset];
    v38 = *&v27[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_normalizedContentOffset + 8];
    *v36 = *v13;
    v36[1] = v35;
    if (*&v37 != v34 || *&v38 != v35)
    {
      sub_1A7634(v37, v38, 0);
      [v27 setNeedsLayout];
      [v27 layoutIfNeeded];
    }

    v40 = *&v27[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_baseHeight];
    *&v27[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_baseHeight] = v29;
    v57 = v40;
    if (sub_AB38D0())
    {
      v41 = &v27[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_cachedAdditionalContentStackViewSizeContext];
      *v41 = 0;
      *(v41 + 1) = 0;
      *(v41 + 2) = 0;
      v41[24] = 1;
      sub_1A7634(0, 0, 1);
      [v27 setNeedsLayout];
    }

    v69.origin.x = v5;
    v69.origin.y = v7;
    v69.size.width = v9;
    v69.size.height = v11;
    v42 = CGRectGetWidth(v69);
    v43 = v13[1];
    if (v43 <= 0.0)
    {
      v44 = v29 - v43;
      if (v33 <= 0.0)
      {
LABEL_31:
        v46 = type metadata accessor for PromotionalParallaxContentView();
        v62.receiver = v27;
        v62.super_class = v46;
        objc_msgSendSuper2(&v62, "frame");
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v61.receiver = v27;
        v61.super_class = v46;
        objc_msgSendSuper2(&v61, "setFrame:", 0.0, MaxY, v42, v44);
        type metadata accessor for CGRect(0);
        v57 = v48;
        v58 = v50;
        v59 = v52;
        v60 = v54;
        v56.receiver = v27;
        v56.super_class = v46;
        objc_msgSendSuper2(&v56, "frame");
        if (sub_AB38D0())
        {
          sub_1A7634(0, 0, 1);
        }

        return;
      }
    }

    else
    {
      v44 = v29 + 0.0;
      if (v33 <= 0.0)
      {
        goto LABEL_31;
      }
    }

    if (MaxY < 0.0)
    {
      v45 = v29 - fabs(MaxY);
      if (v33 > v45)
      {
        v44 = v33;
      }

      else
      {
        v44 = v45;
      }

      MaxY = 0.0;
    }

    goto LABEL_31;
  }
}

void sub_ECA8C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *&v2[*a2];
  *&v2[*a2] = a1;
  if (v4)
  {
    v5 = a1;
    v6 = v4;
    if ([v6 isDescendantOfView:v2])
    {
      [v6 removeFromSuperview];
    }

    v7 = *&v2[v3];
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = a1;
    v7 = a1;
    if (a1)
    {
LABEL_5:
      v8 = v7;
      [v2 addSubview:v8];
      sub_EC654(0);
    }
  }
}

char *sub_ECC34(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_promotionalParallaxContentView);
  if (v7)
  {
    v26.receiver = *(v3 + OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_promotionalParallaxContentView);
    v26.super_class = type metadata accessor for PromotionalParallaxContentView();
    v8 = v7;
    objc_msgSendSuper2(&v26, "frame");
    v27.x = a2;
    v27.y = a3;
    if (CGRectContainsPoint(v30, v27))
    {
      v9 = *&v8[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_pageHeaderContentView];
      if (v9)
      {
        v10 = v9;
        [v10 frame];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        [v8 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
        v28.x = v19;
        v28.y = v20;
        v31.origin.x = v12;
        v31.origin.y = v14;
        v31.size.width = v16;
        v31.size.height = v18;
        if (CGRectContainsPoint(v31, v28))
        {
          [v10 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
          v21 = [v10 hitTest:a1 withEvent:?];

          if (v21)
          {

            return v21;
          }
        }

        else
        {
        }
      }

      v25 = [v8 hitTest:a1 withEvent:{a2, a3, v26.receiver, v26.super_class}];

      return v25;
    }

    return 0;
  }

  v23 = *(v3 + OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_upsellBannerView);
  if (!v23)
  {
    return 0;
  }

  v24 = v23;
  [v24 frame];
  v29.x = a2;
  v29.y = a3;
  if (!CGRectContainsPoint(v32, v29))
  {

    return 0;
  }

  v25 = sub_1D455C(a1, a2, a3);

  return v25;
}

id sub_ECFF8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_promotionalParallaxContentView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_upsellBannerView] = 0;
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_normalizedContentOffset];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_contentInsetAdditions] = UIOffsetZero;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "initWithCoder:", a1);
}

void sub_ED12C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for JSSocialProfileCollectionModelRequest();
  objc_msgSendSuper2(&v13, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v12);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_profileCollection];
    v6 = *&v11[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_profileCollection];
    *&v11[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_profileCollection] = v5;
    v7 = v5;

    v8 = *&v2[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_previousResponse];
    v9 = *&v11[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_previousResponse];
    *&v11[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_previousResponse] = v8;
    v10 = v8;
  }
}

uint64_t sub_ED26C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_13C80(0, &qword_DE8ED0);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_F02BC, v12);
}

uint64_t sub_ED34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);
}

void sub_ED62C(char *a1)
{
  v165 = sub_AB7CC0();
  v163 = *(v165 - 8);
  __chkstk_darwin(v165);
  v164 = (&v159 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v183 = a1;
  v3 = *&a1[OBJC_IVAR____TtC16MusicApplicationP33_9AFC986C3EE3F16591D3B34D5D62C9B146JSSocialProfileCollectionModelRequestOperation_request];
  v167 = *&v3[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_profileCollection];
  v175 = v167;
  v169 = v3;
  isEscapingClosureAtFileLocation = [v3 itemProperties];
  v5 = &off_DF9000;
  v6 = &OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties;
  if (isEscapingClosureAtFileLocation)
  {
    v7 = type metadata accessor for JSModelSocialPersonProfileBuilder();
    v8 = objc_allocWithZone(v7);
    v8[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties] = 2;
    *&v8[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties] = isEscapingClosureAtFileLocation;
    v9 = objc_allocWithZone(MPStoreModelSocialPersonBuilder);
    v10 = isEscapingClosureAtFileLocation;
    v11 = [v9 initWithRequestedPropertySet:v10];
    if (!v11)
    {
LABEL_129:
      __break(1u);
      return;
    }

    *&v8[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder] = v11;
    v186.receiver = v8;
    v186.super_class = v7;
    v12 = objc_msgSendSuper2(&v186, "init");

    isEscapingClosureAtFileLocation = v12;
  }

  v13 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v14 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v15 = sub_AB9260();
  v171 = v13;
  [v13 appendSection:v15];

  v16 = sub_AB9260();
  v170 = v14;
  [v14 appendSection:v16];

  v184 = isEscapingClosureAtFileLocation;
  if (!v167)
  {
    goto LABEL_57;
  }

  v17 = OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_items;
  v18 = v175;
  swift_beginAccess();
  v19 = *&v18[v17];
  if (v19 >> 62)
  {
    goto LABEL_120;
  }

  v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
  if (!v20)
  {
    goto LABEL_57;
  }

LABEL_7:
  v21 = v19 & 0xC000000000000001;
  v178 = v19 + 32;
  v179 = v19 & 0xFFFFFFFFFFFFFF8;
  v168 = MPModelPropertySocialPersonPendingRequestsCount;
  v166 = &v189;
  v162 = enum case for DispatchPredicate.onQueue(_:);
  v160 = v163 + 1;
  v161 = (v163 + 13);
  v176 = v175;

  v22 = 0;
  v180 = v19;
  v181 = v20;
  v182 = (v19 & 0xC000000000000001);
  while (1)
  {
    if (v21)
    {
      v25 = sub_360924(v22, v19);
    }

    else
    {
      if (v22 >= *(v179 + 16))
      {
        goto LABEL_116;
      }

      v25 = *(v178 + 8 * v22);
    }

    v24 = v25;
    v26 = __OFADD__(v22++, 1);
    if (v26)
    {
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      v20 = sub_ABB060();
      if (!v20)
      {
        goto LABEL_57;
      }

      goto LABEL_7;
    }

    v27 = OBJC_IVAR____TtC11MusicJSCore29JSSocialProfileCollectionItem_profile;
    swift_beginAccess();
    v28 = *(v24 + v27);
    if (v28)
    {
      v29 = isEscapingClosureAtFileLocation == 0;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      goto LABEL_11;
    }

    v185 = v28;
    v30 = [v183 userIdentity];
    if (!v30)
    {
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    v31 = v30;
    v32 = v5[99];
    if (*(v32 + isEscapingClosureAtFileLocation) == 2)
    {
      v33 = *(isEscapingClosureAtFileLocation + *v6);
      v34 = [v33 properties];
      v35 = sub_AB9B40();

      v36 = sub_AB92A0();
      v38 = sub_4DFDA8(v36, v37, v35);
      v40 = v39;
      v42 = v41;

      LOBYTE(v33) = v42 != -1;
      v43 = v38;
      isEscapingClosureAtFileLocation = v184;
      v44 = v42;
      v6 = &OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties;
      sub_F01A0(v43, v40, v44);
      *(v32 + isEscapingClosureAtFileLocation) = v33;
      v20 = v181;
    }

    v45 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
    v46 = v185;
    swift_beginAccess();
    v47 = *(v46 + v45);
    if (!v47)
    {
      v23 = v24;
      v24 = v31;
LABEL_35:
      v5 = &off_DF9000;
LABEL_36:
      v21 = v182;
      goto LABEL_10;
    }

    v48 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder);
    v49 = v47;
    v50 = [v48 modelObjectWithStoreItemMetadata:v49 userIdentity:v31];
    if (!v50)
    {

      v185 = v24;
      v23 = v31;
      v24 = v49;
      goto LABEL_35;
    }

    v174 = v50;
    v173 = [v50 identifiers];
    v19 = swift_allocObject();
    v172 = v49;
    v51 = v185;
    *(v19 + 16) = isEscapingClosureAtFileLocation;
    *(v19 + 24) = v51;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_F0334;
    *(v52 + 24) = v19;
    v191 = sub_C3FB8;
    v192 = v52;
    v187 = _NSConcreteStackBlock;
    v188 = 1107296256;
    v189 = sub_41A314;
    v190 = &block_descriptor_57;
    v6 = _Block_copy(&v187);
    v185 = v51;

    v53 = isEscapingClosureAtFileLocation;

    v54 = v173;
    v5 = v174;
    v177 = [v174 copyWithIdentifiers:v173 block:v6];

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_117;
    }

    v55 = OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_collectionStyle;
    v56 = v176;
    swift_beginAccess();
    isEscapingClosureAtFileLocation = v184;
    v5 = &off_DF9000;
    v6 = &OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties;
    v20 = v181;
    v21 = v182;
    if (!v56[v55])
    {
      goto LABEL_9;
    }

    if (v56[v55] != 1)
    {
      break;
    }

    v57 = qword_DE6BE8;
    v58 = v176;
    if (v57 != -1)
    {
      swift_once();
    }

    v59 = sub_43D968(v177);

    if ((v59 & 1) == 0)
    {
      v23 = v177;
      goto LABEL_10;
    }

LABEL_9:
    v23 = v24;
    v24 = v177;
    [v171 appendItem:v177];
    [v170 appendItem:v23];
LABEL_10:

    v19 = v180;
LABEL_11:

    if (v22 == v20)
    {

LABEL_57:
      v80 = *&v169[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_previousResponse];
      if (!v80 || (type metadata accessor for JSSocialProfileCollectionModelResponse(), (v81 = swift_dynamicCastClass()) == 0) || (v61 = *(v81 + OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_pendingAppendedItems)) == 0)
      {
        v87 = 0;
        goto LABEL_125;
      }

      v82 = objc_allocWithZone(MPMutableSectionedCollection);
      v83 = v80;

      v84 = [v82 init];
      v85 = sub_AB9260();
      [v84 appendSection:v85];

      v172 = v84;
      v168 = v83;
      v180 = v61 & 0xFFFFFFFFFFFFFF8;
      if (v61 >> 62)
      {
        goto LABEL_123;
      }

      v19 = *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8));
      if (!v19)
      {
        goto LABEL_124;
      }

      goto LABEL_62;
    }
  }

  v60 = qword_DE6BE8;
  v61 = v176;
  if (v60 != -1)
  {
    swift_once();
  }

  v62 = qword_E71820;
  sub_13C80(0, &qword_DE8ED0);
  v63 = sub_ABA150();
  v64 = v164;
  isEscapingClosureAtFileLocation = v165;
  *v164 = v63;
  (*v161)(v64, v162, isEscapingClosureAtFileLocation);
  v65 = sub_AB7CF0();
  (*v160)(v64, isEscapingClosureAtFileLocation);
  if (v65)
  {
    v174 = v61;
    swift_beginAccess();
    v66 = *(v62 + 88);

    v67 = [v177 identifiers];
    v68 = [v67 universalStore];

    if (v68)
    {
      v69 = [v68 socialProfileID];
      if (v69)
      {
        v70 = v69;
        v71 = sub_AB92A0();
        v73 = v72;
        swift_unknownObjectRelease();

        if (!*(v66 + 16))
        {
          goto LABEL_8;
        }

LABEL_46:
        sub_ABB5C0();
        sub_AB93F0();
        v74 = sub_ABB610();
        v75 = -1 << *(v66 + 32);
        v76 = v74 & ~v75;
        if ((*(v66 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76))
        {
          v77 = ~v75;
          while (1)
          {
            v78 = (*(v66 + 48) + 16 * v76);
            v79 = *v78 == v71 && v78[1] == v73;
            if (v79 || (sub_ABB3C0() & 1) != 0)
            {
              break;
            }

            v76 = (v76 + 1) & v77;
            if (((*(v66 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          v23 = v177;
          isEscapingClosureAtFileLocation = v184;
          v6 = &OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties;
          v20 = v181;
          v5 = &off_DF9000;
          goto LABEL_36;
        }

LABEL_8:

        isEscapingClosureAtFileLocation = v184;
        v6 = &OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties;
        v5 = &off_DF9000;
        v20 = v181;
        v21 = v182;
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
    }

    v71 = 0;
    v73 = 0xE000000000000000;
    if (*(v66 + 16))
    {
      goto LABEL_46;
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_123:
  v19 = sub_ABB060();
  if (v19)
  {
LABEL_62:
    v6 = 0;
    v86 = v61 & 0xC000000000000001;
    v178 = v61 + 32;
    v176 = MPModelPropertySocialPersonPendingRequestsCount;
    v174 = &v189;
    v166 = (v163 + 13);
    ++v163;
    v162 = enum case for DispatchPredicate.onQueue(_:);
    v181 = v61;
    v179 = v19;
    v173 = (v61 & 0xC000000000000001);
    do
    {
      while (1)
      {
        if (v86)
        {
          v90 = sub_360924(v6, v61);
          v26 = __OFADD__(v6++, 1);
          if (v26)
          {
            goto LABEL_115;
          }
        }

        else
        {
          if (v6 >= *(v180 + 16))
          {
            goto LABEL_118;
          }

          v90 = *(v178 + 8 * v6);
          v26 = __OFADD__(v6++, 1);
          if (v26)
          {
            goto LABEL_115;
          }
        }

        v91 = OBJC_IVAR____TtC11MusicJSCore29JSSocialProfileCollectionItem_profile;
        v185 = v90;
        swift_beginAccess();
        v89 = v185;
        v92 = *(v185 + v91);
        if (v92 && isEscapingClosureAtFileLocation != 0)
        {
          break;
        }

LABEL_66:

        if (v6 == v19)
        {
          goto LABEL_124;
        }
      }

      v94 = v86;
      v182 = v92;
      v95 = [v183 userIdentity];
      if (!v95)
      {
        goto LABEL_128;
      }

      v96 = v95;
      v97 = v5[99];
      if (*(v97 + isEscapingClosureAtFileLocation) == 2)
      {
        v98 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties);
        v99 = [v98 properties];
        v100 = sub_AB9B40();

        v101 = sub_AB92A0();
        v103 = sub_4DFDA8(v101, v102, v100);
        v105 = v104;
        v107 = v106;

        v108 = v103;
        isEscapingClosureAtFileLocation = v184;
        v109 = v105;
        v5 = &off_DF9000;
        sub_F01A0(v108, v109, v107);
        *(v97 + isEscapingClosureAtFileLocation) = v107 != -1;
      }

      v110 = v5;
      v111 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
      v5 = v182;
      swift_beginAccess();
      v112 = *(v5 + v111);
      v86 = v94;
      if (!v112)
      {
        v88 = v185;
        v19 = v179;
LABEL_65:

        v89 = v96;
        v5 = v110;
        v61 = v181;
        goto LABEL_66;
      }

      v113 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder);
      v114 = v112;
      v115 = [v113 modelObjectWithStoreItemMetadata:v114 userIdentity:v96];
      if (!v115)
      {
        v128 = v185;
        v5 = v96;
        v96 = v114;
        v19 = v179;
LABEL_91:

        v88 = v182;
        goto LABEL_65;
      }

      v116 = v115;
      v177 = [v115 identifiers];
      v19 = swift_allocObject();
      v117 = v182;
      *(v19 + 16) = isEscapingClosureAtFileLocation;
      *(v19 + 24) = v117;
      v118 = swift_allocObject();
      *(v118 + 16) = sub_F01B8;
      *(v118 + 24) = v19;
      v191 = sub_57B84;
      v192 = v118;
      v187 = _NSConcreteStackBlock;
      v188 = 1107296256;
      v189 = sub_41A314;
      v190 = &block_descriptor_46;
      v119 = _Block_copy(&v187);
      v120 = isEscapingClosureAtFileLocation;
      v182 = v117;

      v121 = v114;
      v122 = v177;
      v5 = [v116 copyWithIdentifiers:v177 block:v119];

      _Block_release(v119);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_119;
      }

      if (!v167)
      {
        v88 = v182;
        isEscapingClosureAtFileLocation = v184;
        v96 = v185;
        v110 = 14651392;
        v19 = v179;
        v86 = v173;
        goto LABEL_65;
      }

      v177 = v5;
      v123 = OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_collectionStyle;
      v124 = v175;
      swift_beginAccess();
      isEscapingClosureAtFileLocation = v184;
      v5 = &off_DF9000;
      v61 = v181;
      v86 = v173;
      if (v124[v123])
      {
        if (v124[v123] != 1)
        {
          v129 = qword_DE6BE8;
          v161 = v175;
          if (v129 != -1)
          {
            swift_once();
          }

          v130 = qword_E71820;
          sub_13C80(0, &qword_DE8ED0);
          v131 = sub_ABA150();
          v133 = v164;
          v132 = v165;
          *v164 = v131;
          (*v166)(v133, v162, v132);
          v134 = sub_AB7CF0();
          (*v163)(v133, v132);
          if ((v134 & 1) == 0)
          {
            __break(1u);
            goto LABEL_127;
          }

          swift_beginAccess();
          v135 = *(v130 + 88);

          v136 = [v177 identifiers];
          v137 = [v136 universalStore];

          if (v137)
          {
            v138 = [v137 socialProfileID];
            if (v138)
            {
              v139 = v138;
              v140 = sub_AB92A0();
              v142 = v141;
              swift_unknownObjectRelease();

              if (!*(v135 + 16))
              {
                goto LABEL_110;
              }

              goto LABEL_102;
            }

            swift_unknownObjectRelease();
          }

          v140 = 0;
          v142 = 0xE000000000000000;
          if (!*(v135 + 16))
          {
LABEL_110:

            isEscapingClosureAtFileLocation = v184;
            v5 = &off_DF9000;
            v61 = v181;
            goto LABEL_111;
          }

LABEL_102:
          sub_ABB5C0();
          sub_AB93F0();
          v143 = sub_ABB610();
          v144 = -1 << *(v135 + 32);
          v145 = v143 & ~v144;
          if ((*(v135 + 56 + ((v145 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v145))
          {
            v146 = ~v144;
            while (1)
            {
              v147 = (*(v135 + 48) + 16 * v145);
              v148 = *v147 == v140 && v147[1] == v142;
              if (v148 || (sub_ABB3C0() & 1) != 0)
              {
                break;
              }

              v145 = (v145 + 1) & v146;
              if (((*(v135 + 56 + ((v145 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v145) & 1) == 0)
              {
                goto LABEL_110;
              }
            }

            isEscapingClosureAtFileLocation = v184;
            v96 = v185;
            v110 = 14651392;
            v19 = v179;
            v5 = v177;
            v128 = v161;
            goto LABEL_91;
          }

          goto LABEL_110;
        }

        v125 = qword_DE6BE8;
        v126 = v175;
        if (v125 != -1)
        {
          swift_once();
        }

        v127 = sub_43D968(v177);

        if ((v127 & 1) == 0)
        {
          v110 = 14651392;
          v88 = v182;
          v5 = v177;
          v96 = v185;
          v19 = v179;
          goto LABEL_65;
        }
      }

LABEL_111:
      v149 = v177;
      [v172 appendItem:v177];

      v19 = v179;
    }

    while (v6 != v179);
  }

LABEL_124:

  v87 = v172;
  v150 = v172;
LABEL_125:
  v151 = objc_allocWithZone(type metadata accessor for JSSocialProfileCollectionModelResponse());
  v152 = v87;
  v153 = v171;
  v154 = v170;
  v155 = v153;
  v156 = v154;
  v157 = sub_EEA90(v169, v155, v156, v87);
  v158 = v183;
  (*&v183[OBJC_IVAR____TtC16MusicApplicationP33_9AFC986C3EE3F16591D3B34D5D62C9B146JSSocialProfileCollectionModelRequestOperation_responseHandler])(v157, 0);
  [v158 finish];
}

char *sub_EEA90(char *a1, void *a2, void *a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_appendedModelResults] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_pendingAppendedItems] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_profileCollectionItemsDidChangeNotificationObserver] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_profileCollectionDidAppendItemsNotificationObserver] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_pendingRequestStateUpdateNotificationObserver] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_didRemoveFollowerNotificationObserver] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_jsResults] = a3;
  v36.receiver = v4;
  v36.super_class = type metadata accessor for JSSocialProfileCollectionModelResponse();
  v9 = a3;
  result = objc_msgSendSuper2(&v36, "initWithRequest:", a1);
  if (result)
  {
    v33 = v9;
    v11 = result;
    v34 = a2;
    [v11 setResults:a2];
    if (a4)
    {
      v12 = [a4 itemsInSectionAtIndex:{0, v33}];
      v13 = sub_AB9760();

      v14 = sub_12DABC(v13);

      if (v14)
      {
        *&v11[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_appendedModelResults] = v14;
      }
    }

    v35 = a4;
    v15 = *&a1[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_profileCollection];
    v16 = v15;
    v17 = *JSSocialProfileCollection.Notifications.existingItemsDidChangeNotification.unsafeMutableAddressor();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v19 = v16;
    *&v11[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_profileCollectionItemsDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, v15, 1, 1, sub_AAF10, v18);

    v20 = *JSSocialProfileCollection.Notifications.didAppendNewItemsNotification.unsafeMutableAddressor();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = v19;
    v23 = v20;

    swift_allocObject();
    *&v11[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_profileCollectionDidAppendItemsNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v23, v15, 1, 1, sub_F0208, v21);

    if (v15)
    {
      v24 = OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_collectionStyle;
      swift_beginAccess();
      if (v22[v24])
      {
        if (v22[v24] == 1)
        {
          if (qword_DE6BF8 != -1)
          {
            swift_once();
          }

          v25 = qword_E71830;
          v26 = swift_allocObject();
          swift_unknownObjectWeakInit();
          swift_allocObject();
          v27 = v25;

          v28 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v27, 0, 1, 1, sub_AADB4, v26);

          v29 = OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_pendingRequestStateUpdateNotificationObserver;
        }

        else
        {
          if (qword_DE6C00 != -1)
          {
            swift_once();
          }

          v30 = qword_E71838;
          v31 = swift_allocObject();
          swift_unknownObjectWeakInit();
          swift_allocObject();
          v32 = v30;

          v28 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v32, 0, 1, 1, sub_AAF10, v31);

          v29 = OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_didRemoveFollowerNotificationObserver;
        }

        *&v11[v29] = v28;

        goto LABEL_18;
      }
    }

    else
    {
    }

LABEL_18:
    return v11;
  }

  __break(1u);
  return result;
}

void sub_EEF50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_AB2BC0();
    if (v2)
    {
      v3 = v2;
      v4 = JSSocialProfileCollection.Notifications.UserInfoKeys.appendedItems.unsafeMutableAddressor();
      v6 = *v4;
      v5 = v4[1];
      v13[0] = v6;
      v13[1] = v5;

      sub_ABAD10();
      if (*(v3 + 16) && (v7 = sub_2EC004(v12), (v8 & 1) != 0))
      {
        sub_808B0(*(v3 + 56) + 32 * v7, v13);
        sub_8085C(v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEFE8);
        v9 = swift_dynamicCast();
        v10 = v11;
        if (!v9)
        {
          v10 = 0;
        }
      }

      else
      {
        sub_8085C(v12);
        v10 = 0;
      }

      *&v1[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_pendingAppendedItems] = v10;
    }

    [v1 _invalidate];
  }
}

void sub_EF090(void *a1, void (*a2)(id))
{
  if (a1)
  {
    type metadata accessor for JSSocialProfileCollectionModelResponse();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = v2;
      v8 = objc_allocWithZone(MPChangeDetails);
      v14[4] = sub_F0074;
      v14[5] = v7;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_1546C;
      v14[3] = &block_descriptor_30;
      v9 = _Block_copy(v14);
      v10 = a1;
      v11 = v2;
      v12 = [v8 initWithBlock:v9];
      _Block_release(v9);

      if (a2)
      {
        v13 = v12;
        a2(v12);

        return;
      }

      goto LABEL_9;
    }
  }

  if (!a2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  a2(0);
}

id sub_EF1FC(void *a1, void *a2, char *a3)
{
  v109 = a1;
  v5 = sub_AB3820();
  v107 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v96 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v103 = &v93 - v9;
  v10 = __chkstk_darwin(v8);
  v102 = &v93 - v11;
  v12 = __chkstk_darwin(v10);
  v98 = &v93 - v13;
  v14 = __chkstk_darwin(v12);
  v95 = &v93 - v15;
  v16 = __chkstk_darwin(v14);
  v94 = &v93 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v93 - v19;
  v21 = __chkstk_darwin(v18);
  v99 = &v93 - v22;
  v23 = __chkstk_darwin(v21);
  v108 = &v93 - v24;
  __chkstk_darwin(v23);
  v26 = &v93 - v25;
  result = [a2 results];
  if (result)
  {
    v28 = result;
    v29 = [result itemsInSectionAtIndex:0];

    v30 = sub_AB9760();
    v31 = sub_12DABC(v30);

    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = _swiftEmptyArrayStorage;
    }

    v93 = *&a3[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_appendedModelResults];
    if (v93)
    {
      if (v32 >> 62)
      {
        goto LABEL_64;
      }

      v106 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
LABEL_8:
      v33 = v93;

      v34 = (v33 & 0xFFFFFFFFFFFFFF8);
      if (v33 >> 62)
      {
        v35 = sub_ABB060();
        if (v35)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v35 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
        if (v35)
        {
LABEL_10:
          v36 = 0;
          v104 = (v33 & 0xFFFFFFFFFFFFFF8);
          v105 = v93 & 0xC000000000000001;
          v37 = (v107 + 16);
          v101 = (v107 + 8);
          v102 = (v107 + 32);
          v103 = v35;
          v38 = v107;
          while (1)
          {
            if (v105)
            {
              sub_3602E8(v36, v93);
              swift_unknownObjectRelease();
              v39 = (v36 + 1);
              if (__OFADD__(v36, 1))
              {
                goto LABEL_61;
              }
            }

            else
            {
              if (v36 >= v34[2])
              {
                goto LABEL_62;
              }

              v39 = (v36 + 1);
              if (__OFADD__(v36, 1))
              {
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                v106 = sub_ABB060();
                goto LABEL_8;
              }
            }

            if (__OFADD__(v106, v36))
            {
              goto LABEL_63;
            }

            sub_AB37C0();
            (*v37)(v108, v26, v5);
            v40 = [v109 insertedItemIndexPaths];
            v41 = sub_AB9760();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = sub_6AE4C(0, v41[2] + 1, 1, v41);
            }

            v43 = v41[2];
            v42 = v41[3];
            if (v43 >= v42 >> 1)
            {
              v41 = sub_6AE4C(v42 > 1, v43 + 1, 1, v41);
            }

            v41[2] = v43 + 1;
            (*(v38 + 32))(v41 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v43, v108, v5);
            isa = sub_AB9740().super.isa;
            [v109 setInsertedItemIndexPaths:isa];
            (*(v38 + 8))(v26, v5);

            ++v36;
            v45 = v39 == v103;
            v34 = v104;
            if (v45)
            {
            }
          }
        }
      }
    }

    result = [a3 results];
    if (result)
    {
      v46 = result;
      v47 = [result itemsInSectionAtIndex:0];

      v48 = sub_AB9760();
      v49 = sub_12DABC(v48);

      if (v49)
      {
        v50 = v49;
      }

      else
      {
        v50 = _swiftEmptyArrayStorage;
      }

      v110[0] = v50;
      v110[1] = v32;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE80D0);
      v52 = sub_F0094();
      v53 = sub_F00F8();
      v54 = Collection<>.compare<A>(with:comparator:)(v110, 0, 0, v51, v51, v52, v52, v53);

      v55 = *(v54 + 16);
      if (v55)
      {
        v56 = (v107 + 8);
        v108 = (v107 + 32);
        v106 = (v107 + 16);
        v57 = v55 - 1;
        v93 = v54;
        v58 = (v54 + 56);
        v101 = v20;
        v59 = v99;
        v97 = (v107 + 8);
        while (1)
        {
          v60 = *(v58 - 3);
          v61 = *(v58 - 16);
          v104 = *v58;
          sub_AB37C0();
          sub_AB37C0();
          v105 = v57;
          if (v61 == 1)
          {
            v62 = *v106;
            if (v60)
            {
              if (v60 == 1)
              {
                v62(v94, v20, v5);
                v63 = [v109 insertedItemIndexPaths];
                v64 = sub_AB9760();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v64 = sub_6AE4C(0, v64[2] + 1, 1, v64);
                }

                v66 = v64[2];
                v65 = v64[3];
                if (v66 >= v65 >> 1)
                {
                  v64 = sub_6AE4C(v65 > 1, v66 + 1, 1, v64);
                }

                v64[2] = v66 + 1;
                v67 = v107;
                (*(v107 + 32))(v64 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v66, v94, v5);
                v68.super.isa = sub_AB9740().super.isa;
                [v109 setInsertedItemIndexPaths:{v68.super.isa, v93}];
              }

              else
              {
                v62(v96, v20, v5);
                v63 = [v109 updatedItemIndexPaths];
                v89 = sub_AB9760();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v89 = sub_6AE4C(0, v89[2] + 1, 1, v89);
                }

                v91 = v89[2];
                v90 = v89[3];
                if (v91 >= v90 >> 1)
                {
                  v89 = sub_6AE4C(v90 > 1, v91 + 1, 1, v89);
                }

                v89[2] = v91 + 1;
                v67 = v107;
                (*(v107 + 32))(v89 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v91, v96, v5);
                v68.super.isa = sub_AB9740().super.isa;
                [v109 setUpdatedItemIndexPaths:{v68.super.isa, v93}];
              }
            }

            else
            {
              v62(v95, v59, v5);
              v63 = [v109 deletedItemIndexPaths];
              v86 = sub_AB9760();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v86 = sub_6AE4C(0, v86[2] + 1, 1, v86);
              }

              v88 = v86[2];
              v87 = v86[3];
              if (v88 >= v87 >> 1)
              {
                v86 = sub_6AE4C(v87 > 1, v88 + 1, 1, v86);
              }

              v86[2] = v88 + 1;
              v67 = v107;
              (*(v107 + 32))(v86 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v88, v95, v5);
              v68.super.isa = sub_AB9740().super.isa;
              [v109 setDeletedItemIndexPaths:{v68.super.isa, v93}];
            }

            v92 = *(v67 + 8);
            v92(v20, v5);
            v92(v59, v5);
          }

          else
          {
            v69 = v98;
            sub_AB37C0();
            v70 = *v56;
            (*v56)(v59, v5);
            v71 = *v108;
            (*v108)(v59, v69, v5);
            v72 = *v106;
            (*v106)(v102, v59, v5);
            v73 = [v109 deletedItemIndexPaths];
            v74 = sub_AB9760();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v74 = sub_6AE4C(0, *(v74 + 2) + 1, 1, v74);
            }

            v76 = *(v74 + 2);
            v75 = *(v74 + 3);
            v100 = v70;
            if (v76 >= v75 >> 1)
            {
              v74 = sub_6AE4C(v75 > 1, v76 + 1, 1, v74);
            }

            *(v74 + 2) = v76 + 1;
            v77 = (*(v107 + 80) + 32) & ~*(v107 + 80);
            v78 = *(v107 + 72);
            v71(&v74[v77 + v78 * v76], v102, v5);
            v79 = sub_AB9740().super.isa;
            v80 = v109;
            [v109 setDeletedItemIndexPaths:v79];

            v72(v103, v101, v5);
            v63 = [v80 insertedItemIndexPaths];
            v81 = sub_AB9760();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v81 = sub_6AE4C(0, *(v81 + 2) + 1, 1, v81);
            }

            v82 = v104;
            v84 = *(v81 + 2);
            v83 = *(v81 + 3);
            if (v84 >= v83 >> 1)
            {
              v81 = sub_6AE4C(v83 > 1, v84 + 1, 1, v81);
            }

            *(v81 + 2) = v84 + 1;
            v71(&v81[v77 + v84 * v78], v103, v5);
            v68.super.isa = sub_AB9740().super.isa;
            [v109 setInsertedItemIndexPaths:v68.super.isa];
            v85 = v100;
            v20 = v101;
            v56 = v97;
            v100(v101, v5);
            v59 = v99;
            v85(v99, v5);
          }

          if (!v105)
          {
            break;
          }

          v57 = v105 - 1;
          v58 += 4;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_EFF04(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_EFFFC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_F0034()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_F0094()
{
  result = qword_DE80D8;
  if (!qword_DE80D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DE80D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE80D8);
  }

  return result;
}

unint64_t sub_F00F8()
{
  result = qword_DEEFE0;
  if (!qword_DEEFE0)
  {
    sub_13C80(255, &qword_DED7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEEFE0);
  }

  return result;
}

uint64_t sub_F0160()
{

  return swift_deallocObject();
}

uint64_t sub_F01A0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_E1798(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_F01D0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_F0210()
{

  return swift_deallocObject();
}

uint64_t sub_F0264()
{

  return swift_deallocObject();
}

uint64_t sub_F02CC()
{

  return swift_deallocObject();
}

char *sub_F0338(void *a1)
{
  *&v1[qword_DEEFF0] = 0;
  *&v1[qword_DEEFF8] = _swiftEmptyArrayStorage;
  *&v1[qword_DEF000] = 0;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for SeasonsViewController();
  v3 = objc_msgSendSuper2(&v14, "init");
  objc_allocWithZone(type metadata accessor for JSLibraryCollectionViewModel());
  v4 = v3;
  v5 = a1;
  v6 = JSLibraryCollectionViewModel.init(scopingModel:)(v5);
  v7 = objc_allocWithZone(type metadata accessor for JSLibraryCollectionComponentController());
  v8 = JSLibraryCollectionComponentController.init(viewModel:)(v6);
  v9 = *&v4[qword_DEEFF0];
  *&v4[qword_DEEFF0] = v8;

  v10 = sub_AB9260();
  [v4 setPlayActivityFeatureName:v10];

  v11 = sub_AB9260();
  [v4 setTitle:v11];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF82B0;
  *(v12 + 32) = v5;
  *&v4[qword_DEEFF8] = v12;

  return v4;
}

void sub_F04DC(uint64_t a1)
{
  *(a1 + qword_DEEFF0) = 0;
  *(a1 + qword_DEEFF8) = _swiftEmptyArrayStorage;
  *(a1 + qword_DEF000) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_F05E4(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(uint64_t))
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for SeasonsViewController();
  v8 = *a4;
  v9 = v12.receiver;
  objc_msgSendSuper2(&v12, v8, a3);
  v10 = *&v9[qword_DEEFF0];
  if (v10)
  {
    v11 = v10;
    a5(a3);

    v9 = v11;
  }
}

void sub_F0684(void *a1)
{
  v4.receiver = a1;
  v4.super_class = type metadata accessor for SeasonsViewController();
  v1 = v4.receiver;
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v2 = *&v1[qword_DEEFF0];
  if (v2)
  {
    v3 = v2;
    JSComponentController.loadIfNeeded()();

    v1 = v3;
  }
}

void sub_F06FC(uint64_t a1)
{
  v2 = v1;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for SeasonsViewController();
  objc_msgSendSuper2(&v16, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = UITraitCollection.mediaPickerConfiguration.getter();

  if (v5)
  {
    v6 = objc_allocWithZone(type metadata accessor for JSMediaPickerEnvironment());
    v7 = v5;
    v8 = JSMediaPickerEnvironment.init(configuration:)(v7);
    v9 = *&v2[qword_DEEFF0];
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      v12 = JSComponentController.environment.modify(v15);
      v14 = *v13;
      *v13 = v8;

      v12(v15, 0);
    }
  }
}

void sub_F0804(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_F06FC(a3);
}

uint64_t sub_F0870(void *a1)
{
  sub_3B316C(a1);
  type metadata accessor for AccessoryReusableView();
  sub_AB92A0();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  sub_13C80(0, &qword_DEF620);
  sub_AB92A0();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();
}

uint64_t sub_F0980()
{
  sub_F2330();
  v1 = *(v0 + qword_DFE2F0);
  if (v1)
  {
    LOBYTE(v1) = [v1 isEmpty];
  }

  sub_3E2E84(v1);
}

void sub_F09DC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v3 = objc_opt_self();
  sub_13C80(0, &unk_DE9C00);
  v4 = v2;
  v5 = static MPModelTVEpisode.defaultMusicKind.getter();
  v6 = [v3 kindWithEpisodeKind:v5];

  [v4 setItemKind:v6];
  v7 = sub_AB9260();
  [v4 setLabel:v7];

  if (*&v1[qword_DEEFF8] >> 62)
  {
    sub_13C80(0, &qword_DEDE20);

    sub_ABAFF0();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_ABB3E0();
    sub_13C80(0, &qword_DEDE20);
  }

  sub_13C80(0, &qword_DEDE20);
  isa = sub_AB9740().super.isa;

  [v4 setScopedContainers:isa];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF85D0;
  *(v9 + 32) = sub_AB92A0();
  *(v9 + 40) = v10;
  *(v9 + 48) = sub_AB92A0();
  *(v9 + 56) = v11;
  *(v9 + 64) = sub_AB92A0();
  *(v9 + 72) = v12;
  *(v9 + 80) = sub_AB92A0();
  *(v9 + 88) = v13;
  v14 = sub_AB9740().super.isa;
  v15 = [objc_opt_self() propertySetWithProperties:v14];

  [v4 setItemProperties:v15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF82B0;
  sub_AB92A0();
  v17 = objc_allocWithZone(NSSortDescriptor);
  v18 = sub_AB9260();

  v19 = [v17 initWithKey:v18 ascending:1];

  *(v16 + 32) = v19;
  sub_13C80(0, &unk_DFDE50);
  v20 = sub_AB9740().super.isa;

  [v4 setItemSortDescriptors:v20];

  v21 = [v1 traitCollection];
  UITraitCollection.configure<A, B>(libraryRequest:)(v4);

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24[4] = sub_F2B00;
  v24[5] = v22;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_151E0;
  v24[3] = &block_descriptor_31;
  v23 = _Block_copy(v24);

  [v4 performWithResponseHandler:v23];
  _Block_release(v23);
}

uint64_t sub_F0E68(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9D320, v5);
}

void sub_F0F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_AB35C0();
  __chkstk_darwin(v10 - 8);
  v11 = sub_AB9250();
  __chkstk_darwin(v11 - 8);
  if (sub_AB92A0() == a2 && v12 == a3)
  {
  }

  else
  {
    v14 = sub_ABB3C0();

    if ((v14 & 1) == 0)
    {
      if (sub_AB92A0() == a2 && v15 == a3)
      {
      }

      else
      {
        v17 = sub_ABB3C0();

        if ((v17 & 1) == 0)
        {

          sub_3DE1D8(a1, a4);
          return;
        }
      }

      sub_13C80(0, &qword_DEF620);
      UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();
      return;
    }
  }

  type metadata accessor for AccessoryReusableView();
  static UICollectionReusableView.reuseIdentifier.getter();
  v18 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

  v19 = *(v5 + qword_DEEFF0);
  if (!v19)
  {
    return;
  }

  v20 = *(v19 + OBJC_IVAR____TtC11MusicJSCore38JSLibraryCollectionComponentController_LibraryCollectionViewModel);
  v21 = OBJC_IVAR____TtC11MusicJSCore28JSLibraryCollectionViewModel_relatedContentLink;
  swift_beginAccess();
  v22 = *(v20 + v21);
  if (!v22)
  {
    return;
  }

  v23 = *(v5 + direct field offset for BrowseCollectionViewController.textDrawingCache);
  v24 = qword_DF4040;
  swift_beginAccess();
  *&v18[v24] = v23;
  swift_retain_n();
  v25 = v18;
  v58 = v22;

  v26 = qword_DF4010;
  v27 = *&v25[qword_DF4010];
  ObjectType = swift_getObjectType();
  v29 = swift_conformsToProtocol2();
  if (!v29)
  {
    __break(1u);
    goto LABEL_28;
  }

  v30 = v29;
  v31 = *(v29 + 16);
  v32 = v27;
  v31(v23, ObjectType, v30);

  sub_AB91E0();
  sub_AB3550();
  v33 = sub_AB9320();
  v35 = v34;
  v36 = *&v25[v26];
  v37 = &v36[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_title];
  *v37 = v33;
  v37[1] = v34;
  v38 = v36;

  v39 = &v38[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textComponents];
  swift_beginAccess();
  v40 = *(v39 + 1);
  swift_beginAccess();
  *(v40 + 112) = v33;
  *(v40 + 120) = v35;

  sub_2EB704();

  v41 = objc_opt_self();
  v42 = sub_AB9260();
  v43 = [v41 kitImageNamed:v42];

  if (!v43)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v44 = [v43 imageWithRenderingMode:2];

  v45 = [v44 imageFlippedForRightToLeftLayoutDirection];
  v46 = *&v25[v26];
  v47 = *&v46[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_accessoryImageView];
  v48 = v46;
  v49 = v45;
  [v47 setImage:v49];
  [v48 setNeedsLayout];

  v50 = v25[qword_DF4028];
  v25[qword_DF4028] = 0;
  if (v50 == 1)
  {
    [*&v25[qword_DF4070] setHidden:0];
  }

  v51 = v25[qword_DF4020];
  v25[qword_DF4020] = 1;
  if ((v51 & 1) == 0)
  {
    v52 = *&v25[qword_DF4068];
    [v52 setHidden:1];
  }

  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = swift_allocObject();
  *(v54 + 2) = v53;
  *(v54 + 3) = v25;
  *(v54 + 4) = v58;
  v55 = &v25[qword_DF4018];
  v56 = *&v25[qword_DF4018];
  *v55 = sub_F2AF4;
  v55[1] = v54;
  v57 = v25;
  sub_17654(v56);
}

void sub_F1558(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_AB3430();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB3820();
  v68 = *(v8 - 8);
  __chkstk_darwin(v8);
  v61 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v69);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v60 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v21 - 8);
  v23 = &v60 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v67 = a4;
  v25 = Strong;
  [a3 bounds];
  v84[0] = a3;
  v84[1] = v26;
  v84[2] = v27;
  v84[3] = v28;
  v84[4] = v29;
  v85 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v84, 15, v76);
  v80[0] = v76[0];
  v80[1] = v76[1];
  v81 = v77;
  v82 = v78;
  v83 = v79;
  v30 = a3;
  v66 = v25;
  PresentationSource.init(viewController:position:)(v25, v80, v75);
  v65 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v31 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v73, 0, sizeof(v73));
  v74 = 0;
  (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
  sub_15F84(v73, &v70, &unk_DE8E30);
  if (*(&v71 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v32 = _s30CollectionViewSelectionHandlerVMa();
    v33 = swift_dynamicCast();
    v34 = *(v32 - 8);
    (*(v34 + 56))(v14, v33 ^ 1u, 1, v32);
    v35 = (*(v34 + 48))(v14, 1, v32);
    v36 = v68;
    if (v35 != 1)
    {
      (*(v68 + 16))(v20, &v14[*(v32 + 20)], v8);
      sub_2D6C0(v14, _s30CollectionViewSelectionHandlerVMa);
      v37 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    sub_12E1C(&v70, &unk_DE8E30);
    v38 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
    v36 = v68;
  }

  sub_12E1C(v14, &qword_E037A0);
  v37 = 1;
LABEL_7:
  (*(v36 + 56))(v20, v37, 1, v8);
  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39 && (v40 = v39, sub_12B2FC(), v42 = v41, v44 = v43, v40, v42))
  {
    ObjectType = swift_getObjectType();
    (*(v44 + 8))(ObjectType, v44);
    v47 = v46;
    swift_unknownObjectRelease();
    sub_15F84(v20, v18, &unk_DE8E20);
    if ((*(v36 + 48))(v18, 1, v8) == 1)
    {
      sub_12E1C(v18, &unk_DE8E20);
      v70 = 0u;
      v71 = 0u;
      v72 = 0;
    }

    else
    {
      (*(v36 + 32))(v61, v18, v8);
      sub_2D668();
      sub_ABAD10();
    }

    v49 = swift_getObjectType();
    v50 = v62;
    sub_3B8F68();
    v48 = sub_21CCAC(1, v50, &v70, v49, v47);
    (*(v63 + 8))(v50, v64);
    sub_12E1C(&v70, &qword_DF2BD0);
    sub_12E1C(v20, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v20, &unk_DE8E20);
    v48 = 0;
  }

  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    v52 = v51;
    v53 = v23;
    sub_12AFE8();
    v55 = v54;
  }

  else
  {
    v53 = v23;
    v55 = 0;
  }

  sub_15F28(v75, &v70);
  sub_15F84(v73, (v11 + 104), &unk_DE8E30);
  v56 = v69;
  sub_15F84(v53, &v11[*(v69 + 28)], &unk_DEA510);
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 8) = 1;
  *(v11 + 9) = 0;
  *(v11 + 10) = 0;
  *(v11 + 11) = 0;
  sub_2D594(&v70, v11);
  *(v11 + 12) = 0;
  v57 = *v65;
  *(&v71 + 1) = v56;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v70);
  sub_2D604(v11, boxed_opaque_existential_0);
  v59 = v57;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v67, 0, v48, v55, &v70);

  sub_12E1C(v53, &unk_DEA510);
  sub_12E1C(v73, &unk_DE8E30);
  sub_1611C(v75);
  sub_2D6C0(v11, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v70, &unk_DE8E40);
}

id sub_F1D94(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  sub_F0F0C(v16, v13, v15, v12);
  v21 = v20;

  (*(v10 + 8))(v12, v9);

  return v21;
}

double sub_F1F00(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_F2B60(v6);

  return v9;
}

void sub_F1F68(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_3B41F4(v11, v10);
  isa = sub_AB3770().super.isa;
  [v11 deselectItemAtIndexPath:isa animated:1];
  (*(v8 + 8))(v10, v7);
}

void sub_F20A4(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for SongCell();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    v9 = [v7 tableViewCell];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    [v9 setSeparatorStyle:(UICollectionView.isLast(indexPath:)() & 1) == 0];
  }

  sub_3B38B0(a1, a2, a3);
}

void sub_F217C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  type metadata accessor for SongCell();
  v13 = swift_dynamicCastClass();
  v14 = a4;
  v15 = v14;
  if (!v13)
  {
    v20 = a3;
    v21 = a5;
    v22 = a1;
    goto LABEL_5;
  }

  v24 = v14;
  a3;
  v16 = a5;
  v17 = a1;
  v18 = [v13 tableViewCell];
  if (v18)
  {
    v19 = v18;
    [v18 setSeparatorStyle:(UICollectionView.isLast(indexPath:)() & 1) == 0];

LABEL_5:
    sub_3B38B0(a3, v15, v12);

    (*(v10 + 8))(v12, v9);
    return;
  }

  __break(1u);
}

void *sub_F2330()
{
  v1 = qword_DEF000;
  if (*&v0[qword_DEF000])
  {
    v2 = *&v0[qword_DEF000];
LABEL_5:

    return v2;
  }

  v3 = v0;
  result = [v0 view];
  if (result)
  {
    v5 = result;
    type metadata accessor for LibraryNoContentStateController();
    swift_allocObject();
    v2 = sub_3E2914(v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = v2[6];
    v2[6] = sub_9D2B0;
    v2[7] = v6;

    sub_17654(v7);

    *&v3[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_F247C()
{
}

id sub_F24CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeasonsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_F2504(uint64_t a1)
{
}

uint64_t type metadata accessor for SeasonsViewController()
{
  result = qword_DEF030;
  if (!qword_DEF030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_F2614(uint64_t a1, id *a2)
{
  v3 = [*a2 artworkCatalog];
  v4 = *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
  *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v3;
  v5 = v3;

  sub_74EA4(v3);
}

void sub_F268C(void **a1)
{
  v2 = *a1;
  v3 = *v1;
  MPModelTVSeason.title.getter();
  type metadata accessor for EpisodesViewController();
  v4 = sub_1DF23C(v2);

  sub_728FC(v4, v3, 1, v3);
}

id sub_F2734()
{
  [v0 loadViewIfNeeded];
  result = *&v0[qword_DFE2F8];
  if (result)
  {

    return [result reloadData];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_F2784(uint64_t a1, void *a2)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  v6 = sub_AB9230();
  __chkstk_darwin(v6 - 8);
  v7 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle);
  *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle) = -24575;
  sub_143510(v7);
  sub_AB9220();
  v19._countAndFlagsBits = 0x206E6F73616553;
  v19._object = 0xE700000000000000;
  sub_AB9210(v19);
  [a2 number];
  sub_AB91F0();
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_AB9210(v20);
  sub_AB9240();
  sub_AB3550();
  v8 = sub_AB9320();
  v9 = (a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_title);
  v10 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_title);
  v11 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8);
  *v9 = v8;
  v9[1] = v12;
  sub_142858(v10, v11);

  sub_AB9220();
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_AB9210(v21);
  [a2 episodesCount];
  sub_AB91F0();
  v22._countAndFlagsBits = 0x65646F7369704520;
  v22._object = 0xEB00000000297328;
  sub_AB9210(v22);
  sub_AB9240();
  sub_AB3550();
  v13 = sub_AB9320();
  v14 = (a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName);
  v15 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName);
  v16 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8);
  *v14 = v13;
  v14[1] = v17;
  sub_142A70(v15, v16);
}

uint64_t sub_F2A74()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_F2AAC()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_F2B20()
{

  return swift_deallocObject();
}

double sub_F2B60(void *a1)
{
  v2 = *&v1[qword_DEEFF0];
  v3 = 0.0;
  if (v2)
  {
    v5 = *(v2 + OBJC_IVAR____TtC11MusicJSCore38JSLibraryCollectionComponentController_LibraryCollectionViewModel);
    v6 = OBJC_IVAR____TtC11MusicJSCore28JSLibraryCollectionViewModel_relatedContentLink;
    swift_beginAccess();
    if (*(v5 + v6))
    {
      v7 = [v1 traitCollection];
      [a1 bounds];
      v9 = v8;
      v11 = v10;
      v12 = type metadata accessor for CollectionAccessoryView();
      v13 = swift_conformsToProtocol2();
      if (v13 && v12)
      {
        (*(v13 + 8))(v7, v12, v13, v9, v11);
        v3 = v14;
      }

      else
      {
        v15 = [objc_opt_self() defaultMetrics];
        sub_AB9EF0();
        v3 = v16;
      }
    }
  }

  return v3;
}

Swift::Int sub_F2CEC()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

Swift::Int sub_F2D40()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

uint64_t sub_F2D88(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_ABB3C0();
  }
}

void sub_F2DB8()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedBagProvider];
  sub_13C80(0, &qword_DEE560);
  v3 = static ICStoreRequestContext.current.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v7[4] = sub_F4608;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_151E0;
  v7[3] = &block_descriptor_32;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v2 getBagForRequestContext:v3 withCompletionHandler:v5];
  _Block_release(v5);
}

void sub_F2EEC(void *a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v6 = sub_AB2A90();
  v68 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v9 - 8);
  v11 = v64 - v10;
  v12 = sub_AB31C0();
  v69 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E07D40);
  __chkstk_darwin(v18 - 8);
  v20 = v64 - v19;
  v21 = sub_AB2CE0();
  __chkstk_darwin(v21);
  v25 = v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || (v65 = v25, v67 = v22, v66 = v23, ([a3 isCancelled] & 1) != 0))
  {
    v26 = *&a3[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
    if (v26)
    {

      v26(v27, a2);
    }

    if (a2)
    {
      v28 = sub_AB3040();
    }

    else
    {
      v28 = 0;
    }

    v71.receiver = a3;
    v71.super_class = ObjectType;
    objc_msgSendSuper2(&v71, "finishWithError:", v28);

    return;
  }

  if (a1)
  {
    v29 = [a1 dictionaryForBagKey:ICURLBagKeyMusicFriends];
    if (v29)
    {
      v30 = v29;
      v31 = sub_AB8FF0();

      v32 = 0x8000000000B50AB0;
      v74 = 0xD000000000000018;
      v75 = 0x8000000000B50AB0;
      sub_ABAD10();
      v33 = *(v31 + 16);
      v64[1] = v31;
      if (v33 && (v64[0] = 0x8000000000B50AB0, v34 = sub_2EC004(v76), v32 = v64[0], (v35 & 1) != 0))
      {
        sub_808B0(*(v31 + 56) + 32 * v34, v77);
        sub_8085C(v76);
        if (swift_dynamicCast())
        {
          v36 = v75;
          sub_AB2CC0();
          v37 = v66;
          if ((*(v66 + 48))(v20, 1, v67) != 1)
          {
            v64[0] = v36;
            (*(v37 + 32))(v65, v20, v67);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEA98);
            sub_AB2C10();
            *(swift_allocObject() + 16) = xmmword_AF4EC0;
            sub_AB2BE0();
            sub_AB2C30();
            sub_AB2C50();
            v51 = v69;
            if ((*(v69 + 48))(v11, 1, v12) != 1)
            {
              (*(v51 + 32))(v17, v11, v12);
              (*(v51 + 16))(v15, v17, v12);
              sub_AB2A50();
              sub_13C80(0, &qword_DEE560);
              v57 = static ICStoreRequestContext.current.getter();
              v58 = objc_allocWithZone(ICStoreURLRequest);
              v59 = sub_AB2A30();
              v60 = [v58 initWithURLRequest:v59 requestContext:v57];
              (*(v68 + 8))(v8, v6);

              sub_13C80(0, &qword_E07CC0);
              v61 = static ICURLSessionManager.musicSession.getter();
              v62 = swift_allocObject();
              *(v62 + 16) = a3;
              v63 = a3;
              ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(v60, sub_F467C, v62);
              (*(v51 + 8))(v17, v12);
              (*(v66 + 8))(v65, v67);

              return;
            }

            sub_12E1C(v11, &unk_DF2AE0);
            sub_F4628();
            v52 = swift_allocError();
            *v53 = 0;
            v53[1] = 0;
            v54 = *&a3[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
            if (v54)
            {

              v54(v55, v52);
            }

            v56 = sub_AB3040();
            v72.receiver = a3;
            v72.super_class = ObjectType;
            objc_msgSendSuper2(&v72, "finishWithError:", v56);
            (*(v66 + 8))(v65, v67);

LABEL_24:

            return;
          }

          sub_12E1C(v20, &unk_E07D40);

          v32 = v64[0];
        }
      }

      else
      {
        sub_8085C(v76);
      }

      sub_F4628();
      v46 = swift_allocError();
      *v47 = 0xD000000000000018;
      v47[1] = v32;
      v48 = *&a3[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
      if (v48)
      {

        v48(v49, v46);
      }

      v50 = sub_AB3040();
      v73.receiver = a3;
      v73.super_class = ObjectType;
      objc_msgSendSuper2(&v73, "finishWithError:", v50);

      goto LABEL_24;
    }
  }

  v38 = sub_AB92A0();
  v40 = v39;
  sub_F4628();
  v41 = swift_allocError();
  *v42 = v38;
  v42[1] = v40;
  v43 = *&a3[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
  if (v43)
  {

    v43(v44, v41);
  }

  v45 = sub_AB3040();
  v78.receiver = a3;
  v78.super_class = ObjectType;
  objc_msgSendSuper2(&v78, "finishWithError:", v45);
}