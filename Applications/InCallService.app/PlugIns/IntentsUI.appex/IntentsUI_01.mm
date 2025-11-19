uint64_t sub_10003D9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 25) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v8 = sub_10007B578();

  return _swift_task_switch(sub_10003DA40, v8, v7);
}

uint64_t sub_10003DA40()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 40);
  (*(*(v0 + 32) + OBJC_IVAR____TtC9IntentsUI22VisualVoicemailManager_onVoicemailsChanged))();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  sub_10007B3B8();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10003DADC()
{
  *(v1 + 32) = v0;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v3 = sub_10007B578();

  return _swift_task_switch(sub_10003DB74, v3, v2);
}

uint64_t sub_10003DB74()
{
  v22 = v0;
  v1 = [*(v0[2].receiver + OBJC_IVAR____TtC9IntentsUI22VisualVoicemailManager_visualVoicemailManager) allVoicemails];
  sub_100042840();
  v2 = sub_10007B528();

  if (v2 >> 62)
  {
    v3 = sub_10007BA18();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    v10 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v21 = _swiftEmptyArrayStorage;
  result = sub_10007B8E8();
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = sub_10007B898();
    }

    else
    {
      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    v8 = type metadata accessor for VisualMessage();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR___MPVisualMessage_vmMessage] = v7;
    v0[1].receiver = v9;
    v0[1].super_class = v8;
    objc_msgSendSuper2(v0 + 1, "init");
    sub_10007B8C8();
    sub_10007B8F8();
    sub_10007B908();
    sub_10007B8D8();
  }

  while (v3 != v5);

  v10 = v21;
LABEL_12:
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v11 = sub_10007B338();
  sub_1000345E8(v11, qword_1000C76E8);

  v12 = sub_10007B318();
  v13 = sub_10007B6E8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    type metadata accessor for VisualMessage();
    v16 = sub_10007B538();
    v18 = sub_100052954(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Fetched %s from VMD", v14, 0xCu);
    sub_100035504(v15);
  }

  if (v10 >> 62)
  {
    sub_100030744(&unk_1000C5360);
    v19 = sub_10007BA08();
  }

  else
  {
    sub_10007BB48();
    v19 = v10;
  }

  super_class = v0->super_class;

  return super_class(v19);
}

uint64_t sub_10003E04C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v4 = sub_10007B578();

  return _swift_task_switch(sub_10003E0E4, v4, v3);
}

uint64_t sub_10003E0E4()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = _Block_copy(*(v0 + 16));
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_100037AE0;

  return sub_10003DADC();
}

uint64_t sub_10003E188(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v4 = sub_10007B578();

  return _swift_task_switch(sub_10003E220, v4, v3);
}

uint64_t sub_10003E220()
{
  v20 = v0;
  v1 = sub_1000445BC(v0[2]);
  if (!v1)
  {
    if (qword_1000C4E60 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0[3] + OBJC_IVAR____TtC9IntentsUI22VisualVoicemailManager_visualVoicemailManager);
  if (v1 >> 62)
  {
    v4 = sub_10007BA18();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_16:

    sub_100042840();
    isa = sub_10007B518().super.isa;

    v9 = [v3 deleteVoicemails:isa];

    goto LABEL_17;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_4:
  v19 = _swiftEmptyArrayStorage;
  sub_10007B8E8();
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = *(sub_10007B898() + OBJC_IVAR___MPVisualMessage_vmMessage);
        swift_unknownObjectRelease();
        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        sub_10007B8D8();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v13 = (v2 + 32);
      do
      {
        v14 = *v13++;
        v15 = *(v14 + OBJC_IVAR___MPVisualMessage_vmMessage);
        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        sub_10007B8D8();
        --v4;
      }

      while (v4);
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_10:
  v8 = sub_10007B338();
  sub_1000345E8(v8, qword_1000C76E8);

  v9 = sub_10007B318();
  v10 = sub_10007B6C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_100052954(0x654D3C7961727241, 0xEE003E6567617373, &v19);
    _os_log_impl(&_mh_execute_header, v9, v10, "Incorrect type passed into VisualVoicemailManager %{public}s but expected VisualMessage!", v11, 0xCu);
    sub_100035504(v12);
  }

LABEL_17:

  v17 = v0[1];

  return v17();
}

uint64_t sub_10003E6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v5 = sub_10007B578();

  return _swift_task_switch(sub_10003E790, v5, v4);
}

uint64_t sub_10003E790()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_100030744(&unk_1000C5360);
  v2 = sub_10007B528();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1000434F4;

  return sub_10003E188(v2);
}

uint64_t sub_10003E86C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v4 = sub_10007B578();

  return _swift_task_switch(sub_10003E904, v4, v3);
}

uint64_t sub_10003E904()
{
  v20 = v0;
  v1 = sub_1000445BC(v0[2]);
  if (!v1)
  {
    if (qword_1000C4E60 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0[3] + OBJC_IVAR____TtC9IntentsUI22VisualVoicemailManager_visualVoicemailManager);
  if (v1 >> 62)
  {
    v4 = sub_10007BA18();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_16:

    sub_100042840();
    isa = sub_10007B518().super.isa;

    v9 = [v3 markVoicemailsAsRead:isa];

    goto LABEL_17;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_4:
  v19 = _swiftEmptyArrayStorage;
  sub_10007B8E8();
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = *(sub_10007B898() + OBJC_IVAR___MPVisualMessage_vmMessage);
        swift_unknownObjectRelease();
        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        sub_10007B8D8();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v13 = (v2 + 32);
      do
      {
        v14 = *v13++;
        v15 = *(v14 + OBJC_IVAR___MPVisualMessage_vmMessage);
        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        sub_10007B8D8();
        --v4;
      }

      while (v4);
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_10:
  v8 = sub_10007B338();
  sub_1000345E8(v8, qword_1000C76E8);

  v9 = sub_10007B318();
  v10 = sub_10007B6C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_100052954(0x654D3C7961727241, 0xEE003E6567617373, &v19);
    _os_log_impl(&_mh_execute_header, v9, v10, "Incorrect type passed into VisualVoicemailManager %{public}s but expected VisualMessage!", v11, 0xCu);
    sub_100035504(v12);
  }

LABEL_17:

  v17 = v0[1];

  return v17();
}

uint64_t sub_10003EDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v5 = sub_10007B578();

  return _swift_task_switch(sub_10003EE74, v5, v4);
}

uint64_t sub_10003EE74()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_100030744(&unk_1000C5360);
  v2 = sub_10007B528();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10003EF50;

  return sub_10003E86C(v2);
}

uint64_t sub_10003EF50()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10003F0AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v4 = sub_10007B578();

  return _swift_task_switch(sub_10003F144, v4, v3);
}

uint64_t sub_10003F144()
{
  v20 = v0;
  v1 = sub_1000445BC(v0[2]);
  if (!v1)
  {
    if (qword_1000C4E60 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0[3] + OBJC_IVAR____TtC9IntentsUI22VisualVoicemailManager_visualVoicemailManager);
  if (v1 >> 62)
  {
    v4 = sub_10007BA18();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_16:

    sub_100042840();
    isa = sub_10007B518().super.isa;

    v9 = [v3 trashVoicemails:isa];

    goto LABEL_17;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_4:
  v19 = _swiftEmptyArrayStorage;
  sub_10007B8E8();
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = *(sub_10007B898() + OBJC_IVAR___MPVisualMessage_vmMessage);
        swift_unknownObjectRelease();
        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        sub_10007B8D8();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v13 = (v2 + 32);
      do
      {
        v14 = *v13++;
        v15 = *(v14 + OBJC_IVAR___MPVisualMessage_vmMessage);
        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        sub_10007B8D8();
        --v4;
      }

      while (v4);
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_10:
  v8 = sub_10007B338();
  sub_1000345E8(v8, qword_1000C76E8);

  v9 = sub_10007B318();
  v10 = sub_10007B6C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_100052954(0x654D3C7961727241, 0xEE003E6567617373, &v19);
    _os_log_impl(&_mh_execute_header, v9, v10, "Incorrect type passed into VisualVoicemailManager %{public}s but expected VisualMessage!", v11, 0xCu);
    sub_100035504(v12);
  }

LABEL_17:

  v17 = v0[1];

  return v17();
}

uint64_t sub_10003F618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v5 = sub_10007B578();

  return _swift_task_switch(sub_10003F6B4, v5, v4);
}

uint64_t sub_10003F6B4()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_100030744(&unk_1000C5360);
  v2 = sub_10007B528();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1000434F4;

  return sub_10003F0AC(v2);
}

uint64_t sub_10003F790(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v4 = sub_10007B578();

  return _swift_task_switch(sub_10003F828, v4, v3);
}

uint64_t sub_10003F828()
{
  v20 = v0;
  v1 = sub_1000445BC(v0[2]);
  if (!v1)
  {
    if (qword_1000C4E60 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0[3] + OBJC_IVAR____TtC9IntentsUI22VisualVoicemailManager_visualVoicemailManager);
  if (v1 >> 62)
  {
    v4 = sub_10007BA18();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_16:

    sub_100042840();
    isa = sub_10007B518().super.isa;

    v9 = [v3 removeVoicemailsFromTrash:isa];

    goto LABEL_17;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_4:
  v19 = _swiftEmptyArrayStorage;
  sub_10007B8E8();
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = *(sub_10007B898() + OBJC_IVAR___MPVisualMessage_vmMessage);
        swift_unknownObjectRelease();
        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        sub_10007B8D8();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v13 = (v2 + 32);
      do
      {
        v14 = *v13++;
        v15 = *(v14 + OBJC_IVAR___MPVisualMessage_vmMessage);
        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        sub_10007B8D8();
        --v4;
      }

      while (v4);
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_10:
  v8 = sub_10007B338();
  sub_1000345E8(v8, qword_1000C76E8);

  v9 = sub_10007B318();
  v10 = sub_10007B6C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_100052954(0x654D3C7961727241, 0xEE003E6567617373, &v19);
    _os_log_impl(&_mh_execute_header, v9, v10, "Incorrect type passed into VisualVoicemailManager %{public}s but expected VisualMessage!", v11, 0xCu);
    sub_100035504(v12);
  }

LABEL_17:

  v17 = v0[1];

  return v17();
}

uint64_t sub_10003FCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v5 = sub_10007B578();

  return _swift_task_switch(sub_10003FD98, v5, v4);
}

uint64_t sub_10003FD98()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_100030744(&unk_1000C5360);
  v2 = sub_10007B528();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1000434F4;

  return sub_10003F790(v2);
}

uint64_t sub_10003FE74(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = type metadata accessor for MessageID.Value(0);
  v2[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v4 = sub_10007B578();

  return _swift_task_switch(sub_10003FF3C, v4, v3);
}

uint64_t sub_10003FF3C()
{
  sub_100042D2C(*(v0 + 32) + OBJC_IVAR___MPMessageID_value, *(v0 + 56));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 56);
  if (EnumCaseMultiPayload == 1)
  {
    sub_100042D90(v2);
    if (qword_1000C4E60 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 32);
    v4 = sub_10007B338();
    sub_1000345E8(v4, qword_1000C76E8);
    v5 = v3;
    v6 = sub_10007B318();
    v7 = sub_10007B6C8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 32);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v8;
      *v10 = v8;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v6, v7, "Incorrect id passed into VisualVoicemailManager %@, privacy: .public) but expected a VisualMessage ID!", v9, 0xCu);
      sub_100042DEC(v10);
    }

    v12 = 0;
  }

  else
  {
    v12 = [*(*(v0 + 40) + OBJC_IVAR____TtC9IntentsUI22VisualVoicemailManager_visualVoicemailManager) voicemailWithIdentifier:*v2];
    if (v12)
    {
      v13 = type metadata accessor for VisualMessage();
      v14 = objc_allocWithZone(v13);
      *&v14[OBJC_IVAR___MPVisualMessage_vmMessage] = v12;
      *(v0 + 16) = v14;
      *(v0 + 24) = v13;
      v12 = objc_msgSendSuper2((v0 + 16), "init");
    }
  }

  v15 = *(v0 + 8);

  return v15(v12);
}

uint64_t sub_1000402EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v5 = sub_10007B578();

  return _swift_task_switch(sub_100040388, v5, v4);
}

uint64_t sub_100040388()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_100038380;
  v6 = *(v0 + 16);

  return sub_10003FE74(v6);
}

uint64_t sub_100040444(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v5 = sub_10007B578();

  return _swift_task_switch(sub_1000404E0, v5, v4);
}

uint64_t sub_1000404E0()
{
  super_class = v0[5].super_class;
  receiver = v0[5].receiver;
  v3 = *(v0[6].receiver + OBJC_IVAR____TtC9IntentsUI22VisualVoicemailManager_visualVoicemailManager);
  v4 = swift_allocObject();
  *(v4 + 16) = receiver;
  *(v4 + 24) = super_class;
  v0[3].receiver = sub_100042F90;
  v0[3].super_class = v4;
  v0[1].receiver = _NSConcreteStackBlock;
  v0[1].super_class = 1107296256;
  v0[2].receiver = sub_100040804;
  v0[2].super_class = &unk_1000B2CF0;
  v5 = _Block_copy(&v0[1]);

  v6 = [v3 voicemailsPassingTest:v5];
  _Block_release(v5);
  sub_100042840();
  v7 = sub_10007B528();

  if (v7 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007BA18())
  {
    result = sub_10007B8E8();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v10 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = sub_10007B898();
        goto LABEL_6;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v11 = *(v7 + 8 * v10 + 32);
LABEL_6:
      v12 = v11;
      ++v10;
      v13 = type metadata accessor for VisualMessage();
      v14 = objc_allocWithZone(v13);
      *&v14[OBJC_IVAR___MPVisualMessage_vmMessage] = v12;
      v0[4].receiver = v14;
      v0[4].super_class = v13;
      objc_msgSendSuper2(v0 + 4, "init");
      sub_10007B8C8();
      sub_10007B8F8();
      sub_10007B908();
      sub_10007B8D8();
      if (i == v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v15 = v0->super_class;

  return v15(_swiftEmptyArrayStorage);
}

uint64_t sub_100040778(void *a1, uint64_t (*a2)(id, uint64_t))
{
  v4 = type metadata accessor for VisualMessage();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___MPVisualMessage_vmMessage] = a1;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v10, "init");
  LOBYTE(a2) = a2(v7, v8);

  return a2 & 1;
}

uint64_t sub_100040804(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_1000409EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v5 = sub_10007B578();

  return _swift_task_switch(sub_100040A88, v5, v4);
}

uint64_t sub_100040A88()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = _Block_copy(*(v0 + 16));
  *(v0 + 40) = _Block_copy(v1);
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_100040B7C;

  return sub_100040444(sub_100042F50, v4);
}

uint64_t sub_100040B7C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v6 = *v0;

  sub_100030744(&unk_1000C5360);
  isa = sub_10007B518().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

void sub_100040D1C(char a1, void *a2)
{
  v5 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v5, v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100042D2C(a2 + OBJC_IVAR___MPMessageID_value, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100042D90(v8);
  }

  else
  {
    v9 = *(v2 + OBJC_IVAR____TtC9IntentsUI22VisualVoicemailManager_visualVoicemailManager);
    v10 = [v9 voicemailWithIdentifier:*v8];
    if (v10)
    {
      v11 = v10;
      [v9 reportTranscriptionRatedAccurate:a1 & 1 forVoicemail:v10];
      goto LABEL_9;
    }
  }

  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v12 = sub_10007B338();
  sub_1000345E8(v12, qword_1000C76E8);
  v13 = a2;
  v11 = sub_10007B318();
  v14 = sub_10007B6C8();

  if (os_log_type_enabled(v11, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v13;
    *v16 = v13;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v11, v14, "Failed to report problem for message with ID(%@ becuase it could not be found.", v15, 0xCu);
    sub_100042DEC(v16);
  }

LABEL_9:
}

void sub_100040F90(void *a1)
{
  v3 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v3, v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100042D2C(a1 + OBJC_IVAR___MPMessageID_value, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100042D90(v6);
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC9IntentsUI22VisualVoicemailManager_visualVoicemailManager);
    v8 = [v7 voicemailWithIdentifier:*v6];
    if (v8)
    {
      v9 = v8;
      [v7 reportTranscriptionProblemForVoicemail:v8];
      goto LABEL_9;
    }
  }

  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v10 = sub_10007B338();
  sub_1000345E8(v10, qword_1000C76E8);
  v11 = a1;
  v9 = sub_10007B318();
  v12 = sub_10007B6C8();

  if (os_log_type_enabled(v9, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v11;
    *v14 = v11;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, v12, "Failed to report problem for message with ID(%@ becuase it could not be found.", v13, 0xCu);
    sub_100042DEC(v14);
  }

LABEL_9:
}

uint64_t sub_1000411F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  sub_10007B5B8();
  *(v5 + 24) = sub_10007B5A8();
  v7 = sub_10007B578();

  return _swift_task_switch(sub_100041290, v7, v6);
}

