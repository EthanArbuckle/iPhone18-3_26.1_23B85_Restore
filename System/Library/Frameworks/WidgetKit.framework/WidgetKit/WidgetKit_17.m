uint64_t sub_1921BAD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1921BAE24(uint64_t a1)
{
  v2 = sub_1920475A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921BAE60(uint64_t a1)
{
  v2 = sub_1920475A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921BAE9C()
{
  v1 = 0x6465746E65636361;
  if (*v0 != 1)
  {
    v1 = 0x746E6172626976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F6C6F436C6C7566;
  }
}

uint64_t WidgetRenderingMode.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t (*EnvironmentValues.widgetRenderingMode.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_19202F774();
  sub_1922261E0();
  return sub_1921BAFEC;
}

uint64_t sub_1921BAFEC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

unint64_t sub_1921BB028()
{
  result = qword_1EADF1B60;
  if (!qword_1EADF1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1B60);
  }

  return result;
}

unint64_t sub_1921BB080()
{
  result = qword_1EADF1B68;
  if (!qword_1EADF1B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1B70, &qword_19223FD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1B68);
  }

  return result;
}

unint64_t sub_1921BB0F8()
{
  result = qword_1EADF1B78;
  if (!qword_1EADF1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1B78);
  }

  return result;
}

unint64_t sub_1921BB158()
{
  result = qword_1ED74B568;
  if (!qword_1ED74B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B568);
  }

  return result;
}

uint64_t sub_1921BB20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920A59A8;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t IntentTimelineProvider.relevances()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1921BB2E0, 0, 0);
}

uint64_t sub_1921BB2E0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  swift_getAssociatedTypeWitness();
  sub_19203BEB4(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1921BB35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920B3B44;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t IntentTimelineProvider.relevance()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v6 = *(a3 + 64);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_1921BB534;

  return (v10)(v3 + 2, a2, a3);
}

uint64_t sub_1921BB534()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1921BB630, 0, 0);
}

uint64_t sub_1921BB630()
{
  v7 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v6 = v0[2];
  swift_getAssociatedTypeWitness();
  sub_19208805C(&v6, v3);
  v4 = v0[1];

  return v4();
}

uint64_t _s9WidgetKit22IntentTimelineProviderPAAE15recommendationsSayAA0C14RecommendationVy0C0QzGGyF_0()
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1922258B0();
  __swift_project_value_buffer(v0, qword_1ED74CCC8);
  v1 = sub_192225890();
  v2 = sub_192227FB0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_192028000, v1, v2, "DEFAULT IMPL FOR RECOMMENDATIONS!!!", v3, 2u);
    MEMORY[0x193B0C7F0](v3, -1, -1);
  }

  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentRecommendation();

  return sub_192227BD0();
}

uint64_t dispatch thunk of IntentTimelineProvider.relevances()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920A59A8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of IntentTimelineProvider.relevance()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920B3B44;

  return v11(a1, a2, a3);
}

void sub_1921BBA8C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >> 60 == 15)
  {
    v8 = 0;
    if (a4)
    {
LABEL_3:
      v9 = sub_192224F80();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = sub_192225050();
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, a1, v8);
}

void sub_1921BBB34(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_192224F80();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

double WidgetExtensionSessionOperation.defaultTimeout.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    v4 = fmax(v1 + 5.0, 10.0);
    result = fmax(v1 + 10.0, 20.0);
    if (!*(v0 + 8))
    {
      return v4;
    }
  }

  else if (v2 == 2)
  {
    return v1 * 30.0;
  }

  else if (v2 == 3)
  {
    return v1 * 10.0;
  }

  else
  {
    return dbl_192240620[v1];
  }

  return result;
}

uint64_t ExtensionSessionType.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

__n128 ExtensionSessionOptions.init(schedulingPriority:suspensionObserver:sessionType:shouldTakeExtensionAssertion:environmentVariables:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = *a2;
  v7 = *(a2 + 16);
  *(a6 + 8) = *a2;
  v8 = *a3;
  *a6 = *a1;
  *(a6 + 24) = v7;
  *(a6 + 40) = *(a2 + 32);
  *(a6 + 48) = v8;
  *(a6 + 49) = a4;
  *(a6 + 56) = a5;
  return result;
}

double sub_1921BBD34(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (v2 <= 1)
  {
    v4 = fmax(v1 + 5.0, 10.0);
    result = fmax(v1 + 10.0, 20.0);
    if (!*(a1 + 8))
    {
      return v4;
    }
  }

  else if (v2 == 2)
  {
    return v1 * 30.0;
  }

  else if (v2 == 3)
  {
    return v1 * 10.0;
  }

  else
  {
    return dbl_192240620[v1];
  }

  return result;
}

uint64_t sub_1921BBDD8()
{
  v10 = sub_192228070();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_192228050();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_192227790();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  sub_192227740();
  v11 = MEMORY[0x1E69E7CC0];
  sub_192034F00(&qword_1ED74C5D8, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF22E0, &qword_19222B820);
  sub_192031E74(&unk_1ED74C5E0, &unk_1EADF22E0, &qword_19222B820);
  sub_1922282F0();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1922280A0();
  qword_1EADECB98 = result;
  return result;
}

id sub_1921BC04C()
{
  result = [objc_allocWithZone(MEMORY[0x1E6966CB8]) init];
  qword_1EADECBB0 = result;
  return result;
}

id sub_1921BC080()
{
  result = [objc_allocWithZone(MEMORY[0x1E6966CB8]) init];
  qword_1EADECBC8 = result;
  return result;
}

uint64_t sub_1921BC0B4()
{
  v0 = type metadata accessor for _DefaultExtensionIdentityProvider();
  result = swift_allocObject();
  qword_1EADECB78 = v0;
  unk_1EADECB80 = &off_1F06B4AA8;
  qword_1EADECB60 = result;
  return result;
}

uint64_t static WidgetExtensionSessionFactory.extensionIdentityProvider.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_192033A64(&qword_1EADECB60, a1);
}

uint64_t static WidgetExtensionSessionFactory.extensionIdentityProvider.setter(uint64_t *a1)
{
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_1EADECB60, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
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
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

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
        v13 = *result;
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
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t (*static WidgetExtensionSessionFactory.extensionIdentityProvider.modify())()
{
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1921BC4B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_192033A64(&qword_1EADECB60, a1);
}

uint64_t sub_1921BC534(uint64_t *a1)
{
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_1EADECB60, a1);
  return swift_endAccess();
}

uint64_t static WidgetExtensionSessionFactory.makeSession(for:schedulingPriority:watchdogTimeoutProvider:suspensionObserver:shouldTakeExtensionAssertion:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (*a2 == 5)
  {
    v10 = 1;
  }

  else
  {
    v10 = *a2;
  }

  sub_19202CFFC(a5, v15, &qword_1EADF1B88, qword_192240150);
  v11 = sub_19202BE60(MEMORY[0x1E69E7CC0]);
  v14[0] = v10;
  v15[40] = 0;
  v15[41] = a6;
  v16 = v11;
  v12 = _s9WidgetKit0A23ExtensionSessionFactoryC04makeD03for18preferredLanguages7options23watchdogTimeoutProviderAA0acD0_pSgypSg_SaySSGSgAA0cD7OptionsVSdSgAA0acD9OperationOcSgtFZ_0(a1, 0, v14, a3, a4);
  sub_1920313E8(v14);
  return v12;
}

uint64_t static WidgetExtensionSessionFactory.makeSessionAsync(for:preferredLanguages:schedulingPriority:watchdogTimeoutProvider:suspensionObserver:shouldTakeExtensionAssertion:completion:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void (*a8)(void), uint64_t a9)
{
  if (*a3 == 5)
  {
    v15 = 1;
  }

  else
  {
    v15 = *a3;
  }

  sub_19202CFFC(a6, v19, &qword_1EADF1B88, qword_192240150);
  v16 = sub_19202BE60(MEMORY[0x1E69E7CC0]);
  v18[0] = v15;
  v19[40] = 0;
  v19[41] = a7;
  v20 = v16;
  static WidgetExtensionSessionFactory.makeSessionAsync(for:preferredLanguages:options:watchdogTimeoutProvider:completion:)(a1, a2, v18, a4, a5, a8, a9);
  return sub_1920313E8(v18);
}

uint64_t sub_1921BC744(void *a1, uint64_t (*a2)(void), double a3)
{
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v6 = sub_1922258B0();
  __swift_project_value_buffer(v6, qword_1EAE00728);
  v7 = a1;
  v8 = sub_192225890();
  v9 = sub_192227F90();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446466;
    v12 = [v7 bundleIdentifier];
    v13 = sub_192227960();
    v15 = v14;

    v16 = sub_19202B8CC(v13, v15, &v18);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2048;
    *(v10 + 14) = a3;
    _os_log_impl(&dword_192028000, v8, v9, "[%{public}s] Unable to create new WidgetExtensionSession because begin request watchdogged after %fs", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x193B0C7F0](v11, -1, -1);
    MEMORY[0x193B0C7F0](v10, -1, -1);
  }

  return a2(0);
}

uint64_t sub_1921BC918()
{
  type metadata accessor for _RunningBoardInterface();
  result = swift_allocObject();
  qword_1EAE006B0 = result;
  return result;
}

void sub_1921BC998(char a1)
{
  *(v1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostToForegroundPriority) = a1;
  v2 = *(v1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock);
  os_unfair_lock_lock(*(v2 + 16));
  sub_1921BCA1C(v1);
  v3 = *(v2 + 16);

  os_unfair_lock_unlock(v3);
}

void sub_1921BCA1C(uint64_t a1)
{
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1EAE00728);
  swift_retain_n();
  v3 = sub_192225890();
  v4 = sub_192227FB0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136446466;
    v7 = sub_19203418C();
    v9 = sub_19202B8CC(v7, v8, &v24);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1024;
    v10 = *(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostToForegroundPriority);

    *(v5 + 14) = v10;

    _os_log_impl(&dword_192028000, v3, v4, "%{public}s Setting foreground boost assertion: %{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }

  else
  {
  }

  if (*(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostToForegroundPriority) == 1 && (*(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock_invalidated) & 1) == 0)
  {
    v21 = OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostedWidgetExtensionAssertion;
    if (!*(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostedWidgetExtensionAssertion))
    {
      v22 = sub_192033AC8(0xD000000000000024, 0x800000019224DCD0);
      v23 = *(a1 + v21);
      *(a1 + v21) = v22;
LABEL_13:
      swift_unknownObjectRelease();
    }
  }

  else if (*(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostedWidgetExtensionAssertion))
  {
    v11 = *(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostedWidgetExtensionAssertion);
    swift_unknownObjectRetain();
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;

      v14 = sub_192225890();
      v15 = sub_192227FB0();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v24 = v17;
        *v16 = 136446210;
        v18 = sub_19203418C();
        v20 = sub_19202B8CC(v18, v19, &v24);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_192028000, v14, v15, "%{public}s Foreground boost assertion invalidated", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x193B0C7F0](v17, -1, -1);
        MEMORY[0x193B0C7F0](v16, -1, -1);
      }

      [v13 invalidate];
    }

    goto LABEL_13;
  }
}

uint64_t sub_1921BCD7C(unint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1 >> 62)
  {
    v12 = a2;
    v13 = sub_192228340();
    a2 = v12;
    v5 = v13;
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v14 = a2;
    v15 = MEMORY[0x1E69E7CC0];
    result = sub_192228520();
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193B0B410](v8, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      [v9 copyAsCHSAvocadoDescriptor];

      sub_1922284F0();
      v11 = *(v15 + 16);
      sub_192228530();
      sub_192228540();
      sub_192228500();
    }

    while (v5 != v8);
    v6 = v15;
  }

  a3(v6);
}

void sub_1921BCF5C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = a6;
  v14[7] = a7;
  v18[4] = sub_1921C9210;
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1921BD98C;
  v18[3] = &block_descriptor_434;
  v15 = _Block_copy(v18);
  v16 = a4;
  v17 = a5;

  [a1 getCurrentDescriptorsWithCompletion_];
  _Block_release(v15);
}

uint64_t sub_1921BD078(unint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 >> 62)
  {
    v13 = sub_192228340();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v23 = MEMORY[0x1E69E7CC0];
    result = sub_192228520();
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v21 = a6;
    v22 = a4;
    v16 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193B0B410](v16, a1);
      }

      else
      {
        v17 = *(a1 + 8 * v16 + 32);
      }

      v18 = v17;
      ++v16;
      sub_1921BD21C(a2, a3);

      sub_1922284F0();
      v19 = *(v23 + 16);
      sub_192228530();
      sub_192228540();
      sub_192228500();
    }

    while (v13 != v16);
    a4 = v22;
    v14 = v23;
    a6 = v21;
  }

  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = v14;

  a4(sub_1921C9278, v20, 0);
}

uint64_t sub_1921BD21C(uint64_t a1, void *a2)
{
  v3 = v2;
  v47 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v45 - v7;
  [v2 mutableCopy];
  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A7A8(0, &qword_1ED749A50, 0x1E6994310);
  swift_dynamicCast();
  v9 = v49;
  [v49 setExtensionIdentity_];
  v10 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1998, &unk_19223E680);
  v12 = *(*(v11 - 8) + 48);
  if (!v12(a1 + v10, 1, v11))
  {
    v13 = sub_192225510();
    v15 = v14;
    swift_endAccess();
    sub_19202A7A8(0, &qword_1EADECA88, 0x1E6963620);
    v16 = sub_1920393C8(v13, v15, 1);
    if (!v16)
    {
      goto LABEL_4;
    }

    v46 = v16;
    if ([v16 developerType] != 1)
    {
      v19 = 0;
      v18 = 1;
      v17 = v46;
      v20 = v47;
      goto LABEL_5;
    }

    v41 = [v47 infoDictionary];
    v45 = v41;
    v42 = sub_192227930();
    sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
    v43 = [v41 objectForKey:v42 ofClass:swift_getObjCClassFromMetadata()];

    if (v43)
    {
      sub_1922282B0();
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
    }

    v51 = v49;
    v52 = v50;
    if (*(&v50 + 1))
    {
      if (swift_dynamicCast())
      {
        goto LABEL_40;
      }
    }

    else
    {
      sub_192033970(&v51, &unk_1EADEF330, &unk_19222CD40);
    }

    swift_beginAccess();
    if (v12(a1 + v10, 1, v11))
    {
      swift_endAccess();
      v44 = 0;
      v17 = v46;
      v20 = v47;
LABEL_41:
      [v9 setNativeContainerBundleIdentifier_];

      v18 = 0;
      v19 = 0;
      goto LABEL_5;
    }

    sub_192225510();
    swift_endAccess();
LABEL_40:
    v20 = v47;
    v44 = sub_192227930();

    v17 = v46;
    goto LABEL_41;
  }

  swift_endAccess();
LABEL_4:
  v17 = 0;
  v18 = 1;
  v19 = 1;
  v20 = v47;
LABEL_5:
  v21 = [v9 enablesMultipleTapTargets];
  if ((v18 | v19) == 1 && v21)
  {
    [v9 setEnablesMultipleTapTargets_];
  }

  v22 = [v3 widgetVisibility];
  v23 = [v20 URL];
  sub_192224FF0();

  v24 = sub_192225020();
  (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
  v25 = sub_1921C70A0(v22, v8);
  sub_192033970(v8, &qword_1EADEEE10, &unk_19222B630);
  [v9 setWidgetVisibility_];
  v26 = [v9 sdkVersion];
  v27 = sub_192227960();
  v29 = v28;

  v30 = *MEMORY[0x1E6994200];
  if (v27 == sub_192227960() && v29 == v31)
  {
  }

  else
  {
    v32 = sub_1922289A0();

    if ((v32 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v33 = [v20 SDKVersion];
  if (v33)
  {
    v34 = v33;
    [v9 setSdkVersion_];
  }

LABEL_14:
  v35 = [v20 entitlements];
  v36 = sub_192227930();
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v37 = [v35 objectForKey:v36 ofClass:swift_getObjCClassFromMetadata()];

  if (v37)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v51 = v49;
  v52 = v50;
  if (!*(&v50 + 1))
  {
    sub_192033970(&v51, &unk_1EADEF330, &unk_19222CD40);
LABEL_24:
    v38 = 0;
    v39 = 2;
    goto LABEL_25;
  }

  type metadata accessor for FileProtectionType(0);
  if ((swift_dynamicCast() & 1) == 0 || !v48)
  {
    goto LABEL_24;
  }

  v38 = v48;
  DataProtectionLevel.init(_:)(v38);
  if (v51 <= 1u)
  {
    v39 = v51 != 0;
  }

  else
  {
    v39 = 2;
    if (v51 == 3)
    {
      v39 = 3;
    }
  }

LABEL_25:
  [v9 setRequestedDataProtection_];
  [v9 copy];
  sub_1922282B0();

  swift_unknownObjectRelease();
  sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
  swift_dynamicCast();
  return v49;
}

uint64_t sub_1921BD98C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
  v3 = sub_192227B70();

  v2(v3);
}

void sub_1921BDA28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  sub_19202A7A8(0, a4, a5);
  v7 = sub_192227B60();
  if (a2)
  {
    v8 = sub_192224F80();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a3 + 16))(a3, v7);
}

