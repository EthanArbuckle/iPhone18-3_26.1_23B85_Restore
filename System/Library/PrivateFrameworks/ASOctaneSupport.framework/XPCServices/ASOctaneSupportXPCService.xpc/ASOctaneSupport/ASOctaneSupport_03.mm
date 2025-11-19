uint64_t ChannelOutboundInvoker.register(file:line:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 88) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return sub_10003E71C();
}

uint64_t sub_10003C7DC()
{
  sub_10003E794();
  *(v0 + 64) = ChannelOutboundInvoker.register(file:line:)(*(v0 + 16), *(v0 + 24), *(v0 + 88), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = sub_10003E75C();
  *(v0 + 72) = v1;
  *v1 = v0;
  v9 = sub_10003E74C(v1, v2, v3, v4, v5, v6, v7, v8, v11);

  return v9();
}

uint64_t sub_10003C87C()
{
  sub_10003E794();
  sub_10003E7AC();
  v3 = v2;
  sub_10003E73C();
  *v4 = v3;
  v5 = *v1;
  sub_10003E72C();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    v7 = sub_10003E704;
  }

  else
  {

    v7 = sub_10003E6F0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10003C9A4()
{
  sub_10003E794();
  sub_10003E77C();
  ChannelOutboundInvoker.bind(to:file:line:)();
  sub_10003E7EC(v0);
  v1 = sub_10003E75C();
  v2 = sub_10003E818(v1);
  *v2 = v3;
  v11 = sub_10003E74C(v2, v4, v5, v6, v7, v8, v9, v10, v13);

  return v11();
}

uint64_t sub_10003CA54()
{
  sub_10003E794();
  sub_10003E77C();
  ChannelOutboundInvoker.connect(to:file:line:)();
  sub_10003E7EC(v0);
  v1 = sub_10003E75C();
  v2 = sub_10003E818(v1);
  *v2 = v3;
  v11 = sub_10003E74C(v2, v4, v5, v6, v7, v8, v9, v10, v13);

  return v11();
}

uint64_t sub_10003CB04()
{
  sub_10003E794();
  sub_10003E77C();
  ChannelOutboundInvoker.writeAndFlush(_:file:line:)();
  sub_10003E7EC(v0);
  v1 = sub_10003E75C();
  v2 = sub_10003E818(v1);
  *v2 = v3;
  v11 = sub_10003E74C(v2, v4, v5, v6, v7, v8, v9, v10, v13);

  return v11();
}

uint64_t ChannelOutboundInvoker.close(mode:file:line:)(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 89) = a4;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 88) = a1;
  return sub_10003E71C();
}

