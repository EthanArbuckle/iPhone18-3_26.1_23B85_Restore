uint64_t View.onCameraCaptureEvent(isEnabled:primaryAction:secondaryAction:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = 0;
  v8[0] = a1;
  v8[1] = 0;
  v9 = a2;
  v10 = a3;
  v11 = 0;
  v12 = a4;
  v13 = a5;
  v14 = 0;
  return MEMORY[0x23EEA1570](v8, a6, &type metadata for OnCameraCaptureEventModifier, a7);
}

uint64_t View.onCameraCaptureEvent(isEnabled:action:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  v6[0] = a1;
  v6[1] = 0;
  v7 = a2;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = -1;
  return MEMORY[0x23EEA1570](v6, a4, &type metadata for OnCameraCaptureEventModifier, a5);
}

uint64_t View.onCameraCaptureEvent(isEnabled:defaultSoundDisabled:primaryAction:secondaryAction:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_23B68F548(a1, a2, a3, a4, a5, a6, a7, a8, 1, 1);
}

{
  return sub_23B68F548(a1, a2, a3, a4, a5, a6, a7, a8, 0, 0);
}

uint64_t View.onCameraCaptureEvent(isEnabled:defaultSoundDisabled:action:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_23B68F5A8(a1, a2, a3, a4, a5, a6, 1);
}

{
  return sub_23B68F5A8(a1, a2, a3, a4, a5, a6, 0);
}

uint64_t sub_23B68F548(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v18 = a9;
  v11[0] = a1;
  v11[1] = a2;
  v12 = a3;
  v13 = a4;
  v14 = a9;
  v15 = a5;
  v16 = a6;
  v17 = a10;
  return MEMORY[0x23EEA1570](v11, a7, &type metadata for OnCameraCaptureEventModifier, a8);
}

uint64_t sub_23B68F5A8(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v15 = a7;
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3;
  v10 = a4;
  v11 = a7;
  v12 = 0;
  v13 = 0;
  v14 = -1;
  return MEMORY[0x23EEA1570](v8, a5, &type metadata for OnCameraCaptureEventModifier, a6);
}

uint64_t sub_23B68F5FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23B6953B0();
  sub_23B68F660();
  return swift_getWitnessTable();
}

unint64_t sub_23B68F660()
{
  result = qword_27E1764A8[0];
  if (!qword_27E1764A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1764A8);
  }

  return result;
}

uint64_t VideoPlayer.init(player:videoOverlay:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VideoPlayerConfiguration();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20]();
  v16 = &v18 - v15;
  a2(v14);
  sub_23B692E54(v10, a1, a3, v16);
  return (*(v12 + 32))(a4, v16, v11);
}

