void *sub_23714E0A8(uint64_t a1, float a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94970);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v35 - v9;
  v11 = sub_23719653C();
  v12 = [objc_opt_self() defaultCenter];
  v13 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_owner;
  swift_beginAccess();
  v37 = v13;
  sub_23711BDB4(a1 + v13, v41, &qword_27DE94968);
  v14 = v42;
  if (v42)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v41, v42);
    v16 = *(v14 - 8);
    MEMORY[0x28223BE20](v15, v15);
    v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    v19 = sub_237196A6C();
    (*(v16 + 8))(v18, v14);
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    v19 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B040;
  strcpy(v41, "param.address");
  HIWORD(v41[1]) = -4864;
  sub_23719690C();
  result = *(a1 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
  if (result)
  {
    v22 = [result address];
    *(inited + 96) = MEMORY[0x277D84D38];
    *(inited + 72) = v22;
    strcpy(v41, "param.value");
    HIDWORD(v41[1]) = -352321536;
    sub_23719690C();
    *(inited + 168) = MEMORY[0x277D83A90];
    *(inited + 144) = a2;
    sub_237119F04(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B0);
    swift_arrayDestroy();
    v23 = sub_23719651C();

    [v12 postNotificationName:v11 object:v19 userInfo:v23];

    swift_unknownObjectRelease();
    v24 = OBJC_IVAR____TtC12CoreAudioKit33AUGenericViewIntegerParameterCell_indexPath;
    swift_beginAccess();
    sub_23711BDB4(a1 + v24, v10, &qword_27DE94970);
    v25 = sub_23719641C();
    v26 = *(v25 - 8);
    v27 = v11;
    v28 = *(v26 + 48);
    if (v28(v10, 1, v25) == 1)
    {

      v29 = &qword_27DE94970;
      v30 = v10;
      return sub_237120D04(v30, v29);
    }

    v35 = v27;
    sub_237120D04(v10, &qword_27DE94970);
    sub_23711BDB4(a1 + v37, v41, &qword_27DE94968);
    if (!v42)
    {

      v29 = &qword_27DE94968;
      v30 = v41;
      return sub_237120D04(v30, v29);
    }

    sub_237120C18(v41, v38);
    sub_237120D04(v41, &qword_27DE94968);
    v31 = v39;
    v32 = v40;
    __swift_project_boxed_opaque_existential_0(v38, v39);
    v33 = a1 + v24;
    v34 = v36;
    sub_23711BDB4(v33, v36, &qword_27DE94970);
    result = (v28)(v34, 1, v25);
    if (result != 1)
    {
      (*(v32 + 8))(v34, v31, v32);

      (*(v26 + 8))(v34, v25);
      return __swift_destroy_boxed_opaque_existential_0(v38);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23714E63C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_23714F7BC, v4);
}

void sub_23714E6D0(uint64_t a1, uint64_t a2)
{
  sub_237115094(0, &qword_27DE950C0);
  v3 = sub_23719661C();
  (*(a2 + 16))(a2, v3);
}

void sub_23714E74C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
  *(v1 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param) = a1;
  v3 = a1;

  sub_237152DA4();
  sub_23714D784();
}

void sub_23714E7B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2371964EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23719650C();
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23714D584(a1);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param;
    v16 = *&v2[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param];
    if (v16)
    {
      *&v13 = a1;
      [v16 setValue_];
      v17 = *&v2[v15];
      if (v17)
      {
        [v17 value];
        sub_23714F23C(v18);
        v19 = sub_23719653C();

        [v2 setAccessibilityValue_];

        sub_237115094(0, &qword_27DE94908);
        v20 = sub_23719678C();
        v21 = swift_allocObject();
        *(v21 + 16) = v2;
        aBlock[4] = sub_23714F7DC;
        aBlock[5] = v21;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23714D540;
        aBlock[3] = &block_descriptor_48;
        v22 = _Block_copy(aBlock);
        v23 = v2;

        sub_2371964FC();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_23712932C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94918);
        sub_23711BE3C();
        sub_23719683C();
        MEMORY[0x2383C60F0](0, v12, v8, v22);
        _Block_release(v22);

        (*(v5 + 8))(v8, v4);
        (*(v9 + 8))(v12, v25);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void *sub_23714EADC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94970);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v35 - v7;
  v9 = sub_23719653C();
  v10 = [objc_opt_self() defaultCenter];
  v11 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_owner;
  swift_beginAccess();
  v37 = v11;
  sub_23711BDB4(a1 + v11, v41, &qword_27DE94968);
  v12 = v42;
  if (v42)
  {
    v13 = __swift_project_boxed_opaque_existential_0(v41, v42);
    v14 = *(v12 - 8);
    MEMORY[0x28223BE20](v13, v13);
    v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    v17 = sub_237196A6C();
    (*(v14 + 8))(v16, v12);
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    v17 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B040;
  strcpy(v41, "param.address");
  HIWORD(v41[1]) = -4864;
  sub_23719690C();
  v19 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param;
  result = *(a1 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = [result address];
  *(inited + 96) = MEMORY[0x277D84D38];
  *(inited + 72) = v21;
  strcpy(v41, "param.value");
  HIDWORD(v41[1]) = -352321536;
  sub_23719690C();
  result = *(a1 + v19);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [result value];
  *(inited + 168) = MEMORY[0x277D83A90];
  *(inited + 144) = v22;
  sub_237119F04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B0);
  swift_arrayDestroy();
  v23 = sub_23719651C();

  [v10 postNotificationName:v9 object:v17 userInfo:v23];

  swift_unknownObjectRelease();
  v24 = OBJC_IVAR____TtC12CoreAudioKit33AUGenericViewIntegerParameterCell_indexPath;
  swift_beginAccess();
  sub_23711BDB4(a1 + v24, v8, &qword_27DE94970);
  v25 = sub_23719641C();
  v26 = *(v25 - 8);
  v27 = v9;
  v28 = *(v26 + 48);
  if (v28(v8, 1, v25) != 1)
  {
    v35 = v27;
    sub_237120D04(v8, &qword_27DE94970);
    sub_23711BDB4(a1 + v37, v41, &qword_27DE94968);
    if (!v42)
    {

      v29 = &qword_27DE94968;
      v30 = v41;
      return sub_237120D04(v30, v29);
    }

    sub_237120C18(v41, v38);
    sub_237120D04(v41, &qword_27DE94968);
    v31 = v39;
    v32 = v40;
    __swift_project_boxed_opaque_existential_0(v38, v39);
    v33 = a1 + v24;
    v34 = v36;
    sub_23711BDB4(v33, v36, &qword_27DE94970);
    result = v28(v34, 1, v25);
    if (result != 1)
    {
      (*(v32 + 8))(v34, v31, v32);

      (*(v26 + 8))(v34, v25);
      return __swift_destroy_boxed_opaque_existential_0(v38);
    }

LABEL_16:
    __break(1u);
    return result;
  }

  v29 = &qword_27DE94970;
  v30 = v8;
  return sub_237120D04(v30, v29);
}

void sub_23714F07C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
  if (!v1)
  {
    goto LABEL_13;
  }

  [v1 value];
  if ((LODWORD(v2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 <= -9.2234e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 >= 9.2234e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (__OFADD__(v2, 1))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  sub_23714E7B8(v2 + 1);
}

void sub_23714F15C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
  if (!v1)
  {
    goto LABEL_13;
  }

  [v1 value];
  if ((LODWORD(v2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 <= -9.2234e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 >= 9.2234e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(v2, 1))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  sub_23714E7B8(v2 - 1);
}

void sub_23714F23C(float a1)
{
  v2 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param;
  v3 = *&v1[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param];
  if (!v3)
  {
    goto LABEL_21;
  }

  if ([v3 unit] != 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = *&v1[v2];
      if (v12)
      {
        [v12 value];
        v14 = v13;
        v15 = *&v1[v2];
        v16 = v15;
        sub_237153528(v15, 3, 1, v14);
        v18 = v17;

        if (v18)
        {
          v19 = sub_23719653C();
        }

        else
        {
          v19 = 0;
        }

        [v11 setText_];

        goto LABEL_15;
      }

      goto LABEL_23;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a1 <= -9.2234e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a1 >= 9.2234e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_23714D584(a1);
  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = v5;
  v7 = sub_23719653C();
  [v6 setTitle:v7 forState:0];

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v9 = v8;

  v19 = [v9 titleForState_];

  [v1 setAccessibilityValue_];
LABEL_15:
}

void sub_23714F550()
{
  sub_237120D04(v0 + OBJC_IVAR____TtC12CoreAudioKit33AUGenericViewIntegerParameterCell_indexPath, &qword_27DE94970);
  MEMORY[0x2383C7040](v0 + OBJC_IVAR____TtC12CoreAudioKit33AUGenericViewIntegerParameterCell_editButton);

  JUMPOUT(0x2383C7040);
}

id sub_23714F5B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUGenericViewIntegerParameterCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AUGenericViewIntegerParameterCell()
{
  result = qword_27DE950A8;
  if (!qword_27DE950A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23714F6A8()
{
  sub_23714F744();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23714F744()
{
  if (!qword_27DE950B8)
  {
    sub_23719641C();
    v0 = sub_2371967FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE950B8);
    }
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23714F7F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_23714F85C(float a1)
{
  v2 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_level;
  v3 = *&v1[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_level];
  v4 = *&v1[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_axis];
  v5 = *(v4 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min);
  if (v3 < v5 || (v5 = *(v4 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max), v5 < v3))
  {
    *&v1[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_level] = v5;
    v3 = v5;
  }

  if (v3 != a1)
  {
    sub_2371966AC();
    v6 = sub_23719653C();

    [v1 setAccessibilityValue_];

    v7 = *MEMORY[0x277D76438];
    v8 = [v1 accessibilityValue];
    UIAccessibilityPostNotification(v7, v8);

    sub_237151B14();
    v3 = *&v1[v2];
  }

  if (*&v1[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peak] < v3)
  {
    *&v1[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peak] = v3;
    *&v1[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peakFaderTrigger] = 0;
    sub_237151C7C();
  }
}

void sub_23714F998(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_2371905D4(7235949, 0xE300000000000000);
    if (v5)
    {
      sub_237114D0C(*(a1 + 56) + 32 * v4, v21);
      if (swift_dynamicCast())
      {
        v6 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_axis);
        *(v6 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min) = v19;
        *(v6 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed) = v19;
      }
    }
  }

  if (*(a1 + 16))
  {
    v7 = sub_2371905D4(7889261, 0xE300000000000000);
    if (v8)
    {
      sub_237114D0C(*(a1 + 56) + 32 * v7, v21);
      if (swift_dynamicCast())
      {
        v9 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_axis);
        *(v9 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max) = v19;
        *(v9 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed) = v19;
      }
    }
  }

  if (*(a1 + 16))
  {
    v10 = sub_2371905D4(0x656E694C64697267, 0xED0000746E756F43);
    if (v11)
    {
      sub_237114D0C(*(a1 + 56) + 32 * v10, v21);
      if (swift_dynamicCast())
      {
        *(*(v2 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_axis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount) = v19;
      }
    }
  }

  if (*(a1 + 16))
  {
    v12 = sub_2371905D4(0x7265746E6563, 0xE600000000000000);
    if (v13)
    {
      sub_237114D0C(*(a1 + 56) + 32 * v12, v21);
      if (swift_dynamicCast())
      {
        *(*(v2 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_axis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_center) = v19;
      }
    }
  }

  if (*(a1 + 16))
  {
    v14 = sub_2371905D4(6778732, 0xE300000000000000);
    if (v15)
    {
      sub_237114D0C(*(a1 + 56) + 32 * v14, v21);
      if (swift_dynamicCast())
      {
        *(*(v2 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_axis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase) = v19;
      }
    }
  }

  if (*(a1 + 16))
  {
    v16 = sub_2371905D4(0x6C6562616CLL, 0xE500000000000000);
    if (v17)
    {
      sub_237114D0C(*(a1 + 56) + 32 * v16, v21);
      if (swift_dynamicCast())
      {
        v18 = (v2 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_label);
        *v18 = v19;
        v18[1] = v20;

        sub_23714FCBC();
      }
    }
  }
}

void sub_23714FCBC()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLabelLayer;
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLabelLayer];
  if (v2 || (v3 = [objc_allocWithZone(MEMORY[0x277CD9FC8]) init], v4 = objc_msgSend(objc_opt_self(), sel_preferredFontForTextStyle_, *MEMORY[0x277D76918]), objc_msgSend(v3, sel_setFont_, v4), v4, v5 = objc_msgSend(objc_opt_self(), sel_secondaryLabelColor), v6 = objc_msgSend(v5, sel_CGColor), v5, objc_msgSend(v3, sel_setForegroundColor_, v6), v6, objc_msgSend(v3, sel_setFontSize_, 14.0), objc_msgSend(v3, sel_setAlignmentMode_, *MEMORY[0x277CDA030]), v7 = objc_opt_self(), v8 = v3, v9 = objc_msgSend(v7, sel_mainScreen), objc_msgSend(v9, sel_scale), v11 = v10, v9, objc_msgSend(v8, sel_setContentsScale_, v11), objc_msgSend(v8, sel_setAnchorPoint_, 0.0, 0.0), v8, v12 = objc_msgSend(v0, sel_layer), objc_msgSend(v12, sel_addSublayer_, v8), v12, v13 = *&v0[v1], *&v0[v1] = v8, v13, (v2 = *&v0[v1]) != 0))
  {
    if (*&v0[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_label + 8])
    {
      v14 = v2;

      v15 = sub_23719653C();
    }

    else
    {
      v16 = v2;
      v15 = 0;
    }

    [v2 setString_];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

char *sub_23714FF20(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peak] = -1029701632;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peakFaderTrigger] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_lastVoiceOverUpdate] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peakTimer] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_level] = -1029701632;
  v4[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_vertical] = 1;
  v10 = &v4[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_margins];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_axis;
  v12 = objc_allocWithZone(type metadata accessor for CAAUGraphView.AxisSetting());
  *&v4[v11] = sub_2371849D0(1936291937, 0xE400000000000000);
  v13 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLayer;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v14 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_fillLayer;
  *&v5[v14] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v15 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peakLayer;
  *&v5[v15] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v16 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_lineLayers] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_labelLayers] = v16;
  v17 = &v5[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_label];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLabelLayer] = 0;
  v41.receiver = v5;
  v41.super_class = type metadata accessor for AULabeledMeterView();
  v18 = objc_msgSendSuper2(&v41, sel_initWithFrame_, a1, a2, a3, a4);
  [v18 setIsAccessibilityElement_];
  type metadata accessor for CAAUGraphView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = sub_23719653C();
  v22 = sub_23719653C();
  v23 = sub_23719653C();
  v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];

  if (!v24)
  {
    sub_23719657C();
    v24 = sub_23719653C();
  }

  [v18 setAccessibilityLabel_];

  *&v18[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_margins + 24] = 0x4046800000000000;
  v25 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_axis;
  v26 = *&v18[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_axis];
  *&v26[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount] = 5;
  *&v26[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min] = -1029701632;
  *&v26[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed] = -1029701632;
  *&v26[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max] = 1101004800;
  *&v26[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed] = 1101004800;
  *&v26[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_center] = 0;
  *&v26[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase] = 0x40000000;
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 labelColor];
  v30 = *&v28[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_centerLine];
  *&v28[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_centerLine] = v29;

  v31 = *&v18[v25];
  v32 = sub_23719653C();
  v33 = sub_23719653C();
  v34 = sub_23719653C();
  v35 = [v20 localizedStringForKey:v32 value:v33 table:v34];

  v36 = sub_23719657C();
  v38 = v37;

  v39 = &v31[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel];
  *v39 = v36;
  v39[1] = v38;

  sub_237150764();

  return v18;
}

void sub_2371503F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peakTimer;
  v4 = *&v1[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peakTimer];
  if (a1)
  {
    if (!v4)
    {
      v5 = objc_opt_self();
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      v12[4] = sub_237152AD0;
      v12[5] = v6;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 1107296256;
      v12[2] = sub_23714F7F4;
      v12[3] = &block_descriptor_4;
      v7 = _Block_copy(v12);
      v8 = v1;

      v9 = [v5 scheduledTimerWithTimeInterval:1 repeats:v7 block:0.05];
      _Block_release(v7);
      v10 = *&v1[v3];
      *&v1[v3] = v9;
    }
  }

  else
  {
    [v4 invalidate];
    v11 = *&v1[v3];
    *&v1[v3] = 0;
  }
}

void sub_23715055C(uint64_t a1, char *a2)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peak;
  v4 = *&a2[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peak];
  v5 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peakFaderTrigger;
  v6 = *&a2[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peakFaderTrigger];
  if (v6 >= 20)
  {
    v7 = *&a2[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_axis];
    v8 = *(v7 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max);
    v9 = *(v7 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min);
    if ((v4 + ((v8 - v9) * -0.01)) >= v9)
    {
      v9 = v4 + ((v8 - v9) * -0.01);
    }

    if (v8 >= v9)
    {
      v8 = v9;
    }

    *&a2[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peak] = v8;
    sub_237151C7C();
    v6 = *&a2[v5];
  }

  v10 = __OFADD__(v6, 1);
  v11 = v6 + 1;
  if (v10)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *&a2[v5] = v11;
  v12 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_lastVoiceOverUpdate;
  if (*&a2[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_lastVoiceOverUpdate] < 201 || (*&a2[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_lastVoiceOverUpdate] = 0, v4 == *&a2[v3]) || !UIAccessibilityIsVoiceOverRunning())
  {
LABEL_15:
    v15 = *&a2[v12];
    v10 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (!v10)
    {
      *&a2[v12] = v16;
      return;
    }

    goto LABEL_18;
  }

  v13 = *&a2[v3];
  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v13 <= -9.2234e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v13 < 9.2234e18)
  {
    sub_237196A5C();
    v14 = sub_23719653C();

    [a2 setAccessibilityValue_];

    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
}

void sub_237150764()
{
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLayer];
  v2 = objc_opt_self();
  v3 = [v2 labelColor];
  v4 = [v3 CGColor];

  [v1 setBorderColor_];
  v5 = [v2 systemBackgroundColor];
  v6 = [v5 CGColor];

  [v1 setBackgroundColor_];
  [v1 setBorderWidth_];
  v7 = [v0 layer];
  [v7 contentsScale];
  v9 = v8;

  [v1 setContentsScale_];
  v10 = &v0[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_margins];
  v11 = *&v0[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_margins + 8];
  v12 = -*&v0[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_margins + 16];
  v13 = [v0 layer];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v71.origin.x = v15;
  v71.origin.y = v17;
  v71.size.width = v19;
  v71.size.height = v21;
  v22 = CGRectGetWidth(v71) - v10[1] - v10[3];
  v23 = [v0 layer];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v72.origin.x = v25;
  v72.origin.y = v27;
  v72.size.width = v29;
  v72.size.height = v31;
  [v1 setFrame_];
  v32 = *&v0[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_fillLayer];
  v33 = [v2 tintColor];
  v34 = [v33 colorWithAlphaComponent_];

  v35 = [v34 CGColor];
  [v32 setBackgroundColor_];

  v36 = *&v0[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peakLayer];
  v37 = [v2 redColor];
  v38 = [v37 CGColor];

  [v36 setBackgroundColor_];
  LODWORD(v37) = v0[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_vertical];
  v39 = v10[1] + 1.0;
  [v1 frame];
  v40 = CGRectGetHeight(v73) + -1.0;
  [v1 frame];
  if (v37 == 1)
  {
    v45 = CGRectGetWidth(*&v41) + -2.0;
    v46 = 0.0;
  }

  else
  {
    v46 = CGRectGetHeight(*&v41) + -2.0;
    v45 = 0.0;
  }

  [v32 setFrame_];
  v47 = [v0 layer];
  [v47 contentsScale];
  v49 = v48;

  [v32 setContentsScale_];
  [v32 frame];
  [v36 setFrame_];
  v50 = [v0 layer];
  [v50 contentsScale];
  v52 = v51;

  [v36 setContentsScale_];
  v53 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_lineLayers;
  swift_beginAccess();
  v54 = *&v0[v53];
  if (!(v54 >> 62))
  {
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_6;
    }

LABEL_26:
    v68 = [v0 layer];
    [v68 addSublayer_];

    v69 = [v0 layer];
    [v69 addSublayer_];

    v70 = [v0 layer];
    [v70 addSublayer_];

    goto LABEL_27;
  }

  if (sub_2371969FC() < 1)
  {
    goto LABEL_26;
  }

LABEL_6:
  v55 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_labelLayers;
  swift_beginAccess();
  v56 = *&v0[v55];
  if (v56 >> 62)
  {
    v57 = sub_2371969FC();
    v58 = 0x278A25000;
    if (!v57)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v58 = 0x278A25000uLL;
    if (!v57)
    {
      goto LABEL_15;
    }
  }

  if (v57 < 1)
  {
    __break(1u);
    goto LABEL_33;
  }

  for (i = 0; i != v57; ++i)
  {
    if ((v56 & 0xC000000000000001) != 0)
    {
      v60 = MEMORY[0x2383C62A0](i, v56);
    }

    else
    {
      v60 = *(v56 + 8 * i + 32);
    }

    v61 = v60;
    [v60 *(v58 + 3920)];
  }

LABEL_15:
  v62 = *&v0[v53];
  if (!(v62 >> 62))
  {
    v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v63)
    {
      goto LABEL_17;
    }

LABEL_24:
    v67 = MEMORY[0x277D84F90];
    *&v0[v55] = MEMORY[0x277D84F90];

    *&v0[v53] = v67;

LABEL_27:
    sub_237150DE4();
    sub_2371511C8();
    return;
  }

  v63 = sub_2371969FC();
  if (!v63)
  {
    goto LABEL_24;
  }

LABEL_17:
  if (v63 >= 1)
  {

    for (j = 0; j != v63; ++j)
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v65 = MEMORY[0x2383C62A0](j, v62);
      }

      else
      {
        v65 = *(v62 + 8 * j + 32);
      }

      v66 = v65;
      [v65 *(v58 + 3920)];
    }

    goto LABEL_24;
  }

LABEL_33:
  __break(1u);
}

void sub_237150DE4()
{
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_axis];
  v2 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount;
  v3 = *(v1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    goto LABEL_39;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v0;
    v6 = 0;
    v35 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLayer;
    v36 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_vertical;
    v7 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_lineLayers;
    v34 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase;
    v8 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max;
    v32 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min;
    v33 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_center;
    v30 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_majorLine;
    v31 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_centerLine;
    while (1)
    {
      v9 = v6;
      if (v6 <= -9.22337204e18)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= 9.22337204e18)
      {
        goto LABEL_36;
      }

      v10 = *(v1 + v2);
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_37;
      }

      if (v11 < v9)
      {
        break;
      }

      v13 = *(v1 + v34);
      if (v13 == 0.0)
      {
        v14 = v9;
        v12 = *(v1 + v32) + (((*(v1 + v8) - *(v1 + v32)) / v11) * v14);
        goto LABEL_11;
      }

      v19 = v9 + -4.0;
      if (v9 + -4.0 != 0.0)
      {
        v29 = fabs(v19);
        v12 = powf(v13, v29) * 5.0;
        if (v19 < 0.0)
        {
          v12 = -v12;
        }

LABEL_11:
        if (v6 && v10 >= v6)
        {
          goto LABEL_13;
        }

        goto LABEL_28;
      }

      if (v6)
      {
        v12 = 0.0;
        if (v10 >= v6)
        {
LABEL_13:
          v15 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
          if (v12 == *(v1 + v33))
          {
            v16 = sub_23719653C();
            [v15 setName_];

            v17 = *(v1 + v31);
            if (!v17)
            {
              v18 = 0;
LABEL_22:
              [v15 setBackgroundColor_];

              v21 = v5[v36];
              [*&v5[v35] bounds];
              if (v21 == 1)
              {
                [v15 setFrame_];
              }

              else
              {
                [v15 setFrame_];
              }

              v26 = [v5 layer];
              [v26 addSublayer_];

              swift_beginAccess();
              v27 = v15;
              MEMORY[0x2383C5F60]();
              if (*((*&v5[v7] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v5[v7] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_23719664C();
              }

              sub_23719665C();
              swift_endAccess();

              goto LABEL_28;
            }
          }

          else
          {
            v20 = sub_23719653C();
            [v15 setName_];

            v17 = *(v1 + v30);
          }

          v18 = [v17 CGColor];
          goto LABEL_22;
        }
      }

LABEL_28:
      if (v4 == v6)
      {
        return;
      }

      if (__OFADD__(v6++, 1))
      {
        goto LABEL_38;
      }
    }

    v12 = *(v1 + v8);
    goto LABEL_11;
  }

LABEL_40:
  __break(1u);
}

void sub_2371511C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B040;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = objc_opt_self();
  v5 = *MEMORY[0x277D76938];
  v51 = v3;
  v6 = [v4 preferredFontForTextStyle_];
  v49 = sub_237115094(0, &unk_27DE94E10);
  *(inited + 40) = v6;
  v7 = *MEMORY[0x277D740C0];
  *(inited + 64) = v49;
  *(inited + 72) = v7;
  v8 = objc_opt_self();
  v48 = v7;
  v9 = [v8 labelColor];
  v10 = sub_237115094(0, &qword_27DE94788);
  *(inited + 104) = v10;
  *(inited + 80) = v9;
  sub_237119BCC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94888);
  swift_arrayDestroy();
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_23719B040;
  *(v11 + 32) = v51;
  v52 = v5;
  v53 = v4;
  *(v11 + 40) = [v4 preferredFontForTextStyle_];
  *(v11 + 64) = v49;
  *(v11 + 72) = v48;
  v50 = v8;
  v12 = [v8 secondaryLabelColor];
  *(v11 + 104) = v10;
  *(v11 + 80) = v12;
  sub_237119BCC(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  v13 = *&v1[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_axis];
  v46 = v13;
  if (*(v13 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel + 8))
  {
    v14 = *(v13 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel);
    v15 = *(v13 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel + 8);
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  MEMORY[0x2383C5F20](v14, v15);

  v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v17 = sub_23719653C();

  type metadata accessor for Key(0);
  sub_23713D200();
  v18 = sub_23719651C();

  v47 = [v16 initWithString:v17 attributes:v18];

  v45 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount;
  v19 = *(v46 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount);
  v20 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = objc_opt_self();
    v22 = 0;
    v23 = *MEMORY[0x277CDA030];
    v24 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_labelLayers;
    do
    {
      sub_2371519E0(v22);
      v26 = v25;
      v27 = [objc_allocWithZone(MEMORY[0x277CD9FC8]) init];
      v28 = [v53 preferredFontForTextStyle_];
      [v27 setFont_];

      v29 = [v50 labelColor];
      v30 = [v29 CGColor];

      [v27 setForegroundColor_];
      [v27 setFontSize_];
      [v27 setAlignmentMode_];
      v31 = v27;
      v32 = [v21 mainScreen];
      [v32 scale];
      v34 = v33;

      [v31 setContentsScale_];
      [v31 setAnchorPoint_];

      swift_beginAccess();
      v35 = v31;
      MEMORY[0x2383C5F60]();
      if (*((*&v1[v24] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v24] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23719664C();
      }

      sub_23719665C();
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E70);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_23719B020;
      *(v36 + 56) = MEMORY[0x277D83A90];
      *(v36 + 64) = MEMORY[0x277D83B08];
      *(v36 + 32) = v26;
      sub_23719654C();

      v37 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v38 = sub_23719653C();

      v39 = sub_23719651C();
      v40 = [v37 initWithString:v38 attributes:v39];

      if (!v22)
      {
        goto LABEL_12;
      }

      v41 = *(v46 + v45);
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_18;
      }

      if (v22 == v43)
      {
LABEL_12:
        [v40 appendAttributedString_];
      }

      [v35 setString_];
      v44 = [v1 layer];
      [v44 addSublayer_];

      if (v20 == v22)
      {

        return;
      }

      v42 = __OFADD__(v22++, 1);
    }

    while (!v42);
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
}