uint64_t sub_10003CBB4()
{
  sub_10003E794();
  ChannelOutboundInvoker.close(mode:file:line:)();
  *(v0 + 64) = v1;
  v2 = sub_10003E75C();
  *(v0 + 72) = v2;
  *v2 = v0;
  v10 = sub_10003E74C(v2, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_10003CC58()
{
  sub_10003E794();
  sub_10003E7AC();
  v3 = v2;
  sub_10003E73C();
  *v4 = v3;
  v5 = *v1;
  sub_10003E72C();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    v7 = sub_10003CD5C;
  }

  else
  {

    v7 = sub_10003E6F0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10003CD5C()
{
  sub_10003E794();

  sub_10003E824();

  return v0();
}

uint64_t sub_10003CDDC()
{
  sub_10003E794();
  sub_10003E77C();
  ChannelOutboundInvoker.triggerUserOutboundEvent(_:file:line:)();
  sub_10003E7EC(v0);
  v1 = sub_10003E75C();
  v2 = sub_10003E818(v1);
  *v2 = v3;
  v11 = sub_10003E74C(v2, v4, v5, v6, v7, v8, v9, v10, v13);

  return v11();
}

uint64_t ChannelPipeline.addHandler(_:name:position:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return sub_10003E71C();
}

uint64_t sub_10003CE88()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  ObjectType = swift_getObjectType();
  v9 = sub_1000A2380(v7, v5, v4, v3, v1, v2, ObjectType, v6);
  sub_10003E7EC(v9);
  v10 = sub_10003E75C();
  v11 = sub_10003E818(v10);
  *v11 = v12;
  v20 = sub_10003E74C(v11, v13, v14, v15, v16, v17, v18, v19, v22);

  return v20();
}

uint64_t sub_10003CF64()
{
  sub_10003E794();
  sub_10003E7AC();
  v3 = v2;
  sub_10003E73C();
  *v4 = v3;
  v5 = *v1;
  sub_10003E72C();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = sub_10003D068;
  }

  else
  {

    v7 = sub_10003E6F0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10003D068()
{
  sub_10003E794();

  sub_10003E824();

  return v0();
}

uint64_t ChannelPipeline.removeHandler(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_10003E71C();
}

uint64_t sub_10003D0DC()
{
  sub_10003E794();
  sub_10003E884();
  ChannelPipeline.removeHandler(_:)();
  sub_10003E86C(v0);
  v1 = sub_10003E75C();
  v2 = sub_10003E878(v1);
  *v2 = v3;
  v11 = sub_10003E74C(v2, v4, v5, v6, v7, v8, v9, v10, v13);

  return v11();
}

uint64_t sub_10003D168()
{
  sub_10003E794();
  sub_10003E7AC();
  v3 = v2;
  sub_10003E73C();
  *v4 = v3;
  v5 = *v1;
  sub_10003E72C();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    v7 = sub_10003E708;
  }

  else
  {

    v7 = sub_10003E6F0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t ChannelPipeline.removeHandler(name:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_10003E71C();
}

uint64_t sub_10003D284()
{
  sub_10003E794();
  sub_10003E884();
  ChannelPipeline.removeHandler(name:)();
  sub_10003E86C(v0);
  v1 = sub_10003E75C();
  v2 = sub_10003E878(v1);
  *v2 = v3;
  v11 = sub_10003E74C(v2, v4, v5, v6, v7, v8, v9, v10, v13);

  return v11();
}

uint64_t sub_10003D310()
{
  sub_10003E794();
  sub_10003E7AC();
  v3 = v2;
  sub_10003E73C();
  *v4 = v3;
  v5 = *v1;
  sub_10003E72C();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    v7 = sub_10003D414;
  }

  else
  {

    v7 = sub_10003E6F0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10003D414()
{
  sub_10003E794();

  sub_10003E824();

  return v0();
}

uint64_t ChannelPipeline.removeHandler(context:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_10003E71C();
}

uint64_t sub_10003D484()
{
  sub_10003E794();
  *(v0 + 32) = ChannelPipeline.removeHandler(context:)();
  v1 = sub_10003E75C();
  *(v0 + 40) = v1;
  *v1 = v0;
  v9 = sub_10003E74C(v1, v2, v3, v4, v5, v6, v7, v8, v11);

  return v9();
}

uint64_t sub_10003D518()
{
  sub_10003E794();
  sub_10003E7AC();
  v3 = v2;
  sub_10003E73C();
  *v4 = v3;
  v5 = *v1;
  sub_10003E72C();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    v7 = sub_10003D61C;
  }

  else
  {

    v7 = sub_10003E6F0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10003D61C()
{
  sub_10003E794();

  sub_10003E824();

  return v0();
}

uint64_t ChannelPipeline.context(handler:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_10003E71C();
}

uint64_t sub_10003D690()
{
  sub_10003E794();
  sub_10003E884();
  ChannelPipeline.context(handler:)();
  sub_10003E86C(v0);
  v1 = sub_10003E75C();
  v2 = sub_10003E878(v1);
  *v2 = v3;
  v11 = sub_10003E74C(v2, v4, v5, v6, v7, v8, v9, v10, v13);

  return v11();
}

uint64_t sub_10003D71C()
{
  sub_10003E7B8();
  v3 = v2;
  sub_10003E7AC();
  v5 = v4;
  sub_10003E73C();
  *v6 = v5;
  v7 = *v1;
  sub_10003E72C();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (v0)
  {
    sub_10003E84C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    sub_10003E7D4();

    return v12(v3);
  }
}

uint64_t ChannelPipeline.context(name:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_10003E71C();
}

uint64_t sub_10003D864()
{
  sub_10003E794();
  sub_10003E884();
  ChannelPipeline.context(name:)();
  sub_10003E86C(v0);
  v1 = sub_10003E75C();
  v2 = sub_10003E878(v1);
  *v2 = v3;
  v11 = sub_10003E74C(v2, v4, v5, v6, v7, v8, v9, v10, v13);

  return v11();
}

uint64_t sub_10003D8F0()
{
  sub_10003E7B8();
  v3 = v2;
  sub_10003E7AC();
  v5 = v4;
  sub_10003E73C();
  *v6 = v5;
  v7 = *v1;
  sub_10003E72C();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (v0)
  {
    sub_10003E84C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    sub_10003E7D4();

    return v12(v3);
  }
}

uint64_t ChannelPipeline.context<A>(handlerType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_10003E71C();
}

uint64_t sub_10003DA38()
{
  sub_10003E794();
  ChannelPipeline.context<A>(handlerType:)();
  *(v0 + 48) = v1;
  v2 = sub_10003E75C();
  *(v0 + 56) = v2;
  *v2 = v0;
  v10 = sub_10003E74C(v2, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_10003DAD0()
{
  sub_10003E7B8();
  v3 = v2;
  sub_10003E7AC();
  v5 = v4;
  sub_10003E73C();
  *v6 = v5;
  v7 = *v1;
  sub_10003E72C();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (v0)
  {
    sub_10003E84C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    sub_10003E7D4();

    return v12(v3);
  }
}

uint64_t sub_10003DC00()
{
  sub_10003E794();

  sub_10003E824();

  return v0();
}

uint64_t ChannelPipeline.addHandlers(_:position:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_10003E71C();
}

uint64_t sub_10003DC74()
{
  sub_10003E794();
  v0[6] = ChannelPipeline.addHandlers(_:position:)(v0[2], v0[3], v0[4]);
  v1 = sub_10003E75C();
  v0[7] = v1;
  *v1 = v0;
  v9 = sub_10003E74C(v1, v2, v3, v4, v5, v6, v7, v8, v11);

  return v9();
}

uint64_t sub_10003DD0C()
{
  sub_10003E794();
  sub_10003E7AC();
  v3 = v2;
  sub_10003E73C();
  *v4 = v3;
  v5 = *v1;
  sub_10003E72C();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = sub_10003DC00;
  }

  else
  {

    v7 = sub_10003E6F0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t ChannelPipeline.addHandlers(_:position:)()
{
  sub_10003E7B8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = swift_task_alloc();
  *(v0 + 16) = v7;
  *v7 = v0;
  v7[1] = sub_10003C108;

  return ChannelPipeline.addHandlers(_:position:)(v6, v4, v2);
}

uint64_t sub_10003DEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000183C4(&qword_1002ADF60);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v23 - v11;
  sub_10003E384(a3, v23 - v11);
  v13 = sub_1001F7058();
  if (sub_10001C990(v12, 1, v13) == 1)
  {
    sub_10003E3F4(v12);
  }

  else
  {
    sub_1001F7048();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_1001F7008();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1001F6BD8() + 32;
      v18 = swift_allocObject();
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;

      if (v16 | v14)
      {
        v24[0] = 0;
        v24[1] = 0;
        v19 = v24;
        v24[2] = v14;
        v24[3] = v16;
      }

      else
      {
        v19 = 0;
      }

      v23[1] = 7;
      v23[2] = v19;
      v23[3] = v17;
      v21 = swift_task_create();

      sub_10003E3F4(a3);

      return v21;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10003E3F4(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10003E154(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10003E24C;

  return v6(a1);
}

uint64_t sub_10003E24C()
{
  sub_10003E794();
  sub_10003E7AC();
  v1 = *v0;
  sub_10003E72C();
  *v2 = v1;

  sub_10003E824();

  return v3();
}

uint64_t sub_10003E384(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002ADF60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003E3F4(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002ADF60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003E45C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E494()
{
  sub_10003E7B8();
  v0 = swift_task_alloc();
  v1 = sub_10003E85C(v0);
  *v1 = v2;
  v3 = sub_10003E7F8(v1);

  return v4(v3);
}

uint64_t sub_10003E528()
{
  sub_10003E7B8();
  v0 = swift_task_alloc();
  v1 = sub_10003E85C(v0);
  *v1 = v2;
  v3 = sub_10003E7F8(v1);

  return v4(v3);
}

uint64_t sub_10003E5BC()
{
  v1 = sub_1000183C4(&qword_1002ADF68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003E650(uint64_t a1)
{
  sub_1000183C4(&qword_1002ADF68);

  return sub_10003BB20(a1);
}

uint64_t sub_10003E75C()
{

  return swift_task_alloc();
}

uint64_t sub_10003E830()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t sub_10003E8B0(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 96) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = result;
  return result;
}

uint64_t sub_10003E8C8(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t sub_10003E8E0()
{

  return swift_allocObject();
}

uint64_t sub_10003E940()
{
  EmbeddedChannel.pipeline.getter();
  ChannelPipeline.close(mode:promise:)();
}

uint64_t Channel.close(mode:promise:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10003FB80(a1, a2, a3);
  v4(v3);
  ChannelPipeline.close(mode:promise:)();
}

BOOL static ChannelError.__derived_enum_equals(_:_:)(unint64_t a1, char a2, unint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        goto LABEL_21;
      }

      result = static SocketAddress.== infix(_:_:)(a1, a3);
      break;
    case 2:
      if (a4 != 2)
      {
        goto LABEL_21;
      }

      type metadata accessor for NIONetworkInterface();
      result = static NIONetworkInterface.== infix(_:_:)(a1);
      break;
    case 3:
      switch(a1)
      {
        case 1uLL:
          sub_10003FB94();
          if (!v7 || a3 != 1)
          {
            goto LABEL_21;
          }

          break;
        case 2uLL:
          sub_10003FB94();
          if (!v7 || a3 != 2)
          {
            goto LABEL_21;
          }

          break;
        case 3uLL:
          sub_10003FB94();
          if (!v7 || a3 != 3)
          {
            goto LABEL_21;
          }

          break;
        case 4uLL:
          sub_10003FB94();
          if (!v7 || a3 != 4)
          {
            goto LABEL_21;
          }

          break;
        case 5uLL:
          sub_10003FB94();
          if (!v7 || a3 != 5)
          {
            goto LABEL_21;
          }

          break;
        case 6uLL:
          sub_10003FB94();
          if (!v7 || a3 != 6)
          {
            goto LABEL_21;
          }

          break;
        case 7uLL:
          sub_10003FB94();
          if (!v7 || a3 != 7)
          {
            goto LABEL_21;
          }

          break;
        case 8uLL:
          sub_10003FB94();
          if (!v7 || a3 != 8)
          {
            goto LABEL_21;
          }

          break;
        case 9uLL:
          sub_10003FB94();
          if (!v7 || a3 != 9)
          {
            goto LABEL_21;
          }

          break;
        case 0xAuLL:
          sub_10003FB94();
          if (!v7 || a3 != 10)
          {
            goto LABEL_21;
          }

          break;
        case 0xBuLL:
          sub_10003FB94();
          if (!v7 || a3 != 11)
          {
            goto LABEL_21;
          }

          break;
        case 0xCuLL:
          sub_10003FB94();
          if (!v7 || a3 != 12)
          {
            goto LABEL_21;
          }

          break;
        case 0xDuLL:
          sub_10003FB94();
          if (!v7 || a3 != 13)
          {
            goto LABEL_21;
          }

          break;
        default:
          sub_10003FB94();
          v7 = v7 && a3 == 0;
          if (!v7)
          {
            goto LABEL_21;
          }

          break;
      }

      result = 1;
      break;
    default:
      if (a4)
      {
LABEL_21:
        result = 0;
      }

      else
      {
        result = a1 == a3;
      }

      break;
  }

  return result;
}

uint64_t sub_10003EC50()
{
  EmbeddedChannel.pipeline.getter();
  ChannelPipeline.register(promise:)();
}

uint64_t Channel.register(promise:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 32))(a2, a3);
  ChannelPipeline.register(promise:)();
}

uint64_t sub_10003EDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = sub_10003FB80(a1, a2, a3);
  v7(v6);
  v8 = sub_1000378EC();
  a5(v8);
}

uint64_t sub_10003EF58(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  EmbeddedChannel.pipeline.getter();
  v4 = sub_1000378EC();
  a3(v4);
}

uint64_t sub_10003EFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = sub_10003FB80(a1, a2, a3);
  v7(v6);
  v8 = sub_1000378EC();
  a5(v8);
}

uint64_t sub_10003F074(void (*a1)(void))
{
  EmbeddedChannel.pipeline.getter();
  a1();
}

uint64_t sub_10003F0D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  (*(a2 + 32))();
  a3();
}

uint64_t sub_10003F1A0(uint64_t a1, uint64_t a2)
{
  EmbeddedChannel.pipeline.getter();
  ChannelPipeline.triggerUserOutboundEvent(_:promise:)(a1, a2);
}

uint64_t Channel.triggerUserOutboundEvent(_:promise:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10003FB80(a1, a2, a3);
  v6(v5);
  ChannelPipeline.triggerUserOutboundEvent(_:promise:)(a1, a2);
}

uint64_t Channel.registerAlreadyConfigured0(promise:)(uint64_t result)
{
  if (result)
  {
    sub_10002D678();
    swift_allocError();
    *v1 = 1;
    *(v1 + 8) = 3;
    swift_errorRetain();
    sub_1000A13B0();
  }

  return result;
}

uint64_t sub_10003F314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_BYTE *, const char *, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  __chkstk_darwin(a1, a1);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v19 = v6;
  (*(v14 + 16))(v13);
  NIOAny.init<A>(_:)(v13, a3, v18);
  v15 = a6(v18, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Channel.swift", 109, 2, a5, a2, *(a4 + 8));
  sub_100034310(v18);
  return v15;
}

uint64_t Channel.write<A>(_:promise:)()
{
  sub_10003FBC8();
  __chkstk_darwin(v2, v3);
  v5 = sub_10003FBA0(v4, v10);
  v6(v5);
  NIOAny.init<A>(_:)(v1, v0, v11);
  v7 = sub_10003FBF8();
  v8(v7);
  return sub_100034310(v11);
}

uint64_t Channel.writeAndFlush<A>(_:promise:)()
{
  sub_10003FBC8();
  __chkstk_darwin(v2, v3);
  v5 = sub_10003FBA0(v4, v10);
  v6(v5);
  NIOAny.init<A>(_:)(v1, v0, v11);
  v7 = sub_10003FBF8();
  v8(v7);
  return sub_100034310(v11);
}

uint64_t ChannelCore.removeHandlers(channel:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(ObjectType, a2);
  sub_10009AF34();
}

unint64_t sub_10003F7F0()
{
  result = qword_1002ADF70;
  if (!qword_1002ADF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADF70);
  }

  return result;
}

uint64_t sub_10003F844(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for OctaneSubscriptionPeriod(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10003F874(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003F8B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10003F8F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ChannelEvent(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10003F9F4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void *sub_10003FC0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1000402A0(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v4 = sub_1001EA8E8();
  v5 = *(a1 + 96);

  v6 = sub_1001F10F8(0x6F726665726F7473, 0xEA0000000000746ELL, v5);
  v8 = v7;

  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = sub_1001F10F8(0xD000000000000010, 0x8000000100224620, v4);
  if (!v10)
  {

LABEL_6:

    sub_1000402B8(a1);
    memcpy(v66, __dst, 0x139uLL);
    sub_10004030C(v66);
    sub_100040374(v73);
    return memcpy(a2, v73, 0x1A9uLL);
  }

  v55 = v10;
  v56 = v9;
  v57 = v8;
  v11 = sub_1001F10F8(0x646E65747865, 0xE600000000000000, v4);
  v54 = a1;
  if (v12)
  {
    v73[0] = v11;
    v73[1] = v12;
    sub_10004068C();
    v13 = sub_10004066C();
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v14 = 0;
  v15 = v13[2];
  v16 = _swiftEmptyArrayStorage;
LABEL_9:
  v17 = &v13[2 * v14 + 5];
  while (v15 != v14)
  {
    if (v14 >= v13[2])
    {
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_28;
    }

    ++v14;
    v18 = *(v17 - 8);
    v19 = *v17;

    v20._rawValue = &off_10027A288;
    v75._countAndFlagsBits = v18;
    v75._object = v19;
    v21 = sub_1001F7BD8(v20, v75);

    if (!v21)
    {
      v22 = 0;
LABEL_16:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100032EF0();
        v16 = v24;
      }

      v23 = v16[2];
      if (v23 >= v16[3] >> 1)
      {
        sub_100032EF0();
        v16 = v25;
      }

      v16[2] = v23 + 1;
      *(v16 + v23 + 32) = v22;
      goto LABEL_9;
    }

    v17 += 16;
    if (v21 == 1)
    {
      v22 = 1;
      goto LABEL_16;
    }
  }

  v53 = sub_1001B8850(v16);
  v26 = sub_1001F10F8(0x73646C656966, 0xE600000000000000, v4);
  if (v27)
  {
    v73[0] = v26;
    v73[1] = v27;
    sub_10004068C();
    v52 = sub_10004066C();
  }

  else
  {
    v52 = _swiftEmptyArrayStorage;
  }

  v17 = v54;
  v28 = sub_1001F10F8(108, 0xE100000000000000, v4);
  if (v29)
  {
    sub_1000E0BC4(v28, v29, &v68);

    if (v69)
    {
      v49 = v69;
      v30 = v71;
      v48 = v70;
      v50 = v68;
      v51 = v72;
      goto LABEL_29;
    }
  }

  if (qword_1002AC458 != -1)
  {
    goto LABEL_35;
  }

LABEL_28:
  v49 = unk_1002E60A0;
  v50 = qword_1002E6098;
  v30 = unk_1002E60B0;
  v48 = qword_1002E60A8;
  v31 = qword_1002E60B8;

  v51 = v31;

LABEL_29:
  v59 = sub_1001F10F8(0x6D726F6674616C70, 0xE800000000000000, v4);
  v60 = v32;
  v33 = sub_1001F10F8(0xD000000000000013, 0x8000000100224640, v4);
  v35 = v34;

  if (v35)
  {
    v73[0] = v33;
    v73[1] = v35;
    sub_10004068C();
    v58 = sub_10004066C();
  }

  else
  {
    v58 = _swiftEmptyArrayStorage;
  }

  v36 = *(v17 + 48);

  sub_1000E32F8(v36, v61);
  sub_1000402B8(v17);
  memcpy(v62, v61, 0x139uLL);
  debugOnly(_:)(v62, v37, v38, v39, v40, v41);
  memcpy(v63, __dst, 0x139uLL);
  sub_10004030C(v63);
  memcpy(__dst, v62, sizeof(__dst));
  v64[0] = v6;
  v64[1] = v57;
  v64[2] = v56;
  v64[3] = v55;
  v64[4] = v53;
  v64[5] = v52;
  v64[6] = v50;
  v64[7] = v49;
  v64[8] = v48;
  v64[9] = v30;
  v64[10] = v51;
  v64[11] = v59;
  v64[12] = v60;
  v64[13] = v58;
  memcpy(&v64[14], v62, 0x139uLL);
  memcpy(v65, v64, 0x1A9uLL);
  debugOnly(_:)(v65, v42, v43, v44, v45, v46);
  v66[0] = v6;
  v66[1] = v57;
  v66[2] = v56;
  v66[3] = v55;
  v66[4] = v53;
  v66[5] = v52;
  v66[6] = v50;
  v66[7] = v49;
  v66[8] = v48;
  v66[9] = v30;
  v66[10] = v51;
  v66[11] = v59;
  v66[12] = v60;
  v66[13] = v58;
  memcpy(&v66[14], __dst, 0x139uLL);
  sub_10004037C(v64, v73);
  sub_1000403B4(v66);
  memcpy(v73, v65, 0x1A9uLL);
  return memcpy(a2, v73, 0x1A9uLL);
}

uint64_t sub_100040198(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10027A498;
  v7._object = a2;
  v4 = sub_1001F7BD8(v3, v7);

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

uint64_t sub_1000401EC(char a1)
{
  if (a1)
  {
    return 1634497893;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10004022C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100040198(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10004025C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000401EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1000402A0(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
  bzero(a1 + 4, 0x119uLL);
}

uint64_t sub_10004030C(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002ADF78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AppInformationRequest.Extension(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000404B0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000404E8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100040514(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 425))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100040554(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 425) = 1;
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

    *(result + 425) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100040618()
{
  result = qword_1002ADF80;
  if (!qword_1002ADF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADF80);
  }

  return result;
}

uint64_t sub_10004066C()
{

  return sub_1001F75B8();
}

unint64_t sub_10004068C()
{
  STACK[0x7A0] = 44;
  STACK[0x7A8] = 0xE100000000000000;

  return sub_10001C790();
}

void sub_1000406AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IAPTransaction();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 72);
  if (!v10)
  {
    v17 = sub_100040CC8();
    sub_1000B738C(v17, v18, 6, v47);
    v44 = v47[0];
    v45 = v47[1];
    v16 = LODWORD(v47[2]) | ((WORD2(v47[2]) | (BYTE6(v47[2]) << 16)) << 32);
LABEL_4:
    type metadata accessor for HTTPResponseHead._Storage();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = 21;
    *(v19 + 40) = 65537;
LABEL_5:
    *a2 = v19;
    *(a2 + 8) = _swiftEmptyArrayStorage;
    *(a2 + 16) = 2;
    v20 = v45;
    *(a2 + 24) = v44;
    *(a2 + 40) = v20;
    *(a2 + 56) = v16;
    *(a2 + 62) = BYTE6(v16);
    *(a2 + 60) = WORD2(v16);
    return;
  }

  *&v45 = v2;
  v50 = *(a1 + 56);
  v11 = *(a1 + 80);
  v12 = *(a1 + 87);
  v51 = v10;
  v52[0] = v11;
  *(v52 + 7) = v12;
  v13 = sub_1000B74F4();
  v15 = v14;
  sub_1001F6158();
  swift_allocObject();
  v16 = sub_1001F6148();
  sub_100040B50();
  sub_1001F6138();

  memcpy(v46, v47, 0x50uLL);
  v21 = v46[9];
  if (!v46[9])
  {
    sub_100040BA4(v46);
    v31 = sub_100040CC8();
    sub_1000B738C(v31, v32, 6, &v48);
    sub_100040CEC(v48, v49);
    sub_10003A380(v13, v15);
    goto LABEL_4;
  }

  v40[2] = v46[8];
  sub_10001AE68((v45 + 88), *(v45 + 112));
  v23 = v46[0];
  v22 = v46[1];
  *&v44 = v21;

  v40[0] = v22;
  v40[1] = v23;
  v24 = sub_10008D8C8(v23, v22);
  v25 = sub_10001A07C(v24);
  v42 = v15;
  v43 = a2;
  v41 = v13;
  if (!v25)
  {

    v28 = _swiftEmptyArrayStorage;
LABEL_19:
    type metadata accessor for InAppPendingTransactionsResponse();
    v33 = sub_1000720B0(v28);
    sub_10001AE68((v45 + 88), *(v45 + 112));

    sub_10008D944();
    v16 = v34;
    v36 = v35;

    sub_100040BA4(v46);
    v37 = *(v33 + 56);
    v38 = *(v33 + 64);
    *(v33 + 56) = v16;
    *(v33 + 64) = v36;
    sub_100040C5C(v16, v36);
    sub_10003A36C(v37, v38);

    sub_10003A36C(v16, v36);

    sub_1001C6854(v39);
    sub_100040CEC(v48, v49);
    sub_10003A380(v41, v42);

    type metadata accessor for HTTPResponseHead._Storage();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = 3;
    *(v19 + 40) = 65537;
    a2 = v43;
    goto LABEL_5;
  }

  v26 = v25;
  v48.n128_u64[0] = _swiftEmptyArrayStorage;
  sub_10003414C();
  if ((v26 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v28 = v48.n128_u64[0];
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v29 = sub_1001F7808();
      }

      else
      {
        v29 = *(v24 + 8 * v27 + 32);
      }

      sub_1001D4DFC(v29, 0, 0, v9);
      v48.n128_u64[0] = v28;
      v30 = v28[2];
      if (v30 >= v28[3] >> 1)
      {
        sub_10003414C();
        v28 = v48.n128_u64[0];
      }

      ++v27;
      v28[2] = v30 + 1;
      sub_100040BF8(v9, v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v30);
    }

    while (v26 != v27);

    goto LABEL_19;
  }

  __break(1u);
}

unint64_t sub_100040B50()
{
  result = qword_1002AE060;
  if (!qword_1002AE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE060);
  }

  return result;
}

uint64_t sub_100040BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IAPTransaction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040C5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100040C70(a1, a2);
  }

  return a1;
}

uint64_t sub_100040C70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100040D08(uint64_t a1, uint64_t a2)
{
  v4 = *(sub_1000795A8() + 56);

  result = sub_10013B560(v4);
  v6 = result;
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      return 0;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      result = sub_1001F7808();
      v8 = result;
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v8 = *(v4 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = *(v8 + 16) == a1 && *(v8 + 24) == a2;
    if (v9 || (sub_1001F7EA8() & 1) != 0)
    {

      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100040E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001EA8E8();
  v5 = *(a1 + 96);
  LODWORD(a1) = *(a1 + 48);

  sub_100158ED4(v4, a1, v5, __src);
  memcpy(__dst, __src, 0x1C1uLL);
  if (sub_1000419C0(__dst) == 1)
  {
    sub_1000B738C(0x2064696C61766E49, 0xEF74736575716572, 6, v18);
    v6 = LODWORD(v18[4]) | ((WORD2(v18[4]) | (BYTE6(v18[4]) << 16)) << 32);
    type metadata accessor for HTTPResponseHead._Storage();
    v7 = sub_100021728();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    result = sub_10002170C(v7, 21);
    v11 = _swiftEmptyArrayStorage;
  }

  else
  {
    memcpy(v18, __dst, 0x1C1uLL);
    v12 = sub_1000410B0(v18);
    sub_1000419D8(__src);
    sub_1001F15AC(v12);
    v6 = v14 | ((v15 | (v16 << 16)) << 32);
    type metadata accessor for HTTPResponseHead._Storage();
    v7 = sub_100021728();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    result = sub_10002170C(v7, 3);
    v11 = &off_100279DB8;
  }

  *a2 = v7;
  *(a2 + 8) = v11;
  *(a2 + 16) = 2;
  *(a2 + 24) = v9;
  *(a2 + 40) = v10;
  *(a2 + 56) = v6;
  *(a2 + 62) = BYTE6(v6);
  *(a2 + 60) = WORD2(v6);
  return result;
}

uint64_t sub_1000410B0(uint64_t *a1)
{
  v3 = v1;
  v5 = a1[6];
  if (v5 || a1[16])
  {
    sub_100041C98();
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[16];
    sub_1000795A8();
    v152 = sub_1000EE018(v5, v8);

    v9 = a1[5];
    if (v9 && (sub_10014B7DC(a1[4], v9, v113), v114))
    {
      v97 = v114;
      v100 = v121;
      v101 = v122;
      v98 = v119;
      v99 = v120;
      v95 = v117;
      v96 = v118;
      v10 = v113;
      v93 = v115;
      v94 = v116;
    }

    else
    {
      sub_100041C98();
      v10 = &v123;
      sub_10007A340();
      v100 = v131;
      v101 = v132;
      v98 = v129;
      v99 = v130;
      v95 = v127;
      v96 = v128;
      v93 = v125;
      v94 = v126;
      v97 = v124;
    }

    v92 = *v10;
    v11 = a1[3];
    v103 = v2;
    if (v11 && (sub_1000E0BC4(a1[2], v11, &v133), (v12 = v134) != 0))
    {
      v108 = v136;
      v13 = v135;
      v14 = v133;
    }

    else
    {
      sub_100041C98();
      sub_10007992C();
      v14 = v137;
      v12 = v138;
      v13 = v139;
      v108 = v140;
    }

    *&v150 = v14;
    *(&v150 + 1) = v12;
    *v151 = v13;
    *&v151[8] = v108;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1001F69B8();
    sub_100026064(v3 + 48, v112);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_10002DD3C(v112, v16 + 24);
    memcpy((v16 + 64), a1, 0x1C1uLL);
    v17 = *v151;
    *(v16 + 520) = v150;
    *(v16 + 536) = v17;
    v89 = v3;
    v90 = v16;
    *(v16 + 552) = *&v151[16];
    sub_100041C98();
    v91 = v15;

    v102 = a1;
    sub_100041BB4(a1, v112);
    v87 = v7;
    v88 = v6;
    v18 = sub_100079810(31);
    v20 = v19;
    v109 = sub_1001F69B8();
    v21 = v152;
    v22 = sub_10013B560(v152);
    v23 = 0;
    v24 = v21 & 0xC000000000000001;
    v25 = v21 & 0xFFFFFFFFFFFFFF8;
    v86 = v18;
    if ((v20 & 0x2000000000000000) != 0)
    {
      v26 = HIBYTE(v20) & 0xF;
    }

    else
    {
      v26 = v18 & 0xFFFFFFFFFFFFLL;
    }

    v106 = v26;
    v107 = v20;
LABEL_15:
    for (i = v23; ; ++i)
    {
      if (v22 == i)
      {

        v141._countAndFlagsBits = v92;
        v141._object = v97;
        v142 = v93;
        v143 = v94;
        v144 = v95;
        v145 = v96;
        v146 = v98;
        v147 = v99;
        v148 = v100;
        v149 = v101;
        v79 = *(v102 + 120);

        v5 = sub_1000D5C20(v21, &v141, &v150, sub_100041BA0, v90, v79, v109);

        return v5;
      }

      if (v24)
      {
        v28 = sub_1001F7808();
      }

      else
      {
        if (i >= *(v25 + 16))
        {
          goto LABEL_49;
        }

        v28 = *(v21 + 8 * i + 32);
      }

      v23 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v29 = v28[16];
      if (v29)
      {
        v30 = v28[15];
        type metadata accessor for AssetRoute();

        v31 = sub_100058C88(v30, v29, v88, v87);
        v33 = v32;

        v83 = sub_1001B3448(v31, v33);
        v84 = v34;

        v36 = v28[10];
        v35 = v28[11];

        swift_isUniquelyReferenced_nonNull_native();
        *&v112[0] = v109;
        v82 = v36;
        v104 = v35;
        sub_10011108C();
        sub_100041C64();
        if (v39)
        {
          goto LABEL_50;
        }

        v40 = v37;
        v110 = v38;
        sub_1000183C4(&unk_1002BCC80);
        if (sub_100041C78())
        {
          v41 = v104;
          sub_10011108C();
          sub_100041C50();
          v26 = v106;
          if (!v44)
          {
            goto LABEL_54;
          }

          v40 = v42;
          v21 = v152;
        }

        else
        {
          v21 = v152;
          v41 = v104;
          v26 = v106;
          v43 = v110;
        }

        v109 = *&v112[0];
        if (v43)
        {
          v64 = (*(*&v112[0] + 56) + 16 * v40);
          *v64 = v83;
          v64[1] = v84;
        }

        else
        {
          sub_100041C14(*&v112[0] + 8 * (v40 >> 6));
          v66 = (v65[6] + 16 * v40);
          *v66 = v82;
          v66[1] = v41;
          v67 = (v65[7] + 16 * v40);
          *v67 = v83;
          v67[1] = v84;
          v68 = v65[2];
          v39 = __OFADD__(v68, 1);
          v69 = v68 + 1;
          if (v39)
          {
            goto LABEL_52;
          }

          v65[2] = v69;
        }

        goto LABEL_15;
      }

      if (v26)
      {
        v46 = v28[10];
        v45 = v28[11];

        swift_isUniquelyReferenced_nonNull_native();
        *&v112[0] = v109;
        v85 = v46;
        v105 = v45;
        sub_10011108C();
        sub_100041C64();
        if (v39)
        {
          goto LABEL_51;
        }

        v49 = v47;
        v111 = v48;
        sub_1000183C4(&unk_1002BCC80);
        if (sub_100041C78())
        {
          sub_10011108C();
          sub_100041C50();
          v26 = v106;
          if (!v44)
          {
            goto LABEL_54;
          }

          v49 = v50;
          v21 = v152;
          if ((v51 & 1) == 0)
          {
LABEL_35:
            v52 = *&v112[0];
            sub_100041C14(*&v112[0] + 8 * (v49 >> 6));
            v53 = (*(v52 + 48) + 16 * v49);
            *v53 = v85;
            v53[1] = v105;
            sub_100041C2C(v54, v55, v56, v57, v58, v59, v60, v61, v82, v83, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v105, v106, v107);

            v62 = *(v52 + 16);
            v39 = __OFADD__(v62, 1);
            v63 = v62 + 1;
            if (!v39)
            {
              v109 = v52;
              *(v52 + 16) = v63;
              goto LABEL_15;
            }

            goto LABEL_53;
          }
        }

        else
        {
          v21 = v152;
          v26 = v106;
          if ((v111 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        v70 = *&v112[0];

        v109 = v70;
        sub_100041C2C(v71, v72, v73, v74, v75, v76, v77, v78, v82, v83, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v105, v106, v107);

        goto LABEL_15;
      }
    }

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
    __break(1u);
LABEL_54:
    result = sub_1001F7FC8();
    __break(1u);
  }

  else
  {
    sub_100021578();
    swift_allocError();
    *v81 = 0;
    v81[1] = 0;
    v81[2] = 21;
    swift_willThrow();
    return v5;
  }

  return result;
}

uint64_t sub_1000417AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (*(v8 + 16) && (v9 = sub_10011108C(), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 16 * v9);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_10001AE68(a4, a4[3]);
    if (sub_100040D08(a1, a2))
    {
      v11 = sub_10015A2F0();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    swift_beginAccess();
    if (v13)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(a3 + 16);
      sub_1001E5CAC(v11, v13, a1, a2, isUniquelyReferenced_nonNull_native);
      *(a3 + 16) = v16;
    }

    else
    {
      sub_1001EB09C();
    }

    swift_endAccess();
  }

  return v11;
}

uint64_t sub_100041954()
{
  sub_100082E38();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1000419C0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000419D8(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002AE218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100041A40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041A78()
{

  sub_100019CCC(v0 + 24);

  if (*(v0 + 224) != 1)
  {
  }

  return _swift_deallocObject(v0, 560, 7);
}

uint64_t sub_100041C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v35 = (*(v33 + 56) + 16 * v32);
  *v35 = a12;
  v35[1] = a32;
}

BOOL sub_100041C78()
{

  return sub_1001F7A98(v0, v1);
}

void *sub_100041C98()
{
  v2 = *(v0 + 72);

  return sub_10001AE68((v0 + 48), v2);
}

uint64_t sub_100041CB0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1001F7EA8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int ByteBufferFoundationError.hashValue.getter()
{
  sub_1001F8068();
  sub_1001F8088(0);
  return sub_1001F80D8();
}

uint64_t sub_100041DA4(void *a1)
{
  v2 = sub_1000183C4(&qword_1002AE3B8);
  sub_10001A278();
  v4 = v3;
  __chkstk_darwin(v5, v6);
  v8 = &v10 - v7;
  sub_10001AE68(a1, a1[3]);
  sub_1000422C0();
  sub_1001F8198();
  sub_1001F7D88();
  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_100041ED8(void *a1)
{
  v3 = sub_1000183C4(&qword_1002AE3C8);
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6, v7);
  v9 = &v12 - v8;
  v10 = sub_10001AE68(a1, a1[3]);
  sub_1000422C0();
  sub_1001F8178();
  if (!v1)
  {
    v10 = sub_1001F7C78();
    (*(v5 + 8))(v9, v3);
  }

  sub_100019CCC(a1);
  return v10;
}

Swift::Int sub_100042030()
{
  sub_1001F8068();
  sub_1001F8088(0);
  return sub_1001F80D8();
}

uint64_t sub_100042074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100041CB0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000420A0(uint64_t a1)
{
  v2 = sub_1000422C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000420DC(uint64_t a1)
{
  v2 = sub_1000422C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100042118@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100041ED8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100042160(uint64_t a1, char a2, uint64_t a3)
{
  type metadata accessor for InAppTransactionDoneResponse();
  swift_allocObject();
  v6 = sub_1000B7E90();
  *(v6 + 24) = 1;

  sub_1000B7F00(a1, a2 & 1);
  *(v6 + 48) = a3;

  return v6;
}

uint64_t sub_1000421E0()
{
  sub_1000B7EC8();

  return swift_deallocClassInstance();
}

uint64_t sub_100042234(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100042274(uint64_t result, int a2, int a3)
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

unint64_t sub_1000422C0()
{
  result = qword_1002AE3C0;
  if (!qword_1002AE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE3C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InAppTransactionDoneErrorResponse.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1000423B0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000423EC()
{
  result = qword_1002AE3D0;
  if (!qword_1002AE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE3D0);
  }

  return result;
}

unint64_t sub_100042444()
{
  result = qword_1002AE3D8;
  if (!qword_1002AE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE3D8);
  }

  return result;
}

unint64_t sub_10004249C()
{
  result = qword_1002AE3E0;
  if (!qword_1002AE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE3E0);
  }

  return result;
}

uint64_t sub_1000424F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001EA8E8();
  v5 = *(a1 + 48);

  sub_10015978C(v4, v5, __src);
  memcpy(__dst, __src, 0x1C1uLL);
  if (sub_1000419C0(__dst) == 1)
  {
    sub_1000B738C(0x2064696C61766E49, 0xEF74736575716572, 6, v18);
    v6 = v18[8] | ((LOWORD(v18[9]) | (BYTE2(v18[9]) << 16)) << 32);
    type metadata accessor for HTTPResponseHead._Storage();
    v7 = sub_100021728();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    result = sub_10002170C(v7, 21);
    v11 = _swiftEmptyArrayStorage;
  }

  else
  {
    memcpy(v18, __dst, 0x1C1uLL);
    sub_100042784(v18, v13);
    sub_1000419D8(__src);
    sub_1001C64A0(v13);
    v6 = v14 | ((v15 | (v16 << 16)) << 32);
    type metadata accessor for HTTPResponseHead._Storage();
    v7 = sub_100021728();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    result = sub_10002170C(v7, 3);
    v11 = &off_10027A378;
  }

  *a2 = v7;
  *(a2 + 8) = v11;
  *(a2 + 16) = 2;
  *(a2 + 24) = v9;
  *(a2 + 40) = v10;
  *(a2 + 56) = v6;
  *(a2 + 62) = BYTE6(v6);
  *(a2 + 60) = WORD2(v6);
  return result;
}

void sub_100042784(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = v2;
    sub_10001AE68((v4 + 48), *(v4 + 72));
    sub_1000795A8();
    v6 = sub_1000EE018(v3, 0);

    sub_10001AE68((v4 + 48), *(v4 + 72));
    sub_10007992C();
    sub_10001AE68((v4 + 48), *(v4 + 72));
    sub_10007A340();
    sub_100193D28(v6, &v9, &v10, 0, v11);
    v7 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v7;
    *(a2 + 32) = v12;
  }

  else
  {
    sub_100021578();
    swift_allocError();
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 21;
    swift_willThrow();
  }
}

uint64_t sub_1000428BC()
{
  sub_100082E38();

  return swift_deallocClassInstance();
}

uint64_t sub_100042980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  sub_1000183C4(a5);
  v9 = swift_allocObject();
  *(v9 + 32) = v7;
  *(v9 + 40) = a7;
  sub_1000479AC(v9);

  return v9;
}

uint64_t sub_1000429E0(uint64_t (*a1)(void))
{
  v2 = 1;
  if ((v1[152] & 1) == 0)
  {
    v1[152] = 1;
    while ((v2 & 1) != 0 && ((*(*v1 + 648))() & 1) != 0 && ((*(*v1 + 584))() & 1) != 0)
    {
      v4 = (*(*v1 + 616))();
      v2 = v4 ^ 1;
      if ((v4 & 0x100) != 0)
      {
        v5 = *(a1() + 56);
        ObjectType = swift_getObjectType();
        debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 1173, ObjectType, v5);
        if (sub_10009D370())
        {
          sub_10009E30C();
        }
      }
    }

    v1[152] = 0;
  }

  return v2 & 1;
}

uint64_t sub_100042C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(v4 + 88))
  {
    return (*(a4 + 96))(*(v4 + 16));
  }

  return result;
}

uint64_t sub_100042CC8(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_100042E20(a1, a2);
  result = sub_1000429E0(a3);
  if (result)
  {
    result = (*(*v4 + 584))();
    if (result)
    {

      return a4();
    }
  }

  return result;
}

uint64_t sub_100042D5C()
{
  v1 = sub_100042E20(sub_100178474, sub_100180ED8);
  result = (*(*v0 + 688))(v1);
  if (result)
  {
    result = (*(*v0 + 584))();
    if (result)
    {

      return sub_100180F28();
    }
  }

  return result;
}

uint64_t sub_100042E20(uint64_t result, void (*a2)(uint64_t))
{
  if (v2[12])
  {
    v4 = result;
    v5 = *(*v2 + 640);

    v5(v6);
    v2[12] = 0;

    v4(0, 1);

    a2(v7);
  }

  return result;
}

void sub_100042F50(uint64_t *a1)
{
  sub_1001F77B8(40);
  sub_1000183C4(a1);
  sub_1001F7A28();
  v2._object = 0x8000000100224B50;
  v2._countAndFlagsBits = 0xD000000000000026;
  sub_1001F6CA8(v2);
  sub_1001F7AC8();
  __break(1u);
}

uint64_t sub_100043018()
{
  sub_1000B5638();
  result = sub_1000B478C();
  if (result)
  {
    sub_10002D678();
    v2 = swift_allocError();
    *v3 = 1;
    *(v3 + 8) = 3;
    swift_willThrow();
    (*(*v0 + 760))(v2, 2, 0);
  }

  return result;
}

uint64_t sub_100043100(void (*a1)(void))
{
  a1();
  v2 = *(v1 + 32);
  result = sub_1000E220C();
  if (result)
  {
    if (sub_1000E220C())
    {
      v4 = sub_10017BDA4(*(v2 + 16), 0xFFFFLL, 4103);
      if (v4)
      {
        v5 = 0xD00000000000001CLL;
      }

      else
      {
        v5 = 0xD000000000000050;
      }

      if (v4)
      {
        v6 = "file descriptor already closed!";
      }

      else
      {
        v6 = "connection reset (error set)";
      }

      if (v4)
      {
        v7 = v4;
      }

      else
      {
        v7 = 54;
      }

      v8 = v6 | 0x8000000000000000;
      sub_1000274C4();
      swift_allocError();
      *v9 = v5;
      *(v9 + 8) = v8;
      *(v9 + 16) = v7;
    }

    else
    {
      sub_1000274C4();
      swift_allocError();
      *v10 = 0xD00000000000001FLL;
      *(v10 + 8) = 0x8000000100224AB0;
      *(v10 + 16) = 9;
      swift_willThrow();
    }

    v11 = sub_10002E2CC();
    v12(v11);
  }

  return result;
}

uint64_t sub_100043284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100047964(a1, a2);
  v8 = v7(v6);
  return (*(a3 + 104))(v3, v8, a2, a3);
}

uint64_t sub_1000432FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 88))
  {
    sub_10002D864();
    swift_allocError();
    *v5 = 2;
    return swift_willThrow();
  }

  else
  {
    v9 = sub_100047964(a1, a2);
    v11 = v10(v9);
    return (*(a3 + 88))(v4, v11, a2, a3);
  }
}

void sub_100043430(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t))
{
  v8 = v4;
  v9 = *(*v4 + 16);

  sub_1001F7878();
  sub_1001F7908();
  sub_1001F7918();
  while (2)
  {
    sub_1001F7898();
    do
    {
      if (!v9)
      {
LABEL_15:
        sub_100037B00();
        return;
      }

      v10 = v9;
      v11 = *v8;
      v12 = *(*v8 + 16);
      if (v9 >= v12)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v9 = (v9 - 1) >> 1;
      if (v9 >= v12)
      {
        goto LABEL_17;
      }

      v13 = *(v11 + 32 + 8 * v10);
      v14 = *(v11 + 32 + 8 * v9);
      a2(0);
      if ((a3(v13, v14) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    while (v10 == v9);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v8 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = a4(v11);
      *v8 = v11;
    }

    if (v10 >= *(v11 + 16))
    {
LABEL_18:
      __break(1u);
      break;
    }

    *(v11 + 8 * v10 + 32) = v14;

    sub_1001F7898();
    v16 = *v8;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *v8 = v16;
    if ((v17 & 1) == 0)
    {
      v16 = a4(v16);
      *v8 = v16;
    }

    if (v9 < *(v16 + 16))
    {
      *(v16 + 8 * v9 + 32) = v13;

      continue;
    }

    break;
  }

  __break(1u);
}

unint64_t sub_1000435BC()
{
  sub_1001F77B8(28);

  v4._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v4);

  v5._countAndFlagsBits = 2112041;
  v5._object = 0xE300000000000000;
  sub_1001F6CA8(v5);
  sub_10015E434();
  type metadata accessor for ScheduledTask();
  v0 = sub_1001F6F48();
  v2 = v1;

  v6._countAndFlagsBits = v0;
  v6._object = v2;
  sub_1001F6CA8(v6);

  return 0xD000000000000015;
}

void withAutoReleasePool<A>(_:)(void (*a1)(void))
{
  v2 = objc_autoreleasePoolPush();
  a1();
  objc_autoreleasePoolPop(v2);
}

Swift::Int sub_100043734(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

uint64_t SelectableEventLoop._pendingTaskPop.getter()
{
  sub_100047940();
  swift_beginAccess();
  return *(v0 + 32);
}

uint64_t SelectableEventLoop._pendingTaskPop.setter(char a1)
{
  sub_100047914();
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t (*SelectableEventLoop._pendingTaskPop.modify())()
{
  sub_100047934();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t SelectableEventLoop._scheduledTasks.getter()
{
  sub_100047940();
  swift_beginAccess();
}

uint64_t SelectableEventLoop._scheduledTasks.setter(uint64_t a1)
{
  sub_100047914();
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t (*SelectableEventLoop._scheduledTasks.modify())()
{
  sub_100047934();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t SelectableEventLoop._succeededVoidFuture.getter()
{
  sub_100047940();
  swift_beginAccess();
}

uint64_t SelectableEventLoop._succeededVoidFuture.setter(uint64_t a1)
{
  sub_100047914();
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t (*SelectableEventLoop._succeededVoidFuture.modify())()
{
  sub_100047934();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t SelectableEventLoop._preconditionSafeToWait(file:line:)()
{
  if (sub_1000B3348())
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for MultiThreadedEventLoopGroup();
  result = static MultiThreadedEventLoopGroup.currentEventLoop.getter();
  if (result)
  {
LABEL_5:
    result = swift_unknownObjectRelease();
    __break(1u);
  }

  return result;
}

uint64_t sub_100043A44(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v3 + 32) = 0;
  *(v3 + 40) = j___s25ASOctaneSupportXPCService19SelectableEventLoopC15_scheduledTasksAA13PriorityQueueVyAA13ScheduledTaskCGvpfi();
  *(v3 + 48) = _swiftEmptyArrayStorage;
  *(v3 + 56) = 0;
  v8 = (v3 + 56);
  type metadata accessor for Lock();
  swift_allocObject();
  *(v3 + 72) = Lock.init()();
  swift_allocObject();
  *(v3 + 80) = Lock.init()();
  *(v3 + 88) = 0;
  swift_allocObject();
  *(v3 + 216) = Lock.init()();
  sub_1000183C4(&qword_1002AC608);
  sub_10001840C();
  *(v3 + 224) = sub_1001F69B8();
  *(v3 + 16) = a2;
  *(v3 + 24) = a1;

  *(v3 + 96) = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v10 = *(v3 + 96);
  *(v3 + 104) = v9;
  *(v3 + 112) = v10;
  *(v3 + 120) = 1024;
  *(v3 + 128) = v9;
  *(v3 + 136) = 1024;
  *(v3 + 144) = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v12 = *(v3 + 144);
  *(v3 + 152) = v11;
  *(v3 + 160) = v12;
  *(v3 + 168) = 1024;
  *(v3 + 176) = v11;
  *(v3 + 184) = 1024;
  *(v3 + 192) = sub_10006B278(1024);
  *(v3 + 200) = v13;
  *(v3 + 208) = v14;
  sub_100047934();
  swift_beginAccess();
  sub_100043C7C(4096);
  swift_endAccess();
  *(v3 + 64) = a3;
  sub_1000183C4(&qword_1002ADC18);
  v15 = swift_allocObject();
  *(v15 + 32) = v4;
  *(v15 + 40) = &protocol witness table for SelectableEventLoop;
  sub_1000479AC(v15);

  sub_1000A13B0();

  swift_beginAccess();
  *v8 = v15;

  return v4;
}

void sub_100043C7C(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {

    sub_10003436C();
  }
}

uint64_t SelectableEventLoop.deinit()
{
  sub_10003A72C();
  sub_10003A72C();
  sub_10003A72C();
  sub_10003A72C();
  sub_100047924();
  swift_beginAccess();
  if (*(v0 + 200))
  {
    sub_10003A72C();
  }

  *(v0 + 200) = vdupq_n_s64(0x7EADBEEFuLL);
  swift_endAccess();

  return v0;
}

uint64_t SelectableEventLoop.__deallocating_deinit()
{
  SelectableEventLoop.deinit();

  return swift_deallocClassInstance();
}

uint64_t SelectableEventLoop.scheduleTask<A>(deadline:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = EventLoop.makePromise<A>(of:file:line:)(a4, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/SelectableEventLoop.swift", 121, 2, 252, *v4, a4, &protocol witness table for SelectableEventLoop);
  sub_100047958();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = v10;
  v11[4] = a2;
  v11[5] = a3;
  sub_10004794C();
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = v10;
  type metadata accessor for ScheduledTask();
  swift_allocObject();
  v13 = ScheduledTask.init(_:_:_:)(sub_100044108, v11, sub_100044148, v12, a1);
  sub_10004794C();
  v14 = swift_allocObject();
  *(v14 + 16) = v5;
  *(v14 + 24) = v13;
  swift_retain_n();

  v15 = Scheduled.init(promise:cancellationTask:)(v10, sub_100046A8C, v14);
  SelectableEventLoop._schedule0(_:)(v13);

  return v15;
}

uint64_t sub_100043FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = __chkstk_darwin(a1, a2);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10(v7);
  EventLoopPromise.succeed(_:)(v9, a1, a4);
  return (*(v6 + 8))(v9, a4);
}

uint64_t sub_1000440CC()
{

  sub_100047958();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100044114()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

void sub_100044150(uint64_t a1, uint64_t a2)
{
  Lock.lock()();
  sub_100047924();
  swift_beginAccess();
  v4 = sub_1000E1DAC(a2, *(a1 + 40));
  if ((v5 & 1) == 0)
  {
    sub_1001D718C(v4);
  }

  swift_endAccess();
  Lock.unlock()();
}

void SelectableEventLoop._schedule0(_:)(uint64_t a1)
{
  if (sub_1000B3348())
  {
    if (*(v1 + 88) == 3)
    {
      __break(1u);
    }

    else
    {
      Lock.lock()();
      sub_100047924();
      swift_beginAccess();
      sub_100043430(a1, type metadata accessor for ScheduledTask, static ScheduledTask.< infix(_:_:), sub_100112884);
      swift_endAccess();
      Lock.unlock()();
    }
  }

  else
  {
    v3 = *(v1 + 80);

    if (sub_10015F0FC(v3, v1, a1))
    {
      sub_100046890();
    }
  }
}

uint64_t SelectableEventLoop.scheduleTask<A>(in:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = static NIODeadline.now()();
  v9 = static NIODeadline.+ infix(_:_:)(v8, a1);

  return SelectableEventLoop.scheduleTask<A>(deadline:_:)(v9, a2, a3, a4);
}

uint64_t SelectableEventLoop.execute(_:)(uint64_t a1, uint64_t a2)
{
  v4 = static NIODeadline.now()();
  type metadata accessor for ScheduledTask();
  swift_allocObject();
  v5 = ScheduledTask.init(_:_:_:)(a1, a2, debugOnly(_:), 0, v4);

  SelectableEventLoop._schedule0(_:)(v5);
}

uint64_t sub_100044424(char a1, uint64_t a2)
{
  result = (sub_100180E4C)();
  if (result)
  {
    if (a1)
    {
      return sub_100043100(sub_1000B5730);
    }

    else
    {
      if ((a1 & 0x10) != 0)
      {
        sub_100042F50(&qword_1002AE628);
      }

      if (a1 & 8) == 0 || (v5 = sub_100042D5C(), result = sub_100180E4C(v5), (result))
      {
        if ((a1 & 2) != 0)
        {
          swift_beginAccess();
          *(a2 + 248) = 1;
          return sub_1000B5730();
        }

        else if ((a1 & 4) != 0)
        {
          return sub_1000B5D74();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000444D8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  result = sub_100180E4C(a1);
  if (result)
  {
    if (v3)
    {
      return sub_100043100(sub_1000B5730);
    }

    else
    {
      if ((v3 & 0x10) != 0)
      {
        sub_100042F50(&qword_1002AE630);
      }

      if (v3 & 8) == 0 || (v5 = sub_100042CC8(sub_100178474, sub_100180ED8, sub_100180E50, sub_100180F28), result = sub_100180E4C(v5), (result))
      {
        if ((v3 & 2) != 0)
        {
          sub_100047914();
          swift_beginAccess();
          *(a2 + 248) = 1;
          return sub_1000B5730();
        }

        else if ((v3 & 4) != 0)
        {
          return sub_1000B5D74();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000445D4(uint64_t a1)
{
  v1 = a1;
  result = sub_100180E4C(a1);
  if (result)
  {
    if (v1)
    {
      return sub_100043018();
    }

    if ((v1 & 0x10) != 0)
    {
      v3 = sub_1000B698C();
    }

    else
    {
      if ((v1 & 8) == 0)
      {
LABEL_9:
        if ((v1 & 2) != 0)
        {
          return sub_1000B68B8();
        }

        if ((v1 & 4) != 0)
        {
          return sub_1000B5888();
        }

        return result;
      }

      v3 = sub_100042CC8(sub_10017848C, sub_100180ED8, sub_100180E50, sub_100180F28);
    }

    result = sub_100180E4C(v3);
    if ((result & 1) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_100044690(uint64_t result)
{
  if (result)
  {

    v1 = static NIODeadline.now()();
    v2 = sub_100138A18(v1);

    if (v2 <= 1)
    {
      return 1;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

void sub_1000446E0()
{
  v2 = v1;
  v3 = v0;
  if (sub_1000B3348())
  {
    v17 = 0;
    v4 = *(v0 + 72);
    Lock.lock()();
    sub_100047940();
    swift_beginAccess();
    v5 = sub_10008A304(*(v0 + 40));
    if (v5)
    {
      v17 = v5;
    }

    Lock.unlock()();
    while ((*(v3 + 88) & 0xFE) != 2)
    {
      v6 = objc_autoreleasePoolPush();

      v8 = sub_100044690(v7);
      v10 = v9;

      sub_1000461C8(v8, v10 & 1, sub_100046DFC, v3, sub_100046E04);
      if (v2)
      {
        objc_autoreleasePoolPop(v6);
        goto LABEL_23;
      }

      objc_autoreleasePoolPop(v6);
      sub_100047940();
      swift_beginAccess();
      while (1)
      {
        Lock.lock()();
        sub_100044F38(v3, &v17);
        v2 = 0;
        Lock.unlock()();
        v11 = *(v3 + 48);
        v12 = *(v11 + 16);
        if (!v12)
        {
          break;
        }

        v2 = v4;

        v13 = 0;
        v14 = v11 + 40;
        while (v12 != v13)
        {
          if (v13 >= *(v11 + 16))
          {
            __break(1u);
            goto LABEL_19;
          }

          ++v13;
          v15 = *(v14 - 8);

          v16 = objc_autoreleasePoolPush();
          v15();
          objc_autoreleasePoolPop(v16);

          v14 += 16;
        }

        sub_100047924();
        swift_beginAccess();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          sub_100046E20(0, *(*(v3 + 48) + 16));
        }

        else
        {
          *(v3 + 48) = sub_100017D10();
        }

        v4 = v2;
        swift_endAccess();
      }
    }

LABEL_19:
    sub_1000466D0();
    if (!v2)
    {
      sub_100047914();
      swift_beginAccess();
      *(v3 + 56) = 0;
    }

LABEL_23:

    sub_100044974(v3);
  }

  else
  {
    __break(1u);
    Lock.unlock()();
    __break(1u);
  }
}

void sub_100044974(uint64_t a1)
{
  v31 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 72);
  swift_beginAccess();
  swift_beginAccess();
  v3 = 0;
LABEL_2:
  v4 = v31;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v5 = v31[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1001F78D8();
      v4 = v31;
    }

    type metadata accessor for ScheduledTask();
    swift_arrayDestroy();
    if (v5)
    {
      sub_1000375D8(&v4[v5 + 4], v4[2] - v5, v4 + 4);
      v4[2] -= v5;
    }

    sub_1001F7898();
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
    if (v31[3] >= 2uLL)
    {
      sub_1000183C4(&unk_1002B3460);
      v6 = swift_allocObject();
      v7 = j__malloc_size(v6);
      v6[2] = 0;
      v6[3] = (2 * ((v7 - 32) / 8)) | 1;
    }

    v31 = v6;
  }

  Lock.lock()();
  *(a1 + 32) = 1;
  sub_1001F78C8();
  while (1)
  {
    swift_beginAccess();
    v8 = *(a1 + 40);
    v9 = *(v8 + 16);
    if (!v9)
    {
      break;
    }

    v10 = v8 + 32;
    v11 = *(v8 + 32);
    v12 = v9 - 1;
    if (v9 == 1 || (v13 = *(v10 + 8 * v12), v11 == v13))
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 40) = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_100112884(v8);
        *(a1 + 40) = v8;
      }

      v20 = *(v8 + 16);
      if (!v20)
      {
        __break(1u);
        goto LABEL_42;
      }

      *(v8 + 16) = v20 - 1;
      sub_1001F7898();
      goto LABEL_28;
    }

    type metadata accessor for ScheduledTask();
    if (!static ScheduledTask.< infix(_:_:)(v11, v13))
    {
      v21 = sub_1001DBFDC(v12, v8);

      sub_1001D6CB4(0, v21);

      sub_1001D6454();
LABEL_28:

      goto LABEL_29;
    }

    v14 = *(v10 + 8 * v12);

    v15 = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 40) = v8;
    if ((v15 & 1) == 0)
    {
      v8 = sub_100112884(v8);
      *(a1 + 40) = v8;
    }

    if (!*(v8 + 16))
    {
      goto LABEL_43;
    }

    *(v8 + 32) = v14;

    sub_1001F7898();
    v16 = *(a1 + 40);
    if (!*(v16 + 16))
    {
      goto LABEL_44;
    }

    v17 = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 40) = v16;
    if ((v17 & 1) == 0)
    {
      v16 = sub_100112884(v16);
      *(a1 + 40) = v16;
    }

    v18 = *(v16 + 16);
    if (!v18)
    {
      goto LABEL_45;
    }

    *(v16 + 16) = v18 - 1;
    sub_1001F7898();

    sub_1001D6AC8(0);
LABEL_29:
    swift_endAccess();

    sub_1001F7878();
    sub_1001F7908();
    sub_1001F7918();
    sub_1001F7898();
  }

  swift_endAccess();
  v22 = v2;
  Lock.unlock()();
  v23 = v31[2];
  if (v23)
  {
    v30 = v3;

    v24 = 0;
    while (v24 < v31[2])
    {
      v25 = v31[v24++ + 4];
      sub_10002D864();
      v26 = swift_allocError();
      *v27 = 2;
      v28 = *(v25 + 32);

      v28(v26);

      if (v23 == v24)
      {

        v29 = v31[2];
        if (v29)
        {
          v2 = v22;
          v3 = v30 + 1;
          if (v30 < 0x3E7)
          {
            goto LABEL_2;
          }
        }

        goto LABEL_39;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v29 = 0;
LABEL_39:
  if (!v29)
  {
    *(a1 + 88) = 3;

    return;
  }

LABEL_46:
  __break(1u);
}

void sub_100044DF4(uint64_t a1)
{
  Lock.lock()();
  swift_beginAccess();
  *(a1 + 32) = 1;
  Lock.unlock()();
}

uint64_t sub_100044E4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  switch(v2 >> 6)
  {
    case 1u:
    case 2u:

      sub_1000444D8(v3, v1);
      break;
    case 3u:
      if (v2)
      {
        v4 = 16;
      }

      else
      {
        v4 = 2;
      }

      if (v3)
      {
        v5 = v4 | (v3 & 0xFE);
      }

      else
      {
        v5 = *(a1 + 16);
      }

      Scheduled.futureResult.getter(*a1);
      sub_1000445D4(v5);
      break;
    default:

      sub_100044424(v3, v1);
      break;
  }

  return j__swift_release(v1, v2);
}

uint64_t sub_100044F38(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (*(*(a1 + 40) + 16))
  {
    v4 = static NIODeadline.now()();
    swift_beginAccess();
    while (*(*(a1 + 48) + 16) < *(*(a1 + 48) + 24) >> 1)
    {
      v5 = *(a1 + 40);
      if (!*(v5 + 16))
      {
        break;
      }

      v6 = *(v5 + 32);
      if (sub_100138A18(v4) > 0)
      {
        *a2 = v6;

        goto LABEL_13;
      }

      swift_beginAccess();

      sub_1001D732C(0);
      swift_endAccess();

      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      *(v9 + 24) = v8;
      swift_beginAccess();
      v10 = *(a1 + 48);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 48) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10003436C();
        v10 = *(a1 + 48);
      }

      v12 = *(v10 + 16);
      if (v12 >= *(v10 + 24) >> 1)
      {
        sub_10003436C();
        v10 = *(a1 + 48);
      }

      *(v10 + 16) = v12 + 1;
      v13 = v10 + 16 * v12;
      *(v13 + 32) = sub_100046F3C;
      *(v13 + 40) = v9;
      *(a1 + 48) = v10;
      swift_endAccess();
    }
  }

  else
  {
    *a2 = 0;
LABEL_13:
  }

  result = swift_beginAccess();
  if (!*(*(a1 + 48) + 16))
  {
    result = swift_beginAccess();
    *(a1 + 32) = 0;
  }

  return result;
}

void sub_100045190(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001F6738();
  sub_10001A278();
  v27 = v8;
  __chkstk_darwin();
  sub_100023510();
  v11 = v10 - v9;
  v12 = sub_1001F6768();
  sub_10001A278();
  v14 = v13;
  __chkstk_darwin();
  sub_100023510();
  v17 = v16 - v15;
  if (sub_1000B3348())
  {
    sub_100047958();
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = a1;
    v18[4] = a2;
    v18[5] = a3;
    sub_1000478D8(v18);
    sub_1000478FC(COERCE_DOUBLE(1107296256));
    v29 = v19;
    v30 = &unk_100280E20;
    v20 = _Block_copy(aBlock);

    a1;

    sub_1001F6758();
    sub_100028258();
    sub_1000183C4(&qword_1002AC880);
    sub_1000282B0();
    sub_100047980();
    sub_1001F7338();
    _Block_release(v20);
    (*(v27 + 8))(v11, v7);
    (*(v14 + 8))(v17, v12);
LABEL_5:

    sub_100037B00();
    return;
  }

  Lock.lock()();
  if (*(v3 + 89))
  {
    Lock.unlock()();

    sub_10004794C();
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    sub_1000478D8(v21);
    sub_1000478FC(COERCE_DOUBLE(1107296256));
    v29 = v22;
    v30 = &unk_100280DA8;
    v23 = _Block_copy(aBlock);

    sub_1001F6758();
    sub_100028258();
    sub_1000183C4(&qword_1002AC880);
    sub_1000282B0();
    sub_100047980();
    sub_1001F7338();
    _Block_release(v23);
    (*(v27 + 8))(v11, v7);
    (*(v14 + 8))(v17, v12);
    goto LABEL_5;
  }

  *(v3 + 89) = 1;
  Lock.unlock()();

  sub_100047958();
  v24 = swift_allocObject();
  v24[2] = v3;
  v24[3] = a1;
  v24[4] = a2;
  v24[5] = a3;

  v25 = a1;

  SelectableEventLoop.execute(_:)(sub_100046F74, v24);
  sub_100037B00();
}

uint64_t sub_100045550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  v24 = a3;
  v7 = sub_1001F6738();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1001F6768();
  v11 = *(v23 - 8);
  __chkstk_darwin();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 8);
  *(a2 + 88) = 2;
  SelectableEventLoop.execute(_:)(debugOnly(_:), 0);
  Lock.lock()();
  *(a2 + 89) = 2;
  Lock.unlock()();
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = v21;
  *(v16 + 24) = v17;
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;
  aBlock[4] = sub_1000477B4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172C0;
  aBlock[3] = &unk_100280E98;
  v18 = _Block_copy(aBlock);

  sub_1000477E8(v14, v15);
  sub_1001F6758();
  v25 = _swiftEmptyArrayStorage;
  sub_100028258();
  sub_1000183C4(&qword_1002AC880);
  sub_1000282B0();
  sub_1001F7708();
  sub_1001F7338();
  _Block_release(v18);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v23);
}

uint64_t sub_100045820(void (*a1)(uint64_t, uint64_t))
{
  sub_10002D864();
  v2 = swift_allocError();
  *v3 = 2;
  a1(v2, 1);
}

uint64_t sub_100045894(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 88) = 1;
  Lock.lock()();
  Lock.unlock()();
  sub_100046FEC(a1, *(a1 + 16));
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  v9 = a2;

  sub_10011DE78();
}

void sub_100045974(char a1)
{

  Lock.lock()();
  v3 = *(v1 + 89);
  if ((v3 - 3) >= 2)
  {
    if (v3 == 2)
    {
      *(v1 + 89) = 3;
      Lock.unlock()();

      if (a1)
      {
        pthread_join(*(*(v1 + 24) + 32), 0);
      }

      Lock.lock()();
      if (*(v1 + 89) == 3)
      {
        *(v1 + 89) = 4;
        Lock.unlock()();
        return;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    Lock.unlock()();
  }
}

void SelectableEventLoop.shutdownGracefully(queue:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001F6738();
  sub_10001A278();
  v9 = v8;
  __chkstk_darwin(v10, v11);
  sub_100023510();
  v14 = v13 - v12;
  v15 = sub_1001F6768();
  sub_10001A278();
  v17 = v16;
  __chkstk_darwin(v18, v19);
  sub_100023510();
  v22 = v21 - v20;
  if (*(v3 + 64) == 1)
  {
    v23 = swift_allocObject();
    v23[2] = v3;
    v23[3] = a2;
    v23[4] = a3;

    sub_100045190(a1, sub_100046B10, v23);
    sub_100037B00();
  }

  else
  {
    sub_10004794C();
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = a3;
    sub_1000478D8(v25);
    sub_1000478FC(COERCE_DOUBLE(1107296256));
    v29 = v26;
    v30 = &unk_100280B58;
    v27 = _Block_copy(aBlock);

    sub_1001F6758();
    sub_100028258();
    sub_1000183C4(&qword_1002AC880);
    sub_1000282B0();
    sub_1001F7708();
    sub_1001F7338();
    _Block_release(v27);
    (*(v9 + 8))(v14, v7);
    (*(v17 + 8))(v22, v15);

    sub_100037B00();
  }
}

uint64_t sub_100045CD8(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_100045974(0);
  if (a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  return a4(v7);
}

uint64_t sub_100045D34(void (*a1)(void))
{
  sub_10002D864();
  swift_allocError();
  *v2 = 0;
  a1();
}

uint64_t SelectableEventLoop.makeSucceededVoidFuture()()
{
  if (sub_1000B3348() && (sub_100047940(), swift_beginAccess(), (v1 = *(v0 + 56)) != 0))
  {
  }

  else
  {
    v1 = sub_100042980("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/SelectableEventLoop.swift", 121, 2, 624, &qword_1002ADC18, &unk_100200960, &protocol witness table for SelectableEventLoop);
    sub_1000A13F8();
  }

  return v1;
}

unint64_t SelectableEventLoop.description.getter()
{
  sub_1001F77B8(50);

  v1._countAndFlagsBits = sub_10004696C();
  sub_1001F6CA8(v1);

  v2._countAndFlagsBits = 0x646165726874202CLL;
  v2._object = 0xEB00000000203D20;
  sub_1001F6CA8(v2);
  v3._countAndFlagsBits = sub_1000B376C();
  sub_1001F6CA8(v3);

  v4._countAndFlagsBits = 32032;
  v4._object = 0xE200000000000000;
  sub_1001F6CA8(v4);
  return 0xD000000000000021;
}

uint64_t SelectableEventLoop.debugDescription.getter()
{

  Lock.lock()();
  sub_100045FA8(&v1);
  Lock.unlock()();

  return v1;
}

void sub_100045FA8(void *a1@<X8>)
{
  sub_1001F77B8(71);
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x8000000100224810;
  sub_1001F6CA8(v5);
  v6._countAndFlagsBits = sub_10004696C();
  sub_1001F6CA8(v6);

  v7._countAndFlagsBits = 0x646165726874202CLL;
  v7._object = 0xEB00000000203D20;
  sub_1001F6CA8(v7);
  v8._countAndFlagsBits = sub_1000B376C();
  sub_1001F6CA8(v8);

  v9._object = 0x8000000100224B80;
  v9._countAndFlagsBits = 0xD000000000000013;
  sub_1001F6CA8(v9);
  swift_beginAccess();

  v2 = sub_1000435BC();
  v4 = v3;

  v10._countAndFlagsBits = v2;
  v10._object = v4;
  sub_1001F6CA8(v10);

  v11._countAndFlagsBits = 32032;
  v11._object = 0xE200000000000000;
  sub_1001F6CA8(v11);
  *a1 = 0;
  a1[1] = 0xE000000000000000;
}

_OWORD *sub_100046154(_OWORD *result)
{
  if (*(v1 + 72) == result)
  {
    v2 = result;

    *(v1 + 72) = 2 * v2;
    if ((2 * v2 - 0x400000000000000) >> 59 == 31)
    {
      result = swift_slowAlloc();
      *result = 0u;
      result[1] = 0u;
      *(v1 + 64) = result;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

_OWORD *sub_1000461C8(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, void (*a5)(timespec *))
{
  v7 = v5;
  if (*(v5 + 16))
  {
    timeout.tv_sec = 0;
    timeout.tv_nsec = 0xE000000000000000;
    sub_1001F77B8(45);
    v47._countAndFlagsBits = 0xD00000000000002ALL;
    v47._object = 0x8000000100224A30;
    sub_1001F6CA8(v47);
    v46 = *(v5 + 16);
    sub_1001F7A28();
    v48._countAndFlagsBits = 46;
    v48._object = 0xE100000000000000;
    sub_1001F6CA8(v48);
    v8 = 0;
    v9 = 0xE000000000000000;
    LODWORD(v10) = 9;
LABEL_3:
    sub_1000274C4();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v9;
    *(v11 + 16) = v10;
    return swift_willThrow();
  }

  v15 = sub_100046A94(a1, a2 & 1);
  if (v17)
  {
    v18 = *(v5 + 72);
    if (v18 < 0xFFFFFFFF80000000)
    {
      goto LABEL_57;
    }

    if (v18 > 0x7FFFFFFF)
    {
      goto LABEL_59;
    }

    v19 = *(v5 + 56);
    v20 = *(v5 + 64);
    p_timeout = 0;
  }

  else
  {
    timeout.tv_sec = v15;
    timeout.tv_nsec = v16;
    v18 = *(v5 + 72);
    if (v18 < 0xFFFFFFFF80000000)
    {
      goto LABEL_58;
    }

    if (v18 > 0x7FFFFFFF)
    {
      goto LABEL_60;
    }

    v19 = *(v5 + 56);
    v20 = *(v5 + 64);
    p_timeout = &timeout;
  }

  result = sub_10019F158(v19, 0, 0, v20, v18, p_timeout);
  if (!v6)
  {
    v22 = result;
    a3();
    if (v22 < 0)
    {
      goto LABEL_61;
    }

    v23 = v22;
    v42 = v22;
    if (v22)
    {
      v41 = a5;
      swift_beginAccess();
      v24 = 0;
      do
      {
        if (!v23)
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v25 = *(v7 + 64) + v24;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = *(v25 + 10);
        v29 = *(v25 + 12);
        v30 = *(v25 + 24);
        if ((v28 & 0x4000) != 0)
        {
          v10 = *(v25 + 16);
          if (v10 >= 0xFFFFFFFF80000000)
          {
            if (v10 <= 0x7FFFFFFF)
            {
              timeout.tv_sec = 0;
              timeout.tv_nsec = 0xE000000000000000;
              sub_1001F77B8(37);

              timeout.tv_sec = v26;
              LOWORD(timeout.tv_nsec) = v27;
              WORD1(timeout.tv_nsec) = v28;
              HIDWORD(timeout.tv_nsec) = v29;
              v44 = v10;
              v45 = v30;
              type metadata accessor for kevent(0);
              v49._countAndFlagsBits = sub_1001F6BA8();
              sub_1001F6CA8(v49);

              v8 = 0xD000000000000023;
              v9 = 0x8000000100224A60;
              goto LABEL_3;
            }

LABEL_63:
            __break(1u);
          }

LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v27 == 65526)
        {
          goto LABEL_36;
        }

        if (v26 < 0)
        {
          goto LABEL_56;
        }

        v31 = *(v7 + 24);
        if (!*(v31 + 16))
        {
          goto LABEL_36;
        }

        v32 = sub_100111164(v26);
        if ((v33 & 1) == 0)
        {
          goto LABEL_36;
        }

        v34 = *(v31 + 56) + 16 * v32;
        if (*(v34 + 12) != v30)
        {
          goto LABEL_36;
        }

        v35 = *v34;
        v36 = *(v34 + 8);
        v37 = *(v34 + 9);
        switch(v27)
        {
          case 0xFFF1:
            if (v28 < 0 && (v37 & 2) != 0)
            {
              if (!v29)
              {
                LOBYTE(v39) = 2;
LABEL_35:
                timeout.tv_sec = v35;
                LOBYTE(timeout.tv_nsec) = v36;
                BYTE1(timeout.tv_nsec) = v37;
                HIDWORD(timeout.tv_nsec) = v30;
                LOBYTE(v44) = v39;
                v40 = v36;
                Scheduled.futureResult.getter(v35);
                Scheduled.futureResult.getter(v35);
                v41(&timeout);
                j__swift_release(v35, v40);
                j__swift_release(v35, v40);
                goto LABEL_36;
              }

              v38 = 3;
            }

            else
            {
              if (!v29)
              {
                goto LABEL_36;
              }

              v38 = 1;
            }

            break;
          case 0xFFFE:
            if (!v29)
            {
              if ((v37 & 8) == 0)
              {
                goto LABEL_36;
              }

              LOBYTE(v39) = v37 & 8;
              goto LABEL_35;
            }

            v38 = 9;
            break;
          case 0xFFFF:
            if (v28 < 0)
            {
              if ((v37 & 2) != 0)
              {
                if (!v29)
                {
                  LOBYTE(v39) = v37 & 6;
                  goto LABEL_35;
                }

                v38 = 7;
                break;
              }

              if (!v29)
              {
LABEL_42:
                if ((v37 & 4) == 0)
                {
                  goto LABEL_36;
                }

                LOBYTE(v39) = v37 & 4;
                goto LABEL_35;
              }
            }

            else if (!v29)
            {
              goto LABEL_42;
            }

            v38 = 5;
            break;
          default:
            timeout.tv_sec = 0;
            timeout.tv_nsec = 0xE000000000000000;
            Scheduled.futureResult.getter(v35);
            sub_1001F77B8(20);

            timeout.tv_sec = 0xD000000000000012;
            timeout.tv_nsec = 0x8000000100224A90;
            v50._countAndFlagsBits = sub_1001F7E28();
            sub_1001F6CA8(v50);

            result = sub_1001F7AC8();
            __break(1u);
            return result;
        }

        v39 = v38 & v37;
        if (v39)
        {
          goto LABEL_35;
        }

LABEL_36:
        v24 += 32;
        --v23;
      }

      while (v23);
    }

    return sub_100046154(v42);
  }

  return result;
}

void sub_1000466D0()
{
  if (*(v0 + 16))
  {
    sub_1001F77B8(32);
    v3._object = 0x80000001002249E0;
    v3._countAndFlagsBits = 0xD00000000000001DLL;
    sub_1001F6CA8(v3);
    sub_1001F7A28();
    v4._countAndFlagsBits = 46;
    v4._object = 0xE100000000000000;
    sub_1001F6CA8(v4);
    sub_1000274C4();
    swift_allocError();
    *v2 = 0;
    *(v2 + 8) = 0xE000000000000000;
    *(v2 + 16) = 9;
    swift_willThrow();
  }

  else
  {
    sub_100046818();
    if (!v1)
    {
      *(v0 + 16) = 2;
      swift_beginAccess();
      sub_1000183C4(&qword_1002AE620);
      sub_1001F69C8(0);
      swift_endAccess();
    }
  }
}

void sub_100046818()
{
  Lock.lock()();
  sub_10019DE1C(*(v0 + 56));
  if (v1)
  {
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *(v0 + 56) = -1;
    Lock.unlock()();
  }
}

void sub_100046890()
{
  Lock.lock()();
  if ((*(v0 + 56) & 0x80000000) != 0)
  {
    sub_10002D864();
    swift_allocError();
    *v1 = 2;
    swift_willThrow();
  }

  else
  {
    changelist.ident = 0;
    *&changelist.filter = 0x10000000000FFF6;
    changelist.data = 0;
    changelist.udata = 0;
    sub_10017BE7C(&changelist, 1);
  }

  Lock.unlock()();
}

unint64_t sub_10004696C()
{
  v1 = pthread_self();
  if (pthread_equal(v1, *(*(v0 + 40) + 32)))
  {
    sub_1001F77B8(28);

    v3._countAndFlagsBits = sub_1001F7E28();
    sub_1001F6CA8(v3);

    v4._countAndFlagsBits = 32032;
    v4._object = 0xE200000000000000;
    sub_1001F6CA8(v4);
    return 0xD000000000000018;
  }

  else
  {

    return sub_10015F474();
  }
}

uint64_t sub_100046A50()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100046A94(uint64_t result, char a2)
{
  if (a2)
  {
    return 0;
  }

  if (result < 1)
  {
    __break(1u);
  }

  else if (result / 0x3B9ACA00uLL >= 0x5F5E100)
  {
    return 100000000;
  }

  else
  {
    return result / 0x3B9ACA00uLL;
  }

  return result;
}

uint64_t sub_100046AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *storeEnumTagSinglePayload for SelectableEventLoop.ExternalState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100046C10);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SelectableEventLoop.InternalState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100046D14);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100046D50()
{
  result = qword_1002AE600;
  if (!qword_1002AE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE600);
  }

  return result;
}

unint64_t sub_100046DA8()
{
  result = qword_1002AE608;
  if (!qword_1002AE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE608);
  }

  return result;
}

uint64_t sub_100046E20(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result - a2;
  if (__OFSUB__(0, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (__OFADD__(v5, v8))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v5 - v7 > *(v4 + 24) >> 1)
  {
    sub_10003436C();
    v4 = *v2;
  }

  v10 = (v4 + 32 + 16 * v6);
  sub_1000183C4(&qword_1002ADBE0);
  result = swift_arrayDestroy();
  if (!v7)
  {
    goto LABEL_13;
  }

  v11 = *(v4 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = sub_100033C80((v4 + 32 + 16 * a2), v11 - a2, v10);
  v12 = *(v4 + 16);
  v13 = __OFADD__(v12, v8);
  v14 = v12 - v7;
  if (!v13)
  {
    *(v4 + 16) = v14;
LABEL_13:
    *v2 = v4;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100046FEC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1001F77B8(39);
    v52._object = 0x8000000100224BC0;
    v52._countAndFlagsBits = 0xD000000000000024;
    sub_1001F6CA8(v52);
    sub_1001F7A28();
    v53._countAndFlagsBits = 46;
    v53._object = 0xE100000000000000;
    sub_1001F6CA8(v53);
    sub_1000274C4();
    v4 = swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 0xE000000000000000;
    *(v5 + 16) = 9;
    sub_1000183C4(&qword_1002ADC18);
    v6 = swift_allocObject();
    *(v6 + 32) = a1;
    *(v6 + 40) = &protocol witness table for SelectableEventLoop;
    *(v6 + 16) = v4;
    *(v6 + 24) = 1;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
    *(v6 + 48) = 0;

    return v6;
  }

  swift_beginAccess();
  v7 = *(a2 + 24);
  v8 = *(v7 + 16);
  v46 = a1;
  if (!v8)
  {
    goto LABEL_21;
  }

  sub_1001F78C8();
  v10 = sub_100046FAC();
  v12 = v11;
  v13 = 0;
  v14 = v7 + 64;
  v47 = v11;
  v48 = v8;
  do
  {
    if (v10 < 0 || v10 >= 1 << *(v7 + 32))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v15 = v10 >> 6;
    if ((*(v14 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_38;
    }

    if (*(v7 + 36) != v12)
    {
      goto LABEL_39;
    }

    v50 = v9;
    v16 = *(v7 + 56) + 16 * v10;
    v17 = *v16;
    v18 = *(v16 + 8);
    swift_getObjectType();
    v19 = static NIOHTTPObjectAggregatorError.endingIgnoredMessage.getter();
    sub_100180E50(v19);

    ChannelPipeline.close(mode:promise:)();

    j__swift_release(v17, v18);
    sub_1001F7878();
    sub_1001F7908();
    sub_1001F7918();
    sub_1001F7898();
    v20 = 1 << *(v7 + 32);
    if (v10 >= v20)
    {
      goto LABEL_40;
    }

    v14 = v7 + 64;
    v21 = *(v7 + 64 + 8 * v15);
    if ((v21 & (1 << v10)) == 0)
    {
      goto LABEL_41;
    }

    if (*(v7 + 36) != v12)
    {
      goto LABEL_42;
    }

    v22 = v21 & (-2 << (v10 & 0x3F));
    if (v22)
    {
      v20 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v23 = v48;
    }

    else
    {
      v24 = v15 << 6;
      v25 = v15 + 1;
      v26 = (v7 + 72 + 8 * v15);
      v23 = v48;
      while (v25 < (v20 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          sub_100047890(v10, v12, v50 & 1);
          v20 = __clz(__rbit64(v27)) + v24;
          goto LABEL_19;
        }
      }

      sub_100047890(v10, v12, v50 & 1);
    }

LABEL_19:
    v9 = 0;
    ++v13;
    v10 = v20;
    v12 = v47;
  }

  while (v13 != v23);

  a1 = v46;
LABEL_21:
  v29 = sub_10001A07C(_swiftEmptyArrayStorage);
  if (!v29)
  {

    goto LABEL_33;
  }

  v30 = v29;
  sub_1001F78C8();
  if (v30 < 0)
  {
LABEL_43:
    __break(1u);
    JUMPOUT(0x100047710);
  }

  v31 = 0;
  v51 = v30;
  do
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v32 = sub_1001F7808();
    }

    else
    {
      v32 = _swiftEmptyArrayStorage[v31 + 4];
    }

    v33 = *(v32 + 32);
    v34 = *(v32 + 40);
    sub_1000183C4(&qword_1002ADC18);
    v35 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v37 = sub_10012DA48(v33, 0, 255, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/SelectorGeneric.swift", 117, 2, 366, v35, ObjectType, v34);
    v38 = swift_allocObject();
    v38[2] = v32;
    v38[3] = v37;
    v38[4] = sub_1000732B8;
    v38[5] = 0;
    v39 = *(v32 + 40);
    v40 = swift_getObjectType();
    v41 = *(v39 + 16);
    swift_retain_n();
    swift_retain_n();
    swift_unknownObjectRetain();
    if (v41(v40, v39))
    {

      v43 = sub_10011AD1C(v42, v32, v37);
      CallbackList._run()();
      sub_100037408(v43);
    }

    else
    {
      v44 = swift_allocObject();
      v44[2] = v32;
      v44[3] = sub_100047838;
      v44[4] = v38;
      v49 = *(v39 + 24);

      v49(sub_100047884, v44, v40, v39);
    }

    ++v31;
    sub_1001F7878();
    sub_1001F7908();
    sub_1001F7918();
    sub_1001F7898();
  }

  while (v51 != v31);

  a1 = v46;
LABEL_33:
  if (sub_10001A07C(_swiftEmptyArrayStorage) < 1)
  {

    return SelectableEventLoop.makeSucceededVoidFuture()();
  }

  else
  {
    sub_1000183C4(&qword_1002ADC18);
    v6 = swift_allocObject();
    *(v6 + 32) = a1;
    *(v6 + 40) = &protocol witness table for SelectableEventLoop;
    *(v6 + 16) = 0;
    *(v6 + 24) = -1;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
    *(v6 + 48) = 0;

    sub_100110F70(_swiftEmptyArrayStorage, v6);
  }

  return v6;
}

uint64_t sub_100047720()
{

  sub_100047958();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100047770()
{

  sub_1000374AC(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000477E8(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1000477F4()
{

  sub_100047958();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100047844()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100047890(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000478D8(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100047980()
{

  return sub_1001F7708();
}

uint64_t sub_1000479AC(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = -1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_1000479C4(char a1)
{
  if (a1)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_100047A00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a4;
  v6 = sub_1000183C4(&qword_1002AE748);
  sub_10001A278();
  v8 = v7;
  sub_10001E844();
  __chkstk_darwin(v9, v10);
  v12 = v14 - v11;
  sub_10001AE68(a1, a1[3]);
  sub_10004906C();
  sub_1001F8198();
  sub_100049700();
  sub_1001F7D88();
  if (!v4)
  {
    v14[1] = v14[0];
    v15 = 1;
    sub_1000183C4(&qword_1002ACA10);
    sub_10001DE1C(&qword_1002ACB30);
    sub_1001F7DC8();
  }

  return (*(v8 + 8))(v12, v6);
}

uint64_t sub_100047BA8(uint64_t a1)
{
  sub_1000183C4(&qword_1002AE738);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v4, v5);
  sub_100049718();
  sub_10004906C();
  sub_10004973C();
  if (!v1)
  {
    sub_1000496F0();
    v2 = sub_1001F7C78();
    sub_1000183C4(&qword_1002ACA10);
    sub_10001DE1C(&qword_1002ACB50);
    sub_1001F7CB8();
    v7 = sub_10001E72C();
    v8(v7);
  }

  sub_100019CCC(a1);
  return v2;
}

uint64_t sub_100047D7C(uint64_t a1, void *a2, Swift::OpaquePointer a3)
{
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  v5 = sub_1001F7BD8(a3, v8);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100047DCC(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_100047E04(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v15 = a4;
  v6 = sub_1000183C4(&qword_1002AE760);
  sub_10001A278();
  v8 = v7;
  sub_10001E844();
  __chkstk_darwin(v9, v10);
  v12 = &v14 - v11;
  sub_10001AE68(a1, a1[3]);
  sub_1000490C0();
  sub_1001F8198();
  sub_100049700();
  sub_1001F7D88();
  if (!v4)
  {
    v16 = 1;
    sub_1001F7D98();
  }

  return (*(v8 + 8))(v12, v6);
}

uint64_t sub_100047F5C(uint64_t a1)
{
  sub_1000183C4(&qword_1002AE750);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v4, v5);
  sub_100049718();
  sub_1000490C0();
  sub_10004973C();
  if (!v1)
  {
    sub_1000496F0();
    v2 = sub_1001F7C78();
    sub_1000496F0();
    sub_1001F7C88();
    v7 = sub_10001E72C();
    v8(v7);
  }

  sub_100019CCC(a1);
  return v2;
}

uint64_t sub_1000480D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100224CB0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1001F7EA8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_100048174(void *a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002AE710);
  sub_10001A278();
  v6 = v5;
  sub_10001E844();
  __chkstk_darwin(v7, v8);
  v10 = v12 - v9;
  sub_10001AE68(a1, a1[3]);
  sub_100048FC4();
  sub_1001F8198();
  v12[1] = a2;
  sub_1000183C4(&qword_1002AE720);
  sub_100049114(&qword_1002AE728, sub_100049018);
  sub_1001F7DC8();
  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_1000482F0(uint64_t a1)
{
  v4 = sub_1000183C4(&qword_1002AE768);
  sub_10001A278();
  v6 = v5;
  sub_10001E844();
  __chkstk_darwin(v7, v8);
  v10 = v12 - v9;
  sub_100049718();
  sub_100048FC4();
  sub_1001F8178();
  if (v2)
  {
    sub_100019CCC(a1);
  }

  else
  {
    sub_1000183C4(&qword_1002AE720);
    sub_100049114(&qword_1002AE770, sub_10004918C);
    sub_1001F7CB8();
    (*(v6 + 8))(v10, v4);
    v1 = v12[1];
    sub_100019CCC(a1);
  }

  return v1;
}

uint64_t sub_1000484A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_10027A4E8;
  result = sub_100047D7C(*a1, *(a1 + 8), v3);
  *a2 = result;
  return result;
}

uint64_t sub_1000484E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000479C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100048514@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4._rawValue = &off_10027A4E8;
  result = sub_100047D7C(a1, a2, v4);
  *a3 = result;
  return result;
}

uint64_t sub_100048544(uint64_t a1)
{
  v2 = sub_10004906C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100048580(uint64_t a1)
{
  v2 = sub_10004906C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000485BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100047BA8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100048630@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_10027A538;
  result = sub_100047D7C(*a1, *(a1 + 8), v3);
  *a2 = result;
  return result;
}

unint64_t sub_100048668@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100047DCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10004869C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4._rawValue = &off_10027A538;
  result = sub_100047D7C(a1, a2, v4);
  *a3 = result;
  return result;
}

uint64_t sub_1000486CC(uint64_t a1)
{
  v2 = sub_1000490C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100048708(uint64_t a1)
{
  v2 = sub_1000490C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100048744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100047F5C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_10004879C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000480D8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000487C8(uint64_t a1)
{
  v2 = sub_100048FC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100048804(uint64_t a1)
{
  v2 = sub_100048FC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100048840@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000482F0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_100048888(uint64_t a1@<X8>)
{
  v3 = sub_1001F0720();
  *&v57 = v5;
  if (!v4)
  {
    type metadata accessor for HTTPResponseHead._Storage();
    v46 = swift_allocObject();
    v45 = 0;
    v47 = 0uLL;
    v49 = 21;
    v48 = 0uLL;
LABEL_33:
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    *(v46 + 32) = v49;
    *(v46 + 40) = 65537;
    *a1 = v46;
    *(a1 + 8) = _swiftEmptyArrayStorage;
    *(a1 + 16) = 2;
    *(a1 + 24) = v47;
    *(a1 + 40) = v48;
    *(a1 + 56) = v45;
    *(a1 + 62) = BYTE6(v45);
    *(a1 + 60) = WORD2(v45);
    return;
  }

  v6 = v3;
  v7 = v4;
  v8 = *(v1 + 72);
  v55 = v1;
  sub_10001AE68((v1 + 48), v8);
  v54 = v6;
  v56 = v7;
  v9 = sub_1000795A8();
  v10 = *(v9 + 56);
  isUniquelyReferenced_nonNull_native = sub_10001A07C(v10);
  v13 = _swiftEmptyArrayStorage;
  v52 = v9;
  v53 = a1;
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_12:
    v23 = 0;
    v24 = v13[2];
    v25 = v13 + 5;
    *&v58 = _swiftEmptyArrayStorage;
    v51 = v13 + 5;
LABEL_13:
    v26 = &v25[2 * v23];
    while (v24 != v23)
    {
      if (v23 >= v13[2])
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v28 = *(v26 - 1);
      v27 = *v26;
      *&v60[0] = v28;
      *(&v60[0] + 1) = v27;
      __chkstk_darwin(isUniquelyReferenced_nonNull_native, v12);
      v50[2] = v60;

      if (sub_1000E0B14(sub_100048E80, v50, v57))
      {
        v29 = v58;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1000375CC(0, *(v29 + 16) + 1, 1);
          v29 = v59;
        }

        v31 = *(v29 + 16);
        v30 = *(v29 + 24);
        if (v31 >= v30 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1000375CC(v30 > 1, v31 + 1, 1);
          v29 = v59;
        }

        ++v23;
        *(v29 + 16) = v31 + 1;
        *&v58 = v29;
        v32 = v29 + 16 * v31;
        *(v32 + 32) = v28;
        *(v32 + 40) = v27;
        v25 = v51;
        goto LABEL_13;
      }

      v26 += 2;
      ++v23;
    }

    v33 = 0;
    v34 = v58;
    v35 = *(v58 + 16);
    v36 = (v58 + 40);
    v37 = _swiftEmptyArrayStorage;
    while (v35 != v33)
    {
      if (v33 >= *(v34 + 16))
      {
        goto LABEL_35;
      }

      v39 = *(v36 - 1);
      v38 = *v36;

      v40 = sub_100048CE4(v39, v38, v54, v56);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100032F04();
        v37 = v43;
      }

      v41 = v37[2];
      if (v41 >= v37[3] >> 1)
      {
        sub_100032F04();
        v37 = v44;
      }

      v37[2] = v41 + 1;
      v42 = &v37[3 * v41];
      v42[4] = v39;
      v42[5] = v38;
      *(v42 + 48) = v40 & 1;
      v36 += 2;
      ++v33;
      v34 = v58;
    }

    sub_1001F19D8(v37);
    v57 = v60[1];
    v58 = v60[0];
    v45 = v61 | ((v62 | (v63 << 16)) << 32);

    type metadata accessor for HTTPResponseHead._Storage();
    v46 = swift_allocObject();
    v48 = v57;
    v47 = v58;
    v49 = 3;
    a1 = v53;
    goto LABEL_33;
  }

  v14 = isUniquelyReferenced_nonNull_native;
  *&v60[0] = _swiftEmptyArrayStorage;
  v15 = isUniquelyReferenced_nonNull_native & ~(isUniquelyReferenced_nonNull_native >> 63);

  sub_1000375CC(0, v15, 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v13 = *&v60[0];
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v17 = sub_1001F7808();
      }

      else
      {
        v17 = *(v10 + 8 * v16 + 32);
      }

      v19 = *(v17 + 16);
      v18 = *(v17 + 24);

      *&v60[0] = v13;
      v21 = v13[2];
      v20 = v13[3];
      if (v21 >= v20 >> 1)
      {
        sub_1000375CC(v20 > 1, v21 + 1, 1);
        v13 = *&v60[0];
      }

      ++v16;
      v13[2] = v21 + 1;
      v22 = &v13[2 * v21];
      v22[4] = v19;
      v22[5] = v18;
    }

    while (v14 != v16);

    goto LABEL_12;
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_100048CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v14[1] = a4;
  v6 = sub_1001F6508();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AE68((v4 + 88), *(v4 + 112));
  sub_1001B5F98();
  v11 = sub_10008B260();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {

    v12 = 0;
  }

  else
  {
    sub_10001AE68((v5 + 88), *(v5 + 112));
    v12 = sub_10008D2D0() ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_100048EA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100048EE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100048F2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100048F6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100048FC4()
{
  result = qword_1002AE718;
  if (!qword_1002AE718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE718);
  }

  return result;
}

unint64_t sub_100049018()
{
  result = qword_1002AE730;
  if (!qword_1002AE730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE730);
  }

  return result;
}

unint64_t sub_10004906C()
{
  result = qword_1002AE740;
  if (!qword_1002AE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE740);
  }

  return result;
}

unint64_t sub_1000490C0()
{
  result = qword_1002AE758;
  if (!qword_1002AE758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE758);
  }

  return result;
}

uint64_t sub_100049114(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002AE720);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004918C()
{
  result = qword_1002AE778;
  if (!qword_1002AE778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE778);
  }

  return result;
}

_BYTE *sub_1000491F4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000492C0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OfferEligibilityResponse.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100049394);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000493D0()
{
  result = qword_1002AE780;
  if (!qword_1002AE780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE780);
  }

  return result;
}

unint64_t sub_100049428()
{
  result = qword_1002AE788;
  if (!qword_1002AE788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE788);
  }

  return result;
}

unint64_t sub_100049480()
{
  result = qword_1002AE790;
  if (!qword_1002AE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE790);
  }

  return result;
}

unint64_t sub_1000494D8()
{
  result = qword_1002AE798;
  if (!qword_1002AE798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE798);
  }

  return result;
}

unint64_t sub_100049530()
{
  result = qword_1002AE7A0;
  if (!qword_1002AE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE7A0);
  }

  return result;
}

unint64_t sub_100049588()
{
  result = qword_1002AE7A8;
  if (!qword_1002AE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE7A8);
  }

  return result;
}

unint64_t sub_1000495E0()
{
  result = qword_1002AE7B0;
  if (!qword_1002AE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE7B0);
  }

  return result;
}

unint64_t sub_100049638()
{
  result = qword_1002AE7B8;
  if (!qword_1002AE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE7B8);
  }

  return result;
}

unint64_t sub_100049690()
{
  result = qword_1002AE7C0;
  if (!qword_1002AE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE7C0);
  }

  return result;
}

uint64_t sub_10004973C()
{

  return sub_1001F8178();
}

void ChannelOutboundInvoker.write(_:file:line:)()
{
  sub_100037AEC();
  sub_100049C1C(v1, v2, v3, v4, v5, v6, v7);
  sub_100049C64();
  v8 = *(v0 + 32);

  v9 = sub_100049C50();
  v8(v9);

  sub_100037A50();
}

void ChannelOutboundInvoker.close(mode:file:line:)()
{
  sub_100037AEC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_100049A08(v8, v9, v10, v11, v4, v2);
  sub_100049C64();
  v12 = *(v1 + 64);

  v12(v7, v0, v5, v3);

  sub_100037A50();
}

uint64_t ChannelOutboundInvoker.register(file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_100049A08(a1, a2, a3, a4, a5, a6);
  v9 = *(a6 + 8);

  v9(v10, a5, a6);

  return v8;
}

void ChannelOutboundInvoker.bind(to:file:line:)()
{
  sub_100037AEC();
  sub_100049C1C(v1, v2, v3, v4, v5, v6, v7);
  sub_100049C64();
  v8 = *(v0 + 16);

  v9 = sub_100049C50();
  v8(v9);

  sub_100037A50();
}

void ChannelOutboundInvoker.connect(to:file:line:)()
{
  sub_100037AEC();
  sub_100049C1C(v1, v2, v3, v4, v5, v6, v7);
  sub_100049C64();
  v8 = *(v0 + 24);

  v9 = sub_100049C50();
  v8(v9);

  sub_100037A50();
}

void ChannelOutboundInvoker.writeAndFlush(_:file:line:)()
{
  sub_100037AEC();
  sub_100049C1C(v1, v2, v3, v4, v5, v6, v7);
  sub_100049C64();
  v8 = *(v0 + 48);

  v9 = sub_100049C50();
  v8(v9);

  sub_100037A50();
}

void ChannelOutboundInvoker.triggerUserOutboundEvent(_:file:line:)()
{
  sub_100037AEC();
  sub_100049C1C(v1, v2, v3, v4, v5, v6, v7);
  sub_100049C64();
  v8 = *(v0 + 72);

  v9 = sub_100049C50();
  v8(v9);

  sub_100037A50();
}

uint64_t sub_100049A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 80))(a5, a6);
  v11 = v10;
  ObjectType = swift_getObjectType();
  EmbeddedChannel.WrongTypeError.actual.getter(ObjectType, &type metadata for () + 8);
  v13 = EventLoop.makePromise<A>(of:file:line:)(&type metadata for () + 8, a1, a2, a3, a4, ObjectType, &type metadata for () + 8, v11);
  swift_unknownObjectRelease();
  return v13;
}

unint64_t sub_100049AC4()
{
  result = qword_1002AE7C8;
  if (!qword_1002AE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE7C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloseMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100049BE4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100049C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_100049A08(a2, a3, a4, a5, a6, a7);
}

uint64_t static IOData.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      return static ByteBuffer.== infix(_:_:)(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);
    }

    return 0;
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  return static FileRegion.== infix(_:_:)(a1 & 0x7FFFFFFFFFFFFFFFLL, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4 & 0x7FFFFFFFFFFFFFFFLL, a5, a6 & 0xFFFFFFFFFFFFFFLL);
}

uint64_t IOData.readableBytes.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      return a2 - (a3 & 0xFFFFFFFFFFFFFFLL);
    }

    goto LABEL_7;
  }

  result = (HIDWORD(a2) - a2);
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall IOData.moveReaderIndex(forwardBy:)(Swift::Int forwardBy)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 4) | ((*(v1 + 10) | (*(v1 + 22) << 16)) << 32);
  if ((*v1 & 0x8000000000000000) == 0)
  {
    v6 = __CFADD__(v3, forwardBy);
    v7 = (v3 + forwardBy);
    if (v6)
    {
      __break(1u);
    }

    else if (v7 <= HIDWORD(v3))
    {
      v3 = v3 & 0xFFFFFFFF00000000 | v7;
LABEL_8:
      v1[1] = v3;
      *(v1 + 4) = v5;
      *(v1 + 22) = BYTE6(v5);
      *(v1 + 10) = WORD2(v5);
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v5 & 0xFFFFFFFFFFFFFFLL, forwardBy);
  v9 = (v5 & 0xFFFFFFFFFFFFFFLL) + forwardBy;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v5 = static IntegerBitPacking.unpackUInt32UInt16UInt8(_:)(v9);
    *v1 = v4;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t IOData.description.getter(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    FileRegion.description.getter(a1 & 0x7FFFFFFFFFFFFFFFLL, a2);
  }

  else
  {
    ByteBuffer.description.getter();
  }

  sub_1001F6CA8(v2);

  v4._countAndFlagsBits = 32032;
  v4._object = 0xE200000000000000;
  sub_1001F6CA8(v4);
  return 0x7B20617461444F49;
}

__n128 sub_100049E50(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_100049E64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 23))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_100049EB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 22) = 0;
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 23) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 23) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 22) = 0;
      *(result + 20) = 0;
      *(result + 16) = 0;
    }
  }

  return result;
}