uint64_t VideoPlayer.body.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = (*(*(type metadata accessor for VideoPlayerConfiguration() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, v1);
  return sub_23B692CE0(v6, v2, v3);
}

uint64_t sub_23B68F964(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for VideoPlayerConfiguration();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B68F9D4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_23B68FB18(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_23B68FCF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for VideoPlayerBody();

  return swift_getWitnessTable();
}

uint64_t sub_23B68FD70(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_23B695560();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B68FE10()
{
  v0 = sub_23B695340();
  __swift_allocate_value_buffer(v0, qword_27E176530);
  __swift_project_value_buffer(v0, qword_27E176530);
  return sub_23B695330();
}

uint64_t sub_23B68FE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for VideoPlayerConfiguration();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v8 = &v28 - v7;
  v9 = type metadata accessor for AVPlayerViewControllerView_AVPVC_Subclass();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = (MEMORY[0x28223BE20])();
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  type metadata accessor for AVPlayerViewControllerView();
  v17 = sub_23B6953E0();
  v29 = *(v17 - 8);
  v30 = v17;
  v18 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v20 = &v28 - v19;
  (*(v5 + 16))(v8, v28, v4);
  (*(v5 + 32))(v14, v8, v4);
  WitnessTable = swift_getWitnessTable();
  v22 = v10[2];
  v22(v16, v14, v9);
  v23 = v10[1];
  v23(v14, v9);
  v22(v14, v16, v9);
  v24 = swift_getWitnessTable();
  sub_23B690270(v14, v9);
  v23(v14, v9);
  v23(v16, v9);
  v32 = WitnessTable;
  v33 = v24;
  v25 = v30;
  swift_getWitnessTable();
  v26 = v29;
  (*(v29 + 16))(v31, v20, v25);
  return (*(v26 + 8))(v20, v25);
}

uint64_t sub_23B690204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VideoPlayerConfiguration();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_23B690270(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(sub_23B6953C0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_23B6953D0();
}

id sub_23B69036C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  return sub_23B6924DC();
}

void sub_23B690384()
{
  v0 = sub_23B690528();
  [v0 setPlayer_];
}

uint64_t sub_23B6903E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_23B690464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_23B6904E0()
{
  swift_getWitnessTable();
  sub_23B695440();
  __break(1u);
}

id sub_23B690528()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CB85E0]) init];
    [v4 setAllowsEnteringFullScreen_];
    [v4 setAllowsPictureInPicturePlayback_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_23B6905E0()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v36.receiver = v0;
  v36.super_class = type metadata accessor for VideoPlayerViewController();
  objc_msgSendSuper2(&v36, sel_viewDidLoad);
  v4 = sub_23B690528();
  [v0 addChildViewController_];

  v5 = *((*v1 & *v0) + 0x70);
  v6 = [*(v0 + v5) view];
  if (!v6)
  {
    if (qword_27E1764A0 != -1)
    {
      swift_once();
    }

    v33 = sub_23B695340();
    __swift_project_value_buffer(v33, qword_27E176530);
    v7 = sub_23B695320();
    v34 = sub_23B695550();
    if (os_log_type_enabled(v7, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_23B68E000, v7, v34, "AVPlayerViewController's view is missing!", v35, 2u);
      MEMORY[0x23EEA1950](v35, -1, -1);
    }

    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  [v8 addSubview_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1766C8, &qword_23B695B58);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23B695A20;
  v11 = [v7 leadingAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v10 + 32) = v15;
  v16 = [v7 topAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v10 + 40) = v20;
  v21 = [v7 trailingAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = [v21 constraintEqualToAnchor_];
  *(v10 + 48) = v25;
  v26 = [v7 bottomAnchor];
  v27 = [v0 view];
  if (v27)
  {
    v28 = v27;
    v29 = objc_opt_self();
    v30 = [v28 bottomAnchor];

    v31 = [v26 constraintEqualToAnchor_];
    *(v10 + 56) = v31;
    sub_23B692B0C();
    v32 = sub_23B6954F0();

    [v29 activateConstraints_];

    [*(v0 + v5) didMoveToParentViewController_];
    sub_23B690AA4();
LABEL_12:

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_23B690A5C(void *a1)
{
  v1 = a1;
  sub_23B6905E0();
}

uint64_t sub_23B690AA4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & v2;
  v5 = *(v4 + 0x50);
  v6 = sub_23B695560();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v41 - v10;
  v12 = *(v5 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v41 - v18;
  if (!*(v1 + *((v3 & v2) + 0x60)))
  {
    v20 = result;
    sub_23B690524();
    if ((*(v12 + 48))(v11, 1, v5) == 1)
    {
      return (*(v7 + 8))(v11, v20);
    }

    else
    {
      (*(v12 + 32))(v19, v11, v5);
      v21 = sub_23B690528();
      v22 = [v21 contentOverlayView];

      if (v22)
      {
        v23 = *(v4 + 88);
        sub_23B6953A0();
        (*(v12 + 16))(v16, v19, v5);
        v24 = sub_23B695380();
        v25 = [objc_opt_self() clearColor];
        [v24 setBackgroundColor_];

        v26 = v24;
        [v22 addSubview_];
        [v26 setTranslatesAutoresizingMaskIntoConstraints_];
        v27 = [v26 centerXAnchor];
        v28 = [v22 centerXAnchor];
        v29 = [v27 constraintEqualToAnchor_];

        [v29 setActive_];
        v30 = [v26 centerYAnchor];

        v31 = [v22 centerYAnchor];
        v32 = [v30 constraintEqualToAnchor_];

        [v32 setActive_];
        v33 = [v26 widthAnchor];

        v34 = [v22 widthAnchor];
        v35 = [v33 constraintEqualToAnchor_];

        [v35 setActive_];
        v36 = [v26 heightAnchor];

        v37 = [v22 heightAnchor];
        v38 = [v36 constraintEqualToAnchor_];

        [v38 setActive_];
        v39 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
        v40 = *(v1 + v39);
        *(v1 + v39) = v26;
      }

      return (*(v12 + 8))(v19, v5);
    }
  }

  return result;
}

id sub_23B690FC0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  v7 = MEMORY[0x277D85000];
  v8 = *MEMORY[0x277D85000];
  v9 = *MEMORY[0x277D85000] & *v3;
  *&v3[*((v8 & v6) + 0x60)] = 0;
  (*(*(*((v8 & v6) + 0x50) - 8) + 56))(&v3[*((*v7 & *v3) + 0x68)], 1, 1, *((v8 & v6) + 0x50));
  *&v3[*((*v7 & *v3) + 0x70)] = 0;
  if (a2)
  {
    v10 = sub_23B6954C0();
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v9 + 88);
  v14.receiver = v3;
  v14.super_class = type metadata accessor for VideoPlayerViewController();
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v10, a3);

  return v12;
}

id sub_23B691158(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  *&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)] = 0;
  (*(*(*((v5 & v4) + 0x50) - 8) + 56))(&v1[*((*v3 & *v1) + 0x68)], 1, 1, *((v5 & v4) + 0x50));
  *&v1[*((*v3 & *v1) + 0x70)] = 0;
  v6 = *((v5 & v4) + 0x58);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for VideoPlayerViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

void sub_23B6912D4(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *a1;
  v4 = *MEMORY[0x277D85000];

  v5 = *((*v2 & *a1) + 0x68);
  v6 = *((v4 & v3) + 0x50);
  v7 = sub_23B695560();
  (*(*(v7 - 8) + 8))(&a1[v5], v7);
  v8 = *&a1[*((*v2 & *a1) + 0x70)];
}

uint64_t sub_23B6913E0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_23B695560();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_23B691480(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  return sub_23B6926BC();
}

uint64_t sub_23B6914D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_23B691554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_23B6915D0()
{
  swift_getWitnessTable();
  sub_23B695440();
  __break(1u);
}

uint64_t sub_23B691610(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23B691640(void (*a1)(void))
{
  v22 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = sub_23B695560();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(v4 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  v18 = *((v3 & v2) + 0x68);
  swift_beginAccess();
  (*(v6 + 16))(v10, &v1[v18], v5);
  if ((*(v11 + 48))(v10, 1, v4) == 1)
  {
    return (*(v6 + 8))(v10, v5);
  }

  (*(v11 + 32))(v17, v10, v4);
  if ([v1 isViewLoaded])
  {
    v22();
  }

  v20 = *&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)];
  if (v20)
  {
    (*(v11 + 16))(v15, v17, v4);
    v21 = v20;
    sub_23B695390();
  }

  return (*(v11 + 8))(v17, v4);
}

uint64_t sub_23B6918F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = sub_23B695560();
  return (*(*(v7 - 8) + 16))(a1, &v1[v5], v7);
}

