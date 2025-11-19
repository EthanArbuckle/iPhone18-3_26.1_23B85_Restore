id sub_22D705300(void *a1)
{
  [a1 selector];
  if (sub_22D72D820())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

id sub_22D705378(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_22D7053CC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27D9FF110 != -1)
    {
      swift_once();
    }

    v2 = sub_22D72DBE0();
    __swift_project_value_buffer(v2, qword_27DA016B8);
    v3 = sub_22D72DBB0();
    v4 = sub_22D72E5A0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22D6B4000, v3, v4, "Connection interrupted", v5, 2u);
      MEMORY[0x2318D0420](v5, -1, -1);
    }

    v6 = *&v1[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock];
    v8 = MEMORY[0x28223BE20](v7);
    MEMORY[0x28223BE20](v8);

    os_unfair_lock_lock(v6 + 4);
    sub_22D6F5B28(v9);
    os_unfair_lock_unlock(v6 + 4);
  }

  return result;
}

uint64_t sub_22D705578()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27D9FF110 != -1)
    {
      swift_once();
    }

    v2 = sub_22D72DBE0();
    __swift_project_value_buffer(v2, qword_27DA016B8);
    v3 = sub_22D72DBB0();
    v4 = sub_22D72E5A0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22D6B4000, v3, v4, "Connection invalidated", v5, 2u);
      MEMORY[0x2318D0420](v5, -1, -1);
    }

    v6 = *&v1[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock];
    v8 = MEMORY[0x28223BE20](v7);
    MEMORY[0x28223BE20](v8);

    os_unfair_lock_lock(v6 + 4);
    sub_22D6F5B28(v9);
    os_unfair_lock_unlock(v6 + 4);
  }

  return result;
}

void sub_22D705724(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v3 = sub_22D71C434(a2);
  swift_endAccess();
}

uint64_t sub_22D70582C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection);
  v2 = [v1 remoteProcess];
  v3 = sub_22D72E480();
  v4 = [v2 valueForEntitlement_];

  if (v4)
  {
    sub_22D72E6D0();
    swift_unknownObjectRelease();
    sub_22D6D5254(v16, v17);
    sub_22D6D5254(v17, v16);
    if (swift_dynamicCast())
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = [v1 remoteProcess];
    v7 = [v6 bundleIdentifier];

    if (v7)
    {
      v8 = sub_22D72E490();

      objc_allocWithZone(MEMORY[0x277CC1E50]);

      v9 = v8;
      v10 = sub_22D70B0C4();
      if (v10)
      {
        v11 = v10;
        v12 = [v10 containingBundleRecord];
        if (v12 && (v13 = v12, v14 = [v12 bundleIdentifier], v13, v14))
        {
          v9 = sub_22D72E490();
        }

        else
        {
        }
      }

      return v9;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22D705A48()
{
  v1 = v0;
  result = sub_22D70582C();
  if (v3)
  {
    v4 = v3;
    v5 = result;
    v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v7 = sub_22D72868C(v5, v4, 0);
    v11 = v7;
    if (v7 && (v12 = sub_22D6FF3AC(), v14 = v13, v11, v14))
    {
      return v12;
    }

    else
    {
      v8 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
      v9 = sub_22D72E480();
      v10 = [v8 hasEntitlement_];

      if (v10)
      {
        return 0x64656C7469746E45;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22D705C28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22D72E7D0();

  LODWORD(v9) = *(a1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_pid);
  v4 = sub_22D72E960();
  MEMORY[0x2318CF680](v4);

  MEMORY[0x2318CF680](0x656C646E7562203BLL, 0xEC000000203A4449);
  v5 = [*(a1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_22D72E490();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF9A0, &unk_22D731130);
  v7 = sub_22D72E4C0();
  MEMORY[0x2318CF680](v7);

  result = MEMORY[0x2318CF680](41, 0xE100000000000000);
  *a2 = 0x203A646970;
  a2[1] = 0xE500000000000000;
  return result;
}

id sub_22D705DFC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22D705EC4(uint64_t a1, void (*a2)(char *, void *), uint64_t a3)
{
  v25 = a3;
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF988, &qword_22D731048);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_22D72DDC0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF590, &qword_22D730590);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v25 - v18);
  sub_22D6D5A4C(a1, &v25 - v18, &qword_27D9FF590, &qword_22D730590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    v21 = sub_22D72DFC0();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = sub_22D72D5C0();
    v26(v7, v22);

    return sub_22D6D5984(v7, &qword_27D9FF988, &qword_22D731048);
  }

  else
  {
    (*(v9 + 32))(v15, v19, v8);
    (*(v9 + 16))(v13, v15, v8);
    sub_22D72DFB0();
    v24 = sub_22D72DFC0();
    (*(*(v24 - 8) + 56))(v7, 0, 1, v24);
    v26(v7, 0);
    sub_22D6D5984(v7, &qword_27D9FF988, &qword_22D731048);
    return (*(v9 + 8))(v15, v8);
  }
}

void sub_22D706328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF988, &qword_22D731048);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  sub_22D6D5A4C(a1, &v13 - v8, &qword_27D9FF988, &qword_22D731048);
  v10 = sub_22D72DFC0();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_22D70D554(&unk_27D9FF990, MEMORY[0x277CB9A48]);
    v12 = sub_22D72E220();
    (*(v11 + 8))(v9, v10);
  }

  (*(a3 + 16))(a3, v12, a2);
}

uint64_t sub_22D7064A4()
{
  v0 = sub_22D72DEB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D72D7A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v1 + 104))(v4, *MEMORY[0x277CB99E8], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }

  v11 = Strong;
  MEMORY[0x2318CF200]();
  sub_22D70582C();
  if (!v12)
  {
    (*(v1 + 104))(v4, *MEMORY[0x277CB99D0], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    swift_unknownObjectRelease();
    return (*(v6 + 8))(v9, v5);
  }

  v17 = v5;
  __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v11 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
  v13 = off_2840CC670[0];
  type metadata accessor for AlarmManager();
  v14 = v18;
  v13();
  if (v14)
  {
    swift_unknownObjectRelease();

    v5 = v17;
    return (*(v6 + 8))(v9, v5);
  }

  swift_unknownObjectRelease();

  return (*(v6 + 8))(v9, v17);
}

uint64_t sub_22D70698C()
{
  v0 = sub_22D72DEB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D72D7A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v1 + 104))(v4, *MEMORY[0x277CB99E8], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }

  v11 = Strong;
  MEMORY[0x2318CF200]();
  sub_22D70582C();
  if (!v12)
  {
    (*(v1 + 104))(v4, *MEMORY[0x277CB99D0], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    swift_unknownObjectRelease();
    return (*(v6 + 8))(v9, v5);
  }

  v17 = v5;
  __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v11 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
  v13 = off_2840CC658[0];
  type metadata accessor for AlarmManager();
  v14 = v18;
  v13();
  if (v14)
  {
    swift_unknownObjectRelease();

    v5 = v17;
    return (*(v6 + 8))(v9, v5);
  }

  swift_unknownObjectRelease();

  return (*(v6 + 8))(v9, v17);
}

uint64_t sub_22D706E74()
{
  v0 = sub_22D72DEB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D72D7A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v1 + 104))(v4, *MEMORY[0x277CB99E8], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }

  v11 = Strong;
  MEMORY[0x2318CF200]();
  sub_22D70582C();
  if (!v12)
  {
    (*(v1 + 104))(v4, *MEMORY[0x277CB99D0], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    swift_unknownObjectRelease();
    return (*(v6 + 8))(v9, v5);
  }

  v17 = v5;
  __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v11 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
  v13 = off_2840CC660[0];
  type metadata accessor for AlarmManager();
  v14 = v18;
  v13();
  if (v14)
  {
    swift_unknownObjectRelease();

    v5 = v17;
    return (*(v6 + 8))(v9, v5);
  }

  swift_unknownObjectRelease();

  return (*(v6 + 8))(v9, v17);
}

uint64_t sub_22D70735C()
{
  v1 = sub_22D72DEB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [*(v0 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v9 = sub_22D72E480();
    v10 = [v8 hasEntitlement_];

    if (v10)
    {
      __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v7 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      v11 = off_2840CC668[0];
      type metadata accessor for AlarmManager();
      v11();
    }

    else
    {
      (*(v2 + 104))(v5, *MEMORY[0x277CB99D8], v1);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v2 + 104))(v5, *MEMORY[0x277CB99E8], v1);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}

uint64_t sub_22D707690()
{
  v0 = sub_22D72DEB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D72D7A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v1 + 104))(v4, *MEMORY[0x277CB99E8], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }

  v11 = Strong;
  MEMORY[0x2318CF200]();
  sub_22D70582C();
  if (!v12)
  {
    (*(v1 + 104))(v4, *MEMORY[0x277CB99D0], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    swift_unknownObjectRelease();
    return (*(v6 + 8))(v9, v5);
  }

  v17 = v5;
  __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v11 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
  v13 = off_2840CC678[0];
  type metadata accessor for AlarmManager();
  v14 = v18;
  v13();
  if (v14)
  {
    swift_unknownObjectRelease();

    v5 = v17;
    return (*(v6 + 8))(v9, v5);
  }

  swift_unknownObjectRelease();

  return (*(v6 + 8))(v9, v17);
}

uint64_t sub_22D707B78()
{
  v0 = sub_22D72DEB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D72D7A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v1 + 104))(v4, *MEMORY[0x277CB99E8], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }

  v11 = Strong;
  MEMORY[0x2318CF200]();
  sub_22D70582C();
  if (!v12)
  {
    (*(v1 + 104))(v4, *MEMORY[0x277CB99D0], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    swift_unknownObjectRelease();
    return (*(v6 + 8))(v9, v5);
  }

  v17 = v5;
  __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v11 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
  v13 = off_2840CC680;
  type metadata accessor for AlarmManager();
  v14 = v18;
  v13();
  if (v14)
  {
    swift_unknownObjectRelease();

    v5 = v17;
    return (*(v6 + 8))(v9, v5);
  }

  swift_unknownObjectRelease();

  return (*(v6 + 8))(v9, v17);
}

uint64_t sub_22D708060()
{
  v1 = sub_22D72DEB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_22D70582C();
    if (v8)
    {
      __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v7 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      v9 = off_2840CC690[0];
      type metadata accessor for AlarmManager();
      v9();

      if (!v0)
      {
        sub_22D72DFD0();
      }
    }

    else
    {
      (*(v2 + 104))(v5, *MEMORY[0x277CB99D0], v1);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v2 + 104))(v5, *MEMORY[0x277CB99E8], v1);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}

