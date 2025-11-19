void sub_240992BFC(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor_];

  v4 = [objc_opt_self() systemFontOfSize_];
  v5 = [objc_opt_self() configurationWithFont_];

  v6 = v5;
  v7 = sub_240A2BF1C();
  v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

  [v2 setImage_];
  v9 = v2;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setContentMode_];
  v10 = [a1 contentView];
  [v10 addSubview_];

  v11 = [a1 contentView];
  v12 = [v11 mainContentGuide];

  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_240A33530;
  v15 = [v9 centerXAnchor];
  v16 = [v12 centerXAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v14 + 32) = v17;
  v18 = [v9 centerYAnchor];
  v19 = [v12 centerYAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v14 + 40) = v20;
  v21 = [v9 topAnchor];
  v22 = [v12 topAnchor];
  v23 = [v21 constraintGreaterThanOrEqualToAnchor_];

  *(v14 + 48) = v23;
  v24 = [v9 bottomAnchor];

  v25 = [v12 bottomAnchor];
  v26 = [v24 constraintLessThanOrEqualToAnchor_];

  *(v14 + 56) = v26;
  sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v27 = sub_240A2C15C();

  [v13 activateConstraints_];
}

uint64_t sub_24099302C(uint64_t a1)
{
  v2 = type metadata accessor for SetupView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v6 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = sub_240A2C24C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_2409963A8(a1, v6, type metadata accessor for SetupView);
  sub_240A2C21C();
  v13 = sub_240A2C20C();
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_240995610(v6, v15 + v14);
  sub_2409230D4(0, 0, v11, &unk_240A34C38, v15);
}

uint64_t sub_2409931F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_240A2981C() - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = *(*(sub_240A297DC() - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  sub_240A2C21C();
  v4[5] = sub_240A2C20C();
  v8 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409932E8, v8, v7);
}

uint64_t sub_2409932E8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_2409898C0();
  v5 = sub_240A2976C();
  (*(*(v5 - 8) + 56))(v2, 6, 6, v5);
  v6 = *(type metadata accessor for SetupView() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  sub_240A297FC();
  sub_240A2BC6C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_240993400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a4;
  v81 = a5;
  v74 = a2;
  v75 = a3;
  v66 = a1;
  v79 = sub_240A2A21C();
  v77 = *(v79 - 8);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v79, v6);
  v76 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SetupView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8, v11);
  v12 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D330, &qword_240A34C68);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = v65 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D8A0, &unk_240A32240);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v65 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D740, &qword_240A34FE0);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24 - 8, v26);
  v73 = v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v72 = v65 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v71 = v65 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v70 = v65 - v36;
  v82 = sub_240A2C06C();
  v83 = v37;
  sub_240A2B18C();
  v38 = sub_240A2B19C();
  (*(*(v38 - 8) + 56))(v17, 0, 1, v38);
  sub_2409963A8(a1, v12, type metadata accessor for SetupView);
  v39 = *(v9 + 80);
  v40 = (v39 + 16) & ~v39;
  v67 = v40 + v10;
  v68 = v39 | 7;
  v41 = swift_allocObject();
  sub_240995610(v12, v41 + v40);
  v69 = sub_24091C4F8();
  sub_240A2BCBC();
  v65[2] = sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240);
  v42 = v18;
  sub_240A2BA6C();
  v43 = v19 + 8;
  v44 = *(v19 + 8);
  v65[1] = v43;
  v44(v23, v18);
  sub_240A2C06C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_240A305D0;
  *(v45 + 56) = MEMORY[0x277D837D0];
  *(v45 + 64) = sub_240913AEC();
  v46 = v75;
  *(v45 + 32) = v74;
  *(v45 + 40) = v46;

  v47 = sub_240A2BF6C();
  v49 = v48;

  v82 = v47;
  v83 = v49;
  sub_2409963A8(v66, v12, type metadata accessor for SetupView);
  v50 = v76;
  v51 = v77;
  v52 = v79;
  (*(v77 + 16))(v76, v80, v79);
  v53 = v51;
  v54 = (v67 + *(v51 + 80)) & ~*(v51 + 80);
  v55 = swift_allocObject();
  sub_240995610(v12, v55 + v40);
  (*(v53 + 32))(v55 + v54, v50, v52);
  sub_240A2BCCC();
  v56 = v71;
  sub_240A2BA6C();
  v44(v23, v42);
  v57 = v70;
  v58 = v72;
  sub_240919298(v70, v72, &qword_27E50D740, &qword_240A34FE0);
  v59 = v73;
  sub_240919298(v56, v73, &qword_27E50D740, &qword_240A34FE0);
  v60 = v58;
  v61 = v58;
  v62 = v81;
  sub_240919298(v60, v81, &qword_27E50D740, &qword_240A34FE0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D338, &qword_240A34C70);
  sub_240919298(v59, v62 + *(v63 + 48), &qword_27E50D740, &qword_240A34FE0);
  sub_240919300(v56, &qword_27E50D740, &qword_240A34FE0);
  sub_240919300(v57, &qword_27E50D740, &qword_240A34FE0);
  sub_240919300(v59, &qword_27E50D740, &qword_240A34FE0);
  return sub_240919300(v61, &qword_27E50D740, &qword_240A34FE0);
}

id sub_240993AAC(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v2 = sub_240A2A21C();
  v74 = *(v2 - 8);
  v75 = v2;
  v3 = *(v74 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v71 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v73 = &v71 - v8;
  v9 = sub_240A2B00C();
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = *(v79 + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v76 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v78 = (&v71 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v71 - v19;
  v21 = sub_240A295AC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v72 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v71 - v28;
  v30 = sub_240A2981C();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8, v32);
  v33 = sub_240A297DC();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8, v35);
  v37 = &v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_240A2976C();
  (*(*(v38 - 8) + 56))(v37, 6, 6, v38);
  v39 = *(type metadata accessor for SetupView() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  sub_240A297FC();
  v40 = v77;
  sub_240A2BC6C();
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_240A2C47C();

  v81 = 0xD000000000000020;
  v82 = 0x8000000240A3D6C0;
  v41 = sub_240A2A1EC();
  MEMORY[0x245CCCD90](v41);

  MEMORY[0x245CCCD90](0x6574616D696E6126, 0xED0000657572743DLL);
  sub_240A2959C();

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_240919300(v20, &qword_27E50C7E0, &qword_240A33150);
    v42 = v76;
    sub_240A2AE9C();
    v44 = v73;
    v43 = v74;
    v45 = *(v74 + 16);
    v46 = v40;
    v47 = v75;
    v45(v73, v46, v75);
    v48 = sub_240A2AFFC();
    v49 = sub_240A2C2AC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v81 = v78;
      *v50 = 136315138;
      v45(v71, v44, v47);
      v51 = sub_240A2BF9C();
      v53 = v52;
      (*(v43 + 8))(v44, v47);
      v54 = sub_240925464(v51, v53, &v81);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_2408FE000, v48, v49, "Failed to perform deep link navigation for profile: %s", v50, 0xCu);
      v55 = v78;
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x245CCDDB0](v55, -1, -1);
      MEMORY[0x245CCDDB0](v50, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v47);
    }

    return (*(v79 + 8))(v42, v80);
  }

  else
  {
    (*(v22 + 32))(v29, v20, v21);
    sub_240A2AE9C();
    v56 = v72;
    (*(v22 + 16))(v72, v29, v21);
    v57 = sub_240A2AFFC();
    v58 = sub_240A2C29C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v81 = v60;
      *v59 = 136315138;
      sub_24099885C(&qword_27E50C628, MEMORY[0x277CC9260]);
      v61 = sub_240A2C62C();
      v62 = v56;
      v64 = v63;
      v65 = *(v22 + 8);
      v65(v62, v21);
      v66 = sub_240925464(v61, v64, &v81);

      *(v59 + 4) = v66;
      _os_log_impl(&dword_2408FE000, v57, v58, "Opening url: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x245CCDDB0](v60, -1, -1);
      MEMORY[0x245CCDDB0](v59, -1, -1);
    }

    else
    {

      v65 = *(v22 + 8);
      v65(v56, v21);
    }

    (*(v79 + 8))(v78, v80);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v68 = result;
      v69 = sub_240A2957C();
      sub_240926374(MEMORY[0x277D84F90]);
      v70 = sub_240A2BE9C();

      [v68 openSensitiveURL:v69 withOptions:v70];

      return (v65)(v29, v21);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2409942F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_240A29DBC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240987234(v15);
  sub_240A2C05C();
  (*(v11 + 8))(v15, v10);
  sub_240A2C06C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_240A32540;
  v17 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  v18 = sub_240913AEC();
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 96) = v17;
  *(v16 + 104) = v18;
  *(v16 + 64) = v18;
  *(v16 + 72) = a3;
  *(v16 + 80) = a4;

  v19 = sub_240A2BF6C();
  v21 = v20;

  v26[0] = v19;
  v26[1] = v21;
  sub_24091C4F8();
  result = sub_240A2B9CC();
  *a5 = result;
  *(a5 + 8) = v23;
  *(a5 + 16) = v24 & 1;
  *(a5 + 24) = v25;
  return result;
}

uint64_t sub_2409944D0(uint64_t a1)
{
  v2 = type metadata accessor for SetupView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v10[0] = sub_240A2C06C();
  v10[1] = v6;
  sub_2409963A8(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SetupView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_240995610(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_24091C4F8();
  return sub_240A2BCCC();
}

uint64_t sub_24099461C(uint64_t a1)
{
  v2 = sub_240A2981C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v5 = sub_240A297DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for SetupView();
  v11 = (a1 + *(v10 + 88));
  v12 = *v11;
  v13 = *(v11 + 1);
  v17[16] = v12;
  v18 = v13;
  v17[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
  sub_240A2BC6C();
  v14 = sub_240A2976C();
  (*(*(v14 - 8) + 56))(v9, 6, 6, v14);
  v15 = *(v10 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  sub_240A297FC();
  return sub_240A2BC6C();
}

id sub_2409947AC()
{
  v0 = sub_240A2981C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_240A297DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v25 - v11;
  v13 = sub_240A295AC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2959C();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_240919300(v12, &qword_27E50C7E0, &qword_240A33150);
LABEL_5:
    v23 = sub_240A2976C();
    (*(*(v23 - 8) + 56))(v7, 6, 6, v23);
    v24 = *(type metadata accessor for SetupView() + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
    sub_240A2BC5C();
    sub_240A297FC();
    return sub_240A2BC6C();
  }

  (*(v14 + 32))(v18, v12, v13);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v20 = result;
    v21 = sub_240A2957C();
    sub_240926374(MEMORY[0x277D84F90]);
    v22 = sub_240A2BE9C();

    [v20 openSensitiveURL:v21 withOptions:v22];

    (*(v14 + 8))(v18, v13);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_240994AF8(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SetupView();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v27 = sub_240A2C06C();
  v28 = sub_240A2C01C();
  v5 = [objc_opt_self() systemRedColor];
  v6 = type metadata accessor for ProxCardViewController();
  v7 = objc_allocWithZone(v6);
  aBlock = 0xD00000000000002DLL;
  v32 = 0x8000000240A3D770;
  v33 = 0;
  LOBYTE(v34) = 0;
  v8 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v9 = sub_2409E0A0C(&aBlock);
  v10 = *&v9[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v5;
  v11 = v5;

  [*&v9[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v38.receiver = v7;
  v38.super_class = v6;
  v12 = objc_msgSendSuper2(&v38, sel_initWithContentView_, v9);
  [v12 setDismissalType_];
  v13 = sub_240A2BF1C();

  [v12 setTitle_];

  v14 = sub_240A2BF1C();

  [v12 setSubtitle_];

  v37 = 1;
  sub_240A2BD3C();
  v15 = v32;
  v28 = aBlock;
  LODWORD(v27) = v33;
  sub_240A2C06C();
  sub_2409963A8(v30, &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SetupView);
  v16 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v17 = swift_allocObject();
  sub_240995610(&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v19 = swift_allocObject();
  v19[2] = sub_240998AA4;
  v19[3] = v17;
  v19[4] = v18;
  v20 = v12;

  v21 = sub_240A2BF1C();

  v35 = sub_240998A78;
  v36 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_2409DFF20;
  v34 = &block_descriptor_195;
  v22 = _Block_copy(&aBlock);
  v23 = [objc_opt_self() actionWithTitle:v21 style:0 handler:v22];

  _Block_release(v22);

  v24 = [v20 addAction_];

  v25 = MEMORY[0x277D84F90];
  *a1 = v20;
  *(a1 + 8) = v25;
  *(a1 + 16) = v28;
  *(a1 + 24) = v15;
  *(a1 + 32) = v27;
}

void sub_240994F98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for SetupView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8, v13);
  sub_2409963A8(a3, aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SetupView);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  sub_240995610(aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  aBlock[4] = a5;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409EC704;
  aBlock[3] = a6;
  v16 = _Block_copy(aBlock);

  [a1 dismissViewControllerAnimated:1 completion:v16];
  _Block_release(v16);
}

uint64_t sub_240995118()
{
  v0 = sub_240A2981C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_240A297DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_240A2976C();
  (*(*(v8 - 8) + 56))(v7, 6, 6, v8);
  v9 = *(type metadata accessor for SetupView() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  sub_240A297FC();
  return sub_240A2BC6C();
}

uint64_t sub_240995260()
{
  v0 = sub_240A2981C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_240A297DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_240A2976C();
  (*(*(v8 - 8) + 56))(v7, 6, 6, v8);
  v9 = *(type metadata accessor for SetupView() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  sub_240A297FC();
  return sub_240A2BC6C();
}

uint64_t sub_24099540C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = sub_240A29DBC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v20 - v15;
  v17 = *(v8 + 16);
  v17(&v20 - v15, a1, v7);
  v18 = (v17)(v13, v16, v7);
  a5(v18);
  sub_240A2B54C();
  return (*(v8 + 8))(v16, v7);
}

uint64_t sub_240995564(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_240915E50;

  return sub_240987D08(a1, a2, v2);
}

uint64_t sub_240995610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_240995674(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SetupView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_24098D898(a1, a2, v6);
}

unint64_t sub_2409956F4()
{
  result = qword_27E50D080;
  if (!qword_27E50D080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D068, &qword_240A34920);
    sub_240995780();
    sub_240995B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D080);
  }

  return result;
}

unint64_t sub_240995780()
{
  result = qword_27E50D088;
  if (!qword_27E50D088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D090, &qword_240A34938);
    sub_24099580C();
    sub_240995A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D088);
  }

  return result;
}

unint64_t sub_24099580C()
{
  result = qword_27E50D098;
  if (!qword_27E50D098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D0A0, &qword_240A34940);
    sub_2409958C8();
    sub_24099885C(&qword_27E50CA58, type metadata accessor for DiscoveryView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D098);
  }

  return result;
}

unint64_t sub_2409958C8()
{
  result = qword_27E50D0A8;
  if (!qword_27E50D0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D0B0, &qword_240A34948);
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40);
    sub_240995980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D0A8);
  }

  return result;
}

unint64_t sub_240995980()
{
  result = qword_27E50D0B8;
  if (!qword_27E50D0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D0C0, &qword_240A34950);
    sub_240996848(&qword_27E50D0C8, &qword_27E50D0D0, &qword_240A34958, sub_240936BEC);
    sub_240972938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D0B8);
  }

  return result;
}

unint64_t sub_240995A38()
{
  result = qword_27E50D0D8;
  if (!qword_27E50D0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D0E0, &qword_240A34960);
    sub_24099885C(&qword_27E50D0E8, type metadata accessor for AuthenticationView);
    sub_24099885C(&qword_27E50D0F0, type metadata accessor for SignInView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D0D8);
  }

  return result;
}

unint64_t sub_240995B24()
{
  result = qword_27E50D0F8;
  if (!qword_27E50D0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D100, &qword_240A34968);
    sub_240995BB0();
    sub_2409961EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D0F8);
  }

  return result;
}

unint64_t sub_240995BB0()
{
  result = qword_27E50D108;
  if (!qword_27E50D108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D110, &qword_240A34970);
    sub_240995C3C();
    sub_240995DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D108);
  }

  return result;
}

unint64_t sub_240995C3C()
{
  result = qword_27E50D118;
  if (!qword_27E50D118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D120, &qword_240A34978);
    sub_240995CF4();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D118);
  }

  return result;
}

unint64_t sub_240995CF4()
{
  result = qword_27E50D128;
  if (!qword_27E50D128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D130, &qword_240A34980);
    sub_240972938();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D128);
  }

  return result;
}

unint64_t sub_240995DAC()
{
  result = qword_27E50D138;
  if (!qword_27E50D138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D140, &qword_240A34988);
    sub_240972F80();
    sub_240995E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D138);
  }

  return result;
}

unint64_t sub_240995E38()
{
  result = qword_27E50D148;
  if (!qword_27E50D148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D150, &qword_240A34990);
    sub_240995EC4();
    sub_24099613C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D148);
  }

  return result;
}

unint64_t sub_240995EC4()
{
  result = qword_27E50D158;
  if (!qword_27E50D158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D160, &qword_240A34998);
    sub_240995F7C();
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D158);
  }

  return result;
}

unint64_t sub_240995F7C()
{
  result = qword_27E50D168;
  if (!qword_27E50D168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D170, &qword_240A349A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D178, &qword_240A349A8);
    sub_24091C4F8();
    sub_24091CE28(&qword_27E50D180, &qword_27E50D178, &qword_240A349A8);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D8A0, &unk_240A32240);
    sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D168);
  }

  return result;
}

unint64_t sub_24099613C()
{
  result = qword_27E50D188;
  if (!qword_27E50D188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D190, &qword_240A349B0);
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D188);
  }

  return result;
}

unint64_t sub_2409961EC()
{
  result = qword_27E50D198;
  if (!qword_27E50D198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D1A0, &qword_240A349B8);
    sub_240996278();
    sub_240972938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D198);
  }

  return result;
}

unint64_t sub_240996278()
{
  result = qword_27E50D1A8;
  if (!qword_27E50D1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D1B0, &qword_240A349C0);
    sub_24091CE28(&qword_27E50D1B8, &qword_27E50D1C0, &qword_240A349C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D1A8);
  }

  return result;
}

uint64_t sub_240996348()
{
  v1 = *(type metadata accessor for SetupView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24099302C(v2);
}

uint64_t sub_2409963A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_240996454()
{
  sub_240919DC0();
  if (v0 <= 0x3F)
  {
    sub_240A2A1DC();
    if (v1 <= 0x3F)
    {
      sub_240A29DEC();
      if (v2 <= 0x3F)
      {
        sub_2409967F4(319, &qword_27E50C0D8, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_240996790(319, &qword_27E50D260, MEMORY[0x277CED360], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_24099673C(319, &qword_27E50D268, &qword_27E50C700, &unk_240A32F50);
            if (v5 <= 0x3F)
            {
              sub_24099673C(319, &qword_27E50D270, &unk_27E50C710, &qword_240A35AF0);
              if (v6 <= 0x3F)
              {
                sub_240996790(319, &qword_27E50C9F8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_240996790(319, &qword_27E50BD80, MEMORY[0x277CED648], MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
                  {
                    sub_240996790(319, &unk_27E50BD88, type metadata accessor for AKUserAgeRange, MEMORY[0x277CDF468]);
                    if (v9 <= 0x3F)
                    {
                      sub_2409967F4(319, &qword_27E50B5F8, MEMORY[0x277CDF468]);
                      if (v10 <= 0x3F)
                      {
                        sub_2409306A4();
                        if (v11 <= 0x3F)
                        {
                          sub_2409967F4(319, &qword_27E50B580, MEMORY[0x277CE11F8]);
                          if (v12 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_24099673C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_240A2BC8C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_240996790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2409967F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_240996848(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2409968CC()
{
  result = qword_27E50D280;
  if (!qword_27E50D280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D1F0, &qword_240A34A18);
    sub_240996984();
    sub_24091CE28(&qword_27E50D2B8, &qword_27E50D2C0, &qword_240A34BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D280);
  }

  return result;
}

unint64_t sub_240996984()
{
  result = qword_27E50D288;
  if (!qword_27E50D288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D1E8, &qword_240A34A10);
    sub_240996A3C();
    sub_24091CE28(&qword_27E50D2A8, &qword_27E50D2B0, &qword_240A34BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D288);
  }

  return result;
}

unint64_t sub_240996A3C()
{
  result = qword_27E50D290;
  if (!qword_27E50D290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D1E0, &qword_240A349E0);
    sub_240996AF4();
    sub_24091CE28(&qword_27E50CBD8, &qword_27E50CBE0, &qword_240A33A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D290);
  }

  return result;
}

unint64_t sub_240996AF4()
{
  result = qword_27E50D298;
  if (!qword_27E50D298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D1D8, &qword_240A349D8);
    sub_240996BAC();
    sub_24091CE28(&qword_27E50BE60, &qword_27E50BE68, &qword_240A31CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D298);
  }

  return result;
}

unint64_t sub_240996BAC()
{
  result = qword_27E50D2A0;
  if (!qword_27E50D2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D1D0, &qword_240A349D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D070, &qword_240A34928);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D068, &qword_240A34920);
    sub_240A2981C();
    sub_2409956F4();
    sub_24099885C(&qword_27E50D1C8, MEMORY[0x277CED360]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24091CE28(&qword_27E50CBD8, &qword_27E50CBE0, &qword_240A33A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D2A0);
  }

  return result;
}

uint64_t sub_240996DE8()
{
  v2 = *(type metadata accessor for SetupView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_240916360;

  return sub_240988468();
}

uint64_t sub_240996ED8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240916360;

  return sub_240988FE8(a1);
}

BOOL sub_240996F78(uint64_t a1, char a2)
{
  v4 = sub_240A2976C();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D2E0, &qword_240A34C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6F0, &unk_240A32F40);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v45 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v45 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26, v28);
  v30 = (&v45 - v29);
  if ((a2 & 1) == 0)
  {
    return 1;
  }

  sub_240919298(a1, &v45 - v29, &qword_27E50C6E0, &qword_240A32F18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v38 = &qword_27E50C6E0;
    v39 = &qword_240A32F18;
    v40 = v30;
LABEL_10:
    sub_240919300(v40, v38, v39);
    return 1;
  }

  v48 = *v30;
  v31 = v48;
  v32 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
  v33 = swift_dynamicCast();
  v34 = v47;
  v35 = *(v47 + 56);
  v35(v25, v33 ^ 1u, 1, v4);
  (*(v34 + 104))(v22, *MEMORY[0x277CED270], v4);
  v35(v22, 0, 1, v4);
  v36 = *(v8 + 48);
  sub_240919298(v25, v12, &unk_27E50C6F0, &unk_240A32F40);
  sub_240919298(v22, &v12[v36], &unk_27E50C6F0, &unk_240A32F40);
  v37 = *(v34 + 48);
  if (v37(v12, 1, v4) == 1)
  {
    sub_240919300(v22, &unk_27E50C6F0, &unk_240A32F40);

    if (v37(&v12[v36], 1, v4) == 1)
    {
      sub_240919300(v12, &unk_27E50C6F0, &unk_240A32F40);
      sub_240919300(v25, &unk_27E50C6F0, &unk_240A32F40);
      return 0;
    }

    goto LABEL_9;
  }

  sub_240919298(v12, v18, &unk_27E50C6F0, &unk_240A32F40);
  if (v37(&v12[v36], 1, v4) == 1)
  {
    sub_240919300(v22, &unk_27E50C6F0, &unk_240A32F40);

    (*(v34 + 8))(v18, v4);
LABEL_9:
    sub_240919300(v12, &qword_27E50D2E0, &qword_240A34C00);
    v38 = &unk_27E50C6F0;
    v39 = &unk_240A32F40;
    v40 = v25;
    goto LABEL_10;
  }

  v42 = v46;
  (*(v34 + 32))(v46, &v12[v36], v4);
  sub_24099885C(&qword_27E50D2E8, MEMORY[0x277CED2E0]);
  v43 = sub_240A2BF0C();

  v44 = *(v34 + 8);
  v44(v42, v4);
  sub_240919300(v22, &unk_27E50C6F0, &unk_240A32F40);
  v44(v18, v4);
  sub_240919300(v12, &unk_27E50C6F0, &unk_240A32F40);
  sub_240919300(v25, &unk_27E50C6F0, &unk_240A32F40);
  return (v43 & 1) == 0;
}

uint64_t sub_2409974DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24099754C()
{
  v1 = *(type metadata accessor for SetupView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18) - 8);
  v5 = *(v0 + v2 + 24);
  return (*(v0 + v2 + 16))(v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24099763C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for SetupView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_24098A440(a1, a2, a3, v8);
}

uint64_t sub_2409976C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2409976EC()
{
  v2 = *(type metadata accessor for SetupView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_240915E50;

  return sub_240988468();
}

uint64_t sub_240997820()
{
  v0 = sub_240A29B5C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C790, &unk_240A35770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C770, &qword_240A330D8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v27 - v14;
  sub_240A2978C();
  sub_240A29B4C();
  (*(v1 + 8))(v5, v0);
  v16 = sub_240A29A0C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    v18 = &unk_27E50C790;
    v19 = &unk_240A35770;
    v20 = v10;
LABEL_5:
    sub_240919300(v20, v18, v19);
    return sub_240A2C01C();
  }

  sub_240A2990C();
  (*(v17 + 8))(v10, v16);
  v21 = sub_240A298DC();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v15, 1, v21) == 1)
  {
    v18 = &unk_27E50C770;
    v19 = &qword_240A330D8;
    v20 = v15;
    goto LABEL_5;
  }

  v24 = sub_240A298CC();
  (*(v22 + 8))(v15, v21);
  if (v24)
  {
    v25 = [v24 firstName];

    if (v25)
    {
      v26 = sub_240A2BF4C();

      return v26;
    }
  }

  return sub_240A2C01C();
}

uint64_t objectdestroy_66Tm()
{
  v1 = type metadata accessor for SetupView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 56);

  v11 = v0 + v3 + v1[9];
  v12 = sub_240A2981C();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080) + 28));

  v14 = v0 + v3 + v1[10];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  v17 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930) + 28));

  v18 = (v6 + v1[11]);
  if (*v18)
  {
    v19 = v18[1];
  }

  v20 = v18[2];

  v21 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_240A2B2AC();
    (*(*(v22 - 8) + 8))(v6 + v21, v22);
  }

  else
  {
    v23 = *(v6 + v21);
  }

  v24 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_240A29DBC();
    (*(*(v25 - 8) + 8))(v6 + v24, v25);
  }

  else
  {
    v26 = *(v6 + v24);
  }

  v27 = v1[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = sub_240A29DBC();
    (*(*(v28 - 8) + 8))(v6 + v27, v28);
  }

  else
  {
    v29 = *(v6 + v27);
  }

  sub_24090C1E4(*(v6 + v1[15]), *(v6 + v1[15] + 8));
  sub_24090C1E4(*(v6 + v1[16]), *(v6 + v1[16] + 8));
  sub_24090C1E4(*(v6 + v1[17]), *(v6 + v1[17] + 8));

  v30 = (v6 + v1[20]);
  v31 = *v30;

  v32 = v30[1];

  v33 = (v6 + v1[21]);
  v34 = *v33;

  v35 = v33[1];

  v36 = *(v6 + v1[22] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240997FF8(uint64_t a1)
{
  v4 = *(type metadata accessor for SetupView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_240916360;

  return sub_2409931F8(a1, v6, v7, v1 + v5);
}

id sub_2409981A4()
{
  v0 = *(*(type metadata accessor for SetupView() - 8) + 80);

  return sub_2409947AC();
}

id sub_240998288()
{
  v1 = *(type metadata accessor for SetupView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_240A2A21C() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_240993AAC(v0 + v2, v5);
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for SetupView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 56);

  v10 = v0 + v3 + v1[9];
  v11 = sub_240A2981C();
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080) + 28));

  v13 = v0 + v3 + v1[10];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v13, 1, v14))
  {
    (*(v15 + 8))(v13, v14);
  }

  v16 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930) + 28));

  v17 = (v5 + v1[11]);
  if (*v17)
  {
    v18 = v17[1];
  }

  v19 = v17[2];

  v20 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_240A2B2AC();
    (*(*(v21 - 8) + 8))(v5 + v20, v21);
  }

  else
  {
    v22 = *(v5 + v20);
  }

  v23 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_240A29DBC();
    (*(*(v24 - 8) + 8))(v5 + v23, v24);
  }

  else
  {
    v25 = *(v5 + v23);
  }

  v26 = v1[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_240A29DBC();
    (*(*(v27 - 8) + 8))(v5 + v26, v27);
  }

  else
  {
    v28 = *(v5 + v26);
  }

  sub_24090C1E4(*(v5 + v1[15]), *(v5 + v1[15] + 8));
  sub_24090C1E4(*(v5 + v1[16]), *(v5 + v1[16] + 8));
  sub_24090C1E4(*(v5 + v1[17]), *(v5 + v1[17] + 8));

  v29 = (v5 + v1[20]);
  v30 = *v29;

  v31 = v29[1];

  v32 = (v5 + v1[21]);
  v33 = *v32;

  v34 = v32[1];

  v35 = *(v5 + v1[22] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_2409987A8()
{
  result = qword_27E50D370;
  if (!qword_27E50D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D370);
  }

  return result;
}

