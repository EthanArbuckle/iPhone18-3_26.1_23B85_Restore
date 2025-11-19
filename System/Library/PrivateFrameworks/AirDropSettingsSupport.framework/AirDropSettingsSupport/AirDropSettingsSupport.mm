uint64_t AirDropSettingsState.discoverableMode.getter()
{
  swift_getKeyPath();
  sub_23E8648E0();
  sub_23E865C74();

  return *(v0 + OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveDiscoverableMode);
}

uint64_t sub_23E864780@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E8648E0();
  sub_23E865C74();

  *a2 = *(v3 + OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveDiscoverableMode);
  return result;
}

void *sub_23E864800(void *result, void *a2)
{
  if (*(*a2 + OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveDiscoverableMode) != *result)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23E8648E0();
    sub_23E865C64();
  }

  return result;
}

unint64_t sub_23E8648E0()
{
  result = qword_2814FD620;
  if (!qword_2814FD620)
  {
    type metadata accessor for AirDropSettingsState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD620);
  }

  return result;
}

uint64_t type metadata accessor for AirDropSettingsState()
{
  result = qword_2814FD630;
  if (!qword_2814FD630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AirDropSettingsState.discoverableMode.setter(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveDiscoverableMode) != result)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23E8648E0();
    sub_23E865C64();
  }

  return result;
}

void (*AirDropSettingsState.discoverableMode.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  swift_getKeyPath();
  v4[3] = OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState___observationRegistrar;
  v4[1] = v1;
  v4[4] = sub_23E8648E0();
  sub_23E865C74();

  v5 = OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveDiscoverableMode;
  v4[5] = OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveDiscoverableMode;
  *v4 = *(v1 + v5);
  return sub_23E864B38;
}

void sub_23E864B38(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[2];
  v4 = **a1;
  v5 = *(v3 + (*a1)[5]);
  if (a2)
  {
    if (v5 != v4)
    {
      goto LABEL_5;
    }
  }

  else if (v5 != v4)
  {
LABEL_5:
    v7 = v2[3];
    v6 = v2[4];
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    v2[1] = v3;
    sub_23E865C64();
  }

  free(v2);
}

void (*AirDropSettingsState.isNearbySharingEnabled.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_23E8648E0();
  sub_23E865C74();

  v5 = OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveIsNearbySharingEnabled;
  *(v4 + 32) = OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveIsNearbySharingEnabled;
  *(v4 + 40) = *(v1 + v5);
  return sub_23E864DCC;
}

uint64_t sub_23E864E14(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_23E8648E0();
  sub_23E865C74();

  return *(v2 + *a2);
}

uint64_t sub_23E864E98@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_23E8648E0();
  sub_23E865C74();

  *a3 = *(v5 + *a2);
  return result;
}

unsigned __int8 *sub_23E864F44(unsigned __int8 *result, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*result != *(*a2 + *a5))
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23E8648E0();
    sub_23E865C64();
  }

  return result;
}

uint64_t sub_23E86503C(uint64_t result, void *a2)
{
  if (*(v2 + *a2) != (result & 1))
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23E8648E0();
    sub_23E865C64();
  }

  return result;
}

void (*AirDropSettingsState.isCellularUsageEnabled.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_23E8648E0();
  sub_23E865C74();

  v5 = OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveIsCellularUsageEnabled;
  *(v4 + 32) = OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveIsCellularUsageEnabled;
  *(v4 + 40) = *(v1 + v5);
  return sub_23E8651DC;
}

void sub_23E865210(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 40);
  v5 = v4 ^ *(v3 + *(*a1 + 32));
  if (a2)
  {
    if ((v4 ^ *(v3 + *(*a1 + 32))))
    {
      v7 = v2[2];
      v6 = v2[3];
LABEL_6:
      swift_getKeyPath();
      MEMORY[0x28223BE20]();
      *v2 = v3;
      sub_23E865C64();
    }
  }

  else if ((v4 ^ *(v3 + *(*a1 + 32))))
  {
    v9 = v2[2];
    v8 = v2[3];
    goto LABEL_6;
  }

  free(v2);
}

id sub_23E865358()
{
  result = [objc_allocWithZone(type metadata accessor for AirDropSettingsState()) init];
  qword_2814FD648 = result;
  return result;
}

id AirDropSettingsState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AirDropSettingsState.shared.getter()
{
  if (qword_2814FD640 != -1)
  {
    swift_once();
  }

  v1 = qword_2814FD648;

  return v1;
}

id AirDropSettingsState.init()()
{
  ObjectType = swift_getObjectType();
  sub_23E865C84();
  v2 = [objc_allocWithZone(MEMORY[0x277D54DE0]) init];
  v3 = [v2 discoverableMode];
  *&v0[OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveDiscoverableMode] = v3;
  v4 = [v2 isNearbySharingEnabled];
  v0[OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveIsNearbySharingEnabled] = v4;
  v5 = [v2 isCellularUsageEnabled];
  v0[OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveIsCellularUsageEnabled] = v5;
  *&v0[OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_airDropDiscoveryController] = v2;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v6 = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v6 setDelegate_];
  [v6 startNFCMonitoring];

  return v7;
}

id AirDropSettingsState.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_airDropDiscoveryController] invalidate];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_23E86569C(void *a1)
{
  v3 = [a1 discoverableMode];
  if (*(v1 + OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveDiscoverableMode) != v3)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23E8648E0();
    sub_23E865C64();
  }

  v4 = [a1 isNearbySharingEnabled];
  if (v4 != *(v1 + OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveIsNearbySharingEnabled))
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23E8648E0();
    sub_23E865C64();
  }

  result = [a1 isCellularUsageEnabled];
  if (result != *(v1 + OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveIsCellularUsageEnabled))
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23E8648E0();
    sub_23E865C64();
  }

  return result;
}

void *_s22AirDropSettingsSupport0abC5StateC019discoveryControllerC9DidChangeyySo05SFAirb9DiscoveryG0CSgF_0(void *a1)
{
  if (a1)
  {
    return sub_23E86569C(a1);
  }

  __break(1u);
  return a1;
}

void *sub_23E86597C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23E865A18()
{
  result = sub_23E865C94();
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

void type metadata accessor for SFAirDropDiscoverableMode()
{
  if (!qword_2814FD610)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2814FD610);
    }
  }
}

id sub_23E865B20(uint64_t *a1, SEL *a2, SEL *a3)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *a1;
  *(v5 + *a1) = v6;
  v8 = OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_airDropDiscoveryController;
  result = [*(v5 + OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_airDropDiscoveryController) *a2];
  if (v6 != result)
  {
    return [*(v5 + v8) *a3];
  }

  return result;
}

id sub_23E865B94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveDiscoverableMode;
  *(v1 + OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_effectiveDiscoverableMode) = v2;
  v4 = OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_airDropDiscoveryController;
  result = [*(v1 + OBJC_IVAR____TtC22AirDropSettingsSupport20AirDropSettingsState_airDropDiscoveryController) discoverableMode];
  if (result != v2)
  {
    return [*(v1 + v4) setDiscoverableMode_];
  }

  return result;
}