uint64_t sub_22D708310()
{
  v2 = sub_22D72DEB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [*(v0 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v10 = sub_22D72E480();
    v11 = [v9 hasEntitlement_];

    if (v11)
    {
      __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v8 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      v12 = off_2840CC698;
      type metadata accessor for AlarmManager();
      v12();
      if (!v1)
      {
        sub_22D72DFD0();
      }
    }

    else
    {
      (*(v3 + 104))(v6, *MEMORY[0x277CB99D8], v2);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277CB99E8], v2);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}

uint64_t sub_22D708760(uint64_t a1)
{
  v20[3] = a1;
  v3 = sub_22D72DEB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72D7A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v20[0] = v9;
    v20[1] = v2;
    v15 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v16 = sub_22D72E480();
    v17 = [v15 hasEntitlement_];

    if (v17)
    {
      MEMORY[0x2318CF230]();
      sub_22D72E090();
      __swift_project_boxed_opaque_existential_1((v14 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v14 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      v18 = off_2840CC670[0];
      type metadata accessor for AlarmManager();
      v18();
      swift_unknownObjectRelease();

      return (*(v20[0] + 8))(v12, v8);
    }

    else
    {
      (*(v4 + 104))(v7, *MEMORY[0x277CB99D8], v3);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CB99E8], v3);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}

uint64_t sub_22D708C88(uint64_t a1)
{
  v20[3] = a1;
  v3 = sub_22D72DEB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72D7A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v20[0] = v9;
    v20[1] = v2;
    v15 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v16 = sub_22D72E480();
    v17 = [v15 hasEntitlement_];

    if (v17)
    {
      MEMORY[0x2318CF230]();
      sub_22D72E090();
      __swift_project_boxed_opaque_existential_1((v14 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v14 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      v18 = off_2840CC658[0];
      type metadata accessor for AlarmManager();
      v18();
      swift_unknownObjectRelease();

      return (*(v20[0] + 8))(v12, v8);
    }

    else
    {
      (*(v4 + 104))(v7, *MEMORY[0x277CB99D8], v3);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CB99E8], v3);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}

uint64_t sub_22D7091B0(uint64_t a1)
{
  v20[3] = a1;
  v3 = sub_22D72DEB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72D7A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v20[0] = v9;
    v20[1] = v2;
    v15 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v16 = sub_22D72E480();
    v17 = [v15 hasEntitlement_];

    if (v17)
    {
      MEMORY[0x2318CF230]();
      sub_22D72E090();
      __swift_project_boxed_opaque_existential_1((v14 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v14 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      v18 = off_2840CC660[0];
      type metadata accessor for AlarmManager();
      v18();
      swift_unknownObjectRelease();

      return (*(v20[0] + 8))(v12, v8);
    }

    else
    {
      (*(v4 + 104))(v7, *MEMORY[0x277CB99D8], v3);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CB99E8], v3);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}

uint64_t sub_22D7096D8(uint64_t a1)
{
  v20[3] = a1;
  v3 = sub_22D72DEB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72D7A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v20[0] = v9;
    v20[1] = v2;
    v15 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v16 = sub_22D72E480();
    v17 = [v15 hasEntitlement_];

    if (v17)
    {
      MEMORY[0x2318CF230]();
      sub_22D72E090();
      __swift_project_boxed_opaque_existential_1((v14 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v14 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      v18 = off_2840CC678[0];
      type metadata accessor for AlarmManager();
      v18();
      swift_unknownObjectRelease();

      return (*(v20[0] + 8))(v12, v8);
    }

    else
    {
      (*(v4 + 104))(v7, *MEMORY[0x277CB99D8], v3);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CB99E8], v3);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}

uint64_t sub_22D709C00(uint64_t a1)
{
  v20[3] = a1;
  v3 = sub_22D72DEB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72D7A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v20[0] = v9;
    v20[1] = v2;
    v15 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v16 = sub_22D72E480();
    v17 = [v15 hasEntitlement_];

    if (v17)
    {
      MEMORY[0x2318CF230]();
      sub_22D72E090();
      __swift_project_boxed_opaque_existential_1((v14 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v14 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      v18 = off_2840CC680;
      type metadata accessor for AlarmManager();
      v18();
      swift_unknownObjectRelease();

      return (*(v20[0] + 8))(v12, v8);
    }

    else
    {
      (*(v4 + 104))(v7, *MEMORY[0x277CB99D8], v3);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CB99E8], v3);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}

uint64_t sub_22D70A128(uint64_t a1)
{
  v29 = a1;
  v3 = sub_22D72DEB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72DDD0();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22D72D7A0();
  v28 = *(v30 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v26 = v8;
    v27 = v2;
    v17 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v18 = sub_22D72E480();
    v19 = [v17 hasEntitlement_];

    if (v19)
    {
      MEMORY[0x2318CF1D0]();
      v20 = sub_22D72E050();
      v22 = v21;
      sub_22D72E030();
      v23 = *__swift_project_boxed_opaque_existential_1((v16 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v16 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      sub_22D6E8F24(v14, v20, v22, v11);

      (*(v31 + 8))(v11, v26);
      (*(v28 + 8))(v14, v30);
    }

    else
    {
      (*(v4 + 104))(v7, *MEMORY[0x277CB99D8], v3);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CB99E8], v3);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}

void sub_22D70A6BC(uint64_t a1@<X8>)
{
  v4 = sub_22D72DEB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock);
  v47 = v1;
  v44 = sub_22D70B190;
  v45 = &v46;
  os_unfair_lock_lock(v9 + 4);
  sub_22D6F5B28(v10);
  if (v2)
  {
LABEL_38:
    os_unfair_lock_unlock(v9 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v9 + 4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v5 + 104))(v8, *MEMORY[0x277CB99E8], v4);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    return;
  }

  v48 = Strong;
  v43 = a1;
  v12 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
  v13 = sub_22D72E480();
  v14 = [v12 hasEntitlement_];

  if (v14)
  {
    __swift_project_boxed_opaque_existential_1((v48 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v48 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
    v15 = off_2840CC698;
    type metadata accessor for AlarmManager();
    v16 = v15();
    v17 = 0;
    v20 = v16;
    v41[1] = 0;
    v9 = (v16 + 64);
    v21 = 1 << *(v16 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v16 + 64);
    v24 = (v21 + 63) >> 6;

    v26 = MEMORY[0x277D84F90];
    v42 = v25;
    while (v23)
    {
LABEL_17:
      v28 = *(*(v20 + 56) + ((v17 << 9) | (8 * __clz(__rbit64(v23)))));
      v29 = *(v28 + 16);
      v30 = v26[2];
      v31 = v30 + v29;
      if (__OFADD__(v30, v29))
      {
        goto LABEL_34;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v31 > v26[3] >> 1)
      {
        if (v30 <= v31)
        {
          v33 = v30 + v29;
        }

        else
        {
          v33 = v30;
        }

        v26 = sub_22D6CBC98(isUniquelyReferenced_nonNull_native, v33, 1, v26);
      }

      v23 &= v23 - 1;
      if (*(v28 + 16))
      {
        v34 = (v26[3] >> 1) - v26[2];
        v35 = *(sub_22D72DDC0() - 8);
        if (v34 < v29)
        {
          goto LABEL_36;
        }

        v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v37 = *(v35 + 72);
        swift_arrayInitWithCopy();

        v20 = v42;
        if (v29)
        {
          v38 = v26[2];
          v39 = __OFADD__(v38, v29);
          v40 = v38 + v29;
          if (v39)
          {
            goto LABEL_37;
          }

          v26[2] = v40;
        }
      }

      else
      {

        v20 = v42;
        if (v29)
        {
          goto LABEL_35;
        }
      }
    }

    while (1)
    {
      v27 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v27 >= v24)
      {

        goto LABEL_31;
      }

      v23 = *&v9[2 * v27]._os_unfair_lock_opaque;
      ++v17;
      if (v23)
      {
        v17 = v27;
        goto LABEL_17;
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
    goto LABEL_38;
  }

  sub_22D70582C();
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1((v48 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v48 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
    v19 = off_2840CC690[0];
    type metadata accessor for AlarmManager();
    v19();

LABEL_31:
    sub_22D72DFD0();
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277CB99D0], v4);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
  }

  swift_unknownObjectRelease();
}

id sub_22D70AC44(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_22D72DFE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  a4();

  sub_22D70D554(&unk_27D9FF950, MEMORY[0x277CB9A58]);
  v12 = sub_22D72E220();
  (*(v7 + 8))(v10, v6);

  return v12;
}

uint64_t sub_22D70AE68@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_pendingChangeAck;
  v5 = 1;
  if (*(result + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_pendingChangeAck) == 1)
  {
    v6 = *(result + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_bufferedAlarms);
    *(result + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_bufferedAlarms) = a2;
    v7 = result;

    *(v7 + v4) = 1;
    v5 = 0;
  }

  *a3 = v5;
  return result;
}

void sub_22D70AEE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock);
  os_unfair_lock_lock(v2 + 4);
  sub_22D6F59F4(&v3);
  os_unfair_lock_unlock(v2 + 4);
  if (v3)
  {
    sub_22D704A18(v3);
  }
}

id sub_22D70B0C4()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22D72E480();

  v7[0] = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_22D72D5D0();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t *sub_22D70B1A8(unint64_t *result, uint64_t a2, void *a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_22D70BCF8(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

void *sub_22D70B240(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_22D70BA10(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_22D70B2C8(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_22D70B624(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v35 = MEMORY[0x277D84FA0];
  sub_22D72E720();
  if (sub_22D72E750())
  {
    v4 = type metadata accessor for Client();
    do
    {
      swift_dynamicCast();
      v12 = [*&v34[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection] remoteProcess];
      v13 = sub_22D72E480();
      v14 = [v12 hasEntitlement_];

      if (v14)
      {
        goto LABEL_9;
      }

      v16 = sub_22D70582C();
      if (v17)
      {
        v18 = v17;
        v19 = *v2;
        if (*(*v2 + 16))
        {
          v20 = v16;
          v21 = v4;
          v22 = v2;
          v23 = *(v19 + 40);
          sub_22D72EA20();

          sub_22D72E4E0();
          v24 = sub_22D72EA40();
          v25 = -1 << *(v19 + 32);
          v26 = v24 & ~v25;
          if ((*(v19 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
          {
            v27 = ~v25;
            while (1)
            {
              v28 = (*(v19 + 48) + 16 * v26);
              v29 = *v28 == v20 && v18 == v28[1];
              if (v29 || (sub_22D72E980() & 1) != 0)
              {
                break;
              }

              v26 = (v26 + 1) & v27;
              if (((*(v19 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            v2 = v22;
            v4 = v21;
LABEL_9:
            v15 = *(v3 + 16);
            if (*(v3 + 24) <= v15)
            {
              sub_22D6F2278(v15 + 1);
            }

            v3 = v35;
            v5 = *(v35 + 40);
            result = sub_22D72E6A0();
            v7 = v35 + 56;
            v8 = -1 << *(v35 + 32);
            v9 = result & ~v8;
            v10 = v9 >> 6;
            if (((-1 << v9) & ~*(v35 + 56 + 8 * (v9 >> 6))) != 0)
            {
              v11 = __clz(__rbit64((-1 << v9) & ~*(v35 + 56 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v30 = 0;
              v31 = (63 - v8) >> 6;
              do
              {
                if (++v10 == v31 && (v30 & 1) != 0)
                {
                  __break(1u);
                  return result;
                }

                v32 = v10 == v31;
                if (v10 == v31)
                {
                  v10 = 0;
                }

                v30 |= v32;
                v33 = *(v7 + 8 * v10);
              }

              while (v33 == -1);
              v11 = __clz(__rbit64(~v33)) + (v10 << 6);
            }

            *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
            *(*(v35 + 48) + 8 * v11) = v34;
            ++*(v35 + 16);
            continue;
          }

LABEL_21:

          v2 = v22;
          v4 = v21;
        }
      }
    }

    while (sub_22D72E750());
  }

  return v3;
}

uint64_t sub_22D70B624(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v52 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_35;
  }

  while (2)
  {
    v42 = v6;
    v43 = v2;
    v41 = &v41;
    MEMORY[0x28223BE20](a1);
    v46 = &v41 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v46, v7);
    v47 = 0;
    v8 = 0;
    v6 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v49 = v12;
    v50 = "24@0:8^@16";
    v44 = a2;
    v45 = v4;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v51 = (v11 - 1) & v11;
LABEL_15:
      v16 = v13 | (v8 << 6);
      v17 = *(v4 + 48);
      v48 = v16;
      v18 = *(v17 + 8 * v16);
      v19 = *&v18[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection];
      v20 = v18;
      v21 = [v19 remoteProcess];
      v22 = sub_22D72E480();
      v23 = [v21 hasEntitlement_];

      if (v23)
      {
        goto LABEL_29;
      }

      v24 = sub_22D70582C();
      if (!v25)
      {

        goto LABEL_7;
      }

      v26 = v25;
      v27 = *a2;
      if (*(*a2 + 16))
      {
        v28 = v24;
        v29 = *(v27 + 40);
        sub_22D72EA20();

        sub_22D72E4E0();
        v30 = sub_22D72EA40();
        v31 = -1 << *(v27 + 32);
        v32 = v30 & ~v31;
        if (((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
LABEL_26:

          a2 = v44;
          v4 = v45;
          goto LABEL_7;
        }

        v33 = ~v31;
        while (1)
        {
          v34 = (*(v27 + 48) + 16 * v32);
          v35 = *v34 == v28 && v26 == v34[1];
          if (v35 || (sub_22D72E980() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        a2 = v44;
        v4 = v45;
        v12 = v49;
LABEL_29:

        *&v46[(v48 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v48;
        v36 = __OFADD__(v47++, 1);
        v11 = v51;
        if (v36)
        {
          __break(1u);
LABEL_32:
          result = sub_22D71BF88(v46, v42, v47, v4);
          goto LABEL_33;
        }
      }

      else
      {

LABEL_7:
        v12 = v49;
        v11 = v51;
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_32;
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v51 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_35:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v39 = swift_slowAlloc();
  v40 = sub_22D70B240(v39, v6, v4, a2);

  MEMORY[0x2318D0420](v39, -1, -1);
  result = v40;
LABEL_33:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22D70BA10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = a2;
  v4 = a3;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v40 = v11;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v41 = (v10 - 1) & v10;
LABEL_14:
    v39 = v12 | (v6 << 6);
    v15 = *(*(v4 + 48) + 8 * v39);
    v16 = *&v15[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection];
    v17 = v15;
    v18 = [v16 remoteProcess];
    v19 = sub_22D72E480();
    v20 = [v18 hasEntitlement_];

    if (v20)
    {
      goto LABEL_28;
    }

    v21 = sub_22D70582C();
    if (!v22)
    {

      goto LABEL_6;
    }

    v23 = v22;
    v24 = *a4;
    if (*(*a4 + 16))
    {
      v25 = v21;
      v37 = v5;
      v26 = *(v24 + 40);
      sub_22D72EA20();

      sub_22D72E4E0();
      v27 = sub_22D72EA40();
      v28 = -1 << *(v24 + 32);
      v29 = v27 & ~v28;
      if (((*(v24 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
LABEL_25:

        v4 = a3;
        v5 = v37;
        goto LABEL_6;
      }

      v30 = ~v28;
      while (1)
      {
        v31 = (*(v24 + 48) + 16 * v29);
        v32 = *v31 == v25 && v23 == v31[1];
        if (v32 || (sub_22D72E980() & 1) != 0)
        {
          break;
        }

        v29 = (v29 + 1) & v30;
        if (((*(v24 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v4 = a3;
      v5 = v37;
      v11 = v40;
LABEL_28:

      *(a1 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      v33 = __OFADD__(v5++, 1);
      v10 = v41;
      if (v33)
      {
        __break(1u);
LABEL_31:

        sub_22D71BF88(a1, v34, v5, v4);
        return;
      }
    }

    else
    {

LABEL_6:
      v11 = v40;
      v10 = v41;
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_31;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v41 = (v14 - 1) & v14;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_22D70BCF8(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v41 = a4;
  v33 = a2;
  v34 = a1;
  v5 = type metadata accessor for Alarm(0);
  v40 = *(v5 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22D72D7A0();
  v8 = *(*(v43 - 8) + 64);
  result = MEMORY[0x28223BE20](v43);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v42 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v37 = v10 + 16;
  v38 = v10;
  v35 = 0;
  v36 = (v10 + 8);
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v22 = v21 | (v13 << 6);
    v23 = v43;
LABEL_11:
    v26 = v42;
    (*(v38 + 16))(v12, v42[6] + *(v38 + 72) * v22, v23);
    v27 = v39;
    sub_22D6F37E4(v26[7] + *(v40 + 72) * v22, v39);
    v28 = v44;
    sub_22D7046FC(v12, v27, v41);
    v44 = v28;
    if (v28)
    {
      sub_22D6F3848(v27);
      return (*v36)(v12, v23);
    }

    v30 = v29;
    sub_22D6F3848(v27);
    result = (*v36)(v12, v23);
    if (v30)
    {
      *(v34 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
        return sub_22D6D2B38(v34, v33, v35, v42);
      }
    }
  }

  v24 = v13;
  v23 = v43;
  while (1)
  {
    v13 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_22D6D2B38(v34, v33, v35, v42);
    }

    v25 = v15[v13];
    ++v24;
    if (v25)
    {
      v19 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) | (v13 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D70BFD8(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v9 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      v15 = v9;
      v11 = sub_22D70B1A8(v14, v6, a1, v15);
      MEMORY[0x2318D0420](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v8);
  bzero(v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v10 = v9;
  v11 = sub_22D70BCF8((v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v10);

  if (v2)
  {
    swift_willThrow();
  }

LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_22D70C184(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF988, &qword_22D731048);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v37 = &v36 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = sub_22D72DDC0();
  v36 = *(v14 - 8);
  v15 = *(v36 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF590, &qword_22D730590);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v36 - v23);
  sub_22D6D5A4C(v38, &v36 - v23, &qword_27D9FF590, &qword_22D730590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    v26 = sub_22D72DFC0();
    v27 = *(v26 - 8);
    (*(v27 + 56))(v9, 1, 1, v26);
    v28 = sub_22D72D5C0();
    sub_22D6D5A4C(v9, v6, &qword_27D9FF988, &qword_22D731048);
    v29 = 0;
    if ((*(v27 + 48))(v6, 1, v26) != 1)
    {
      sub_22D70D554(&unk_27D9FF990, MEMORY[0x277CB9A48]);
      v29 = sub_22D72E220();
      (*(v27 + 8))(v6, v26);
    }

    (*(v39 + 16))(v39, v29, v28);

    return sub_22D6D5984(v9, &qword_27D9FF988, &qword_22D731048);
  }

  else
  {
    v31 = v36;
    (*(v36 + 32))(v20, v24, v14);
    (*(v31 + 16))(v18, v20, v14);
    sub_22D72DFB0();
    v32 = sub_22D72DFC0();
    v33 = *(v32 - 8);
    (*(v33 + 56))(v13, 0, 1, v32);
    v34 = v37;
    sub_22D6D5A4C(v13, v37, &qword_27D9FF988, &qword_22D731048);
    v35 = 0;
    if ((*(v33 + 48))(v34, 1, v32) != 1)
    {
      sub_22D70D554(&unk_27D9FF990, MEMORY[0x277CB9A48]);
      v35 = sub_22D72E220();
      (*(v33 + 8))(v34, v32);
    }

    (*(v39 + 16))(v39, v35, 0);

    sub_22D6D5984(v13, &qword_27D9FF988, &qword_22D731048);
    return (*(v31 + 8))(v20, v14);
  }
}

void sub_22D70C6AC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v36 = a3;
  v37 = a1;
  v5 = sub_22D72DEB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF590, &qword_22D730590);
  v10 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v12 = (&v33 - v11);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22D70D364;
  *(v14 + 24) = v13;
  _Block_copy(a4);
  _Block_copy(a4);

  v15 = sub_22D70582C();
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v34 = v9;
    v35 = a4;
    v19 = sub_22D705A48();
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      v23 = *__swift_project_boxed_opaque_existential_1((v36 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v36 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      sub_22D6D89E0(v37, v17, v18, v21, v22, sub_22D70D36C, v14);

      v24 = v35;
    }

    else
    {

      if (qword_27D9FF128 != -1)
      {
        swift_once();
      }

      v26 = sub_22D72DBE0();
      __swift_project_value_buffer(v26, qword_27DA01700);
      v27 = sub_22D72DBB0();
      v28 = sub_22D72E580();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v35;
      if (v29)
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_22D6B4000, v27, v28, "Client has not provided an NSAlarmKitUsageDescription value", v31, 2u);
        MEMORY[0x2318D0420](v31, -1, -1);
      }

      (*(v6 + 104))(v34, *MEMORY[0x277CB99D8], v5);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
      v32 = swift_allocError();
      sub_22D72DEC0();
      *v12 = v32;
      swift_storeEnumTagMultiPayload();
      _Block_copy(v30);
      sub_22D70C184(v12, v30);
      _Block_release(v30);
      sub_22D6D5984(v12, &qword_27D9FF590, &qword_22D730590);

      v24 = v30;
    }
  }

  else
  {
    (*(v6 + 104))(v9, *MEMORY[0x277CB99D0], v5);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    v25 = swift_allocError();
    sub_22D72DEC0();
    *v12 = v25;
    swift_storeEnumTagMultiPayload();
    _Block_copy(a4);
    sub_22D70C184(v12, a4);
    _Block_release(a4);
    sub_22D6D5984(v12, &qword_27D9FF590, &qword_22D730590);

    v24 = a4;
  }

  _Block_release(v24);
}

id sub_22D70CB8C(void *a1, int a2, uint64_t a3, _BYTE *a4)
{
  v7 = OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&a4[v7] = v8;
  a4[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_pendingChangeAck] = 0;
  *&a4[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_bufferedAlarms] = 0;
  *&a4[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_delegate + 8] = 0;
  v9 = swift_unknownObjectWeakInit();
  a4[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_wantsAlarmUpdates] = 0;
  *&a4[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection] = a1;
  *&a4[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_pid] = a2;
  *(v9 + 8) = &off_2840CD3C0;
  swift_unknownObjectWeakAssign();
  v12.receiver = a4;
  v12.super_class = type metadata accessor for Client();
  v10 = a1;
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_22D70CC8C(void *a1)
{
  v3 = [a1 remoteProcess];
  v4 = [v3 pid];

  v5 = objc_allocWithZone(type metadata accessor for Client());
  v6 = v1;
  v7 = a1;
  v8 = sub_22D70CB8C(v7, v4, v6, v5);

  v9 = *&v6[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock];

  os_unfair_lock_lock(v9 + 4);
  sub_22D6F5B28(v10);
  os_unfair_lock_unlock(v9 + 4);

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v6;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22D70D3F0;
  *(v12 + 24) = v11;
  aBlock[4] = sub_22D70062C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D70D678;
  aBlock[3] = &block_descriptor_9;
  v13 = _Block_copy(aBlock);
  v14 = v6;
  v15 = v8;

  [v7 configureConnection_];
  _Block_release(v13);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    [v7 activate];
  }
}

void sub_22D70CEC0(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v39 = a1;
  v5 = sub_22D72DEB0();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D72DED0();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF988, &qword_22D731048);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = sub_22D72E190();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    _Block_copy(a3);
    sub_22D72E010();
    _Block_copy(a3);
    sub_22D70C6AC(v24, a2, v26, a3);
    _Block_release(a3);
    swift_unknownObjectRelease();
    (*(v21 + 8))(v24, v20);
  }

  else
  {
    v27 = sub_22D72DFC0();
    v28 = *(v27 - 8);
    (*(v28 + 56))(v19, 1, 1, v27);
    (*(v35 + 104))(v8, *MEMORY[0x277CB99E8], v36);
    _Block_copy(a3);
    sub_22D72DEC0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    v29 = v38;
    v30 = swift_allocError();
    (*(v37 + 32))(v31, v12, v29);
    v32 = sub_22D72D5C0();
    sub_22D6D5A4C(v19, v17, &qword_27D9FF988, &qword_22D731048);
    v33 = 0;
    if ((*(v28 + 48))(v17, 1, v27) != 1)
    {
      sub_22D70D554(&unk_27D9FF990, MEMORY[0x277CB9A48]);
      v33 = sub_22D72E220();
      (*(v28 + 8))(v17, v27);
    }

    (a3)[2](a3, v33, v32);

    sub_22D6D5984(v19, &qword_27D9FF988, &qword_22D731048);
  }

  _Block_release(a3);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22D70D410()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22D7053CC();
}

uint64_t objectdestroy_70Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D70D458()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22D705578();
}

double sub_22D70D4A0@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

uint64_t sub_22D70D4E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D70D554(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22D70D5C0(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *(v2 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_pendingChangeAck) = 0;
  v3 = *(v2 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_bufferedAlarms);
  *(v2 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_bufferedAlarms) = 0;
  *a1 = v3;
}

uint64_t sub_22D70D678(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

void sub_22D70D6CC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_22D70D738(void *a1, uint64_t a2)
{
  v4 = sub_22D72E1D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D72E260();
  sub_22D72E690();
  (*(v5 + 8))(v8, v4);
  sub_22D72E250();
  v9 = sub_22D72E480();

  [a1 setService_];

  return [a1 setDelegate_];
}

void *sub_22D70D864()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9B0, &qword_22D7302B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5D0, &unk_22D7305C0);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - v8;
  result = *(v0 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_listener);
  if (result)
  {
    [result activate];
    v11 = *__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager), *(v0 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager + 24));
    v18 = sub_22D6F5D3C();
    v19 = *(v1 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_queue);
    v12 = v19;
    v13 = sub_22D72E5E0();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5D8, qword_22D731140);
    sub_22D6D5838();
    sub_22D6D58D4(&qword_281457260, &qword_27D9FF5D8, qword_22D731140);
    sub_22D7135D8(&qword_281457180, sub_22D6D5838);
    sub_22D72DCA0();
    sub_22D6D5984(v5, &qword_27D9FF9B0, &qword_22D7302B0);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_22D6D58D4(&unk_281457288, &qword_27D9FF5D0, &unk_22D7305C0);
    v15 = v17;
    sub_22D72DCB0();

    (*(v6 + 8))(v9, v15);
    swift_beginAccess();
    sub_22D72DC00();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22D70DBC0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = *(Strong + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_lock);
  v22 = MEMORY[0x28223BE20](Strong);
  MEMORY[0x28223BE20](v22);

  os_unfair_lock_lock(v3 + 4);
  sub_22D6F59F4(v24);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v24[0];

  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_22D72E720();
    _s12AlarmKitCore6ClientCMa_0();
    sub_22D7135D8(&unk_27D9FFB40, _s12AlarmKitCore6ClientCMa_0);
    sub_22D72E560();
    v4 = v24[0];
    v5 = v24[1];
    v6 = v24[2];
    v7 = v24[3];
    v8 = v24[4];
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);
  }

  v12 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    if (!sub_22D72E750() || (_s12AlarmKitCore6ClientCMa_0(), v17 = swift_dynamicCast(), v18 = v23, v15 = v7, v16 = v8, !v23))
    {
LABEL_21:
      sub_22D6D3C44();

      return;
    }

LABEL_19:
    v19 = *&v18[OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock];
    v20 = MEMORY[0x28223BE20](v17);
    MEMORY[0x28223BE20](v20);
    os_unfair_lock_lock(v19 + 4);
    sub_22D6FF31C(&v23);
    os_unfair_lock_unlock(v19 + 4);
    if (v23)
    {
      v21 = type metadata accessor for AuthorizationBundleIDState();
      sub_22D70E0F0(a1 + *(v21 + 20));
    }

    v7 = v15;
    v8 = v16;
  }

  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    v18 = v17;
    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_21;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_22D70DFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_lock_clients;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v9[2] = a2;

  result = sub_22D711C8C(sub_22D7136E8, v9, v7);
  *a3 = result;
  return result;
}

uint64_t sub_22D70E074(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = sub_22D70EE44();
  if (v5)
  {
    if (v4 == *a2 && v5 == a2[1])
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_22D72E980();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_22D70E0F0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_22D72E100();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D72E2A0();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock];
  v28 = v1;
  v29 = a1;
  v25 = sub_22D713638;
  v26 = &v27;
  os_unfair_lock_lock(v13 + 4);
  sub_22D70D638(&aBlock);
  if (v2)
  {
    os_unfair_lock_unlock(v13 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v13 + 4);
    if (aBlock)
    {
      if ([*&v1[OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection] remoteTarget])
      {
        sub_22D72E6D0();
        swift_unknownObjectRelease();
      }

      else
      {
        v34 = 0u;
        v35 = 0u;
      }

      aBlock = v34;
      v31 = v35;
      if (*(&v35 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFB50, &qword_22D731158);
        if (swift_dynamicCast())
        {
          v14 = v36;
          (*(v23 + 16))(v8, a1, v5);
          sub_22D72E290();
          sub_22D7135D8(&qword_27D9FFA90, MEMORY[0x277CB9B28]);
          v15 = sub_22D72E220();
          v16 = swift_allocObject();
          *(v16 + 16) = v3;
          v32 = sub_22D713654;
          v33 = v16;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v31 = sub_22D70D6CC;
          *(&v31 + 1) = &block_descriptor_75;
          v17 = _Block_copy(&aBlock);
          v18 = v3;

          [v14 stateDidUpdateWithParameters:v15 completion:v17];
          _Block_release(v17);
          swift_unknownObjectRelease();

          (*(v24 + 8))(v12, v9);
          return;
        }
      }

      else
      {
        sub_22D6D5984(&aBlock, &qword_27D9FF9F0, &unk_22D730240);
      }

      if (qword_27D9FF128 != -1)
      {
        swift_once();
      }

      v19 = sub_22D72DBE0();
      __swift_project_value_buffer(v19, qword_27DA01700);
      v20 = sub_22D72DBB0();
      v21 = sub_22D72E590();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_22D6B4000, v20, v21, "Failed to cast connection to client interface protocol", v22, 2u);
        MEMORY[0x2318D0420](v22, -1, -1);
      }
    }
  }
}

void sub_22D70E638(uint64_t a1, void *a2)
{
  swift_beginAccess();
  sub_22D6F1BB4(&v4, a2);
  v3 = v4;
  swift_endAccess();
}

void sub_22D70E6B4(void *a1, void *a2, uint64_t a3)
{
  sub_22D72E250();
  v6 = sub_22D72E480();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v8 = objc_opt_self();
  v9 = [v8 protocolForProtocol_];
  [v7 setClient_];

  v10 = [v8 protocolForProtocol_];
  [v7 setServer_];

  v11 = [objc_opt_self() main];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a2;
  v24 = sub_22D713588;
  v25 = v13;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22D6FD4B4;
  v23 = &block_descriptor_58;
  v14 = _Block_copy(&v20);
  v15 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v14);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v24 = sub_22D713590;
  v25 = v17;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22D6FD4B4;
  v23 = &block_descriptor_65_1;
  v18 = _Block_copy(&v20);
  v19 = v15;

  [a1 setInvalidationHandler_];
  _Block_release(v18);
}

uint64_t sub_22D70E9E4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27D9FF128 != -1)
    {
      swift_once();
    }

    v2 = sub_22D72DBE0();
    __swift_project_value_buffer(v2, qword_27DA01700);
    v3 = sub_22D72DBB0();
    v4 = sub_22D72E5A0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22D6B4000, v3, v4, "Connection interrupted", v5, 2u);
      MEMORY[0x2318D0420](v5, -1, -1);
    }

    v6 = *&v1[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_lock];
    v8 = MEMORY[0x28223BE20](v7);
    MEMORY[0x28223BE20](v8);

    os_unfair_lock_lock(v6 + 4);
    sub_22D6F5B28(v9);
    os_unfair_lock_unlock(v6 + 4);
  }

  return result;
}

uint64_t sub_22D70EB90()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27D9FF128 != -1)
    {
      swift_once();
    }

    v2 = sub_22D72DBE0();
    __swift_project_value_buffer(v2, qword_27DA01700);
    v3 = sub_22D72DBB0();
    v4 = sub_22D72E5A0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22D6B4000, v3, v4, "Connection invalidated", v5, 2u);
      MEMORY[0x2318D0420](v5, -1, -1);
    }

    v6 = *&v1[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_lock];
    v8 = MEMORY[0x28223BE20](v7);
    MEMORY[0x28223BE20](v8);

    os_unfair_lock_lock(v6 + 4);
    sub_22D6F5B28(v9);
    os_unfair_lock_unlock(v6 + 4);
  }

  return result;
}

void sub_22D70ED3C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v3 = sub_22D71C474(a2);
  swift_endAccess();
}

uint64_t sub_22D70EE44()
{
  v1 = *(v0 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection);
  v2 = [v1 remoteProcess];
  v3 = sub_22D72E480();
  v4 = [v2 valueForEntitlement_];

  if (v4)
  {
    sub_22D72E6D0();
    swift_unknownObjectRelease();
    sub_22D6D5254(v10, v11);
    sub_22D6D5254(v11, v10);
    if (swift_dynamicCast())
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = [v1 remoteProcess];
    v7 = [v6 bundleIdentifier];

    if (v7)
    {
      v8 = sub_22D72E490();

      return v8;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22D70EFB0()
{
  v1 = v0;
  result = sub_22D70EE44();
  if (v3)
  {
    v4 = v3;
    v5 = result;
    v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v7 = sub_22D72868C(v5, v4, 0);
    v11 = v7;
    if (v7 && (v12 = sub_22D6FF3AC(), v14 = v13, v11, v14))
    {
      return v12;
    }

    else
    {
      v8 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection) remoteProcess];
      v9 = sub_22D72E480();
      v10 = [v8 hasEntitlement_];

      if (v10)
      {
        return 0x64656C7469746E45;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22D70F190@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22D72E7D0();

  LODWORD(v9) = *(a1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_pid);
  v4 = sub_22D72E960();
  MEMORY[0x2318CF680](v4);

  MEMORY[0x2318CF680](0x656C646E7562203BLL, 0xEC000000203A4449);
  v5 = [*(a1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection) remoteProcess];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_22D72E490();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF9A0, &unk_22D731130);
  v7 = sub_22D72E4C0();
  MEMORY[0x2318CF680](v7);

  result = MEMORY[0x2318CF680](41, 0xE100000000000000);
  *a2 = 0x203A646970;
  a2[1] = 0xE500000000000000;
  return result;
}

id sub_22D70F364(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s12AlarmKitCore6ClientCMa_0()
{
  result = qword_27D9FFA78;
  if (!qword_27D9FFA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22D70F46C()
{
  sub_22D70F538();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22D70F538()
{
  if (!qword_27D9FFA88)
  {
    sub_22D72E100();
    v0 = sub_22D72E6C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9FFA88);
    }
  }
}

uint64_t sub_22D70F590@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22D72E1E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72E100();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CB9AF8], v3);
    sub_22D72E200();
    sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00]);
    swift_allocError();
    sub_22D72E1F0();
    return swift_willThrow();
  }

  v28 = v8;
  v29 = a1;
  v30 = v7;
  sub_22D72E2E0();
  if (v15)
  {

    v16 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection) remoteProcess];
    v17 = sub_22D72E480();
    v18 = [v16 hasEntitlement_];

    if (!v18)
    {
      v24 = MEMORY[0x277CB9AE8];
LABEL_12:
      (*(v4 + 104))(v30, *v24, v3);
      sub_22D72E200();
      sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00]);
      swift_allocError();
      sub_22D72E1F0();
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  sub_22D72E2E0();
  if (!v19)
  {
    sub_22D70EE44();
    if (!v20)
    {
      v24 = MEMORY[0x277CB9AF0];
      goto LABEL_12;
    }
  }

  __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager), *(Strong + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager + 24));
  v21 = off_2840CCC08;
  type metadata accessor for AuthorizationManager();
  v22 = v32;
  v21();
  if (v22)
  {
    swift_unknownObjectRelease();
  }

  else
  {

    v25 = v31;
    v26 = v28;
    (*(v31 + 16))(v12, v14, v28);
    sub_22D72E290();
    swift_unknownObjectRelease();
    return (*(v25 + 8))(v14, v26);
  }
}

uint64_t sub_22D70FC58(uint64_t a1, void (*a2)(char *, void *), uint64_t a3)
{
  v25 = a3;
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFAB8, &unk_22D731120);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_22D72E100();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFAC0, &qword_22D7306F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v25 - v18);
  sub_22D6D5A4C(a1, &v25 - v18, &unk_27D9FFAC0, &qword_22D7306F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    v21 = sub_22D72E2A0();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = sub_22D72D5C0();
    v26(v7, v22);

    return sub_22D6D5984(v7, &qword_27D9FFAB8, &unk_22D731120);
  }

  else
  {
    (*(v9 + 32))(v15, v19, v8);
    (*(v9 + 16))(v13, v15, v8);
    sub_22D72E290();
    v24 = sub_22D72E2A0();
    (*(*(v24 - 8) + 56))(v7, 0, 1, v24);
    v26(v7, 0);
    sub_22D6D5984(v7, &qword_27D9FFAB8, &unk_22D731120);
    return (*(v9 + 8))(v15, v8);
  }
}

void sub_22D70FFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFAB8, &unk_22D731120);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  sub_22D6D5A4C(a1, &v13 - v8, &qword_27D9FFAB8, &unk_22D731120);
  v10 = sub_22D72E2A0();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_22D7135D8(&qword_27D9FFA90, MEMORY[0x277CB9B28]);
    v12 = sub_22D72E220();
    (*(v11 + 8))(v9, v10);
  }

  (*(a3 + 16))(a3, v12, a2);
}

uint64_t sub_22D710150()
{
  v1 = sub_22D72E1E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [*(v0 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection) remoteProcess];
    v9 = sub_22D72E480();
    v10 = [v8 hasEntitlement_];

    if (v10)
    {
      sub_22D72E2E0();
      if (v11)
      {
        __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager), *(v7 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager + 24));
        v12 = off_2840CCC18[0];
        type metadata accessor for AuthorizationManager();
        v12();
        swift_unknownObjectRelease();
      }

      v14 = MEMORY[0x277CB9AF0];
    }

    else
    {
      v14 = MEMORY[0x277CB9AE8];
    }

    (*(v2 + 104))(v5, *v14, v1);
    sub_22D72E200();
    sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00]);
    swift_allocError();
    sub_22D72E1F0();
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v2 + 104))(v5, *MEMORY[0x277CB9AF8], v1);
    sub_22D72E200();
    sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00]);
    swift_allocError();
    sub_22D72E1F0();
    return swift_willThrow();
  }
}

