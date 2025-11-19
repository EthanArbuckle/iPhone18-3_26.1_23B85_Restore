void sub_6D91CC(void *a1, char a2, void (*a3)(void, void))
{
  if (a3)
  {
    a3(a2 & 1, 0);
  }

  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper);
      v6 = Strong;
      v7 = v5;

      if (v5)
      {

        if (v5 == a1)
        {
          swift_beginAccess();
          v8 = swift_unknownObjectWeakLoadStrong();
          if (v8)
          {
            v9 = *&v8[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper];
            *&v8[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper] = 0;
          }
        }
      }
    }
  }
}

uint64_t PlaybackController.displayAgeVerification(modelObject:completion:)(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  if (a1)
  {
    a1 = MPModelObject.bestIdentifier(for:)(2, 1u);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  sub_6D8860(a1, v6, a2, a3);
}

uint64_t PlaybackController.displayAgeVerification(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_AB9940();
  v2[5] = sub_AB9930();
  v4 = sub_AB98B0();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_6D93BC, v4, v3);
}

uint64_t sub_6D93BC()
{
  v5 = v0[1];
  v1 = sub_AB9930();
  v0[4].i64[0] = v1;
  v2 = swift_task_alloc();
  v0[4].i64[1] = v2;
  v2[1] = vextq_s8(v5, v5, 8uLL);
  v3 = swift_task_alloc();
  v0[5].i64[0] = v3;
  *v3 = v0;
  v3[1] = sub_6D94D0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v1, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x8000000000B70360, sub_6DC0E0, v2, &type metadata for () + 8);
}

uint64_t sub_6D94D0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_6D9658;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_6D95F4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_6D95F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6D9658()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6D96D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12F90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v9 = sub_AB7FA0();
  v11 = v10;
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  sub_6D8860(v9, v11, sub_6DC604, v13);
}

uint64_t sub_6D9860(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12F90);
    return sub_AB98C0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12F90);
    return sub_AB98D0();
  }
}

id sub_6D99C0()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  if (v2)
  {

    v2(0, 0);
    sub_17654(v2);
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_6D9AF8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_13C80(0, &qword_E103C0);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  v9 = a4;
  v10 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_6DC47C, v8);
}

uint64_t sub_6D9BB4(uint64_t result)
{
  v1 = (result + OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion);
  v2 = *(result + OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion);
  if (v2)
  {
    v3 = result;
    v4 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    v5 = [objc_opt_self() defaultManager];
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = v4;
    v6[4] = v3;
    v9[4] = sub_6DC410;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1546C;
    v9[3] = &block_descriptor_194;
    v7 = _Block_copy(v9);
    sub_307CC(v2);
    v8 = v3;

    [v5 getAgeVerificationStateWithCompletion:v7];
    _Block_release(v7);

    return sub_17654(v2);
  }

  return result;
}

uint64_t sub_6D9DF0()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.playbackController);
  __swift_project_value_buffer(v0, static Logger.playbackController);
  return sub_AB4BB0();
}

uint64_t sub_6D9F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_6D9F30, 0, 0);
}

uint64_t sub_6D9F30()
{
  v1 = v0[2];
  if (v1)
  {
    v1(v0[4]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_6D9F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a3;
  v6[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  v6[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v6[7] = swift_task_alloc();
  v7 = sub_AB31C0();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = *(v8 + 64);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_6DA0E4, 0, 0);
}

uint64_t sub_6DA0E4()
{
  v1 = [*(v0 + 16) action];
  v2 = [v1 type];

  if (v2 != &dword_0 + 2 || (v3 = [*(v0 + 16) action], v4 = objc_msgSend(v3, "URLString"), v3, !v4))
  {
LABEL_5:
    v8 = *(v0 + 48);
    v9 = *(v0 + 16);
    v10 = [objc_allocWithZone(ICStoreDialogResponseHandler) init];
    v11 = [objc_opt_self() activeAccount];
    v12 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v11];

    v13 = sub_AB9990();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v10;
    v14[5] = v9;
    v14[6] = v12;
    v15 = v9;
    sub_5E8FD0(0, 0, v8, &unk_B21A30, v14);

    v16 = *(v0 + 24);
    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  sub_AB92A0();

  sub_AB3180();

  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_12E1C(*(v0 + 56), &qword_E0DC30);
    goto LABEL_5;
  }

  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v21 = *(v0 + 72);
  v22 = *(v0 + 64);
  v23 = *(v0 + 48);
  v24 = *(v21 + 32);
  v24(v19, *(v0 + 56), v22);
  v25 = sub_AB9990();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  (*(v21 + 16))(v20, v19, v22);
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v24(v27 + v26, v20, v22);
  sub_5E8CD8(0, 0, v23, &unk_B21A40, v27);

  (*(v21 + 8))(v19, v22);
  v16 = *(v0 + 24);
  if (v16)
  {
LABEL_6:
    v16(*(v0 + 40));
  }

LABEL_7:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_6DA490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 144) = a1;
  *(v4 + 152) = a4;
  return _swift_task_switch(sub_6DA4B0, 0, 0);
}

uint64_t sub_6DA4B0()
{
  *(v0 + 160) = objc_opt_self();
  sub_AB9940();
  *(v0 + 168) = sub_AB9930();
  v2 = sub_AB98B0();

  return _swift_task_switch(sub_6DA554, v2, v1);
}

uint64_t sub_6DA554()
{
  v1 = *(v0 + 160);

  *(v0 + 176) = [v1 sharedApplication];

  return _swift_task_switch(sub_6DA5D8, 0, 0);
}

uint64_t sub_6DA5D8@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[22];
  sub_AB30F0(a1);
  v4 = v3;
  v1[23] = v3;
  sub_52A314(_swiftEmptyArrayStorage);
  _s3__C25OpenExternalURLOptionsKeyVMa_0(0);
  sub_6DCA54(&qword_E0DE20, _s3__C25OpenExternalURLOptionsKeyVMa_0);
  isa = sub_AB8FD0().super.isa;
  v1[24] = isa;

  v1[2] = v1;
  v1[7] = v1 + 25;
  v1[3] = sub_6DA798;
  v6 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12FE8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_6DA8F0;
  v1[13] = &block_descriptor_132_0;
  v1[14] = v6;
  [v2 openURL:v4 options:isa completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_6DA798()
{

  return _swift_task_switch(sub_6DA878, 0, 0);
}

uint64_t sub_6DA878()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  **(v0 + 144) = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_6DA8F0(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_6DA94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a1;
  v6[19] = a4;
  return _swift_task_switch(sub_6DA970, 0, 0);
}

uint64_t sub_6DA970()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = [*(v0 + 160) action];
  *(v0 + 176) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 192;
  *(v0 + 24) = sub_6DAABC;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12FF0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_6DACBC;
  *(v0 + 104) = &block_descriptor_135_1;
  *(v0 + 112) = v4;
  [v2 handleButtonAction:v3 usingRequestContext:v1 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_6DAABC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_6DAC38;
  }

  else
  {
    v2 = sub_6DABCC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6DABCC()
{
  v1 = *(v0 + 192);

  **(v0 + 144) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6DAC38()
{
  v1 = *(v0 + 176);
  swift_willThrow();

  **(v0 + 144) = 2;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6DACBC(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_6DAD88@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

void sub_6DAE08(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  sub_AB5520();
  sub_6E6D1C(v4);
}

unint64_t sub_6DAEFC()
{
  result = qword_E12E80;
  if (!qword_E12E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E12E80);
  }

  return result;
}

unint64_t sub_6DAF50()
{
  result = qword_E12E88;
  if (!qword_E12E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E12E88);
  }

  return result;
}

uint64_t sub_6DAFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_6DAFE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_6DB050(id a1, char a2)
{
  if (a2 == 2)
  {
LABEL_4:
    sub_6DB074(a1);
    return;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    goto LABEL_4;
  }
}

void sub_6DB074(id a1)
{
  if (a1 >= 5)
  {
  }
}

id sub_6DB084(id result, char a2)
{
  if (a2 == 2)
  {
    return sub_6DB0A8(result);
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return result;
    }

    return sub_6DB0A8(result);
  }
}

id sub_6DB0A8(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

BOOL sub_6DB0B8(void *a1, uint64_t a2)
{
  v7[3] = &type metadata for Player.ReplaceCommand;
  v7[4] = &protocol witness table for Player.ReplaceCommand;
  v7[0] = a1;
  v7[1] = a2;
  __swift_project_boxed_opaque_existential_1(v7, &type metadata for Player.ReplaceCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  sub_AB5510();

  if (v6)
  {
    v4 = MPCPlayerResponse.canPerform(_:)(v7);
  }

  else
  {
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v4;
}

BOOL sub_6DB1D4(char a1)
{
  v4[3] = &type metadata for Player.PlaybackCommand;
  v4[4] = &protocol witness table for Player.PlaybackCommand;
  LOBYTE(v4[0]) = a1;
  __swift_project_boxed_opaque_existential_1(v4, &type metadata for Player.PlaybackCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v3)
  {
    v1 = MPCPlayerResponse.canPerform(_:)(v4);
  }

  else
  {
    v1 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v4);
  return v1;
}

BOOL sub_6DB2E8(void *a1, void *a2)
{
  v8[3] = &type metadata for Player.InsertCommand;
  v8[4] = &protocol witness table for Player.InsertCommand;
  v8[0] = a1;
  v8[1] = a2;
  __swift_project_boxed_opaque_existential_1(v8, &type metadata for Player.InsertCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  sub_537EFC(a2);
  sub_AB5510();

  if (v7)
  {
    v5 = MPCPlayerResponse.canPerform(_:)(v8);
  }

  else
  {
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

BOOL sub_6DB418(void *a1)
{
  v5[3] = &type metadata for Player.ChangeCommand;
  v5[4] = &protocol witness table for Player.ChangeCommand;
  v5[0] = a1;
  __swift_project_boxed_opaque_existential_1(v5, &type metadata for Player.ChangeCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_6DDA50(a1);
  sub_AB5510();

  if (v4)
  {
    v2 = MPCPlayerResponse.canPerform(_:)(v5);
  }

  else
  {
    v2 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v5);
  return v2;
}

BOOL sub_6DB538(uint64_t a1)
{
  v4[3] = &type metadata for Player.VocalsCommand;
  v4[4] = &protocol witness table for Player.VocalsCommand;
  LODWORD(v4[0]) = a1;
  BYTE4(v4[0]) = BYTE4(a1);
  BYTE5(v4[0]) = BYTE5(a1) & 1;
  __swift_project_boxed_opaque_existential_1(v4, &type metadata for Player.VocalsCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v3)
  {
    v1 = MPCPlayerResponse.canPerform(_:)(v4);
  }

  else
  {
    v1 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v4);
  return v1;
}

uint64_t sub_6DB65C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_6DB6BC(void *a1)
{
  v2 = v1;
  if (qword_E0CF90 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, static Logger.sharedListening);
  v5 = a1;
  v6 = sub_AB4BA0();
  v7 = sub_AB9F50();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v27[0] = v9;
    *v8 = 136446210;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_AB92A0();
    v14 = v13;

    v15 = sub_500C84(v12, v14, v27);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_0, v6, v7, "Received MPCSharedListeningEvent=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v16 = v5;
  sub_75D030(v16, v25);
  if (v26 != 255)
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    v17 = (v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v18 = *(v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v19 = v17[4];
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v19 + 40))(v18, v19);
    v20 = [v16 participant];
    v21 = [v20 externalIdentifier];

    v22 = sub_AB92A0();
    v24 = v23;

    GroupActivitiesManager.postEvent(_:participantID:)(v27, v22, v24);

    sub_12E1C(v25, &unk_E13080);
  }
}

uint64_t sub_6DB948(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  if (qword_E0CF90 != -1)
  {
    swift_once();
  }

  v7 = sub_AB4BC0();
  __swift_project_value_buffer(v7, static Logger.sharedListening);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = a1;
    v23 = v11;
    *v10 = 136446210;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E60);
    v12 = sub_AB9350();
    v14 = sub_500C84(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "Receiving didEndSharedListeningSessionWithError=%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  v15 = sub_AB9990();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_AB9940();
  v16 = v2;
  v17 = sub_AB9930();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;
  sub_5E89D8(0, 0, v6, &unk_B21A98, v18);

  if (a1)
  {
    sub_13C80(0, &qword_E103C0);
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    v21 = v16;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_6DD390, v20);
  }

  return result;
}

void sub_6DBC2C(void *a1)
{
  v2 = v1;
  if (qword_E0CEA0 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, static Logger.playbackController);
  swift_errorRetain();
  v5 = sub_AB4BA0();
  v6 = sub_AB9F30();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = a1;
    v35[0] = v8;
    *v7 = 136446210;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E60);
    v9 = sub_AB9350();
    v11 = sub_500C84(v9, v10, v35);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "didPauseForLeaseEndWithError with error=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  if (a1)
  {
    v12 = sub_AB3040();
    v13 = [v12 userInfo];
    v14 = sub_AB8FF0();

    v15 = sub_AB92A0();
    if (*(v14 + 16))
    {
      v17 = sub_52215C(v15, v16);
      v19 = v18;

      if (v19)
      {
        sub_808B0(*(v14 + 56) + 32 * v17, v35);

        sub_13C80(0, &qword_E13068);
        if (swift_dynamicCast())
        {
          v20 = [v34 stateReasonDialog];
          if (!v20)
          {

            return;
          }

          v21 = v20;
          v22 = [v12 userInfo];
          v23 = sub_AB8FF0();

          v24 = sub_AB92A0();
          if (*(v23 + 16))
          {
            v26 = sub_52215C(v24, v25);
            v28 = v27;

            if (v28)
            {
              sub_808B0(*(v23 + 56) + 32 * v26, v35);

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13070);
              if (swift_dynamicCast())
              {
                if (!v34[2] || (v29 = sub_52215C(0x736E6F6974706FLL, 0xE700000000000000), (v30 & 1) == 0))
                {

                  return;
                }

                sub_808B0(v34[7] + 32 * v29, v35);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0);
                if (swift_dynamicCast())
                {
                  sub_13C80(0, &qword_E103C0);
                  v31 = swift_allocObject();
                  v31[2] = v2;
                  v31[3] = v21;
                  v31[4] = v34;
                  v31[5] = v34;
                  v32 = v2;
                  v33 = v21;
                  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_6DD204, v31);

                  return;
                }

                goto LABEL_19;
              }

              goto LABEL_24;
            }
          }

          else
          {
          }

LABEL_24:
        }

LABEL_19:

        return;
      }
    }

    else
    {
    }

    goto LABEL_19;
  }
}

uint64_t get_enum_tag_for_layout_string_8MusicKit0A4Item_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_6DC10C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6DC148(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_6DC198(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_6DC22C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_6DC274(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_9MusicCore18PlaybackControllerC12CommandError33_49A4F392108DD8BCF77701E27C865714LLO9AlertKindO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_6DC2E4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6DC33C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore18PlaybackControllerC12CommandError33_49A4F392108DD8BCF77701E27C865714LLO(uint64_t a1)
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

uint64_t sub_6DC3D0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_194(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6DC434()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_17Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18()
{

  return swift_deallocObject();
}

uint64_t sub_6DC570()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12F90);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_6DC604(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12F90);

  return sub_6D9860(a1, a2);
}

uint64_t sub_6DC6C8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_6DC700()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_6DC754()
{

  return swift_deallocObject();
}

uint64_t sub_6DC794(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_17CF8;

  return sub_6D8378(a1, a2, v6, v7, v8);
}

uint64_t sub_6DC854()
{

  return swift_deallocObject();
}

uint64_t sub_6DC88C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_17CF8;

  return sub_6D8640(a1, a2, v7, v6);
}

uint64_t sub_6DC94C()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_6DC9A4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 72);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D7120(a1, a2, v2 + 16, v6);
}

uint64_t sub_6DCA54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6DCACC()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_6DCB14(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_17CF8;

  return sub_6D9F9C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_6DCBD8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_6DCC28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_6DA94C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_6DCCF0()
{
  v1 = sub_AB31C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_6DCDB4(uint64_t a1)
{
  v4 = *(sub_AB31C0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_6DA490(a1, v6, v7, v1 + v5);
}

uint64_t sub_6DCED0()
{

  return swift_deallocObject();
}

uint64_t sub_6DCF40()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_6DCF88(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_17CF8;

  return sub_6D9F0C(a1, a2, v6, v7, v8);
}

uint64_t sub_6DD048()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_6DD080()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_6DD100(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_6D7388(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t sub_6DD1B4()
{

  return swift_deallocObject();
}

uint64_t sub_6DD210()
{

  return swift_deallocObject();
}

uint64_t sub_6DD264()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_6DD2A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_6D4080(a1, v4, v5, v6);
}

uint64_t sub_6DD358()
{

  return swift_deallocObject();
}

unint64_t sub_6DD3A0()
{
  result = qword_E13570;
  if (!qword_E13570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E15EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E13570);
  }

  return result;
}

uint64_t sub_6DD404()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_6DD44C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_6C36D4(a1, v4, v5, v7, v6);
}

unint64_t sub_6DD50C()
{
  result = qword_E130A0;
  if (!qword_E130A0)
  {
    sub_13C80(255, &qword_E13098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E130A0);
  }

  return result;
}

uint64_t sub_6DD59C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D3C8C(a1, a2, v6);
}

uint64_t sub_6DD648(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D3E90(a1, a2, v6);
}

uint64_t sub_6DD6F4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D3DE4(a1, a2, v6);
}

uint64_t sub_6DD7A0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D3D38(a1, a2, v6);
}

uint64_t sub_6DD84C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D08CC(a1, a2, v6);
}

uint64_t sub_6DD8F8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D0974(a1, a2, v6);
}

uint64_t sub_6DD9A4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D0A1C(a1, a2, v6);
}