uint64_t sub_2409987FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24099885C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2409988A4()
{
  result = qword_27E50D380;
  if (!qword_27E50D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D380);
  }

  return result;
}

unint64_t sub_2409988F8()
{
  result = qword_27E50D388;
  if (!qword_27E50D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D388);
  }

  return result;
}

unint64_t sub_24099894C()
{
  result = qword_27E50D390;
  if (!qword_27E50D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D390);
  }

  return result;
}

unint64_t sub_2409989A0()
{
  result = qword_27E50D398;
  if (!qword_27E50D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D398);
  }

  return result;
}

unint64_t sub_2409989F4()
{
  result = qword_27E50D3A0;
  if (!qword_27E50D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D3A0);
  }

  return result;
}

uint64_t sub_240998AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v19 - v12;
  v14 = *v2;
  sub_24099A9E8(v2 + *(a1 + 20), &v19 - v12);
  sub_24099A9E8(v13, v10);
  v15 = objc_allocWithZone(type metadata accessor for PasswordSignInViewWrapper.Coordinator(0));
  v16 = swift_retain_n();
  v17 = sub_24099AA58(v16, v10);

  sub_24099ABAC(v13);
  LOBYTE(a1) = sub_240A2B88C();
  result = sub_240A2B3AC();
  *a2 = v14;
  *(a2 + 8) = v17;
  *(a2 + 16) = result;
  *(a2 + 24) = a1;
  return result;
}

id sub_240998BC8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

uint64_t sub_240998BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24099B644();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_240998C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24099B644();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_240998C9C()
{
  sub_24099B644();
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_240998CC4(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v23 - v8;
  if (*(a2 + 16))
  {
    v10 = *&v2[OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_pendingAuthResults];
    *&v2[OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_pendingAuthResults] = a2;

    v11 = sub_240A2C24C();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    sub_240A2C21C();
    v12 = v2;
    v13 = a1;
    v14 = sub_240A2C20C();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v12;
    v15[5] = v13;
    sub_2409230D4(0, 0, v9, &unk_240A34DC0, v15);
  }

  else
  {
    v18 = *&v2[OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings];
    v20 = *(v18 + 24);
    v19 = *(v18 + 32);
    sub_240977EF8();
    v21 = swift_allocError();
    *v22 = 1;

    v20(v21, 1);
  }
}

uint64_t sub_240998EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = sub_240A2C21C();
  v5[4] = sub_240A2C20C();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_240998F6C;

  return sub_2409991C0(a5);
}

uint64_t sub_240998F6C(char a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 48) = a1;

  v6 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409990B0, v6, v5);
}

uint64_t sub_2409990B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  if ((v1 & 1) == 0)
  {
    v3 = *(v0 + 16);
    sub_24099A240();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2409991C0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_240A2B00C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = sub_240A2C21C();
  v2[15] = sub_240A2C20C();
  v6 = swift_task_alloc();
  v2[16] = v6;
  *v6 = v2;
  v6[1] = sub_2409992FC;

  return sub_240999D78();
}

uint64_t sub_2409992FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v9 = *v1;
  v2[17] = a1;

  v7 = sub_240A2C1BC();
  v2[18] = v7;
  v2[19] = v6;

  return MEMORY[0x2822009F8](sub_240999448, v7, v6);
}

uint64_t sub_240999448()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = *(*(v0[6] + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings) + 16);
  v4 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  *(v3 + v4) = v1;
  sub_240A2AE9C();
  v5 = sub_240A2AFFC();
  v6 = sub_240A2C28C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[17];
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v7;
    _os_log_impl(&dword_2408FE000, v5, v6, "Finding age-based flow for user age range: %lu", v8, 0xCu);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  v9 = v0[13];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[5];

  v13 = *(v11 + 8);
  v13(v9, v10);
  v14 = [v12 navigationController];
  v0[20] = v14;
  if (!v14)
  {
    v26 = v0[15];
    v27 = v0[9];

    sub_240A2AE9C();
    v28 = sub_240A2AFFC();
    v29 = sub_240A2C2AC();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[9];
    v32 = v0[7];
    if (v30)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2408FE000, v28, v29, "Missing navigation controller for age-based flow.", v33, 2u);
      MEMORY[0x245CCDDB0](v33, -1, -1);
    }

    v34 = v31;
    v35 = v32;
    goto LABEL_21;
  }

  v15 = v14;
  v16 = v0[17];
  if ((v16 - 1) >= 2)
  {
    if (v16)
    {
      if (v16 == 3)
      {
        v17 = v0[15];
        v18 = v0[12];

        sub_240A2AE9C();
        v19 = sub_240A2AFFC();
        v20 = sub_240A2C29C();
        v21 = os_log_type_enabled(v19, v20);
        v22 = v0[12];
        v23 = v0[7];
        if (v21)
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          v25 = "Age assurance feature is disabled. Skipping age-based flow.";
LABEL_19:
          _os_log_impl(&dword_2408FE000, v19, v20, v25, v24, 2u);
          MEMORY[0x245CCDDB0](v24, -1, -1);
        }
      }

      else
      {
        v42 = v0[15];
        v43 = v0[10];

        sub_240A2AE9C();
        v19 = sub_240A2AFFC();
        v20 = sub_240A2C29C();
        v44 = os_log_type_enabled(v19, v20);
        v22 = v0[10];
        v23 = v0[7];
        if (v44)
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          v25 = "Unknown default user age range. Skipping age-based flow.";
          goto LABEL_19;
        }
      }
    }

    else
    {
      v39 = v0[15];
      v40 = v0[11];

      sub_240A2AE9C();
      v19 = sub_240A2AFFC();
      v20 = sub_240A2C29C();
      v41 = os_log_type_enabled(v19, v20);
      v22 = v0[11];
      v23 = v0[7];
      if (v41)
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        v25 = "Unknown user age range. Skipping age-based flow.";
        goto LABEL_19;
      }
    }

    v34 = v22;
    v35 = v23;
LABEL_21:
    v13(v34, v35);
    v46 = v0[12];
    v45 = v0[13];
    v48 = v0[10];
    v47 = v0[11];
    v49 = v0[9];

    v50 = v0[1];

    return v50(0);
  }

  v36 = swift_task_alloc();
  v0[21] = v36;
  *v36 = v0;
  v36[1] = sub_240999888;
  v37 = v0[6];

  return sub_240999A60(v15);
}

uint64_t sub_240999888(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = a1;

  v4 = *(v2 + 152);
  v5 = *(v2 + 144);

  return MEMORY[0x2822009F8](sub_2409999B0, v5, v4);
}

uint64_t sub_2409999B0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);

  v3 = *(v0 + 176);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);

  v9 = *(v0 + 8);

  return v9(v3);
}

uint64_t sub_240999A60(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_240A2B00C();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  sub_240A2C21C();
  v2[12] = sub_240A2C20C();
  v7 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240999B54, v7, v6);
}

uint64_t sub_240999B54()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  sub_240A2AE9C();
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Starting safety settings flow", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v10 = *(v0 + 56);

  (*(v7 + 8))(v6, v9);
  v11 = objc_allocWithZone(sub_240A2AA3C());
  v12 = sub_240A2AA2C();
  v13 = *(*(v8 + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings) + 16);
  v14 = type metadata accessor for SafetySettingsViewController();
  v15 = objc_allocWithZone(v14);
  swift_unknownObjectWeakInit();
  *&v15[OBJC_IVAR___AISSafetySettingsViewController_progressHostingController] = 0;
  *&v15[OBJC_IVAR___AISSafetySettingsViewController_context] = v12;
  *&v15[OBJC_IVAR___AISSafetySettingsViewController_configuration] = v13;
  *(v0 + 40) = v15;
  *(v0 + 48) = v14;
  v16 = v12;
  v17 = v13;
  v18 = objc_msgSendSuper2((v0 + 40), sel_initWithNibName_bundle_, 0, 0);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  [v10 pushViewController:v18 animated:1];

  v19 = *(v0 + 8);

  return v19(1);
}

uint64_t sub_240999D78()
{
  v1[5] = v0;
  v2 = sub_240A2B00C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  sub_240A2C21C();
  v1[12] = sub_240A2C20C();
  v6 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240999E90, v6, v5);
}

uint64_t sub_240999E90()
{
  v1 = v0[12];
  v2 = v0[5];

  v3 = *(*(v2 + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings) + 16);
  v4 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5)
  {
LABEL_8:
    v25 = v0 + 8;
    v24 = v0[8];
    sub_240A2AE9C();
    v26 = sub_240A2AFFC();
    v27 = sub_240A2C29C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = v5;
      _os_log_impl(&dword_2408FE000, v26, v27, "Age range is: %lu", v28, 0xCu);
      MEMORY[0x245CCDDB0](v28, -1, -1);
    }

    v29 = v0[7];

    v13 = *(v29 + 8);
    goto LABEL_11;
  }

  v6 = v0[11];
  sub_240A2AE9C();
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C28C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2408FE000, v7, v8, "Age range is unknown... Fetching primary account for age range", v9, 2u);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  v10 = v0[11];
  v11 = v0[6];
  v12 = v0[7];

  v13 = *(v12 + 8);
  v13(v10, v11);
  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 primaryAuthKitAccount];
  if (v15)
  {
    v16 = v15;
    v17 = v0[10];
    v5 = [v14 userAgeRangeForAccount_];
    sub_240A2AE9C();
    v18 = sub_240A2AFFC();
    v19 = sub_240A2C28C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v5;
      _os_log_impl(&dword_2408FE000, v18, v19, "Found primary account's age range: %lu", v20, 0xCu);
      MEMORY[0x245CCDDB0](v20, -1, -1);
    }

    v21 = v0[10];
    v22 = v0[6];
    v23 = v0[7];

    v13(v21, v22);
    goto LABEL_8;
  }

  v25 = v0 + 9;
  v37 = v0[9];
  sub_240A2AE9C();
  v38 = sub_240A2AFFC();
  v39 = sub_240A2C29C();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[7];
  if (v40)
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_2408FE000, v38, v39, "No primary account found", v42, 2u);
    MEMORY[0x245CCDDB0](v42, -1, -1);
  }

  v5 = 0;
LABEL_11:
  v30 = *v25;
  v32 = v0[10];
  v31 = v0[11];
  v34 = v0[8];
  v33 = v0[9];
  v13(v30, v0[6]);

  v35 = v0[1];

  return v35(v5);
}

uint64_t sub_24099A240()
{
  if (*(v0 + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_pendingAuthResults))
  {

    sub_240A1EDA4(v1);

    v2 = objc_allocWithZone(sub_240A2AA9C());
    v3 = sub_240A2AA7C();
    v4 = *(v0 + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings);
    v5 = *(v4 + 24);
    v6 = *(v4 + 32);

    v5(v3, 0);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings);
    v9 = *(v7 + 24);
    v8 = *(v7 + 32);
    sub_240977EF8();
    v10 = swift_allocError();
    *v11 = 1;

    v9(v10, 1);
  }
}

void sub_24099A430(void *a1)
{
  v2 = v1;
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C29C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2408FE000, v10, v11, "signInControllerDidSelectChildSignIn", v12, 2u);
    MEMORY[0x245CCDDB0](v12, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  v13 = *(v2 + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_childSetupController);
  sub_240A09428(a1);
}

id sub_24099A6DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PasswordSignInViewWrapper.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24099A7B8()
{
  sub_24099A870();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_24099A870()
{
  if (!qword_27E50D510)
  {
    sub_240A2B33C();
    v0 = sub_240A2BD4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50D510);
    }
  }
}

uint64_t sub_24099A910(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24099A948()
{
  type metadata accessor for AISSignInSettings();
  if (v0 <= 0x3F)
  {
    sub_24099A870();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24099A9E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_24099AA58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_pendingAuthResults] = 0;
  v6 = OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_featureManager;
  sub_240A2A12C();
  *&v2[v6] = sub_240A2A11C();
  *&v2[OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings] = a1;
  sub_24099A9E8(a2, &v2[OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator__navigationPath]);
  v7 = objc_opt_self();

  result = [v7 defaultStore];
  if (result)
  {
    v9 = result;
    v10 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

    v11 = objc_allocWithZone(type metadata accessor for SignInOptionChildSetupController());

    v13 = sub_240A0B5C4(v12, v10, 0);

    *&v3[OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_childSetupController] = v13;
    v15.receiver = v3;
    v15.super_class = type metadata accessor for PasswordSignInViewWrapper.Coordinator(0);
    v14 = objc_msgSendSuper2(&v15, sel_init);
    sub_24099ABAC(a2);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24099ABAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24099AC14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_240915E50;

  return sub_240998EAC(a1, v4, v5, v7, v6);
}

id sub_24099ACD4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CECAC8]) init];
  v4 = *(a2 + 16);
  v5 = (v4 + OBJC_IVAR___AISAppleIDSignInConfiguration_username);
  swift_beginAccess();
  if (v5[1])
  {
    v6 = *v5;

    v7 = sub_240A2BF1C();
  }

  else
  {
    v7 = 0;
  }

  [v3 setUsername_];

  v8 = OBJC_IVAR___AISAppleIDSignInConfiguration_canEditUsername;
  swift_beginAccess();
  [v3 setCanEditUsername_];
  v9 = OBJC_IVAR___AISAppleIDSignInConfiguration_allowSkip;
  swift_beginAccess();
  [v3 setAllowSkip_];
  v10 = OBJC_IVAR___AISAppleIDSignInConfiguration_shouldShowSystemBackButton;
  swift_beginAccess();
  [v3 setShouldShowSystemBackButton_];
  v11 = OBJC_IVAR___AISAppleIDSignInConfiguration_serviceTypes;
  swift_beginAccess();
  v12 = *(v4 + v11);
  type metadata accessor for AIDAServiceType(0);

  v13 = sub_240A2C15C();

  [v3 setServiceTypes_];

  [v3 setShowsChildSignIn_];
  v14 = OBJC_IVAR___AISAppleIDSignInConfiguration_privacyLinkIdentifiers;
  swift_beginAccess();
  v15 = *(v4 + v14);

  v16 = sub_240A2C15C();

  [v3 setPrivacyLinkIdentifiers_];

  [v3 setShouldDisableAccountCreation_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D558, qword_240A34E98);
  sub_240A2B81C();
  [v3 setDelegate_];

  sub_240A2B81C();
  [v3 setCdpDelegate_];

  return v3;
}

uint64_t sub_24099AF8C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v21 - v5;
  v7 = sub_240A2B33C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator__navigationPath;
  sub_24099A9E8(v0 + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator__navigationPath, v6);
  MEMORY[0x245CCC9B0](v2);
  sub_24099ABAC(v6);
  v14 = sub_240A2B31C();
  (*(v8 + 8))(v12, v7);
  if (v14)
  {
    v15 = *(v1 + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings);
    v17 = *(v15 + 24);
    v16 = *(v15 + 32);
    sub_240977EF8();
    v18 = swift_allocError();
    *v19 = 2;

    v17(v18, 1);
  }

  else
  {
    sub_24099A9E8(v1 + v13, v6);
    MEMORY[0x245CCC9B0](v2);
    sub_240A2B2FC();
    sub_240A2BCFC();
    return sub_24099ABAC(v6);
  }
}

uint64_t sub_24099B18C(void *a1, void *a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v39 - v16;
  if (a2)
  {
    v18 = a2;
    sub_240A2AE9C();
    v19 = a2;
    v20 = sub_240A2AFFC();
    v21 = sub_240A2C2AC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v41 = v5;
      v23 = v22;
      v40 = swift_slowAlloc();
      v42 = v40;
      *v23 = 136315138;
      swift_getErrorValue();
      v24 = sub_240A2C6CC();
      v26 = sub_240925464(v24, v25, &v42);

      *(v23 + 4) = v26;
      _os_log_impl(&dword_2408FE000, v20, v21, "Safety settings completed with error: %s", v23, 0xCu);
      v27 = v40;
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x245CCDDB0](v27, -1, -1);
      v28 = v23;
      v5 = v41;
      MEMORY[0x245CCDDB0](v28, -1, -1);
    }

    else
    {
    }

    v34 = *(v5 + 8);
    v34(v17, v4);
  }

  else
  {
    sub_240A2AE9C();
    v29 = a1;
    v30 = sub_240A2AFFC();
    v31 = sub_240A2C28C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67109120;
      v33 = a1 && ([v29 isSafetySettingsApplied]& 1) != 0;
      *(v32 + 4) = v33;

      _os_log_impl(&dword_2408FE000, v30, v31, "Safety settings completed successfully. Applied: %{BOOL}d", v32, 8u);
      MEMORY[0x245CCDDB0](v32, -1, -1);
    }

    else
    {

      v30 = v29;
    }

    v34 = *(v5 + 8);
    v34(v14, v4);
  }

  sub_24099A240();
  sub_240A2AE9C();
  v35 = sub_240A2AFFC();
  v36 = sub_240A2C28C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2408FE000, v35, v36, "Safety settings flow finished and sign-in completed", v37, 2u);
    MEMORY[0x245CCDDB0](v37, -1, -1);
  }

  return (v34)(v10, v4);
}

unint64_t sub_24099B560()
{
  result = qword_27E50D540;
  if (!qword_27E50D540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D548, &qword_240A34DC8);
    sub_24099B5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D540);
  }

  return result;
}

unint64_t sub_24099B5EC()
{
  result = qword_27E50D550;
  if (!qword_27E50D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D550);
  }

  return result;
}

unint64_t sub_24099B644()
{
  result = qword_27E50D560;
  if (!qword_27E50D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D560);
  }

  return result;
}

uint64_t sub_24099B6C4()
{
  type metadata accessor for SignInOptionCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D6C0, &qword_240A34F48);
  result = sub_240A2BF9C();
  qword_27E50D5D0 = result;
  *algn_27E50D5D8 = v1;
  return result;
}

id sub_24099B718()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_appleIDLogoMicaView;
  *&v0[OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_appleIDLogoMicaView] = 0;
  *&v0[OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v0[OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_viewModel];
  v4 = sub_240A2C06C();
  v6 = v5;
  v7 = sub_240A2C06C();
  v9 = v8;
  v10 = sub_24099CAF8();
  *v3 = v4;
  v3[1] = v6;
  v3[2] = v7;
  v3[3] = v9;
  v3[4] = 0x6F6C2E656C707061;
  v3[5] = 0xEA00000000006F67;
  v3[6] = v10;
  type metadata accessor for AISAppleIDMicaView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = *&v0[v2];
  *&v0[v2] = v11;

  v13 = *v3;
  v14 = v3[1];

  v15 = sub_240A2BF1C();

  v16 = v3[2];
  v17 = v3[3];

  v18 = sub_240A2BF1C();

  v22.receiver = v0;
  v22.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v22, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v15, v18, 0, 1);

  v20 = v19;
  sub_24099B8D0();
  [v20 setModalInPresentation_];

  return v20;
}

void sub_24099B8D0()
{
  v1 = v0;
  v2 = sub_240A2974C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x277CED220], v2);
  v8 = sub_240A2973C();
  (*(v3 + 8))(v7, v2);
  v9 = 0x277D37650;
  if (v8)
  {
    v9 = 0x277D37638;
  }

  v10 = *v9;
  if (v8)
  {
    v11 = &selRef_accessoryButton;
  }

  else
  {
    v11 = &selRef_linkButton;
  }

  if (v8)
  {
    v12 = &selRef_headerView;
  }

  else
  {
    v12 = &selRef_buttonTray;
  }

  if (v8)
  {
    v13 = &selRef_addAccessoryButton_;
  }

  else
  {
    v13 = &selRef_addButton_;
  }

  v14 = [objc_opt_self() *v11];
  sub_240A2C06C();
  v15 = sub_240A2BF1C();

  [v14 setTitle:v15 forState:0];

  [v14 addTarget:v1 action:sel_createAccountAction forControlEvents:64];
  v16 = sub_240A2BF1C();
  [v14 setAccessibilityIdentifier_];

  v17 = [v1 *v12];
  [v17 *v13];
}