unint64_t sub_1921BDAC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BC8, &qword_1922405D8);
    v2 = sub_1922286C0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v26 = v8 >> 6;

    v27 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v33 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v33 >= v26)
      {
LABEL_36:

        return v2;
      }

      v7 = *(v4 + 8 * v33);
      ++v27;
      if (v7)
      {
        while (1)
        {
          v34 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v35 = (v33 << 9) | (8 * v34);
          v36 = *(*(a1 + 56) + v35);
          v37 = *(*(a1 + 48) + v35);

          result = sub_1920B74F8(v37);
          if (v38)
          {
            v28 = *(v2 + 48);
            v29 = *(v28 + 8 * result);
            *(v28 + 8 * result) = v37;
            v30 = result;

            v31 = *(v2 + 56);
            v32 = *(v31 + 8 * v30);
            *(v31 + 8 * v30) = v36;

            v27 = v33;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v39 = *(v2 + 16);
            if (v39 >= *(v2 + 24))
            {
              goto LABEL_40;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v37;
            *(*(v2 + 56) + 8 * result) = v36;
            *(v2 + 16) = v39 + 1;
            v27 = v33;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v33 = v27;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
      v16 = *(*(a1 + 56) + v15);
      v17 = *(v2 + 40);
      v18 = *(*(a1 + 48) + v15);

      result = sub_1922281C0();
      v19 = -1 << *(v2 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v2 + 48) + 8 * v13) = v18;
      *(*(v2 + 56) + 8 * v13) = v16;
      ++*(v2 + 16);
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_1921BE048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for PlaceholderRequest();
  v11 = sub_192227B60();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a5;
  v12[5] = a6;
  v14[4] = sub_1921C9040;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1921C9404;
  v14[3] = &block_descriptor_372;
  v13 = _Block_copy(v14);

  [a1 getPlaceholdersWithRequests:v11 completion:v13];
  _Block_release(v13);
}

void sub_1921BE198(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_192227930();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a6;
  v13[5] = a7;
  v15[4] = sub_1921C8FB4;
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_19202AB80;
  v15[3] = &block_descriptor_353;
  v14 = _Block_copy(v15);

  [a1 handleURLSessionEventsFor:v12 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1921BE2B0(void (*a1)(uint64_t (*)(), uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  a1(sub_1921C8FC0, v7, 0);
}

uint64_t sub_1921BE498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_192227930();
  if (a6)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a7;
  v16[5] = a8;
  v19[4] = sub_1921C8F6C;
  v19[5] = v16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1921C9404;
  v19[3] = &block_descriptor_334;
  v17 = _Block_copy(v19);

  [a1 attachPreviewAgentWithFrameworkPath:v14 endpoint:v15 handler:v17];
  _Block_release(v17);

  return swift_unknownObjectRelease();
}

void sub_1921BEA14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a5;
  v17[5] = a6;
  v19[4] = a8;
  v19[5] = v17;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1921C9404;
  v19[3] = a9;
  v18 = _Block_copy(v19);

  [a1 *a10];
  _Block_release(v18);
}

void sub_1921BEC64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for ControlTemplateRequest();
  v11 = sub_192227B60();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a5;
  v12[5] = a6;
  v14[4] = sub_1921C8D34;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_19202AF14;
  v14[3] = &block_descriptor_259;
  v13 = _Block_copy(v14);

  [a1 getControlTemplatesWithRequests:v11 completion:v13];
  _Block_release(v13);
}

void sub_1921BEDB4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, char a7, uint64_t a8, uint64_t a9)
{
  aBlock[0] = a5;
  v16 = objc_allocWithZone(type metadata accessor for TimelineRequest());
  v17 = a5;
  v18 = a4;
  v19 = sub_192077DB8(v18, aBlock, a6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_19222C680;
  *(v20 + 32) = v19;
  v21 = v19;
  v22 = sub_192227B60();

  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = a8;
  v23[5] = a9;
  aBlock[4] = sub_1921C8CB0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1921C9404;
  aBlock[3] = &block_descriptor_221;
  v24 = _Block_copy(aBlock);

  [a1 getTimelinesWithRequests:v22 isPreview:a7 & 1 completion:v24];
  _Block_release(v24);
}

void sub_1921BF110(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v12[4] = sub_1921C8C3C;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1921BF2EC;
  v12[3] = &block_descriptor_202;
  v11 = _Block_copy(v12);

  [a1 getAppIntentsXPCListenerEndpointWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_1921BF210(void *a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(uint64_t (*)(), void *, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = a4;
  v16 = a1;

  sub_19206A874(a2, a3);
  v17 = a4;
  a5(sub_1921C8C48, v15, 0);
}

uint64_t sub_1921BF2EC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {

    v9 = a2;
    v10 = v5;
    v5 = sub_192225080();
    v12 = v11;
  }

  else
  {

    v13 = a2;
    v12 = 0xF000000000000000;
  }

  v14 = a4;
  v8(a2, v5, v12, a4);

  sub_192046ED4(v5, v12);
}

void sub_1921BF4E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for ActivityWidgetRequest(0);
  v11 = sub_192227B60();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a5;
  v12[5] = a6;
  v14[4] = sub_1921C8BB8;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1921C9404;
  v14[3] = &block_descriptor_184;
  v13 = _Block_copy(v14);

  [a1 getActivitiesWithRequests:v11 completion:v13];
  _Block_release(v13);
}

uint64_t sub_1921BF60C(void *a1, void (*a2)(uint64_t, void *, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a1;
  v13 = a1;

  a2(a7, v12, 0);
}

uint64_t sub_1921BF6D8(uint64_t a1, int a2, int a3, void *aBlock, void (*a5)(void), void (*a6)(uint64_t, uint64_t, void *))
{
  v9 = _Block_copy(aBlock);
  a5(0);
  v10 = sub_192227B70();
  _Block_copy(v9);

  a6(v10, a1, v9);
  _Block_release(v9);
  _Block_release(v9);
}

void sub_1921BF78C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a5;
  v12[5] = a6;
  v14[4] = sub_1921C8B70;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_19202AF14;
  v14[3] = &block_descriptor_165;
  v13 = _Block_copy(v14);

  [a1 getWidgetRelevancesWithRequest:a4 completion:v13];
  _Block_release(v13);
}

uint64_t sub_1921BF894(void *a1, void (*a2)(uint64_t, void *, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a1;

  v13 = a1;
  a2(a7, v12, 0);
}

uint64_t sub_1921BFB54(void *a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock);
    os_unfair_lock_lock(*(v7 + 16));
    v8 = *(v6 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock_invalidated);
    os_unfair_lock_unlock(*(v7 + 16));
    if ((v8 & 1) == 0)
    {
      if (qword_1EADECEC0 != -1)
      {
        swift_once();
      }

      v9 = sub_1922258B0();
      __swift_project_value_buffer(v9, qword_1EAE00728);

      v10 = a1;
      v11 = sub_192225890();
      v12 = sub_192227FB0();

      if (os_log_type_enabled(v11, v12))
      {
        v22 = a3;
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v23 = v15;
        *v13 = 136446466;
        v16 = sub_19203418C();
        v18 = sub_19202B8CC(v16, v17, &v23);

        *(v13 + 4) = v18;
        *(v13 + 12) = 2114;
        v19 = a1;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 14) = v20;
        *v14 = v20;
        _os_log_impl(&dword_192028000, v11, v12, "%{public}s Unexpected error on session: %{public}@", v13, 0x16u);
        sub_192033970(v14, &qword_1EADEEDF0, &qword_1922319C0);
        MEMORY[0x193B0C7F0](v14, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x193B0C7F0](v15, -1, -1);
        v21 = v13;
        a3 = v22;
        MEMORY[0x193B0C7F0](v21, -1, -1);
      }

      sub_19203977C();
      a3(a1);
    }
  }

  return result;
}

id sub_1921BFDA4(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(id, void, uint64_t))
{
  *&v49 = sub_1922255D0();
  *(&v49 + 1) = v6;
  v50 = v7;
  v51 = v8;
  v52 = v9;
  v10 = [objc_allocWithZone(MEMORY[0x1E698E620]) initWithAuditToken_];
  [v10 pid];

  if (BSPIDIsBeingDebugged())
  {
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v11 = sub_1922258B0();
    __swift_project_value_buffer(v11, qword_1EAE00728);

    v12 = sub_192225890();
    v13 = sub_192227FB0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v48[0] = v15;
      *v14 = 136446466;
      v16 = sub_19203418C();
      v18 = sub_19202B8CC(v16, v17, v48);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      *&v49 = a3;
      BYTE8(v49) = a4;
      v19 = WidgetExtensionSessionOperation.description.getter();
      v21 = sub_19202B8CC(v19, v20, v48);

      *(v14 + 14) = v21;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v15, -1, -1);
      MEMORY[0x193B0C7F0](v14, -1, -1);
    }
  }

  else
  {
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v22 = sub_1922258B0();
    __swift_project_value_buffer(v22, qword_1EAE00728);

    v23 = sub_192225890();
    v24 = sub_192227FB0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v48[0] = v26;
      *v25 = 136446466;
      v27 = sub_19203418C();
      v29 = sub_19202B8CC(v27, v28, v48);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      *&v49 = a3;
      BYTE8(v49) = a4;
      v30 = WidgetExtensionSessionOperation.description.getter();
      v32 = sub_19202B8CC(v30, v31, v48);

      *(v25 + 14) = v32;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v26, -1, -1);
      MEMORY[0x193B0C7F0](v25, -1, -1);
    }

    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_192228400();

    *&v49 = 0xD000000000000020;
    *(&v49 + 1) = 0x800000019224DC80;
    *&v48[0] = a3;
    BYTE8(v48[0]) = a4;
    v33 = WidgetExtensionSessionOperation.description.getter();
    MEMORY[0x193B0A990](v33);

    v34 = v49;
    v35 = *MEMORY[0x1E69941E8];
    sub_19214036C(MEMORY[0x1E69E7CC0]);
    v36 = *MEMORY[0x1E696A278];
    v37 = sub_192227960();
    v39 = v38;
    v52 = MEMORY[0x1E69E6158];
    v49 = v34;
    sub_19203BEDC(&v49, v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19213DB28(v48, v37, v39, isUniquelyReferenced_nonNull_native);

    v41 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v42 = sub_192227830();

    v43 = [v41 initWithDomain:v35 code:1001 userInfo:v42];

    a5(v43, 0, 1);
  }

  return [a1 invalidate];
}

unint64_t sub_1921C02A8()
{
  result = sub_192140830(MEMORY[0x1E69E7CC0]);
  qword_1EADECCD0 = result;
  return result;
}

