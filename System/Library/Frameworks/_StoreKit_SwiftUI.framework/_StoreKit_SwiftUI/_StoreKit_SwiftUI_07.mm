uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s26AuxiliaryButtonsVisibilityVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[5])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
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

uint64_t _s26AuxiliaryButtonsVisibilityVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_23BA16F7C()
{
  sub_23BA17678();
  sub_23BBDA958();
  if (v2)
  {
    v0 = v2 == 1;
  }

  else
  {
    v0 = sub_23BBDA608();
  }

  return v0 & 1;
}

uint64_t sub_23BA16FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B4E8);
  v7 = sub_23BBDA358();
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  swift_getKeyPath();
  (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a2 + 16);
  (*(v5 + 32))(v14 + v13, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB9B8();

  v16 = sub_23B97B518(&qword_27E19B4F0, &qword_27E19B4E8);
  v24 = WitnessTable;
  v25 = v16;
  v17 = swift_getWitnessTable();
  sub_23B9D2D88(v9, v7, v17);
  v18 = *(v21 + 8);
  v18(v9, v7);
  sub_23B9D2D88(v12, v7, v17);
  return (v18)(v12, v7);
}

uint64_t sub_23BA172F4(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v14[-v10];
  v12 = type metadata accessor for StoreButtonVisibilityModifier();
  (*(v5 + 16))(v7, &a2[*(v12 + 36)], a3);
  sub_23BBDD188();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    sub_23BBDD688();
    if (!v15)
    {
      break;
    }

    v14[7] = *a2;

    swift_setAtWritableKeyPath();
  }

  return (*(v9 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_23BA17510()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for StoreButtonVisibilityModifier();
  (*(*(v1 - 8) + 8))(v0 + *(v2 + 36) + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_23BA175EC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for StoreButtonVisibilityModifier() - 8);
  v5 = (v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));

  return sub_23BA172F4(a1, v5, v3);
}

unint64_t sub_23BA17678()
{
  result = qword_27E19B4F8;
  if (!qword_27E19B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B4F8);
  }

  return result;
}

uint64_t sub_23BA176DC()
{
  type metadata accessor for StoreButtonVisibilityModifier();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B4E8);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E19B4F0, &qword_27E19B4E8);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BA17828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v44 = a2;
  v41 = a1;
  v46 = a4;
  sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v39 = v5;
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v38 = v7 - v6;
  v8 = sub_23BBDAE18();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  v15 = sub_23BBDB308();
  OUTLINED_FUNCTION_7();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198BC8);
  OUTLINED_FUNCTION_7();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v38 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B500);
  OUTLINED_FUNCTION_7();
  v42 = v29;
  v43 = v28;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v38 - v31;
  (*(v17 + 16))(v21, v41, v15, v30);
  sub_23BBDBFB8();
  sub_23BBDAE08();
  sub_23B97B518(&qword_27E198BD0, &qword_27E198BC8);
  sub_23BA17C2C();
  sub_23BBDB728();
  (*(v10 + 8))(v14, v8);
  (*(v24 + 8))(v27, v22);
  v33 = v44;

  if ((v45 & 1) == 0)
  {
    sub_23BBDD5A8();
    v34 = sub_23BBDB338();
    sub_23BBD9978();

    v35 = v38;
    sub_23BBDA918();
    swift_getAtKeyPath();
    j_j__swift_release(v33, 0);
    (*(v39 + 8))(v35, v40);
    v33 = v47;
  }

  if (!v33)
  {
    v33 = sub_23BBDBCB8();
  }

  v36 = v46;
  (*(v42 + 32))(v46, v32, v43);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B510);
  *(v36 + *(result + 36)) = v33;
  return result;
}

unint64_t sub_23BA17C2C()
{
  result = qword_27E19B508;
  if (!qword_27E19B508)
  {
    sub_23BBDAE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B508);
  }

  return result;
}

unint64_t sub_23BA17C88()
{
  result = qword_27E19B518;
  if (!qword_27E19B518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B510);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198BC8);
    sub_23BBDAE18();
    sub_23B97B518(&qword_27E198BD0, &qword_27E198BC8);
    sub_23BA17C2C();
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E1981A0, &qword_27E198188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B518);
  }

  return result;
}

uint64_t View.appStoreOverlay(isPresented:configuration:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = 0;
  v11 = 0;
  v10[0] = a1;
  v10[1] = a2;
  LOBYTE(v10[2]) = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = swift_getKeyPath();
  LOBYTE(v10[6]) = 0;
  v10[7] = sub_23BA17EC8;
  v10[8] = 0;
  LOBYTE(v10[9]) = 0;

  MEMORY[0x23EEB43C0](v10, a6, &type metadata for AppStoreOverlayModifier, a7);
  memcpy(__dst, v10, 0x49uLL);
  return sub_23BA17F00(__dst);
}

id sub_23BA17EC8()
{
  v0 = objc_allocWithZone(type metadata accessor for AppStoreOverlayCoordinator());

  return [v0 init];
}

uint64_t sub_23BA17F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v12 = *v2;
  v13 = v2[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
  sub_23BBDC118();
  v6 = v15;
  v7 = v16;
  v8 = swift_allocObject();
  memcpy((v8 + 16), v3, 0x49uLL);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B5C0);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B5C8) + 36);
  *v10 = v14;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = sub_23BA18FB4;
  *(v10 + 32) = v8;
  return sub_23BA18FBC(v3, &v12);
}

void sub_23BA18064(unsigned __int8 *a1, __int128 *a2)
{
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a2 + 5);
  v30 = v9;
  v31 = *(a2 + 48);
  if (v31 == 1)
  {
    v10 = v9;
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v11 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23BA18FF4(&v30);
    (*(v5 + 8))(v7, v4);
    v9 = v28;
    if (!v28)
    {
      goto LABEL_15;
    }
  }

  v12 = [v9 scene];

  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v15 = *(a2 + 7);
      type metadata accessor for AppStoreOverlayCoordinator();
      sub_23BA1905C();
      v26 = v15;
      v16 = sub_23BBD9C48();
      v17 = v16;
      if (v8)
      {
        v18 = *&v16[OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_overlay];
        v19 = v18;

        if (!v18)
        {
          v20 = sub_23BBD9C48();
          v21 = v20[OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_overlayState];

          if (v21 > 3 || v21 == 1)
          {
            goto LABEL_19;
          }

          v23 = sub_23BBD9C48();
          v19 = (*(a2 + 3))();
          sub_23BA184B8(v19, v14);
        }
      }

      else
      {
        v25 = v16[OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_overlayState];

        if (v25 > 1)
        {
LABEL_19:

          goto LABEL_20;
        }

        v19 = sub_23BBD9C48();
        sub_23BA18568();
      }

      goto LABEL_19;
    }
  }

LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A438);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_23BBE7F10;
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 32) = 0xD000000000000048;
  *(v24 + 40) = 0x800000023BBE0C20;
  sub_23BBDDB98();

  v28 = *a2;
  v29 = *(a2 + 16);
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
  sub_23BBDC0F8();
LABEL_20:
  sub_23BA183F0();
}

void sub_23BA183F0()
{
  type metadata accessor for AppStoreOverlayCoordinator();
  sub_23BA1905C();
  v0 = sub_23BBD9C48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
  sub_23BBDC118();
  v1 = &v0[OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_isPresented];
  v2 = *&v0[OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_isPresented];
  v3 = *&v0[OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_isPresented + 8];
  *v1 = v4;
  *(v1 + 1) = v5;
  v1[16] = v6;
  sub_23B9EAA78(v2, v3);
}

uint64_t sub_23BA184B8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_overlayState) = 0;
  v4 = [objc_allocWithZone(MEMORY[0x277CDD368]) initWithConfiguration_];
  [v4 setDelegate_];
  [v4 presentInScene_];
  v5 = *(v2 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_overlay);
  *(v2 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_overlay) = v4;

  return swift_unknownObjectWeakAssign();
}

void sub_23BA18568()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [objc_opt_self() dismissOverlayInScene_];
    if (*(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_isPresented + 8))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
      sub_23BBDC0F8();
    }

    *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_overlayState) = 2;
  }

  v3 = *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_overlay);
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_overlay) = 0;
}

uint64_t sub_23BA186C0()
{
  if (*(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_isPresented + 8))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
    sub_23BBDC0F8();
  }

  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_overlayState) = 1;
  return result;
}

void sub_23BA18864()
{
  if (*(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_isPresented + 8))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
    sub_23BBDC0F8();
  }

  v1 = *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_overlay);
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_overlay) = 0;

  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_overlayState) = 3;
}

id sub_23BA189A4()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_overlay])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      [objc_opt_self() dismissOverlayInScene_];
    }
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id sub_23BA18AC4()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_isPresented];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 0;
  v0[OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_overlayState] = 3;
  *&v0[OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_7A1CD05574219937BB53A614E2FE018426AppStoreOverlayCoordinator_overlay] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_23BA18B94()
{
  sub_23BBDA358();
  sub_23BA18BF8();
  return swift_getWitnessTable();
}

unint64_t sub_23BA18BF8()
{
  result = qword_27E19B5A8;
  if (!qword_27E19B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B5A8);
  }

  return result;
}

uint64_t _s22LocalizedPriceResourceV14SeparatorStyleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppStoreOverlayCoordinator.SKOverlayState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BA18DA0);
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

uint64_t sub_23BA18DEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_23BA18E2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23BA18E94()
{
  result = qword_27E19B5B0;
  if (!qword_27E19B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B5B0);
  }

  return result;
}

uint64_t sub_23BA18F04@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_23BBD9A28();
  *a1 = result;
  return result;
}

uint64_t sub_23BA18F44()
{

  sub_23B9EA1D4(*(v0 + 56), *(v0 + 64));
  sub_23BA18FA4(*(v0 + 72), *(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_23BA18FA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8]();
  }

  else
  {
  }
}

uint64_t sub_23BA18FF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19B5D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23BA1905C()
{
  result = qword_27E19B5E0;
  if (!qword_27E19B5E0)
  {
    type metadata accessor for AppStoreOverlayCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B5E0);
  }

  return result;
}

unint64_t sub_23BA190B8()
{
  result = qword_27E19B5E8;
  if (!qword_27E19B5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B5C8);
    sub_23B97B518(&unk_27E19B5F0, &qword_27E19B5C0);
    sub_23B97B518(&qword_27E19A470, &unk_27E19B600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B5E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23BA191B4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23BA19208(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23BA19284()
{
  sub_23B9DCA3C();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BA192FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B610);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  KeyPath = swift_getKeyPath();
  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B620);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_23BA19534;
    *(v13 + 24) = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B618);
  (*(*(v14 - 8) + 16))(v10, a1, v14);
  v15 = &v10[*(v8 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  sub_23BA1948C(v10, a4);
  return sub_23B9794F0(a2);
}

uint64_t sub_23BA1948C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA194FC()
{

  return swift_deallocObject();
}

unint64_t sub_23BA19550()
{
  result = qword_27E19B628;
  if (!qword_27E19B628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B610);
    sub_23B97B518(&qword_27E19B630, &qword_27E19B618);
    sub_23B97B518(&qword_27E19B638, &qword_27E19B640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B628);
  }

  return result;
}

void sub_23BA19634(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_23BBDC2A8();
  if (a1)
  {
    v4 = 90.0;
  }

  else
  {
    v4 = 68.0;
  }

  if (a1)
  {
    v5 = 118.0;
  }

  else
  {
    v5 = 85.0;
  }

  if (a1)
  {
    v6 = 240.0;
  }

  else
  {
    v6 = 114.0;
  }

  if ((sub_23BBDC2A8() & 1) == 0)
  {
    v5 = v4;
  }

  if (sub_23BBDC2A8())
  {
    v4 = v6;
  }

  sub_23BBDC2A8();
  sub_23BBDC2A8();
  OUTLINED_FUNCTION_0_20();
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = v4;
  OUTLINED_FUNCTION_1_21(v15, v7, v8, v9, v10, v11, v12, v13, v14, v16, v17);
}

uint64_t sub_23BA19724(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  memcpy(v10, __src, 0x5AuLL);
  v11 = a2;
  v12 = a3;
  return MEMORY[0x23EEB43C0](v10, a4, &type metadata for PlatformConstants.FrameModifier, a5);
}

uint64_t sub_23BA1979C()
{
  result = sub_23BBDC2A8();
  v1 = 2.0;
  if (result)
  {
    v1 = 0.0;
  }

  qword_27E1BFCA0 = *&v1;
  return result;
}

uint64_t sub_23BA197CC()
{
  result = sub_23BBDC2A8();
  v1 = 13.0;
  if (result)
  {
    v1 = 15.0;
  }

  qword_27E1BFCA8 = *&v1;
  return result;
}

uint64_t sub_23BA197FC()
{
  result = sub_23BBDC2A8();
  v1 = 5.0;
  if (result)
  {
    v1 = 7.0;
  }

  qword_27E1BFCB0 = *&v1;
  return result;
}

uint64_t sub_23BA1982C()
{
  if (qword_27E1977E0 != -1)
  {
    swift_once();
  }

  if (byte_27E1A04D0 == 3)
  {
    storekit_dyld_fall_2024_os_versions();
    result = dyld_program_sdk_at_least();
  }

  else
  {
    result = byte_27E1A04D0 == 1;
  }

  v1 = 0x402A000000000000;
  if (!result)
  {
    v1 = 0;
  }

  qword_27E1BFCB8 = v1;
  byte_27E1BFCC0 = result ^ 1;
  return result;
}

uint64_t sub_23BA198B4()
{
  result = sub_23BBDC2A8();
  v1 = 44.0;
  if ((result & 1) == 0)
  {
    v1 = 30.0;
  }

  qword_27E1BFCC8 = *&v1;
  return result;
}

uint64_t sub_23BA198E8()
{
  result = sub_23BBDC2A8();
  v1 = 0.98;
  if (result)
  {
    v1 = 1.35;
  }

  qword_27E1BFCD0 = *&v1;
  return result;
}

uint64_t sub_23BA19920()
{
  result = sub_23BBDC2A8();
  v1 = 12.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_27E1BFCD8 = *&v1;
  return result;
}

uint64_t sub_23BA19958(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BA19978(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 89) = v3;
  return result;
}

uint64_t sub_23BA199DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BA199FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 112) = v3;
  return result;
}

uint64_t sub_23BA19A70@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDC2A8();
  if (a1)
  {
    v5 = 53.0;
  }

  else
  {
    v5 = 32.0;
  }

  if (a1)
  {
    v6 = 34.0;
  }

  else
  {
    v6 = 28.0;
  }

  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  result = sub_23BBDC2A8();
  if (result)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v7;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  *(a2 + 80) = v9;
  *(a2 + 88) = 0;
  return result;
}

void sub_23BA19B4C(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_23BBDC2A8();
  if (a1)
  {
    v4 = 118.0;
  }

  else
  {
    v4 = 56.0;
  }

  if (a1)
  {
    v5 = 90.0;
  }

  else
  {
    v5 = 68.0;
  }

  if (a1)
  {
    v6 = 240.0;
  }

  else
  {
    v6 = 56.0;
  }

  if ((sub_23BBDC2A8() & 1) == 0)
  {
    v4 = v5;
  }

  if (sub_23BBDC2A8())
  {
    v5 = v6;
  }

  sub_23BBDC2A8();
  sub_23BBDC2A8();
  OUTLINED_FUNCTION_0_20();
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = v5;
  OUTLINED_FUNCTION_1_21(v15, v7, v8, v9, v10, v11, v12, v13, v14, v16, v17);
}

void *sub_23BA19C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 89))
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 1;
    v9 = -INFINITY;
    v10 = -INFINITY;
    v11 = -INFINITY;
    v12 = 1;
    v13 = 1;
  }

  else
  {
    v5 = *(v2 + 80);
    v6 = *(v2 + 64);
    v7 = *(v2 + 48);
    v11 = *v2;
    if (*(v2 + 8))
    {
      v11 = -INFINITY;
    }

    v13 = *(v2 + 56);
    v12 = *(v2 + 72);
    v8 = *(v2 + 88);
    if (*(v2 + 24))
    {
      v10 = v11;
    }

    else
    {
      v10 = *(v2 + 16);
    }

    v9 = *(v2 + 32);
    if (*(v2 + 40))
    {
      v9 = v10;
    }
  }

  if (v11 > v10 || v10 > v9)
  {
    goto LABEL_25;
  }

  v15 = v7;
  if (v13)
  {
    v15 = -INFINITY;
  }

  v16 = v6;
  if (v12)
  {
    v16 = v15;
  }

  v17 = v5;
  if (v8)
  {
    v17 = v16;
  }

  if (v15 > v16 || v16 > v17)
  {
LABEL_25:
    sub_23BBDD5A8();
    v19 = a2;
    v20 = sub_23BBDB338();
    sub_23BBD9978();

    a2 = v19;
  }

  sub_23BBDA488();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B648);
  (*(*(v21 - 8) + 16))(a2, a1, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B650);
  return memcpy((a2 + *(v22 + 36)), __src, 0x70uLL);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23BA19EDC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BA19EFC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

unint64_t sub_23BA19F44()
{
  result = qword_27E19B658;
  if (!qword_27E19B658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B650);
    sub_23BA19FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B658);
  }

  return result;
}

unint64_t sub_23BA19FD0()
{
  result = qword_27E19B660;
  if (!qword_27E19B660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B660);
  }

  return result;
}

void OUTLINED_FUNCTION_1_21(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  *(v11 + 40) = 0;
  *(v11 + 48) = v12;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = a11;
  *(v11 + 80) = a1;
  *(v11 + 88) = 0;
}

uint64_t sub_23BA1A0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23BA1A148(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ProductViewAXTypeStyleButtonSpacer()
{
  result = qword_27E19B668;
  if (!qword_27E19B668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BA1A21C()
{
  sub_23B9D2354();
  if (v0 <= 0x3F)
  {
    sub_23B9D4C08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BA1A2BC(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v1;
  if (*(v2 + 8) == 1)
  {
    if ((v8 & 1) == 0)
    {
LABEL_3:
      v9 = 0;
      v10 = 512;
      goto LABEL_10;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v11 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v8, 0);
    (*(v5 + 8))(v7, v4);
    if (v16 != 1)
    {
      goto LABEL_3;
    }
  }

  type metadata accessor for ProductViewAXTypeStyleButtonSpacer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
  sub_23BBD9D38();
  v9 = v15;
  v12 = v2[2];
  if (*(v2 + 24) != 1)
  {

    sub_23BBDD5A8();
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v12, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v12) = v14[15];
  }

  if (v12)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x10000;
  }

LABEL_10:
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 10) = BYTE2(v10);
}

unint64_t sub_23BA1A518()
{
  result = qword_27E19B678;
  if (!qword_27E19B678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B680);
    sub_23BA1A59C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B678);
  }

  return result;
}

unint64_t sub_23BA1A59C()
{
  result = qword_27E19B688;
  if (!qword_27E19B688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19B690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B688);
  }

  return result;
}