void sub_237151884(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_axis);
  if (*(v2 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase) == 0.0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_vertical);
    [*(v1 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLayer) bounds];
    if (v3 == 1)
    {
      CGRectGetHeight(*&v4);
    }

    else
    {
      CGRectGetWidth(*&v4);
    }
  }

  else
  {
    if (a1 != 0.0)
    {
      log2f(fabsf(a1) / 5.0);
    }

    v8 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_vertical);
    [*(v1 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLayer) bounds];
    if (v8 == 1)
    {
      CGRectGetHeight(*&v9);
    }

    else
    {
      CGRectGetWidth(*&v9);
    }

    if (__OFADD__(*(v2 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount), 1))
    {
      __break(1u);
    }
  }
}

void sub_2371519E0(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v2 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_axis);
  v3 = *(v2 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (v5 >= a1 && *(v2 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase) != 0.0 && a1 + -4.0 != 0.0)
  {
    v6 = fabs(a1 + -4.0);
    powf(*(v2 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase), v6);
  }
}

id sub_237151B14()
{
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  sub_237151884(*(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_level));
  v3 = v2;
  if (*(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_vertical) == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_fillLayer);
    v5 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLayer);
    [v5 bounds];
    v6 = CGRectGetHeight(v11) - v3;
    [v5 bounds];
    [v4 setFrame_];
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_fillLayer);
    if (v2 >= 1.0)
    {
      v8 = v2 + -1.0;
    }

    else
    {
      v8 = -1.0;
    }

    [*(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLayer) bounds];
    [v7 setFrame_];
  }

  return [v1 commit];
}

id sub_237151C7C()
{
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  sub_237151884(*(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peak));
  v3 = v2;
  if (*(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_vertical) == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peakLayer);
    v5 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLayer);
    [v5 bounds];
    v6 = CGRectGetHeight(v10) - v3;
    [v5 bounds];
    [v4 setFrame_];
  }

  else
  {
    if (v2 < 1.0)
    {
      v3 = 0.0;
    }

    v7 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peakLayer);
    [*(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLayer) bounds];
    [v7 setFrame_];
  }

  return [v1 commit];
}

void sub_237151DDC()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_lineLayers;
  swift_beginAccess();
  v43 = v1;
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_38;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v4 = 0;
      v5 = 0x7265746E6563;
      v41 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_vertical;
      v6 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_axis);
      v42 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLayer;
      v44 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min;
      v39 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount;
      v40 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_center;
      v37 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase;
      v38 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max;
      while (1)
      {
        v12 = *(v0 + v43);
        if ((v12 & 0xC000000000000001) == 0)
        {
          break;
        }

        v13 = MEMORY[0x2383C62A0](v4, v12);

LABEL_10:
        v14 = v4 + 1;
        v15 = *(v6 + v44);
        v16 = [v13 name];
        if (v16)
        {
          v17 = v16;
          v18 = v5;
          v19 = sub_23719657C();
          v21 = v20;

          v22 = v19;
          v5 = v18;
          if (v22 == v18 && v21 == 0xE600000000000000)
          {

LABEL_23:
            v15 = *(v6 + v40);
LABEL_24:
            sub_237151884(v15);
            v30 = v29;
            if (*(v0 + v41) == 1)
            {
              v31 = *(v0 + v42);
              [v31 frame];
              MinX = CGRectGetMinX(v47);
              [v31 bounds];
              MinY = CGRectGetHeight(v48) - v30 + -0.5;
              [v31 frame];
              Width = CGRectGetWidth(v49);
              Height = 1.0;
            }

            else
            {
              MinX = v29 + -0.5;
              v8 = *(v0 + v42);
              [v8 frame];
              MinY = CGRectGetMinY(v45);
              [v8 frame];
              Height = CGRectGetHeight(v46);
              Width = 1.0;
            }

            [v13 setFrame_];
            goto LABEL_6;
          }

          v24 = sub_237196A7C();

          if (v24)
          {
            goto LABEL_23;
          }
        }

        if (*(v6 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount) <= v4)
        {
          goto LABEL_24;
        }

        v25 = v14;
        if (v14 <= -9.22337204e18)
        {
          goto LABEL_35;
        }

        if (v25 >= 9.22337204e18)
        {
          goto LABEL_36;
        }

        v26 = *(v6 + v39);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_37;
        }

        if (v28 >= v25)
        {
          v32 = *(v6 + v37);
          if (v32 == 0.0)
          {
            v33 = v25;
            v15 = *(v6 + v44) + (((*(v6 + v38) - *(v6 + v44)) / v28) * v33);
          }

          else
          {
            v34 = v25 + -4.0;
            v15 = 0.0;
            if (v25 + -4.0 != 0.0)
            {
              v35 = fabs(v34);
              v15 = powf(v32, v35) * 5.0;
              if (v34 < 0.0)
              {
                v15 = -v15;
              }
            }
          }
        }

        else
        {
          v15 = *(v6 + v38);
        }

        if (v15 != *(v6 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_center))
        {
          goto LABEL_24;
        }

LABEL_6:

        v4 = v14;
        if (v3 == v14)
        {
          return;
        }
      }

      if (v4 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      v36 = sub_2371969FC();
      if (v36 < 0)
      {
        __break(1u);
      }

      v3 = v36;
      if (!v36)
      {
        return;
      }
    }

    v13 = *(v12 + 8 * v4 + 32);
    goto LABEL_10;
  }
}

void sub_2371521D0()
{
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_axis];
  v2 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount;
  v3 = *(v1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v4 < 0)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v5 = v0;
  v6 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_labelLayers;
  v7 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_vertical;
  v43 = &v0[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_margins];
  v45 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLayer;
  v44 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase;
  v47 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max;
  v42 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min;
  swift_beginAccess();
  v8 = 0;
  v46 = v2;
  while (1)
  {
    v9 = *&v5[v6];
    if ((v9 & 0xC000000000000001) != 0)
    {

      v10 = MEMORY[0x2383C62A0](v8, v9);
    }

    else
    {
      if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v10 = *(v9 + 8 * v8 + 32);
    }

    v11 = v8;
    if (v8 <= -9.22337204e18)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v11 >= 9.22337204e18)
    {
      goto LABEL_44;
    }

    v12 = *(v1 + v2);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_45;
    }

    if (v14 >= v11)
    {
      if (*(v1 + v44) == 0.0)
      {
        v16 = v11;
        v15 = *(v1 + v42) + (((*(v1 + v47) - *(v1 + v42)) / v14) * v16);
      }

      else
      {
        v17 = v11 + -4.0;
        v15 = 0.0;
        if (v17 != 0.0)
        {
          v18 = fabs(v17);
          v15 = powf(*(v1 + v44), v18) * 5.0;
          if (v17 < 0.0)
          {
            v15 = -v15;
          }
        }
      }
    }

    else
    {
      v15 = *(v1 + v47);
    }

    v19 = v5;
    sub_237151884(v15);
    v21 = v20;
    if (v5[v7])
    {
      v22 = *(v1 + v2);
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_47;
      }

      v24 = *&v5[v45];
      v48 = v10;
      v25 = v10;
      [v24 frame];
      v26 = CGRectGetWidth(v53) + 5.0;
      [v24 bounds];
      v27 = CGRectGetHeight(v54) - v21;
      if (v8 != v23)
      {
        v27 = v27 + -7.0;
      }

      [v25 setFrame_];

      v2 = v46;
      v10 = v48;
      v5 = v19;
    }

    else
    {
      Width = 0.0;
      if (v8)
      {
        if ([v10 string])
        {
          sub_23719682C();
          swift_unknownObjectRelease();
        }

        else
        {
          v50 = 0u;
          v51 = 0u;
        }

        v52[0] = v50;
        v52[1] = v51;
        if (*(&v51 + 1))
        {
          sub_237115094(0, &qword_27DE94D28);
          if (swift_dynamicCast())
          {
            v29 = [v5 layer];
            [v29 frame];
            v31 = v30;
            v33 = v32;

            [v49 boundingRectWithSize:1 options:0 context:{v31, v33}];
            Width = CGRectGetWidth(v55);

            v34 = *(v1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount);
            v13 = __OFADD__(v34, 1);
            v35 = v34 + 1;
            if (v13)
            {
              goto LABEL_48;
            }

            if (v8 < v35)
            {
              Width = Width * 0.5;
            }

            v2 = v46;
          }
        }

        else
        {
          sub_237152A68(v52);
        }
      }

      [v10 setFrame_];
    }

    if (v4 == v8)
    {
      break;
    }

    v13 = __OFADD__(v8++, 1);
    if (v13)
    {
      goto LABEL_46;
    }
  }

  v36 = *&v5[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLabelLayer];
  if (v36)
  {
    v37 = *&v5[v45];
    v38 = v36;
    [v37 frame];
    MinX = CGRectGetMinX(v56);
    [v37 frame];
    MinY = CGRectGetMinY(v57);
    [v37 frame];
    v41 = MinY - CGRectGetHeight(v58) + -2.0;
    [v37 frame];
    [v38 setFrame_];
  }
}

id sub_2371527D0(void *a1)
{
  v3 = objc_opt_self();
  [v3 begin];
  [v3 setDisableActions_];
  v4 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLayer);
  v5 = (v1 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_margins);
  v7 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_margins);
  v6 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_margins + 8);
  [a1 bounds];
  v8 = CGRectGetWidth(v11) - v5[1] - v5[3];
  [a1 bounds];
  [v4 setFrame_];
  sub_237151DDC();
  sub_237151B14();
  sub_237151C7C();
  sub_2371521D0();

  return [v3 commit];
}

id sub_237152950()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AULabeledMeterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_237152A68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_237152AF0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peak) = -1029701632;
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peakFaderTrigger) = 0;
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_lastVoiceOverUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peakTimer) = 0;
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_level) = -1029701632;
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_vertical) = 1;
  v2 = (v0 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_margins);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_axis;
  v4 = objc_allocWithZone(type metadata accessor for CAAUGraphView.AxisSetting());
  *(v0 + v3) = sub_2371849D0(1936291937, 0xE400000000000000);
  v5 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLayer;
  *(v1 + v5) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v6 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_fillLayer;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v7 = OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_peakLayer;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v8 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_lineLayers) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_labelLayers) = v8;
  v9 = (v1 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_label);
  *v9 = 0;
  v9[1] = 0;
  *(v1 + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_meterLabelLayer) = 0;
  sub_2371969DC();
  __break(1u);
}

void sub_237152DA4()
{
  type metadata accessor for AUGenericViewInternal();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = Strong;
  v4 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param;
  v5 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = [v5 displayName];
  sub_23719657C();

  sub_23719634C();

  v7 = sub_23719653C();

  [v3 setText_];

  v8 = *(v0 + v4);
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v9 = [v8 value];
  (*((*MEMORY[0x277D85000] & *v0) + 0x120))(v9);
}

void *sub_237152F6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
  v2 = v1;
  return v1;
}

void sub_237152F9C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
  *(v1 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param) = a1;
  v3 = a1;

  sub_237152DA4();
}

void sub_2371530BC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = Strong;
  v3 = [objc_opt_self() labelColor];
  [v2 setTextColor_];

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    return;
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = [v0 tintColor];
  [v6 setTextColor_];
}

id sub_2371531C8(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_owner];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AUGenericViewParameterCellBase();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_2371532F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUGenericViewParameterCellBase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2371533D8(void *a1, uint64_t a2, float a3)
{
  if ([a1 unit] == 8)
  {
    v6 = log10f(fmaxf(a3, 0.000001));
    if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (v6 <= -9.2234e18)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v6 < 9.2234e18)
    {
LABEL_9:
      if (__OFADD__(v6, 1))
      {
        __break(1u);
      }

      else if (!__OFSUB__(a2, v6 + 1))
      {
        [a1 flags];
        return;
      }

      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
  }

  [a1 maxValue];
  v8 = v7;
  [a1 minValue];
  v6 = log10f(fmaxf(v8 - v9, 0.000001));
  if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= -9.2234e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 < 9.2234e18)
  {
    goto LABEL_9;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_237153528(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  v8 = sub_23719639C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  if ([a1 unit] != 1)
  {
    if ([a1 unit] == 2)
    {
      [a1 value];
      if (v19 == 0.0)
      {
        return 28494;
      }

      else
      {
        return 7562585;
      }
    }

    sub_2371533D8(a1, a2, a4);
    v21 = v20;
    v22 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    sub_23719638C();
    v23 = sub_23719635C();
    (*(v9 + 8))(v12, v8);
    [v22 setLocale_];

    [v22 setNumberStyle_];
    [v22 setMaximumFractionDigits_];
    [v22 setGeneratesDecimalNumbers_];
    if (v21 <= 0)
    {
      v24 = v21;
    }

    else
    {
      v24 = a3;
    }

    [v22 setMinimumFractionDigits_];
    v25 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v26 = a4;
    v27 = [v25 initWithFloat_];
    v28 = [v22 stringFromNumber_];

    if (v28)
    {
      v29 = sub_23719657C();

      return v29;
    }

    return 0;
  }

  result = [a1 valueStrings];
  if (result)
  {
    v14 = result;
    v15 = sub_23719663C();

    result = [a1 value];
    if ((LODWORD(v16) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v16 > -9.2234e18)
    {
      if (v16 < 9.2234e18)
      {
        v17 = v16;
        if ((v16 & 0x8000000000000000) == 0)
        {
          if (*(v15 + 16) > v17)
          {
            v18 = *(v15 + 16 * v17 + 32);

            return v18;
          }

          goto LABEL_26;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

  return result;
}

void sub_237153858()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xF8);
  v2 = v1();
  if (!v2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v2 unit];

  if (v4 - 1 < 2)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v6 = Strong;
  v7 = v1();
  if (!v7)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 value];
  v10 = v9;

  v11 = v1();
  sub_237153528(v11, 3, 1, v10);
  v13 = v12;

  if (v13)
  {
    v14 = sub_23719653C();
  }

  else
  {
    v14 = 0;
  }

  [v6 setText_];
}

void sub_2371539D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23719653C();
  v5 = objc_opt_self();
  v6 = [v5 bundleWithIdentifier_];

  if (v6)
  {
    sub_23719634C();

    MEMORY[0x2383C5F20](a1, a2);
    v7 = sub_23719653C();
    v8 = [v5 bundleWithIdentifier_];

    if (v8)
    {
      sub_23719634C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_237153B88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_237153BF0()
{
  v1 = v0;
  v152.receiver = v0;
  v152.super_class = type metadata accessor for AUDynamicsProcessorViewController();
  objc_msgSendSuper2(&v152, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    goto LABEL_35;
  }

  v3 = v2;
  [v2 frame];
  v5 = v4;
  v7 = v6;

  v8 = &v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_previousSize];
  *v8 = v5;
  *(v8 + 1) = v7;
  v9 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView;
  v10 = *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView];
  v11 = [v1 view];
  if (!v11)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = v11;
  [v11 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v153.origin.x = v14;
  v153.origin.y = v16;
  v153.size.width = v18;
  v153.size.height = v20;
  [v10 setFrame_];

  [*&v1[v9] setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = [v1 view];
  if (!v21)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v22 = v21;
  [v21 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v32 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_viewContainer;
  v33 = *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_viewContainer];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_viewContainer] = v31;
  v34 = v31;

  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  v35 = *&v1[v32];
  if (v35)
  {
    v36 = [v35 layer];
    v37 = [objc_opt_self() secondaryLabelColor];
    v38 = v9;
    v39 = [v37 CGColor];

    [v36 setBorderColor_];
    v9 = v38;
    v40 = *&v1[v32];
    if (v40)
    {
      v41 = [v40 layer];
      [v41 setBorderWidth_];
    }
  }

  v42 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_graphView;
  [*&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_graphView] setFrame_];
  v142 = v42;
  [*&v1[v42] setTranslatesAutoresizingMaskIntoConstraints_];
  v43 = [v1 view];
  if (!v43)
  {
    goto LABEL_38;
  }

  v44 = v43;
  [v43 frame];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v154.origin.x = v46;
  v154.origin.y = v48;
  v154.size.width = v50;
  v154.size.height = v52;
  Height = CGRectGetHeight(v154);
  v141 = v9;
  [*&v1[v9] frame];
  v54 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v55 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_edgeControlSection;
  v56 = *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_edgeControlSection];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_edgeControlSection] = v54;
  v57 = v54;

  [v57 setTranslatesAutoresizingMaskIntoConstraints_];
  v58 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_meter;
  [*&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_meter] setTranslatesAutoresizingMaskIntoConstraints_];
  v139 = v58;
  v59 = *&v1[v58];
  type metadata accessor for AUAppleViewControllerBase();
  v60 = v59;
  sub_237175EDC();
  v61 = sub_23719653C();

  [v60 setAccessibilityLabel_];

  v62 = sub_23719653C();
  v63 = [objc_opt_self() bundleWithIdentifier_];

  v64 = objc_opt_self();
  v65 = v63;
  v66 = [v64 currentTraitCollection];
  v67 = sub_23719653C();
  v68 = objc_opt_self();
  v69 = [v68 colorNamed:v67 inBundle:v65 compatibleWithTraitCollection:v66];

  v144 = v65;
  if (!v69)
  {
    v69 = [v68 systemBackgroundColor];
  }

  v70 = *&v1[v55];
  if (v70)
  {
    v71 = [v70 layer];
    v72 = [v69 CGColor];
    [v71 setBackgroundColor_];
  }

  v150 = v55;
  v73 = *&v1[v32];
  if (v73)
  {
    v74 = [v73 layer];
    v75 = [v69 CGColor];
    [v74 setBackgroundColor_];
  }

  v143 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B670;
  v145 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_inputLabel;
  v77 = *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_inputLabel];
  *(inited + 32) = v77;
  v147 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_outputLabel;
  v78 = *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_outputLabel];
  *(inited + 40) = v78;
  v149 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_meterLabel;
  v79 = *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_meterLabel];
  *(inited + 48) = v79;
  v80 = inited & 0xC000000000000001;
  v81 = v77;
  v82 = v78;
  v83 = v79;
  if ((inited & 0xC000000000000001) != 0)
  {
    v84 = MEMORY[0x2383C62A0](0, inited);
  }

  else
  {
    v84 = v81;
  }

  v85 = v84;
  v86 = objc_opt_self();
  v87 = [v86 systemFontOfSize_];
  [v85 setFont_];

  v88 = [v68 secondaryLabelColor];
  [v85 setTextColor_];

  [v85 setIsAccessibilityElement_];
  [v85 setTranslatesAutoresizingMaskIntoConstraints_];
  [v85 setTextAlignment_];

  if (v80)
  {
    v89 = MEMORY[0x2383C62A0](1, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v89 = *(inited + 40);
  }

  v90 = v89;
  v91 = [v86 systemFontOfSize_];
  [v90 setFont_];

  v92 = [v68 secondaryLabelColor];
  [v90 setTextColor_];

  [v90 setIsAccessibilityElement_];
  [v90 setTranslatesAutoresizingMaskIntoConstraints_];
  [v90 setTextAlignment_];

  if (v80)
  {
    v93 = MEMORY[0x2383C62A0](2, inited);
    v94 = &selRef_effectiveContentSize;
    goto LABEL_24;
  }

  v94 = &selRef_effectiveContentSize;
  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
    goto LABEL_34;
  }

  v93 = *(inited + 48);
LABEL_24:

  v95 = [v86 systemFontOfSize_];
  [v93 setFont_];

  v96 = [v68 secondaryLabelColor];
  [v93 setTextColor_];

  [v93 setIsAccessibilityElement_];
  [v93 setTranslatesAutoresizingMaskIntoConstraints_];
  [v93 setTextAlignment_];

  v97 = *&v1[v145];
  sub_237175EDC();
  v98 = sub_23719653C();

  [v97 setText_];

  v99 = *&v1[v147];
  sub_237175EDC();
  v100 = sub_23719653C();

  [v99 setText_];

  v101 = *&v1[v149];
  sub_237175EDC();
  v102 = sub_23719653C();

  [v101 setText_];

  v103 = *&v1[v149];
  [v103 intrinsicContentSize];
  [v103 v94[252]];
  [v103 setFrame_];

  v104 = *&v1[v147];
  CGAffineTransformMakeRotation(&v151, -1.57079633);
  [v104 setTransform_];
  v105 = *&v1[v32];
  if (v105)
  {
    v106 = v105;
    v107 = [v1 view];
    if (v107)
    {
      v108 = v107;
      [v107 addSubview_];

      [v106 addSubview_];
      [v106 addSubview_];
      [v106 addSubview_];
      [v106 addSubview_];
      v109 = *&v1[v150];
      if (v109)
      {
        v110 = v109;
        [v106 addSubview_];
        [v110 addSubview_];
      }

      [v106 addSubview_];

      goto LABEL_29;
    }

LABEL_39:
    __break(1u);
    return;
  }

LABEL_29:
  v111 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_attackKnob;
  [*&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_attackKnob] setTranslatesAutoresizingMaskIntoConstraints_];
  v148 = v111;
  v112 = *&v1[v111];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94D18);
  v113 = swift_initStackObject();
  *(v113 + 16) = xmmword_23719BD00;
  *(v113 + 32) = 0x6D61726150;
  *(v113 + 40) = 0xE500000000000000;
  v114 = MEMORY[0x277D84CC0];
  *(v113 + 48) = 4;
  *(v113 + 72) = v114;
  *(v113 + 80) = 0x737469676944;
  v115 = MEMORY[0x277D83B88];
  *(v113 + 88) = 0xE600000000000000;
  *(v113 + 96) = 2;
  *(v113 + 120) = v115;
  *(v113 + 128) = 7235917;
  *(v113 + 136) = 0xE300000000000000;
  v116 = v112;
  v117 = sub_2371307E8(4u);
  v118 = MEMORY[0x277D83A90];
  *(v113 + 144) = v117;
  *(v113 + 168) = v118;
  *(v113 + 176) = 7889229;
  *(v113 + 184) = 0xE300000000000000;
  *(v113 + 192) = sub_237130920(4u);
  *(v113 + 216) = v118;
  *(v113 + 224) = 0x65756C6156;
  *(v113 + 232) = 0xE500000000000000;
  *(v113 + 240) = sub_2371305C0(4u);
  *(v113 + 264) = v118;
  *(v113 + 272) = 0x656C746954;
  *(v113 + 280) = 0xE500000000000000;
  v119 = sub_237175EDC();
  *(v113 + 312) = MEMORY[0x277D837D0];
  *(v113 + 288) = v119;
  *(v113 + 296) = v120;
  v121 = sub_237119CF4(v113);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948A0);
  swift_arrayDestroy();
  sub_237140780(v121);

  v122 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_releaseKnob;
  [*&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_releaseKnob] setTranslatesAutoresizingMaskIntoConstraints_];
  v146 = v122;
  v123 = *&v1[v122];
  v124 = swift_initStackObject();
  *(v124 + 16) = xmmword_23719BD00;
  *(v124 + 32) = 0x6D61726150;
  *(v124 + 40) = 0xE500000000000000;
  *(v124 + 48) = 5;
  *(v124 + 72) = MEMORY[0x277D84CC0];
  *(v124 + 80) = 0x737469676944;
  *(v124 + 88) = 0xE600000000000000;
  *(v124 + 96) = 2;
  *(v124 + 120) = MEMORY[0x277D83B88];
  *(v124 + 128) = 7235917;
  *(v124 + 136) = 0xE300000000000000;
  v125 = v123;
  *(v124 + 144) = sub_2371307E8(5u);
  *(v124 + 168) = v118;
  *(v124 + 176) = 7889229;
  *(v124 + 184) = 0xE300000000000000;
  *(v124 + 192) = sub_237130920(5u);
  *(v124 + 216) = v118;
  *(v124 + 224) = 0x65756C6156;
  *(v124 + 232) = 0xE500000000000000;
  *(v124 + 240) = sub_2371305C0(5u);
  *(v124 + 264) = v118;
  *(v124 + 272) = 0x656C746954;
  *(v124 + 280) = 0xE500000000000000;
  v126 = sub_237175EDC();
  *(v124 + 312) = MEMORY[0x277D837D0];
  *(v124 + 288) = v126;
  *(v124 + 296) = v127;
  v128 = sub_237119CF4(v124);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_237140780(v128);

  v129 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_gainKnob;
  [*&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_gainKnob] setTranslatesAutoresizingMaskIntoConstraints_];
  v130 = *&v1[v129];
  v131 = swift_initStackObject();
  *(v131 + 32) = 0x6D61726150;
  *(v131 + 16) = xmmword_23719B700;
  *(v131 + 40) = 0xE500000000000000;
  *(v131 + 48) = 6;
  *(v131 + 72) = MEMORY[0x277D84CC0];
  *(v131 + 80) = 7235917;
  *(v131 + 88) = 0xE300000000000000;
  v132 = v130;
  *(v131 + 96) = sub_2371307E8(6u);
  *(v131 + 120) = v118;
  *(v131 + 128) = 7889229;
  *(v131 + 136) = 0xE300000000000000;
  *(v131 + 144) = sub_237130920(6u);
  *(v131 + 168) = v118;
  *(v131 + 176) = 0x65756C6156;
  *(v131 + 184) = 0xE500000000000000;
  *(v131 + 192) = sub_2371305C0(6u);
  *(v131 + 216) = v118;
  *(v131 + 224) = 0x656C746954;
  *(v131 + 232) = 0xE500000000000000;
  v133 = sub_237175EDC();
  *(v131 + 264) = MEMORY[0x277D837D0];
  *(v131 + 240) = v133;
  *(v131 + 248) = v134;
  v135 = sub_237119CF4(v131);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_237140780(v135);

  v136 = *&v1[v150];
  if (v136)
  {
    v137 = *&v1[v148];
    v138 = v136;
    [v138 addSubview_];
    [v138 addSubview_];
    [v138 addSubview_];
  }

  sub_237154C88();
  sub_237155F08();
}