__n128 sub_100049F54@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = v2;
    v28 = *(a1 + 56);
    v6 = *(a1 + 80);
    v7 = *(a1 + 87);
    v29 = v4;
    v30[0] = v6;
    *(v30 + 7) = v7;
    v8 = sub_1000B74F4();
    v10 = v9;
    sub_1001F6158();
    swift_allocObject();
    sub_1001F6148();
    sub_100040B50();
    sub_1001F6138();

    memcpy(__dst, __src, 0x50uLL);
    v11 = sub_10001AE68((v5 + 88), *(v5 + 112));
    v12 = *v11;
    v13 = *(*(*v11 + 128) + 16);

    os_unfair_lock_lock(v13);
    *(v12 + 112) = 0;
    os_unfair_lock_unlock(v13);

    sub_10001AE68((v5 + 88), *(v5 + 112));
    v14 = sub_10008D8C8(__dst[0], __dst[1]);
    v15 = sub_10001A07C(v14);

    sub_100040BA4(__dst);
    type metadata accessor for InAppCheckDownloadQueueCountResponse();
    sub_1000E693C(v15);

    sub_1001C6708(v16);
    v21 = __src[5];
    v22 = __src[6];
    v17 = v25 | ((v26 | (v27 << 16)) << 32);
    sub_10003A380(v8, v10);

    type metadata accessor for HTTPResponseHead._Storage();
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    v19 = 3;
  }

  else
  {
    sub_1000B738C(0x2064696C61766E49, 0xEF74736575716572, 6, __src);
    v21 = __src[0];
    v22 = __src[1];
    v17 = LODWORD(__src[2]) | ((WORD2(__src[2]) | (BYTE6(__src[2]) << 16)) << 32);
    type metadata accessor for HTTPResponseHead._Storage();
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    v19 = 21;
  }

  *(v18 + 32) = v19;
  *(v18 + 40) = 65537;
  *a2 = v18;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = 2;
  result = v22;
  *(a2 + 24) = v21;
  *(a2 + 40) = v22;
  *(a2 + 56) = v17;
  *(a2 + 62) = BYTE6(v17);
  *(a2 + 60) = WORD2(v17);
  return result;
}