id sub_6DDA50(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

uint64_t sub_6DDA68(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D1E20(a1, a2, v6);
}

uint64_t sub_6DDB14(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D1D80(a1, a2, v6);
}

uint64_t sub_6DDBC0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D1210(a1, a2, v6);
}

uint64_t sub_6DDC6C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17BD0;

  return sub_6D12B0(a1, a2, v6);
}

uint64_t sub_6DDD18(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_6DDE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MPCPlaybackIntent.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_6E05CC(a1, a2, a3, a4);

  sub_52C528(a1, a2, a3, a4);
}

uint64_t PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, void *a10, uint64_t a11)
{
  v44 = a7;
  v49 = a4;
  v50 = a11;
  v43 = sub_AB4C10();
  v48 = *(v43 - 8);
  __chkstk_darwin(v43);
  v47 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v45);
  v46 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for PlaybackIntentDescriptor(0);
  v21 = a9 + v20[7];
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  v22 = a9 + v20[8];
  *(v22 + 32) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(a9 + v20[9]) = 0;
  *(a9 + v20[10]) = 0;
  *(a9 + v20[11]) = 0;
  v51 = a1;
  sub_6DDE0C(a1, a9);
  if ((a6 & 1) == 0)
  {
    sub_6DECF0(a5, 0, &selRef_setShuffleMode_);
  }

  if ((a8 & 1) == 0)
  {
    sub_6DECF0(v44, 0, &selRef_setRepeatMode_);
  }

  v23 = a2;
  sub_58B5F0(a2, v21);
  *(a9 + v20[5]) = a3;
  v24 = v50;
  *(a9 + v20[6]) = v49;
  sub_15F84(v24, &v52, &qword_E0EA98);
  if (v53)
  {
    sub_70DF8(&v52, v54);
  }

  else
  {
    if (a10)
    {
      v54[0] = a10;
      v25 = a10;
    }

    else
    {
      v54[0] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F4D8);
    }

    v26 = sub_AB9380();
    v54[3] = &type metadata for Player.CommandIssuerIdentity;
    v54[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v54[0] = v26;
    v54[1] = v27;
    if (v53)
    {
      sub_12E1C(&v52, &qword_E0EA98);
    }
  }

  sub_160B4(v54, v22, &qword_E0EA98);
  if (!a10)
  {
    goto LABEL_22;
  }

  v28 = [a10 combinedPlayActivityFeatureName];
  sub_AB92A0();

  v29 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(1);
  v31 = v30;
  sub_466A4(0, 0xF000000000000000);

  sub_9007C(v29, v31);

  sub_466A4(v29, v31);
  v32 = a9;
  v33 = v46;
  sub_6DDE0C(v32, v46);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v39 = *v33;

    v40 = sub_AB9260();

    [v39 setPlayActivityFeatureName:v40];

    if (v31 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      sub_90090(v29, v31);
      isa = sub_AB3250().super.isa;
      sub_466A4(v29, v31);
    }

    [v39 setPlayActivityRecommendationData:{isa, v43}];

    sub_466A4(v29, v31);
LABEL_22:
    sub_12E1C(v24, &qword_E0EA98);
    sub_12E1C(v23, &qword_E130E0);
    return sub_52C574(v51);
  }

  v34 = v33;
  v35 = v43;
  (*(v48 + 32))(v47, v34, v43);
  v36 = sub_AB4BE0();

  v37 = sub_AB9260();

  [v36 setPlayActivityFeatureName:v37];

  if (v31 >> 60 == 15)
  {
    v38 = 0;
  }

  else
  {
    sub_90090(v29, v31);
    v38 = sub_AB3250().super.isa;
    sub_466A4(v29, v31);
  }

  [v36 setPlayActivityRecommendationData:{v38, v43}];

  sub_466A4(v29, v31);
  sub_12E1C(v24, &qword_E0EA98);
  sub_12E1C(v23, &qword_E130E0);
  sub_52C574(v51);
  return (*(v48 + 8))(v47, v35);
}

void PlaybackIntentDescriptor.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_AB4C10();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v14);
  v16 = (&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_6DDE0C(v5, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v16, v10);
    v17 = sub_AB4BE0();
    sub_6E05CC(a1, a2, a3, a4);
    sub_52C528(a1, a2, a3, a4);

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v18 = *v16;
    sub_6E05CC(a1, a2, a3, a4);
    sub_52C528(a1, a2, a3, a4);
  }
}

uint64_t _s9MusicCore24PlaybackIntentDescriptorV0D4TypeO010underlyingD0So011MPCPlaybackD0Cvg_0()
{
  v1 = v0;
  v2 = sub_AB4C10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6DDE0C(v1, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v3 + 32))(v5, v8, v2);
  v9 = sub_AB4BE0();
  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.init(featureName:recommendationData:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_466A4(0, 0xF000000000000000);

  sub_9007C(a3, a4);

  sub_466A4(a3, a4);
  return a1;
}

uint64_t PlaybackIntentDescriptor.IntentType.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    *v7 = a1;
    v11 = v5;
    swift_storeEnumTagMultiPayload();
    sub_6E06E8(v7, a2);
    return (*(v11 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v9 = *(v5 + 56);

    return v9(a2, 1, 1, v4);
  }
}

{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB4C10();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v8 + 48))(a1, 1, v7) == 1)
  {
    sub_12E1C(a1, &qword_E0F4E8);
    v11 = *(v15 + 56);

    return v11(a2, 1, 1, v4);
  }

  else
  {
    v13 = *(v8 + 32);
    v13(v10, a1, v7);
    v13(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_6E06E8(v6, a2);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }
}

id sub_6DEB58(SEL *a1)
{
  v3 = v1;
  v4 = sub_AB4C10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_6DDE0C(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    v11 = sub_AB4BE0();
    v12 = [v11 *a1];

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v13 = *v10;
    v12 = [*v10 *a1];
  }

  return v12;
}

void sub_6DECF0(uint64_t a1, char a2, SEL *a3)
{
  v5 = v3;
  v8 = sub_AB4C10();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v12);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (&v19 - v14);
  if (a2)
  {
    v16 = -1;
  }

  else
  {
    v16 = a1;
  }

  sub_6DDE0C(v5, &v19 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v15, v8);
    v17 = sub_AB4BE0();
    [v17 *a3];

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v18 = *v15;
    [*v15 *a3];
  }
}

uint64_t PlaybackIntentDescriptor.intentOptions.setter(uint64_t a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.replaceIntent.setter(uint64_t a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.autoSing.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.isSiriIntent.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.playActivityInformation.getter()
{
  v1 = v0;
  v2 = sub_AB4C10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_6DDE0C(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = sub_AB4BE0();
    v10 = MPCPlaybackIntent.playActivityInformation.getter();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = *v8;
    v10 = MPCPlaybackIntent.playActivityInformation.getter();
  }

  return v10;
}

uint64_t MPCPlaybackIntent.playActivityInformation.getter()
{
  v1 = [v0 playActivityFeatureName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_AB92A0();

  v4 = [v0 playActivityRecommendationData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_AB3260();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  sub_466A4(0, 0xF000000000000000);

  sub_9007C(v6, v8);

  sub_466A4(v6, v8);
  return v3;
}

void (*PlaybackIntentDescriptor.playActivityInformation.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = sub_AB4C10();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[6] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[7] = v8;
  v10 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[8] = v10;
  v11 = *(*(v10 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[9] = swift_coroFrameAlloc();
    v4[10] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[9] = malloc(v11);
    v4[10] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[11] = v12;
  sub_6DDE0C(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v13, v5);
    v14 = sub_AB4BE0();
    v15 = MPCPlaybackIntent.playActivityInformation.getter();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    (*(v7 + 8))(v9, v5);
  }

  else
  {
    v22 = *v13;
    v15 = MPCPlaybackIntent.playActivityInformation.getter();
    v17 = v23;
    v19 = v24;
    v21 = v25;
  }

  *v4 = v15;
  v4[1] = v17;
  v4[2] = v19;
  v4[3] = v21;
  return sub_6DF788;
}

void sub_6DF788(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  if (a2)
  {
    sub_6DDE0C(v7, v2[9]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = v2[9];
    if (EnumCaseMultiPayload == 1)
    {
      v11 = v2[6];
      v10 = v2[7];
      v12 = v2[5];
      (*(v11 + 32))(v10, v9, v12);
      sub_52C4DC(v4, v3, v6, v5);
      v13 = sub_AB4BE0();
      sub_6E05CC(v4, v3, v6, v5);
      sub_52C528(v4, v3, v6, v5);

      (*(v11 + 8))(v10, v12);
    }

    else
    {
      v20 = *v9;
      sub_52C4DC(v4, v3, v6, v5);
      sub_6E05CC(v4, v3, v6, v5);
      sub_52C528(v4, v3, v6, v5);
    }

    v22 = v2[10];
    v21 = v2[11];
    v23 = v2[9];
    v24 = v2[7];
    sub_52C528(*v2, v2[1], v2[2], v2[3]);
  }

  else
  {
    sub_6DDE0C(v7, v2[10]);
    v14 = swift_getEnumCaseMultiPayload();
    v15 = v2[10];
    if (v14 == 1)
    {
      v17 = v2[6];
      v16 = v2[7];
      v18 = v2[5];
      (*(v17 + 32))(v16, v15, v18);
      v19 = sub_AB4BE0();
      sub_6E05CC(v4, v3, v6, v5);
      sub_52C528(v4, v3, v6, v5);

      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v25 = *v15;
      sub_6E05CC(v4, v3, v6, v5);
      sub_52C528(v4, v3, v6, v5);
    }

    v22 = v2[10];
    v21 = v2[11];
    v23 = v2[9];
    v24 = v2[7];
  }

  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

uint64_t PlaybackIntentDescriptor.forceSharePlayPrompt.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.recommendationData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_466A4(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void (*MPCPlaybackIntent.playActivityInformation.modify(void *a1))(uint64_t **a1, char a2)
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
  v3[4] = v1;
  *v3 = MPCPlaybackIntent.playActivityInformation.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_6DFB80;
}

void sub_6DFB80(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    sub_52C4DC(v3, v4, v5, v6);
    sub_6E05CC(v3, v4, v5, v6);
    sub_52C528(v3, v4, v5, v6);
    v7 = *v2;
    v8 = v2[1];
    v9 = v2[2];
    v10 = v2[3];
  }

  else
  {
    sub_6E05CC(v3, v4, v5, v6);
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
  }

  sub_52C528(v7, v8, v9, v10);

  free(v2);
}

unint64_t PlaybackIntentDescriptor.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_AB4C10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = 0xD000000000000019;
  v26 = 0x8000000000B70990;
  strcpy(&v22, "intent=");
  v22._object = 0xE700000000000000;
  sub_6DDE0C(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = sub_AB4BE0();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = *v8;
  }

  v10 = [v9 description];
  v11 = sub_AB92A0();
  v13 = v12;

  v27._countAndFlagsBits = v11;
  v27._object = v13;
  sub_AB94A0(v27);

  v28._countAndFlagsBits = 8236;
  v28._object = 0xE200000000000000;
  sub_AB94A0(v28);
  sub_AB94A0(v22);

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_ABAD90(16);

  strcpy(&v22, "shuffleMode=");
  BYTE5(v22._object) = 0;
  HIWORD(v22._object) = -5120;
  v20._countAndFlagsBits = sub_6DEB58(&selRef_shuffleMode);
  LOBYTE(v20._object) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13150);
  v29._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v29);

  v30._countAndFlagsBits = 8236;
  v30._object = 0xE200000000000000;
  sub_AB94A0(v30);
  sub_AB94A0(v22);

  strcpy(&v22, "repeatMode=");
  HIDWORD(v22._object) = -352321536;
  v20._countAndFlagsBits = sub_6DEB58(&selRef_repeatMode);
  LOBYTE(v20._object) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13158);
  v31._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v31);

  v32._countAndFlagsBits = 8236;
  v32._object = 0xE200000000000000;
  sub_AB94A0(v32);
  sub_AB94A0(v22);

  strcpy(&v22, "options=");
  BYTE1(v22._object) = 0;
  WORD1(v22._object) = 0;
  HIDWORD(v22._object) = -402653184;
  v14 = type metadata accessor for PlaybackIntentDescriptor(0);
  v20._countAndFlagsBits = *(v1 + v14[5]);
  type metadata accessor for MPCPlaybackIntentOptions(0);
  v33._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v33);

  v34._countAndFlagsBits = 8236;
  v34._object = 0xE200000000000000;
  sub_AB94A0(v34);
  sub_AB94A0(v22);

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_ABAD90(19);

  v22._countAndFlagsBits = 0x206563616C706572;
  v22._object = 0xEF3D746E65746E69;
  v20._countAndFlagsBits = *(v1 + v14[6]);
  type metadata accessor for MPCPlayerTracklistReplaceIntent(0);
  v35._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v35);

  v36._countAndFlagsBits = 8236;
  v36._object = 0xE200000000000000;
  sub_AB94A0(v36);
  sub_AB94A0(v22);

  v37._object = 0x8000000000B709B0;
  v37._countAndFlagsBits = 0xD000000000000012;
  sub_AB94A0(v37);
  sub_15F84(v1 + v14[7], &v20, &qword_E130E0);
  if (v21)
  {
    sub_70DF8(&v20._countAndFlagsBits, &v22);
    sub_E8BA0(&v22, &v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E130E8);
    v20._countAndFlagsBits = sub_AB9350();
    v20._object = v15;
    v38._countAndFlagsBits = 8236;
    v38._object = 0xE200000000000000;
    sub_AB94A0(v38);
    sub_AB94A0(v20);

    __swift_destroy_boxed_opaque_existential_0(&v22);
  }

  else
  {
    sub_12E1C(&v20, &qword_E130E0);
    v39._countAndFlagsBits = 0x202C656E6F6ELL;
    v39._object = 0xE600000000000000;
    sub_AB94A0(v39);
  }

  v40._countAndFlagsBits = 0x3D726575737369;
  v40._object = 0xE700000000000000;
  sub_AB94A0(v40);
  sub_15F84(v1 + v14[8], &v20, &qword_E0EA98);
  if (v21)
  {
    sub_70DF8(&v20._countAndFlagsBits, &v22);
    v16 = v23;
    v17 = v24;
    __swift_project_boxed_opaque_existential_1(&v22, v23);
    v20._countAndFlagsBits = (*(v17 + 8))(v16, v17);
    v20._object = v18;
    v41._countAndFlagsBits = 8236;
    v41._object = 0xE200000000000000;
    sub_AB94A0(v41);
    sub_AB94A0(v20);

    __swift_destroy_boxed_opaque_existential_0(&v22);
  }

  else
  {
    sub_12E1C(&v20, &qword_E0EA98);
    v42._countAndFlagsBits = 0x6669636570736E75;
    v42._object = 0xEC0000003D646569;
    sub_AB94A0(v42);
  }

  v43._countAndFlagsBits = 41;
  v43._object = 0xE100000000000000;
  sub_AB94A0(v43);
  return v25;
}

uint64_t _s9MusicCore24PlaybackIntentDescriptorV0D4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB4C10();
  v31 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v30 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E132B8);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v30 - v18;
  v20 = *(v17 + 56);
  sub_6DDE0C(a1, &v30 - v18);
  sub_6DDE0C(a2, &v19[v20]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_6DDE0C(v19, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v31;
      v22 = *(v31 + 32);
      v22(v9, v13, v4);
      v22(v7, &v19[v20], v4);
      sub_13C80(0, &qword_E112E0);
      v23 = sub_AB4BE0();
      v24 = sub_AB4BE0();
      v25 = sub_ABA790();

      v26 = *(v21 + 8);
      v26(v7, v4);
      v26(v9, v4);
LABEL_9:
      sub_52C574(v19);
      return v25 & 1;
    }

    (*(v31 + 8))(v13, v4);
  }

  else
  {
    sub_6DDE0C(v19, v15);
    v27 = *v15;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = *&v19[v20];
      sub_13C80(0, &qword_E112E0);
      v25 = sub_ABA790();

      goto LABEL_9;
    }
  }

  sub_12E1C(v19, &qword_E132B8);
  v25 = 0;
  return v25 & 1;
}

void sub_6E05CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    v7 = sub_AB9260();

    [v4 setPlayActivityFeatureName:v7];

    if (a4 >> 60 != 15)
    {
      sub_90090(a3, a4);
      isa = sub_AB3250().super.isa;
      sub_466A4(a3, a4);
      v8 = isa;
      goto LABEL_6;
    }
  }

  else
  {
    [v4 setPlayActivityFeatureName:0];
  }

  v8 = 0;
LABEL_6:
  v10 = v8;
  [v4 setPlayActivityRecommendationData:?];
}

uint64_t sub_6E06E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6E0760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_6E0840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = a2;
  }

  return result;
}