void sub_23BA1A620()
{
  type metadata accessor for DynamicSubscriptionOfferView.LoadingReference();
  if (v0 <= 0x3F)
  {
    sub_23B975E04();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_23BA1AAF0(319, &qword_27E19B718, &qword_27E19B720);
        if (v3 <= 0x3F)
        {
          sub_23BA1AAF0(319, &qword_27E19B728, qword_27E19B730);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23BA1A74C(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v9 = ((((((v7 + 48) & ~v7) + *(*(v4 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v15 = *(a1 + v9);
        if (v15)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA1A89CLL);
      case 4:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

LABEL_22:
        v17 = v15 - 1;
        if (v11)
        {
          v17 = 0;
          LODWORD(v11) = *a1;
        }

        return v8 + (v11 | v17) + 1;
      default:
        break;
    }
  }

  v18 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v6 & 0x80000000) != 0)
  {
    return __swift_getEnumTagSinglePayload((v18 + v7 + 48) & ~v7, v6, v4);
  }

  v19 = *(v18 + 32);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

void sub_23BA1A8B0(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((v10 + 48) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((v10 + 48) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((v10 + 48) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((v10 + 48) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        return;
      case 2:
        *(a1 + v11) = v16;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v11) = v16;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x23BA1AA98);
    case 4:
      *(a1 + v11) = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        v18 = a1 & 0xFFFFFFFFFFFFFFF8;
        if ((v8 & 0x80000000) != 0)
        {

          __swift_storeEnumTagSinglePayload((v18 + v10 + 48) & ~v10, a2, v8, v6);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v19 = a2 & 0x7FFFFFFF;
            *(v18 + 40) = 0;
          }

          else
          {
            v19 = (a2 - 1);
          }

          *(v18 + 32) = v19;
        }
      }

      return;
  }
}

void sub_23BA1AAF0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_23BBDBF98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23BA1AB44()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23BA1AB8C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
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

uint64_t sub_23BA1ABCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_23BA1AC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v168 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_13_3(&v141 - v6);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v161 = *(a1 + 16);
  v190 = v161;
  v191 = v7;
  v159 = v8;
  v192 = v8;
  v193 = v9;
  v172 = v9;
  v10 = type metadata accessor for SubscriptionOfferViewEntitlementLoadingView();
  _s16TaskViewModifierVMa(255);
  v11 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v150 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_1();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v148 = &v141 - v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_13_3(&v141 - v20);
  v163 = sub_23BBDD368();
  OUTLINED_FUNCTION_3_2();
  v162 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_13_3(v23);
  OUTLINED_FUNCTION_3_2();
  v156 = v24;
  MEMORY[0x28223BE20](v25);
  v152 = v26;
  OUTLINED_FUNCTION_13_3(&v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v171 = sub_23BBDC5F8();
  OUTLINED_FUNCTION_3_2();
  v158 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_13_3(v29);
  v169 = v7;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_1();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v141 - v35;
  OUTLINED_FUNCTION_3_2();
  v157 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_1();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_13_3(&v141 - v43);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B7B8);
  v160 = v10;
  v44 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v146 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_13_3(&v141 - v48);
  v167 = v11;
  v166 = sub_23BBDACE8();
  OUTLINED_FUNCTION_3_2();
  v165 = v49;
  MEMORY[0x28223BE20](v50);
  v51 = *v3;
  v52 = v3[1];
  v53 = *(v3 + 24) == 1;
  v164 = &v141 - v54;
  v154 = v52;
  v153 = v51;
  if (v53)
  {
    v55 = v3[2];
    v56 = v3 + *(a1 + 64);
    v57 = *v56;
    v58 = *(v56 + 8);
    v59 = *(v56 + 16);
    v190 = v57;
    LOBYTE(v191) = v58;
    v192 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B7C0);
    sub_23BBDBF68();
    OUTLINED_FUNCTION_13_12();
    OUTLINED_FUNCTION_19_5(v60);
    v61 = v169;
    v62(v36);
    v63 = *(v3 + *(a1 + 60));
    OUTLINED_FUNCTION_15_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B7C8);
    sub_23BBDBF68();
    v190 = v55;
    OUTLINED_FUNCTION_21_5();
    v64 = v159;
    v65 = v161;
    sub_23B9FD354(v189, v150, v16, v36, v63, v66, &v190, v161, v61, v159, v67, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
    v68 = OUTLINED_FUNCTION_7_19();
    v69(v68);
    v70 = v156;
    v71 = v155;
    (*(v156 + 16))(v155, v3, a1);
    v72 = (*(v70 + 80) + 48) & ~*(v70 + 80);
    v73 = swift_allocObject();
    v74 = v169;
    *(v73 + 16) = v65;
    *(v73 + 24) = v74;
    OUTLINED_FUNCTION_21_5();
    *(v75 + 32) = v64;
    *(v75 + 40) = v76;
    (*(v70 + 32))(v75 + v72, v71, a1);
    OUTLINED_FUNCTION_0_21();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_22_4();
    v78 = v170;
    sub_23BA256BC();

    v79 = OUTLINED_FUNCTION_11_11();
    v80(v79);
    (*(v16 + 8))(v78, v171);
    v81 = OUTLINED_FUNCTION_14_9();
    v82(v81);
    v83 = sub_23BA1CF14();
    v175 = WitnessTable;
    v176 = v83;
    OUTLINED_FUNCTION_1_22();
    v84 = swift_getWitnessTable();
    v85 = v145;
    v86 = OUTLINED_FUNCTION_9_7();
    sub_23B9D2D88(v86, v87, v84);
    v88 = *(v146 + 8);
    v89 = OUTLINED_FUNCTION_9_7();
    v88(v89);
    sub_23B9D2D88(v85, v44, v84);
    v90 = sub_23B9AD618();
    v173 = WitnessTable;
    v174 = v90;
    swift_getWitnessTable();
    v91 = v164;
    OUTLINED_FUNCTION_9_7();
    sub_23BA82D64();
    v92 = OUTLINED_FUNCTION_9_7();
    v88(v92);
    (v88)(v85, v44);
    v93 = v91;
  }

  else
  {
    v151 = v41;
    v145 = v16;
    v146 = v44;
    OUTLINED_FUNCTION_9_9();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B7C0);
    sub_23BBDBF68();
    OUTLINED_FUNCTION_13_12();
    OUTLINED_FUNCTION_19_5(v94);
    v142 = v33;
    v95 = v33;
    v96 = v169;
    v97(v95);
    HIDWORD(v143) = *(v3 + *(a1 + 60));
    OUTLINED_FUNCTION_15_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B7C8);
    sub_23BBDBF68();
    v98 = v187;
    OUTLINED_FUNCTION_9_9();
    sub_23BBDBF68();
    v99 = v187;
    v100 = a1;
    if (v188 == 1)
    {
      v101 = v147;
      sub_23BAC75B8(v187, v147);
      sub_23B9CEC50(v99, 1);
    }

    else
    {
      sub_23B9CEC50(v187, v188);
      v102 = type metadata accessor for Subscription();
      v101 = v147;
      __swift_storeEnumTagSinglePayload(v147, 1, 1, v102);
    }

    OUTLINED_FUNCTION_21_5();
    v103 = v159;
    v104 = v98;
    v105 = v161;
    sub_23B9FD0D0(v189, v144, v16, v142, HIDWORD(v143), v104, v101, v161, v96, v159, v106, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
    v107 = OUTLINED_FUNCTION_7_19();
    v108(v107);
    v109 = v156;
    v110 = v155;
    (*(v156 + 16))(v155, v3, v100);
    v111 = (*(v109 + 80) + 48) & ~*(v109 + 80);
    v112 = (v152 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
    v113 = swift_allocObject();
    *(v113 + 16) = v105;
    *(v113 + 24) = v96;
    OUTLINED_FUNCTION_21_5();
    *(v114 + 32) = v103;
    *(v114 + 40) = v115;
    (*(v109 + 32))(v114 + v111, v110, v100);
    v116 = (v113 + v112);
    v117 = v154;
    *v116 = v153;
    v116[1] = v117;

    OUTLINED_FUNCTION_0_21();
    v118 = swift_getWitnessTable();
    OUTLINED_FUNCTION_22_4();
    v119 = v148;
    v120 = v170;
    sub_23BA25540();

    v121 = OUTLINED_FUNCTION_11_11();
    v122(v121);
    (*(v16 + 8))(v120, v171);
    v123 = OUTLINED_FUNCTION_14_9();
    v124(v123);
    v125 = sub_23B9AD618();
    v185 = v118;
    v186 = v125;
    OUTLINED_FUNCTION_1_22();
    v126 = v167;
    v127 = swift_getWitnessTable();
    v128 = v149;
    sub_23B9D2D88(v119, v126, v127);
    v129 = *(v150 + 8);
    v129(v119, v126);
    v130 = v145;
    sub_23B9D2D88(v128, v126, v127);
    v131 = sub_23BA1CF14();
    v183 = v118;
    v184 = v131;
    swift_getWitnessTable();
    v93 = v164;
    sub_23BA82E14();
    v129(v130, v126);
    v129(v128, v126);
  }

  OUTLINED_FUNCTION_0_21();
  v132 = swift_getWitnessTable();
  v133 = sub_23BA1CF14();
  v181 = v132;
  v182 = v133;
  OUTLINED_FUNCTION_1_22();
  v134 = swift_getWitnessTable();
  v135 = sub_23B9AD618();
  v179 = v132;
  v180 = v135;
  v136 = swift_getWitnessTable();
  v177 = v134;
  v178 = v136;
  OUTLINED_FUNCTION_2_7();
  v137 = v166;
  v138 = swift_getWitnessTable();
  sub_23B9D2D88(v93, v137, v138);
  return (*(v165 + 8))(v93, v137);
}

uint64_t sub_23BA1B978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 280) = a5;
  *(v6 + 288) = a6;
  *(v6 + 264) = a3;
  *(v6 + 272) = a4;
  *(v6 + 256) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  *(v6 + 312) = swift_task_alloc();
  v8 = type metadata accessor for Subscription();
  *(v6 + 320) = v8;
  *(v6 + 328) = *(v8 - 8);
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  v9 = sub_23BBDCDB8();
  *(v6 + 352) = v9;
  *(v6 + 360) = *(v9 - 8);
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = *a1;
  *(v6 + 209) = *(a1 + 16);
  sub_23BBDD308();
  *(v6 + 408) = sub_23BBDD2F8();
  v11 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BA1BB88, v11, v10);
}

uint64_t sub_23BA1BB88()
{
  v93 = v1;
  v2 = (v1 + 264);
  v3 = *(v1 + 209);

  if (v3)
  {
    if (v3 == 1)
    {
      v5 = *(v1 + 392);
      v4 = *(v1 + 400);
      if (*(v4 + 16))
      {
        v6 = qword_27E1976D0;

        if (v6 != -1)
        {
          goto LABEL_33;
        }

        goto LABEL_5;
      }

LABEL_12:
      v31 = *(v1 + 256);
      v32 = v2[1];
      *(v1 + 16) = *v2;
      *(v1 + 32) = v32;
      v79 = type metadata accessor for DynamicSubscriptionOfferView();
      v33 = (v31 + *(v79 + 68));
      v35 = *v33;
      v34 = v33[1];
      *(v1 + 184) = v35;
      *(v1 + 192) = v34;
      *(v1 + 248) = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B7C8);
      sub_23BBDBF78();
      if (*(v5 + 16))
      {
        v36 = *(v1 + 360);
        v38 = *(v36 + 16);
        v36 += 16;
        v37 = v38;
        v39 = *(v1 + 320);
        v80 = *(v1 + 328);
        v40 = v5 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
        v89 = (v36 - 8);
        v90 = MEMORY[0x277D84F90];
        v88 = *(v36 + 56);
        v41 = *(v5 + 16);
        v86 = v39;
        v87 = v38;
        while (1)
        {
          v43 = *(v1 + 376);
          v42 = *(v1 + 384);
          v44 = *(v1 + 352);
          v45 = *(v1 + 304);
          v37(v42, v40, v44);
          v37(v43, v42, v44);
          sub_23BBDC8F8();
          v2 = sub_23BBDCB58();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v2);
          v47 = *(v1 + 352);
          if (EnumTagSinglePayload == 1)
          {
            v48 = *(v1 + 384);
            v50 = *(v1 + 312);
            v49 = *(v1 + 320);
            v51 = *(v1 + 304);
            v52 = *v89;
            (*v89)(*(v1 + 376), v47);
            v52(v48, v47);
            sub_23B9EA92C(v51, &qword_27E197B90);
            __swift_storeEnumTagSinglePayload(v50, 1, 1, v49);
          }

          else
          {
            v85 = v41;
            v54 = *(v1 + 368);
            v53 = *(v1 + 376);
            v5 = *(v1 + 296);
            sub_23B9EA92C(*(v1 + 304), &qword_27E197B90);
            v37(v54, v53, v47);
            sub_23BBDC8F8();
            v55 = __swift_getEnumTagSinglePayload(v5, 1, v2);
            v56 = v39;
            v4 = *(v39 + 24);
            sub_23B9EA92C(v5, &qword_27E197B90);
            if (v55 == 1)
            {
              __break(1u);
LABEL_33:
              OUTLINED_FUNCTION_0_6();
LABEL_5:
              v7 = type metadata accessor for SKLogger();
              __swift_project_value_buffer(v7, qword_27E1BFC88);
              v91 = 0;
              v92 = 0xE000000000000000;
              sub_23BBDD768();

              OUTLINED_FUNCTION_12_11();
              v91 = v9;
              v92 = v8 & 0xFFFF0000FFFFLL | 0xEC00000020730000;
              v10 = MEMORY[0x23EEB5A30](v4, MEMORY[0x277D837D0]);
              MEMORY[0x23EEB5890](v10);

              MEMORY[0x23EEB5890](0xD000000000000011, 0x800000023BBE0C70);
              v12 = v91;
              v11 = v92;
              v13 = sub_23BBDD598();

              v14 = sub_23BBD9988();

              if (os_log_type_enabled(v14, v13))
              {
                v15 = swift_slowAlloc();
                v91 = swift_slowAlloc();
                *v15 = 136446466;
                *(v15 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v91);
                *(v15 + 12) = 2082;
                v16 = sub_23BA5AB90(v12, v11, &v91);

                *(v15 + 14) = v16;
                _os_log_impl(&dword_23B970000, v14, v13, "%{public}s%{public}s", v15, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_15_3();
                OUTLINED_FUNCTION_15_3();
              }

              else
              {
              }

              goto LABEL_12;
            }

            v81 = *(v1 + 376);
            v82 = *(v1 + 384);
            v57 = *(v1 + 368);
            v58 = *(v1 + 352);
            v59 = *(v1 + 336);
            v83 = *(v1 + 312);
            v84 = *(v1 + 320);
            v60 = v59 + v4;
            v37(v59, v57, v58);
            v61 = sub_23BBDCD78();
            sub_23BBA7C04(v61, v62);
            v64 = v63;
            v66 = v65;
            v67 = *v89;
            (*v89)(v57, v58);
            v67(v81, v58);
            v67(v82, v58);
            v68 = v59 + *(v56 + 20);
            *v68 = v64;
            *(v68 + 8) = v66;
            *v60 = 0;
            *(v60 + 8) = 1;
            sub_23BA1D1B4(v59, v83);
            __swift_storeEnumTagSinglePayload(v83, 0, 1, v84);
            v41 = v85;
          }

          v69 = *(v1 + 312);
          if (__swift_getEnumTagSinglePayload(v69, 1, *(v1 + 320)) == 1)
          {
            sub_23B9EA92C(v69, qword_27E197A68);
            v37 = v87;
            v39 = v86;
          }

          else
          {
            sub_23BA1D1B4(v69, *(v1 + 344));
            v37 = v87;
            v39 = v86;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_23B9B7FB8();
              v90 = v72;
            }

            v70 = *(v90 + 16);
            if (v70 >= *(v90 + 24) >> 1)
            {
              sub_23B9B7FB8();
              v90 = v73;
            }

            v71 = *(v1 + 344);
            *(v90 + 16) = v70 + 1;
            sub_23BA1D1B4(v71, v90 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v70);
          }

          v40 += v88;
          if (!--v41)
          {
            goto LABEL_28;
          }
        }
      }

      v90 = MEMORY[0x277D84F90];
LABEL_28:
      v26 = (v1 + 112);
      v74 = *(v1 + 256) + *(v79 + 64);
      v75 = *v74;
      v76 = *(v74 + 8);
      *(v1 + 128) = *(v74 + 16);
      *(v1 + 112) = v75;
      *(v1 + 120) = v76;
      v25 = (v1 + 120);
      *(v1 + 200) = v90;
      *(v1 + 208) = 1;
      sub_23B9CEC34(v75, v76);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B7C0);
    }

    else
    {
      v27 = *(v1 + 280);
      *(v1 + 80) = *v2;
      *(v1 + 96) = v27;
      v28 = type metadata accessor for DynamicSubscriptionOfferView();
      v29 = OUTLINED_FUNCTION_4_13(v28);
      *(v1 + 168) = v30;
      v25 = (v1 + 168);
      *(v1 + 232) = 0;
      *(v1 + 160) = v29;
      v26 = (v1 + 160);
      *(v1 + 176) = v0;
      *(v1 + 240) = 2;
      sub_23B9CEC34(v29, v30);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B7C0);
    }
  }

  else
  {
    v18 = *(v1 + 392);
    v17 = *(v1 + 400);
    v19 = *(v1 + 256);
    v20 = *(v1 + 280);
    *(v1 + 48) = *v2;
    *(v1 + 64) = v20;
    v21 = v19 + *(type metadata accessor for DynamicSubscriptionOfferView() + 64);
    v22 = *v21;
    v23 = *(v21 + 16);
    v24 = *(v21 + 8);
    *(v1 + 144) = v24;
    v25 = (v1 + 144);
    *(v1 + 216) = v18;
    *(v1 + 136) = v22;
    v26 = (v1 + 136);
    *(v1 + 152) = v23;
    *(v1 + 224) = 0;
    sub_23BA1D218(v18, v17, 0);
    sub_23B9CEC34(v22, v24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B7C0);
  }

  sub_23BBDBF78();
  sub_23B9CEC50(*v26, *v25);

  v77 = *(v1 + 8);

  return v77();
}

uint64_t sub_23BA1C3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[42] = a7;
  v8[43] = a8;
  v8[40] = a5;
  v8[41] = a6;
  v8[38] = a3;
  v8[39] = a4;
  v8[36] = a1;
  v8[37] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  v8[44] = swift_task_alloc();
  v9 = type metadata accessor for Subscription();
  v8[45] = v9;
  v8[46] = *(v9 - 8);
  v8[47] = swift_task_alloc();
  v10 = sub_23BBDCDB8();
  v8[48] = v10;
  v8[49] = *(v10 - 8);
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v8[52] = type metadata accessor for Product.TaskState(0);
  v8[53] = swift_task_alloc();
  sub_23BBDD308();
  v8[54] = sub_23BBDD2F8();
  v12 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BA1C570, v12, v11);
}