uint64_t sub_100041290()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  [*(v2 + OBJC_IVAR____TtC9IntentsUI22VisualVoicemailManager_visualVoicemailManager) requestInitialStateIfNecessaryAndSendNotifications:v1];
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100041504(uint64_t a1)
{
  v3 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v31 - v5;
  v7 = sub_10007AD18();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v12 = sub_10007B338();
  sub_1000345E8(v12, qword_1000C76E8);
  (*(v8 + 16))(v11, a1, v7);
  v13 = v1;
  v14 = sub_10007B318();
  v15 = sub_10007B6B8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = v6;
    v17 = v16;
    v34 = swift_slowAlloc();
    *v17 = 136315394;
    swift_getObjectType();
    v18 = sub_10007BC48();
    v20 = sub_100052954(v18, v19, &v34);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v33 = sub_10007AD08();
    type metadata accessor for Name(0);
    v21 = sub_10007B488();
    v23 = v22;
    (*(v8 + 8))(v11, v7);
    v24 = sub_100052954(v21, v23, &v34);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s is handling %s", v17, 0x16u);
    swift_arrayDestroy();

    v6 = v32;
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v25 = sub_10007B608();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v27 = sub_10003D1C8();
  v28 = swift_allocObject();
  *(v28 + 16) = inited;
  *(v28 + 24) = v27;
  *(v28 + 32) = v13;
  *(v28 + 40) = 0;
  *(v28 + 48) = 3;
  v29 = v13;
  sub_100078AB0(0, 0, v6, &unk_1000A1A78, v28);
}

uint64_t sub_100041994(char a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v31 - v11;
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v13 = sub_10007B338();
  sub_1000345E8(v13, qword_1000C76E8);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v14 = v4;
  v15 = sub_10007B318();
  v16 = sub_10007B6B8();

  if (os_log_type_enabled(v15, v16))
  {
    v32 = v12;
    v17 = a1;
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v18 = 136316162;
    swift_getObjectType();
    v19 = sub_10007BC48();
    v21 = sub_100052954(v19, v20, &v34);

    *(v18 + 4) = v21;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v17 & 1;
    *(v18 + 18) = 2048;
    if (a3)
    {
      if (a3 >> 62)
      {
        v22 = sub_10007BA18();
      }

      else
      {
        v22 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v32;
    }

    else
    {
      v22 = 0;
      v12 = v32;
    }

    *(v18 + 20) = v22;

    *(v18 + 28) = 2048;
    if (a4)
    {
      if (a4 >> 62)
      {
        v23 = sub_10007BA18();
      }

      else
      {
        v23 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v23 = 0;
    }

    *(v18 + 30) = v23;

    *(v18 + 38) = 2048;
    if (a2)
    {
      if (a2 >> 62)
      {
        v24 = sub_10007BA18();
      }

      else
      {
        v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v24 = 0;
    }

    *(v18 + 40) = v24;

    _os_log_impl(&_mh_execute_header, v15, v16, "%s voicemailsDidChangeInitial: %{BOOL}d added: %ld, deleted: %ld, updated: %ld", v18, 0x30u);
    sub_100035504(v33);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v25 = sub_10007B608();
  (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v27 = sub_10003D1C8();
  v28 = swift_allocObject();
  *(v28 + 16) = inited;
  *(v28 + 24) = v27;
  *(v28 + 32) = v14;
  *(v28 + 40) = 0;
  *(v28 + 48) = 3;
  v29 = v14;
  sub_100078AB0(0, 0, v12, &unk_1000A1A70, v28);
}

void sub_100042034(const char *a1)
{
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v3 = sub_10007B338();
  sub_1000345E8(v3, qword_1000C76E8);
  v4 = v1;
  oslog = sub_10007B318();
  v5 = sub_10007B6B8();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    swift_getObjectType();
    v8 = sub_10007BC48();
    v10 = sub_100052954(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v5, a1, v6, 0xCu);
    sub_100035504(v7);
  }
}

uint64_t sub_1000421F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100031874;

  return sub_10003E188(a5);
}

uint64_t sub_1000422C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10003124C;

  return sub_10003E86C(a5);
}

uint64_t sub_100042390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100031874;

  return sub_10003F0AC(a5);
}

uint64_t sub_100042460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100031874;

  return sub_10003F790(a5);
}

uint64_t sub_100042530(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  sub_100030744(&unk_1000C5360);
  v11 = sub_10007B528();
  v12 = sub_10007B608();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v14 = sub_10003D1C8();
  v15 = swift_allocObject();
  v15[2] = inited;
  v15[3] = v14;
  v15[4] = a1;
  v15[5] = v11;
  v16 = a1;
  sub_100078AB0(0, 0, v10, a5, v15);
}

uint64_t sub_100042764(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100042780(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100031874;

  return sub_100042460(a1, v4, v5, v7, v6);
}

unint64_t sub_100042840()
{
  result = qword_1000C5370;
  if (!qword_1000C5370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C5370);
  }

  return result;
}

uint64_t sub_10004288C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100031874;

  return sub_100042390(a1, v4, v5, v7, v6);
}

uint64_t sub_10004294C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003124C;

  return sub_1000422C0(a1, v4, v5, v7, v6);
}

uint64_t sub_100042A0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100042A54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100031874;

  return sub_1000421F0(a1, v4, v5, v7, v6);
}

uint64_t sub_100042B18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100031874;

  return sub_10003D9A4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100042BE0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100042C28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100042C68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100031874;

  return sub_1000411F4(a1, v4, v5, v6, v7);
}

uint64_t sub_100042D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageID.Value(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100042D90(uint64_t a1)
{
  v2 = type metadata accessor for MessageID.Value(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100042DEC(uint64_t a1)
{
  v2 = sub_100030744(&qword_1000C5378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100042E54()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100042E9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_1000409EC(v2, v3, v4);
}

uint64_t sub_100042F58()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042F98()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_1000402EC(v2, v3, v4);
}

uint64_t sub_10004304C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_10003FCFC(v2, v3, v4);
}

uint64_t sub_100043100()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_10003F618(v2, v3, v4);
}

uint64_t sub_1000431B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_10003EDD8(v2, v3, v4);
}

uint64_t sub_100043270()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000432B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_10003E6F4(v2, v3, v4);
}

uint64_t sub_10004336C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000433AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100031874;

  return sub_10003E04C(v2, v3);
}

uint64_t sub_100043458()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_1000435E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_10007BA18();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v12 = _swiftEmptyArrayStorage;
  result = sub_100053164(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_10007B898();
        sub_100030744(&unk_1000C5440);
        swift_dynamicCast();
        v12 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100053164((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        v3[2] = v7 + 1;
        sub_1000444B4(v11, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        sub_100030744(&unk_1000C5440);
        swift_dynamicCast();
        v12 = v3;
        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          sub_100053164((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        v3[2] = v10 + 1;
        sub_1000444B4(v11, &v3[4 * v10 + 4]);
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_100043824()
{
  v1 = v0;
  v2 = [objc_allocWithZone(sub_10007AF58()) init];
  sub_10007AF48();

  v3 = [*(v1 + OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript) transcriptionString];
  if (!v3)
  {
    sub_10007B478();
    v3 = sub_10007B448();
  }

  v4 = [objc_allocWithZone(NSAttributedString) initWithString:v3];

  return v4;
}

id sub_100043CD8(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR___MPVisualMessage_vmMessage];
  v5 = a1;
  v6 = [v4 *a3];
  if (v6)
  {
    v7 = v6;
    sub_10007B478();

    v8 = sub_10007B448();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

id sub_100044218(char *a1, uint64_t a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&a1[*a4] = a3;
  v10.receiver = a1;
  v10.super_class = ObjectType;
  v8 = a3;
  return objc_msgSendSuper2(&v10, "init");
}

_OWORD *sub_1000444B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1000444D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 + 32;
  v7 = *(a3 + 16);
  if (a2)
  {

    v9 = sub_100053958(a1, v6, v7, (a2 + 16));
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_12:
        __break(1u);
        return;
      }

LABEL_4:
      if (v9 < *(a4 + 16))
      {
        swift_unknownObjectRetain();
        return;
      }

      goto LABEL_12;
    }
  }

  else if (v7)
  {
    type metadata accessor for MessageID(0);
    v9 = 0;
    while (1)
    {
      v12 = *(v6 + 8 * v9);
      v13 = sub_10007B768();

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        return;
      }
    }

    goto LABEL_4;
  }
}

void *sub_1000445D4(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
LABEL_15:
    sub_10007BA18();
    sub_10007B8E8();
    v4 = sub_10007BA18();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10007B8E8();
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_10007B898();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        sub_10007B8D8();
        ++v5;
      }

      while (v6 != v4);
    }
  }

  return _swiftEmptyArrayStorage;
}

void sub_100044778(void **a1, uint64_t a2, void **a3)
{

  v6 = sub_10007B318();
  v7 = sub_10007B6E8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock = a1;
    *v8 = 136315394;
    v20 = a2;

    v9 = sub_10007B498();
    v11 = sub_100052954(v9, v10, &v18);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    aBlock = a3;

    sub_100030744(&qword_1000C5648);
    v12 = sub_10007B498();
    v14 = sub_100052954(v12, v13, &v18);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "VoiceMailAnalyticsLogger: logging core analytics for event of %s with dictionary %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = sub_10007B448();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  v23 = sub_100055018;
  v24 = v16;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000449D8;
  v22 = &unk_1000B3670;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

Class sub_1000449D8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100055038(0, &qword_1000C5650);
    v4.super.isa = sub_10007B408().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_100044A74@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  sub_100030744(&qword_1000C56A8);
  v4 = sub_10007B288();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000A1BD0;
  v9 = (v8 + v7);
  v10 = swift_allocObject();
  *(v10 + 16) = *(v1 + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_providers);
  *v9 = v10;
  v11 = *(v5 + 104);
  v11(v9, enum case for MessageStoreQuery.providers(_:), v4);
  v12 = swift_allocObject();
  *(v12 + 16) = *(v1 + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageTypes);
  *(v9 + v6) = v12;
  v11((v9 + v6), enum case for MessageStoreQuery.types(_:), v4);
  *(v3 + 16) = v8;
  *a1 = v3;
  v11(a1, enum case for MessageStoreQuery.and(_:), v4);
}

uint64_t sub_100044C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v6 = sub_10007B578();

  return _swift_task_switch(sub_100044D04, v6, v5);
}

uint64_t sub_100044D04()
{
  swift_unknownObjectWeakAssign();
  sub_100048518();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044D78()
{
  v1 = OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_logger;
  v2 = sub_10007B338();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100055088(v0 + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_analyticsReporter);
  sub_1000550E4(*(v0 + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_onVoicemailsChanged));
  sub_100035504(v0 + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController);
}

id sub_100044E64()
{
  ObjectType = swift_getObjectType();
  sub_1000355F8(&v0[OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController], *&v0[OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController + 24]);

  sub_10007B218();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100045090(uint64_t a1, unsigned __int8 a2)
{

  v4 = sub_10007B318();
  v5 = sub_10007B6E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_100075454(a1, a2);
    v10 = sub_100052954(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "FaceTimeVoicemailManager: Is notifying listeners of messageChanges: %s", v6, 0xCu);
    sub_100035504(v7);
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;

  sub_10007AF08();
}

uint64_t sub_10004525C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 49) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v5 = sub_10007B578();

  return _swift_task_switch(sub_100045328, v5, v4);
}

uint64_t sub_100045328()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_onVoicemailsChanged);
    if (v3)
    {
      v3();
    }

    v4 = *(v0 + 49);
    *(v0 + 40) = *(v0 + 64);
    *(v0 + 48) = v4;
    sub_10007B3B8();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000453F0()
{
  v1[99] = v0;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v3 = sub_10007B578();
  v1[100] = v3;
  v1[101] = v2;

  return _swift_task_switch(sub_1000454BC, v3, v2);
}

uint64_t sub_1000454BC()
{
  v0[102] = OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_logger;
  v1 = sub_10007B318();
  v2 = sub_10007B6E8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching Messages from FTMS", v3, 2u);
  }

  v4 = v0[99];

  v5 = swift_allocObject();
  v0[103] = v5;
  *(v5 + 16) = v4;
  v6 = v4;
  sub_100030744(&qword_1000C5690);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 87, sub_100045610, v0 + 82);
}

uint64_t sub_100045610()
{
  v1 = v0[87];
  v0[104] = v1;

  v2 = swift_task_alloc();
  v0[105] = v2;
  v3 = sub_100030744(&qword_1000C5698);
  v4 = sub_100030744(&qword_1000C56A0);
  *v2 = v0;
  v2[1] = sub_100045704;

  return Task.value.getter(v0 + 93, v1, v3, v4, &protocol self-conformance witness table for Error);
}

uint64_t sub_100045704()
{
  v2 = *v1;
  *(*v1 + 848) = v0;

  v3 = *(v2 + 808);
  v4 = *(v2 + 800);
  if (v0)
  {
    v5 = sub_100045B40;
  }

  else
  {
    v5 = sub_10004585C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10004585C()
{
  v13 = v0;
  v2 = *(v0 + 744);

  v3 = sub_10007B318();
  LOBYTE(v4) = sub_10007B6E8();
  v5 = (v2 >> 62);
  if (os_log_type_enabled(v3, v4))
  {
    v1 = swift_slowAlloc();
    *v1 = 134349056;
    if (v5)
    {
      goto LABEL_25;
    }

    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    *(v1 + 4) = v6;

    _os_log_impl(&_mh_execute_header, v3, v4, "Fetched %{public}ld message(s) from FTMS", v1, 0xCu);
  }

  else
  {
  }

  if (v5)
  {
    goto LABEL_19;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
LABEL_8:
    v12 = _swiftEmptyArrayStorage;
    v3 = &v12;
    sub_10007B8E8();
    if (v4 < 0)
    {
      __break(1u);
LABEL_25:
      v6 = sub_10007BA18();
      goto LABEL_4;
    }

    v1 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = sub_10007B898();
      }

      else
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          v4 = sub_10007BA18();
          if (!v4)
          {
            break;
          }

          goto LABEL_8;
        }

        if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v2 + 8 * v1 + 32);
      }

      v8 = v7;
      ++v1;
      v9 = objc_allocWithZone(type metadata accessor for FTMessage());
      v5 = sub_100057988(v8);
      sub_10007B8C8();
      sub_10007B8F8();
      sub_10007B908();
      sub_10007B8D8();
      if (v4 == v1)
      {

        v10 = v12;
        goto LABEL_21;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_21:
  *(v0 + 856) = v10;

  return _swift_asyncLet_finish(v0 + 16, v0 + 696, sub_100045ABC, v0 + 752);
}

uint64_t sub_100045AD8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 856);

  return v1(v2);
}

uint64_t sub_100045B7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100045BE0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_100030744(&qword_1000C5110);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100045C7C, 0, 0);
}

uint64_t sub_100045C7C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_10007B5C8();
  v4 = sub_10007B608();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  v6 = v2;
  *v3 = sub_100065ED4(0, 0, v1, &unk_1000A1FD8, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100045D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v4[5] = sub_10007B198();
  v4[6] = swift_task_alloc();
  v5 = sub_10007B258();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_10007B288();
  v4[10] = swift_task_alloc();
  v6 = sub_10007B278();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100045F00, 0, 0);
}

uint64_t sub_100045F00()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  sub_100044A74(*(v0 + 80));
  (*(v3 + 104))(v1, enum case for MessageStoreFetchRequest.QuerySearchType.unsorted(_:), v2);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_100055158(&qword_1000C5670, &type metadata accessor for MessageFetchOptions);
  sub_100030744(&qword_1000C5678);
  sub_1000550F4();
  sub_10007B7B8();
  sub_10007B268();
  sub_1000355F8((v4 + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController), *(v4 + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController + 24));
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_1000460BC;
  v6 = *(v0 + 104);

  return MessageStoreController.getMessages(fetchRequest:)(v6);
}

uint64_t sub_1000460BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_100046370;
  }

  else
  {
    v4 = sub_1000461D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000461D0()
{

  v1 = sub_10007B318();
  v2 = sub_10007B6E8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[15];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    if (v4 >> 62)
    {
      v12 = v5;
      v6 = sub_10007BA18();
      v5 = v12;
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v6;
    v7 = v5;

    _os_log_impl(&_mh_execute_header, v1, v2, "Loading FTMessages gave us %{public}ld message(s).", v7, 0xCu);
  }

  else
  {
  }

  v8 = v0[15];
  v9 = v0[3];
  (*(v0[12] + 8))(v0[13], v0[11]);
  *v9 = v8;

  v10 = v0[1];

  return v10();
}

uint64_t sub_100046370()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  swift_errorRetain();
  v1 = sub_10007B318();
  v2 = sub_10007B6C8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error loading FTMessages %@", v3, 0xCu);
    sub_1000316B8(v4, &qword_1000C5378);
  }

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10004651C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_10007B288();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_10007AE28();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for MessageID.Value(0);
  v2[18] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v6 = sub_10007B578();
  v2[19] = v6;
  v2[20] = v5;

  return _swift_task_switch(sub_1000466CC, v6, v5);
}