void sub_24099BB10()
{
  v50.receiver = v0;
  v50.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v50, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v2 = v1;
  v3 = sub_240A2BF1C();
  [v2 setAccessibilityIdentifier_];

  v4 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTableView_];

  v5 = [v0 tableView];
  if (!v5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  v7 = [v0 tableView];
  if (!v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = v7;
  [v7 setRowHeight_];

  v9 = [v0 tableView];
  if (!v9)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = v9;
  [v9 setEstimatedRowHeight_];

  v11 = [v0 tableView];
  if (!v11)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = v11;
  v13 = [objc_opt_self() systemBackgroundColor];
  [v12 setBackgroundColor_];

  v14 = [v0 tableView];
  if (!v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = v14;
  type metadata accessor for SignInOptionCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (qword_27E50AF60 != -1)
  {
    swift_once();
  }

  v17 = sub_240A2BF1C();
  [v15 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v17];

  v18 = [v0 tableView];
  if (!v18)
  {
    goto LABEL_27;
  }

  v19 = v18;
  [v18 setDataSource_];

  v20 = [v0 tableView];
  if (!v20)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v21 = v20;
  [v20 setDelegate_];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v23 = v22;
  [v22 layoutIfNeeded];

  type metadata accessor for AISAppleIDMicaView();
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_appleIDLogoMicaView;
  v26 = *&v0[OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_appleIDLogoMicaView];
  *&v0[OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_appleIDLogoMicaView] = v24;

  v27 = *&v0[v25];
  if (v27)
  {
    [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v28 = [v0 headerView];
  v29 = [v28 animationView];

  if (v29)
  {
    v30 = *&v0[v25];
    if (v30)
    {
      v31 = v30;
      v32 = [v0 headerView];
      v33 = [v32 animationView];

      if (v33)
      {
        [v33 addSubview_];
      }

      v34 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_240A33530;
      v36 = v31;
      v37 = [v36 topAnchor];
      v38 = v29;
      v39 = [v38 topAnchor];
      v40 = [v37 constraintEqualToAnchor:v39 constant:0.0];

      *(v35 + 32) = v40;
      v41 = [v36 bottomAnchor];
      v42 = [v38 bottomAnchor];
      v43 = [v41 constraintEqualToAnchor:v42 constant:0.0];

      *(v35 + 40) = v43;
      v44 = [v36 leadingAnchor];
      v45 = [v38 leadingAnchor];
      v46 = [v44 constraintEqualToAnchor:v45 constant:0.0];

      *(v35 + 48) = v46;
      v47 = [v36 trailingAnchor];

      v48 = [v38 trailingAnchor];
      v49 = [v47 constraintEqualToAnchor:v48 constant:0.0];

      *(v35 + 56) = v49;
      sub_24092F234();
      v29 = sub_240A2C15C();

      [v34 activateConstraints_];
    }
  }
}

uint64_t sub_24099C2EC()
{
  v0 = sub_240A2B00C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C29C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "Create account tapped", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  (*(v1 + 8))(v5, v0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(result + OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_createAccountActionHandler);
    v10 = *(result + OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_createAccountActionHandler + 8);

    v11(v12);
    swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_24099C4DC(void *a1)
{
  if (qword_27E50AF60 != -1)
  {
    swift_once();
  }

  v3 = sub_240A2BF1C();
  v4 = sub_240A2963C();
  v5 = [a1 dequeueReusableCellWithIdentifier:v3 forIndexPath:v4];

  type metadata accessor for SignInOptionCell();
  v6 = swift_dynamicCastClassUnconditional();
  v7 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_viewModel + 48);
  result = sub_240A2965C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v7 + 16))
  {
    sub_240A0FF20(*(v7 + result + 32));
    v9 = v5;
    [v6 setAccessoryType_];
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 secondarySystemBackgroundColor];
    [v6 setBackgroundColor_];

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_24099C774(void *a1)
{
  v3 = sub_240A2963C();
  [a1 deselectRowAtIndexPath:v3 animated:1];

  v4 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_viewModel + 48);
  result = sub_240A2965C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (result >= *(v4 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = *(v4 + result + 32);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2409D0A9C(v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_24099C958()
{
  v0 = sub_240A2966C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2964C();
  v6 = *MEMORY[0x277D76F30];
  (*(v1 + 8))(v5, v0);
  return v6;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24099CA54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24099CA9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_24099CAF8()
{
  if ([objc_opt_self() isProxAuthEnabled])
  {
    v0 = sub_240937AB8(0, 1, 1, MEMORY[0x277D84F90]);
    v2 = *(v0 + 2);
    v1 = *(v0 + 3);
    if (v2 >= v1 >> 1)
    {
      v0 = sub_240937AB8((v1 > 1), v2 + 1, 1, v0);
    }

    *(v0 + 2) = v2 + 1;
    v0[v2 + 32] = 0;
  }

  else
  {
    v0 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = sub_240937AB8(0, *(v0 + 2) + 1, 1, v0);
  }

  v4 = *(v0 + 2);
  v3 = *(v0 + 3);
  if (v4 >= v3 >> 1)
  {
    v0 = sub_240937AB8((v3 > 1), v4 + 1, 1, v0);
  }

  *(v0 + 2) = v4 + 1;
  v0[v4 + 32] = 1;
  return v0;
}

uint64_t AuthenticationView.init(model:skipAction:remoteRole:role:serverDeviceModel:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v34 = a5;
  v35 = a6;
  v36 = a4;
  v11 = sub_240A2975C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AuthenticationView();
  v18 = v17[7];
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50F540, &unk_240A34F50);
  sub_240A2BC4C();
  *(a7 + v18) = v38;
  v19 = v17[8];
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D6F0, &qword_240A34B08);
  sub_240A2BC4C();
  *(a7 + v19) = v38;
  v20 = v17[9];
  v37 = 0;
  sub_240A2BC4C();
  *(a7 + v20) = v38;
  v21 = a7 + v17[12];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = a7 + v17[13];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v17[14];
  *&v38 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D248, &unk_240A34FB0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(a7 + v23) = sub_240A2AF1C();
  sub_240919298(a1, a7 + v17[5], &qword_27E50D700, &qword_240A34A50);
  v27 = (a7 + v17[6]);
  v28 = v35;
  *v27 = v34;
  v27[1] = v28;
  *a7 = a2;
  LOBYTE(v37) = v36 & 1;
  v29 = a2;
  sub_240A2BC4C();
  v30 = *(&v38 + 1);
  v31 = a7 + v17[10];
  *v31 = v38;
  *(v31 + 1) = v30;
  (*(v12 + 16))(v16, a3, v11);
  v32 = a7 + v17[11];
  sub_240A2BC4C();

  (*(v12 + 8))(a3, v11);
  return sub_240919300(a1, &qword_27E50D700, &qword_240A34A50);
}

uint64_t type metadata accessor for AuthenticationView()
{
  result = qword_27E50D8B8;
  if (!qword_27E50D8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24099CF18()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50D6D0);
  __swift_project_value_buffer(v0, qword_27E50D6D0);
  return sub_240A2AE7C();
}

uint64_t sub_24099CF64()
{
  v1 = sub_240A2B52C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0 + *(type metadata accessor for AuthenticationView() + 52);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_240A2C2BC();
    v9 = sub_240A2B84C();
    sub_240A2AFEC();

    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24090C1E4(v8, 0);
    (*(v2 + 8))(v6, v1);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t AuthenticationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v1 = sub_240A2A8FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240A2A9AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D708, &unk_240A34FC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v21 - v16;
  sub_24099D338(v21 - v16);
  v18 = *(type metadata accessor for AuthenticationView() + 20);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0](v19);
  sub_240A2A90C();
  (*(v8 + 8))(v12, v7);
  sub_24099E36C();
  sub_24099EC88(&qword_27E50D8B0, MEMORY[0x277CEDC88]);
  sub_240A2BAFC();
  (*(v2 + 8))(v6, v1);
  return sub_240905D98(v17);
}

uint64_t sub_24099D338@<X0>(uint64_t a1@<X8>)
{
  v92 = a1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B8, &qword_240A35230);
  v2 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83, v3);
  v82 = &v73 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v81 = &v73 - v8;
  v80 = sub_240A2A8EC();
  v79 = *(v80 - 8);
  v9 = *(v79 + 64);
  MEMORY[0x28223BE20](v80, v10);
  v78 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D738, &qword_240A34FD8);
  v12 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90, v13);
  v86 = &v73 - v14;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9C0, &qword_240A35238);
  v85 = *(v91 - 8);
  v15 = *(v85 + 64);
  MEMORY[0x28223BE20](v91, v16);
  v84 = &v73 - v17;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9C8, &qword_240A35240);
  v18 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87, v19);
  v89 = &v73 - v20;
  v21 = type metadata accessor for AuthenticationView();
  v22 = v21 - 8;
  v74 = *(v21 - 8);
  v23 = *(v74 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v75 = v25;
  v76 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D720, &unk_240A337B0);
  v26 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88, v27);
  v77 = &v73 - v28;
  v29 = sub_240A2A6FC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_240A2A9AC();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35, v38);
  v40 = &v73 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v22 + 28);
  v93 = v1;
  v73 = v5;
  MEMORY[0x245CCC9B0](v5);
  sub_240A2A76C();
  v42 = *(v36 + 8);
  v42(v40, v35);
  v43 = sub_240A2A6CC();
  v44 = *(v30 + 8);
  v44(v34, v29);
  if (v43)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
    sub_240974954();
    v45 = v77;
    sub_240A2B21C();
    v46 = v76;
    sub_2409AC4E4(v93, v76, type metadata accessor for AuthenticationView);
    v47 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v48 = swift_allocObject();
    sub_2409AC3A4(v46, v48 + v47);
    v49 = v89;
    v50 = (v45 + *(v88 + 36));
    *v50 = sub_2409AC408;
    v50[1] = v48;
    v50[2] = 0;
    v50[3] = 0;
    sub_240919298(v45, v49, &unk_27E50D720, &unk_240A337B0);
    swift_storeEnumTagMultiPayload();
    sub_240972F80();
    v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    v52 = sub_24099E490();
    v53 = sub_24091C4F8();
    v54 = sub_24099EBA0();
    v94 = v90;
    v95 = MEMORY[0x277D837D0];
    v96 = v51;
    v97 = MEMORY[0x277CE0BD8];
    v98 = v52;
    v99 = v53;
    v100 = v54;
    v101 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    return sub_240919300(v45, &unk_27E50D720, &unk_240A337B0);
  }

  else
  {
    v77 = v29;
    sub_2409A0060(v86);
    MEMORY[0x245CCC9B0](v73);
    sub_240A2A76C();
    v42(v40, v35);
    v56 = v78;
    sub_240A2A69C();
    v44(v34, v77);
    v57 = sub_240A2A8CC();
    v59 = v58;
    v77 = v58;
    (*(v79 + 8))(v56, v80);
    v102 = v57;
    v103 = v59;
    v60 = v81;
    sub_240A2BD1C();
    swift_getKeyPath();
    v61 = v82;
    sub_240A2BD0C();

    sub_240919300(v60, &qword_27E50D700, &qword_240A34A50);
    swift_getKeyPath();
    sub_240A2BD0C();

    v62 = sub_240919300(v61, &qword_27E50D9B8, &qword_240A35230);
    v64 = MEMORY[0x28223BE20](v62, v63);
    MEMORY[0x28223BE20](v64, v65);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D740, &qword_240A34FE0);
    v93 = sub_24099E490();
    v66 = sub_24091C4F8();
    v72 = sub_24099EBA0();
    v67 = v90;
    v68 = v84;
    v69 = v86;
    sub_240A2BA9C();

    sub_240919300(v69, &qword_27E50D738, &qword_240A34FD8);
    v70 = v85;
    v71 = v91;
    (*(v85 + 16))(v89, v68, v91);
    swift_storeEnumTagMultiPayload();
    sub_240972F80();
    v94 = v67;
    v95 = MEMORY[0x277D837D0];
    v96 = v83;
    v97 = MEMORY[0x277CE0BD8];
    v98 = v93;
    v99 = v66;
    v100 = v72;
    v101 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    return (*(v70 + 8))(v68, v71);
  }
}

uint64_t sub_24099DD64(void (*a1)(char *, uint64_t), char *a2)
{
  v4 = sub_240A2A8AC();
  v80 = *(v4 - 8);
  v81 = v4;
  v5 = *(v80 + 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v68 - v11;
  v13 = sub_240A2A8FC();
  v14 = *(v13 - 8);
  v77 = v14;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v74 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v78 = &v68 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v68 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v68 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v68 - v31;
  if (qword_27E50AF68 != -1)
  {
    swift_once();
  }

  v33 = sub_240A2B00C();
  __swift_project_value_buffer(v33, qword_27E50D6D0);
  v82 = v14;
  v34 = *(v14 + 16);
  v79 = a1;
  v35 = a1;
  v36 = v34;
  v34(v32, v35, v13);
  v34(v29, a2, v13);
  v37 = sub_240A2AFFC();
  v73 = sub_240A2C29C();
  v38 = os_log_type_enabled(v37, v73);
  v75 = a2;
  v76 = v12;
  v72 = v9;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v83 = v71;
    *v39 = 136315394;
    v36(v25, v32, v13);
    v40 = sub_240A2BF9C();
    v69 = v36;
    v70 = v37;
    v41 = v40;
    v43 = v42;
    v44 = *(v82 + 8);
    v44(v32, v13);
    v45 = sub_240925464(v41, v43, &v83);

    *(v39 + 4) = v45;
    *(v39 + 12) = 2080;
    v46 = v69;
    v69(v25, v29, v13);
    v47 = sub_240A2BF9C();
    v49 = v48;
    v44(v29, v13);
    v50 = sub_240925464(v47, v49, &v83);
    v51 = v80;

    *(v39 + 14) = v50;
    v52 = v70;
    _os_log_impl(&dword_2408FE000, v70, v73, "Auth: onChange, oldValue: %s, newValue: %s", v39, 0x16u);
    v53 = v71;
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v53, -1, -1);
    MEMORY[0x245CCDDB0](v39, -1, -1);

    v54 = v82;
    v36 = v46;
  }

  else
  {

    v54 = v82;
    v44 = *(v82 + 8);
    v44(v29, v13);
    v44(v32, v13);
    v51 = v80;
  }

  v55 = v78;
  v36(v78, v79, v13);
  v56 = *(v54 + 88);
  v57 = v56(v55, v13);
  if (v57 != *MEMORY[0x277CEDC70])
  {
    return (v44)(v55, v13);
  }

  v58 = v57;
  v59 = *(v54 + 96);
  v82 = v54 + 96;
  v79 = v59;
  v80 = v44;
  v59(v55, v13);
  v60 = v76;
  v78 = *(v51 + 4);
  (v78)(v76, v55, v81);
  v61 = v74;
  v36(v74, v75, v13);
  if (v56(v61, v13) == v58)
  {
    v79(v61, v13);
    v62 = v72;
    (v78)(v72, v61, v81);
    sub_240A2A87C();
    if (v63)
    {
      sub_240A2A87C();
    }

    v64 = *(v51 + 1);
    v65 = v62;
    v66 = v81;
    v64(v65, v81);
    return (v64)(v60, v66);
  }

  else
  {
    (*(v51 + 1))(v60, v81);
    return (v80)(v61, v13);
  }
}

unint64_t sub_24099E36C()
{
  result = qword_27E50D710;
  if (!qword_27E50D710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D708, &unk_240A34FC0);
    sub_240972F80();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D738, &qword_240A34FD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    sub_24099E490();
    sub_24091C4F8();
    sub_24099EBA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D710);
  }

  return result;
}

unint64_t sub_24099E490()
{
  result = qword_27E50D748;
  if (!qword_27E50D748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D738, &qword_240A34FD8);
    sub_24099E51C();
    sub_24099E9E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D748);
  }

  return result;
}

unint64_t sub_24099E51C()
{
  result = qword_27E50D750;
  if (!qword_27E50D750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D758, &qword_240A34FE8);
    sub_24099E5A8();
    sub_24099E6E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D750);
  }

  return result;
}

unint64_t sub_24099E5A8()
{
  result = qword_27E50D760;
  if (!qword_27E50D760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D768, &qword_240A34FF0);
    sub_24099E798(&qword_27E50D770, &qword_27E50D778, &qword_240A34FF8, sub_2409369EC);
    sub_24099EA98(&qword_27E50D7E8, &qword_27E50D7F0, &qword_240A35048, sub_24099E68C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D760);
  }

  return result;
}

unint64_t sub_24099E68C()
{
  result = qword_27E50D7F8;
  if (!qword_27E50D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D7F8);
  }

  return result;
}

unint64_t sub_24099E6E0()
{
  result = qword_27E50D800;
  if (!qword_27E50D800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D808, &qword_240A35050);
    sub_24099E798(&qword_27E50D810, &qword_27E50D818, &qword_240A35058, sub_24099E848);
    sub_24099E930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D800);
  }

  return result;
}

uint64_t sub_24099E798(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24099E848()
{
  result = qword_27E50D820;
  if (!qword_27E50D820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D828, &unk_240A35060);
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0);
    sub_24099EC88(&qword_27E50D840, type metadata accessor for LoginCard);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D820);
  }

  return result;
}

unint64_t sub_24099E930()
{
  result = qword_27E50D848;
  if (!qword_27E50D848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D850, &qword_240A35070);
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D848);
  }

  return result;
}

unint64_t sub_24099E9E0()
{
  result = qword_27E50D858;
  if (!qword_27E50D858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D860, &qword_240A35078);
    sub_24099EA98(&qword_27E50D868, &qword_27E50D870, &qword_240A35080, sub_24099E930);
    sub_24099EB14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D858);
  }

  return result;
}

uint64_t sub_24099EA98(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24099EB14()
{
  result = qword_27E50D878;
  if (!qword_27E50D878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D880, &unk_240A35088);
    sub_24099E930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D878);
  }

  return result;
}

unint64_t sub_24099EBA0()
{
  result = qword_27E50D890;
  if (!qword_27E50D890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240);
    sub_24099EC88(&qword_27E50CBC0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D890);
  }

  return result;
}

uint64_t sub_24099EC88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24099ECEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v37 = a1;
  v38 = a3;
  v36 = a2;
  v7 = type metadata accessor for AuthenticationView();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7, v11);
  v12 = sub_240A2B52C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v5 + *(v8 + 56);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    v20 = v19;
  }

  else
  {

    sub_240A2C2BC();
    v21 = sub_240A2B84C();
    v35 = v5;
    v22 = v9;
    v23 = v21;
    sub_240A2AFEC();

    v9 = v22;
    v5 = v35;
    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24091C37C(v19, 0);
    (*(v13 + 8))(v17, v12);
    v19 = v39;
  }

  sub_2409AC4E4(v5, &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AuthenticationView);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = (v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_2409AC3A4(&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v24);
  v29 = v36;
  v28 = v37;
  *(v27 + v25) = v37;
  *(v27 + v26) = v19;
  v30 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
  v31 = v38;
  *v30 = v29;
  v30[1] = v31;
  *a4 = sub_2409AD0E0;
  a4[1] = v27;
  a4[2] = sub_24099F6AC;
  a4[3] = 0;
  v32 = v28;
}

void sub_24099EF9C(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void))
{
  v9 = *(a2 + *(type metadata accessor for AuthenticationView() + 56));
  sub_240A2AF2C();
  v10 = v30;
  if (v30)
  {
    [v30 _updateWithValuesFromContext_];
    if (a4)
    {
LABEL_3:
      v11 = qword_27E50AF68;
      v12 = a4;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = sub_240A2B00C();
      __swift_project_value_buffer(v13, qword_27E50D6D0);
      v14 = v10;
      v15 = sub_240A2AFFC();
      v16 = sub_240A2C29C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = a5;
        v20 = swift_slowAlloc();
        v30 = v20;
        *v17 = 136315394;
        *(v17 + 4) = sub_240925464(0xD000000000000012, 0x8000000240A350F0, &v30);
        *(v17 + 12) = 2112;
        *(v17 + 14) = v14;
        *v18 = v14;
        v21 = v14;
        _os_log_impl(&dword_2408FE000, v15, v16, "%s applying peerAnisetteClient (if needed) to %@", v17, 0x16u);
        sub_240919300(v18, &unk_27E50B730, &qword_240A30CE0);
        MEMORY[0x245CCDDB0](v18, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v20);
        v22 = v20;
        a5 = v19;
        MEMORY[0x245CCDDB0](v22, -1, -1);
        MEMORY[0x245CCDDB0](v17, -1, -1);
      }

      sub_24099F36C(v12);
      goto LABEL_14;
    }
  }

  else
  {
    sub_2409194E8(0, qword_27E50DAB0, 0x277CF0380);
    v23 = a3;
    v30 = sub_240A2C34C();
    v10 = v30;
    sub_240A2AF3C();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  if (qword_27E50AF68 != -1)
  {
    swift_once();
  }

  v24 = sub_240A2B00C();
  __swift_project_value_buffer(v24, qword_27E50D6D0);
  v25 = sub_240A2AFFC();
  v26 = sub_240A2C29C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_240925464(0xD000000000000012, 0x8000000240A350F0, &v30);
    _os_log_impl(&dword_2408FE000, v25, v26, "%s missing peerAnisetteClient - unexpected state", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x245CCDDB0](v28, -1, -1);
    MEMORY[0x245CCDDB0](v27, -1, -1);
  }

LABEL_14:
  [v10 setPresentingViewController_];
  v29 = swift_dynamicCastObjCProtocolUnconditional();
  a5(v29);
}

void sub_24099F36C(void *a1)
{
  v2 = v1;
  v4 = [v2 companionDevice];
  if (v4 && (v5 = v4, v6 = [v4 linkType], v5, v6 == 3) || (v7 = objc_msgSend(v2, sel_proxiedDevice)) != 0 && (v8 = v7, v9 = objc_msgSend(v7, sel_linkType), v8, v9 == 3))
  {
    if (qword_27E50AF68 != -1)
    {
      swift_once();
    }

    v10 = sub_240A2B00C();
    __swift_project_value_buffer(v10, qword_27E50D6D0);
    v11 = v2;
    v12 = a1;
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C28C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v15 = 138412546;
      *(v15 + 4) = v11;
      *v16 = v11;
      *(v15 + 12) = 2080;
      sub_240A29DEC();
      v18 = v11;
      v19 = v12;
      v20 = sub_240A2BF9C();
      v22 = sub_240925464(v20, v21, &v27);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_2408FE000, v13, v14, "%@: Applying anisette data provider: %s", v15, 0x16u);
      sub_240919300(v16, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x245CCDDB0](v17, -1, -1);
      MEMORY[0x245CCDDB0](v15, -1, -1);
    }

    [v11 setAnisetteDataProvider_];
  }

  else
  {
    if (qword_27E50AF68 != -1)
    {
      swift_once();
    }

    v23 = sub_240A2B00C();
    __swift_project_value_buffer(v23, qword_27E50D6D0);
    oslog = sub_240A2AFFC();
    v24 = sub_240A2C29C();
    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2408FE000, oslog, v24, "Neither companionDevice nor proxiedDevice is client-managed, skipping applying anisette data provider", v25, 2u);
      MEMORY[0x245CCDDB0](v25, -1, -1);
    }
  }
}

uint64_t sub_24099F6AC()
{
  sub_240A2C06C();
  sub_24091C4F8();
  return sub_240A2B24C();
}

uint64_t sub_24099F710(uint64_t a1)
{
  v50 = sub_240A2A6AC();
  v47 = *(v50 - 8);
  v2 = *(v47 + 64);
  MEMORY[0x28223BE20](v50, v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_240A2A6FC();
  v49 = *(v51 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v51, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_240A2A9AC();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AuthenticationView();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AF68 != -1)
  {
    swift_once();
  }

  v20 = sub_240A2B00C();
  __swift_project_value_buffer(v20, qword_27E50D6D0);
  sub_2409AC4E4(a1, v19, type metadata accessor for AuthenticationView);
  v21 = sub_240A2AFFC();
  v22 = sub_240A2C29C();
  v23 = os_log_type_enabled(v21, v22);
  v46 = v10;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v45 = a1;
    v25 = v24;
    v42 = v24;
    v44 = swift_slowAlloc();
    v52 = v44;
    *v25 = 136315138;
    v43 = v22;
    v26 = *(v15 + 20);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
    MEMORY[0x245CCC9B0](v27);
    sub_240A2A76C();
    v28 = v48;
    (*(v48 + 8))(v14, v10);
    sub_240A2A6BC();
    v29 = v49;
    (*(v49 + 8))(v9, v51);
    v30 = sub_240A2BF9C();
    v31 = v21;
    v32 = v15;
    v34 = v33;
    sub_2409AC54C(v19, type metadata accessor for AuthenticationView);
    v35 = sub_240925464(v30, v34, &v52);
    v15 = v32;

    v36 = v42;
    *(v42 + 4) = v35;
    _os_log_impl(&dword_2408FE000, v31, v43, "Calling dismiss(for substate: %s", v36, 0xCu);
    v37 = v44;
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x245CCDDB0](v37, -1, -1);
    MEMORY[0x245CCDDB0](v36, -1, -1);
  }

  else
  {

    sub_2409AC54C(v19, type metadata accessor for AuthenticationView);
    v28 = v48;
    v29 = v49;
  }

  v38 = *(v15 + 20);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0](v39);
  sub_240A2A76C();
  (*(v28 + 8))(v14, v46);
  sub_240A2A6BC();
  (*(v29 + 8))(v9, v51);
  sub_24099FBCC(v5);
  return (*(v47 + 8))(v5, v50);
}

void sub_24099FBCC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_240A2A6AC();
  v44 = *(v4 - 8);
  v5 = *(v44 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v40 - v15;
  if (qword_27E50AF68 != -1)
  {
    swift_once();
  }

  v17 = sub_240A2B00C();
  __swift_project_value_buffer(v17, qword_27E50D6D0);
  v18 = *(v44 + 16);
  v18(v16, a1, v4);
  v19 = sub_240A2AFFC();
  v20 = sub_240A2C29C();
  v21 = os_log_type_enabled(v19, v20);
  v43 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v41 = a1;
    v23 = v22;
    v24 = swift_slowAlloc();
    v40 = v2;
    v25 = v24;
    aBlock = v24;
    *v23 = 136315138;
    v18(v13, v16, v4);
    v26 = sub_240A2BF9C();
    v42 = v9;
    v28 = v27;
    v29 = *(v44 + 8);
    v29(v16, v4);
    v30 = sub_240925464(v26, v28, &aBlock);
    v31 = v29;
    v9 = v42;

    *(v23 + 4) = v30;
    _os_log_impl(&dword_2408FE000, v19, v20, "dismiss(for substate: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v32 = v25;
    v2 = v40;
    MEMORY[0x245CCDDB0](v32, -1, -1);
    v33 = v23;
    a1 = v41;
    MEMORY[0x245CCDDB0](v33, -1, -1);
  }

  else
  {

    v31 = *(v44 + 8);
    v31(v16, v4);
  }

  v34 = *(v2 + *(type metadata accessor for AuthenticationView() + 56));
  sub_240A2AF2C();
  v35 = aBlock;
  if (aBlock)
  {
    v51 = &unk_2852C77E8;
    v36 = swift_dynamicCastObjCProtocolUnconditional();
    v43(v9, a1, v4);
    v37 = (*(v44 + 88))(v9, v4);
    if (v37 == *MEMORY[0x277CEDBB8])
    {
      v49 = nullsub_1;
      v50 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v47 = sub_240A1EFE0;
      v48 = &block_descriptor_44;
      v38 = _Block_copy(&aBlock);
      [v36 dismissSecondFactorUIWithCompletion_];

      _Block_release(v38);
    }

    else if (v37 == *MEMORY[0x277CEDBD0])
    {
      v49 = nullsub_1;
      v50 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v47 = sub_240A1EFE0;
      v48 = &block_descriptor_41;
      v39 = _Block_copy(&aBlock);
      [v36 dismissServerProvidedUIWithCompletion_];
      _Block_release(v39);
    }

    else
    {

      v31(v9, v4);
    }
  }
}