void sub_6E08FC()
{
  type metadata accessor for PlaybackIntentDescriptor.IntentType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MPCPlaybackIntentOptions(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MPCPlayerTracklistReplaceIntent(319);
      if (v2 <= 0x3F)
      {
        sub_AFE18(319, &unk_E131C8, &qword_E130E8);
        if (v3 <= 0x3F)
        {
          sub_AFE18(319, &qword_E0EBF0, &unk_E0EBF8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_6E0A04()
{
  result = sub_13C80(319, &qword_E12D18);
  if (v1 <= 0x3F)
  {
    result = sub_AB4C10();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t PlaybackTimeObserver.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PlaybackTimeObserver.init(name:)(a1, a2);
  return v4;
}

uint64_t PlaybackTimeObserver.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 32) = 1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = xmmword_AF89D0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_13C80(0, &qword_E132C8);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = CADisplayLink.init(handler:)(sub_6E0CD0, v6);
  swift_unownedRelease();
  v8 = [objc_opt_self() mainRunLoop];
  [v7 addToRunLoop:v8 forMode:NSRunLoopCommonModes];

  [v7 setPaused:1];
  [v7 setPreferredFramesPerSecond:30];
  v9 = *(v3 + 128);
  *(v3 + 128) = v7;

  return v3;
}

uint64_t sub_6E0C98()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_6E0CD0()
{
  swift_unownedRetainStrong();
  sub_6E0D10();
}

void sub_6E0D10()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 104);
  if (v2 == 2)
  {
    if (qword_E0CEB8 != -1)
    {
      swift_once();
    }

    v3 = sub_AB4BC0();
    __swift_project_value_buffer(v3, qword_E72038);

    v4 = sub_AB4BA0();
    v5 = sub_AB9F50();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_500C84(*(v1 + 16), *(v1 + 24), v26);
      __swift_destroy_boxed_opaque_existential_0(v7);
    }

    v8 = *(v1 + 48);
    if (v8 != 1)
    {
LABEL_19:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v26[0] = v1;
      sub_6E1C38();
      sub_AB3980();

      return;
    }

LABEL_14:
    *(v1 + 40) = 0;
    *(v1 + 48) = v8;
    return;
  }

  if (v2)
  {
    if (qword_E0CEB8 != -1)
    {
      swift_once();
    }

    v9 = sub_AB4BC0();
    __swift_project_value_buffer(v9, qword_E72038);

    v10 = sub_AB4BA0();
    v11 = sub_AB9F50();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_500C84(*(v1 + 16), *(v1 + 24), v26);
      __swift_destroy_boxed_opaque_existential_0(v13);
    }

    v8 = *(v1 + 48);
    if (v8 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v14 = *(v0 + 80);
  v15 = *(v0 + 96);
  if (v14 <= 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v16 = *(v0 + 88);
    v17 = *(v0 + 56);
    sub_AB32C0();
    v19 = v16 + (v18 - v17) * v15;
    if (v19 >= v14)
    {
      v19 = v14;
    }

    v20 = fmax(v19, 0.0) / v14;
  }

  sub_6E1CDC(*&v20, 0);
  sub_AB32C0();
  v23 = v22;
  swift_beginAccess();
  v24 = vabdd_f64(v23, *(v0 + 152));
  v25 = fabsf(v15);
  if (v25 <= 1.0)
  {
    v25 = 1.0;
  }

  if (v24 >= (1.0 / v25))
  {
    *(v0 + 152) = v23;
  }
}

uint64_t PlaybackTimeObserver.deinit()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9MusicCore20PlaybackTimeObserver___observationRegistrar;
  v3 = sub_AB39D0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t PlaybackTimeObserver.__deallocating_deinit()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9MusicCore20PlaybackTimeObserver___observationRegistrar;
  v3 = sub_AB39D0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

void sub_6E12CC()
{
  if (qword_E0CEB8 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E72038);

  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v42[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_500C84(*(v0 + 16), *(v0 + 24), v42);
    _os_log_impl(&dword_0, v2, v3, "📺 %{public}s: Updating DisplayLink…", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = sub_AB4BA0();
  v7 = sub_AB9F50();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = *(v0 + 120);

    _os_log_impl(&dword_0, v6, v7, "   — isBackgrounded: %{BOOL,public}d", v8, 8u);
  }

  else
  {
  }

  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67240192;
    swift_beginAccess();
    *(v11 + 4) = *(v0 + 32);

    _os_log_impl(&dword_0, v9, v10, "   — automaticallyUpdates: %{BOOL,public}d", v11, 8u);
  }

  else
  {
  }

  swift_beginAccess();
  if (*(v0 + 32) != 1 || (*(v0 + 120) & 1) != 0 || (swift_beginAccess(), v12 = *(v0 + 104), v12 == 2))
  {
    v13 = sub_AB4BA0();
    v14 = sub_AB9F50();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "   — Null Snapshot", v15, 2u);
    }

    v16 = 1;
  }

  else
  {
    v24 = *(v0 + 96);
    v25 = *(v0 + 88);
    v40 = *(v0 + 72);
    v41 = *(v0 + 56);
    v26 = sub_AB4BA0();
    v27 = sub_AB9F50();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47 = v29;
      *v28 = 136446210;
      v42[1] = v40;
      v42[0] = v41;
      v43 = v25;
      v44 = v24;
      v45 = v12 & 0x101;
      v46 = BYTE2(v12) & 1;
      type metadata accessor for MPCPlayerItemDurationSnapshot(0);
      v30 = sub_AB9350();
      v32 = sub_500C84(v30, v31, &v47);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_0, v26, v27, "   — Snapshot: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
    }

    v33 = v24 & 0x7FFFFFFF;
    v34 = sub_AB4BA0();
    v35 = sub_AB9F50();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67240192;
      *(v36 + 4) = v12 & 1;
      _os_log_impl(&dword_0, v34, v35, "   — isLiveContent: %{BOOL,public}d", v36, 8u);
    }

    v37 = sub_AB4BA0();
    v38 = sub_AB9F50();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 67240192;
      *(v39 + 4) = v33 == 0;
      _os_log_impl(&dword_0, v37, v38, "   — isRateNull: %{BOOL,public}d", v39, 8u);
    }

    v16 = v12 | (v33 == 0);
  }

  v17 = sub_AB4BA0();
  v18 = sub_AB9F50();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67240192;
    *(v19 + 4) = v16 & 1;
    _os_log_impl(&dword_0, v17, v18, " -> should pause: %{BOOL,public}d", v19, 8u);
  }

  v20 = *(v0 + 128);
  if (v20)
  {
    [v20 setPaused:v16 & 1];
  }

  swift_beginAccess();
  if (!*(v0 + 112))
  {
    v21 = sub_AB4BA0();
    v22 = sub_AB9F30();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "No window scene associated! This could lead to a major power regression when the app is backgrounded!", v23, 2u);
    }
  }
}

void PlaybackTimeObserver.automaticallyUpdates.setter(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  *(v1 + 32) = a1;
  if (v4 != v3)
  {
    sub_6E12CC();
  }
}

void (*PlaybackTimeObserver.automaticallyUpdates.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 32);
  return sub_6E1A84;
}

void sub_6E1A84(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  if (v3 != v4)
  {
    sub_6E12CC();
  }

  free(v1);
}

uint64_t PlaybackTimeObserver.effectiveElapsedTime.getter()
{
  swift_getKeyPath();
  sub_6E1C38();
  sub_AB3990();

  return *(v0 + 40);
}

uint64_t sub_6E1B4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_6E1C38();
  sub_AB3990();

  v5 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_6E1C38()
{
  result = qword_E132D0;
  if (!qword_E132D0)
  {
    type metadata accessor for PlaybackTimeObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E132D0);
  }

  return result;
}

uint64_t type metadata accessor for PlaybackTimeObserver()
{
  result = qword_E13300;
  if (!qword_E13300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6E1CDC(uint64_t result, char a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 40) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 40) = *&result;
    *(v2 + 48) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_6E1C38();
  sub_AB3980();
  *&result = COERCE_DOUBLE();
  return result;
}

void sub_6E1DE4()
{
  v1 = v0;
  if (qword_E0CEB8 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, qword_E72038);

  v3 = sub_AB4BA0();
  v4 = sub_AB9F50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E133E0);
    v7 = sub_AB9350();
    v9 = sub_500C84(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Received new snapshot=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  sub_AB32C0();
  v11 = v10;
  swift_beginAccess();
  *(v1 + 152) = v11;
  sub_6E0D10();
  sub_6E12CC();
}

__n128 PlaybackTimeObserver.durationSnapshot.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v4;
  result = *(v1 + 88);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void PlaybackTimeObserver.durationSnapshot.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 88) = *(a1 + 32);
  *(v1 + 104) = *(a1 + 48);
  sub_6E1DE4();
}

void (*PlaybackTimeObserver.durationSnapshot.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_6E20C4;
}

void sub_6E20C4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_6E1DE4();
  }
}

void sub_6E20F8(id a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 112);
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_13;
  }

  if (a1)
  {
    sub_13C80(0, &qword_E133D8);
    v5 = v4;
    a1 = a1;
    v6 = sub_ABA790();

    if (v6)
    {
      return;
    }

    v4 = *(v2 + 112);
    if (!v4)
    {
LABEL_13:
      v26 = qword_E0CEB8;
      v27 = a1;
      if (v26 != -1)
      {
        swift_once();
      }

      v28 = sub_AB4BC0();
      __swift_project_value_buffer(v28, qword_E72038);
      v29 = v27;

      v30 = sub_AB4BA0();
      v31 = sub_AB9F50();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v32 = 136446466;
        *(v32 + 4) = sub_500C84(*(v2 + 16), *(v2 + 24), &v40);
        *(v32 + 12) = 2082;
        v33 = v29;
        v34 = [v33 description];
        v35 = sub_AB92A0();
        v37 = v36;

        v38 = sub_500C84(v35, v37, &v40);

        *(v32 + 14) = v38;
        _os_log_impl(&dword_0, v30, v31, "%{public}s: Removed windowScene=%{public}s", v32, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v39 = *(v2 + 120);
      *(v2 + 120) = 0;
      if (v39 == 1)
      {
        sub_6E12CC();
      }

      *(v2 + 136) = 0;

      v25 = 0;
      goto LABEL_21;
    }
  }

  v7 = qword_E0CEB8;
  v8 = v4;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_AB4BC0();
  __swift_project_value_buffer(v9, qword_E72038);
  v10 = v8;

  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_500C84(*(v2 + 16), *(v2 + 24), &v40);
    *(v13 + 12) = 2082;
    v14 = v10;
    v15 = [v14 description];
    v16 = sub_AB92A0();
    v18 = v17;

    v19 = sub_500C84(v16, v18, &v40);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_0, v11, v12, "%{public}s: Received windowScene=%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v20 = [v10 activationState] == &dword_0 + 2;
  v21 = *(v2 + 120);
  *(v2 + 120) = v20;
  if (v20 != v21)
  {
    sub_6E12CC();
  }

  v22 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v23 = v10;
  *(v2 + 136) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidEnterBackgroundNotification, v4, 1, 1, sub_6E2AC0, v22);

  v24 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v25 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneWillEnterForegroundNotification, v4, 1, 1, sub_6E2AC8, v24);
LABEL_21:
  *(v2 + 144) = v25;
}

uint64_t sub_6E2650()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 120);
    *(result + 120) = 1;
    if ((v1 & 1) == 0)
    {
      sub_6E12CC();
    }
  }

  return result;
}

uint64_t sub_6E26B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 120);
    *(result + 120) = 0;
    if (v1 == 1)
    {
      sub_6E12CC();
    }
  }

  return result;
}

void *PlaybackTimeObserver.windowScene.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

void PlaybackTimeObserver.windowScene.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
  v4 = a1;
  sub_6E20F8(v3);
}

void (*PlaybackTimeObserver.windowScene.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  swift_beginAccess();
  v5 = *(v1 + 112);
  *(v4 + 24) = v5;
  v6 = v5;
  return sub_6E285C;
}

void sub_6E285C(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v6 = *(*a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = *v5;
  v8 = v4;
  v9 = v8;
  if (a2)
  {
    v10 = v8;
    sub_6E20F8(v7);

    v7 = *v5;
  }

  else
  {
    sub_6E20F8(v7);
  }

  free(v3);
}

uint64_t sub_6E2934()
{
  result = sub_AB39D0();
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

uint64_t sub_6E2A0C()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E72038);
  __swift_project_value_buffer(v0, qword_E72038);
  return sub_AB4BB0();
}

uint64_t sub_6E2A88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_6E2AD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
}

uint64_t static Player.CommandIssuer<>.reflection(of:)(uint64_t a1)
{
  if (a1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F4D8);
  }

  return sub_AB9380();
}

uint64_t Player.CommandIssuerIdentity.init(_:)(uint64_t a1)
{
  v2 = _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
  v3 = sub_AB31C0();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

{
  if (!a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F4D8);
  }

  return sub_AB9380();
}

uint64_t Player.CommandIssuerIdentity.init(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E133E8);
  sub_6E2D18();
  v0 = sub_AB9140();

  return v0;
}

uint64_t sub_6E2CC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_6E2D18()
{
  result = qword_E133F0;
  if (!qword_E133F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E133E8);
    sub_6E2D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E133F0);
  }

  return result;
}

unint64_t sub_6E2D9C()
{
  result = qword_E133F8;
  if (!qword_E133F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E13400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E133F8);
  }

  return result;
}

uint64_t Player.CommandIssuerIdentity.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13408);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF85F0;
  *(v6 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v6 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  sub_E8BA0(a1, v6 + 72);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E133E8);
  sub_6E2D18();
  v7 = sub_AB9140();

  return v7;
}

uint64_t Player.CommandIssuer.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13408);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF85F0;
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v7 + 32));
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v3, a2);
  sub_E8BA0(a1, v7 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E133E8);
  sub_6E2D18();
  v9 = sub_AB9140();

  return v9;
}

uint64_t static Player.CommandIssuer<>.url(_:)(uint64_t a1)
{
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t static Player.CommandIssuer<>.combining(_:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E133E8);
  sub_6E2D18();
  v0 = sub_AB9140();

  return v0;
}

uint64_t Player.CommandIssuer<>.commandIssuingIdentifier.getter()
{
  sub_AB96D0();
  return v1;
}

{
  sub_ABADB0();
  return v1;
}

unint64_t sub_6E3224(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_ABAD90(29);

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  sub_AB94A0(v9);
  v10._countAndFlagsBits = 0x3A656C746974202CLL;
  v10._object = 0xE800000000000000;
  sub_AB94A0(v10);
  v11._countAndFlagsBits = a3;
  v11._object = a4;
  sub_AB94A0(v11);
  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  sub_AB94A0(v12);
  return 0xD000000000000010;
}

unint64_t sub_6E32F0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  sub_ABAD90(29);

  v24 = 0xD000000000000010;
  v25 = 0x8000000000B70AE0;
  v26._countAndFlagsBits = a1;
  v26._object = a2;
  sub_AB94A0(v26);
  v27._countAndFlagsBits = 0x3A656C746974202CLL;
  v27._object = 0xE800000000000000;
  sub_AB94A0(v27);
  v28._countAndFlagsBits = a3;
  v28._object = a4;
  sub_AB94A0(v28);
  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  sub_AB94A0(v29);
  v13 = 0xD000000000000010;
  if (a7[7])
  {
    v22 = a5;
    v14 = a7[2];
    v15 = a7[3];
    v17 = *a7;
    v16 = a7[1];
    sub_ABAD90(26);

    strcpy(&v23, "Alert(title:");
    BYTE5(v23._object) = 0;
    HIWORD(v23._object) = -5120;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v17 = 0;
      v18 = 0xE000000000000000;
    }

    v30._countAndFlagsBits = v17;
    v30._object = v18;
    sub_AB94A0(v30);

    v31._countAndFlagsBits = 0x67617373656D202CLL;
    v31._object = 0xEA00000000003A65;
    sub_AB94A0(v31);
    if (v15)
    {
      v19 = v14;
    }

    else
    {
      v19 = 0;
    }

    if (v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = 0xE000000000000000;
    }

    v32._countAndFlagsBits = v19;
    v32._object = v20;
    sub_AB94A0(v32);

    sub_AB94A0(v23);

    sub_17654(v22);

    sub_6E352C(a7);
    return v24;
  }

  else
  {

    sub_17654(a5);
  }

  return v13;
}

uint64_t sub_6E352C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F9B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6E35BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_15F84(a3, v22 - v9, &qword_E0E340);
  v11 = sub_AB9990();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_12E1C(v10, &qword_E0E340);
  }

  else
  {
    sub_AB9980();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_AB98B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_AB93A0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_12E1C(a3, &qword_E0E340);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_12E1C(a3, &qword_E0E340);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_6E3868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_15F84(a3, v22 - v9, &qword_E0E340);
  v11 = sub_AB9990();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_12E1C(v10, &qword_E0E340);
  }

  else
  {
    sub_AB9980();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_AB98B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_AB93A0() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E08);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_12E1C(a3, &qword_E0E340);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_12E1C(a3, &qword_E0E340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E08);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_6E3B24(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_ABAFB0();

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13D88);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_522338(a1);
    if (v5)
    {
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

char *Player.state<A>(for:)(void (*a1)(char *, uint64_t, uint64_t))
{
  v3 = sub_ABA0A0();
  type metadata accessor for MusicItemState();

  v4 = sub_6FB254(a1, v3, v1);

  return v4;
}

uint64_t sub_6E3C90()
{
  sub_AB7C10();
  sub_6FC5D8(&qword_E13D90, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50);
  sub_36A00(&qword_E13DA0, &unk_E11A50);
  return sub_ABABB0();
}

uint64_t sub_6E3D7C()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E72050);
  __swift_project_value_buffer(v0, qword_E72050);
  return sub_AB4BB0();
}

uint64_t Player.configuration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine);
  v2 = [v1 playerID];
  v3 = sub_AB92A0();

  sub_6BDA80(v1);
  v4 = [v1 fallbackPlaybackIntent];
  return v3;
}

id Player.audioAnalyzer.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine) audioAnalyzer];

  return v1;
}