void sub_1921C02D0(void *a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v141 = a4;
  v142 = a3;
  v143 = a1;
  v151 = *MEMORY[0x1E69E9840];
  v137 = sub_192227730();
  v136 = *(v137 - 1);
  v7 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1922251B0();
  v133 = *(v134 - 8);
  v9 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v138 = *(v140 - 1);
  v11 = v138[8];
  MEMORY[0x1EEE9AC00](v140);
  v13 = &v127 - v12;
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v14 = sub_1922258B0();
  v15 = __swift_project_value_buffer(v14, qword_1EAE00728);

  v144 = v15;
  v16 = sub_192225890();
  v17 = sub_192227FB0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock = v19;
    *v18 = 136446466;
    v20 = sub_19203418C();
    v22 = sub_19202B8CC(v20, v21, &aBlock);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_19202B8CC(v143, a2, &aBlock);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v19, -1, -1);
    MEMORY[0x193B0C7F0](v18, -1, -1);
  }

  v23 = sub_192225890();
  v24 = sub_192227F90();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136446466;
    v27 = sub_19203418C();
    v29 = sub_19202B8CC(v27, v28, &aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_19202B8CC(v143, a2, &aBlock);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v26, -1, -1);
    MEMORY[0x193B0C7F0](v25, -1, -1);
  }

  sub_19203977C();
  v30 = objc_allocWithZone(MEMORY[0x1E69C7650]);
  v31 = sub_192227930();
  v32 = [v30 initWithExplanation_];

  sub_1922256C0();
  sub_192225500();
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_192033A64(&qword_1EADECB60, &aBlock);
  v33 = v148;
  v34 = v149;
  __swift_project_boxed_opaque_existential_1(&aBlock, v148);
  v35 = (*(v34 + 1))(v13, v33, v34);
  (v138[1])(v13, v140);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v36 = sub_19203418C();
  v38 = v37;
  if (qword_1EADECCC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v39 = sub_1921C7FDC(v35, v143, a2, v36, v38, &qword_1EADECCD0, 0);
  swift_endAccess();

  [v32 setReportType_];
  [v32 setExceptionDomain_];
  [v32 setExceptionCode_];
  [v32 setMaximumTerminationResistance_];
  v131 = OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession__exExtensionProcess;
  v40 = sub_1922255D0();
  v41 = v40;
  v43 = v42;
  LODWORD(v39) = v44;
  v46 = v45;
  v47 = HIDWORD(v40);
  v48 = HIDWORD(v42);
  v49 = HIDWORD(v44);
  v50 = HIDWORD(v45);
  v51 = objc_allocWithZone(MEMORY[0x1E698E620]);
  aBlock = __PAIR64__(v47, v41);
  v146 = __PAIR64__(v48, v43);
  v147 = __PAIR64__(v49, v39);
  v148 = __PAIR64__(v50, v46);
  v52 = [v51 initWithAuditToken_];
  v53 = [v52 pid];

  v54 = [objc_opt_self() targetWithPid_];
  v55 = [objc_opt_self() predicateMatchingTarget_];
  v56 = [objc_allocWithZone(MEMORY[0x1E69C7660]) initWithPredicate:v55 context:v32];

  v57 = sub_192225890();
  v58 = sub_192227FB0();

  v59 = os_log_type_enabled(v57, v58);
  v143 = v56;
  v139 = v5;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock = v61;
    *v60 = 136446466;
    v62 = (v5 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier);
    v63 = v32;
    v64 = v54;
    v65 = v53;
    v66 = *v62;
    v53 = v62[1];

    v67 = sub_19202B8CC(v66, v53, &aBlock);
    LODWORD(v53) = v65;

    *(v60 + 4) = v67;
    v54 = v64;
    v32 = v63;
    *(v60 + 12) = 1026;
    *(v60 + 14) = v65;
    _os_log_impl(&dword_192028000, v57, v58, "%{public}s Extension process termination requested (%{public}d)", v60, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x193B0C7F0](v61, -1, -1);
    MEMORY[0x193B0C7F0](v60, -1, -1);
  }

  sub_19202A7A8(0, &qword_1EADECA78, 0x1E69C75D0);
  v68 = v55;
  v69 = sub_1921C6728(v68);

  v138 = v68;
  v140 = v54;
  v130 = v32;
  v70 = v139;
  v72 = *(v139 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier);
  v71 = *(v139 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier + 8);
  v128 = (v139 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier);
  v73 = swift_allocObject();
  *(v73 + 16) = v70;
  *(v73 + 24) = v53;
  v75 = v141;
  v74 = v142;
  *(v73 + 32) = 0x4014000000000000;
  *(v73 + 40) = v74;
  *(v73 + 48) = v75;
  type metadata accessor for CompletionOrWatchdogWrapper();
  v76 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v77 = swift_allocObject();

  v129 = v69;

  v78 = swift_slowAlloc();
  *v78 = 0;
  *(v77 + 16) = v78;
  v76[4] = v77;
  v79 = v132;
  sub_1922251A0();
  sub_192225160();
  (*(v133 + 8))(v79, v134);
  v80 = objc_allocWithZone(MEMORY[0x1E698E660]);
  LODWORD(v134) = v53;
  v81 = v80;
  v82 = sub_192227930();

  v83 = [v81 initWithIdentifier_];

  v76[5] = v83;
  v76[6] = sub_1921C8A88;
  v76[7] = v73;
  v76[2] = v72;
  v76[3] = v71;
  sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  v84 = v136;
  v85 = v135;
  v86 = v137;
  (*(v136 + 104))(v135, *MEMORY[0x1E69E7F88], v137);

  v87 = sub_1922280B0();
  (*(v84 + 8))(v85, v86);
  v76[8] = v87;
  v88 = v76[5];
  if (v88)
  {
    v89 = v88;

    v149 = sub_1921C9408;
    v150 = v76;
    aBlock = MEMORY[0x1E69E9820];
    v146 = 1107296256;
    v147 = sub_192037950;
    v148 = &block_descriptor_97;
    v90 = _Block_copy(&aBlock);
    v91 = v87;

    [v89 scheduleWithFireInterval:v91 leewayInterval:v90 queue:5.0 handler:0.0];
    _Block_release(v90);

    v92 = swift_allocObject();
    *(v92 + 16) = v70;
    *(v92 + 24) = v134;
    v93 = v142;
    *(v92 + 32) = v76;
    *(v92 + 40) = v93;
    *(v92 + 48) = v75;
    v149 = sub_1921C8A9C;
    v150 = v92;
    aBlock = MEMORY[0x1E69E9820];
    v146 = 1107296256;
    v147 = sub_1921C1878;
    v148 = &block_descriptor_103;
    v94 = _Block_copy(&aBlock);

    v95 = v129;
    [v129 monitorForDeath_];

    _Block_release(v94);
    aBlock = 0;
    v96 = v143;
    if ([v143 execute_])
    {
      v97 = aBlock;
      sub_1922255E0();
    }

    else
    {
      v98 = aBlock;
      v99 = sub_192224F90();

      swift_willThrow();

      v100 = v99;
      v101 = sub_192225890();
      v102 = sub_192227F90();

      v103 = os_log_type_enabled(v101, v102);
      v104 = v130;
      v105 = v140;
      if (v103)
      {
        v106 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        aBlock = v139;
        *v106 = 136446722;
        v107 = v104;
        v108 = v99;
        v109 = v95;
        v110 = v96;
        v111 = *v128;
        v112 = v128[1];

        v113 = sub_19202B8CC(v111, v112, &aBlock);
        v96 = v110;
        v95 = v109;

        *(v106 + 4) = v113;
        v99 = v108;
        v104 = v107;
        *(v106 + 12) = 1026;
        *(v106 + 14) = v134;
        *(v106 + 18) = 2114;
        v114 = v99;
        v115 = _swift_stdlib_bridgeErrorToNSError();
        *(v106 + 20) = v115;
        v116 = v137;
        *v137 = v115;
        _os_log_impl(&dword_192028000, v101, v102, "%{public}s Termination failed for pid %{public}d, with error: %{public}@", v106, 0x1Cu);
        sub_192033970(v116, &qword_1EADEEDF0, &qword_1922319C0);
        MEMORY[0x193B0C7F0](v116, -1, -1);
        v117 = v139;
        __swift_destroy_boxed_opaque_existential_1(v139);
        MEMORY[0x193B0C7F0](v117, -1, -1);
        v118 = v106;
        v105 = v140;
        MEMORY[0x193B0C7F0](v118, -1, -1);
      }

      if (sub_19202DC80())
      {

        v119 = sub_192225890();
        v120 = sub_192227FB0();

        if (os_log_type_enabled(v119, v120))
        {
          v121 = v105;
          v122 = swift_slowAlloc();
          v123 = v99;
          v124 = swift_slowAlloc();
          aBlock = v124;
          *v122 = 136446210;
          *(v122 + 4) = sub_19202B8CC(v76[2], v76[3], &aBlock);
          _os_log_impl(&dword_192028000, v119, v120, "[%{public}s] Original request finally completed, but it had already watchdogged.", v122, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v124);
          v125 = v124;
          v99 = v123;
          MEMORY[0x193B0C7F0](v125, -1, -1);
          MEMORY[0x193B0C7F0](v122, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        v142();
      }
    }

    v126 = *MEMORY[0x1E69E9840];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1921C143C(double a1, uint64_t a2, int a3, uint64_t (*a4)(void))
{
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v7 = sub_1922258B0();
  __swift_project_value_buffer(v7, qword_1EAE00728);

  v8 = sub_192225890();
  v9 = sub_192227F90();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446722;
    v12 = sub_19203418C();
    v14 = sub_19202B8CC(v12, v13, &v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1026;
    *(v10 + 14) = a3;
    *(v10 + 18) = 2050;
    *(v10 + 20) = a1;
    _os_log_impl(&dword_192028000, v8, v9, "%{public}s Extension process termination watchdogged pid (%{public}d) after %{public}fs", v10, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x193B0C7F0](v11, -1, -1);
    MEMORY[0x193B0C7F0](v10, -1, -1);
  }

  return a4();
}

void sub_1921C15DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void (*a6)(void))
{
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v9 = sub_1922258B0();
  __swift_project_value_buffer(v9, qword_1EAE00728);

  v10 = sub_192225890();
  v11 = sub_192227FB0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v13 = a6;
    v14 = v23;
    *v12 = 136446466;
    v15 = sub_19203418C();
    v17 = sub_19202B8CC(v15, v16, &v23);

    *(v12 + 4) = v17;
    *(v12 + 12) = 1026;
    *(v12 + 14) = a4;
    _os_log_impl(&dword_192028000, v10, v11, "%{public}s Extension process terminated pid (%{public}d)", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v18 = v14;
    a6 = v13;
    MEMORY[0x193B0C7F0](v18, -1, -1);
    MEMORY[0x193B0C7F0](v12, -1, -1);
  }

  if (sub_19202DC80())
  {

    oslog = sub_192225890();
    v19 = sub_192227FB0();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_19202B8CC(*(a5 + 16), *(a5 + 24), &v23);
      _os_log_impl(&dword_192028000, oslog, v19, "[%{public}s] Original request finally completed, but it had already watchdogged.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x193B0C7F0](v21, -1, -1);
      MEMORY[0x193B0C7F0](v20, -1, -1);
    }
  }

  else
  {
    a6();
  }
}

void sub_1921C1878(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

id sub_1921C18FC(uint64_t a1, void *a2)
{
  v3 = v2;
  [v3 mutableCopy];
  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A7A8(0, qword_1EADEE810, 0x1E6994308);
  swift_dynamicCast();
  v6 = v24[0];
  [v24[0] setExtensionIdentity_];
  v7 = [v24[0] sdkVersion];
  v8 = sub_192227960();
  v10 = v9;

  v11 = *MEMORY[0x1E6994200];
  if (v8 == sub_192227960() && v10 == v12)
  {
  }

  else
  {
    v14 = sub_1922289A0();

    if ((v14 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v15 = [a2 SDKVersion];
  if (v15)
  {
    v16 = v15;
    [v24[0] setSdkVersion_];
  }

LABEL_10:
  v17 = [a2 entitlements];
  v18 = sub_192227930();
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v19 = [v17 objectForKey:v18 ofClass:swift_getObjCClassFromMetadata()];

  if (v19)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    *v24 = 0u;
    v25 = 0u;
  }

  v26[0] = *v24;
  v26[1] = v25;
  if (!*(&v25 + 1))
  {
    sub_192033970(v26, &unk_1EADEF330, &unk_19222CD40);
LABEL_20:
    v20 = 0;
    v21 = 2;
    goto LABEL_21;
  }

  type metadata accessor for FileProtectionType(0);
  if ((swift_dynamicCast() & 1) == 0 || !v23)
  {
    goto LABEL_20;
  }

  v20 = v23;
  DataProtectionLevel.init(_:)(v20);
  if (LOBYTE(v26[0]) <= 1u)
  {
    v21 = LOBYTE(v26[0]) != 0;
  }

  else
  {
    v21 = 2;
    if (LOBYTE(v26[0]) == 3)
    {
      v21 = 3;
    }
  }

LABEL_21:
  [v6 setRequestedDataProtection_];
  [v6 copy];
  sub_1922282B0();

  swift_unknownObjectRelease();
  sub_19202A7A8(0, &qword_1ED749D10, 0x1E6994358);
  swift_dynamicCast();
  return v24[0];
}

uint64_t sub_1921C1C88@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1921C1CB8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_192228350();

    if (v8)
    {

      type metadata accessor for WidgetURLHandler();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
    }

    else
    {
      result = sub_192228340();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v21 = sub_1921C2380(v7, result + 1);
        v22 = *(v21 + 16);
        if (*(v21 + 24) <= v22)
        {
          sub_1921C2A10(v22 + 1);
        }

        sub_1921C3438(v23, v21);

        *v3 = v21;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v10 = *(v6 + 40);
    sub_192228AD0();
    v11 = *(a2 + 56);
    sub_1922281E0();
    v12 = sub_192228B30();
    v13 = -1 << *(v6 + 32);
    v14 = v12 & ~v13;
    if ((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
    {
      v15 = ~v13;
      sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
      while (1)
      {
        v16 = *(*(*(v6 + 48) + 8 * v14) + 56);
        v17 = *(a2 + 56);

        LOBYTE(v16) = sub_1922281D0();

        if (v16)
        {
          break;
        }

        v14 = (v14 + 1) & v15;
        if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v14);

      return 0;
    }

    else
    {
LABEL_11:
      v18 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v3;

      sub_1921C35C4(v20, v14, isUniquelyReferenced_nonNull_native);
      *v3 = v26;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1921C1F1C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_192228AD0();
  sub_192227650();
  v7 = sub_192228B30();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      if (sub_192227640())
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(*(v5 + 48) + 8 * v9);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1921C377C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1921C2060(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_192228AD0();
  MEMORY[0x193B0BA90](a2);
  v11 = sub_192228B30();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (*(*(v9 + 48) + v13) != a2)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v15 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_1921C38D0(a2, v13, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1921C2180(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BF8, &unk_192240610);
    v2 = sub_1922283D0();
    v16 = v2;
    sub_192228330();
    if (sub_192228360())
    {
      sub_1922282D0();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1921C27B4(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_192227880();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_192228360());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1921C2380(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BD8, &qword_1922405E8);
    v2 = sub_1922283D0();
    v17 = v2;
    sub_192228330();
    if (sub_192228360())
    {
      type metadata accessor for WidgetURLHandler();
      do
      {
        swift_dynamicCast();
        v11 = *(v2 + 16);
        if (*(v2 + 24) <= v11)
        {
          sub_1921C2A10(v11 + 1);
        }

        v2 = v17;
        v3 = *(v17 + 40);
        sub_192228AD0();
        v4 = *(v16 + 56);
        sub_1922281E0();
        result = sub_192228B30();
        v6 = v17 + 56;
        v7 = -1 << *(v17 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v9 == v13;
            if (v9 == v13)
            {
              v9 = 0;
            }

            v12 |= v14;
            v15 = *(v6 + 8 * v9);
          }

          while (v15 == -1);
          v10 = __clz(__rbit64(~v15)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v17 + 48) + 8 * v10) = v16;
        ++*(v17 + 16);
      }

      while (sub_192228360());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1921C2580(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BA8, &qword_192240508);
    v2 = sub_1922283D0();
    v16 = v2;
    sub_192228330();
    if (sub_192228360())
    {
      sub_1922258F0();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1921C2EB0(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10]);
        result = sub_192227880();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_192228360());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1921C27B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BF8, &unk_192240610);
  result = sub_1922283C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1922282D0();
      result = sub_192227880();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1921C2A10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BD8, &qword_1922405E8);
  result = sub_1922283C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_192228AD0();
      v20 = *(v18 + 56);
      sub_1922281E0();
      result = sub_192228B30();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1921C2C60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BD0, &qword_1922405E0);
  result = sub_1922283C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_192228AD0();
      sub_192227650();
      result = sub_192228B30();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1921C2EB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BA8, &qword_192240508);
  result = sub_1922283C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1922258F0();
      sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10]);
      result = sub_192227880();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1921C3144(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1922283C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_192228AD0();
      MEMORY[0x193B0BA90](v20);
      result = sub_192228B30();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v4 = v30;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_1921C338C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1922282D0();
  sub_192227880();
  v5 = -1 << *(a2 + 32);
  result = sub_192228320();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1921C3438(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_192228AD0();
  v5 = *(a1 + 56);
  sub_1922281E0();
  sub_192228B30();
  v6 = -1 << *(a2 + 32);
  result = sub_192228320();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1921C34DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1922258F0();
  sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10]);
  sub_192227880();
  v5 = -1 << *(a2 + 32);
  result = sub_192228320();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1921C35C4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1921C2A10(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1921C3CDC(&qword_1EADF1BD8, &qword_1922405E8);
      goto LABEL_12;
    }

    sub_1921C4188(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_192228AD0();
  v11 = *(v6 + 56);
  sub_1922281E0();
  result = sub_192228B30();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for WidgetURLHandler();
    sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
    do
    {
      v14 = *(*(*(v9 + 48) + 8 * a2) + 56);
      v15 = *(v6 + 56);

      LOBYTE(v14) = sub_1922281D0();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v6;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_192228A30();
  __break(1u);
  return result;
}

uint64_t sub_1921C377C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1921C2C60(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1921C3B9C();
      goto LABEL_12;
    }

    sub_1921C43B0(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_192228AD0();
  sub_192227650();
  result = sub_192228B30();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      result = sub_192227640();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_192228A30();
  __break(1u);
  return result;
}

uint64_t sub_1921C38D0(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1921C3144(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = sub_1921C3E1C(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    sub_1921C45D0(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_192228AD0();
  MEMORY[0x193B0BA90](v6);
  result = sub_192228B30();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_192228A30();
  __break(1u);
  return result;
}

void *sub_1921C3A40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13D0, &qword_19223AE68);
  v2 = *v0;
  v3 = sub_1922283B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1921C3B9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BD0, &qword_1922405E0);
  v2 = *v0;
  v3 = sub_1922283B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1921C3CDC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1922283B0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1921C3E1C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1922283B0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1921C3F4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BF8, &unk_192240610);
  result = sub_1922283C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1922282D0();

      result = sub_192227880();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1921C4188(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BD8, &qword_1922405E8);
  result = sub_1922283C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_192228AD0();
      v19 = *(v17 + 56);

      sub_1922281E0();
      result = sub_192228B30();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1921C43B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BD0, &qword_1922405E0);
  result = sub_1922283C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_192228AD0();
      sub_192227650();
      result = sub_192228B30();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1921C45D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1922283C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v5 + 48) + (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      sub_192228AD0();
      MEMORY[0x193B0BA90](v19);
      result = sub_192228B30();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_1921C47E8(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = sub_192228370();

    if (v6)
    {
      v7 = sub_1921C4AC4(v4, a1);

      return v7;
    }

    return 0;
  }

  v9 = *(v3 + 40);
  sub_192228AD0();
  v10 = *(a1 + 56);
  sub_1922281E0();
  v11 = sub_192228B30();
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
  while (1)
  {
    v15 = *(*(*(v3 + 48) + 8 * v13) + 56);

    LOBYTE(v15) = sub_1922281D0();

    if (v15)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v1;
  v20 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1921C3CDC(&qword_1EADF1BD8, &qword_1922405E8);
    v18 = v20;
  }

  v19 = *(*(v18 + 48) + 8 * v13);
  sub_1921C4E2C(v13);
  result = v19;
  *v1 = v20;
  return result;
}

uint64_t sub_1921C49B4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  sub_192228AD0();
  sub_192227650();
  v3 = sub_192228B30();
  v4 = -1 << *(v1 + 32);
  v5 = v3 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  while (1)
  {
    v7 = *(*(v1 + 48) + 8 * v5);
    if (sub_192227640())
    {
      break;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  v13 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1921C3B9C();
    v11 = v13;
  }

  v12 = *(*(v11 + 48) + 8 * v5);
  sub_1921C4FE8(v5);
  result = v12;
  *v0 = v13;
  return result;
}

uint64_t sub_1921C4AC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;

  v6 = sub_192228340();
  v7 = swift_unknownObjectRetain();
  v8 = sub_1921C2380(v7, v6);
  v19 = v8;
  v9 = *(v8 + 40);
  sub_192228AD0();
  v10 = *(a2 + 56);

  sub_1922281E0();
  v11 = sub_192228B30();
  v12 = -1 << *(v8 + 32);
  v13 = v11 & ~v12;
  if ((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
    while (1)
    {
      v15 = *(*(*(v8 + 48) + 8 * v13) + 56);

      LOBYTE(v15) = sub_1922281D0();

      if (v15)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
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

  v16 = *(*(v8 + 48) + 8 * v13);
  sub_1921C4E2C(v13);
  v17 = *(v16 + 56);
  result = sub_1922281D0();
  if (result)
  {
    *v3 = v19;
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1921C4C50()
{
  v1 = *v0;

  v2 = sub_192228340();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1921C2580(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);
  sub_1922258F0();
  sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10]);

  v6 = sub_192227880();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_192034F00(&qword_1EADECEA8, MEMORY[0x1E695BF10]);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (sub_192227910())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
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

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_19203A6C8(v8);
  result = sub_192227910();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1921C4E2C(unint64_t result)
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

    v9 = sub_192228310();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_192228AD0();
        v13 = *(v12 + 56);

        sub_1922281E0();
        v14 = sub_192228B30();

        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = (v16 + 8 * v2);
          v18 = (v16 + 8 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1921C4FE8(unint64_t result)
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

    v9 = sub_192228310();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_192228AD0();
        sub_192227650();
        v13 = sub_192228B30() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1921C5190(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1988, &unk_1922404E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v26 - v12;
  sub_192225510();
  v14 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  v15 = sub_192034E34();
  v17 = v15;
  if (!v15)
  {
    return 0;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1998, &unk_19223E680);
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v26[1] = v19 + 56;
  v27 = v20;
  v20(v13, 1, 1, v18);
  v21 = [v17 containingBundleRecord];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 bundleIdentifier];

    if (v23)
    {
      sub_192227960();
      v26[0] = v24;

      sub_192225500();
      sub_192033970(v13, &qword_1EADF1988, &unk_1922404E0);
      v27(v11, 0, 1, v18);
      sub_1921C66B8(v11, v13);
    }
  }

  sub_192228100();
  (*(v3 + 16))(v6, a1, v2);
  sub_19202CFFC(v13, v11, &qword_1EADF1988, &unk_1922404E0);
  v25 = sub_1922280F0();

  sub_192033970(v13, &qword_1EADF1988, &unk_1922404E0);
  return v25;
}

id sub_1921C549C(_BYTE *a1)
{
  *a1;
  v1 = sub_192227930();
  v2 = sub_192227930();
  v3 = [objc_opt_self() attributeWithDomain:v1 name:v2];

  return v3;
}

uint64_t _s9WidgetKit0A23ExtensionSessionFactoryC04makeD03for18preferredLanguages7options23watchdogTimeoutProviderAA0acD0_pSgypSg_SaySSGSgAA0cD7OptionsVSdSgAA0acD9OperationOcSgtFZ_0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v109 = a2;
  v9 = sub_1922256B0();
  v107 = *(v9 - 8);
  v108 = v9;
  v10 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_192225670();
  v112 = *(v12 - 8);
  v113 = v12;
  v13 = *(v112 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v110 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v95 - v16;
  v18 = sub_1922256D0();
  v114 = *(v18 - 8);
  v19 = *(v114 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v95 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v95 - v24;
  v26 = sub_1922251B0();
  v115 = *(v26 - 8);
  v116 = v26;
  v27 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v117 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v29 = a4;
  }

  else
  {
    v29 = sub_1921BBD34;
  }

  v106 = v29;
  if (a4)
  {
    v30 = a5;
  }

  else
  {
    v30 = 0;
  }

  v118 = v30;
  sub_19202CFFC(a1, v119, &unk_1EADEF330, &unk_19222CD40);
  if (!v120)
  {
    sub_19202D088(a4);
    sub_192033970(v119, &unk_1EADEF330, &unk_19222CD40);
    goto LABEL_14;
  }

  sub_19202D088(a4);
  sub_19202A7A8(0, &qword_1EADECA68, 0x1E6966CB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_19202CFFC(a1, v119, &unk_1EADEF330, &unk_19222CD40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF330, &unk_19222CD40);
    v34 = sub_192227990();
    v36 = v35;
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v37 = sub_1922258B0();
    __swift_project_value_buffer(v37, qword_1EAE00728);

    v38 = sub_192225890();
    v39 = sub_192227FB0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v119[0] = v41;
      *v40 = 136446210;
      v42 = sub_19202B8CC(v34, v36, v119);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_192028000, v38, v39, "Unable to create new WidgetExtensionSession: extension was not an _EXExtensionIdentity - %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x193B0C7F0](v41, -1, -1);
      MEMORY[0x193B0C7F0](v40, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v31 = v122;
  v32 = *(a3 + 48);
  v102 = v18;
  if (v32)
  {
    if (qword_1EADECBA8 != -1)
    {
      swift_once();
    }

    v103 = 0x800000019224D900;
    v33 = &qword_1EADECBB0;
    v101 = 0xD000000000000012;
  }

  else
  {
    if (qword_1EADECBC0 != -1)
    {
      swift_once();
    }

    v101 = 0;
    v103 = 0;
    v33 = &qword_1EADECBC8;
  }

  v43 = *v33;
  sub_1922251A0();
  v104 = v31;
  v44 = [v31 bundleIdentifier];
  sub_192227960();

  v45 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  v46 = sub_192034E34();
  v105 = v43;
  v47 = v46;
  v97 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = 0;
  v48 = objc_allocWithZone(MEMORY[0x1E6966CB0]);
  v99 = v47;
  v98 = [v48 initWithApplicationExtensionRecord_];
  sub_1922256E0();
  v49 = v114;
  v50 = a3;
  v51 = *(v114 + 16);
  v52 = v102;
  v51(v23, v25, v102);
  sub_1922255F0();
  v53 = v43;
  v54 = v52;
  v96 = v53;
  sub_192225620();

  sub_192225630();
  sub_192225640();
  v103 = v50;
  v55 = *(v50 + 56);

  sub_192225660();
  v109 = v25;
  v101 = v51;
  v51(v23, v25, v52);
  v56 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v57 = swift_allocObject();
  v58 = v23;
  (*(v49 + 32))(v57 + v56, v23, v52);
  sub_192225610();
  v120 = &type metadata for FeatureFlags.Widgets;
  v121 = sub_19202DBA4();
  LOBYTE(v119[0]) = 18;
  LOBYTE(v52) = sub_192225420();
  __swift_destroy_boxed_opaque_existential_1(v119);
  if (v52)
  {
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v59 = sub_1922258B0();
    __swift_project_value_buffer(v59, qword_1EAE00728);
    v60 = v97;
    v101(v97, v109, v54);
    v61 = sub_192225890();
    v62 = sub_192227FB0();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v119[0] = v64;
      *v63 = 136446210;
      v65 = sub_1922256C0();
      v67 = v66;
      (*(v114 + 8))(v60, v54);
      v68 = sub_19202B8CC(v65, v67, v119);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_192028000, v61, v62, "Overriding assertion attributes in launch case: %{public}s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x193B0C7F0](v64, -1, -1);
      MEMORY[0x193B0C7F0](v63, -1, -1);
    }

    else
    {

      (*(v114 + 8))(v60, v54);
    }

    v69 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_19222C680;
    LOBYTE(v119[0]) = *v69;
    *(v70 + 32) = sub_1921C549C(v119);
    sub_192225650();
  }

  v71 = v112;
  v72 = v113;
  (*(v112 + 16))(v110, v17, v113);
  v73 = v111;
  v74 = v100;
  sub_192225680();
  if (v74)
  {

    (*(v71 + 8))(v17, v72);
    (*(v114 + 8))(v109, v54);
    v75 = v105;
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v76 = sub_1922258B0();
    __swift_project_value_buffer(v76, qword_1EAE00728);
    v77 = v104;
    v78 = v74;
    v79 = sub_192225890();
    v80 = sub_192227F90();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v119[0] = v83;
      *v81 = 136446466;
      v84 = [v77 bundleIdentifier];
      v85 = sub_192227960();
      v87 = v86;

      v88 = sub_19202B8CC(v85, v87, v119);

      *(v81 + 4) = v88;
      *(v81 + 12) = 2114;
      v89 = v74;
      v90 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 14) = v90;
      *v82 = v90;
      _os_log_impl(&dword_192028000, v79, v80, "[%{public}s] Unable to create new WidgetExtensionSession because begin request failed: %{public}@", v81, 0x16u);
      sub_192033970(v82, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v82, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x193B0C7F0](v83, -1, -1);
      MEMORY[0x193B0C7F0](v81, -1, -1);
    }

    else
    {
    }

    (*(v115 + 8))(v117, v116);
    return 0;
  }

  sub_192225600();
  v92 = v117;
  v93 = sub_192032834(v58, v73, v103, v106, v118, v117);

  v94 = *(v114 + 8);
  v94(v58, v54);
  (*(v107 + 8))(v73, v108);
  (*(v71 + 8))(v17, v72);
  v94(v109, v54);
  (*(v115 + 8))(v92, v116);
  return v93;
}

uint64_t sub_1921C62A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  *(a1 + 8) = v6 & 1;
  return result;
}

unint64_t sub_1921C62DC()
{
  result = qword_1EADF1B90;
  if (!qword_1EADF1B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1B90);
  }

  return result;
}

uint64_t sub_1921C6330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1921C6378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetExtensionSessionOperation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetExtensionSessionOperation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1921C6464(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1921C647C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1921C6538()
{
  result = sub_1922256D0();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_1922256B0();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_1922251B0();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1921C66B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1988, &unk_1922404E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1921C6728(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_192224F90();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

void sub_1921C67EC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v30 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_1922256C0();
  sub_192225500();
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_192033A64(&qword_1EADECB60, &v32);
  v11 = v33;
  v12 = v34;
  __swift_project_boxed_opaque_existential_1(&v32, v33);
  v13 = (*(v12 + 8))(v9, v11, v12);
  (*(v6 + 8))(v9, v5);
  __swift_destroy_boxed_opaque_existential_1(&v32);
  if (v13)
  {
    v25 = sub_192034C60();
    *&v32 = 0;
    BYTE8(v32) = 4;
    v26 = swift_allocObject();
    v26[2] = v13;
    v26[3] = v25;
    v26[4] = sub_1921C92D8;
    v26[5] = v10;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1921C92D8;
    *(v27 + 24) = v10;
    swift_retain_n();
    v28 = v13;
    v29 = v25;
    sub_192031418(&v32, sub_1921C93AC, v26, sub_1921C9414, v27);
  }

  else
  {
    v14 = *MEMORY[0x1E69941E8];
    v15 = MEMORY[0x1E69E7CC0];
    v16 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v17 = *MEMORY[0x1E696A278];
    v18 = sub_192227960();
    v20 = v19;
    v33 = MEMORY[0x1E69E6158];
    *&v32 = 0xD000000000000011;
    *(&v32 + 1) = 0x800000019224B830;
    sub_19203BEDC(&v32, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30[1] = v16;
    sub_19213DB28(v31, v18, v20, isUniquelyReferenced_nonNull_native);

    v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v23 = sub_192227830();

    v24 = [v22 initWithDomain:v14 code:1300 userInfo:v23];

    sub_1921BCD7C(v15, v24, a2);
  }
}

void sub_1921C6C08(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v29 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  _Block_copy(a2);
  sub_1922256C0();
  sub_192225500();
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_192033A64(&qword_1EADECB60, &v31);
  v9 = v32;
  v10 = v33;
  __swift_project_boxed_opaque_existential_1(&v31, v32);
  v11 = (*(v10 + 8))(v7, v9, v10);
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1(&v31);
  if (v11)
  {
    v24 = sub_192034C60();
    *&v31 = 0;
    BYTE8(v31) = 4;
    v25 = swift_allocObject();
    v25[2] = v11;
    v25[3] = v24;
    v25[4] = sub_1921C9154;
    v25[5] = v8;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1921C9154;
    *(v26 + 24) = v8;
    swift_retain_n();
    v27 = v11;
    v28 = v24;
    sub_192031418(&v31, sub_1921C9180, v25, sub_1921C918C, v26);
  }

  else
  {
    v12 = *MEMORY[0x1E69941E8];
    v13 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v14 = *MEMORY[0x1E696A278];
    v15 = sub_192227960();
    v17 = v16;
    v32 = MEMORY[0x1E69E6158];
    *&v31 = 0xD000000000000011;
    *(&v31 + 1) = 0x800000019224B830;
    sub_19203BEDC(&v31, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29[1] = v13;
    sub_19213DB28(v30, v15, v17, isUniquelyReferenced_nonNull_native);

    v19 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v20 = sub_192227830();

    v21 = [v19 initWithDomain:v12 code:1300 userInfo:v20];

    sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
    v22 = sub_192227B60();
    v23 = sub_192224F80();
    (a2)[2](a2, v22, v23);
  }
}

uint64_t sub_1921C70A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v16 - v6;
  v8 = sub_192225020();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19202CFFC(a2, v7, &qword_1EADEEE10, &unk_19222B630);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_192033970(v7, &qword_1EADEEE10, &unk_19222B630);
    return 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    if (a1)
    {
      (*(v9 + 8))(v12, v8);
    }

    else
    {
      v17 = sub_192225000();
      v18 = v13;
      strcpy(v16, "AppleInternal");
      v16[7] = -4864;
      sub_1920D89F4();
      v14 = sub_192228280();

      (*(v9 + 8))(v12, v8);
      return v14 & 1;
    }
  }

  return a1;
}

void sub_1921C72D0(uint64_t a1, void *a2, uint64_t a3, void (**a4)(const void *, void))
{
  v73 = swift_allocObject();
  *(v73 + 16) = a4;
  v7 = MEMORY[0x1E69E7CC0];
  v95 = MEMORY[0x1E69E7CC0];
  v75 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v72 = a4;
  _Block_copy(a4);
  v74 = (v8 + 63) >> 6;
  v81 = a2;
  v76 = a1;

  v11 = 0;
  v12 = &property descriptor for StorageBackedControlArchive.state;
  v13 = v7;
LABEL_4:
  v15 = v75;
  v14 = v76;
  v16 = v74;
  while (v10)
  {
LABEL_10:
    v18 = (v11 << 9) | (8 * __clz(__rbit64(v10)));
    v19 = *(*(v14 + 48) + v18);
    v20 = *(*(v14 + 56) + v18);
    if (v20 >> 62)
    {
      v22 = sub_192228340();
      v16 = v74;
      v15 = v75;
      v21 = v22;
      v14 = v76;
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 &= v10 - 1;
    if (v21)
    {
      if (v21 < 1)
      {
        __break(1u);
        return;
      }

      v77 = v20 & 0xC000000000000001;
      v80 = v19;

      v23 = 0;
      v78 = v21;
      v79 = v20;
      do
      {
        v85 = v23;
        if (v77)
        {
          v24 = MEMORY[0x193B0B410](v23, v20);
        }

        else
        {
          v24 = *(v20 + 8 * v23 + 32);
        }

        v25 = v24;
        KeyPath = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_19222C680;
        v28 = v81;
        *(inited + 32) = [v25 metrics];
        v87 = v25;
        if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
        {
          v29 = type metadata accessor for WidgetEnvironment.Storage();
          v30 = objc_allocWithZone(v29);
          v31 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
          *&v30[v31] = sub_192043788(MEMORY[0x1E69E7CC0]);
          v32 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
          swift_beginAccess();
          v33 = *&v28[v32];
          swift_beginAccess();
          *&v30[v31] = v33;
          v12 = &property descriptor for StorageBackedControlArchive.state;

          v94.receiver = v30;
          v94.super_class = v29;
          v25 = v87;
          v34 = objc_msgSendSuper2(&v94, sel_init);

          v28 = v34;
        }

        sub_1920C61CC(inited, KeyPath);

        v35 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBA8, &qword_19222AF90);
        v36 = swift_initStackObject();
        *(v36 + 16) = xmmword_19222B480;
        InternalWidgetFamily.init(_:)([v25 family], (v36 + 32));
        if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
        {
          v37 = type metadata accessor for WidgetEnvironment.Storage();
          v38 = objc_allocWithZone(v37);
          v39 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
          *&v38[v39] = sub_192043788(MEMORY[0x1E69E7CC0]);
          v40 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
          swift_beginAccess();
          v41 = *&v28[v40];
          swift_beginAccess();
          *&v38[v39] = v41;
          v12 = &property descriptor for StorageBackedControlArchive.state;

          v93.receiver = v38;
          v93.super_class = v37;
          v25 = v87;
          v42 = objc_msgSendSuper2(&v93, sel_init);

          v28 = v42;
        }

        sub_1920C5E74(v36, v35);

        v43 = [v80 extensionIdentity];
        v44 = [v80 kind];
        v45 = sub_192227960();
        v47 = v46;

        v48 = [v25 fileHandle];
        v83 = type metadata accessor for PlaceholderRequest();
        v49 = objc_allocWithZone(v83);
        *&v49[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_extensionIdentity] = v43;
        v50 = &v49[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind];
        *v50 = v45;
        v50[1] = v47;
        v51 = swift_getKeyPath();
        v82 = v43;
        v52 = v28;
        v86 = v52;
        v84 = v48;
        if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
        {
          v53 = type metadata accessor for WidgetEnvironment.Storage();
          v54 = objc_allocWithZone(v53);
          v55 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
          *&v54[v55] = sub_192043788(MEMORY[0x1E69E7CC0]);
          v56 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
          swift_beginAccess();
          v57 = *&v86[v56];
          swift_beginAccess();
          *&v54[v55] = v57;

          v92.receiver = v54;
          v92.super_class = v53;
          v12 = &property descriptor for StorageBackedControlArchive.state;
          v52 = objc_msgSendSuper2(&v92, sel_init);
        }

        sub_19204C8C0(0, v51);

        v58 = swift_getKeyPath();
        if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
        {
          v59 = type metadata accessor for WidgetEnvironment.Storage();
          v60 = objc_allocWithZone(v59);
          v61 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
          *&v60[v61] = sub_192043788(MEMORY[0x1E69E7CC0]);
          v62 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
          swift_beginAccess();
          v63 = *&v52[v62];
          swift_beginAccess();
          *&v60[v61] = v63;

          v12 = &property descriptor for StorageBackedControlArchive.state;

          v91.receiver = v60;
          v91.super_class = v59;
          v64 = objc_msgSendSuper2(&v91, sel_init);

          v52 = v64;
          v48 = v84;
        }

        v20 = v79;
        sub_19204C8C0(0, v58);

        *&v49[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_environment] = v52;
        *&v49[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_fileHandle] = v48;
        v90.receiver = v49;
        v90.super_class = v83;
        v65 = objc_msgSendSuper2(&v90, v12[347]);

        v66 = v65;
        MEMORY[0x193B0AB00]();
        if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v67 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_192227BB0();
        }

        v23 = v85 + 1;
        sub_192227C00();

        v13 = v95;
      }

      while (v78 != v85 + 1);

      goto LABEL_4;
    }
  }

  while (1)
  {
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v17 >= v16)
    {
      break;
    }

    v10 = *(v15 + 8 * v17);
    ++v11;
    if (v10)
    {
      v11 = v17;
      goto LABEL_10;
    }
  }

  if (!(v13 >> 62))
  {
    v68 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v69 = v73;
    if (v68)
    {
LABEL_34:
      v88 = v68;
      v89 = 1;
      v70 = swift_allocObject();
      v70[2] = v13;
      v70[3] = sub_1920B3B6C;
      v70[4] = v69;
      v71 = swift_allocObject();
      *(v71 + 16) = sub_1920B3B6C;
      *(v71 + 24) = v69;
      swift_retain_n();
      sub_192031418(&v88, sub_1921C93B0, v70, sub_1921C940C, v71);

      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_36:
  v69 = v73;
  if (sub_192228340())
  {
    v68 = sub_192228340();
    goto LABEL_34;
  }

LABEL_38:

  v72[2](v72, 0);
LABEL_39:
}

uint64_t sub_1921C7B18(unint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  if (a1 >> 62)
  {
    if (sub_192228340())
    {
      v6 = sub_192228340();
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v10 = v6;
      v11 = 1;
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = sub_1920B3B6C;
      v7[4] = v5;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1920B3B6C;
      *(v8 + 24) = v5;

      _Block_copy(a3);

      sub_192031418(&v10, sub_1921C8FEC, v7, sub_1921C940C, v8);

      goto LABEL_7;
    }
  }

  _Block_copy(a3);
  a3[2](a3, 0);
LABEL_7:
}

uint64_t sub_1921C7CB0(unint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  if (a1 >> 62)
  {
    if (sub_192228340())
    {
      v6 = sub_192228340();
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v10 = v6;
      v11 = 0;
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = sub_1920B3B6C;
      v7[4] = v5;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1920B3B6C;
      *(v8 + 24) = v5;

      _Block_copy(a3);

      sub_192031418(&v10, sub_1921C8D28, v7, sub_1921C940C, v8);

      goto LABEL_7;
    }
  }

  _Block_copy(a3);
  a3[2](a3, 0);
LABEL_7:
}

uint64_t sub_1921C7E44(unint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  if (a1 >> 62)
  {
    if (sub_192228340())
    {
      v6 = sub_192228340();
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v10 = v6;
      v11 = 3;
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = sub_1920B3B6C;
      v7[4] = v5;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1920B3B6C;
      *(v8 + 24) = v5;

      _Block_copy(a3);

      sub_192031418(&v10, sub_1921C8BAC, v7, sub_1921C940C, v8);

      goto LABEL_7;
    }
  }

  _Block_copy(a3);
  a3[2](a3, 0);
LABEL_7:
}

uint64_t sub_1921C7FDC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v110 = a6;
  v107 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v96 - v14;
  v16 = sub_192225150();
  v17 = *(v16 - 8);
  v108 = v16;
  v109 = v17;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v103 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v104 = &v96 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v106 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v96 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v33 = &v96 - v32;
  if (!a1)
  {
    return 0;
  }

  v98 = v31;
  v99 = a4;
  v100 = a2;
  v34 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  v101 = *(v23 + 16);
  v101(v30, a1 + v34, v22);
  (*(v23 + 32))(v33, v30, v22);
  v105 = v23;
  v102 = a3;
  if (a7)
  {
    v35 = a7;
  }

  else
  {
    sub_1922254B0();
    sub_1922254A0();
    v35 = sub_192225480();
  }

  v111 = sub_192225510();
  v112 = v36;
  MEMORY[0x1EEE9AC00](v111);
  *(&v96 - 2) = &v111;
  v37 = sub_19207437C(sub_192074480, (&v96 - 4), v35);

  if ((v37 & 1) == 0)
  {
    sub_1922254B0();
    v111 = sub_192225490();
    v112 = v38;
    MEMORY[0x1EEE9AC00](v111);
    *(&v96 - 2) = &v111;
    v39 = sub_19207437C(sub_1921C938C, (&v96 - 4), v35);

    if ((v39 & 1) == 0)
    {
      (*(v105 + 8))(v33, v22);

      return 0;
    }
  }

  v40 = sub_192225510();
  v42 = *v110;
  if (*(*v110 + 16))
  {
    v43 = sub_1920440AC(v40, v41);
    v45 = v44;

    v46 = v108;
    v47 = v109;
    if (v45)
    {
      v48 = *(v42 + 56) + *(v109 + 72) * v43;
      v49 = v104;
      v97 = *(v109 + 16);
      v97(v104, v48, v108);
      sub_192225110();
      if (v50 > -180.0)
      {

        if (qword_1EADECEC0 != -1)
        {
          swift_once();
        }

        v51 = sub_1922258B0();
        __swift_project_value_buffer(v51, qword_1EAE00728);
        v101(v98, v33, v22);
        v52 = v103;
        v97(v103, v49, v46);
        v53 = v107;

        v54 = v102;

        v55 = v49;
        v56 = sub_192225890();
        v57 = sub_192227FB0();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v111 = v110;
          *v58 = 136446978;
          *(v58 + 4) = sub_19202B8CC(v99, v53, &v111);
          *(v58 + 12) = 2082;
          *(v58 + 14) = sub_19202B8CC(v100, v54, &v111);
          *(v58 + 22) = 2082;
          sub_192031E74(&unk_1EADED340, &qword_1EADF1200, &qword_19222F370);
          v59 = v98;
          v60 = sub_192228910();
          v62 = v61;
          v63 = *(v105 + 8);
          v63(v59, v22);
          v64 = sub_19202B8CC(v60, v62, &v111);

          *(v58 + 24) = v64;
          *(v58 + 32) = 2048;
          v65 = v103;
          sub_192225110();
          v67 = v66;
          v68 = *(v109 + 8);
          v69 = v65;
          v70 = v108;
          v68(v69, v108);
          *(v58 + 34) = -v67;
          v71 = v110;
          swift_arrayDestroy();
          MEMORY[0x193B0C7F0](v71, -1, -1);
          MEMORY[0x193B0C7F0](v58, -1, -1);

          v68(v104, v70);
          v63(v33, v22);
        }

        else
        {

          v94 = *(v109 + 8);
          v94(v52, v46);
          v95 = *(v105 + 8);
          v95(v98, v22);
          v94(v55, v46);
          v95(v33, v22);
        }

        return 0;
      }

      (*(v47 + 8))(v49, v46);
    }
  }

  else
  {

    v46 = v108;
    v47 = v109;
  }

  v73 = sub_192225510();
  v75 = v74;
  sub_192225130();
  (*(v47 + 56))(v15, 0, 1, v46);
  sub_1920BD078(v15, v73, v75);
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v76 = sub_1922258B0();
  __swift_project_value_buffer(v76, qword_1EAE00728);
  v77 = v106;
  v101(v106, v33, v22);
  v78 = v107;

  v79 = v102;

  v80 = sub_192225890();
  v81 = sub_192227FB0();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v111 = v110;
    *v82 = 136446978;
    *(v82 + 4) = sub_19202B8CC(v99, v78, &v111);
    *(v82 + 12) = 2082;
    *(v82 + 14) = sub_19202B8CC(v100, v79, &v111);
    *(v82 + 22) = 2082;
    sub_192031E74(&unk_1EADED340, &qword_1EADF1200, &qword_19222F370);
    v83 = sub_192228910();
    v84 = v77;
    v86 = v85;
    v109 = *(v105 + 8);
    (v109)(v84, v22);
    v87 = sub_19202B8CC(v83, v86, &v111);

    *(v82 + 24) = v87;
    *(v82 + 32) = 2082;
    v88 = MEMORY[0x193B0AB30](v35, MEMORY[0x1E69E6158]);
    v90 = v89;

    v91 = sub_19202B8CC(v88, v90, &v111);

    *(v82 + 34) = v91;
    v92 = v110;
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v92, -1, -1);
    MEMORY[0x193B0C7F0](v82, -1, -1);

    (v109)(v33, v22);
  }

  else
  {

    v93 = *(v105 + 8);
    v93(v77, v22);
    v93(v33, v22);
  }

  return 3;
}

uint64_t sub_1921C8AB0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0, 1);
}