uint64_t sub_23BA1C570()
{
  v63 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 416);
  v3 = *(v0 + 288);

  sub_23BA1D274(v3, v1, type metadata accessor for Product.TaskState);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = *(v0 + 400);
      v24 = *(v0 + 408);
      v25 = *(v0 + 384);
      v26 = *(v0 + 392);
      v28 = *(v0 + 352);
      v27 = *(v0 + 360);
      (*(v26 + 32))(v24, *(v0 + 424), v25);
      (*(v26 + 16))(v23, v24, v25);
      sub_23BBA7878(v23, 0, 1, v28);
      if (__swift_getEnumTagSinglePayload(v28, 1, v27) == 1)
      {
        sub_23B9EA92C(*(v0 + 352), qword_27E197A68);
        if (qword_27E1976D0 != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        v29 = type metadata accessor for SKLogger();
        __swift_project_value_buffer(v29, qword_27E1BFC88);
        v30 = sub_23BBDD598();
        v31 = sub_23BBD9988();
        v32 = os_log_type_enabled(v31, v30);
        v33 = *(v0 + 408);
        v34 = *(v0 + 384);
        v35 = *(v0 + 392);
        if (v32)
        {
          v36 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *v36 = 136446466;
          *(v36 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v61);
          *(v36 + 12) = 2082;
          *(v36 + 14) = sub_23BA5AB90(0xD000000000000049, 0x800000023BBE0CB0, &v61);
          _os_log_impl(&dword_23B970000, v31, v30, "%{public}s%{public}s", v36, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_15_3();
          OUTLINED_FUNCTION_15_3();
        }

        (*(v35 + 8))(v33, v34);
      }

      else
      {
        v45 = *(v0 + 408);
        v46 = *(v0 + 384);
        v47 = *(v0 + 392);
        v48 = *(v0 + 368);
        v49 = *(v0 + 376);
        v50 = *(v0 + 296);
        v59 = *(v0 + 336);
        v60 = *(v0 + 320);
        sub_23BA1D1B4(*(v0 + 352), v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B8);
        v51 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_23BBE7F10;
        sub_23BA1D274(v49, v52 + v51, type metadata accessor for Subscription);
        *(v0 + 48) = v60;
        *(v0 + 64) = v59;
        v53 = v50 + *(type metadata accessor for DynamicSubscriptionOfferView() + 64);
        v54 = *v53;
        v55 = *(v53 + 16);
        v56 = *(v53 + 8);
        *(v0 + 144) = *v53;
        *(v0 + 152) = v56;
        *(v0 + 160) = v55;
        *(v0 + 232) = v52;
        *(v0 + 240) = 1;
        sub_23B9CEC34(v54, v56);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B7C0);
        sub_23BBDBF78();
        sub_23B9CEC50(*(v0 + 144), *(v0 + 152));

        sub_23BA1D2DC(v49);
        (*(v47 + 8))(v45, v46);
      }

      break;
    case 2u:
      v10 = *(v0 + 336);
      *(v0 + 112) = *(v0 + 320);
      *(v0 + 128) = v10;
      v11 = type metadata accessor for DynamicSubscriptionOfferView();
      v7 = OUTLINED_FUNCTION_4_13(v11);
      *(v0 + 192) = v7;
      v9 = v0 + 192;
      *(v0 + 200) = v8;
      *(v0 + 208) = v2;
      *(v0 + 264) = 0;
      *(v0 + 272) = 2;
      goto LABEL_4;
    case 3u:
      if (qword_27E1976D0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v13 = *(v0 + 304);
      v12 = *(v0 + 312);
      v14 = type metadata accessor for SKLogger();
      __swift_project_value_buffer(v14, qword_27E1BFC88);
      sub_23BBDD768();

      OUTLINED_FUNCTION_12_11();
      v61 = v16;
      v62 = v15 & 0xFFFF0000FFFFLL | 0xEB00000000200000;
      MEMORY[0x23EEB5890](v13, v12);
      MEMORY[0x23EEB5890](0xD000000000000010, 0x800000023BBE0C90);
      v18 = v61;
      v17 = v62;
      v19 = sub_23BBDD598();

      v20 = sub_23BBD9988();

      if (os_log_type_enabled(v20, v19))
      {
        v21 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v21 = 136446466;
        *(v21 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v61);
        *(v21 + 12) = 2082;
        v22 = sub_23BA5AB90(v18, v17, &v61);

        *(v21 + 14) = v22;
        _os_log_impl(&dword_23B970000, v20, v19, "%{public}s%{public}s", v21, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_15_3();
      }

      else
      {
      }

      v38 = *(v0 + 304);
      v37 = *(v0 + 312);
      v39 = *(v0 + 296);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_23BBE7F10;
      *(v40 + 32) = v38;
      *(v40 + 40) = v37;
      v41 = *(v0 + 336);
      *(v0 + 16) = *(v0 + 320);
      *(v0 + 32) = v41;
      v42 = (v39 + *(type metadata accessor for DynamicSubscriptionOfferView() + 68));
      v44 = *v42;
      v43 = v42[1];
      *(v0 + 216) = v44;
      *(v0 + 224) = v43;
      *(v0 + 280) = v40;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B7C8);
      sub_23BBDBF78();
      break;
    default:
      v4 = **(v0 + 424);
      v5 = *(v0 + 336);
      *(v0 + 80) = *(v0 + 320);
      *(v0 + 96) = v5;
      v6 = type metadata accessor for DynamicSubscriptionOfferView();
      v7 = OUTLINED_FUNCTION_4_13(v6);
      *(v0 + 168) = v7;
      v9 = v0 + 168;
      *(v0 + 176) = v8;
      *(v0 + 184) = v2;
      *(v0 + 248) = v4;
      *(v0 + 256) = 0;
LABEL_4:
      sub_23B9CEC34(v7, v8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B7C0);
      sub_23BBDBF78();
      sub_23B9CEC50(*v9, *(v9 + 8));

      break;
  }

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_23BA1CC80()
{
  v16 = *(v1 + 24);
  type metadata accessor for DynamicSubscriptionOfferView();
  OUTLINED_FUNCTION_8_3();
  v3 = v1 + ((*(v2 + 80) + 48) & ~*(v2 + 80));
  sub_23BA1CDBC();

  v12 = OUTLINED_FUNCTION_10_10(v4, v5, v6, v7, v8, v9, v10, v11, v16);
  (*(v13 + 8))(v3 + v14, v12);
  sub_23B9CEC50(*(v3 + *(v0 + 72)), *(v3 + *(v0 + 72) + 8));

  return swift_deallocObject();
}

uint64_t sub_23BA1CDC4(uint64_t a1)
{
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v2[2] = v5;
  v2[3] = v4;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(type metadata accessor for DynamicSubscriptionOfferView() - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  v2[6] = v13;
  *v13 = v2;
  v13[1] = sub_23BA1D448;

  return sub_23BA1C3A0(a1, v1 + v9, v11, v12, v5, v4, v6, v7);
}

unint64_t sub_23BA1CF14()
{
  result = qword_27E19B7D0;
  if (!qword_27E19B7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B7D0);
  }

  return result;
}

uint64_t sub_23BA1CF78()
{
  v16 = *(v1 + 24);
  type metadata accessor for DynamicSubscriptionOfferView();
  OUTLINED_FUNCTION_8_3();
  v3 = v1 + ((*(v2 + 80) + 48) & ~*(v2 + 80));
  sub_23BA1CDBC();

  v12 = OUTLINED_FUNCTION_10_10(v4, v5, v6, v7, v8, v9, v10, v11, v16);
  (*(v13 + 8))(v3 + v14, v12);
  sub_23B9CEC50(*(v3 + *(v0 + 72)), *(v3 + *(v0 + 72) + 8));

  return swift_deallocObject();
}

uint64_t sub_23BA1D0A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(type metadata accessor for DynamicSubscriptionOfferView() - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v2[6] = v10;
  *v10 = v2;
  v10[1] = sub_23B9AD524;

  return sub_23BA1B978(a1, v1 + v9, v4, v5, v6, v7);
}

uint64_t sub_23BA1D1B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Subscription();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_23BA1D218(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {

    return result;
  }

  return result;
}

uint64_t sub_23BA1D274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BA1D2DC(uint64_t a1)
{
  v2 = type metadata accessor for Subscription();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA1D338()
{
  type metadata accessor for SubscriptionOfferViewEntitlementLoadingView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B7B8);
  sub_23BBDA358();
  _s16TaskViewModifierVMa(255);
  sub_23BBDA358();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_0_21();
  swift_getWitnessTable();
  sub_23BA1CF14();
  swift_getWitnessTable();
  sub_23B9AD618();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_9_9()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  *(v1 - 120) = *v0;
  *(v1 - 112) = v2;
  *(v1 - 104) = v3;
}

void OUTLINED_FUNCTION_13_12()
{
  v1 = *(v0 - 128);
  *(v0 - 152) = *(v0 - 136);
  *(v0 - 144) = v1;
}

uint64_t OUTLINED_FUNCTION_15_10()
{
  v4 = (v0 + *(v1 + 68));
  v6 = *v4;
  v5 = v4[1];
  *(v2 - 120) = v6;
  *(v2 - 112) = v5;
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return sub_23BBDD348();
}

uint64_t sub_23BA1D5BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFD && *(a1 + 40))
    {
      v2 = *a1 + 2147483644;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 3;
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

uint64_t sub_23BA1D614(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_23BA1D6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B800) + 36));
  sub_23BA1D88C(v2, (v6 + 1));
  *v6 = KeyPath;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B808);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, a1, v7);
}

uint64_t sub_23BA1D768()
{
  sub_23BA1D8E8();

  return sub_23BBDA958();
}

uint64_t sub_23BA1D80C(uint64_t a1)
{
  sub_23BA1D88C(a1, v3);
  sub_23BA1D8E8();
  sub_23BBDA968();
  return sub_23B97ADDC(a1);
}

unint64_t sub_23BA1D8E8()
{
  result = qword_27E19B810;
  if (!qword_27E19B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B810);
  }

  return result;
}

unint64_t sub_23BA1D950()
{
  result = qword_27E19B818;
  if (!qword_27E19B818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B800);
    sub_23B97B518(&qword_27E19B820, &qword_27E19B808);
    sub_23B97B518(&qword_27E19B828, &qword_27E19B830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B818);
  }

  return result;
}

double sub_23BA1DA34(uint64_t a1, uint64_t a2)
{
  sub_23BA1DB24(a2, &v5);
  if (*(&v6 + 1) == 3)
  {
    sub_23BA1DB94(&v5);
  }

  else
  {
    sub_23B97ADDC(a1);
    result = *&v5;
    v4 = v6;
    *a1 = v5;
    *(a1 + 16) = v4;
    *(a1 + 32) = v7;
  }

  return result;
}

double sub_23BA1DAA0()
{
  qword_27E19B7F8 = 0;
  result = 0.0;
  xmmword_27E19B7D8 = 0u;
  unk_27E19B7E8 = 0u;
  return result;
}

uint64_t sub_23BA1DAB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E197730 != -1)
  {
    swift_once();
  }

  return sub_23BA1D88C(&xmmword_27E19B7D8, a1);
}

uint64_t sub_23BA1DB24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B838);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA1DB94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA1DBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v30 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = v30;
  v38 = AssociatedTypeWitness;
  v39 = MEMORY[0x277CE0BD8];
  v40 = *(&v30 + 1);
  v41 = AssociatedConformanceWitness;
  sub_23BBDC1A8();
  v36 = MEMORY[0x277CE0BC8];
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  v6 = sub_23BBDC098();
  OUTLINED_FUNCTION_7();
  v27 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  *&v20 = v3;
  *(&v20 + 1) = *v2;
  v31 = v30;
  v32 = v20;
  v33 = v28;
  sub_23B9C2924();
  sub_23BBDC088();
  OUTLINED_FUNCTION_11_7();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDBB48();
  (*(v27 + 8))(v10, v6);
  v22 = sub_23B97AD88();
  v34 = WitnessTable;
  v35 = v22;
  OUTLINED_FUNCTION_0();
  v23 = swift_getWitnessTable();
  sub_23B9D2D88(v16, v11, v23);
  v24 = *(v13 + 8);
  v24(v16, v11);
  sub_23B9D2D88(v19, v11, v23);
  return (v24)(v19, v11);
}

uint64_t sub_23BA1DF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24[0] = a5;
  v24[1] = a6;
  MEMORY[0x28223BE20](a1);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24[3] = a2;
  v24[4] = AssociatedTypeWitness;
  v24[5] = MEMORY[0x277CE0BD8];
  v24[6] = a3;
  v24[7] = AssociatedConformanceWitness;
  v11 = sub_23BBDC1A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v24 - v16;
  sub_23BBD9C18();
  sub_23BBD9C08();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v19 = v24[0];
  v18[4] = a4;
  v18[5] = v19;
  v20 = MEMORY[0x277CE0BC8];
  sub_23BBDC198();
  v24[2] = v20;
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v14, v11, WitnessTable);
  v22 = *(v12 + 8);
  v22(v14, v11);
  sub_23B9D2D88(v17, v11, WitnessTable);
  return (v22)(v17, v11);
}

uint64_t sub_23BA1E1D4@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = v4(AssociatedTypeWitness, a1);
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_23BA1E264()
{
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v0 = qword_27E1BF840;

  return sub_23BBDB648();
}

unint64_t sub_23BA1E358(uint64_t a1)
{
  result = sub_23BA1E380();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BA1E380()
{
  result = qword_27E19B840;
  if (!qword_27E19B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B840);
  }

  return result;
}

uint64_t sub_23BA1E480()
{
  v1 = _s11PriceStringOMa(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BA1E68C(v0, v3);
  sub_23BAE1C0C();
  v5 = v4;
  sub_23BA1E6F0(v3);
  return v5;
}

uint64_t sub_23BA1E5B8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BA1E60C(uint64_t a1)
{
  result = sub_23BA1E634();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BA1E634()
{
  result = qword_27E19B848[0];
  if (!qword_27E19B848[0])
  {
    _s11PriceStringOMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E19B848);
  }

  return result;
}

uint64_t sub_23BA1E68C(uint64_t a1, uint64_t a2)
{
  v4 = _s11PriceStringOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA1E6F0(uint64_t a1)
{
  v2 = _s11PriceStringOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA1E74C()
{
  result = sub_23BBD9C18();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BA1E7BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_23BA1E8F0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x23BA1EAB4);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_23BA1EB64()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_23BBDC1A8();
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  sub_23BBDC098();
  sub_23BBDA358();
  OUTLINED_FUNCTION_11_7();
  swift_getWitnessTable();
  sub_23B97AD88();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t sub_23BA1ECA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a5;
  v28 = a6;
  v29 = a3;
  v26 = a1;
  v27 = a2;
  OUTLINED_FUNCTION_3_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23BBDAD18();
  OUTLINED_FUNCTION_3_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ClippedToCoordinateSpaceModifier();
  OUTLINED_FUNCTION_3_2();
  v20 = v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v26 - v23;
  (*(v14 + 16))(v17, v26, v12, v22);
  (*(v8 + 16))(v11, v27, a4);
  sub_23BA1FB00(v17, v11, a4, v24);
  MEMORY[0x23EEB43C0](v24, v29, v18, v30);
  return (*(v20 + 8))(v24, v18);
}

uint64_t sub_23BA1EED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[2] = a1;
  v18[3] = a3;
  swift_getWitnessTable();
  sub_23BBDAE98();
  v4 = *(a2 + 16);
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDACE8();
  v5 = *(a2 + 24);
  v19 = *(v5 + 16);
  v20 = MEMORY[0x277CDF678];
  v18[0] = MEMORY[0x277CDFAD8];
  v18[14] = swift_getWitnessTable();
  v18[15] = MEMORY[0x277CDFB28];
  v18[12] = swift_getWitnessTable();
  v18[13] = v19;
  swift_getWitnessTable();
  sub_23BBDA078();
  swift_getWitnessTable();
  sub_23BBDADF8();
  v6 = sub_23BBDA358();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  v18[6] = v4;
  v18[7] = v5;
  v18[8] = v18[1];
  WitnessTable = swift_getWitnessTable();
  sub_23B9C2924();
  sub_23BBDBAD8();
  v14 = swift_getWitnessTable();
  v18[10] = WitnessTable;
  v18[11] = v14;
  v15 = swift_getWitnessTable();
  sub_23B9D2D88(v9, v6, v15);
  v16 = *(v7 + 8);
  v16(v9, v6);
  sub_23B9D2D88(v12, v6, v15);
  return (v16)(v12, v6);
}

uint64_t sub_23BA1F1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClippedToCoordinateSpaceModifier();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  (*(v7 + 16))(&v18 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDACE8();
  v24 = *(a3 + 16);
  v13 = v24;
  v25 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v23 = MEMORY[0x277CDFB28];
  v20 = swift_getWitnessTable();
  v21 = v13;
  swift_getWitnessTable();
  v18 = sub_23BBDA068();
  v19 = v14;
  v15 = sub_23BBDA078();
  v16 = swift_getWitnessTable();
  sub_23B9D2D88(&v18, v15, v16);

  v18 = v26;
  v19 = v27;
  sub_23B9D2D88(&v18, v15, v16);
}

uint64_t sub_23BA1F488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a1;
  v50 = a5;
  v8 = sub_23BBDA358();
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = &v42 - v9;
  v10 = sub_23BBDA358();
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = &v42 - v14;
  v15 = *(a3 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - v20;
  v49 = sub_23BBDACE8();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v51 = &v42 - v22;
  v23 = a2;
  sub_23BBD9E88();
  v24 = MEMORY[0x277CDFB28];
  if (v70)
  {
    v25 = type metadata accessor for ClippedToCoordinateSpaceModifier();
    v26 = *(a4 + 16);
    sub_23B9D2D88(v23 + *(v25 + 36), a3, v26);
    sub_23B9D2D88(v21, a3, v26);
    v64 = v26;
    v65 = MEMORY[0x277CDF678];
    WitnessTable = swift_getWitnessTable();
    v63 = v24;
    swift_getWitnessTable();
    sub_23BA82E14();
    v27 = *(v15 + 8);
    v27(v18, a3);
    v27(v21, a3);
  }

  else
  {
    v29 = v68;
    v28 = v69;
    v31 = v66;
    v30 = v67;
    type metadata accessor for ClippedToCoordinateSpaceModifier();
    v32 = v24;
    v71.origin.x = v31;
    v71.origin.y = v30;
    v71.size.width = v29;
    v71.size.height = v28;
    CGRectGetWidth(v71);
    v72.origin.x = v31;
    v72.origin.y = v30;
    v72.size.width = v29;
    v72.size.height = v28;
    CGRectGetHeight(v72);
    v26 = *(a4 + 16);
    sub_23BBDC318();
    v33 = v43;
    sub_23BBDBB08();
    v73.origin.x = v31;
    v73.origin.y = v30;
    v73.size.width = v29;
    v73.size.height = v28;
    CGRectGetMidX(v73);
    v74.origin.x = v31;
    v74.origin.y = v30;
    v74.size.width = v29;
    v74.size.height = v28;
    CGRectGetMidY(v74);
    v54 = v26;
    v55 = MEMORY[0x277CDF678];
    v34 = swift_getWitnessTable();
    sub_23BBDBC28();
    (*(v44 + 8))(v33, v8);
    v52 = v34;
    v53 = v24;
    v35 = swift_getWitnessTable();
    v36 = v45;
    sub_23B9D2D88(v12, v10, v35);
    v37 = *(v46 + 8);
    v37(v12, v10);
    sub_23B9D2D88(v36, v10, v35);
    sub_23BA82D64();
    v37(v12, v10);
    v37(v36, v10);
    v24 = v32;
  }

  v60 = v26;
  v61 = MEMORY[0x277CDF678];
  v58 = swift_getWitnessTable();
  v59 = v24;
  v56 = swift_getWitnessTable();
  v57 = v26;
  v38 = v49;
  v39 = swift_getWitnessTable();
  v40 = v51;
  sub_23B9D2D88(v51, v38, v39);
  return (*(v48 + 8))(v40, v38);
}

uint64_t sub_23BA1FB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23BBDAD18();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for ClippedToCoordinateSpaceModifier();
  v10 = *(*(a3 - 8) + 32);
  v11 = a4 + *(v9 + 36);

  return v10(v11, a2, a3);
}