uint64_t sub_22D7105E0(uint64_t a1)
{
  v20[3] = a1;
  v3 = sub_22D72E1E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72E100();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v20[0] = v9;
    v20[1] = v2;
    v15 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection) remoteProcess];
    v16 = sub_22D72E480();
    v17 = [v15 hasEntitlement_];

    if (v17)
    {
      sub_22D72E2B0();
      sub_22D72E2C0();
      __swift_project_boxed_opaque_existential_1((v14 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager), *(v14 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager + 24));
      v18 = off_2840CCC20;
      type metadata accessor for AuthorizationManager();
      v18();
      swift_unknownObjectRelease();

      return (*(v20[0] + 8))(v12, v8);
    }

    else
    {
      (*(v4 + 104))(v7, *MEMORY[0x277CB9AE8], v3);
      sub_22D72E200();
      sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00]);
      swift_allocError();
      sub_22D72E1F0();
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CB9AF8], v3);
    sub_22D72E200();
    sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00]);
    swift_allocError();
    sub_22D72E1F0();
    return swift_willThrow();
  }
}

uint64_t sub_22D710B08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22D72E1E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CB9AF8], v3);
    sub_22D72E200();
    sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00]);
    swift_allocError();
    sub_22D72E1F0();
    return swift_willThrow();
  }

  v15[1] = a1;
  v8 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection) remoteProcess];
  v9 = sub_22D72E480();
  v10 = [v8 hasEntitlement_];

  if (!v10)
  {
    v14 = MEMORY[0x277CB9AE8];
LABEL_8:
    (*(v4 + 104))(v7, *v14, v3);
    sub_22D72E200();
    sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00]);
    swift_allocError();
    sub_22D72E1F0();
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v11 = sub_22D72E2E0();
  if (!v12)
  {
    v14 = MEMORY[0x277CB9AF0];
    goto LABEL_8;
  }

  sub_22D6F9524(v11, v12);

  sub_22D72E270();
  return swift_unknownObjectRelease();
}

void sub_22D711054(uint64_t a1@<X8>)
{
  v21 = a1;
  v3 = sub_22D72E1E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22D72E100();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = *(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock);
  v20 = v1;
  v17 = sub_22D711BE4;
  v18 = &v19;
  os_unfair_lock_lock(v10 + 4);
  sub_22D6F5B28(v11);
  if (v2)
  {
    os_unfair_lock_unlock(v10 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v10 + 4);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      sub_22D70EE44();
      if (v14)
      {
        __swift_project_boxed_opaque_existential_1((v13 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager), *(v13 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager + 24));
        v15 = off_2840CCC08;
        type metadata accessor for AuthorizationManager();
        v15();

        sub_22D72E290();
      }

      else
      {
        (*(v4 + 104))(v7, *MEMORY[0x277CB9AF0], v3);
        sub_22D72E200();
        sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00]);
        swift_allocError();
        sub_22D72E1F0();
        swift_willThrow();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      (*(v4 + 104))(v7, *MEMORY[0x277CB9AF8], v3);
      sub_22D72E200();
      sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00]);
      swift_allocError();
      sub_22D72E1F0();
      swift_willThrow();
    }
  }
}

uint64_t sub_22D7115BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF398, qword_22D730B40);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock_pendingChangeAck;
  v12 = 1;
  if (*(a1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock_pendingChangeAck) == 1)
  {
    v13 = sub_22D72E100();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v10, a2, v13);
    (*(v14 + 56))(v10, 0, 1, v13);
    v15 = OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock_bufferedState;
    swift_beginAccess();
    sub_22D713678(v10, a1 + v15);
    result = swift_endAccess();
    *(a1 + v11) = 1;
    v12 = 0;
  }

  *a3 = v12;
  return result;
}

uint64_t sub_22D711740(uint64_t a1, uint64_t a2)
{
  v3 = sub_22D72E100();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF398, qword_22D730B40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-v13];
  v15 = *(a2 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock);
  v22 = a2;
  v19 = sub_22D71365C;
  v20 = &v21;
  os_unfair_lock_lock(v15 + 4);
  sub_22D6F4510(v16);
  os_unfair_lock_unlock(v15 + 4);
  sub_22D6D5A4C(v14, v12, &qword_27D9FF398, qword_22D730B40);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    sub_22D6D5984(v14, &qword_27D9FF398, qword_22D730B40);
    v14 = v12;
  }

  else
  {
    (*(v4 + 32))(v7, v12, v3);
    sub_22D70E0F0(v7);
    (*(v4 + 8))(v7, v3);
  }

  return sub_22D6D5984(v14, &qword_27D9FF398, qword_22D730B40);
}

uint64_t sub_22D711AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF398, qword_22D730B40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11[-v6];
  *(a1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock_pendingChangeAck) = 0;
  v8 = OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock_bufferedState;
  swift_beginAccess();
  sub_22D6D5A4C(a1 + v8, a2, &qword_27D9FF398, qword_22D730B40);
  v9 = sub_22D72E100();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  swift_beginAccess();
  sub_22D713678(v7, a1 + v8);
  return swift_endAccess();
}