uint64_t objectdestroy_92Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1921C8B48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1921C8C04(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, 0, 0xF000000000000000, a1);
}

uint64_t sub_1921C8F3C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

uint64_t sub_1921C8FC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t objectdestroy_161Tm(void (*a1)(void))
{
  a1(*(v1 + 24));
  v2 = *(v1 + 40);

  return swift_deallocObject();
}

uint64_t sub_1921C907C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_19202A7A8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_146Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroy_127Tm()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1921C918C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(MEMORY[0x1E69E7CC0], a1);
}

uint64_t objectdestroy_412Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t objectdestroy_167Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_406Tm()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1921C9418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v4 = sub_192225D60();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1C08, &qword_192240748);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1C10, &qword_192240750);
  v12 = *(v43 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1C18, &qword_192240758);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v20 = v2[3];
  if (v20 == 1.0)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1C20, &qword_192240760);
    (*(*(v21 - 8) + 16))(v19, v42, v21);
    swift_storeEnumTagMultiPayload();
    sub_1921C9A9C();
    v22 = sub_1921C9984();
    v23 = sub_19203F6FC();
    *&v48 = v8;
    *(&v48 + 1) = v4;
    *&v49 = v22;
    *(&v49 + 1) = v23;
    swift_getOpaqueTypeConformance2();
    return sub_1922266E0();
  }

  else
  {
    v25 = v2[2];
    v26 = 1.0 / v2[4];
    v27 = v26 * floor((v26 * 0.5 + *v2) / v26);
    v28 = v26 * floor((v2[1] + v26 * 0.5) / v26);
    v40 = v12;
    sub_1922275F0();
    sub_192225AA0();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1C20, &qword_192240760);
    (*(*(v41 - 8) + 16))(v11, v42, v41);
    v29 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1C28, &qword_192240768) + 36)];
    v30 = v49;
    *v29 = v48;
    *(v29 + 1) = v30;
    *(v29 + 2) = v50;
    *&v11[*(v8 + 36)] = v20;
    v31 = v20 * v25;
    v32 = *(v4 + 20);
    v33 = *MEMORY[0x1E697F468];
    v34 = sub_192226560();
    (*(*(v34 - 8) + 104))(v7 + v32, v33, v34);
    *v7 = v31;
    v7[1] = v31;
    v35 = sub_1921C9984();
    v36 = sub_19203F6FC();
    v42 = a2;
    v37 = v36;
    sub_1922270A0();
    sub_192051814(v7);
    sub_1921C9B00(v11);
    v38 = v40;
    v39 = v43;
    (*(v40 + 16))(v19, v15, v43);
    swift_storeEnumTagMultiPayload();
    sub_1921C9A9C();
    v44 = v8;
    v45 = v4;
    v46 = v35;
    v47 = v37;
    swift_getOpaqueTypeConformance2();
    sub_1922266E0();
    return (*(v38 + 8))(v15, v39);
  }
}