uint64_t sub_10004A200()
{
  sub_1000183C4(&qword_1002AE9C8);
  v0 = swift_allocObject();
  sub_1000183C4(&qword_1002AE9D0);
  swift_allocObject();
  result = sub_10004B094(j_j__swift_release);
  *(v0 + 16) = result;
  qword_1002E6058 = v0;
  return result;
}

uint64_t sub_10004A284(uint64_t a1, uint64_t a2, int a3, int a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_1000183C4(&qword_1002AE9D8);
  EmbeddedChannel.WrongTypeError.actual.getter(ObjectType, v9);
  v10 = sub_10004B308();
  *(v4 + 16) = EventLoop.makePromise<A>(of:file:line:)(v10, v11, v12, v13, 45, ObjectType, v9, a2);
  EmbeddedChannel.WrongTypeError.actual.getter(ObjectType, v9);
  v14 = sub_10004B308();
  v18 = EventLoop.makePromise<A>(of:file:line:)(v14, v15, v16, v17, 46, ObjectType, v9, a2);
  swift_unknownObjectRelease();
  *(v4 + 24) = v18;
  *(v4 + 32) = a3;
  *(v4 + 36) = a4;
  return v4;
}

uint64_t sub_10004A368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001F6738();
  sub_10001A278();
  v26 = v8;
  __chkstk_darwin(v9, v10);
  sub_100023510();
  v13 = v12 - v11;
  v25 = sub_1001F6768();
  sub_10001A278();
  v15 = v14;
  __chkstk_darwin(v16, v17);
  sub_100023510();
  v20 = v19 - v18;
  v21 = sub_10004A628();
  v22 = swift_allocObject();
  v22[2] = v3;
  v22[3] = a1;
  v22[4] = a2;
  v22[5] = a3;
  aBlock[4] = sub_10004B200;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172C0;
  aBlock[3] = &unk_100281350;
  v23 = _Block_copy(aBlock);

  sub_1001F6758();
  sub_10004B244(&qword_1002BA610, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000183C4(&qword_1002AC880);
  sub_10004B28C(&qword_1002BA620, &qword_1002AC880);
  sub_1001F7708();
  sub_1001F7338();
  _Block_release(v23);

  (*(v26 + 8))(v13, v7);
  (*(v15 + 8))(v20, v25);
}