uint64_t sub_23B6919B4()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for VideoPlayerViewController_AVPVC_Subclass();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  return sub_23B691A70();
}

void sub_23B691A28(void *a1)
{
  v1 = a1;
  sub_23B6919B4();
}

uint64_t sub_23B691A70()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & v2;
  v5 = *(v4 + 0x50);
  v6 = sub_23B695560();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v41 - v10;
  v12 = *(v5 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v41 - v18;
  if (!*(v1 + *((v3 & v2) + 0x60)))
  {
    v20 = result;
    sub_23B690524();
    if ((*(v12 + 48))(v11, 1, v5) == 1)
    {
      return (*(v7 + 8))(v11, v20);
    }

    else
    {
      (*(v12 + 32))(v19, v11, v5);
      v21 = [v1 contentOverlayView];
      if (v21)
      {
        v22 = v21;
        v23 = *(v4 + 88);
        sub_23B6953A0();
        (*(v12 + 16))(v16, v19, v5);
        v24 = sub_23B695380();
        v25 = [objc_opt_self() clearColor];
        [v24 setBackgroundColor_];

        v26 = v24;
        [v22 addSubview_];
        [v26 setTranslatesAutoresizingMaskIntoConstraints_];
        v27 = [v26 centerXAnchor];
        v28 = [v22 centerXAnchor];
        v29 = [v27 constraintEqualToAnchor_];

        [v29 setActive_];
        v30 = [v26 centerYAnchor];

        v31 = [v22 centerYAnchor];
        v32 = [v30 constraintEqualToAnchor_];

        [v32 setActive_];
        v33 = [v26 widthAnchor];

        v34 = [v22 widthAnchor];
        v35 = [v33 constraintEqualToAnchor_];

        [v35 setActive_];
        v36 = [v26 heightAnchor];

        v37 = [v22 heightAnchor];
        v38 = [v36 constraintEqualToAnchor_];

        [v38 setActive_];
        v39 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
        v40 = *(v1 + v39);
        *(v1 + v39) = v26;
      }

      return (*(v12 + 8))(v19, v5);
    }
  }

  return result;
}