void *Player.sampleReceiver.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for SampleReceiver();
    v1 = swift_allocObject();
    v1[3] = 0;
    v1[4] = 0;
    v1[2] = 0;
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t (*Player.sampleReceiver.modify(void *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = Player.sampleReceiver.getter();
  return sub_6E3F74;
}

uint64_t Player.__allocating_init()()
{
  v0 = swift_allocObject();
  Player.init()();
  return v0;
}

char *Player.init()()
{
  v1 = v0;
  v104 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v2 - 8);
  v115 = &v91 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F510);
  __chkstk_darwin(v4 - 8);
  v114 = &v91 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13420);
  v106 = *(v6 - 8);
  v107 = v6;
  __chkstk_darwin(v6);
  v105 = &v91 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13428);
  v110 = *(v8 - 8);
  v111 = v8;
  __chkstk_darwin(v8);
  v108 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13430);
  v112 = *(v10 - 8);
  v113 = v10;
  __chkstk_darwin(v10);
  v109 = &v91 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8);
  v101 = *(v12 - 8);
  v102 = v12;
  __chkstk_darwin(v12);
  v100 = &v91 - v13;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13440);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v91 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13448);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v16 = &v91 - v15;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13090);
  v17 = *(v99 - 8);
  __chkstk_darwin(v99);
  v19 = &v91 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13458);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v91 - v22;
  *(v0 + 2) = 0;
  *(v0 + 3) = 0;
  v103 = objc_opt_self();
  v24 = [v103 systemRoute];
  v25 = [v24 isDeviceRoute];
  v26 = objc_opt_self();
  v27 = v26;
  if (v25)
  {
    if (qword_E0CE90 != -1)
    {
      swift_once();
    }

    v28 = sub_AB9260();
    v29 = [v27 systemMusicPathWithRoute:v24 playerID:v28];
  }

  else
  {
    v29 = [v26 pathWithRoute:v24 bundleID:0 playerID:0];
  }

  v30 = OBJC_IVAR____TtC9MusicCore6Player__path;
  aBlock = v29;
  sub_13C80(0, &qword_E0E978);
  sub_AB54D0();
  (*(v21 + 32))(&v1[v30], v23, v20);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver] = 0;
  v31 = OBJC_IVAR____TtC9MusicCore6Player__nowPlaying;
  aBlock = 0;
  v32 = v19;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13480);
  sub_AB54D0();
  v33 = *(v17 + 32);
  v34 = v99;
  v92 = v33;
  v33(&v1[v31], v19, v99);
  v35 = OBJC_IVAR____TtC9MusicCore6Player__nowPlayingPath;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13490);
  sub_AB54D0();
  (*(v94 + 32))(&v1[v35], v16, v95);
  v36 = OBJC_IVAR____TtC9MusicCore6Player__sharePlayTogetherSession;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E134A0);
  v37 = v96;
  sub_AB54D0();
  (*(v97 + 32))(&v1[v36], v37, v98);
  v38 = OBJC_IVAR____TtC9MusicCore6Player__isHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  v39 = v100;
  sub_AB54D0();
  v40 = v102;
  v41 = *(v101 + 32);
  v41(&v1[v38], v39, v102);
  v42 = OBJC_IVAR____TtC9MusicCore6Player__isEligibleForHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  sub_AB54D0();
  v41(&v1[v42], v39, v40);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken] = 0;
  v43 = &v1[OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration];
  if (qword_E0CEC8 != -1)
  {
    swift_once();
  }

  v44 = qword_E13410;
  *v43 = qword_E13410;
  *(v43 + 1) = v44;
  *(v43 + 2) = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_routingController] = 0;
  v1[OBJC_IVAR____TtC9MusicCore6Player_engineState] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady] = _swiftEmptyArrayStorage;
  v45 = OBJC_IVAR____TtC9MusicCore6Player__playerResponse;
  aBlock = 0;
  v46 = v44;
  sub_AB54D0();
  v92(&v1[v45], v32, v34);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_playerPathInvalidationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = 0;
  v47 = OBJC_IVAR____TtC9MusicCore6Player_failingPlayerPathTimers;
  *&v1[v47] = sub_52AED0(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = 0;
  v48 = OBJC_IVAR____TtC9MusicCore6Player_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v1[v48] = UnfairLock.init()();
  if (qword_E0CE90 != -1)
  {
    swift_once();
  }

  v49 = qword_E71FE8;
  v50 = unk_E71FF0;
  v51 = objc_allocWithZone(MPCPlaybackEngine);
  v52 = sub_AB9260();
  v53 = [v51 initWithPlayerID:v52];

  v54 = v53;
  sub_6BDB68(v49, v50);

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine] = v54;
  [v54 becomeActive];
  v55 = OBJC_IVAR____TtC9MusicCore6Player_engine;
  v56 = *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine];

  v57 = sub_6BDA80(v56);
  LOBYTE(v56) = sub_473110(4u, v57);

  if (v56)
  {
    v58 = *&v1[v55];
    v120 = sub_6E5258;
    v121 = 0;
    aBlock = _NSConcreteStackBlock;
    v117 = 1107296256;
    v118 = sub_3FC190;
    v119 = &block_descriptor_15_4;
    v59 = _Block_copy(&aBlock);
    v60 = v58;
    [v60 restoreStateWithCompletion:v59];
    _Block_release(v59);
  }

  v61 = v103;
  v62 = [v103 systemRoute];
  v63 = [objc_allocWithZone(MPVolumeControllerRouteDataSource) initWithGroupRoute:v62 outputDeviceRoute:0];
  v64 = [objc_opt_self() sharedController];
  [v64 setActiveDataSource:v63];

  v65 = swift_allocObject();
  v66 = v104;
  *(v65 + 16) = v1;
  *(v65 + 24) = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_6FB2EC;
  *(v67 + 24) = v65;
  v120 = sub_6FB32C;
  v121 = v67;
  aBlock = _NSConcreteStackBlock;
  v117 = 1107296256;
  v118 = sub_780C4;
  v119 = &block_descriptor_195;
  v68 = _Block_copy(&aBlock);

  [v61 getActiveRouteWithTimeout:v68 completion:1.0];

  _Block_release(v68);
  v69 = MPAVRoutingControllerActiveSystemRouteDidChangeNotification;
  v70 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v69, 0, 1, 1, sub_6FE224, v70);

  v71 = MRAVEndpointGroupSessionInfoDidChangeNotification;
  v72 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v71, 0, 1, 1, sub_6FB34C, v72);

  v73 = MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification;
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = v73;

  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v75, 0, 1, 1, sub_6FB384, v74);

  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13520);
  v76 = v105;
  sub_AB54E0();
  swift_endAccess();
  sub_36A00(&unk_E13528, &qword_E13420);
  v77 = v107;
  v78 = v108;
  sub_AB5570();
  (*(v106 + 8))(v76, v77);
  sub_13C80(0, &qword_E103C0);
  v79 = sub_ABA150();
  aBlock = v79;
  v80 = sub_ABA130();
  v81 = v114;
  (*(*(v80 - 8) + 56))(v114, 1, 1, v80);
  sub_36A00(&qword_E13538, &qword_E13428);
  sub_6FB3BC();
  v82 = v109;
  v83 = v111;
  sub_AB5590();
  sub_12E1C(v81, &qword_E0F510);

  (*(v110 + 8))(v78, v83);
  sub_36A00(&qword_E13548, &unk_E13430);
  v84 = v113;
  v85 = sub_AB55C0();
  (*(v112 + 8))(v82, v84);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = v85;

  v86 = v115;
  sub_AB9960();
  v87 = sub_AB9990();
  (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
  sub_AB9940();

  v88 = sub_AB9930();
  v89 = swift_allocObject();
  v89[2] = v88;
  v89[3] = &protocol witness table for MainActor;
  v89[4] = v1;
  sub_50D600(0, 0, v86, &unk_B220B8, v89);

  sub_12E1C(v86, &qword_E0E340);
  return v1;
}

void sub_6E5258(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (qword_E0CEC0 != -1)
    {
      swift_once();
    }

    v1 = sub_AB4BC0();
    __swift_project_value_buffer(v1, qword_E72050);
    swift_errorRetain();
    oslog = sub_AB4BA0();
    v2 = sub_AB9F30();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v9 = v4;
      *v3 = 136446210;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E60);
      v5 = sub_AB9350();
      v7 = sub_500C84(v5, v6, &v9);

      *(v3 + 4) = v7;
      _os_log_impl(&dword_0, oslog, v2, "Restoration Failed with error=%{public}s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_6E5400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_AB9940();
  *(v4 + 24) = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_6E5498, v6, v5);
}

uint64_t sub_6E5498()
{

  if (qword_E0CF28 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, static Logger.sharePlayTogether);
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Got MRAVEndpointGroupSessionInfoDidChange notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    sub_6F4E10();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_6E55C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_AB9990();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  sub_AB9940();
  v10 = sub_AB9930();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = Strong;
  sub_5E89D8(0, 0, v7, a4, v11);
}

uint64_t sub_6E5700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_AB9940();
  *(v4 + 24) = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_6E5798, v6, v5);
}

uint64_t sub_6E5798()
{

  if (qword_E0CF28 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, static Logger.sharePlayTogether);
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Got MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    sub_6F4E10();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_6E58C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 64);
  *a2 = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v2;
}

void sub_6E5910(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  v3 = [v2 sharedRestrictionsMonitor];
  [v3 setMaximumMovieRatingForAgeGate:v1];

  v4 = [v2 sharedRestrictionsMonitor];
  [v4 setMaximumTVShowRatingForAgeGate:v1];
}

uint64_t sub_6E59B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_AB9940();
  v4[4] = sub_AB9930();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_6E5A68;

  return Player.startEngineIfNeeded()();
}

uint64_t sub_6E5A68()
{

  v1 = sub_AB98B0();

  return _swift_task_switch(sub_6E5BA4, v1, v0);
}

uint64_t sub_6E5BA4()
{

  sub_6F4E10();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.startEngineIfNeeded()()
{
  v1[16] = v0;
  v1[17] = sub_AB9940();
  v1[18] = sub_AB9930();
  v3 = sub_AB98B0();
  v1[19] = v3;
  v1[20] = v2;

  return _swift_task_switch(sub_6E5CA8, v3, v2);
}

uint64_t sub_6E5CA8()
{
  v1 = v0[16];
  v2 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  if (*(v1 + v2) == 2)
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
    if (!*(v1 + v2))
    {
      *(v1 + v2) = 1;
      sub_6F1420(0);
    }

    v3 = sub_AB9930();
    v0[21] = v3;
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_AB98B0();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    return _swift_task_switch(sub_6E5DC4, v4, v6);
  }
}

uint64_t sub_6E5DC4()
{
  v1 = v0[16];
  v0[2] = v0;
  v0[3] = sub_6E5F44;
  v2 = swift_continuation_init();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady;
  swift_beginAccess();
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_5069FC(0, v5[2] + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_5069FC((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = sub_6FB4DC;
  v9[5] = v3;
  *(v1 + v4) = v5;
  swift_endAccess();

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_6E5F44()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);

  return _swift_task_switch(sub_6E604C, v2, v1);
}

uint64_t sub_6E604C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.engineDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [*(v1 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:a1];
  return swift_unknownObjectRelease();
}

id (*Player.engineDelegate.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_6E61B8;
}

id sub_6E61B8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + OBJC_IVAR____TtC9MusicCore6Player_engine);
    v7 = *(v5 + 24);

    return [v6 setDelegate:v7];
  }

  return result;
}

uint64_t sub_6E621C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_6E629C(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = v1;
  sub_AB5520();
  return sub_6E6318();
}

uint64_t sub_6E6318()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_6F1B40();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v6 = v19;
  v7 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path;
  v8 = *&v5[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path];
  *&v5[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v19;
  sub_13C80(0, &qword_E0E978);
  v9 = v6;
  if ((sub_ABA790() & 1) == 0)
  {
    v10 = *&v5[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
    v11 = [v10 request];
    if (v11)
    {
      v12 = *&v5[v7];
      v13 = v11;
      [v11 setPlayerPath:v12];
    }

    [v10 setNeedsReloadForSignificantRequestChange];
  }

  v14 = sub_AB9990();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_AB9940();

  v15 = sub_AB9930();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v1;
  sub_5E89D8(0, 0, v4, &unk_B22920, v16);
}

uint64_t sub_6E653C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_AB9940();
  *(v4 + 24) = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_6E65D4, v6, v5);
}

uint64_t sub_6E65D4()
{

  sub_6F4E10();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.path.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_6E66AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13DC8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13458);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t Player.nowPlayingObserver.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver);
  }

  else
  {
    v3 = v0;
    type metadata accessor for Player.NowPlayingObserver(0);
    swift_allocObject();

    v2 = sub_6FB50C();

    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t Player.NowPlayingObserver.__allocating_init(player:)()
{
  swift_allocObject();
  v0 = sub_6FB50C();

  return v0;
}

uint64_t sub_6E693C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15EA0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13090);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_6E6AF0(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_AB5520();
}

uint64_t sub_6E6B7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13DC0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13448);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_6E6D1C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  if (!a1)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1;
  sub_AB5510();

  v8 = v17;
  if (v17)
  {
    type metadata accessor for SharePlayTogetherSession(0);
    v9 = sub_ABA790();

    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v10 = sub_AB9990();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_AB9940();
  v11 = v7;

  v12 = sub_AB9930();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v2;
  v13[5] = v11;
  sub_5E89D8(0, 0, v6, &unk_B22868, v13);

LABEL_7:

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v17)
  {
    v14 = v17[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost];
  }

  else
  {
    v14 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v17) = v14;

  return sub_AB5520();
}

uint64_t sub_6E6F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_AB9940();
  v5[10] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_6E7028, v7, v6);
}

uint64_t sub_6E7028()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v1 = v0[2];
  if (v1)
  {
    if (SharePlayTogetherSession.isEquivalent(to:)(v0[2]))
    {
      v2 = v0[9];
      v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
      swift_beginAccess();
      *(v2 + v3) = _swiftEmptyArrayStorage;

      v4 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
      swift_beginAccess();
      *(v2 + v4) = _swiftEmptyArrayStorage;

      goto LABEL_6;
    }
  }

  SharePlayTogetherSession.cleanup(notifyObservers:)(1);
LABEL_6:
  v5 = v0[1];

  return v5();
}

uint64_t sub_6E7178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13DB8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13440);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_6E7354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B60);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_6E7508@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_6E7598()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t sub_6E761C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_6E7688(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B60);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

id Player.supportsDelegation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v0 = [v8 route];

  if (!v0)
  {
    return 0;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_12;
  }

  result = [v1 endpointObject];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result externalDevice];

  if (!v4 || (v5 = [v4 deviceInfo], v4, !v5))
  {
LABEL_12:

    return 0;
  }

  v6 = [v5 deviceClass];

  return (v6 == (&dword_4 + 3) || v6 == &dword_4);
}

void *Player.isInAnySharePlaySession.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (!v2 || (v0 = [v2 isSharedListeningSession], v2, (v0 & 1) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    if (!v2)
    {
      return 0;
    }

    result = *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session];
    if (!result)
    {
      __break(1u);
      return result;
    }

    if ([result isPlaceholder])
    {

      return 0;
    }

    if (v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost] == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510();

      return (v2 > 0);
    }
  }

  return &dword_0 + 1;
}

void Player.sharePlayTogether(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v4 + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken);
  *(v4 + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken) = a1;
  v8 = a1;

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = a2;
  v10[5] = a3;
  v13[4] = sub_6FBAA4;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_6E7D30;
  v13[3] = &block_descriptor_63_4;
  v11 = _Block_copy(v13);
  v12 = v8;
  sub_307CC(a2);

  MRGroupSessionJoinSessionWithToken();
  _Block_release(v11);
}

uint64_t sub_6E7C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken;
    v12 = *(result + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken);
    if (v12)
    {
      sub_13C80(0, &qword_E13E38);
      v13 = a5;
      v14 = v12;
      v15 = sub_ABA790();

      if (v15)
      {
        v16 = *(v10 + v11);
        *(v10 + v11) = 0;

        if (a6)
        {
          a6(a3);
        }
      }
    }
  }

  return result;
}

void sub_6E7D30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_AB92A0();
  v7 = v6;

  v8 = a3;
  v4(v5, v7, a3);
}

void Player.requestSharePlayTogether(completion:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v4 = [v12[0] route];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 endpointObject];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      sub_13C80(0, &qword_E103C0);
      v8 = sub_ABA150();
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = a1;
      v10[4] = a2;
      v12[4] = sub_6FBAF8;
      v12[5] = v10;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_6E8288;
      v12[3] = &block_descriptor_70_1;
      v11 = _Block_copy(v12);
      sub_307CC(a1);

      [v7 requestGroupSessionWithQueue:v8 completion:v11];
      _Block_release(v11);

      v4 = v8;
    }
  }
}

uint64_t sub_6E7FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = sub_AB9990();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    sub_AB9940();

    sub_307CC(a5);

    swift_errorRetain();
    v17 = sub_AB9930();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v15;
    v18[5] = a5;
    v18[6] = a6;
    v18[7] = a1;
    v18[8] = a2;
    v18[9] = a3;
    sub_5E89D8(0, 0, v13, &unk_B22900, v18);
  }

  return result;
}

uint64_t sub_6E8160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_AB9940();
  v8[8] = sub_AB9930();
  v10 = sub_AB98B0();

  return _swift_task_switch(sub_6E8208, v10, v9);
}