id sub_10004A628()
{
  v0 = sub_1001F6748();
  sub_10001A278();
  v2 = v1;
  __chkstk_darwin(v3, v4);
  sub_100023510();
  v7 = v6 - v5;
  v8 = sub_1001F7308();
  sub_10001A278();
  v24 = v9;
  __chkstk_darwin(v10, v11);
  sub_100023510();
  v14 = v13 - v12;
  v15 = sub_1001F72E8();
  __chkstk_darwin(v15, v16);
  sub_100023510();
  v17 = sub_1001F6768();
  __chkstk_darwin(v17 - 8, v18);
  sub_100023510();
  if (qword_1002AC408 != -1)
  {
    swift_once();
  }

  v19 = sub_100138A34();
  if (v19)
  {
    return v19;
  }

  type metadata accessor for MultiThreadedEventLoopGroup();
  if (!static MultiThreadedEventLoopGroup.currentEventLoop.getter())
  {
    sub_10004B17C();
    (*(v2 + 104))(v7, enum case for DispatchQoS.QoSClass.default(_:), v0);
    v20 = sub_1001F7358();
    (*(v2 + 8))(v7, v0);
    return v20;
  }

  swift_unknownObjectRelease();
  sub_10004B17C();
  sub_1001F6758();
  sub_10004B244(&qword_1002AE9B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000183C4(&unk_1002BA640);
  sub_10004B28C(&qword_1002AE9B8, &unk_1002BA640);
  sub_1001F7708();
  (*(v24 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  v22 = sub_1001F7348();
  v23 = v22;
  sub_10004A990(v22);
  return v23;
}

void sub_10004A990(void *a1)
{
  if (pthread_getspecific(*(*(v1 + 16) + 16)))
  {
  }

  if (a1)
  {
    sub_1000183C4(&qword_1002AE9C0);
    v3 = swift_allocObject();
    v3[2] = v1;
    v3[3] = a1;
  }

  else
  {
    v3 = 0;
  }

  v4 = a1;
  sub_10004B100(v3);
}

uint64_t sub_10004AA38(uint64_t a1)
{
  if (pthread_getspecific(*(*(v1 + 16) + 16)))
  {
  }

  if (a1)
  {
    sub_1000183C4(&qword_1002AE9E0);
    v3 = swift_allocObject();
    v3[2] = v1;
    v3[3] = a1;
  }

  else
  {
    v3 = 0;
  }

  sub_10004B100(v3);
}

void sub_10004AAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  memset(&v14, 0, sizeof(v14));
  *&v14.ai_socktype = *(v3 + 32);
  sub_1001F7E28();
  v7 = sub_1001F6BD8();
  v8 = sub_1001F6BD8();

  v9 = getaddrinfo((v7 + 32), (v8 + 32), &v14, &v15);

  if (v9)
  {
    sub_10004B128();
    swift_allocError();
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 16) = a3;
    *(v10 + 24) = 0;

    sub_10004AEFC();
LABEL_3:

    return;
  }

  v11 = v15;
  if (!v15)
  {
    sub_10004B128();
    v12 = swift_allocError();
    sub_10004B2E0(v12, v13);
    sub_10004AEFC();
    goto LABEL_3;
  }

  sub_10004AC84(v15, a1, a2);
  freeaddrinfo(v11);
}

void sub_10004AC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _swiftEmptyArrayStorage;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = *(a1 + 4);
    if (v8 == 30)
    {
      v15 = *(a1 + 32);
      if (!v15)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return;
      }

      v16 = *v15;
      v17 = v15[1];
      v18 = *(v15 + 2);
      v26 = *(v15 + 1);
      v19 = v15[6];
      sub_1000183C4(&qword_1002AE9A0);
      v20 = swift_allocObject();
      *(v20 + 16) = v16;
      *(v20 + 20) = v17;
      *(v20 + 24) = v26;
      *(v20 + 32) = v18;
      *(v20 + 40) = v19;
      *(v20 + 48) = a2;
      *(v20 + 56) = a3;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10003243C();
        v7 = v22;
      }

      v10 = v20 | 0x4000000000000000;
      v12 = v7[2];
      v21 = v7[3];
      v13 = v12 + 1;
      if (v12 >= v21 >> 1)
      {
        sub_10004B2F4(v21);
        sub_10003243C();
        v7 = v14;
      }

      else
      {
        v14 = v7;
      }

      goto LABEL_14;
    }

    if (v8 != 2)
    {
      break;
    }

    v9 = *(a1 + 32);
    if (!v9)
    {
      goto LABEL_23;
    }

    sub_1000183C4(&qword_1002AE9A8);
    v10 = swift_allocObject();
    *(v10 + 16) = *v9;
    *(v10 + 32) = a2;
    *(v10 + 40) = a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10003243C();
      v6 = v23;
    }

    v12 = v6[2];
    v11 = v6[3];
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      sub_10004B2F4(v11);
      sub_10003243C();
      v6 = v14;
    }

    else
    {
      v14 = v6;
    }