uint64_t View.applyScalingModifier(metrics:displayScale:)(_OWORD *a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v7 = a4;
  return MEMORY[0x193B0A190](v6, a2, &type metadata for ActivityScalingModifier, a3);
}

unint64_t sub_1921C9904()
{
  result = qword_1EADF1C00;
  if (!qword_1EADF1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1C00);
  }

  return result;
}

unint64_t sub_1921C9984()
{
  result = qword_1EADF1C30;
  if (!qword_1EADF1C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1C08, &qword_192240748);
    sub_1921C9A10();
    sub_1920B6A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1C30);
  }

  return result;
}

unint64_t sub_1921C9A10()
{
  result = qword_1EADF1C38;
  if (!qword_1EADF1C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1C28, &qword_192240768);
    sub_1921C9A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1C38);
  }

  return result;
}

unint64_t sub_1921C9A9C()
{
  result = qword_1EADF1C40;
  if (!qword_1EADF1C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1C20, &qword_192240760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1C40);
  }

  return result;
}

uint64_t sub_1921C9B00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1C08, &qword_192240748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1921C9B68()
{
  result = qword_1EADF1C48;
  if (!qword_1EADF1C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1C50, qword_192240770);
    sub_1921C9A9C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1C08, &qword_192240748);
    sub_192225D60();
    sub_1921C9984();
    sub_19203F6FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1C48);
  }

  return result;
}

uint64_t sub_1921C9C58(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_192228950();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_192224F80();

  v11 = [v10 debugDescription];
  v12 = sub_192227960();

  return v12;
}

uint64_t sub_1921C9EC0()
{
  v0 = sub_1922258B0();
  __swift_allocate_value_buffer(v0, qword_1EAE00740);
  __swift_project_value_buffer(v0, qword_1EAE00740);
  return sub_1922258A0();
}

uint64_t sub_1921C9FBC()
{
  v0 = sub_1922258B0();
  __swift_allocate_value_buffer(v0, qword_1EAE008C0);
  __swift_project_value_buffer(v0, qword_1EAE008C0);
  return sub_1922258A0();
}

void sub_1921CA100(uint64_t a1, unint64_t a2)
{
  v4 = sub_192224F80();
  if (a2)
  {
    v32 = v4;

    v5 = sub_192225890();
    v6 = sub_192227F90();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33 = v8;
      *v7 = 136446978;
      *(v7 + 4) = sub_19202B8CC(a1, a2, &v33);
      *(v7 + 12) = 2082;
      v9 = [v32 domain];
      v10 = sub_192227960();
      v12 = v11;

      v13 = sub_19202B8CC(v10, v12, &v33);

      *(v7 + 14) = v13;
      *(v7 + 22) = 2050;
      v14 = [v32 code];

      *(v7 + 24) = v14;
      *(v7 + 32) = 2082;
      v15 = [v32 debugDescription];
      v16 = sub_192227960();
      v18 = v17;

      v19 = sub_19202B8CC(v16, v18, &v33);

      *(v7 + 34) = v19;
      _os_log_impl(&dword_192028000, v5, v6, "%{public}s: %{public}s (%{public}ld) %{public}s", v7, 0x2Au);
LABEL_6:
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v8, -1, -1);
      MEMORY[0x193B0C7F0](v7, -1, -1);

      return;
    }
  }

  else
  {
    v32 = v4;
    v5 = sub_192225890();
    v20 = sub_192227F90();
    if (os_log_type_enabled(v5, v20))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33 = v8;
      *v7 = 136446722;
      v21 = [v32 domain];
      v22 = sub_192227960();
      v24 = v23;

      v25 = sub_19202B8CC(v22, v24, &v33);

      *(v7 + 4) = v25;
      *(v7 + 12) = 2050;
      v26 = [v32 code];

      *(v7 + 14) = v26;
      *(v7 + 22) = 2082;
      v27 = [v32 debugDescription];
      v28 = sub_192227960();
      v30 = v29;

      v31 = sub_19202B8CC(v28, v30, &v33);

      *(v7 + 24) = v31;
      _os_log_impl(&dword_192028000, v5, v20, "%{public}s (%{public}ld) %{public}s", v7, 0x20u);
      goto LABEL_6;
    }
  }
}

uint64_t EnvironmentValues._widgetInvertsAccentFilterStyle.getter()
{
  sub_192143E60();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues._widgetInvertsAccentFilterStyle.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_192143E60();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1921CA5A0;
}

uint64_t sub_1921CA5A0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