uint64_t sub_6E8208()
{
  v1 = v0[3];

  sub_6F4E10();
  if (v1)
  {
    (v0[3])(v0[5], v0[6], v0[7]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_6E8288(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t Player.getNowPlaying()()
{
  v1[17] = v0;
  v1[18] = sub_AB9940();
  v1[19] = sub_AB9930();
  v3 = sub_AB98B0();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(sub_6E83BC, v3, v2);
}

uint64_t sub_6E83BC()
{
  v1 = sub_6F3694();
  v2 = *&v1[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];
  *(v0 + 176) = v2;
  v3 = v2;

  v4 = sub_AB9930();
  *(v0 + 184) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_AB98B0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(sub_6E8474, v5, v7);
}

uint64_t sub_6E8474()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[22];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_6E85D0;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_6FBB04;
  v1[15] = v8;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_151E0;
  v1[13] = &block_descriptor_76_1;
  v9 = _Block_copy(v4);

  [v6 performWithCompletion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return _swift_continuation_await(v3);
}

uint64_t sub_6E85D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = v1[20];
    v4 = v1[21];
    v5 = sub_6E8928;
  }

  else
  {

    v1[25] = v1[16];
    v3 = v1[20];
    v4 = v1[21];
    v5 = sub_6E8720;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_6E8720()
{
  v1 = *(v0 + 200);

  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = [v2 playerPath];
    v4 = [v3 isSystemMusicPath];

    if (v4 || (v5 = [v2 playerPath], v6 = objc_msgSend(v5, "representedBundleID"), v5, !v6))
    {
      v7 = *(v0 + 200);
    }

    else
    {

      v7 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = v7;

    sub_AB5520();
    v8 = [v2 playerPath];
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = 0;

    sub_AB5520();
    v8 = 0;
  }

  v9 = *(v0 + 176);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = v8;
  v10 = v8;

  sub_AB5520();

  v11 = *(v0 + 8);
  v12 = *(v0 + 200);

  return v11(v12);
}

uint64_t sub_6E8928()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6E8994(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    swift_allocError();
    *v4 = a2;
    swift_errorRetain();

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(a3 + 64) + 40) = a1;
    v6 = a1;

    return swift_continuation_throwingResume();
  }
}

void sub_6E8A58()
{
  v1 = sub_6F3694();
  v2 = *&v1[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];

  v3 = (v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v5 = *v3;
  v6 = v4;

  v8 = sub_6FBB0C(v7);
  v10 = v9;

  v11 = [v2 playingItemProperties];
  if (v11 && (v12 = v11, v13 = [v11 containsPropertySet:*v3], v12, v13) && (v14 = objc_msgSend(v2, "queueSectionProperties")) != 0)
  {
    v15 = v14;
    v16 = [v14 containsPropertySet:v3[1]];

    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 1;
  }

  if ([v2 tracklistRange] != v8 || (v17 & 1) != 0 || v18 != v10)
  {
    [v2 setPlayingItemProperties:*v3];
    [v2 setQueueItemProperties:*v3];
    [v2 setQueueSectionProperties:v3[1]];
    [v2 setTracklistRange:{v8, v10}];
    v19 = sub_6F1B40();
    v20 = *&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];

    [v20 setPlayingItemProperties:*v3];
    v21 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
    swift_beginAccess();
    if (*(v0 + v21) == 2)
    {
      v22 = *(*(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource) + OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller);
      v23 = v22;
      v24 = &selRef_setNeedsReloadForSignificantRequestChange;
      if (!v17)
      {
        v24 = &selRef_setNeedsReload;
      }

      [v22 *v24];
    }
  }
}

id Player.nowPlayingConfiguration.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *v1;
  v5 = v3;

  return v2;
}

void Player.nowPlayingConfiguration.setter(void *a1, void *a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  v10 = a1;
  v11 = a2;

  sub_6E8A58();
}

void (*Player.nowPlayingConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_6E8E3C;
}

void sub_6E8E3C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_6E8A58();
  }
}

unint64_t sub_6E8E9C(Swift::UInt a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if (!*(v6 + 16) || (result = sub_2EC75C(a1, a2), (v8 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v12 = 1;
    goto LABEL_6;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v12 = v10;
LABEL_6:
    result = sub_5262F4(v12, a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t Player.NowPlayingConfiguration.BadCountedSet.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB90A0();
  if (v11)
  {
    (*(v4 + 16))(v6, a1, v3);
    v7 = 1;
LABEL_4:
    v10 = v7;
    v11 = 0;
    sub_AB9080();
    return sub_AB90B0();
  }

  v8 = v10;
  result = (*(v4 + 16))(v6, a1, v3);
  v7 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

Swift::UInt sub_6E90E0(Swift::UInt result, Swift::UInt a2)
{
  v3 = v2;
  v4 = *v2;
  if (*(v4 + 16))
  {
    v5 = a2;
    v6 = result;
    result = sub_2EC75C(result, a2);
    if (v7)
    {
      v8 = *(*(v4 + 56) + 8 * result);
      v9 = v8 - 1;
      if (__OFSUB__(v8, 1))
      {
        __break(1u);
        goto LABEL_11;
      }

      if (v9 > 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v3;
        result = sub_5262F4(v9, v6, v5, isUniquelyReferenced_nonNull_native);
        *v3 = v15;
        return result;
      }

      result = sub_2EC75C(v6, v5);
      if (v11)
      {
        v5 = result;
        v12 = swift_isUniquelyReferenced_nonNull_native();
        v13 = *v3;
        v14 = *v3;
        if (v12)
        {
LABEL_8:
          result = sub_6F9F00(v5, v13);
          *v3 = v13;
          return result;
        }

LABEL_11:
        sub_527A88();
        v13 = v14;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t Player.NowPlayingConfiguration.BadCountedSet.remove(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_AB90A0();
  if (v10 != 1)
  {
    v8 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      (*(v4 + 16))(v6, a1, v3);
      if (v8 < 1)
      {
        v9 = 0;
        v10 = 1;
      }

      else
      {
        v9 = v8;
        v10 = 0;
      }

      sub_AB9080();
      return sub_AB90B0();
    }
  }

  return result;
}

double Player.NowPlayingConfiguration.BadCountedSet.makeIterator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_6FA6F8(a1, &v7);
  v10[0] = v7;
  v10[1] = v8;
  v11 = v9;
  v3 = sub_AB9060();
  (*(*(v3 - 8) + 16))(&v6, v10, v3);
  result = *&v7;
  v5 = v8;
  *a2 = v7;
  *(a2 + 16) = v5;
  *(a2 + 32) = v9;
  return result;
}

double sub_6E93D4@<D0>(uint64_t a1@<X8>)
{
  sub_6FA6F8(*v1, &v7);
  v10[0] = v7;
  v10[1] = v8;
  v11 = v9;
  v3 = sub_AB9060();
  (*(*(v3 - 8) + 16))(&v6, v10, v3);

  result = *&v7;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_6E949C()
{
  v0 = sub_6FB2B0();

  return v0;
}

BOOL Player.canPerform(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_6FA3F4(v4, v1, v2, v3);
}

uint64_t Player.canPerform(anyOf:)(uint64_t a1)
{
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v5)
  {
    v2 = swift_conformsToProtocol2();
    v3 = 0;
    if (v2 && a1)
    {
      v3 = (*(v2 + 16))(v5, a1, v2);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t Player.performWhenAvailable(_:options:issuer:timeout:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v7 + 376) = v6;
  *(v7 + 368) = a6;
  *(v7 + 352) = a4;
  *(v7 + 360) = a5;
  *(v7 + 608) = a3;
  *(v7 + 336) = a1;
  *(v7 + 344) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15EA0);
  *(v7 + 400) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13560);
  *(v7 + 408) = v8;
  v9 = *(v8 - 8);
  *(v7 + 416) = v9;
  *(v7 + 424) = *(v9 + 64);
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = type metadata accessor for Player.CommandIssuance();
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = sub_AB9940();
  *(v7 + 496) = sub_AB9930();
  v11 = sub_AB98B0();
  *(v7 + 504) = v11;
  *(v7 + 512) = v10;

  return _swift_task_switch(sub_6E9854, v11, v10);
}

uint64_t sub_6E9854()
{
  v76 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 336);
  v3 = v2[3];
  v4 = v2[4];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v3);
  if (sub_6FA3F4(v5, v1, v3, v4))
  {
    v6 = *(v0 + 336);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12E70);
    v7 = swift_allocObject();
    *(v0 + 576) = v7;
    *(v7 + 16) = xmmword_AF4EC0;
    sub_E8BA0(v6, v7 + 32);
    v8 = swift_task_alloc();
    *(v0 + 584) = v8;
    *v8 = v0;
    v8[1] = sub_6EA68C;
    v9 = *(v0 + 352);
    v10 = *(v0 + 360);
    v11 = *(v0 + 608);
    v12 = *(v0 + 344);

    return Player.perform(_:options:issuer:)(v7, v12, v11, v9, v10);
  }

  else
  {
    sub_15F84(*(v0 + 360), v0 + 80, &qword_E0EA98);
    v14 = *(v0 + 104);
    if (v14)
    {
      v15 = *(v0 + 112);
      __swift_project_boxed_opaque_existential_1((v0 + 80), *(v0 + 104));
      v16 = (*(v15 + 8))(v14, v15);
      v14 = v17;
      __swift_destroy_boxed_opaque_existential_0(v0 + 80);
    }

    else
    {
      sub_12E1C(v0 + 80, &qword_E0EA98);
      v16 = 0;
    }

    v18 = *(v0 + 480);
    v19 = *(v0 + 448);
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v20 = (v18 + *(v19 + 20));
    *v20 = v16;
    v20[1] = v14;
    if (qword_E0CEC0 != -1)
    {
      swift_once();
    }

    v21 = sub_AB4BC0();
    *(v0 + 520) = __swift_project_value_buffer(v21, qword_E72050);
    v22 = sub_AB4BA0();
    v23 = sub_AB9F50();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "╭ ⏱️ Await for command", v24, 2u);
    }

    v26 = *(v0 + 472);
    v25 = *(v0 + 480);

    sub_6FBBDC(v25, v26);
    v27 = sub_AB4BA0();
    v28 = sub_AB9F50();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 472);
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v75 = v32;
      *v31 = 136446210;
      v33 = Player.CommandIssuance.description.getter();
      v35 = v34;
      sub_6FBC40(v30);
      v36 = sub_500C84(v33, v35, &v75);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_0, v27, v28, "| issuance=%{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    else
    {

      sub_6FBC40(v30);
    }

    v37 = *(v0 + 352);
    v38 = sub_AB4BA0();
    v39 = sub_AB9F50();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 608);
      v42 = *(v0 + 344);
      v41 = *(v0 + 352);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v75 = v44;
      *v43 = 136446210;
      v45 = Player.CommandOptions.description.getter(v42, v40, v41);
      v47 = sub_500C84(v45, v46, &v75);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_0, v38, v39, "╰ options=%{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
    }

    sub_E8BA0(*(v0 + 336), v0 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13568);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v0 + 160);
    }

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13090);
    sub_AB54E0();
    swift_endAccess();
    v48 = *(v0 + 432);
    v49 = *(v0 + 440);
    v50 = *(v0 + 416);
    v71 = *(v0 + 424);
    v51 = *(v0 + 408);
    v68 = v51;
    v69 = v48;
    v52 = *(v0 + 384);
    v53 = *(v0 + 376);
    v70 = *(v0 + 360);
    v74 = *(v0 + 352);
    v73 = *(v0 + 608);
    v54 = *(v0 + 336);
    v72 = *(v0 + 344);
    sub_36A00(&qword_E13570, &unk_E15EA0);
    sub_AB5480();
    v55 = sub_AB9990();
    *(v0 + 528) = v55;
    v56 = *(v55 - 8);
    v57 = *(v56 + 56);
    *(v0 + 536) = v57;
    *(v0 + 544) = (v56 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v57(v52, 1, 1, v55);
    (*(v50 + 16))(v48, v49, v51);
    sub_E8BA0(v54, v0 + 200);
    sub_15F84(v70, v0 + 240, &qword_E0EA98);
    v58 = v37;

    v59 = sub_AB9930();
    v60 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v61 = (v71 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v61 + 47) & 0xFFFFFFFFFFFFFFF8;
    v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    *(v64 + 16) = v59;
    *(v64 + 24) = &protocol witness table for MainActor;
    (*(v50 + 32))(v64 + v60, v69, v68);
    sub_70DF8((v0 + 200), v64 + v61);
    *(v64 + v62) = v53;
    v65 = v64 + v63;
    *v65 = v72;
    *(v65 + 8) = v73;
    *(v65 + 16) = v74;
    v66 = v64 + ((v63 + 31) & 0xFFFFFFFFFFFFFFF8);
    v67 = *(v0 + 256);
    *v66 = *(v0 + 240);
    *(v66 + 16) = v67;
    *(v66 + 32) = *(v0 + 272);
    *(v0 + 552) = sub_6E3868(0, 0, v52, &unk_B22338, v64);

    return _swift_task_switch(sub_6E9FD8, 0, 0);
  }
}

uint64_t sub_6E9FD8()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 41;
  v5 = v0[69];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[48];
  v9 = v1[46];
  v1[2] = v2;
  v1[7] = v4;
  v1[3] = sub_6EA114;
  v10 = swift_continuation_init();
  v6(v8, 1, 1, v7);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = v9;
  v11[6] = v5;

  sub_6E3868(0, 0, v8, &unk_B22348, v11);

  return _swift_continuation_await(v3);
}

uint64_t sub_6EA114()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 560) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = v1[63];
    v4 = v1[64];
    v5 = sub_6EA478;
  }

  else
  {
    v1[71] = v1[41];
    v3 = v1[63];
    v4 = v1[64];
    v5 = sub_6EA238;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_6EA238()
{
  v25 = v0;
  v1 = v0[60];
  v2 = v0[58];

  sub_6FBBDC(v1, v2);
  v3 = sub_AB4BA0();
  v4 = sub_AB9F50();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[60];
  v7 = v0[58];
  v8 = v0[55];
  v10 = v0[51];
  v9 = v0[52];
  if (v5)
  {
    v23 = v0[51];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    v21 = v8;
    v22 = v6;
    v13 = Player.CommandIssuance.description.getter();
    v15 = v14;
    sub_6FBC40(v7);
    v16 = sub_500C84(v13, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v3, v4, "⏱️✅ Command became available (%{public}s)", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);

    (*(v9 + 8))(v21, v23);
    v17 = v22;
  }

  else
  {

    sub_6FBC40(v7);
    (*(v9 + 8))(v8, v10);
    v17 = v6;
  }

  sub_6FBC40(v17);
  v18 = v0[71];

  v19 = v0[1];

  return v19(v18);
}

uint64_t sub_6EA478()
{
  v20 = v0;
  v1 = v0[60];
  v2 = v0[57];

  sub_6FBBDC(v1, v2);
  v3 = sub_AB4BA0();
  v4 = sub_AB9F30();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[57];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v9 = Player.CommandIssuance.description.getter();
    v11 = v10;
    sub_6FBC40(v6);
    v12 = sub_500C84(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_0, v3, v4, "⌛️❌ Timed out waiting for command (%{public}s)", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {

    sub_6FBC40(v6);
  }

  v13 = v0[60];
  v14 = v0[55];
  v15 = v0[51];
  v16 = v0[52];
  swift_willThrow();
  (*(v16 + 8))(v14, v15);
  sub_6FBC40(v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_6EA68C(uint64_t a1)
{
  v3 = *v2;
  v3[74] = a1;
  v3[75] = v1;

  if (v1)
  {
    v4 = v3[63];
    v5 = v3[64];
    v6 = sub_6EA904;
  }

  else
  {

    v4 = v3[63];
    v5 = v3[64];
    v6 = sub_6EA7AC;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_6EA7AC()
{
  v1 = *(v0 + 592);

  if (v1 >> 62)
  {
    result = sub_ABB060();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_ABAE20();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 592) + 32);
  }

LABEL_9:

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_6EA904()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6EA9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 192) = v14;
  *(v8 + 200) = v15;
  *(v8 + 328) = a8;
  *(v8 + 176) = a6;
  *(v8 + 184) = a7;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  *(v8 + 152) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13DE8);
  *(v8 + 208) = v9;
  *(v8 + 216) = *(v9 - 8);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = sub_AB9940();
  *(v8 + 240) = sub_AB9930();
  v11 = sub_AB98B0();
  *(v8 + 248) = v11;
  *(v8 + 256) = v10;

  return _swift_task_switch(sub_6EAAF8, v11, v10);
}

uint64_t sub_6EAAF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13560);
  sub_AB5470();
  v0[33] = sub_AB9930();
  v1 = sub_36A00(&qword_E13DF0, &qword_E13DE8);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_6EAC00;
  v3 = v0[26];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 17, v3, v1);
}

uint64_t sub_6EAC00()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_AB98B0();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_6EB130;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_AB98B0();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_6EAD98;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_6EAD98()
{

  v0[36] = v0[17];
  v1 = v0[31];
  v2 = v0[32];

  return _swift_task_switch(sub_6EAE04, v1, v2);
}

uint64_t sub_6EAE04()
{
  v1 = *(v0 + 288);
  if (v1)
  {
    if (v1 == &dword_0 + 1)
    {
      (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

      **(v0 + 152) = 0;

      v2 = *(v0 + 8);

      return v2();
    }

    sub_E8BA0(*(v0 + 168), v0 + 56);
    v4 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E20);
    v5 = swift_dynamicCast();
    v6 = *(v0 + 288);
    if (v5)
    {
      sub_70DF8((v0 + 96), v0 + 16);
      v7 = *(v0 + 40);
      v8 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
      v9 = (*(v8 + 24))(v4, v7, v8);
      sub_D3144(v6);
      if (v9)
      {
        v10 = *(v0 + 168);

        __swift_destroy_boxed_opaque_existential_0(v0 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12E70);
        v11 = swift_allocObject();
        *(v0 + 296) = v11;
        *(v11 + 16) = xmmword_AF4EC0;
        sub_E8BA0(v10, v11 + 32);
        v12 = swift_task_alloc();
        *(v0 + 304) = v12;
        *v12 = v0;
        v12[1] = sub_6EB1BC;
        v13 = *(v0 + 192);
        v14 = *(v0 + 200);
        v15 = *(v0 + 328);
        v16 = *(v0 + 184);

        return Player.perform(_:options:issuer:)(v11, v16, v15, v13, v14);
      }

      sub_D3144(*(v0 + 288));
      __swift_destroy_boxed_opaque_existential_0(v0 + 16);
    }

    else
    {
      sub_D3144(*(v0 + 288));
      sub_D3144(v6);
      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      sub_12E1C(v0 + 96, &qword_E13E28);
    }
  }

  *(v0 + 264) = sub_AB9930();
  v17 = sub_36A00(&qword_E13DF0, &qword_E13DE8);
  v18 = swift_task_alloc();
  *(v0 + 272) = v18;
  *v18 = v0;
  v18[1] = sub_6EAC00;
  v19 = *(v0 + 208);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 136, v19, v17);
}