uint64_t sub_2409A0060@<X0>(uint64_t a1@<X8>)
{
  v430 = a1;
  v358 = sub_240A2A99C();
  v357 = *(v358 - 8);
  v2 = *(v357 + 64);
  MEMORY[0x28223BE20](v358, v3);
  v356 = &v352 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v364 = sub_240A2A7BC();
  v363 = *(v364 - 8);
  v5 = *(v363 + 64);
  MEMORY[0x28223BE20](v364, v6);
  v362 = &v352 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = sub_240A2A81C();
  v372 = *(v373 - 8);
  v8 = *(v372 + 64);
  v10 = MEMORY[0x28223BE20](v373, v9);
  v371 = &v352 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v367 = &v352 - v13;
  v379 = sub_240A2A8AC();
  v378 = *(v379 - 8);
  v14 = *(v378 + 64);
  MEMORY[0x28223BE20](v379, v15);
  v377 = &v352 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v388 = sub_240A2A59C();
  v387 = *(v388 - 8);
  v17 = *(v387 + 64);
  v19 = MEMORY[0x28223BE20](v388, v18);
  v382 = &v352 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v386 = &v352 - v22;
  v390 = sub_240A2B52C();
  v391 = *(v390 - 8);
  v23 = *(v391 + 64);
  MEMORY[0x28223BE20](v390, v24);
  v389 = &v352 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v396 = sub_240A2A57C();
  v395 = *(v396 - 8);
  v26 = *(v395 + 64);
  MEMORY[0x28223BE20](v396, v27);
  v394 = &v352 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DA30, &qword_240A352A8);
  v29 = *(*(v408 - 8) + 64);
  MEMORY[0x28223BE20](v408, v30);
  v410 = (&v352 - v31);
  v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DA38, &qword_240A352B0);
  v32 = *(*(v404 - 8) + 64);
  MEMORY[0x28223BE20](v404, v33);
  v406 = (&v352 - v34);
  v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D818, &qword_240A35058);
  v35 = *(*(v409 - 8) + 64);
  MEMORY[0x28223BE20](v409, v36);
  v407 = &v352 - v37;
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D808, &qword_240A35050);
  v38 = *(*(v435 - 8) + 64);
  MEMORY[0x28223BE20](v435, v39);
  v411 = &v352 - v40;
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D828, &unk_240A35060);
  v41 = *(*(v405 - 8) + 64);
  MEMORY[0x28223BE20](v405, v42);
  v412 = &v352 - v43;
  v44 = type metadata accessor for AuthenticationView();
  v413 = *(v44 - 8);
  v45 = *(v413 + 64);
  v47 = MEMORY[0x28223BE20](v44, v46);
  v355 = &v352 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v47, v49);
  v361 = &v352 - v51;
  v53 = MEMORY[0x28223BE20](v50, v52);
  v370 = &v352 - v54;
  v56 = MEMORY[0x28223BE20](v53, v55);
  v376 = &v352 - v57;
  v59 = MEMORY[0x28223BE20](v56, v58);
  v385 = &v352 - v60;
  v414 = v61;
  MEMORY[0x28223BE20](v59, v62);
  v415 = &v352 - v63;
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DA40, &qword_240A352B8);
  v64 = *(*(v433 - 8) + 64);
  MEMORY[0x28223BE20](v433, v65);
  v432 = (&v352 - v66);
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DA48, &qword_240A352C0);
  v67 = *(*(v419 - 8) + 64);
  MEMORY[0x28223BE20](v419, v68);
  v421 = &v352 - v69;
  v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DA50, &qword_240A352C8);
  v70 = *(*(v428 - 8) + 64);
  MEMORY[0x28223BE20](v428, v71);
  v429 = &v352 - v72;
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DA58, &unk_240A352D0);
  v73 = *(*(v425 - 8) + 64);
  MEMORY[0x28223BE20](v425, v74);
  v426 = (&v352 - v75);
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D778, &qword_240A34FF8);
  v76 = *(*(v418 - 8) + 64);
  MEMORY[0x28223BE20](v418, v77);
  v427 = &v352 - v78;
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D768, &qword_240A34FF0);
  v79 = *(*(v420 - 8) + 64);
  MEMORY[0x28223BE20](v420, v80);
  v417 = &v352 - v81;
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D758, &qword_240A34FE8);
  v82 = *(*(v431 - 8) + 64);
  MEMORY[0x28223BE20](v431, v83);
  v434 = &v352 - v84;
  v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDE8, &unk_240A35000);
  v85 = *(*(v424 - 8) + 64);
  MEMORY[0x28223BE20](v424, v86);
  v416 = &v352 - v87;
  v423 = sub_240A2A6AC();
  v422 = *(v423 - 8);
  v88 = *(v422 + 64);
  MEMORY[0x28223BE20](v423, v89);
  v91 = &v352 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_240A2A6FC();
  v93 = *(v92 - 8);
  v94 = *(v93 + 64);
  v96 = MEMORY[0x28223BE20](v92, v95);
  v354 = &v352 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = MEMORY[0x28223BE20](v96, v98);
  v360 = &v352 - v100;
  v102 = MEMORY[0x28223BE20](v99, v101);
  v369 = &v352 - v103;
  v105 = MEMORY[0x28223BE20](v102, v104);
  v366 = &v352 - v106;
  v108 = MEMORY[0x28223BE20](v105, v107);
  v375 = &v352 - v109;
  v111 = MEMORY[0x28223BE20](v108, v110);
  v381 = &v352 - v112;
  v114 = MEMORY[0x28223BE20](v111, v113);
  v384 = &v352 - v115;
  v117 = MEMORY[0x28223BE20](v114, v116);
  v393 = &v352 - v118;
  MEMORY[0x28223BE20](v117, v119);
  v121 = &v352 - v120;
  v122 = sub_240A2A9AC();
  v123 = *(v122 - 8);
  v124 = *(v123 + 64);
  v126 = MEMORY[0x28223BE20](v122, v125);
  v353 = &v352 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = MEMORY[0x28223BE20](v126, v128);
  v359 = &v352 - v130;
  v132 = MEMORY[0x28223BE20](v129, v131);
  v368 = &v352 - v133;
  v135 = MEMORY[0x28223BE20](v132, v134);
  v365 = &v352 - v136;
  v138 = MEMORY[0x28223BE20](v135, v137);
  v374 = &v352 - v139;
  v141 = MEMORY[0x28223BE20](v138, v140);
  v380 = &v352 - v142;
  v144 = MEMORY[0x28223BE20](v141, v143);
  v383 = &v352 - v145;
  v147 = MEMORY[0x28223BE20](v144, v146);
  v392 = &v352 - v148;
  MEMORY[0x28223BE20](v147, v149);
  v151 = &v352 - v150;
  v403 = v44;
  v152 = *(v44 + 20);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  v154 = v1;
  v397 = v152;
  v398 = v153;
  MEMORY[0x245CCC9B0]();
  sub_240A2A76C();
  v155 = *(v123 + 8);
  v400 = v122;
  v401 = v123 + 8;
  v399 = v155;
  v155(v151, v122);
  sub_240A2A6BC();
  v156 = *(v93 + 8);
  v157 = v121;
  v158 = v92;
  v402 = v93 + 8;
  v156(v157, v92);
  v159 = (*(v422 + 88))(v91, v423);
  if (v159 == *MEMORY[0x277CEDC10])
  {
    v160 = v416;
    sub_2409A475C(v416);
    sub_240919298(v160, v426, &qword_27E50BDE8, &unk_240A35000);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
    sub_2409369EC();
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040);
    v161 = v427;
    sub_240A2B6EC();
    sub_240919298(v161, v429, &qword_27E50D778, &qword_240A34FF8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7F0, &qword_240A35048);
    sub_24099E798(&qword_27E50D770, &qword_27E50D778, &qword_240A34FF8, sub_2409369EC);
    sub_24099EA98(&qword_27E50D7E8, &qword_27E50D7F0, &qword_240A35048, sub_24099E68C);
    v162 = v417;
    sub_240A2B6EC();
    sub_240919300(v161, &qword_27E50D778, &qword_240A34FF8);
    sub_240919298(v162, v421, &qword_27E50D768, &qword_240A34FF0);
    swift_storeEnumTagMultiPayload();
    sub_24099E5A8();
    sub_24099E6E0();
    v163 = v434;
    sub_240A2B6EC();
    sub_240919300(v162, &qword_27E50D768, &qword_240A34FF0);
    sub_240919298(v163, v432, &qword_27E50D758, &qword_240A34FE8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
    sub_24099E51C();
    sub_24099E9E0();
    sub_240A2B6EC();
    sub_240919300(v163, &qword_27E50D758, &qword_240A34FE8);
    v164 = v160;
    v165 = &qword_27E50BDE8;
    v166 = &unk_240A35000;
    return sub_240919300(v164, v165, v166);
  }

  v167 = v426;
  v168 = v427;
  v169 = v429;
  if (v159 == *MEMORY[0x277CEDBD8])
  {
    v170 = v415;
    sub_2409AC4E4(v1, v415, type metadata accessor for AuthenticationView);
    v171 = (*(v413 + 80) + 16) & ~*(v413 + 80);
    v172 = swift_allocObject();
    sub_2409AC3A4(v170, v172 + v171);
    *v167 = sub_2409AC4B4;
    v167[1] = v172;
    v423 = v172;
    v167[2] = sub_24099F6AC;
    v167[3] = 0;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
    sub_2409369EC();
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040);
    sub_240A2B6EC();
    sub_240919298(v168, v169, &qword_27E50D778, &qword_240A34FF8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7F0, &qword_240A35048);
    sub_24099E798(&qword_27E50D770, &qword_27E50D778, &qword_240A34FF8, sub_2409369EC);
    sub_24099EA98(&qword_27E50D7E8, &qword_27E50D7F0, &qword_240A35048, sub_24099E68C);
    v173 = v417;
    sub_240A2B6EC();
    sub_240919300(v168, &qword_27E50D778, &qword_240A34FF8);
    sub_240919298(v173, v421, &qword_27E50D768, &qword_240A34FF0);
    swift_storeEnumTagMultiPayload();
    sub_24099E5A8();
    sub_24099E6E0();
    v174 = v434;
    sub_240A2B6EC();
    sub_240919300(v173, &qword_27E50D768, &qword_240A34FF0);
    sub_240919298(v174, v432, &qword_27E50D758, &qword_240A34FE8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
    sub_24099E51C();
    sub_24099E9E0();
    sub_240A2B6EC();

    v164 = v174;
    v165 = &qword_27E50D758;
    v166 = &qword_240A34FE8;
    return sub_240919300(v164, v165, v166);
  }

  if (v159 == *MEMORY[0x277CEDC00])
  {
    v436[0] = 0;
    sub_24099E68C();
    sub_240A2B6EC();
    *v169 = v439[0];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7F0, &qword_240A35048);
    sub_24099E798(&qword_27E50D770, &qword_27E50D778, &qword_240A34FF8, sub_2409369EC);
    sub_24099EA98(&qword_27E50D7E8, &qword_27E50D7F0, &qword_240A35048, sub_24099E68C);
    v175 = v417;
    sub_240A2B6EC();
    sub_240919298(v175, v421, &qword_27E50D768, &qword_240A34FF0);
    swift_storeEnumTagMultiPayload();
    sub_24099E5A8();
    sub_24099E6E0();
    v176 = v434;
    sub_240A2B6EC();
    sub_240919300(v175, &qword_27E50D768, &qword_240A34FF0);
    sub_240919298(v176, v432, &qword_27E50D758, &qword_240A34FE8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
    sub_24099E51C();
    sub_24099E9E0();
    sub_240A2B6EC();
    v164 = v176;
LABEL_9:
    v165 = &qword_27E50D758;
    v166 = &qword_240A34FE8;
    return sub_240919300(v164, v165, v166);
  }

  v177 = v434;
  if (v159 == *MEMORY[0x277CEDC08])
  {
    v436[0] = 1;
    sub_24099E68C();
    sub_240A2B6EC();
    *v169 = v439[0];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7F0, &qword_240A35048);
    sub_24099E798(&qword_27E50D770, &qword_27E50D778, &qword_240A34FF8, sub_2409369EC);
    sub_24099EA98(&qword_27E50D7E8, &qword_27E50D7F0, &qword_240A35048, sub_24099E68C);
    v178 = v417;
    sub_240A2B6EC();
    sub_240919298(v178, v421, &qword_27E50D768, &qword_240A34FF0);
    swift_storeEnumTagMultiPayload();
    sub_24099E5A8();
    sub_24099E6E0();
    sub_240A2B6EC();
    sub_240919300(v178, &qword_27E50D768, &qword_240A34FF0);
    sub_240919298(v177, v432, &qword_27E50D758, &qword_240A34FE8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
    sub_24099E51C();
    sub_24099E9E0();
    sub_240A2B6EC();
    v164 = v177;
    goto LABEL_9;
  }

  if (v159 == *MEMORY[0x277CEDBB0])
  {
    v180 = v412;
    sub_2409A4CF8(v412);
    sub_240919298(v180, v406, &qword_27E50D828, &unk_240A35060);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
    sub_24099E848();
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040);
    v181 = v407;
    sub_240A2B6EC();
    sub_240919298(v181, v410, &qword_27E50D818, &qword_240A35058);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D850, &qword_240A35070);
    sub_24099E798(&qword_27E50D810, &qword_27E50D818, &qword_240A35058, sub_24099E848);
    sub_24099E930();
    v182 = v411;
    sub_240A2B6EC();
    sub_240919300(v181, &qword_27E50D818, &qword_240A35058);
    sub_240919298(v182, v421, &qword_27E50D808, &qword_240A35050);
    swift_storeEnumTagMultiPayload();
    sub_24099E5A8();
    sub_24099E6E0();
    sub_240A2B6EC();
    sub_240919300(v182, &qword_27E50D808, &qword_240A35050);
    sub_240919298(v177, v432, &qword_27E50D758, &qword_240A34FE8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
    sub_24099E51C();
    sub_24099E9E0();
    sub_240A2B6EC();
    sub_240919300(v177, &qword_27E50D758, &qword_240A34FE8);
    v164 = v412;
    v165 = &qword_27E50D828;
    v166 = &unk_240A35060;
    return sub_240919300(v164, v165, v166);
  }

  if (v159 == *MEMORY[0x277CEDBE0])
  {
    v183 = v1;
    v184 = v392;
    MEMORY[0x245CCC9B0](v398);
    v185 = v393;
    sub_240A2A76C();
    v399(v184, v400);
    v186 = v394;
    sub_240A2A5BC();
    v156(v185, v92);
    v187 = sub_240A2A50C();
    (*(v395 + 8))(v186, v396);
    if (v187)
    {
      v188 = v154 + *(v403 + 48);
      v189 = *v188;
      v190 = v432;
      if (*(v188 + 8) == 1)
      {
        v191 = v189;
      }

      else
      {

        sub_240A2C2BC();
        v212 = sub_240A2B84C();
        sub_240A2AFEC();

        v213 = v389;
        sub_240A2B51C();
        swift_getAtKeyPath();
        sub_24091C37C(v189, 0);
        (*(v391 + 8))(v213, v390);
        v189 = *v439;
      }

      v214 = v415;
      sub_2409AC4E4(v183, v415, type metadata accessor for AuthenticationView);
      v215 = (*(v413 + 80) + 16) & ~*(v413 + 80);
      v216 = (v414 + v215 + 7) & 0xFFFFFFFFFFFFFFF8;
      v217 = (v216 + 15) & 0xFFFFFFFFFFFFFFF8;
      v218 = swift_allocObject();
      sub_2409AC3A4(v214, v218 + v215);
      *(v218 + v216) = v187;
      *(v218 + v217) = v189;
      v219 = (v218 + ((v217 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v219 = sub_2409A7F14;
      v219[1] = 0;
      v220 = v406;
      *v406 = sub_2409AD0E0;
      v220[1] = v218;
      v220[2] = sub_24099F6AC;
      v220[3] = 0;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
      sub_24099E848();
      sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040);
      v221 = v407;
      sub_240A2B6EC();
      sub_240919298(v221, v410, &qword_27E50D818, &qword_240A35058);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D850, &qword_240A35070);
      sub_24099E798(&qword_27E50D810, &qword_27E50D818, &qword_240A35058, sub_24099E848);
      sub_24099E930();
      v222 = v411;
      sub_240A2B6EC();
      sub_240919300(v221, &qword_27E50D818, &qword_240A35058);
      sub_240919298(v222, v421, &qword_27E50D808, &qword_240A35050);
      swift_storeEnumTagMultiPayload();
      sub_24099E5A8();
      sub_24099E6E0();
      v223 = v434;
      sub_240A2B6EC();
      sub_240919300(v222, &qword_27E50D808, &qword_240A35050);
      sub_240919298(v223, v190, &qword_27E50D758, &qword_240A34FE8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
      sub_24099E51C();
      sub_24099E9E0();
LABEL_28:
      sub_240A2B6EC();

      v164 = v223;
LABEL_35:
      v165 = &qword_27E50D758;
      v166 = &qword_240A34FE8;
      return sub_240919300(v164, v165, v166);
    }

    __break(1u);
    goto LABEL_82;
  }

  v192 = v1;
  if (v159 == *MEMORY[0x277CEDBB8])
  {
    v193 = v383;
    MEMORY[0x245CCC9B0](v398);
    v194 = v384;
    sub_240A2A76C();
    v399(v193, v400);
    v195 = v386;
    sub_240A2A5CC();
    v156(v194, v158);
    v196 = sub_240A2A58C();
    (*(v387 + 8))(v195, v388);
    if (v196)
    {
      v197 = v385;
      sub_2409AC4E4(v154, v385, type metadata accessor for AuthenticationView);
      v198 = (*(v413 + 80) + 16) & ~*(v413 + 80);
      v199 = v198 + v414;
      v200 = swift_allocObject();
      sub_2409AC3A4(v197, v200 + v198);
      v201 = v154 + *(v403 + 48);
      v202 = *v201;
      if (*(v201 + 8) == 1)
      {
        v203 = v202;
      }

      else
      {

        sub_240A2C2BC();
        v235 = sub_240A2B84C();
        v192 = v154;
        sub_240A2AFEC();

        v236 = v389;
        sub_240A2B51C();
        swift_getAtKeyPath();
        sub_24091C37C(v202, 0);
        (*(v391 + 8))(v236, v390);
        v202 = *v439;
      }

      v237 = v415;
      sub_2409AC4E4(v192, v415, type metadata accessor for AuthenticationView);
      v238 = (v199 + 7) & 0xFFFFFFFFFFFFFFF8;
      v239 = (v238 + 15) & 0xFFFFFFFFFFFFFFF8;
      v240 = swift_allocObject();
      sub_2409AC3A4(v237, v240 + v198);
      *(v240 + v238) = v196;
      *(v240 + v239) = v202;
      v241 = (v240 + ((v239 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v241 = sub_2409AC49C;
      v241[1] = v200;
      *v436 = sub_2409AD0E0;
      *&v436[8] = v240;
      *&v436[16] = sub_24099F6AC;
      *&v436[24] = 0;
      LOBYTE(v437) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
      sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040);
      sub_240A2B6EC();
      v242 = v440;
      v243 = *&v439[16];
      v244 = v410;
      *v410 = *v439;
      v244[1] = v243;
      *(v244 + 32) = v242;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D850, &qword_240A35070);
      sub_24099E798(&qword_27E50D810, &qword_27E50D818, &qword_240A35058, sub_24099E848);
      sub_24099E930();
      v245 = v411;
      sub_240A2B6EC();
      sub_240919298(v245, v421, &qword_27E50D808, &qword_240A35050);
      swift_storeEnumTagMultiPayload();
      sub_24099E5A8();
      sub_24099E6E0();
      v246 = v434;
      sub_240A2B6EC();
      sub_240919300(v245, &qword_27E50D808, &qword_240A35050);
      sub_240919298(v246, v432, &qword_27E50D758, &qword_240A34FE8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
      sub_24099E51C();
      sub_24099E9E0();
      sub_240A2B6EC();

      v164 = v246;
      goto LABEL_35;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v159 == *MEMORY[0x277CEDBF0])
  {
    v204 = v380;
    MEMORY[0x245CCC9B0](v398);
    v205 = v381;
    sub_240A2A76C();
    v399(v204, v400);
    v206 = v382;
    sub_240A2A5CC();
    v156(v205, v158);
    v207 = sub_240A2A58C();
    (*(v387 + 8))(v206, v388);
    if (v207)
    {
      v208 = v154 + *(v403 + 48);
      v209 = *v208;
      v210 = v432;
      if (*(v208 + 8) == 1)
      {
        v211 = v209;
      }

      else
      {

        sub_240A2C2BC();
        v258 = sub_240A2B84C();
        sub_240A2AFEC();

        v259 = v389;
        sub_240A2B51C();
        swift_getAtKeyPath();
        sub_24091C37C(v209, 0);
        (*(v391 + 8))(v259, v390);
        v209 = *v439;
      }

      v260 = v415;
      sub_2409AC4E4(v192, v415, type metadata accessor for AuthenticationView);
      v261 = (*(v413 + 80) + 16) & ~*(v413 + 80);
      v262 = (v414 + v261 + 7) & 0xFFFFFFFFFFFFFFF8;
      v263 = (v262 + 15) & 0xFFFFFFFFFFFFFFF8;
      v264 = swift_allocObject();
      sub_2409AC3A4(v260, v264 + v261);
      *(v264 + v262) = v207;
      *(v264 + v263) = v209;
      v265 = (v264 + ((v263 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v265 = sub_2409A80CC;
      v265[1] = 0;
      *v436 = sub_2409AD0E0;
      *&v436[8] = v264;
      *&v436[16] = sub_24099F6AC;
      *&v436[24] = 0;
      LOBYTE(v437) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
      sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040);
      sub_240A2B6EC();
      v266 = v440;
      v267 = *&v439[16];
      v268 = v410;
      *v410 = *v439;
      v268[1] = v267;
      *(v268 + 32) = v266;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D850, &qword_240A35070);
      sub_24099E798(&qword_27E50D810, &qword_27E50D818, &qword_240A35058, sub_24099E848);
      sub_24099E930();
      v269 = v411;
      sub_240A2B6EC();
      sub_240919298(v269, v421, &qword_27E50D808, &qword_240A35050);
      swift_storeEnumTagMultiPayload();
      sub_24099E5A8();
      sub_24099E6E0();
      v223 = v434;
      sub_240A2B6EC();
      sub_240919300(v269, &qword_27E50D808, &qword_240A35050);
      sub_240919298(v223, v210, &qword_27E50D758, &qword_240A34FE8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
      sub_24099E51C();
      sub_24099E9E0();
      goto LABEL_28;
    }

    goto LABEL_83;
  }

  if (v159 == *MEMORY[0x277CEDBE8])
  {
    v224 = v374;
    MEMORY[0x245CCC9B0](v398);
    v225 = v375;
    sub_240A2A76C();
    v399(v224, v400);
    v226 = v377;
    sub_240A2A67C();
    v156(v225, v158);
    v227 = sub_240A2A58C();
    (*(v378 + 8))(v226, v379);
    if (!v227)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v228 = v376;
    sub_2409AC4E4(v1, v376, type metadata accessor for AuthenticationView);
    v229 = (*(v413 + 80) + 16) & ~*(v413 + 80);
    v230 = v229 + v414;
    v231 = swift_allocObject();
    sub_2409AC3A4(v228, v231 + v229);
    v232 = v1 + *(v403 + 48);
    v233 = *v232;
    if (*(v232 + 8) == 1)
    {
      v234 = v233;
    }

    else
    {

      sub_240A2C2BC();
      v278 = sub_240A2B84C();
      v192 = v154;
      sub_240A2AFEC();

      v279 = v389;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24091C37C(v233, 0);
      (*(v391 + 8))(v279, v390);
      v233 = *v439;
    }

    v280 = v415;
    sub_2409AC4E4(v192, v415, type metadata accessor for AuthenticationView);
    v281 = (v230 + 7) & 0xFFFFFFFFFFFFFFF8;
    v282 = (v281 + 15) & 0xFFFFFFFFFFFFFFF8;
    v283 = swift_allocObject();
    sub_2409AC3A4(v280, v283 + v229);
    *(v283 + v281) = v227;
    *(v283 + v282) = v233;
    v284 = (v283 + ((v282 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v284 = sub_2409AC484;
    v284[1] = v231;
    *v436 = sub_2409AD0E0;
    *&v436[8] = v283;
    *&v436[16] = sub_24099F6AC;
    *&v436[24] = 0;
    LOBYTE(v437) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040);
    sub_240A2B6EC();
    *v436 = *v439;
    *&v436[16] = *&v439[16];
    v437 = v440;
    goto LABEL_54;
  }

  if (v159 == *MEMORY[0x277CEDBD0])
  {
    v247 = v368;
    MEMORY[0x245CCC9B0](v398);
    v248 = v369;
    sub_240A2A76C();
    v399(v247, v400);
    v249 = v371;
    sub_240A2A62C();
    v156(v248, v158);
    v250 = sub_240A2A7FC();
    (*(v372 + 8))(v249, v373);
    if (!v250)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v251 = v370;
    sub_2409AC4E4(v1, v370, type metadata accessor for AuthenticationView);
    v252 = (*(v413 + 80) + 16) & ~*(v413 + 80);
    v253 = v252 + v414;
    v254 = swift_allocObject();
    sub_2409AC3A4(v251, v254 + v252);
    v255 = v1 + *(v403 + 48);
    v256 = *v255;
    if (*(v255 + 8) == 1)
    {
      v257 = v256;
    }

    else
    {

      sub_240A2C2BC();
      v296 = sub_240A2B84C();
      v192 = v154;
      sub_240A2AFEC();

      v297 = v389;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24091C37C(v256, 0);
      (*(v391 + 8))(v297, v390);
      v256 = *v439;
    }

    v298 = v415;
    sub_2409AC4E4(v192, v415, type metadata accessor for AuthenticationView);
    v299 = (v253 + 7) & 0xFFFFFFFFFFFFFFF8;
    v300 = (v299 + 15) & 0xFFFFFFFFFFFFFFF8;
    v301 = swift_allocObject();
    sub_2409AC3A4(v298, v301 + v252);
    *(v301 + v299) = v250;
    *(v301 + v300) = v256;
    v302 = (v301 + ((v300 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v302 = sub_2409AC46C;
    v302[1] = v254;
    *v436 = sub_2409AD0E0;
    *&v436[8] = v301;
    *&v436[16] = sub_24099F6AC;
    *&v436[24] = 0;
    LOBYTE(v437) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040);
    sub_240A2B6EC();
    *v436 = *v439;
    *&v436[16] = *&v439[16];
    LOBYTE(v437) = v440;
    HIBYTE(v437) = 1;
    goto LABEL_54;
  }

  if (v159 == *MEMORY[0x277CEDBF8])
  {
    v270 = v365;
    MEMORY[0x245CCC9B0](v398);
    v271 = v366;
    sub_240A2A76C();
    v399(v270, v400);
    v272 = v367;
    sub_240A2A62C();
    v156(v271, v158);
    v273 = sub_240A2A7FC();
    (*(v372 + 8))(v272, v373);
    if (!v273)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v274 = v154 + *(v403 + 48);
    v275 = *v274;
    v276 = v432;
    if (*(v274 + 8) == 1)
    {
      v277 = v275;
    }

    else
    {

      sub_240A2C2BC();
      v313 = sub_240A2B84C();
      sub_240A2AFEC();

      v314 = v389;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24091C37C(v275, 0);
      (*(v391 + 8))(v314, v390);
      v275 = *v439;
    }

    v315 = v415;
    sub_2409AC4E4(v192, v415, type metadata accessor for AuthenticationView);
    v316 = (*(v413 + 80) + 16) & ~*(v413 + 80);
    v317 = (v414 + v316 + 7) & 0xFFFFFFFFFFFFFFF8;
    v318 = (v317 + 15) & 0xFFFFFFFFFFFFFFF8;
    v319 = swift_allocObject();
    sub_2409AC3A4(v315, v319 + v316);
    *(v319 + v317) = v273;
    *(v319 + v318) = v275;
    v320 = (v319 + ((v318 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v320 = sub_2409A937C;
    v320[1] = 0;
    *v436 = sub_2409AD0E0;
    *&v436[8] = v319;
    *&v436[16] = sub_24099F6AC;
    *&v436[24] = 0;
    LOBYTE(v437) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040);
    sub_240A2B6EC();
    *v436 = *v439;
    *&v436[16] = *&v439[16];
    v437 = v440;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D850, &qword_240A35070);
    sub_24099E930();
    sub_240A2B6EC();
    if (HIBYTE(v440))
    {
      v321 = 256;
    }

    else
    {
      v321 = 0;
    }

    *v436 = *v439;
    *&v436[16] = *&v439[16];
    v437 = v321 | v440;
    v438 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D870, &qword_240A35080);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D880, &unk_240A35088);
    sub_24099EA98(&qword_27E50D868, &qword_27E50D870, &qword_240A35080, sub_24099E930);
    sub_24099EB14();
    sub_240A2B6EC();
    v322 = v440;
    v323 = v441;
    v324 = *&v439[16];
    *v276 = *v439;
    v276[1] = v324;
    *(v276 + 16) = v322;
    *(v276 + 34) = v323;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
    sub_24099E51C();
    sub_24099E9E0();
LABEL_59:
    sub_240A2B6EC();
  }

  if (v159 == *MEMORY[0x277CEDBC8])
  {
    v285 = v359;
    MEMORY[0x245CCC9B0](v398);
    v286 = v360;
    sub_240A2A76C();
    v399(v285, v400);
    v287 = v362;
    sub_240A2A60C();
    v156(v286, v158);
    v288 = sub_240A2A70C();
    (*(v363 + 8))(v287, v364);
    if (!v288)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v289 = v361;
    sub_2409AC4E4(v1, v361, type metadata accessor for AuthenticationView);
    v290 = (*(v413 + 80) + 16) & ~*(v413 + 80);
    v291 = v290 + v414;
    v292 = swift_allocObject();
    sub_2409AC3A4(v289, v292 + v290);
    v293 = v1 + *(v403 + 48);
    v294 = *v293;
    if (*(v293 + 8) == 1)
    {
      v295 = v294;
    }

    else
    {

      sub_240A2C2BC();
      v336 = sub_240A2B84C();
      v192 = v154;
      sub_240A2AFEC();

      v337 = v389;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24091C37C(v294, 0);
      (*(v391 + 8))(v337, v390);
      v294 = *v439;
    }

    v338 = v415;
    sub_2409AC4E4(v192, v415, type metadata accessor for AuthenticationView);
    v339 = (v291 + 7) & 0xFFFFFFFFFFFFFFF8;
    v340 = (v339 + 15) & 0xFFFFFFFFFFFFFFF8;
    v341 = swift_allocObject();
    sub_2409AC3A4(v338, v341 + v290);
    *(v341 + v339) = v288;
    *(v341 + v340) = v294;
    v342 = (v341 + ((v340 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v342 = sub_2409AC454;
    v342[1] = v292;
    *v436 = sub_2409AD0E0;
    *&v436[8] = v341;
    *&v436[16] = sub_24099F6AC;
    *&v436[24] = 0;
    LOBYTE(v437) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040);
    sub_240A2B6EC();
    *v436 = *v439;
    *&v436[16] = *&v439[16];
    LOBYTE(v437) = v440;
    HIBYTE(v437) = 1;
LABEL_54:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D850, &qword_240A35070);
    sub_24099E930();
    sub_240A2B6EC();
    if (HIBYTE(v440))
    {
      v303 = 256;
    }

    else
    {
      v303 = 0;
    }

    *v436 = *v439;
    *&v436[16] = *&v439[16];
    v437 = v303 | v440;
    v438 = 0;
LABEL_58:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D870, &qword_240A35080);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D880, &unk_240A35088);
    sub_24099EA98(&qword_27E50D868, &qword_27E50D870, &qword_240A35080, sub_24099E930);
    sub_24099EB14();
    sub_240A2B6EC();
    v304 = v440;
    v305 = v441;
    v306 = *&v439[16];
    v307 = v432;
    *v432 = *v439;
    v307[1] = v306;
    *(v307 + 16) = v304;
    *(v307 + 34) = v305;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
    sub_24099E51C();
    sub_24099E9E0();
    goto LABEL_59;
  }

  if (v159 != *MEMORY[0x277CEDBC0])
  {
    if (v159 != *MEMORY[0x277CEDC18])
    {
LABEL_89:
      result = sub_240A2C58C();
      __break(1u);
      return result;
    }

    v325 = v353;
    MEMORY[0x245CCC9B0](v398);
    v326 = v354;
    sub_240A2A76C();
    v399(v325, v400);
    v327 = v356;
    sub_240A2A6EC();
    v156(v326, v158);
    v328 = sub_240A2A97C();
    (*(v357 + 8))(v327, v358);
    if (!v328)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v329 = v355;
    sub_2409AC4E4(v154, v355, type metadata accessor for AuthenticationView);
    v330 = (*(v413 + 80) + 16) & ~*(v413 + 80);
    v331 = v330 + v414;
    v332 = swift_allocObject();
    sub_2409AC3A4(v329, v332 + v330);
    v333 = v154 + *(v403 + 48);
    v334 = *v333;
    if (*(v333 + 8) == 1)
    {
      v335 = v334;
    }

    else
    {

      sub_240A2C2BC();
      v343 = sub_240A2B84C();
      sub_240A2AFEC();

      v344 = v389;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24091C37C(v334, 0);
      (*(v391 + 8))(v344, v390);
      v334 = *v439;
    }

    v345 = v154;
    v346 = v415;
    sub_2409AC4E4(v345, v415, type metadata accessor for AuthenticationView);
    v347 = (v331 + 7) & 0xFFFFFFFFFFFFFFF8;
    v348 = (v347 + 15) & 0xFFFFFFFFFFFFFFF8;
    v349 = swift_allocObject();
    sub_2409AC3A4(v346, v349 + v330);
    *(v349 + v347) = v328;
    *(v349 + v348) = v334;
    v350 = (v349 + ((v348 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v350 = sub_2409AC438;
    v350[1] = v332;
    *v436 = sub_2409AC450;
    *&v436[8] = v349;
    *&v436[16] = sub_24099F6AC;
    *&v436[24] = 0;
    LOBYTE(v437) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040);
    sub_240A2B6EC();
    *v436 = *v439;
    *&v436[16] = *&v439[16];
    v437 = v440;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D850, &qword_240A35070);
    sub_24099E930();
    sub_240A2B6EC();
    if (HIBYTE(v440))
    {
      v351 = 256;
    }

    else
    {
      v351 = 0;
    }

    *v436 = *v439;
    *&v436[16] = *&v439[16];
    v437 = v351 | v440;
    v438 = 1;
    goto LABEL_58;
  }

  sub_2409A5B78(v439);
  *v436 = *v439;
  *&v436[8] = *&v439[8];
  *&v436[24] = *&v439[24];
  LOBYTE(v437) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
  sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040);
  sub_240A2B6EC();
  *v436 = *v439;
  *&v436[16] = *&v439[16];
  v437 = v440;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D850, &qword_240A35070);
  sub_24099E930();
  sub_240A2B6EC();
  if (HIBYTE(v440))
  {
    v308 = 256;
  }

  else
  {
    v308 = 0;
  }

  *v436 = *v439;
  *&v436[16] = *&v439[16];
  v437 = v308 | v440;
  v438 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D870, &qword_240A35080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D880, &unk_240A35088);
  sub_24099EA98(&qword_27E50D868, &qword_27E50D870, &qword_240A35080, sub_24099E930);
  sub_24099EB14();
  sub_240A2B6EC();
  v309 = v440;
  v310 = v441;
  v311 = *&v439[16];
  v312 = v432;
  *v432 = *v439;
  v312[1] = v311;
  *(v312 + 16) = v309;
  *(v312 + 34) = v310;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
  sub_24099E51C();
  sub_24099E9E0();
  sub_240A2B6EC();
}

uint64_t sub_2409A3FD0(uint64_t a1)
{
  v2 = type metadata accessor for AuthenticationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D8A0, &unk_240A32240);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v16 - v10;
  v16[0] = sub_240A2C06C();
  v16[1] = v12;
  sub_2409AC4E4(a1, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AuthenticationView);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_2409AC3A4(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_24091C4F8();
  sub_240A2BCCC();
  sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240);
  sub_240A2BA6C();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_2409A4228()
{
  v0 = sub_240A2A9AC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = *(type metadata accessor for AuthenticationView() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v5 = sub_240A2A75C();
  sub_240A2A66C();
  v5(v10, 0);
  sub_240A2BCFC();
  MEMORY[0x245CCC9B0](v4);
  v6 = sub_240A2A75C();
  v7 = sub_240A2A68C();
  sub_240A2A8BC();
  v7(v9, 0);
  v6(v10, 0);
  return sub_240A2BCFC();
}

uint64_t sub_2409A43A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v30 = sub_240A2A8EC();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v30, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_240A2A6FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_240A2A9AC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(type metadata accessor for AuthenticationView() + 20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0](v21);
  sub_240A2A76C();
  (*(v15 + 8))(v19, v14);
  sub_240A2A69C();
  (*(v9 + 8))(v13, v8);
  v22 = sub_240A2A8DC();
  v24 = v23;
  (*(v3 + 8))(v7, v30);
  v31 = v22;
  v32 = v24;
  sub_24091C4F8();
  result = sub_240A2B9CC();
  *a2 = result;
  *(a2 + 8) = v26;
  *(a2 + 16) = v27 & 1;
  *(a2 + 24) = v28;
  return result;
}

uint64_t sub_2409A4620()
{
  sub_240A2C06C();
  sub_24091C4F8();
  v0 = sub_240A2B9CC();
  v2 = v1;
  v4 = v3;
  sub_240A2B95C();
  v5 = sub_240A2B9AC();
  v7 = v6;
  v9 = v8;

  sub_240920658(v0, v2, v4 & 1);

  sub_240A2BA6C();
  sub_240920658(v5, v7, v9 & 1);
}

uint64_t sub_2409A475C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_240A2975C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DA60, &unk_240A352E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDE0, &qword_240A31CB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v46 - v17;
  if (sub_24099CF64())
  {
    v19 = (v1 + *(type metadata accessor for AuthenticationView() + 40));
    v20 = *v19;
    v21 = *(v19 + 1);
    LOBYTE(v58) = v20;
    *(&v58 + 1) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B630, &qword_240A30C80);
    sub_240A2BC5C();
    sub_2409A5ECC(v48);
    sub_240919298(v18, v13, &qword_27E50BDE0, &qword_240A31CB0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
    sub_240936A78();
    sub_240936B60();
    sub_240A2B6EC();
    return sub_240919300(v18, &qword_27E50BDE0, &qword_240A31CB0);
  }

  else
  {
    v46 = a1;
    v23 = type metadata accessor for AuthenticationView();
    v24 = *(v23 + 44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
    sub_240A2BC5C();
    v25 = (*(v4 + 88))(v8, v3);
    v26 = (v4 + 8);
    if (v25 == *MEMORY[0x277CED240])
    {
      (*v26)(v8, v3);
      v27 = (v1 + *(v23 + 24));
      v28 = *v27;
      v29 = v27[1];
      started = type metadata accessor for SetupStartViewController();
      v31 = objc_allocWithZone(started);
      v32 = &v31[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
      *v32 = v28;
      *(v32 + 1) = v29;
      v47.receiver = v31;
      v47.super_class = started;

      v33 = objc_msgSendSuper2(&v47, sel_initWithContentView_, 0);
      LOBYTE(v48) = 1;
      sub_240A2BD3C();
      v34 = v58;
      v35 = v59;
      sub_240A2C06C();
      v36 = v33;
      v37 = sub_240A2BF1C();

      [v36 showActivityIndicatorWithStatus_];

      LOBYTE(v37) = sub_240A2B88C();
      v38 = sub_240A2B3AC();
      v56 = 0;
      v48 = v36;
      v49 = MEMORY[0x277D84F90];
      v50 = v34;
      v51 = v35;
      *v52 = *v57;
      *&v52[3] = *&v57[3];
      v53 = v38;
      v54 = v37;
      v55 = 0;
    }

    else
    {
      (*v26)(v8, v3);
      v39 = _s14AppleIDSetupUI22ProxCardViewControllerC019newSignInSetupImageefG0ACyFZ_0();
      LOBYTE(v48) = 1;
      sub_240A2BD3C();
      v40 = v58;
      v41 = v59;
      sub_240A2C06C();
      v42 = v39;
      v43 = sub_240A2BF1C();

      [v42 showActivityIndicatorWithStatus_];

      LOBYTE(v43) = sub_240A2B88C();
      v44 = sub_240A2B3AC();
      v56 = 1;
      v48 = v42;
      v49 = MEMORY[0x277D84F90];
      v50 = v40;
      v51 = v41;
      *v52 = *v57;
      *&v52[3] = *&v57[3];
      v53 = v44;
      v54 = v43;
      v55 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7A0, &unk_240A35020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7C0, &unk_240A35030);
    sub_240936BEC();
    sub_240936CA4();
    sub_240A2B6EC();
    v45 = v59;
    *v13 = v58;
    *(v13 + 1) = v45;
    *(v13 + 2) = v60;
    *(v13 + 24) = v61;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
    sub_240936A78();
    sub_240936B60();
    return sub_240A2B6EC();
  }
}

uint64_t sub_2409A4CF8@<X0>(uint64_t a1@<X8>)
{
  v153 = a1;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DA80, &qword_240A35328);
  v2 = *(*(v157 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v157, v3);
  v149 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v145 = &v127 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v142 = &v127 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v139 = &v127 - v13;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B8, &qword_240A35230);
  v14 = *(*(v147 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v147, v15);
  v146 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v143 = &v127 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v140 = &v127 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v137 = &v127 - v25;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  v26 = *(*(v159 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v159, v27);
  v144 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v141 = &v127 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v138 = &v127 - v35;
  MEMORY[0x28223BE20](v34, v36);
  v136 = &v127 - v37;
  v152 = type metadata accessor for LoginCard();
  v38 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152, v39);
  v148 = &v127 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DA88, &qword_240A35330);
  v41 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150, v42);
  v151 = (&v127 - v43);
  v44 = type metadata accessor for AuthenticationView();
  v45 = v44 - 8;
  v127 = *(v44 - 8);
  v46 = *(v127 + 64);
  v48 = MEMORY[0x28223BE20](v44, v47);
  v130 = &v127 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v49;
  MEMORY[0x28223BE20](v48, v50);
  v129 = &v127 - v51;
  *&v155 = sub_240A2A57C();
  v52 = *(v155 - 8);
  v53 = *(v52 + 64);
  v55 = MEMORY[0x28223BE20](v155, v54);
  v135 = &v127 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55, v57);
  v59 = &v127 - v58;
  v60 = sub_240A2A6FC();
  v154 = *(v60 - 8);
  v61 = *(v154 + 64);
  v63 = MEMORY[0x28223BE20](v60, v62);
  v133 = &v127 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63, v65);
  v67 = &v127 - v66;
  v68 = sub_240A2A9AC();
  v69 = *(v68 - 8);
  v70 = *(v69 + 64);
  v72 = MEMORY[0x28223BE20](v68, v71);
  v74 = &v127 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72, v75);
  v77 = &v127 - v76;
  v78 = *(v45 + 28);
  v158 = v1;
  v156 = v78;
  MEMORY[0x245CCC9B0](v159);
  sub_240A2A76C();
  v79 = *(v69 + 8);
  v132 = v68;
  v80 = v68;
  v81 = v154;
  v131 = v79;
  v79(v77, v80);
  sub_240A2A5BC();
  v82 = *(v81 + 8);
  v134 = v60;
  v82(v67, v60);
  v83 = sub_240A2A50C();
  v84 = *(v52 + 8);
  v85 = v59;
  v86 = v155;
  v154 = v52 + 8;
  result = v84(v85, v155);
  if (v83)
  {
    v88 = [v83 isUsernameEditable];

    if (v88)
    {
      goto LABEL_5;
    }

    MEMORY[0x245CCC9B0](v159);
    v89 = v133;
    sub_240A2A76C();
    v131(v74, v132);
    v90 = v135;
    sub_240A2A5BC();
    v82(v89, v134);
    v91 = sub_240A2A54C();
    v93 = v92;
    v84(v90, v86);
    if (!v93)
    {
LABEL_5:
      v106 = v136;
      sub_240A2BD1C();
      swift_getKeyPath();
      v107 = v137;
      sub_240A2BD0C();

      sub_240919300(v106, &qword_27E50D700, &qword_240A34A50);
      swift_getKeyPath();
      v108 = v139;
      sub_240A2BD0C();

      sub_240919300(v107, &qword_27E50D9B8, &qword_240A35230);
      swift_getKeyPath();
      sub_240A2BD0C();

      sub_240919300(v108, &qword_27E50DA80, &qword_240A35328);
      v155 = v160;
      v154 = v161;
      v139 = v162;
      v109 = v138;
      sub_240A2BD1C();
      swift_getKeyPath();
      v110 = v140;
      sub_240A2BD0C();

      sub_240919300(v109, &qword_27E50D700, &qword_240A34A50);
      swift_getKeyPath();
      v111 = v142;
      sub_240A2BD0C();

      sub_240919300(v110, &qword_27E50D9B8, &qword_240A35230);
      swift_getKeyPath();
      v112 = v152;
      v113 = v148;
      v114 = &v148[*(v152 + 20)];
      sub_240A2BD0C();

      sub_240919300(v111, &qword_27E50DA80, &qword_240A35328);
      v115 = v141;
      sub_240A2BD1C();
      swift_getKeyPath();
      v116 = v143;
      sub_240A2BD0C();

      sub_240919300(v115, &qword_27E50D700, &qword_240A34A50);
      swift_getKeyPath();
      v117 = v145;
      sub_240A2BD0C();

      sub_240919300(v116, &qword_27E50D9B8, &qword_240A35230);
      swift_getKeyPath();
      v118 = v113 + v112[6];
      sub_240A2BD0C();

      sub_240919300(v117, &qword_27E50DA80, &qword_240A35328);
      v119 = v144;
      sub_240A2BD1C();
      swift_getKeyPath();
      v120 = v146;
      sub_240A2BD0C();

      sub_240919300(v119, &qword_27E50D700, &qword_240A34A50);
      swift_getKeyPath();
      v121 = v149;
      sub_240A2BD0C();

      sub_240919300(v120, &qword_27E50D9B8, &qword_240A35230);
      swift_getKeyPath();
      sub_240A2BD0C();

      sub_240919300(v121, &qword_27E50DA80, &qword_240A35328);
      v122 = v164;
      v123 = v165;
      LOBYTE(v106) = v166;
      v124 = v112[8];
      *(v113 + v124) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
      swift_storeEnumTagMultiPayload();
      *v113 = v155;
      v125 = v139;
      *(v113 + 16) = v154;
      *(v113 + 24) = v125;
      v126 = v113 + v112[7];
      *v126 = v122;
      *(v126 + 8) = v123;
      *(v126 + 16) = v106;
      sub_2409AC4E4(v113, v151, type metadata accessor for LoginCard);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
      sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0);
      sub_24099EC88(&qword_27E50D840, type metadata accessor for LoginCard);
      sub_240A2B6EC();
      return sub_2409AC54C(v113, type metadata accessor for LoginCard);
    }

    else
    {
      v94 = v158;
      v95 = v129;
      sub_2409AC4E4(v158, v129, type metadata accessor for AuthenticationView);
      v96 = (*(v127 + 80) + 16) & ~*(v127 + 80);
      v97 = (v96 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
      v98 = swift_allocObject();
      sub_2409AC3A4(v95, v98 + v96);
      v99 = (v98 + v97);
      *v99 = v91;
      v99[1] = v93;
      v100 = v130;
      sub_2409AC4E4(v94, v130, type metadata accessor for AuthenticationView);
      v101 = swift_allocObject();
      sub_2409AC3A4(v100, v101 + v96);

      sub_2409A7688(v91, v93, sub_2409AC5AC, v98, sub_2409AC65C, v101, &v160);

      v102 = v161;
      v103 = v162;
      v104 = v163;
      v105 = v151;
      *v151 = v160;
      *(v105 + 2) = v102;
      *(v105 + 3) = v103;
      *(v105 + 32) = v104;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
      sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0);
      sub_24099EC88(&qword_27E50D840, type metadata accessor for LoginCard);
      return sub_240A2B6EC();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2409A5B78(void *a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for AuthenticationView();
  v3 = v2 - 8;
  v31 = *(v2 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v32 = v6;
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_240A2A74C();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v35, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_240A2A6FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_240A2A9AC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v3 + 28);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  v30 = v1;
  MEMORY[0x245CCC9B0](v25);
  sub_240A2A76C();
  (*(v19 + 8))(v23, v18);
  sub_240A2A5EC();
  (*(v13 + 8))(v17, v12);
  v26 = sub_240A2A70C();
  (*(v7 + 8))(v11, v35);
  if (v26)
  {
    v27 = v33;
    sub_2409AC4E4(v30, v33, type metadata accessor for AuthenticationView);
    v28 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v29 = swift_allocObject();
    sub_2409AC3A4(v27, v29 + v28);
    sub_24099ECEC(v26, sub_2409AC950, v29, v34);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2409A5ECC(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DA70, &qword_240A352F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TeenSetupContinueOnParentOrGuardianView();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = (&v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    *v17 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    sub_2409AC4E4(v17, v12, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
    swift_storeEnumTagMultiPayload();
    sub_24099EC88(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    sub_240A2B6EC();
    return sub_2409AC54C(v17, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
  }

  else
  {
    sub_240A2B22C();
    (*(v3 + 16))(v12, v7, v2);
    swift_storeEnumTagMultiPayload();
    sub_24099EC88(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    sub_240A2B6EC();
    return (*(v3 + 8))(v7, v2);
  }
}

void sub_2409A6208(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v57 = type metadata accessor for AuthenticationView();
  v62 = *(v57 - 8);
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v57, v4);
  v5 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240A299DC();
  v60 = *(v6 - 8);
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v59 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_240A29A0C();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v56 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_240A2A86C();
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v53 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_240A2A6FC();
  v51 = *(v18 - 8);
  v52 = v18;
  v19 = *(v51 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_240A2A9AC();
  v23 = *(v50 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v50, v25);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AF68 != -1)
  {
    swift_once();
  }

  v28 = sub_240A2B00C();
  __swift_project_value_buffer(v28, qword_27E50D6D0);
  v29 = sub_240A2AFFC();
  v30 = sub_240A2C28C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v49 = v10;
    v32 = a2;
    v33 = v31;
    *v31 = 0;
    _os_log_impl(&dword_2408FE000, v29, v30, "Running as client, attempting to repair if necessary.", v31, 2u);
    v34 = v33;
    a2 = v32;
    v5 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = v49;
    MEMORY[0x245CCDDB0](v34, -1, -1);
  }

  v35 = *(v57 + 20);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0](v36);
  sub_240A2A76C();
  (*(v23 + 8))(v27, v50);
  v37 = v53;
  sub_240A2A64C();
  (*(v51 + 8))(v22, v52);
  v38 = v56;
  sub_240A2A84C();
  (*(v54 + 8))(v37, v55);
  v39 = v59;
  sub_240A299FC();
  (*(v58 + 8))(v38, v10);
  sub_240A299BC();
  (*(v60 + 8))(v39, v6);
  v40 = objc_allocWithZone(MEMORY[0x277CFDAE8]);
  v41 = sub_240A2BF1C();

  v42 = [v40 initWithAltDSID_];

  v43 = sub_240A2BF1C();
  [v42 setFeatureName_];

  [v42 setDeviceToDeviceEncryptionUpgradeUIStyle_];
  [v42 setDeviceToDeviceEncryptionUpgradeType_];
  [v42 setPresentingViewController_];
  [v42 setSecurityUpgradeContext_];
  v44 = [objc_allocWithZone(MEMORY[0x277CFDAF0]) initWithContext_];
  sub_2409AC4E4(a2, v5, type metadata accessor for AuthenticationView);
  v45 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v46 = swift_allocObject();
  sub_2409AC3A4(v5, v46 + v45);
  aBlock[4] = sub_2409AC4CC;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240A1EFE0;
  aBlock[3] = &block_descriptor_106;
  v47 = _Block_copy(aBlock);

  [v44 performDeviceToDeviceEncryptionStateRepairWithCompletion_];
  _Block_release(v47);
}

uint64_t sub_2409A68D0(int a1, void *a2, uint64_t a3)
{
  v98 = a3;
  v93 = sub_240A2A8FC();
  v91 = *(v93 - 8);
  v5 = *(v91 + 64);
  MEMORY[0x28223BE20](v93, v6);
  v92 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_240A29A0C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v89 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_240A2A6FC();
  v87 = *(v12 - 8);
  v88 = v12;
  v13 = *(v87 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v86 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_240A2A86C();
  v16 = *(v97 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v97, v18);
  v79 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v90 = &v79 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v85 = &v79 - v26;
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v79 - v28;
  v84 = sub_240A2A9AC();
  v83 = *(v84 - 8);
  v30 = *(v83 + 64);
  v32 = MEMORY[0x28223BE20](v84, v31);
  v82 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v96 = &v79 - v35;
  LODWORD(v95) = a1;
  v99 = v16;
  if (a1)
  {
    if (qword_27E50AF68 != -1)
    {
      swift_once();
    }

    v36 = sub_240A2B00C();
    __swift_project_value_buffer(v36, qword_27E50D6D0);
    v37 = sub_240A2AFFC();
    v38 = sub_240A2C28C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2408FE000, v37, v38, "Repair successful, finished", v39, 2u);
LABEL_13:
      MEMORY[0x245CCDDB0](v39, -1, -1);
    }
  }

  else
  {
    if (qword_27E50AF68 != -1)
    {
      swift_once();
    }

    v40 = sub_240A2B00C();
    __swift_project_value_buffer(v40, qword_27E50D6D0);
    v41 = a2;
    v37 = sub_240A2AFFC();
    v42 = sub_240A2C2AC();

    if (os_log_type_enabled(v37, v42))
    {
      v39 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v39 = 138412290;
      if (a2)
      {
        v44 = a2;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        v46 = v45;
      }

      else
      {
        v45 = 0;
        v46 = 0;
      }

      *(v39 + 4) = v45;
      *v43 = v46;
      _os_log_impl(&dword_2408FE000, v37, v42, "Repair was not successful %@", v39, 0xCu);
      sub_240919300(v43, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v43, -1, -1);
      goto LABEL_13;
    }
  }

  v94 = v29;
  v80 = a2;
  if (a2)
  {
    sub_240A2952C();
  }

  v47 = *(type metadata accessor for AuthenticationView() + 20);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v49 = sub_240A2A75C();
  v50 = sub_240A2A63C();
  sub_240A2A82C();
  v50(v100, 0);
  v49(v101, 0);
  sub_240A2BCFC();
  MEMORY[0x245CCC9B0](v48);
  v51 = sub_240A2A75C();
  v52 = sub_240A2A63C();
  sub_240A2A85C();
  v52(v100, 0);
  v51(v101, 0);
  sub_240A2BCFC();
  v81 = v47;
  v53 = v82;
  MEMORY[0x245CCC9B0](v48);
  v54 = v86;
  sub_240A2A76C();
  (*(v83 + 8))(v53, v84);
  v55 = v85;
  sub_240A2A64C();
  (*(v87 + 8))(v54, v88);
  sub_240A2A84C();
  v56 = v99;
  v57 = *(v99 + 8);
  v58 = v97;
  v57(v55, v97);
  if (v80)
  {
    sub_240A2952C();
  }

  v59 = v94;
  v60 = v90;
  sub_240A2A83C();
  if (qword_27E50AF68 != -1)
  {
    swift_once();
  }

  v61 = sub_240A2B00C();
  __swift_project_value_buffer(v61, qword_27E50D6D0);
  v64 = *(v56 + 16);
  v62 = v56 + 16;
  v63 = v64;
  v64(v60, v59, v58);
  v65 = sub_240A2AFFC();
  v66 = sub_240A2C28C();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v99 = v62;
    v95 = v68;
    v101[0] = v68;
    *v67 = 136315138;
    v63(v79, v60, v58);
    v69 = sub_240A2BF9C();
    v70 = v60;
    v71 = v69;
    v73 = v72;
    v57(v70, v97);
    v74 = sub_240925464(v71, v73, v101);
    v58 = v97;

    *(v67 + 4) = v74;
    _os_log_impl(&dword_2408FE000, v65, v66, "Setting state to dismiss with preflight repair result: %s", v67, 0xCu);
    v75 = v95;
    __swift_destroy_boxed_opaque_existential_0(v95);
    MEMORY[0x245CCDDB0](v75, -1, -1);
    v76 = v67;
    v59 = v94;
    MEMORY[0x245CCDDB0](v76, -1, -1);
  }

  else
  {

    v57(v60, v58);
  }

  v77 = v92;
  v63(v92, v59, v58);
  (*(v91 + 104))(v77, *MEMORY[0x277CEDC78], v93);
  MEMORY[0x245CCC9B0](v48);
  sub_240A2A91C();
  sub_240A2BCFC();
  return (v57)(v59, v58);
}

uint64_t sub_2409A724C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_240A2A9AC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DA90, &qword_240A30970);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v25[-v15];
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A8, &unk_240A30A60) + 48);
  *v16 = a4;
  v16[1] = a5;
  v26[0] = a1;
  v26[1] = a2;

  sub_240A29CEC();
  v18 = *MEMORY[0x277CEDB30];
  v19 = sub_240A2A4DC();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v16, v18, v19);
  (*(v20 + 56))(v16, 0, 1, v19);
  v21 = *(type metadata accessor for AuthenticationView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v22 = sub_240A2A75C();
  v23 = sub_240A2A5AC();
  sub_240A2A4FC();
  v23(v25, 0);
  v22(v26, 0);
  return sub_240A2BCFC();
}

uint64_t sub_2409A7494()
{
  v0 = sub_240A2A9AC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DA90, &qword_240A30970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v15[-v6];
  v8 = *MEMORY[0x277CEDB38];
  v9 = sub_240A2A4DC();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v7, v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  v11 = *(type metadata accessor for AuthenticationView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v12 = sub_240A2A75C();
  v13 = sub_240A2A5AC();
  sub_240A2A4FC();
  v13(v15, 0);
  v12(v16, 0);
  return sub_240A2BCFC();
}

void sub_2409A7688(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;

  v45 = sub_240A2C39C();
  v43 = [objc_allocWithZone(MEMORY[0x277D43378]) init];
  sub_240A2C06C();
  sub_240A2C06C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_240A305D0;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_240913AEC();
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  sub_240A2BF6C();

  sub_240A2BD3C();
  v47 = v51;
  v48 = aBlock;
  v46 = v52;
  v56 = 1;
  sub_240A2BD3C();
  v14 = [objc_allocWithZone(MEMORY[0x277D43330]) initWithContentView_];
  [v14 setDismissalType_];
  v15 = sub_240A2BF1C();

  [v14 setTitle_];

  v16 = sub_240A2BF1C();

  [v14 setSubtitle_];

  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v19 = swift_allocObject();
  v19[2] = sub_2409AC6F0;
  v19[3] = v17;
  v19[4] = v18;

  v20 = v14;

  v21 = sub_240A2BF1C();
  v54 = sub_2409977DC;
  v55 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_2409DFF20;
  v53 = &block_descriptor_147_0;
  v22 = _Block_copy(&aBlock);
  v23 = objc_opt_self();
  v24 = [v23 actionWithTitle:v21 style:0 handler:v22];

  _Block_release(v22);

  [v20 setDismissButtonAction_];

  sub_240A2C06C();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v45;
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v28 = swift_allocObject();
  v28[2] = sub_2409AC6F8;
  v28[3] = v26;
  v28[4] = v27;
  v29 = v20;
  v30 = v45;

  v31 = sub_240A2BF1C();

  v54 = sub_2409977DC;
  v55 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_2409DFF20;
  v53 = &block_descriptor_160;
  v32 = _Block_copy(&aBlock);
  v33 = [v23 actionWithTitle:v31 style:0 handler:v32];

  _Block_release(v32);

  v34 = [v29 addAction_];

  v35 = swift_allocObject();
  v36 = MEMORY[0x277D84F90];
  *(v35 + 16) = v43;
  *(v35 + 24) = v30;
  *a7 = v29;
  *(a7 + 8) = v36;
  *(a7 + 16) = v48;
  *(a7 + 24) = v47;
  *(a7 + 32) = v46;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_2409AC700;
  *(v37 + 24) = v35;
  v38 = v30;
  v39 = v43;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_240937AA4(0, v36[2] + 1, 1, v36);
  }

  v41 = v36[2];
  v40 = v36[3];
  if (v41 >= v40 >> 1)
  {
    v36 = sub_240937AA4((v40 > 1), v41 + 1, 1, v36);
  }

  v36[2] = v41 + 1;
  v42 = &v36[2 * v41];
  v42[4] = sub_240997818;
  v42[5] = v37;
  *(a7 + 8) = v36;
}

uint64_t sub_2409A7D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_2409A7E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v17 - v14;
  sub_240919298(a1, &v17 - v14, a5, a6);
  return a7(v15);
}