void sub_237154C88()
{
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_viewContainer];
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = *&v0[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_edgeControlSection];
  if (!v3)
  {
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23719AB20;
  v149 = v3;
  v5 = v1;
  v6 = [v5 leadingAnchor];
  v7 = [v2 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [v7 leadingAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v10;
  v11 = [v5 trailingAnchor];
  v12 = [v2 view];
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  v14 = [v12 trailingAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v4 + 40) = v15;
  v16 = [v5 topAnchor];
  v17 = [v2 view];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v4 + 48) = v20;
  v21 = [v5 bottomAnchor];
  v22 = [v2 view];
  if (!v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 bottomAnchor];

  v26 = [v21 constraintEqualToAnchor_];
  *(v4 + 56) = v26;
  sub_23710EEB4();
  v27 = sub_23719661C();

  v150 = v24;
  [v24 activateConstraints_];

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_23719AB20;
  v29 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView;
  v30 = [*&v2[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView] leadingAnchor];
  v31 = [v5 &off_278A25528 + 1];
  v32 = [v30 constraintEqualToAnchor_];

  *(v28 + 32) = v32;
  v33 = [*&v2[v29] trailingAnchor];
  v34 = [v5 &off_278A259C8 + 4];
  v35 = [v33 constraintEqualToAnchor_];

  *(v28 + 40) = v35;
  v36 = [*&v2[v29] topAnchor];
  v37 = [v5 &off_278A25950];
  v38 = [v36 constraintEqualToAnchor_];

  *(v28 + 48) = v38;
  v39 = v29;
  v147 = v29;
  v40 = [*&v2[v29] heightAnchor];
  v41 = [v40 constraintEqualToConstant_];

  *(v28 + 56) = v41;
  v42 = sub_23719661C();

  [v24 activateConstraints_];

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_23719AB20;
  v44 = v5;
  v45 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_graphView;
  v46 = [*&v2[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_graphView] leadingAnchor];
  v148 = v44;
  v47 = [v44 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v43 + 32) = v48;
  v49 = [*&v2[v45] trailingAnchor];
  v50 = [v149 leadingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:5.0];

  *(v43 + 40) = v51;
  v52 = [*&v2[v45] topAnchor];
  v53 = [*&v2[v39] bottomAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v43 + 48) = v54;
  v55 = [*&v2[v45] bottomAnchor];
  v56 = [v44 bottomAnchor];
  v57 = [v55 constraintEqualToAnchor_];

  *(v43 + 56) = v57;
  v58 = sub_23719661C();

  [v24 activateConstraints_];

  v59 = [v149 widthAnchor];
  v60 = [v59 constraintEqualToConstant_];

  v61 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_rightWidthConstraint;
  v62 = *&v2[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_rightWidthConstraint];
  *&v2[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_rightWidthConstraint] = v60;

  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_23719AB20;
  v64 = [v149 topAnchor];
  v65 = [*&v2[v147] bottomAnchor];
  v66 = [v64 constraintEqualToAnchor_];

  *(v63 + 32) = v66;
  v67 = [v149 trailingAnchor];
  v68 = [v44 trailingAnchor];
  v69 = [v67 &selRef:v68 setUrl:? + 5];

  *(v63 + 40) = v69;
  v70 = [v149 bottomAnchor];
  v71 = [*&v2[v45] bottomAnchor];
  v72 = [v70 &selRef:v71 setUrl:? + 5];

  *(v63 + 48) = v72;
  v73 = *&v2[v61];
  if (!v73)
  {
LABEL_16:
    __break(1u);
    return;
  }

  *(v63 + 56) = v73;
  v74 = v73;
  v75 = sub_23719661C();

  [v150 activateConstraints_];

  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_23719AB20;
  v77 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_meter;
  v78 = [*&v2[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_meter] leadingAnchor];
  v79 = [v149 &off_278A25528 + 1];
  v80 = [v78 constraintEqualToAnchor_];

  *(v76 + 32) = v80;
  v81 = [*&v2[v77] widthAnchor];
  v82 = [v81 constraintEqualToConstant_];

  *(v76 + 40) = v82;
  v83 = [*&v2[v77] topAnchor];
  v84 = [*&v2[v45] &off_278A25950];
  v85 = [v83 constraintEqualToAnchor:v84 constant:30.0];

  *(v76 + 48) = v85;
  v86 = [*&v2[v77] bottomAnchor];
  v87 = [*&v2[v45] &selRef_setNeedsDisplayInRect_ + 5];
  v88 = [v86 constraintEqualToAnchor:v87 constant:-27.0];

  *(v76 + 56) = v88;
  v89 = sub_23719661C();

  [v150 activateConstraints_];

  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_23719B720;
  v91 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_inputLabel;
  v92 = [*&v2[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_inputLabel] centerXAnchor];
  v93 = [*&v2[v45] &selRef_startScan + 2];
  v94 = [v92 constraintEqualToAnchor:v93 constant:15.0];

  *(v90 + 32) = v94;
  v95 = [*&v2[v91] bottomAnchor];
  v96 = [*&v2[v45] topAnchor];
  v97 = [v95 constraintEqualToAnchor:v96 constant:50.0];

  *(v90 + 40) = v97;
  v98 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_outputLabel;
  v99 = [*&v2[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_outputLabel] centerYAnchor];
  v100 = [*&v2[v77] &selRef_state];
  v101 = [v99 constraintEqualToAnchor_];

  *(v90 + 48) = v101;
  v102 = [*&v2[v98] &selRef_startScan + 2];
  v103 = [*&v2[v45] leadingAnchor];
  v104 = [v102 constraintEqualToAnchor:v103 constant:70.0];

  *(v90 + 56) = v104;
  v105 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_meterLabel;
  v106 = [*&v2[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_meterLabel] bottomAnchor];
  v107 = [*&v2[v45] topAnchor];
  v108 = [v106 constraintEqualToAnchor:v107 constant:25.0];

  *(v90 + 64) = v108;
  v109 = [*&v2[v105] centerXAnchor];
  v110 = [*&v2[v77] centerXAnchor];
  v111 = [v109 constraintEqualToAnchor:v110 constant:-20.0];

  *(v90 + 72) = v111;
  v112 = sub_23719661C();

  [v150 activateConstraints_];

  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_23719BD10;
  v114 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_releaseKnob;
  v115 = [*&v2[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_releaseKnob] centerYAnchor];
  v116 = [v149 centerYAnchor];
  v117 = [v115 constraintEqualToAnchor_];

  *(v113 + 32) = v117;
  v118 = [*&v2[v114] trailingAnchor];
  v119 = [v149 trailingAnchor];
  v120 = [v118 &selRef:v119 setZPosition:-20.0 + 6];

  *(v113 + 40) = v120;
  v121 = [*&v2[v114] widthAnchor];
  v122 = [v121 constraintEqualToConstant_];

  *(v113 + 48) = v122;
  v123 = [*&v2[v114] heightAnchor];
  v124 = [v123 constraintEqualToConstant_];

  *(v113 + 56) = v124;
  v125 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_attackKnob;
  v126 = [*&v2[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_attackKnob] widthAnchor];
  v127 = [v126 constraintEqualToConstant_];

  *(v113 + 64) = v127;
  v128 = [*&v2[v125] heightAnchor];
  v129 = [v128 constraintEqualToConstant_];

  *(v113 + 72) = v129;
  v130 = [*&v2[v125] trailingAnchor];
  v131 = [v149 trailingAnchor];
  v132 = [v130 constraintEqualToAnchor:v131 constant:-20.0];

  *(v113 + 80) = v132;
  v133 = [*&v2[v125] bottomAnchor];
  v134 = [*&v2[v114] topAnchor];
  v135 = [v133 constraintEqualToAnchor:v134 constant:-30.0];

  *(v113 + 88) = v135;
  v136 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_gainKnob;
  v137 = [*&v2[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_gainKnob] widthAnchor];
  v138 = [v137 &selRef_stopAdvertising + 1];

  *(v113 + 96) = v138;
  v139 = [*&v2[v136] heightAnchor];
  v140 = [v139 &selRef_stopAdvertising + 1];

  *(v113 + 104) = v140;
  v141 = [*&v2[v136] trailingAnchor];
  v142 = [v149 trailingAnchor];
  v143 = [v141 constraintEqualToAnchor:v142 constant:-20.0];

  *(v113 + 112) = v143;
  v144 = [*&v2[v136] topAnchor];
  v145 = [*&v2[v114] bottomAnchor];
  v146 = [v144 constraintEqualToAnchor:v145 constant:30.0];

  *(v113 + 120) = v146;
  v151 = sub_23719661C();

  [v150 activateConstraints_];
}

void sub_237155E1C()
{
  sub_2371959A4();
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_meterTimer);
  if (v1 && *(v0 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_needsRealtimeDrawing) == 1)
  {
    [v1 invalidate];
  }

  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 removeObserver_];

  v4 = [v2 defaultCenter];
  [v4 removeObserver_];
}

uint64_t sub_237155F08()
{
  v1 = v0;
  v45 = *MEMORY[0x277D85DE8];
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_graphView];
    type metadata accessor for AUFrequencyData();
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = v2;
    v4[4] = v3;
    *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_frequencyData] = v4;
    v5 = v3;

    sub_237131024();
    ioDataSize[0] = 0x4000;
    v6 = v4[3];
    v7 = sub_237130F84();
    Property = AudioUnitGetProperty(v6, 0x34u, 0, 0, v7, ioDataSize);
    if (Property != sub_2371964DC())
    {
      sub_237176A9C(0xD000000000000029, 0x800000023719EA70, Property);
    }
  }

  v9 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_graphView;
  v10 = *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_graphView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94D18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719BD00;
  *(inited + 32) = 1852394873;
  *(inited + 40) = 0xE400000000000000;
  v12 = MEMORY[0x277D83A90];
  *(inited + 48) = -1024458752;
  *(inited + 72) = v12;
  *(inited + 80) = 2019642745;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = 1109393408;
  *(inited + 120) = v12;
  *(inited + 128) = 0x6F6C6C416E694D79;
  *(inited + 136) = 0xEB00000000646577;
  *(inited + 144) = -1024458752;
  *(inited + 168) = v12;
  *(inited + 176) = 0x6F6C6C4178614D79;
  *(inited + 184) = 0xEB00000000646577;
  *(inited + 192) = 1101004800;
  *(inited + 216) = v12;
  *(inited + 224) = 0x756F436469724779;
  v13 = MEMORY[0x277D83B88];
  *(inited + 232) = 0xEA0000000000746ELL;
  *(inited + 240) = 7;
  *(inited + 264) = v13;
  *(inited + 272) = 0x614C7374696E5579;
  *(inited + 280) = 0xEB000000006C6562;
  type metadata accessor for AUAppleViewControllerBase();
  v14 = v10;
  v15 = sub_237175EDC();
  *(inited + 312) = MEMORY[0x277D837D0];
  *(inited + 288) = v15;
  *(inited + 296) = v16;
  v17 = sub_237119CF4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948A0);
  swift_arrayDestroy();
  sub_2371816EC(v17);

  v18 = *&v1[v9];
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_23719BD20;
  *(v19 + 32) = 1852394872;
  *(v19 + 40) = 0xE400000000000000;
  *(v19 + 48) = -1024458752;
  *(v19 + 72) = v12;
  *(v19 + 80) = 2019642744;
  *(v19 + 88) = 0xE400000000000000;
  *(v19 + 96) = 1109393408;
  *(v19 + 120) = v12;
  *(v19 + 128) = 0x6F6C6C416E694D78;
  *(v19 + 136) = 0xEB00000000646577;
  *(v19 + 144) = -1024458752;
  *(v19 + 168) = v12;
  *(v19 + 176) = 0x6F6C6C4178614D78;
  *(v19 + 184) = 0xEB00000000646577;
  *(v19 + 192) = 1101004800;
  *(v19 + 216) = v12;
  *(v19 + 224) = 0x756F436469724778;
  *(v19 + 232) = 0xEA0000000000746ELL;
  *(v19 + 240) = 7;
  *(v19 + 264) = MEMORY[0x277D83B88];
  *(v19 + 272) = 0x614C7374696E5578;
  *(v19 + 280) = 0xEB000000006C6562;
  v20 = v18;
  *(v19 + 288) = sub_237175EDC();
  *(v19 + 296) = v21;
  *(v19 + 312) = MEMORY[0x277D837D0];
  *(v19 + 320) = 0xD000000000000011;
  *(v19 + 328) = 0x800000023719FF10;
  *(v19 + 360) = MEMORY[0x277D839B0];
  *(v19 + 336) = 0;
  v22 = sub_237119CF4(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_2371816EC(v22);

  v23 = *&v1[v9];
  v43 = type metadata accessor for AUDynamicsProcessorViewController();
  v44 = &off_284A3AB08;
  *ioDataSize = v1;
  v24 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource;
  swift_beginAccess();
  v25 = v23;
  v26 = v1;
  sub_23715BAF4(ioDataSize, v23 + v24);
  swift_endAccess();
  sub_237181E84();
  sub_237162D18();
  sub_23716297C();

  sub_237120D04(ioDataSize, &qword_27DE951F0);
  v27 = *&v26[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView];
  v28 = sub_237175EDC();
  v30 = v29;
  v31 = sub_237175EDC();
  v33 = v32;
  v34 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel;
  v35 = *&v27[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel];
  v36 = sub_23719653C();
  [v35 setText_];

  [*&v27[v34] setAccessibilityTraits_];
  v37 = *&v27[v34];
  v38 = sub_23719653C();
  [v37 setAccessibilityLabel_];

  v39 = &v27[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName];
  *v39 = v28;
  v39[1] = v30;

  v40 = &v27[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName];
  *v40 = v31;
  v40[1] = v33;

  return sub_23715652C();
}

uint64_t sub_23715652C()
{
  v1 = v0;
  v16 = *MEMORY[0x277D85DE8];
  v2 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU;
  v3 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
  result = swift_beginAccess();
  v5 = 0;
  inRunLoopMode = *MEMORY[0x277CBE738];
  do
  {
    v9 = *&v1[v2];
    if (v9)
    {
      v10 = *(&unk_284A399C8 + v5 + 32);
      v11 = *&v1[v3];
      if (!v11)
      {
        v12 = CFRunLoopGetCurrent();
        swift_beginAccess();
        v13 = AUEventListenerCreate(sub_237176350, v1, v12, inRunLoopMode, 0.05, 0.05, &v1[v3]);
        swift_endAccess();

        if (v13 != sub_2371964DC())
        {
          *&inEvent.mEventType = 0;
          inEvent.mArgument.mParameter.mAudioUnit = 0xE000000000000000;
          sub_23719693C();

          *&inEvent.mEventType = 0xD00000000000002BLL;
          inEvent.mArgument.mParameter.mAudioUnit = 0x800000023719EAE0;
          v6 = sub_237196A5C();
          MEMORY[0x2383C5F20](v6);

          v7 = *&inEvent.mEventType;
          mAudioUnit = inEvent.mArgument.mParameter.mAudioUnit;
LABEL_3:
          sub_237176A9C(v7, mAudioUnit, v13);

          goto LABEL_4;
        }

        v11 = *&v1[v3];
      }

      inEvent.mEventType = kAudioUnitEvent_ParameterValueChange;
      inEvent.mArgument.mParameter.mAudioUnit = v9;
      *&inEvent.mArgument.mProperty.mPropertyID = v10;
      if (!v11)
      {
        __break(1u);
      }

      sub_2371964DC();
      inEvent.mEventType = kAudioUnitEvent_BeginParameterChangeGesture;
      v13 = AUEventListenerAddEventType(v11, v1, &inEvent);
      if (v13 == sub_2371964DC())
      {
        inEvent.mEventType = kAudioUnitEvent_EndParameterChangeGesture;
        v13 = AUEventListenerAddEventType(v11, v1, &inEvent);
      }

      if (v13 == sub_2371964DC())
      {
        inEvent.mEventType = kAudioUnitEvent_ParameterValueChange;
        v13 = AUEventListenerAddEventType(v11, v1, &inEvent);
      }

      result = sub_2371964DC();
      if (v13 != result)
      {
        sub_23719693C();
        MEMORY[0x2383C5F20](0xD00000000000002DLL, 0x800000023719EB10);
        type metadata accessor for AudioUnitParameter(0);
        sub_2371969CC();
        v7 = 0;
        mAudioUnit = 0xE000000000000000;
        goto LABEL_3;
      }
    }

LABEL_4:
    v5 += 4;
  }

  while (v5 != 28);
  return result;
}

void sub_23715681C(char a1)
{
  v41.receiver = v1;
  v41.super_class = type metadata accessor for AUDynamicsProcessorViewController();
  objc_msgSendSuper2(&v41, sel_viewWillAppear_, a1 & 1);
  sub_237175BF0(0x7D0u, 0, 0);
  sub_237175BF0(0xBB8u, 0, 0);
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  v5 = sub_23719653C();
  [v4 addObserver:v1 selector:sel_graphControlTouchedWithNotification_ name:v5 object:*&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_graphView]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B670;
  v7 = *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_attackKnob];
  *(inited + 32) = v7;
  v8 = *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_releaseKnob];
  *(inited + 40) = v8;
  v9 = *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_gainKnob];
  *(inited + 48) = v9;
  v10 = v7;
  v11 = v8;
  v12 = v9;
  v40 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x2383C62A0](0, inited);
  }

  else
  {
    v13 = v10;
  }

  v14 = v13;
  v15 = [v3 defaultCenter];
  v16 = sub_23719653C();
  [v15 addObserver:v1 selector:sel_knobValueChangedWithNotification_ name:v16 object:v14];

  v17 = [v3 defaultCenter];
  v18 = sub_23719653C();
  [v17 addObserver:v1 selector:sel_knobTouchedWithNotification_ name:v18 object:v14];

  v19 = [v3 defaultCenter];
  v20 = sub_23719653C();
  [v19 addObserver:v1 selector:sel_knobReleasedWithNotification_ name:v20 object:v14];

  if (v40)
  {
    v21 = MEMORY[0x2383C62A0](1, v39);
  }

  else
  {
    v21 = *(v39 + 40);
  }

  v22 = v21;
  v23 = [v3 defaultCenter];
  v24 = sub_23719653C();
  [v23 addObserver:v1 selector:sel_knobValueChangedWithNotification_ name:v24 object:v22];

  v25 = [v3 defaultCenter];
  v26 = sub_23719653C();
  [v25 addObserver:v1 selector:sel_knobTouchedWithNotification_ name:v26 object:v22];

  v27 = [v3 defaultCenter];
  v28 = sub_23719653C();
  [v27 addObserver:v1 selector:sel_knobReleasedWithNotification_ name:v28 object:v22];

  if (v40)
  {
    v29 = MEMORY[0x2383C62A0](2, v39);
  }

  else
  {
    v29 = *(v39 + 48);
  }

  v30 = v29;
  v31 = [v3 defaultCenter];
  v32 = sub_23719653C();
  [v31 addObserver:v1 selector:sel_knobValueChangedWithNotification_ name:v32 object:v30];

  v33 = [v3 defaultCenter];
  v34 = sub_23719653C();
  [v33 addObserver:v1 selector:sel_knobTouchedWithNotification_ name:v34 object:v30];

  v35 = [v3 defaultCenter];
  v36 = sub_23719653C();
  [v35 addObserver:v1 selector:sel_knobReleasedWithNotification_ name:v36 object:v30];

  swift_setDeallocating();
  swift_arrayDestroy();
  v37 = [v3 defaultCenter];
  v38 = sub_23719653C();
  [v37 &selRef_getHostCallbackInfo];

  v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_needsRealtimeDrawing] = 1;
  sub_237195E64();
}

void sub_237156F04()
{
  v1 = v0;
  v24 = *MEMORY[0x277D85DE8];
  v2 = sub_23719630C();
  if (v2)
  {
    v3 = v2;
    *ioDataSize = 0x44496D61726170;
    v21 = 0xE700000000000000;
    sub_23719690C();
    if (!*(v3 + 16))
    {
      goto LABEL_19;
    }

    v4 = sub_237190728(&inParameter);
    if ((v5 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_237114D0C(*(v3 + 56) + 32 * v4, v23);
    sub_237114F1C(&inParameter);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v6 = ioDataSize[0];
    *ioDataSize = 0x65756C6176;
    v21 = 0xE500000000000000;
    sub_23719690C();
    if (*(v3 + 16) && (v7 = sub_237190728(&inParameter), (v8 & 1) != 0))
    {
      sub_237114D0C(*(v3 + 56) + 32 * v7, v23);
      sub_237114F1C(&inParameter);

      if (swift_dynamicCast())
      {
        LODWORD(inParameter.mAudioUnit) = 0;
        v9 = sub_23717481C(*ioDataSize, v21);

        if (v9)
        {
          v10 = *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
          if (v10)
          {
            v11 = *&inParameter.mAudioUnit;
            if (v11 <= sub_237130920(v6) && sub_2371307E8(v6) <= v11)
            {
              inParameter.mAudioUnit = v10;
              inParameter.mScope = 0;
              inParameter.mElement = 0;
              inParameter.mParameterID = v6;
              v12 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
              swift_beginAccess();
              LODWORD(v12) = AUParameterSet(*&v1[v12], v1, &inParameter, v11, 0);
              if (v12 == sub_2371964DC())
              {
                v13 = *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_frequencyData];
                if (v13)
                {
                  ioDataSize[0] = 0x4000;
                  v14 = *(v13 + 24);

                  v15 = sub_237130F84();
                  Property = AudioUnitGetProperty(v14, 0x34u, 0, 0, v15, ioDataSize);
                  if (Property != sub_2371964DC())
                  {
                    sub_237176A9C(0xD000000000000029, 0x800000023719EA70, Property);
                  }
                }

                v17 = *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_graphView];
                sub_237164BC0();
              }
            }

            v18 = *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView];
            v19 = sub_2371305C0(v6);
            sub_237135E04(v6, v19);
          }
        }
      }
    }

    else
    {
LABEL_19:

      sub_237114F1C(&inParameter);
    }
  }
}

void sub_237157244()
{
  v1 = v0;
  v2 = sub_2371305C0(0xBB8u);
  v3 = sub_2371305C0(6u);
  v4 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_meter);
  v5 = v2 + v3;
  v6 = *&v4[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_level];
  *&v4[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_level] = v5;
  v7 = v4;
  sub_23714F85C(v6);

  v8 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_graphView;
  v9 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_graphView);
  sub_237163FAC();

  v10 = *(v1 + v8);
  sub_2371638E4();
}