uint64_t sub_6EB130()
{
  *(v0 + 144) = *(v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_6EB1BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v5 = *(v3 + 256);
  v6 = *(v3 + 248);
  if (v1)
  {
    v7 = sub_6EB450;
  }

  else
  {
    v7 = sub_6EB31C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_6EB31C()
{
  v1 = *(v0 + 312);

  if (v1 >> 62)
  {
    result = sub_ABB060();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = *(v0 + 288);

    sub_D3144(v5);
    v3 = 0;
    goto LABEL_9;
  }

  result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_ABAE20();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 312) + 32);
  }

  v4 = *(v0 + 288);

  sub_D3144(v4);
LABEL_9:
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  **(v0 + 152) = v3;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_6EB450()
{
  v1 = v0[36];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];

  sub_D3144(v1);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t Player.perform(_:options:issuer:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 112) = a3;
  *(v6 + 16) = a1;
  sub_AB9940();
  *(v6 + 56) = sub_AB9930();
  v8 = sub_AB98B0();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return _swift_task_switch(sub_6EB594, v8, v7);
}

{
  *(v6 + 272) = a5;
  *(v6 + 280) = v5;
  *(v6 + 256) = a2;
  *(v6 + 264) = a4;
  *(v6 + 512) = a3;
  *(v6 + 248) = a1;
  v7 = type metadata accessor for Player.CommandIssuance();
  *(v6 + 288) = v7;
  v8 = *(v7 - 8);
  *(v6 + 296) = v8;
  *(v6 + 304) = *(v8 + 64);
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = sub_AB9940();
  *(v6 + 400) = sub_AB9930();
  v10 = sub_AB98B0();
  *(v6 + 408) = v10;
  *(v6 + 416) = v9;

  return _swift_task_switch(sub_6EBA68, v10, v9);
}

uint64_t sub_6EB594()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12E70);
  v2 = swift_allocObject();
  *(v0 + 80) = v2;
  *(v2 + 16) = xmmword_AF4EC0;
  sub_E8BA0(v1, v2 + 32);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_6EB674;
  v4 = *(v0 + 40);
  v5 = *(v0 + 112);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);

  return Player.perform(_:options:issuer:)(v2, v6, v5, v7, v4);
}

uint64_t sub_6EB674(uint64_t a1)
{
  v3 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v4 = v3[8];
    v5 = v3[9];
    v6 = sub_6EB880;
  }

  else
  {

    v4 = v3[8];
    v5 = v3[9];
    v6 = sub_6EB790;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_6EB790()
{
  v1 = *(v0 + 96);

  if (v1 >> 62)
  {
    result = sub_ABB060();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_ABAE20();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 96) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_6EB880()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6EBA68()
{
  v77 = v0;
  v1 = *(*(v0 + 248) + 16);
  *(v0 + 424) = v1;
  if (v1)
  {
    sub_15F84(*(v0 + 272), v0 + 128, &qword_E0EA98);
    v2 = *(v0 + 152);
    if (v2)
    {
      v3 = *(v0 + 160);
      __swift_project_boxed_opaque_existential_1((v0 + 128), *(v0 + 152));
      v4 = (*(v3 + 8))(v2, v3);
      v2 = v5;
      __swift_destroy_boxed_opaque_existential_0(v0 + 128);
    }

    else
    {
      sub_12E1C(v0 + 128, &qword_E0EA98);
      v4 = 0;
    }

    v8 = *(v0 + 384);
    v9 = *(v0 + 288);
    v10 = *(v0 + 248);
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v11 = (v8 + *(v9 + 20));
    *v11 = v4;
    v11[1] = v2;
    *(v0 + 513) = sub_6EE740(v10) & 1;
    if (v1 == 1)
    {
      v12 = 0x646E616D6D6F63;
    }

    else
    {
      v12 = 0x73646E616D6D6F63;
    }

    if (v1 == 1)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xE800000000000000;
    }

    if (qword_E0CEC0 != -1)
    {
      swift_once();
    }

    v14 = sub_AB4BC0();
    *(v0 + 432) = __swift_project_value_buffer(v14, qword_E72050);

    v15 = sub_AB4BA0();
    v16 = sub_AB9F50();

    v75 = v12;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v76 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_500C84(v12, v13, &v76);
      _os_log_impl(&dword_0, v15, v16, "╭ Will perform %s…", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    sub_6FBBDC(*(v0 + 384), *(v0 + 376));
    v19 = sub_AB4BA0();
    v20 = sub_AB9F50();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 376);
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v76 = v24;
      *v23 = 136446210;
      v25 = Player.CommandIssuance.description.getter();
      v27 = v26;
      sub_6FBC40(v22);
      v28 = sub_500C84(v25, v27, &v76);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_0, v19, v20, "| issuance=%{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
    }

    else
    {

      sub_6FBC40(v22);
    }

    v29 = sub_AB4BA0();
    v30 = sub_AB9F50();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v76 = v32;
      *v31 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12EA0);
      v33 = sub_AB9770();
      v35 = sub_500C84(v33, v34, &v76);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, v29, v30, "| %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    v36 = *(v0 + 264);
    v37 = sub_AB4BA0();
    v38 = sub_AB9F50();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 512);
      v41 = *(v0 + 256);
      v40 = *(v0 + 264);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v76 = v43;
      *v42 = 136446210;
      v44 = Player.CommandOptions.description.getter(v41, v39, v40);
      v46 = sub_500C84(v44, v45, &v76);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_0, v37, v38, "╰ options=%{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    v47 = *(v0 + 280);
    v48 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
    swift_beginAccess();
    if (*(v47 + v48) != 2)
    {

      v49 = sub_AB4BA0();
      v50 = sub_AB9F50();

      v74 = v47;
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v76 = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_500C84(v75, v13, &v76);
        _os_log_impl(&dword_0, v49, v50, "╭ 🕛 Pausing execution for %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
      }

      sub_6FBBDC(*(v0 + 384), *(v0 + 368));
      v53 = sub_AB4BA0();
      v54 = sub_AB9F50();
      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 368);
      if (v55)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v76 = v58;
        *v57 = 136446210;
        v59 = Player.CommandIssuance.description.getter();
        v61 = v60;
        sub_6FBC40(v56);
        v62 = sub_500C84(v59, v61, &v76);

        *(v57 + 4) = v62;
        _os_log_impl(&dword_0, v53, v54, "| issuance=%{public}s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
      }

      else
      {

        sub_6FBC40(v56);
      }

      v63 = sub_AB4BA0();
      v64 = sub_AB9F50();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v76 = v66;
        *v65 = 136446210;
        if (*(v74 + v48) > 1u)
        {
          if (*(v74 + v48) == 2)
          {
            v67 = 0xA900000000000079;
            v68 = 0x6461655220859CE2;
          }

          else
          {
            v67 = 0xAE0064656C6C6174;
            v68 = 0x53208FB8EFA09AE2;
          }
        }

        else if (*(v74 + v48))
        {
          v67 = 0xAD0000676E697472;
          v68 = 0x61745320809A9FF0;
        }

        else
        {
          v67 = 0xA700000000000000;
          v68 = 0x66664F208C9DE2;
        }

        v69 = sub_500C84(v68, v67, &v76);

        *(v65 + 4) = v69;
        _os_log_impl(&dword_0, v63, v64, "| engine state=%{public}s)", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);
      }

      v70 = sub_AB4BA0();
      v71 = sub_AB9F50();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_0, v70, v71, "╰ Awaiting on engine to be ready", v72, 2u);
      }
    }

    v73 = swift_task_alloc();
    *(v0 + 440) = v73;
    *v73 = v0;
    v73[1] = sub_6EC474;

    return Player.startEngineIfNeeded()();
  }

  else
  {

    v6 = *(v0 + 8);

    return v6(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_6EC474()
{
  v1 = *v0;

  v2 = *(v1 + 416);
  v3 = *(v1 + 408);

  return _swift_task_switch(sub_6EC594, v3, v2);
}

uint64_t sub_6EC594()
{
  v112 = v0;
  v1 = *(v0 + 264);
  if (v1)
  {
    v2 = 0xE800000000000000;
    v3 = objc_allocWithZone(MPCPlayerRequest);
    v4 = v1;
    v5 = [v3 init];
    *(v0 + 448) = v5;

    v6 = sub_AB4BA0();
    v7 = sub_AB9F50();

    if (os_log_type_enabled(v6, v7))
    {
      if (*(v0 + 424) == 1)
      {
        v8 = 0x646E616D6D6F63;
      }

      else
      {
        v8 = 0x73646E616D6D6F63;
      }

      if (*(v0 + 424) == 1)
      {
        v2 = 0xE700000000000000;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v111[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_500C84(v8, v2, v111);
      _os_log_impl(&dword_0, v6, v7, "╭ 🔊 Resolving specified route for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    sub_6FBBDC(*(v0 + 384), *(v0 + 360));
    v11 = sub_AB4BA0();
    v12 = sub_AB9F50();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 360);
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v111[0] = v16;
      *v15 = 136446210;
      v17 = Player.CommandIssuance.description.getter();
      v19 = v18;
      sub_6FBC40(v14);
      v20 = sub_500C84(v17, v19, v111);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_0, v11, v12, "| issuance=%{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
    }

    else
    {

      sub_6FBC40(v14);
    }

    v40 = *(v0 + 264);
    v41 = sub_AB4BA0();
    v42 = sub_AB9F50();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 264);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v111[0] = v45;
      *v44 = 136446210;
      v46 = v43;
      v47 = [v46 description];
      v48 = sub_AB92A0();
      v50 = v49;

      v51 = sub_500C84(v48, v50, v111);

      *(v44 + 4) = v51;
      _os_log_impl(&dword_0, v41, v42, "╰ 🔊 Route=%{public}s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    v52 = *(v0 + 264);
    v53 = objc_opt_self();
    v54 = qword_E0CE90;
    v55 = v52;
    if (v54 != -1)
    {
      swift_once();
    }

    v56 = *(v0 + 280);
    v57 = *(v0 + 264);
    v58 = sub_AB9260();
    v59 = [v53 systemMusicPathWithRoute:v57 playerID:v58];

    [v5 setPlayerPath:v59];
    v60 = OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
    swift_beginAccess();
    [v5 setPlayingItemProperties:*(v56 + v60)];
    v61 = sub_AB9930();
    *(v0 + 456) = v61;
    if (v61)
    {
      swift_getObjectType();
      v62 = sub_AB98B0();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0;
    }

    return _swift_task_switch(sub_6ED24C, v62, v64);
  }

  else
  {
    if (*(v0 + 513))
    {
      v21 = 232;
    }

    else
    {
      v21 = 216;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v22 = *(v0 + v21);
    *(v0 + 480) = v22;
    if (v22)
    {
      v23 = 0xE800000000000000;

      v24 = v22;
      v25 = sub_AB4BA0();
      v26 = sub_AB9F50();

      if (os_log_type_enabled(v25, v26))
      {
        if (*(v0 + 424) == 1)
        {
          v27 = 0x646E616D6D6F63;
        }

        else
        {
          v27 = 0x73646E616D6D6F63;
        }

        if (*(v0 + 424) == 1)
        {
          v23 = 0xE700000000000000;
        }

        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v111[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_500C84(v27, v23, v111);
        _os_log_impl(&dword_0, v25, v26, "╭ Performing %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
      }

      sub_6FBBDC(*(v0 + 384), *(v0 + 344));
      v30 = sub_AB4BA0();
      v31 = sub_AB9F50();
      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 344);
      if (v32)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v111[0] = v35;
        *v34 = 136446210;
        v36 = Player.CommandIssuance.description.getter();
        v38 = v37;
        sub_6FBC40(v33);
        v39 = sub_500C84(v36, v38, v111);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_0, v30, v31, "| issuance=%{public}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
      }

      else
      {

        sub_6FBC40(v33);
      }

      v79 = sub_AB4BA0();
      v80 = sub_AB9F50();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = *(v0 + 513);
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v111[0] = v83;
        *v82 = 136446210;
        if (v81)
        {
          v84 = 0xD000000000000014;
        }

        else
        {
          v84 = 0x5220726579616C50;
        }

        if (v81)
        {
          v85 = 0x8000000000B70B70;
        }

        else
        {
          v85 = 0xEF65736E6F707365;
        }

        v86 = sub_500C84(v84, v85, v111);

        *(v82 + 4) = v86;
        _os_log_impl(&dword_0, v79, v80, "| on=%{public}s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v83);
      }

      v87 = v24;
      v88 = sub_AB4BA0();
      v89 = sub_AB9F50();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v111[0] = v91;
        *v90 = 136446210;
        v92 = [v87 playerPath];
        v93 = [v92 description];
        v94 = sub_AB92A0();
        v96 = v95;

        v97 = sub_500C84(v94, v96, v111);

        *(v90 + 4) = v97;
        _os_log_impl(&dword_0, v88, v89, "╰ playerPath=%{public}s", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v91);
      }

      v98 = *(v0 + 336);
      v99 = *(v0 + 288);
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v100 = (v98 + *(v99 + 20));
      *v100 = 0;
      v100[1] = 0;
      v101 = swift_task_alloc();
      *(v0 + 488) = v101;
      *v101 = v0;
      v101[1] = sub_6EDEA4;
      v102 = *(v0 + 336);
      v103 = *(v0 + 512);
      v105 = *(v0 + 248);
      v104 = *(v0 + 256);

      return sub_701DFC(v105, v102, v104, v103);
    }

    else
    {
      v65 = *(v0 + 384);
      v66 = *(v0 + 312);

      v67 = 0xE700000000000000;
      sub_6FBBDC(v65, v66);

      v68 = sub_AB4BA0();
      v69 = sub_AB9F30();

      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 312);
      if (v70)
      {
        if (*(v0 + 424) == 1)
        {
          v72 = 0x646E616D6D6F63;
        }

        else
        {
          v67 = 0xE800000000000000;
          v72 = 0x73646E616D6D6F63;
        }

        v73 = swift_slowAlloc();
        v111[0] = swift_slowAlloc();
        *v73 = 136315394;
        v74 = sub_500C84(v72, v67, v111);

        *(v73 + 4) = v74;
        *(v73 + 12) = 2082;
        v75 = Player.CommandIssuance.description.getter();
        v77 = v76;
        sub_6FBC40(v71);
        v78 = sub_500C84(v75, v77, v111);

        *(v73 + 14) = v78;
        _os_log_impl(&dword_0, v68, v69, "╭ ❌ Unavailable %s\n| issuance=%{public}s\n╰ error=nil MPCPlayerResponse", v73, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_6FBC40(v71);
      }

      v106 = *(v0 + 248);
      sub_6FC02C();
      swift_allocError();
      *v107 = v106;
      *(v107 + 40) = 1;
      swift_willThrow();
      v108 = *(v0 + 384);

      sub_6FBC40(v108);

      v109 = *(v0 + 8);

      return v109();
    }
  }
}

uint64_t sub_6ED24C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 30;
  v23 = v0[56];
  v6 = v0[53];
  v7 = v0[48];
  v8 = v0[44];
  v11 = v0 + 37;
  v9 = v0[37];
  v10 = v11[1];
  v21 = v1[33];
  v22 = v3;
  if (v6 == 1)
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  if (v6 == 1)
  {
    v13 = 0x646E616D6D6F63;
  }

  else
  {
    v13 = 0x73646E616D6D6F63;
  }

  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_6ED478;
  v14 = swift_continuation_init();
  sub_6FBBDC(v7, v8);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v12;
  sub_6FE074(v8, v17 + v15, type metadata accessor for Player.CommandIssuance);
  *(v17 + v16) = v21;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v1[14] = sub_6FC190;
  v1[15] = v17;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_151E0;
  v1[13] = &block_descriptor_105_1;
  v18 = _Block_copy(v4);

  v19 = v21;

  [v23 performWithCompletion:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();

  return _swift_continuation_await(v22);
}

uint64_t sub_6ED478()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 464) = v2;
  if (v2)
  {

    swift_willThrow();

    v3 = v1[51];
    v4 = v1[52];
    v5 = sub_6EDD98;
  }

  else
  {

    v1[59] = v1[30];
    v3 = v1[51];
    v4 = v1[52];
    v5 = sub_6ED5E0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_6ED5E0()
{
  v67 = v0;
  v1 = *(v0 + 264);

  v2 = *(v0 + 472);
  *(v0 + 480) = v2;
  if (v2)
  {
    v3 = 0xE800000000000000;

    v4 = v2;
    v5 = sub_AB4BA0();
    v6 = sub_AB9F50();

    if (os_log_type_enabled(v5, v6))
    {
      if (*(v0 + 424) == 1)
      {
        v7 = 0x646E616D6D6F63;
      }

      else
      {
        v7 = 0x73646E616D6D6F63;
      }

      if (*(v0 + 424) == 1)
      {
        v3 = 0xE700000000000000;
      }

      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v66[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_500C84(v7, v3, v66);
      _os_log_impl(&dword_0, v5, v6, "╭ Performing %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    sub_6FBBDC(*(v0 + 384), *(v0 + 344));
    v10 = sub_AB4BA0();
    v11 = sub_AB9F50();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 344);
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v66[0] = v15;
      *v14 = 136446210;
      v16 = Player.CommandIssuance.description.getter();
      v18 = v17;
      sub_6FBC40(v13);
      v19 = sub_500C84(v16, v18, v66);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_0, v10, v11, "| issuance=%{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {

      sub_6FBC40(v13);
    }

    v34 = sub_AB4BA0();
    v35 = sub_AB9F50();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 513);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v66[0] = v38;
      *v37 = 136446210;
      if (v36)
      {
        v39 = 0xD000000000000014;
      }

      else
      {
        v39 = 0x5220726579616C50;
      }

      if (v36)
      {
        v40 = 0x8000000000B70B70;
      }

      else
      {
        v40 = 0xEF65736E6F707365;
      }

      v41 = sub_500C84(v39, v40, v66);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_0, v34, v35, "| on=%{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
    }

    v42 = v4;
    v43 = sub_AB4BA0();
    v44 = sub_AB9F50();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v66[0] = v46;
      *v45 = 136446210;
      v47 = [v42 playerPath];
      v48 = [v47 description];
      v49 = sub_AB92A0();
      v51 = v50;

      v52 = sub_500C84(v49, v51, v66);

      *(v45 + 4) = v52;
      _os_log_impl(&dword_0, v43, v44, "╰ playerPath=%{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
    }

    v53 = *(v0 + 336);
    v54 = *(v0 + 288);
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v55 = (v53 + *(v54 + 20));
    *v55 = 0;
    v55[1] = 0;
    v56 = swift_task_alloc();
    *(v0 + 488) = v56;
    *v56 = v0;
    v56[1] = sub_6EDEA4;
    v57 = *(v0 + 336);
    v58 = *(v0 + 512);
    v60 = *(v0 + 248);
    v59 = *(v0 + 256);

    return sub_701DFC(v60, v57, v59, v58);
  }

  else
  {
    v20 = *(v0 + 384);
    v21 = *(v0 + 312);

    v22 = 0xE700000000000000;
    sub_6FBBDC(v20, v21);

    v23 = sub_AB4BA0();
    v24 = sub_AB9F30();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 312);
    if (v25)
    {
      if (*(v0 + 424) == 1)
      {
        v27 = 0x646E616D6D6F63;
      }

      else
      {
        v22 = 0xE800000000000000;
        v27 = 0x73646E616D6D6F63;
      }

      v28 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_500C84(v27, v22, v66);

      *(v28 + 4) = v29;
      *(v28 + 12) = 2082;
      v30 = Player.CommandIssuance.description.getter();
      v32 = v31;
      sub_6FBC40(v26);
      v33 = sub_500C84(v30, v32, v66);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_0, v23, v24, "╭ ❌ Unavailable %s\n| issuance=%{public}s\n╰ error=nil MPCPlayerResponse", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_6FBC40(v26);
    }

    v62 = *(v0 + 248);
    sub_6FC02C();
    swift_allocError();
    *v63 = v62;
    *(v63 + 40) = 1;
    swift_willThrow();
    v64 = *(v0 + 384);

    sub_6FBC40(v64);

    v65 = *(v0 + 8);

    return v65();
  }
}

uint64_t sub_6EDD98()
{
  v1 = *(v0 + 264);

  sub_6FBC40(*(v0 + 384));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6EDEA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[62] = a1;
  v4[63] = v1;

  sub_6FBC40(v3[42]);
  v5 = v3[52];
  v6 = v3[51];
  if (v1)
  {
    v7 = sub_6EE430;
  }

  else
  {
    v7 = sub_6EE000;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_6EE000()
{
  v34 = v0;

  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[53];
  if (v3)
  {
    v5 = v4 == 1;
    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }

    if (v5)
    {
      v7 = 0x646E616D6D6F63;
    }

    else
    {
      v7 = 0x73646E616D6D6F63;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136315138;
    v10 = sub_500C84(v7, v6, &v33);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_0, v1, v2, "╭ ✅ Successfully performed %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
  }

  sub_6FBBDC(v0[48], v0[40]);
  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[40];
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136446210;
    v17 = Player.CommandIssuance.description.getter();
    v19 = v18;
    sub_6FBC40(v14);
    v20 = sub_500C84(v17, v19, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v11, v12, "| issuance=%{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {

    sub_6FBC40(v14);
  }

  v21 = sub_AB4BA0();
  v22 = sub_AB9F50();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v0[60];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33 = v25;
    *v24 = 136446210;
    sub_13C80(0, &qword_E13590);
    v26 = sub_AB9770();
    v28 = sub_500C84(v26, v27, &v33);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_0, v21, v22, "╰ statuses=%{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    v29 = v0[60];
  }

  sub_6FBC40(v0[48]);
  v32 = v0[62];

  v30 = v0[1];

  return v30(v32);
}

uint64_t sub_6EE430()
{
  v23 = v0;
  v1 = v0[48];
  v2 = v0[41];

  v3 = 0xE800000000000000;
  sub_6FBBDC(v1, v2);

  swift_errorRetain();
  v4 = sub_AB4BA0();
  v5 = sub_AB9F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[63];
    v7 = v0[41];
    if (v0[53] == 1)
    {
      v3 = 0xE700000000000000;
      v8 = 0x646E616D6D6F63;
    }

    else
    {
      v8 = 0x73646E616D6D6F63;
    }

    v9 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v9 = 136315650;
    v10 = sub_500C84(v8, v3, v22);

    *(v9 + 4) = v10;
    *(v9 + 12) = 2082;
    v11 = Player.CommandIssuance.description.getter();
    v13 = v12;
    sub_6FBC40(v7);
    v14 = sub_500C84(v11, v13, v22);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2082;
    v0[28] = v6;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v15 = sub_AB9350();
    v17 = sub_500C84(v15, v16, v22);

    *(v9 + 24) = v17;
    _os_log_impl(&dword_0, v4, v5, "╭ ❌ Failed to perform commands %s\n| issuance=%{public}s\n╰ error=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v18 = v0[41];

    sub_6FBC40(v18);
  }

  v19 = v0[60];
  swift_willThrow();

  sub_6FBC40(v0[48]);

  v20 = v0[1];

  return v20();
}

uint64_t sub_6EE740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_8:
    v6 = 0;
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  v2 = a1 + 32;
  while (1)
  {
    sub_E8BA0(v2, v9);
    sub_E8BA0(v9, &v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13568);
    if (swift_dynamicCast())
    {
      break;
    }

    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_12E1C(&v10, &qword_E13DF8);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v9);
    v2 += 40;
    if (!--v1)
    {
      goto LABEL_8;
    }
  }

  v3 = *(&v11 + 1);
  v4 = v12;
  __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
  v5 = (*(v4 + 16))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(&v10);
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  sub_70DF8(v9, &v10);
  v6 = 1;
LABEL_9:
  sub_12E1C(&v10, &qword_E13E00);
  return v6;
}

uint64_t sub_6EE8C0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v73 = a6;
  v74 = a7;
  v12 = type metadata accessor for Player.CommandIssuance();
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v72 - v16;
  if (a1)
  {
    v18 = qword_E0CEC0;
    v19 = a1;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_AB4BC0();
    __swift_project_value_buffer(v20, qword_E72050);

    v21 = sub_AB4BA0();
    v22 = sub_AB9F50();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v75 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_500C84(a3, a4, &v75);
      _os_log_impl(&dword_0, v21, v22, "╭ 🔊✅ Successfully resolved specified route for %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
    }

    sub_6FBBDC(a5, v17);
    v25 = sub_AB4BA0();
    v26 = sub_AB9F50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v75 = v28;
      *v27 = 136446210;
      v29 = Player.CommandIssuance.description.getter();
      v31 = v30;
      sub_6FBC40(v17);
      v32 = sub_500C84(v29, v31, &v75);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_0, v25, v26, "| issuance=%{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
    }

    else
    {

      sub_6FBC40(v17);
    }

    v46 = v73;
    v47 = sub_AB4BA0();
    v48 = sub_AB9F50();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v75 = v50;
      *v49 = 136446210;
      v51 = v46;
      v52 = [v51 description];
      v53 = sub_AB92A0();
      v55 = v54;

      v56 = sub_500C84(v53, v55, &v75);

      *(v49 + 4) = v56;
      _os_log_impl(&dword_0, v47, v48, "╰ 🔊 Route=%{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
    }

    **(*(v74 + 64) + 40) = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    if (qword_E0CEC0 != -1)
    {
      swift_once();
    }

    v33 = sub_AB4BC0();
    __swift_project_value_buffer(v33, qword_E72050);

    v34 = sub_AB4BA0();
    v35 = sub_AB9F30();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v75 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_500C84(a3, a4, &v75);
      _os_log_impl(&dword_0, v34, v35, "╭ 🔊❌ Failed to resolve specified route for %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
    }

    sub_6FBBDC(a5, v15);
    v38 = sub_AB4BA0();
    v39 = sub_AB9F30();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v75 = v41;
      *v40 = 136446210;
      v42 = Player.CommandIssuance.description.getter();
      v44 = v43;
      sub_6FBC40(v15);
      v45 = sub_500C84(v42, v44, &v75);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_0, v38, v39, "| issuance=%{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
    }

    else
    {

      sub_6FBC40(v15);
    }

    v58 = v73;
    v59 = sub_AB4BA0();
    v60 = sub_AB9F30();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v75 = v62;
      *v61 = 136446210;
      v63 = v58;
      v64 = [v63 description];
      v65 = sub_AB92A0();
      v67 = v66;

      v68 = sub_500C84(v65, v67, &v75);

      *(v61 + 4) = v68;
      _os_log_impl(&dword_0, v59, v60, "╰ 🔊 Route=%{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
    }

    if (a2)
    {
      v69 = a2;
    }

    else
    {
      sub_6FC02C();
      v69 = swift_allocError();
      *v70 = 0u;
      *(v70 + 16) = 0u;
      *(v70 + 32) = 0;
      *(v70 + 40) = 2;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    swift_allocError();
    *v71 = v69;
    swift_errorRetain();
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t Player.prepareForBufferedAirPlay()()
{
  v1[60] = v0;
  v1[61] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  v1[62] = swift_task_alloc();
  v1[63] = sub_AB9940();
  v1[64] = sub_AB9930();
  v3 = sub_AB98B0();
  v1[65] = v3;
  v1[66] = v2;

  return _swift_task_switch(sub_6EF14C, v3, v2);
}

uint64_t sub_6EF14C()
{
  v35 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v1 = v0[56];
  v2 = [v1 route];
  v0[67] = v2;

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {

      goto LABEL_9;
    }

    v4 = v3;
    v5 = v2;
    if ([v4 isDeviceRoute])
    {

LABEL_9:

      v10 = v0[1];

      return v10(v2);
    }

    v11 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
    v12 = objc_allocWithZone(MPAVRoutingController);
    v13 = sub_AB9260();
    v14 = [v12 initWithDataSource:v11 name:v13];
    v0[68] = v14;

    if (qword_E0CEC0 != -1)
    {
      swift_once();
    }

    v15 = sub_AB4BC0();
    v0[69] = __swift_project_value_buffer(v15, qword_E72050);
    v16 = v5;
    v17 = sub_AB4BA0();
    v18 = sub_AB9F50();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136446210;
      v21 = v16;
      v22 = [v21 description];
      v23 = sub_AB92A0();
      v25 = v24;

      v26 = sub_500C84(v23, v25, &v34);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_0, v17, v18, "🚏 Switching to buffered AirPlay onto route=%{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
    }

    v27 = v0[60];
    v28 = OBJC_IVAR____TtC9MusicCore6Player_routingController;
    v0[70] = OBJC_IVAR____TtC9MusicCore6Player_routingController;
    v29 = *(v27 + v28);
    *(v27 + v28) = v14;
    v30 = v14;

    v31 = objc_opt_self();
    v0[71] = v31;
    v0[2] = v0;
    v0[3] = sub_6EF650;
    v32 = swift_continuation_init();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E135A0);
    v0[72] = v33;
    v0[41] = v33;
    v0[34] = _NSConcreteStackBlock;
    v0[35] = 1107296256;
    v0[36] = sub_5C75AC;
    v0[37] = &block_descriptor_109_1;
    v0[38] = v32;
    [v31 setActiveRoute:0 completion:v0 + 34];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v6 = v0[57];
    sub_6FC24C();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_6EF650()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 584) = v2;
  v3 = *(v1 + 528);
  v4 = *(v1 + 520);
  if (v2)
  {
    v5 = sub_6F0668;
  }

  else
  {
    v5 = sub_6EF780;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_6EF780()
{
  v1 = v0[72];
  v2 = v0[68];
  v3 = v0[67];
  v0[10] = v0;
  v0[11] = sub_6EF890;
  v4 = swift_continuation_init();
  v0[49] = v1;
  v0[42] = _NSConcreteStackBlock;
  v0[43] = 1107296256;
  v0[44] = sub_5C75AC;
  v0[45] = &block_descriptor_112_0;
  v0[46] = v4;
  [v2 selectRoute:v3 operation:0 completion:v0 + 42];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_6EF890()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 592) = v2;
  v3 = *(v1 + 528);
  v4 = *(v1 + 520);
  if (v2)
  {
    v5 = sub_6F08C8;
  }

  else
  {
    v5 = sub_6EF9C0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_6EF9C0()
{
  v1 = sub_AB9930();
  *(v0 + 600) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_AB98B0();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_6EFA54, v2, v4);
}

uint64_t sub_6EFA54()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 18;
  v4 = v0 + 50;
  v5 = v0 + 59;
  v6 = v0[71];
  v1[18] = v2;
  v1[23] = v5;
  v1[19] = sub_6EFBA0;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[54] = sub_6FC2DC;
  v1[55] = v8;
  v1[50] = _NSConcreteStackBlock;
  v1[51] = 1107296256;
  v1[52] = sub_780C4;
  v1[53] = &block_descriptor_118_0;
  v9 = _Block_copy(v4);

  [v6 getActiveRouteWithTimeout:v9 completion:2.0];
  _Block_release(v9);

  return _swift_continuation_await(v3);
}