id sub_23B691F80(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  v7 = MEMORY[0x277D85000];
  v8 = *MEMORY[0x277D85000];
  v9 = *MEMORY[0x277D85000] & *v3;
  *&v3[*((v8 & v6) + 0x60)] = 0;
  (*(*(*((v8 & v6) + 0x50) - 8) + 56))(&v3[*((*v7 & *v3) + 0x68)], 1, 1, *((v8 & v6) + 0x50));
  if (a2)
  {
    v10 = sub_23B6954C0();
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v9 + 88);
  v14.receiver = v3;
  v14.super_class = type metadata accessor for VideoPlayerViewController_AVPVC_Subclass();
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v10, a3);

  return v12;
}

uint64_t sub_23B6920F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, void *))
{
  if (a3)
  {
    v7 = sub_23B6954D0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  return a5(v7, v9, a4);
}

id sub_23B692164(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  *&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)] = 0;
  (*(*(*((v5 & v4) + 0x50) - 8) + 56))(&v1[*((*v3 & *v1) + 0x68)], 1, 1, *((v5 & v4) + 0x50));
  v6 = *((v5 & v4) + 0x58);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for VideoPlayerViewController_AVPVC_Subclass();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_23B6922A8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = sub_23B69298C(v3);

  return v4;
}

id sub_23B6922F8(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23B692370(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *a1;
  v4 = *MEMORY[0x277D85000];

  v5 = *((*v2 & *a1) + 0x68);
  v6 = *((v4 & v3) + 0x50);
  v7 = sub_23B695560();
  v8 = *(*(v7 - 8) + 8);

  return v8(&a1[v5], v7);
}

id sub_23B6924DC()
{
  type metadata accessor for VideoPlayerViewController();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_23B692520(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_23B695560();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a2 + 24);
  v11 = *(v2 + *(type metadata accessor for VideoPlayerConfiguration() + 36));
  v12 = sub_23B690528();
  [v12 setPlayer_];

  v13 = *(v4 - 8);
  (*(v13 + 16))(v9, v2, v4);
  (*(v13 + 56))(v9, 0, 1, v4);
  sub_23B692734(v9, sub_23B690AA4);
  return (*(v6 + 8))(v9, v5);
}

id sub_23B6926BC()
{
  type metadata accessor for VideoPlayerViewController_AVPVC_Subclass();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setAllowsEnteringFullScreen_];
  [v0 setAllowsPictureInPicturePlayback_];

  return v0;
}

uint64_t sub_23B692734(uint64_t a1, void (*a2)(void))
{
  v5 = *v2;
  v6 = *MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *v2) + 0x68);
  swift_beginAccess();
  v8 = *((v6 & v5) + 0x50);
  v9 = sub_23B695560();
  (*(*(v9 - 8) + 24))(&v2[v7], a1, v9);
  swift_endAccess();
  return sub_23B691640(a2);
}

uint64_t sub_23B692808(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = sub_23B695560();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(a2 + 24);
  [a1 setPlayer_];
  v13 = *(v6 - 8);
  (*(v13 + 16))(v11, v3, v6);
  (*(v13 + 56))(v11, 0, 1, v6);
  sub_23B692734(v11, sub_23B691A70);
  return (*(v8 + 8))(v11, v7);
}