void sub_2409A7F48(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  sub_2409AC4E4(a2, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AuthenticationView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2409AC3A4(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  aBlock[4] = sub_2409AC708;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409AD0E4;
  aBlock[3] = &block_descriptor_175;
  v10 = _Block_copy(aBlock);

  [a1 presentSecondFactorUIWithCompletion_];
  _Block_release(v10);
}

void sub_2409A8100(void *a1, uint64_t a2)
{
  v119 = a2;
  v107 = a1;
  v2 = type metadata accessor for AuthenticationView();
  v3 = v2 - 8;
  v104 = *(v2 - 8);
  v4 = *(v104 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v105 = v6;
  v106 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_240A2A95C();
  v110 = *(v96 - 8);
  v7 = *(v110 + 64);
  MEMORY[0x28223BE20](v96, v8);
  v94 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DAA8, &qword_240A35438);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v103 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v99 = (&v93 - v17);
  MEMORY[0x28223BE20](v16, v18);
  v100 = &v93 - v19;
  v118 = sub_240A2A8AC();
  v20 = *(v118 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v118, v22);
  v102 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v97 = &v93 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v93 - v29;
  v31 = sub_240A2A6FC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x28223BE20](v31, v34);
  v101 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v95 = &v93 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v42 = &v93 - v41;
  v43 = sub_240A2A9AC();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v47 = MEMORY[0x28223BE20](v43, v46);
  v98 = &v93 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v47, v49);
  v52 = &v93 - v51;
  MEMORY[0x28223BE20](v50, v53);
  v55 = &v93 - v54;
  v56 = *(v3 + 28);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  v114 = v56;
  MEMORY[0x245CCC9B0]();
  sub_240A2A76C();
  v57 = *(v44 + 8);
  v115 = v44 + 8;
  v116 = v43;
  v112 = v57;
  v57(v55, v43);
  v58 = v100;
  sub_240A2A67C();
  v59 = *(v32 + 8);
  v108 = v31;
  v117 = v32 + 8;
  v60 = v59(v42, v31);
  MEMORY[0x245CCB560](v60);
  v61 = *(v20 + 8);
  v109 = v20 + 8;
  v111 = v61;
  v61(v30, v118);
  v62 = *(v110 + 48);
  v63 = v96;
  if (v62(v58, 1))
  {
    sub_240919300(v58, &qword_27E50DAA8, &qword_240A35438);
LABEL_3:
    v100 = 0;
    goto LABEL_6;
  }

  v64 = sub_240A2A92C();
  sub_240919300(v58, &qword_27E50DAA8, &qword_240A35438);
  if (!v64)
  {
    goto LABEL_3;
  }

  v100 = sub_240A2952C();

LABEL_6:
  v65 = v108;
  v66 = v99;
  MEMORY[0x245CCC9B0](v113);
  v67 = v95;
  sub_240A2A76C();
  v112(v52, v116);
  v68 = v97;
  sub_240A2A67C();
  v99 = v59;
  v69 = v59(v67, v65);
  MEMORY[0x245CCB560](v69);
  v70 = v68;
  v71 = v118;
  v111(v70, v118);
  v72 = v63;
  if ((v62)(v66, 1, v63))
  {
    sub_240919300(v66, &qword_27E50DAA8, &qword_240A35438);
    v73 = 0;
  }

  else
  {
    v74 = v110;
    v75 = v94;
    (*(v110 + 16))(v94, v66, v63);
    sub_240919300(v66, &qword_27E50DAA8, &qword_240A35438);
    sub_240A2A93C();
    v77 = v76;
    (*(v74 + 8))(v75, v63);
    if (v77)
    {
      v73 = sub_240A2BF1C();
    }

    else
    {
      v73 = 0;
    }

    v71 = v118;
    v65 = v108;
  }

  v78 = v98;
  MEMORY[0x245CCC9B0](v113);
  v79 = v101;
  sub_240A2A76C();
  v112(v78, v116);
  v80 = v102;
  sub_240A2A67C();
  v81 = v99(v79, v65);
  v82 = v103;
  MEMORY[0x245CCB560](v81);
  v111(v80, v71);
  if ((v62)(v82, 1, v72))
  {
    sub_240919300(v82, &qword_27E50DAA8, &qword_240A35438);
  }

  else
  {
    v84 = v110;
    v85 = v94;
    (*(v110 + 16))(v94, v82, v72);
    sub_240919300(v82, &qword_27E50DAA8, &qword_240A35438);
    sub_240A2A94C();
    v87 = v86;
    (*(v84 + 8))(v85, v72);
    if (v87)
    {
      v83 = sub_240A2BF1C();

      goto LABEL_17;
    }
  }

  v83 = 0;
LABEL_17:
  v88 = v106;
  sub_2409AC4E4(v119, v106, type metadata accessor for AuthenticationView);
  v89 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v90 = swift_allocObject();
  sub_2409AC3A4(v88, v90 + v89);
  aBlock[4] = sub_2409AC748;
  aBlock[5] = v90;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409AD0E4;
  aBlock[3] = &block_descriptor_184_0;
  v91 = _Block_copy(aBlock);

  v92 = v100;
  [v107 presentSecondFactorAlertWithError:v100 title:v73 message:v83 completion:v91];
  _Block_release(v91);
}