void *sub_22D711BFC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_22D71216C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_22D711C8C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277D84FA0];
    v23 = MEMORY[0x277D84FA0];
    sub_22D72E720();
    if (sub_22D72E750())
    {
      _s12AlarmKitCore6ClientCMa_0();
      while (1)
      {
        swift_dynamicCast();
        v6 = a1(&v22);
        if (v3)
        {
          break;
        }

        v7 = v22;
        if (v6)
        {
          v8 = *(v4 + 16);
          if (*(v4 + 24) <= v8)
          {
            sub_22D6F228C(v8 + 1);
          }

          v4 = v23;
          v9 = *(v23 + 40);
          result = sub_22D72E6A0();
          v11 = v4 + 56;
          v12 = -1 << *(v4 + 32);
          v13 = result & ~v12;
          v14 = v13 >> 6;
          if (((-1 << v13) & ~*(v4 + 56 + 8 * (v13 >> 6))) != 0)
          {
            v15 = __clz(__rbit64((-1 << v13) & ~*(v4 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v16 = 0;
            v17 = (63 - v12) >> 6;
            do
            {
              if (++v14 == v17 && (v16 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v18 = v14 == v17;
              if (v14 == v17)
              {
                v14 = 0;
              }

              v16 |= v18;
              v19 = *(v11 + 8 * v14);
            }

            while (v19 == -1);
            v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          }

          *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
          *(*(v4 + 48) + 8 * v15) = v7;
          ++*(v4 + 16);
        }

        else
        {
        }

        if (!sub_22D72E750())
        {
          goto LABEL_21;
        }
      }

      v21 = v22;
    }

    else
    {
LABEL_21:
    }
  }

  else
  {
    v20 = sub_22D711EBC(a1, a2, a3);
    if (!v3)
    {
      return v20;
    }
  }

  return v4;
}

uint64_t sub_22D711EBC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v30 = a1;
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v26 = v6;
    v31 = v3;
    v28 = &v26;
    MEMORY[0x28223BE20](a1);
    v27 = &v26 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v7);
    v29 = 0;
    v8 = 0;
    v6 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v17 = v4;
      v32[0] = *(*(v4 + 48) + 8 * v16);
      v18 = v32[0];
      v3 = v31;
      v19 = v30(v32);
      v31 = v3;
      if (v3)
      {

        result = swift_willThrow();
        goto LABEL_18;
      }

      v20 = v19;

      v4 = v17;
      if (v20)
      {
        *&v27[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_22D71BF9C(v27, v26, v29, v4);
          goto LABEL_18;
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_17;
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = sub_22D711BFC(v24, v6, v4, v30);

  result = MEMORY[0x2318D0420](v24, -1, -1);
  if (!v3)
  {
    result = v25;
  }

LABEL_18:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22D71216C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_22D71BF9C(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_22D7122D8@<X0>(void *(*a1)(void *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_22D71231C(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFAB8, &unk_22D731120);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v37 = &v36 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = sub_22D72E100();
  v36 = *(v14 - 8);
  v15 = *(v36 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFAC0, &qword_22D7306F0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v36 - v23);
  sub_22D6D5A4C(v38, &v36 - v23, &unk_27D9FFAC0, &qword_22D7306F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    v26 = sub_22D72E2A0();
    v27 = *(v26 - 8);
    (*(v27 + 56))(v9, 1, 1, v26);
    v28 = sub_22D72D5C0();
    sub_22D6D5A4C(v9, v6, &qword_27D9FFAB8, &unk_22D731120);
    v29 = 0;
    if ((*(v27 + 48))(v6, 1, v26) != 1)
    {
      sub_22D7135D8(&qword_27D9FFA90, MEMORY[0x277CB9B28]);
      v29 = sub_22D72E220();
      (*(v27 + 8))(v6, v26);
    }

    (*(v39 + 16))(v39, v29, v28);

    return sub_22D6D5984(v9, &qword_27D9FFAB8, &unk_22D731120);
  }

  else
  {
    v31 = v36;
    (*(v36 + 32))(v20, v24, v14);
    (*(v31 + 16))(v18, v20, v14);
    sub_22D72E290();
    v32 = sub_22D72E2A0();
    v33 = *(v32 - 8);
    (*(v33 + 56))(v13, 0, 1, v32);
    v34 = v37;
    sub_22D6D5A4C(v13, v37, &qword_27D9FFAB8, &unk_22D731120);
    v35 = 0;
    if ((*(v33 + 48))(v34, 1, v32) != 1)
    {
      sub_22D7135D8(&qword_27D9FFA90, MEMORY[0x277CB9B28]);
      v35 = sub_22D72E220();
      (*(v33 + 8))(v34, v32);
    }

    (*(v39 + 16))(v39, v35, 0);

    sub_22D6D5984(v13, &qword_27D9FFAB8, &unk_22D731120);
    return (*(v31 + 8))(v20, v14);
  }
}

void sub_22D712844(uint64_t a1, uint64_t a2, const void *a3)
{
  v34 = a2;
  v4 = sub_22D72DEB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFAC0, &qword_22D7306F0);
  v9 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v11 = (&v32 - v10);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22D7134B4;
  *(v13 + 24) = v12;
  _Block_copy(a3);
  _Block_copy(a3);

  v14 = sub_22D70EE44();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v32 = v8;
    v33 = a3;
    v18 = sub_22D70EFB0();
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      v22 = *__swift_project_boxed_opaque_existential_1((v34 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager), *(v34 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager + 24));
      sub_22D6F6E50(v16, v17, v20, v21, sub_22D7134BC, v13);

      v23 = v33;
    }

    else
    {

      if (qword_27D9FF128 != -1)
      {
        swift_once();
      }

      v25 = sub_22D72DBE0();
      __swift_project_value_buffer(v25, qword_27DA01700);
      v26 = sub_22D72DBB0();
      v27 = sub_22D72E580();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v33;
      if (v28)
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_22D6B4000, v26, v27, "Client has not provided an NSAlarmKitUsageDescription value", v30, 2u);
        MEMORY[0x2318D0420](v30, -1, -1);
      }

      (*(v5 + 104))(v32, *MEMORY[0x277CB99D8], v4);
      sub_22D72DED0();
      sub_22D7135D8(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
      v31 = swift_allocError();
      sub_22D72DEC0();
      *v11 = v31;
      swift_storeEnumTagMultiPayload();
      _Block_copy(v29);
      sub_22D71231C(v11, v29);
      _Block_release(v29);
      sub_22D6D5984(v11, &unk_27D9FFAC0, &qword_22D7306F0);

      v23 = v29;
    }
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277CB99D0], v4);
    sub_22D72DED0();
    sub_22D7135D8(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    v24 = swift_allocError();
    sub_22D72DEC0();
    *v11 = v24;
    swift_storeEnumTagMultiPayload();
    _Block_copy(a3);
    sub_22D71231C(v11, a3);
    _Block_release(a3);
    sub_22D6D5984(v11, &unk_27D9FFAC0, &qword_22D7306F0);

    v23 = a3;
  }

  _Block_release(v23);
}

id sub_22D712D20(void *a1, int a2, uint64_t a3, _BYTE *a4)
{
  v7 = OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&a4[v7] = v8;
  a4[OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock_pendingChangeAck] = 0;
  v9 = OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock_bufferedState;
  v10 = sub_22D72E100();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  *&a4[OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_delegate + 8] = 0;
  v11 = swift_unknownObjectWeakInit();
  a4[OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock_wantsStateUpdates] = 0;
  *&a4[OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection] = a1;
  *&a4[OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_pid] = a2;
  *(v11 + 8) = &off_2840CD648;
  swift_unknownObjectWeakAssign();
  v14.receiver = a4;
  v14.super_class = _s12AlarmKitCore6ClientCMa_0();
  v12 = a1;
  return objc_msgSendSuper2(&v14, sel_init);
}

void sub_22D712E5C(void *a1)
{
  v3 = [a1 remoteProcess];
  v4 = [v3 pid];

  v5 = objc_allocWithZone(_s12AlarmKitCore6ClientCMa_0());
  v6 = v1;
  v7 = a1;
  v8 = sub_22D712D20(v7, v4, v6, v5);

  v9 = *&v6[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_lock];

  os_unfair_lock_lock(v9 + 4);
  sub_22D6F5B28(v10);
  os_unfair_lock_unlock(v9 + 4);

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v6;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22D713540;
  *(v12 + 24) = v11;
  aBlock[4] = sub_22D713548;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D70D678;
  aBlock[3] = &block_descriptor_10;
  v13 = _Block_copy(aBlock);
  v14 = v6;
  v15 = v8;

  [v7 configureConnection_];
  _Block_release(v13);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    [v7 activate];
  }
}

void sub_22D713090(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = sub_22D72E1E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D72E200();
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFAB8, &unk_22D731120);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    _Block_copy(a2);
    sub_22D712844(a1, v21, a2);
    swift_unknownObjectRelease();

    _Block_release(a2);
  }

  else
  {
    v22 = sub_22D72E2A0();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v19, 1, 1, v22);
    (*(v5 + 104))(v8, *MEMORY[0x277CB9AF8], v4);
    _Block_copy(a2);
    sub_22D72E1F0();
    sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00]);
    v24 = swift_allocError();
    (*(v29 + 32))(v25, v12, v9);
    v26 = sub_22D72D5C0();
    sub_22D6D5A4C(v19, v17, &qword_27D9FFAB8, &unk_22D731120);
    v27 = 0;
    if ((*(v23 + 48))(v17, 1, v22) != 1)
    {
      sub_22D7135D8(&qword_27D9FFA90, MEMORY[0x277CB9B28]);
      v27 = sub_22D72E220();
      (*(v23 + 8))(v17, v22);
    }

    (a2)[2](a2, v27, v26);

    sub_22D6D5984(v19, &qword_27D9FFAB8, &unk_22D731120);
    _Block_release(a2);
  }
}

void *sub_22D7134E0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_22D713548()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22D713588()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22D70E9E4();
}

uint64_t sub_22D713590()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22D70EB90();
}

uint64_t sub_22D7135D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22D713678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF398, qword_22D730B40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D713738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v69 = a1;
  v75 = a3;
  v67 = sub_22D72DDA0();
  v66 = *(v67 - 8);
  v6 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v72 = (&v63 - v10);
  v73 = sub_22D72DDB0();
  v71 = *(v73 - 8);
  v11 = *(v71 + 64);
  v12 = MEMORY[0x28223BE20](v73);
  v68 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = &v63 - v14;
  v15 = sub_22D72DD20();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22D72D730();
  v74 = *(v20 - 8);
  v21 = *(v74 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v64 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v63 - v24;
  v26 = type metadata accessor for Alarm(0);
  v27 = v3 + v26[14];
  v63 = sub_22D717684(&unk_27D9FF4E0, MEMORY[0x277CC9578]);
  v28 = sub_22D72E3F0();
  v29 = v20;
  v30 = v74;
  if (v28)
  {
    v31 = v27;
  }

  else
  {
    v31 = a2;
  }

  v32 = v29;
  (*(v74 + 16))(v25, v31);
  (*(v16 + 16))(v19, v3 + v26[11], v15);
  v33 = (*(v16 + 88))(v19, v15);
  if (v33 == *MEMORY[0x277CB9920])
  {
    v34 = v72;
    sub_22D6D5A4C(v4 + v26[8], v72, &qword_27D9FF4B0, &unk_22D7301A0);
    v35 = v71;
    v36 = v73;
    if ((*(v71 + 48))(v34, 1, v73) == 1)
    {
      (*(v30 + 8))(v25, v32);
      sub_22D6D5984(v34, &qword_27D9FF4B0, &unk_22D7301A0);
      return (*(v30 + 56))(v75, 1, 1, v32);
    }

    v40 = v70;
    (*(v35 + 32))(v70, v34, v36);
    sub_22D6D5A4C(v69, &v76, &qword_27D9FF500, &qword_22D730530);
    v41 = v75;
    if (!v77)
    {
      (*(v35 + 8))(v40, v36);
      (*(v30 + 8))(v25, v32);
      sub_22D6D5984(&v76, &qword_27D9FF500, &qword_22D730530);
      return (*(v30 + 56))(v41, 1, 1, v32);
    }

    v42 = v30;
    sub_22D6D5D34(&v76, v78);
    v43 = v68;
    (*(v35 + 16))(v68, v40, v36);
    v44 = (*(v35 + 88))(v43, v36);
    if (v44 == *MEMORY[0x277CB9948])
    {
      (*(v35 + 96))(v43, v36);
      v45 = v36;
      v46 = v64;
      v47 = v43;
      v48 = v25;
      v72 = *(v42 + 32);
      (v72)(v64, v47, v32);
      v49 = sub_22D72E3E0();
      (*(v35 + 8))(v40, v45);
      v50 = *(v42 + 8);
      v50(v48, v32);
      if (v49)
      {
        v50(v46, v32);
        v51 = 1;
        v52 = v75;
      }

      else
      {
        v52 = v75;
        (v72)(v75, v46, v32);
        v51 = 0;
      }

      (*(v42 + 56))(v52, v51, 1, v32);
      return __swift_destroy_boxed_opaque_existential_1Tm(v78);
    }

    if (v44 == *MEMORY[0x277CB9960])
    {
      v56 = v41;
      v57 = v25;
      (*(v35 + 96))(v43, v36);
      v58 = v43;
      v59 = v66;
      v60 = v65;
      v61 = v67;
      (*(v66 + 32))(v65, v58, v67);
      v62 = *__swift_project_boxed_opaque_existential_1(v78, v78[3]);
      sub_22D722F80(v60, v57, v56);
      (*(v59 + 8))(v60, v61);
      (*(v35 + 8))(v70, v36);
      (*(v74 + 8))(v57, v32);
      return __swift_destroy_boxed_opaque_existential_1Tm(v78);
    }

    goto LABEL_26;
  }

  if (v33 != *MEMORY[0x277CB9918])
  {
    if (v33 == *MEMORY[0x277CB9908] || v33 == *MEMORY[0x277CB9910])
    {
      (*(v30 + 8))(v25, v32);
      return (*(v30 + 56))(v75, 1, 1, v32);
    }

    sub_22D72E970();
    __break(1u);
LABEL_26:
    result = sub_22D72E970();
    __break(1u);
    return result;
  }

  v37 = v25;
  sub_22D714000();
  if (v38)
  {
    (*(v30 + 8))(v25, v32);
    return (*(v30 + 56))(v75, 1, 1, v32);
  }

  else
  {
    v53 = (v3 + v26[10]);
    v54 = *v53;
    *(v53 + 8);
    sub_22D72D690();
    v55 = v75;
    sub_22D72D6A0();
    (*(v30 + 8))(v37, v32);
    return (*(v30 + 56))(v55, 0, 1, v32);
  }
}

uint64_t sub_22D714000()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_22D72DCF0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Alarm(0);
  sub_22D6D5A4C(v0 + *(v10 + 36), v4, &qword_27D9FF310, &qword_22D7301B8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_22D6D5984(v4, &qword_27D9FF310, &qword_22D7301B8);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    if (*(v0 + *(v10 + 28)))
    {
      v12 = sub_22D72DCE0();
    }

    else
    {
      v12 = sub_22D72DCD0();
    }

    v13 = v12;
    (*(v6 + 8))(v9, v5);
    return v13;
  }
}