uint64_t sub_1000466CC()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_state);
  v0[21] = v1;
  if (!(v1 >> 62))
  {

    v23 = swift_task_alloc();
    v0[22] = v23;
    v24 = type metadata accessor for CachedVoicemailManager.Cache();
    *v23 = v0;
    v23[1] = sub_100046AF0;
    v25 = (v0 + 8);
    v26 = v1;

    return Task<>.value.getter(v25, v26, v24);
  }

  if (v1 >> 62 == 1)
  {
    v2 = v0[9];
    swift_beginAccess();
    v3 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v4 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v5 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);

    sub_1000444D0(v2, v3, v4, v5);
    v7 = v6;

    if (v7)
    {

      v8 = v0[1];

      return v8(v7);
    }
  }

  sub_100042D2C(v0[9] + OBJC_IVAR___MPMessageID_value, v0[18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = v0[18];
  if (EnumCaseMultiPayload != 1)
  {
    v27 = *v11;
    v28 = swift_allocObject();
    sub_100030744(&qword_1000C5660);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1000A1BE0;
    if (!(v27 >> 31))
    {
      v30 = v0[12];
      v29 = v0[13];
      v31 = v0[11];
      *(v25 + 32) = v27;
      *(v28 + 16) = v25;
      *v29 = v28;
      (*(v30 + 104))(v29, enum case for MessageStoreQuery.voicemailID(_:), v31);
      v21 = swift_task_alloc();
      v0[25] = v21;
      *v21 = v0;
      v22 = sub_1000471A4;
      goto LABEL_14;
    }

    __break(1u);
    return Task<>.value.getter(v25, v26, v24);
  }

  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[12];
  (*(v13 + 32))(v12, v11, v15);
  v18 = swift_allocObject();
  sub_100030744(&qword_1000C5620);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000A1BE0;
  (*(v13 + 16))(v20 + v19, v12, v15);
  *(v18 + 16) = v20;
  *v14 = v18;
  (*(v17 + 104))(v14, enum case for MessageStoreQuery.recordUUID(_:), v16);
  v21 = swift_task_alloc();
  v0[23] = v21;
  *v21 = v0;
  v22 = sub_100046F78;
LABEL_14:
  v21[1] = v22;
  v32 = v0[13];

  return sub_1000473B8(v32);
}

uint64_t sub_100046AF0()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_100046C10, v3, v2);
}

uint64_t sub_100046C10()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  sub_1000444D0(v2, v3, v4, v5);
  v7 = v6;

  if (v7)
  {

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    sub_100042D2C(v0[9] + OBJC_IVAR___MPMessageID_value, v0[18]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = v0[18];
    if (EnumCaseMultiPayload == 1)
    {
      v13 = v0[15];
      v12 = v0[16];
      v14 = v0[13];
      v15 = v0[14];
      v16 = v0[11];
      v17 = v0[12];
      (*(v13 + 32))(v12, v11, v15);
      v18 = swift_allocObject();
      sub_100030744(&qword_1000C5620);
      v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000A1BE0;
      (*(v13 + 16))(v20 + v19, v12, v15);
      *(v18 + 16) = v20;
      *v14 = v18;
      (*(v17 + 104))(v14, enum case for MessageStoreQuery.recordUUID(_:), v16);
      v21 = swift_task_alloc();
      v0[23] = v21;
      *v21 = v0;
      v22 = sub_100046F78;
    }

    else
    {
      v23 = *v11;
      v24 = swift_allocObject();
      sub_100030744(&qword_1000C5660);
      result = swift_allocObject();
      *(result + 16) = xmmword_1000A1BE0;
      if (v23 >> 31)
      {
        __break(1u);
        return result;
      }

      v26 = v0[12];
      v25 = v0[13];
      v27 = v0[11];
      *(result + 32) = v23;
      *(v24 + 16) = result;
      *v25 = v24;
      (*(v26 + 104))(v25, enum case for MessageStoreQuery.voicemailID(_:), v27);
      v21 = swift_task_alloc();
      v0[25] = v21;
      *v21 = v0;
      v22 = sub_1000471A4;
    }

    v21[1] = v22;
    v28 = v0[13];

    return sub_1000473B8(v28);
  }
}

uint64_t sub_100046F78(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 192) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);

  return _swift_task_switch(sub_100047104, v7, v6);
}

uint64_t sub_100047104()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[24];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1000471A4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 208) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);

  return _swift_task_switch(sub_100047330, v7, v6);
}

uint64_t sub_100047330()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000473B8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_10007B258();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_10007B198();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_10007B288();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = sub_10007B278();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v8 = sub_10007B578();
  v2[18] = v8;
  v2[19] = v7;

  return _swift_task_switch(sub_1000475FC, v8, v7);
}

uint64_t sub_1000475FC()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[7];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v13 = v0[4];
  v8 = *(v3 + 16);
  v0[20] = v8;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v7, v2);
  sub_100030744(&qword_1000C5668);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000A1BE0;
  sub_10007B188();
  v0[2] = v9;
  sub_100055158(&qword_1000C5670, &type metadata accessor for MessageFetchOptions);
  sub_100030744(&qword_1000C5678);
  sub_1000550F4();
  sub_10007B7B8();
  (*(v5 + 104))(v4, enum case for MessageStoreFetchRequest.QuerySearchType.unsorted(_:), v6);
  sub_10007B268();
  sub_1000355F8((v13 + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController), *(v13 + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController + 24));
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_100047818;
  v11 = v0[17];

  return MessageStoreController.getMessages(fetchRequest:)(v11);
}

uint64_t sub_100047818(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v5 = *(v3 + 152);
  v6 = *(v3 + 144);
  if (v1)
  {
    v7 = sub_100047B34;
  }

  else
  {
    v7 = sub_10004795C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10004795C()
{
  v1 = v0[23];
  (*(v0[16] + 8))(v0[17], v0[15]);
  if (v1 >> 62)
  {
    result = sub_10007BA18();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    v7 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_10007B898();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[23] + 32);
  }

  v4 = v0[4];

  v5 = objc_allocWithZone(type metadata accessor for FTMessage());
  v6 = v3;
  v7 = sub_100057988(v6);
  v8 = *(v4 + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageTypes);
  v9 = sub_10007B0C8();
  if (sub_1000481CC(v9, v8))
  {
    sub_100030744(&unk_1000C59F0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000A1780;
    *(v10 + 32) = v7;
    v11 = v7;
    sub_100048234(v10);
  }

LABEL_11:

  v12 = v0[1];

  return v12(v7);
}

uint64_t sub_100047B34()
{
  v22 = v0;
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[3];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = sub_10007B318();
  v6 = sub_10007B6E8();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v11 = 136446466;
    sub_100055158(&qword_1000C5688, &type metadata accessor for MessageStoreQuery);
    v12 = sub_10007BB28();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_100052954(v12, v14, &v21);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v19 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "FaceTimeVoiceMailManager failed to retrieve message for query %{public}s because the message store threw an error %@", v11, 0x16u);
    sub_1000316B8(v19, &qword_1000C5378);

    sub_100035504(v20);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v17 = v0[1];

  return v17(0);
}

uint64_t sub_100047F7C()
{
  result = sub_10007B338();
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

uint64_t sub_100048044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v5 = sub_10007B578();

  return _swift_task_switch(sub_100048110, v5, v4);
}

uint64_t sub_100048110()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_100038380;
  v6 = *(v0 + 16);

  return sub_10004651C(v6);
}

BOOL sub_1000481CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v3 += 2;
    v6 = sub_10007B1A8();
  }

  while (v6 != sub_10007B1A8());
  return v4 != 0;
}

uint64_t sub_100048234(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_state) >> 62;
  if (!v3)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v10 = OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_deferredOperationsQueue;
    swift_beginAccess();
    v11 = *(v1 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_100078390(0, v11[2] + 1, 1, v11);
      *(v1 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_100078390((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_100055080;
    v15[5] = v9;
    *(v1 + v10) = v11;
    swift_endAccess();
    goto LABEL_16;
  }

  if (v3 != 1)
  {
LABEL_16:
    sub_10003C288();
    return swift_willThrowTypedImpl();
  }

  sub_100035B54(a1, 1);

  if (a1 >> 62)
  {
    v4 = sub_10007BA18();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    result = sub_10007B8E8();
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = v6 + 1;
        v8 = [sub_10007B898() identifier];
        swift_unknownObjectRelease();
        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        sub_10007B8D8();
        v6 = v7;
      }

      while (v4 != v7);
    }

    else
    {
      v16 = (a1 + 32);
      do
      {
        v17 = *v16++;
        v18 = [v17 identifier];
        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        sub_10007B8D8();
        --v4;
      }

      while (v4);
    }
  }

  sub_100045090(_swiftEmptyArrayStorage, 1u);
}

void sub_100048518()
{
  v1 = v0;
  v2 = sub_10007B338();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  if (*(v0 + 24) >= 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;

      v8 = sub_10007B318();
      v9 = sub_10007B6C8();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = *(v1 + 24);

        _os_log_impl(&_mh_execute_header, v8, v9, "Calling requires refetch on manager because %ld delegate calls were missed", v10, 0xCu);
      }

      else
      {
      }

      v11 = OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_logger;
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v3 + 16))(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), &v7[v11], v2);
      v13 = (*(v3 + 80) + 24) & ~*(v3 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      (*(v3 + 32))(v14 + v13, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);

      sub_10007AF08();
    }
  }
}

uint64_t sub_100048778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_10007B338();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v9 = sub_10007B578();

  return _swift_task_switch(sub_1000488A4, v9, v8);
}

void sub_1000488A4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_logger;
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v2, &v8[v7], v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v5 + 32))(v12 + v10, v2, v4);
    *(v12 + v11) = v6;

    sub_10007AF08();
  }

  else
  {
    v13 = sub_10007B318();
    v14 = sub_10007B6C8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "MessageStoreDelegate called with nil manager", v15, 2u);
    }

    v16 = v0[2];

    v17 = *(v16 + 24);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    *(v16 + 24) = v19;
  }

  v20 = v0[1];

  v20();
}

uint64_t sub_100048B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_10007B338();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v9 = sub_10007B578();

  return _swift_task_switch(sub_100048C40, v9, v8);
}

void sub_100048C40()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_logger;
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v2, &v8[v7], v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v5 + 32))(v12 + v10, v2, v4);
    *(v12 + v11) = v6;

    sub_10007AF08();
  }

  else
  {
    v13 = sub_10007B318();
    v14 = sub_10007B6C8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "MessageStoreDelegate called with nil manager", v15, 2u);
    }

    v16 = v0[2];

    v17 = *(v16 + 24);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    *(v16 + 24) = v19;
  }

  v20 = v0[1];

  v20();
}

uint64_t sub_100048EB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v9 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v19 - v11;
  a4(0);
  v13 = sub_10007B528();
  v14 = sub_10007B608();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v16 = sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v17 = swift_allocObject();
  v17[2] = inited;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = v13;

  sub_100078AB0(0, 0, v12, a6, v17);
}

uint64_t sub_100049034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_10007B338();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v9 = sub_10007B578();

  return _swift_task_switch(sub_100049160, v9, v8);
}

void sub_100049160()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_logger;
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v2, &v8[v7], v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v5 + 32))(v12 + v10, v2, v4);
    *(v12 + v11) = v6;

    sub_10007AF08();
  }

  else
  {
    v13 = sub_10007B318();
    v14 = sub_10007B6C8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "MessageStoreDelegate called with nil manager", v15, 2u);
    }

    v16 = v0[2];

    v17 = *(v16 + 24);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    *(v16 + 24) = v19;
  }

  v20 = v0[1];

  v20();
}

uint64_t sub_1000493D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_10007B338();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v9 = sub_10007B578();

  return _swift_task_switch(sub_1000494FC, v9, v8);
}

void sub_1000494FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_logger;
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v2, &v8[v7], v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v5 + 32))(v12 + v10, v2, v4);
    *(v12 + v11) = v6;

    sub_10007AF08();
  }

  else
  {
    v13 = sub_10007B318();
    v14 = sub_10007B6C8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "MessageStoreDelegate called with nil manager", v15, 2u);
    }

    v16 = v0[2];

    v17 = *(v16 + 24);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    *(v16 + 24) = v19;
  }

  v20 = v0[1];

  v20();
}

uint64_t sub_10004976C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_10007B338();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v8 = sub_10007B578();

  return _swift_task_switch(sub_100049898, v8, v7);
}

void sub_100049898()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[6];
    v3 = v0[3];
    v4 = v0[4];
    v5 = OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_logger;
    v6 = Strong;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v4 + 16))(v2, &v6[v5], v3);
    v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    (*(v4 + 32))(v9 + v8, v2, v3);

    sub_10007AF08();
  }

  else
  {
    v10 = sub_10007B318();
    v11 = sub_10007B6C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "MessageStoreDelegate called with nil manager", v12, 2u);
    }

    v13 = v0[2];

    v14 = *(v13 + 24);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v16;
  }

  v17 = v0[1];

  v17();
}

uint64_t sub_100049AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_10007B338();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v8 = sub_10007B578();

  return _swift_task_switch(sub_100049BF4, v8, v7);
}

void sub_100049BF4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[6];
    v3 = v0[3];
    v4 = v0[4];
    v5 = OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_logger;
    v6 = Strong;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v4 + 16))(v2, &v6[v5], v3);
    v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    (*(v4 + 32))(v9 + v8, v2, v3);

    sub_10007AF08();
  }

  else
  {
    v10 = sub_10007B318();
    v11 = sub_10007B6C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "MessageStoreDelegate called with nil manager", v12, 2u);
    }

    v13 = v0[2];

    v14 = *(v13 + 24);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v16;
  }

  v17 = v0[1];

  v17();
}

uint64_t sub_100049E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = sub_10007B608();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v12 = sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v13 = swift_allocObject();
  v13[2] = inited;
  v13[3] = v12;
  v13[4] = a1;

  sub_100078AB0(0, 0, v9, a4, v13);
}

uint64_t sub_100049F7C()
{
  swift_unknownObjectWeakDestroy();
  v1 = OBJC_IVAR____TtC9IntentsUIP33_B434561B0979B3D53C321DBA9EFEB12220MessageStoreDelegate_logger;
  v2 = sub_10007B338();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_10004A048()
{
  result = sub_10007B338();
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

uint64_t sub_10004A0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v5 = sub_10007B578();

  return _swift_task_switch(sub_10004A1BC, v5, v4);
}

uint64_t sub_10004A1BC()
{
  v63 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = sub_10007B318();
  if (!Strong)
  {
    LOBYTE(v9) = sub_10007B6C8();
    v19 = os_log_type_enabled(v2, v9);
    v20 = *(v0 + 184);
    if (!v19)
    {

      goto LABEL_36;
    }

    v21 = swift_slowAlloc();
    *v21 = 134217984;
    if (!(v20 >> 62))
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
      *(v21 + 4) = v22;
      v23 = v21;

      _os_log_impl(&_mh_execute_header, v2, v9, "ignoring %ld added messages, no more self", v23, 0xCu);

LABEL_36:
      Strong = v2;
      goto LABEL_58;
    }

LABEL_65:
    v58 = v21;
    v22 = sub_10007BA18();
    v21 = v58;
    goto LABEL_21;
  }

  v3 = sub_10007B6E8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v62 = v5;
    *v4 = 136315138;
    sub_10007B178();
    v6 = sub_10007B538();
    v8 = sub_100052954(v6, v7, &v62);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "messageStoreDidAddMessages: %s", v4, 0xCu);
    sub_100035504(v5);
  }

  v2 = *(v0 + 184);
  v9 = *(Strong + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageTypes);
  v62 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10007BA18())
  {

    v60 = Strong;
    v61 = v0;
    if (!i)
    {
      break;
    }

    v11 = 0;
    v12 = *(v0 + 184);
    v0 = v2 & 0xC000000000000001;
    v13 = v2 & 0xFFFFFFFFFFFFFF8;
    Strong = (v12 + 32);
    while (1)
    {
      if (v0)
      {
        v14 = sub_10007B898();
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_38;
        }

        v14 = Strong[v11];
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v2 = v14;
      v17 = sub_10007B0C8();
      if (sub_1000481CC(v17, v9))
      {
        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        v2 = &v62;
        sub_10007B8D8();
      }

      else
      {
      }

      ++v11;
      if (v16 == i)
      {
        v18 = v62;
        Strong = v60;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_23:

  v24 = (v18 >> 62) & 1;
  if (v18 < 0)
  {
    LODWORD(v24) = 1;
  }

  v59 = v24;
  if (v24 == 1)
  {
    v21 = sub_10007BA18();
    v25 = v21;
    v0 = v61;
    if (!v21)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v25 = *(v18 + 16);
    v0 = v61;
    if (!v25)
    {
      goto LABEL_41;
    }
  }

  if (v25 < 1)
  {
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v26 = 0;
  v27 = v18 & 0xC000000000000001;
  do
  {
    if (v27)
    {
      v28 = sub_10007B898();
    }

    else
    {
      v28 = *(v18 + 8 * v26 + 32);
    }

    v29 = v28;
    v30 = sub_10007B148();
    if ((v31 & 1) == 0)
    {
      v32 = v30;
      sub_100030744(&qword_1000C5630);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000A1BF0;
      *(inited + 32) = 0x6D766C5F7369;
      *(inited + 40) = 0xE600000000000000;
      sub_100055038(0, &qword_1000C5638);
      sub_10007B0C8();
      v34 = sub_10007B1A8();
      v35 = v34 == sub_10007B1A8();
      *(inited + 48) = sub_10007B748(v35);
      *(inited + 56) = 0x6D76765F7369;
      *(inited + 64) = 0xE600000000000000;
      sub_10007B0C8();
      v36 = sub_10007B1A8();
      v37 = v36 == sub_10007B1A8();
      *(inited + 72) = sub_10007B748(v37);
      *(inited + 80) = 0x6E6F697461727564;
      *(inited + 88) = 0xE800000000000000;
      sub_10007B138();
      *(inited + 96) = [objc_allocWithZone(NSNumber) initWithDouble:round(v38)];
      *(inited + 104) = 0xD000000000000011;
      *(inited + 112) = 0x800000010008C140;
      *(inited + 120) = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v32];
      v39 = sub_100064C84(inited);
      Strong = v60;
      v0 = v61;
      swift_setDeallocating();
      sub_100030744(&qword_1000C5640);
      v27 = v18 & 0xC000000000000001;
      swift_arrayDestroy();
      sub_10004AA48(v39);
      v41 = v40;

      sub_100044778(0xD00000000000002DLL, 0x800000010008C160, v41);
    }

    ++v26;
  }

  while (v25 != v26);
LABEL_41:

  v42 = sub_10007B318();
  v43 = sub_10007B6E8();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = v25;
    v46 = swift_slowAlloc();
    v62 = v46;
    *v44 = 136315138;
    sub_10007B178();
    v47 = sub_10007B538();
    v49 = sub_100052954(v47, v48, &v62);

    *(v44 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v42, v43, "messageStoreDidAddMessages(filtered): %s", v44, 0xCu);
    sub_100035504(v46);
    v25 = v45;
  }

  if (!v25)
  {

    goto LABEL_58;
  }

  if (v59)
  {
    v9 = sub_10007BA18();
  }

  else
  {
    v9 = *(v18 + 16);
  }

  if (v9)
  {
    v62 = _swiftEmptyArrayStorage;
    v2 = &v62;
    v21 = sub_10007B8E8();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v50 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v51 = sub_10007B898();
        }

        else
        {
          v51 = *(v18 + 8 * v50 + 32);
        }

        v52 = v51;
        ++v50;
        v53 = objc_allocWithZone(type metadata accessor for FTMessage());
        sub_100057988(v52);
        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        sub_10007B8D8();
      }

      while (v9 != v50);

      v54 = v62;
      if (!(v62 >> 62))
      {
        goto LABEL_56;
      }

LABEL_62:

      sub_100030744(&unk_1000C5360);
      v55 = sub_10007BA08();

      goto LABEL_57;
    }

    goto LABEL_64;
  }

  v54 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_62;
  }