void sub_23715730C()
{
  v1 = v0;
  v2 = sub_23719630C();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  *&v411 = 0x6D61726170;
  *(&v411 + 1) = 0xE500000000000000;
  sub_23719690C();
  if (!*(v3 + 16) || (v4 = sub_237190728(v441), (v5 & 1) == 0))
  {

    sub_237114F1C(v441);
    return;
  }

  sub_237114D0C(*(v3 + 56) + 32 * v4, v421);
  sub_237114F1C(v441);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v6 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView;
  v268 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView;
  v7 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView);
  sub_23717E58C();

  v257 = *(v1 + v6);
  v8 = sub_23715B8B0(3);
  v10 = v9;
  v11 = sub_23715BB64(3);
  v270 = v12;
  v272 = v11;
  v13 = sub_2371305C0(3u);
  v14 = sub_2371307E8(3u);
  v15 = sub_237130920(3u);
  v269 = v1;
  v16 = sub_237195AE8();
  v267 = sub_23715BCFC(3);
  v18 = v17;
  v19 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v287 = v16;
  v263 = [v19 initWithFrame_];
  [v263 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 systemFontOfSize_];
  [v22 setFont_];

  [v22 setTextAlignment_];
  [v22 setAdjustsFontSizeToFitWidth_];
  [v22 setAllowsDefaultTighteningForTruncation_];
  [v22 setMinimumScaleFactor_];
  v24 = v22;
  [v24 setBaselineAdjustment_];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v276 = v8;
  v25 = sub_23719653C();
  [v24 setText_];

  LODWORD(v26) = 1112014848;
  [v24 setContentHuggingPriority:0 forAxis:v26];
  LODWORD(v27) = 1144750080;
  v280 = v24;
  [v24 setContentCompressionResistancePriority:0 forAxis:v27];
  v28 = type metadata accessor for CAAUEQHeaderView.AUAccessibleTextField();
  v29 = objc_allocWithZone(v28);
  *&v29[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min] = v14;
  *&v29[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max] = v15;
  *&v29[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase] = 0;
  v355.receiver = v29;
  v261 = v28;
  v355.super_class = v28;
  v30 = objc_msgSendSuper2(&v355, sel_initWithFrame_, 0.0, 0.0, 50.0, 22.0);
  v31 = *MEMORY[0x277D76538];
  v266 = *MEMORY[0x277D765B0];
  if (!*MEMORY[0x277D765B0])
  {
    if (!v31)
    {
      v32 = 0;
      goto LABEL_13;
    }

LABEL_11:
    v32 = v31 | v266;
    goto LABEL_13;
  }

  v32 = *MEMORY[0x277D765B0];
  if ((v31 & ~*MEMORY[0x277D765B0]) != 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v259 = *MEMORY[0x277D76538];
  v33 = v30;
  [v33 setAccessibilityTraits_];
  [v33 setSecureTextEntry_];
  v34 = v33;
  v284 = v21;
  v35 = [v21 systemFontOfSize_];
  [v34 setFont_];

  v36 = v34;
  [v36 setTextAlignment_];
  v255 = objc_opt_self();
  v37 = [v255 systemBackgroundColor];
  [v36 setBackgroundColor_];

  [v36 setClearButtonMode_];
  [v36 setEnablesReturnKeyAutomatically_];
  [v36 setAdjustsFontSizeToFitWidth_];
  [v36 setMinimumFontSize_];
  *&v36[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min] = v14;
  *&v36[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max] = v15;
  *&v36[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase] = 0;
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  [v36 setReturnKeyType_];
  [v36 setContentVerticalAlignment_];
  [v36 setEnabled_];

  v38 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v39 = v13;
  v40 = [v38 initWithFloat_];
  v41 = [v287 stringFromNumber_];

  [v36 setText_];
  [v36 setTag_];

  v42 = sub_23719653C();
  v254 = objc_opt_self();
  v43 = [v254 bundleWithIdentifier_];

  if (v43)
  {
    v45 = v43;
    sub_23719634C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E70);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_23719B040;
    v47 = [v36 0x1FB7B0AF8];
    if (!v47)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v48 = v47;
    v49 = sub_23719657C();
    v51 = v50;

    v52 = MEMORY[0x277D837D0];
    *(v46 + 56) = MEMORY[0x277D837D0];
    v53 = sub_237115040();
    *(v46 + 32) = v49;
    *(v46 + 40) = v51;
    *(v46 + 96) = v52;
    *(v46 + 104) = v53;
    *(v46 + 64) = v53;
    *(v46 + 72) = v267;
    *(v46 + 80) = v18;

    sub_23719659C();

    v54 = sub_23719653C();

    [v36 setAccessibilityValue_];
  }

  v253 = v43;
  LODWORD(v44) = 1144750080;
  [v36 setContentCompressionResistancePriority:0 forAxis:v44];
  LODWORD(v55) = 1144750080;
  [v36 setContentHuggingPriority:0 forAxis:v55];
  v56 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v57 = [v284 systemFontOfSize_];
  [v56 setFont_];

  [v56 setTextAlignment_];
  [v56 setAdjustsFontSizeToFitWidth_];
  [v56 setAllowsDefaultTighteningForTruncation_];
  [v56 setAdjustsFontSizeToFitWidth_];
  [v56 setMinimumScaleFactor_];
  v58 = v56;
  [v58 setBaselineAdjustment_];
  [v58 setTranslatesAutoresizingMaskIntoConstraints_];
  v59 = sub_23719653C();
  [v58 setText_];

  LODWORD(v60) = 1148846080;
  [v58 setContentHuggingPriority:0 forAxis:v60];
  LODWORD(v61) = 1132068864;
  [v58 setContentCompressionResistancePriority:0 forAxis:v61];
  [v58 setAccessibilityElementsHidden_];

  [v263 addSubview_];
  [v263 addSubview_];
  [v263 addSubview_];

  v441[0] = v263;
  v441[1] = v280;
  v441[2] = v58;
  v441[3] = v36;
  v442 = 3;
  v443 = v13;
  v444 = v14;
  v445 = v15;
  v446 = v276;
  v447 = v10;
  v448 = v272;
  v449 = v270;
  v450 = 0;
  v451 = v287;
  v454 = 0;
  v452 = 0;
  v453 = 0;
  v455 = 0;
  v457 = v357;
  v456 = v356;
  v460 = 0;
  v458 = 0;
  v459 = 0;
  sub_2371377FC();
  v421[0] = v263;
  v421[1] = v280;
  v421[2] = v58;
  v421[3] = v36;
  v422 = 3;
  v423 = v13;
  v424 = v14;
  v425 = v15;
  v426 = v276;
  v427 = v10;
  v428 = v272;
  v429 = v270;
  v430 = 0;
  v431 = v287;
  v434 = 0;
  v432 = 0;
  v433 = 0;
  v435 = 0;
  v437 = v357;
  v436 = v356;
  v440 = 0;
  v438 = 0;
  v439 = 0;
  v461 = 0;
  v62 = v263;
  sub_237137C10();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = [v62 widthAnchor];

  v70 = [v69 constraintEqualToConstant_];
  sub_237120D04(&v461, &qword_27DE94E80);
  [v70 setActive_];
  v344 = MEMORY[0x277D84F90];
  v264 = v62;
  *&v345 = v62;
  *(&v345 + 1) = v280;
  *&v346 = v58;
  *(&v346 + 1) = v36;
  LODWORD(v347) = 3;
  *(&v347 + 4) = __PAIR64__(LODWORD(v14), LODWORD(v13));
  *(&v347 + 3) = v15;
  *&v348 = v276;
  *(&v348 + 1) = v10;
  *&v349 = v272;
  *(&v349 + 1) = v270;
  *&v350 = 0;
  *(&v350 + 1) = v287;
  *&v352 = 0;
  v71 = v70;
  v351 = v70;
  WORD4(v352) = 0;
  HIWORD(v352) = v357;
  *(&v352 + 10) = v356;
  *&v353 = v66;
  *(&v353 + 1) = v64;
  v354 = v68;
  v72 = objc_allocWithZone(MEMORY[0x277D750A0]);
  v417 = v351;
  v418 = v352;
  v419 = v353;
  v420 = v68;
  v413 = v347;
  v414 = v348;
  v415 = v349;
  v416 = v350;
  v411 = v345;
  *v412 = v346;
  sub_2371339F0(&v345, v391);
  sub_2371339F0(&v345, v391);
  v73 = v280;
  v74 = v36;
  v75 = v58;
  v76 = [v72 initWithAccessibilityContainer_];
  swift_unknownObjectRelease();
  sub_237133A4C(&v345);
  *&v411 = 0;
  *(&v411 + 1) = 0xE000000000000000;
  v77 = [v73 text];
  if (!v77)
  {
    __break(1u);
    goto LABEL_38;
  }

  v78 = v77;
  v79 = sub_23719657C();
  v81 = v80;

  MEMORY[0x2383C5F20](v79, v81);

  MEMORY[0x2383C5F20](8236, 0xE200000000000000);
  v82 = [v74 text];
  if (!v82)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v83 = v82;
  v249 = v66;
  v250 = v68;
  v251 = v64;
  v252 = v15;
  v278 = v14;
  v281 = v13;
  v84 = sub_23719657C();
  v86 = v85;

  MEMORY[0x2383C5F20](v84, v86);

  MEMORY[0x2383C5F20](8236, 0xE200000000000000);
  v87 = [v75 text];
  if (!v87)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v88 = sub_23719657C();
  v90 = v89;

  MEMORY[0x2383C5F20](v88, v90);

  v91 = sub_23719653C();

  [v76 setAccessibilityLabel_];

  [v73 frame];
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;

  [v74 frame];
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;

  v463.origin.x = v93;
  v463.origin.y = v95;
  v463.size.width = v97;
  v463.size.height = v99;
  v471.origin.x = v101;
  v471.origin.y = v103;
  v471.size.width = v105;
  v471.size.height = v107;
  v464 = CGRectUnion(v463, v471);
  x = v464.origin.x;
  y = v464.origin.y;
  width = v464.size.width;
  height = v464.size.height;
  [v75 frame];
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;

  v465.origin.x = x;
  v465.origin.y = y;
  v465.size.width = width;
  v465.size.height = height;
  v472.origin.x = v113;
  v472.origin.y = v115;
  v472.size.width = v117;
  v472.size.height = v119;
  v466 = CGRectUnion(v465, v472);
  [v76 setAccessibilityFrameInContainerSpace_];
  v120 = v76;
  MEMORY[0x2383C5F60]();
  if (*((v344 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v344 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();

  *&v411 = v264;
  *(&v411 + 1) = v73;
  v412[0] = v75;
  v412[1] = v74;
  LODWORD(v413) = 3;
  *(&v413 + 4) = __PAIR64__(LODWORD(v278), LODWORD(v281));
  *(&v413 + 3) = v252;
  *&v414 = v276;
  *(&v414 + 1) = v10;
  *&v415 = v272;
  *(&v415 + 1) = v270;
  *&v416 = 0;
  *(&v416 + 1) = v287;
  *&v418 = 0;
  v417 = v71;
  WORD4(v418) = 0;
  HIWORD(v418) = v357;
  *(&v418 + 10) = v356;
  *&v419 = v249;
  *(&v419 + 1) = v251;
  v420 = v250;
  v324[0] = v264;
  v324[1] = v73;
  v324[2] = v75;
  v324[3] = v74;
  v325 = 3;
  v326 = v281;
  v327 = v278;
  v328 = v252;
  v329 = v276;
  v330 = v10;
  v331 = v272;
  v332 = v270;
  v333 = 0;
  v334 = v287;
  v337 = 0;
  v335 = v71;
  v336 = 0;
  v338 = 0;
  v340 = v357;
  v339 = v356;
  v341 = v249;
  v342 = v251;
  v343 = v250;
  sub_2371339F0(&v411, v391);
  sub_237133A4C(v324);
  v121 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  swift_beginAccess();
  sub_2371339F0(&v411, v391);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v391[0] = *&v257[v121];
  *&v257[v121] = 0x8000000000000000;
  sub_23718E500(&v411, 3u, isUniquelyReferenced_nonNull_native);
  *&v257[v121] = v391[0];
  swift_endAccess();
  [*&v257[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack] addArrangedSubview_];
  v123 = v412[1];
  [v412[1] addTarget:v257 action:? forControlEvents:?];
  [v123 setKeyboardType_];
  [v123 setDelegate_];
  sub_237133A4C(&v411);

  v124 = *(v269 + v268);
  v125 = sub_23715AB34(3u);
  sub_23717E6D4(3u, v125);

  v265 = *(v269 + v268);
  v126 = sub_23715B8B0(2);
  v128 = v127;
  v288 = sub_23715BB64(2);
  v277 = v129;
  v130 = sub_2371305C0(2u);
  v131 = sub_2371307E8(2u);
  v132 = sub_237130920(2u);
  v133 = *(v269 + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController____lazy_storage___decimalFormatter);
  v275 = sub_23715BCFC(2);
  v135 = v134;
  v136 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v137 = v133;
  v273 = [v136 initWithFrame_];
  [v273 setTranslatesAutoresizingMaskIntoConstraints_];
  v138 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v139 = [v284 systemFontOfSize_];
  [v138 setFont_];

  [v138 setTextAlignment_];
  [v138 setAdjustsFontSizeToFitWidth_];
  [v138 setAllowsDefaultTighteningForTruncation_];
  [v138 setMinimumScaleFactor_];
  v140 = v138;
  [v140 setBaselineAdjustment_];
  [v140 setTranslatesAutoresizingMaskIntoConstraints_];
  v279 = v128;
  v282 = v126;
  v141 = sub_23719653C();
  [v140 setText_];

  LODWORD(v142) = 1112014848;
  [v140 setContentHuggingPriority:0 forAxis:v142];
  LODWORD(v143) = 1144750080;
  [v140 setContentCompressionResistancePriority:0 forAxis:v143];
  v144 = objc_allocWithZone(v261);
  *&v144[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min] = v131;
  *&v144[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max] = v132;
  *&v144[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase] = 0;
  v321.receiver = v144;
  v321.super_class = v261;
  v145 = objc_msgSendSuper2(&v321, sel_initWithFrame_, 0.0, 0.0, 50.0, 22.0);
  v146 = v266;
  if (!v266)
  {
    v147 = v259;
    if (!v259)
    {
      v146 = 0;
      goto LABEL_27;
    }

LABEL_25:
    v146 = v147 | v266;
    goto LABEL_27;
  }

  v147 = v259;
  if ((v259 & ~v266) != 0)
  {
    goto LABEL_25;
  }

LABEL_27:
  v148 = v145;
  [v148 setAccessibilityTraits_];
  [v148 setSecureTextEntry_];
  v149 = v148;
  v150 = [v284 systemFontOfSize_];
  [v149 setFont_];

  v151 = v149;
  [v151 setTextAlignment_];
  v152 = [v255 systemBackgroundColor];
  [v151 setBackgroundColor_];

  [v151 setClearButtonMode_];
  [v151 setEnablesReturnKeyAutomatically_];
  [v151 setAdjustsFontSizeToFitWidth_];
  [v151 setMinimumFontSize_];
  *&v151[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min] = v131;
  *&v151[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max] = v132;
  *&v151[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase] = 0;
  [v151 setTranslatesAutoresizingMaskIntoConstraints_];
  [v151 setReturnKeyType_];
  [v151 setContentVerticalAlignment_];
  [v151 setEnabled_];

  v153 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v154 = v130;
  v155 = [v153 initWithFloat_];
  v283 = v137;
  v156 = [v137 stringFromNumber_];

  [v151 setText_];
  [v151 setTag_];

  v157 = sub_23719653C();
  v158 = [v254 bundleWithIdentifier_];

  if (v158)
  {
    v160 = v158;
    sub_23719634C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E70);
    v161 = swift_allocObject();
    *(v161 + 16) = xmmword_23719B040;
    v162 = [v151 text];
    if (!v162)
    {
LABEL_44:
      __break(1u);
      return;
    }

    v163 = v162;
    v164 = sub_23719657C();
    v166 = v165;

    v167 = MEMORY[0x277D837D0];
    *(v161 + 56) = MEMORY[0x277D837D0];
    v168 = sub_237115040();
    *(v161 + 32) = v164;
    *(v161 + 40) = v166;
    *(v161 + 96) = v167;
    *(v161 + 104) = v168;
    *(v161 + 64) = v168;
    *(v161 + 72) = v275;
    *(v161 + 80) = v135;

    sub_23719659C();

    v169 = sub_23719653C();

    [v151 setAccessibilityValue_];
  }

  LODWORD(v159) = 1144750080;
  [v151 setContentCompressionResistancePriority:0 forAxis:v159];
  LODWORD(v170) = 1144750080;
  [v151 setContentHuggingPriority:0 forAxis:v170];
  v171 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v172 = [v284 systemFontOfSize_];
  [v171 setFont_];

  [v171 setTextAlignment_];
  [v171 setAdjustsFontSizeToFitWidth_];
  [v171 setAllowsDefaultTighteningForTruncation_];
  [v171 setAdjustsFontSizeToFitWidth_];
  [v171 setMinimumScaleFactor_];
  v173 = v171;
  [v173 setBaselineAdjustment_];
  v174 = v173;
  [v173 setTranslatesAutoresizingMaskIntoConstraints_];
  v175 = sub_23719653C();
  [v174 setText_];

  LODWORD(v176) = 1148846080;
  [v174 setContentHuggingPriority:0 forAxis:v176];
  LODWORD(v177) = 1132068864;
  [v174 setContentCompressionResistancePriority:0 forAxis:v177];
  [v174 setAccessibilityElementsHidden_];

  v285 = v174;
  [v273 addSubview_];

  [v273 addSubview_];
  [v273 addSubview_];

  v391[0] = v273;
  v391[1] = v140;
  v391[2] = v174;
  v391[3] = v151;
  v392 = 2;
  v393 = v130;
  v394 = v131;
  v395 = v132;
  v396 = v282;
  v397 = v279;
  v398 = v288;
  v399 = v277;
  v400 = 0;
  v401 = v283;
  v404 = 0;
  v402 = 0;
  v403 = 0;
  v405 = 0;
  v407 = v323;
  v406 = v322;
  v410 = 0;
  v408 = 0;
  v409 = 0;
  sub_2371377FC();
  v368 = v273;
  v369 = v140;
  v370 = v174;
  v371 = v151;
  v372 = 2;
  v373 = v130;
  v374 = v131;
  v375 = v132;
  v376 = v282;
  v377 = v279;
  v378 = v288;
  v379 = v277;
  v380 = 0;
  v381 = v283;
  v384 = 0;
  v382 = 0;
  v383 = 0;
  v385 = 0;
  v387 = v323;
  v386 = v322;
  v390 = 0;
  v388 = 0;
  v389 = 0;
  v462[0] = 0;
  v178 = v273;
  sub_237137C10();
  v180 = v179;
  v182 = v181;
  v184 = v183;
  v185 = [v178 widthAnchor];

  v186 = [v185 constraintEqualToConstant_];
  sub_237120D04(v462, &qword_27DE94E80);
  [v186 setActive_];
  v310 = MEMORY[0x277D84F90];
  v274 = v178;
  *&v311 = v178;
  *(&v311 + 1) = v140;
  *&v312 = v285;
  *(&v312 + 1) = v151;
  LODWORD(v313) = 2;
  *(&v313 + 4) = __PAIR64__(LODWORD(v131), LODWORD(v130));
  *(&v313 + 3) = v132;
  *&v314 = v282;
  *(&v314 + 1) = v279;
  *&v315 = v288;
  *(&v315 + 1) = v277;
  *&v316 = 0;
  *(&v316 + 1) = v283;
  *&v318 = 0;
  v187 = v186;
  v317 = v186;
  WORD4(v318) = 0;
  HIWORD(v318) = v323;
  *(&v318 + 10) = v322;
  *&v319 = v182;
  *(&v319 + 1) = v180;
  v320 = v184;
  v188 = objc_allocWithZone(MEMORY[0x277D750A0]);
  v364 = v317;
  v365 = v318;
  v366 = v319;
  v367 = v184;
  v360 = v313;
  v361 = v314;
  v362 = v315;
  v363 = v316;
  v358 = v311;
  *v359 = v312;
  sub_2371339F0(&v311, v290);
  sub_2371339F0(&v311, v290);
  v189 = v140;
  v190 = v151;
  v191 = v285;
  v192 = [v188 initWithAccessibilityContainer_];
  swift_unknownObjectRelease();
  sub_237133A4C(&v311);
  *&v358 = 0;
  *(&v358 + 1) = 0xE000000000000000;
  v193 = [v189 text];
  if (!v193)
  {
    goto LABEL_40;
  }

  v194 = v193;
  v195 = sub_23719657C();
  v197 = v196;

  MEMORY[0x2383C5F20](v195, v197);

  MEMORY[0x2383C5F20](8236, 0xE200000000000000);
  v198 = [v190 text];
  if (!v198)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v199 = v198;
  v256 = v182;
  v258 = v184;
  v260 = v180;
  v262 = v132;
  v271 = v131;
  v286 = v130;
  v200 = sub_23719657C();
  v202 = v201;

  MEMORY[0x2383C5F20](v200, v202);

  MEMORY[0x2383C5F20](8236, 0xE200000000000000);
  v203 = [v191 text];
  if (!v203)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v204 = v203;

  v205 = sub_23719657C();
  v207 = v206;

  MEMORY[0x2383C5F20](v205, v207);

  v208 = sub_23719653C();

  [v192 setAccessibilityLabel_];

  [v189 frame];
  v210 = v209;
  v212 = v211;
  v214 = v213;
  v216 = v215;

  [v190 frame];
  v218 = v217;
  v220 = v219;
  v222 = v221;
  v224 = v223;

  v467.origin.x = v210;
  v467.origin.y = v212;
  v467.size.width = v214;
  v467.size.height = v216;
  v473.origin.x = v218;
  v473.origin.y = v220;
  v473.size.width = v222;
  v473.size.height = v224;
  v468 = CGRectUnion(v467, v473);
  v225 = v468.origin.x;
  v226 = v468.origin.y;
  v227 = v468.size.width;
  v228 = v468.size.height;
  [v191 frame];
  v230 = v229;
  v232 = v231;
  v234 = v233;
  v236 = v235;

  v469.origin.x = v225;
  v469.origin.y = v226;
  v469.size.width = v227;
  v469.size.height = v228;
  v474.origin.x = v230;
  v474.origin.y = v232;
  v474.size.width = v234;
  v474.size.height = v236;
  v470 = CGRectUnion(v469, v474);
  [v192 setAccessibilityFrameInContainerSpace_];
  v237 = v192;
  MEMORY[0x2383C5F60]();
  if (*((v310 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v310 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();

  *&v358 = v274;
  *(&v358 + 1) = v189;
  v359[0] = v191;
  v359[1] = v190;
  LODWORD(v360) = 2;
  *(&v360 + 4) = __PAIR64__(LODWORD(v271), LODWORD(v286));
  *(&v360 + 3) = v262;
  *&v361 = v282;
  *(&v361 + 1) = v279;
  *&v362 = v288;
  *(&v362 + 1) = v277;
  *&v363 = 0;
  *(&v363 + 1) = v283;
  *&v365 = 0;
  v364 = v187;
  WORD4(v365) = 0;
  HIWORD(v365) = v323;
  *(&v365 + 10) = v322;
  *&v366 = v256;
  *(&v366 + 1) = v260;
  v367 = v258;
  v290[0] = v274;
  v290[1] = v189;
  v290[2] = v191;
  v290[3] = v190;
  v291 = 2;
  v292 = v286;
  v293 = v271;
  v294 = v262;
  v295 = v282;
  v296 = v279;
  v297 = v288;
  v298 = v277;
  v299 = 0;
  v300 = v283;
  v302 = 0;
  v303 = 0;
  v301 = v187;
  v304 = 0;
  v306 = v323;
  v305 = v322;
  v307 = v256;
  v308 = v260;
  v309 = v258;
  sub_2371339F0(&v358, v289);
  sub_237133A4C(v290);
  v238 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  swift_beginAccess();
  sub_2371339F0(&v358, v289);
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v289[0] = *&v265[v238];
  *&v265[v238] = 0x8000000000000000;
  sub_23718E500(&v358, 2u, v239);
  *&v265[v238] = v289[0];
  swift_endAccess();
  [*&v265[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack] addArrangedSubview_];
  v240 = v359[1];
  [v359[1] addTarget:v265 action:sel_textFieldEditingDidChange_ forControlEvents:0x40000];
  [v240 setKeyboardType_];
  [v240 setDelegate_];
  sub_237133A4C(&v358);

  v241 = *(v269 + v268);
  v242 = sub_23715AB34(2u);
  sub_23717E6D4(2u, v242);

  v243 = *(v269 + OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_viewContainer);
  if (v243)
  {
    v244 = *(v269 + v268);
    v245 = v243;
    v246 = v244;
    [v245 frame];
    sub_23717E908(v247, v248);
  }
}

uint64_t sub_237159460()
{
  result = sub_23719630C();
  if (result)
  {
    v1 = result;
    sub_23719690C();
    if (!*(v1 + 16))
    {
      goto LABEL_9;
    }

    v2 = sub_237190728(v6);
    if ((v3 & 1) == 0)
    {
      goto LABEL_9;
    }

    sub_237114D0C(*(v1 + 56) + 32 * v2, v7);
    sub_237114F1C(v6);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    sub_23719690C();
    if (*(v1 + 16) && (v4 = sub_237190728(v6), (v5 & 1) != 0))
    {
      sub_237114D0C(*(v1 + 56) + 32 * v4, v7);
      sub_237114F1C(v6);

      result = swift_dynamicCast();
      if (result)
      {
        return sub_23715A91C(1634886000, 2.9965e32);
      }
    }

    else
    {
LABEL_9:

      return sub_237114F1C(v6);
    }
  }

  return result;
}

void sub_2371595F4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView;
  v3 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView);
  sub_23717E58C();

  v4 = sub_23719630C();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  *&v183 = 0x6D61726170;
  *(&v183 + 1) = 0xE500000000000000;
  sub_23719690C();
  if (!*(v5 + 16) || (v6 = sub_237190728(v213), (v7 & 1) == 0))
  {

    sub_237114F1C(v213);
    return;
  }

  sub_237114D0C(*(v5 + 56) + 32 * v6, v193);
  sub_237114F1C(v213);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v8 = sub_237195AE8();
  [v8 setMaximumFractionDigits_];

  v132 = v2;
  v133 = *(v1 + v2);
  v9 = sub_23715B8B0(v183);
  v11 = v10;
  v12 = sub_23715BB64(v183);
  v139 = v13;
  v140 = v12;
  v14 = sub_2371305C0(v183);
  v15 = sub_2371307E8(v183);
  v16 = sub_237130920(v183);
  v131 = v1;
  v17 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController____lazy_storage___decimalFormatter);
  v147 = v183;
  v137 = sub_23715BCFC(v183);
  v143 = v18;
  v19 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v146 = v17;
  v20 = [v19 initWithFrame_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v22 = objc_opt_self();
  v23 = v21;
  v144 = v22;
  v24 = [v22 systemFontOfSize_];
  [v23 setFont_];

  [v23 setTextAlignment_];
  [v23 setAdjustsFontSizeToFitWidth_];
  [v23 setAllowsDefaultTighteningForTruncation_];
  [v23 setMinimumScaleFactor_];
  v25 = v23;
  [v25 setBaselineAdjustment_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  v141 = v11;
  v142 = v9;
  v26 = sub_23719653C();
  [v25 setText_];

  LODWORD(v27) = 1112014848;
  [v25 setContentHuggingPriority:0 forAxis:v27];
  LODWORD(v28) = 1144750080;
  [v25 setContentCompressionResistancePriority:0 forAxis:v28];
  v29 = type metadata accessor for CAAUEQHeaderView.AUAccessibleTextField();
  v30 = objc_allocWithZone(v29);
  *&v30[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min] = v15;
  *&v30[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max] = v16;
  *&v30[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase] = 0;
  v180.receiver = v30;
  v180.super_class = v29;
  v31 = objc_msgSendSuper2(&v180, sel_initWithFrame_, 0.0, 0.0, 50.0, 22.0);
  v32 = *MEMORY[0x277D765B0];
  v33 = *MEMORY[0x277D76538];
  if (!*MEMORY[0x277D765B0])
  {
    if (!v33)
    {
      v32 = 0;
      goto LABEL_13;
    }

LABEL_11:
    v32 |= v33;
    goto LABEL_13;
  }

  if ((v33 & ~v32) != 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v34 = v31;
  [v34 setAccessibilityTraits_];
  [v34 setSecureTextEntry_];
  v35 = v34;
  v36 = [v144 systemFontOfSize_];
  [v35 setFont_];

  v37 = v35;
  [v37 setTextAlignment_];
  v38 = [objc_opt_self() systemBackgroundColor];
  [v37 setBackgroundColor_];

  [v37 setClearButtonMode_];
  [v37 setEnablesReturnKeyAutomatically_];
  [v37 setAdjustsFontSizeToFitWidth_];
  [v37 setMinimumFontSize_];
  *&v37[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min] = v15;
  *&v37[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max] = v16;
  *&v37[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase] = 0;
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  [v37 setReturnKeyType_];
  [v37 setContentVerticalAlignment_];
  [v37 setEnabled_];

  v39 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v40 = v14;
  v41 = [v39 initWithFloat_];
  v42 = [v146 stringFromNumber_];

  [v37 setText_];
  [v37 setTag_];

  v43 = sub_23719653C();
  v44 = [objc_opt_self() bundleWithIdentifier_];

  v136 = v44;
  if (v44)
  {
    v46 = v44;
    sub_23719634C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E70);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_23719B040;
    v48 = [v37 text];
    if (!v48)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v49 = v48;
    v50 = sub_23719657C();
    v52 = v51;

    v53 = MEMORY[0x277D837D0];
    *(v47 + 56) = MEMORY[0x277D837D0];
    v54 = sub_237115040();
    *(v47 + 32) = v50;
    *(v47 + 40) = v52;
    *(v47 + 96) = v53;
    *(v47 + 104) = v54;
    *(v47 + 64) = v54;
    *(v47 + 72) = v137;
    *(v47 + 80) = v143;

    sub_23719659C();

    v55 = sub_23719653C();

    [v37 setAccessibilityValue_];
  }

  LODWORD(v45) = 1144750080;
  [v37 setContentCompressionResistancePriority:0 forAxis:v45];
  LODWORD(v56) = 1144750080;
  [v37 setContentHuggingPriority:0 forAxis:v56];
  v57 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v58 = [v144 systemFontOfSize_];
  [v57 setFont_];

  [v57 setTextAlignment_];
  [v57 setAdjustsFontSizeToFitWidth_];
  [v57 setAllowsDefaultTighteningForTruncation_];
  [v57 setAdjustsFontSizeToFitWidth_];
  [v57 setMinimumScaleFactor_];
  v59 = v57;
  [v59 setBaselineAdjustment_];
  [v59 setTranslatesAutoresizingMaskIntoConstraints_];
  v60 = sub_23719653C();
  [v59 setText_];

  LODWORD(v61) = 1148846080;
  [v59 setContentHuggingPriority:0 forAxis:v61];
  LODWORD(v62) = 1132068864;
  [v59 setContentCompressionResistancePriority:0 forAxis:v62];
  [v59 setAccessibilityElementsHidden_];

  [v20 addSubview_];
  [v20 addSubview_];
  [v20 addSubview_];

  v213[0] = v20;
  v213[1] = v25;
  v213[2] = v59;
  v213[3] = v37;
  v214 = v147;
  v215 = v14;
  v216 = v15;
  v217 = v16;
  v218 = v142;
  v219 = v141;
  v220 = v140;
  v221 = v139;
  v222 = 0;
  v223 = v146;
  v226 = 0;
  v224 = 0;
  v225 = 0;
  v227 = 0;
  v229 = v182;
  v228 = v181;
  v232 = 0;
  v230 = 0;
  v231 = 0;
  sub_2371377FC();
  v193[0] = v20;
  v193[1] = v25;
  v193[2] = v59;
  v193[3] = v37;
  v194 = v147;
  v195 = v14;
  v196 = v15;
  v197 = v16;
  v198 = v142;
  v199 = v141;
  v200 = v140;
  v201 = v139;
  v202 = 0;
  v203 = v146;
  v206 = 0;
  v204 = 0;
  v205 = 0;
  v207 = 0;
  v209 = v182;
  v208 = v181;
  v212 = 0;
  v210 = 0;
  v211 = 0;
  v233[0] = 0;
  v63 = v20;
  sub_237137C10();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = [v63 widthAnchor];

  v71 = [v70 constraintEqualToConstant_];
  sub_237120D04(v233, &qword_27DE94E80);
  [v71 setActive_];
  v169 = MEMORY[0x277D84F90];
  *&v170 = v63;
  v145 = v63;
  v72 = v71;
  *(&v170 + 1) = v25;
  *&v171 = v59;
  *(&v171 + 1) = v37;
  *&v172 = __PAIR64__(LODWORD(v14), v147);
  *(&v172 + 1) = __PAIR64__(LODWORD(v16), LODWORD(v15));
  *&v173 = v142;
  *(&v173 + 1) = v141;
  *&v174 = v140;
  *(&v174 + 1) = v139;
  *&v175 = 0;
  *(&v175 + 1) = v146;
  *&v177 = 0;
  v176 = v71;
  WORD4(v177) = 0;
  HIWORD(v177) = v182;
  *(&v177 + 10) = v181;
  *&v178 = v67;
  *(&v178 + 1) = v65;
  v179 = v69;
  v73 = objc_allocWithZone(MEMORY[0x277D750A0]);
  v189 = v71;
  v190 = v177;
  v191 = v178;
  v192 = v69;
  v185 = v172;
  v186 = v173;
  v187 = v174;
  v188 = v175;
  v183 = v170;
  v184 = v171;
  sub_2371339F0(&v170, v149);
  sub_2371339F0(&v170, v149);
  v74 = v25;
  v75 = v37;
  v76 = v59;
  v77 = [v73 initWithAccessibilityContainer_];
  swift_unknownObjectRelease();
  sub_237133A4C(&v170);
  *&v183 = 0;
  *(&v183 + 1) = 0xE000000000000000;
  v78 = [v74 text];
  if (!v78)
  {
    __break(1u);
    goto LABEL_23;
  }

  v79 = v78;
  v80 = sub_23719657C();
  v82 = v81;

  MEMORY[0x2383C5F20](v80, v82);

  MEMORY[0x2383C5F20](8236, 0xE200000000000000);
  v83 = [v75 text];
  if (!v83)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v84 = v83;
  v128 = v67;
  v129 = v69;
  v130 = v65;
  v134 = v16;
  v135 = v15;
  v138 = v14;
  v85 = sub_23719657C();
  v87 = v86;

  MEMORY[0x2383C5F20](v85, v87);

  MEMORY[0x2383C5F20](8236, 0xE200000000000000);
  v88 = [v76 text];
  if (!v88)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v89 = v88;

  v90 = sub_23719657C();
  v92 = v91;

  MEMORY[0x2383C5F20](v90, v92);

  v93 = sub_23719653C();

  [v77 setAccessibilityLabel_];

  [v74 frame];
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v101 = v100;

  [v75 frame];
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v109 = v108;

  v234.origin.x = v95;
  v234.origin.y = v97;
  v234.size.width = v99;
  v234.size.height = v101;
  v238.origin.x = v103;
  v238.origin.y = v105;
  v238.size.width = v107;
  v238.size.height = v109;
  v235 = CGRectUnion(v234, v238);
  x = v235.origin.x;
  y = v235.origin.y;
  width = v235.size.width;
  height = v235.size.height;
  [v76 frame];
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;

  v236.origin.x = x;
  v236.origin.y = y;
  v236.size.width = width;
  v236.size.height = height;
  v239.origin.x = v115;
  v239.origin.y = v117;
  v239.size.width = v119;
  v239.size.height = v121;
  v237 = CGRectUnion(v236, v239);
  [v77 setAccessibilityFrameInContainerSpace_];
  v122 = v77;
  MEMORY[0x2383C5F60]();
  if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();

  *&v183 = v145;
  *(&v183 + 1) = v74;
  *&v184 = v76;
  *(&v184 + 1) = v75;
  *&v185 = __PAIR64__(LODWORD(v138), v147);
  *(&v185 + 1) = __PAIR64__(LODWORD(v134), LODWORD(v135));
  *&v186 = v142;
  *(&v186 + 1) = v141;
  *&v187 = v140;
  *(&v187 + 1) = v139;
  *&v188 = 0;
  *(&v188 + 1) = v146;
  *&v190 = 0;
  v189 = v72;
  WORD4(v190) = 0;
  HIWORD(v190) = v182;
  *(&v190 + 10) = v181;
  *&v191 = v128;
  *(&v191 + 1) = v130;
  v192 = v129;
  v149[0] = v145;
  v149[1] = v74;
  v149[2] = v76;
  v149[3] = v75;
  v150 = v147;
  v151 = v138;
  v152 = v135;
  v153 = v134;
  v154 = v142;
  v155 = v141;
  v156 = v140;
  v157 = v139;
  v158 = 0;
  v159 = v146;
  v161 = 0;
  v162 = 0;
  v160 = v72;
  v163 = 0;
  v165 = v182;
  v164 = v181;
  v166 = v128;
  v167 = v130;
  v168 = v129;
  sub_2371339F0(&v183, v148);
  sub_237133A4C(v149);
  v123 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  swift_beginAccess();
  sub_2371339F0(&v183, v148);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v148[0] = *&v133[v123];
  *&v133[v123] = 0x8000000000000000;
  sub_23718E500(&v183, v147, isUniquelyReferenced_nonNull_native);
  *&v133[v123] = v148[0];
  swift_endAccess();
  [*&v133[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack] addArrangedSubview_];
  v125 = *(&v184 + 1);
  [*(&v184 + 1) addTarget:v133 action:sel_textFieldEditingDidChange_ forControlEvents:0x40000];
  [v125 setKeyboardType_];
  [v125 setDelegate_];
  sub_237133A4C(&v183);

  v126 = *(v131 + v132);
  v127 = sub_23715AB34(v147);
  sub_23717E6D4(v147, v127);
}

uint64_t sub_23715A710(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_23719631C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371962FC();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_23715A91C(uint64_t result, AudioUnitParameterValue a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *&v2[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
  if (v3)
  {
    v5 = result;
    inParameter.mAudioUnit = *&v2[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
    inParameter.mScope = 0;
    inParameter.mElement = 0;
    inParameter.mParameterID = result;
    v6 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
    swift_beginAccess();
    LODWORD(v6) = AUParameterSet(*&v2[v6], v2, &inParameter, a2, 0);
    result = sub_2371964DC();
    if (v6 == result)
    {
      v7 = *&v2[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView];
      sub_237135E04(v5, a2);

      outValue = 0.0;
      result = AudioUnitGetParameter(v3, v5, 0, 0, &outValue);
      if (outValue != a2)
      {
        v8 = result;
        sub_23719693C();
        MEMORY[0x2383C5F20](0xD000000000000019, 0x800000023719FA10);
        v9 = sub_237196A5C();
        MEMORY[0x2383C5F20](v9);

        MEMORY[0x2383C5F20](8237, 0xE200000000000000);
        sub_2371966AC();
        MEMORY[0x2383C5F20](0xD000000000000023, 0x800000023719FA30);
        sub_2371966AC();
        sub_237176A9C(0, 0xE000000000000000, v8);
      }
    }
  }

  return result;
}

id sub_23715AB34(unsigned int a1)
{
  v3 = objc_opt_self();
  if (a1 >= 4)
  {
    v12 = [v3 tintColor];

    return v12;
  }

  else
  {
    v4 = [v3 *off_278A257A8[a1]];
    v5 = [v1 traitCollection];
    v6 = [v5 userInterfaceStyle];

    if (v6 == 1)
    {
      v7 = [objc_opt_self() blackColor];
      v8 = sub_23715B6D0(v7, 0.2);

      v9 = sub_23715B6D0(v4, 0.8);
      v10 = sub_23715B790(v8, v9);

      return v10;
    }

    else
    {
      return v4;
    }
  }
}

void sub_23715AD08(int a1, int a2, int a3, AudioUnitParameterID inID)
{
  v5 = v4;
  v24 = *MEMORY[0x277D85DE8];
  if (a2 == 3)
  {
    if (inID == 8)
    {
      v23 = 0;
      outData = 0u;
      v22 = 0u;
      ioDataSize = 40;
      v10 = *(v4 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU);
      if (v10 && (Property = AudioUnitGetProperty(v10, 8u, 2u, 0, &outData, &ioDataSize), Property == sub_2371964DC()))
      {
        v12 = HIDWORD(v22);
      }

      else
      {
        v12 = 0;
      }

      *(v5 + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_numChannels) = v12;
    }
  }

  else
  {
    if (a2)
    {
      return;
    }

    v7 = sub_2371305C0(inID);
    v8 = *(v4 + OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView);
    sub_237135E04(inID, v7);

    switch(inID)
    {
      case 6u:
        v9 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_gainKnob;
        goto LABEL_15;
      case 5u:
        v9 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_releaseKnob;
        goto LABEL_15;
      case 4u:
        v9 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_attackKnob;
LABEL_15:
        v13 = *(v5 + v9);
        *&v13[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value] = v7;
        v19 = v13;
        sub_23713F9D4();

        return;
    }

    v14 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_frequencyData);
    if (v14)
    {
      LODWORD(outData) = 0x4000;
      v15 = *(v14 + 24);

      v16 = sub_237130F84();
      v17 = AudioUnitGetProperty(v15, 0x34u, 0, 0, v16, &outData);
      if (v17 != sub_2371964DC())
      {
        sub_237176A9C(0xD000000000000029, 0x800000023719EA70, v17);
      }
    }

    v18 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_graphView);
    sub_237164BC0();
  }
}

id sub_23715AF60()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView;
  type metadata accessor for CAAdjustingHeaderView();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v0[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_viewContainer] = 0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_graphView;
  type metadata accessor for CACompressionView();
  *&v0[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v0[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_edgeControlSection] = 0;
  v3 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_inputLabel;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v4 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_outputLabel;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_meterLabel;
  *&v0[v5] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v6 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_meter;
  *&v0[v6] = [objc_allocWithZone(type metadata accessor for AULabeledMeterView()) initWithFrame_];
  v7 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_attackKnob;
  v8 = type metadata accessor for AUKnobControl();
  *&v0[v7] = [objc_allocWithZone(v8) initWithFrame_];
  v9 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_releaseKnob;
  *&v0[v9] = [objc_allocWithZone(v8) initWithFrame_];
  v10 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_gainKnob;
  *&v0[v10] = [objc_allocWithZone(v8) initWithFrame_];
  *&v0[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_frequencyData] = 0;
  v11 = &v0[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_curveFrame];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = &v0[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_previousSize];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_rightWidthConstraint] = 0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for AUDynamicsProcessorViewController();
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_23715B1CC(void *a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView;
  type metadata accessor for CAAdjustingHeaderView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_viewContainer] = 0;
  v4 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_graphView;
  type metadata accessor for CACompressionView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_edgeControlSection] = 0;
  v5 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_inputLabel;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v6 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_outputLabel;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v7 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_meterLabel;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v8 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_meter;
  *&v1[v8] = [objc_allocWithZone(type metadata accessor for AULabeledMeterView()) initWithFrame_];
  v9 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_attackKnob;
  v10 = type metadata accessor for AUKnobControl();
  *&v1[v9] = [objc_allocWithZone(v10) initWithFrame_];
  v11 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_releaseKnob;
  *&v1[v11] = [objc_allocWithZone(v10) initWithFrame_];
  v12 = OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_gainKnob;
  *&v1[v12] = [objc_allocWithZone(v10) initWithFrame_];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_frequencyData] = 0;
  v13 = &v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_curveFrame];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_previousSize];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_rightWidthConstraint] = 0;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for AUDynamicsProcessorViewController();
  v15 = objc_msgSendSuper2(&v17, sel_initWithCoder_, a1);

  if (v15)
  {
  }

  return v15;
}