LABEL_14:
    v14[2] = v13;
    v14[v12 + 4] = v10;
    a1 = *(a1 + 40);
    if (!a1)
    {

      sub_1000A16CC();

      sub_1000A16CC();

      goto LABEL_19;
    }
  }

  sub_10004B128();
  v24 = swift_allocError();
  sub_10004B2E0(v24, v25);
  sub_10004AEFC();

LABEL_19:
}

uint64_t sub_10004AEFC()
{
  swift_errorRetain();
  sub_1000A16CC();

  swift_errorRetain();
  sub_1000A16CC();
}

uint64_t sub_10004AF74()
{

  return v0;
}

uint64_t sub_10004AF9C()
{
  sub_10004AF74();

  return swift_deallocClassInstance();
}

uint64_t sub_10004B03C(void (__cdecl *a1)(void *))
{

  return sub_10004B094(a1);
}

uint64_t sub_10004B094(void (__cdecl *a1)(void *))
{
  v3 = 0;
  if (pthread_key_create(&v3, a1))
  {
    __break(1u);
  }

  *(v1 + 16) = v3;
  return v1;
}

uint64_t sub_10004B100(void *a1)
{
  result = pthread_setspecific(*(v1 + 16), a1);
  if (result)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10004B128()
{
  result = qword_1002AE998;
  if (!qword_1002AE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE998);
  }

  return result;
}