id sub_23B69298C(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  *&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)] = 0;
  (*(*(*((v5 & v4) + 0x50) - 8) + 56))(&v1[*((*v3 & *v1) + 0x68)], 1, 1, *((v5 & v4) + 0x50));
  v6 = *((v5 & v4) + 0x58);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for VideoPlayerViewController_AVPVC_Subclass();
  return objc_msgSendSuper2(&v8, sel_initWithPlayerLayerView_, a1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23B692B0C()
{
  result = qword_27E1766D0[0];
  if (!qword_27E1766D0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27E1766D0);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_23B692BC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for AVPlayerViewControllerView_AVPVC_Subclass();
  type metadata accessor for AVPlayerViewControllerView();
  sub_23B6953E0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_23B692D10(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_23B692DB0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B692DB0()
{
  if (!qword_27E176858)
  {
    sub_23B692E08();
    v0 = sub_23B695560();
    if (!v1)
    {
      atomic_store(v0, &qword_27E176858);
    }
  }
}

unint64_t sub_23B692E08()
{
  result = qword_27E176860;
  if (!qword_27E176860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E176860);
  }

  return result;
}

uint64_t sub_23B692E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for VideoPlayerConfiguration();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_14_AVKit_SwiftUI13CaptureActionOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23B692F64()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 8);
  v5 = v0[24];
  v6 = *(v0 + 2);
  v7 = v0[48];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176868, &unk_23B695F10);
  sub_23B693014();
  sub_23B6930C0();
  return sub_23B6954A0();
}

unint64_t sub_23B693014()
{
  result = qword_27E176870;
  if (!qword_27E176870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E176868, &unk_23B695F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E176870);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23B6930C0()
{
  result = qword_27E176878;
  if (!qword_27E176878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E176878);
  }

  return result;
}

uint64_t sub_23B693114(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[49])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23B693168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B6931E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23B693228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_23B69328C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E176868, &unk_23B695F10);
  sub_23B693014();
  sub_23B6930C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23B693304()
{
  v1 = v0;
  v21 = *(v0 + 32);
  v22 = *(v0 + 48);
  if (v22 == 255)
  {
    v7 = *(v0 + 8);
    v6 = *(v0 + 16);
    v8 = v1[24];
    v9 = v1[1];
    v10 = objc_allocWithZone(MEMORY[0x277CB8598]);
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    *(v11 + 24) = v6;
    *(v11 + 32) = v9;
    if (v8 == 1)
    {
      v19 = sub_23B693B94;
      v20 = v11;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v17 = sub_23B693A34;
      v18 = &block_descriptor_21;
    }

    else
    {
      v19 = sub_23B695300;
      v20 = v11;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v17 = sub_23B693A34;
      v18 = &block_descriptor;
    }

    v12 = _Block_copy(&aBlock);
    sub_23B693AB4();

    v5 = [v10 initWithEventHandler_];
    sub_23B693ABC();
    _Block_release(v12);
    goto LABEL_11;
  }

  v2 = v21;
  aBlock = *(v0 + 8);
  LOBYTE(v17) = *(v0 + 24);
  v3 = aBlock;
  if (v17)
  {
    if (v22)
    {
      sub_23B693BD0();
      v4 = *(v0 + 1);
      sub_23B694C8C(&v21, v15, &qword_27E176888, &qword_23B696008);
      sub_23B693C1C(&aBlock, v15);
      v5 = sub_23B693828(v4, v3, *(&v3 + 1), v2, *(&v2 + 1));
LABEL_11:
      [v5 setEnabled_];
      [objc_opt_self() setDefaultCaptureSoundDisabled_];
      return v5;
    }
  }

  else if ((v22 & 1) == 0)
  {
    sub_23B693BD0();
    v13 = *(v0 + 1);
    sub_23B694C8C(&v21, v15, &qword_27E176888, &qword_23B696008);
    sub_23B693C1C(&aBlock, v15);
    v5 = sub_23B693668(v13, v3, *(&v3 + 1), v2, *(&v2 + 1));
    goto LABEL_11;
  }

  result = sub_23B695570();
  __break(1u);
  return result;
}

id sub_23B693668(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a1;
  v21 = sub_23B693C54;
  v22 = v11;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_23B693A34;
  v20 = &block_descriptor_27;
  v12 = _Block_copy(&v17);

  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v21 = sub_23B693CAC;
  v22 = v13;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_23B693A34;
  v20 = &block_descriptor_33;
  v14 = _Block_copy(&v17);

  v15 = [v10 initWithPrimaryEventHandler:v12 secondaryEventHandler:v14];

  _Block_release(v14);
  _Block_release(v12);
  return v15;
}