void sub_23715B464()
{

  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_rightWidthConstraint);
}

id sub_23715B554()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUDynamicsProcessorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23715B6D0(void *a1, double a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = 0.0;
  v7[0] = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  [a1 getRed:v7 green:&v6 blue:&v5 alpha:&v4];
  return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v7[0] * a2 green:v6 * a2 blue:v5 * a2 alpha:v4 * a2];
}

id sub_23715B790(void *a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = 0.0;
  v15[0] = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  [a1 getRed:v15 green:&v14 blue:&v13 alpha:&v12];
  [a2 getRed:&v11 green:&v10 blue:&v9 alpha:&v8];
  if (v15[0] + v11 <= 1.0)
  {
    v3 = v15[0] + v11;
  }

  else
  {
    v3 = 1.0;
  }

  if (v14 + v10 <= 1.0)
  {
    v4 = v14 + v10;
  }

  else
  {
    v4 = 1.0;
  }

  if (v13 + v9 <= 1.0)
  {
    v5 = v13 + v9;
  }

  else
  {
    v5 = 1.0;
  }

  if (v12 + v8 <= 1.0)
  {
    v6 = v12 + v8;
  }

  else
  {
    v6 = 1.0;
  }

  return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v3 green:v4 blue:v5 alpha:v6];
}

uint64_t sub_23715B8B0(int a1)
{
  result = 0;
  if (a1 > 4)
  {
    if (a1 <= 999)
    {
      if (a1 == 5 || a1 == 6)
      {
        goto LABEL_13;
      }
    }

    else if (a1 == 1000 || a1 == 2000 || a1 == 3000)
    {
      goto LABEL_13;
    }
  }

  else if (a1 > 1 || a1 <= 1)
  {
LABEL_13:
    type metadata accessor for AUAppleViewControllerBase();
    return sub_237175EDC();
  }

  return result;
}

uint64_t sub_23715BAF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE951F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23715BB64(int a1)
{
  if (a1 <= 5)
  {
    if (!a1 || a1 == 2 || a1 == 3)
    {
      goto LABEL_17;
    }
  }

  else if (a1 > 1999)
  {
    if (a1 == 2000 || a1 == 3000)
    {
      goto LABEL_17;
    }
  }

  else if (a1 == 6 || a1 == 1000)
  {
LABEL_17:
    type metadata accessor for AUAppleViewControllerBase();
    return sub_237175EDC();
  }

  return sub_23715B8B0(a1);
}

uint64_t sub_23715BCFC(int a1)
{
  result = 0;
  if (a1 > 999)
  {
    if (a1 == 1000 || a1 == 3000 || a1 == 2000)
    {
      goto LABEL_9;
    }
  }

  else if (a1 <= 6)
  {
    v3 = 1 << a1;
    if ((v3 & 0x4B) != 0 || (v3 & 0x30) != 0)
    {
LABEL_9:
      type metadata accessor for AUAppleViewControllerBase();
      return sub_237175EDC();
    }
  }

  return result;
}

id sub_23715BD9C()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___headerView;
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___headerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___headerView);
  }

  else
  {
    type metadata accessor for CAAdjustingHeaderView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_23715BF18(uint64_t *a1, uint64_t (*a2)(void), double a3, double a4, double a5, double a6)
{
  v7 = *a1;
  v8 = *(v6 + *a1);
  if (v8)
  {
    v9 = *(v6 + *a1);
  }

  else
  {
    v10 = [objc_allocWithZone(a2(0)) initWithFrame_];
    v11 = *(v6 + v7);
    *(v6 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v12 = v8;
  return v9;
}

void sub_23715BFBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_v3AU);
  if (v1 && (v2 = [v1 parameterTree]) != 0)
  {
    v9 = v2;
    v3 = [v2 parameterWithID:1000 scope:0 element:0];
  }

  else
  {
    v3 = 0;
    v9 = 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_compressionAmountParam);
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_compressionAmountParam) = v3;
  v5 = v3;

  if (v3)
  {
    [v5 minValue];
    *(v0 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_minCompressionValue) = v6;
    [v5 maxValue];
    v8 = v7;

    *(v0 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_maxCompressionValue) = v8;
  }

  else
  {
  }
}

void sub_23715C0E0()
{
  v1 = v0;
  v100.receiver = v0;
  v100.super_class = type metadata accessor for AUPeakLimiterViewController();
  objc_msgSendSuper2(&v100, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 frame];
  v5 = v4;
  v7 = v6;

  v8 = &v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_previousSize];
  *v8 = v5;
  *(v8 + 1) = v7;
  v9 = sub_23715BD9C();
  v10 = [v1 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  [v10 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v101.origin.x = v13;
  v101.origin.y = v15;
  v101.size.width = v17;
  v101.size.height = v19;
  [v9 setFrame_];

  v20 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___headerView;
  [*&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___headerView] setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = sub_23715BE14();
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];

  v22 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___graphView;
  v23 = *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___graphView];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 systemBackgroundColor];
  [v25 setBackgroundColor_];

  v27 = sub_23715BE48();
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];

  v28 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_viewContainer;
  v29 = *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_viewContainer];
  v30 = [v1 view];
  if (!v30)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v31 = v30;
  [v30 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [v29 setFrame_];
  [*&v1[v28] setTranslatesAutoresizingMaskIntoConstraints_];
  v40 = [*&v1[v28] layer];
  v99 = v24;
  v41 = [v24 secondaryLabelColor];
  v42 = [v41 CGColor];

  [v40 setBorderColor_];
  v43 = [*&v1[v28] layer];
  [v43 setBorderWidth_];

  v44 = [v1 view];
  if (!v44)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v45 = v44;
  [v44 addSubview_];

  [*&v1[v28] addSubview_];
  [*&v1[v28] addSubview_];
  v97 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___controlsView;
  [*&v1[v28] addSubview_];
  v46 = sub_23715BE7C();
  [v46 setTranslatesAutoresizingMaskIntoConstraints_];

  v96 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___attackKnob;
  v47 = *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___attackKnob];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94D18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B700;
  *(inited + 32) = 0x6D61726150;
  *(inited + 40) = 0xE500000000000000;
  v49 = MEMORY[0x277D84CC0];
  *(inited + 48) = 0;
  *(inited + 72) = v49;
  *(inited + 80) = 7235917;
  *(inited + 88) = 0xE300000000000000;
  v50 = v47;
  v51 = sub_2371307E8(0);
  v52 = MEMORY[0x277D83A90];
  *(inited + 96) = v51 * 1000.0;
  *(inited + 120) = v52;
  *(inited + 128) = 7889229;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = sub_237130920(0) * 1000.0;
  *(inited + 168) = v52;
  *(inited + 176) = 0x65756C6156;
  *(inited + 184) = 0xE500000000000000;
  *(inited + 192) = sub_2371305C0(0) * 1000.0;
  *(inited + 216) = v52;
  *(inited + 224) = 0x656C746954;
  *(inited + 232) = 0xE500000000000000;
  v53 = type metadata accessor for AUAppleViewControllerBase();
  v54 = sub_237175EDC();
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 240) = v54;
  *(inited + 248) = v55;
  v98 = v28;
  v56 = sub_237119CF4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948A0);
  swift_arrayDestroy();
  sub_237140780(v56);

  v57 = sub_23715BEB0();
  [v57 setTranslatesAutoresizingMaskIntoConstraints_];

  v95 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___releaseKnob;
  v58 = *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___releaseKnob];
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_23719B700;
  *(v59 + 32) = 0x6D61726150;
  *(v59 + 40) = 0xE500000000000000;
  *(v59 + 48) = 1;
  *(v59 + 72) = MEMORY[0x277D84CC0];
  *(v59 + 80) = 7235917;
  *(v59 + 88) = 0xE300000000000000;
  v60 = v58;
  *(v59 + 96) = sub_2371307E8(1u) * 1000.0;
  *(v59 + 120) = v52;
  *(v59 + 128) = 7889229;
  *(v59 + 136) = 0xE300000000000000;
  *(v59 + 144) = sub_237130920(1u) * 1000.0;
  *(v59 + 168) = v52;
  *(v59 + 176) = 0x65756C6156;
  *(v59 + 184) = 0xE500000000000000;
  *(v59 + 192) = sub_2371305C0(1u) * 1000.0;
  *(v59 + 216) = v52;
  *(v59 + 224) = 0x656C746954;
  *(v59 + 232) = 0xE500000000000000;
  v94 = v53;
  v61 = sub_237175EDC();
  *(v59 + 264) = MEMORY[0x277D837D0];
  *(v59 + 240) = v61;
  *(v59 + 248) = v62;
  v63 = sub_237119CF4(v59);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_237140780(v63);

  v64 = sub_23715BEE4();
  [v64 setTranslatesAutoresizingMaskIntoConstraints_];

  v65 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___gainKnob;
  v66 = *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___gainKnob];
  v67 = swift_initStackObject();
  *(v67 + 16) = xmmword_23719B700;
  *(v67 + 32) = 0x6D61726150;
  *(v67 + 40) = 0xE500000000000000;
  *(v67 + 48) = 2;
  *(v67 + 72) = MEMORY[0x277D84CC0];
  *(v67 + 80) = 7235917;
  *(v67 + 88) = 0xE300000000000000;
  v68 = v66;
  *(v67 + 96) = sub_2371307E8(2u);
  *(v67 + 120) = v52;
  *(v67 + 128) = 7889229;
  *(v67 + 136) = 0xE300000000000000;
  *(v67 + 144) = sub_237130920(2u);
  *(v67 + 168) = v52;
  *(v67 + 176) = 0x65756C6156;
  *(v67 + 184) = 0xE500000000000000;
  *(v67 + 192) = sub_2371305C0(2u);
  *(v67 + 216) = v52;
  *(v67 + 224) = 0x656C746954;
  *(v67 + 232) = 0xE500000000000000;
  v69 = sub_237175EDC();
  *(v67 + 264) = MEMORY[0x277D837D0];
  *(v67 + 240) = v69;
  *(v67 + 248) = v70;
  v71 = sub_237119CF4(v67);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_237140780(v71);

  v72 = *&v1[v97];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  v73 = swift_allocObject();
  v74 = *&v1[v96];
  v75 = *&v1[v95];
  *(v73 + 16) = xmmword_23719B670;
  *(v73 + 32) = v74;
  *(v73 + 40) = v75;
  v76 = *&v1[v65];
  *(v73 + 48) = v76;
  v77 = v76;
  v78 = v75;
  v79 = v74;
  v80 = v72;
  sub_237149784(v73);

  v81 = *(*&v1[v97] + OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_meter);
  v82 = sub_237175EDC();
  v83 = &v81[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_label];
  *v83 = v82;
  v83[1] = v84;

  sub_23714FCBC();

  sub_23715CD54();
  v85 = sub_23719653C();
  v86 = [objc_opt_self() bundleWithIdentifier_];

  v87 = objc_opt_self();
  v88 = v86;
  v89 = [v87 currentTraitCollection];
  v90 = sub_23719653C();
  v91 = [v99 colorNamed:v90 inBundle:v88 compatibleWithTraitCollection:v89];

  if (!v91)
  {
    v91 = [v99 systemBackgroundColor];
  }

  v92 = [*&v1[v98] layer];
  v93 = [v91 CGColor];
  [v92 setBackgroundColor_];

  sub_23715F568();
}

void sub_23715CB7C()
{
  sub_2371959A4();
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_meterTimer);
  if (v1 && *(v0 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_needsRealtimeDrawing) == 1)
  {
    [v1 invalidate];
  }

  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 removeObserver_];

  v4 = [v2 defaultCenter];
  v5 = sub_23715BE14();
  [v4 removeObserver_];
}