uint64_t sub_23BA1FBD0()
{
  result = sub_23BBDAD18();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BA1FC58(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_23BBDAD18();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v6;
  v15 = *(*(v6 - 8) + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v23 = a1;
      v8 = v14;
    }

    else
    {
      v23 = (a1 + v15) & ~v12;
      v7 = v10;
    }

    return __swift_getEnumTagSinglePayload(v23, v7, v8);
  }

  v16 = (v15 & ~v12) + v13;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_24;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v11 + (v22 | v20) + 1;
}

void sub_23BA1FE80(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_23BBDAD18();
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(*(v8 - 8) + 84);
  v12 = *(v10 + 84);
  if (v12 <= v11)
  {
    v13 = *(*(v8 - 8) + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 80);
  v15 = *(*(v8 - 8) + 64) + v14;
  v16 = (v15 & ~v14) + *(v10 + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 < a2)
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        return;
      case 2:
        *&a1[v16] = v20;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        return;
      default:
        return;
    }
  }

  switch(v18)
  {
    case 1:
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x23BA20120);
    case 4:
      *&a1[v16] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v11 >= v12)
        {
          v24 = a1;
          v25 = a2;
          v9 = v8;
        }

        else
        {
          v24 = &a1[v15] & ~v14;
          v25 = a2;
          v11 = v12;
        }

        __swift_storeEnumTagSinglePayload(v24, v25, v11, v9);
      }

      return;
  }
}

uint64_t sub_23BA2019C()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ClippedToCoordinateSpaceModifier() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  v4 = sub_23BBDAD18();
  (*(*(v4 - 8) + 8))(v3, v4);
  (*(*(v1 - 8) + 8))(v3 + v2[11], v1);

  return swift_deallocObject();
}

uint64_t sub_23BA202BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ClippedToCoordinateSpaceModifier() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_23BA1F488(a1, v8, v5, v6, a2);
}

uint64_t sub_23BA20358()
{
  type metadata accessor for ClippedToCoordinateSpaceModifier();
  swift_getWitnessTable();
  sub_23BBDAE98();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDACE8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23BBDA078();
  swift_getWitnessTable();
  sub_23BBDADF8();
  sub_23BBDA358();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23BA2057C()
{
  if ((sub_23BBDCF38() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for IdentifiedValue();
  return sub_23BBDCF38() & 1;
}

uint64_t sub_23BA2064C()
{
  sub_23BBDDBB8();
  sub_23BA20604();
  return sub_23BBDDBF8();
}

uint64_t sub_23BA20700()
{
  sub_23BBDDBB8();
  sub_23BA20604();
  return sub_23BBDDBF8();
}

uint64_t sub_23BA2076C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BA207F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_23BA209D0(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a2)
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        return;
      case 2:
        *&v6[v15] = v21;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23BA20C5CLL);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v9 < v11)
        {
          a1 = (&a1[v14] & ~v13);
          v9 = v11;
          v7 = v8;
        }

        __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
      }

      return;
  }
}

BOOL sub_23BA20C8C()
{
  sub_23BBDAA98();
  sub_23BA216CC();
  sub_23BBDD438();
  sub_23BBDD4A8();
  return v2 == v1;
}

uint64_t sub_23BA20CF8@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_3_2();
  v28 = v7;
  v29 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v13 = *(v12 + 16);
  OUTLINED_FUNCTION_3_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v23 = v22 - v21;
  (*(v24 + 16))(v22 - v21, v25);
  v26 = 1;
  if (__swift_getEnumTagSinglePayload(v23, 1, v13) != 1)
  {
    (*(v15 + 32))(v19, v23, v13);
    a1(v19, v11);
    (*(v15 + 8))(v19, v13);
    if (v4)
    {
      return (*(v28 + 32))(a3, v11, v29);
    }

    v26 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v26, 1, a2);
}

uint64_t sub_23BA20F3C()
{
  swift_getKeyPath();
  sub_23BBDD648();
  sub_23BA20CF8(sub_23BA21818, MEMORY[0x277CE11C8], v0, &v2);
  sub_23BBDB748();
}

uint64_t sub_23BA21030()
{
  sub_23BA210A8();
  sub_23BBDA958();
  return v1;
}

unint64_t sub_23BA210A8()
{
  result = qword_27E19B9D0;
  if (!qword_27E19B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B9D0);
  }

  return result;
}

uint64_t sub_23BA21128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  result = sub_23BBA9A08(v7, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BA21204(uint64_t a1, char a2)
{
  v4 = sub_23BBDA928();
  OUTLINED_FUNCTION_3_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;

  if ((a2 & 1) == 0)
  {
    sub_23BBDD5A8();
    v11 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(a1, 0);
    (*(v6 + 8))(v10, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B9D8);
  sub_23B9C71FC();
  sub_23BA21554();
  return sub_23BBDBE08();
}

uint64_t sub_23BA213B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B9F0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  if (sub_23BA20C8C())
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  else
  {
    v8 = sub_23BBDB3B8();
    sub_23BBD9B18();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = sub_23BBDAA98();
    (*(*(v17 - 8) + 16))(v6, a1, v17);
    v18 = &v6[*(v4 + 36)];
    *v18 = v8;
    *(v18 + 1) = v10;
    *(v18 + 2) = v12;
    *(v18 + 3) = v14;
    *(v18 + 4) = v16;
    v18[40] = 0;
    sub_23BA2165C(v6, a2);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }
}

unint64_t sub_23BA21554()
{
  result = qword_27E19B9E0;
  if (!qword_27E19B9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B9D8);
    sub_23BA215D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B9E0);
  }

  return result;
}

unint64_t sub_23BA215D8()
{
  result = qword_27E19B9E8;
  if (!qword_27E19B9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B9E8);
  }

  return result;
}

uint64_t sub_23BA2165C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B9F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BA216CC()
{
  result = qword_27E1984F8;
  if (!qword_27E1984F8)
  {
    sub_23BBDAA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1984F8);
  }

  return result;
}

unint64_t sub_23BA21728()
{
  result = qword_27E19B9F8;
  if (!qword_27E19B9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BA00);
    sub_23BA217AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B9F8);
  }

  return result;
}

unint64_t sub_23BA217AC()
{
  result = qword_27E19BA08;
  if (!qword_27E19BA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BA08);
  }

  return result;
}

uint64_t sub_23BA2183C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a1;
  v41 = a2;
  v47 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = AssociatedTypeWitness;
  v4 = sub_23BBD99D8();
  WitnessTable = swift_getWitnessTable();
  v37 = v4;
  sub_23BBD9A08();
  OUTLINED_FUNCTION_3_2();
  v45 = v5;
  v46 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v42 = &v34 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BA18);
  OUTLINED_FUNCTION_3_2();
  v10 = v9;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = sub_23BBD99C8();
  v35 = v14;
  OUTLINED_FUNCTION_3_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_2();
  v38 = v20;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v34 - v22;
  v24 = *(v4 - 8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v25);
  v27 = &v34 - v26;
  sub_23BBD9A18();
  (*(v16 + 104))(v19, *MEMORY[0x277CBCBC8], v14);
  v28 = v39;
  (*(v10 + 104))(v13, *MEMORY[0x277CBCBE8], v39);
  v29 = v36;
  sub_23BBD9A88();
  (*(v10 + 8))(v13, v28);
  (*(v16 + 8))(v19, v35);
  (*(v38 + 8))(v23, v29);
  v30 = v42;
  v31 = v37;
  MEMORY[0x23EEB2270](v37, WitnessTable);
  (*(v24 + 8))(v27, v31);
  v32 = v45;
  sub_23BBD99E8();
  return (*(v46 + 8))(v30, v32);
}

uint64_t sub_23BA21C9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 343))
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

uint64_t sub_23BA21CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
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
    *(result + 342) = 0;
    *(result + 340) = 0;
    *(result + 336) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 343) = 1;
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

    *(result + 343) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BA21E34(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 24));
  }

  type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0);
  v5 = OUTLINED_FUNCTION_15_0(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_23BA21EE0()
{
  OUTLINED_FUNCTION_19();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0);
    v5 = OUTLINED_FUNCTION_15_0(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_23BA21F78()
{
  type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(319);
  if (v0 <= 0x3F)
  {
    sub_23BA22024();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BA22024()
{
  if (!qword_27E19BBC0)
  {
    v0 = sub_23BBDD648();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19BBC0);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0()
{
  OUTLINED_FUNCTION_19();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  v1 = OUTLINED_FUNCTION_15();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void sub_23BA22194(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_23BA22208(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23BA22208(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BBDD648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23BA22278()
{
  sub_23BA22C2C();

  return sub_23BBDA298();
}

uint64_t sub_23BA222C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199668);
  OUTLINED_FUNCTION_13_0(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  sub_23B989ECC(a1, &v6 - v4, &qword_27E199668);
  sub_23BA22C2C();
  sub_23BBDA2A8();
  return sub_23B979910(a1, &qword_27E199668);
}

uint64_t sub_23BA22380()
{
  sub_23BA22BD8();

  return sub_23BBDA298();
}

uint64_t sub_23BA223C8(uint64_t a1)
{
  sub_23B9B73EC(a1, &v3);
  sub_23BA22BD8();
  sub_23BBDA2A8();
  return sub_23B9ED050(a1);
}

uint64_t sub_23BA2241C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B989ECC(a1, v6, &qword_27E19A528);
  MEMORY[0x23EEB43C0](v6, a2, &type metadata for ApplyEnvironmentBridgeModifier, a3);
  return sub_23BA249D8(v6);
}

uint64_t sub_23BA22490()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199640);
  v4 = OUTLINED_FUNCTION_13_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_1();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BC18);
  v12 = OUTLINED_FUNCTION_13_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11_12();
  type metadata accessor for SubscriptionOptionGroupAccessorySubview();
  OUTLINED_FUNCTION_5_15(v10);
  if (v17)
  {
    sub_23B979910(v10, &qword_27E199640);
    v19 = 1;
  }

  else
  {
    sub_23BBDC1F8();
    OUTLINED_FUNCTION_4_14();
    sub_23BA24130(v10, v18);
    v19 = 0;
  }

  sub_23BBDC1E8();
  OUTLINED_FUNCTION_22_5(v1, v19);
  v20 = type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0);
  sub_23B989ECC(v2 + *(v20 + 20), v7, &qword_27E199640);
  OUTLINED_FUNCTION_5_15(v7);
  if (v17)
  {
    sub_23B979910(v7, &qword_27E199640);
    v22 = 1;
  }

  else
  {
    sub_23BBDC1F8();
    OUTLINED_FUNCTION_4_14();
    sub_23BA24130(v7, v21);
    v22 = 0;
  }

  OUTLINED_FUNCTION_22_5(v15, v22);
  OUTLINED_FUNCTION_19_6();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BC20);
  return OUTLINED_FUNCTION_15_11(v23);
}

BOOL sub_23BA226A4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199640);
  OUTLINED_FUNCTION_13_0(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0);
  sub_23B989ECC(v1 + *(v9 + 20), v0, &qword_27E199640);
  if (__swift_getEnumTagSinglePayload(v0, 1, v4) == 1)
  {
    sub_23B979910(v0, &qword_27E199640);
    return 0;
  }

  else
  {
    sub_23BA24A08(v0, v8, type metadata accessor for SubscriptionOptionGroupAccessorySubview);
    v10 = sub_23BB11230();
    sub_23BA24130(v8, type metadata accessor for SubscriptionOptionGroupAccessorySubview);
  }

  return v10;
}

BOOL sub_23BA227E4()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199640);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  sub_23B989ECC(v2, v0, &qword_27E199640);
  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    sub_23B979910(v0, &qword_27E199640);
    return 0;
  }

  else
  {
    sub_23BA24A08(v0, v9, type metadata accessor for SubscriptionOptionGroupAccessorySubview);
    v10 = sub_23BB11230();
    sub_23BA24130(v9, type metadata accessor for SubscriptionOptionGroupAccessorySubview);
  }

  return v10;
}

uint64_t sub_23BA2291C()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BB90);
  v4 = OUTLINED_FUNCTION_13_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_1();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BC18);
  v12 = OUTLINED_FUNCTION_13_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11_12();
  type metadata accessor for SubscriptionOptionSectionAccessorySubview();
  OUTLINED_FUNCTION_5_15(v10);
  if (v17)
  {
    sub_23B979910(v10, &qword_27E19BB90);
    v19 = 1;
  }

  else
  {
    sub_23BBDC1F8();
    OUTLINED_FUNCTION_1_23();
    sub_23BA24130(v10, v18);
    v19 = 0;
  }

  sub_23BBDC1E8();
  OUTLINED_FUNCTION_22_5(v1, v19);
  v20 = type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(0);
  sub_23B989ECC(v2 + *(v20 + 20), v7, &qword_27E19BB90);
  OUTLINED_FUNCTION_5_15(v7);
  if (v17)
  {
    sub_23B979910(v7, &qword_27E19BB90);
    v22 = 1;
  }

  else
  {
    sub_23BBDC1F8();
    OUTLINED_FUNCTION_1_23();
    sub_23BA24130(v7, v21);
    v22 = 0;
  }

  OUTLINED_FUNCTION_22_5(v15, v22);
  OUTLINED_FUNCTION_19_6();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BC20);
  return OUTLINED_FUNCTION_15_11(v23);
}

double sub_23BA22B34@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BC78);
  *(a1 + 8) = swift_initStaticObject();
  v2 = sub_23B9C9318();
  *(a1 + 40) = &unk_284E5A000;
  *(a1 + 48) = v2;
  bzero((a1 + 56), 0xD1uLL);
  result = 0.0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 336) = 1;
  *(a1 + 337) = 0;
  *(a1 + 341) = 0;
  return result;
}

unint64_t sub_23BA22BD8()
{
  result = qword_27E19BBE0;
  if (!qword_27E19BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BBE0);
  }

  return result;
}

unint64_t sub_23BA22C2C()
{
  result = qword_27E19BBE8;
  if (!qword_27E19BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BBE8);
  }

  return result;
}

uint64_t sub_23BA22C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a3;
  v49 = a2;
  v51 = a1;
  v54 = sub_23BBDA288();
  OUTLINED_FUNCTION_3_2();
  v47 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = type metadata accessor for SubscriptionOptionSectionAccessorySubview();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BB90);
  OUTLINED_FUNCTION_13_0(v17);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  OUTLINED_FUNCTION_3_2();
  v50 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v25 = v24 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_2();
  v48 = v27;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v47 - v29;
  __swift_storeEnumTagSinglePayload(a5, 1, 1, v12);
  v52 = *(type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(0) + 20);
  __swift_storeEnumTagSinglePayload(a5 + v52, 1, 1, v12);
  v31 = *(type metadata accessor for SubscriptionStoreContentConfiguration.Context.SectionContext(0) + 20);
  v53 = a5;
  v32 = (a5 + v31);
  v33 = v55;
  *v32 = v49;
  v32[1] = v33;
  (*(v50 + 16))(v25, v51, a4);
  sub_23BBDD188();
  v49 = a4;
  v55 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v34 = (v47 + 8);
  while (1)
  {
    sub_23BBDD688();
    OUTLINED_FUNCTION_5_15(v20);
    if (v35)
    {
      break;
    }

    OUTLINED_FUNCTION_0_22();
    sub_23BA24A08(v20, v16, v36);
    sub_23BBDC1D8();
    sub_23BA23F8C();
    sub_23BBDA298();
    (*v34)(v11, v54);
    if (v56 == 2)
    {
      OUTLINED_FUNCTION_1_23();
      sub_23BA24130(v16, v37);
    }

    else if (v56)
    {
      v38 = v12;
      v39 = v30;
      v41 = v52;
      v40 = v53;
      sub_23B979910(v53 + v52, &qword_27E19BB90);
      OUTLINED_FUNCTION_0_22();
      sub_23BA24A08(v16, v40 + v41, v42);
      v43 = v40 + v41;
      v30 = v39;
      v12 = v38;
      __swift_storeEnumTagSinglePayload(v43, 0, 1, v38);
    }

    else
    {
      v44 = v53;
      sub_23B979910(v53, &qword_27E19BB90);
      OUTLINED_FUNCTION_0_22();
      sub_23BA24A08(v16, v44, v45);
      __swift_storeEnumTagSinglePayload(v44, 0, 1, v12);
    }
  }

  (*(v50 + 8))(v51, v49);
  return (*(v48 + 8))(v30, v55);
}

uint64_t sub_23BA230E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for StoreContentAdapter();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  sub_23BB69DD4(a3, &v16 - v13);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a1;
  v14[7] = a2;

  swift_getWitnessTable();
  return sub_23BBDBE08();
}

uint64_t sub_23BA23214(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v20[-v14];
  bzero(v20, 0x157uLL);
  sub_23BB7E3F0();
  v17 = v16;
  sub_23B979910(v20, &qword_27E19A528);
  a2(v17);

  sub_23B9D2D88(v12, a5, a7);
  v18 = *(v10 + 8);
  v18(v12, a5);
  sub_23B9D2D88(v15, a5, a7);
  return (v18)(v15, a5);
}

void *sub_23BA233A0@<X0>(uint64_t a1@<X8>)
{
  sub_23BA23FE0();
  sub_23BBDA958();
  v2 = __dst[0];
  sub_23BA24034();
  sub_23BBDA958();
  sub_23BA24088();
  sub_23BBDA958();
  sub_23BA1D8E8();
  sub_23BBDA958();
  sub_23BA240DC();
  sub_23BBDA958();
  memcpy(__dst, __src, sizeof(__dst));
  sub_23B9DC994();
  sub_23BBDA958();
  sub_23BA17678();
  sub_23BBDA958();
  *a1 = v2;
  result = memcpy((a1 + 264), __dst, 0x49uLL);
  *(a1 + 337) = v4;
  *(a1 + 338) = v4;
  *(a1 + 342) = v5;
  return result;
}