id sub_23B693828(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a1;
  v21 = sub_23B694A84;
  v22 = v11;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_23B693A34;
  v20 = &block_descriptor_39;
  v12 = _Block_copy(&v17);

  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v21 = sub_23B694AC0;
  v22 = v13;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_23B693A34;
  v20 = &block_descriptor_45;
  v14 = _Block_copy(&v17);

  v15 = [v10 initWithPrimaryEventHandler:v12 secondaryEventHandler:v14];

  _Block_release(v14);
  _Block_release(v12);
  return v15;
}

uint64_t sub_23B6939FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

void sub_23B693A34(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23B693AC4(void *a1, void (*a2)(void), uint64_t a3, char a4)
{
  a2();
  if ((a4 & 1) == 0 && [a1 phase] == 1 && (objc_msgSend(a1, sel_didPlaySound) & 1) == 0)
  {
    v6 = [objc_opt_self() beginVideoRecordingSound];
    [a1 playSound_];
  }
}

unint64_t sub_23B693BD0()
{
  result = qword_27E176880;
  if (!qword_27E176880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E176880);
  }

  return result;
}

uint64_t sub_23B693C74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B693CAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23B693CD4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 48) = a7;
  *(v7 + 16) = a6;
  *(v7 + 24) = sub_23B695520();
  *(v7 + 32) = sub_23B695510();
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  *(v7 + 40) = v11;
  *v11 = v7;
  v11[1] = sub_23B693DF8;

  return v13(a6);
}

uint64_t sub_23B693DF8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  v5 = sub_23B695500();

  return MEMORY[0x2822009F8](sub_23B695304, v5, v4);
}

uint64_t sub_23B693F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E176890, &qword_23B696010);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23B694C8C(a3, v27 - v11, &unk_27E176890, &qword_23B696010);
  v13 = sub_23B695540();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23B694CF4(v12);
  }

  else
  {
    sub_23B695530();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23B695500();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23B6954E0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_23B694CF4(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23B694CF4(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_23B694204(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E176890, &qword_23B696010);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_23B695540();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_23B695520();

  v16 = a1;
  v17 = sub_23B695510();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  *(v18 + 48) = v16;
  *(v18 + 56) = a4;
  sub_23B693F34(0, 0, v14, a6, v18);
}

uint64_t sub_23B694354(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 48) = a7;
  *(v7 + 16) = a6;
  *(v7 + 24) = sub_23B695520();
  *(v7 + 32) = sub_23B695510();
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  *(v7 + 40) = v11;
  *v11 = v7;
  v11[1] = sub_23B694478;

  return v13(a6);
}

uint64_t sub_23B694478()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  v5 = sub_23B695500();

  return MEMORY[0x2822009F8](sub_23B6945B4, v5, v4);
}

uint64_t sub_23B6945B4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);

  if ((v2 & 1) == 0 && [*(v0 + 16) phase] == 1 && (objc_msgSend(*(v0 + 16), sel_didPlaySound) & 1) == 0)
  {
    v3 = *(v0 + 16);
    v4 = [objc_opt_self() beginVideoRecordingSound];
    [v3 playSound_];
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23B694688(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E176890, &qword_23B696010);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_23B695540();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_23B695520();

  v11 = a1;
  v12 = sub_23B695510();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = v11;
  sub_23B693F34(0, 0, v9, &unk_23B696020, v13);
}

uint64_t sub_23B6947CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_23B695520();
  v6[3] = sub_23B695510();
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_23B6948E8;

  return v12(a6);
}

uint64_t sub_23B6948E8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_23B695500();

  return MEMORY[0x2822009F8](sub_23B694A24, v5, v4);
}

uint64_t sub_23B694A24()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B694AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23B694B98;

  return sub_23B6947CC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23B694B98()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23B694C8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B694CF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E176890, &qword_23B696010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B694D5C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B694E54;

  return v7(a1);
}

uint64_t sub_23B694E54()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23B694F4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B6952FC;

  return sub_23B694D5C(a1, v5);
}

uint64_t sub_23B695004(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B694B98;

  return sub_23B694D5C(a1, v5);
}

uint64_t sub_23B6950C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23B6952FC;

  return sub_23B694354(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_47Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 40);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23B6951F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23B6952FC;

  return sub_23B693CD4(a1, v4, v5, v6, v7, v8, v9);
}