void sub_23715CD54()
{
  v1 = v0;
  v107 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE949B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23719BDB0;
  v3 = sub_23715BD9C();
  v4 = [v3 leadingAnchor];

  v5 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_viewContainer;
  v6 = [*&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_viewContainer] &off_278A25528 + 1];
  v7 = [v4 constraintEqualToAnchor_];

  v8 = sub_23710EEB4();
  *(v2 + 56) = v8;
  *(v2 + 32) = v7;
  v9 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___headerView;
  v10 = [*&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___headerView] topAnchor];
  v11 = [*&v1[v5] topAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v2 + 88) = v8;
  *(v2 + 64) = v12;
  v13 = [*&v1[v9] trailingAnchor];
  v14 = [*&v1[v5] trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v2 + 120) = v8;
  *(v2 + 96) = v15;
  v106 = v9;
  v16 = [*&v1[v9] heightAnchor];
  v17 = [v16 constraintEqualToConstant_];

  *(v2 + 152) = v8;
  *(v2 + 128) = v17;
  v18 = sub_23719661C();

  [v107 addObjectsFromArray_];

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23719BDB0;
  v20 = [*&v1[v5] leadingAnchor];
  v21 = [v1 view];
  if (!v21)
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  *(v19 + 56) = v8;
  *(v19 + 32) = v24;
  v25 = [*&v1[v5] trailingAnchor];
  v26 = [v1 view];
  if (!v26)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = v26;
  v28 = [v26 trailingAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v19 + 88) = v8;
  *(v19 + 64) = v29;
  v30 = [*&v1[v5] topAnchor];
  v31 = [v1 view];
  if (!v31)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v32 = v31;
  v33 = [v31 topAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  *(v19 + 120) = v8;
  *(v19 + 96) = v34;
  v35 = [*&v1[v5] bottomAnchor];
  v36 = [v1 view];
  if (!v36)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v37 = v36;
  v38 = [v36 bottomAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(v19 + 152) = v8;
  *(v19 + 128) = v39;
  v40 = sub_23719661C();

  [v107 addObjectsFromArray_];

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_23719B700;
  v42 = sub_23715BE14();
  v43 = [v42 leadingAnchor];

  v44 = [*&v1[v5] leadingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:15.0];

  *(v41 + 56) = v8;
  *(v41 + 32) = v45;
  v46 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___graphView;
  v105 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___graphView;
  v47 = [*&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___graphView] centerYAnchor];
  v48 = [*&v1[v5] &selRef_state];
  v49 = [v47 &selRef:v48 setZPosition:20.0 + 6];

  *(v41 + 88) = v8;
  *(v41 + 64) = v49;
  v50 = [*&v1[v46] topAnchor];
  v51 = [*&v1[v106] bottomAnchor];
  v52 = [v50 &selRef:v51 setZPosition:15.0 + 6];

  LODWORD(v53) = 1132068864;
  [v52 setPriority_];
  *(v41 + 120) = v8;
  *(v41 + 96) = v52;
  v54 = [*&v1[v46] bottomAnchor];
  v55 = [*&v1[v5] bottomAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:-15.0];

  LODWORD(v57) = 1132068864;
  [v56 setPriority_];
  *(v41 + 152) = v8;
  *(v41 + 128) = v56;
  v58 = [*&v1[v46] widthAnchor];
  v59 = [*&v1[v46] heightAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 multiplier:0.9];

  type metadata accessor for UILayoutPriority(0);
  sub_237160A54();
  sub_23719645C();
  LODWORD(v61) = v108;
  [v60 setPriority_];
  *(v41 + 184) = v8;
  *(v41 + 160) = v60;
  v62 = sub_23719661C();

  [v107 addObjectsFromArray_];

  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_23719BD00;
  v64 = sub_23715BE48();
  v65 = [v64 centerYAnchor];

  v66 = [*&v1[v5] centerYAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:20.0];

  *(v63 + 56) = v8;
  *(v63 + 32) = v67;
  v68 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___controlsView;
  v69 = [*&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___controlsView] heightAnchor];
  v70 = [v69 constraintLessThanOrEqualToConstant_];

  *(v63 + 88) = v8;
  *(v63 + 64) = v70;
  v71 = [*&v1[v68] heightAnchor];
  v72 = [v71 constraintGreaterThanOrEqualToConstant_];

  *(v63 + 120) = v8;
  *(v63 + 96) = v72;
  v73 = [*&v1[v68] topAnchor];
  v74 = [*&v1[v106] bottomAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:15.0];

  LODWORD(v76) = 1132068864;
  [v75 setPriority_];
  *(v63 + 152) = v8;
  *(v63 + 128) = v75;
  v77 = [*&v1[v68] bottomAnchor];
  v78 = [*&v1[v5] bottomAnchor];
  v79 = [v77 constraintEqualToAnchor:v78 constant:-15.0];

  LODWORD(v80) = 1132068864;
  [v79 setPriority_];
  *(v63 + 184) = v8;
  *(v63 + 160) = v79;
  v81 = [*&v1[v68] trailingAnchor];
  v82 = [*&v1[v5] trailingAnchor];
  v83 = [v81 constraintEqualToAnchor:v82 constant:-15.0];

  *(v63 + 216) = v8;
  *(v63 + 192) = v83;
  v84 = sub_23719661C();

  [v107 addObjectsFromArray_];

  v85 = [*&v1[v68] heightAnchor];
  v86 = [*&v1[v105] heightAnchor];
  v87 = [v85 constraintEqualToAnchor_];

  v88 = sub_23719653C();
  [v87 setIdentifier_];

  v89 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_temporaryConstraints;
  v90 = swift_beginAccess();
  MEMORY[0x2383C5F60](v90);
  if (*((*&v1[v89] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v89] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  v91 = [*&v1[v68] leadingAnchor];
  v92 = [*&v1[v5] leadingAnchor];
  v93 = [v91 constraintEqualToAnchor:v92 constant:15.0];

  v94 = sub_23719653C();
  [v93 setIdentifier_];

  v95 = swift_beginAccess();
  MEMORY[0x2383C5F60](v95);
  if (*((*&v1[v89] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v89] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  v96 = [*&v1[v68] leadingAnchor];
  v97 = [*&v1[v105] trailingAnchor];
  v98 = [v96 constraintEqualToAnchor:v97 constant:20.0];

  v99 = sub_23719653C();
  [v98 setIdentifier_];

  v100 = swift_beginAccess();
  MEMORY[0x2383C5F60](v100);
  if (*((*&v1[v89] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v89] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  v101 = [*&v1[v68] widthAnchor];
  v102 = [v101 constraintGreaterThanOrEqualToConstant_];

  v103 = sub_23719653C();
  [v102 setIdentifier_];

  v104 = swift_beginAccess();
  MEMORY[0x2383C5F60](v104);
  if (*((*&v1[v89] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v89] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  v107;
  sub_23719662C();
LABEL_18:
  __break(1u);
}

void sub_23715DD88()
{
  v15 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_temporaryConstraints;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:
    v11 = objc_opt_self();
    sub_23710EEB4();
    v12 = sub_23719661C();

    [v11 deactivateConstraints_];

    v13 = sub_23719661C();

    [v11 activateConstraints_];

    return;
  }

  v3 = sub_2371969FC();
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v3 >= 1)
  {

    v4 = 0;
    v14 = MEMORY[0x277D84F90];
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2383C62A0](v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 identifier];
      if (v8 && (v9 = v8, sub_23719657C(), v9, sub_23713D2C8(), LOBYTE(v9) = sub_23719681C(), , (v9 & 1) != 0))
      {
        v10 = v7;
        MEMORY[0x2383C5F60]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23719664C();
        }

        sub_23719665C();

        v14 = v16;
      }

      else
      {
        v5 = v7;
        MEMORY[0x2383C5F60]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23719664C();
        }

        sub_23719665C();
      }

      ++v4;
    }

    while (v3 != v4);

    goto LABEL_19;
  }

  __break(1u);
}

void sub_23715E054()
{
  v0 = sub_23719630C();
  if (v0)
  {
    v1 = v0;
    sub_23719690C();
    if (!*(v1 + 16))
    {
      goto LABEL_9;
    }

    v2 = sub_237190728(v7);
    if ((v3 & 1) == 0)
    {
      goto LABEL_9;
    }

    sub_237114D0C(*(v1 + 56) + 32 * v2, v8);
    sub_237114F1C(v7);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    sub_23719690C();
    if (*(v1 + 16) && (v4 = sub_237190728(v7), (v5 & 1) != 0))
    {
      sub_237114D0C(*(v1 + 56) + 32 * v4, v8);
      sub_237114F1C(v7);

      if (swift_dynamicCast())
      {
        sub_23715FC64(1634886000, 2.9965e32);
        v6 = sub_23715BD9C();
        sub_237135E04(0x61726170u, 2.9965e32);
      }
    }

    else
    {
LABEL_9:

      sub_237114F1C(v7);
    }
  }
}

void sub_23715E220()
{
  v1 = v0;
  v2 = sub_23715BD9C();
  sub_23717E58C();

  v3 = sub_23719630C();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  *&v186 = 0x6D61726170;
  *(&v186 + 1) = 0xE500000000000000;
  sub_23719690C();
  if (!*(v4 + 16) || (v5 = sub_237190728(v216), (v6 & 1) == 0))
  {

    sub_237114F1C(v216);
    return;
  }

  sub_237114D0C(*(v4 + 56) + 32 * v5, v196);
  sub_237114F1C(v216);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v137 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___headerView;
  v136 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___headerView);
  v7 = sub_237101244(v186);
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = sub_237101244(v186);
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  v142 = v14;
  v143 = v13;
  v15 = sub_2371305C0(v186);
  v16 = sub_2371307E8(v186);
  v17 = sub_237130920(v186);
  v135 = v1;
  v18 = sub_237195AE8();
  v150 = v186;
  v19 = 1000.0 * v15;
  v20 = 1000.0 * v16;
  v21 = 1000.0 * v17;
  v22 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v149 = v18;
  v139 = [v22 initWithFrame_];
  [v139 setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v24 = objc_opt_self();
  v25 = v23;
  v148 = v24;
  v26 = [v24 systemFontOfSize_];
  [v25 setFont_];

  [v25 setTextAlignment_];
  [v25 setAdjustsFontSizeToFitWidth_];
  [v25 setAllowsDefaultTighteningForTruncation_];
  [v25 setMinimumScaleFactor_];
  v27 = v25;
  [v27 setBaselineAdjustment_];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  v28 = sub_23719653C();
  [v27 setText_];

  LODWORD(v29) = 1112014848;
  [v27 setContentHuggingPriority:0 forAxis:v29];
  LODWORD(v30) = 1144750080;
  v146 = v27;
  [v27 setContentCompressionResistancePriority:0 forAxis:v30];
  v31 = type metadata accessor for CAAUEQHeaderView.AUAccessibleTextField();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min] = 1000.0 * v16;
  *&v32[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max] = v21;
  *&v32[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase] = 0;
  v183.receiver = v32;
  v183.super_class = v31;
  v33 = objc_msgSendSuper2(&v183, sel_initWithFrame_, 0.0, 0.0, 50.0, 22.0);
  v34 = *MEMORY[0x277D765B0];
  v35 = *MEMORY[0x277D76538];
  v144 = v10;
  v145 = v9;
  if (!*MEMORY[0x277D765B0])
  {
    if (!v35)
    {
      v34 = 0;
      goto LABEL_26;
    }

LABEL_24:
    v34 |= v35;
    goto LABEL_26;
  }

  if ((v35 & ~v34) != 0)
  {
    goto LABEL_24;
  }

LABEL_26:
  v36 = v33;
  [v36 setAccessibilityTraits_];
  [v36 setSecureTextEntry_];
  v37 = v36;
  v38 = [v148 systemFontOfSize_];
  [v37 setFont_];

  v39 = v37;
  [v39 setTextAlignment_];
  v40 = objc_opt_self();
  v41 = [v40 systemBackgroundColor];
  [v39 setBackgroundColor_];

  [v39 setClearButtonMode_];
  [v39 setEnablesReturnKeyAutomatically_];
  [v39 setAdjustsFontSizeToFitWidth_];
  [v39 setMinimumFontSize_];
  *&v39[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min] = v20;
  *&v39[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max] = v21;
  *&v39[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase] = 0;
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  [v39 setReturnKeyType_];
  [v39 setContentVerticalAlignment_];
  [v39 setEnabled_];

  v42 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v43 = v19;
  v44 = [v42 initWithFloat_];
  v45 = [v149 stringFromNumber_];

  [v39 setText_];
  [v39 setTag_];

  v46 = sub_23719653C();
  v47 = [objc_opt_self() bundleWithIdentifier_];

  if (v47)
  {
    v49 = v47;
    sub_23719634C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E70);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_23719B040;
    v51 = [v39 text];
    if (!v51)
    {
LABEL_38:
      __break(1u);
      return;
    }

    v52 = v51;
    v53 = sub_23719657C();
    v55 = v54;

    v56 = MEMORY[0x277D837D0];
    *(v50 + 56) = MEMORY[0x277D837D0];
    v57 = sub_237115040();
    *(v50 + 32) = v53;
    *(v50 + 40) = v55;
    *(v50 + 96) = v56;
    *(v50 + 104) = v57;
    *(v50 + 64) = v57;
    *(v50 + 72) = 0;
    *(v50 + 80) = 0xE000000000000000;

    sub_23719659C();

    v58 = sub_23719653C();

    [v39 setAccessibilityValue_];
  }

  v134 = v40;
  LODWORD(v48) = 1144750080;
  [v39 setContentCompressionResistancePriority:0 forAxis:v48];
  LODWORD(v59) = 1144750080;
  [v39 setContentHuggingPriority:0 forAxis:v59];
  v60 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v61 = [v148 systemFontOfSize_];
  [v60 setFont_];

  [v60 setTextAlignment_];
  [v60 setAdjustsFontSizeToFitWidth_];
  [v60 setAllowsDefaultTighteningForTruncation_];
  [v60 setAdjustsFontSizeToFitWidth_];
  [v60 setMinimumScaleFactor_];
  v62 = v60;
  [v62 setBaselineAdjustment_];
  [v62 setTranslatesAutoresizingMaskIntoConstraints_];
  v63 = sub_23719653C();
  [v62 setText_];

  LODWORD(v64) = 1148846080;
  [v62 setContentHuggingPriority:0 forAxis:v64];
  LODWORD(v65) = 1132068864;
  [v62 setContentCompressionResistancePriority:0 forAxis:v65];
  [v62 setAccessibilityElementsHidden_];

  [v139 addSubview_];
  [v139 addSubview_];
  [v139 addSubview_];

  v216[0] = v139;
  v216[1] = v146;
  v216[2] = v62;
  v216[3] = v39;
  v217 = v150;
  v218 = v19;
  v219 = 1000.0 * v16;
  v220 = v21;
  v221 = v145;
  v222 = v144;
  v223 = v143;
  v224 = v142;
  v225 = 0;
  v226 = v149;
  v229 = 0;
  v227 = 0;
  v228 = 0;
  v230 = 0;
  v232 = v185;
  v231 = v184;
  v235 = 0;
  v233 = 0;
  v234 = 0;
  sub_2371377FC();
  v196[0] = v139;
  v196[1] = v146;
  v196[2] = v62;
  v196[3] = v39;
  v197 = v150;
  v198 = v19;
  v199 = 1000.0 * v16;
  v200 = v21;
  v201 = v145;
  v202 = v144;
  v203 = v143;
  v204 = v142;
  v205 = 0;
  v206 = v149;
  v209 = 0;
  v207 = 0;
  v208 = 0;
  v210 = 0;
  v212 = v185;
  v211 = v184;
  v215 = 0;
  v213 = 0;
  v214 = 0;
  v236[0] = 0;
  v66 = v139;
  sub_237137C10();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = [v66 widthAnchor];

  v74 = [v73 constraintEqualToConstant_];
  sub_2371609EC(v236);
  [v74 setActive_];
  v172 = MEMORY[0x277D84F90];
  *&v173 = v66;
  v141 = v66;
  *(&v173 + 1) = v146;
  *&v174 = v62;
  *(&v174 + 1) = v39;
  *&v175 = __PAIR64__(LODWORD(v19), v150);
  *(&v175 + 1) = __PAIR64__(LODWORD(v21), LODWORD(v20));
  *&v176 = v145;
  *(&v176 + 1) = v144;
  v75 = v74;
  *&v177 = v143;
  *(&v177 + 1) = v142;
  *&v178 = 0;
  *(&v178 + 1) = v149;
  *&v180 = 0;
  v179 = v74;
  WORD4(v180) = 0;
  HIWORD(v180) = v185;
  *(&v180 + 10) = v184;
  *&v181 = v70;
  *(&v181 + 1) = v68;
  v182 = v72;
  v76 = objc_allocWithZone(MEMORY[0x277D750A0]);
  v192 = v74;
  v193 = v180;
  v194 = v181;
  v195 = v72;
  v188 = v175;
  v189 = v176;
  v190 = v177;
  v191 = v178;
  v186 = v173;
  v187 = v174;
  sub_2371339F0(&v173, v152);
  sub_2371339F0(&v173, v152);
  v77 = v146;
  v78 = v39;
  v79 = v62;
  v80 = [v76 initWithAccessibilityContainer_];
  swift_unknownObjectRelease();
  sub_237133A4C(&v173);
  *&v186 = 0;
  *(&v186 + 1) = 0xE000000000000000;
  v81 = [v77 text];
  if (!v81)
  {
    __break(1u);
    goto LABEL_36;
  }

  v82 = v81;
  v83 = sub_23719657C();
  v85 = v84;

  MEMORY[0x2383C5F20](v83, v85);

  MEMORY[0x2383C5F20](8236, 0xE200000000000000);
  v86 = [v78 text];
  if (!v86)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v87 = v86;
  v131 = v70;
  v132 = v72;
  v133 = v68;
  v138 = v21;
  v140 = v20;
  v147 = v19;
  v88 = sub_23719657C();
  v90 = v89;

  MEMORY[0x2383C5F20](v88, v90);

  MEMORY[0x2383C5F20](8236, 0xE200000000000000);
  v91 = [v79 text];
  if (!v91)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v92 = v91;

  v93 = sub_23719657C();
  v95 = v94;

  MEMORY[0x2383C5F20](v93, v95);

  v96 = sub_23719653C();

  [v80 setAccessibilityLabel_];

  [v77 frame];
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;

  [v78 frame];
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v112 = v111;

  v237.origin.x = v98;
  v237.origin.y = v100;
  v237.size.width = v102;
  v237.size.height = v104;
  v241.origin.x = v106;
  v241.origin.y = v108;
  v241.size.width = v110;
  v241.size.height = v112;
  v238 = CGRectUnion(v237, v241);
  x = v238.origin.x;
  y = v238.origin.y;
  width = v238.size.width;
  height = v238.size.height;
  [v79 frame];
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v124 = v123;

  v239.origin.x = x;
  v239.origin.y = y;
  v239.size.width = width;
  v239.size.height = height;
  v242.origin.x = v118;
  v242.origin.y = v120;
  v242.size.width = v122;
  v242.size.height = v124;
  v240 = CGRectUnion(v239, v242);
  [v80 setAccessibilityFrameInContainerSpace_];
  v125 = v80;
  MEMORY[0x2383C5F60]();
  if (*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v172 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();

  *&v186 = v141;
  *(&v186 + 1) = v77;
  *&v187 = v79;
  *(&v187 + 1) = v78;
  *&v188 = __PAIR64__(LODWORD(v147), v150);
  *(&v188 + 1) = __PAIR64__(LODWORD(v138), LODWORD(v140));
  *&v189 = v145;
  *(&v189 + 1) = v144;
  *&v190 = v143;
  *(&v190 + 1) = v142;
  *&v191 = 0;
  *(&v191 + 1) = v149;
  *&v193 = 0;
  v192 = v75;
  WORD4(v193) = 0;
  HIWORD(v193) = v185;
  *(&v193 + 10) = v184;
  *&v194 = v131;
  *(&v194 + 1) = v133;
  v195 = v132;
  v152[0] = v141;
  v152[1] = v77;
  v152[2] = v79;
  v152[3] = v78;
  v153 = v150;
  v154 = v147;
  v155 = v140;
  v156 = v138;
  v157 = v145;
  v158 = v144;
  v159 = v143;
  v160 = v142;
  v161 = 0;
  v162 = v149;
  v164 = 0;
  v165 = 0;
  v163 = v75;
  v166 = 0;
  v168 = v185;
  v167 = v184;
  v169 = v131;
  v170 = v133;
  v171 = v132;
  sub_2371339F0(&v186, v151);
  sub_237133A4C(v152);
  v126 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  swift_beginAccess();
  sub_2371339F0(&v186, v151);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v151[0] = *&v136[v126];
  *&v136[v126] = 0x8000000000000000;
  sub_23718E500(&v186, v150, isUniquelyReferenced_nonNull_native);
  *&v136[v126] = v151[0];
  swift_endAccess();
  [*&v136[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack] addArrangedSubview_];
  v128 = *(&v187 + 1);
  [*(&v187 + 1) addTarget:v136 action:sel_textFieldEditingDidChange_ forControlEvents:0x40000];
  [v128 setKeyboardType_];
  [v128 setDelegate_];
  sub_237133A4C(&v186);

  v129 = *(v135 + v137);
  v130 = [v134 tintColor];
  sub_23717E6D4(v150, v130);
}

uint64_t sub_23715F384(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_23719631C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371962FC();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_23715F568()
{
  v1 = v0;
  v30 = *MEMORY[0x277D85DE8];
  v2 = sub_23715BD9C();
  type metadata accessor for AUAppleViewControllerBase();
  v3 = sub_237175EDC();
  v5 = v4;
  v6 = sub_237175EDC();
  v8 = v7;
  v9 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel;
  v10 = *&v2[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel];
  v11 = sub_23719653C();
  [v10 setText_];

  [*&v2[v9] setAccessibilityTraits_];
  v12 = *&v2[v9];
  v13 = sub_23719653C();
  [v12 setAccessibilityLabel_];

  v14 = &v2[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName];
  *v14 = v3;
  v14[1] = v5;

  v15 = &v2[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName];
  *v15 = v6;
  v15[1] = v8;

  v16 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU;
  v17 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
  result = swift_beginAccess();
  v19 = 0;
  inRunLoopMode = *MEMORY[0x277CBE738];
  do
  {
    v23 = *&v1[v16];
    if (v23)
    {
      v24 = *(&unk_284A39A38 + v19 + 32);
      v25 = *&v1[v17];
      if (!v25)
      {
        v26 = CFRunLoopGetCurrent();
        swift_beginAccess();
        v27 = AUEventListenerCreate(sub_237176350, v1, v26, inRunLoopMode, 0.05, 0.05, &v1[v17]);
        swift_endAccess();

        if (v27 != sub_2371964DC())
        {
          *&inEvent.mEventType = 0;
          inEvent.mArgument.mParameter.mAudioUnit = 0xE000000000000000;
          sub_23719693C();

          *&inEvent.mEventType = 0xD00000000000002BLL;
          inEvent.mArgument.mParameter.mAudioUnit = 0x800000023719EAE0;
          v20 = sub_237196A5C();
          MEMORY[0x2383C5F20](v20);

          v21 = *&inEvent.mEventType;
          mAudioUnit = inEvent.mArgument.mParameter.mAudioUnit;
LABEL_3:
          sub_237176A9C(v21, mAudioUnit, v27);

          goto LABEL_4;
        }

        v25 = *&v1[v17];
      }

      inEvent.mEventType = kAudioUnitEvent_ParameterValueChange;
      inEvent.mArgument.mParameter.mAudioUnit = v23;
      *&inEvent.mArgument.mProperty.mPropertyID = v24;
      if (!v25)
      {
        __break(1u);
      }

      sub_2371964DC();
      inEvent.mEventType = kAudioUnitEvent_BeginParameterChangeGesture;
      v27 = AUEventListenerAddEventType(v25, v1, &inEvent);
      if (v27 == sub_2371964DC())
      {
        inEvent.mEventType = kAudioUnitEvent_EndParameterChangeGesture;
        v27 = AUEventListenerAddEventType(v25, v1, &inEvent);
      }

      if (v27 == sub_2371964DC())
      {
        inEvent.mEventType = kAudioUnitEvent_ParameterValueChange;
        v27 = AUEventListenerAddEventType(v25, v1, &inEvent);
      }

      result = sub_2371964DC();
      if (v27 != result)
      {
        sub_23719693C();
        MEMORY[0x2383C5F20](0xD00000000000002DLL, 0x800000023719EB10);
        type metadata accessor for AudioUnitParameter(0);
        sub_2371969CC();
        v21 = 0;
        mAudioUnit = 0xE000000000000000;
        goto LABEL_3;
      }
    }

LABEL_4:
    v19 += 4;
  }

  while (v19 != 12);
  return result;
}

void sub_23715F974()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_numChannels;
  v3 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_numChannels);
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    return;
  }

  if (v3 >= 0x10)
  {
    LODWORD(v4) = 16;
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_numChannels);
  }

  if (v3)
  {
    v5 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_compressionAmountParam;
    v6 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_minCompressionValue;
    v7 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_maxCompressionValue;
    v8 = 0.0;
    while (v4)
    {
      v10 = *(v1 + v5);
      if (v10)
      {
        [v10 value];
      }

      else
      {
        v9 = 0.0;
      }

      v8 = v8 + ((v9 - *(v1 + v6)) / (*(v1 + v7) - *(v1 + v6)));
      LODWORD(v4) = v4 - 1;
      if (!v4)
      {
        v11 = v8 / *(v1 + v2);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v11 = NAN;
LABEL_14:
  v12 = sub_23715BE48();
  v13 = *&v12[OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_meter];

  v14 = *&v13[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_level];
  *&v13[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_level] = v11 * 20.0;
  sub_23714F85C(v14);

  v15 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_loopIndex;
  v16 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_loopIndex);
  if (v16 > 2)
  {
    v18 = sub_23715BE14();
    v19 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_maxPeak;
    sub_237186AA0(*(v1 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_maxPeak));

    *(v1 + v19) = 0;
    *(v1 + v15) = 0;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_loopIndex) = v16 + 1;
    v17 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_maxPeak);
    if (v11 >= v17)
    {
      v17 = v11;
    }

    *(v1 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_maxPeak) = v17;
  }
}

void sub_23715FB0C()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for AUPeakLimiterViewController();
  objc_msgSendSuper2(&v9, sel_viewWillLayoutSubviews);
  v1 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_viewContainer;
  [*&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_viewContainer] frame];
  v10.width = v2;
  v10.height = v3;
  v4 = &v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_previousSize];
  if (!CGSizeEqualToSize(v10, *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_previousSize]))
  {
    [*&v0[v1] frame];
    *v4 = v5;
    *(v4 + 1) = v6;
    [*&v0[v1] frame];
    Width = CGRectGetWidth(v11);
    v8 = v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_displayMode];
    if (Width <= 600.0)
    {
      if (v8 == 2)
      {
        return;
      }

      v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_displayMode] = 2;
    }

    else
    {
      if (v8 == 3)
      {
        return;
      }

      v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_displayMode] = 3;
    }

    sub_23715DD88();
  }
}

uint64_t sub_23715FC64(uint64_t result, AudioUnitParameterValue a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *&v2[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
  if (v3)
  {
    v5 = result;
    inParameter.mAudioUnit = *&v2[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
    inParameter.mScope = 0;
    inParameter.mElement = 0;
    inParameter.mParameterID = result;
    v6 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
    swift_beginAccess();
    LODWORD(v6) = AUParameterSet(*&v2[v6], v2, &inParameter, a2, 0);
    result = sub_2371964DC();
    if (v6 == result)
    {
      v7 = sub_23715BD9C();
      sub_237135E04(v5, a2 * 1000.0);

      outValue = 0.0;
      result = AudioUnitGetParameter(v3, v5, 0, 0, &outValue);
      if (outValue != a2)
      {
        v8 = result;
        sub_23719693C();
        MEMORY[0x2383C5F20](0xD000000000000019, 0x800000023719FA10);
        v9 = sub_237196A5C();
        MEMORY[0x2383C5F20](v9);

        MEMORY[0x2383C5F20](8237, 0xE200000000000000);
        sub_2371966AC();
        MEMORY[0x2383C5F20](0xD000000000000023, 0x800000023719FA30);
        sub_2371966AC();
        sub_237176A9C(0, 0xE000000000000000, v8);
      }
    }
  }

  return result;
}

void sub_23715FE78(int a1, int a2, int a3, AudioUnitParameterID inID)
{
  v5 = v4;
  v18 = *MEMORY[0x277D85DE8];
  if (a2 == 3)
  {
    if (inID == 8)
    {
      v17 = 0;
      outData = 0u;
      v16 = 0u;
      ioDataSize = 40;
      v10 = *(v4 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU);
      if (v10 && (Property = AudioUnitGetProperty(v10, 8u, 2u, 0, &outData, &ioDataSize), Property == sub_2371964DC()))
      {
        v12 = HIDWORD(v16);
      }

      else
      {
        v12 = 0;
      }

      *(v5 + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_numChannels) = v12;
    }
  }

  else
  {
    if (a2)
    {
      return;
    }

    v7 = sub_2371305C0(inID);
    v8 = sub_23715BD9C();
    sub_237135E04(inID, v7);

    if (inID == 2)
    {
      v9 = sub_23715BEE4();
      *&v9[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value] = v7;
    }

    else
    {
      if (inID == 1)
      {
        v9 = sub_23715BEB0();
      }

      else
      {
        if (inID)
        {
          return;
        }

        v9 = sub_23715BE7C();
      }

      *&v9[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value] = v7 * 1000.0;
    }

    v13 = v9;
    sub_23713F9D4();
  }
}

id sub_237160038()
{
  *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___headerView] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___graphView] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___controlsView] = 0;
  v1 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_viewContainer;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___attackKnob] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___releaseKnob] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___gainKnob] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___wholeNumberFormatter] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_v3AU] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_compressionAmountParam] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_minCompressionValue] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_maxCompressionValue] = 1101004800;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_temporaryConstraints] = MEMORY[0x277D84F90];
  v2 = &v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_previousSize];
  *v2 = 0;
  v2[1] = 0;
  v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_displayMode] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_attackSpacer] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_gainSpacer] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_loopIndex] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_maxPeak] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AUPeakLimiterViewController();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2371601A8(void *a1)
{
  *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___headerView] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___graphView] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___controlsView] = 0;
  v3 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_viewContainer;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___attackKnob] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___releaseKnob] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___gainKnob] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___wholeNumberFormatter] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_v3AU] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_compressionAmountParam] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_minCompressionValue] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_maxCompressionValue] = 1101004800;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_temporaryConstraints] = MEMORY[0x277D84F90];
  v4 = &v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_previousSize];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_displayMode] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_attackSpacer] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_gainSpacer] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_loopIndex] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_maxPeak] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AUPeakLimiterViewController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void sub_237160344()
{

  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_gainSpacer);
}

id sub_237160434()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUPeakLimiterViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23716059C()
{
  result = qword_27DE95290;
  if (!qword_27DE95290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE95290);
  }

  return result;
}

void sub_2371605F0()
{
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_needsRealtimeDrawing) = 1;
  sub_237195E64();
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = sub_23719653C();
  v4 = sub_23715BE7C();
  [v2 addObserver:v0 selector:sel_knobValueChangedWithNotification_ name:v3 object:v4];

  v5 = [v1 defaultCenter];
  v6 = sub_23719653C();
  v7 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___attackKnob;
  [v5 addObserver:v0 selector:sel_knobTouchedWithNotification_ name:v6 object:*(v0 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___attackKnob)];

  v8 = [v1 defaultCenter];
  v9 = sub_23719653C();
  [v8 addObserver:v0 selector:sel_knobReleasedWithNotification_ name:v9 object:*(v0 + v7)];

  v10 = [v1 defaultCenter];
  v11 = sub_23719653C();
  v12 = sub_23715BEB0();
  [v10 addObserver:v0 selector:sel_knobValueChangedWithNotification_ name:v11 object:v12];

  v13 = [v1 defaultCenter];
  v14 = sub_23719653C();
  v15 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___releaseKnob;
  [v13 addObserver:v0 selector:sel_knobTouchedWithNotification_ name:v14 object:*(v0 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___releaseKnob)];

  v16 = [v1 defaultCenter];
  v17 = sub_23719653C();
  [v16 &selRef_getHostCallbackInfo];

  v18 = [v1 defaultCenter];
  v19 = sub_23719653C();
  v20 = sub_23715BEE4();
  [v18 &selRef_getHostCallbackInfo];

  v21 = [v1 defaultCenter];
  v22 = sub_23719653C();
  v23 = OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController____lazy_storage___gainKnob;
  [v21 &selRef_getHostCallbackInfo];

  v24 = [v1 &selRef_parameterWithID_scope_element_ + 5];
  v25 = sub_23719653C();
  [v24 &selRef_getHostCallbackInfo];
}