void sub_1921CA5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *(a1 + 16);
  if (!v31)
  {
    return;
  }

  v6 = objc_opt_self();
  v7 = 0;
  v8 = a1 + 32;
  v9 = &selRef_setWantsLiveScene_;
  v29 = a1 + 32;
  v30 = v6;
  while (1)
  {
    v10 = (v8 + 16 * v7);
    v12 = *v10;
    v11 = v10[1];

    queriesForExtensionPoint(extensionPointIdentifier:)();

    sub_19202A7A8(0, &qword_1EADECA48, 0x1E6966CE0);
    v13 = sub_192227B60();

    v14 = [v6 v9[62]];

    sub_19202A7A8(0, &qword_1EADECA68, 0x1E6966CB0);
    v15 = sub_192227B70();

    v32 = v7;
    if (v15 >> 62)
    {
      break;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_3:
    v7 = v32 + 1;

    v6 = v30;
    v8 = v29;
    v9 = &selRef_setWantsLiveScene_;
    if (v32 + 1 == v31)
    {
      return;
    }
  }

  v16 = sub_192228340();
  if (!v16)
  {
    goto LABEL_3;
  }

LABEL_6:
  v17 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x193B0B410](v17, v15);
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    v21 = a2;
    v22 = a3;
    v23 = [v18 bundleIdentifier];
    v24 = sub_192227960();
    v26 = v25;

    a3 = v22;
    if (v24 == v21 && v26 == v22)
    {

LABEL_23:

      return;
    }

    a2 = v21;
    v28 = sub_1922289A0();

    if (v28)
    {
      goto LABEL_23;
    }

    ++v17;
    if (v20 == v16)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void static WidgetPreviewAgent.attachPreviewAgent(extensionIdentifier:frameworkPath:environmentVariables:pidCallback:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(unint64_t), uint64_t a7, void (*a8)(__int128 *), uint64_t a9)
{
  v98 = a8;
  v96 = a4;
  v97 = a9;
  v13 = sub_1922277B0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v94 - v19;
  sub_1921CA5E8(&unk_1F06A8540, a1, a2);
  if (v21)
  {
    v22 = v21;
    v109 = 0;
    v107 = 0u;
    v108 = 0u;
    LOBYTE(v106) = 3;
    v110 = 0;
    v111 = a5;
    *(&v102 + 1) = sub_19202A7A8(0, &qword_1EADECA68, 0x1E6966CB0);
    *&aBlock = v22;
    v95 = v22;

    v23 = _s9WidgetKit0A23ExtensionSessionFactoryC04makeD03for18preferredLanguages7options23watchdogTimeoutProviderAA0acD0_pSgypSg_SaySSGSgAA0cD7OptionsVSdSgAA0acD9OperationOcSgtFZ_0(&aBlock, 0, &v106, 0, 0);
    sub_192030F04(&aBlock);
    if (v23)
    {
      v24 = [v23 respondsToSelector_];
      if (v24)
      {
        v25 = [v23 pid];
      }

      else
      {
        v25 = 0;
      }

      LOBYTE(aBlock) = (v24 & 1) == 0;
      a6(v25 | (aBlock << 32));
      v55 = dispatch_group_create();
      v56 = swift_allocObject();
      *(v56 + 16) = 0u;
      v94[1] = v56 + 16;
      *(v56 + 32) = 0u;
      *(v56 + 48) = 1;
      dispatch_group_enter(v55);
      v57 = sub_192227930();
      v58 = swift_allocObject();
      *(v58 + 16) = v56;
      *(v58 + 24) = v55;
      v103 = sub_1921CB748;
      v104 = v58;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v102 = sub_1921CB6A4;
      *(&v102 + 1) = &block_descriptor_7;
      v59 = _Block_copy(&aBlock);

      v60 = v55;

      v96 = v23;
      [v23 attachPreviewAgentWithFrameworkPath:v57 endpoint:0 handler:v59];
      _Block_release(v59);

      sub_1922277A0();
      sub_192227800();
      v61 = *(v14 + 8);
      v62 = v18;
      v63 = v60;
      v61(v62, v13);
      sub_192228030();
      v61(v20, v13);
      if (sub_1922276F0())
      {
        v64 = *MEMORY[0x1E69941E8];
        v65 = sub_19214036C(MEMORY[0x1E69E7CC0]);
        v66 = *MEMORY[0x1E696A278];
        v67 = sub_192227960();
        v69 = v68;
        *(&v102 + 1) = MEMORY[0x1E69E6158];
        *&aBlock = 0xD000000000000015;
        *(&aBlock + 1) = 0x800000019224B930;
        sub_19203BEDC(&aBlock, v105);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = v65;
        sub_19213DB28(v105, v67, v69, isUniquelyReferenced_nonNull_native);

        v71 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v72 = sub_192227830();

        v73 = [v71 initWithDomain:v64 code:1051 userInfo:v72];

        if (qword_1ED74C6B0 != -1)
        {
          swift_once();
        }

        v74 = sub_1922258B0();
        v75 = __swift_project_value_buffer(v74, qword_1ED74CCC8);
        v76 = v73;
        sub_1921CA4BC(0, 0, v75, v76);

        aBlock = v76;
        v102 = 0uLL;
        LOBYTE(v103) = 1;
        v77 = v76;
        v98(&aBlock);
      }

      else
      {
        swift_beginAccess();
        if (*(v56 + 48))
        {
          v78 = *MEMORY[0x1E69941E8];
          v79 = sub_19214036C(MEMORY[0x1E69E7CC0]);
          v80 = *MEMORY[0x1E696A278];
          v81 = sub_192227960();
          v83 = v82;
          *(&v102 + 1) = MEMORY[0x1E69E6158];
          *&aBlock = 0xD000000000000014;
          *(&aBlock + 1) = 0x800000019224B950;
          sub_19203BEDC(&aBlock, v105);
          v84 = swift_isUniquelyReferenced_nonNull_native();
          v99 = v79;
          sub_19213DB28(v105, v81, v83, v84);

          v85 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v86 = sub_192227830();

          v87 = [v85 initWithDomain:v78 code:1050 userInfo:v86];

          if (qword_1ED74C6B0 != -1)
          {
            swift_once();
          }

          v88 = sub_1922258B0();
          v89 = __swift_project_value_buffer(v88, qword_1ED74CCC8);
          v90 = v87;
          sub_1921CA4BC(0, 0, v89, v90);

          aBlock = v90;
          v102 = 0uLL;
          LOBYTE(v103) = 1;
          v91 = v90;
          v98(&aBlock);
        }

        else
        {
          v92 = *(v56 + 32);
          aBlock = *(v56 + 16);
          v102 = v92;
          LOBYTE(v103) = 0;
          v98(&aBlock);
        }
      }

      [v96 invalidate];
      v93 = v95;

      swift_unknownObjectRelease();
    }

    else
    {
      v40 = *MEMORY[0x1E69941E8];
      v41 = sub_19214036C(MEMORY[0x1E69E7CC0]);
      v42 = *MEMORY[0x1E696A278];
      v43 = sub_192227960();
      v45 = v44;
      *(&v102 + 1) = MEMORY[0x1E69E6158];
      *&aBlock = 0xD000000000000014;
      *(&aBlock + 1) = 0x800000019224B950;
      sub_19203BEDC(&aBlock, v105);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v100 = v41;
      sub_19213DB28(v105, v43, v45, v46);

      v47 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v48 = sub_192227830();

      v49 = [v47 initWithDomain:v40 code:1050 userInfo:v48];

      if (qword_1ED74C6B0 != -1)
      {
        swift_once();
      }

      v50 = sub_1922258B0();
      v51 = __swift_project_value_buffer(v50, qword_1ED74CCC8);
      v52 = v49;
      sub_1921CA4BC(0, 0, v51, v52);

      aBlock = v52;
      v102 = 0uLL;
      LOBYTE(v103) = 1;
      v53 = v52;
      v98(&aBlock);
      v54 = v95;
    }

    sub_1920313E8(&v106);
  }

  else
  {
    v26 = *MEMORY[0x1E69941E8];
    v27 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v28 = *MEMORY[0x1E696A278];
    v29 = sub_192227960();
    v31 = v30;
    *&v108 = MEMORY[0x1E69E6158];
    v106 = 0xD000000000000011;
    *&v107 = 0x800000019224B830;
    sub_19203BEDC(&v106, &aBlock);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *&v105[0] = v27;
    sub_19213DB28(&aBlock, v29, v31, v32);

    v33 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v34 = sub_192227830();

    v35 = [v33 initWithDomain:v26 code:1300 userInfo:v34];

    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v36 = sub_1922258B0();
    v37 = __swift_project_value_buffer(v36, qword_1ED74CCC8);
    v38 = v35;
    sub_1921CA4BC(0, 0, v37, v38);

    v106 = v38;
    v107 = 0uLL;
    *&v108 = 0;
    BYTE8(v108) = 1;
    v39 = v38;
    v98(&v106);
  }
}

void sub_1921CB390(void *a1, void *a2, uint64_t a3, NSObject *a4)
{
  if (a1)
  {
    [a1 realToken];
    v27 = v29[1];
    swift_beginAccess();
    *(a3 + 16) = v29[0];
    *(a3 + 32) = v27;
    *(a3 + 48) = 0;
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v7 = sub_1922258B0();
    __swift_project_value_buffer(v7, qword_1ED74CCC8);
    v8 = a1;
    v9 = sub_192225890();
    v10 = sub_192227F80();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1C58, &qword_192240838);
      v13 = sub_192228230();
      v15 = sub_19202B8CC(v13, v14, &v28);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_192028000, v9, v10, "Preview Agent attached to extension: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x193B0C7F0](v12, -1, -1);
      MEMORY[0x193B0C7F0](v11, -1, -1);
    }
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v17 = sub_1922258B0();
    __swift_project_value_buffer(v17, qword_1ED74CCC8);
    v18 = a2;
    v19 = sub_192225890();
    v20 = sub_192227F90();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v29[0] = v22;
      *v21 = 136446210;
      if (a2)
      {
        swift_getErrorValue();
        v23 = sub_1921C9C58(v30);
        v25 = v24;
      }

      else
      {
        v25 = 0x800000019224DF40;
        v23 = 0xD000000000000011;
      }

      v26 = sub_19202B8CC(v23, v25, v29);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_192028000, v19, v20, "Preview Agent failed to attach to extension: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x193B0C7F0](v22, -1, -1);
      MEMORY[0x193B0C7F0](v21, -1, -1);
    }
  }

  dispatch_group_leave(a4);
}

void sub_1921CB6A4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

WidgetKit::DataProtectionLevel_optional __swiftcall DataProtectionLevel.init(_:)(NSFileProtectionType a1)
{
  v3 = v1;
  v4 = *MEMORY[0x1E696A378];
  v5 = sub_192227960();
  v7 = v6;
  if (v5 == sub_192227960() && v7 == v8)
  {

    goto LABEL_8;
  }

  v10 = sub_1922289A0();

  if (v10)
  {

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v13 = *MEMORY[0x1E696A380];
  v14 = sub_192227960();
  v16 = v15;
  if (v14 == sub_192227960() && v16 == v17)
  {

    v12 = 1;
  }

  else
  {
    v19 = sub_1922289A0();

    if (v19)
    {

      v12 = 1;
    }

    else
    {
      v20 = *MEMORY[0x1E696A388];
      v21 = sub_192227960();
      v23 = v22;
      if (v21 == sub_192227960() && v23 == v24)
      {

        v12 = 2;
      }

      else
      {
        v25 = sub_1922289A0();

        if (v25)
        {

          v12 = 2;
        }

        else
        {
          v26 = *MEMORY[0x1E696A3A8];
          v27 = sub_192227960();
          v29 = v28;
          if (v27 == sub_192227960() && v29 == v30)
          {

            v12 = 3;
          }

          else
          {
            v31 = sub_1922289A0();

            if (v31)
            {
              v12 = 3;
            }

            else
            {
              v12 = 4;
            }
          }
        }
      }
    }
  }

LABEL_9:
  *v3 = v12;
  return result;
}

uint64_t static DataProtectionLevel.systemDefault.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ED74B5B8 = v1;
  return result;
}

unint64_t DataProtectionLevel.init(_:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

WidgetKit::DataProtectionLevel_optional __swiftcall DataProtectionLevel.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 74)
  {
    if (rawValue == 75)
    {
      *v1 = 1;
      return rawValue;
    }

    if (rawValue == 100)
    {
      *v1 = 0;
      return rawValue;
    }

LABEL_8:
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 25)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 50)
  {
    goto LABEL_8;
  }

  *v1 = 2;
  return rawValue;
}

uint64_t sub_1921CBBA8()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](-25 * v1 + 100);
  return sub_192228B30();
}

uint64_t sub_1921CBC30()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](-25 * v1 + 100);
  return sub_192228B30();
}

unint64_t sub_1921CBDC0()
{
  result = qword_1EADF1C60;
  if (!qword_1EADF1C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1C68, &qword_1922408E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1C60);
  }

  return result;
}

unint64_t sub_1921CBE24()
{
  result = qword_1EADECB00;
  if (!qword_1EADECB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECB00);
  }

  return result;
}

uint64_t Cartesian2ProductCollection<>.init(_:environment:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  (*(v14 + 16))(v17, a1, a3);
  v19 = v13 + *(v9 + 28);
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  *v13 = v18;
  v20 = sub_19209C05C(v13);
  (*(v14 + 8))(a1, a3);
  sub_1921CF7D4(v13);
  v24 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1638, &unk_192240A20);
  sub_1921CF830();
  return Cartesian2ProductCollection.init(_:_:)(v17, &v24, a3, v21, a4);
}

uint64_t Cartesian2ProductCollection.count.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*(a1 + 32) + 8);
  v5 = sub_192227E20();
  v6 = *(a1 + 24);
  v7 = *(*(a1 + 40) + 8);
  v8 = v1 + *(a1 + 52);
  v9 = sub_192227E20();
  result = v5 * v9;
  if ((v5 * v9) >> 64 != (v5 * v9) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t Cartesian2ProductCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = a2;
  v7 = *(a4[5] + 8);
  v8 = a4[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v22 - v12;
  v14 = *(a4[4] + 8);
  v15 = a4[2];
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  sub_1921CC8FC(&v22 - v19, v13, a3, a4);
  sub_1921CCB1C(a1, v23, v20, v13, a4);
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1921CC26C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 32);
  v5 = *(a1 + a2 - 24);
  v6 = *(a1 + a2 - 8);
  v7 = *a1;
  v8 = *(*(*(a1 + a2 - 16) + 8) + 8);
  swift_getAssociatedTypeWitness();
  v9 = *(*(v6 + 8) + 8);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  v11 = type metadata accessor for Cartesian2ProductCollection();
  return Cartesian2ProductCollection.subscript.getter(a3, a3 + v10, v7, v11);
}

uint64_t sub_1921CC358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v26[1] = a2;
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 24);
  v9 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v10 = *(*(v9 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(v8 + 8) + 8);
  v13 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = v26 - v16;
  v18 = *a3;
  (*(v19 + 16))(v26 - v16, a1, TupleTypeMetadata2);
  v20 = *(TupleTypeMetadata2 + 48);
  v27[0] = v6;
  v27[1] = v7;
  v27[2] = v9;
  v27[3] = v8;
  v21 = type metadata accessor for Cartesian2ProductCollection();
  v22 = Cartesian2ProductCollection.subscript.modify(v27, v18, v21);
  v24 = v23;
  (*(*(AssociatedTypeWitness - 8) + 40))(v23, v17, AssociatedTypeWitness);
  (*(*(v13 - 8) + 40))(v24 + *(TupleTypeMetadata2 + 48), &v17[v20], v13);
  return (v22)(v27, 0);
}

void (*Cartesian2ProductCollection.subscript.modify(uint64_t *a1, uint64_t a2, void *a3))(void *a1)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 - 1);
  if (v6)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(*(a3 - 1) + 64));
  }

  v11 = v10;
  *(v8 + 32) = v10;
  v12 = *(a3[4] + 8);
  v13 = a3[2];
  *(v8 + 40) = swift_getAssociatedTypeWitness();
  v14 = *(a3[5] + 8);
  v15 = a3[3];
  *(v8 + 48) = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v8 + 56) = TupleTypeMetadata2;
  v17 = *(TupleTypeMetadata2 - 8);
  v18 = v17;
  *(v8 + 64) = v17;
  v19 = *(v17 + 64);
  if (v6)
  {
    v20 = swift_coroFrameAlloc();
    *(v8 + 72) = v20;
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v17 + 64));
    *(v8 + 72) = v20;
    v21 = malloc(v19);
  }

  v22 = v21;
  *(v8 + 80) = v21;
  v23 = *(TupleTypeMetadata2 + 48);
  (*(v9 + 16))(v11, v3, a3);
  sub_1921CC8FC(v22, v22 + v23, a2, a3);
  (*(v9 + 8))(v11, a3);
  (*(v18 + 16))(v20, v22, TupleTypeMetadata2);
  v24 = *(TupleTypeMetadata2 + 48);
  *(v8 + 96) = v24;
  *(v8 + 88) = Cartesian2ProductCollection.subscript.modify(v8, v20, v20 + v24, a3);
  return sub_1921CC7F0;
}

void sub_1921CC7F0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 96);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v7 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v9 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  (*(*a1 + 88))(*a1, 0);
  (*(v5 + 8))(v3, v6);
  (*(*(v7 - 8) + 8))(&v4[v2], v7);
  (*(*(v8 - 8) + 8))(v4, v8);
  free(v3);
  free(v4);
  free(v9);

  free(v1);
}