unint64_t sub_10004B17C()
{
  result = qword_1002BA630;
  if (!qword_1002BA630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002BA630);
  }

  return result;
}

uint64_t sub_10004B1C0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004B22C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004B244(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004B28C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10004B2E0(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 2;
}

uint64_t sub_10004B31C()
{
  v0 = sub_1001F6578();
  sub_10001A278();
  v2 = v1;
  __chkstk_darwin(v3, v4);
  sub_100023510();
  v7 = v6 - v5;
  sub_1001F6568();
  v8 = sub_1001F6528();
  (*(v2 + 8))(v7, v0);
  sub_10001C790();
  v9 = sub_1001F75B8();
  if (!*(v9 + 16))
  {
    goto LABEL_4;
  }

  if (*(v9 + 16))
  {
    v8 = *(v9 + 32);

LABEL_4:

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004B450()
{
  v0 = sub_1001F65B8();
  __chkstk_darwin(v0 - 8, v1);
  sub_100023510();
  v2 = sub_1001F73E8();
  sub_10001A278();
  v4 = v3;
  __chkstk_darwin(v5, v6);
  sub_100023510();
  v9 = v8 - v7;

  sub_1001F6588();
  sub_1001F73D8();
  sub_10004BE48();
  sub_1001F7458();
  (*(v4 + 8))(v9, v2);
  return v11;
}

id sub_10004B5C4()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  [v0 setDateStyle:2];
  result = [v0 setTimeStyle:0];
  qword_1002AE9E8 = v0;
  return result;
}

uint64_t sub_10004B628()
{
  v0 = sub_1000183C4(&qword_1002AE9F0);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v9 - v2;
  v4 = sub_1001F65B8();
  sub_100018460(v3, 1, 1, v4);
  sub_1001F7448();
  v6 = v5;
  sub_10004BDE8(v3, &qword_1002AE9F0);
  if ((v6 & 0x100000000) != 0)
  {
    sub_1001F7408(v7, 0.0);
  }

  return sub_10004B450();
}

double sub_10004B73C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v53 = a3;
  v52 = a2;
  v51 = a1;
  v49 = a4;
  v50 = a4;
  sub_1001F60C8();
  sub_10001A278();
  v47 = v5;
  v48 = v4;
  __chkstk_darwin(v4, v6);
  sub_100023510();
  v9 = v8 - v7;
  v10 = sub_1001F65C8();
  sub_10001A278();
  v12 = v11;
  __chkstk_darwin(v13, v14);
  sub_100023510();
  v17 = v16 - v15;
  sub_1001F6618();
  sub_10001A278();
  v45 = v19;
  v46 = v18;
  __chkstk_darwin(v18, v20);
  sub_100023510();
  v23 = v22 - v21;
  v24 = sub_1000183C4(&unk_1002B3450);
  __chkstk_darwin(v24 - 8, v25);
  v27 = &v45 - v26;
  v28 = sub_1001F6508();
  sub_10001A278();
  v30 = v29;
  v33 = __chkstk_darwin(v31, v32);
  v35 = &v45 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33, v36);
  v38 = &v45 - v37;
  if (v50)
  {
    v39 = v53;
    sub_1001F6428();
    v41 = v40;
    (*(v30 + 16))(v35, v39, v28);
    return v41 + sub_1001CF4AC(v51, v52, v49, v35);
  }

  else
  {
    (*(v12 + 104))(v17, enum case for Calendar.Identifier.gregorian(_:), v10);
    sub_1001F65D8();
    (*(v12 + 8))(v17, v10);
    sub_1001EC818(v51, v52);
    sub_1001F65F8();
    (*(v47 + 8))(v9, v48);
    (*(v45 + 8))(v23, v46);
    if (sub_10001C990(v27, 1, v28) == 1)
    {
      sub_1001F64F8();
      if (sub_10001C990(v27, 1, v28) != 1)
      {
        sub_10004BDE8(v27, &unk_1002B3450);
      }
    }

    else
    {
      (*(v30 + 32))(v38, v27, v28);
    }

    sub_1001F6428();
    v42 = v43;
    (*(v30 + 8))(v38, v28);
  }

  return v42;
}