uint64_t sub_2371609EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_237160A54()
{
  result = qword_27DE95298;
  if (!qword_27DE95298)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE95298);
  }

  return result;
}

id sub_237160B3C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_237160B70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUAppleCustomViewLoader();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_237160BE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUAppleCustomViewLoader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_237160C18(int a1, int a2, uint64_t a3, void *a4)
{
  if (a2 != 1634758764)
  {
    return 0;
  }

  v7 = 0;
  if (a1 <= 1752393829)
  {
    if (a1 <= 1684368504)
    {
      if (a1 == 1651532147)
      {
        v8 = type metadata accessor for AUBandpassViewController();
      }

      else
      {
        if (a1 != 1684237680)
        {
          return v7;
        }

        v8 = type metadata accessor for AUDynamicsProcessorViewController();
      }
    }

    else
    {
      switch(a1)
      {
        case 1684368505:
          v8 = type metadata accessor for AUDelayViewController();
          break;
        case 1684632436:
          v8 = type metadata accessor for AUDistortionViewController();
          break;
        case 1752195443:
          v8 = type metadata accessor for AUHighpassViewController();
          break;
        default:
          return v7;
      }
    }
  }

  else if (a1 > 1819502693)
  {
    switch(a1)
    {
      case 1819502694:
        v8 = type metadata accessor for AULowshelfViewController();
        break;
      case 1851942257:
        v8 = type metadata accessor for AUNBandViewController();
        break;
      case 1886217585:
        v8 = type metadata accessor for AUParametricEQViewController();
        break;
      default:
        return v7;
    }
  }

  else
  {
    switch(a1)
    {
      case 1752393830:
        v8 = type metadata accessor for AUHighshelfViewController();
        break;
      case 1819112562:
        v8 = type metadata accessor for AUPeakLimiterViewController();
        break;
      case 1819304307:
        v8 = type metadata accessor for AULowpassViewController();
        break;
      default:
        return v7;
    }
  }

  v7 = [objc_allocWithZone(v8) init];
  (*((*MEMORY[0x277D85000] & *v7) + 0x138))(a3);
  if (a1 == 1819112562)
  {
    type metadata accessor for AUPeakLimiterViewController();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_v3AU);
      *(v13 + OBJC_IVAR____TtC12CoreAudioKit27AUPeakLimiterViewController_v3AU) = a4;
      v15 = v7;
      v16 = a4;

      sub_23715BFBC();
      goto LABEL_34;
    }
  }

  else if (a1 == 1684632436)
  {
    type metadata accessor for AUDistortionViewController();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_v3AU);
      *(v9 + OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_v3AU) = a4;
      v11 = v7;
      v12 = a4;

      sub_2371871AC();
LABEL_34:
    }
  }

  return v7;
}

void sub_237160F44()
{
  v1 = v0;
  v2 = sub_23712F040();
  v3 = sub_23719342C();

  v4 = *&v3[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis];
  v5 = OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView;
  v6 = *&v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView];
  v7 = sub_23719342C();

  v8 = *&v7[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min] = -1046478848;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed] = -1046478848;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max] = 1109393408;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed] = 1109393408;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount] = 5;
  type metadata accessor for AUAppleViewControllerBase();
  v9 = sub_237175EDC();
  v46 = v4;
  v10 = &v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel];
  *v10 = v9;
  v10[1] = v11;

  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min] = 1086324736;
  v12 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed;
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed] = 1086324736;
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max] = 1186988032;
  v13 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed;
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed] = 1186988032;
  *&v8[v12] = sub_2371307E8(0);
  *&v8[v13] = sub_237130920(0);
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase] = 0x40000000;
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount] = 11;
  v14 = sub_237175EDC();
  v15 = &v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel];
  *v15 = v14;
  v15[1] = v16;

  sub_23712EA30();
  v17 = *&v1[v5];
  v18 = sub_23719342C();

  v47[3] = type metadata accessor for AULowpassViewController();
  v47[4] = &off_284A3A7C0;
  v47[0] = v1;
  v19 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource;
  swift_beginAccess();
  v1;
  sub_23710FAE0(v47, v18 + v19);
  swift_endAccess();
  sub_23716A678();

  sub_23710FB50(v47);
  v20 = *&v1[v5];
  v21 = sub_23719342C();

  v45 = sub_23716832C(0, 1);
  v44 = v5;
  v22 = *&v1[v5];
  v23 = sub_237193370();

  v24 = sub_237175EDC();
  v26 = v25;
  v27 = sub_237175EDC();
  v29 = v28;
  v30 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel;
  v31 = *&v23[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel];
  v32 = sub_23719653C();
  [v31 setText_];

  [*&v23[v30] setAccessibilityTraits_];
  v33 = *&v23[v30];
  v34 = sub_23719653C();
  [v33 setAccessibilityLabel_];

  v35 = &v23[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName];
  *v35 = v24;
  v35[1] = v26;

  v36 = &v23[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName];
  *v36 = v27;
  v36[1] = v29;
  v37 = v45;

  sub_23712F904(0);
  sub_23712FD40(1);
  if (v45)
  {
    v38 = *&v45[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer];
    if (v38)
    {
      v39 = *&v1[v44];
      v40 = v38;
      v41 = v39;
      v42 = sub_23719342C();

      v43 = [v42 layer];
      [v43 addSublayer_];

      v37 = v43;
    }
  }
}