uint64_t sub_1921CC8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a1;
  v28 = a2;
  v8 = *(*(a4 + 40) + 8);
  v9 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v25 - v12;
  v14 = *(*(a4 + 32) + 8);
  v15 = *(a4 + 16);
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v25 - v19;
  v30 = a3;
  v21 = v5 + *(a4 + 52);
  v29 = sub_192227E20();
  sub_19209C5BC();
  sub_1922282A0();
  v23 = v31;
  v22 = v32;
  sub_1921CE688(v20, v13, a4);
  sub_1921CE6E8(v27, v28, v20, v13, v22, v23, a4);
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1921CCB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 16);
  v9 = *(*(a5 + 32) + 8);
  v10 = sub_192227ED0();
  v12 = v11;
  v13 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v12, AssociatedTypeWitness);
  v10(v24, 0);
  v15 = *(a5 + 52);
  v16 = *(a5 + 24);
  v17 = *(*(a5 + 40) + 8);
  v18 = sub_192227ED0();
  v20 = v19;
  v21 = *(v17 + 8);
  v22 = swift_getAssociatedTypeWitness();
  (*(*(v22 - 8) + 16))(a2, v20, v22);
  return v18(v24, 0);
}

void (*Cartesian2ProductCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3, void *a4))(uint64_t a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x98uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a4;
  v8[1] = v4;
  v10 = *(*(a4[4] + 8) + 8);
  v11 = a4[2];
  swift_getAssociatedTypeWitness();
  v12 = *(*(a4[5] + 8) + 8);
  v13 = a4[3];
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9[2] = TupleTypeMetadata2;
  v45 = TupleTypeMetadata2;
  v15 = *(TupleTypeMetadata2 - 8);
  v9[3] = v15;
  v16 = *(v15 + 64);
  v17 = v7;
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v15 + 64));
    v18 = malloc(v16);
  }

  v44 = v18;
  v9[5] = v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[6] = AssociatedTypeWitness;
  v20 = *(AssociatedTypeWitness - 8);
  v43 = v20;
  v9[7] = v20;
  v48 = a4;
  if (v7)
  {
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v21 = malloc(*(v20 + 64));
  }

  v42 = v21;
  v9[8] = v21;
  v22 = swift_getAssociatedTypeWitness();
  v9[9] = v22;
  v23 = *(v22 - 8);
  v24 = v23;
  v9[10] = v23;
  if (v7)
  {
    v25 = swift_coroFrameAlloc();
  }

  else
  {
    v25 = malloc(*(v23 + 64));
  }

  v41 = v25;
  v9[11] = v25;
  v26 = AssociatedTypeWitness;
  v27 = swift_getTupleTypeMetadata2();
  v9[12] = v27;
  v28 = *(v27 - 8);
  v29 = v28;
  v9[13] = v28;
  v30 = *(v28 + 64);
  if (v17)
  {
    v31 = swift_coroFrameAlloc();
    v9[14] = v31;
    v32 = swift_coroFrameAlloc();
    v9[15] = v32;
    v33 = swift_coroFrameAlloc();
  }

  else
  {
    v31 = malloc(*(v28 + 64));
    v9[14] = v31;
    v32 = malloc(v30);
    v9[15] = v32;
    v33 = malloc(v30);
  }

  v34 = v33;
  v9[16] = v33;
  v40 = *(v24 + 16);
  v40();
  v35 = *(v43 + 16);
  v35(v34 + *(v27 + 48), a3, v26);
  v47 = v22;
  v36 = *(v29 + 16);
  v36(v32, v34, v27);
  *(v9 + 34) = *(v27 + 48);
  v36(v31, v34, v27);
  v37 = *(v27 + 48);
  *(v9 + 35) = v37;
  (v40)(v41, v32, v47);
  v35(v42, v31 + v37, v26);
  v38 = *(v45 + 48);
  *(v9 + 36) = v38;
  sub_1921CCB1C(v44, v44 + v38, v32, v31 + v37, v48);
  return sub_1921CD110;
}

void sub_1921CD110(uint64_t a1, char a2)
{
  v2 = *a1;
  v30 = *(*a1 + 140);
  v31 = *(*a1 + 136);
  if (a2)
  {
    v42 = v2[16];
    v3 = v2[13];
    v34 = v2[14];
    v36 = v2[15];
    v4 = v2[11];
    v32 = v2[12];
    v5 = v2[10];
    v7 = v2[7];
    v6 = v2[8];
    v8 = v2[5];
    v27 = v2[6];
    v10 = v2[3];
    v9 = v2[4];
    v11 = v2[2];
    v28 = v2[9];
    v39 = *v2;
    (v10[2])(v9, v8, v11);
    v38 = v9;
    sub_1921CFA48(v9, v9 + *(v11 + 12), v4, v6, v39);
    v12 = v7[1];
    v40 = v6;
    v12(v6, v27);
    v13 = v5[1];
    v41 = v4;
    v13(v4, v28);
    (v3[1])(v42, v32);
    v14 = v34;
    v33 = v8;
    (v10[1])(v8, v11);
    v12(&v34[v30], v27);
    v13(v34, v28);
    v12(&v36[v31], v27);
    v15 = v36;
    v13(v36, v28);
  }

  else
  {
    v16 = v2[16];
    v17 = v2[13];
    v35 = v2[14];
    v37 = v2[15];
    v18 = v2[11];
    v29 = v2[12];
    v20 = v2[9];
    v19 = v2[10];
    v22 = v2[7];
    v21 = v2[8];
    v23 = v2[6];
    v33 = v2[5];
    v38 = v2[4];
    v24 = v2[1];
    sub_1921CFA48(v33, v33 + *(v2 + 36), v18, v21, *v2);
    v25 = v22[1];
    v40 = v21;
    v25(v21, v23);
    v26 = v19[1];
    v41 = v18;
    v26(v18, v20);
    v42 = v16;
    (v17[1])(v16, v29);
    v14 = v35;
    v25(&v35[v30], v23);
    v26(v35, v20);
    v25(&v37[v31], v23);
    v15 = v37;
    v26(v37, v20);
  }

  free(v42);
  free(v15);
  free(v14);
  free(v41);
  free(v40);
  free(v33);
  free(v38);

  free(v2);
}

uint64_t Cartesian2ProductCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a3;
  v70 = a1;
  v71 = a2;
  v4 = *(*(a4 + 32) + 8);
  v5 = *(a4 + 16);
  v77 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(v77[5] + 8);
  v7 = v77[3];
  v80 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = *(TupleTypeMetadata2 - 8);
  v9 = v63;
  v10 = *(v63 + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v72 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v79 = &v61 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v76 = &v61 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v75 = &v61 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v61 - v19;
  v21 = *(v4 + 8);
  v22 = swift_getAssociatedTypeWitness();
  v23 = *(v6 + 8);
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getTupleTypeMetadata2();
  v69 = *(v25 - 8);
  v26 = v69;
  v27 = *(v69 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v61 - v32;
  v62 = &v61 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = *(v22 - 8);
  v66 = v22;
  v67 = v34;
  v35 = *(v34 + 32);
  v37 = &v61 - v36;
  v68 = &v61 - v36;
  v35();
  v74 = v25;
  v38 = *(v25 + 48);
  v65 = v24;
  v70 = *(v24 - 8);
  (*(v70 + 32))(&v37[v38], v71, v24);
  (*(v26 + 16))(v33, v37, v25);
  v71 = *(v25 + 48);
  v39 = &v20[*(TupleTypeMetadata2 + 48)];
  v64 = v20;
  sub_1921CC8FC(v20, v39, v73, v77);
  v40 = *(v9 + 16);
  v41 = v75;
  v40(v75, v20, TupleTypeMetadata2);
  v42 = *(TupleTypeMetadata2 + 48);
  v73 = v42;
  v43 = *(AssociatedTypeWitness - 8);
  v44 = v76;
  (*(v43 + 16))(v76, v41);
  v45 = *(v80 - 8);
  (*(v45 + 16))(&v44[*(TupleTypeMetadata2 + 48)], &v41[v42]);
  v46 = v79;
  v40(v79, v44, TupleTypeMetadata2);
  v61 = *(TupleTypeMetadata2 + 48);
  v47 = v72;
  v40(v72, v44, TupleTypeMetadata2);
  v48 = *(TupleTypeMetadata2 + 48);
  v49 = *(v74 + 48);
  v50 = v77;
  sub_1921CCB1C(v30, &v30[v49], v46, &v47[v48], v77);
  v51 = v62;
  (*(v67 + 40))(v30, v62, v66);
  (*(v70 + 40))(&v30[v49], &v51[v71], v65);
  v52 = v79;
  sub_1921CFA48(v30, &v30[v49], v79, &v47[v48], v50);
  v53 = *(v63 + 8);
  v53(v76, TupleTypeMetadata2);
  v53(v64, TupleTypeMetadata2);
  (*(v69 + 8))(v68, v74);
  v54 = *(v45 + 8);
  v55 = v80;
  v54(&v47[v48], v80);
  v56 = *(v43 + 8);
  v57 = v47;
  v58 = AssociatedTypeWitness;
  v56(v57, AssociatedTypeWitness);
  v54((v52 + v61), v55);
  v56(v52, v58);
  v59 = v75;
  v54(&v75[v73], v55);
  return (v56)(v59, v58);
}

uint64_t Cartesian2ProductCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v36 = a2;
  v33 = a4;
  v35 = a1;
  v7 = *(a5[4] + 8);
  v8 = a5[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = a5;
  v10 = *(a5[5] + 8);
  v11 = a5[3];
  v12 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v32 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v32 - v22;
  v32 = AssociatedTypeWitness;
  v24 = *(AssociatedTypeWitness - 8);
  (*(v24 + 16))(&v32 - v22, a3, AssociatedTypeWitness);
  v25 = *(v12 - 8);
  (*(v25 + 16))(&v23[*(TupleTypeMetadata2 + 48)], v33, v12);
  v26 = *(v14 + 16);
  v26(v21, v23, TupleTypeMetadata2);
  v33 = *(TupleTypeMetadata2 + 48);
  v26(v18, v23, TupleTypeMetadata2);
  v27 = *(TupleTypeMetadata2 + 48);
  sub_1921CCB1C(v35, v36, v21, &v18[v27], v34);
  (*(v14 + 8))(v23, TupleTypeMetadata2);
  v28 = *(v25 + 8);
  v28(&v18[v27], v12);
  v29 = *(v24 + 8);
  v30 = v32;
  v29(v18, v32);
  v28(&v21[v33], v12);
  return (v29)(v21, v30);
}

uint64_t Cartesian2ProductCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v83 = a4;
  v81 = a3;
  v86 = a2;
  v79 = a1;
  v6 = *(a5[4] + 8);
  v7 = a5[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = a5;
  v9 = *(a5[5] + 8);
  v10 = a5[3];
  v11 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = *(TupleTypeMetadata2 - 8);
  v13 = v72;
  v14 = *(v72 + 64);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v82 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v80 = &v69 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v90 = &v69 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v88 = &v69 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v69 - v23;
  v25 = *(v6 + 8);
  v26 = swift_getAssociatedTypeWitness();
  v27 = *(v9 + 8);
  v28 = swift_getAssociatedTypeWitness();
  v29 = swift_getTupleTypeMetadata2();
  v89 = *(v29 - 8);
  v30 = *(v89 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v78 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v85 = &v69 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v35 = *(v26 - 8);
  v76 = v26;
  v77 = v35;
  v37 = &v69 - v36;
  (*(v35 + 32))();
  v38 = *(v29 + 48);
  v39 = v29;
  v40 = v28;
  v75 = v28;
  v79 = *(v28 - 8);
  v41 = *(v79 + 32);
  v42 = v37;
  v73 = v37;
  v41(&v37[v38], v86, v40);
  v86 = *(AssociatedTypeWitness - 8);
  v87 = AssociatedTypeWitness;
  v43 = *(v86 + 32);
  v74 = v24;
  v43(v24, v81, AssociatedTypeWitness);
  v44 = *(TupleTypeMetadata2 + 48);
  v45 = v11;
  v46 = *(v11 - 8);
  v47 = *(v46 + 32);
  v71 = v11;
  v47(&v24[v44], v83, v11);
  v48 = *(v13 + 16);
  v49 = v88;
  v50 = TupleTypeMetadata2;
  v48(v88, v24, TupleTypeMetadata2);
  v51 = *(TupleTypeMetadata2 + 48);
  v83 = v51;
  v52 = v39;
  (*(v89 + 16))(v85, v42, v39);
  v70 = *(v39 + 48);
  v69 = v39;
  v53 = v90;
  (*(v86 + 16))(v90, v49, v87);
  (*(v46 + 16))(&v53[*(v50 + 48)], &v49[v51], v45);
  v54 = v80;
  v48(v80, v53, v50);
  v81 = *(v50 + 48);
  v55 = v82;
  v48(v82, v53, v50);
  v56 = *(v50 + 48);
  v57 = *(v52 + 48);
  v58 = v78;
  v59 = v84;
  sub_1921CCB1C(v78, v78 + v57, v54, &v55[v56], v84);
  v60 = v85;
  (*(v77 + 40))(v58, v85, v76);
  (*(v79 + 40))(v58 + v57, &v60[v70], v75);
  sub_1921CFA48(v58, v58 + v57, v54, &v55[v56], v59);
  v61 = *(v72 + 8);
  v61(v90, v50);
  v61(v74, v50);
  (*(v89 + 8))(v73, v69);
  v62 = *(v46 + 8);
  v63 = &v55[v56];
  v64 = v71;
  v62(v63, v71);
  v65 = v87;
  v66 = *(v86 + 8);
  v66(v55, v87);
  v62((v54 + v81), v64);
  v66(v54, v65);
  v67 = v88;
  v62(&v88[v83], v64);
  return (v66)(v67, v65);
}

Swift::Int __swiftcall Cartesian2ProductCollection.index(_:offsetBy:)(Swift::Int _, Swift::tuple_Int_Int offsetBy)
{
  v4 = v3;
  v5 = v2;
  v7 = *(*(v2 + 40) + 8);
  v8 = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v10 = *(v37 + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = *(*(v5 + 32) + 8);
  v17 = *(v5 + 16);
  v18 = swift_getAssociatedTypeWitness();
  v35 = *(v18 - 8);
  v36 = v18;
  v19 = *(v35 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v34 - v23;
  v39 = _;
  v25 = v4 + *(v5 + 52);
  v38 = sub_192227E20();
  sub_19209C5BC();
  sub_1922282A0();
  v27 = v40;
  v26 = v41;
  sub_1921CE688(v22, v13, v5);
  sub_1921CE6E8(v24, v15, v22, v13, v26, v27, v5);
  v28 = *(v37 + 8);
  v37 += 8;
  v28(v13, AssociatedTypeWitness);
  v29 = *(v35 + 8);
  v30 = v22;
  v31 = v36;
  v29(v30, v36);
  v32 = sub_1921CE8D4(v24, v15, v5);
  v28(v15, AssociatedTypeWitness);
  v29(v24, v31);
  return v32;
}

uint64_t sub_1921CE688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(a3 + 32) + 8);
  sub_192227E00();
  v7 = *(a3 + 24);
  v8 = *(*(a3 + 40) + 8);
  v9 = v3 + *(a3 + 52);
  return sub_192227E00();
}

uint64_t sub_1921CE6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a2;
  v28 = a6;
  v25 = a1;
  v26 = a5;
  v22 = a3;
  v23 = *(*(a7 + 32) + 8);
  v24 = a4;
  v9 = *(a7 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(a7 + 40) + 8);
  v12 = *(a7 + 24);
  v13 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v21 - v17;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v21 - v17, v22, AssociatedTypeWitness);
  (*(*(v13 - 8) + 16))(&v18[*(TupleTypeMetadata2 + 48)], v24, v13);
  sub_192227E40();
  v19 = v7 + *(a7 + 52);
  sub_192227E40();
  return (*(v15 + 8))(v18, TupleTypeMetadata2);
}