uint64_t sub_22D7141DC(uint64_t a1)
{
  v23 = a1;
  v2 = sub_22D72DD20();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Alarm(0);
  v8 = v7[11];
  v9 = *MEMORY[0x277CB9918];
  v22 = v3[13];
  v22(v6, v9, v2);
  v10 = sub_22D72DD10();
  v11 = v3[1];
  v11(v6, v2);
  if (v10)
  {
    v12 = v1 + v7[10];
    v13 = *v12;
    if (*(v12 + 8))
    {
      v14 = 0.0;
    }

    else
    {
      v14 = *v12;
    }

    v15 = v7[14];
    v16 = v1;
    v17 = v23;
    sub_22D72D690();
    *v12 = v14 + v18;
    *(v12 + 8) = 0;
    v19 = sub_22D72D730();
    (*(*(v19 - 8) + 24))(v16 + v15, v17, v19);
    v11((v16 + v8), v2);
    return (v22)(v16 + v8, *MEMORY[0x277CB9908], v2);
  }

  else
  {
    sub_22D6F45E8();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22D7143F0(uint64_t a1, double a2)
{
  v20 = a1;
  v4 = sub_22D72DD20();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Alarm(0);
  v10 = v9[11];
  v11 = *MEMORY[0x277CB9910];
  v21 = v5[13];
  v21(v8, v11, v4);
  v12 = sub_22D72DD10();
  v13 = v5[1];
  v13(v8, v4);
  if (v12 & 1) != 0 || (v21(v8, *MEMORY[0x277CB9908], v4), v14 = sub_22D72DD10(), v13(v8, v4), (v14) || (v21(v8, *MEMORY[0x277CB9920], v4), v15 = sub_22D72DD10(), v13(v8, v4), (v15))
  {
    v16 = v2 + v9[10];
    *v16 = a2;
    *(v16 + 8) = 0;
    v17 = v9[14];
    v18 = sub_22D72D730();
    (*(*(v18 - 8) + 24))(v2 + v17, v20, v18);
    v13((v2 + v10), v4);
    return (v21)(v2 + v10, *MEMORY[0x277CB9918], v4);
  }

  else
  {
    sub_22D6F45E8();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22D714670(uint64_t a1)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v67 - v5;
  v6 = sub_22D72D730();
  v7 = *(v6 - 8);
  v76 = v6;
  v77 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v69 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v67 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v73 = &v67 - v14;
  MEMORY[0x28223BE20](v13);
  v75 = &v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v72 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v67 - v21;
  MEMORY[0x28223BE20](v20);
  v74 = &v67 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v67 - v26;
  v28 = sub_22D72DDB0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v79 = &v67 - v34;
  v35 = sub_22D72DD20();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Alarm(0);
  (*(v36 + 16))(v39, v2 + v40[11], v35);
  v41 = (*(v36 + 88))(v39, v35);
  if (v41 == *MEMORY[0x277CB9920])
  {
    sub_22D6D5A4C(v2 + v40[8], v27, &qword_27D9FF4B0, &unk_22D7301A0);
    if ((*(v29 + 48))(v27, 1, v28) == 1)
    {
      v42 = &qword_27D9FF4B0;
      v43 = &unk_22D7301A0;
      v44 = v27;
LABEL_17:
      sub_22D6D5984(v44, v42, v43);
      LOBYTE(v27) = 1;
      return v27 & 1;
    }
  }

  else
  {
    v27 = 0;
    if (v41 == *MEMORY[0x277CB9918] || v41 == *MEMORY[0x277CB9908] || v41 == *MEMORY[0x277CB9910])
    {
      return v27 & 1;
    }

    sub_22D72E970();
    __break(1u);
  }

  v45 = v79;
  (*(v29 + 32))(v79, v27, v28);
  sub_22D6D5A4C(v78, &v80, &qword_27D9FF500, &qword_22D730530);
  if (!v81)
  {
    (*(v29 + 8))(v45, v28);
    sub_22D6D5984(&v80, &qword_27D9FF500, &qword_22D730530);
    LOBYTE(v27) = 0;
    return v27 & 1;
  }

  sub_22D6D5D34(&v80, v82);
  (*(v29 + 16))(v33, v45, v28);
  v46 = (*(v29 + 88))(v33, v28);
  v47 = v46 == *MEMORY[0x277CB9948];
  v68 = v2;
  if (v47)
  {
    (*(v29 + 96))(v33, v28);
    v49 = v76;
    v48 = v77;
    (*(v77 + 32))(v22, v33, v76);
    (*(v48 + 56))(v22, 0, 1, v49);
    goto LABEL_15;
  }

  v49 = v76;
  v50 = v77;
  if (v46 == *MEMORY[0x277CB9960])
  {
    sub_22D6D42A8(v82, &v80);
    v51 = v73;
    sub_22D72D710();
    v52 = v75;
    sub_22D72D6A0();
    v53 = *(v50 + 8);
    v53(v51, v49);
    sub_22D713738(&v80, v52, v22);
    v53(v52, v49);
    v48 = v77;
    sub_22D6D5984(&v80, &qword_27D9FF500, &qword_22D730530);
    (*(v29 + 8))(v33, v28);
LABEL_15:
    v54 = v74;
    sub_22D718BE0(v22, v74);
    v55 = v72;
    sub_22D6D5A4C(v54, v72, &qword_27D9FFDD0, &qword_22D730140);
    if ((*(v48 + 48))(v55, 1, v49) == 1)
    {
      sub_22D6D5984(v54, &qword_27D9FFDD0, &qword_22D730140);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      (*(v29 + 8))(v79, v28);
      v44 = v55;
      v42 = &qword_27D9FFDD0;
      v43 = &qword_22D730140;
      goto LABEL_17;
    }

    v78 = v29;
    v57 = v71;
    v58 = v49;
    (*(v48 + 32))(v71, v55, v49);
    v59 = v70;
    sub_22D6D5A4C(v68 + v40[9], v70, &qword_27D9FF310, &qword_22D7301B8);
    v60 = sub_22D72DCF0();
    v61 = *(v60 - 8);
    if ((*(v61 + 48))(v59, 1, v60) == 1)
    {
      sub_22D6D5984(v59, &qword_27D9FF310, &qword_22D7301B8);
    }

    else
    {
      sub_22D72DCD0();
      v63 = v62;
      (*(v61 + 8))(v59, v60);
      if ((v63 & 1) == 0)
      {
        v64 = v75;
        sub_22D72D6A0();
        v27 = v69;
        sub_22D72D710();
        v66 = v73;
        sub_22D72D6A0();
        v65 = *(v48 + 8);
        v65(v27, v58);
        LOBYTE(v27) = sub_22D72D6D0();
        v65(v66, v58);
        goto LABEL_24;
      }
    }

    v27 = v73;
    sub_22D72D710();
    v64 = v75;
    sub_22D72D6A0();
    v65 = *(v48 + 8);
    v65(v27, v58);
    LOBYTE(v27) = sub_22D72D6D0();
LABEL_24:
    v65(v64, v58);
    v65(v57, v58);
    sub_22D6D5984(v54, &qword_27D9FFDD0, &qword_22D730140);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    (*(v78 + 8))(v79, v28);
    return v27 & 1;
  }

  result = sub_22D72E970();
  __break(1u);
  return result;
}

uint64_t sub_22D714FEC()
{
  v1 = *v0;
  v2 = 0x69746341706F7473;
  v3 = 0x7261646E6F636573;
  if (v1 != 3)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0x7475626972747461;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22D7150A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22D719240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22D7150E0(uint64_t a1)
{
  v2 = sub_22D718A14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D71511C(uint64_t a1)
{
  v2 = sub_22D718A14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t *sub_22D715158(uint64_t *a1)
{
  v2 = v1;
  v33 = *v2;
  v4 = sub_22D72D950();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFB70, &qword_22D731300);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v31 - v11;
  v35 = OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_stopAction;
  *(v2 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_stopAction) = 0;
  v34 = OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_secondaryAction;
  *(v2 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_secondaryAction) = 0;
  v13 = a1[3];
  v14 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_22D718A14();
  v15 = v36;
  sub_22D72EA50();
  if (v15)
  {

    v18 = *(*v2 + 48);
    v19 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v32;
    v36 = v9;
    v39 = 1;
    v17 = sub_22D718A68();
    sub_22D72E8F0();
    v31[1] = v17;
    *(v2 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData) = v38;
    LOBYTE(v38) = 0;
    sub_22D717684(&qword_27D9FFB88, MEMORY[0x277CB9398]);
    sub_22D72E8F0();
    (*(v16 + 32))(v2 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesType, v7, v4);
    v39 = 2;
    sub_22D72E8C0();
    v21 = *(&v38 + 1);
    if (*(&v38 + 1) >> 60 == 15)
    {
      v22 = 0;
    }

    else
    {
      v23 = v38;
      sub_22D6FCE80(0, &qword_27D9FFB90, 0x277CCAAC8);
      sub_22D6FCE80(0, &qword_27D9FFB98, 0x277D23720);
      v22 = sub_22D72E5B0();
      sub_22D718ABC(v23, v21);
    }

    v24 = *(v2 + v35);
    *(v2 + v35) = v22;

    v39 = 3;
    sub_22D72E8C0();
    v25 = v12;
    v26 = *(&v38 + 1);
    v27 = v36;
    if (*(&v38 + 1) >> 60 == 15)
    {
      (*(v36 + 8))(v25, v8);
      v28 = 0;
    }

    else
    {
      v29 = v38;
      sub_22D6FCE80(0, &qword_27D9FFB90, 0x277CCAAC8);
      sub_22D6FCE80(0, &qword_27D9FFB98, 0x277D23720);
      v28 = sub_22D72E5B0();
      (*(v27 + 8))(v25, v8);
      sub_22D718ABC(v29, v26);
    }

    v30 = *(v2 + v34);
    *(v2 + v34) = v28;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  return v2;
}

uint64_t sub_22D715708(void *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = sub_22D72D950();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFBA0, &qword_22D731308);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22D718A14();
  v13 = v7;
  sub_22D72EA60();
  v14 = v39;
  (*(v3 + 16))(v6, v39 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesType, v2);
  LOBYTE(v41) = 0;
  sub_22D717684(&qword_27D9FFBA8, MEMORY[0x277CB9398]);
  v15 = v38;
  sub_22D72E940();
  if (v15)
  {
    (*(v3 + 8))(v6, v2);
    result = (*(v8 + 8))(v11, v7);
    goto LABEL_5;
  }

  v38 = v8;
  (*(v3 + 8))(v6, v2);
  v17 = *(v14 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData + 8);
  v41 = *(v14 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData);
  v42 = v17;
  v40 = 1;
  sub_22D6D3F68(v41, v17);
  sub_22D718AD0();
  sub_22D72E940();
  sub_22D6D5664(v41, v42);
  v19 = *(v14 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_stopAction);
  if (v19)
  {
    v20 = objc_opt_self();
    v41 = 0;
    v21 = v19;
    v22 = [v20 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v41];
    v23 = v41;
    if (!v22)
    {
      v27 = v23;
      sub_22D72D5D0();

      swift_willThrow();
LABEL_4:
      result = (*(v38 + 8))(v11, v13);
      goto LABEL_5;
    }

    v24 = sub_22D72D650();
    v26 = v25;

    v41 = v24;
    v42 = v26;
    v40 = 2;
    sub_22D72E940();

    sub_22D6D5664(v24, v26);
    v13 = v7;
    v14 = v39;
  }

  v28 = *(v14 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_secondaryAction);
  if (!v28)
  {
    goto LABEL_4;
  }

  v29 = v13;
  v30 = objc_opt_self();
  v41 = 0;
  v31 = v28;
  v32 = [v30 archivedDataWithRootObject:v31 requiringSecureCoding:1 error:&v41];
  v33 = v41;
  if (v32)
  {
    v34 = sub_22D72D650();
    v36 = v35;

    v41 = v34;
    v42 = v36;
    v40 = 3;
    sub_22D72E940();
    (*(v38 + 8))(v11, v29);

    result = sub_22D6D5664(v34, v36);
  }

  else
  {
    v37 = v33;
    sub_22D72D5D0();

    swift_willThrow();
    result = (*(v38 + 8))(v11, v29);
  }

LABEL_5:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22D715C34()
{
  v1 = OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesType;
  v2 = sub_22D72D950();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22D6D5664(*(v0 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData), *(v0 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData + 8));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22D715D2C()
{
  result = sub_22D72D950();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_22D715E18()
{
  sub_22D72D7A0();
  if (v0 <= 0x3F)
  {
    sub_22D715F60(319, &qword_2814571E0, MEMORY[0x277CB9968]);
    if (v1 <= 0x3F)
    {
      sub_22D715F60(319, &qword_2814571E8, MEMORY[0x277CB98E8]);
      if (v2 <= 0x3F)
      {
        sub_22D715FB4();
        if (v3 <= 0x3F)
        {
          sub_22D72DD20();
          if (v4 <= 0x3F)
          {
            sub_22D72DBA0();
            if (v5 <= 0x3F)
            {
              sub_22D72D730();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_22D715F60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22D72E6C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22D715FB4()
{
  if (!qword_2814571A0)
  {
    v0 = sub_22D72E6C0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814571A0);
    }
  }
}

uint64_t *sub_22D71604C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_22D715158(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_22D7160D0()
{
  sub_22D72EA20();
  MEMORY[0x2318CFBC0](0);
  return sub_22D72EA40();
}

uint64_t sub_22D71613C()
{
  sub_22D72EA20();
  MEMORY[0x2318CFBC0](0);
  return sub_22D72EA40();
}

unint64_t sub_22D71617C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0x444972656E776FLL;
    v8 = 0x756F437472656C61;
    if (a1 != 3)
    {
      v8 = 0x656C756465686373;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6544746E65696C63;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6E6F697461657263;
    if (a1 != 9)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 == 8)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = v1;
    }

    v3 = 0xD000000000000011;
    v4 = 0xD000000000000018;
    if (a1 != 6)
    {
      v4 = 0x6574617473;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22D7162E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFBF8, &qword_22D731318);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22D718B24();
  sub_22D72EA60();
  v27[31] = 0;
  sub_22D72D7A0();
  sub_22D717684(&qword_27D9FFC00, MEMORY[0x277CC95F0]);
  sub_22D72E940();
  if (!v2)
  {
    v11 = type metadata accessor for Alarm(0);
    v12 = v11[5];
    v27[30] = 1;
    sub_22D72E940();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    v27[29] = 2;
    sub_22D72E920();
    v16 = *(v3 + v11[7]);
    v27[28] = 3;
    sub_22D72E930();
    v17 = v11[8];
    v27[27] = 4;
    sub_22D72DDB0();
    sub_22D717684(&qword_27D9FFC08, MEMORY[0x277CB9968]);
    sub_22D72E910();
    v18 = v11[9];
    v27[26] = 5;
    sub_22D72DCF0();
    sub_22D717684(&qword_27D9FFC10, MEMORY[0x277CB98E8]);
    sub_22D72E910();
    v19 = (v3 + v11[10]);
    v20 = *v19;
    v21 = *(v19 + 8);
    v27[25] = 6;
    sub_22D72E900();
    v22 = v11[11];
    v27[24] = 7;
    sub_22D72DD20();
    sub_22D717684(&qword_27D9FFC18, MEMORY[0x277CB9928]);
    sub_22D72E940();
    v23 = v11[12];
    v27[15] = 8;
    sub_22D72DBA0();
    sub_22D717684(&qword_27D9FFC20, MEMORY[0x277CB9850]);
    sub_22D72E940();
    v24 = v11[13];
    v27[14] = 9;
    sub_22D72D730();
    sub_22D717684(&qword_27D9FFC28, MEMORY[0x277CC9578]);
    sub_22D72E940();
    v25 = v11[14];
    v27[13] = 10;
    sub_22D72E940();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22D7167C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v86 = sub_22D72D730();
  v84 = *(v86 - 8);
  v3 = *(v84 + 64);
  v4 = MEMORY[0x28223BE20](v86);
  v76 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v77 = &v72 - v6;
  v88 = sub_22D72DBA0();
  v85 = *(v88 - 8);
  v7 = *(v85 + 64);
  MEMORY[0x28223BE20](v88);
  v78 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_22D72DD20();
  v87 = *(v89 - 8);
  v9 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v79 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v80 = &v72 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v72 - v16;
  v18 = sub_22D72D7A0();
  v81 = *(v18 - 8);
  v19 = v81[8];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v82 = &v72 - v23;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFBB8, &qword_22D731310);
  v83 = *(v91 - 8);
  v24 = *(v83 + 64);
  MEMORY[0x28223BE20](v91);
  v26 = &v72 - v25;
  v27 = type metadata accessor for Alarm(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v29 + 32);
  v33 = sub_22D72DDB0();
  v34 = *(*(v33 - 8) + 56);
  v96 = v32;
  v34(&v31[v32], 1, 1, v33);
  v94 = v27;
  v35 = *(v27 + 36);
  v36 = sub_22D72DCF0();
  v37 = *(*(v36 - 8) + 56);
  v97 = v31;
  v95 = v35;
  v37(&v31[v35], 1, 1, v36);
  v39 = a1[3];
  v38 = a1[4];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_22D718B24();
  v90 = v26;
  v40 = v92;
  sub_22D72EA50();
  if (v40)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v48 = v94;
    v51 = v97;
    goto LABEL_4;
  }

  v92 = v33;
  v74 = v17;
  v108 = 0;
  sub_22D717684(&qword_27D9FFBC8, MEMORY[0x277CC95F0]);
  v41 = v82;
  sub_22D72E8F0();
  v46 = v81[4];
  v46(v97, v41, v18);
  v107 = 1;
  v47 = v22;
  sub_22D72E8F0();
  v48 = v94;
  v49 = v18;
  v46(&v97[v94[5]], v47, v18);
  v106 = 2;
  v82 = 0;
  v50 = sub_22D72E8D0();
  v51 = v97;
  v52 = &v97[v48[6]];
  *v52 = v50;
  v52[1] = v53;
  v105 = 3;
  v54 = sub_22D72E8E0();
  v73 = v49;
  *&v51[v48[7]] = v54;
  v104 = 4;
  sub_22D717684(&qword_27D9FFBD0, MEMORY[0x277CB9968]);
  v55 = v74;
  sub_22D72E8C0();
  sub_22D718B78(v55, &v51[v96], &qword_27D9FF4B0, &unk_22D7301A0);
  v103 = 5;
  sub_22D717684(&qword_27D9FFBD8, MEMORY[0x277CB98E8]);
  v56 = v80;
  sub_22D72E8C0();
  v57 = v83;
  sub_22D718B78(v56, &v51[v95], &qword_27D9FF310, &qword_22D7301B8);
  v102 = 6;
  v58 = sub_22D72E8B0();
  v63 = &v51[v48[10]];
  *v63 = v58;
  v63[8] = v64 & 1;
  v101 = 7;
  sub_22D717684(&qword_27D9FFBE0, MEMORY[0x277CB9928]);
  v65 = v79;
  sub_22D72E8F0();
  v92 = 0;
  (*(v87 + 32))(&v51[v48[11]], v65, v89);
  v100 = 8;
  sub_22D717684(&qword_27D9FFBE8, MEMORY[0x277CB9850]);
  v66 = v78;
  v67 = v92;
  sub_22D72E8F0();
  v92 = v67;
  if (v67)
  {
    (*(v57 + 8))(v90, v91);
    v43 = 0;
    v44 = 0;
    LODWORD(v91) = 1;
    v42 = 1;
    v59 = v82;
    v60 = v73;
  }

  else
  {
    (*(v85 + 32))(&v51[v48[12]], v66, v88);
    v99 = 9;
    sub_22D717684(&qword_27D9FFBF0, MEMORY[0x277CC9578]);
    v68 = v92;
    sub_22D72E8F0();
    v92 = v68;
    if (v68)
    {
      (*(v83 + 8))(v90, v91);
      v44 = 0;
      LODWORD(v91) = 1;
      v42 = 1;
      v43 = 1;
    }

    else
    {
      v69 = *(v84 + 32);
      v69(&v97[v94[13]], v77, v86);
      v98 = 10;
      v70 = v92;
      sub_22D72E8F0();
      v92 = v70;
      if (!v70)
      {
        (*(v83 + 8))(v90, v91);
        v71 = v97;
        v69(&v97[v94[14]], v76, v86);
        sub_22D6F37E4(v71, v75);
        __swift_destroy_boxed_opaque_existential_1Tm(v93);
        return sub_22D6F3848(v71);
      }

      (*(v83 + 8))(v90, v91);
      LODWORD(v91) = 1;
      v42 = 1;
      v43 = 1;
      v44 = 1;
    }

    v48 = v94;
    v60 = v49;
    v51 = v97;
    v59 = v82;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  v61 = v81[1];
  v61(v51, v60);
  if (v59)
  {
    if (!v91)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v61(&v51[v48[5]], v60);
    if ((v91 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v62 = *&v51[v48[6] + 8];

LABEL_4:
  sub_22D6D5984(&v51[v96], &qword_27D9FF4B0, &unk_22D7301A0);
  result = sub_22D6D5984(&v51[v95], &qword_27D9FF310, &qword_22D7301B8);
  if (!v42)
  {
    if (!v43)
    {
      goto LABEL_6;
    }

LABEL_9:
    result = (*(v85 + 8))(&v51[v48[12]], v88);
    if (!v44)
    {
      return result;
    }

    return (*(v84 + 8))(&v51[v48[13]], v86);
  }

  result = (*(v87 + 8))(&v51[v48[11]], v89);
  if (v43)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (!v44)
  {
    return result;
  }

  return (*(v84 + 8))(&v51[v48[13]], v86);
}

uint64_t sub_22D717494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22D719418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22D7174C8(uint64_t a1)
{
  v2 = sub_22D718B24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D717504(uint64_t a1)
{
  v2 = sub_22D718B24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22D717540@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22D72D7A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22D717684(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22D7176CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D72DCF0();
  v75 = *(v4 - 8);
  v5 = *(v75 + 64);
  MEMORY[0x28223BE20](v4);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFC30, &qword_22D731320);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v67 - v12;
  v14 = sub_22D72DDB0();
  v76 = *(v14 - 8);
  v15 = *(v76 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v67 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFC38, &qword_22D731328);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v67 - v24;
  if ((sub_22D72D780() & 1) == 0)
  {
    goto LABEL_21;
  }

  v72 = v13;
  v26 = type metadata accessor for Alarm(0);
  v27 = v26[5];
  if ((sub_22D72D780() & 1) == 0)
  {
    goto LABEL_21;
  }

  v28 = v26[6];
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  if ((v29 != *v31 || v30 != v31[1]) && (sub_22D72E980() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (*(a1 + v26[7]) != *(a2 + v26[7]))
  {
    goto LABEL_21;
  }

  v68 = v4;
  v69 = v26;
  v32 = v26[8];
  v33 = *(v22 + 48);
  v70 = a1;
  v34 = a1 + v32;
  v35 = v33;
  sub_22D6D5A4C(v34, v25, &qword_27D9FF4B0, &unk_22D7301A0);
  v71 = a2;
  sub_22D6D5A4C(a2 + v32, &v25[v35], &qword_27D9FF4B0, &unk_22D7301A0);
  v36 = v76;
  v37 = *(v76 + 48);
  if (v37(v25, 1, v14) == 1)
  {
    if (v37(&v25[v35], 1, v14) == 1)
    {
      sub_22D6D5984(v25, &qword_27D9FF4B0, &unk_22D7301A0);
      goto LABEL_14;
    }

LABEL_12:
    v38 = &qword_27D9FFC38;
    v39 = &qword_22D731328;
    v40 = v25;
LABEL_20:
    sub_22D6D5984(v40, v38, v39);
    goto LABEL_21;
  }

  sub_22D6D5A4C(v25, v21, &qword_27D9FF4B0, &unk_22D7301A0);
  if (v37(&v25[v35], 1, v14) == 1)
  {
    (*(v36 + 8))(v21, v14);
    goto LABEL_12;
  }

  (*(v36 + 32))(v17, &v25[v35], v14);
  sub_22D717684(&qword_27D9FFC48, MEMORY[0x277CB9968]);
  v41 = sub_22D72E400();
  v42 = *(v36 + 8);
  v42(v17, v14);
  v42(v21, v14);
  sub_22D6D5984(v25, &qword_27D9FF4B0, &unk_22D7301A0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  v43 = v69[9];
  v44 = *(v10 + 48);
  v45 = v72;
  sub_22D6D5A4C(v70 + v43, v72, &qword_27D9FF310, &qword_22D7301B8);
  sub_22D6D5A4C(v71 + v43, v45 + v44, &qword_27D9FF310, &qword_22D7301B8);
  v46 = v75;
  v47 = *(v75 + 48);
  v48 = v68;
  if (v47(v45, 1, v68) != 1)
  {
    v49 = v74;
    sub_22D6D5A4C(v45, v74, &qword_27D9FF310, &qword_22D7301B8);
    if (v47(v45 + v44, 1, v48) != 1)
    {
      v52 = v45 + v44;
      v53 = v73;
      (*(v46 + 32))(v73, v52, v48);
      sub_22D717684(&qword_27D9FFC40, MEMORY[0x277CB98E8]);
      v54 = sub_22D72E400();
      v55 = *(v46 + 8);
      v55(v53, v48);
      v55(v49, v48);
      sub_22D6D5984(v45, &qword_27D9FF310, &qword_22D7301B8);
      if ((v54 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    (*(v46 + 8))(v49, v48);
    goto LABEL_19;
  }

  if (v47(v45 + v44, 1, v48) != 1)
  {
LABEL_19:
    v38 = &qword_27D9FFC30;
    v39 = &qword_22D731320;
    v40 = v45;
    goto LABEL_20;
  }

  sub_22D6D5984(v45, &qword_27D9FF310, &qword_22D7301B8);
LABEL_24:
  v56 = v69;
  v57 = v69[10];
  v58 = (v70 + v57);
  v59 = *(v70 + v57 + 8);
  v60 = (v71 + v57);
  v61 = *(v71 + v57 + 8);
  if (v59)
  {
    if (!v61)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (*v58 != *v60)
    {
      LOBYTE(v61) = 1;
    }

    if (v61)
    {
      goto LABEL_21;
    }
  }

  v62 = v69[11];
  v63 = v71;
  v64 = v70;
  if (sub_22D72DD10() & 1) != 0 && (MEMORY[0x2318CECF0](v64 + v56[12], v63 + v56[12]))
  {
    v65 = v56[13];
    if (sub_22D72D6F0())
    {
      v66 = v56[14];
      v50 = sub_22D72D6F0();
      return v50 & 1;
    }
  }

LABEL_21:
  v50 = 0;
  return v50 & 1;
}

uint64_t sub_22D717E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v98 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v97 = &v93 - v8;
  v99 = sub_22D72DCF0();
  v101 = *(v99 - 8);
  v9 = *(v101 + 64);
  v10 = MEMORY[0x28223BE20](v99);
  v96 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v95 = &v93 - v12;
  v13 = sub_22D72D730();
  v104 = *(v13 - 8);
  v105 = v13;
  v14 = *(v104 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v100 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v103 = &v93 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v102 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v93 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v106 = &v93 - v26;
  MEMORY[0x28223BE20](v25);
  v107 = &v93 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF318, &qword_22D7301C0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v93 - v30;
  v108 = type metadata accessor for Alarm(0);
  v32 = *(v108 + 44);
  v33 = *(v28 + 48);
  v34 = sub_22D72DD20();
  v35 = *(v34 - 8);
  v36 = *(v35 + 16);
  v109 = a1;
  v37 = a1 + v32;
  v38 = v34;
  v36(v31, v37, v34);
  v110 = a2;
  v36(&v31[v33], a2 + v32, v38);
  v112 = v35;
  v39 = *(v35 + 88);
  v40 = v39(v31, v38);
  v41 = *MEMORY[0x277CB9910];
  v111 = v33;
  v42 = v39(&v31[v33], v38);
  if (v40 == v41)
  {
    if (v42 == v40)
    {
      v43 = *(v108 + 56);
      v44 = sub_22D72D6C0();
      return v44 & 1;
    }

    goto LABEL_11;
  }

  v45 = *MEMORY[0x277CB9918];
  if (v42 == *MEMORY[0x277CB9918])
  {
    if (v39(v31, v38) == v42)
    {
      v94 = v38;
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
      v46 = v108;
      v101 = *(v108 + 56);
      v47 = v107;
      sub_22D713738(&v113, v109 + v101, v107);
      sub_22D6D5984(&v113, &qword_27D9FF500, &qword_22D730530);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
      v108 = v46[14];
      v48 = v106;
      sub_22D713738(&v113, v110 + v108, v106);
      sub_22D6D5984(&v113, &qword_27D9FF500, &qword_22D730530);
      sub_22D6D5A4C(v47, v24, &qword_27D9FFDD0, &qword_22D730140);
      v50 = v104;
      v49 = v105;
      v51 = *(v104 + 48);
      if (v51(v24, 1, v105) == 1)
      {
        v52 = v111;
      }

      else
      {
        v59 = *(v50 + 32);
        v60 = v103;
        v59(v103, v24, v49);
        v24 = v102;
        sub_22D6D5A4C(v48, v102, &qword_27D9FFDD0, &qword_22D730140);
        if (v51(v24, 1, v49) != 1)
        {
          v74 = v100;
          v59(v100, v24, v49);
          v75 = v60;
          v61 = sub_22D72D6D0();
          v76 = *(v50 + 8);
          v76(v74, v49);
          v76(v75, v49);
          sub_22D6D5984(v107, &qword_27D9FFDD0, &qword_22D730140);
          sub_22D6D5984(v106, &qword_27D9FFDD0, &qword_22D730140);
          v62 = *(v112 + 8);
          v63 = &v31[v111];
          goto LABEL_54;
        }

        (*(v50 + 8))(v60, v49);
        v52 = v111;
      }

      sub_22D6D5984(v24, &qword_27D9FFDD0, &qword_22D730140);
      if (v51(v107, 1, v49) != 1 && v51(v48, 1, v49) == 1)
      {
        sub_22D6D5984(v107, &qword_27D9FFDD0, &qword_22D730140);
        sub_22D6D5984(v48, &qword_27D9FFDD0, &qword_22D730140);
        v54 = *(v112 + 8);
        v55 = &v31[v52];
LABEL_22:
        v56 = v94;
        goto LABEL_13;
      }

      if (v51(v48, 1, v49) == 1)
      {
        v61 = sub_22D72D6C0();
        sub_22D6D5984(v107, &qword_27D9FFDD0, &qword_22D730140);
        sub_22D6D5984(v48, &qword_27D9FFDD0, &qword_22D730140);
        v62 = *(v112 + 8);
        v63 = &v31[v52];
LABEL_54:
        v62(v63, v94);
        goto LABEL_55;
      }

      sub_22D6D5984(v107, &qword_27D9FFDD0, &qword_22D730140);
      sub_22D6D5984(v48, &qword_27D9FFDD0, &qword_22D730140);
      (*(v112 + 8))(&v31[v52], v94);
LABEL_32:
      v44 = 0;
      return v44 & 1;
    }
  }

  else if (v42 == v41)
  {
    v53 = *(v112 + 8);
    v53(&v31[v111], v38);
LABEL_16:
    v53(v31, v38);
    v44 = 0;
    return v44 & 1;
  }

  if (v39(v31, v38) == v45)
  {
LABEL_11:
    v54 = *(v112 + 8);
    v55 = &v31[v111];
LABEL_12:
    v56 = v38;
LABEL_13:
    v54(v55, v56);
    v44 = 1;
    return v44 & 1;
  }

  v57 = v111;
  v58 = v39(&v31[v111], v38);
  if (v58 == v45)
  {
LABEL_15:
    v53 = *(v112 + 8);
    v53(&v31[v57], v38);
    goto LABEL_16;
  }

  v64 = *MEMORY[0x277CB9908];
  if (v58 == *MEMORY[0x277CB9908] && v39(v31, v38) == v58)
  {
    v94 = v38;
    v66 = v108;
    v65 = v109;
    v67 = v97;
    sub_22D6D5A4C(v109 + *(v108 + 36), v97, &qword_27D9FF310, &qword_22D7301B8);
    v68 = v101;
    v69 = *(v101 + 48);
    v70 = v99;
    if (v69(v67, 1, v99) == 1)
    {
      sub_22D6D5984(v67, &qword_27D9FF310, &qword_22D7301B8);
      v71 = 1;
      v72 = 0.0;
      v73 = v110;
    }

    else
    {
      v80 = v95;
      (*(v68 + 32))(v95, v67, v70);
      v73 = v110;
      if (*(v65 + v66[7]))
      {
        v81 = sub_22D72DCE0();
      }

      else
      {
        v81 = sub_22D72DCD0();
      }

      v83 = *&v81;
      v71 = v82;
      (*(v101 + 8))(v80, v70);
      v72 = v83;
    }

    v84 = v108;
    v85 = v98;
    sub_22D6D5A4C(v73 + *(v108 + 36), v98, &qword_27D9FF310, &qword_22D7301B8);
    if (v69(v85, 1, v70) == 1)
    {
      sub_22D6D5984(v85, &qword_27D9FF310, &qword_22D7301B8);
      if ((v71 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v86 = v96;
      (*(v101 + 32))(v96, v85, v70);
      if (*(v73 + v84[7]))
      {
        *&v87 = COERCE_DOUBLE(sub_22D72DCE0());
      }

      else
      {
        *&v87 = COERCE_DOUBLE(sub_22D72DCD0());
      }

      v89 = *&v87;
      v90 = v88;
      (*(v101 + 8))(v86, v70);
      if ((v71 & 1) == 0)
      {
        if (v90)
        {
LABEL_58:
          v54 = *(v112 + 8);
          v55 = &v31[v57];
          goto LABEL_22;
        }

        v61 = v72 < v89;
LABEL_53:
        v62 = *(v112 + 8);
        v63 = &v31[v57];
        goto LABEL_54;
      }
    }

    v91 = *(v108 + 56);
    v61 = sub_22D72D6C0();
    goto LABEL_53;
  }

  if (v39(v31, v38) == v64)
  {
    goto LABEL_30;
  }

  v77 = v39(&v31[v57], v38);
  v78 = *MEMORY[0x277CB9920];
  if (v77 == *MEMORY[0x277CB9920])
  {
    if (v39(v31, v38) == v77)
    {
      v79 = *(v108 + 56);
      v61 = sub_22D72D6C0();
      (*(v112 + 8))(&v31[v57], v38);
LABEL_55:
      v44 = v61;
      return v44 & 1;
    }
  }

  else if (v77 == v64)
  {
    goto LABEL_15;
  }

  if (v39(v31, v38) == v78)
  {
LABEL_30:
    v54 = *(v112 + 8);
    v55 = &v31[v57];
    goto LABEL_12;
  }

  if (v39(&v31[v57], v38) == v78)
  {
    (*(v112 + 8))(v31, v38);
    goto LABEL_32;
  }

  result = sub_22D72E970();
  __break(1u);
  return result;
}

unint64_t sub_22D718A14()
{
  result = qword_27D9FFB78;
  if (!qword_27D9FFB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFB78);
  }

  return result;
}

unint64_t sub_22D718A68()
{
  result = qword_27D9FFB80;
  if (!qword_27D9FFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFB80);
  }

  return result;
}

uint64_t sub_22D718ABC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22D6D5664(a1, a2);
  }

  return a1;
}

unint64_t sub_22D718AD0()
{
  result = qword_27D9FFBB0;
  if (!qword_27D9FFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFBB0);
  }

  return result;
}

unint64_t sub_22D718B24()
{
  result = qword_27D9FFBC0;
  if (!qword_27D9FFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFBC0);
  }

  return result;
}

uint64_t sub_22D718B78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22D718BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for Alarm.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Alarm.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Alarm.ActivityData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Alarm.ActivityData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Alarm.AlarmError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Alarm.AlarmError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_22D718FDC()
{
  result = qword_27D9FFC50;
  if (!qword_27D9FFC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFC50);
  }

  return result;
}

unint64_t sub_22D719034()
{
  result = qword_27D9FFC58;
  if (!qword_27D9FFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFC58);
  }

  return result;
}

unint64_t sub_22D71908C()
{
  result = qword_27D9FFC60;
  if (!qword_27D9FFC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFC60);
  }

  return result;
}

unint64_t sub_22D7190E4()
{
  result = qword_27D9FFC68;
  if (!qword_27D9FFC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFC68);
  }

  return result;
}

unint64_t sub_22D71913C()
{
  result = qword_27D9FFC70;
  if (!qword_27D9FFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFC70);
  }

  return result;
}

unint64_t sub_22D719194()
{
  result = qword_27D9FFC78;
  if (!qword_27D9FFC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFC78);
  }

  return result;
}

unint64_t sub_22D7191EC()
{
  result = qword_27D9FFC80;
  if (!qword_27D9FFC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFC80);
  }

  return result;
}

uint64_t sub_22D719240(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7475626972747461 && a2 == 0xEE00657079547365;
  if (v3 || (sub_22D72E980() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00617461447365 || (sub_22D72E980() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746341706F7473 && a2 == 0xEA00000000006E6FLL || (sub_22D72E980() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F6974634179 || (sub_22D72E980() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022D733460 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_22D72E980();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_22D719418(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22D72E980() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6544746E65696C63 && a2 == 0xEF444964656E6966 || (sub_22D72E980() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444972656E776FLL && a2 == 0xE700000000000000 || (sub_22D72E980() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F437472656C61 && a2 == 0xEA0000000000746ELL || (sub_22D72E980() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000 || (sub_22D72E980() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022D733480 == a2 || (sub_22D72E980() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022D7334A0 == a2 || (sub_22D72E980() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_22D72E980() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022D7334C0 == a2 || (sub_22D72E980() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_22D72E980() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022D731F90 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_22D72E980();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_22D719818(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v35 = MEMORY[0x277D84F90];
    sub_22D6D3340(0, v2, 0);
    v4 = v35;
    v5 = v1 + 56;
    v6 = -1 << *(v1 + 32);
    result = sub_22D72E6F0();
    v7 = result;
    v8 = 0;
    v28 = v1 + 64;
    v29 = v2;
    v30 = v1 + 56;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      v31 = v8;
      v32 = *(v1 + 36);
      v11 = *(v1 + 48) + 40 * v7;
      v12 = *(v11 + 24);
      v13 = *(v11 + 32);
      v33 = *v11;
      v34 = *(v11 + 8);
      swift_bridgeObjectRetain_n();

      MEMORY[0x2318CF680](10272, 0xE200000000000000);
      if (v13)
      {
        v14 = 2037278052;
      }

      else
      {
        v14 = 0x776F6C6C61;
      }

      if (v13)
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      MEMORY[0x2318CF680](v14, v15);

      MEMORY[0x2318CF680](41, 0xE100000000000000);

      v16 = v4;
      v36 = v4;
      v17 = v1;
      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_22D6D3340((v18 > 1), v19 + 1, 1);
        v16 = v36;
      }

      *(v16 + 16) = v19 + 1;
      v20 = v16 + 16 * v19;
      *(v20 + 32) = v33;
      *(v20 + 40) = v34;
      v9 = 1 << *(v17 + 32);
      if (v7 >= v9)
      {
        goto LABEL_29;
      }

      v5 = v30;
      v21 = *(v30 + 8 * v10);
      if ((v21 & (1 << v7)) == 0)
      {
        goto LABEL_30;
      }

      v1 = v17;
      v4 = v16;
      if (v32 != *(v1 + 36))
      {
        goto LABEL_31;
      }

      v22 = v21 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v9 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v10 << 6;
        v24 = v10 + 1;
        v25 = (v28 + 8 * v10);
        while (v24 < (v9 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_22D6D5264(v7, v32, 0);
            v9 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_22D6D5264(v7, v32, 0);
      }

LABEL_4:
      v8 = v31 + 1;
      v7 = v9;
      if (v31 + 1 == v29)
      {
        return v4;
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
  }

  return result;
}

uint64_t sub_22D719AD0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];
    sub_22D6D3340(0, v2, 0);
    v4 = v33;
    v5 = v1 + 56;
    v6 = -1 << *(v1 + 32);
    result = sub_22D72E6F0();
    v7 = result;
    v8 = 0;
    v26 = v1 + 64;
    v27 = v2;
    v28 = v1 + 56;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v29 = v8;
      v30 = *(v1 + 36);
      v11 = (*(v1 + 48) + 40 * v7);
      v13 = v11[2];
      v12 = v11[3];
      v31 = *v11;
      v32 = v11[1];
      swift_bridgeObjectRetain_n();

      MEMORY[0x2318CF680](10272, 0xE200000000000000);
      MEMORY[0x2318CF680](v13, v12);
      MEMORY[0x2318CF680](41, 0xE100000000000000);

      v14 = v4;
      v34 = v4;
      v15 = v1;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_22D6D3340((v16 > 1), v17 + 1, 1);
        v14 = v34;
      }

      *(v14 + 16) = v17 + 1;
      v18 = v14 + 16 * v17;
      *(v18 + 32) = v31;
      *(v18 + 40) = v32;
      v9 = 1 << *(v15 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v28;
      v19 = *(v28 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v15;
      v4 = v14;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v26 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_22D6D5264(v7, v30, 0);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_22D6D5264(v7, v30, 0);
      }

LABEL_4:
      v8 = v29 + 1;
      v7 = v9;
      if (v29 + 1 == v27)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22D719D58()
{
  v1 = OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver____lazy_storage___removedPublisher;
  if (*(v0 + OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver____lazy_storage___removedPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver____lazy_storage___removedPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver__removedPublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDA8, &unk_22D731760);
    sub_22D6D58D4(&unk_281457200, &qword_27D9FFDA8, &unk_22D731760);
    v3 = v0;
    v2 = sub_22D72DC70();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_22D719E34()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver____lazy_storage___addedPublisher] = 0;
  v2 = OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver__addedPublisher;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDA8, &unk_22D731760);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *&v0[v2] = sub_22D72DC20();
  *&v0[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver____lazy_storage___removedPublisher] = 0;
  v6 = OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver__removedPublisher;
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  *&v0[v6] = sub_22D72DC20();
  *&v0[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver____lazy_storage___restrictionsChangedPublisher] = 0;
  v9 = OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver__restrictionsChangedPublisher;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFD90, &qword_22D731750);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v0[v9] = sub_22D72DC20();
  v13 = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_subscriptions] = MEMORY[0x277D84FA0];
  v14 = OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *&v1[v14] = v15;
  *&v1[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_lock_restrictions] = v13;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_applicationWorkspace] = result;
    *&v1[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_restrictionProviders] = MEMORY[0x277D84F90];
    v17.receiver = v1;
    v17.super_class = type metadata accessor for AppEventObserver();
    return objc_msgSendSuper2(&v17, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_22D719FEC()
{
  [*&v0[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_applicationWorkspace] removeObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEventObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22D71A1A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_restrictionProviders);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 16);
      swift_unknownObjectRetain();
      v8 = v7(ObjectType, v5);
      v10 = v9;
      (*(v5 + 8))(ObjectType, v5);
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = v8;
      v12[4] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFD80, &qword_22D731748);
      sub_22D6D58D4(&qword_27D9FFD88, &qword_27D9FFD80, &qword_22D731748);
      sub_22D72DCB0();

      swift_beginAccess();
      sub_22D72DC00();
      swift_endAccess();

      (*(v5 + 24))(ObjectType, v5);
      swift_unknownObjectRelease();
      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_22D71A3A0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_lock);
    v7 = MEMORY[0x28223BE20](Strong);
    MEMORY[0x28223BE20](v7);

    os_unfair_lock_lock(v4 + 4);
    sub_22D71DC00(&v8);
    os_unfair_lock_unlock(v4 + 4);
    v5 = v8;

    if (v5 == 1)
    {
      v6 = *&v3[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver__restrictionsChangedPublisher];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFD90, &qword_22D731750);
      sub_22D6D58D4(&qword_27D9FFD98, &qword_27D9FFD90, &qword_22D731750);
      sub_22D72DC60();
    }
  }
}

uint64_t sub_22D71A514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_lock_restrictions;
  v11 = *(a1 + OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_lock_restrictions);

  v13 = sub_22D71DD9C(v12, a2, a3);

  if (sub_22D71B26C(v13, a4))
  {

    *a5 = 0;
  }

  else
  {
    v39 = v10;
    if (*(v13 + 16) <= *(a4 + 16) >> 3)
    {
      v41 = a4;

      sub_22D71CF64(v13);
      v15 = a4;
    }

    else
    {

      v15 = sub_22D71D0A0(v13, a4);
    }

    v16 = sub_22D719818(v15);

    if (*(a4 + 16) <= *(v13 + 16) >> 3)
    {
      v41 = v13;

      sub_22D71CF64(a4);
      v17 = v13;
    }

    else
    {

      v17 = sub_22D71D0A0(a4, v13);
    }

    v40 = a1;
    v18 = sub_22D719818(v17);

    if (qword_27D9FF118 != -1)
    {
      swift_once();
    }

    v19 = sub_22D72DBE0();
    __swift_project_value_buffer(v19, qword_27DA016D0);

    v20 = sub_22D72DBB0();
    v21 = sub_22D72E5A0();

    if (os_log_type_enabled(v20, v21))
    {
      v38 = a5;
      v22 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v22 = 136446723;
      *(v22 + 4) = sub_22D72891C(a2, a3, &v41);
      *(v22 + 12) = 2081;
      v23 = MEMORY[0x2318CF6C0](v16, MEMORY[0x277D837D0]);
      v25 = v24;

      v26 = sub_22D72891C(v23, v25, &v41);

      *(v22 + 14) = v26;
      *(v22 + 22) = 2081;
      v27 = MEMORY[0x2318CF6C0](v18, MEMORY[0x277D837D0]);
      v29 = v28;

      v30 = sub_22D72891C(v27, v29, &v41);

      *(v22 + 24) = v30;
      _os_log_impl(&dword_22D6B4000, v20, v21, "Restrictions changed by %{public}s.  Added: %{private}s; removed: %{private}s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318D0420](v37, -1, -1);
      v31 = v22;
      a5 = v38;
      MEMORY[0x2318D0420](v31, -1, -1);
    }

    else
    {
    }

    v32 = *(v40 + v39);
    if (*(v13 + 16) <= *(v32 + 16) >> 3)
    {
      v41 = *(v40 + v39);

      sub_22D71CF64(v13);

      v34 = v41;
    }

    else
    {
      v33 = *(v40 + v39);

      v34 = sub_22D71D0A0(v13, v32);
    }

    v41 = v34;

    sub_22D71A914(v35);
    v36 = *(v40 + v39);
    *(v40 + v39) = v41;

    *a5 = 1;
  }

  return result;
}

uint64_t sub_22D71A914(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 40 * (v9 | (v8 << 6));
    v14 = *(v10 + 32);
    v11 = *(v10 + 16);
    v13[0] = *v10;
    v13[1] = v11;
    v15 = v13[0];
    v16 = v11;
    sub_22D71E028(&v15, v12);
    sub_22D71E028(&v16, v12);
    sub_22D6F1E00(v12, v13);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D71AA48(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_22D72E820();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_22D6D5270(i, v6);
    sub_22D71DB88();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22D72E800();
    v4 = *(v7 + 16);
    sub_22D72E830();
    sub_22D72E840();
    sub_22D72E810();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

unint64_t sub_22D71AB4C(unint64_t result, void *a2)
{
  if (result)
  {
    result = sub_22D71AA48(result);
    if (result)
    {
      v4 = result;
      v5 = result & 0xFFFFFFFFFFFFFF8;
      if (result >> 62)
      {
LABEL_23:
        v6 = sub_22D72E730();
        if (v6)
        {
LABEL_5:
          v7 = 0;
          v21 = MEMORY[0x277D84F90];
          do
          {
            v8 = v7;
            while (1)
            {
              if ((v4 & 0xC000000000000001) != 0)
              {
                v9 = MEMORY[0x2318CF970](v8, v4);
              }

              else
              {
                if (v8 >= *(v5 + 16))
                {
                  goto LABEL_22;
                }

                v9 = *(v4 + 8 * v8 + 32);
              }

              v10 = v9;
              v7 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                __break(1u);
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }

              v11 = [v9 bundleIdentifier];
              if (v11)
              {
                break;
              }

              ++v8;
              if (v7 == v6)
              {
                goto LABEL_24;
              }
            }

            v20 = a2;
            v12 = v11;
            v13 = sub_22D72E490();
            v19 = v14;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_22D6CBE70(0, *(v21 + 2) + 1, 1, v21);
            }

            v16 = *(v21 + 2);
            v15 = *(v21 + 3);
            if (v16 >= v15 >> 1)
            {
              v21 = sub_22D6CBE70((v15 > 1), v16 + 1, 1, v21);
            }

            *(v21 + 2) = v16 + 1;
            v17 = &v21[16 * v16];
            a2 = v20;
            *(v17 + 4) = v13;
            *(v17 + 5) = v19;
          }

          while (v7 != v6);
        }
      }

      else
      {
        v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6)
        {
          goto LABEL_5;
        }
      }

LABEL_24:

      v18 = *(v2 + *a2);
      sub_22D72DC10();
    }
  }

  return result;
}

uint64_t sub_22D71AD30(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_22D72E520();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  sub_22D71AB4C(v6, a4);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22D71ADC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_22D71AE08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22D71AE5C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_lock_restrictions;
  v5 = *(a1 + OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_lock_restrictions);

  v7 = sub_22D71B900(v6);
  v8 = sub_22D719AD0(v7);

  v9 = *(a1 + v4);

  v11 = sub_22D71BB2C(v10);
  v12 = sub_22D719AD0(v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF338, &qword_22D7301E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D730030;
  *(inited + 32) = 0x73694C776F6C6C61;
  *(inited + 40) = 0xE900000000000074;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFD60, &qword_22D731740);
  *(inited + 48) = v12;
  *(inited + 72) = v14;
  *(inited + 80) = 0x7473694C796E6564;
  *(inited + 120) = v14;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v8;
  v15 = sub_22D6D4390(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF348, &unk_22D7301F0);
  result = swift_arrayDestroy();
  *a2 = v15;
  return result;
}

uint64_t sub_22D71AFF4()
{
  if (*v0)
  {
    result = 2037278052;
  }

  else
  {
    result = 0x776F6C6C61;
  }

  *v0;
  return result;
}

uint64_t sub_22D71B024()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22D72EA20();
  sub_22D72E4E0();
  sub_22D72E4E0();
  MEMORY[0x2318CFBC0](v5);
  return sub_22D72EA40();
}

uint64_t sub_22D71B0A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22D72E4E0();
  sub_22D72E4E0();
  return MEMORY[0x2318CFBC0](v5);
}

uint64_t sub_22D71B0F8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22D72EA20();
  sub_22D72E4E0();
  sub_22D72E4E0();
  MEMORY[0x2318CFBC0](v5);
  return sub_22D72EA40();
}

uint64_t sub_22D71B174(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_22D72E980()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_22D72E980()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22D71B218()
{
  result = qword_27D9FFD50;
  if (!qword_27D9FFD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFD50);
  }

  return result;
}

uint64_t sub_22D71B26C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v37 = a2 + 56;
  v31 = result + 56;
  v32 = result;
  v34 = a2;
  v30 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v33 = (v6 - 1) & v6;
LABEL_13:
    v11 = *(result + 48) + 40 * (v8 | (v2 << 6));
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    v17 = *(a2 + 40);
    v18 = a2;
    sub_22D72EA20();

    sub_22D72E4E0();
    v36 = v14;
    sub_22D72E4E0();
    v35 = v16;
    MEMORY[0x2318CFBC0](v16);
    v19 = sub_22D72EA40();
    v20 = -1 << *(v18 + 32);
    v21 = v19 & ~v20;
    if (((*(v37 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_31:

      return 0;
    }

    v22 = ~v20;
    v23 = *(v34 + 48);
    while (1)
    {
      v24 = v23 + 40 * v21;
      v25 = *(v24 + 16);
      v26 = *(v24 + 24);
      v27 = *(v24 + 32);
      v28 = *v24 == v13 && *(v24 + 8) == v12;
      if (!v28 && (sub_22D72E980() & 1) == 0)
      {
        goto LABEL_16;
      }

      if (v25 != v36 || v26 != v15)
      {
        break;
      }

      if (v35 == v27)
      {
        goto LABEL_28;
      }

LABEL_16:
      v21 = (v21 + 1) & v22;
      if (((*(v37 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (sub_22D72E980() & 1) == 0 || ((v35 ^ v27))
    {
      goto LABEL_16;
    }

LABEL_28:

    v3 = v31;
    result = v32;
    v6 = v33;
    a2 = v34;
    v7 = v30;
  }

  while (v33);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_22D71B4E8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_22D71DC44(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_22D71B58C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_22D71B68C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(unint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_22D72E790();
    v22 = v8;
    sub_22D72E720();
    if (sub_22D72E750())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v16 = *(v8 + 16);
        if (*(v8 + 24) <= v16)
        {
          a6(v16 + 1);
        }

        v8 = v22;
        v9 = *(v22 + 40);
        result = sub_22D72E6A0();
        v11 = v22 + 56;
        v12 = -1 << *(v22 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v14 == v18;
            if (v14 == v18)
            {
              v14 = 0;
            }

            v17 |= v19;
            v20 = *(v11 + 8 * v14);
          }

          while (v20 == -1);
          v15 = __clz(__rbit64(~v20)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v22 + 48) + 8 * v15) = v21;
        ++*(v22 + 16);
      }

      while (sub_22D72E750());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

unint64_t sub_22D71B87C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_22D72E6A0();
  v5 = -1 << *(a2 + 32);
  result = sub_22D72E710();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_22D71B900(uint64_t a1)
{
  v1 = a1;
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    MEMORY[0x28223BE20](a1);
    v5 = v20 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 56);
    while (v10)
    {
      v11 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v12 = v11 | (v7 << 6);
LABEL_12:
      if (*(*(v1 + 48) + 40 * v12 + 32) == 1)
      {
        *&v5[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_16:
          result = sub_22D71C19C(v5, v3, v6, v1);
          goto LABEL_17;
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= ((v8 + 63) >> 6))
      {
        goto LABEL_16;
      }

      v14 = *(v1 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v10 = (v14 - 1) & v14;
        v12 = __clz(__rbit64(v14)) | (v7 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v18 = swift_slowAlloc();
  v19 = sub_22D71B58C(v18, v3, v1, sub_22D71BE6C);

  MEMORY[0x2318D0420](v18, -1, -1);
  result = v19;
LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22D71BB2C(uint64_t a1)
{
  v1 = a1;
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    MEMORY[0x28223BE20](a1);
    v5 = v20 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 56);
    while (v10)
    {
      v11 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v12 = v11 | (v7 << 6);
LABEL_12:
      if ((*(*(v1 + 48) + 40 * v12 + 32) & 1) == 0)
      {
        *&v5[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_16:
          result = sub_22D71C19C(v5, v3, v6, v1);
          goto LABEL_17;
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= ((v8 + 63) >> 6))
      {
        goto LABEL_16;
      }

      v14 = *(v1 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v10 = (v14 - 1) & v14;
        v12 = __clz(__rbit64(v14)) | (v7 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v18 = swift_slowAlloc();
  v19 = sub_22D71B58C(v18, v3, v1, sub_22D71BD54);

  MEMORY[0x2318D0420](v18, -1, -1);
  result = v19;
LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22D71BD54(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  while (v10)
  {
    v11 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v12 = v11 | (v7 << 6);
LABEL_11:
    if ((*(*(a3 + 48) + 40 * v12 + 32) & 1) == 0)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_22D71C19C(v5, a2, v6, a3);
      }
    }
  }

  v13 = v7;
  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= ((v8 + 63) >> 6))
    {
      goto LABEL_15;
    }

    v14 = *(a3 + 56 + 8 * v7);
    ++v13;
    if (v14)
    {
      v10 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D71BE6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  while (v10)
  {
    v11 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v12 = v11 | (v7 << 6);
LABEL_11:
    if (*(*(a3 + 48) + 40 * v12 + 32) == 1)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_22D71C19C(v5, a2, v6, a3);
      }
    }
  }

  v13 = v7;
  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= ((v8 + 63) >> 6))
    {
      goto LABEL_15;
    }

    v14 = *(a3 + 56 + 8 * v7);
    ++v13;
    if (v14)
    {
      v10 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D71BFB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_22D72E7A0();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(v11 + 40);
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_22D72E6A0();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 8 * v23) = v19;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22D71C19C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v8 = MEMORY[0x277D84FA0];
LABEL_6:

    return v8;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFD70, &unk_22D730540);
  result = sub_22D72E7A0();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 56;
  v35 = v4;
  while (v9)
  {
    v12 = v8;
    v13 = __clz(__rbit64(v9));
    v36 = (v9 - 1) & v9;
LABEL_17:
    v16 = *(v4 + 48) + 40 * (v13 | (v10 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    v21 = *(v16 + 32);
    v22 = v12;
    v23 = *(v12 + 40);
    sub_22D72EA20();

    v37 = v17;
    sub_22D72E4E0();
    sub_22D72E4E0();
    MEMORY[0x2318CFBC0](v21);
    result = sub_22D72EA40();
    v8 = v22;
    v24 = -1 << *(v22 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v11 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v11 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = *(v22 + 48) + 40 * v27;
    *v32 = v37;
    *(v32 + 8) = v18;
    *(v32 + 16) = v20;
    *(v32 + 24) = v19;
    *(v32 + 32) = v21;
    ++*(v22 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    v9 = v36;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v10;
  while (1)
  {
    v10 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v10];
    ++v14;
    if (v15)
    {
      v12 = v8;
      v13 = __clz(__rbit64(v15));
      v36 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22D71C4B4(void *a1, void (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t, id))
{
  v6 = *v4;
  if ((*v4 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v8 = *v4;
    }

    else
    {
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = *v4;

    v10 = a1;
    v11 = sub_22D72E760();

    if (v11)
    {
      v12 = a4(v8, v10);

      return v12;
    }

    return 0;
  }

  v15 = v4;
  a2(0);
  v16 = *(v6 + 40);
  v17 = sub_22D72E6A0();
  v18 = -1 << *(v6 + 32);
  v19 = v17 & ~v18;
  if (((*(v6 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
    return 0;
  }

  v20 = ~v18;
  while (1)
  {
    v21 = *(*(v6 + 48) + 8 * v19);
    v22 = sub_22D72E6B0();

    if (v22)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v6 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }
  }

  v23 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  v27 = *v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v25 = v27;
  }

  v26 = *(*(v25 + 48) + 8 * v19);
  sub_22D71CB70(v19);
  result = v26;
  *v15 = v27;
  return result;
}

unint64_t sub_22D71C650@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 32);
  v10 = *v3;
  v11 = *(*v3 + 40);
  sub_22D72EA20();
  sub_22D72E4E0();
  v35 = v7;
  sub_22D72E4E0();
  v34 = v9;
  MEMORY[0x2318CFBC0](v9);
  result = sub_22D72EA40();
  v13 = -1 << *(v10 + 32);
  v14 = result & ~v13;
  if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_21;
  }

  v32 = v3;
  v33 = a2;
  v15 = ~v13;
  v16 = *(v10 + 48);
  while (1)
  {
    v17 = v16 + 40 * v14;
    result = *v17;
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    v20 = *(v17 + 32);
    if (*v17 != v5 || *(v17 + 8) != v6)
    {
      result = sub_22D72E980();
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v18 != v35 || v19 != v8)
    {
      break;
    }

    if (v34 == v20)
    {
      goto LABEL_16;
    }

LABEL_4:
    v14 = (v14 + 1) & v15;
    if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      a2 = v33;
      goto LABEL_21;
    }
  }

  result = sub_22D72E980();
  if (result & 1) == 0 || ((v34 ^ v20))
  {
    goto LABEL_4;
  }

LABEL_16:
  v23 = *v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v32;
  v36 = *v32;
  a2 = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22D6F2F40();
    v25 = v36;
  }

  v26 = *(v25 + 48) + 40 * v14;
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  v30 = *(v26 + 24);
  v31 = *(v26 + 32);
  result = sub_22D71CD10(v14);
  *v32 = v36;
LABEL_21:
  *a2 = v27;
  *(a2 + 8) = v28;
  *(a2 + 16) = v29;
  *(a2 + 24) = v30;
  *(a2 + 32) = v31;
  return result;
}

uint64_t sub_22D71C850()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_22D72E730();
  v4 = swift_unknownObjectRetain();
  v5 = sub_22D71B68C(v4, v3, &qword_27D9FF548, &unk_22D730550, type metadata accessor for Client, sub_22D6F2278);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_22D72E6A0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for Client();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_22D72E6B0();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_22D71CB70(v9);
  result = sub_22D72E6B0();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D71C9E0()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_22D72E730();
  v4 = swift_unknownObjectRetain();
  v5 = sub_22D71B68C(v4, v3, &qword_27D9FF540, &unk_22D731770, _s12AlarmKitCore6ClientCMa_0, sub_22D6F228C);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_22D72E6A0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    _s12AlarmKitCore6ClientCMa_0();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_22D72E6B0();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_22D71CB70(v9);
  result = sub_22D72E6B0();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22D71CB70(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22D72E700();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_22D72E6A0();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_22D71CD10(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22D72E700();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      v32 = v3;
      v33 = v4;
      do
      {
        v11 = 40 * v6;
        v12 = *(v3 + 40);
        v13 = *(v3 + 48) + 40 * v6;
        v14 = v7;
        v15 = *v13;
        v16 = *(v13 + 8);
        v17 = *(v13 + 16);
        v18 = *(v13 + 24);
        v19 = *(v13 + 32);
        v20 = v2;
        v21 = v10;
        sub_22D72EA20();

        sub_22D72E4E0();
        sub_22D72E4E0();
        MEMORY[0x2318CFBC0](v19);
        v22 = sub_22D72EA40();

        v7 = v14;

        v10 = v21;
        v2 = v20;
        v23 = v22 & v14;
        if (v20 >= v10)
        {
          if (v23 < v10)
          {
            v3 = v32;
          }

          else
          {
            v3 = v32;
            if (v20 >= v23)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v3 = v32;
          if (v23 >= v10 || v20 >= v23)
          {
LABEL_12:
            v24 = *(v3 + 48);
            v25 = v24 + 40 * v20;
            v26 = (v24 + v11);
            if (40 * v20 < v11 || v25 >= v26 + 40 || v20 != v6)
            {
              v27 = *v26;
              v28 = v26[1];
              *(v25 + 32) = *(v26 + 4);
              *v25 = v27;
              *(v25 + 16) = v28;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v7;
        v4 = v33;
      }

      while (((*(v33 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v29 = *(v3 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v31;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_22D71CF64(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_22D71E0EC(&v18))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(v2 + 48) + 40 * (v10 | (v9 << 6));
      v16 = *(v11 + 32);
      v12 = *(v11 + 16);
      v15[0] = *v11;
      v15[1] = v12;
      v17 = v15[0];
      v18 = v12;
      sub_22D71E028(&v17, v13);
      sub_22D71E028(&v18, v13);
      sub_22D71C650(v15, v14);
      sub_22D71E084(v14);
      sub_22D71E0EC(&v17);
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22D71D0A0(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v85 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v8 = MEMORY[0x277D84FA0];
    goto LABEL_61;
  }

  v64 = 0;
  v10 = a1 + 56;
  v9 = *(a1 + 56);
  v11 = -1 << *(a1 + 32);
  v69 = ~v11;
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v9;
  v14 = (63 - v11) >> 6;
  v79 = (a2 + 56);

  v17 = 0;
  v71 = v10;
  v70 = v14;
  v73 = v8;
  v72 = v15;
  while (1)
  {
    if (!v13)
    {
      v18 = v17;
      do
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_63;
        }

        if (v19 >= v14)
        {
          goto LABEL_60;
        }

        v13 = *(v10 + 8 * v19);
        ++v18;
      }

      while (!v13);
      v17 = v19;
    }

    v20 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v74 = v17;
    v21 = *(v15 + 48) + 40 * (v20 | (v17 << 6));
    v5 = *v21;
    v22 = *(v21 + 8);
    v2 = *(v21 + 16);
    v23 = *(v21 + 24);
    v3 = *(v21 + 32);
    v24 = *(v8 + 40);
    sub_22D72EA20();

    sub_22D72E4E0();
    v76 = v2;
    v77 = v23;
    sub_22D72E4E0();
    v75 = v3;
    MEMORY[0x2318CFBC0](v3);
    v25 = sub_22D72EA40();
    v26 = -1 << *(v8 + 32);
    v10 = v25 & ~v26;
    v6 = v10 >> 6;
    v7 = 1 << v10;
    if (((1 << v10) & v79[v10 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v8 = v73;
    v15 = v72;
    v10 = v71;
    v17 = v74;
    v14 = v70;
  }

  v78 = ~v26;
  v3 = *(v73 + 48);
  while (1)
  {
    v27 = v3 + 40 * v10;
    v28 = *(v27 + 16);
    v2 = *(v27 + 24);
    v4 = *(v27 + 32);
    v29 = *v27 == v5 && *(v27 + 8) == v22;
    if (v29 || (sub_22D72E980() & 1) != 0)
    {
      if (v28 == v76 && v2 == v77)
      {
        if (v75 == v4)
        {
          break;
        }

        goto LABEL_16;
      }

      if ((sub_22D72E980() & 1) != 0 && ((v75 ^ v4) & 1) == 0)
      {
        break;
      }
    }

LABEL_16:
    v10 = (v10 + 1) & v78;
    v6 = v10 >> 6;
    v7 = 1 << v10;
    if ((v79[v10 >> 6] & (1 << v10)) == 0)
    {
      goto LABEL_6;
    }
  }

  v5 = v74;
  v82 = v69;
  v83 = v74;
  v84 = v13;
  v4 = v71;
  v2 = v72;
  v81[0] = v72;
  v81[1] = v71;

  v3 = v73;
  v32 = *(v73 + 32);
  v65 = ((1 << v32) + 63) >> 6;
  v16 = 8 * v65;
  if ((v32 & 0x3Fu) > 0xD)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v66 = &v63;
    MEMORY[0x28223BE20](v31);
    v34 = &v63 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v34, v79, v33);
    v35 = *&v34[8 * v6] & ~v7;
    v68 = v34;
    *&v34[8 * v6] = v35;
    v36 = *(v3 + 16) - 1;
    v37 = v70;
LABEL_30:
    v67 = v36;
LABEL_32:
    while (2)
    {
      if (v13)
      {
        v38 = v73;
LABEL_39:
        v41 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v74 = v5;
        v42 = *(v2 + 48) + 40 * (v41 | (v5 << 6));
        v3 = *v42;
        v43 = *(v42 + 8);
        v45 = *(v42 + 16);
        v44 = *(v42 + 24);
        v46 = *(v42 + 32);
        v47 = *(v38 + 40);
        sub_22D72EA20();

        sub_22D72E4E0();
        v76 = v45;
        v77 = v44;
        sub_22D72E4E0();
        v10 = &v80;
        v75 = v46;
        MEMORY[0x2318CFBC0](v46);
        v48 = sub_22D72EA40();
        v49 = -1 << *(v38 + 32);
        v50 = v48 & ~v49;
        v6 = v50 >> 6;
        v51 = 1 << v50;
        if (((1 << v50) & v79[v50 >> 6]) == 0)
        {
LABEL_31:

          v2 = v72;
          v4 = v71;
          v5 = v74;
          v37 = v70;
          continue;
        }

        v78 = ~v49;
        v7 = *(v38 + 48);
        while (1)
        {
          v52 = v7 + 40 * v50;
          v53 = *(v52 + 16);
          v10 = *(v52 + 24);
          v54 = *(v52 + 32);
          v55 = *v52 == v3 && *(v52 + 8) == v43;
          if (v55 || (sub_22D72E980() & 1) != 0)
          {
            if (v53 == v76 && v10 == v77)
            {
              if (v75 == v54)
              {
                goto LABEL_54;
              }
            }

            else if ((sub_22D72E980() & 1) != 0 && ((v75 ^ v54) & 1) == 0)
            {
LABEL_54:

              v57 = v68[v6];
              v68[v6] = v57 & ~v51;
              v29 = (v57 & v51) == 0;
              v2 = v72;
              v4 = v71;
              v5 = v74;
              v37 = v70;
              if (!v29)
              {
                v36 = v67 - 1;
                if (__OFSUB__(v67, 1))
                {
                  __break(1u);
                }

                if (v67 == 1)
                {

                  v8 = MEMORY[0x277D84FA0];
                  goto LABEL_60;
                }

                goto LABEL_30;
              }

              goto LABEL_32;
            }
          }

          v50 = (v50 + 1) & v78;
          v6 = v50 >> 6;
          v51 = 1 << v50;
          if ((v79[v50 >> 6] & (1 << v50)) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      break;
    }

    v39 = v5;
    v38 = v73;
    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40 >= v37)
      {
        v8 = sub_22D71C19C(v68, v65, v67, v73);
        goto LABEL_60;
      }

      v13 = *(v4 + 8 * v40);
      ++v39;
      if (v13)
      {
        v5 = v40;
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v60 = v16;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v61 = swift_slowAlloc();
  memcpy(v61, v79, v60);
  v62 = v64;
  v8 = sub_22D71D7E0(v61, v65, v3, v10, v81);

  if (v62)
  {

    result = MEMORY[0x2318D0420](v61, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x2318D0420](v61, -1, -1);
    v69 = v82;
LABEL_60:
    sub_22D6D3C44();
LABEL_61:
    v58 = *MEMORY[0x277D85DE8];
    return v8;
  }

  return result;
}

uint64_t sub_22D71D7E0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  v36 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v43 = a3 + 56;
  v37 = a5;
LABEL_2:
  v35 = v7;
LABEL_4:
  while (2)
  {
    v8 = a5[3];
    v9 = a5[4];
    if (v9)
    {
      v10 = a5[3];
LABEL_10:
      v13 = *(*a5 + 48) + 40 * (__clz(__rbit64(v9)) | (v10 << 6));
      v14 = *v13;
      v15 = *(v13 + 8);
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      v18 = *(v13 + 32);
      a5[3] = v10;
      a5[4] = (v9 - 1) & v9;
      v19 = *(v5 + 40);
      sub_22D72EA20();

      sub_22D72E4E0();
      v40 = v17;
      v41 = v16;
      sub_22D72E4E0();
      v39 = v18;
      MEMORY[0x2318CFBC0](v18);
      v20 = sub_22D72EA40();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      v24 = 1 << v22;
      if (((1 << v22) & *(v43 + 8 * (v22 >> 6))) == 0)
      {
LABEL_3:

        a5 = v37;
        v5 = a3;
        continue;
      }

      v42 = ~v21;
      v25 = *(v5 + 48);
      while (1)
      {
        v26 = v25 + 40 * v22;
        v27 = *(v26 + 16);
        v28 = *(v26 + 24);
        v29 = *(v26 + 32);
        v30 = *v26 == v14 && *(v26 + 8) == v15;
        if (v30 || (sub_22D72E980() & 1) != 0)
        {
          if (v27 == v40 && v28 == v41)
          {
            if (v39 == v29)
            {
              goto LABEL_25;
            }
          }

          else if ((sub_22D72E980() & 1) != 0 && ((v39 ^ v29) & 1) == 0)
          {
LABEL_25:

            a5 = v37;
            v32 = v36[v23];
            v36[v23] = v32 & ~v24;
            v5 = a3;
            if ((v32 & v24) != 0)
            {
              v7 = v35 - 1;
              if (__OFSUB__(v35, 1))
              {
LABEL_34:
                __break(1u);
                return result;
              }

              if (v35 == 1)
              {
                return MEMORY[0x277D84FA0];
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }
        }

        v22 = (v22 + 1) & v42;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if ((*(v43 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v11 = (a5[2] + 64) >> 6;
  v12 = a5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(a5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (v11 <= v8 + 1)
  {
    v33 = v8 + 1;
  }

  else
  {
    v33 = (a5[2] + 64) >> 6;
  }

  a5[3] = v33 - 1;
  a5[4] = 0;

  return sub_22D71C19C(v36, a2, v35, v5);
}

void *sub_22D71DA9C@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_22D71DAE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_22D6F59F4(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

unint64_t sub_22D71DB88()
{
  result = qword_281457168;
  if (!qword_281457168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281457168);
  }

  return result;
}

void sub_22D71DBD4(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_22D71A3A0(a1);
}

void *sub_22D71DC00@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_22D71DC44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = *(a3 + 48) + 40 * v18;
    result = *(v19 + 16);
    if (result != a4 || *(v19 + 24) != a5)
    {
      result = sub_22D72E980();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_19:

      return sub_22D71C19C(v23, a2, v8, a3);
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_19;
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D71DD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v26 = swift_slowAlloc();

      v23 = sub_22D71B4E8(v26, v10, a1, a2, a3);

      MEMORY[0x2318D0420](v26, -1, -1);

      goto LABEL_22;
    }
  }

  v28 = v10;
  v29 = v4;
  v27[1] = v27;
  MEMORY[0x28223BE20](v12);
  v13 = v27 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v13, v11);
  v14 = 0;
  v4 = 0;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v10 = v16 & *(a1 + 56);
  v17 = (v15 + 63) >> 6;
  while (2)
  {
    v30 = v14;
    do
    {
      if (!v10)
      {
        v19 = v4;
        while (1)
        {
          v4 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v4 >= v17)
          {
            goto LABEL_21;
          }

          v20 = *(a1 + 56 + 8 * v4);
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v10 = (v20 - 1) & v20;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v11 = v18 | (v4 << 6);
      v21 = *(a1 + 48) + 40 * v11;
      v22 = *(v21 + 16) == a2 && *(v21 + 24) == a3;
    }

    while (!v22 && (sub_22D72E980() & 1) == 0);
    *&v13[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
    v14 = v30 + 1;
    if (!__OFADD__(v30, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_21:
  v23 = sub_22D71C19C(v13, v28, v30, a1);

LABEL_22:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t sub_22D71E084(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDA0, &qword_22D731758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22D71E154()
{
  result = qword_27D9FFDB0;
  if (!qword_27D9FFDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFDB0);
  }

  return result;
}

BOOL sub_22D71E1F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(a3(0) - 8);
    ++v9;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    sub_22D7244E4(a4, a5);
  }

  while ((sub_22D72E400() & 1) == 0);
  return v10 != v11;
}

uint64_t Daemon.DaemonError.hashValue.getter()
{
  v1 = *v0;
  sub_22D72EA20();
  MEMORY[0x2318CFBC0](v1);
  return sub_22D72EA40();
}