id sub_23716146C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AULowpassViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_OWORD *sub_2371614C4(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_23711BDA4(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_23718E3D4(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_237120D04(a1, &qword_27DE94D20);
    v7 = sub_2371906E0(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_2371925F4();
        v11 = v13;
      }

      sub_23711BDA4((*(v11 + 56) + 32 * v9), v14);
      sub_23718DAC4(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_237120D04(v14, &qword_27DE94D20);
  }

  return result;
}

uint64_t sub_2371615C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_23718E680(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_23719336C(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_237192AA0();
        v11 = v13;
      }

      result = sub_23718DDB0(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

id sub_237161688(void *a1)
{
  sub_237114D0C(a1, v10);
  type metadata accessor for CACompressionView();
  v3 = swift_dynamicCast();
  v4 = v9;
  if (!v3)
  {
    v4 = 0;
  }

  *&v1[OBJC_IVAR____TtCC12CoreAudioKit17CACompressionView27ControlAccessibilityElement_owner] = v4;
  *&v1[OBJC_IVAR____TtCC12CoreAudioKit17CACompressionView27ControlAccessibilityElement_param] = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = sub_237196A6C();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CACompressionView.ControlAccessibilityElement();
  v6 = objc_msgSendSuper2(&v8, sel_initWithAccessibilityContainer_, v5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

unint64_t sub_2371617A8(void *a1, int a2)
{
  *&v2[OBJC_IVAR____TtCC12CoreAudioKit17CACompressionView27ControlAccessibilityElement_owner] = a1;
  *&v2[OBJC_IVAR____TtCC12CoreAudioKit17CACompressionView27ControlAccessibilityElement_param] = 0;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for CACompressionView.ControlAccessibilityElement();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v30, sel_initWithAccessibilityContainer_, v5);
  v7 = OBJC_IVAR____TtCC12CoreAudioKit17CACompressionView27ControlAccessibilityElement_param;
  *&v6[OBJC_IVAR____TtCC12CoreAudioKit17CACompressionView27ControlAccessibilityElement_param] = a2;
  [v6 setAccessibilityTraits_];
  v8 = *&v6[OBJC_IVAR____TtCC12CoreAudioKit17CACompressionView27ControlAccessibilityElement_owner];
  if (!v8)
  {

    return v6;
  }

  v9 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource;
  swift_beginAccess();
  sub_237167B14(&v8[v9], &v25);
  if (!v26)
  {

    sub_237120D04(&v25, &qword_27DE951F0);
    return v6;
  }

  sub_237120C7C(&v25, v27);
  v10 = *&v6[v7];
  v11 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_paramCache;
  result = swift_beginAccess();
  v13 = *&v8[v11];
  if (*(v13 + 16))
  {
    result = sub_2371906E0(v10);
    if (v14)
    {
      sub_237114D0C(*(v13 + 56) + 32 * result, v24);
      sub_23711BDA4(v24, &v25);
      sub_237115094(0, &qword_27DE95590);
      v22 = v8;
      swift_dynamicCast();
      v16 = v28;
      v15 = v29;
      __swift_project_boxed_opaque_existential_0(v27, v28);
      v17 = *(v15 + 8);
      v18 = *(v17 + 16);
      v19 = v6;
      v18(v10, v16, v17);
      v20 = sub_23719653C();

      [v19 setAccessibilityLabel_];

      [v23 frame];
      [v19 setAccessibilityFrameInContainerSpace_];
      sub_237162158(*&v6[v7]);
      v21 = sub_23719653C();

      [v19 setAccessibilityValue_];

      __swift_destroy_boxed_opaque_existential_0(v27);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_237161A54()
{
  v1 = *&v0[OBJC_IVAR____TtCC12CoreAudioKit17CACompressionView27ControlAccessibilityElement_owner];
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource;
  swift_beginAccess();
  sub_237167B14(v1 + v3, &v36);
  if (!v37)
  {
    sub_237120D04(&v36, &qword_27DE951F0);
    return;
  }

  sub_237120C7C(&v36, v38);
  v4 = v39;
  v5 = v40;
  __swift_project_boxed_opaque_existential_0(v38, v39);
  v6 = OBJC_IVAR____TtCC12CoreAudioKit17CACompressionView27ControlAccessibilityElement_param;
  v7 = *&v2[OBJC_IVAR____TtCC12CoreAudioKit17CACompressionView27ControlAccessibilityElement_param];
  v8 = *(*(v5 + 8) + 8);
  v9 = *(v8 + 16);
  v10 = v1;
  v11 = v9(v7, v4, v8);
  v12 = v39;
  v13 = v40;
  __swift_project_boxed_opaque_existential_0(v38, v39);
  v14 = (*(*(*(v13 + 8) + 8) + 24))(*&v2[v6], v12);
  v15 = v39;
  v16 = v40;
  __swift_project_boxed_opaque_existential_0(v38, v39);
  v17 = ((v14 - v11) * 0.05) + (*(*(*(v16 + 8) + 8) + 8))(*&v2[v6], v15);
  if (v14 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v14;
  }

  v19 = *&v2[v6];
  v20 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_paramCache;
  swift_beginAccess();
  v21 = *&v10[v20];
  if (!*(v21 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = sub_2371906E0(v19);
  if ((v23 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_237114D0C(*(v21 + 56) + 32 * v22, v35);
  sub_23711BDA4(v35, &v36);
  sub_237115094(0, &qword_27DE95590);
  swift_dynamicCast();
  v24 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeControl;
  v25 = *&v10[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeControl];
  *&v10[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeControl] = v34;

  v26 = v39;
  v27 = v40;
  __swift_project_boxed_opaque_existential_0(v38, v39);
  (*(*(*(v27 + 8) + 8) + 40))(*&v2[v6], v26, v18);
  sub_237165724(*&v2[v6], v18);
  sub_237162158(*&v2[v6]);
  v28 = sub_23719653C();

  [v2 setAccessibilityValue_];

  v29 = *&v10[v24];
  if (v29)
  {
    [v29 frame];
  }

  else
  {
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
  }

  [v2 setAccessibilityFrameInContainerSpace_];

  __swift_destroy_boxed_opaque_existential_0(v38);
}

void sub_237161DAC()
{
  v1 = *&v0[OBJC_IVAR____TtCC12CoreAudioKit17CACompressionView27ControlAccessibilityElement_owner];
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource;
  swift_beginAccess();
  sub_237167B14(v1 + v3, &v35);
  if (!v36)
  {
    sub_237120D04(&v35, &qword_27DE951F0);
    return;
  }

  sub_237120C7C(&v35, v37);
  v4 = v38;
  v5 = v39;
  __swift_project_boxed_opaque_existential_0(v37, v38);
  v6 = OBJC_IVAR____TtCC12CoreAudioKit17CACompressionView27ControlAccessibilityElement_param;
  v7 = *&v2[OBJC_IVAR____TtCC12CoreAudioKit17CACompressionView27ControlAccessibilityElement_param];
  v8 = *(*(v5 + 8) + 8);
  v9 = *(v8 + 16);
  v10 = v1;
  v11 = v9(v7, v4, v8);
  v12 = v38;
  v13 = v39;
  __swift_project_boxed_opaque_existential_0(v37, v38);
  v14 = ((*(*(*(v13 + 8) + 8) + 24))(*&v2[v6], v12) - v11) * -0.05;
  v15 = v38;
  v16 = v39;
  __swift_project_boxed_opaque_existential_0(v37, v38);
  v17 = (*(*(*(v16 + 8) + 8) + 8))(*&v2[v6], v15) + v14;
  if (v17 >= v11)
  {
    v11 = v17;
  }

  v18 = *&v2[v6];
  v19 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_paramCache;
  swift_beginAccess();
  v20 = *&v10[v19];
  if (!*(v20 + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = sub_2371906E0(v18);
  if ((v22 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_237114D0C(*(v20 + 56) + 32 * v21, v34);
  sub_23711BDA4(v34, &v35);
  sub_237115094(0, &qword_27DE95590);
  swift_dynamicCast();
  v23 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeControl;
  v24 = *&v10[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeControl];
  *&v10[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeControl] = v33;

  v25 = v38;
  v26 = v39;
  __swift_project_boxed_opaque_existential_0(v37, v38);
  (*(*(*(v26 + 8) + 8) + 40))(*&v2[v6], v25, v11);
  sub_237165724(*&v2[v6], v11);
  sub_237162158(*&v2[v6]);
  v27 = sub_23719653C();

  [v2 setAccessibilityValue_];

  v28 = *&v10[v23];
  if (v28)
  {
    [v28 frame];
  }

  else
  {
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
  }

  [v2 setAccessibilityFrameInContainerSpace_];

  __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_237162158(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource;
  swift_beginAccess();
  sub_237167B14(v2 + v4, v18);
  if (v19)
  {
    sub_237120C18(v18, v15);
    sub_237120D04(v18, &qword_27DE951F0);
    v5 = v16;
    v6 = v17;
    __swift_project_boxed_opaque_existential_0(v15, v16);
    v7 = (*(*(*(v6 + 8) + 8) + 8))(a1, v5);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v8 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_accessibilityFormatter);
    v9 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v10 = v7;
    v11 = [v9 initWithFloat_];
    v12 = [v8 stringFromNumber_];

    if (v12)
    {
      v13 = sub_23719657C();

      return v13;
    }
  }

  else
  {
    sub_237120D04(v18, &qword_27DE951F0);
  }

  return 0;
}

char *sub_237162334()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_accessibileElements;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2371969FC())
  {
    v5 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_controlList;
    swift_beginAccess();
    v6 = *&v1[v5];
    v7 = *(v6 + 16);
    if (i == v7)
    {
      break;
    }

    if (!v7)
    {
LABEL_12:

      break;
    }

    v8 = 0;
    while (v8 < *(v6 + 16))
    {
      v9 = *(v6 + 32 + 8 * v8);
      if (!*(v9 + 16))
      {
        goto LABEL_15;
      }

      v10 = sub_2371905D4(0x6D61726170, 0xE500000000000000);
      if ((v11 & 1) == 0)
      {
        goto LABEL_16;
      }

      sub_237114D0C(*(v9 + 56) + 32 * v10, v19);

      sub_23711BDA4(v19, &v20);
      swift_dynamicCast();
      v12 = objc_allocWithZone(type metadata accessor for CACompressionView.ControlAccessibilityElement());
      v13 = sub_2371617A8(v1, v18);
      swift_beginAccess();
      v14 = v13;
      MEMORY[0x2383C5F60]();
      if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23719664C();
      }

      ++v8;
      sub_23719665C();
      swift_endAccess();

      if (v7 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v16 = sub_237167BBC(v15);

  return v16;
}

void sub_23716256C()
{
  v1 = v0;
  v2 = sub_23719639C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371813FC();
  v7 = &v0[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_margins];
  *(v7 + 3) = 0x403E000000000000;
  *v7 = xmmword_23719BEC0;
  v8 = *&v0[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer];
  v9 = [v0 layer];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v36.origin.x = v11;
  v36.origin.y = v13;
  v36.size.width = v15;
  v36.size.height = v17;
  v18 = CGRectGetWidth(v36) - *(v7 + 1) - *(v7 + 3);
  v19 = [v1 layer];
  [v19 frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v37.origin.x = v21;
  v37.origin.y = v23;
  v37.size.width = v25;
  v37.size.height = v27;
  [v8 setBounds_];
  [v8 setPosition_];
  [v1 setIsAccessibilityElement_];
  v28 = *&v1[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_diagonalLayer];
  v29 = sub_23719653C();
  [v28 setName_];

  v30 = [objc_opt_self() labelColor];
  v31 = [v30 CGColor];

  [v28 setStrokeColor_];
  [v28 setLineWidth_];
  [v8 bounds];
  [v28 setBounds_];
  [v8 contentsScale];
  [v28 setContentsScale_];
  Mutable = CGPathCreateMutable();
  [v8 frame];
  CGRectGetHeight(v38);
  v35[0] = 0x3FF0000000000000;
  v35[1] = 0;
  v35[2] = 0;
  v35[3] = 0x3FF0000000000000;
  v35[4] = 0;
  v35[5] = 0;
  sub_23719672C();
  [v8 frame];
  CGRectGetWidth(v39);
  sub_23719674C();
  [v28 setPath_];
  [v8 addSublayer_];
  v33 = *&v1[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_accessibilityFormatter];
  [v33 setMinimumFractionDigits_];
  [v33 setMaximumFractionDigits_];
  [v33 setGeneratesDecimalNumbers_];
  sub_23719638C();
  v34 = sub_23719635C();
  (*(v3 + 8))(v6, v2);
  [v33 setLocale_];
}

uint64_t sub_23716297C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_controlList;
  v22 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource;
  swift_beginAccess();
  for (i = 0; i != 16; i += 4)
  {
    v5 = *(&unk_284A39998 + i + 32);
    sub_237167B14(&v1[v22], &v23);
    if (v24)
    {
      sub_237120C7C(&v23, v25);
      __swift_project_boxed_opaque_existential_0(v25, v26);
      v6 = sub_23715AB34(v5);
      v7 = sub_23711E094(v6);

      v9 = v26;
      v8 = v27;
      __swift_project_boxed_opaque_existential_0(v25, v26);
      (*(*(v8 + 8) + 16))(v5, v9);
      v10 = sub_23719653C();

      [v7 setName_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94D18);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23719BED0;
      *(inited + 32) = 0x6C6F72746E6F63;
      *(inited + 40) = 0xE700000000000000;
      v12 = sub_237115094(0, &qword_27DE95590);
      *(inited + 48) = v7;
      *(inited + 72) = v12;
      *(inited + 80) = 0x6D61726170;
      *(inited + 88) = 0xE500000000000000;
      *(inited + 96) = v5;
      *(inited + 120) = MEMORY[0x277D84CC0];
      *(inited + 128) = 0x726F6C6F63;
      *(inited + 136) = 0xE500000000000000;
      __swift_project_boxed_opaque_existential_0(v25, v26);
      v13 = v7;
      v14 = sub_23715AB34(v5);
      *(inited + 168) = sub_237115094(0, &qword_27DE94788);
      *(inited + 144) = v14;
      v15 = sub_237119CF4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948A0);
      swift_arrayDestroy();
      swift_beginAccess();
      v16 = *&v1[v2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v1[v2] = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_23718995C(0, v16[2] + 1, 1, v16);
        *&v1[v2] = v16;
      }

      v19 = v16[2];
      v18 = v16[3];
      if (v19 >= v18 >> 1)
      {
        v16 = sub_23718995C((v18 > 1), v19 + 1, 1, v16);
      }

      v16[2] = v19 + 1;
      v16[v19 + 4] = v15;
      *&v1[v2] = v16;
      swift_endAccess();
      v24 = v12;
      *&v23 = v13;
      swift_beginAccess();
      v20 = v13;
      sub_2371614C4(&v23, v5);
      swift_endAccess();
      v21 = [v1 layer];
      [v21 addSublayer_];

      result = __swift_destroy_boxed_opaque_existential_0(v25);
    }

    else
    {
      result = sub_237120D04(&v23, &qword_27DE951F0);
    }
  }

  return result;
}

void sub_237162D18()
{
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_curveFill);
  v2 = objc_opt_self();
  v3 = [v2 tintColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = [v4 CGColor];
  [v1 setFillColor_];

  v6 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
  [v6 frame];
  [v1 setFrame_];
  [v6 contentsScale];
  [v1 setContentsScale_];
  v7 = [v2 clearColor];
  v8 = [v7 &selRef_setEditing_animated_];

  [v1 setStrokeColor_];
  v9 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_expansionFill);
  v10 = [v2 systemRedColor];
  v11 = [v10 &selRef:0.6 constraintLessThanOrEqualToAnchor:?];

  v12 = [v11 &selRef_setEditing_animated_];
  [v9 setFillColor_];

  [v6 frame];
  [v9 setFrame_];
  [v6 contentsScale];
  [v9 setContentsScale_];
  v13 = [v2 clearColor];
  v14 = [v13 &selRef_setEditing_animated_];

  [v9 setStrokeColor_];
  [v9 setMasksToBounds_];
  v15 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_compressionFill);
  v16 = [v2 systemRedColor];
  v17 = [v16 colorWithAlphaComponent_];

  v18 = [v17 &selRef_setEditing_animated_];
  [v15 setFillColor_];

  [v6 frame];
  [v15 setFrame_];
  [v6 contentsScale];
  [v15 setContentsScale_];
  v19 = [v2 clearColor];
  v20 = [v19 &selRef_setEditing_animated_];

  [v15 setStrokeColor_];
  v21 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_compressionLine);
  [v6 frame];
  [v21 setFrame_];
  [v6 contentsScale];
  [v21 setContentsScale_];
  v22 = [v2 secondaryLabelColor];
  v23 = [v22 CGColor];

  [v21 setStrokeColor_];
  [v21 setLineWidth_];
  v24 = [v2 clearColor];
  v25 = [v24 CGColor];

  [v21 setFillColor_];
  [v6 &selRef_stopAdvertisingMIDIService];
  [v21 setContentsScale_];
  v26 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_compressionTriangle);
  v27 = [v2 clearColor];
  v28 = [v27 CGColor];

  [v26 setStrokeColor_];
  v29 = [v2 systemRedColor];
  v30 = [v29 CGColor];

  [v26 setFillColor_];
  [v6 contentsScale];
  [v26 setContentsScale_];
  path = CGPathCreateMutable();
  sub_23719672C();
  sub_23719674C();
  sub_23719674C();
  CGPathCloseSubpath(path);
  [v26 setPath_];
  [v6 addSublayer_];
  [v6 addSublayer_];
  [v6 addSublayer_];
  [v6 addSublayer_];
  [v6 addSublayer_];
}

unint64_t sub_237163370()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_controlList;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (!v3)
  {
    goto LABEL_14;
  }

  v5 = 0;
  while (1)
  {
    if (v5 >= *(v2 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    v6 = *(v2 + 8 * v5 + 32);
    result = sub_237115094(0, &qword_27DE95318);
    if (!*(v6 + 16))
    {
      goto LABEL_17;
    }

    result = sub_2371905D4(0x6C6F72746E6F63, 0xE700000000000000);
    if ((v7 & 1) == 0)
    {
      goto LABEL_18;
    }

    sub_237114D0C(*(v6 + 56) + 32 * result, v15);
    sub_23711BDA4(v15, v16);
    sub_237115094(0, &qword_27DE95590);
    swift_dynamicCast();
    v8 = sub_2371967DC();

    if (v8)
    {
      break;
    }

    ++v5;

    if (v3 == v5)
    {
      goto LABEL_14;
    }
  }

  if (*(v6 + 16) && (v9 = sub_2371905D4(0x6D61726170, 0xE500000000000000), (v10 & 1) != 0))
  {
    sub_237114D0C(*(v6 + 56) + 32 * v9, v16);

    v11 = swift_dynamicCast();
    v12 = LODWORD(v15[0]);
    v13 = v11 ^ 1;
    if (!v11)
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_14:

    v12 = 0;
    v13 = 1;
  }

  LOBYTE(v16[0]) = v13;
  return v12 | (v13 << 32);
}

double sub_237163588(int a1, float a2)
{
  if (a1 != 2)
  {
    if (a1 == 1)
    {
      v4 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource;
      swift_beginAccess();
      sub_237167B14(v2 + v4, v36);
      if (v37)
      {
        sub_237120C18(v36, v33);
        sub_237120D04(v36, &qword_27DE951F0);
        v5 = v34;
        v6 = v35;
        __swift_project_boxed_opaque_existential_0(v33, v34);
        v7 = (*(*(*(v6 + 8) + 8) + 8))(0, v5);
        __swift_destroy_boxed_opaque_existential_0(v33);
        v8 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis;
        if (*(*(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max) >= (v7 + a2))
        {
          a2 = v7 + a2;
        }

        else
        {
          a2 = *(*(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max);
        }

        v9 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
        v10 = *&v9[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max];
        v11 = v9;
        sub_237183E14(v11, v10);
        v13 = v12;

        v14 = *(v2 + v8);
        goto LABEL_15;
      }

      sub_237120D04(v36, &qword_27DE951F0);
      v26 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
      v27 = *&v26[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max];
      v23 = v26;
      v24 = v23;
      v25 = v27;
    }

    else
    {
      v23 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
      v24 = v23;
      v25 = a2;
    }

    sub_237183E14(v23, v25);
    v13 = v28;

    v14 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis);
    goto LABEL_15;
  }

  v15 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource;
  swift_beginAccess();
  sub_237167B14(v2 + v15, v36);
  if (v37)
  {
    sub_237120C18(v36, v33);
    sub_237120D04(v36, &qword_27DE951F0);
    v16 = v34;
    v17 = v35;
    __swift_project_boxed_opaque_existential_0(v33, v34);
    v18 = (*(*(*(v17 + 8) + 8) + 8))(3, v16);
    __swift_destroy_boxed_opaque_existential_0(v33);
    v19 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis;
    v20 = v18 + ((*(*(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min) - v18) / a2);
    v21 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
    sub_237183E14(v21, v20);
    v13 = v22;

    v14 = *(v2 + v19);
  }

  else
  {
    sub_237120D04(v36, &qword_27DE951F0);
    v29 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
    sub_237183E14(v29, a2);
    v13 = v30;

    v14 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis);
  }

  a2 = *&v14[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min];
LABEL_15:
  v31 = v14;
  sub_237183E14(v31, a2);

  return v13;
}

void sub_2371638E4()
{
  v1 = v0;
  v2 = objc_opt_self();
  [v2 begin];
  [v2 setDisableActions_];
  v3 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_expansionFill);
  v4 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
  [v4 frame];
  [v3 setFrame_];
  v5 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_compressionFill);
  [v4 frame];
  [v5 setFrame_];
  Mutable = CGPathCreateMutable();
  v7 = CGPathCreateMutable();
  v8 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource;
  swift_beginAccess();
  sub_237167B14(v1 + v8, &v75);
  if (!v77)
  {
    sub_237120D04(&v75, &qword_27DE951F0);
LABEL_21:
    [v3 setPath_];
    [v5 setPath_];
    [v2 commit];

    return;
  }

  v63 = v5;
  v64 = v2;
  sub_237120C7C(&v75, v66);
  v65 = v3;
  v10 = v67;
  v9 = v68;
  __swift_project_boxed_opaque_existential_0(v66, v67);
  v11 = (*(*(*(v9 + 8) + 8) + 8))(2000, v10);
  v13 = v67;
  v12 = v68;
  __swift_project_boxed_opaque_existential_0(v66, v67);
  v14 = (*(*(*(v12 + 8) + 8) + 8))(3000, v13);
  v15 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  v16 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
  v62 = v11;
  sub_237183E14(v16, v11);
  v18 = v17;

  v19 = v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_margins;
  v20 = v18 - *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_margins + 8);
  v21 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis;
  v22 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis);
  sub_237183E14(v22, v14);

  v24 = v67;
  v23 = v68;
  __swift_project_boxed_opaque_existential_0(v66, v67);
  v25 = (*(*(*(v23 + 8) + 8) + 8))(3, v24);
  v26 = *(v1 + v15);
  sub_237183E14(v26, v25);
  v28 = v27;

  v29 = *(v1 + v21);
  sub_237183E14(v29, v25);

  v30 = v28 - *(v19 + 8);
  v32 = v67;
  v31 = v68;
  __swift_project_boxed_opaque_existential_0(v66, v67);
  v33 = (*(*(*(v31 + 8) + 8) + 8))(2, v32);
  v34 = sub_237163588(2, v33) - *(v19 + 8);
  v36 = v67;
  v35 = v68;
  __swift_project_boxed_opaque_existential_0(v66, v67);
  v37 = v36;
  v3 = v65;
  v38 = (*(*(*(v35 + 8) + 8) + 8))(0, v37);
  [v4 frame];
  MinX = CGRectGetMinX(v80);
  [v4 frame];
  MinY = CGRectGetMinY(v81);
  [v4 frame];
  [v65 setFrame_];
  [v4 frame];
  CGRectGetHeight(v83);
  if (v34 > 0.0 && v34 < v20)
  {
    v75 = 0x3FF0000000000000uLL;
    v76 = 0;
    v77 = 0x3FF0000000000000;
    v78 = 0;
    v79 = 0;
    sub_23719672C();
    sub_23719674C();
    sub_23719674C();
    CGPathCloseSubpath(Mutable);
  }

  if (v30 > v20 || (v41 = *(v1 + v15), sub_237183E14(v41, v38), v43 = v42, v41, v44 = v43 - *(v19 + 8), v45 = *(v1 + v21), sub_237183E14(v45, v38), v45, v3 = v65, v44 >= v20))
  {
LABEL_20:
    __swift_destroy_boxed_opaque_existential_0(v66);
    v5 = v63;
    v2 = v64;
    goto LABEL_21;
  }

  v69 = 0x3FF0000000000000;
  v70 = 0;
  v71 = 0;
  v72 = 0x3FF0000000000000;
  v73 = 0;
  v74 = 0;
  sub_23719672C();
  [v4 frame];
  v46 = (CGRectGetWidth(v84) - v44) / 10.0;
  if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v46 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v46 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v47 = v46;
  v48 = v67;
  v49 = v68;
  __swift_project_boxed_opaque_existential_0(v66, v67);
  (*(*(*(v49 + 8) + 8) + 8))(1, v48);
  v51 = v47 == 1;
  v52 = v47 < 1;
  v53 = v47 - 1;
  if (!v52)
  {
    v3 = v65;
    if (!v51)
    {
      v54 = 1.57079633 / v50;
      while (1)
      {
        v44 = v44 + 10.0;
        if (v20 < v44)
        {
          break;
        }

        v56 = v44 + *(v19 + 8);
        v57 = *(v1 + v15);
        sub_237183B90(v57, v56);
        v59 = v58;

        if (v38 < v59)
        {
          v60 = atan(v54 * (v59 - v38)) / v54;
          v59 = v38 + v60;
        }

        v55 = *(v1 + v21);
        sub_237183E14(v55, v59);

        sub_23719674C();
        if (!--v53)
        {
          goto LABEL_19;
        }
      }

      sub_23719674C();
    }

LABEL_19:
    v61 = *(v1 + v21);
    sub_237183E14(v61, v62);

    sub_23719674C();
    CGPathCloseSubpath(v7);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
}

id sub_237163FAC()
{
  v1 = v0;
  v2 = objc_opt_self();
  [v2 begin];
  [v2 setDisableActions_];
  v3 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource;
  swift_beginAccess();
  sub_237167B14(v1 + v3, &v75);
  if (*&v75.d)
  {
    sub_237120C7C(&v75, v76);
    v4 = v77;
    v5 = v78;
    __swift_project_boxed_opaque_existential_0(v76, v77);
    v6 = (*(*(*(v5 + 8) + 8) + 8))(0, v4);
    v7 = v77;
    v8 = v78;
    __swift_project_boxed_opaque_existential_0(v76, v77);
    v9 = 1;
    v10 = (*(*(*(v8 + 8) + 8) + 8))(1, v7);
    v11 = v77;
    v12 = v78;
    __swift_project_boxed_opaque_existential_0(v76, v77);
    v13 = (*(*(*(v12 + 8) + 8) + 8))(3, v11);
    v14 = v77;
    v15 = v78;
    __swift_project_boxed_opaque_existential_0(v76, v77);
    v16 = (*(*(*(v15 + 8) + 8) + 8))(2000, v14);
    v17 = v77;
    v18 = v78;
    __swift_project_boxed_opaque_existential_0(v76, v77);
    v19 = (*(*(*(v18 + 8) + 8) + 8))(3000, v17);
    v20 = v77;
    v21 = v78;
    __swift_project_boxed_opaque_existential_0(v76, v77);
    v22 = (*(*(*(v21 + 8) + 8) + 8))(2, v20);
    v23 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
    v24 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
    sub_237183E14(v24, v16);
    v26 = v25;

    v27 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis;
    v28 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis);
    sub_237183E14(v28, v19);
    v30 = v29;

    v31 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_compressionTriangle);
    v32 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
    [v32 frame];
    if (v26 >= CGRectGetMinX(v79))
    {
      [v32 frame];
      v9 = v30 < CGRectGetMinY(v80);
    }

    [v31 setHidden_];
    [v31 setPosition_];
    v33 = *(v1 + v23);
    sub_237183E14(v33, v13);
    v35 = v34;

    v36 = (v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_margins);
    v37 = v35 - *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_margins + 8);
    v38 = *(v1 + v27);
    sub_237183E14(v38, v13);
    v40 = v39;

    if (v37 >= v26)
    {
      v67 = v40 - *v36;
      v68 = v13 + ((*(*(v1 + v27) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min) - v13) / v22);
      v69 = *(v1 + v23);
      sub_237183E14(v69, v68);
      v71 = v70;

      v72 = v71 - v36[1];
      [v32 frame];
      v65 = v67 - CGRectGetHeight(v87);
      v66 = v37 - v72;
    }

    else
    {
      v41 = *(v1 + v23);
      sub_237183E14(v41, v6);
      v43 = v42;

      v44 = v43 - v36[1];
      v45 = *(v1 + v27);
      sub_237183E14(v45, v6);

      if (v44 >= v26)
      {
        v73 = 5.49778714;
        goto LABEL_19;
      }

      MinX = v26 + -2.0;
      [v32 frame];
      if (v26 + -2.0 < CGRectGetMinX(v81))
      {
        [v32 frame];
        MinX = CGRectGetMinX(v82);
      }

      v47 = v26 + 2.0;
      [v32 frame];
      v48 = CGRectGetMinX(v83);
      [v32 frame];
      if (v48 + CGRectGetWidth(v84) < v47)
      {
        [v32 frame];
        v49 = CGRectGetMinX(v85);
        [v32 frame];
        v47 = v49 + CGRectGetWidth(v86);
      }

      v50 = *(v1 + v23);
      sub_237183B90(v50, MinX);
      v52 = v51;

      v53 = *(v1 + v23);
      sub_237183B90(v53, v47);
      v55 = v54;

      v56 = v10;
      if (v6 < v52)
      {
        v57 = atan(1.57079633 / v56 * (v52 - v6)) / (1.57079633 / v56);
        v52 = v6 + v57;
      }

      if (v6 < v55)
      {
        v58 = atan(1.57079633 / v56 * (v55 - v6)) / (1.57079633 / v56);
        v55 = v6 + v58;
      }

      v59 = *(v1 + v27);
      sub_237183E14(v59, v52);
      v61 = v60;

      v62 = *(v1 + v27);
      sub_237183E14(v62, v55);
      v64 = v63;

      v65 = v64 - v61;
      v66 = v47 - MinX;
    }

    v73 = atan(v65 / v66);
LABEL_19:
    CGAffineTransformMakeRotation(&v75, v73);
    [v31 setAffineTransform_];
    __swift_destroy_boxed_opaque_existential_0(v76);
    return [v2 commit];
  }

  sub_237120D04(&v75, &qword_27DE951F0);
  return [v2 commit];
}

void sub_2371645B4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_curveFill);
  v3 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
  [v3 frame];
  [v2 setFrame_];
  v4 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_compressionLine);
  [v3 frame];
  [v4 setFrame_];
  Mutable = CGPathCreateMutable();
  v6 = CGPathCreateMutable();
  v7 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource;
  swift_beginAccess();
  sub_237167B14(v1 + v7, &v47);
  if (!v49)
  {
    sub_237120D04(&v47, &qword_27DE951F0);
LABEL_16:
    [v2 setPath_];
    [v4 setPath_];
    sub_2371638E4();

    return;
  }

  v43 = v4;
  sub_237120C7C(&v47, v44);
  v9 = v45;
  v8 = v46;
  __swift_project_boxed_opaque_existential_0(v44, v45);
  v10 = (*(*(*(v8 + 8) + 8) + 8))(3, v9);
  v12 = v45;
  v11 = v46;
  __swift_project_boxed_opaque_existential_0(v44, v45);
  v13 = (*(*(*(v11 + 8) + 8) + 8))(0, v12);
  v15 = v45;
  v14 = v46;
  __swift_project_boxed_opaque_existential_0(v44, v45);
  v16 = (*(*(*(v14 + 8) + 8) + 8))(1, v15);
  v18 = v45;
  v17 = v46;
  __swift_project_boxed_opaque_existential_0(v44, v45);
  v19 = (*(*(*(v17 + 8) + 8) + 8))(2, v18);
  v20 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis;
  v21 = v10 + ((*(*(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min) - v10) / v19);
  v22 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  v23 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
  sub_237183E14(v23, v21);

  v24 = v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_margins;
  [v3 frame];
  CGRectGetHeight(v52);
  v25 = *(v1 + v22);
  sub_237183E14(v25, v10);

  v26 = *(v1 + v20);
  sub_237183E14(v26, v10);

  v27 = *(v1 + v22);
  sub_237183E14(v27, v13);
  v29 = v28;

  v30 = v29 - *(v24 + 8);
  v31 = *(v1 + v20);
  sub_237183E14(v31, v13);

  v47 = 0x3FF0000000000000uLL;
  v48 = 0;
  v49 = 0x3FF0000000000000;
  v50 = 0;
  v51 = 0;
  sub_23719672C();
  sub_23719672C();
  sub_23719674C();
  sub_23719674C();
  sub_23719674C();
  sub_23719674C();
  [v3 frame];
  v32 = CGRectGetWidth(v53) / 10.0;
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v42 = v2;
  v33 = v32 - 1;
  if (v32 >= 1)
  {
    if (v32 != 1)
    {
      v34 = v30 + 10.0;
      [v3 frame];
      if (CGRectGetWidth(v54) < v34)
      {
LABEL_13:
        [v3 frame];
        CGRectGetWidth(v56);
        sub_23719674C();
        [v3 frame];
        CGRectGetWidth(v57);
        sub_23719674C();
      }

      else
      {
        v35 = 1.57079633 / v16;
        while (1)
        {
          v36 = v34 + *(v24 + 8);
          v37 = *(v1 + v22);
          sub_237183B90(v37, v36);
          v39 = v38;

          if (v13 < v39)
          {
            v40 = atan(v35 * (v39 - v13)) / v35;
            v39 = v13 + v40;
          }

          v41 = *(v1 + v20);
          sub_237183E14(v41, v39);

          sub_23719674C();
          sub_23719674C();
          if (!--v33)
          {
            break;
          }

          v34 = v34 + 10.0;
          [v3 frame];
          if (CGRectGetWidth(v55) < v34)
          {
            goto LABEL_13;
          }
        }
      }
    }

    [v3 frame];
    CGRectGetWidth(v58);
    sub_23719674C();
    [v3 frame];
    CGRectGetWidth(v59);
    [v3 frame];
    CGRectGetHeight(v60);
    sub_23719674C();
    CGPathCloseSubpath(Mutable);
    __swift_destroy_boxed_opaque_existential_0(v44);
    v2 = v42;
    v4 = v43;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

void sub_237164BC0()
{
  v1 = v0;
  sub_2371830D4();
  Mutable = CGPathCreateMutable();
  v3 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
  [v3 frame];
  CGRectGetHeight(v75);
  v4 = v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_margins;
  v69 = 0x3FF0000000000000;
  v70 = 0;
  v71 = 0;
  v72 = 0x3FF0000000000000;
  v73 = 0;
  v74 = 0;
  sub_23719672C();
  [v3 frame];
  CGRectGetWidth(v76);
  sub_23719674C();
  [*(v0 + OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_diagonalLayer) setPath_];
  v59 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_animateChanges;
  if ((*(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_animateChanges) & 1) == 0)
  {
    v5 = objc_opt_self();
    [v5 begin];
    [v5 setDisableActions_];
  }

  v6 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource;
  swift_beginAccess();
  sub_237167B14(v1 + v6, &v64);
  if (v65)
  {
    sub_237120C7C(&v64, v66);
    v7 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_paramCache;
    swift_beginAccess();
    v60 = v7;
    if (*(*(v1 + v7) + 16))
    {
      v58 = Mutable;
      v9 = v67;
      v8 = v68;
      __swift_project_boxed_opaque_existential_0(v66, v67);
      v10 = (*(*(*(v8 + 8) + 8) + 24))(0, v9);
      v12 = v67;
      v11 = v68;
      __swift_project_boxed_opaque_existential_0(v66, v67);
      v13 = (*(*(*(v11 + 8) + 8) + 16))(0, v12);
      v14 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
      v15 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
      sub_237183E14(v15, v10);

      v16 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis;
      v17 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis);
      sub_237183E14(v17, v10);

      v18 = *(v1 + v14);
      sub_237183E14(v18, v13);

      v19 = *(v1 + v16);
      sub_237183E14(v19, v13);

      v20 = CGPathCreateMutable();
      [v3 frame];
      CGRectGetHeight(v77);
      sub_23719672C();
      sub_23719674C();
      [v3 frame];
      CGRectGetWidth(v78);
      sub_23719674C();
      sub_23719674C();
      sub_23719674C();
      sub_23719674C();
      CGPathCloseSubpath(v20);
      v21 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_inactiveAreas;
      swift_beginAccess();
      v22 = *(v1 + v21);
      if (!*(v22 + 16))
      {
        goto LABEL_40;
      }

      v23 = sub_2371905D4(0x6576697463616E69, 0xED00006165726120);
      if ((v24 & 1) == 0)
      {
        goto LABEL_41;
      }

      v25 = *(*(v22 + 56) + 8 * v23);

      objc_opt_self();
      v56 = v25;
      v57 = v20;
      [swift_dynamicCastObjCClassUnconditional() setPath_];
      v26 = 0;
      v4 = 0x278A25000uLL;
      do
      {
        v28 = *(v1 + v60);
        if (!*(v28 + 16))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v29 = *(&unk_284A39A08 + v26 + 32);
        v30 = sub_2371906E0(*(&unk_284A39A08 + v26 + 32));
        if ((v31 & 1) == 0)
        {
          goto LABEL_35;
        }

        sub_237114D0C(*(v28 + 56) + 32 * v30, v63);
        sub_23711BDA4(v63, &v64);
        sub_237115094(0, &qword_27DE95590);
        swift_dynamicCast();
        v33 = v67;
        v32 = v68;
        __swift_project_boxed_opaque_existential_0(v66, v67);
        v34 = (*(*(*(v32 + 8) + 8) + 8))(v29, v33);
        v36 = v67;
        v35 = v68;
        __swift_project_boxed_opaque_existential_0(v66, v67);
        v37 = (*(*(*(v35 + 8) + 8) + 16))(v29, v36);
        v39 = v67;
        v38 = v68;
        __swift_project_boxed_opaque_existential_0(v66, v67);
        v40 = *(*(v38 + 8) + 8);
        if (v34 < v37)
        {
          v27 = (*(v40 + 16))(v29, v39);
        }

        else
        {
          v41 = (*(v40 + 24))(v29, v39);
          v27 = v34;
          if (v41 < v34)
          {
            v43 = v67;
            v42 = v68;
            __swift_project_boxed_opaque_existential_0(v66, v67);
            (*(*(*(v42 + 8) + 8) + 24))(v29, v43);
          }
        }

        v26 += 4;
        [v62 setPosition_];
      }

      while (v26 != 16);
      v44 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_accessibileElements;
      swift_beginAccess();
      v4 = *(v1 + v44);
      if (v4 >> 62)
      {
        goto LABEL_42;
      }

      for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2371969FC())
      {

        if (!i)
        {
          break;
        }

        v46 = 0;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v47 = MEMORY[0x2383C62A0](v46, v4);
          }

          else
          {
            if (v46 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v47 = *(v4 + 8 * v46 + 32);
          }

          v48 = v47;
          v49 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            break;
          }

          v50 = *(v1 + v60);
          if (!*(v50 + 16))
          {
            goto LABEL_38;
          }

          v51 = sub_2371906E0(*&v47[OBJC_IVAR____TtCC12CoreAudioKit17CACompressionView27ControlAccessibilityElement_param]);
          if ((v52 & 1) == 0)
          {
            goto LABEL_39;
          }

          sub_237114D0C(*(v50 + 56) + 32 * v51, v63);
          sub_23711BDA4(v63, &v64);
          swift_dynamicCast();
          v53 = v48;
          v54 = i;
          v55 = v53;
          [v61 frame];
          [v55 setAccessibilityFrameInContainerSpace_];

          i = v54;
          ++v46;
          if (v49 == v54)
          {
            goto LABEL_29;
          }
        }

LABEL_36:
        __break(1u);
LABEL_37:
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
        ;
      }

LABEL_29:

      __swift_destroy_boxed_opaque_existential_0(v66);
      Mutable = v58;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v66);
    }
  }

  else
  {
    sub_237120D04(&v64, &qword_27DE951F0);
  }

  sub_2371645B4();
  if ((*(v1 + v59) & 1) == 0)
  {
    [objc_opt_self() commit];
  }
}

void sub_2371653F0(uint64_t a1)
{
  v2 = v1;
  sub_237183574(a1);
  if (*(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_showActiveArea) == 1)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
    v5 = [v2 layer];
    [v5 contentsScale];
    v7 = v6;

    [v4 setContentsScale_];
    v8 = objc_opt_self();
    v9 = [v8 labelColor];
    v10 = [v9 colorWithAlphaComponent_];

    v11 = [v10 CGColor];
    [v4 setFillColor_];

    v12 = [v8 labelColor];
    v13 = [v12 colorWithAlphaComponent_];

    v14 = [v13 CGColor];
    [v4 setStrokeColor_];

    [v4 setLineWidth_];
    [v4 setHidden_];
    [v4 setZPosition_];
    v15 = sub_23719653C();
    [v4 setName_];

    v16 = [v4 name];
    if (v16)
    {
      v17 = v16;
      v18 = sub_23719657C();
      v20 = v19;

      v21 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_inactiveAreas;
      swift_beginAccess();
      v22 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *&v2[v21];
      *&v2[v21] = 0x8000000000000000;
      sub_23718E25C(v22, v18, v20, isUniquelyReferenced_nonNull_native);

      *&v2[v21] = v25;
      swift_endAccess();
      v24 = *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer];
      [v24 bounds];
      [v22 setBounds_];

      [v24 addSublayer_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_237165724(unsigned int a1, float a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_paramCache;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (!*(v7 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = sub_2371906E0(a1);
  if ((v9 & 1) == 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_237114D0C(*(v7 + 56) + 32 * v8, &v28);
  sub_23711BDA4(&v28, &v32);
  sub_237115094(0, &qword_27DE95590);
  swift_dynamicCast();
  v10 = v31;
  v11 = objc_opt_self();
  v12 = v10;
  [v11 begin];
  [v11 setDisableActions_];
  [v12 setPosition_];

  if (a1 != 3)
  {
    if (a1)
    {
LABEL_15:
      sub_2371645B4();
      [v11 commit];

      return;
    }

    v13 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource;
    swift_beginAccess();
    sub_237167B14(v3 + v13, &v32);
    if (v33)
    {
      sub_237120C18(&v32, &v28);
      sub_237120D04(&v32, &qword_27DE951F0);
      v14 = v29;
      v15 = v30;
      __swift_project_boxed_opaque_existential_0(&v28, v29);
      v16 = (*(*(*(v15 + 8) + 8) + 8))(1, v14);
      __swift_destroy_boxed_opaque_existential_0(&v28);
      v17 = *(v3 + v6);
      if (*(v17 + 16))
      {
        v18 = sub_2371906E0(1u);
        if (v19)
        {
          sub_237114D0C(*(v17 + 56) + 32 * v18, &v28);

          sub_23711BDA4(&v28, &v32);
          swift_dynamicCast();
          v12 = v27;
          v20 = 1;
LABEL_13:
          [v12 setPosition_];

          goto LABEL_15;
        }

        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_14:
    sub_237120D04(&v32, &qword_27DE951F0);
    goto LABEL_15;
  }

  v21 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource;
  swift_beginAccess();
  sub_237167B14(v3 + v21, &v32);
  if (!v33)
  {
    goto LABEL_14;
  }

  sub_237120C18(&v32, &v28);
  sub_237120D04(&v32, &qword_27DE951F0);
  v22 = v29;
  v23 = v30;
  __swift_project_boxed_opaque_existential_0(&v28, v29);
  v16 = (*(*(*(v23 + 8) + 8) + 8))(2, v22);
  __swift_destroy_boxed_opaque_existential_0(&v28);
  v24 = *(v3 + v6);
  if (!*(v24 + 16))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = sub_2371906E0(2u);
  if (v26)
  {
    sub_237114D0C(*(v24 + 56) + 32 * v25, &v28);

    sub_23711BDA4(&v28, &v32);
    swift_dynamicCast();
    v12 = v27;
    v20 = 2;
    goto LABEL_13;
  }

LABEL_21:
  __break(1u);
}

void sub_237165AD8(uint64_t a1)
{
  v8 = v1;
  v10 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeGuides;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_14:
    v16 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    v3 = *(v8 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
    v4 = &selRef_effectiveContentSize;
    [v3 contentsScale];
    v7 = 0x278A25000uLL;
    [v16 setContentsScale_];
    v17 = sub_23719653C();
    v5 = &selRef_effectiveContentSize;
    [v16 setName_];

    v6 = 0x278A25000uLL;
    [v3 addSublayer_];
    swift_beginAccess();
    v2 = v16;
    MEMORY[0x2383C5F60]();
    if (*((*(v8 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v8 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

  if (!sub_2371969FC())
  {
    goto LABEL_14;
  }

LABEL_3:
  if (a1 > 1)
  {
    goto LABEL_18;
  }

LABEL_4:
  if (a1)
  {
    if (a1 == 1)
    {
      v12 = *(v8 + v10);
      if ((v12 & 0xC000000000000001) != 0)
      {

        v13 = MEMORY[0x2383C62A0](0, v12);

        goto LABEL_9;
      }

      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v13 = *(v12 + 32);
LABEL_9:
        [v13 setHidden_];

        v14 = *(v8 + v10);
        if ((v14 & 0xC000000000000001) != 0)
        {

          v15 = MEMORY[0x2383C62A0](1, v14);

          goto LABEL_12;
        }

        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
        {
          v15 = *(v14 + 40);
LABEL_12:
          [v15 setHidden_];
          goto LABEL_40;
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        return;
      }

      goto LABEL_51;
    }

LABEL_26:
    v22 = *(v8 + v10);
    if ((v22 & 0xC000000000000001) != 0)
    {

      v23 = MEMORY[0x2383C62A0](0, v22);
    }

    else
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v23 = *(v22 + 32);
    }

    [v23 setHidden_];

    v24 = *(v8 + v10);
    if ((v24 & 0xC000000000000001) != 0)
    {

      v25 = MEMORY[0x2383C62A0](1, v24);
    }

    else
    {
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v25 = *(v24 + 40);
    }

    [v25 setHidden_];

    return;
  }

  while (1)
  {
    v19 = *(v8 + v10);
    if ((v19 & 0xC000000000000001) != 0)
    {

      v20 = MEMORY[0x2383C62A0](0, v19);

LABEL_23:
      [v20 setHidden_];

      v21 = *(v8 + v10);
      if ((v21 & 0xC000000000000001) == 0)
      {
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          __break(1u);
          goto LABEL_26;
        }

LABEL_38:
        v15 = *(v21 + 40);
        goto LABEL_39;
      }

      goto LABEL_41;
    }

    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(v19 + 32);
      goto LABEL_23;
    }

    __break(1u);
LABEL_44:
    sub_23719664C();
LABEL_15:
    sub_23719665C();
    swift_endAccess();
    v18 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    [v3 v4[95]];
    [v18 *(v7 + 3440)];
    v4 = sub_23719653C();
    [v18 v5[453]];

    [v3 *(v6 + 3328)];
    swift_beginAccess();
    v3 = v18;
    MEMORY[0x2383C5F60]();
    if (*((*(v8 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v8 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v4 = *((*(v8 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    if (a1 <= 1)
    {
      goto LABEL_4;
    }

LABEL_18:
    if (a1 == 2)
    {
      break;
    }

    if (a1 != 3)
    {
      goto LABEL_26;
    }
  }

  v26 = *(v8 + v10);
  if ((v26 & 0xC000000000000001) != 0)
  {

    v27 = MEMORY[0x2383C62A0](0, v26);
  }

  else
  {
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_52;
    }

    v27 = *(v26 + 32);
  }

  [v27 setHidden_];

  v21 = *(v8 + v10);
  if ((v21 & 0xC000000000000001) == 0)
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      goto LABEL_55;
    }

    goto LABEL_38;
  }

LABEL_41:

  v15 = MEMORY[0x2383C62A0](1, v21);

LABEL_39:
  [v15 setHidden_];
LABEL_40:

  sub_237166164(a1);
}