uint64_t sub_1921CE8D4(uint64_t a1, uint64_t a2, void *a3)
{
  v48 = a1;
  v49 = a2;
  v5 = *(a3[5] + 8);
  v50 = a3[3];
  v51 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v43 - v9;
  v52 = a3;
  v10 = *(a3[4] + 8);
  v11 = a3[2];
  v12 = swift_getAssociatedTypeWitness();
  v46 = *(v12 - 8);
  v13 = v46;
  v14 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - v15;
  v44 = v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  v18 = v47;
  v19 = *(v47 + 64);
  v20 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - v23;
  (*(v13 + 16))(&v43 - v23, v48, v12);
  v25 = TupleTypeMetadata2;
  (*(v7 + 16))(&v24[*(TupleTypeMetadata2 + 48)], v49, AssociatedTypeWitness);
  v26 = v16;
  v27 = v16;
  v28 = v45;
  v29 = v52;
  sub_1921CE688(v27, v45, v52);
  v30 = *(v18 + 16);
  v43 = v25;
  v30(v22, v24, v25);
  v31 = *(v25 + 48);
  v32 = v26;
  v33 = sub_1921CED34(v26, v28, v22, &v22[v31], v29);
  v48 = v34;
  v49 = v33;
  v35 = *(v7 + 8);
  v35(v28, AssociatedTypeWitness);
  v36 = *(v46 + 8);
  v37 = v32;
  v38 = v44;
  v36(v37, v44);
  v35(&v22[v31], AssociatedTypeWitness);
  v36(v22, v38);
  v39 = v3 + *(v52 + 13);
  v40 = sub_192227E20();
  result = (*(v47 + 8))(v24, v43);
  v42 = v49 * v40;
  if ((v49 * v40) >> 64 != (v49 * v40) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = v42 + v48;
  if (__OFADD__(v42, v48))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t Cartesian2ProductCollection.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for Cartesian2ProductCollection();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t sub_1921CED34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v29 = a3;
  v26 = a2;
  v32 = *(a5[4] + 8);
  v33 = a4;
  v31 = a5[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(a5[5] + 8);
  v9 = a5[3];
  v27 = a5;
  v28 = v9;
  v10 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(TupleTypeMetadata2 - 8);
  v12 = *(v25 + 64);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  v18 = *(*(AssociatedTypeWitness - 8) + 16);
  v18(&v24 - v16, a1, AssociatedTypeWitness);
  v24 = *(TupleTypeMetadata2 + 48);
  v19 = *(*(v10 - 8) + 16);
  v19(&v17[v24], v26, v10);
  v18(v15, v29, AssociatedTypeWitness);
  v19(&v15[*(TupleTypeMetadata2 + 48)], v33, v10);
  v20 = sub_192227E50();
  v21 = v5 + *(v27 + 13);
  sub_192227E50();
  v22 = *(v25 + 8);
  v22(v15, TupleTypeMetadata2);
  v22(v17, TupleTypeMetadata2);
  return v20;
}

uint64_t sub_1921CEFC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69828](a1, a2, WitnessTable, v5);
}

uint64_t sub_1921CF048@<X0>(uint64_t *a1@<X8>)
{
  result = Cartesian2ProductCollection.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_1921CF070(uint64_t *a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(*(a3[4] + 8) + 8);
  v10 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(a3[5] + 8) + 8);
  v13 = a3[3];
  v14 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v16 = *(TupleTypeMetadata2 - 8);
  v8[5] = v16;
  if (v6)
  {
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v17 = malloc(*(v16 + 64));
  }

  v18 = v17;
  v8[6] = v17;
  v19 = sub_1921CF2CC(v8, *a2, a3);
  v21 = v20;
  v8[7] = v19;
  (*(*(AssociatedTypeWitness - 8) + 16))(v18);
  (*(*(v14 - 8) + 16))(v18 + *(TupleTypeMetadata2 + 48), v21, v14);
  return sub_1921CF254;
}

void sub_1921CF254(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_1921CF2CC(uint64_t *a1, uint64_t a2, void *a3))(void *a1)
{
  v6 = *(*(a3[4] + 8) + 8);
  v7 = a3[2];
  swift_getAssociatedTypeWitness();
  v8 = *(*(a3[5] + 8) + 8);
  v9 = a3[3];
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  a1[1] = v11;
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  a1[2] = v12;
  Cartesian2ProductCollection.subscript.getter(v12, v12 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_1921CF41C;
}

void sub_1921CF41C(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1921CF46C()
{
  swift_getWitnessTable();

  return sub_192227DE0();
}

uint64_t sub_1921CF564(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69820](a1, a2, WitnessTable, v5);
}

uint64_t sub_1921CF5EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t sub_1921CF664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = sub_1922285B0();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1921CF6F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1921CF744(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_1921CF978();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_1921CF7D4(uint64_t a1)
{
  v2 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1921CF830()
{
  result = qword_1EADEE008;
  if (!qword_1EADEE008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1638, &unk_192240A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE008);
  }

  return result;
}

uint64_t sub_1921CF894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1922278D0();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1921CF97C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1922278D0();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_192227F00() + 36);
  result = sub_1922278D0();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1921CFA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v34 = a3;
  v37 = a4;
  v32 = a5[4];
  v8 = *(*(v32 + 8) + 8);
  v30 = a5[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = a5;
  v36 = a5[5];
  v10 = *(*(v36 + 8) + 8);
  v33 = a5[3];
  v11 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v28 = *(TupleTypeMetadata2 - 8);
  v13 = v28;
  v14 = *(v28 + 64);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  v29 = AssociatedTypeWitness;
  v20 = *(AssociatedTypeWitness - 8);
  (*(v20 + 32))(&v28 - v18, a1, AssociatedTypeWitness);
  v21 = *(v11 - 8);
  (*(v21 + 32))(&v19[*(TupleTypeMetadata2 + 48)], a2, v11);
  v22 = *(v13 + 16);
  v22(v17, v19, TupleTypeMetadata2);
  v23 = *(TupleTypeMetadata2 + 48);
  v24 = v35;
  sub_192227EE0();
  (*(v21 + 8))(&v17[v23], v11);
  v22(v17, v19, TupleTypeMetadata2);
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = v24 + *(v31 + 13);
  sub_192227EE0();
  (*(v28 + 8))(v19, TupleTypeMetadata2);
  return (*(v20 + 8))(v17, v29);
}

unint64_t sub_1921CFD74()
{
  result = qword_1EADF1C78;
  if (!qword_1EADF1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1C78);
  }

  return result;
}

uint64_t sub_1921CFF30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0CC0, &qword_1922374E0);
    sub_1921CFD74();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1921CFFE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1921D006C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1921D0248(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

double sub_1921D0514()
{
  result = 14.5;
  xmmword_1EADED0A0 = xmmword_192240C70;
  qword_1EADED0B0 = 0x402D000000000000;
  unk_1EADED0B8 = 0;
  byte_1EADED0C0 = 1;
  qword_1EADED0C8 = 0x402A000000000000;
  unk_1EADED0D0 = 0;
  byte_1EADED0D8 = 1;
  qword_1EADED0E0 = 0x402D000000000000;
  unk_1EADED0E8 = 0;
  byte_1EADED0F0 = 1;
  qword_1EADED0F8 = 0x402A000000000000;
  unk_1EADED100 = 0;
  byte_1EADED108 = 1;
  return result;
}

unint64_t sub_1921D0594()
{
  if (qword_1EADEDA40 != -1)
  {
    swift_once();
  }

  if (!dyld_program_sdk_at_least())
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  inited = swift_initStackObject();
  v1 = *MEMORY[0x1E6965788];
  *(inited + 32) = *MEMORY[0x1E6965788];
  *(inited + 16) = xmmword_19222B480;
  *(inited + 64) = MEMORY[0x1E69E6810];
  *(inited + 40) = 7;
  v2 = v1;
  v3 = sub_19207614C(inited);
  swift_setDeallocating();
  sub_192076558(inited + 32);
  return v3;
}

uint64_t sub_1921D0688(unsigned __int8 a1)
{
  if (qword_1EADEDA40 != -1)
  {
    swift_once();
  }

  if (!dyld_program_sdk_at_least())
  {
    return 0;
  }

  if (qword_1EADED098 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EADED0A0;
  v3 = qword_1EADED0B0;
  v4 = qword_1EADED0C8;
  v14 = qword_1EADED0E0;
  v15 = qword_1EADED0F8;
  if (qword_1ED74A010 != -1)
  {
    swift_once();
  }

  v16 = byte_1ED74C7A8;
  if (qword_1ED7499A8 != -1)
  {
    swift_once();
  }

  v5 = off_1ED7499B0;
  v6 = *(off_1ED7499B0 + 2);
  v7 = *(v6 + 16);

  os_unfair_lock_lock(v7);
  v8 = v5[24];
  if (v8 == 5)
  {
    v9 = sub_192225200();
    LOBYTE(v8) = sub_1921981B0(v9);

    v5[24] = v8;
  }

  os_unfair_lock_unlock(*(v6 + 16));

  if (v16 == 2)
  {
    if (v8 >= 3u)
    {
      v10 = a1;
      v12 = v14;
      if (a1 == 10)
      {
        v11 = v15;
      }

      else
      {
        v11 = v14;
      }

      if (a1 == 9)
      {
        v11 = v15;
      }

      if (a1 == 8)
      {
        v11 = v15;
      }

      if (a1 == 7)
      {
        v12 = v15;
      }

      if (a1 == 5)
      {
        v12 = v15;
      }
    }

    else
    {
      v10 = a1;
      if (a1 == 10)
      {
        v11 = v4;
      }

      else
      {
        v11 = v3;
      }

      if (a1 == 9)
      {
        v11 = v4;
      }

      if (a1 == 8)
      {
        v11 = v4;
      }

      if (a1 == 7)
      {
        v12 = v4;
      }

      else
      {
        v12 = v3;
      }

      if (a1 == 5)
      {
        v12 = v4;
      }
    }

    if (v10 <= 7)
    {
      return v12;
    }

    else
    {
      return v11;
    }
  }

  else if (a1 - 7 < 4 || a1 == 5)
  {
    return *(&v2 + 1);
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1921D09C4()
{
  if (qword_1EADEDA40 != -1)
  {
    swift_once();
  }

  if (!dyld_program_sdk_at_least())
  {
    return 0;
  }

  sub_192226E20();
  return v0;
}

uint64_t sub_1921D0A8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1921D0B00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v6 + v8 + ((v6 + v8 + ((v6 + v8) & ~v8)) & ~v8)) & ~v8) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *sub_1921D0C60(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 80);
  v9 = ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8) & ~v8)) & ~v8)) & ~v8) + *(v5 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v20 = *(v6 + 56);

  return v20();
}

uint64_t EnvironmentValues.showsWidgetLabel.getter()
{
  sub_192041180();
  sub_1922261E0();
  return v1;
}

uint64_t View.widgetLabel<A>(label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_192226CF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  sub_192226CE0();
  MEMORY[0x193B0A190](v11, a3, v7, a5);
  return (*(v8 + 8))(v11, v7);
}

uint64_t View.widgetLabel(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a1;
  v7[3] = a2;
  v8 = a3;
  v9 = a4;
  return View.widgetLabel<A>(label:)(sub_1921D1100, v7, a5, MEMORY[0x1E6981148], a6);
}

uint64_t sub_1921D1068@<X0>(uint64_t a1@<X8>)
{

  result = sub_192226FC0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1921D1100@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_1921D1068(a1);
}

uint64_t View.widgetLabel<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a5;
  v6[6] = a1;
  return View.widgetLabel<A>(label:)(sub_1921D124C, v6, a2, MEMORY[0x1E6981148], a4);
}

uint64_t sub_1921D1174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_192226FD0();
  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v10;
  return result;
}

uint64_t sub_1921D124C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  return sub_1921D1174(v1[6], v1[3], a1);
}

uint64_t (*EnvironmentValues.showsWidgetLabel.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_192041180();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1921D12C4;
}

uint64_t sub_1921D12C4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

unint64_t sub_1921D12FC()
{
  result = qword_1EADECD00;
  if (!qword_1EADECD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EADF1C90, &unk_192240D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD00);
  }

  return result;
}

uint64_t _s9WidgetKit26StaticControlConfigurationV4bodyQrvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewSource(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192081C60(v1, v6);
  swift_storeEnumTagMultiPayload();
  sub_19207ED1C(v6, a1);
  v7 = *(type metadata accessor for WidgetDescriptor(0) + 28);
  v8 = *(a1 + v7);

  *(a1 + v7) = &unk_1F06A8598;
  return result;
}

void *StaticControlConfiguration.init(kind:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1920C8F78();
  v16 = v15;
  result = swift_allocObject();
  result[2] = a5;
  result[3] = a6;
  result[4] = a3;
  result[5] = a4;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = 0;
  *(a7 + 24) = 0;
  *(a7 + 32) = v14;
  *(a7 + 40) = v16;
  *(a7 + 48) = &unk_192240DB8;
  *(a7 + 56) = result;
  *(a7 + 88) = 1;
  return result;
}

uint64_t sub_1921D14E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[12] = a1;
  v8 = *(*(a6 - 8) + 64) + 15;
  v7[17] = swift_task_alloc();
  sub_192227CC0();
  v7[18] = sub_192227CB0();
  v10 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_1921D15AC, v10, v9);
}

uint64_t sub_1921D15AC()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);

  sub_1922269C0();
  v6();
  sub_1922269B0();
  sub_1920C92D8();
  sub_1922269A0();
  if (*(v0 + 80))
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 96);

    v9 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v9;
    *(v0 + 48) = *(v0 + 88);
    sub_19209CBAC((v0 + 16), v8);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    sub_19210F5E0(v0 + 56);
    return sub_192228620();
  }
}

uint64_t sub_1921D1728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v10 = v3[5];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_1920B3B44;

  return sub_1921D14E8(a1, a2, a3, v11, v10, v8, v9);
}

uint64_t StaticControlConfiguration.init<A>(kind:provider:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = sub_1920C8F78();
  v23 = v16;
  v24 = v15;
  v17 = *(a7 - 8);
  v18 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v19 = (*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = a6;
  *(v20 + 3) = a7;
  *(v20 + 4) = a8;
  *(v20 + 5) = a10;
  result = (*(v17 + 32))(&v20[v18], a3, a7);
  v22 = &v20[v19];
  *v22 = a4;
  *(v22 + 1) = a5;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  *(a9 + 32) = v24;
  *(a9 + 40) = v23;
  *(a9 + 48) = &unk_192240DC8;
  *(a9 + 56) = v20;
  *(a9 + 88) = 1;
  return result;
}

uint64_t sub_1921D1950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a8;
  v8[19] = v23;
  v8[16] = a6;
  v8[17] = a7;
  v8[14] = a4;
  v8[15] = a5;
  v8[12] = a1;
  v8[13] = a3;
  v10 = *(*(a7 - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v11 = *(a8 - 8);
  v8[21] = v11;
  v8[22] = v11;
  v12 = *(v11 + 64) + 15;
  v8[23] = swift_task_alloc();
  v13 = _s9WidgetKit14ValueGeneratorVMa_0();
  v8[24] = v13;
  v14 = *(v13 - 8);
  v8[25] = v14;
  v15 = *(v14 + 64) + 15;
  v8[26] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[27] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v8[28] = v17;
  v18 = *(v17 + 64) + 15;
  v8[29] = swift_task_alloc();
  sub_192227CC0();
  v8[30] = sub_192227CB0();
  v20 = sub_192227C70();
  v8[31] = v20;
  v8[32] = v19;

  return MEMORY[0x1EEE6DFA0](sub_1921D1B50, v20, v19);
}

uint64_t sub_1921D1B50()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[18];
  (*(v0[22] + 16))(v2, v0[14], v4);
  (*(v3 + 32))(v1, v2, v4);
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_1921D1C60;
  v6 = v0[29];
  v7 = v0[26];
  v8 = v0[24];
  v9 = v0[13];

  return sub_1921D23EC(v6, v9, v8);
}

uint64_t sub_1921D1C60()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 200);
  v6 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 272) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 256);
  v9 = *(v2 + 248);
  if (v0)
  {
    v10 = sub_1921D1FC4;
  }

  else
  {
    v10 = sub_1921D1DF8;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1921D1DF8()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);

  sub_1922269C0();
  v7(v2);
  sub_1922269B0();
  sub_1920C92D8();
  sub_1922269A0();
  if (*(v0 + 80))
  {
    v9 = *(v0 + 224);
    v8 = *(v0 + 232);
    v11 = *(v0 + 208);
    v10 = *(v0 + 216);
    v12 = *(v0 + 184);
    v13 = *(v0 + 160);
    v14 = *(v0 + 96);

    (*(v9 + 8))(v8, v10);
    v15 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v15;
    *(v0 + 48) = *(v0 + 88);
    sub_19209CBAC((v0 + 16), v14);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    sub_19210F5E0(v0 + 56);
    return sub_192228620();
  }
}

uint64_t sub_1921D1FC4()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[20];

  v6 = v0[1];
  v7 = v0[34];

  return v6();
}

uint64_t sub_1921D205C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v16 = v3[2];
  v9 = v3[4];
  v8 = v3[5];
  v10 = (*(*(v7 - 8) + 80) + 48) & ~*(*(v7 - 8) + 80);
  v11 = (v3 + ((*(*(v7 - 8) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v4 + 16) = v14;
  *v14 = v4;
  v14[1] = sub_1920B3B44;

  return sub_1921D1950(a1, a2, a3, v3 + v10, v12, v13, v16, v7);
}

uint64_t dispatch thunk of ControlValueProvider.currentValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920A59A8;

  return v11(a1, a2, a3);
}

uint64_t sub_1921D2328()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}