LABEL_56:

  sub_10007BB48();
  v55 = v54;
LABEL_57:

  sub_100048234(v55);

LABEL_58:

  v56 = *(v0 + 8);

  return v56();
}

void sub_10004AA48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100030744(&qword_1000C5658);
    v2 = sub_10007BA58();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_1000604AC(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_10004AC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v5 = sub_10007B578();

  return _swift_task_switch(sub_10004ACF4, v5, v4);
}

uint64_t sub_10004ACF4()
{
  v47 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = sub_10007B318();
  if (!Strong)
  {
    v19 = sub_10007B6C8();
    v20 = os_log_type_enabled(v2, v19);
    v21 = *(v0 + 56);
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      if (v21 >> 62)
      {
        v42 = v22;
        v23 = sub_10007BA18();
        v22 = v42;
      }

      else
      {
        v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 4) = v23;
      v24 = v22;

      _os_log_impl(&_mh_execute_header, v2, v19, "ignoring %ld updated messages, no more self", v24, 0xCu);

      goto LABEL_46;
    }

    goto LABEL_37;
  }

  v3 = sub_10007B6E8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v46 = v5;
    *v4 = 136315138;
    sub_10007B178();
    v6 = sub_10007B538();
    v8 = sub_100052954(v6, v7, &v46);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "messageStoreDidUpdateMessages: %s", v4, 0xCu);
    sub_100035504(v5);
  }

  v9 = *(v0 + 56);
  v45 = *(Strong + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageTypes);
  v46 = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10007BA18())
  {
    v44 = Strong;

    if (!i)
    {
      break;
    }

    v11 = 0;
    v43 = v0;
    v12 = v9 & 0xC000000000000001;
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
    Strong = *(v0 + 56) + 32;
    v0 = v45;
    while (1)
    {
      if (v12)
      {
        v14 = sub_10007B898();
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_39;
        }

        v14 = *(Strong + 8 * v11);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v9 = v14;
      v17 = sub_10007B0C8();
      if (sub_1000481CC(v17, v45))
      {
        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        v9 = &v46;
        sub_10007B8D8();
      }

      else
      {
      }

      ++v11;
      if (v16 == i)
      {
        v18 = v46;
        v0 = v43;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_23:

  v25 = sub_10007B318();
  v26 = sub_10007B6E8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v46 = v28;
    *v27 = 136315138;
    sub_10007B178();
    v29 = sub_10007B538();
    v31 = sub_100052954(v29, v30, &v46);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "messageStoreDidUpdateMessages(filtered): %s", v27, 0xCu);
    sub_100035504(v28);
  }

  v2 = v44;
  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    if (sub_10007BA18())
    {
      v39 = sub_10007BA18();
      if (!v39)
      {

        v37 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_35:

          sub_10007BB48();
          v38 = v37;
LABEL_36:

          sub_10004B2F4(v38);
LABEL_37:

          goto LABEL_46;
        }

LABEL_51:

        sub_100030744(&unk_1000C5360);
        v38 = sub_10007BA08();

        goto LABEL_36;
      }

      v32 = v39;
      v46 = _swiftEmptyArrayStorage;
      sub_10007B8E8();
      if ((v32 & 0x8000000000000000) == 0)
      {
LABEL_29:
        v33 = 0;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v34 = sub_10007B898();
          }

          else
          {
            v34 = *(v18 + 8 * v33 + 32);
          }

          v35 = v34;
          ++v33;
          v36 = objc_allocWithZone(type metadata accessor for FTMessage());
          sub_100057988(v35);
          sub_10007B8C8();
          sub_10007B8F8();
          sub_10007B908();
          sub_10007B8D8();
        }

        while (v32 != v33);

        v37 = v46;
        if (!(v46 >> 62))
        {
          goto LABEL_35;
        }

        goto LABEL_51;
      }

      __break(1u);
    }
  }

  else
  {
    v32 = *(v18 + 16);
    if (v32)
    {
      v46 = _swiftEmptyArrayStorage;
      sub_10007B8E8();
      goto LABEL_29;
    }
  }

LABEL_46:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10004B2F4(unint64_t a1)
{
  sub_100038918(a1);
  if (a1 >> 62)
  {
    v2 = sub_10007BA18();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v11 = _swiftEmptyArrayStorage;
    result = sub_10007B8E8();
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = [sub_10007B898() identifier];
        swift_unknownObjectRelease();
        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        sub_10007B8D8();
        v5 = v6;
      }

      while (v2 != v6);
    }

    else
    {
      v8 = (a1 + 32);
      do
      {
        v9 = *v8++;
        v10 = [v9 identifier];
        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        sub_10007B8D8();
        --v2;
      }

      while (v2);
    }

    v3 = v11;
  }

  sub_100045090(v3, 2u);
}

uint64_t sub_10004B5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v5 = sub_10007B578();

  return _swift_task_switch(sub_10004B6BC, v5, v4);
}

uint64_t sub_10004B6BC()
{
  v47 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = sub_10007B318();
  if (!Strong)
  {
    v19 = sub_10007B6C8();
    v20 = os_log_type_enabled(v2, v19);
    v21 = *(v0 + 56);
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      if (v21 >> 62)
      {
        v42 = v22;
        v23 = sub_10007BA18();
        v22 = v42;
      }

      else
      {
        v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 4) = v23;
      v24 = v22;

      _os_log_impl(&_mh_execute_header, v2, v19, "ignoring %ld deleted messages, no more self", v24, 0xCu);

      goto LABEL_46;
    }

    goto LABEL_37;
  }

  v3 = sub_10007B6E8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v46 = v5;
    *v4 = 136315138;
    sub_10007B178();
    v6 = sub_10007B538();
    v8 = sub_100052954(v6, v7, &v46);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "messageStoreDidMoveToTrashMessages: %s", v4, 0xCu);
    sub_100035504(v5);
  }

  v9 = *(v0 + 56);
  v45 = *(Strong + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageTypes);
  v46 = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10007BA18())
  {
    v44 = Strong;

    if (!i)
    {
      break;
    }

    v11 = 0;
    v43 = v0;
    v12 = v9 & 0xC000000000000001;
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
    Strong = *(v0 + 56) + 32;
    v0 = v45;
    while (1)
    {
      if (v12)
      {
        v14 = sub_10007B898();
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_39;
        }

        v14 = *(Strong + 8 * v11);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v9 = v14;
      v17 = sub_10007B0C8();
      if (sub_1000481CC(v17, v45))
      {
        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        v9 = &v46;
        sub_10007B8D8();
      }

      else
      {
      }

      ++v11;
      if (v16 == i)
      {
        v18 = v46;
        v0 = v43;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_23:

  v25 = sub_10007B318();
  v26 = sub_10007B6E8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v46 = v28;
    *v27 = 136315138;
    sub_10007B178();
    v29 = sub_10007B538();
    v31 = sub_100052954(v29, v30, &v46);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "messageStoreDidMoveToTrashMessages(filtered): %s", v27, 0xCu);
    sub_100035504(v28);
  }

  v2 = v44;
  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    if (sub_10007BA18())
    {
      v39 = sub_10007BA18();
      if (!v39)
      {

        v37 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_35:

          sub_10007BB48();
          v38 = v37;
LABEL_36:

          sub_10004B2F4(v38);
LABEL_37:

          goto LABEL_46;
        }

LABEL_51:

        sub_100030744(&unk_1000C5360);
        v38 = sub_10007BA08();

        goto LABEL_36;
      }

      v32 = v39;
      v46 = _swiftEmptyArrayStorage;
      sub_10007B8E8();
      if ((v32 & 0x8000000000000000) == 0)
      {
LABEL_29:
        v33 = 0;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v34 = sub_10007B898();
          }

          else
          {
            v34 = *(v18 + 8 * v33 + 32);
          }

          v35 = v34;
          ++v33;
          v36 = objc_allocWithZone(type metadata accessor for FTMessage());
          sub_100057988(v35);
          sub_10007B8C8();
          sub_10007B8F8();
          sub_10007B908();
          sub_10007B8D8();
        }

        while (v32 != v33);

        v37 = v46;
        if (!(v46 >> 62))
        {
          goto LABEL_35;
        }

        goto LABEL_51;
      }

      __break(1u);
    }
  }

  else
  {
    v32 = *(v18 + 16);
    if (v32)
    {
      v46 = _swiftEmptyArrayStorage;
      sub_10007B8E8();
      goto LABEL_29;
    }
  }

LABEL_46:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10004BCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_10007AE28();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v6 = sub_10007B578();

  return _swift_task_switch(sub_10004BDF0, v6, v5);
}

uint64_t sub_10004BDF0()
{
  v32 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = sub_10007B318();
  if (Strong)
  {
    v3 = sub_10007B6E8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v31 = v5;
      *v4 = 136315138;
      v6 = sub_10007B538();
      v8 = sub_100052954(v6, v7, &v31);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "messageStoreDidDeleteMessagesWithUUIDs: %s", v4, 0xCu);
      sub_100035504(v5);
    }

    v9 = *(v0 + 72);
    v10 = *(v9 + 16);
    v11 = _swiftEmptyArrayStorage;
    if (v10)
    {
      v27 = Strong;
      v12 = *(v0 + 88);
      v31 = _swiftEmptyArrayStorage;
      sub_10007B8E8();
      v13 = *(v12 + 16);
      v12 += 16;
      v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
      v29 = *(v12 + 56);
      v30 = v13;
      v28 = (v12 - 8);
      do
      {
        v16 = *(v0 + 96);
        v15 = *(v0 + 104);
        v17 = *(v0 + 80);
        v30(v15, v14, v17);
        v30(v16, v15, v17);
        v18 = type metadata accessor for MessageID(0);
        v19 = objc_allocWithZone(v18);
        v30(&v19[OBJC_IVAR___MPMessageID_value], v16, v17);
        type metadata accessor for MessageID.Value(0);
        swift_storeEnumTagMultiPayload();
        *(v0 + 40) = v19;
        *(v0 + 48) = v18;
        objc_msgSendSuper2((v0 + 40), "init");
        v20 = *v28;
        (*v28)(v16, v17);
        v20(v15, v17);
        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        sub_10007B8D8();
        v14 += v29;
        --v10;
      }

      while (v10);
      v11 = v31;
      Strong = v27;
    }

    sub_10004C1B4(v11);
  }

  else
  {
    v21 = sub_10007B6C8();
    v22 = os_log_type_enabled(v2, v21);
    v23 = *(v0 + 72);
    if (v22)
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = *(v23 + 16);

      _os_log_impl(&_mh_execute_header, v2, v21, "ignoring %ld deleted messageUUIDs, no more self", v24, 0xCu);
    }

    else
    {
    }

    Strong = v2;
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10004C1B4(unint64_t a1)
{
  v1 = sub_100038514(a1);

  v2 = sub_10007B318();
  v3 = sub_10007B6E8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    type metadata accessor for MessageID(0);
    v6 = sub_10007B538();
    v8 = sub_100052954(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeVoicemailManager did remove: %s", v4, 0xCu);
    sub_100035504(v5);
  }

  if (!(v1 >> 62))
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (sub_10007BA18())
  {
LABEL_5:
    sub_100045090(v1, 0);
  }

LABEL_6:
}

uint64_t sub_10004C4D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v4 = sub_10007B578();

  return _swift_task_switch(sub_10004C5A0, v4, v3);
}

uint64_t sub_10004C5A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_state) = 0x8000000000000000;

    v3 = sub_10007B318();
    v4 = sub_10007B6E8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "messageStoreDidReconnect(), triggering onVoicemailsChanged().", v5, 2u);
    }

    sub_100045090(0, 3u);
  }

  else
  {
    v2 = sub_10007B318();
    v6 = sub_10007B6C8();
    if (os_log_type_enabled(v2, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, v6, "ignoring messageStoreDidReconnect(), no more self", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10004C734(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v4 = sub_10007B578();

  return _swift_task_switch(sub_10004C7FC, v4, v3);
}

uint64_t sub_10004C7FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_state) = 0x8000000000000000;

    v3 = sub_10007B318();
    v4 = sub_10007B6E8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "messageStoreRequiresRefetch(), triggering onVoicemailsChanged().", v5, 2u);
    }

    sub_100045090(0, 3u);
  }

  else
  {
    v2 = sub_10007B318();
    v6 = sub_10007B6C8();
    if (os_log_type_enabled(v2, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, v6, "ignoring messageStoreRequiresRefetch(), no more self", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10004C9F4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_10007B288();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_10007AE28();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v6 = sub_10007B578();
  v2[17] = v6;
  v2[18] = v5;

  return _swift_task_switch(sub_10004CB8C, v6, v5);
}

uint64_t sub_10004CB8C()
{
  v11 = v0;
  v1 = sub_1000445D4(v0[7], type metadata accessor for FTMessage);
  if (!v1)
  {

    v2 = sub_10007B318();
    v3 = sub_10007B6C8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_100052954(0x654D3C7961727241, 0xEE003E6567617373, &v10);
      _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v4, 0xCu);
      sub_100035504(v5);
    }

    v1 = _swiftEmptyArrayStorage;
  }

  v0[19] = v1;
  if (v1 >> 62)
  {
    v7 = sub_10007BA18();
    v0[20] = v7;
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[20] = v6;
    if (v6)
    {
LABEL_7:

      return _swift_task_switch(sub_10004CDB8, 0, 0);
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10004CDB8()
{
  sub_10007B5B8();
  *(v0 + 168) = sub_10007B5A8();
  v2 = sub_10007B578();

  return _swift_task_switch(sub_10004CE4C, v2, v1);
}

uint64_t sub_10004CE4C()
{
  v1 = v0[20];

  if (v1 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v0[19];
    v7 = v6 & 0xC000000000000001;
    v8 = v6 + 32;
    do
    {
      v9 = v0[20];
      v10 = v5 + 1;
      if (v7)
      {
        atomic_store(1u, (sub_10007B898() + OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyIsDeleted));
        swift_unknownObjectRelease();
      }

      else
      {
        atomic_store(1u, (*(v8 + 8 * v5) + OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyIsDeleted));
      }

      v5 = v10;
    }

    while (v10 != v9);
    v3 = v0[17];
    v4 = v0[18];
    v2 = sub_10004CF2C;
  }

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10004CF2C()
{
  v1 = *(v0 + 152);
  if (v1 >> 62)
  {
    v2 = sub_10007BA18();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    sub_100045090(_swiftEmptyArrayStorage, 0);

    goto LABEL_19;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v3 = sub_10007B8E8();
  if (v2 < 0)
  {
    __break(1u);
    return MessageStoreController.deleteMessages(query:)(v3);
  }

  v4 = 0;
  v5 = *(v0 + 104);
  v31 = (v5 + 8);
  v32 = (v5 + 16);
  do
  {
    v14 = *(v0 + 152);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v6 = sub_10007B898();
    }

    else
    {
      v6 = *(v14 + 8 * v4 + 32);
    }

    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v9 = *(v0 + 96);
    ++v4;
    v33 = v6;
    sub_10007B078();
    v10 = *v32;
    (*v32)(v8, v7, v9);
    v11 = type metadata accessor for MessageID(0);
    v12 = objc_allocWithZone(v11);
    v10(&v12[OBJC_IVAR___MPMessageID_value], v8, v9);
    type metadata accessor for MessageID.Value(0);
    swift_storeEnumTagMultiPayload();
    *(v0 + 40) = v12;
    *(v0 + 48) = v11;
    objc_msgSendSuper2((v0 + 40), "init");
    v13 = *v31;
    (*v31)(v8, v9);
    v13(v7, v9);

    sub_10007B8C8();
    sub_10007B8F8();
    sub_10007B908();
    sub_10007B8D8();
  }

  while (v2 != v4);
  v15 = *(v0 + 104);
  sub_100045090(_swiftEmptyArrayStorage, 0);

  sub_100053184(0, v2, 0);
  for (i = 0; i != v2; ++i)
  {
    v17 = *(v0 + 152);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = sub_10007B898();
    }

    else
    {
      v18 = *(v17 + 8 * i + 32);
    }

    v19 = v18;
    swift_beginAccess();
    v20 = v19;
    sub_10007B078();
    swift_endAccess();

    v22 = _swiftEmptyArrayStorage[2];
    v21 = _swiftEmptyArrayStorage[3];
    if (v22 >= v21 >> 1)
    {
      sub_100053184(v21 > 1, v22 + 1, 1);
    }

    v23 = *(v0 + 112);
    v24 = *(v0 + 96);
    _swiftEmptyArrayStorage[2] = v22 + 1;
    (*(v15 + 32))(_swiftEmptyArrayStorage + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v22, v23, v24);
  }

LABEL_19:

  *(v0 + 176) = _swiftEmptyArrayStorage;
  v26 = *(v0 + 80);
  v25 = *(v0 + 88);
  v27 = *(v0 + 72);
  sub_1000355F8((*(v0 + 64) + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController), *(*(v0 + 64) + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController + 24));
  v28 = swift_allocObject();
  *(v28 + 16) = _swiftEmptyArrayStorage;
  *v25 = v28;
  (*(v26 + 104))(v25, enum case for MessageStoreQuery.recordUUID(_:), v27);

  v29 = swift_task_alloc();
  *(v0 + 184) = v29;
  *v29 = v0;
  v29[1] = sub_10004D380;
  v3 = *(v0 + 88);

  return MessageStoreController.deleteMessages(query:)(v3);
}

uint64_t sub_10004D380()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  v5[24] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[17];
    v7 = v5[18];

    return _swift_task_switch(sub_10004D54C, v6, v7);
  }

  else
  {

    v8 = v5[1];

    return v8();
  }
}

uint64_t sub_10004D54C()
{
  v14 = v0;

  swift_errorRetain();
  v1 = sub_10007B318();
  v2 = sub_10007B6C8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v3 = 136315394;
    v6 = sub_10007B538();
    v8 = v7;

    v9 = sub_100052954(v6, v8, &v13);

    *(v3 + 4) = v9;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v10;
    *v4 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to delete messages with recordUUIDs %s with error: %@", v3, 0x16u);
    sub_1000316B8(v4, &qword_1000C5378);

    sub_100035504(v5);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10004D90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v5 = sub_10007B578();

  return _swift_task_switch(sub_10004D9D8, v5, v4);
}

uint64_t sub_10004D9D8()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_100030744(&unk_1000C5360);
  v2 = sub_10007B528();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1000434F4;

  return sub_10004C9F4(v2);
}