uint64_t sub_23BA234E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  *&v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BC80);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BC88);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  *&v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BC90);
  MEMORY[0x28223BE20](v49);
  v11 = &v47 - v10;
  *&v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BC98);
  MEMORY[0x28223BE20](v50);
  v13 = &v47 - v12;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BCA0);
  MEMORY[0x28223BE20](v51);
  v15 = &v47 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BCA8);
  MEMORY[0x28223BE20](v52);
  v53 = &v47 - v16;
  sub_23B989ECC(v3, v58, &qword_27E19A528);
  if (v59[0])
  {
    v17 = v58[0];
    sub_23B9ED050(v58);
  }

  else
  {
    sub_23B979910(v58, &qword_27E19A528);
    v17 = 3;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BCB0);
  (*(*(v18 - 8) + 16))(v6, v48, v18);
  v6[*(v4 + 36)] = v17;
  sub_23B989ECC(v3, v58, &qword_27E19A528);
  if (v59[0])
  {
    sub_23B9ECFF4(v59, v57);
    sub_23B9ED050(v58);
  }

  else
  {
    sub_23B979910(v58, &qword_27E19A528);
    memset(v57, 0, 48);
  }

  v19 = &v9[*(v7 + 36)];
  v20 = *&v57[16];
  *v19 = *v57;
  *(v19 + 1) = v20;
  *(v19 + 2) = *&v57[32];
  sub_23B989918(v6, v9, &qword_27E19BC80);
  sub_23B989ECC(v3, v58, &qword_27E19A528);
  if (v59[0])
  {
    sub_23BA24CBC(&v60, v57);
    sub_23B9ED050(v58);
  }

  else
  {
    sub_23B979910(v58, &qword_27E19A528);
    memset(v57, 0, 24);
    *&v57[24] = 1;
    bzero(&v57[32], 0x88uLL);
  }

  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  memcpy((v22 + 16), v57, 0xA8uLL);
  sub_23B989918(v9, v11, &qword_27E19BC88);
  v23 = &v11[*(v49 + 36)];
  *v23 = KeyPath;
  v23[1] = sub_23BA24C20;
  v23[2] = v22;
  sub_23B989ECC(v3, v58, &qword_27E19A528);
  if (v59[0])
  {
    sub_23BA1D88C(&v61, v57);
    sub_23B9ED050(v58);
  }

  else
  {
    sub_23B979910(v58, &qword_27E19A528);
    memset(v57, 0, 24);
    *&v57[24] = xmmword_23BBEDA30;
  }

  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  v26 = *&v57[16];
  *(v25 + 16) = *v57;
  *(v25 + 32) = v26;
  *(v25 + 48) = *&v57[32];
  sub_23B989918(v11, v13, &qword_27E19BC90);
  v27 = &v13[*(v50 + 36)];
  *v27 = v24;
  v27[1] = sub_23BA24C74;
  v27[2] = v25;
  sub_23B989ECC(v3, v58, &qword_27E19A528);
  if (v59[0])
  {
    memcpy(v57, v62, 0x49uLL);
    sub_23B9E6BA4(v57, &v55);
    sub_23B9ED050(v58);
    v28 = v57[0];
    v56[0] = *&v57[1];
    *(v56 + 3) = *&v57[4];
    v49 = *&v57[24];
    v50 = *&v57[8];
    v47 = *&v57[56];
    v48 = *&v57[40];
    v29 = v57[72];
  }

  else
  {
    sub_23B979910(v58, &qword_27E19A528);
    v28 = 0;
    v29 = 0;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
  }

  sub_23B989918(v13, v15, &qword_27E19BC98);
  v30 = &v15[*(v51 + 36)];
  *v30 = v28;
  *(v30 + 1) = v56[0];
  *(v30 + 1) = *(v56 + 3);
  v31 = v50;
  *(v30 + 24) = v49;
  *(v30 + 8) = v31;
  v32 = v48;
  *(v30 + 56) = v47;
  *(v30 + 40) = v32;
  v30[72] = v29;
  sub_23B989ECC(v3, v58, &qword_27E19A528);
  if (v59[0])
  {
    v33 = v62[73];
    sub_23B9ED050(v58);
  }

  else
  {
    sub_23B979910(v58, &qword_27E19A528);
    v33 = 3;
  }

  v34 = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  v36 = v15;
  v37 = v53;
  sub_23B989918(v36, v53, &qword_27E19BCA0);
  v38 = (v37 + *(v52 + 36));
  *v38 = v34;
  v38[1] = sub_23BA24C90;
  v38[2] = v35;
  sub_23B989ECC(v3, v58, &qword_27E19A528);
  if (v59[0])
  {
    v39 = v63;
    v40 = v64;
    sub_23B9ED050(v58);
    v41 = v39 | (v40 << 32);
  }

  else
  {
    sub_23B979910(v58, &qword_27E19A528);
    v41 = 3;
  }

  v42 = swift_getKeyPath();
  v43 = swift_allocObject();
  *(v43 + 20) = BYTE4(v41);
  *(v43 + 16) = v41;
  v44 = v54;
  sub_23B989918(v37, v54, &qword_27E19BCA8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BCB8);
  v46 = (v44 + *(result + 36));
  *v46 = v42;
  v46[1] = sub_23BA24CAC;
  v46[2] = v43;
  return result;
}

uint64_t sub_23BA23CEC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  sub_23B9AF0F0(v2 + 16, v15);
  sub_23B9C9234(v15, &v17);
  if (*(&v18 + 1) >= 6uLL)
  {
    sub_23B97B104(v15);
    sub_23B98473C(&v17, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v7 = a1();
    (*(v6 + 16))(&v12, v7 & 1, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v12 = v15[0];
    v13 = v15[1];
    v14 = v16;
    sub_23B9C9290(&v17);
  }

  v17 = v12;
  v18 = v13;
  v19 = v14;
  memcpy(a2, v2, 0x157uLL);
  return sub_23BA2497C(&v17, a2 + 16);
}

uint64_t sub_23BA23E14@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E197738 != -1)
  {
    swift_once();
  }

  return sub_23B9B73EC(&unk_27E19BA20, a1);
}

uint64_t sub_23BA23E80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199668);
  __swift_allocate_value_buffer(v0, qword_27E19BB78);
  v1 = __swift_project_value_buffer(v0, qword_27E19BB78);
  v2 = type metadata accessor for SubscriptionStoreContentConfiguration.Context(0);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_23BA23EFC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E197740 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199668);
  v3 = __swift_project_value_buffer(v2, qword_27E19BB78);
  return sub_23B989ECC(v3, a1, &qword_27E199668);
}

unint64_t sub_23BA23F8C()
{
  result = qword_27E19BBF0;
  if (!qword_27E19BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BBF0);
  }

  return result;
}

unint64_t sub_23BA23FE0()
{
  result = qword_27E19BBF8;
  if (!qword_27E19BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BBF8);
  }

  return result;
}

unint64_t sub_23BA24034()
{
  result = qword_27E19BC00;
  if (!qword_27E19BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BC00);
  }

  return result;
}

unint64_t sub_23BA24088()
{
  result = qword_27E19BC08;
  if (!qword_27E19BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BC08);
  }

  return result;
}

unint64_t sub_23BA240DC()
{
  result = qword_27E19BC10;
  if (!qword_27E19BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BC10);
  }

  return result;
}

uint64_t sub_23BA24130(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BA24188()
{

  return swift_deallocObject();
}

uint64_t sub_23BA241E4()
{
  v3 = OUTLINED_FUNCTION_18_9();
  type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(v3);
  OUTLINED_FUNCTION_10_2();
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_18_0(*(v0 + *(v2 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

void sub_23BA24288(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19();
  type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(0);
  OUTLINED_FUNCTION_10_2();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_15();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }
}

unint64_t sub_23BA2431C()
{
  result = type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(319);
  if (v1 <= 0x3F)
  {
    result = sub_23B975E04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BA243D4()
{
  v3 = OUTLINED_FUNCTION_18_9();
  type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(v3);
  OUTLINED_FUNCTION_10_2();
  if (*(v5 + 84) == v1)
  {

    return __swift_getEnumTagSinglePayload(v0, v1, v4);
  }

  else
  {
    v7 = *(v0 + *(v2 + 20) + 8);
    if (v7 > 1)
    {
      return (v7 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_23BA24484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19();
  type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0);
  OUTLINED_FUNCTION_10_2();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_15();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = -v4;
  }
}

uint64_t sub_23BA2453C()
{
  result = type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BA245D8()
{
  result = type metadata accessor for SubscriptionStoreContentConfiguration.Context.GroupContext(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SubscriptionStoreContentConfiguration.Context.SectionContext(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BA24660(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 24));
  }

  type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(0);
  v5 = OUTLINED_FUNCTION_15_0(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_23BA246EC()
{
  OUTLINED_FUNCTION_19();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(0);
    v5 = OUTLINED_FUNCTION_15_0(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

unint64_t sub_23BA24784()
{
  result = sub_23B975E04();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23BA2481C()
{
  result = qword_27E19BC68;
  if (!qword_27E19BC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BC20);
    sub_23BA248A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BC68);
  }

  return result;
}

unint64_t sub_23BA248A0()
{
  result = qword_27E19BC70;
  if (!qword_27E19BC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BC18);
    sub_23BA24924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BC70);
  }

  return result;
}

unint64_t sub_23BA24924()
{
  result = qword_27E19B1F8;
  if (!qword_27E19B1F8)
  {
    sub_23BBDC1E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B1F8);
  }

  return result;
}

uint64_t sub_23BA24A08(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23BA24A68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 343))
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

uint64_t sub_23BA24ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 328) = 0;
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
    *(result + 342) = 0;
    *(result + 340) = 0;
    *(result + 336) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 343) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 343) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_23BA24BA8()
{
  v1 = v0[5];
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_10;
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  }

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  }

  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  }

LABEL_10:

  return swift_deallocObject();
}

uint64_t sub_23BA24C30()
{
  if (*(v0 + 40) >= 4uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

unint64_t sub_23BA24D1C()
{
  result = qword_27E19BCC0;
  if (!qword_27E19BCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BCB8);
    sub_23BA24DD4();
    sub_23B97B518(&qword_27E19B4F0, &qword_27E19B4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BCC0);
  }

  return result;
}

unint64_t sub_23BA24DD4()
{
  result = qword_27E19BCC8;
  if (!qword_27E19BCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BCA8);
    sub_23BA24E8C();
    sub_23B97B518(&qword_27E19BD38, &qword_27E19BD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BCC8);
  }

  return result;
}

unint64_t sub_23BA24E8C()
{
  result = qword_27E19BCD0;
  if (!qword_27E19BCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BCA0);
    sub_23BA24F18();
    sub_23BA25274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BCD0);
  }

  return result;
}

unint64_t sub_23BA24F18()
{
  result = qword_27E19BCD8;
  if (!qword_27E19BCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BC98);
    sub_23BA24FD0();
    sub_23B97B518(&qword_27E19BD20, &qword_27E19BD28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BCD8);
  }

  return result;
}

unint64_t sub_23BA24FD0()
{
  result = qword_27E19BCE0;
  if (!qword_27E19BCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BC90);
    sub_23BA25088();
    sub_23B97B518(&qword_27E19BD10, &qword_27E19BD18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BCE0);
  }

  return result;
}

unint64_t sub_23BA25088()
{
  result = qword_27E19BCE8;
  if (!qword_27E19BCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BC88);
    sub_23BA25114();
    sub_23BA25220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BCE8);
  }

  return result;
}

unint64_t sub_23BA25114()
{
  result = qword_27E19BCF0;
  if (!qword_27E19BCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BC80);
    sub_23B97B518(&qword_27E19BCF8, &qword_27E19BCB0);
    sub_23BA251CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BCF0);
  }

  return result;
}

unint64_t sub_23BA251CC()
{
  result = qword_27E19BD00;
  if (!qword_27E19BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BD00);
  }

  return result;
}

unint64_t sub_23BA25220()
{
  result = qword_27E19BD08;
  if (!qword_27E19BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BD08);
  }

  return result;
}

