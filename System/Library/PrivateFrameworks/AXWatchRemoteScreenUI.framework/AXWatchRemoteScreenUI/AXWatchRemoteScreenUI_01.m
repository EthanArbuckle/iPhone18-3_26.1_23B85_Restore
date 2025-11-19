Swift::Void __swiftcall AXTwiceCompanionRootViewController.doubleCrownButtonPressed()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_23D6D3C38(0xD00000000000001ALL, 0x800000023D6F1590, &v21);
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EEE9940](v16, -1, -1);
    MEMORY[0x23EEE9940](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v17 = [objc_opt_self() buttonRepresentationWithType_];
  if (v17)
  {
    *v6 = v17;
    v18 = v17;
    (*(v3 + 104))(v6, *MEMORY[0x277CE7008], v2);
    v19 = v18;
    sub_23D6DF5FC(v6);

    (*(v3 + 8))(v6, v2);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.tripleCrownButtonPressed()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_23D6D3C38(0xD00000000000001ALL, 0x800000023D6F15B0, &v21);
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EEE9940](v16, -1, -1);
    MEMORY[0x23EEE9940](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v17 = [objc_opt_self() buttonRepresentationWithType_];
  if (v17)
  {
    *v6 = v17;
    v18 = v17;
    (*(v3 + 104))(v6, *MEMORY[0x277CE7008], v2);
    v19 = v18;
    sub_23D6DF5FC(v6);

    (*(v3 + 8))(v6, v2);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.crownButtonScrollUp()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v2;
    v15 = v1;
    v16 = v14;
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_23D6D3C38(0xD000000000000015, 0x800000023D6F15D0, &v27);
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23EEE9940](v17, -1, -1);
    v18 = v16;
    v1 = v15;
    v2 = v26;
    MEMORY[0x23EEE9940](v18, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v19 = [objc_opt_self() buttonRepresentationWithType_];
  if (v19)
  {
    v20 = v19;
    v21 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
    v22 = sub_23D6CE998();

    v23 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
    swift_beginAccess();
    LODWORD(v23) = v22[v23];

    if (v23)
    {
      v24 = 100;
    }

    else
    {
      v24 = -100;
    }

    [v20 setScrollAmount_];
    *v6 = v20;
    (*(v3 + 104))(v6, *MEMORY[0x277CE7008], v2);
    v25 = v20;
    sub_23D6DF5FC(v6);

    (*(v3 + 8))(v6, v2);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.crownButtonScrollDown()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v2;
    v15 = v1;
    v16 = v14;
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_23D6D3C38(0xD000000000000017, 0x800000023D6F15F0, &v27);
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23EEE9940](v17, -1, -1);
    v18 = v16;
    v1 = v15;
    v2 = v26;
    MEMORY[0x23EEE9940](v18, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v19 = [objc_opt_self() buttonRepresentationWithType_];
  if (v19)
  {
    v20 = v19;
    v21 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
    v22 = sub_23D6CE998();

    v23 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
    swift_beginAccess();
    LODWORD(v23) = v22[v23];

    if (v23)
    {
      v24 = -100;
    }

    else
    {
      v24 = 100;
    }

    [v20 setScrollAmount_];
    *v6 = v20;
    (*(v3 + 104))(v6, *MEMORY[0x277CE7008], v2);
    v25 = v20;
    sub_23D6DF5FC(v6);

    (*(v3 + 8))(v6, v2);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.crownButtonLongPressed()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_23D6D3C38(0xD000000000000018, 0x800000023D6F1610, &v21);
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EEE9940](v16, -1, -1);
    MEMORY[0x23EEE9940](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v17 = [objc_opt_self() buttonRepresentationWithType_];
  if (v17)
  {
    *v6 = v17;
    v18 = v17;
    (*(v3 + 104))(v6, *MEMORY[0x277CE7008], v2);
    v19 = v18;
    sub_23D6DF5FC(v6);

    (*(v3 + 8))(v6, v2);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.sideButtonPressed()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_23D6D3C38(0xD000000000000013, 0x800000023D6F1630, &v21);
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EEE9940](v16, -1, -1);
    MEMORY[0x23EEE9940](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v17 = [objc_opt_self() buttonRepresentationWithType_];
  if (v17)
  {
    *v6 = v17;
    v18 = v17;
    (*(v3 + 104))(v6, *MEMORY[0x277CE7008], v2);
    v19 = v18;
    sub_23D6DF5FC(v6);

    (*(v3 + 8))(v6, v2);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.sideButtonLongPressed()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_23D6D3C38(0xD000000000000017, 0x800000023D6F1650, &v21);
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EEE9940](v16, -1, -1);
    MEMORY[0x23EEE9940](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v17 = [objc_opt_self() buttonRepresentationWithType_];
  if (v17)
  {
    *v6 = v17;
    v18 = v17;
    (*(v3 + 104))(v6, *MEMORY[0x277CE7008], v2);
    v19 = v18;
    sub_23D6DF5FC(v6);

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t AXTwiceCompanionRootViewController.axActionPerform(action:value:bridgeElement:)(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v29 = a2;
  v28 = a1;
  v6 = sub_23D6EE620();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23D6EE670();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v16 = sub_23D6EE660();
  v17 = sub_23D6EE810();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v26 = a3;
    v21 = v20;
    v30 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_23D6D3C38(0xD00000000000002CLL, 0x800000023D6F1670, &v30);
    _os_log_impl(&dword_23D6CB000, v16, v17, "[TWICE] %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v22 = v21;
    a3 = v26;
    MEMORY[0x23EEE9940](v22, -1, -1);
    MEMORY[0x23EEE9940](v19, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  *v10 = v28;
  sub_23D6EDF00(v29, (v10 + 8), &qword_27E2E2B60, qword_23D6EFE00);
  *(v10 + 8) = sub_23D6D1D74(0, &unk_27E2E2B68, 0x277D73FF0);
  *(v10 + 5) = a3;
  (*(v7 + 104))(v10, *MEMORY[0x277CE7018], v6);
  v23 = a3;
  sub_23D6DF5FC(v10);
  return (*(v7 + 8))(v10, v6);
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.pullToDismissViewController()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v17 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_23D6D3C38(0xD00000000000001DLL, 0x800000023D6F16A0, &v18);
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EEE9940](v16, -1, -1);
    MEMORY[0x23EEE9940](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  (*(v3 + 104))(v6, *MEMORY[0x277CE7058], v2);
  sub_23D6DF5FC(v6);
  (*(v3 + 8))(v6, v2);
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.stingButtonPressed()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_23D6D3C38(0xD000000000000014, 0x800000023D6F16C0, &v21);
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EEE9940](v16, -1, -1);
    MEMORY[0x23EEE9940](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v17 = [objc_opt_self() buttonRepresentationWithType_];
  if (v17)
  {
    *v6 = v17;
    v18 = v17;
    (*(v3 + 104))(v6, *MEMORY[0x277CE7008], v2);
    v19 = v18;
    sub_23D6DF5FC(v6);

    (*(v3 + 8))(v6, v2);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.stingButtonLongPressed()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_23D6D3C38(0xD000000000000018, 0x800000023D6F16E0, &v21);
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EEE9940](v16, -1, -1);
    MEMORY[0x23EEE9940](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v17 = [objc_opt_self() buttonRepresentationWithType_];
  if (v17)
  {
    *v6 = v17;
    v18 = v17;
    (*(v3 + 104))(v6, *MEMORY[0x277CE7008], v2);
    v19 = v18;
    sub_23D6DF5FC(v6);

    (*(v3 + 8))(v6, v2);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.stingButtonKeycord()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_23D6D3C38(0xD000000000000014, 0x800000023D6F1700, &v21);
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EEE9940](v16, -1, -1);
    MEMORY[0x23EEE9940](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v17 = [objc_opt_self() buttonRepresentationWithType_];
  if (v17)
  {
    *v6 = v17;
    v18 = v17;
    (*(v3 + 104))(v6, *MEMORY[0x277CE7008], v2);
    v19 = v18;
    sub_23D6DF5FC(v6);

    (*(v3 + 8))(v6, v2);
  }
}

id sub_23D6EC3C4(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v8 = a2[3];
  if (v8)
  {
    v10 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v11 = *(v8 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x28223BE20](v10);
    v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = sub_23D6EE9F0();
    (*(v11 + 8))(v14, v8);
    __swift_destroy_boxed_opaque_existential_0(a2);
  }

  else
  {
    v15 = 0;
  }

  if (a4 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_23D6EE2E0();
    sub_23D6EDF68(a3, a4);
  }

  v17 = [v4 initWithAxAction:a1 withValue:v15 forElementRefData:v16];
  swift_unknownObjectRelease();

  return v17;
}

unint64_t sub_23D6EC554(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23D6EE8C0();

  return sub_23D6EC610(a1, v5);
}

unint64_t sub_23D6EC598(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23D6EEA20();
  sub_23D6EE750();
  v6 = sub_23D6EEA30();

  return sub_23D6EC6D8(a1, a2, v6);
}

unint64_t sub_23D6EC610(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23D6EDCDC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEE8FF0](v9, a1);
      sub_23D6ED0B8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23D6EC6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23D6EEA00())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_23D6EC790(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CD0, &qword_23D6F0120);
  v36 = a2;
  result = sub_23D6EE9C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_23D6D43BC(v25, v37);
      }

      else
      {
        sub_23D6D42F0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_23D6EEA20();
      sub_23D6EE750();
      result = sub_23D6EEA30();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_23D6D43BC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_23D6ECA48(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23D6EC598(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_23D6ECC04();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23D6EC790(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_23D6EC598(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_23D6EEA10();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_23D6D43BC(a1, v23);
  }

  else
  {
    sub_23D6ECB98(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_23D6ECB98(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23D6D43BC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_23D6ECC04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CD0, &qword_23D6F0120);
  v2 = *v0;
  v3 = sub_23D6EE9B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_23D6D42F0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23D6D43BC(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

double sub_23D6ECDA8()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = v3 * 5.0;
  v5 = [v0 mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  v14 = v4 / CGRectGetWidth(v26);
  v15 = [v0 mainScreen];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v27.origin.x = v17;
  v27.origin.y = v19;
  v27.size.width = v21;
  v27.size.height = v23;
  Height = CGRectGetHeight(v27);
  return sqrt((0.0 - v14) * (0.0 - v14) + (0.0 - v4 / Height) * (0.0 - v4 / Height));
}

uint64_t sub_23D6ECEE0(unint64_t a1, unint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  result = mach_timebase_info(v7);
  if (!result)
  {
    v5 = a2 - a1;
    if (a2 < a1)
    {
      __break(1u);
    }

    else if ((v5 & 0x8000000000000000) == 0)
    {
      if ((v5 * v7[0].numer) >> 64 == (v5 * v7[0].numer) >> 63)
      {
        if (v7[0].denom)
        {
          goto LABEL_6;
        }

LABEL_10:
        __break(1u);
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_6:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t type metadata accessor for AXTwiceCompanionRootViewController()
{
  result = qword_27E2E2B78;
  if (!qword_27E2E2B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D6ECFE8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D6ED040(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2AC0, &qword_23D6EFF90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D6ED10C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23D6ED160(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_23D6ED1BC()
{
  v0 = sub_23D6EE640();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23D6ED310();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23D6ED310()
{
  if (!qword_27E2E2B88)
  {
    sub_23D6EE320();
    v0 = sub_23D6EE890();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2E2B88);
    }
  }
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_23D6ED37C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23D6ED39C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 28) = v3;
  return result;
}

void sub_23D6ED3DC(void *a1)
{
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() server];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 isScreenLockedWithPasscode_];

    if (v14)
    {
      sub_23D6EE330();
      v15 = sub_23D6EE660();
      v16 = sub_23D6EE810();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_23D6CB000, v15, v16, "[TWICE] Device is locked. Dismissing Twice VC!", v17, 2u);
        MEMORY[0x23EEE9940](v17, -1, -1);
      }

      (*(v8 + 8))(v11, v7);
      if (a1)
      {
        v18 = *MEMORY[0x277CE7058];
        v19 = *(v3 + 104);
        v20 = a1;
        v19(v6, v18, v2);
        sub_23D6DF5FC(v6);

        (*(v3 + 8))(v6, v2);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

unint64_t sub_23D6ED644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C78, &qword_23D6F00D8);
    v3 = sub_23D6EE9D0();
    v4 = a1 + 32;

    while (1)
    {
      sub_23D6EDF00(v4, v13, &qword_27E2E2C70, &qword_23D6F00D0);
      result = sub_23D6EC554(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_23D6D43BC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23D6ED780(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CB0, &qword_23D6F0100);
    v3 = sub_23D6EE9D0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_23D6ED10C(v7, v8);
      result = sub_23D6EC598(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23D6ED898(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CD0, &qword_23D6F0120);
    v3 = sub_23D6EE9D0();
    v4 = a1 + 32;

    while (1)
    {
      sub_23D6EDF00(v4, &v13, &qword_27E2E2CC0, &qword_23D6F0110);
      v5 = v13;
      v6 = v14;
      result = sub_23D6EC598(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23D6D43BC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23D6ED9C8()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v18 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_23D6D3C38(0xD00000000000001CLL, 0x800000023D6F1990, &v19);
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EEE9940](v16, -1, -1);
    MEMORY[0x23EEE9940](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  (*(v3 + 104))(v6, *MEMORY[0x277CE7058], v2);
  sub_23D6DF5FC(v6);
  return (*(v3 + 8))(v6, v2);
}

void sub_23D6EDC38(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_23D6EDC48(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_23D6EDC58(uint64_t a1)
{
  v2 = *(v1 + 16);
  AXTwiceCompanionRootViewController.handleHIDEvent(_:)(a1);
  return v3 & 1;
}

uint64_t sub_23D6EDC88(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23D6EDD40()
{
  MEMORY[0x23EEE9980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23D6EDD78()
{
  v1 = sub_23D6EE620();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23D6EDE3C()
{
  v1 = *(sub_23D6EE620() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_23D6E1BB8(v2, v3);
}

uint64_t sub_23D6EDEA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23D6EDF00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23D6EDF68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23D6ED160(a1, a2);
  }

  return a1;
}

uint64_t sub_23D6EDF7C()
{
  sub_23D6ED160(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_23D6EDFBC()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_23D6E6DF0(v0[2]);
}

uint64_t sub_23D6EDFC8(unint64_t *a1, void (*a2)(uint64_t))
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