uint64_t sub_10004DAB4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_100030744(&unk_1000C5990);
  v2[6] = swift_task_alloc();
  sub_100030744(&qword_1000C4F48);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_10007AE28();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v5 = sub_10007B578();
  v2[13] = v5;
  v2[14] = v4;

  return _swift_task_switch(sub_10004DC60, v5, v4);
}

uint64_t sub_10004DC60()
{
  v17 = v0;
  v0[15] = OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_logger;

  v1 = sub_10007B318();
  v2 = sub_10007B6E8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v3 = 136315394;
    *(v3 + 4) = sub_100052954(0x655273416B72616DLL, 0xEE00293A5F286461, &v16);
    *(v3 + 12) = 2080;
    sub_100030744(&unk_1000C5360);
    v4 = sub_10007B538();
    v6 = sub_100052954(v4, v5, &v16);

    *(v3 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: Setting messages as read %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v7 = sub_1000445D4(v0[4], type metadata accessor for FTMessage);
  if (!v7)
  {

    v8 = sub_10007B318();
    v9 = sub_10007B6C8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_100052954(0x654D3C7961727241, 0xEE003E6567617373, &v16);
      _os_log_impl(&_mh_execute_header, v8, v9, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v10, 0xCu);
      sub_100035504(v11);
    }

    v7 = _swiftEmptyArrayStorage;
  }

  v0[16] = v7;
  if (v7 >> 62)
  {
    v13 = sub_10007BA18();
    v0[17] = v13;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[17] = v12;
    if (v12)
    {
LABEL_9:

      return _swift_task_switch(sub_10004DFEC, 0, 0);
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10004DFEC()
{
  sub_10007B5B8();
  *(v0 + 144) = sub_10007B5A8();
  v2 = sub_10007B578();

  return _swift_task_switch(sub_10004E080, v2, v1);
}

uint64_t sub_10004E080()
{
  v1 = v0[17];

  if (v1 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v0[16];
    v7 = v6 & 0xC000000000000001;
    v8 = v6 + 32;
    do
    {
      if (v7)
      {
        v9 = sub_10007B898();
      }

      else
      {
        v9 = *(v8 + 8 * v5);
      }

      v10 = v9;
      v11 = v0[17];
      ++v5;
      v12 = &v9[OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyRead];
      os_unfair_lock_lock(&v9[OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyRead]);
      LOBYTE(v12[1]._os_unfair_lock_opaque) = 1;
      os_unfair_lock_unlock(v12);
    }

    while (v5 != v11);
    v3 = v0[13];
    v4 = v0[14];
    v2 = sub_10004E174;
  }

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10004E174()
{
  v42 = v0;
  receiver = v0[8].receiver;
  if (receiver >> 62)
  {
    v2 = sub_10007BA18();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:
    v28 = _swiftEmptyArrayStorage;
    sub_100045090(_swiftEmptyArrayStorage, 2u);

    goto LABEL_17;
  }

  v2 = *((receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v41 = _swiftEmptyArrayStorage;
  v3 = sub_10007B8E8();
  if (v2 < 0)
  {
    __break(1u);
    return MessageStoreController.updateMessages(_:)(v3);
  }

  v4 = 0;
  v5 = v0[5].receiver;
  v37 = (v5 + 8);
  v38 = (v5 + 16);
  v40 = v2;
  do
  {
    v14 = v0[8].receiver;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v6 = sub_10007B898();
    }

    else
    {
      v6 = *(v14 + v4 + 4);
    }

    super_class = v0[5].super_class;
    v7 = v0[6].receiver;
    v9 = v0[4].super_class;
    ++v4;
    v39 = v6;
    sub_10007B078();
    v10 = *v38;
    (*v38)(super_class, v7, v9);
    v11 = type metadata accessor for MessageID(0);
    v12 = objc_allocWithZone(v11);
    v10(&v12[OBJC_IVAR___MPMessageID_value], super_class, v9);
    type metadata accessor for MessageID.Value(0);
    swift_storeEnumTagMultiPayload();
    v0[1].receiver = v12;
    v0[1].super_class = v11;
    objc_msgSendSuper2(v0 + 1, "init");
    v13 = *v37;
    (*v37)(super_class, v9);
    v13(v7, v9);

    sub_10007B8C8();
    sub_10007B8F8();
    sub_10007B908();
    sub_10007B8D8();
  }

  while (v40 != v4);
  v15 = v0[5].receiver;
  sub_100045090(v41, 2u);

  v41 = _swiftEmptyArrayStorage;
  sub_10007B8E8();
  v16 = 0;
  v17 = (v15 + 56);
  do
  {
    v27 = v0[8].receiver;
    if ((v27 & 0xC000000000000001) != 0)
    {
      v18 = sub_10007B898();
    }

    else
    {
      v18 = *(v27 + v16 + 4);
    }

    v19 = v18;
    v20 = v0[4].receiver;
    v21 = v0[4].super_class;
    v23 = v0[3].receiver;
    v22 = v0[3].super_class;
    ++v16;
    sub_10007B078();
    v24 = *v17;
    (*v17)(v20, 1, 1, v21);
    v24(v22, 1, 1, v21);
    v25 = sub_10007AD68();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v26 = objc_allocWithZone(sub_10007B1D8());
    sub_10007B1B8();

    sub_10007B8C8();
    sub_10007B8F8();
    sub_10007B908();
    sub_10007B8D8();
  }

  while (v40 != v16);
  v28 = v41;
LABEL_17:
  v0[9].super_class = v28;

  v29 = sub_10007B318();
  v30 = sub_10007B6E8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_100052954(0x655273416B72616DLL, 0xEE00293A5F286461, &v41);
    *(v31 + 12) = 2080;
    type metadata accessor for FTMessage();
    v32 = sub_10007B538();
    v34 = sub_100052954(v32, v33, &v41);

    *(v31 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s: Updating Messages with read: %s", v31, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000355F8((v0[2].super_class + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController), *(v0[2].super_class + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController + 24));
  v35 = swift_task_alloc();
  v0[10].receiver = v35;
  *v35 = v0;
  v35[1] = sub_10004E70C;
  v3 = v28;

  return MessageStoreController.updateMessages(_:)(v3);
}

uint64_t sub_10004E70C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {

    v4 = *(v2 + 104);
    v5 = *(v2 + 112);

    return _swift_task_switch(sub_10004E8A4, v4, v5);
  }

  else
  {

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_10004E8A4()
{
  v14 = v0;

  swift_errorRetain();
  v1 = sub_10007B318();
  v2 = sub_10007B6C8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v3 = 136315394;
    type metadata accessor for FTMessage();
    v6 = sub_10007B538();
    v8 = v7;

    v9 = sub_100052954(v6, v8, &v13);

    *(v3 + 4) = v9;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v10;
    *v4 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to set messages %s as read with error: %@", v3, 0x16u);
    sub_1000316B8(v4, &qword_1000C5378);

    sub_100035504(v5);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10004EC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v5 = sub_10007B578();

  return _swift_task_switch(sub_10004ED34, v5, v4);
}

uint64_t sub_10004ED34()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_100030744(&unk_1000C5360);
  v2 = sub_10007B528();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10003EF50;

  return sub_10004DAB4(v2);
}

uint64_t sub_10004EE10(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_100030744(&unk_1000C5990);
  v2[6] = swift_task_alloc();
  sub_100030744(&qword_1000C4F48);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_10007AE28();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v5 = sub_10007B578();
  v2[15] = v5;
  v2[16] = v4;

  return _swift_task_switch(sub_10004EFD4, v5, v4);
}

uint64_t sub_10004EFD4()
{
  v11 = v0;
  v1 = sub_1000445D4(v0[4], type metadata accessor for FTMessage);
  if (!v1)
  {

    v2 = sub_10007B318();
    v3 = sub_10007B6C8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_100052954(0x654D3C7961727241, 0xEE003E6567617373, &v10);
      _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v4, 0xCu);
      sub_100035504(v5);
    }

    v1 = _swiftEmptyArrayStorage;
  }

  v0[17] = v1;
  if (v1 >> 62)
  {
    v7 = sub_10007BA18();
    v0[18] = v7;
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[18] = v6;
    if (v6)
    {
LABEL_7:

      return _swift_task_switch(sub_10004F228, 0, 0);
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10004F228()
{
  sub_10007B5B8();
  *(v0 + 152) = sub_10007B5A8();
  v2 = sub_10007B578();

  return _swift_task_switch(sub_10004F2BC, v2, v1);
}

uint64_t sub_10004F2BC()
{
  v1 = v0[18];

  if (v1 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v0[17];
    v7 = v6 & 0xC000000000000001;
    v8 = v6 + 32;
    do
    {
      if (v7)
      {
        v9 = sub_10007B898();
      }

      else
      {
        v9 = *(v8 + 8 * v5);
      }

      v10 = v9;
      v11 = v0[18];
      ++v5;
      v12 = &v9[OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyFolder];
      os_unfair_lock_lock(&v9[OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyFolder]);
      *(v12 + 1) = 2;
      v12[16] = 0;
      os_unfair_lock_unlock(v12);
    }

    while (v5 != v11);
    v3 = v0[15];
    v4 = v0[16];
    v2 = sub_10004F3B4;
  }

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10004F3B4()
{
  v44 = v0;
  super_class = v0[8].super_class;
  if (super_class >> 62)
  {
    v2 = sub_10007BA18();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:
    v28 = _swiftEmptyArrayStorage;
    sub_100045090(_swiftEmptyArrayStorage, 2u);

    goto LABEL_17;
  }

  v2 = *((super_class & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v43 = _swiftEmptyArrayStorage;
  v3 = sub_10007B8E8();
  if (v2 < 0)
  {
    __break(1u);
    return MessageStoreController.updateMessages(_:)(v3);
  }

  v4 = 0;
  receiver = v0[5].receiver;
  v39 = (receiver + 8);
  v40 = (receiver + 16);
  v42 = v2;
  do
  {
    v14 = v0[8].super_class;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v6 = sub_10007B898();
    }

    else
    {
      v6 = *(v14 + v4 + 4);
    }

    v8 = v0[6].super_class;
    v7 = v0[7].receiver;
    v9 = v0[4].super_class;
    ++v4;
    v41 = v6;
    sub_10007B078();
    v10 = *v40;
    (*v40)(v8, v7, v9);
    v11 = type metadata accessor for MessageID(0);
    v12 = objc_allocWithZone(v11);
    v10(&v12[OBJC_IVAR___MPMessageID_value], v8, v9);
    type metadata accessor for MessageID.Value(0);
    swift_storeEnumTagMultiPayload();
    v0[1].receiver = v12;
    v0[1].super_class = v11;
    objc_msgSendSuper2(v0 + 1, "init");
    v13 = *v39;
    (*v39)(v8, v9);
    v13(v7, v9);

    sub_10007B8C8();
    sub_10007B8F8();
    sub_10007B908();
    sub_10007B8D8();
  }

  while (v42 != v4);
  v15 = v0[5].receiver;
  sub_100045090(v43, 2u);

  v43 = _swiftEmptyArrayStorage;
  sub_10007B8E8();
  v16 = 0;
  v17 = (v15 + 56);
  do
  {
    v27 = v0[8].super_class;
    if ((v27 & 0xC000000000000001) != 0)
    {
      v18 = sub_10007B898();
    }

    else
    {
      v18 = *(v27 + v16 + 4);
    }

    v19 = v18;
    v20 = v0[4].receiver;
    v21 = v0[4].super_class;
    v23 = v0[3].receiver;
    v22 = v0[3].super_class;
    ++v16;
    sub_10007B078();
    v24 = *v17;
    (*v17)(v20, 1, 1, v21);
    v24(v22, 1, 1, v21);
    v25 = sub_10007AD68();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v26 = objc_allocWithZone(sub_10007B1D8());
    sub_10007B1B8();

    sub_10007B8C8();
    sub_10007B8F8();
    sub_10007B908();
    sub_10007B8D8();
  }

  while (v42 != v16);

  v28 = v43;
LABEL_17:
  v29 = OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_logger;
  v0[10].receiver = v28;
  v0[10].super_class = v29;

  v30 = sub_10007B318();
  v31 = sub_10007B6C8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v43 = v33;
    *v32 = 136315138;
    sub_10007B1D8();
    v34 = sub_10007B538();
    v36 = sub_100052954(v34, v35, &v43);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "[moveToTrash] Updating messages in FaceTimeVoicemailManager - Updates: %s", v32, 0xCu);
    sub_100035504(v33);
  }

  sub_1000355F8((v0[2].super_class + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController), *(v0[2].super_class + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController + 24));
  v37 = swift_task_alloc();
  v0[11].receiver = v37;
  *v37 = v0;
  v37[1] = sub_10004F91C;
  v3 = v28;

  return MessageStoreController.updateMessages(_:)(v3);
}

uint64_t sub_10004F91C()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {
    v3 = v2[15];
    v4 = v2[16];

    return _swift_task_switch(sub_10004FAB0, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

size_t sub_10004FAB0()
{
  v35 = v0;

  swift_errorRetain();
  v1 = sub_10007B318();
  v2 = sub_10007B6C8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    *v4 = 136315394;
    if (v3 >> 62)
    {
      v7 = sub_10007BA18();
      v32 = v5;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v32 = v5;
      if (v7)
      {
LABEL_4:
        v34 = _swiftEmptyArrayStorage;
        result = sub_100053184(0, v7 & ~(v7 >> 63), 0);
        if (v7 < 0)
        {
          __break(1u);
          return result;
        }

        v29 = v6;
        v30 = v2;
        v31 = v1;
        v9 = v34;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = 0;
          v11 = v0[10];
          do
          {
            sub_10007B898();
            sub_10007B1C8();
            swift_unknownObjectRelease();
            v34 = v9;
            v13 = v9[2];
            v12 = v9[3];
            if (v13 >= v12 >> 1)
            {
              sub_100053184(v12 > 1, v13 + 1, 1);
              v9 = v34;
            }

            v14 = v0[12];
            v15 = v0[9];
            ++v10;
            v9[2] = v13 + 1;
            (*(v11 + 32))(v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v13, v14, v15);
          }

          while (v7 != v10);
        }

        else
        {
          v16 = v0[10];
          v17 = (v0[20] + 32);
          do
          {
            v18 = *v17;
            sub_10007B1C8();

            v34 = v9;
            v20 = v9[2];
            v19 = v9[3];
            if (v20 >= v19 >> 1)
            {
              sub_100053184(v19 > 1, v20 + 1, 1);
              v9 = v34;
            }

            v21 = v0[11];
            v22 = v0[9];
            v9[2] = v20 + 1;
            (*(v16 + 32))(v9 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v20, v21, v22);
            ++v17;
            --v7;
          }

          while (v7);
        }

        v1 = v31;
        v2 = v30;
        v6 = v29;
        goto LABEL_19;
      }
    }

LABEL_19:
    v23 = sub_10007B538();
    v25 = v24;

    v26 = sub_100052954(v23, v25, &v33);

    *(v4 + 4) = v26;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v27;
    *v32 = v27;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to set messages %s as deleted with error: %@", v4, 0x16u);
    sub_1000316B8(v32, &qword_1000C5378);

    sub_100035504(v6);

    goto LABEL_20;
  }

LABEL_20:

  v28 = v0[1];

  return v28();
}

uint64_t sub_100050080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v5 = sub_10007B578();

  return _swift_task_switch(sub_10005014C, v5, v4);
}

uint64_t sub_10005014C()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_100030744(&unk_1000C5360);
  v2 = sub_10007B528();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1000434F4;

  return sub_10004EE10(v2);
}

uint64_t sub_100050228(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_100030744(&unk_1000C5990);
  v2[6] = swift_task_alloc();
  sub_100030744(&qword_1000C4F48);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_10007AE28();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v5 = sub_10007B578();
  v2[14] = v5;
  v2[15] = v4;

  return _swift_task_switch(sub_1000503E0, v5, v4);
}

uint64_t sub_1000503E0()
{
  v11 = v0;
  v1 = sub_1000445D4(v0[4], type metadata accessor for FTMessage);
  if (!v1)
  {

    v2 = sub_10007B318();
    v3 = sub_10007B6C8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_100052954(0x654D3C7961727241, 0xEE003E6567617373, &v10);
      _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v4, 0xCu);
      sub_100035504(v5);
    }

    v1 = _swiftEmptyArrayStorage;
  }

  v0[16] = v1;
  if (v1 >> 62)
  {
    v7 = sub_10007BA18();
    v0[17] = v7;
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[17] = v6;
    if (v6)
    {
LABEL_7:

      return _swift_task_switch(sub_100050620, 0, 0);
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100050620()
{
  sub_10007B5B8();
  *(v0 + 144) = sub_10007B5A8();
  v2 = sub_10007B578();

  return _swift_task_switch(sub_1000506B4, v2, v1);
}

uint64_t sub_1000506B4()
{
  v1 = v0[17];

  if (v1 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v0[16];
    v7 = v6 & 0xC000000000000001;
    v8 = v6 + 32;
    do
    {
      if (v7)
      {
        v9 = sub_10007B898();
      }

      else
      {
        v9 = *(v8 + 8 * v5);
      }

      v10 = v9;
      v11 = v0[17];
      ++v5;
      v12 = &v9[OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyFolder];
      os_unfair_lock_lock(&v9[OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyFolder]);
      *(v12 + 1) = 1;
      v12[16] = 0;
      os_unfair_lock_unlock(v12);
    }

    while (v5 != v11);
    v3 = v0[14];
    v4 = v0[15];
    v2 = sub_1000507AC;
  }

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000507AC()
{
  v44 = v0;
  receiver = v0[8].receiver;
  if (receiver >> 62)
  {
    v2 = sub_10007BA18();
    v0[9].super_class = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:
    v28 = _swiftEmptyArrayStorage;
    sub_100045090(_swiftEmptyArrayStorage, 2u);

    goto LABEL_17;
  }

  v2 = *((receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[9].super_class = v2;
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v43 = _swiftEmptyArrayStorage;
  v3 = sub_10007B8E8();
  if (v2 < 0)
  {
    __break(1u);
    return MessageStoreController.updateMessages(_:)(v3);
  }

  v4 = 0;
  v5 = v0[5].receiver;
  v39 = (v5 + 8);
  v40 = (v5 + 16);
  v42 = v2;
  do
  {
    v14 = v0[8].receiver;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v6 = sub_10007B898();
    }

    else
    {
      v6 = *(v14 + v4 + 4);
    }

    v8 = v0[6].receiver;
    super_class = v0[6].super_class;
    v9 = v0[4].super_class;
    ++v4;
    v41 = v6;
    sub_10007B078();
    v10 = *v40;
    (*v40)(v8, super_class, v9);
    v11 = type metadata accessor for MessageID(0);
    v12 = objc_allocWithZone(v11);
    v10(&v12[OBJC_IVAR___MPMessageID_value], v8, v9);
    type metadata accessor for MessageID.Value(0);
    swift_storeEnumTagMultiPayload();
    v0[1].receiver = v12;
    v0[1].super_class = v11;
    objc_msgSendSuper2(v0 + 1, "init");
    v13 = *v39;
    (*v39)(v8, v9);
    v13(super_class, v9);

    sub_10007B8C8();
    sub_10007B8F8();
    sub_10007B908();
    sub_10007B8D8();
  }

  while (v42 != v4);
  v15 = v0[5].receiver;
  sub_100045090(v43, 2u);

  v43 = _swiftEmptyArrayStorage;
  sub_10007B8E8();
  v16 = 0;
  v17 = (v15 + 56);
  do
  {
    v27 = v0[8].receiver;
    if ((v27 & 0xC000000000000001) != 0)
    {
      v18 = sub_10007B898();
    }

    else
    {
      v18 = *(v27 + v16 + 4);
    }

    v19 = v18;
    v20 = v0[4].receiver;
    v21 = v0[4].super_class;
    v23 = v0[3].receiver;
    v22 = v0[3].super_class;
    ++v16;
    sub_10007B078();
    v24 = *v17;
    (*v17)(v20, 1, 1, v21);
    v24(v22, 1, 1, v21);
    v25 = sub_10007AD68();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v26 = objc_allocWithZone(sub_10007B1D8());
    sub_10007B1B8();

    sub_10007B8C8();
    sub_10007B8F8();
    sub_10007B908();
    sub_10007B8D8();
  }

  while (v42 != v16);
  v28 = v43;
LABEL_17:
  v29 = OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_logger;
  v0[10].receiver = v28;
  v0[10].super_class = v29;

  v30 = sub_10007B318();
  v31 = sub_10007B6C8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v43 = v33;
    *v32 = 136315138;
    sub_10007B1D8();
    v34 = sub_10007B538();
    v36 = sub_100052954(v34, v35, &v43);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "[removeFromTrash] Updating messages in FaceTimeVoicemailManager - Updates: %s", v32, 0xCu);
    sub_100035504(v33);
  }

  sub_1000355F8((v0[2].super_class + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController), *(v0[2].super_class + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController + 24));
  v37 = swift_task_alloc();
  v0[11].receiver = v37;
  *v37 = v0;
  v37[1] = sub_100050D08;
  v3 = v28;

  return MessageStoreController.updateMessages(_:)(v3);
}

uint64_t sub_100050D08()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {
    v3 = v2[14];
    v4 = v2[15];

    return _swift_task_switch(sub_100050EB0, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

size_t sub_100050EB0()
{
  v30 = v0;

  swift_errorRetain();
  v1 = sub_10007B318();
  v2 = sub_10007B6C8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[19];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v4 = 136315394;
    if (v3)
    {
      v27 = v5;
      v7 = v0[19];
      v29 = _swiftEmptyArrayStorage;
      result = sub_100053184(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        __break(1u);
        return result;
      }

      v26 = v6;
      v9 = 0;
      v10 = v0[10];
      v11 = v29;
      do
      {
        v12 = v0[16];
        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = sub_10007B898();
        }

        else
        {
          v13 = *(v12 + 8 * v9 + 32);
        }

        v14 = v13;
        sub_10007B078();

        v29 = v11;
        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          sub_100053184(v15 > 1, v16 + 1, 1);
          v11 = v29;
        }

        v17 = v0[19];
        v18 = v0[11];
        v19 = v0[9];
        ++v9;
        v11[2] = v16 + 1;
        (*(v10 + 32))(v11 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, v18, v19);
      }

      while (v9 != v17);

      v5 = v27;
      v6 = v26;
    }

    else
    {
    }

    v20 = sub_10007B538();
    v22 = v21;

    v23 = sub_100052954(v20, v22, &v28);

    *(v4 + 4) = v23;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v24;
    *v5 = v24;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to set messages %s as undeleted with error: %@", v4, 0x16u);
    sub_1000316B8(v5, &qword_1000C5378);

    sub_100035504(v6);
  }

  else
  {
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_1000513BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v5 = sub_10007B578();

  return _swift_task_switch(sub_100051488, v5, v4);
}

uint64_t sub_100051488()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_100030744(&unk_1000C5360);
  v2 = sub_10007B528();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1000434F4;

  return sub_100050228(v2);
}

uint64_t sub_1000516F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v5 = sub_10007B578();

  return _swift_task_switch(sub_1000517C0, v5, v4);
}

uint64_t sub_1000517C0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = _Block_copy(*(v0 + 16));
  *(v0 + 40) = v3;
  *(v0 + 48) = _Block_copy(v1);
  _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1000518A4;
  v6 = *(v0 + 32);

  return sub_100053A80(v6, v3);
}

uint64_t sub_1000518A4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  _Block_release(v2);
  _Block_release(v2);

  sub_100030744(&unk_1000C5360);
  isa = sub_10007B518().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100051B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100031874;

  return sub_10004C9F4(a5);
}

uint64_t sub_100051BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10003124C;

  return sub_10004DAB4(a5);
}

uint64_t sub_100051CAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  sub_100030744(&unk_1000C5360);
  v11 = sub_10007B528();
  v12 = sub_10007B608();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v14 = sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v15 = swift_allocObject();
  v15[2] = inited;
  v15[3] = v14;
  v15[4] = a1;
  v15[5] = v11;
  v16 = a1;
  sub_100078AB0(0, 0, v10, a5, v15);
}