unint64_t sub_23BA25274()
{
  result = qword_27E19BD30;
  if (!qword_27E19BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BD30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_12()
{

  return sub_23B989ECC(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_15_11(uint64_t a1)
{
  v5 = v1 + *(a1 + 36);

  return sub_23B989918(v3, v5, v2);
}

uint64_t OUTLINED_FUNCTION_19_6()
{

  return sub_23B989918(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_20_5()
{

  return type metadata accessor for SubscriptionOptionGroupAccessorySubview();
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t Product.TaskState.product.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for Product.TaskState(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  sub_23BA2D7D8(v2, v6 - v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = sub_23BBDCDB8();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_1_4();
    (*(v10 + 32))(a1, v7, v9);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v9);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
    OUTLINED_FUNCTION_5_16();
    return sub_23BA25D24(v7, v12);
  }
}

void sub_23BA25540()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v4 = _s16TaskViewModifierVMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  sub_23BBDD368();
  OUTLINED_FUNCTION_3();
  (*(v9 + 16))(v8, v1);
  v10 = *(v4 + 28);
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_3();
  (*(v11 + 16))(v8 + v10, v3);
  OUTLINED_FUNCTION_34_1();
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;

  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA25668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B9ADE04();
  *a1 = result;
  return result;
}

void sub_23BA256BC()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B7B8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  sub_23BBDD368();
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_61_0();
  v6(v5);
  v7 = *(v3 + 52);
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_3();
  (*(v8 + 16))(v0 + v7, v2);
  OUTLINED_FUNCTION_35_1();

  OUTLINED_FUNCTION_59_0();
  sub_23B9846E8(v0, &qword_27E19B7B8);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BA257DC()
{
  OUTLINED_FUNCTION_10_0();
  v35 = v1;
  v36 = v2;
  v40 = v3;
  v4 = *v0;
  v33 = v5;
  v34 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BE98);
  OUTLINED_FUNCTION_7();
  v38 = v6;
  v39 = v7;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  v37 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BA18);
  OUTLINED_FUNCTION_7();
  v12 = v11;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = sub_23BBD99C8();
  OUTLINED_FUNCTION_7();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BEA0);
  OUTLINED_FUNCTION_7();
  v25 = v24;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v32 - v27;
  sub_23BA2DC74(v33, v35);
  sub_23BBD9A18();
  (*(v18 + 104))(v22, *MEMORY[0x277CBCBC8], v16);
  (*(v12 + 104))(v15, *MEMORY[0x277CBCBE8], v10);
  sub_23BBD9A38();
  sub_23BBD9A88();
  (*(v12 + 8))(v15, v10);
  (*(v18 + 8))(v22, v16);

  v29 = sub_23B97B518(&qword_27E19BEB0, &qword_27E19BEA0);
  MEMORY[0x23EEB2270](v23, v29);
  (*(v25 + 8))(v28, v23);
  sub_23BBD99E8();
  v30 = OUTLINED_FUNCTION_49_0();
  v31(v30);
  OUTLINED_FUNCTION_9_1();
}

uint64_t Product.CollectionTaskState.products.getter()
{
  if (*(v0 + 16) == 1)
  {
  }

  else
  {
    return 0;
  }
}

void View.storeProductTask(for:priority:action:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v2 = _s16TaskViewModifierVMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  sub_23BBDD368();
  OUTLINED_FUNCTION_3();
  (*(v7 + 16))(v6, v1);
  v8 = *(v2 + 28);
  v9 = *MEMORY[0x277CDD0B0];
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_3();
  (*(v10 + 104))(v6 + v8, v9);
  OUTLINED_FUNCTION_34_1();
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;

  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA25CD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B9ADE04();
  *a1 = result;
  return result;
}

uint64_t sub_23BA25D24(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

void View.storeProductsTask<A>(for:priority:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_10_0();
  v63 = v22;
  v24 = v23;
  v26 = v25;
  v61 = v28;
  v62 = v27;
  v59 = v29;
  v60 = v30;
  v56 = v32;
  v57 = v31;
  v58 = sub_23BBDC5F8();
  OUTLINED_FUNCTION_7();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_1();
  v38 = v37 - v36;
  v55[0] = a21;
  v55[1] = v24;
  v55[2] = _s6TaskIDOMa();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5_0();
  v40 = sub_23BBDD368();
  OUTLINED_FUNCTION_7();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3_1();
  v46 = v45 - v44;
  v47 = _s26CollectionTaskViewModifierVMa();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_0();
  v49 = MEMORY[0x28223BE20](v48);
  v51 = v55 - v50;
  (*(v42 + 16))(v46, v56, v40, v49);
  OUTLINED_FUNCTION_1_4();
  (*(v52 + 16))(v21, v57, v26);
  swift_storeEnumTagMultiPayload();
  (*(v34 + 104))(v38, *MEMORY[0x277CDD0B0], v58);
  sub_23BA26048(v46, v21, v59, v60, v38, v51);

  MEMORY[0x23EEB43C0](v51, v62, v47, v63);
  v53 = OUTLINED_FUNCTION_69();
  v54(v53);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA26048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_23BBDD368();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = _s26CollectionTaskViewModifierVMa();
  v14 = v13[11];
  v15 = _s6TaskIDOMa();
  (*(*(v15 - 8) + 32))(a6 + v14, a2, v15);
  v16 = (a6 + v13[12]);
  *v16 = a3;
  v16[1] = a4;
  v17 = v13[13];
  v18 = sub_23BBDC5F8();
  v19 = *(*(v18 - 8) + 32);

  return v19(a6 + v17, a5, v18);
}

void sub_23BA261A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_10_0();
  v62 = v22;
  v24 = v23;
  v60 = v26;
  v61 = v25;
  v58 = v27;
  v59 = v28;
  v54 = v30;
  v55 = v29;
  v57 = v31;
  v56 = sub_23BBDC5F8();
  OUTLINED_FUNCTION_7();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_1();
  v37 = v36 - v35;
  v53[1] = a22;
  v53[2] = a21;
  v53[3] = _s6TaskIDOMa();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  v40 = v53 - v39;
  v41 = sub_23BBDD368();
  OUTLINED_FUNCTION_7();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_1();
  v47 = v46 - v45;
  v48 = _s26CollectionTaskViewModifierVMa();
  OUTLINED_FUNCTION_7();
  v50 = v49;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_5_0();
  (*(v43 + 16))(v47, v54, v41);
  OUTLINED_FUNCTION_1_4();
  (*(v52 + 16))(v40, v55, v24);
  swift_storeEnumTagMultiPayload();
  (*(v33 + 16))(v37, v57, v56);
  sub_23BA26048(v47, v40, v58, v59, v37, a21);

  MEMORY[0x23EEB43C0](a21, v61, v48, v62);
  (*(v50 + 8))(a21, v48);
  OUTLINED_FUNCTION_9_1();
}

void View.storeSubscriptionsTask(groupID:priority:action:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B7B8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  sub_23BBDD368();
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_61_0();
  v4(v3);
  v5 = *(v1 + 52);
  v6 = *MEMORY[0x277CDD0B0];
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_3();
  (*(v7 + 104))(v0 + v5, v6);
  OUTLINED_FUNCTION_35_1();

  OUTLINED_FUNCTION_59_0();
  sub_23B9846E8(v0, &qword_27E19B7B8);
  OUTLINED_FUNCTION_9_1();
}

unint64_t sub_23BA26560()
{
  result = sub_23B9EE60C();
  if (v1 <= 0x3F)
  {
    result = sub_23BBDCDB8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8StoreKit7ProductV01_aB8_SwiftUIE19CollectionTaskStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_23BA265F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_23BA26630(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23BA26674(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_23BA2669C()
{
  _s16TaskViewModifierVMa(255);
  OUTLINED_FUNCTION_18_1();
  sub_23BBDA358();
  sub_23BA2DC74(&qword_27E1991C8, _s16TaskViewModifierVMa);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BA26720()
{
  _s26CollectionTaskViewModifierVMa();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDA358();
  OUTLINED_FUNCTION_28_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BA26790()
{
  v0 = OUTLINED_FUNCTION_48_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_18_1();
  sub_23BBDA358();
  sub_23B97B518(&qword_27E19B7D0, &qword_27E19B7B8);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

unint64_t sub_23BA26820()
{
  result = sub_23BBDD368();
  if (v1 <= 0x3F)
  {
    result = _s6TaskIDOMa();
    if (v2 <= 0x3F)
    {
      result = sub_23B975E04();
      if (v3 <= 0x3F)
      {
        result = sub_23BBDC5F8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23BA268DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_23BBDD368();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  if (*(v9 + 64) <= 0x10uLL)
  {
    v10 = 16;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = sub_23BBDC5F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v8 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = v8;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v12 + 80);
  if (!a2)
  {
    return 0;
  }

  v17 = v11;
  v18 = *(v9 + 80) & 0xF8 | 7;
  v19 = *(v7 + 64) + v18;
  v20 = v10 + 8;
  v21 = v16 + 16;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v22 = ((v21 + ((v20 + (v19 & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + *(*(v11 - 8) + 64);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_13;
  }

  v26 = ((a2 - v15 + ~(-1 << v23)) >> v23) + 1;
  if (HIWORD(v26))
  {
    v24 = *(a1 + v22);
    if (v24)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v26 <= 0xFF)
    {
      if (v26 < 2)
      {
        goto LABEL_31;
      }

LABEL_13:
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_31;
      }

LABEL_21:
      v27 = (v24 - 1) << v23;
      if (v22 > 3)
      {
        v27 = 0;
      }

      if (v22)
      {
        if (v22 <= 3)
        {
          v28 = v22;
        }

        else
        {
          v28 = 4;
        }

        switch(v28)
        {
          case 2:
            v29 = *a1;
            break;
          case 3:
            v29 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v29 = *a1;
            break;
          default:
            v29 = *a1;
            break;
        }
      }

      else
      {
        v29 = 0;
      }

      return v15 + (v29 | v27) + 1;
    }

    v24 = *(a1 + v22);
    if (*(a1 + v22))
    {
      goto LABEL_21;
    }
  }

LABEL_31:
  if (v8 == v15)
  {
    v30 = a1;
    v13 = v8;
    v17 = v6;
LABEL_38:

    return __swift_getEnumTagSinglePayload(v30, v13, v17);
  }

  v31 = ((v20 + ((a1 + v19) & ~v18)) & 0xFFFFFFFFFFFFFFF8);
  if ((v14 & 0x80000000) != 0)
  {
    v30 = (v31 + v21) & ~v16;
    goto LABEL_38;
  }

  v32 = *v31;
  if (*v31 >= 0xFFFFFFFF)
  {
    LODWORD(v32) = -1;
  }

  return (v32 + 1);
}

void sub_23BA26BD0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_23BBDD368();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  if (*(v11 + 64) <= 0x10uLL)
  {
    v12 = 16;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = sub_23BBDC5F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v10 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = v10;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v11 + 80) & 0xF8 | 7;
  v19 = *(v9 + 64) + v18;
  v20 = *(v14 + 80);
  v21 = ((v20 + 16 + ((v12 + 8 + (v19 & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v20) + *(*(v13 - 8) + 64);
  v22 = 8 * v21;
  if (a3 <= v17)
  {
    v23 = 0;
  }

  else if (v21 <= 3)
  {
    v27 = ((a3 - v17 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v27))
    {
      v23 = 4;
    }

    else
    {
      if (v27 < 0x100)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      if (v27 >= 2)
      {
        v23 = v28;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v23 = 1;
  }

  if (v17 < a2)
  {
    v24 = ~v17 + a2;
    if (v21 < 4)
    {
      v25 = (v24 >> v22) + 1;
      if (v21)
      {
        v29 = v24 & ~(-1 << v22);
        bzero(a1, v21);
        if (v21 == 3)
        {
          *a1 = v29;
          a1[2] = BYTE2(v29);
        }

        else if (v21 == 2)
        {
          *a1 = v29;
        }

        else
        {
          *a1 = v24;
        }
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v24;
      v25 = 1;
    }

    switch(v23)
    {
      case 1:
        a1[v21] = v25;
        return;
      case 2:
        *&a1[v21] = v25;
        return;
      case 3:
        goto LABEL_54;
      case 4:
        *&a1[v21] = v25;
        return;
      default:
        return;
    }
  }

  v26 = ~v18;
  switch(v23)
  {
    case 1:
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_54:
      __break(1u);
      JUMPOUT(0x23BA26F40);
    case 4:
      *&a1[v21] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v10 == v17)
      {
        v30 = a1;
        v31 = a2;
        v15 = v10;
        v13 = v8;
      }

      else
      {
        v32 = ((v12 + 8 + (&a1[v19] & v26)) & 0xFFFFFFFFFFFFFFF8);
        if ((v16 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v33 = a2 & 0x7FFFFFFF;
            v32[1] = 0;
          }

          else
          {
            v33 = (a2 - 1);
          }

          *v32 = v33;
          return;
        }

        v30 = (v32 + v20 + 16) & ~v20;
        v31 = a2;
      }

      __swift_storeEnumTagSinglePayload(v30, v31, v15, v13);
      return;
  }
}

uint64_t sub_23BA26F68()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BA26FD4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_23BA27108(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x23BA272CCLL);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_23BA27308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_3();
  v6 = sub_23BBDD368();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_23BBDC5F8();
    v8 = v3 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(v3 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_23BA273EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_12_3();
  result = sub_23BBDD368();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_23BBDC5F8();
    v10 = v4 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_23BA274B8()
{
  sub_23BBDD368();
  if (v0 <= 0x3F)
  {
    sub_23B975E04();
    if (v1 <= 0x3F)
    {
      sub_23BBDC5F8();
      if (v2 <= 0x3F)
      {
        sub_23BA27574();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23BA27574()
{
  if (!qword_27E19BE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199218);
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19BE68);
    }
  }
}

void sub_23BA275D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_10_0();
  v44 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BE70);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_0();
  sub_23BBDD368();
  OUTLINED_FUNCTION_3();
  (*(v39 + 16))(v21, v28);
  v40 = v37[13];
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_3();
  (*(v41 + 16))(v21 + v40, v30);
  v42 = v21 + v37[11];
  *v42 = v36;
  *(v42 + 8) = v34;
  *(v42 + 16) = v32 & 1;
  v43 = (v21 + v37[12]);
  *v43 = v26;
  v43[1] = v24;
  sub_23BA2D7CC();

  MEMORY[0x23EEB43C0](v21, v44, v37, a21);
  sub_23B9846E8(v21, &qword_27E19BE70);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA27740@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23BBDC518();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277CDCFF8])
  {
    (*(v5 + 8))(a1, v4);
    (*(v5 + 96))(v8, v4);
    *a2 = *v8;
    type metadata accessor for Product.TaskState(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v9 == *MEMORY[0x277CDD008])
  {
    (*(v5 + 8))(a1, v4);
    (*(v5 + 96))(v8, v4);
    v10 = sub_23BBDCDB8();
    (*(*(v10 - 8) + 32))(a2, v8, v10);
    type metadata accessor for Product.TaskState(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v9 == *MEMORY[0x277CDD000] || v9 == *MEMORY[0x277CDCFF0])
  {
    (*(v5 + 8))(a1, v4);
    type metadata accessor for Product.TaskState(0);
    return swift_storeEnumTagMultiPayload();
  }

  v12 = sub_23BBDC608();
  sub_23BA2DC74(&qword_27E19BE90, MEMORY[0x277CDD0D0]);
  v13 = swift_allocError();
  (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277CDD0C8], v12);
  v15 = *(v5 + 8);
  v15(a1, v4);
  *a2 = v13;
  type metadata accessor for Product.TaskState(0);
  swift_storeEnumTagMultiPayload();
  return (v15)(v8, v4);
}

void sub_23BA27AA0(uint64_t a1@<X8>)
{
  v2 = sub_23BBDCDB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - v7;
  v9 = sub_23BBDC568();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_23BBDC558();
  if (v13)
  {
    *a1 = v13;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    return;
  }

  v62 = v2;
  v63 = v8;
  v48 = a1;
  sub_23BBDC578();

  v49 = MEMORY[0x277D84F90];
  sub_23B9B7C5C();
  v64 = v14;
  v15 = sub_23BBDC578();
  v16 = 0;
  v17 = *(v15 + 16);
  v60 = v10 + 16;
  v61 = v17;
  v59 = v10 + 88;
  v58 = *MEMORY[0x277CDD028];
  v57 = *MEMORY[0x277CDD020];
  v55 = *MEMORY[0x277CDD030];
  v56 = (v10 + 96);
  v18 = (v3 + 32);
  v53 = v12;
  v54 = v3;
  v50 = v3 + 8;
  v51 = (v3 + 16);
  v52 = (v3 + 32);
  while (1)
  {
    if (v61 == v16)
    {

      v39 = v48;
      v40 = v49;
      *v48 = v64;
      v39[1] = v40;
      v41 = 1;
LABEL_19:
      *(v39 + 16) = v41;
      return;
    }

    if (v16 >= *(v15 + 16))
    {
      break;
    }

    (*(v10 + 16))(v12, v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, v9);
    v19 = (*(v10 + 88))(v12, v9);
    if (v19 == v58)
    {

      (*(v10 + 8))(v12, v9);
      v39 = v48;
      *v48 = 0;
      v39[1] = 0;
      v41 = 2;
      goto LABEL_19;
    }

    if (v19 == v57)
    {
      (*v56)(v12, v9);
      v30 = *v12;
      v47 = v12[1];
      v31 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23B9B7B8C();
        v49 = v37;
      }

      v32 = *(v49 + 16);
      if (v32 >= *(v49 + 24) >> 1)
      {
        sub_23B9B7B8C();
        v49 = v38;
      }

      ++v16;
      v33 = v49;
      *(v49 + 16) = v32 + 1;
      v34 = v33 + 16 * v32;
      v35 = v47;
      *(v34 + 32) = v30;
      *(v34 + 40) = v35;
      v9 = v31;
    }

    else
    {
      if (v19 != v55)
      {

        v42 = sub_23BBDC608();
        sub_23BA2DC74(&qword_27E19BE90, MEMORY[0x277CDD0D0]);
        v43 = swift_allocError();
        (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277CDD0C8], v42);
        v45 = v48;
        *v48 = v43;
        v45[1] = 0;
        *(v45 + 16) = 0;
        (*(v10 + 8))(v12, v9);
        return;
      }

      v20 = v9;
      (*v56)(v12, v9);
      v21 = *v18;
      v22 = v63;
      v23 = v12;
      v24 = v62;
      (*v18)(v63, v23, v62);
      (*v51)(v5, v22, v24);
      v25 = *(v64 + 16);
      if (v25 >= *(v64 + 24) >> 1)
      {
        sub_23B9B7C5C();
        v64 = v36;
      }

      v26 = v54;
      v27 = v62;
      (*(v54 + 8))(v63, v62);
      v28 = v64;
      *(v64 + 16) = v25 + 1;
      v29 = v27;
      v18 = v52;
      v21(v28 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25, v5, v29);
      ++v16;
      v9 = v20;
      v12 = v53;
    }
  }

  __break(1u);
}

void sub_23BA2803C()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v34 = v2;
  v35 = v3;
  v33 = *(v0 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v32[0] = v6 - v5;
  v32[1] = v4;
  v7 = _s6TaskIDOMa();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = (v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = v32 - v14;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_7();
  v32[2] = v16;
  OUTLINED_FUNCTION_7_0();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v32 - v19;
  v22 = (v32 + *(v21 + 48) - v19);
  v23 = *(v9 + 16);
  v23(v32 - v19, v34, v7, v18);
  (v23)(v22, v35, v7);
  OUTLINED_FUNCTION_49_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v23)(v12, v20, v7);
    v25 = *v12;
    v24 = v12[1];
    OUTLINED_FUNCTION_61_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v25 != *v22 || v24 != v22[1])
      {
        sub_23BBDDA88();
      }
    }

    else
    {
    }
  }

  else
  {
    (v23)(v15, v20, v7);
    OUTLINED_FUNCTION_61_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v33 + 8))(v15, v1);
    }

    else
    {
      v27 = v33;
      v28 = v32[0];
      (*(v33 + 32))(v32[0], v22, v1);
      sub_23BBDCF38();
      v29 = *(v27 + 8);
      v29(v28, v1);
      v29(v15, v1);
    }
  }

  v30 = OUTLINED_FUNCTION_49_0();
  v31(v30);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA283FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = _s16TaskViewModifierVMa(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = (v3 + *(v9 + 28));
  v12 = *v10;
  v11 = v10[1];
  sub_23BA2D7D8(v3, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_23BA2DCBC(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BE78) + 36));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A690);
  v17 = *(v16 + 36);
  v18 = sub_23BBDD368();
  (*(*(v18 - 8) + 16))(&v15[v17], v3, v18);
  v19 = &v15[*(v16 + 40)];
  *v19 = v12;
  *(v19 + 1) = v11;
  *v15 = &unk_23BBEE418;
  *(v15 + 1) = v14;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BE80);
  (*(*(v20 - 8) + 16))(a2, a1, v20);
}

uint64_t sub_23BA2860C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for Product.TaskState(0);
  v1[4] = swift_task_alloc();
  v2 = sub_23BBDA928();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = sub_23BBDD308();
  v1[9] = sub_23BBDD2F8();
  v4 = sub_23BBDD2D8();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x2822009F8](sub_23BA28734, v4, v3);
}

uint64_t sub_23BA28734()
{
  v25 = v0;
  v1 = *(v0 + 16);
  v2 = _s16TaskViewModifierVMa(0);
  v3 = v1 + *(v2 + 32);
  v4 = *v3;
  if (*(v3 + 8) != 1)
  {

    sub_23BBDD5A8();
    v5 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v4, 0);
    v6 = OUTLINED_FUNCTION_31_1();
    v7(v6);
    LOBYTE(v4) = *(v0 + 136);
  }

  if (v4 == 2 || (v4 & 1) == 0)
  {
    v15 = *(v0 + 16);
    v16 = swift_task_alloc();
    *(v0 + 104) = v16;
    *(v16 + 16) = v15;
    v17 = swift_task_alloc();
    *(v0 + 112) = v17;
    *(v17 + 16) = v15;
    *(v0 + 120) = sub_23BBDD2F8();
    v18 = swift_task_alloc();
    *(v0 + 128) = v18;
    *v18 = v0;
    v18[1] = sub_23BA28D44;
    OUTLINED_FUNCTION_56_1();

    return MEMORY[0x282200830]();
  }

  else
  {
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 16);
    v9 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v9, qword_27E1BFC88);
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    sub_23BBDD768();
    MEMORY[0x23EEB5890](0xD000000000000015, 0x800000023BBE0D00);
    MEMORY[0x23EEB5890](*(v8 + *(v2 + 20)), *(v8 + *(v2 + 20) + 8));
    MEMORY[0x23EEB5890](0xD000000000000027, 0x800000023BBE0D20);
    v10 = sub_23BBDD578();

    v11 = sub_23BBD9988();

    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24[0] = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_23BA5AB90(0, 0xE000000000000000, v24);
      *(v12 + 12) = 2082;
      v14 = sub_23BA5AB90(0, 0xE000000000000000, v24);

      *(v12 + 14) = v14;
      _os_log_impl(&dword_23B970000, v11, v10, "%{public}s%{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v13, -1, -1);
      MEMORY[0x23EEB6DC0](v12, -1, -1);
    }

    else
    {
    }

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_10();
    v23 = v19;
    v20 = swift_task_alloc();
    *(v0 + 96) = v20;
    *v20 = v0;
    v20[1] = sub_23BA28BA0;
    v21 = OUTLINED_FUNCTION_73(*(v0 + 32));

    return v23(v21);
  }
}

uint64_t sub_23BA28BA0()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  v2 = *(v0 + 32);
  v3 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;

  OUTLINED_FUNCTION_5_16();
  sub_23BA25D24(v2, v5);
  OUTLINED_FUNCTION_43_0();
  v7 = *(v6 + 88);
  v8 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_23BA28CD4, v8, v7);
}

uint64_t sub_23BA28CD4()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_1_16();

  return v0();
}

void sub_23BA28D44()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  OUTLINED_FUNCTION_7_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = *(v3 + 80);
    v8 = *(v3 + 88);

    MEMORY[0x2822009F8](sub_23BA2E470, v7, v8);
  }
}

uint64_t sub_23BA28E7C(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_23BBDC518();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for Product.TaskState(0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BE88);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  sub_23BBDD308();
  v2[15] = sub_23BBDD2F8();
  v6 = sub_23BBDD2D8();
  v2[16] = v6;
  v2[17] = v5;

  return MEMORY[0x2822009F8](sub_23BA29038, v6, v5);
}

uint64_t sub_23BA29038()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 16);
  sub_23BBDC5E8();
  *(v0 + 144) = sub_23BBDC5A8();
  v2 = _s16TaskViewModifierVMa(0);
  *(v0 + 152) = v2;
  v3 = (v1 + *(v2 + 20));
  *(v0 + 160) = *v3;
  *(v0 + 168) = v3[1];
  *(v0 + 224) = *(v2 + 28);
  OUTLINED_FUNCTION_0_23();
  sub_23BA2DC74(v4, v5);
  sub_23BBDD2D8();
  OUTLINED_FUNCTION_12_7();
  v6 = OUTLINED_FUNCTION_53_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23BA29114()
{
  OUTLINED_FUNCTION_3_13();
  v0[22] = sub_23BBDC5C8();

  v1 = v0[16];
  v2 = v0[17];

  return MEMORY[0x2822009F8](sub_23BA29190, v1, v2);
}