uint64_t sub_2409A8A84(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *), void (*a5)(id, BOOL), void (*a6)(uint64_t))
{
  v9 = sub_240A2A9AC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  if (a1)
  {
    v12 = [a1 integerValue];
  }

  else
  {
    v12 = 0;
  }

  v13 = *(type metadata accessor for AuthenticationView() + 20);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v15 = sub_240A2A75C();
  v16 = a4(v22);
  a5(v12, a1 == 0);
  v16(v22, 0);
  v15(v23, 0);
  sub_240A2BCFC();
  if (a2)
  {
    a2 = sub_240A2952C();
  }

  MEMORY[0x245CCC9B0](v14);
  v17 = sub_240A2A75C();
  v18 = a4(v22);
  a6(a2);
  v18(v22, 0);
  v17(v23, 0);
  return sub_240A2BCFC();
}

void sub_2409A8C98(void *a1, uint64_t a2)
{
  v36 = a1;
  v3 = type metadata accessor for AuthenticationView();
  v4 = v3 - 8;
  v35 = *(v3 - 8);
  v34 = *(v35 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_240A2A81C();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v32, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_240A2A6FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_240A2A9AC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v4 + 28);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0](v25);
  sub_240A2A76C();
  (*(v19 + 8))(v23, v18);
  sub_240A2A62C();
  (*(v13 + 8))(v17, v12);
  v26 = sub_240A2A7CC();
  (*(v7 + 8))(v11, v32);
  v27 = v33;
  sub_2409AC4E4(a2, v33, type metadata accessor for AuthenticationView);
  v28 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v29 = swift_allocObject();
  sub_2409AC3A4(v27, v29 + v28);
  aBlock[4] = sub_2409AC81C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409A92B4;
  aBlock[3] = &block_descriptor_193;
  v30 = _Block_copy(aBlock);

  [v36 presentServerProvidedUIWithConfiguration:v26 completion:v30];
  _Block_release(v30);
}

uint64_t sub_2409A9044(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_240A2A9AC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = *(type metadata accessor for AuthenticationView() + 20);
  v9 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v11 = sub_240A2A75C();
  v12 = sub_240A2A61C();
  sub_240A2A7DC();
  v12(v19, 0);
  v11(v20, 0);
  sub_240A2BCFC();
  if (a2)
  {
    sub_240A2BE9C();
  }

  MEMORY[0x245CCC9B0](v10);
  v13 = sub_240A2A75C();
  v14 = sub_240A2A61C();
  sub_240A2A7EC();
  v14(v19, 0);
  v13(v20, 0);
  sub_240A2BCFC();
  if (a3)
  {
    sub_240A2952C();
  }

  MEMORY[0x245CCC9B0](v10);
  v15 = sub_240A2A75C();
  v16 = sub_240A2A61C();
  sub_240A2A80C();
  v16(v19, 0);
  v15(v20, 0);
  return sub_240A2BCFC();
}

uint64_t sub_2409A92B4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = sub_240A2BEBC();
  }

  else
  {
    v8 = 0;
  }

  v9 = a2;
  v10 = a4;
  v7(a2, v8, a4);
}

void sub_2409A93A4(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7[4] = a2;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_240A1EFE0;
  v7[3] = a3;
  v6 = _Block_copy(v7);
  [a1 *a4];
  _Block_release(v6);
}

void sub_2409A9448(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_27E50AF68 != -1)
  {
    swift_once();
  }

  v4 = sub_240A2B00C();
  __swift_project_value_buffer(v4, qword_27E50D6D0);
  oslog = sub_240A2AFFC();
  v5 = sub_240A2C28C();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2408FE000, oslog, v5, a3, v6, 2u);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }
}

void sub_2409A9538(void *a1, uint64_t a2)
{
  v36 = a1;
  v3 = type metadata accessor for AuthenticationView();
  v4 = v3 - 8;
  v35 = *(v3 - 8);
  v34 = *(v35 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_240A2A7BC();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v32, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_240A2A6FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_240A2A9AC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v4 + 28);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0](v25);
  sub_240A2A76C();
  (*(v19 + 8))(v23, v18);
  sub_240A2A60C();
  (*(v13 + 8))(v17, v12);
  v26 = sub_240A2A72C();
  (*(v7 + 8))(v11, v32);
  v27 = v33;
  sub_2409AC4E4(a2, v33, type metadata accessor for AuthenticationView);
  v28 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v29 = swift_allocObject();
  sub_2409AC3A4(v27, v29 + v28);
  aBlock[4] = sub_2409AC8A4;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409A9AD0;
  aBlock[3] = &block_descriptor_199;
  v30 = _Block_copy(aBlock);

  [v36 presentNativeRecoveryUIWithContext:v26 completion:v30];
  _Block_release(v30);
}

uint64_t sub_2409A98E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_240A2A9AC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  if (a1)
  {
    sub_240A2BE9C();
  }

  v7 = *(type metadata accessor for AuthenticationView() + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v9 = sub_240A2A75C();
  v10 = sub_240A2A5FC();
  sub_240A2A71C();
  v10(v14, 0);
  v9(v15, 0);
  sub_240A2BCFC();
  if (a2)
  {
    sub_240A2952C();
  }

  MEMORY[0x245CCC9B0](v8);
  v11 = sub_240A2A75C();
  v12 = sub_240A2A5FC();
  sub_240A2A73C();
  v12(v14, 0);
  v11(v15, 0);
  return sub_240A2BCFC();
}

uint64_t sub_2409A9AD0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_240A2BEBC();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