uint64_t sub_100051E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100031874;

  return sub_10004EE10(a5);
}

uint64_t sub_100051F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100031874;

  return sub_100050228(a5);
}

uint64_t sub_100051FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B338();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100052064(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B338();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000520F4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005212C()
{
  result = sub_10007B338();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100052198()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000521D0()
{
  v2 = *(sub_10007B338() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_10004C734(v4, v0 + v3);
}

uint64_t sub_1000522A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100031874;

  return v6();
}

uint64_t sub_100052390(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100031874;

  return v7();
}

uint64_t sub_100052478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v24 - v11;
  sub_100054004(a3, v24 - v11);
  v13 = sub_10007B608();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000316B8(v12, &qword_1000C5110);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10007B5F8();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_10007B578();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_10007B4A8() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_1000316B8(a3, &qword_1000C5110);

    return v22;
  }

LABEL_8:
  sub_1000316B8(a3, &qword_1000C5110);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100052764(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005285C;

  return v6(a1);
}

uint64_t sub_10005285C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100052954(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100052A20(v11, 0, 0, 1, a1, a2);
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
    sub_100052FE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100035504(v11);
  return v7;
}

unint64_t sub_100052A20(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100052B2C(a5, a6);
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
    result = sub_10007B8B8();
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

char *sub_100052B2C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100052B78(a1, a2);
  sub_100052CA8(&off_1000B2508);
  return v3;
}

char *sub_100052B78(uint64_t a1, unint64_t a2)
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

  v6 = sub_100052D94(v5, 0);
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

  result = sub_10007B8B8();
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
        v10 = sub_10007B4D8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100052D94(v10, 0);
        result = sub_10007B878();
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

uint64_t sub_100052CA8(uint64_t result)
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

  result = sub_100052E08(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_100052D94(uint64_t a1, uint64_t a2)
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

  sub_100030744(&qword_1000C5618);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100052E08(char *result, int64_t a2, char a3, char *a4)
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
    sub_100030744(&qword_1000C5618);
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

uint64_t sub_100052EFC()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100052F3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_10004525C(v2, v3, v4);
}

uint64_t sub_100052FE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100053044(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100031874;

  return sub_100051F00(a1, v4, v5, v7, v6);
}

void *sub_100053104(void *a1, int64_t a2, char a3)
{
  result = sub_1000531C8(a1, a2, a3, *v3, &qword_1000C56C0, &unk_1000A2020, &qword_1000C56C8);
  *v3 = result;
  return result;
}

void *sub_100053144(void *a1, int64_t a2, char a3)
{
  result = sub_1000532FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100053164(char *a1, int64_t a2, char a3)
{
  result = sub_100053430(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100053184(size_t a1, int64_t a2, char a3)
{
  result = sub_100053540(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000531C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100030744(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100030744(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1000532FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100030744(&qword_1000C56B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100030744(&unk_1000C5300);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100053430(char *result, int64_t a2, char a3, char *a4)
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
    sub_100030744(&qword_1000C56B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100053540(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100030744(&qword_1000C5620);
  v10 = *(sub_10007AE28() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10007AE28() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100053718(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100031874;

  return sub_100051E30(a1, v4, v5, v7, v6);
}

uint64_t sub_1000537D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100031874;

  return sub_100051BDC(a1, v4, v5, v7, v6);
}

uint64_t sub_100053898(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100031874;

  return sub_100051B0C(a1, v4, v5, v7, v6);
}

Swift::Int sub_100053958(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4)
{
  result = sub_10007B758(*a4);
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_10007AFB8();
    v7 = sub_10007AFE8();
    if ((v8 & 1) == 0)
    {
      type metadata accessor for MessageID(0);
      do
      {
        v9 = *(a2 + 8 * v7);
        v10 = sub_10007B768();

        if (v10)
        {
          break;
        }

        sub_10007B008();
        v7 = sub_10007AFE8();
      }

      while ((v11 & 1) == 0);
    }

    return v7;
  }

  return result;
}

uint64_t sub_100053A80(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = type metadata accessor for VoicemailActor();
  v2[4] = swift_initStaticObject();
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_100053B30;

  return sub_1000363A8();
}

uint64_t sub_100053B30(uint64_t a1)
{
  *(*v1 + 48) = a1;

  sub_100055158(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v3 = sub_10007B578();

  return _swift_task_switch(sub_100053CA4, v3, v2);
}

uint64_t sub_100053CA4()
{
  v1 = v0[6];
  if (v1 >> 62)
  {
LABEL_16:
    v2 = sub_10007BA18();
    v3 = v0[6];
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v0[6];
    if (v2)
    {
LABEL_3:
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v1 &= 0xFFFFFFFFFFFFFF8uLL;
      v6 = v3 + 32;
      v7 = (v0[2] + 16);
      v12 = v7;
      do
      {
        if (v5)
        {
          v8 = sub_10007B898();
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *(v1 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(v6 + 8 * v4);
          swift_unknownObjectRetain();
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        if ((*v7)(v0[2], v8))
        {
          sub_10007B8C8();
          sub_10007B8F8();
          sub_10007B908();
          sub_10007B8D8();
          v7 = v12;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v4;
      }

      while (v9 != v2);
    }
  }

  v10 = v0[1];

  return v10(_swiftEmptyArrayStorage);
}

void sub_100053E5C()
{
  oslog = sub_10007B318();
  v0 = sub_10007B6C8();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v0, "VoiceMail rating: We failed to rate becuase we do not support it for FTMessages yet.", v1, 2u);
  }
}

uint64_t sub_100053F08()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100053F50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_1000516F4(v2, v3, v4);
}

uint64_t sub_100054004(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030744(&qword_1000C5110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100054074()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000540AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100031874;

  return sub_100052764(a1, v4);
}

uint64_t sub_100054164()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_1000513BC(v2, v3, v4);
}

uint64_t sub_10005421C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_100050080(v2, v3, v4);
}

uint64_t sub_1000542D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_10004EC68(v2, v3, v4);
}

uint64_t sub_100054388()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_10004D90C(v2, v3, v4);
}

uint64_t sub_100054440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100031874;

  return sub_100049AC8(a1, v4, v5, v6);
}

uint64_t sub_1000544F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100054538(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003124C;

  return sub_10004976C(a1, v4, v5, v6);
}

uint64_t sub_1000545EC()
{
  v1 = sub_10007B338();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000546B0()
{
  v2 = *(sub_10007B338() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_10004C4D8(v4, v0 + v3);
}

uint64_t sub_10005478C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100031874;

  return sub_1000493D0(a1, v4, v5, v7, v6);
}

uint64_t sub_100054850()
{
  v2 = *(sub_10007B338() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100031874;

  return sub_10004BCBC(v4, v0 + v3, v5);
}

unint64_t sub_100054958(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100054968(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100031874;

  return sub_100049034(a1, v4, v5, v7, v6);
}

uint64_t sub_100054A28()
{
  v2 = *(sub_10007B338() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100031874;

  return sub_10004B5F0(v4, v0 + v3, v5);
}

uint64_t sub_100054B30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100031874;

  return sub_100048B14(a1, v4, v5, v7, v6);
}

uint64_t sub_100054BF0()
{
  v2 = *(sub_10007B338() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100031874;

  return sub_10004AC28(v4, v0 + v3, v5);
}

uint64_t sub_100054CF8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100054D40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100031874;

  return sub_100048778(a1, v4, v5, v7, v6);
}

uint64_t sub_100054E00()
{
  v1 = sub_10007B338();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100054ED8()
{
  v2 = *(sub_10007B338() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100031874;

  return sub_10004A0F0(v4, v0 + v3, v5);
}

uint64_t sub_100054FE0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100055020(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100055038(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100055088(uint64_t a1)
{
  v2 = type metadata accessor for VoiceMailAnalyticsLogger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000550E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000550F4()
{
  result = qword_1000C5680;
  if (!qword_1000C5680)
  {
    sub_100035550(&qword_1000C5678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C5680);
  }

  return result;
}

uint64_t sub_100055158(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000551A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000551D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100031874;

  return sub_100045BE0(a1, v4);
}

uint64_t sub_100055278()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000552B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003124C;

  return sub_100045D88(a1, v4, v5, v6);
}

uint64_t sub_10005536C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_100048044(v2, v3, v4);
}

uint64_t sub_1000554A8()
{
  v0 = sub_10007B708();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007B718();
  __chkstk_darwin(v5, v6);
  v7 = sub_10007B3F8();
  __chkstk_darwin(v7 - 8, v8);
  sub_10005597C();
  sub_10007B3E8();
  v10[1] = _swiftEmptyArrayStorage;
  sub_1000559C8(&qword_1000C5798, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_100030744(&qword_1000C57A0);
  sub_100055A10();
  sub_10007B7B8();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_10007B728();
  qword_1000C7608 = result;
  return result;
}

uint64_t sub_10005573C()
{
  if (qword_1000C4DE8 != -1)
  {
    swift_once();
  }

  return sub_10007B738();
}

id sub_1000557EC()
{
  if (qword_1000C4DE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C7608;
  qword_1000C7610 = qword_1000C7608;

  return v1;
}

id sub_100055874(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id sub_1000558D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoicemailQueueManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10005597C()
{
  result = qword_1000C5790;
  if (!qword_1000C5790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C5790);
  }

  return result;
}

uint64_t sub_1000559C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100055A10()
{
  result = qword_1000C57A8;
  if (!qword_1000C57A8)
  {
    sub_100035550(&qword_1000C57A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C57A8);
  }

  return result;
}

uint64_t type metadata accessor for FTTranscriptionMessage()
{
  result = qword_1000C57E0;
  if (!qword_1000C57E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100055C98()
{
  result = sub_10007B2A8();
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

Swift::Int sub_100055E54()
{
  v1 = *v0;
  sub_10007BBD8();
  sub_10007BBE8(v1);
  return sub_10007BBF8();
}

Swift::Int sub_100055EC8()
{
  v1 = *v0;
  sub_10007BBD8();
  sub_10007BBE8(v1);
  return sub_10007BBF8();
}

uint64_t sub_1000561CC()
{
  LOWORD(result) = sub_10007B0C8();
  if (result < 3u)
  {
    return result;
  }

  sub_10007B888(23);

  sub_10007B0C8();
  sub_10007B1A8();
  v1._countAndFlagsBits = sub_10007B498();
  sub_10007B4C8(v1);

  result = sub_10007B9F8();
  __break(1u);
  return result;
}

uint64_t sub_100056398()
{
  if (sub_10007B0D8())
  {
    return 0;
  }

  sub_10007B0F8();
  v0 = objc_opt_self();
  v1 = sub_10007B448();

  v2 = [v0 normalizedHandleWithDestinationID:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 normalizedValue];
  if (v3)
  {
    v4 = v3;
    v5 = sub_10007B478();

    return v5;
  }

  if (sub_10007B0D8())
  {

    return 0;
  }

  v7 = sub_10007B0F8();

  return v7;
}

id sub_1000564BC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_10007B448();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10005653C()
{
  if ((sub_10007B0D8() & 1) == 0)
  {
    sub_10007B0F8();
    v0 = objc_opt_self();
    v1 = sub_10007B448();

    v2 = [v0 normalizedHandleWithDestinationID:v1];

    if (v2)
    {
      v3 = [v2 isoCountryCode];
      if (v3)
      {
        v4 = v3;
        v5 = sub_10007B478();

        return v5;
      }
    }
  }

  return 0;
}

id sub_100056628(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_1000566B4(a3);
  v6 = v5;

  if (v6)
  {
    v7 = sub_10007B448();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1000566B4(SEL *a1)
{
  sub_10007B168();
  if (!v2)
  {
    return 0;
  }

  v3 = objc_opt_self();
  v4 = sub_10007B448();

  v5 = [v3 normalizedHandleWithDestinationID:v4];

  if (v5)
  {
    v6 = [v5 *a1];
    if (v6)
    {
      v7 = v6;
      v8 = sub_10007B478();

      return v8;
    }
  }

  return 0;
}

uint64_t sub_10005685C()
{
  v1 = v0 + OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyFolder;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyFolder));
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  os_unfair_lock_unlock(v1);
  if (v3 == 1)
  {
    v4 = sub_10007B0B8();
    v5 = 1;
    if (v4 == 2)
    {
      v5 = 2;
    }

    if (v4 == 1)
    {
      return 3;
    }

    else
    {
      return v5;
    }
  }

  return v2;
}

id sub_100056A58(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t (*a5)(void))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v16 - v11;
  v13 = a1;
  a4();

  v14 = a5();
  (*(v9 + 8))(v12, v8);

  return v14;
}

void sub_100056BA8()
{
  v1 = sub_100030744(&unk_1000C5990);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v18 - v3;
  v5 = sub_100030744(&qword_1000C59D8);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v18 - v7;
  if (sub_100056E64() == 2 && (sub_10007B108() & 1) != 0 && TUCallScreeningRTTEnabled())
  {
    v9 = atomic_load((v0 + OBJC_IVAR____TtC9IntentsUI9FTMessage_didLoadTranscript));
    if ((v9 & 1) != 0 && sub_100057120())
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = [v10 conversation];
        swift_unknownObjectRelease();
        if (v11)
        {
          v12 = [v11 utterances];

          if (v12)
          {
            [v12 count];
          }

          else
          {
            __break(1u);
          }
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v13 = sub_100056E64();
    if (v13)
    {
      if (v13 == 1)
      {
        return;
      }

      sub_1000571A8(v8);
      v17 = sub_10007B2A8();
      (*(*(v17 - 8) + 48))(v8, 1, v17);
      v15 = &qword_1000C59D8;
      v16 = v8;
    }

    else
    {
      sub_100057324(v4);
      v14 = sub_10007AD68();
      (*(*(v14 - 8) + 48))(v4, 1, v14);
      v15 = &unk_1000C5990;
      v16 = v4;
    }

    sub_1000316B8(v16, v15);
  }
}

uint64_t sub_100056E64()
{
  v1 = sub_10007B0C8();
  if (v1 < 3u)
  {
    return 0x10002u >> (8 * v1);
  }

  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v3 = sub_10007B338();
  sub_1000345E8(v3, qword_1000C76E8);
  v4 = v0;
  v5 = sub_10007B318();
  v6 = sub_10007B6D8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    sub_10007B0C8();
    v9 = sub_10007B488();
    v11 = sub_100052954(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unexpected Message type %{public}s", v7, 0xCu);
    sub_100035504(v8);
  }

  return 0;
}

void (*sub_100057120())(void *__return_ptr)
{
  v1 = v0;
  os_unfair_lock_lock((v0 + 16));
  v2 = *(v0 + 24);
  if ((*(v0 + 40) & 1) == 0)
  {
    v3 = *(v0 + 32);
    v2(&v5);
    sub_10005A788(v2, v3, 0);
    v2 = v5;
    *(v1 + 24) = v5;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 16));
  return v2;
}

void sub_1000571A8(uint64_t a1@<X8>)
{
  v3 = sub_100030744(&qword_1000C59E0);
  __chkstk_darwin(v3, v4);
  v6 = (&v10 - v5);
  v7 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v7);
  v8 = *(sub_100030744(&qword_1000C59E8) + 28);
  sub_10005A798(v7 + v8, v6, &qword_1000C59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10005A8C4(v6, a1, &qword_1000C59D8);
  }

  else
  {
    v9 = sub_1000316B8(v7 + v8, &qword_1000C59E0);
    (*v6)(v9);

    sub_10005A798(a1, v7 + v8, &qword_1000C59D8);
    swift_storeEnumTagMultiPayload();
  }

  os_unfair_lock_unlock(v7);
}

void sub_100057324(uint64_t a1@<X8>)
{
  v3 = sub_100030744(&qword_1000C59C8);
  __chkstk_darwin(v3, v4);
  v6 = (&v10 - v5);
  v7 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v7);
  v8 = *(sub_100030744(&qword_1000C59D0) + 28);
  sub_10005A798(v7 + v8, v6, &qword_1000C59C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10005A8C4(v6, a1, &unk_1000C5990);
  }

  else
  {
    v9 = sub_1000316B8(v7 + v8, &qword_1000C59C8);
    (*v6)(v9);

    sub_10005A798(a1, v7 + v8, &unk_1000C5990);
    swift_storeEnumTagMultiPayload();
  }

  os_unfair_lock_unlock(v7);
}

uint64_t sub_1000574A0()
{
  type metadata accessor for FTMessage.Lazy.State();
  sub_10007AF68();
  sub_10007AF78();
  sub_10006C18C();
  return v0;
}

uint64_t sub_10005752C()
{
  sub_1000574A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

id sub_10005759C(void *a1)
{
  v2 = sub_100030744(&unk_1000C5990);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = a1;
  sub_100057324(v5);

  v7 = sub_10007AD68();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    sub_10007AD38(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

id sub_100057744()
{
  v0 = sub_100030744(&unk_1000C5990);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v13 - v2;
  v4 = sub_10007AD68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057324(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000316B8(v3, &unk_1000C5990);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v10 = [objc_opt_self() defaultManager];
    sub_10007AD58();
    v11 = sub_10007B448();

    v12 = [v10 fileExistsAtPath:v11];

    (*(v5 + 8))(v8, v4);
    return v12;
  }
}

char *sub_100057988(void *a1)
{
  ObjectType = swift_getObjectType();
  v50 = sub_100030744(&qword_1000C59E0);
  __chkstk_darwin(v50, v3);
  v49 = (&v46 - v4);
  v48 = sub_100030744(&qword_1000C59C8);
  __chkstk_darwin(v48, v5);
  v7 = (&v46 - v6);
  v8 = &v1[OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyFolder];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = &v1[OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyRead];
  *v9 = 0;
  v9[4] = 2;
  v1[OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyIsDeleted] = 0;
  v10 = OBJC_IVAR____TtC9IntentsUI9FTMessage__transcript;
  sub_100030744(&qword_1000C5A00);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = sub_100057930;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *&v1[v10] = v11;
  v1[OBJC_IVAR____TtC9IntentsUI9FTMessage_didLoadTranscript] = 0;
  v1[OBJC_IVAR____TtC9IntentsUI9FTMessage_isDirty] = 0;
  *&v1[OBJC_IVAR____TtC9IntentsUI9FTMessage_ftMessage] = a1;
  v12 = v1;
  v46 = v1;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  sub_100030744(&qword_1000C5A08);
  v14 = swift_allocObject();
  *v7 = sub_10005A838;
  v7[1] = v13;
  swift_storeEnumTagMultiPayload();
  v15 = (v14 + *(*v14 + 88));
  *v15 = 0;
  v16 = a1;

  v17 = sub_100030744(&qword_1000C59D0);
  v18 = *(v17 + 28);
  v19 = *(*(sub_100030744(&qword_1000C5A10) - 8) + 64);
  v47 = v19;
  bzero(v15 + v18, v19);
  sub_10005A8C4(v7, v15 + v18, &qword_1000C59C8);

  *&v12[OBJC_IVAR____TtC9IntentsUI9FTMessage__dataURL] = v14;
  v20 = swift_allocObject();
  v21 = v16;
  *(v20 + 16) = v16;
  v22 = swift_allocObject();
  *v7 = sub_10005A840;
  v7[1] = v20;
  swift_storeEnumTagMultiPayload();
  v23 = (v22 + *(*v22 + 88));
  *v23 = 0;
  v24 = *(v17 + 28);
  bzero(v23 + v24, v19);
  v25 = v21;

  sub_10005A8C4(v7, v23 + v24, &qword_1000C59C8);

  v26 = v46;
  *&v46[OBJC_IVAR____TtC9IntentsUI9FTMessage__thumbnailURL] = v22;
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  v28 = swift_allocObject();
  *v7 = sub_10005A870;
  v7[1] = v27;
  swift_storeEnumTagMultiPayload();
  v29 = (v28 + *(*v28 + 88));
  *v29 = 0;
  v30 = *(v17 + 28);
  bzero(v29 + v30, v47);
  v31 = v25;

  sub_10005A8C4(v7, v29 + v30, &qword_1000C59C8);

  *&v26[OBJC_IVAR____TtC9IntentsUI9FTMessage__transcriptURL] = v28;
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  sub_100030744(&qword_1000C5A18);
  v33 = swift_allocObject();
  v34 = v49;
  *v49 = sub_10005A8A0;
  *(v34 + 8) = v32;
  swift_storeEnumTagMultiPayload();
  v35 = (v33 + *(*v33 + 88));
  *v35 = 0;
  v36 = v31;

  v37 = *(sub_100030744(&qword_1000C59E8) + 28);
  v38 = sub_100030744(&unk_1000C5A20);
  bzero(v35 + v37, *(*(v38 - 8) + 64));
  sub_10005A8C4(v34, v35 + v37, &qword_1000C59E0);

  *&v26[OBJC_IVAR____TtC9IntentsUI9FTMessage__transcriptData] = v33;
  v52.receiver = v26;
  v52.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v52, "init");
  v40 = *&v39[OBJC_IVAR____TtC9IntentsUI9FTMessage__transcript];
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = v36;
  v43 = v36;
  v44 = v39;

  os_unfair_lock_lock((v40 + 16));
  sub_10005A788(*(v40 + 24), *(v40 + 32), *(v40 + 40));
  *(v40 + 24) = sub_10005A9A4;
  *(v40 + 32) = v42;
  *(v40 + 40) = 0;

  os_unfair_lock_unlock((v40 + 16));

  return v44;
}

uint64_t sub_100057FC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100030744(&unk_1000C5990);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v16 - v4;
  v6 = sub_10007B068();
  v7 = sub_10007B2C8();

  if (v7)
  {
    v8 = sub_10007AD68();
    v9 = *(v8 - 8);
    v10 = *(v9 + 56);
    v10(v5, 1, 1, v8);
    sub_10005AA00(&qword_1000C5A40, &type metadata accessor for URL);
    sub_10007BA78();

    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      v11 = a1;
      v12 = 1;
    }

    else
    {
      (*(v9 + 32))(a1, v5, v8);
      v11 = a1;
      v12 = 0;
    }

    return (v10)(v11, v12, 1, v8);
  }

  else
  {
    v13 = sub_10007AD68();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

uint64_t sub_1000581F8@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100030744(&unk_1000C5990);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v20 - v7;
  v9 = a1(v6);
  if (v9 && (v10 = v9, v11 = sub_10007B2C8(), v10, v11))
  {
    v12 = sub_10007AD68();
    v13 = *(v12 - 8);
    v14 = *(v13 + 56);
    v14(v8, 1, 1, v12);
    sub_10005AA00(&qword_1000C5A40, &type metadata accessor for URL);
    sub_10007BA78();

    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      v15 = a2;
      v16 = 1;
    }

    else
    {
      (*(v13 + 32))(a2, v8, v12);
      v15 = a2;
      v16 = 0;
    }

    return (v14)(v15, v16, 1, v12);
  }

  else
  {
    v17 = sub_10007AD68();
    v18 = *(*(v17 - 8) + 56);

    return v18(a2, 1, 1, v17);
  }
}

void sub_100058438(uint64_t a1@<X1>, void *a2@<X8>)
{
  v55 = a1;
  v54 = sub_100030744(&unk_1000C5990);
  v4 = __chkstk_darwin(v54, v3);
  v53[1] = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v6);
  v8 = v53 - v7;
  v9 = sub_10007AD68();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9, v10);
  v56 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100030744(&qword_1000C59D8);
  __chkstk_darwin(v12 - 8, v13);
  v15 = v53 - v14;
  v16 = sub_10007B2A8();
  v57 = *(v16 - 8);
  v18 = __chkstk_darwin(v16, v17);
  v20 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v21);
  v23 = v53 - v22;
  v24 = sub_10007AE28();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24, v26);
  v28 = v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    *a2 = 0;
    return;
  }

  v60 = a2;
  v30 = Strong;
  v31 = sub_100056E64();
  if (v31)
  {
    if (v31 != 1)
    {
      if ((sub_10007B108() & 1) != 0 && TUCallScreeningRTTEnabled())
      {
        sub_10007B128();
        v34 = objc_allocWithZone(MPRTTTranscriptionMessage);
        isa = sub_10007ADD8().super.isa;
        v36 = [v34 initWithCallUUID:isa];

        (*(v25 + 8))(v28, v24);
        *v60 = v36;
      }

      else
      {
        sub_1000571A8(v15);
        v37 = v57;
        if ((*(v57 + 48))(v15, 1, v16) == 1)
        {
          sub_1000316B8(v15, &qword_1000C59D8);
          *v60 = 0;
        }

        else
        {
          (*(v37 + 32))(v23, v15, v16);
          v39 = *(v37 + 16);
          v39(v20, v23, v16);
          v40 = type metadata accessor for FTTranscriptionMessage();
          v41 = objc_allocWithZone(v40);
          *&v41[OBJC_IVAR____TtC9IntentsUI22FTTranscriptionMessage_confidenceRating] = 0;
          *&v41[OBJC_IVAR____TtC9IntentsUI22FTTranscriptionMessage_confidence] = 0x3FF0000000000000;
          v39(&v41[OBJC_IVAR____TtC9IntentsUI22FTTranscriptionMessage_transcriptData], v20, v16);
          v61.receiver = v41;
          v61.super_class = v40;
          v42 = objc_msgSendSuper2(&v61, "init");
          v43 = *(v37 + 8);
          v43(v20, v16);
          v43(v23, v16);
          *v60 = v42;
        }
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_100057324(v8);
    v33 = v58;
    v32 = v59;
    if ((*(v58 + 48))(v8, 1, v59) == 1)
    {
      sub_1000316B8(v8, &unk_1000C5990);
      *v60 = 0;
      atomic_store(1u, &v30[OBJC_IVAR____TtC9IntentsUI9FTMessage_didLoadTranscript]);

      return;
    }

    v38 = v56;
    (*(v33 + 32))(v56, v8, v32);
    v44 = sub_10007AD78();
    v46 = v45;
    sub_100055038(0, &qword_1000C5A30);
    sub_100055038(0, &qword_1000C5A38);
    v47 = sub_10007B6F8();
    if (v47)
    {
      v48 = v47;
      v49 = type metadata accessor for VisualTranscriptionMessage();
      v50 = objc_allocWithZone(v49);
      *&v50[OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript] = v48;
      v62.receiver = v50;
      v62.super_class = v49;
      v51 = v48;
      v52 = objc_msgSendSuper2(&v62, "init");
      sub_10005A9AC(v44, v46);

      (*(v33 + 8))(v38, v32);
      *v60 = v52;
      goto LABEL_15;
    }

    (*(v33 + 8))(v38, v32);
    sub_10005A9AC(v44, v46);
  }

  *v60 = 0;
LABEL_15:
  atomic_store(1u, &v30[OBJC_IVAR____TtC9IntentsUI9FTMessage_didLoadTranscript]);
}

char *sub_100058DC0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100030744(&qword_1000C5870);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_100058DF0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100030744(&qword_1000C5878);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_100058E20()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100030744(qword_1000C5880);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100058E54()
{
  type metadata accessor for FTMessage.Lazy.State();
  result = sub_10007AF68();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_100058F24()
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  type metadata accessor for FTMessage.Lazy.State();
  return sub_10007AF68();
}

BOOL sub_100058F70(double a1)
{
  v3 = v1 + OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyRead;
  os_unfair_lock_lock(v3);
  v4 = *(v3 + 4);
  os_unfair_lock_unlock(v3);
  if (v4 == 2)
  {
    if (sub_10007B118())
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (a1 > 5.0)
  {
    return 1;
  }

  sub_10007B138();
  return v6 / 3.0 < a1;
}

id sub_100059064(void *a1)
{
  if (sub_10007B0D8())
  {
    return 0;
  }

  sub_10007B0F8();
  v2 = objc_opt_self();
  v3 = sub_10007B448();

  v4 = [v2 normalizedHandleWithDestinationID:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 normalizedValue];
  if (v5)
  {
    v6 = v5;
    v7 = sub_10007B478();
    v9 = v8;

    v4 = v6;
  }

  else
  {
    if (sub_10007B0D8())
    {

      return 0;
    }

    v7 = sub_10007B0F8();
    v9 = v10;
  }

  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    sub_10007B0F8();
    v12 = sub_10007B448();

    sub_100030744(&unk_1000C5440);
    isa = sub_10007B518().super.isa;
    v14 = [a1 contactForDestinationId:v12 keysToFetch:isa];

    return v14;
  }

  return 0;
}

uint64_t sub_100059290(void *a1)
{
  v2 = sub_10007B0F8();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    sub_100030744(&unk_1000C59F0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000A1780;
    v7 = objc_opt_self();
    *(v6 + 32) = [v7 descriptorForRequiredKeysForStyle:0];
    v8 = sub_100059064(a1);

    if (!v8)
    {
      return sub_100059408();
    }

    if ([v8 isSuggested])
    {
      v9 = sub_100059408();

      return v9;
    }

    v11 = [v7 stringFromContact:v8 style:0];
    if (v11)
    {
      v12 = v11;
      v13 = sub_10007B478();

      return v13;
    }
  }

  return 0;
}

uint64_t sub_100059408()
{
  v0 = objc_opt_self();
  sub_10007B0F8();
  v1 = sub_10007B448();

  v2 = [v0 normalizedHandleWithDestinationID:v1];

  if (v2)
  {
    v3 = [v2 normalizedValue];
    v4 = [v2 isoCountryCode];
    v5 = TUFormattedPhoneNumber();

    if (v5)
    {
      v6 = sub_10007B478();

      return v6;
    }
  }

  return 0;
}

uint64_t sub_1000595A4()
{
  v92 = sub_100030744(&unk_1000C5990);
  __chkstk_darwin(v92, v1);
  v91 = &v85 - v2;
  v3 = sub_10007ADB8();
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3, v4);
  v88 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100030744(&qword_1000C4F48);
  __chkstk_darwin(v87, v6);
  v86 = &v85 - v7;
  v8 = sub_10007AE28();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v85 - v15;
  v96 = 0;
  v97 = 0xE000000000000000;
  sub_10007B888(699);
  v98._countAndFlagsBits = 0xD00000000000001ALL;
  v98._object = 0x800000010008C530;
  sub_10007B4C8(v98);
  v17 = [*(v0 + OBJC_IVAR____TtC9IntentsUI9FTMessage_ftMessage) description];
  v18 = sub_10007B478();
  v20 = v19;

  v99._countAndFlagsBits = v18;
  v99._object = v20;
  sub_10007B4C8(v99);

  v100._countAndFlagsBits = 0x3A6469202020200ALL;
  v100._object = 0xE900000000000020;
  sub_10007B4C8(v100);
  sub_10007B078();
  v21 = *(v9 + 16);
  v21(v13, v16, v8);
  v22 = type metadata accessor for MessageID(0);
  v23 = objc_allocWithZone(v22);
  v21(&v23[OBJC_IVAR___MPMessageID_value], v13, v8);
  v24 = v85;
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v95.receiver = v23;
  v95.super_class = v22;
  v25 = objc_msgSendSuper2(&v95, "init");
  v26 = *(v9 + 8);
  v26(v13, v8);
  v26(v16, v8);
  v27 = [v25 description];
  v28 = sub_10007B478();
  v30 = v29;

  v101._countAndFlagsBits = v28;
  v101._object = v30;
  sub_10007B4C8(v101);

  v102._countAndFlagsBits = 0x6F7270202020200ALL;
  v102._object = 0xEF203A7265646976;
  sub_10007B4C8(v102);
  v103._countAndFlagsBits = sub_10007B158();
  sub_10007B4C8(v103);

  v104._countAndFlagsBits = 0x6C6163202020200ALL;
  v104._object = 0xEF203A444955556CLL;
  sub_10007B4C8(v104);
  v31 = v86;
  sub_10007B128();
  (*(v9 + 56))(v31, 0, 1, v8);
  v105._countAndFlagsBits = sub_10007B488();
  sub_10007B4C8(v105);

  v106._countAndFlagsBits = 0xD000000000000012;
  v106._object = 0x800000010008C550;
  sub_10007B4C8(v106);
  v93 = sub_1000561CC();
  sub_10007B958();
  v107._countAndFlagsBits = 0xD00000000000001ALL;
  v107._object = 0x800000010008C570;
  sub_10007B4C8(v107);
  v93 = sub_100056398();
  v94 = v32;
  sub_100030744(&qword_1000C59A0);
  v108._countAndFlagsBits = sub_10007B488();
  sub_10007B4C8(v108);

  v109._countAndFlagsBits = 0xD00000000000001BLL;
  v109._object = 0x800000010008C590;
  sub_10007B4C8(v109);
  v93 = sub_10005653C();
  v94 = v33;
  v110._countAndFlagsBits = sub_10007B488();
  sub_10007B4C8(v110);

  v111._countAndFlagsBits = 0xD00000000000001CLL;
  v111._object = 0x800000010008C5B0;
  sub_10007B4C8(v111);
  v93 = sub_1000566B4(&selRef_normalizedValue);
  v94 = v34;
  v112._countAndFlagsBits = sub_10007B488();
  sub_10007B4C8(v112);

  v113._countAndFlagsBits = 0xD00000000000001DLL;
  v113._object = 0x800000010008C5D0;
  sub_10007B4C8(v113);
  v93 = sub_1000566B4(&selRef_isoCountryCode);
  v94 = v35;
  v114._countAndFlagsBits = sub_10007B488();
  sub_10007B4C8(v114);

  v115._countAndFlagsBits = 0xD00000000000001CLL;
  v115._object = 0x800000010008C5F0;
  sub_10007B4C8(v115);
  v36 = sub_10007B0D8();
  v37 = 0;
  v38 = 0;
  if ((v36 & 1) == 0)
  {
    v37 = sub_10007B0F8();
  }

  v93 = v37;
  v94 = v38;
  v116._countAndFlagsBits = sub_10007B488();
  sub_10007B4C8(v116);

  v117._countAndFlagsBits = 0xD000000000000012;
  v117._object = 0x800000010008C610;
  sub_10007B4C8(v117);
  v39 = v24 + OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyFolder;
  os_unfair_lock_lock((v24 + OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyFolder));
  v40 = *(v39 + 8);
  v41 = *(v39 + 16);
  os_unfair_lock_unlock(v39);
  v93 = v40;
  LOBYTE(v94) = v41;
  sub_100030744(&qword_1000C59A8);
  v118._countAndFlagsBits = sub_10007B488();
  sub_10007B4C8(v118);

  v119._countAndFlagsBits = 0x6C6F66202020200ALL;
  v119._object = 0xED0000203A726564;
  sub_10007B4C8(v119);
  v93 = sub_10005685C();
  sub_10007B958();
  v120._object = 0x800000010008C630;
  v120._countAndFlagsBits = 0xD000000000000010;
  sub_10007B4C8(v120);
  v42 = v24 + OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyRead;
  os_unfair_lock_lock((v24 + OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyRead));
  LOBYTE(v40) = *(v42 + 4);
  os_unfair_lock_unlock(v42);
  LOBYTE(v93) = v40;
  sub_100030744(&qword_1000C59B0);
  v121._countAndFlagsBits = sub_10007B488();
  sub_10007B4C8(v121);

  v122._countAndFlagsBits = 0x616572202020200ALL;
  v122._object = 0xEB00000000203A64;
  sub_10007B4C8(v122);
  os_unfair_lock_lock(v42);
  v43 = *(v42 + 4);
  os_unfair_lock_unlock(v42);
  if (v43 == 2)
  {
    LOBYTE(v43) = sub_10007B118();
  }

  if (v43)
  {
    v44._countAndFlagsBits = 1702195828;
  }

  else
  {
    v44._countAndFlagsBits = 0x65736C6166;
  }

  if (v43)
  {
    v45 = 0xE400000000000000;
  }

  else
  {
    v45 = 0xE500000000000000;
  }

  v44._object = v45;
  sub_10007B4C8(v44);

  v123._countAndFlagsBits = 0x746164202020200ALL;
  v123._object = 0xEB00000000203A65;
  sub_10007B4C8(v123);
  v46 = v88;
  sub_10007B098();
  sub_10005AA00(&qword_1000C59B8, &type metadata accessor for Date);
  v47 = v90;
  v124._countAndFlagsBits = sub_10007BB28();
  sub_10007B4C8(v124);

  (*(v89 + 8))(v46, v47);
  v125._countAndFlagsBits = 0xD00000000000001FLL;
  v125._object = 0x800000010008C650;
  sub_10007B4C8(v125);
  sub_100056BA8();
  v49 = (v48 & 1) == 0;
  if (v48)
  {
    v50._countAndFlagsBits = 1702195828;
  }

  else
  {
    v50._countAndFlagsBits = 0x65736C6166;
  }

  if (v49)
  {
    v51 = 0xE500000000000000;
  }

  else
  {
    v51 = 0xE400000000000000;
  }

  v50._object = v51;
  sub_10007B4C8(v50);

  v126._countAndFlagsBits = 0x727564202020200ALL;
  v126._object = 0xEF203A6E6F697461;
  sub_10007B4C8(v126);
  sub_10007B138();
  sub_10007B668();
  v127._countAndFlagsBits = 0xD00000000000001BLL;
  v127._object = 0x800000010008C670;
  sub_10007B4C8(v127);
  v128._countAndFlagsBits = 0x65736C6166;
  v128._object = 0xE500000000000000;
  sub_10007B4C8(v128);
  v129._countAndFlagsBits = 0xD000000000000015;
  v129._object = 0x800000010008C690;
  sub_10007B4C8(v129);
  v130._countAndFlagsBits = 0x65736C6166;
  v130._object = 0xE500000000000000;
  sub_10007B4C8(v130);
  v131._countAndFlagsBits = 0xD00000000000001DLL;
  v131._object = 0x800000010008C6B0;
  sub_10007B4C8(v131);
  sub_10007B0E8();
  v52 = sub_10007B2D8();
  v53 = sub_10007B2D8();
  v54 = v52 == v53;
  if (v52 == v53)
  {
    v55._countAndFlagsBits = 0x65736C6166;
  }

  else
  {
    v55._countAndFlagsBits = 1702195828;
  }

  if (v54)
  {
    v56 = 0xE500000000000000;
  }

  else
  {
    v56 = 0xE400000000000000;
  }

  v55._object = v56;
  sub_10007B4C8(v55);

  v132._object = 0x800000010008C6D0;
  v132._countAndFlagsBits = 0xD000000000000010;
  sub_10007B4C8(v132);
  sub_10007B0B8();
  v57 = sub_10007B2B8();
  v58 = sub_10007B2B8();
  v59 = v57 == v58;
  if (v57 == v58)
  {
    v60._countAndFlagsBits = 1702195828;
  }

  else
  {
    v60._countAndFlagsBits = 0x65736C6166;
  }

  if (v59)
  {
    v61 = 0xE400000000000000;
  }

  else
  {
    v61 = 0xE500000000000000;
  }

  v60._object = v61;
  sub_10007B4C8(v60);

  v133._object = 0x800000010008C6F0;
  v133._countAndFlagsBits = 0xD000000000000010;
  sub_10007B4C8(v133);
  v62 = atomic_load((v24 + OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyIsDeleted));
  if (v62)
  {
    v63._countAndFlagsBits = 1702195828;
  }

  else
  {
    v63._countAndFlagsBits = 0x65736C6166;
  }

  if (v62)
  {
    v64 = 0xE400000000000000;
  }

  else
  {
    v64 = 0xE500000000000000;
  }

  v63._object = v64;
  sub_10007B4C8(v63);

  v134._countAndFlagsBits = 0xD000000000000012;
  v134._object = 0x800000010008C710;
  sub_10007B4C8(v134);
  v65 = sub_10007B0A8();
  v66 = (v65 & 1) == 0;
  if (v65)
  {
    v67._countAndFlagsBits = 1702195828;
  }

  else
  {
    v67._countAndFlagsBits = 0x65736C6166;
  }

  if (v66)
  {
    v68 = 0xE500000000000000;
  }

  else
  {
    v68 = 0xE400000000000000;
  }

  v67._object = v68;
  sub_10007B4C8(v67);

  v135._object = 0xEE00203A4C525561;
  v135._countAndFlagsBits = 0x746164202020200ALL;
  sub_10007B4C8(v135);
  v69 = v91;
  sub_100057324(v91);
  v136._countAndFlagsBits = sub_10007B488();
  sub_10007B4C8(v136);

  v137._countAndFlagsBits = 0xD000000000000013;
  v137._object = 0x800000010008C730;
  sub_10007B4C8(v137);
  sub_100057324(v69);
  v138._countAndFlagsBits = sub_10007B488();
  sub_10007B4C8(v138);

  v139._countAndFlagsBits = 0xD000000000000014;
  v139._object = 0x800000010008C750;
  sub_10007B4C8(v139);
  sub_100057324(v69);
  v140._countAndFlagsBits = sub_10007B488();
  sub_10007B4C8(v140);

  v141._countAndFlagsBits = 0x527369202020200ALL;
  v141._object = 0xEC000000203A5454;
  sub_10007B4C8(v141);
  v70 = sub_10007B108();
  v71 = (v70 & 1) == 0;
  if (v70)
  {
    v72._countAndFlagsBits = 1702195828;
  }

  else
  {
    v72._countAndFlagsBits = 0x65736C6166;
  }

  if (v71)
  {
    v73 = 0xE500000000000000;
  }

  else
  {
    v73 = 0xE400000000000000;
  }

  v72._object = v73;
  sub_10007B4C8(v72);

  v142._countAndFlagsBits = 0xD000000000000016;
  v142._object = 0x800000010008C770;
  sub_10007B4C8(v142);
  v74 = sub_100057744();
  v75 = (v74 & 1) == 0;
  if (v74)
  {
    v76._countAndFlagsBits = 1702195828;
  }

  else
  {
    v76._countAndFlagsBits = 0x65736C6166;
  }

  if (v75)
  {
    v77 = 0xE500000000000000;
  }

  else
  {
    v77 = 0xE400000000000000;
  }

  v76._object = v77;
  sub_10007B4C8(v76);

  v143._countAndFlagsBits = 0xD000000000000011;
  v143._object = 0x800000010008C790;
  sub_10007B4C8(v143);
  v93 = sub_100057120();
  sub_100030744(&qword_1000C59C0);
  v144._countAndFlagsBits = sub_10007B488();
  sub_10007B4C8(v144);

  v145._countAndFlagsBits = 0xD000000000000018;
  v145._object = 0x800000010008C7B0;
  sub_10007B4C8(v145);
  v78 = atomic_load((v24 + OBJC_IVAR____TtC9IntentsUI9FTMessage_didLoadTranscript));
  if (v78)
  {
    v79._countAndFlagsBits = 1702195828;
  }

  else
  {
    v79._countAndFlagsBits = 0x65736C6166;
  }

  if (v78)
  {
    v80 = 0xE400000000000000;
  }

  else
  {
    v80 = 0xE500000000000000;
  }

  v79._object = v80;
  sub_10007B4C8(v79);

  v146._countAndFlagsBits = 0x447369202020200ALL;
  v146._object = 0xEE00203A79747269;
  sub_10007B4C8(v146);
  v81 = atomic_load((v24 + OBJC_IVAR____TtC9IntentsUI9FTMessage_isDirty));
  if (v81)
  {
    v82._countAndFlagsBits = 1702195828;
  }

  else
  {
    v82._countAndFlagsBits = 0x65736C6166;
  }

  if (v81)
  {
    v83 = 0xE400000000000000;
  }

  else
  {
    v83 = 0xE500000000000000;
  }

  v82._object = v83;
  sub_10007B4C8(v82);

  v147._countAndFlagsBits = 0xD000000000000014;
  v147._object = 0x800000010008C7D0;
  sub_10007B4C8(v147);
  LOBYTE(v93) = sub_100056E64();
  sub_10007B958();
  v148._countAndFlagsBits = 0x202020202020200ALL;
  v148._object = 0xEA00000000002920;
  sub_10007B4C8(v148);
  return v96;
}