uint64_t sub_23BA29190()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_41_0();
  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[2];
  OUTLINED_FUNCTION_30_1();
  sub_23BA257DC();
  v5 = (v4 + *(v1 + 24));
  v0[23] = *v5;
  v0[24] = v5[1];
  sub_23BBDC508();
  sub_23BA27740(v3, v2);
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_23BA292E8;
  OUTLINED_FUNCTION_73(v0[11]);
  OUTLINED_FUNCTION_80();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_23BA292E8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_41_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v3 = v2;
  v4 = *(v1 + 88);
  v5 = *v0;
  *v3 = *v0;

  OUTLINED_FUNCTION_5_16();
  sub_23BA25D24(v4, v6);
  v7 = *MEMORY[0x277CDD008];
  *(v2 + 228) = *MEMORY[0x277CDCFF8];
  *(v2 + 232) = v7;
  v8 = *MEMORY[0x277CDCFF0];
  v9 = MEMORY[0x277CDD0C8];
  *(v2 + 236) = *MEMORY[0x277CDD000];
  *(v2 + 240) = v8;
  *(v2 + 244) = *v9;
  v10 = swift_task_alloc();
  *(v2 + 208) = v10;
  *v10 = v5;
  OUTLINED_FUNCTION_25_3(v10);
  OUTLINED_FUNCTION_80();

  return MEMORY[0x28210E838](v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_23BA2948C()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_42_0();
  v2 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v3 = v2;

  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 136);
  v6 = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_23BA29598, v6, v5);
}

void sub_23BA29598()
{
  if (*(v0 + 248))
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_5_13();

    __asm { BRAA            X1, X16 }
  }

  v3 = *(v0 + 228);
  v4 = *(v0 + 176);
  v5 = *(v0 + 40);
  sub_23BBDC508();
  v6 = OUTLINED_FUNCTION_49_0();
  v7(v6);
  v8 = OUTLINED_FUNCTION_31_1();
  v10 = v9(v8);
  if (v10 == v3)
  {
    v11 = OUTLINED_FUNCTION_46_1();
    v12(v11);
    v13 = OUTLINED_FUNCTION_31_1();
    v14(v13);
    *v4 = *v5;
    OUTLINED_FUNCTION_6_9();
  }

  else if (v10 == *(v0 + 232))
  {
    v15 = OUTLINED_FUNCTION_46_1();
    v16(v15);
    v17 = OUTLINED_FUNCTION_31_1();
    v18(v17);
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_3();
    v19 = OUTLINED_FUNCTION_48_1();
    v20(v19);
    OUTLINED_FUNCTION_6_9();
  }

  else
  {
    if (v10 != *(v0 + 236) && v10 != *(v0 + 240))
    {
      v26 = *(v0 + 72);
      v27 = *(v0 + 48);
      v28 = *(v0 + 24);
      v29 = *(v0 + 32);
      sub_23BBDC608();
      OUTLINED_FUNCTION_1_24();
      sub_23BA2DC74(v30, v31);
      v32 = OUTLINED_FUNCTION_42_1();
      OUTLINED_FUNCTION_1_4();
      (*(v33 + 104))();
      v34 = *(v29 + 8);
      v34(v27, v28);
      *v26 = v32;
      OUTLINED_FUNCTION_70();
      swift_storeEnumTagMultiPayload();
      v35 = OUTLINED_FUNCTION_6_9();
      (v34)(v35);
LABEL_13:
      sub_23BA2DCBC(*(v0 + 72), *(v0 + 80));
      v23 = swift_task_alloc();
      *(v0 + 216) = v23;
      *v23 = v0;
      v23[1] = sub_23BA2995C;
      OUTLINED_FUNCTION_73(*(v0 + 80));
      OUTLINED_FUNCTION_5_13();

      __asm { BRAA            X1, X16 }
    }

    v21 = OUTLINED_FUNCTION_62_0();
    v22(v21);
    OUTLINED_FUNCTION_6_9();
  }

  swift_storeEnumTagMultiPayload();
  goto LABEL_13;
}

uint64_t sub_23BA2995C()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_41_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v3 = v2;
  v4 = *(v1 + 80);
  v5 = *v0;
  *v3 = *v0;

  OUTLINED_FUNCTION_5_16();
  sub_23BA25D24(v4, v6);
  v7 = swift_task_alloc();
  *(v2 + 208) = v7;
  *v7 = v5;
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_80();

  return MEMORY[0x28210E838](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_23BA29AB8(uint64_t a1)
{
  v2 = _s16TaskViewModifierVMa(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_23BBDD318();
  v8 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_23BA2D7D8(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_23BA2DCBC(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_23BB5D2B8();
}

uint64_t sub_23BA29C80()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 16);
  sub_23BBDC5E8();
  *(v0 + 24) = sub_23BBDC5A8();
  v2 = _s16TaskViewModifierVMa(0);
  v3 = (v1 + *(v2 + 20));
  *(v0 + 32) = *v3;
  *(v0 + 40) = v3[1];
  *(v0 + 48) = *(v2 + 28);
  OUTLINED_FUNCTION_0_23();
  sub_23BA2DC74(v4, v5);
  sub_23BBDD2D8();
  OUTLINED_FUNCTION_12_7();
  v6 = OUTLINED_FUNCTION_53_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23BA29D58()
{
  OUTLINED_FUNCTION_3_13();
  sub_23BBDC538();

  OUTLINED_FUNCTION_1_16();

  return v0();
}

uint64_t sub_23BA29DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  swift_getWitnessTable();
  v7 = sub_23BBDAE98();
  v8 = *(a2 + 16);
  v28 = *(a2 + 24);
  v29 = v8;
  v9 = *(a2 + 32);
  v26[2] = v7;
  v27 = v9;
  _s6TaskIDOMa();
  WitnessTable = swift_getWitnessTable();
  v31 = sub_23BBDAAE8();
  v10 = sub_23BBDA358();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v26 - v16;
  v26[1] = *(a2 + 44);
  (*(v5 + 16))(v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2, v15);
  v18 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 2) = v29;
  *(v19 + 3) = v20;
  *(v19 + 4) = v27;
  (*(v5 + 32))(&v19[v18], v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v21 = swift_getWitnessTable();
  sub_23BBDBAE8();

  v22 = swift_getWitnessTable();
  v34 = v21;
  v35 = v22;
  v23 = swift_getWitnessTable();
  sub_23B9D2D88(v13, v10, v23);
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_23B9D2D88(v17, v10, v23);
  return (v24)(v17, v10);
}

uint64_t sub_23BA2A118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_23BBDD308();
  v4[7] = sub_23BBDD2F8();
  v6 = sub_23BBDD2D8();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_23BA2A1B8, v6, v5);
}

uint64_t sub_23BA2A1B8()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = swift_task_alloc();
  v0[10] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v5[5] = v4;
  v6 = swift_task_alloc();
  v0[11] = v6;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v4;
  v0[12] = sub_23BBDD2F8();
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_23BA2A2E0;
  OUTLINED_FUNCTION_56_1();

  return MEMORY[0x282200830]();
}

void sub_23BA2A2E0()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  OUTLINED_FUNCTION_7_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = *(v3 + 64);
    v8 = *(v3 + 72);

    MEMORY[0x2822009F8](sub_23BA2A418, v7, v8);
  }
}

uint64_t sub_23BA2A418()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_1_16();

  return v0();
}

uint64_t sub_23BA2A470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v5[30] = a2;
  v5[31] = a3;
  v7 = sub_23BBDC598();
  v5[34] = v7;
  v5[35] = *(v7 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v8 = sub_23BBDCDB8();
  v5[40] = v8;
  v5[41] = *(v8 - 8);
  v5[42] = swift_task_alloc();
  v9 = sub_23BBDC518();
  v5[43] = v9;
  v5[44] = *(v9 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BE88);
  v5[49] = v10;
  v5[50] = *(v10 - 8);
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[54] = AssociatedTypeWitness;
  v5[55] = *(AssociatedTypeWitness - 8);
  v5[56] = swift_task_alloc();
  v5[57] = *(a3 - 8);
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v12 = _s6TaskIDOMa();
  v5[61] = v12;
  v5[62] = *(v12 - 8);
  v5[63] = swift_task_alloc();
  sub_23BBDD308();
  v5[64] = sub_23BBDD2F8();
  v14 = sub_23BBDD2D8();
  v5[65] = v14;
  v5[66] = v13;

  return MEMORY[0x2822009F8](sub_23BA2A848, v14, v13);
}

uint64_t sub_23BA2A848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_72();
  v20 = *(v18 + 496);
  v19 = *(v18 + 504);
  v21 = *(v18 + 488);
  v22 = *(v18 + 240);
  v23 = _s26CollectionTaskViewModifierVMa();
  *(v18 + 536) = v23;
  (*(v20 + 16))(v19, v22 + *(v23 + 44), v21);
  OUTLINED_FUNCTION_48_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = *(v18 + 504);
  if (EnumCaseMultiPayload == 1)
  {
    *(v18 + 744) = *(v25 + 8);
    sub_23BBDC5E8();
    *(v18 + 752) = sub_23BBDC5A8();
    v26 = swift_task_alloc();
    *(v18 + 760) = v26;
    *v26 = v18;
    v26[1] = sub_23BA2C228;
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_23_4();

    return MEMORY[0x28212C468](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v35 = *(v18 + 480);
    v36 = *(v18 + 456);
    v37 = *(v18 + 248);
    v38 = *(v36 + 16);
    v38(v35, v25, v37);
    OUTLINED_FUNCTION_69();
    v39 = sub_23BBDD488();
    v40 = *(v36 + 8);
    *(v18 + 544) = v40;
    *(v18 + 552) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40(v35, v37);
    if (v39)
    {

      v41 = OUTLINED_FUNCTION_6_9();
      (v40)(v41);
      OUTLINED_FUNCTION_6_12();

      OUTLINED_FUNCTION_2_13();
      OUTLINED_FUNCTION_23_4();

      return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

    else
    {
      v38(*(v18 + 472), *(v18 + 504), *(v18 + 248));
      OUTLINED_FUNCTION_69();
      if (sub_23BBDD458() == 1)
      {
        sub_23BBDD438();
        OUTLINED_FUNCTION_31_1();
        v50 = sub_23BBDD558();
        *(v18 + 560) = *v51;
        *(v18 + 568) = v51[1];

        v50(v18 + 16, 0);
        v52 = OUTLINED_FUNCTION_70();
        v53(v52);
        sub_23BBDC5E8();
        *(v18 + 576) = sub_23BBDC5A8();
        *(v18 + 68) = *(v23 + 52);
        OUTLINED_FUNCTION_0_23();
        sub_23BA2DC74(v54, v55);
        sub_23BBDD2D8();
        OUTLINED_FUNCTION_12_7();
        OUTLINED_FUNCTION_53_0();
        OUTLINED_FUNCTION_23_4();

        return MEMORY[0x2822009F8](v56, v57, v58);
      }

      else
      {
        v40(*(v18 + 472), *(v18 + 248));
        v60 = OUTLINED_FUNCTION_69();
        v61(v60);
        sub_23BBDC5E8();
        *(v18 + 680) = sub_23BBDC5A8();
        v62 = swift_task_alloc();
        *(v18 + 688) = v62;
        *v62 = v18;
        v62[1] = sub_23BA2B9F8;
        OUTLINED_FUNCTION_73(*(v18 + 464));
        OUTLINED_FUNCTION_23_4();

        return MEMORY[0x28212C478](v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
      }
    }
  }
}

uint64_t sub_23BA2AC8C()
{
  OUTLINED_FUNCTION_3_13();
  v0[73] = sub_23BBDC5C8();

  v1 = v0[66];
  v2 = v0[65];

  return MEMORY[0x2822009F8](sub_23BA2AD10, v2, v1);
}

uint64_t sub_23BA2AD10()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 536);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(v0 + 344);
  v6 = *(v0 + 352);
  v7 = *(v0 + 240);
  OUTLINED_FUNCTION_30_1();
  sub_23BA257DC();
  v8 = (v7 + *(v2 + 48));
  *(v0 + 592) = *v8;
  *(v0 + 600) = v8[1];
  sub_23BBDC508();
  v9 = *(v6 + 16);
  *(v0 + 608) = v9;
  *(v0 + 616) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v3, v5);
  *(v0 + 624) = *(v6 + 88);
  *(v0 + 632) = (v6 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v10 = OUTLINED_FUNCTION_40_1();
  v12 = v11(v10);
  v13 = *MEMORY[0x277CDCFF8];
  *(v0 + 92) = *MEMORY[0x277CDCFF8];
  if (v12 == v13)
  {
    v14 = *(v0 + 376);
    v15 = *(v0 + 344);
    v16 = *(v0 + 352);
    v18 = v16 + 8;
    v17 = *(v16 + 8);
    v17(*(v0 + 384), v15);
    (*(v16 + 96))(v14, v15);
    v19 = 0;
    v20 = 0;
    v1 = *v14;
    v21 = *MEMORY[0x277CDD008];
  }

  else
  {
    v22 = v12;
    v21 = *MEMORY[0x277CDD008];
    if (v12 == *MEMORY[0x277CDD008])
    {
      v23 = *(v0 + 376);
      v24 = *(v0 + 352);
      v50 = *(v0 + 344);
      v51 = *(v0 + 384);
      v25 = *(v0 + 328);
      v26 = *(v0 + 336);
      v27 = *(v0 + 320);
      (*(v24 + 96))(v23);
      v28 = *(v25 + 32);
      v28(v26, v23, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199748);
      v1 = OUTLINED_FUNCTION_77();
      *(v1 + 16) = xmmword_23BBE7F10;
      v28(v1 + v5, v26, v27);
      v29 = *(v24 + 8);
      v18 = v24 + 8;
      v17 = v29;
      v29(v51, v50);
      v20 = 1;
      v19 = MEMORY[0x277D84F90];
      v21 = v22;
    }

    else if (v12 == *MEMORY[0x277CDD000])
    {
      v30 = *(v0 + 352);
      v31 = *(v30 + 8);
      v18 = v30 + 8;
      v17 = v31;
      v31(*(v0 + 384), *(v0 + 344));
      v1 = 0;
      v19 = 0;
      v20 = 2;
    }

    else if (v12 == *MEMORY[0x277CDCFF0])
    {
      v32 = *(v0 + 568);
      v33 = *(v0 + 560);
      v34 = *(v0 + 352);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_23BBE7F10;
      *(v19 + 32) = v33;
      *(v19 + 40) = v32;
      v35 = *(v34 + 8);
      v18 = v34 + 8;
      v17 = v35;

      v36 = OUTLINED_FUNCTION_71();
      v35(v36);
      v20 = 1;
      v1 = MEMORY[0x277D84F90];
    }

    else
    {
      v37 = *(v0 + 352);
      sub_23BBDC608();
      OUTLINED_FUNCTION_1_24();
      sub_23BA2DC74(v38, v39);
      v40 = OUTLINED_FUNCTION_42_1();
      OUTLINED_FUNCTION_75(v40, v41);
      OUTLINED_FUNCTION_1_4();
      (*(v42 + 104))();
      v43 = *(v37 + 8);
      v18 = v37 + 8;
      v17 = v43;
      v44 = OUTLINED_FUNCTION_71();
      v43(v44);
      v45 = OUTLINED_FUNCTION_40_1();
      v43(v45);
      v19 = 0;
      v20 = 0;
    }
  }

  *(v0 + 116) = v21;
  *(v0 + 648) = v17;
  *(v0 + 640) = v18;
  *(v0 + 192) = v1;
  *(v0 + 200) = v19;
  *(v0 + 208) = v20;
  OUTLINED_FUNCTION_0_16();
  v52 = v46;
  v47 = swift_task_alloc();
  *(v0 + 656) = v47;
  *v47 = v0;
  v48 = OUTLINED_FUNCTION_65(v47);

  return v52(v48);
}

uint64_t sub_23BA2B154()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;
  *v2 = *v0;

  OUTLINED_FUNCTION_50_0();
  sub_23B99A808(*(v3 + 192), *(v1 + 200), *(v1 + 208));
  *(v1 + 140) = *MEMORY[0x277CDD000];
  v4 = MEMORY[0x277CDD0C8];
  *(v1 + 164) = *MEMORY[0x277CDCFF0];
  *(v1 + 188) = *v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_51_1();
  *(v1 + 664) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_27_1(v5);
  v13 = *(v1 + 392);

  return MEMORY[0x28210E838](v1 + 67, v13, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_23BA2B2E4()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_42_0();
  v2 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v3 = v2;

  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 528);
  v6 = *(v0 + 520);

  return MEMORY[0x2822009F8](sub_23BA2B3F0, v6, v5);
}

uint64_t sub_23BA2B3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_72();
  if (*(v18 + 67))
  {
    v19 = *(v18 + 544);
    v70 = *(v18 + 504);
    v20 = *(v18 + 472);
    v21 = *(v18 + 248);

    v22 = OUTLINED_FUNCTION_40_1();
    v23(v22);
    v19(v20, v21);
    v19(v70, v21);
    OUTLINED_FUNCTION_6_12();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_23_4();
  }

  else
  {
    v32 = *(v18 + 92);
    v33 = *(v18 + 632);
    v34 = *(v18 + 624);
    v35 = *(v18 + 608);
    v36 = *(v18 + 584);
    sub_23BBDC508();
    v37 = OUTLINED_FUNCTION_49_0();
    v35(v37);
    v38 = OUTLINED_FUNCTION_31_1();
    v39 = v34(v38);
    if (v39 == v32)
    {
      v40 = *(v18 + 360);
      (*(v18 + 648))(*(v18 + 368), *(v18 + 344));
      v41 = OUTLINED_FUNCTION_6_9();
      v42(v41);
      v43 = 0;
      v44 = 0;
      v36 = *v40;
    }

    else if (v39 == *(v18 + 116))
    {
      v71 = *(v18 + 648);
      v46 = *(v18 + 360);
      v45 = *(v18 + 368);
      v47 = *(v18 + 344);
      v49 = *(v18 + 328);
      v48 = *(v18 + 336);
      v50 = *(v18 + 320);
      v51 = OUTLINED_FUNCTION_48_1();
      v52(v51);
      v53 = *(v49 + 32);
      v53(v48, v46, v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199748);
      v36 = OUTLINED_FUNCTION_77();
      *(v36 + 16) = xmmword_23BBE7F10;
      v53(v36 + v33, v48, v50);
      v71(v45, v47);
      v44 = 1;
      v43 = MEMORY[0x277D84F90];
    }

    else if (v39 == *(v18 + 140))
    {
      (*(v18 + 648))(*(v18 + 368), *(v18 + 344));
      v36 = 0;
      v43 = 0;
      v44 = 2;
    }

    else if (v39 == *(v18 + 164))
    {
      v54 = *(v18 + 648);
      v55 = *(v18 + 568);
      v56 = *(v18 + 560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_23BBE7F10;
      *(v43 + 32) = v56;
      *(v43 + 40) = v55;

      v57 = OUTLINED_FUNCTION_31_1();
      v54(v57);
      v44 = 1;
      v36 = MEMORY[0x277D84F90];
    }

    else
    {
      v58 = *(v18 + 648);
      v59 = *(v18 + 368);
      v60 = *(v18 + 344);
      sub_23BBDC608();
      OUTLINED_FUNCTION_1_24();
      sub_23BA2DC74(v61, v62);
      v63 = OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_75(v63, v64);
      OUTLINED_FUNCTION_1_4();
      (*(v65 + 104))();
      v58(v59, v60);
      v66 = OUTLINED_FUNCTION_70();
      (v58)(v66);
      v43 = 0;
      v44 = 0;
    }

    *(v18 + 216) = v36;
    *(v18 + 224) = v43;
    *(v18 + 232) = v44;
    OUTLINED_FUNCTION_17_8();
    v70 = v67;
    v68 = swift_task_alloc();
    *(v18 + 672) = v68;
    *v68 = v18;
    v68[1] = sub_23BA2B898;
    OUTLINED_FUNCTION_23_4();
  }

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, v70, a16, a17, a18);
}

