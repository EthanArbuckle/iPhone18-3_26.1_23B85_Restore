@interface PushService.PushConnectionDelegateWrapper
- (_TtCC18AAAFoundationSwift11PushService29PushConnectionDelegateWrapper)init;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
@end

@implementation PushService.PushConnectionDelegateWrapper

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v22 = self;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v21 - v9;
  v11 = a3;
  v12 = v22;
  if (a4)
  {
    v13 = a4;
    a4 = sub_1B99F3814();
    v15 = v14;
  }

  else
  {
    v15 = 0xF000000000000000;
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (v15 >> 60 == 15)
    {
    }

    else
    {
      v19 = sub_1B99F3EC4();
      (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v17;
      v20[5] = a4;
      v20[6] = v15;
      sub_1B99A940C(a4, v15);
      sub_1B99C973C(0, 0, v10, &unk_1B99F5B40, v20);

      sub_1B99A92DC(a4, v15);
    }
  }

  else
  {
    sub_1B99A92DC(a4, v15);

    v18 = v22;
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v19 - v10;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a4)
    {
      v13 = Strong;
      v14 = sub_1B99F3EC4();
      (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v13;
      v15[5] = a4;
      v16 = a4;
      v17 = a3;
      v18 = self;
      sub_1B99C973C(0, 0, v11, &unk_1B99F5B30, v15);
    }

    else
    {
    }
  }
}

- (_TtCC18AAAFoundationSwift11PushService29PushConnectionDelegateWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end