uint64_t sub_6EFBA0()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 608) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = v1[66];
    v4 = v1[65];
    v5 = sub_6EFF74;
  }

  else
  {

    v1[77] = v1[59];
    v3 = v1[66];
    v4 = v1[65];
    v5 = sub_6EFCF8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_6EFCF8()
{
  v23 = v0;
  v1 = *(v0 + 616);
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 616);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136446210;
    v7 = v4;
    v8 = [v7 description];
    v9 = sub_AB92A0();
    v11 = v10;

    v12 = sub_500C84(v9, v11, &v22);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_0, v2, v3, "🚏 Awaiting updated player response for route=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v13 = *(v0 + 496);
  v14 = *(v0 + 480);
  v15 = *(v0 + 616);

  sub_6F4700(v15);

  v16 = sub_AB9990();
  *(v0 + 624) = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  *(v0 + 632) = v18;
  *(v0 + 640) = (v17 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v18(v13, 1, 1, v16);

  v19 = sub_AB9930();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v14;
  *(v0 + 648) = sub_5E89D8(0, 0, v13, &unk_B22388, v20);

  return _swift_task_switch(sub_6F0024, 0, 0);
}

uint64_t sub_6EFF74()
{
  v1 = v0[70];
  v2 = v0[60];

  v3 = *(v2 + v1);
  v4 = v0[68];
  if (v3 && v4 == v3)
  {
    v5 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v5 = v0[67];
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_6F0024()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 26;
  v4 = v0[81];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[62];
  v1[26] = v2;
  v1[27] = sub_6F0158;
  v8 = swift_continuation_init();
  v5(v7, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = 0x4014000000000000;
  v9[6] = v4;

  sub_6E35BC(0, 0, v7, &unk_B22398, v9);

  return _swift_continuation_await(v3);
}

uint64_t sub_6F0158()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 656) = v2;
  if (v2)
  {

    swift_willThrow();
    v3 = *(v1 + 528);
    v4 = *(v1 + 520);
    v5 = sub_6F0470;
  }

  else
  {
    v3 = *(v1 + 528);
    v4 = *(v1 + 520);
    v5 = sub_6F0284;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_6F0284()
{
  v23 = v0;
  v1 = v0[77];

  v2 = v1;
  v3 = sub_AB4BA0();
  v4 = sub_AB9F50();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[77];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136446210;
    v6 = v6;
    v9 = [v6 description];
    v10 = sub_AB92A0();
    v12 = v11;

    v13 = sub_500C84(v10, v12, &v22);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "🚏✅ Successfully switched to buffered AirPlay onto route=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  v14 = v0[70];
  v15 = v0[60];
  v16 = *(v15 + v14);
  v17 = v0[68];
  if (v16)
  {
    v18 = v0[67];
    if (v17 == v16)
    {
      *(v15 + v14) = 0;
    }
  }

  else
  {
    v18 = v0[67];
  }

  v19 = v0[77];

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_6F0470()
{
  v23 = v0;
  v1 = v0[77];

  v2 = v1;
  v3 = sub_AB4BA0();
  v4 = sub_AB9F30();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[77];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136446210;
    v8 = v5;
    v9 = [v8 description];
    v10 = sub_AB92A0();
    v12 = v11;

    v13 = sub_500C84(v10, v12, &v22);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "🚏❌ Timed out waiting for a valid ReplaceCommand on route=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v14 = v0[77];
  v15 = v0[70];
  v16 = v0[60];
  swift_willThrow();

  v17 = *(v16 + v15);
  v18 = v0[68];
  if (v17 && v18 == v17)
  {
    v19 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v19 = v0[67];
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_6F0668()
{
  v25 = v0;

  v1 = v0[73];
  v2 = v0[67];
  swift_willThrow();
  v3 = v2;
  swift_errorRetain();
  v4 = sub_AB4BA0();
  v5 = sub_AB9F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[67];
    v7 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = v6;
    v9 = [v8 description];
    v10 = sub_AB92A0();
    v12 = v11;

    v13 = sub_500C84(v10, v12, v24);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2082;
    v0[58] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v14 = sub_AB9350();
    v16 = sub_500C84(v14, v15, v24);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_0, v4, v5, "🚏❌ Failed switching to route=%{public}s with error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v17 = v0[70];
  v18 = v0[60];
  swift_willThrow();
  v19 = *(v18 + v17);
  v20 = v0[68];
  if (v19 && v20 == v19)
  {
    v21 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v21 = v0[67];
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_6F08C8()
{
  v25 = v0;

  v1 = v0[74];
  v2 = v0[67];
  swift_willThrow();
  v3 = v2;
  swift_errorRetain();
  v4 = sub_AB4BA0();
  v5 = sub_AB9F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[67];
    v7 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = v6;
    v9 = [v8 description];
    v10 = sub_AB92A0();
    v12 = v11;

    v13 = sub_500C84(v10, v12, v24);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2082;
    v0[58] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v14 = sub_AB9350();
    v16 = sub_500C84(v14, v15, v24);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_0, v4, v5, "🚏❌ Failed switching to route=%{public}s with error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v17 = v0[70];
  v18 = v0[60];
  swift_willThrow();
  v19 = *(v18 + v17);
  v20 = v0[68];
  if (v19 && v20 == v19)
  {
    v21 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v21 = v0[67];
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_6F0B28(void *a1, uint64_t a2)
{
  if (a1)
  {
    **(*(a2 + 64) + 40) = a1;
    v2 = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    sub_6FC24C();
    v4 = swift_allocError();
    *v5 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    swift_allocError();
    *v6 = v4;

    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_6F0BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15EA0);
  v4[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13560);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13DE8);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = sub_AB9940();
  v4[17] = sub_AB9930();
  v8 = sub_AB98B0();
  v4[18] = v8;
  v4[19] = v7;

  return _swift_task_switch(sub_6F0DA4, v8, v7);
}

uint64_t sub_6F0DA4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13090);
  sub_AB54E0();
  swift_endAccess();
  sub_36A00(&qword_E13570, &unk_E15EA0);
  sub_AB5480();
  sub_AB5470();
  (*(v2 + 8))(v1, v3);
  v0[20] = sub_AB9930();
  v4 = sub_36A00(&qword_E13DF0, &qword_E13DE8);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_6F0F60;
  v6 = v0[13];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 5, v6, v4);
}

uint64_t sub_6F0F60()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_AB98B0();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_6F1394;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_AB98B0();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_6F10F8;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_6F10F8()
{

  v0[23] = v0[5];
  v1 = v0[18];
  v2 = v0[19];

  return _swift_task_switch(sub_6F1164, v1, v2);
}

uint64_t sub_6F1164()
{
  v1 = *(v0 + 184);
  if (v1 == &dword_0 + 1)
  {
LABEL_6:
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v9 = *(v0 + 8);

    return v9();
  }

  if (v1)
  {
    v2 = v1;
    v3 = [v2 tracklist];
    v4 = [v3 resetCommand];
    sub_D3144(v1);

    if (v4 && (swift_unknownObjectRelease(), v5 = [v2 playerPath], v6 = objc_msgSend(v5, "route"), v5, v6))
    {
      v7 = *(v0 + 184);
      v8 = [v6 isDeviceRoute];
      sub_D3144(v7);

      if (v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_D3144(*(v0 + 184));
    }
  }

  *(v0 + 160) = sub_AB9930();
  v11 = sub_36A00(&qword_E13DF0, &qword_E13DE8);
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_6F0F60;
  v13 = *(v0 + 104);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 40, v13, v11);
}

uint64_t sub_6F1394()
{
  *(v0 + 48) = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_6F1420(unsigned __int8 a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  if (*(v2 + v4) != a1)
  {
    if (qword_E0CEC0 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v5 = sub_AB4BC0();
      __swift_project_value_buffer(v5, qword_E72050);
      v6 = sub_AB4BA0();
      v7 = sub_AB9F50();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_0, v6, v7, "╭ Updated Engine State", v8, 2u);
      }

      v9 = sub_AB4BA0();
      v10 = sub_AB9F50();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v38[0] = v12;
        *v11 = 136446210;
        if (*(v2 + v4) > 1u)
        {
          if (*(v2 + v4) == 2)
          {
            v13 = 0xA900000000000079;
            v14 = 0x6461655220859CE2;
          }

          else
          {
            v13 = 0xAE0064656C6C6174;
            v14 = 0x53208FB8EFA09AE2;
          }
        }

        else if (*(v2 + v4))
        {
          v13 = 0xAD0000676E697472;
          v14 = 0x61745320809A9FF0;
        }

        else
        {
          v13 = 0xA700000000000000;
          v14 = 0x66664F208C9DE2;
        }

        v15 = sub_500C84(v14, v13, v38);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_0, v9, v10, "╰ %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
      }

      if (*(v2 + v4) <= 1u)
      {
        break;
      }

      if (*(v2 + v4) != 2)
      {
        return;
      }

      v26 = OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady;
      swift_beginAccess();
      v27 = *(v2 + v26);
      v28 = *(v27 + 16);

      if (!v28)
      {
LABEL_28:

        *(v2 + v26) = _swiftEmptyArrayStorage;

        return;
      }

      v29 = 0;
      v30 = v27 + 40;
      while (v29 < *(v27 + 16))
      {
        ++v29;
        v31 = *(v30 - 8);

        v31(v32);

        v30 += 16;
        if (v28 == v29)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_36:
      swift_once();
    }

    if (*(v2 + v4))
    {
      [*(v2 + OBJC_IVAR____TtC9MusicCore6Player_engine) start];
      v33 = sub_6F1B40();
      v34 = v33;
      v35 = v33[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v33[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 1;
      if (v35 != 1)
      {
        [*&v33[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller] beginAutomaticResponseLoading];
      }

      v22 = sub_6F3694();
      v36 = v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 1;
      if ((v36 & 1) == 0)
      {
        v24 = *&v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
        v25 = "beginAutomaticResponseLoading";
        goto LABEL_34;
      }
    }

    else
    {
      v16 = sub_AB4BA0();
      v17 = sub_AB9F40();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_0, v16, v17, "❌ Stopped engine… which is not supposed to happen", v18, 2u);
      }

      v19 = sub_6F1B40();
      v20 = v19;
      v21 = v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 0;
      if (v21)
      {
        [*&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller] endAutomaticResponseLoading];
      }

      v22 = sub_6F3694();
      v23 = v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 0;
      if (v23)
      {
        v24 = *&v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
        v25 = "endAutomaticResponseLoading";
LABEL_34:
        v37 = v22;
        [v24 v25];

        return;
      }
    }
  }
}

uint64_t Player.engineState.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t Player.EngineState.description.getter(unsigned __int8 a1)
{
  v1 = 0x66664F208C9DE2;
  v2 = 0x6461655220859CE2;
  if (a1 != 2)
  {
    v2 = 0x53208FB8EFA09AE2;
  }

  if (a1)
  {
    v1 = 0x61745320809A9FF0;
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

uint64_t sub_6F19A8()
{
  v1 = 0x66664F208C9DE2;
  v2 = 0x6461655220859CE2;
  if (*v0 != 2)
  {
    v2 = 0x53208FB8EFA09AE2;
  }

  if (*v0)
  {
    v1 = 0x61745320809A9FF0;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_6F1A40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v5)
  {
    v1 = [v5 tracklist];
    v2 = [v1 resetCommand];

    if (v2)
    {
      swift_unknownObjectRelease();
      v3 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
      swift_beginAccess();
      v4 = *(v0 + v3);
      *(v0 + v3) = 2;
      sub_6F1420(v4);
    }
  }
}

char *sub_6F1B40()
{
  v1 = OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource;
  v2 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource);
  }

  else
  {
    v4 = v0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v5 = swift_allocObject();
    swift_weakInit();
    v6 = type metadata accessor for Player.DataSource();
    v7 = objc_allocWithZone(v6);
    v8 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request;
    v9 = objc_allocWithZone(MPCPlayerRequest);

    *&v7[v8] = [v9 init];
    v7[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 0;
    v10 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller;
    *&v7[v10] = [objc_allocWithZone(MPRequestResponseController) init];
    *&v7[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v26;
    v11 = &v7[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onResponseChanged];
    *v11 = sub_6FD158;
    v11[1] = v5;
    v12 = &v7[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onError];
    *v12 = sub_6FD160;
    v12[1] = v4;
    v27.receiver = v7;
    v27.super_class = v6;
    v25 = v26;

    v13 = objc_msgSendSuper2(&v27, "init");
    v14 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller;
    v15 = *&v13[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
    v16 = v13;
    [v15 setDelegate:v16];
    v17 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request;
    v18 = qword_E0CEC8;
    v19 = *&v16[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];
    if (v18 != -1)
    {
      swift_once();
    }

    [v19 setPlayingItemProperties:{qword_E13410, v5}];

    [*&v16[v17] setTracklistRange:{0, 0}];
    [*&v16[v17] setPlayerPath:v25];
    v20 = *&v16[v17];
    v28._countAndFlagsBits = 0x6B63616279616C50;
    v28._object = 0xEF646E616D6D6F43;
    sub_AB94A0(v28);
    v21 = sub_AB9260();

    [v20 setLabel:v21];

    [*&v13[v14] setRequest:*&v16[v17]];

    v22 = *(v4 + v1);
    *(v4 + v1) = v13;
    v3 = v16;

    v2 = 0;
  }

  v23 = v2;
  return v3;
}

uint64_t sub_6F1E7C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);

    UnfairLock.locked<A>(_:)(sub_6FD1CC);
  }

  return result;
}

void sub_6F1F64(uint64_t a1, id a2, void *a3)
{
  v5 = [a2 playerPath];
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    v7 = sub_6F91C4(v6);
    swift_endAccess();

    if (v7)
    {
      if (qword_E0CEC0 != -1)
      {
        swift_once();
      }

      v8 = sub_AB4BC0();
      __swift_project_value_buffer(v8, qword_E72050);
      v9 = sub_AB4BA0();
      v10 = sub_AB9F50();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_0, v9, v10, "| Cancelling ongoing timer for switching back to system route", v11, 2u);
      }

      swift_getObjectType();
      sub_ABA200();
      swift_unknownObjectRelease();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v12 = a3;

    sub_AB5520();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v13 = a3;
    if (a3)
    {
      v14 = [a3 tracklist];
      v15 = [v14 resetCommand];

      if (v15)
      {
        swift_unknownObjectRelease();
        v16 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
        swift_beginAccess();
        v17 = *(a1 + v16);
        *(a1 + v16) = 2;
        sub_6F1420(v17);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_6F21E8(void *a1)
{
  v1 = [a1 playerPath];
  if (v1)
  {
    v2 = v1;
    if (qword_E0CEC0 != -1)
    {
      swift_once();
    }

    v3 = sub_AB4BC0();
    __swift_project_value_buffer(v3, qword_E72050);
    swift_errorRetain();
    v4 = sub_AB4BA0();
    v5 = sub_AB9F30();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25 = v7;
      *v6 = 136446210;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
      v8 = sub_AB9350();
      v10 = sub_500C84(v8, v9, &v25);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_0, v4, v5, "╭ Player Response failed to load with error=%{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
    }

    v11 = sub_AB3040();
    v12 = sub_6F2530();

    if (v12)
    {
      __chkstk_darwin(v13);
      UnfairLock.locked<A>(_:)(sub_6FD168);
    }

    else
    {
      v14 = v2;
      v15 = sub_AB4BA0();
      v16 = sub_AB9F50();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v25 = v18;
        *v17 = 136446210;
        v19 = v14;
        v20 = [v19 description];
        v21 = sub_AB92A0();
        v23 = v22;

        v24 = sub_500C84(v21, v23, &v25);

        *(v17 + 4) = v24;
        _os_log_impl(&dword_0, v15, v16, "╰ playerPath=%{public}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_6F2530()
{
  v1 = v0;
  v2 = [v0 domain];
  v3 = sub_AB92A0();
  v5 = v4;

  v6 = [v1 code];
  if (sub_AB92A0() == v3 && v7 == v5)
  {

    if (v6 == &dword_0 + 2)
    {
LABEL_7:
      v10 = 1;
      return v10 & 1;
    }
  }

  else
  {
    v9 = sub_ABB3C0();

    if ((v9 & 1) != 0 && v6 == &dword_0 + 2)
    {
      goto LABEL_7;
    }
  }

  v35 = _swiftEmptyArrayStorage;
  v11 = [v1 userInfo];
  v12 = sub_AB8FF0();

  v13 = sub_AB92A0();
  if (!*(v12 + 16))
  {

    goto LABEL_14;
  }

  v15 = sub_52215C(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_808B0(*(v12 + 56) + 32 * v15, v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13DB0);
  if (swift_dynamicCast())
  {
    sub_511528(v33);
  }

LABEL_15:
  v18 = [v1 userInfo];
  v19 = sub_AB8FF0();

  v20 = sub_AB92A0();
  if (*(v19 + 16))
  {
    v22 = sub_52215C(v20, v21);
    v24 = v23;

    if (v24)
    {
      sub_808B0(*(v19 + 56) + 32 * v22, v34);

      sub_13C80(0, &qword_E0E300);
      if (swift_dynamicCast())
      {
        v25 = v33;
        sub_AB9730();
        if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v35 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
      }

      goto LABEL_23;
    }
  }

  else
  {
  }

LABEL_23:
  v26 = v35;
  if (v35 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v28 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = sub_ABAE20();
      }

      else
      {
        if (v28 >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_35;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v10 = sub_6F2530();

      if ((v10 & 1) == 0)
      {
        ++v28;
        if (v31 != i)
        {
          continue;
        }
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v10 = 0;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_6F2904(void *a1, uint64_t a2)
{
  v4 = sub_AB7BE0();
  v89 = *(v4 - 8);
  v90 = v4;
  v5 = __chkstk_darwin(v4);
  v88 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v87 = (&v73 - v7);
  v91 = sub_AB7C80();
  v86 = *(v91 - 8);
  v8 = __chkstk_darwin(v91);
  v84 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v73 - v10;
  v11 = sub_AB7C10();
  v83 = *(v11 - 8);
  __chkstk_darwin(v11);
  v81 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_AB7C50();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_ABA1D0();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CEC0 != -1)
  {
    swift_once();
  }

  v15 = sub_AB4BC0();
  v16 = __swift_project_value_buffer(v15, qword_E72050);
  v17 = a1;
  v18 = sub_AB4BA0();
  v19 = sub_AB9F50();

  v20 = os_log_type_enabled(v18, v19);
  v92 = v17;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v75 = v11;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136446210;
    v24 = v17;
    v25 = a2;
    v26 = v24;
    v27 = [v24 description];
    v74 = v16;
    v28 = v27;
    v29 = sub_AB92A0();
    v31 = v30;

    a2 = v25;
    v32 = sub_500C84(v29, v31, aBlock);

    *(v21 + 4) = v32;
    _os_log_impl(&dword_0, v18, v19, "| Invalid playerPath=%{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v11 = v75;
  }

  v33 = sub_AB4BA0();
  v34 = sub_AB9F50();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "╰ Stalling engine while attempting to reload", v35, 2u);
  }

  v36 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  v37 = *(a2 + v36);
  *(a2 + v36) = 3;
  sub_6F1420(v37);
  v38 = OBJC_IVAR____TtC9MusicCore6Player_failingPlayerPathTimers;
  swift_beginAccess();
  v39 = *(a2 + v38);

  v40 = sub_6E3B24(v92, v39);

  if (v40)
  {
    return swift_unknownObjectRelease();
  }

  v75 = v38;
  v41 = sub_AB4BA0();
  v42 = sub_AB9F50();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "╰ Switching back to system route in 5seconds.", v43, 2u);
  }

  sub_13C80(0, &unk_E11A20);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_6FC5D8(&unk_E11A30, &type metadata accessor for OS_dispatch_source.TimerFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13D80);
  sub_36A00(&unk_E11A40, &qword_E13D80);
  v44 = v76;
  v45 = v78;
  sub_ABABB0();
  sub_13C80(0, &qword_E103C0);
  v46 = sub_ABA150();
  v47 = sub_ABA1E0();

  v77[1](v44, v45);
  v74 = v47;
  ObjectType = swift_getObjectType();
  v49 = swift_allocObject();
  v73 = a2;
  swift_weakInit();
  v50 = swift_allocObject();
  v51 = v92;
  *(v50 + 16) = v49;
  *(v50 + 24) = v51;
  aBlock[4] = sub_6FD1C4;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_266_0;
  v52 = _Block_copy(aBlock);
  v77 = v51;

  v53 = v79;
  sub_AB7C30();
  v54 = v81;
  v78 = ObjectType;
  sub_6E3C90();
  sub_ABA1F0();
  _Block_release(v52);
  (*(v83 + 8))(v54, v11);
  (*(v80 + 8))(v53, v82);

  v55 = v84;
  sub_AB7C70();
  v56 = v87;
  *v87 = 5;
  v57 = v89;
  v58 = v90;
  v59 = *(v89 + 104);
  v59(v56, enum case for DispatchTimeInterval.seconds(_:), v90);
  v60 = v85;
  sub_AB7CD0();
  v92 = *(v57 + 8);
  (v92)(v56, v58);
  v61 = *(v86 + 8);
  v61(v55, v91);
  v59(v56, enum case for DispatchTimeInterval.never(_:), v58);
  v62 = v88;
  *v88 = 0;
  v59(v62, enum case for DispatchTimeInterval.nanoseconds(_:), v58);
  v63 = v74;
  sub_ABA3E0();
  v64 = v62;
  v65 = v92;
  (v92)(v64, v58);
  v65(v56, v58);
  v61(v60, v91);
  v66 = v73;
  v67 = v63;
  sub_ABA210();
  v68 = v75;
  swift_beginAccess();
  v69 = *(v66 + v68);
  if ((v69 & 0xC000000000000001) == 0)
  {
    swift_unknownObjectRetain();
    goto LABEL_17;
  }

  if (v69 < 0)
  {
    v70 = *(v66 + v68);
  }

  else
  {
    v70 = v69 & 0xFFFFFFFFFFFFFF8;
  }

  swift_unknownObjectRetain();
  result = sub_ABAFA0();
  if (!__OFADD__(result, 1))
  {
    *(v66 + v68) = sub_6F94C8(v70, result + 1);
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = *(v66 + v68);
    sub_526430(v67, v77, isUniquelyReferenced_nonNull_native);
    *(v66 + v68) = v94;
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}