uint64_t sub_23BA2B898()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;
  *v2 = *v0;

  OUTLINED_FUNCTION_50_0();
  sub_23B99A808(*(v3 + 216), *(v1 + 224), *(v1 + 232));
  swift_task_alloc();
  OUTLINED_FUNCTION_51_1();
  *(v1 + 664) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_27_1();
  v12 = *(v1 + 392);

  return MEMORY[0x28210E838](v1 + 67, v12, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_23BA2B9F8()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_7_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7_17();
  *v5 = v4;
  *(v7 + 696) = v6;

  OUTLINED_FUNCTION_43_0();
  v9 = *(v8 + 528);
  v10 = *(v0 + 520);

  return MEMORY[0x2822009F8](sub_23BA2BB30, v10, v9);
}

uint64_t sub_23BA2BB30()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 536);
  v2 = *(v0 + 240);
  sub_23BA257DC();
  v3 = (v2 + *(v1 + 48));
  *(v0 + 704) = *v3;
  *(v0 + 712) = v3[1];
  sub_23BA27AA0(v0 + 96);
  v4 = *(v0 + 112);
  *(v0 + 120) = *(v0 + 96);
  *(v0 + 136) = v4;
  OUTLINED_FUNCTION_9_10();
  v8 = v5;
  v6 = swift_task_alloc();
  *(v0 + 720) = v6;
  *v6 = v0;
  v6[1] = sub_23BA2BC6C;

  return v8(v0 + 120);
}

uint64_t sub_23BA2BC6C()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;
  *v2 = *v0;

  OUTLINED_FUNCTION_50_0();
  sub_23B99A808(*(v3 + 120), *(v1 + 128), *(v1 + 136));
  swift_task_alloc();
  OUTLINED_FUNCTION_51_1();
  *(v1 + 728) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_26_2(v4);
  v12 = *(v1 + 392);

  return MEMORY[0x28210E838](v1 + 66, v12, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_23BA2BDCC()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_42_0();
  v2 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v3 = v2;

  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 528);
  v6 = *(v0 + 520);

  return MEMORY[0x2822009F8](sub_23BA2BED8, v6, v5);
}

uint64_t sub_23BA2BED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_72();
  if (*(v18 + 66))
  {
    v19 = *(v18 + 544);
    v20 = *(v18 + 464);
    v21 = *(v18 + 248);

    v22 = OUTLINED_FUNCTION_31_1();
    v23(v22);
    v19(v20, v21);
    OUTLINED_FUNCTION_6_12();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_23_4();
  }

  else
  {
    sub_23BA27AA0(v18 + 144);
    v32 = *(v18 + 160);
    *(v18 + 168) = *(v18 + 144);
    *(v18 + 184) = v32;
    OUTLINED_FUNCTION_9_10();
    a15 = v33;
    v34 = swift_task_alloc();
    *(v18 + 736) = v34;
    *v34 = v18;
    v34[1] = sub_23BA2C0C8;
    OUTLINED_FUNCTION_23_4();
  }

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23BA2C0C8()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;
  *v2 = *v0;

  OUTLINED_FUNCTION_50_0();
  sub_23B99A808(*(v3 + 168), *(v1 + 176), *(v1 + 184));
  swift_task_alloc();
  OUTLINED_FUNCTION_51_1();
  *(v1 + 728) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_26_2();
  v12 = *(v1 + 392);

  return MEMORY[0x28210E838](v1 + 66, v12, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_23BA2C228()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_7_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7_17();
  *v5 = v4;
  *(v7 + 768) = v6;

  OUTLINED_FUNCTION_43_0();
  v9 = *(v8 + 528);
  v10 = *(v0 + 520);

  return MEMORY[0x2822009F8](sub_23BA2C37C, v10, v9);
}

void sub_23BA2C37C()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 536);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 272);
  v6 = *(v0 + 280);
  v7 = *(v0 + 240);
  sub_23BA257DC();
  v8 = (v7 + *(v2 + 48));
  *(v0 + 776) = *v8;
  *(v0 + 784) = v8[1];
  sub_23BBDC588();
  v9 = *(v6 + 16);
  *(v0 + 792) = v9;
  *(v0 + 800) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v3, v5);
  *(v0 + 808) = *(v6 + 88);
  *(v0 + 816) = (v6 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v10 = OUTLINED_FUNCTION_40_1();
  v12 = v11(v10);
  v13 = *MEMORY[0x277CDD048];
  *(v0 + 212) = *MEMORY[0x277CDD048];
  if (v12 == v13)
  {
    v14 = *(v0 + 304);
    v15 = *(v0 + 272);
    v16 = *(v0 + 280);
    v18 = v16 + 8;
    v17 = *(v16 + 8);
    v17(*(v0 + 312), v15);
    (*(v16 + 96))(v14, v15);
    v19 = 0;
    v20 = 0;
    v1 = *v14;
    v21 = *MEMORY[0x277CDD058];
  }

  else
  {
    v22 = v12;
    v21 = *MEMORY[0x277CDD058];
    if (v12 == *MEMORY[0x277CDD058])
    {
      v23 = *(v0 + 304);
      v24 = *(v0 + 280);
      (*(v24 + 96))(v23, *(v0 + 272));
      v1 = *v23;
      v25 = *(v24 + 8);
      v18 = v24 + 8;
      v17 = v25;
      v26 = OUTLINED_FUNCTION_71();
      v25(v26);
      v20 = 1;
      v19 = MEMORY[0x277D84F90];
      v21 = v22;
    }

    else
    {
      v27 = *(v0 + 280);
      if (v12 == *MEMORY[0x277CDD050])
      {
        v28 = *(v27 + 8);
        v18 = v27 + 8;
        v17 = v28;
        v28(*(v0 + 312), *(v0 + 272));
        v1 = 0;
        v19 = 0;
        v20 = 2;
      }

      else
      {
        sub_23BBDC608();
        OUTLINED_FUNCTION_1_24();
        sub_23BA2DC74(v29, v30);
        v31 = OUTLINED_FUNCTION_42_1();
        OUTLINED_FUNCTION_75(v31, v32);
        OUTLINED_FUNCTION_1_4();
        (*(v33 + 104))();
        v34 = *(v27 + 8);
        v18 = v27 + 8;
        v17 = v34;
        v35 = OUTLINED_FUNCTION_71();
        v34(v35);
        v36 = OUTLINED_FUNCTION_40_1();
        v34(v36);
        v19 = 0;
        v20 = 0;
      }
    }
  }

  *(v0 + 236) = v21;
  *(v0 + 832) = v17;
  *(v0 + 824) = v18;
  *(v0 + 48) = v1;
  *(v0 + 56) = v19;
  *(v0 + 64) = v20;
  OUTLINED_FUNCTION_0_16();
  v37 = swift_task_alloc();
  *(v0 + 840) = v37;
  *v37 = v0;
  OUTLINED_FUNCTION_65(v37);
  OUTLINED_FUNCTION_5_13();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_23BA2C6D4()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;
  *v2 = *v0;

  OUTLINED_FUNCTION_50_0();
  sub_23B99A808(*(v3 + 48), *(v1 + 56), *(v1 + 64));
  v4 = MEMORY[0x277CDD0C8];
  *(v1 + 864) = *MEMORY[0x277CDD050];
  *(v1 + 868) = *v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_51_1();
  *(v1 + 848) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_24_5(v5);
  v13 = *(v1 + 392);

  return MEMORY[0x28210E838](v1 + 65, v13, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_23BA2C854()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_42_0();
  v2 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v3 = v2;

  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 528);
  v6 = *(v0 + 520);

  return MEMORY[0x2822009F8](sub_23BA2C960, v6, v5);
}

uint64_t sub_23BA2C960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_72();
  if (*(v18 + 65))
  {
    (*(*(v18 + 400) + 8))(*(v18 + 408), *(v18 + 392));

    OUTLINED_FUNCTION_6_12();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_23_4();
  }

  else
  {
    v27 = *(v18 + 212);
    v28 = *(v18 + 808);
    v29 = *(v18 + 792);
    v30 = *(v18 + 768);
    sub_23BBDC588();
    v31 = OUTLINED_FUNCTION_49_0();
    v29(v31);
    v32 = OUTLINED_FUNCTION_31_1();
    v33 = v28(v32);
    if (v33 == v27)
    {
      v34 = *(v18 + 288);
      (*(v18 + 832))(*(v18 + 296), *(v18 + 272));
      v35 = OUTLINED_FUNCTION_6_9();
      v36(v35);
      v37 = 0;
      v38 = 0;
      v30 = *v34;
    }

    else if (v33 == *(v18 + 236))
    {
      v39 = *(v18 + 832);
      v41 = *(v18 + 288);
      v40 = *(v18 + 296);
      v42 = *(v18 + 272);
      v43 = OUTLINED_FUNCTION_48_1();
      v44(v43);
      v30 = *v41;
      v39(v40, v42);
      v38 = 1;
      v37 = MEMORY[0x277D84F90];
    }

    else if (v33 == *(v18 + 864))
    {
      (*(v18 + 832))(*(v18 + 296), *(v18 + 272));
      v30 = 0;
      v37 = 0;
      v38 = 2;
    }

    else
    {
      v45 = *(v18 + 832);
      v46 = *(v18 + 296);
      v47 = *(v18 + 272);
      sub_23BBDC608();
      OUTLINED_FUNCTION_1_24();
      sub_23BA2DC74(v48, v49);
      v50 = OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_75(v50, v51);
      OUTLINED_FUNCTION_1_4();
      (*(v52 + 104))();
      v45(v46, v47);
      v53 = OUTLINED_FUNCTION_70();
      (v45)(v53);
      v37 = 0;
      v38 = 0;
    }

    *(v18 + 72) = v30;
    *(v18 + 80) = v37;
    *(v18 + 88) = v38;
    OUTLINED_FUNCTION_17_8();
    a15 = v54;
    v55 = swift_task_alloc();
    *(v18 + 856) = v55;
    *v55 = v18;
    v55[1] = sub_23BA2CCE0;
    OUTLINED_FUNCTION_23_4();
  }

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23BA2CCE0()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;
  *v2 = *v0;

  OUTLINED_FUNCTION_50_0();
  sub_23B99A808(*(v3 + 72), *(v1 + 80), *(v1 + 88));
  swift_task_alloc();
  OUTLINED_FUNCTION_51_1();
  *(v1 + 848) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_24_5();
  v12 = *(v1 + 392);

  return MEMORY[0x28210E838](v1 + 65, v12, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_23BA2CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s26CollectionTaskViewModifierVMa();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  sub_23BBDD318();
  v15 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a2;
  *(v17 + 5) = a3;
  *(v17 + 6) = a4;
  (*(v9 + 32))(&v17[v16], v11, v8);
  sub_23BB5D2B8();
}

uint64_t sub_23BA2D010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[10] = AssociatedTypeWitness;
  v7[11] = *(AssociatedTypeWitness - 8);
  v7[12] = swift_task_alloc();
  v7[13] = *(a5 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v10 = _s6TaskIDOMa();
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BA2D1C8, 0, 0);
}

uint64_t sub_23BA2D1C8()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 48);
  sub_23BBDC5E8();
  *(v0 + 152) = sub_23BBDC5A8();
  v5 = _s26CollectionTaskViewModifierVMa();
  (*(v2 + 16))(v1, v4 + *(v5 + 44), v3);
  OUTLINED_FUNCTION_40_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(v0 + 144);
  if (EnumCaseMultiPayload == 1)
  {
    *(v0 + 192) = *v7;
    *(v0 + 200) = v7[1];
    *(v0 + 216) = *(v5 + 52);
    OUTLINED_FUNCTION_0_23();
    sub_23BA2DC74(v8, v9);
    sub_23BBDD2D8();
    OUTLINED_FUNCTION_12_7();
    v12 = sub_23BA2D6C4;
  }

  else
  {
    (*(*(v0 + 104) + 16))(*(v0 + 120), v7, *(v0 + 56));
    v13 = sub_23BBDD458();
    v14 = *(v0 + 120);
    if (v13 == 1)
    {
      v15 = *(v0 + 88);
      v16 = *(v0 + 96);
      v17 = *(v0 + 80);
      sub_23BBDD438();
      OUTLINED_FUNCTION_40_1();
      v18 = sub_23BBDD558();
      *(v0 + 160) = *v19;
      *(v0 + 168) = v19[1];

      v18(v0 + 16, 0);
      (*(v15 + 8))(v16, v17);
      *(v0 + 208) = *(v5 + 52);
      OUTLINED_FUNCTION_0_23();
      sub_23BA2DC74(v20, v21);
      sub_23BBDD2D8();
      OUTLINED_FUNCTION_12_7();
      v12 = sub_23BA2D4A8;
    }

    else
    {
      v22 = *(v0 + 144);
      v23 = *(v0 + 104);
      v24 = *(v0 + 112);
      v25 = *(v0 + 56);
      v26 = *(v23 + 8);
      *(v0 + 176) = v26;
      *(v0 + 184) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v26(v14, v25);
      (*(v23 + 32))(v24, v22, v25);
      *(v0 + 212) = *(v5 + 52);
      OUTLINED_FUNCTION_0_23();
      sub_23BA2DC74(v27, v28);
      sub_23BBDD2D8();
      OUTLINED_FUNCTION_12_7();
      v12 = sub_23BA2D5C4;
    }
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_23BA2D4A8()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_60_0();
  sub_23BBDC538();

  v0 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_23BA2D514()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_41_0();
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[7];

  v4 = *(v2 + 8);
  v4(v1, v3);
  v5 = OUTLINED_FUNCTION_48_1();
  (v4)(v5);
  OUTLINED_FUNCTION_57_0();

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_80();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_23BA2D5C4()
{
  OUTLINED_FUNCTION_3_13();
  sub_23BBDC548();
  v0 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_23BA2D634()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 176);

  v2 = OUTLINED_FUNCTION_6_9();
  v1(v2);
  OUTLINED_FUNCTION_57_0();

  OUTLINED_FUNCTION_1_16();

  return v3();
}

uint64_t sub_23BA2D6C4()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_60_0();
  sub_23BBDC528();

  v0 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_23BA2D730()
{
  OUTLINED_FUNCTION_4_11();

  OUTLINED_FUNCTION_57_0();

  OUTLINED_FUNCTION_1_16();

  return v0();
}

uint64_t sub_23BA2D7D8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_12_3();
  v5(v4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_23BA2D830()
{
  _s16TaskViewModifierVMa(0);
  OUTLINED_FUNCTION_8_3();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_23BBDD368();
  OUTLINED_FUNCTION_12_1();
  (*(v4 + 8))(v3);
  OUTLINED_FUNCTION_43_1(v0[7]);

  OUTLINED_FUNCTION_43_1(v0[8]);

  v5 = v0[9];
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_12_1();
  (*(v6 + 8))(v3 + v5);
  OUTLINED_FUNCTION_68();

  return swift_deallocObject();
}

uint64_t sub_23BA2D93C()
{
  OUTLINED_FUNCTION_3_13();
  v1 = _s16TaskViewModifierVMa(0);
  OUTLINED_FUNCTION_13_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_10(v4);
  *v5 = v6;
  v5[1] = sub_23B9F3414;

  return sub_23BA2860C(v0 + v3);
}

uint64_t sub_23BA2D9F8()
{
  OUTLINED_FUNCTION_3_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_64(v1);

  return sub_23BA28E7C(v3, v4);
}

uint64_t sub_23BA2DA88()
{
  _s16TaskViewModifierVMa(0);
  OUTLINED_FUNCTION_8_3();
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();
  v4 = (v3 + 32) & ~v3;
  sub_23BBDD368();
  OUTLINED_FUNCTION_12_1();
  (*(v5 + 8))(v1 + v4);
  OUTLINED_FUNCTION_43_1(v0[7]);

  OUTLINED_FUNCTION_43_1(v0[8]);

  v6 = v0[9];
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_12_1();
  (*(v7 + 8))(v1 + v4 + v6);
  OUTLINED_FUNCTION_68();

  return swift_deallocObject();
}

uint64_t sub_23BA2DB9C()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_41_0();
  v0 = _s16TaskViewModifierVMa(0);
  OUTLINED_FUNCTION_13_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_10(v1);
  *v2 = v3;
  v2[1] = sub_23BA027BC;
  OUTLINED_FUNCTION_80();

  return sub_23BA29C60(v4, v5, v6, v7);
}

uint64_t sub_23BA2DC74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BA2DCBC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_12_3();
  v5(v4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_23BA2DD14()
{
  OUTLINED_FUNCTION_10_0();
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_14_10();
  _s26CollectionTaskViewModifierVMa();
  OUTLINED_FUNCTION_19_0();
  v4 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));
  sub_23BBDD368();
  OUTLINED_FUNCTION_12_1();
  (*(v5 + 8))(v4);
  v6 = v4 + v0[11];
  OUTLINED_FUNCTION_14_10();
  _s6TaskIDOMa();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    (*(v7 + 8))(v6, v2);
  }

  OUTLINED_FUNCTION_43_1(v0[12]);

  v8 = v0[13];
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_12_1();
  (*(v9 + 8))(v4 + v8);
  OUTLINED_FUNCTION_9_1();

  return swift_deallocObject();
}

uint64_t sub_23BA2DE78()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_41_0();
  v0 = _s26CollectionTaskViewModifierVMa();
  OUTLINED_FUNCTION_13_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_10(v1);
  *v2 = v3;
  v2[1] = sub_23BA027BC;
  OUTLINED_FUNCTION_80();

  return sub_23BA2A118(v4, v5, v6, v7);
}

uint64_t sub_23BA2DF5C()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_41_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_10(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64(v1);
  OUTLINED_FUNCTION_80();

  return sub_23BA2A470(v3, v4, v5, v6, v7);
}

uint64_t sub_23BA2E008()
{
  OUTLINED_FUNCTION_10_0();
  v2 = *(v1 + 32);
  OUTLINED_FUNCTION_14_10();
  _s26CollectionTaskViewModifierVMa();
  OUTLINED_FUNCTION_19_0();
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  sub_23BBDD368();
  OUTLINED_FUNCTION_12_1();
  (*(v5 + 8))(v1 + v4);
  v6 = v1 + v4 + v0[11];
  OUTLINED_FUNCTION_14_10();
  _s6TaskIDOMa();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    (*(v7 + 8))(v6, v2);
  }

  OUTLINED_FUNCTION_43_1(v0[12]);

  v8 = v0[13];
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_12_1();
  (*(v9 + 8))(v1 + v4 + v8);
  OUTLINED_FUNCTION_9_1();

  return swift_deallocObject();
}