void sub_2409A9B7C(void *a1, uint64_t a2)
{
  v48 = a2;
  v56 = a1;
  v2 = type metadata accessor for AuthenticationView();
  v3 = v2 - 8;
  v55 = *(v2 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_240A2A74C();
  v59 = *(v51 - 8);
  v6 = *(v59 + 64);
  v8 = MEMORY[0x28223BE20](v51, v7);
  v52 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v47 - v11;
  v13 = sub_240A2A6FC();
  v14 = *(v13 - 8);
  v57 = v13;
  v58 = v14;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v49 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v47 - v20;
  v22 = sub_240A2A9AC();
  v47 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v47 - v30;
  v32 = *(v3 + 28);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  sub_240A2A76C();
  v34 = *(v23 + 8);
  v34(v31, v22);
  sub_240A2A5EC();
  v35 = *(v58 + 8);
  v58 += 8;
  v35(v21, v57);
  v50 = sub_240A2A70C();
  v36 = *(v59 + 8);
  v59 += 8;
  v37 = v51;
  v36(v12, v51);
  v38 = v48;
  MEMORY[0x245CCC9B0](v33);
  v39 = v49;
  sub_240A2A76C();
  v34(v28, v47);
  v40 = v52;
  sub_240A2A5EC();
  v35(v39, v57);
  v41 = sub_240A2A72C();
  v36(v40, v37);
  v42 = v53;
  sub_2409AC4E4(v38, v53, type metadata accessor for AuthenticationView);
  v43 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v44 = swift_allocObject();
  sub_2409AC3A4(v42, v44 + v43);
  aBlock[4] = sub_2409AC9EC;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409AD0E4;
  aBlock[3] = &block_descriptor_208;
  v45 = _Block_copy(aBlock);

  v46 = v50;
  [v56 presentFidoAuthForContext:v50 fidoContext:v41 completion:v45];

  _Block_release(v45);
}

uint64_t sub_2409AA034(void *a1, uint64_t a2)
{
  v4 = sub_240A2A9AC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = *(type metadata accessor for AuthenticationView() + 20);
  v8 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v10 = sub_240A2A75C();
  v11 = sub_240A2A5DC();
  sub_240A2A73C();
  v11(v15, 0);
  v10(v16, 0);
  sub_240A2BCFC();
  if (a2)
  {
    sub_240A2952C();
  }

  MEMORY[0x245CCC9B0](v9);
  v12 = sub_240A2A75C();
  v13 = sub_240A2A5DC();
  sub_240A2A71C();
  v13(v15, 0);
  v12(v16, 0);
  return sub_240A2BCFC();
}

void sub_2409AA1EC(void *a1, uint64_t a2)
{
  v35 = a2;
  v3 = type metadata accessor for AuthenticationView();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240A2A99C();
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_240A2A6FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_240A2A9AC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  if ([a1 respondsToSelector_])
  {
    v23 = *(v3 + 20);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
    v25 = v35;
    MEMORY[0x245CCC9B0](v24);
    sub_240A2A76C();
    (*(v18 + 8))(v22, v17);
    sub_240A2A6EC();
    (*(v12 + 8))(v16, v11);
    sub_240A2A98C();
    (*(v31 + 8))(v10, v32);
    v26 = v34;
    sub_2409AC4E4(v25, v34, type metadata accessor for AuthenticationView);
    v27 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v28 = swift_allocObject();
    sub_2409AC3A4(v26, v28 + v27);
    v29 = sub_240A2BF1C();
    aBlock[4] = sub_2409ACC1C;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_240A1EFE0;
    aBlock[3] = &block_descriptor_214;
    v30 = _Block_copy(aBlock);

    [v36 presentKeepUsingUIForAppleID:v29 completion:v30];
    _Block_release(v30);
  }
}

uint64_t sub_2409AA5E4()
{
  v0 = sub_240A2A9AC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = *(type metadata accessor for AuthenticationView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v4 = sub_240A2A75C();
  v5 = sub_240A2A6DC();
  sub_240A2A96C();
  v5(v7, 0);
  v4(v8, 0);
  return sub_240A2BCFC();
}

uint64_t sub_2409AA710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = sub_240A2A8FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_240A2A9AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D708, &unk_240A34FC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v23 - v18;
  sub_24099D338(v23 - v18);
  v20 = *(a1 + 20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0](v21);
  sub_240A2A90C();
  (*(v10 + 8))(v14, v9);
  sub_24099E36C();
  sub_24099EC88(&qword_27E50D8B0, MEMORY[0x277CEDC88]);
  sub_240A2BAFC();
  (*(v4 + 8))(v8, v3);
  return sub_240905D98(v19);
}

void sub_2409AA9B0()
{
  sub_2409306A4();
  if (v0 <= 0x3F)
  {
    sub_2409AAC70(319, &qword_27E50D8D8, MEMORY[0x277CEDC98], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_2409AACD4(319, &unk_27E50D8E0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2409AAD24(319, &qword_27E50F570, &unk_27E50F540, &unk_240A34F50, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2409AAD24(319, &unk_27E50D8F0, &unk_27E50D6F0, &qword_240A34B08, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_2409AACD4(319, &qword_27E50B600, MEMORY[0x277CED748], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_2409AAC70(319, &unk_27E50D900, MEMORY[0x277CED260], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_2409AAD24(319, &qword_27E50B5F0, &unk_27E50D910, qword_240A35F80, MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_2409AACD4(319, &qword_27E50B5F8, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
                  {
                    sub_2409AAD24(319, &qword_27E50D920, &unk_27E50D6F0, &qword_240A34B08, MEMORY[0x277CE4608]);
                    if (v9 <= 0x3F)
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
    }
  }
}

void sub_2409AAC70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2409AACD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2409AAD24(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_2409AADD0(uint64_t a1, uint64_t a2)
{

  return sub_2409AC12C(a1, a2);
}

uint64_t sub_2409AAE2C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_27E50D928);
  v4 = *(v2 + qword_27E50D928 + 8);
  *v3 = a1;
  v3[1] = a2;
}

void sub_2409AAE48(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_2409AC290();
}

void sub_2409AAEB4(void *a1, int a2, void (*a3)(), uint64_t a4)
{
  LODWORD(v7) = a2;
  v9 = *MEMORY[0x277D85000] & *v4;
  v10 = sub_240A2B00C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (a3)
    {
      v60 = a3;
      v61 = a4;
      aBlock = MEMORY[0x277D85DD0];
      v57 = 1107296256;
      v58 = sub_2409EC704;
      v59 = &block_descriptor_24;
      a3 = _Block_copy(&aBlock);
    }

    v16 = *(v9 + 80);
    v17 = *(v9 + 88);
    v18 = type metadata accessor for NavigationControllerCompat.Coordinator();
    v55.receiver = v4;
    v55.super_class = v18;
    objc_msgSendSuper2(&v55, sel_presentViewController_animated_completion_, a1, v7 & 1, a3);
LABEL_5:
    _Block_release(a3);
    return;
  }

  v19 = [v4 presentedViewController];
  if (!v19)
  {
    [a1 setModalPresentationStyle_];
    if (a3)
    {
      v60 = a3;
      v61 = a4;
      aBlock = MEMORY[0x277D85DD0];
      v57 = 1107296256;
      v58 = sub_2409EC704;
      v59 = &block_descriptor_15;
      a3 = _Block_copy(&aBlock);
    }

    v37 = *(v9 + 80);
    v38 = *(v9 + 88);
    v39 = type metadata accessor for NavigationControllerCompat.Coordinator();
    v62.receiver = v4;
    v62.super_class = v39;
    objc_msgSendSuper2(&v62, sel_presentViewController_animated_completion_, a1, v7 & 1, a3);
    goto LABEL_5;
  }

  v20 = v19;
  v53 = v4;
  sub_240A2AE7C();
  v21 = v20;
  v22 = sub_240A2AFFC();
  v23 = sub_240A2C28C();
  v54 = v21;

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v48 = v24;
    v50 = swift_slowAlloc();
    aBlock = v50;
    *v24 = 136315138;
    v25 = v54;
    v49 = v23;
    v26 = v25;
    v27 = [v25 description];
    v51 = a4;
    v28 = v27;
    v29 = sub_240A2BF4C();
    v52 = v7;
    v7 = v30;

    v31 = sub_240925464(v29, v7, &aBlock);
    LOBYTE(v7) = v52;

    v32 = v48;
    *(v48 + 1) = v31;
    a4 = v51;
    v33 = v22;
    v34 = v22;
    v35 = v32;
    _os_log_impl(&dword_2408FE000, v34, v49, "presentedViewController: %s", v32, 0xCu);
    v36 = v50;
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x245CCDDB0](v36, -1, -1);
    MEMORY[0x245CCDDB0](v35, -1, -1);
  }

  else
  {
  }

  (*(v11 + 8))(v15, v10);
  v40 = v53;
  v41 = swift_allocObject();
  *(v41 + 16) = a1;
  *(v41 + 24) = v40;
  *(v41 + 32) = v7 & 1;
  *(v41 + 40) = a3;
  *(v41 + 48) = a4;
  v60 = sub_2409AC384;
  v61 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v57 = 1107296256;
  v58 = sub_2409EC704;
  v59 = &block_descriptor_21;
  v42 = _Block_copy(&aBlock);
  v43 = a4;
  v44 = v42;
  sub_240964BBC(a3, v43);
  v45 = a1;
  v46 = v40;

  [v46 dismissViewControllerAnimated:v7 & 1 completion:v44];
  _Block_release(v44);
}

void sub_2409AB370(void *a1, void *a2, char a3, void *a4, uint64_t a5)
{
  v10 = *MEMORY[0x277D85000] & *a2;
  [a1 setModalPresentationStyle_];
  if (a4)
  {
    v14[4] = a4;
    v14[5] = a5;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_2409EC704;
    v14[3] = &block_descriptor_27;
    a4 = _Block_copy(v14);
  }

  v11 = *(v10 + 80);
  v12 = *(v10 + 88);
  v13 = type metadata accessor for NavigationControllerCompat.Coordinator();
  v15.receiver = a2;
  v15.super_class = v13;
  objc_msgSendSuper2(&v15, sel_presentViewController_animated_completion_, a1, a3 & 1, a4);
  _Block_release(a4);
}

void sub_2409AB4A8(void *a1, int a2, void *a3, int a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_240964BC4;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = a1;
  sub_2409AAEB4(v10, a4, v8, v9);
  sub_24090C1A0(v8);
}

void sub_2409AB580(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *MEMORY[0x277D85000] & *v3;
  v9 = sub_240A2B00C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE7C();
  v15 = sub_240A2AFFC();
  v16 = sub_240A2C28C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v4;
    v18 = a2;
    v19 = v8;
    v20 = a3;
    v21 = a1;
    v22 = v17;
    *v17 = 0;
    _os_log_impl(&dword_2408FE000, v15, v16, "Dismiss called", v17, 2u);
    v23 = v22;
    a1 = v21;
    a3 = v20;
    v8 = v19;
    a2 = v18;
    v4 = v29;
    MEMORY[0x245CCDDB0](v23, -1, -1);
  }

  (*(v10 + 8))(v14, v9);
  if (a2)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2409EC704;
    aBlock[3] = &block_descriptor_13;
    v24 = _Block_copy(aBlock);
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v8 + 80);
  v26 = *(v8 + 88);
  v27 = type metadata accessor for NavigationControllerCompat.Coordinator();
  v31.receiver = v4;
  v31.super_class = v27;
  objc_msgSendSuper2(&v31, sel_dismissViewControllerAnimated_completion_, a1 & 1, v24);
  _Block_release(v24);
}

void sub_2409AB7DC(void *a1, int a2, char a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_240963BB4;
  }

  else
  {
    v7 = 0;
  }

  v8 = a1;
  sub_2409AB580(a3, v6, v7);
  sub_24090C1A0(v6);
}

uint64_t sub_2409AB898(void *a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *MEMORY[0x277D85000];
  v8 = sub_240A2B00C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *((v7 & v6) + 0x50);
  v15 = *((v7 & v6) + 0x58);
  v16 = type metadata accessor for NavigationControllerCompat.Coordinator();
  v33.receiver = v3;
  v33.super_class = v16;
  v17 = a2 & 1;
  objc_msgSendSuper2(&v33, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);
  sub_240A2AE7C();
  v18 = a1;
  v19 = sub_240A2AFFC();
  v20 = sub_240A2C28C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = v8;
    v22 = v21;
    v23 = swift_slowAlloc();
    *v22 = 138412546;
    *(v22 + 4) = v18;
    *v23 = a1;
    *(v22 + 12) = 1024;
    *(v22 + 14) = v17;
    v24 = v18;
    _os_log_impl(&dword_2408FE000, v19, v20, "View did move to window (%@), shouldAppear: %{BOOL}d", v22, 0x12u);
    sub_240919300(v23, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v23, -1, -1);
    v25 = v22;
    v8 = v32;
    MEMORY[0x245CCDDB0](v25, -1, -1);
  }

  result = (*(v9 + 8))(v13, v8);
  if (a1)
  {
    v28 = *&v3[qword_27E50D928];
    v27 = *&v3[qword_27E50D928 + 8];

    v28(v3);

    v29 = &v3[qword_27E50D928];
    v30 = *&v3[qword_27E50D928 + 8];
    *v29 = nullsub_1;
    *(v29 + 1) = 0;
  }

  return result;
}

void sub_2409ABB0C(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v8 = a1;
  sub_2409AB898(a3, a4);
}

void sub_2409ABB80(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_2409AC2DC();
}

void sub_2409ABBC0(void *a1, uint64_t a2, void *a3)
{
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v5 = a3;

  sub_2409AC30C();
}

void sub_2409ABC30(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v6 = a4;

  sub_2409AC33C();
}

id sub_2409ABCA0()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for NavigationControllerCompat.Coordinator();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2409ABD68(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return sub_2409AC178();
}

uint64_t sub_2409ABD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  return sub_2409AC1E4(a2, *v3, v3[1]);
}

id sub_2409ABD8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = sub_2409AADD0(*v2, v2[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2409ABDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_2409ABE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_2409ABEB8()
{
  swift_getWitnessTable();
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_2409ABEF8()
{
  sub_240A2C06C();
  sub_24091C4F8();
  v0 = sub_240A2B9CC();
  v2 = v1;
  v4 = v3;
  sub_240A2B95C();
  v5 = sub_240A2B9AC();
  v7 = v6;
  v9 = v8;

  sub_240920658(v0, v2, v4 & 1);

  sub_240A2BA6C();
  sub_240920658(v5, v7, v9 & 1);
}

uint64_t sub_2409AC034()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
  sub_240974954();

  return sub_240A2B21C();
}

id sub_2409AC0A4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *MEMORY[0x277D85000];
  v5 = (v2 + qword_27E50D928);
  *v5 = a1;
  v5[1] = a2;
  v6 = *((v4 & v3) + 0x50);
  v7 = *((v4 & v3) + 0x58);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for NavigationControllerCompat.Coordinator();
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_2409AC178()
{
  type metadata accessor for NavigationControllerCompat();
  swift_getWitnessTable();
  sub_240A2B83C();
  sub_240A2B81C();
  return v1;
}

uint64_t sub_2409AC1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NavigationControllerCompat();
  swift_getWitnessTable();
  sub_240A2B83C();
  sub_240A2B81C();
  v5 = &v8[qword_27E50D928];
  v6 = *&v8[qword_27E50D928 + 8];
  *v5 = a2;
  *(v5 + 1) = a3;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2409AC3A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409AC4E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2409AC54C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2409AC5AC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AuthenticationView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_2409A724C(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_2409AC674(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AuthenticationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2409AC81C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(type metadata accessor for AuthenticationView() - 8) + 80);

  return sub_2409A9044(a1, a2, a3);
}

uint64_t sub_2409AC8BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AuthenticationView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_2409AC968(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AuthenticationView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_37Tm_0()
{
  v1 = (type metadata accessor for AuthenticationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = (v0 + v3 + v1[7]);
  v7 = *v6;

  v8 = *(v6 + 1);

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50) + 32);
  v10 = sub_240A2A9AC();
  (*(*(v10 - 8) + 8))(&v6[v9], v10);
  v11 = *(v0 + v3 + v1[8] + 8);

  v12 = v0 + v3 + v1[9];

  v13 = *(v12 + 8);

  v14 = v0 + v3 + v1[10];

  v15 = *(v14 + 8);

  v16 = v0 + v3 + v1[11];

  v17 = *(v16 + 8);

  v18 = *(v0 + v3 + v1[12] + 8);

  v19 = v0 + v3 + v1[13];
  v20 = sub_240A2975C();
  (*(*(v20 - 8) + 8))(v19, v20);
  v21 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0) + 28));

  sub_24091C37C(*(v5 + v1[14]), *(v5 + v1[14] + 8));
  sub_24090C1E4(*(v5 + v1[15]), *(v5 + v1[15] + 8));
  v22 = *(v0 + v3 + v1[16]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2409ACC34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AuthenticationView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t objectdestroy_52Tm()
{
  v1 = (type metadata accessor for AuthenticationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v3;

  v8 = (v7 + v1[7]);
  v9 = *v8;

  v10 = *(v8 + 1);

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50) + 32);
  v12 = sub_240A2A9AC();
  (*(*(v12 - 8) + 8))(&v8[v11], v12);
  v13 = *(v7 + v1[8] + 8);

  v14 = v7 + v1[9];

  v15 = *(v14 + 8);

  v16 = v7 + v1[10];

  v17 = *(v16 + 8);

  v18 = v7 + v1[11];

  v19 = *(v18 + 8);

  v20 = *(v7 + v1[12] + 8);

  v21 = v7 + v1[13];
  v22 = sub_240A2975C();
  (*(*(v22 - 8) + 8))(v21, v22);
  v23 = *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0) + 28));

  sub_24091C37C(*(v7 + v1[14]), *(v7 + v1[14] + 8));
  sub_24090C1E4(*(v7 + v1[15]), *(v7 + v1[15] + 8));
  v24 = *(v7 + v1[16]);

  v25 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v2 | 7);
}

void sub_2409ACF20(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthenticationView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  sub_24099EF9C(a1, v1 + v4, v7, v8, v10);
}

uint64_t sub_2409ACFD8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2409AD124(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
      v9 = sub_240A2BEBC();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_2409AD22C()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50DC00);
  __swift_project_value_buffer(v0, qword_27E50DC00);
  return sub_240A2AE5C();
}

uint64_t sub_2409AD29C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DD28, &qword_240A35808);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v11 - v7;
  sub_240919298(a1, &v11 - v7, &qword_27E50DD28, &qword_240A35808);
  v9 = *a2;
  return sub_2409AD348(v8);
}

uint64_t sub_2409AD348(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DD28, &qword_240A35808);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = v13 - v6;
  v8 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelUpdate;
  swift_beginAccess();
  sub_240919298(v1 + v8, v7, &qword_27E50DD28, &qword_240A35808);
  v9 = sub_2409B8BCC(v7, a1);
  sub_240919300(v7, &qword_27E50DD28, &qword_240A35808);
  if (v9)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v11);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
    sub_240A296DC();
  }

  else
  {
    sub_240919298(a1, v7, &qword_27E50DD28, &qword_240A35808);
    swift_beginAccess();
    sub_2409B94E4(v7, v1 + v8, &qword_27E50DD28, &qword_240A35808);
    swift_endAccess();
  }

  return sub_240919300(a1, &qword_27E50DD28, &qword_240A35808);
}

uint64_t sub_2409AD550()
{
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender);
  v2 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender + 8);
  sub_24090C23C(v1);
  return v1;
}

uint64_t sub_2409AD610@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v4 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender);
  v5 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2409B964C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24090C23C(v4);
}

uint64_t sub_2409AD708(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2409B9290;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v9);
  sub_24090C23C(v3);
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296DC();
  sub_24090C1A0(v6);
}

id sub_2409AD864()
{
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager);

  return v1;
}

id sub_2409AD91C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v4 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager);
  *a2 = v4;

  return v4;
}

void sub_2409ADA08(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager;
  v5 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager);
  sub_2409194E8(0, &qword_27E50DD68, 0x277CED1D0);
  v6 = v5;
  v7 = sub_240A2C37C();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v10);
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
    sub_240A296DC();
  }
}

uint64_t sub_2409ADB7C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v3 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__urlBag;
  swift_beginAccess();
  return sub_240919A14(v5 + v3, a1);
}

uint64_t sub_2409ADC44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v4 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__urlBag;
  swift_beginAccess();
  return sub_240919A14(v3 + v4, a2);
}

uint64_t sub_2409ADD0C(uint64_t a1, uint64_t *a2)
{
  sub_240919A14(a1, v5);
  v3 = *a2;
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296DC();

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_2409ADDEC(uint64_t a1, uint64_t a2)
{
  sub_240919A14(a2, v5);
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__urlBag;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((a1 + v3));
  sub_24090C218(v5, a1 + v3);
  return swift_endAccess();
}

uint64_t sub_2409ADEF0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v9 = *a1;
  swift_beginAccess();
  return sub_240919298(v11 + v9, a4, a2, a3);
}

uint64_t sub_2409ADFF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t *a4@<X6>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v10 = *a2;
  swift_beginAccess();
  return sub_240919298(v9 + v10, a5, a3, a4);
}

uint64_t sub_2409AE0D8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCD0, &qword_240A33AF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v11[-v7];
  sub_240919298(a1, &v11[-v7], &unk_27E50DCD0, &qword_240A33AF0);
  v9 = *a2;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  v14 = v9;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296DC();

  return sub_240919300(v8, &unk_27E50DCD0, &qword_240A33AF0);
}

uint64_t sub_2409AE228(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v17 - v13;
  sub_240919298(a2, &v17 - v13, a3, a4);
  v15 = *a5;
  swift_beginAccess();
  sub_2409B94E4(v14, a1 + v15, a3, a4);
  return swift_endAccess();
}

void (*sub_2409AE30C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  *v4 = v1;
  swift_getKeyPath();
  sub_240A2970C();

  v4[7] = sub_2409ADE6C();
  return sub_2409AE444;
}

void sub_2409AE444(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_240A296FC();

  free(v1);
}

void *sub_2409AE4D8()
{
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter);
  v2 = v1;
  return v1;
}

id sub_2409AE588@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v4 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter);
  *a2 = v4;

  return v4;
}

void sub_2409AE648(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_2409AE678(v2);
}

void sub_2409AE678(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter;
  v5 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v11);
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
    sub_240A296DC();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_2409194E8(0, &qword_27E50DD60, 0x277CECA58);
  v6 = v5;
  v7 = a1;
  v8 = sub_240A2C37C();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_2409AE810()
{
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  return *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay);
}

uint64_t sub_2409AE8B8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
    sub_240A296DC();
  }

  return result;
}

uint64_t sub_2409AE9E0()
{
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v1 = v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate;
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_2409AEABC()
{
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2409AEB68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_2409AEC1C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v6);
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
    sub_240A296DC();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28);
  v3 = v2;
  v4 = sub_240A2C37C();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2409AEDCC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v3 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v4 = sub_240A2A39C();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_2409AEEC4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_240A2A39C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v11 = *(v5 + 16);
  v11(v9, v2 + v10, v4);
  sub_2409B8508(&unk_27E50DD50, MEMORY[0x277CED960]);
  v17[0] = a1;
  LOBYTE(a1) = sub_240A2BF0C();
  v12 = *(v5 + 8);
  v12(v9, v4);
  if (a1)
  {
    v11(v9, v17[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v10, v9, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v14);
    v15 = v17[0];
    v17[-2] = v2;
    v17[-1] = v15;
    v17[1] = v2;
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
    sub_240A296DC();
  }

  return (v12)(v17[0], v4);
}

uint64_t sub_2409AF164(uint64_t a1, uint64_t a2)
{
  v4 = sub_240A2A39C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a2, v4);
  v10 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v10, v9, v4);
  return swift_endAccess();
}

id sub_2409AF280()
{
  v1 = v0;
  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50DC00);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "AgeMigrationViewModel deinitialized", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for AgeMigrationViewModel(0);
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2409AF56C()
{
  v0[2] = sub_240A2C21C();
  v0[3] = sub_240A2C20C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24097BAF4;

  return sub_2409AF618();
}

uint64_t sub_2409AF618()
{
  v1[16] = v0;
  v2 = sub_240A2A39C();
  v1[17] = v2;
  v3 = *(v2 - 8);
  v1[18] = v3;
  v4 = *(v3 + 64) + 15;
  v1[19] = swift_task_alloc();
  v5 = sub_240A2A4CC();
  v1[20] = v5;
  v6 = *(v5 - 8);
  v1[21] = v6;
  v7 = *(v6 + 64) + 15;
  v1[22] = swift_task_alloc();
  sub_240A2C21C();
  v1[23] = sub_240A2C20C();
  v9 = sub_240A2C1BC();
  v1[24] = v9;
  v1[25] = v8;

  return MEMORY[0x2822009F8](sub_2409AF768, v9, v8);
}

uint64_t sub_2409AF768()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  swift_getKeyPath();
  v0[15] = v4;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v6 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v3 + 16))(v2, v4 + v6, v5);
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  sub_240A2C32C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = sub_240A2ADAC();
  v8 = MEMORY[0x277CEDD68];
  v0[10] = v7;
  v0[11] = v8;
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_240A2AD9C();
  sub_240A2A4BC();
  v10 = *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel_ageMigrationController);
  v9 = *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel_ageMigrationController + 8);
  ObjectType = swift_getObjectType();
  v12 = *(MEMORY[0x277CEDD50] + 4);
  v13 = swift_task_alloc();
  v0[26] = v13;
  *v13 = v0;
  v13[1] = sub_2409AF98C;
  v14 = v0[22];

  return MEMORY[0x28213FE80](v0 + 2, v14, ObjectType, v9);
}

uint64_t sub_2409AF98C()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = *(v2 + 192);
    v5 = *(v2 + 200);
    v6 = sub_2409AFB44;
  }

  else
  {
    sub_2409B92C0(v2 + 16);
    v4 = *(v2 + 192);
    v5 = *(v2 + 200);
    v6 = sub_2409AFAA8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2409AFAA8()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];

  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2409AFB44()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];

  (*(v4 + 8))(v2, v3);

  v6 = v0[1];
  v7 = v0[27];

  return v6();
}

uint64_t sub_2409AFBE0(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  sub_240A2C21C();
  v3[12] = sub_240A2C20C();
  v5 = sub_240A2C1BC();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x2822009F8](sub_2409AFC7C, v5, v4);
}

uint64_t sub_2409AFC7C()
{
  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  v0[15] = __swift_project_value_buffer(v1, qword_27E50DC00);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "Preparing for server migration flow", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_2409AFDD4;
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[9];

  return sub_2409B31E8(v8, v6);
}

uint64_t sub_2409AFDD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = v4[13];
    v8 = v4[14];
    v9 = sub_2409B0460;
  }

  else
  {
    v4[18] = a1;
    v7 = v4[13];
    v8 = v4[14];
    v9 = sub_2409AFEFC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2409AFEFC()
{
  v1 = sub_240A1E87C(v0[18]);

  v2 = *MEMORY[0x277CEFFA8];
  v3 = sub_240A2BF4C();
  if (!*(v1 + 16))
  {
    v13 = v0[12];

LABEL_9:

    goto LABEL_10;
  }

  v5 = sub_240925A1C(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    v14 = v0[12];

    goto LABEL_9;
  }

  sub_240913DC0(*(v1 + 56) + 32 * v5, (v0 + 2));

  if (swift_dynamicCast())
  {
    v9 = v0[6];
    v8 = v0[7];
    v0[19] = v8;
    v10 = swift_task_alloc();
    v0[20] = v10;
    *v10 = v0;
    v10[1] = sub_2409B0150;
    v11 = v0[11];

    return sub_2409B4468(v9, v8);
  }

  v21 = v0[12];

LABEL_10:
  v15 = v0[15];
  v16 = sub_240A2AFFC();
  v17 = sub_240A2C2AC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2408FE000, v16, v17, "Failed to get child identity token from auth results", v18, 2u);
    MEMORY[0x245CCDDB0](v18, -1, -1);
  }

  sub_240926FD4();
  swift_allocError();
  *v19 = xmmword_240A35530;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  *(v19 + 16) = 0;
  swift_willThrow();
  v20 = v0[1];

  return v20();
}

