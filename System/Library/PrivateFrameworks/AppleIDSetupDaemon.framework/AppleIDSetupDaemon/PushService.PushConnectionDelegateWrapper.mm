@interface PushService.PushConnectionDelegateWrapper
- (_TtCC18AppleIDSetupDaemon11PushService29PushConnectionDelegateWrapper)init;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
@end

@implementation PushService.PushConnectionDelegateWrapper

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v21 = self;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = a3;
  v11 = v21;
  if (a4)
  {
    v12 = a4;
    a4 = sub_2408D3410();
    v14 = v13;
  }

  else
  {
    v14 = 0xF000000000000000;
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (v14 >> 60 == 15)
    {
    }

    else
    {
      v18 = sub_2408D4E60();
      (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v16;
      v19[5] = a4;
      v19[6] = v14;
      sub_24087827C(a4, v14);
      sub_24083AB60(0, 0, v9, &unk_2408D8598, v19);

      sub_240875A6C(a4, v14);
    }
  }

  else
  {
    sub_240875A6C(a4, v14);

    v17 = v21;
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a4)
    {
      v12 = Strong;
      v13 = sub_2408D4E60();
      (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v12;
      v14[5] = a4;
      v15 = a4;
      v16 = a3;
      v17 = self;
      sub_24083AB60(0, 0, v10, &unk_2408D8588, v14);
    }

    else
    {
    }
  }
}

- (_TtCC18AppleIDSetupDaemon11PushService29PushConnectionDelegateWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end