uint64_t sub_10004BB20(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = a1 + 56;
  v5 = ~(-1 << *(a1 + 32));
LABEL_3:
  result = sub_1001F8058();
  while (1)
  {
    v7 = result & v5;
    if (((*(v4 + (((result & v5) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v5)) & 1) == 0)
    {
      return v2;
    }

    result = v7 + 1;
    if (*(*(a1 + 48) + 8 * v7) == v2)
    {
      if (v3)
      {
        return 0;
      }

      if (!__CFADD__(v2++, 1))
      {
        v3 = v2 == -1;
        goto LABEL_3;
      }

      __break(1u);
      return result;
    }
  }
}

uint64_t sub_10004BBD4()
{
  v0 = sub_1001F5EC8();
  sub_10004BC70(v0, qword_1002E6060);
  v1 = sub_100019C94(v0, qword_1002E6060);
  *v1 = sub_10004BCD4;
  v1[1] = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t *sub_10004BC70(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10004BCD4(uint64_t a1, void *a2)
{
  sub_10001AE68(a2, a2[3]);
  sub_1001F8188();
  sub_1001F64C8();
  sub_10004BD98(v3, v4);
  sub_1001F7F08();
  return sub_100019CCC(v3);
}

uint64_t sub_10004BD98(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10004BDE8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000183C4(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10004BE48()
{
  result = qword_1002AE9F8;
  if (!qword_1002AE9F8)
  {
    sub_1001F73E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE9F8);
  }

  return result;
}

uint64_t sub_10004BEA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004BEE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004BF50(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027A588;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10004BFA8(char a1)
{
  result = 0x692D656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x2D6E6F6973726576;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 1684632935;
      break;
    case 4:
      result = 0x6E4F707041534F69;
      break;
    case 5:
      result = 6580598;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10004C078(void *a1)
{
  v3 = sub_1000183C4(&qword_1002AEA10);
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6, v7);
  v9 = &v11[-v8];
  sub_10001AE68(a1, a1[3]);
  sub_10004C834();
  sub_1001F8198();
  v11[15] = 0;
  sub_100024A50();
  sub_1001F7D88();
  if (!v1)
  {
    v11[14] = 1;
    sub_100024A50();
    sub_1001F7D88();
    v11[13] = 2;
    sub_100024A50();
    sub_1001F7D18();
    v11[12] = 3;
    sub_100024A50();
    sub_1001F7D18();
    v11[11] = 4;
    sub_100024A50();
    sub_1001F7D18();
    v11[10] = 5;
    sub_100024A50();
    sub_1001F7D18();
  }

  return (*(v5 + 8))(v9, v3);
}

void *sub_10004C240@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002AEA00);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v26 - v10;
  sub_10001AE68(a1, a1[3]);
  sub_10004C834();
  sub_1001F8178();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  LOBYTE(v36[0]) = 0;
  sub_10004CB88();
  v12 = sub_1001F7C78();
  v14 = v13;
  LOBYTE(v36[0]) = 1;
  sub_10004CB88();
  v30 = sub_1001F7C78();
  v34 = v15;
  LOBYTE(v36[0]) = 2;
  sub_10004CB88();
  v29 = sub_1001F7C08();
  v33 = v16;
  LOBYTE(v36[0]) = 3;
  sub_10004CB88();
  v28 = sub_1001F7C08();
  v32 = v17;
  LOBYTE(v36[0]) = 4;
  sub_10004CB88();
  v27 = sub_1001F7C08();
  v31 = v18;
  v37 = 5;
  v19 = sub_1001F7C08();
  v20 = v11;
  v22 = v21;
  (*(v7 + 8))(v20, v5);
  __src[0] = v12;
  __src[1] = v14;
  __src[2] = v30;
  __src[3] = v34;
  __src[4] = v29;
  v23 = v33;
  __src[5] = v33;
  __src[6] = v28;
  v24 = v32;
  __src[7] = v32;
  __src[8] = v27;
  __src[9] = v31;
  __src[10] = v19;
  __src[11] = v22;
  sub_10004C888(__src, v36);
  sub_100019CCC(a1);
  v36[0] = v12;
  v36[1] = v14;
  v36[2] = v30;
  v36[3] = v34;
  v36[4] = v29;
  v36[5] = v23;
  v36[6] = v28;
  v36[7] = v24;
  v36[8] = v27;
  v36[9] = v31;
  v36[10] = v19;
  v36[11] = v22;
  sub_10004C8C0(v36);
  return memcpy(a2, __src, 0x60uLL);
}

uint64_t sub_10004C6A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004BF50(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10004C6D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10004BFA8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10004C708@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004BF9C();
  *a1 = result;
  return result;
}

uint64_t sub_10004C730@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOHTTPClientUpgradeError.receivedResponseBeforeRequestSent.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10004C758(uint64_t a1)
{
  v2 = sub_10004C834();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004C794(uint64_t a1)
{
  v2 = sub_10004C834();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10004C7D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10004C240(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x60uLL);
  }

  return result;
}

unint64_t sub_10004C834()
{
  result = qword_1002AEA08;
  if (!qword_1002AEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEA08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CreateAppReceiptRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CreateAppReceiptRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10004CA44);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10004CA80()
{
  result = qword_1002AEA18;
  if (!qword_1002AEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEA18);
  }

  return result;
}

unint64_t sub_10004CAD8()
{
  result = qword_1002AEA20;
  if (!qword_1002AEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEA20);
  }

  return result;
}

unint64_t sub_10004CB30()
{
  result = qword_1002AEA28;
  if (!qword_1002AEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEA28);
  }

  return result;
}

double sub_10004CBAC@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1001F5E88();
  swift_allocObject();
  sub_1001F5E78();
  sub_10004F1E4();
  sub_1001F5E68();
  sub_10003A380(a1, a2);

  if (!v3)
  {
    result = *&v8;
    *a3 = v8;
    a3[1] = v9;
    a3[2] = v10;
  }

  return result;
}

uint64_t sub_10004CC6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x49746375646F7270 && a2 == 0xE900000000000044;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x8000000100222080 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1001F7EA8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10004CD8C(char a1)
{
  if (!a1)
  {
    return 0x4449656C646E7562;
  }

  if (a1 == 1)
  {
    return 0x49746375646F7270;
  }

  return 0xD000000000000013;
}

uint64_t sub_10004CDEC(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1001F7EA8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = a1[2] == a2[2] && v7 == v8;
    if (!v9 && (sub_1001F7EA8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = a1[5];
  v11 = a2[5];
  if (v10)
  {
    if (v11)
    {
      v12 = a1[4] == a2[4] && v10 == v11;
      if (v12 || (sub_1001F7EA8() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10004CEC0(void *a1)
{
  v3 = sub_1000183C4(&qword_1002AEBB8);
  sub_10001A278();
  v5 = v4;
  sub_10001E844();
  __chkstk_darwin(v6, v7);
  v9 = &v11[-v8];
  sub_10001AE68(a1, a1[3]);
  sub_10004F148();
  sub_1001F8198();
  v11[15] = 0;
  sub_10004FE7C();
  if (!v1)
  {
    v11[14] = 1;
    sub_10004FE7C();
    v11[13] = 2;
    sub_10004FE7C();
  }

  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_10004D018@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002AEBA8);
  sub_10001A278();
  v7 = v6;
  sub_10001E844();
  __chkstk_darwin(v8, v9);
  v11 = &v22 - v10;
  sub_10001AE68(a1, a1[3]);
  sub_10004F148();
  sub_1001F8178();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  v26 = 0;
  v12 = sub_10004FE98();
  v14 = v13;
  v25 = 1;
  v22 = sub_10004FE98();
  v23 = v15;
  v24 = 2;
  v16 = sub_10004FE98();
  v17 = v11;
  v19 = v18;
  (*(v7 + 8))(v17, v5);
  result = sub_100019CCC(a1);
  *a2 = v12;
  a2[1] = v14;
  v21 = v23;
  a2[2] = v22;
  a2[3] = v21;
  a2[4] = v16;
  a2[5] = v19;
  return result;
}

uint64_t sub_10004D204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004CC6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004D22C@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOHTTPObjectAggregatorError.unexpectedMessageHead.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10004D254(uint64_t a1)
{
  v2 = sub_10004F148();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004D290(uint64_t a1)
{
  v2 = sub_10004F148();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10004D2CC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10004D018(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_10004D32C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001F6578();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10004D394(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E617254646C6FLL && a2 == 0xEE006E6F69746361;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E61725477656ELL && a2 == 0xEE006E6F69746361;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
    {

      return 2;
    }

    else
    {
      v8 = sub_1001F7EA8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10004D4BC(char a1)
{
  if (!a1)
  {
    return 0x736E617254646C6FLL;
  }

  if (a1 == 1)
  {
    return 0x736E61725477656ELL;
  }

  return 0x6D617473656D6974;
}

uint64_t sub_10004D520(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002AECA0);
  sub_10001A278();
  v7 = v6;
  sub_10001E844();
  __chkstk_darwin(v8, v9);
  v11 = &v17 - v10;
  sub_10001AE68(a1, a1[3]);
  sub_10004FA80();
  sub_1001F8198();
  v12 = v3[1];
  v19 = *v3;
  v20 = v12;
  v18 = 0;
  sub_100040C5C(v19, v12);
  sub_10004FAD4();
  sub_10004FE54();
  sub_10003A36C(v19, v20);
  if (!v2)
  {
    v13 = v3[3];
    v19 = v3[2];
    v20 = v13;
    v18 = 1;
    sub_100040C5C(v19, v13);
    sub_10004FE54();
    sub_10003A36C(v19, v20);
    type metadata accessor for EventManager.EventData(0);
    LOBYTE(v19) = 2;
    sub_1001F6508();
    sub_10004FDF8();
    sub_10004F19C(v14, v15);
    sub_1001F7DC8();
  }

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_10004D6F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F6508();
  sub_10001A278();
  v26 = v5;
  __chkstk_darwin(v6, v7);
  sub_100023510();
  v10 = v9 - v8;
  sub_1000183C4(&qword_1002AECB8);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v11, v12);
  v13 = type metadata accessor for EventManager.EventData(0);
  sub_100023520();
  __chkstk_darwin(v14, v15);
  sub_100023510();
  v18 = v17 - v16;
  *v18 = xmmword_100202480;
  *(v18 + 16) = xmmword_100202480;
  sub_10001AE68(a1, a1[3]);
  sub_10004FA80();
  sub_1001F8178();
  if (v2)
  {
    sub_100019CCC(a1);
    sub_10003A36C(*v18, *(v18 + 8));
    return sub_10003A36C(*(v18 + 16), *(v18 + 24));
  }

  else
  {
    sub_10004FB28();
    sub_10004FEB4();
    sub_10003A36C(0, 0xF000000000000000);
    *v18 = v28;
    *(v18 + 8) = v29;
    sub_10004FEB4();
    sub_10003A36C(0, 0xF000000000000000);
    *(v18 + 16) = v28;
    *(v18 + 24) = v29;
    sub_10004FDF8();
    sub_10004F19C(v19, v20);
    sub_1001F7CB8();
    v21 = sub_10004FEE4();
    v22(v21);
    (*(v26 + 32))(v18 + *(v13 + 24), v10, v4);
    sub_10004FDE0();
    sub_10004F538(v18, a2, v23);
    sub_100019CCC(a1);
    sub_10004FDC8();
    return sub_10004F598(v18, v24);
  }
}

Swift::Int sub_10004DA08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

uint64_t sub_10004DA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004D394(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004DA84(uint64_t a1)
{
  v2 = sub_10004FA80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004DAC0(uint64_t a1)
{
  v2 = sub_10004FA80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004DB2C()
{
  type metadata accessor for EventManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for ASDOctaneEventType(0);
  sub_1000183C4(&qword_1002AEBC0);
  sub_10004F19C(&qword_1002AEBC8, type metadata accessor for ASDOctaneEventType);
  result = sub_1001F69B8();
  *(v0 + 112) = result;
  qword_1002E6078 = v0;
  return result;
}

uint64_t sub_10004DBE4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v70 = type metadata accessor for EventManager.Observer(0);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v10, v11);
  sub_10004FE44();
  __chkstk_darwin(v12, v13);
  v15 = &v60 - v14;
  __chkstk_darwin(v16, v17);
  v19 = &v60 - v18;
  __chkstk_darwin(v20, v21);
  v23 = &v60 - v22;
  swift_beginAccess();
  v64 = a1;
  v65 = v3;
  v24 = sub_1001F12F8(a1, *(v3 + 112));
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  v26 = v25[2];
  v68 = a2;
  v69 = v26;
  if (v26)
  {
    v60 = v19;
    v61 = v23;
    v27 = a2[1];
    v67 = *a2;

    v28 = 0;
    while (1)
    {
      if (v28 >= v25[2])
      {
        __break(1u);
        goto LABEL_44;
      }

      v29 = v25;
      v30 = v7;
      sub_10004FD98();
      sub_10004F538(v31, v15, v32);
      v33 = &v15[*(v70 + 20)];
      v34 = *(v33 + 1);
      v35 = *(v33 + 2);
      v37 = *(v33 + 3);
      v36 = *(v33 + 4);
      v38 = *(v33 + 5);
      if (v34)
      {
        if (!v27)
        {
          goto LABEL_34;
        }

        v39 = *v33 == v67 && v34 == v27;
        if (!v39 && (sub_1001F7EA8() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else if (v27)
      {
        goto LABEL_34;
      }

      v40 = v68[3];
      if (v37)
      {
        if (!v40)
        {
          goto LABEL_34;
        }

        v41 = v35 == v68[2] && v37 == v40;
        if (!v41 && (sub_1001F7EA8() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else if (v40)
      {
        goto LABEL_34;
      }

      v42 = v68[5];
      if (v38)
      {
        if (v42)
        {
          v43 = v36 == v68[4] && v38 == v42;
          if (v43 || (sub_1001F7EA8() & 1) != 0)
          {
LABEL_42:

            v57 = v60;
            sub_10004F6F4(v15, v60);

            v15 = v61;
            sub_10004F6F4(v57, v61);
            v50 = v66;
            goto LABEL_41;
          }
        }
      }

      else if (!v42)
      {
        goto LABEL_42;
      }

LABEL_34:
      ++v28;
      sub_10004FDB0();
      sub_10004F598(v15, v44);
      v7 = v30;
      v25 = v29;
      if (v69 == v28)
      {
        goto LABEL_37;
      }
    }
  }

LABEL_37:

  v15 = v63;
  sub_1001F6568();
  v45 = &v15[*(v70 + 20)];
  v46 = *v68;
  v74 = *(v68 + 1);
  v47 = v74;
  v75 = v46;
  v73 = *(v68 + 2);
  v48 = v73;
  *v45 = v46;
  *(v45 + 1) = v47;
  *(v45 + 2) = v48;
  sub_10004FD98();
  v27 = v62;
  sub_10004F538(v15, v62, v49);
  sub_10004F684(&v75, v72);
  sub_10004F684(&v74, v72);
  sub_10004F684(&v73, v72);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_44:
    sub_1000331A0(0, v25[2] + 1, 1, v25);
    v25 = v58;
  }

  v50 = v66;
  v52 = v25[2];
  v51 = v25[3];
  if (v52 >= v51 >> 1)
  {
    sub_1000331A0(v51 > 1, v52 + 1, 1, v25);
    v25 = v59;
  }

  v25[2] = v52 + 1;
  sub_10004F6F4(v27, v25 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v52);
  v53 = v65;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v71 = *(v53 + 112);
  sub_1001E5ED8();
  *(v53 + 112) = v71;
  swift_endAccess();
LABEL_41:
  sub_1001F6578();
  sub_100023520();
  (*(v54 + 16))(v50, v15);
  sub_10004FDB0();
  return sub_10004F598(v15, v55);
}

uint64_t sub_10004E078(uint64_t a1)
{
  v56 = a1;
  v2 = type metadata accessor for EventManager.Observer(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8, v4);
  sub_10004FE10();
  v54 = v5;
  __chkstk_darwin(v6, v7);
  v55 = &v50 - v8;
  __chkstk_darwin(v9, v10);
  v12 = &v50 - v11;
  swift_beginAccess();
  v50 = v1;
  v13 = *(v1 + 112);
  v16 = *(v13 + 64);
  v15 = v13 + 64;
  v14 = v16;
  v17 = 1 << *(*(v1 + 112) + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;

  v22 = 0;
  v51 = v20;
  v53 = result;
  if (!v19)
  {
LABEL_5:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
      }

      v19 = *(v15 + 8 * v23);
      ++v22;
      if (v19)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_4:
  v23 = v22;
LABEL_8:
  v24 = __clz(__rbit64(v19));
  v19 &= v19 - 1;
  v25 = (v23 << 9) | (8 * v24);
  v26 = *(result + 56);
  v52 = *(*(result + 48) + v25);
  v27 = *(v26 + v25);
  v58 = v27;
  v28 = *(v27 + 16);
  swift_bridgeObjectRetain_n();
  v29 = 0;
  do
  {
    if (v28 == v29)
    {
      swift_bridgeObjectRelease_n();
      v22 = v23;
      result = v53;
      v20 = v51;
      if (!v19)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v30 = v29 + 1;
    v31 = *(v3 + 72);
    v32 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v33 = sub_1001F6548();
    v29 = v30;
  }

  while ((v33 & 1) == 0);

  __chkstk_darwin(v34, v35);
  *(&v50 - 2) = v56;
  result = sub_10004F434(sub_10004F5F0, (&v50 - 4), v27);
  if (v36)
  {
    goto LABEL_31;
  }

  v37 = result;
  v38 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v51 = &v50;
  for (i = v32 + v38 * v31; ; i += v31)
  {
    v40 = *(v27 + 16);
    if (v38 == v40)
    {
      break;
    }

    if (v38 >= v40)
    {
      goto LABEL_34;
    }

    sub_10004FD98();
    sub_10004F538(v27 + i, v12, v41);
    v42 = sub_1001F6548();
    sub_10004FDB0();
    result = sub_10004F598(v12, v43);
    if ((v42 & 1) == 0)
    {
      if (v38 != v37)
      {
        if (v37 < 0)
        {
          goto LABEL_35;
        }

        v44 = *(v27 + 16);
        if (v37 >= v44)
        {
          goto LABEL_36;
        }

        sub_10004FD98();
        result = sub_10004F538(v45 + v37 * v31, v55, v46);
        if (v38 >= v44)
        {
          goto LABEL_37;
        }

        sub_10004FD98();
        sub_10004F538(v27 + i, v54, v47);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100191240(v27);
          v27 = v48;
        }

        result = sub_10004F620(v54, v27 + v32 + v37 * v31);
        if (v38 >= *(v27 + 16))
        {
          goto LABEL_38;
        }

        result = sub_10004F620(v55, v27 + i);
        v58 = v27;
      }

      ++v37;
    }

    ++v38;
  }

  if (v38 < v37)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_31:
  sub_1000371A0();
  v49 = v50;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v49 + 112);
  sub_1001E5ED8();
  *(v49 + 112) = v57;
  swift_endAccess();
}

void sub_10004E478(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EventManager.EventData(0);
  sub_100023520();
  __chkstk_darwin(v5, v6);
  sub_10004FE10();
  sub_10004FE44();
  v9 = __chkstk_darwin(v7, v8);
  v11 = &v90 - v10;
  __chkstk_darwin(v9, v12);
  v14 = &v90 - v13;
  v15 = type metadata accessor for EventManager.Observer(0);
  sub_10001A278();
  v102 = v16;
  __chkstk_darwin(v17, v18);
  sub_100023510();
  v21 = v20 - v19;
  v22 = a1;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    type metadata accessor for Transaction();
    v22 = sub_1000C4FF0(v22);
  }

  swift_beginAccess();
  v23 = sub_1001F12F8(0, *(v2 + 112));
  if (!v23)
  {
LABEL_51:

    return;
  }

  v24 = v23;
  v101 = *(v23 + 16);
  if (!v101)
  {

    return;
  }

  v99 = v23 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
  v25 = v22;
  v97 = 0;
  v98 = 0;
  v26 = 0;
  v103 = 0xF000000000000000;
  v104 = v25;
  *(&v27 + 1) = 0xF000000000000000;
  v93 = xmmword_100202480;
  *&v27 = 136315138;
  v90 = v27;
  v95 = v15;
  v96 = v14;
  v94 = v21;
  v100 = v24;
  while (1)
  {
    if (v26 >= *(v24 + 16))
    {
      __break(1u);
    }

    sub_10004FD98();
    sub_10004F538(v28, v21, v29);
    v30 = (v21 + *(v15 + 20));
    v31 = v30[1];
    if (v31)
    {
      v32 = *v30;
      if (sub_1000BFC24() == v32 && v31 == v33)
      {
      }

      else
      {
        v35 = sub_10004FE24();

        if ((v35 & 1) == 0)
        {
          goto LABEL_49;
        }
      }
    }

    v36 = v30[3];
    if (v36)
    {
      v37 = v30[2];
      if (sub_1000BFC14() == v37 && v36 == v38)
      {
      }

      else
      {
        v40 = sub_10004FE24();

        if ((v40 & 1) == 0)
        {
          goto LABEL_49;
        }
      }
    }

    v41 = v30[5];
    if (!v41)
    {
      goto LABEL_32;
    }

    v42 = v30[4];
    v43 = sub_1000C5388(15);
    if (v44)
    {
      break;
    }

LABEL_49:
    ++v26;
    sub_10004FDB0();
    sub_10004F598(v21, v87);
    v24 = v100;
    if (v101 == v26)
    {
      v22 = v104;

      sub_10003A36C(v98, v103);
      goto LABEL_51;
    }
  }

  if (v43 != v42 || v44 != v41)
  {
    v46 = sub_10004FE24();

    if (v46)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

LABEL_32:
  v47 = v103;
  if (v103 >> 60 != 15)
  {
    v57 = v98;
    v58 = v98;
    v59 = v103;
LABEL_46:
    sub_100040C5C(v57, v47);
    if (qword_1002AC478 != -1)
    {
      swift_once();
    }

    v81 = sub_10004FED8();
    sub_100040C70(v81, v82);
    sub_100131F38(0, v58, v59);
    v83 = sub_10004FED8();
    sub_10003A380(v83, v84);
    v85 = sub_10004FED8();
    sub_10003A380(v85, v86);
    v98 = v58;
    v103 = v59;
    goto LABEL_49;
  }

  v48 = v93;
  *v14 = v93;
  *(v14 + 1) = v48;
  sub_1001F64F8();
  v49 = objc_opt_self();
  sub_1000BFF88();
  isa = sub_1001F6988().super.isa;

  v105 = 0;
  v51 = [v49 dataWithJSONObject:isa options:0 error:&v105];

  v52 = v105;
  if (v51)
  {
    v53 = sub_1001F63C8();
    v55 = v54;

    v56 = v97;
  }

  else
  {
    v60 = v52;
    sub_1001F61B8();

    swift_willThrow();

    v53 = 0;
    v56 = 0;
    v55 = 0xF000000000000000;
  }

  swift_beginAccess();
  v61 = *v14;
  v62 = *(v14 + 1);
  *v14 = v53;
  *(v14 + 1) = v55;
  sub_10003A36C(v61, v62);
  sub_10004FDE0();
  sub_10004F538(v14, v11, v63);
  sub_1001F5F08();
  swift_allocObject();
  sub_1001F5EF8();
  sub_10004F19C(&qword_1002AEBD8, type metadata accessor for EventManager.EventData);
  v64 = sub_1001F5EE8();
  if (v56)
  {

    sub_10004FDC8();
    sub_10004F598(v11, v66);
    v58 = 0;
    v59 = 0xF000000000000000;
  }

  else
  {
    v58 = v64;
    v59 = v65;
    sub_10004FDC8();
    sub_10004F598(v11, v67);
  }

  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v97 = 0;
  v68 = sub_1001F6688();
  sub_100019C94(v68, qword_1002E6180);
  v69 = sub_1001F6668();
  v70 = sub_1001F72B8();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v105 = v92;
    *v71 = v90;
    sub_10004FDE0();
    sub_10004F538(v96, v91, v72);
    v73 = sub_1001F6BA8();
    v75 = v11;
    v76 = v4;
    v77 = sub_1000E4544(v73, v74, &v105);

    *(v71 + 4) = v77;
    v4 = v76;
    v11 = v75;
    _os_log_impl(&_mh_execute_header, v69, v70, "Sending subscriptionWillRenew %s", v71, 0xCu);
    sub_100019CCC(v92);

    v14 = v96;
  }

  sub_10004FDC8();
  sub_10004F598(v14, v78);
  v21 = v94;
  v15 = v95;
  if (v59 >> 60 != 15)
  {
    v79 = sub_10004FED8();
    sub_100040C70(v79, v80);
    v57 = v98;
    v47 = v103;
    goto LABEL_46;
  }

  v88 = v104;

  sub_10004FDB0();
  sub_10004F598(v21, v89);
}

uint64_t sub_10004EBCC(void *a1)
{
  sub_1000183C4(&qword_1002ADF60);
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  v6 = &v11 - v5;
  v7 = sub_10004ECBC(a1);
  v8 = sub_1001F7058();
  sub_100018460(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = v7;

  sub_100182130();
}

char *sub_10004ECBC(void *a1)
{
  swift_getObjectType();
  v2 = a1;
  v3 = v2;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v3 = sub_1000C4FF0(v2);
  }

  return v3;
}

uint64_t sub_10004ED14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10004ED34, a4, 0);
}

uint64_t sub_10004ED34()
{
  sub_10004E478(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004ED94()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10004EE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F6578();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10001C990(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_10004EED4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001F6578();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100018460(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_10004EFA0()
{
  result = sub_1001F6578();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10004F014(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004F068(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10004F148()
{
  result = qword_1002AEBB0;
  if (!qword_1002AEBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEBB0);
  }

  return result;
}

uint64_t sub_10004F19C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004F1E4()
{
  result = qword_1002AEBD0;
  if (!qword_1002AEBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEBD0);
  }

  return result;
}

uint64_t sub_10004F238()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004F280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10004F340;

  return sub_10004ED14(a1, v4, v5, v7, v6);
}

uint64_t sub_10004F340()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10004F434(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(type metadata accessor for EventManager.Observer(0) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_10004F538(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100023520();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10004F598(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100023520();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004F620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventManager.Observer(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F684(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002AEBE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F6F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventManager.Observer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 8) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_1001F6508();
    v11 = a1 + *(a3 + 24);

    return sub_10001C990(v11, a2, v10);
  }
}