uint64_t sub_2409B0150()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = v2[19];

  v6 = v2[14];
  v7 = v2[13];
  if (v0)
  {
    v8 = sub_2409B04C4;
  }

  else
  {
    v8 = sub_2409B02A4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2409B02A4()
{
  v1 = v0[15];
  v2 = v0[12];

  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Presenting migration RUI", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v6 = v0[11];

  if (*(v6 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay) == 1)
  {
    *(v6 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay) = 1;
  }

  else
  {
    v7 = v0[21];
    v8 = v0[11];
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = 1;
    v0[8] = v8;
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
    sub_240A296DC();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_2409B0460()
{
  v1 = v0[12];

  v2 = v0[17];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2409B04C4()
{
  v1 = v0[12];

  v2 = v0[21];
  v3 = v0[1];

  return v3();
}

void sub_2409B0528(void *a1, uint64_t a2)
{
  v253 = a2;
  v247 = a1;
  v213 = sub_240A29E6C();
  v218 = *(v213 - 8);
  v2 = *(v218 + 64);
  MEMORY[0x28223BE20](v213, v3);
  v5 = &v209 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_240A2A08C();
  v234 = *(v230 - 8);
  v6 = *(v234 + 64);
  v8 = MEMORY[0x28223BE20](v230, v7);
  v224 = &v209 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v229 = &v209 - v11;
  v233 = sub_240A2A10C();
  v232 = *(v233 - 8);
  v12 = *(v232 + 64);
  v14 = MEMORY[0x28223BE20](v233, v13);
  v221 = &v209 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v227 = &v209 - v17;
  v223 = sub_240A29EEC();
  v216 = *(v223 - 8);
  v18 = *(v216 + 64);
  MEMORY[0x28223BE20](v223, v19);
  v222 = &v209 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C790, &unk_240A35770);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v226 = &v209 - v24;
  v215 = sub_240A299DC();
  v228 = *(v215 - 8);
  v25 = *(v228 + 64);
  v27 = MEMORY[0x28223BE20](v215, v26);
  v214 = &v209 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v220 = &v209 - v30;
  v238 = sub_240A2A33C();
  v31 = *(*(v238 - 8) + 64);
  MEMORY[0x28223BE20](v238, v32);
  v240 = &v209 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7A0, &qword_240A33100);
  v249 = *(v34 - 8);
  v250 = v34;
  v35 = *(v249 + 64);
  MEMORY[0x28223BE20](v34, v36);
  v244 = &v209 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DD28, &qword_240A35808);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8, v40);
  v248 = (&v209 - v41);
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DD30, &qword_240A35810);
  v246 = *(v252 - 8);
  v42 = *(v246 + 64);
  v44 = MEMORY[0x28223BE20](v252, v43);
  v235 = &v209 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v44, v46);
  v49 = &v209 - v48;
  v51 = MEMORY[0x28223BE20](v47, v50);
  v243 = &v209 - v52;
  MEMORY[0x28223BE20](v51, v53);
  v55 = &v209 - v54;
  v56 = sub_240A2A39C();
  v57 = *(v56 - 8);
  v58 = v57[8];
  v60 = MEMORY[0x28223BE20](v56, v59);
  v219 = &v209 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v60, v62);
  v225 = &v209 - v64;
  v66 = MEMORY[0x28223BE20](v63, v65);
  v236 = &v209 - v67;
  v69 = MEMORY[0x28223BE20](v66, v68);
  v71 = &v209 - v70;
  MEMORY[0x28223BE20](v69, v72);
  v74 = &v209 - v73;
  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v75 = sub_240A2B00C();
  v76 = __swift_project_value_buffer(v75, qword_27E50DC00);
  v77 = v57[2];
  v77(v74, v247, v56);
  v247 = v57 + 2;
  v242 = v77;
  v77(v71, v253, v56);
  v78 = sub_240A2AFFC();
  v79 = sub_240A2C29C();
  v80 = os_log_type_enabled(v78, v79);
  v217 = v5;
  v239 = v49;
  v237 = v57;
  if (v80)
  {
    v81 = swift_slowAlloc();
    v211 = v79;
    v82 = v81;
    v212 = swift_slowAlloc();
    v258 = v212;
    *v82 = 136315394;
    sub_2409B8508(&unk_27E50DD40, MEMORY[0x277CED960]);
    v210 = v78;
    v83 = sub_240A2C62C();
    v231 = v76;
    v85 = v84;
    v245 = v55;
    v86 = v57[1];
    v86(v74, v56);
    v87 = sub_240925464(v83, v85, &v258);
    v88 = v231;

    *(v82 + 4) = v87;
    *(v82 + 12) = 2080;
    v89 = sub_240A2C62C();
    v91 = v90;
    v241 = v86;
    v86(v71, v56);
    v92 = v251;
    v55 = v245;
    v93 = sub_240925464(v89, v91, &v258);

    *(v82 + 14) = v93;
    v94 = v210;
    _os_log_impl(&dword_2408FE000, v210, v211, "modelDidChange from oldValue: %s to newValue: %s", v82, 0x16u);
    v95 = v212;
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v95, -1, -1);
    MEMORY[0x245CCDDB0](v82, -1, -1);
  }

  else
  {

    v96 = v57[1];
    v96(v71, v56);
    v241 = v96;
    v96(v74, v56);
    v88 = v76;
    v92 = v251;
  }

  swift_getKeyPath();
  v258 = v92;
  v97 = sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v98 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelUpdate;
  swift_beginAccess();
  v99 = v248;
  sub_240919298(v92 + v98, v248, &qword_27E50DD28, &qword_240A35808);
  v100 = v249;
  v101 = v250;
  if ((*(v249 + 48))(v99, 1, v250))
  {
    sub_240919300(v99, &qword_27E50DD28, &qword_240A35808);
    v102 = sub_240A2AFFC();
    v103 = sub_240A2C2AC();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_2408FE000, v102, v103, "modelDidChange: unable to send response because it is nil", v104, 2u);
      MEMORY[0x245CCDDB0](v104, -1, -1);
    }

    return;
  }

  v212 = v56;
  v105 = v244;
  (*(v100 + 16))(v244, v99, v101);
  sub_240919300(v99, &qword_27E50DD28, &qword_240A35808);
  v106 = v243;
  sub_240A29CAC();
  (*(v100 + 8))(v105, v101);
  (*(v246 + 32))(v55, v106, v252);
  swift_getKeyPath();
  v257 = v92;
  sub_240A296EC();

  v107 = *(v92 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender);
  if (v107)
  {
    v245 = v55;
    v108 = *(v92 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender + 8);
    swift_getKeyPath();
    v257 = v92;
    v250 = v108;

    v249 = v97;
    sub_240A296EC();

    v109 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
    swift_beginAccess();
    v110 = v92;
    v111 = v92 + v109;
    v112 = v236;
    v113 = v212;
    v242(v236, v111, v212);
    v114 = v240;
    sub_240A2A34C();
    v241(v112, v113);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v116 = v88;
    if (EnumCaseMultiPayload == 2)
    {
      sub_2409B9164(v114, MEMORY[0x277CED950]);
      v137 = sub_240A2AFFC();
      v138 = sub_240A2C28C();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        *v139 = 0;
        _os_log_impl(&dword_2408FE000, v137, v138, "AgeMigrationViewModel detected failure. Dismissing RUI overlay.", v139, 2u);
        MEMORY[0x245CCDDB0](v139, -1, -1);
      }

      if (*(v110 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath, v141);
        *(&v209 - 2) = v110;
        *(&v209 - 8) = 0;
        v254 = v110;
        sub_240A296DC();
      }

      else
      {
        *(v110 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay) = 0;
      }

      v122 = v239;
      goto LABEL_53;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v129 = sub_240A2AFFC();
      v130 = sub_240A2C28C();
      v131 = v110;
      if (os_log_type_enabled(v129, v130))
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&dword_2408FE000, v129, v130, "AgeMigrationViewModel is requesting termination from delegate", v132, 2u);
        MEMORY[0x245CCDDB0](v132, -1, -1);
      }

      swift_getKeyPath();
      v254 = v110;
      sub_240A296EC();

      v133 = v110 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      v122 = v239;
      if (Strong)
      {
        v135 = *(v133 + 1);
        ObjectType = swift_getObjectType();
        (*(v135 + 24))(v131, ObjectType, v135);
        swift_unknownObjectRelease();
      }

      goto LABEL_53;
    }

    v117 = v110;
    if (EnumCaseMultiPayload == 5)
    {
      v118 = v226;
      sub_240A2A36C();
      v119 = sub_240A29A0C();
      v120 = *(v119 - 8);
      v121 = (*(v120 + 48))(v118, 1, v119);
      v122 = v239;
      if (v121 == 1)
      {
        sub_240919300(v118, &unk_27E50C790, &unk_240A35770);
        v123 = sub_240A2AFFC();
        v124 = sub_240A2C2AC();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          *v125 = 0;
          _os_log_impl(&dword_2408FE000, v123, v124, "Migration finished but model does not have an accountID to pass to the delegate. CFU will remain.", v125, 2u);
          MEMORY[0x245CCDDB0](v125, -1, -1);
        }
      }

      else
      {
        v164 = v214;
        sub_240A299FC();
        (*(v120 + 8))(v118, v119);
        v165 = v220;
        v166 = v215;
        (*(v228 + 32))(v220, v164, v215);
        v167 = sub_240A2AFFC();
        v168 = sub_240A2C28C();
        if (os_log_type_enabled(v167, v168))
        {
          v169 = swift_slowAlloc();
          *v169 = 0;
          _os_log_impl(&dword_2408FE000, v167, v168, "AgeMigrationViewModel is notifying delegate that migration finished", v169, 2u);
          v170 = v169;
          v165 = v220;
          MEMORY[0x245CCDDB0](v170, -1, -1);
        }

        swift_getKeyPath();
        v254 = v117;
        sub_240A296EC();

        v171 = v117 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate;
        v172 = swift_unknownObjectWeakLoadStrong();
        v122 = v239;
        if (v172)
        {
          v173 = *(v171 + 1);
          v174 = swift_getObjectType();
          (*(v173 + 8))(v117, v165, v174, v173);
          swift_unknownObjectRelease();
        }

        (*(v228 + 8))(v165, v166);
      }

      goto LABEL_53;
    }

    v253 = v107;
    swift_getKeyPath();
    v254 = v110;
    sub_240A296EC();

    v142 = v225;
    v143 = v212;
    v242(v225, v110 + v109, v212);
    v144 = v227;
    sub_240A2A29C();
    v241(v142, v143);
    v145 = v229;
    sub_240A2A09C();
    v146 = v145;
    v147 = v232 + 8;
    v248 = *(v232 + 8);
    (v248)(v144, v233);
    v148 = v234;
    v149 = *(v234 + 88);
    v150 = v230;
    if (v149(v146, v230) == *MEMORY[0x277CED758])
    {
      v232 = v147;
      (*(v148 + 96))(v146, v150);
      v151 = v216;
      v152 = v146;
      v153 = v222;
      v154 = v223;
      (*(v216 + 32))(v222, v152, v223);
      if (sub_240A29ECC())
      {
        v155 = sub_240A2AFFC();
        v156 = sub_240A2C29C();
        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          *v157 = 0;
          _os_log_impl(&dword_2408FE000, v155, v156, "Telling delegate to show other options", v157, 2u);
          MEMORY[0x245CCDDB0](v157, -1, -1);
        }

        swift_getKeyPath();
        v158 = v251;
        v254 = v251;
        sub_240A296EC();

        v159 = v158 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate;
        v160 = swift_unknownObjectWeakLoadStrong();
        v107 = v253;
        v161 = v222;
        if (v160)
        {
          v162 = *(v159 + 8);
          v163 = swift_getObjectType();
          (*(v162 + 16))(v158, v163, v162);
          swift_unknownObjectRelease();
        }

        (*(v151 + 8))(v161, v223);
        v122 = v239;
LABEL_52:
        sub_2409B9164(v240, MEMORY[0x277CED950]);
LABEL_53:
        v190 = v246;
        v191 = *(v246 + 16);
        v191(v122, v245, v252);
        sub_24090C23C(v107);
        v192 = sub_240A2AFFC();
        v193 = sub_240A2C29C();
        sub_24090C1A0(v107);
        v194 = v107;
        if (os_log_type_enabled(v192, v193))
        {
          v195 = swift_slowAlloc();
          v253 = swift_slowAlloc();
          v256 = v253;
          *v195 = 136315394;
          v196 = v252;
          v191(v235, v122, v252);
          v197 = sub_240A2BF9C();
          v199 = v198;
          v200 = *(v190 + 8);
          v200(v122, v196);
          v201 = sub_240925464(v197, v199, &v256);

          *(v195 + 4) = v201;
          *(v195 + 12) = 2080;
          v202 = swift_allocObject();
          v203 = v250;
          *(v202 + 16) = v194;
          *(v202 + 24) = v203;
          v254 = sub_2409976C4;
          v255 = v202;
          sub_24090C23C(v194);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DD38, &qword_240A35868);
          v204 = sub_240A2BF9C();
          v206 = sub_240925464(v204, v205, &v256);

          *(v195 + 14) = v206;
          _os_log_impl(&dword_2408FE000, v192, v193, "modelDidChange: Sending response %s using sender %s", v195, 0x16u);
          v207 = v253;
          swift_arrayDestroy();
          MEMORY[0x245CCDDB0](v207, -1, -1);
          MEMORY[0x245CCDDB0](v195, -1, -1);
        }

        else
        {

          v200 = *(v190 + 8);
          v200(v122, v252);
        }

        v208 = v245;
        v194(v245);
        sub_24090C1A0(v194);
        v200(v208, v252);
        return;
      }

      v231 = v116;
      (*(v151 + 8))(v153, v154);
    }

    else
    {
      v231 = v116;
      (*(v148 + 8))(v146, v150);
    }

    swift_getKeyPath();
    v175 = v251;
    v254 = v251;
    sub_240A296EC();

    v176 = v175 + v109;
    v177 = v219;
    v178 = v212;
    v242(v219, v176, v212);
    v179 = v221;
    sub_240A2A29C();
    v241(v177, v178);
    v180 = v224;
    sub_240A2A09C();
    (v248)(v179, v233);
    if (v149(v180, v150) == *MEMORY[0x277CED750])
    {
      (*(v234 + 96))(v180, v150);
      v181 = v218;
      v182 = v217;
      v183 = v213;
      (*(v218 + 32))(v217, v180, v213);
      v184 = sub_240A29E3C();
      v107 = v253;
      if (v184)
      {
        swift_getKeyPath();
        v185 = v251;
        v254 = v251;
        sub_240A296EC();

        v186 = v185 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate;
        v187 = swift_unknownObjectWeakLoadStrong();
        v122 = v239;
        if (v187)
        {
          v188 = *(v186 + 8);
          v189 = swift_getObjectType();
          (*(v188 + 24))(v185, v189, v188);
          swift_unknownObjectRelease();
        }

        (*(v218 + 8))(v217, v183);
      }

      else
      {
        (*(v181 + 8))(v182, v183);
        v122 = v239;
      }
    }

    else
    {
      (*(v234 + 8))(v180, v150);
      v122 = v239;
      v107 = v253;
    }

    goto LABEL_52;
  }

  v126 = sub_240A2AFFC();
  v127 = sub_240A2C2AC();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    *v128 = 0;
    _os_log_impl(&dword_2408FE000, v126, v127, "modelDidChange: unable to send response because sender is nil", v128, 2u);
    MEMORY[0x245CCDDB0](v128, -1, -1);
  }

  (*(v246 + 8))(v55, v252);
}

uint64_t sub_2409B1F30()
{
  v1 = v0;
  v2 = sub_240A2A33C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E50B658, &unk_240A30CF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v24 - v10;
  v12 = sub_240A2A45C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2A42C();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_240919300(v11, qword_27E50B658, &unk_240A30CF0);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *&v26 = v0;
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
    sub_240A296EC();

    *&v26 = v0;
    swift_getKeyPath();
    sub_240A2970C();

    swift_beginAccess();
    sub_240A2A35C();
    swift_endAccess();
    *&v26 = v0;
    swift_getKeyPath();
    sub_240A296FC();
  }

  else
  {
    (*(v13 + 32))(v17, v11, v12);
    sub_2409B8508(&qword_27E50DD20, MEMORY[0x277CED988]);
    v19 = swift_allocError();
    (*(v13 + 16))(v20, v17, v12);
    sub_240A2A47C();

    v21 = v27;
    *v6 = v26;
    *(v6 + 1) = v21;
    *(v6 + 4) = v28;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v25 = v1;
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
    sub_240A296EC();

    v25 = v1;
    swift_getKeyPath();
    sub_240A2970C();

    swift_beginAccess();
    sub_240A2A35C();
    swift_endAccess();
    v25 = v1;
    swift_getKeyPath();
    sub_240A296FC();

    result = (*(v13 + 8))(v17, v12);
  }

  if (*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v23);
    *(&v24 - 2) = v1;
    *(&v24 - 8) = 0;
    v25 = v1;
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
    sub_240A296DC();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay) = 0;
  }

  return result;
}

void sub_2409B2498()
{
  v1 = v0;
  v2 = sub_240A2A08C();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v50 - v8;
  v55 = sub_240A2A10C();
  v10 = *(v55 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v55, v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_240A2A39C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_240A29EEC();
  v51 = *(v58 - 8);
  v21 = *(v51 + 64);
  MEMORY[0x28223BE20](v58, v22);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v25 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel___observationRegistrar;
  v59[0] = v1;
  v52 = sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  v53 = v25;
  sub_240A296EC();

  v26 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v16 + 16))(v20, v1 + v26, v15);
  sub_240A2A29C();
  v27 = v20;
  v28 = v56;
  (*(v16 + 8))(v27, v15);
  sub_240A2A09C();
  v29 = v14;
  v30 = v57;
  (*(v10 + 8))(v29, v55);
  v31 = (*(v28 + 88))(v9, v30);
  if (v31 == *MEMORY[0x277CED758])
  {
    v32 = v31;
    (*(v28 + 96))(v9, v30);
    v33 = v51;
    (*(v51 + 32))(v24, v9, v58);
    v34 = v33;
    if (qword_27E50AF70 != -1)
    {
      swift_once();
    }

    v35 = sub_240A2B00C();
    __swift_project_value_buffer(v35, qword_27E50DC00);
    v36 = sub_240A2AFFC();
    v37 = sub_240A2C29C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v28;
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2408FE000, v36, v37, "Re-enabling flow after selecting cancel from other options", v39, 2u);
      v40 = v39;
      v28 = v38;
      MEMORY[0x245CCDDB0](v40, -1, -1);
    }

    sub_240A29EDC();
    v41 = *(v34 + 16);
    v50 = v24;
    v42 = v54;
    v43 = v24;
    v44 = v58;
    v41(v54, v43, v58);
    (*(v28 + 104))(v42, v32, v30);
    swift_getKeyPath();
    v59[0] = v1;
    sub_240A296EC();

    v59[0] = v1;
    swift_getKeyPath();
    sub_240A2970C();

    swift_beginAccess();
    v45 = sub_240A2A28C();
    sub_240A2A0AC();
    v45(v59, 0);
    swift_endAccess();
    v59[0] = v1;
    swift_getKeyPath();
    sub_240A296FC();

    (*(v34 + 8))(v50, v44);
  }

  else
  {
    (*(v28 + 8))(v9, v30);
    if (qword_27E50AF70 != -1)
    {
      swift_once();
    }

    v46 = sub_240A2B00C();
    __swift_project_value_buffer(v46, qword_27E50DC00);
    v47 = sub_240A2AFFC();
    v48 = sub_240A2C2AC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2408FE000, v47, v48, "Starting state for enableFlowAfterSelectingCancelFromOtherOptions is incorrect.", v49, 2u);
      MEMORY[0x245CCDDB0](v49, -1, -1);
    }
  }
}

void sub_2409B2B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a2;
  v67 = a3;
  v68 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DD28, &qword_240A35808);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v65 = &v58 - v6;
  v7 = sub_240A2A39C();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v58 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v58 - v19;
  v21 = sub_240A2BE7C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = (&v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
    *v26 = sub_240A2C32C();
    (*(v22 + 104))(v26, *MEMORY[0x277D85200], v21);
    v29 = sub_240A2BE8C();
    (*(v22 + 8))(v26, v21);
    if (v29)
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7A0, &qword_240A33100);
      MEMORY[0x245CCA960]();
      if (qword_27E50AF70 == -1)
      {
LABEL_4:
        v30 = sub_240A2B00C();
        __swift_project_value_buffer(v30, qword_27E50DC00);
        v31 = v8[2];
        v62 = v8 + 2;
        v63 = v20;
        v61 = v31;
        v31(v17, v20, v7);
        v32 = sub_240A2AFFC();
        v33 = sub_240A2C29C();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v64 = v7;
          v35 = v34;
          v36 = swift_slowAlloc();
          v59 = v21;
          v60 = v13;
          v37 = v36;
          v69 = v36;
          *v35 = 136315138;
          sub_2409B8508(&unk_27E50DD40, MEMORY[0x277CED960]);
          v38 = sub_240A2C62C();
          v40 = v39;
          v41 = v8[1];
          v41(v17, v64);
          v42 = v41;
          v43 = sub_240925464(v38, v40, &v69);

          *(v35 + 4) = v43;
          _os_log_impl(&dword_2408FE000, v32, v33, "AgeMigrationModel updated with %s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v37);
          v44 = v37;
          v21 = v59;
          v13 = v60;
          MEMORY[0x245CCDDB0](v44, -1, -1);
          v45 = v35;
          v7 = v64;
          MEMORY[0x245CCDDB0](v45, -1, -1);
        }

        else
        {

          v50 = v8[1];
          v50(v17, v7);
          v42 = v50;
        }

        v51 = *(v21 - 8);
        v52 = v65;
        (*(v51 + 16))(v65, v68, v21);
        (*(v51 + 56))(v52, 0, 1, v21);
        sub_2409AD348(v52);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath, v54);
        v56 = v66;
        v55 = v67;
        *(&v58 - 4) = v28;
        *(&v58 - 3) = v56;
        *(&v58 - 2) = v55;
        v69 = v28;
        sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
        sub_240A296DC();

        v57 = v63;
        v61(v13, v63, v7);
        sub_2409AEEC4(v13);

        v42(v57, v7);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v46 = sub_240A2B00C();
  __swift_project_value_buffer(v46, qword_27E50DC00);
  v47 = sub_240A2AFFC();
  v48 = sub_240A2C2BC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_2408FE000, v47, v48, "AgeMigrationViewModel deallocated", v49, 2u);
    MEMORY[0x245CCDDB0](v49, -1, -1);
  }
}

uint64_t sub_2409B31E8(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v4 = sub_240A2B00C();
  v3[27] = v4;
  v5 = *(v4 - 8);
  v3[28] = v5;
  v6 = *(v5 + 64) + 15;
  v3[29] = swift_task_alloc();
  v7 = sub_240A2998C();
  v3[30] = v7;
  v8 = *(v7 - 8);
  v3[31] = v8;
  v9 = *(v8 + 64) + 15;
  v3[32] = swift_task_alloc();
  v10 = sub_240A2987C();
  v3[33] = v10;
  v11 = *(v10 - 8);
  v3[34] = v11;
  v12 = *(v11 + 64) + 15;
  v3[35] = swift_task_alloc();
  v13 = sub_240A298BC();
  v3[36] = v13;
  v14 = *(v13 - 8);
  v3[37] = v14;
  v15 = *(v14 + 64) + 15;
  v3[38] = swift_task_alloc();
  v16 = sub_240A2986C();
  v3[39] = v16;
  v17 = *(v16 - 8);
  v3[40] = v17;
  v18 = *(v17 + 64) + 15;
  v3[41] = swift_task_alloc();
  v19 = sub_240A299DC();
  v3[42] = v19;
  v20 = *(v19 - 8);
  v3[43] = v20;
  v21 = *(v20 + 64) + 15;
  v3[44] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C790, &unk_240A35770) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v23 = sub_240A2A39C();
  v3[46] = v23;
  v24 = *(v23 - 8);
  v3[47] = v24;
  v25 = *(v24 + 64) + 15;
  v3[48] = swift_task_alloc();
  v26 = sub_240A29A0C();
  v3[49] = v26;
  v27 = *(v26 - 8);
  v3[50] = v27;
  v28 = *(v27 + 64) + 15;
  v3[51] = swift_task_alloc();
  sub_240A2C21C();
  v3[52] = sub_240A2C20C();
  v30 = sub_240A2C1BC();
  v3[53] = v30;
  v3[54] = v29;

  return MEMORY[0x2822009F8](sub_2409B359C, v30, v29);
}

uint64_t sub_2409B359C()
{
  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v0[55] = __swift_project_value_buffer(v0[27], qword_27E50DC00);
  v1 = sub_240A2AFFC();
  v2 = sub_240A2C28C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2408FE000, v1, v2, "Performing ephemeral proxied auth", v3, 2u);
    MEMORY[0x245CCDDB0](v3, -1, -1);
  }

  v4 = v0[49];
  v5 = v0[50];
  v6 = v0[47];
  v7 = v0[48];
  v8 = v0[45];
  v9 = v0[46];
  v10 = v0[26];

  swift_getKeyPath();
  v0[21] = v10;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v11 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v6 + 16))(v7, v10 + v11, v9);
  sub_240A2A36C();
  (*(v6 + 8))(v7, v9);
  if ((*(v5 + 48))(v8, 1, v4) == 1)
  {
    v12 = v0[52];
    v13 = v0[45];

    sub_240919300(v13, &unk_27E50C790, &unk_240A35770);
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C2AC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2408FE000, v14, v15, "Missing account", v16, 2u);
      MEMORY[0x245CCDDB0](v16, -1, -1);
    }

    sub_240926FD4();
    swift_allocError();
    *v17 = xmmword_240A35550;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    *(v17 + 16) = 0;
    swift_willThrow();
LABEL_20:
    v72 = v0[51];
    v73 = v0[48];
    v75 = v0[44];
    v74 = v0[45];
    v76 = v0[41];
    v77 = v0[38];
    v78 = v0[35];
    v79 = v0[32];
    v80 = v0[29];

    v81 = v0[1];

    return v81();
  }

  v18 = v0[44];
  v20 = v0[42];
  v19 = v0[43];
  v21 = v0[34];
  v22 = v0[35];
  v23 = v0[33];
  (*(v0[50] + 32))(v0[51], v0[45], v0[49]);
  sub_240A299FC();
  sub_240A299BC();
  (*(v19 + 8))(v18, v20);
  sub_240A298EC();
  if ((*(v21 + 88))(v22, v23) != *MEMORY[0x277CED390])
  {
    v46 = v0[52];
    v48 = v0[34];
    v47 = v0[35];
    v49 = v0[33];
    v50 = v0[29];

    (*(v48 + 8))(v47, v49);
    sub_240A2AE9C();
    v51 = sub_240A2AFFC();
    v52 = sub_240A2C2AC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2408FE000, v51, v52, "Missing migration companion device info", v53, 2u);
      MEMORY[0x245CCDDB0](v53, -1, -1);
    }

    v55 = v0[50];
    v54 = v0[51];
    v56 = v0[49];
    v58 = v0[28];
    v57 = v0[29];
    v59 = v0[27];

    (*(v58 + 8))(v57, v59);
    sub_240926FD4();
    swift_allocError();
    *v60 = xmmword_240A35540;
    *(v60 + 24) = 0;
    *(v60 + 32) = 0;
    *(v60 + 16) = 0;
    swift_willThrow();
    (*(v55 + 8))(v54, v56);
    goto LABEL_20;
  }

  v24 = v0[40];
  v25 = v0[41];
  v27 = v0[38];
  v26 = v0[39];
  v28 = v0[36];
  v29 = v0[37];
  v30 = v0[35];
  v83 = v0[32];
  v86 = v0[31];
  v87 = v0[30];
  v89 = v0[25];
  v90 = v0[26];
  v88 = v0[24];
  (*(v0[34] + 96))(v30, v0[33]);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DD00, &unk_240A330F0);
  v32 = *(v31 + 48);
  v33 = (v30 + *(v31 + 64));
  v84 = v33[1];
  v85 = *v33;
  (*(v24 + 32))(v25, v30, v26);
  (*(v29 + 32))(v27, v30 + v32, v28);
  v34 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
  v0[56] = v34;
  v35 = *MEMORY[0x277CEFF28];
  v36 = v34;
  [v36 setAppProvidedContext_];
  v37 = sub_240A2BF1C();

  [v36 setAltDSID_];

  [v36 setAuthenticationType_];
  [v36 setIsEphemeral_];
  v38 = sub_240A2989C();
  [v36 setProxiedDevice_];

  sub_240A2985C();
  v39 = sub_240A2996C();
  (*(v86 + 8))(v83, v87);
  [v36 setProxiedDeviceAnisetteData_];

  v40 = sub_240A2BF1C();

  [v36 setProxiedToken_];

  v41 = sub_240A2BF1C();
  [v36 setProxiedAppleID_];

  [v36 setIsUsernameEditable_];
  swift_getKeyPath();
  v0[22] = v90;
  sub_240A296EC();

  Strong = swift_unknownObjectWeakLoadStrong();
  [v36 setPresentingViewController_];

  v43 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  v0[57] = v43;
  if (!v43)
  {
    v61 = v0[52];

    v62 = sub_240A2AFFC();
    v63 = sub_240A2C2AC();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_2408FE000, v62, v63, "Failed to create AKAppleIDAuthenticationController for ephemeral proxied auth", v64, 2u);
      MEMORY[0x245CCDDB0](v64, -1, -1);
    }

    v65 = v0[50];
    v93 = v0[51];
    v66 = v0[40];
    v91 = v0[41];
    v92 = v0[49];
    v68 = v0[38];
    v67 = v0[39];
    v70 = v0[36];
    v69 = v0[37];

    sub_240926FD4();
    swift_allocError();
    *v71 = 0u;
    *(v71 + 16) = 0u;
    *(v71 + 32) = 0;
    swift_willThrow();

    (*(v69 + 8))(v68, v70);
    (*(v66 + 8))(v91, v67);
    (*(v65 + 8))(v93, v92);
    goto LABEL_20;
  }

  v44 = v43;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_2409B3F74;
  v45 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DD10, &unk_240A357D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2409AD124;
  v0[13] = &block_descriptor_14;
  v0[14] = v45;
  [v44 authenticateWithContext:v36 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}