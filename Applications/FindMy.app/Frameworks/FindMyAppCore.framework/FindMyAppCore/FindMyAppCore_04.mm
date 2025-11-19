uint64_t sub_6DFAC(uint64_t a1)
{
  v2 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v20[0] = *(v2 - 8);
  v3 = *(v20[0] + 64);
  __chkstk_darwin(v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v20 - v7;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = (a1 + *(v2 + 20));
  v11 = *v9;
  v10 = v9[1];
  v21 = v11;
  v22 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v12 = v20[1];
  swift_getKeyPath();
  v21 = v12;
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  v13 = *(v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination);

  if (v13 >> 8 <= 0xFE && (v13 & 0xFF00) == 0x200 && (v13 - 1) >= 2u)
  {
    v14 = sub_B7A80();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    sub_728EC(a1, v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ItemContactInfoSetupConfirmationView);
    v15 = sub_B7A50();
    v16 = (*(v20[0] + 80) + 32) & ~*(v20[0] + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = &protocol witness table for MainActor;
    sub_708C8(v4, v17 + v16);
    sub_30A3C(0, 0, v8, &unk_C1FA0, v17);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
    v18 = sub_B68D0();
    v21(v18);
  }
}

uint64_t sub_6E310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_B7A60();
  v4[6] = sub_B7A50();
  v6 = sub_B7A00();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_6E3A8, v6, v5);
}

uint64_t sub_6E3A8()
{
  v1 = v0[5];
  v2 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v0[9] = v2;
  v3 = (v1 + *(v2 + 20));
  v5 = *v3;
  v4 = v3[1];
  v0[2] = v5;
  v0[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v0[10] = v0[4];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_6C98C;

  return sub_741F4();
}

uint64_t sub_6E480(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 20));
  v6 = *v2;
  v7 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  swift_getKeyPath();
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v3 = sub_B68D0();
  v5(v3);
}

uint64_t sub_6E608(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_B6B50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v8)
  {
    sub_64718(v7);
    sub_B6B40();
    (*(v4 + 8))(v7, v3);
  }

  else
  {
  }
}

uint64_t sub_6E788@<X0>(uint64_t a1@<X2>, void (*a2)(uint64_t)@<X4>, BOOL *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v17 - v8;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 20));
  v12 = *v10;
  v11 = v10[1];
  v17[2] = v12;
  v17[3] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  v13 = sub_B75C0();
  a2(v13);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v15 = (*(*(v14 - 8) + 48))(v9, 1, v14) != 1;
  sub_A194(v9, &qword_EEE08, &qword_BD530);

  *a3 = v15;
  return result;
}

uint64_t sub_6E964@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v29 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v29 - v12;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 20));
  v16 = *v14;
  v15 = v14[1];
  v30 = v16;
  v31 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  v17 = sub_B75C0();
  v29(v17);

  if ((*(v6 + 48))(v13, 1, v5))
  {
    sub_A194(v13, &qword_EEE08, &qword_BD530);
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  else
  {
    (*(v6 + 16))(v9, v13, v5);
    sub_A194(v13, &qword_EEE08, &qword_BD530);
    v18 = sub_B6940();
    v19 = v20;
    (*(v6 + 8))(v9, v5);
  }

  v30 = v18;
  v31 = v19;
  sub_97E8();
  v21 = sub_B7200();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  *a3 = v21;
  *(a3 + 8) = v23;
  *(a3 + 16) = v25 & 1;
  *(a3 + 24) = v27;
  return result;
}

uint64_t sub_6EC20(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 20));
  v4 = *v2;
  v5 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  sub_7493C();
}

uint64_t sub_6ED08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_B6E30();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0860, &unk_C2200);
  sub_6EDEC(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_6EDEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a1;
  v56 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0868, &unk_BFFB0);
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  __chkstk_darwin(v2);
  v53 = (&v51 - v4);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0870, &unk_C2210);
  v5 = *(v52 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v52);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0878, &unk_BFFC0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v58 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v61 = &v51 - v16;
  v17 = sub_B62F0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  v57 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_B6E60();
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v17, qword_FADB0);
  (*(v18 + 16))(v21, v22, v17);
  v23 = sub_B71B0();
  v25 = v24;
  v54 = v26;
  v28 = v27;
  v29 = (v55 + *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 20));
  v31 = *v29;
  v30 = v29[1];
  v63 = v31;
  v64 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v32 = v62;
  swift_getKeyPath();
  v63 = v32;
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  v33 = *(v32 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling);

  v34 = 1;
  if (v33 == 1)
  {
    v55 = v25;
    v35 = v23;
    v36 = v28;
    v37 = v11;
    sub_B6A90();
    v38 = v5[2];
    v39 = v11;
    v40 = v52;
    v38(v9, v39, v52);
    v41 = v53;
    *v53 = 0;
    *(v41 + 8) = 1;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0888, &qword_BFFD0);
    v38((v41 + *(v42 + 48)), v9, v40);
    v43 = v5[1];
    v44 = v37;
    v28 = v36;
    v23 = v35;
    v25 = v55;
    v43(v44, v40);
    v43(v9, v40);
    sub_AB00(v41, v61, &qword_F0868, &unk_BFFB0);
    v34 = 0;
  }

  v45 = v61;
  (*(v59 + 56))(v61, v34, 1, v60);
  v46 = v58;
  sub_A310(v45, v58, &qword_F0878, &unk_BFFC0);
  v47 = v56;
  *v56 = v23;
  v47[1] = v25;
  v48 = v54 & 1;
  *(v47 + 16) = v54 & 1;
  v47[3] = v28;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0880, &unk_C2220);
  sub_A310(v46, v47 + *(v49 + 48), &qword_F0878, &unk_BFFC0);
  sub_41410(v23, v25, v48);

  sub_A194(v45, &qword_F0878, &unk_BFFC0);
  sub_A194(v46, &qword_F0878, &unk_BFFC0);
  sub_9C84(v23, v25, v48);
}

uint64_t sub_6F3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (a4 + *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 20));
  v7 = *v5;
  v6 = v5[1];
  v9[0] = v7;
  v9[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  LOWORD(v9[0]) = -256;
  sub_75E3C(v9);
}

uint64_t sub_6F4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 20));
  v15 = *v13;
  v14 = v13[1];
  v19 = v15;
  v20 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  sub_749A4(v12);

  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_A194(v12, &qword_EEE08, &qword_BD530);
    v16 = &_swiftEmptyArrayStorage;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_A194(v12, &qword_EEE08, &qword_BD530);
    v16 = sub_B6930();
    (*(v5 + 8))(v8, v4);
  }

  v19 = v16;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF30, &qword_C1F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  sub_A8CC(&qword_EEF38, &qword_EEF30, &qword_C1F50);
  sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
  sub_B76E0();
}

uint64_t sub_6F850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v25[2] = a4;
  v25[3] = a3;
  v25[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v25 - v16;
  sub_B7A60();
  v25[0] = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25[4] = sub_B68C0();
  v25[5] = v18;
  sub_B68A0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v13, 1, v19) == 1)
  {
    sub_A194(v13, &qword_EEF48, &unk_C01F0);
    v21 = sub_B6A00();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  }

  else
  {
    sub_B6890();
    (*(v20 + 8))(v13, v19);
  }

  (*(v6 + 16))(v9, a1, v5);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v22, v9, v5);
  sub_97E8();
  sub_B7630();
}

uint64_t sub_6FBAC()
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v0 = sub_B68D0();
  v2(v0);
}

uint64_t sub_6FC80(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = sub_B7A80();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_728EC(a2, v6, type metadata accessor for ItemContactInfoSetupConfirmationView);
  sub_B7A60();
  v12 = sub_B7A50();
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_708C8(v6, v14 + v13);
  sub_30A3C(0, 0, v10, &unk_C2050, v14);
}

uint64_t sub_6FE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_B7A60();
  v4[6] = sub_B7A50();
  v6 = sub_B7A00();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_6FEE4, v6, v5);
}

uint64_t sub_6FEE4()
{
  v1 = v0[5];
  v2 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v0[9] = v2;
  v3 = (v1 + *(v2 + 20));
  v5 = *v3;
  v4 = v3[1];
  v0[2] = v5;
  v0[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v0[10] = v0[4];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_6FFBC;

  return sub_75274();
}

uint64_t sub_6FFBC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 96) = a1;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);

  return _swift_task_switch(sub_70108, v6, v5);
}

uint64_t sub_70108()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);

  if (v1 == 1)
  {
    v4 = *(v0 + 40) + *(*(v0 + 72) + 36);
    if (*v4)
    {
      v5 = *(v4 + 8);
      (*v4)(v3);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_7019C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  v4 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
  swift_beginAccess();
  return sub_728EC(v3 + v4, a2, type metadata accessor for LostModeInfo);
}

uint64_t sub_70278(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for LostModeInfo();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_728EC(a1, v7, type metadata accessor for LostModeInfo);
  v8 = *a2;
  return sub_7592C(v7);
}

uint64_t sub_70368@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_70480@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  *a2 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination);
  return result;
}

uint64_t sub_70530(unsigned __int16 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_75E3C(&v4);
}

uint64_t type metadata accessor for ItemContactInfoSetupConfirmationView()
{
  result = qword_F1970;
  if (!qword_F1970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_705D0()
{
  result = qword_F1890;
  if (!qword_F1890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1888, &qword_C1DA0);
    sub_70688();
    sub_A8CC(&qword_F0770, &qword_F0748, &qword_BFE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1890);
  }

  return result;
}

unint64_t sub_70688()
{
  result = qword_F1898;
  if (!qword_F1898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F18A0, &qword_C1DA8);
    sub_A8CC(&qword_F18A8, &qword_F18B0, &qword_C1DB0);
    sub_A8CC(&qword_F0760, &qword_F0768, &qword_BFE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1898);
  }

  return result;
}

unint64_t sub_70814()
{
  result = qword_F18C8;
  if (!qword_F18C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F18C0, &qword_C1E10);
    sub_A8CC(&qword_F18D0, &qword_F18D8, &qword_C1E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F18C8);
  }

  return result;
}

uint64_t sub_708C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_709A4()
{
  result = qword_F18E8;
  if (!qword_F18E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1850, &qword_C1D58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0BB8, &qword_C0468);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F18B8, &qword_C1E08);
    sub_B6850();
    sub_72884(&qword_F0560, &type metadata accessor for OnboardingWelcomeView);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F18C0, &qword_C1E10);
    sub_70814();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F18E8);
  }

  return result;
}

unint64_t sub_70B3C()
{
  result = qword_F18F0;
  if (!qword_F18F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F18E0, &qword_C1E28);
    sub_70BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F18F0);
  }

  return result;
}

unint64_t sub_70BC0()
{
  result = qword_F18F8;
  if (!qword_F18F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1900, &qword_C1E30);
    sub_70C78();
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F18F8);
  }

  return result;
}

unint64_t sub_70C78()
{
  result = qword_F1908;
  if (!qword_F1908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1910, &unk_C1E38);
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1908);
  }

  return result;
}

uint64_t sub_70D78(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(*(type metadata accessor for ItemContactInfoSetupConfirmationView() - 8) + 80);

  return sub_6E608(a1, a2);
}

uint64_t sub_70E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE90, &unk_BD680);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_70F78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE90, &unk_BD680);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_710B4()
{
  sub_711E8(319, &qword_EEF00, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_711E8(319, &qword_F1980, type metadata accessor for ItemContactInfoSetupConfirmationViewModel, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_7124C();
      if (v2 <= 0x3F)
      {
        sub_27558();
        if (v3 <= 0x3F)
        {
          sub_7129C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_711E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_7124C()
{
  if (!qword_F1988)
  {
    v0 = sub_B75F0();
    if (!v1)
    {
      atomic_store(v0, &qword_F1988);
    }
  }
}

void sub_7129C()
{
  if (!qword_F1990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_F1998, ":p");
    v0 = sub_B7BE0();
    if (!v1)
    {
      atomic_store(v0, &qword_F1990);
    }
  }
}

uint64_t sub_71300()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1858, &qword_C1D60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1850, &qword_C1D58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F18E0, &qword_C1E28);
  sub_709A4();
  sub_70B3C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for ItemContactInfoSetupConfirmationView.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ItemContactInfoSetupConfirmationView.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_71454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ItemContactInfoSetupConfirmationView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_6D0D8(a1, v6, a2);
}

uint64_t sub_714E8()
{
  v1 = *(type metadata accessor for ItemContactInfoSetupConfirmationView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8) + 80);
  return sub_6E480(v0 + v2);
}

uint64_t objectdestroy_46Tm()
{
  v1 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v23 = *(*(v1 - 1) + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_B6B50();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
    v10 = *v8;
  }

  v11 = &v8[v1[5]];
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = &v8[v1[6]];
  v15 = *(v14 + 1);

  v16 = *(v14 + 2);

  v17 = v1[7];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  (*(*(v18 - 8) + 8))(&v8[v17], v18);
  v19 = &v8[v1[9]];
  if (*v19)
  {
    v20 = *(v19 + 1);
  }

  v21 = (v3 + v23 + v6) & ~v6;
  (*(v5 + 8))(v0 + v21, v4);

  return _swift_deallocObject(v0, v21 + v7, v2 | v6 | 7);
}

uint64_t sub_71808()
{
  v1 = *(type metadata accessor for ItemContactInfoSetupConfirmationView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8) + 80);

  return sub_6DFAC(v0 + v2);
}

uint64_t sub_718E4(unsigned __int16 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_75E3C(&v4);
}

uint64_t sub_7191C(uint64_t a1)
{
  v4 = *(type metadata accessor for ItemContactInfoSetupConfirmationView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2184C;

  return sub_6E310(a1, v6, v7, v1 + v5);
}

uint64_t sub_71A0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_71A44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_71A84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2184C;

  return sub_77954(a1, v4, v5, v6);
}

unint64_t sub_71B40()
{
  result = qword_F0640;
  if (!qword_F0640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0648, &unk_C1FC0);
    sub_415C0();
    sub_72884(&qword_F0670, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0640);
  }

  return result;
}

uint64_t sub_71C1C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ItemContactInfoSetupConfirmationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_71CB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A08, &qword_C2098);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_A310(a1, &v6 - v4, &qword_F1A08, &qword_C2098);
  return sub_B6D30();
}

uint64_t sub_71D6C(uint64_t a1)
{
  v4 = *(type metadata accessor for ItemContactInfoSetupConfirmationView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2184C;

  return sub_6C81C(a1, v6, v7, v1 + v5);
}

uint64_t sub_71E74(uint64_t a1)
{
  v3 = *(type metadata accessor for ItemContactInfoSetupConfirmationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_6FC80(a1, v4);
}

uint64_t sub_71EE8(uint64_t a1)
{
  v4 = *(type metadata accessor for ItemContactInfoSetupConfirmationView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_F248;

  return sub_6FE4C(a1, v6, v7, v1 + v5);
}

unint64_t sub_72010()
{
  result = qword_F1A60;
  if (!qword_F1A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1A58, &qword_C20E8);
    sub_720F4(&qword_F1A68, &qword_F1A70, &qword_C20F0);
    sub_720F4(&qword_F1A88, &qword_F1A90, &unk_C2108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1A60);
  }

  return result;
}

uint64_t sub_720F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1A78, &unk_C20F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE70, &qword_BFEF0);
    sub_A8CC(&qword_F1A80, &qword_F1A78, &unk_C20F8);
    sub_9BD4();
    swift_getOpaqueTypeConformance2();
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_72248()
{
  result = qword_F1AA8;
  if (!qword_F1AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1A98, &qword_C2118);
    sub_A8CC(&qword_F1AB0, &qword_F1AB8, &qword_C2128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1AA8);
  }

  return result;
}

unint64_t sub_72300()
{
  result = qword_F1AC0;
  if (!qword_F1AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1AA0, &qword_C2120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1AC0);
  }

  return result;
}

unint64_t sub_72384()
{
  result = qword_F1AD0;
  if (!qword_F1AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1AC8, &qword_C2130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1AD8, &qword_C2138);
    sub_72460();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1AD0);
  }

  return result;
}

unint64_t sub_72460()
{
  result = qword_F1AE0;
  if (!qword_F1AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1AD8, &qword_C2138);
    sub_72518();
    sub_A8CC(&qword_EF628, &qword_EF558, &qword_C2150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1AE0);
  }

  return result;
}

unint64_t sub_72518()
{
  result = qword_F1AE8;
  if (!qword_F1AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1AF0, &qword_C2140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1AF8, &qword_C2148);
    sub_A8CC(&qword_F1B00, &qword_F1AF8, &qword_C2148);
    swift_getOpaqueTypeConformance2();
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1AE8);
  }

  return result;
}

unint64_t sub_72648()
{
  result = qword_F1B10;
  if (!qword_F1B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1B08, &qword_C2158);
    sub_72700();
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1B10);
  }

  return result;
}

unint64_t sub_72700()
{
  result = qword_F1B18;
  if (!qword_F1B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1B20, &qword_C2160);
    sub_A8CC(&qword_F1B28, &qword_F1B30, &qword_C2168);
    sub_A8CC(&qword_EF628, &qword_EF558, &qword_C2150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1B18);
  }

  return result;
}

uint64_t sub_72804(uint64_t *a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for ItemContactInfoSetupConfirmationView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_688D0(a1, a2, v6);
}

uint64_t sub_72884(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_728EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_72954(uint64_t a1)
{
  v2 = type metadata accessor for LostModeInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_B6B50();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = &v5[v1[5]];
  v9 = *v8;

  v10 = *(v8 + 1);

  v11 = &v5[v1[6]];
  v12 = *(v11 + 1);

  v13 = *(v11 + 2);

  v14 = v1[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  (*(*(v15 - 8) + 8))(&v5[v14], v15);
  v16 = &v5[v1[9]];
  if (*v16)
  {
    v17 = *(v16 + 1);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_72D38@<X0>(void (*a1)(uint64_t)@<X1>, BOOL *a2@<X8>)
{
  v5 = *(type metadata accessor for ItemContactInfoSetupConfirmationView() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  return sub_6E788(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), a1, a2);
}

uint64_t objectdestroy_18Tm()
{
  v1 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_B6B50();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = &v6[v1[5]];
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = &v6[v1[6]];
  v13 = *(v12 + 1);

  v14 = *(v12 + 2);

  v15 = v1[7];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  (*(*(v16 - 8) + 8))(&v6[v15], v16);
  v17 = &v6[v1[9]];
  if (*v17)
  {
    v18 = *(v17 + 1);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_730C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_78BE4(&qword_F1840);
  sub_B65C0();

  v3 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
  swift_beginAccess();
  return sub_7788C(v5 + v3, a1, type metadata accessor for LostModeInfo);
}

uint64_t sub_73218(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_78BE4(&qword_F1840);
  sub_B65C0();

  return *(v2 + *a2);
}

uint64_t sub_732A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo) == a1 && *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8) == a2;
  if (v5 || (sub_B7DD0() & 1) != 0)
  {

    return sub_76EA8(a1, a2);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_78BE4(&qword_F1840);
    sub_B65B0();
  }
}

uint64_t sub_733F8()
{
  swift_getKeyPath();
  sub_78BE4(&qword_F1840);
  sub_B65C0();

  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
  v2 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8);

  return v1;
}

uint64_t sub_734C8()
{
  v1[10] = v0;
  v2 = *(*(type metadata accessor for LostModeInfo() - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  sub_B7A60();
  v1[12] = sub_B7A50();
  v4 = sub_B7A00();
  v1[13] = v4;
  v1[14] = v3;

  return _swift_task_switch(sub_7358C, v4, v3);
}

uint64_t sub_7358C()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting;
  v0[15] = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting;
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    v0[5] = v1;
    sub_78BE4(&qword_F1840);
    sub_B65B0();
  }

  v5 = v0[10];
  v4 = v0[11];
  v6 = (v5 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies);
  v0[16] = *(v5 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 72);
  v14 = v6[10];
  v0[17] = v6[11];
  v0[18] = v6[13];
  swift_getKeyPath();
  v0[19] = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel___observationRegistrar;
  v0[6] = v5;
  v0[20] = sub_78BE4(&qword_F1840);

  sub_B65C0();

  v7 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
  swift_beginAccess();
  sub_7788C(v5 + v7, v4, type metadata accessor for LostModeInfo);
  swift_getKeyPath();
  v0[7] = v5;
  sub_B65C0();

  v8 = *(v5 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound);
  v13 = (v14 + *v14);
  v9 = v14[1];
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_7388C;
  v11 = v0[11];

  return v13(v11, v8);
}

uint64_t sub_7388C()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_73B68;
  }

  else
  {
    v3 = sub_739A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_739A0()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_778F4(v0[11], type metadata accessor for LostModeInfo);

  v4 = v0[13];
  v5 = v0[14];

  return _swift_task_switch(sub_73A40, v4, v5);
}

uint64_t sub_73A40()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[10];

  if (*(v3 + v1))
  {
    v4 = v0[22];
    v6 = v0[19];
    v5 = v0[20];
    v7 = v0[10];
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v0[9] = v7;
    sub_B65B0();
  }

  else
  {
    *(v0[10] + v0[15]) = 0;
  }

  v9 = v0[11];

  v10 = v0[1];
  v11 = v0[22] == 0;

  return v10(v11);
}

uint64_t sub_73B68()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_778F4(v0[11], type metadata accessor for LostModeInfo);

  v4 = v0[13];
  v5 = v0[14];

  return _swift_task_switch(sub_73C08, v4, v5);
}

uint64_t sub_73C08()
{
  v15 = v0;
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[10];

  if (*(v3 + v1))
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[10];
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v0[8] = v6;
    sub_B65B0();
  }

  else
  {
    *(v0[10] + v0[15]) = 0;
  }

  v8 = v0[22];
  v9 = v0[10];
  v14[0] = 514;
  sub_75E3C(v14);

  v10 = v0[11];

  v11 = v0[1];
  v12 = v0[22] == 0;

  return v11(v12);
}

uint64_t sub_73D48@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v24 - v9;
  swift_getKeyPath();
  v25 = v1;
  sub_78BE4(&qword_F1840);
  sub_B65C0();

  v11 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination);
  v12 = 1;
  if (v11 >> 8 <= 0xFE && v11 >= 0x200 && (v11 - 1) <= 1u)
  {
    v28 = v11;
    v13 = sub_75F6C();
    v24[1] = v14;
    v24[2] = v13;
    v27 = v11;
    sub_76270();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    *(swift_allocObject() + 16) = xmmword_BDA30;
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v18 = sub_B62F0();
    v19 = __swift_project_value_buffer(v18, qword_FADB0);
    v20 = *(v18 - 8);
    (*(v20 + 16))(v10, v19, v18);
    (*(v20 + 56))(v10, 0, 1, v18);
    sub_B78D0();
    sub_2B630(v10);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    v25 = ItemContactInfoSetupIntroductionViewModel.bind();
    v26 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
    sub_B68B0();
    sub_B6910();
    v12 = 0;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  return (*(*(v22 - 8) + 56))(a1, v12, 1, v22);
}

uint64_t sub_74158@<X0>(_WORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_78BE4(&qword_F1840);
  sub_B65C0();

  *a1 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination);
  return result;
}

uint64_t sub_741F4()
{
  v1[5] = v0;
  sub_B7A60();
  v1[6] = sub_B7A50();
  v3 = sub_B7A00();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_7428C, v3, v2);
}

uint64_t sub_7428C()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling;
  v0[9] = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling;
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    v0[2] = v1;
    sub_78BE4(&qword_F1840);
    sub_B65B0();
  }

  v4 = (v0[5] + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies);
  v0[10] = v4[9];
  v0[11] = v4[11];
  v5 = v4[12];
  v0[12] = v4[13];

  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_74488;

  return v9();
}

uint64_t sub_74488()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_74758;
  }

  else
  {
    v3 = sub_7459C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_7459C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[7];
  v5 = v0[8];

  return _swift_task_switch(sub_74614, v4, v5);
}

uint64_t sub_74614()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];

  if (*(v3 + v1))
  {
    v4 = v0[14];
    v5 = v0[5];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    v0[4] = v5;
    sub_78BE4(&qword_F1840);
    sub_B65B0();
  }

  else
  {
    *(v0[5] + v0[9]) = 0;
  }

  v7 = v0[1];
  v8 = v0[14] == 0;

  return v7(v8);
}

uint64_t sub_74758()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[7];
  v5 = v0[8];

  return _swift_task_switch(sub_747D0, v4, v5);
}

uint64_t sub_747D0()
{
  v13 = v0;
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];

  v4 = *(v3 + v1);
  v5 = v0[5];
  if (v4)
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    v0[3] = v5;
    sub_78BE4(&qword_F1840);
    sub_B65B0();
  }

  else
  {
    *(v5 + v0[9]) = 0;
  }

  v7 = v0[14];
  v8 = v0[5];
  v12[0] = 514;
  sub_75E3C(v12);

  v9 = v0[1];
  v10 = v0[14] == 0;

  return v9(v10);
}

uint64_t sub_7493C()
{
  v3[3] = &type metadata for SolariumFeatureFlag;
  v3[4] = sub_28360();
  v0 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v3);
  if (v0)
  {
    v1 = 256;
  }

  else
  {
    v1 = 512;
  }

  LOWORD(v3[0]) = v1;
  return sub_75E3C(v3);
}

uint64_t sub_749A4@<X0>(unint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v46 - v9;
  swift_getKeyPath();
  v61 = v1;
  sub_78BE4(&qword_F1840);
  sub_B65C0();

  v11 = HIBYTE(*&v1[OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination]);
  if (v11 <= 0xFE && v11)
  {
    if (v11 == 1)
    {
      v57 = a1;
      v58 = v6;
      if (qword_EEAC8 != -1)
      {
        swift_once();
      }

      v12 = sub_B62F0();
      v13 = __swift_project_value_buffer(v12, qword_FADB0);
      v14 = *(v12 - 8);
      v15 = *(v14 + 16);
      v15(v10, v13, v12);
      v16 = *(v14 + 56);
      v16(v10, 0, 1, v12);
      v17 = sub_B78D0();
      v55 = v18;
      v56 = v17;
      sub_2B630(v10);
      v15(v10, v13, v12);
      v16(v10, 0, 1, v12);
      v19 = sub_B78D0();
      v53 = v20;
      v54 = v19;
      sub_2B630(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
      v22 = *(v21 + 72);
      v52 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      *(swift_allocObject() + 16) = xmmword_BDA30;
      v15(v10, v13, v12);
      v16(v10, 0, 1, v12);
      sub_B78D0();
      sub_2B630(v10);
      v23 = enum case for AlertInfo.ActionInfo.Style.destructive<A>(_:);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
      v25 = *(v24 - 8);
      v26 = v58;
      (*(v25 + 104))(v58, v23, v24);
      (*(v25 + 56))(v26, 0, 1, v24);
      v61 = sub_78FAC;
      v62 = v1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
      sub_B68B0();
      a1 = v57;
LABEL_14:
      sub_B6910();
      v27 = 0;
      goto LABEL_15;
    }

    if (!*&v1[OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination])
    {
      v58 = v6;
      v60 = 0;
      v28 = sub_75F6C();
      v55 = v29;
      v56 = v28;
      v59 = 0;
      v30 = sub_76270();
      v53 = v31;
      v54 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
      v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v51 = *(v32 + 72);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_BD800;
      v52 = v34;
      v57 = v34 + v33;
      if (qword_EEAC8 != -1)
      {
        swift_once();
      }

      v35 = sub_B62F0();
      v36 = __swift_project_value_buffer(v35, qword_FADB0);
      v37 = *(v35 - 8);
      v50 = *(v37 + 16);
      v50(v10, v36, v35);
      v49 = *(v37 + 56);
      v49(v10, 0, 1, v35);
      v38 = sub_B78D0();
      v46 = v39;
      v47 = v38;
      sub_2B630(v10);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
      v41 = *(v40 - 8);
      v42 = v58;
      v48 = *(v41 + 56);
      v48(v58, 1, 1, v40);
      v61 = sub_78FE4;
      v62 = v1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
      sub_B68B0();
      v47 = "ROR_CONTINUE_ACTION";
      if (qword_EEAB0 != -1)
      {
        swift_once();
      }

      v43 = __swift_project_value_buffer(v35, qword_FAD48);
      v50(v10, v43, v35);
      v49(v10, 0, 1, v35);
      sub_B78D0();
      sub_2B630(v10);
      (*(v41 + 104))(v42, enum case for AlertInfo.ActionInfo.Style.cancel<A>(_:), v40);
      v48(v42, 0, 1, v40);
      v61 = ItemContactInfoSetupIntroductionViewModel.bind();
      v62 = 0;
      sub_B68B0();
      goto LABEL_14;
    }
  }

  v27 = 1;
LABEL_15:
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  return (*(*(v44 - 8) + 56))(a1, v27, 1, v44);
}

uint64_t sub_75274()
{
  v1[10] = v0;
  v2 = *(*(type metadata accessor for LostModeInfo() - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  sub_B7A60();
  v1[12] = sub_B7A50();
  v4 = sub_B7A00();
  v1[13] = v4;
  v1[14] = v3;

  return _swift_task_switch(sub_75338, v4, v3);
}

uint64_t sub_75338()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting;
  v0[15] = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting;
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    v0[5] = v1;
    sub_78BE4(&qword_F1840);
    sub_B65B0();
  }

  v5 = v0[10];
  v4 = v0[11];
  v6 = v5 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies;
  v14 = *(v5 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 64);
  v0[16] = *(v5 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 72);
  v0[17] = *(v6 + 88);
  v0[18] = *(v6 + 104);
  swift_getKeyPath();
  v0[19] = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel___observationRegistrar;
  v0[6] = v5;
  v0[20] = sub_78BE4(&qword_F1840);

  sub_B65C0();

  v7 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
  swift_beginAccess();
  sub_7788C(v5 + v7, v4, type metadata accessor for LostModeInfo);
  swift_getKeyPath();
  v0[7] = v5;
  sub_B65C0();

  v8 = *(v5 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound);
  v13 = (v14 + *v14);
  v9 = v14[1];
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_75638;
  v11 = v0[11];

  return v13(v11, v8);
}

uint64_t sub_75638()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_7574C;
  }

  else
  {
    v3 = sub_739A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_7574C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_778F4(v0[11], type metadata accessor for LostModeInfo);

  v4 = v0[13];
  v5 = v0[14];

  return _swift_task_switch(sub_757EC, v4, v5);
}

uint64_t sub_757EC()
{
  v15 = v0;
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[10];

  if (*(v3 + v1))
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[10];
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v0[8] = v6;
    sub_B65B0();
  }

  else
  {
    *(v0[10] + v0[15]) = 0;
  }

  v8 = v0[22];
  v9 = v0[10];
  v14[0] = 513;
  sub_75E3C(v14);

  v10 = v0[11];

  v11 = v0[1];
  v12 = v0[22] == 0;

  return v11(v12);
}

uint64_t sub_7592C(uint64_t a1)
{
  v3 = type metadata accessor for LostModeInfo();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
  swift_beginAccess();
  sub_7788C(v1 + v7, v6, type metadata accessor for LostModeInfo);
  if (sub_B6310() & 1) != 0 && ((v8 = *(v3 + 20), v9 = *&v6[v8], v10 = *&v6[v8 + 8], v11 = (a1 + v8), v9 == *v11) ? (v12 = v10 == v11[1]) : (v12 = 0), v12 || (sub_B7DD0()))
  {
    sub_778F4(v6, type metadata accessor for LostModeInfo);
    swift_beginAccess();
    sub_78E7C(a1, v1 + v7);
    swift_endAccess();
  }

  else
  {
    sub_778F4(v6, type metadata accessor for LostModeInfo);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v15[-2] = v1;
    v15[-1] = a1;
    v15[1] = v1;
    sub_78BE4(&qword_F1840);
    sub_B65B0();
  }

  return sub_778F4(a1, type metadata accessor for LostModeInfo);
}

uint64_t sub_75B54(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
  swift_beginAccess();
  sub_78E7C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_75BD4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_78BE4(&qword_F1840);
  sub_B65C0();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_75CC0(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_78BE4(&qword_F1840);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_75E3C(unsigned __int16 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination;
  result = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination);
  if (result >> 8 <= 0xFE)
  {
    if (v2 >> 8 > 0xFE)
    {
      goto LABEL_7;
    }

    result = sub_80ADC(result, v2);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + v3) = v2;
    return result;
  }

  if (v2 >> 8 > 0xFE)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_78BE4(&qword_F1840);
  sub_B65B0();
}

uint64_t sub_75F6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  if (!*v0)
  {
    if (qword_EEAC8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (*v0 == 1)
  {
    if (qword_EEAC8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_EEAC8 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  v5 = sub_B62F0();
  v6 = __swift_project_value_buffer(v5, qword_FADB0);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_B78D0();
  sub_2B630(v4);
  return v8;
}

uint64_t sub_76270()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  if (!*v0)
  {
    if (qword_EEAC8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (*v0 == 1)
  {
    if (qword_EEAC8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_EEAC8 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  v5 = sub_B62F0();
  v6 = __swift_project_value_buffer(v5, qword_FADB0);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_B78D0();
  sub_2B630(v4);
  return v8;
}

uint64_t sub_76574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = sub_B7A60();
  v4[5] = sub_B7A50();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_76624;

  return sub_741F4();
}

uint64_t sub_76624(char a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 56) = a1;

  v6 = sub_B7A00();

  return _swift_task_switch(sub_76768, v6, v5);
}

uint64_t sub_76768()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  if (v1 == 1)
  {
    v3 = *(v0 + 24);
    if (*(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__dismiss) == 1)
    {
      *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__dismiss) = 1;
    }

    else
    {
      swift_getKeyPath();
      v4 = swift_task_alloc();
      *(v4 + 16) = v3;
      *(v4 + 24) = 1;
      *(v0 + 16) = v3;
      sub_78BE4(&qword_F1840);
      sub_B65B0();
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_768A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_B7A80();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_B7A60();

  v10 = sub_B7A50();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = a1;
  sub_30A3C(0, 0, v8, a3, v11);
}

uint64_t sub_769C4()
{
  v1 = v0;
  v39 = type metadata accessor for LostModeInfo();
  v2 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_B6370();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_B6320();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_contactKind, v9);
  v14 = (*(v10 + 88))(v13, v9);
  v15 = &off_F1000;
  if (v14 == enum case for PersonModel.Handle.Kind.phoneNumber(_:))
  {
    v37 = v4;
    v17 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 120);
    v16 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 128);
    v18 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 136);
    swift_getKeyPath();
    v40 = v1;
    sub_78BE4(&qword_F1840);

    sub_B65C0();

    v19 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
    v20 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8);

    v21 = v16(v19, v20);
    v4 = v37;
LABEL_5:
    v26 = v21;

    v15 = &off_F1000;

    goto LABEL_9;
  }

  if (v14 == enum case for PersonModel.Handle.Kind.email(_:))
  {
    v22 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 120);
    v37 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 112);
    v23 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 136);
    swift_getKeyPath();
    v40 = v1;
    sub_78BE4(&qword_F1840);

    sub_B65C0();

    v24 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
    v25 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8);

    v21 = v37(v24, v25);
    goto LABEL_5;
  }

  if (v14 != enum case for PersonModel.Handle.Kind.unknown(_:))
  {
    (*(v10 + 8))(v13, v9);
  }

  v26 = 0;
LABEL_9:
  swift_getKeyPath();
  v27 = v15[369];
  v40 = v1;
  sub_78BE4(&qword_F1840);
  sub_B65C0();

  v28 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
  v29 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8);

  sub_B6350();
  v30 = v38;
  (*(v5 + 16))(v38, v8, v4);
  swift_getKeyPath();
  v40 = v1;
  sub_B65C0();

  v31 = v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
  swift_beginAccess();
  v32 = *(v39 + 20);
  v34 = *(v31 + v32);
  v33 = *(v31 + v32 + 8);
  v35 = (v30 + v32);
  *v35 = v34;
  v35[1] = v33;

  sub_7592C(v30);
  sub_78024(v26 & 1);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_76EA8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
  v5 = *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
  v4 = *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8);
  *v3 = a1;
  v3[1] = a2;
  swift_getKeyPath();
  sub_78BE4(&qword_F1840);
  sub_B65C0();

  if (*v3 == v5 && v3[1] == v4)
  {
  }

  v7 = sub_B7DD0();

  if ((v7 & 1) == 0)
  {
    return sub_769C4();
  }

  return result;
}

uint64_t sub_76F90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_78BE4(&qword_F1840);
  sub_B65C0();

  v4 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
  a2[1] = v4;
}

uint64_t sub_77034(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_732A4(v2, v3);
}

uint64_t ItemContactInfoSetupConfirmationViewModel.__allocating_init(initialDestination:lostModeInfo:editType:dependencies:lostAccessory:)(__int16 *a1, uint64_t a2, _BYTE *a3, _OWORD *a4, uint64_t a5)
{
  v6 = v5;
  v40 = a5;
  v39 = sub_B6320();
  v11 = *(v39 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v39);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v6 + 48);
  v16 = *(v6 + 52);
  v17 = swift_allocObject();
  v18 = *a1;
  LOBYTE(a1) = *a3;
  v19 = a4[9];
  v43[8] = a4[8];
  v44 = v19;
  v45 = a4[10];
  v20 = a4[5];
  v43[4] = a4[4];
  v43[5] = v20;
  v21 = a4[7];
  v43[6] = a4[6];
  v43[7] = v21;
  v22 = a4[1];
  v43[0] = *a4;
  v43[1] = v22;
  v23 = a4[3];
  v43[2] = a4[2];
  v43[3] = v23;
  *(v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__dismiss) = 0;
  v24 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination;
  *(v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination) = -256;
  sub_B65F0();
  *(v17 + v24) = v18;
  sub_7788C(a2, v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo, type metadata accessor for LostModeInfo);
  sub_7788C(a2, v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_originalLostModeInfo, type metadata accessor for LostModeInfo);
  *(v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType) = a1;
  v25 = (v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies);
  v26 = a4[9];
  v25[8] = a4[8];
  v25[9] = v26;
  v25[10] = a4[10];
  v27 = a4[5];
  v25[4] = a4[4];
  v25[5] = v27;
  v28 = a4[7];
  v25[6] = a4[6];
  v25[7] = v28;
  v29 = a4[1];
  *v25 = *a4;
  v25[1] = v29;
  v30 = a4[3];
  v25[2] = a4[2];
  v25[3] = v30;
  sub_777DC(v43, v42);
  sub_B6330();
  (*(v11 + 32))(v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_contactKind, v14, v39);
  *(v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableSaveButton) = 0;
  *(v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableCancelButton) = 0;
  MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0 = _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
  v32 = (v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
  *v32 = MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0;
  v32[1] = v33;
  *(v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound) = 0;
  *(v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound) = 0;
  *(v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting) = 0;
  *(v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling) = 0;
  v34 = v44;
  v35 = v45;
  v41 = a1;

  v34(v42, &v41);

  *(v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userVisibleEditItems) = v42[0];
  v41 = a1;

  v35(v42, &v41);
  sub_77838(v43);

  *(v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userInteractableEditItems) = v42[0];
  v36 = v40;
  sub_7788C(v40, v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_769C4();
  sub_778F4(v36, type metadata accessor for LostAccessory);
  sub_778F4(a2, type metadata accessor for LostModeInfo);
  return v17;
}

uint64_t ItemContactInfoSetupConfirmationViewModel.init(initialDestination:lostModeInfo:editType:dependencies:lostAccessory:)(__int16 *a1, uint64_t a2, _BYTE *a3, _OWORD *a4, uint64_t a5)
{
  v6 = v5;
  v37 = a5;
  v36 = sub_B6320();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v36);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  LOBYTE(a1) = *a3;
  v16 = a4[9];
  v40[8] = a4[8];
  v41 = v16;
  v42 = a4[10];
  v17 = a4[5];
  v40[4] = a4[4];
  v40[5] = v17;
  v18 = a4[7];
  v40[6] = a4[6];
  v40[7] = v18;
  v19 = a4[1];
  v40[0] = *a4;
  v40[1] = v19;
  v20 = a4[3];
  v40[2] = a4[2];
  v40[3] = v20;
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__dismiss) = 0;
  v21 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination;
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination) = -256;
  sub_B65F0();
  *(v6 + v21) = v15;
  sub_7788C(a2, v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo, type metadata accessor for LostModeInfo);
  sub_7788C(a2, v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_originalLostModeInfo, type metadata accessor for LostModeInfo);
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType) = a1;
  v22 = (v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies);
  v23 = a4[9];
  v22[8] = a4[8];
  v22[9] = v23;
  v22[10] = a4[10];
  v24 = a4[5];
  v22[4] = a4[4];
  v22[5] = v24;
  v25 = a4[7];
  v22[6] = a4[6];
  v22[7] = v25;
  v26 = a4[1];
  *v22 = *a4;
  v22[1] = v26;
  v27 = a4[3];
  v22[2] = a4[2];
  v22[3] = v27;
  sub_777DC(v40, v39);
  sub_B6330();
  (*(v11 + 32))(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_contactKind, v14, v36);
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableSaveButton) = 0;
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableCancelButton) = 0;
  MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0 = _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
  v29 = (v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
  *v29 = MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0;
  v29[1] = v30;
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound) = 0;
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound) = 0;
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting) = 0;
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling) = 0;
  v31 = v41;
  v32 = v42;
  v38 = a1;

  v31(v39, &v38);

  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userVisibleEditItems) = v39[0];
  v38 = a1;

  v32(v39, &v38);
  sub_77838(v40);

  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userInteractableEditItems) = v39[0];
  v33 = v37;
  sub_7788C(v37, v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_769C4();
  sub_778F4(v33, type metadata accessor for LostAccessory);
  sub_778F4(a2, type metadata accessor for LostModeInfo);
  return v6;
}

uint64_t sub_7788C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_778F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_77954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_B7A60();
  v4[9] = sub_B7A50();
  v6 = sub_B7A00();
  v4[10] = v6;
  v4[11] = v5;

  return _swift_task_switch(sub_779EC, v6, v5);
}

uint64_t sub_779EC()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies;
    v0[13] = *(Strong + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 8);
    v4 = *(v3 + 16);
    v0[14] = *(v3 + 24);

    v10 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_77B64;

    return v10();
  }

  else
  {
    v8 = v0[9];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_77B64(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = sub_77F40;
  }

  else
  {
    v5 = sub_77C7C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_77C7C()
{
  v1 = v0[13];
  v2 = v0[14];

  v3 = v0[10];
  v4 = v0[11];

  return _swift_task_switch(sub_77CE8, v3, v4);
}

uint64_t sub_77CE8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);

  v4 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound;
  v5 = &off_F1000;
  if (v1 == *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound))
  {
    *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound) = *(v0 + 136);
    v10 = *(v0 + 128);
  }

  else
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v8 = *(v0 + 96);
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    *(v0 + 40) = v8;
    sub_78BE4(&qword_F1840);
    v5 = &off_F1000;
    sub_B65B0();
  }

  v11 = *(v0 + 96);
  swift_getKeyPath();
  v12 = v5[369];
  *(v0 + 48) = v11;
  sub_78BE4(&qword_F1840);
  sub_B65C0();

  v13 = *(v2 + v4);
  v14 = *(v0 + 96);
  if (v13 == *(v11 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound))
  {
    *(v11 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound) = v13;
  }

  else
  {
    swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    *(v0 + 56) = v14;
    sub_B65B0();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_77F40()
{
  v1 = v0[13];
  v2 = v0[14];

  v3 = v0[10];
  v4 = v0[11];

  return _swift_task_switch(sub_77FAC, v3, v4);
}

uint64_t sub_77FAC()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_78024(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for LostModeInfo();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v6);
  v11 = &v34[-v10];
  v12 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType);
  v13 = &off_F1000;
  if (v12)
  {
    v35 = a1;
    v36 = 0;
    swift_getKeyPath();
    v38 = v2;
    sub_78BE4(&qword_F1840);
    sub_B65C0();

    v14 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
    swift_beginAccess();
    sub_7788C(v2 + v14, v11, type metadata accessor for LostModeInfo);
    v15 = v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_originalLostModeInfo;
    if (sub_B6310() & 1) != 0 && ((v16 = *(v4 + 20), v17 = *&v11[v16], v18 = *&v11[v16 + 8], v19 = (v15 + v16), v17 == *v19) ? (v20 = v18 == v19[1]) : (v20 = 0), v20 || (sub_B7DD0()))
    {
      sub_778F4(v11, type metadata accessor for LostModeInfo);
      swift_getKeyPath();
      v37 = v2;
      sub_B65C0();

      v21 = *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound);
      swift_getKeyPath();
      v37 = v2;
      sub_B65C0();

      v22 = v21 ^ *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound);
    }

    else
    {
      sub_778F4(v11, type metadata accessor for LostModeInfo);
      v22 = 1;
    }

    swift_getKeyPath();
    v37 = v2;
    sub_B65C0();

    sub_7788C(v2 + v14, v8, type metadata accessor for LostModeInfo);
    if (sub_B6310())
    {
      v26 = *(v4 + 20);
      v27 = *&v8[v26];
      v28 = *&v8[v26 + 8];
      v29 = (v15 + v26);
      v30 = v27 == *v29 && v28 == v29[1];
      LOBYTE(a1) = v35;
      if (v30 || (sub_B7DD0() & 1) != 0)
      {
        sub_778F4(v8, type metadata accessor for LostModeInfo);
        swift_getKeyPath();
        v37 = v2;
        sub_B65C0();

        v31 = *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound);
        swift_getKeyPath();
        v37 = v2;
        sub_B65C0();

        LOBYTE(a1) = (v31 ^ *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound)) & a1;
      }

      else
      {
        result = sub_778F4(v8, type metadata accessor for LostModeInfo);
      }
    }

    else
    {
      result = sub_778F4(v8, type metadata accessor for LostModeInfo);
      LOBYTE(a1) = v35;
    }

    v23 = (v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableCancelButton);
    v13 = &off_F1000;
    if ((v22 & 1) == *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableCancelButton))
    {
      goto LABEL_22;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v34[-16] = v2;
    v34[-8] = v22 & 1;
    v25 = v13[369];
    v37 = v2;
    sub_78BE4(&qword_F1840);
    sub_B65B0();

    goto LABEL_23;
  }

  v22 = 0;
  v23 = (v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableCancelButton);
  if (*(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableCancelButton))
  {
    goto LABEL_10;
  }

LABEL_22:
  *v23 = v22 & 1;
LABEL_23:
  v32 = a1 & 1;
  if ((a1 & 1) == *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableSaveButton))
  {
    *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableSaveButton) = v32;
  }

  else
  {
    v33 = swift_getKeyPath();
    __chkstk_darwin(v33);
    *&v34[-16] = v2;
    v34[-8] = v32;
    v37 = v2;
    sub_78BE4(&qword_F1840);
    sub_B65B0();
  }

  return result;
}

uint64_t ItemContactInfoSetupConfirmationViewModel.deinit()
{
  sub_778F4(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_778F4(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo, type metadata accessor for LostModeInfo);
  sub_778F4(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_originalLostModeInfo, type metadata accessor for LostModeInfo);
  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 144);
  v12[8] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 128);
  v12[9] = v1;
  v12[10] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 160);
  v2 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 80);
  v12[4] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 64);
  v12[5] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 112);
  v12[6] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 96);
  v12[7] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 16);
  v12[0] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies);
  v12[1] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 48);
  v12[2] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 32);
  v12[3] = v5;
  sub_77838(v12);
  v6 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_contactKind;
  v7 = sub_B6320();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8);

  v9 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel___observationRegistrar;
  v10 = sub_B6600();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t ItemContactInfoSetupConfirmationViewModel.__deallocating_deinit()
{
  sub_778F4(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_778F4(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo, type metadata accessor for LostModeInfo);
  sub_778F4(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_originalLostModeInfo, type metadata accessor for LostModeInfo);
  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 144);
  v14[8] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 128);
  v14[9] = v1;
  v14[10] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 160);
  v2 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 80);
  v14[4] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 64);
  v14[5] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 112);
  v14[6] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 96);
  v14[7] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 16);
  v14[0] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies);
  v14[1] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 48);
  v14[2] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 32);
  v14[3] = v5;
  sub_77838(v14);
  v6 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_contactKind;
  v7 = sub_B6320();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8);

  v9 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel___observationRegistrar;
  v10 = sub_B6600();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

unint64_t sub_788C0()
{
  result = qword_F1BD0;
  if (!qword_F1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1BD0);
  }

  return result;
}

uint64_t sub_78914(uint64_t a1)
{
  result = sub_78BE4(&qword_F1BD8);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ItemContactInfoSetupConfirmationViewModel()
{
  result = qword_F1C10;
  if (!qword_F1C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_789E0()
{
  result = type metadata accessor for LostAccessory();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for LostModeInfo();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = sub_B6320();
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = sub_B6600();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_78BA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_732A4(v2, v3);
}

uint64_t sub_78BE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ItemContactInfoSetupConfirmationViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_78E7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeInfo();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_78EE0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_76EA8(v2, v3);
}

uint64_t sub_79020(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2184C;

  return sub_76574(a1, v4, v5, v6);
}

uint64_t sub_790D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_F248;

  return sub_76574(a1, v4, v5, v6);
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_79268(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_792B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_79330()
{
  result = qword_F1D20;
  if (!qword_F1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1D20);
  }

  return result;
}

unint64_t sub_793B0()
{
  result = qword_F1D28;
  if (!qword_F1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1D28);
  }

  return result;
}

unint64_t sub_79404()
{
  result = qword_F1D30;
  if (!qword_F1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1D30);
  }

  return result;
}

unint64_t sub_7945C()
{
  result = qword_F1D38;
  if (!qword_F1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1D38);
  }

  return result;
}

uint64_t sub_794DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_79518()
{
  result = qword_F1D40;
  if (!qword_F1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1D40);
  }

  return result;
}

unint64_t sub_7956C()
{
  result = qword_F1D48;
  if (!qword_F1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1D48);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_795FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_79644(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_796DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_79724(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_7978C()
{
  result = qword_F1D50;
  if (!qword_F1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1D50);
  }

  return result;
}

uint64_t sub_797E0()
{
  v1 = swift_allocObject();
  v2 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = v2;
  *(v1 + 80) = *(v0 + 64);
  *(v1 + 96) = *(v0 + 80);
  v3 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  v13[11] = sub_7F1E8;
  v13[12] = v1;
  v10 = *v0;
  sub_7F1F0(v0, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75E0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D60, &qword_C2A60);
  sub_B76B0();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D68, &qword_C2A90);
  sub_B76B0();

  sub_4BE18(v11, v12);
  v4 = swift_allocObject();
  v5 = *(v0 + 48);
  *(v4 + 48) = *(v0 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(v0 + 64);
  *(v4 + 96) = *(v0 + 80);
  v6 = *(v0 + 16);
  *(v4 + 16) = *v0;
  *(v4 + 32) = v6;
  sub_7F1F0(v0, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D70, &qword_C2A98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D78, &qword_C2AA0);
  sub_A8CC(&qword_F1D80, &qword_F1D70, &qword_C2A98);
  sub_7F2BC();
  v7 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v8 = sub_7FC2C(&qword_F1D90, type metadata accessor for ItemContactInfoSetupConfirmationView);
  v13[0] = v7;
  v13[1] = v8;
  swift_getOpaqueTypeConformance2();
  sub_B7340();
}

uint64_t sub_79B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1DA0, &qword_C2AA8);
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1DA8, &qword_C2AB0);
  v26 = *(v9 - 8);
  v27 = v9;
  v10 = *(v26 + 64);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  sub_B7A60();
  v28 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = sub_B7090();
  __chkstk_darwin(v13);
  *(&v25 - 2) = a2;
  *(&v25 - 1) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1DB0, &qword_C2AB8);
  sub_A8CC(&qword_F1DB8, &qword_F1DB0, &qword_C2AB8);
  sub_B6A20();
  v14 = sub_A8CC(&qword_F1DC0, &qword_F1DA0, &qword_C2AA8);
  sub_B72B0();
  v15 = (*(v25 + 8))(v8, v5);
  __chkstk_darwin(v15);
  *(&v25 - 2) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1DC8, &qword_C2AC0);
  v30 = v5;
  v31 = v14;
  swift_getOpaqueTypeConformance2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1DD0, &qword_C2AC8);
  v17 = sub_7F320();
  v30 = v16;
  v31 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v29;
  v19 = v27;
  sub_B7450();
  (*(v26 + 8))(v12, v19);
  v20 = swift_allocObject();
  v21 = *(a2 + 48);
  *(v20 + 48) = *(a2 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(a2 + 64);
  *(v20 + 96) = *(a2 + 80);
  v22 = *(a2 + 16);
  *(v20 + 16) = *a2;
  *(v20 + 32) = v22;
  sub_7F1F0(a2, &v30);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1DF0, &unk_C2AD8);
  v24 = (v18 + *(result + 36));
  *v24 = sub_7F414;
  v24[1] = v20;
  v24[2] = 0;
  v24[3] = 0;
  return result;
}

uint64_t sub_79F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_B6E30();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E00, &qword_C2B78);
  sub_7A030(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_7A030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v85 = a2;
  v83 = a3;
  v88 = sub_B6C30();
  v4 = *(v88 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v88);
  v84 = v6;
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E08, &qword_C2B80);
  v8 = *(*(v87 - 8) + 64);
  v9 = __chkstk_darwin(v87);
  v82 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v86 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E10, &qword_C2B88);
  v80 = *(v12 - 8);
  v81 = v12;
  v13 = *(v80 + 64);
  v14 = __chkstk_darwin(v12);
  v79 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v89 = &v65 - v16;
  sub_B7A60();
  v78 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v108 = *(a1 + 16);
  v109 = *(a1 + 32);
  v102 = *(a1 + 16);
  *&v103 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B50, &qword_C2B90);
  sub_B75E0();
  v71 = v92;
  v69 = *(&v93 + 1);
  v70 = v93;
  v107 = *a1;
  v92 = *a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75C0();
  v17 = v102;
  swift_getKeyPath();
  *&v92 = v17;
  v77 = sub_7FC2C(&qword_F1D98, type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  v18 = *(v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__isComplete);

  v19 = *(v4 + 16);
  v75 = v4 + 16;
  v76 = v19;
  v20 = v7;
  v67 = v7;
  v21 = v88;
  v19(v7, v85, v88);
  v74 = *(v4 + 80);
  v22 = (v74 + 104) & ~v74;
  v68 = v22;
  v23 = swift_allocObject();
  v24 = *(a1 + 48);
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 64) = v24;
  *(v23 + 80) = *(a1 + 64);
  *(v23 + 96) = *(a1 + 80);
  v25 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v25;
  v26 = *(v4 + 32);
  v72 = v4 + 32;
  v73 = v26;
  v26(v23 + v22, v20, v21);
  v27 = swift_allocObject();
  v28 = *(a1 + 48);
  *(v27 + 48) = *(a1 + 32);
  *(v27 + 64) = v28;
  *(v27 + 80) = *(a1 + 64);
  *(v27 + 96) = *(a1 + 80);
  v29 = *(a1 + 16);
  *(v27 + 16) = *a1;
  *(v27 + 32) = v29;
  v97[0] = 1;
  *&v97[1] = *v101;
  *&v97[4] = *&v101[3];
  *&v97[8] = v71;
  *&v97[24] = v70;
  *&v97[32] = v69;
  v97[40] = v18;
  *&v97[41] = *v100;
  *&v97[44] = *&v100[3];
  *&v98 = sub_7F680;
  *(&v98 + 1) = v23;
  *&v99 = sub_7F69C;
  *(&v99 + 1) = v27;
  sub_7F1F0(a1, &v92);
  sub_7F1F0(a1, &v92);
  sub_B7090();
  sub_B7760();
  v69 = sub_7F6B8();
  v30 = v86;
  sub_B7350();
  v104 = *&v97[32];
  v105 = v98;
  v106 = v99;
  v102 = *v97;
  v103 = *&v97[16];
  sub_7F70C(&v102);
  v32 = *(a1 + 40);
  v31 = *(a1 + 48);
  v33 = *(a1 + 56);
  v70 = *(a1 + 64);
  *&v71 = v33;
  v34 = (v30 + *(v87 + 52));
  *v34 = v32;
  v34[1] = v31;
  v92 = v108;
  *&v93 = v109;

  sub_B75C0();
  v35 = swift_allocObject();
  v36 = *(a1 + 48);
  *(v35 + 48) = *(a1 + 32);
  *(v35 + 64) = v36;
  *(v35 + 80) = *(a1 + 64);
  *(v35 + 96) = *(a1 + 80);
  v37 = *(a1 + 16);
  *(v35 + 16) = *a1;
  *(v35 + 32) = v37;
  sub_7F1F0(a1, &v92);
  sub_A8CC(&qword_F1E20, &qword_F1E08, &qword_C2B80);
  sub_B7470();

  sub_A194(v30, &qword_F1E08, &qword_C2B80);
  *v97 = v107;
  sub_B75E0();
  v38 = v92;
  v39 = v93;
  swift_getKeyPath();
  *v97 = v38;
  *&v97[16] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D60, &qword_C2A60);
  sub_B76B0();

  v65 = v92;
  v40 = v93;

  v91 = v107;
  sub_B75C0();
  v41 = v90;
  swift_getKeyPath();
  *&v91 = v41;
  sub_B65C0();

  v42 = *(v41 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__isComplete);

  v43 = v67;
  v44 = v88;
  v76(v67, v85, v88);
  v45 = v68;
  v46 = swift_allocObject();
  v47 = *(a1 + 48);
  *(v46 + 48) = *(a1 + 32);
  *(v46 + 64) = v47;
  *(v46 + 80) = *(a1 + 64);
  *(v46 + 96) = *(a1 + 80);
  v48 = *(a1 + 16);
  *(v46 + 16) = *a1;
  *(v46 + 32) = v48;
  v73(v46 + v45, v43, v44);
  v49 = swift_allocObject();
  v50 = *(a1 + 48);
  *(v49 + 48) = *(a1 + 32);
  *(v49 + 64) = v50;
  *(v49 + 80) = *(a1 + 64);
  *(v49 + 96) = *(a1 + 80);
  v51 = *(a1 + 16);
  *(v49 + 16) = *a1;
  *(v49 + 32) = v51;
  v97[0] = 0;
  *&v97[1] = v91;
  *&v97[4] = *(&v91 + 3);
  *&v97[8] = v65;
  *&v97[24] = v40;
  v97[40] = v42;
  *&v97[41] = v90;
  *&v97[44] = *(&v90 + 3);
  *&v98 = sub_7F848;
  *(&v98 + 1) = v46;
  *&v99 = sub_808E4;
  *(&v99 + 1) = v49;
  sub_7F1F0(a1, &v92);
  sub_7F1F0(a1, &v92);
  sub_B7090();
  sub_B7760();
  v52 = v30;
  sub_B7350();
  v94 = *&v97[32];
  v95 = v98;
  v96 = v99;
  v92 = *v97;
  v93 = *&v97[16];
  sub_7F70C(&v92);
  v53 = (v30 + *(v87 + 52));
  v54 = v70;
  *v53 = v71;
  v53[1] = v54;
  v56 = v79;
  v55 = v80;
  v57 = *(v80 + 16);
  v58 = v89;
  v59 = v81;
  v57(v79, v89, v81);
  v60 = v82;
  sub_7F94C(v52, v82);
  v61 = v83;
  v57(v83, v56, v59);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E28, &qword_C2BC0);
  sub_7F94C(v60, &v61[*(v62 + 48)]);

  sub_A194(v86, &qword_F1E08, &qword_C2B80);
  v63 = *(v55 + 8);
  v63(v58, v59);
  sub_A194(v60, &qword_F1E08, &qword_C2B80);
  v63(v56, v59);
}

uint64_t sub_7AA10(uint64_t a1, uint64_t a2)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a2 + 56);

  sub_B77E0();
  sub_B6C20();
  sub_7F9D8(&v4);
}

uint64_t sub_7AB00(uint64_t *a1, uint64_t *a2, __int128 *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_7AE1C(v4, v5, v6, v7);
  v10 = v9;
  v20 = a3[1];
  v11 = *(a3 + 4);
  v22 = v20;
  v21 = v11;
  v18 = a3[1];
  v19 = v11;
  sub_7FA2C(&v22, &v16);
  sub_A310(&v21, &v16, &qword_F1E30, &qword_C2BC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B50, &qword_C2B90);
  sub_B75C0();
  if (v8 == v16 && v10 == v17)
  {
  }

  else
  {
    v12 = sub_B7DD0();

    if ((v12 & 1) == 0)
    {
      v18 = v20;
      v19 = v11;
      v16 = v8;
      v17 = v10;

      sub_B75D0();
    }
  }

  sub_7F9D8(&v22);
  sub_A194(&v21, &qword_F1E30, &qword_C2BC8);
  v18 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75C0();
  v13 = v16;
  if (*(v16 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone) == v8 && *(v16 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone + 8) == v10 || (sub_B7DD0() & 1) != 0)
  {
    sub_8255C(v8, v10);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v18 = v13;
    sub_7FC2C(&qword_F1D98, type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel);
    sub_B65B0();
  }
}

uint64_t sub_7AE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v40 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75C0();
  v11 = *(v38 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 40);
  v10 = *(v38 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 48);
  v12 = *(v38 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 56);

  v13 = a3;
  v14 = a2;
  v15 = v10(v13, a4);
  v17 = v16;

  v39 = *v5;
  v18 = v15;
  sub_B75C0();
  v19 = *(v38 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 32);
  v20 = *(v38 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 40);
  v21 = *(v38 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 56);

  v22 = v19(v18, v17);
  v24 = v23;

  v25 = v22 == a1 && v24 == v14;
  if (!v25 && (sub_B7DD0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v26 = sub_B7990();
  if (v26 >= sub_B7990())
  {
    goto LABEL_10;
  }

  v27 = sub_B7990();
  result = sub_B7990();
  v29 = __OFSUB__(v27, result);
  v30 = v27 - result;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    result = sub_B7990();
    if (!__OFSUB__(result, v30))
    {
      sub_7FAB0((result - v30) & ~((result - v30) >> 63), v18, v17, v31);

      sub_B75C0();
      v32 = sub_B7970();
      v34 = v33;

      v36 = *(v38 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 32);
      v35 = *(v38 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 40);
      v37 = *(v38 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 56);

      v22 = v36(v32, v34);

LABEL_10:

      return v22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_7B0E8(__int128 *a1, uint64_t a2, char a3)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75C0();
  sub_80F40(a3);

  sub_B7770();
  sub_B6B70();
}

uint64_t sub_7B198(uint64_t a1, uint64_t a2)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a2 + 40);

  sub_B77E0();
  sub_B6C20();
  sub_7F9D8(&v4);
}

uint64_t sub_7B288(__int128 *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75C0();
  sub_810B4();
}

uint64_t sub_7B2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1DF8, &qword_C2B18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v27 = &v24 - v5;
  v6 = sub_B6F50();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1DE0, &qword_C2AD0);
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1DD0, &qword_C2AC8);
  v12 = *(*(v29 - 8) + 64);
  v13 = __chkstk_darwin(v29);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  sub_B7A60();
  v28 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = &type metadata for SolariumFeatureFlag;
  v34 = sub_28360();
  v18 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v31);
  if (v18)
  {
    (*(v3 + 56))(v15, 1, 1, v2);
    v19 = sub_A8CC(&qword_F1DE8, &qword_F1DE0, &qword_C2AD0);
    v31 = v8;
    v32 = v19;
    swift_getOpaqueTypeConformance2();
    sub_B6F70();
    sub_A194(v15, &qword_F1DD0, &qword_C2AC8);
  }

  else
  {
    v20 = sub_B6F40();
    __chkstk_darwin(v20);
    *(&v24 - 2) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0690, &unk_BFD50);
    sub_416A4();
    sub_B6A80();
    v21 = sub_A8CC(&qword_F1DE8, &qword_F1DE0, &qword_C2AD0);
    v22 = v27;
    sub_B6F60();
    (*(v3 + 16))(v15, v22, v2);
    (*(v3 + 56))(v15, 0, 1, v2);
    v31 = v8;
    v32 = v21;
    swift_getOpaqueTypeConformance2();
    sub_B6F70();
    sub_A194(v15, &qword_F1DD0, &qword_C2AC8);
    (*(v3 + 8))(v22, v2);
    (*(v26 + 8))(v11, v8);
  }

  sub_7F320();
  sub_B6F60();
  sub_A194(v17, &qword_F1DD0, &qword_C2AC8);
}

uint64_t sub_7B7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v23 - v6;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v8 = sub_B62F0();
  v9 = __swift_project_value_buffer(v8, qword_FADB0);
  v10 = *(v8 - 8);
  (*(v10 + 16))(v7, v9, v8);
  (*(v10 + 56))(v7, 0, 1, v8);
  v11 = sub_B78D0();
  v13 = v12;
  sub_A194(v7, &unk_F17B0, &qword_BE7D0);
  v24 = v11;
  v25 = v13;
  v14 = swift_allocObject();
  v15 = *(a1 + 48);
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(a1 + 64);
  *(v14 + 96) = *(a1 + 80);
  v16 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v16;
  sub_7F1F0(a1, v23);
  sub_97E8();
  sub_B7640();
  v23[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75C0();
  v17 = v24;
  swift_getKeyPath();
  *&v23[0] = v17;
  sub_7FC2C(&qword_F1D98, type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  v18 = *(v17 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__isComplete);

  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = (v18 & 1) == 0;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0690, &unk_BFD50);
  v22 = (a2 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = sub_417AC;
  v22[2] = v20;
  return result;
}

uint64_t sub_7BB5C(__int128 *a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75C0();
  sub_810B4();
}

uint64_t sub_7BC28(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v12 - v4;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75C0();
  v6 = v12[1];
  swift_getKeyPath();
  *&v13 = v6;
  sub_7FC2C(&qword_F1D98, type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  if ((*(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__hasFetchedInitialContactInfo) & 1) == 0)
  {
    v7 = sub_B7A80();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();

    v9 = sub_B7A50();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;

    sub_30A3C(0, 0, v5, &unk_C2B10, v10);
  }
}

uint64_t sub_7BEA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7FC2C(&qword_F1D98, type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  v4 = v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination;
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination);
  *a2 = v5;
  v6 = *(v4 + 8);
  *(a2 + 8) = v6;
  return sub_4C52C(v5, v6);
}

uint64_t sub_7BF64(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  sub_4C52C(v5, v3);
  return sub_81CE8(&v5);
}

uint64_t sub_7BFAC(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a2 + 72);
  v10 = *(a2 + 80);

  sub_C5D8(v9);
  ItemContactInfoSetupConfirmationView.init(viewModel:onDismiss:)(v8, v9, v10, v7);
  sub_7FC2C(&qword_F1D90, type metadata accessor for ItemContactInfoSetupConfirmationView);
  sub_B73A0();
  sub_80438(v7, type metadata accessor for ItemContactInfoSetupConfirmationView);
}

uint64_t sub_7C138()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 10);
  v2 = *v0;
  v3 = v0[1];
  return sub_797E0();
}

uint64_t sub_7C1A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  *v0;
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v5 = sub_B62F0();
  v6 = __swift_project_value_buffer(v5, qword_FADB0);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_B78D0();
  sub_A194(v4, &unk_F17B0, &qword_BE7D0);
  return v8;
}

uint64_t sub_7C328()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  *v0;
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v5 = sub_B62F0();
  v6 = __swift_project_value_buffer(v5, qword_FADB0);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_B78D0();
  sub_A194(v4, &unk_F17B0, &qword_BE7D0);
  return v8;
}

uint64_t sub_7C4B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16[-1] - v3;
  v16[3] = &type metadata for SolariumFeatureFlag;
  v16[4] = sub_28360();
  v5 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v16);
  v6 = *v0;
  if (v5)
  {
    *v0;
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v7 = sub_B62F0();
    v8 = __swift_project_value_buffer(v7, qword_FADB0);
    v9 = *(v7 - 8);
    (*(v9 + 16))(v4, v8, v7);
    (*(v9 + 56))(v4, 0, 1, v7);
  }

  else
  {
    *v0;
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v10 = sub_B62F0();
    v11 = __swift_project_value_buffer(v10, qword_FADB0);
    v12 = *(v10 - 8);
    (*(v12 + 16))(v4, v11, v10);
    (*(v12 + 56))(v4, 0, 1, v10);
  }

  v13 = sub_B78D0();
  sub_A194(v4, &unk_F17B0, &qword_BE7D0);
  return v13;
}

uint64_t sub_7C74C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  *v0;
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v5 = sub_B62F0();
  v6 = __swift_project_value_buffer(v5, qword_FADB0);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_B78D0();
  sub_A194(v4, &unk_F17B0, &qword_BE7D0);
  return v8;
}

uint64_t sub_7C8D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  *v0;
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v5 = sub_B62F0();
  v6 = __swift_project_value_buffer(v5, qword_FADB0);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_B78D0();
  sub_A194(v4, &unk_F17B0, &qword_BE7D0);
  return v8;
}

uint64_t sub_7CA5C@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E38, &qword_C2BF8);
  v2 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v4 = &v67[-v3];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E40, &qword_C2C00);
  v5 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v7 = &v67[-v6];
  v89 = sub_B67E0();
  v87 = *(v89 - 8);
  v8 = *(v87 + 64);
  __chkstk_darwin(v89);
  v92 = &v67[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = sub_B67D0();
  v86 = *(v94 - 8);
  v10 = *(v86 + 8);
  v11 = __chkstk_darwin(v94);
  v88 = &v67[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v85 = &v67[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v67[-v16];
  v18 = sub_B6850();
  v93 = *(v18 - 8);
  v19 = *(v93 + 64);
  __chkstk_darwin(v18);
  v91 = &v67[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E48, &qword_C2C08);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v90 = &v67[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v26 = &v67[-v25];
  v98[3] = &type metadata for SolariumFeatureFlag;
  v98[4] = sub_28360();
  v27 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v98);
  v28 = sub_7C328();
  if (v27)
  {
    v79 = v28;
    v80 = v29;
    v81 = v18;
    v82 = v26;
    v83 = v21;
    v84 = v7;
    v77 = sub_7C1A0();
    v76 = v30;
    v78 = v67;
    __chkstk_darwin(v77);
    v75 = &v64 + 8;
    v66 = v1;
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v31 = sub_B62F0();
    v32 = __swift_project_value_buffer(v31, qword_FADB0);
    v33 = *(v31 - 8);
    v34 = *(v33 + 16);
    v34(v17, v32, v31);
    v35 = *(v33 + 56);
    v35(v17, 0, 1, v31);
    v74 = sub_B78D0();
    v73 = v36;
    sub_A194(v17, &unk_F17B0, &qword_BE7D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE8, &unk_C0EB0);
    v37 = *(sub_B6800() - 8);
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v71 = *(v37 + 72);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_BD800;
    v72 = v39;
    v70 = v39 + v38;
    v34(v17, v32, v31);
    v35(v17, 0, 1, v31);
    v69 = sub_B78D0();
    sub_A194(v17, &unk_F17B0, &qword_BE7D0);
    v40 = *(v1 + 40);
    v41 = *(v86 + 13);
    v86 = v41;
    if (v40)
    {
      v68 = enum case for OnboardingTrayAction.State.enabled(_:);
      v41(v85);
    }

    else
    {
      (v41)(v85, enum case for OnboardingTrayAction.State.disabled(_:), v94);
      v68 = enum case for OnboardingTrayAction.State.enabled(_:);
    }

    v48 = *(v87 + 104);
    v49 = v92;
    v50 = v89;
    v48(v92, enum case for OnboardingTrayAction.Style.bold(_:), v89);
    v51 = swift_allocObject();
    v52 = *(v1 + 48);
    v51[3] = *(v1 + 32);
    v51[4] = v52;
    v51[5] = *(v1 + 64);
    v53 = *(v1 + 16);
    v51[1] = *v1;
    v51[2] = v53;
    sub_7FD34(v1, v98);
    sub_B67F0();
    sub_7C4B0();
    (v86)(v88, v68, v94);
    v48(v49, enum case for OnboardingTrayAction.Style.link(_:), v50);
    v54 = swift_allocObject();
    v55 = *(v1 + 48);
    v54[3] = *(v1 + 32);
    v54[4] = v55;
    v54[5] = *(v1 + 64);
    v56 = *(v1 + 16);
    v54[1] = *v1;
    v54[2] = v56;
    sub_7FD34(v1, v98);
    sub_B67F0();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E70, &qword_C2C20);
    v58 = sub_A8CC(&qword_F1E78, &qword_F1E70, &qword_C2C20);
    v65 = v57;
    v66 = v58;
    *(&v64 + 1) = v72;
    v59 = v91;
    sub_B6820();
    v60 = sub_B70C0();
    v61 = v90;
    (*(v93 + 32))(v90, v59, v81);
    v62 = v61 + *(v83 + 36);
    *v62 = v60;
    *(v62 + 8) = 0u;
    *(v62 + 24) = 0u;
    *(v62 + 40) = 1;
    v4 = v82;
    sub_7FD94(v61, v82);
    v46 = &qword_F1E48;
    v47 = &qword_C2C08;
    sub_A310(v4, v84, &qword_F1E48, &qword_C2C08);
    swift_storeEnumTagMultiPayload();
    sub_7FB70();
    sub_7FC74();
  }

  else
  {
    __chkstk_darwin(v28);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E50, &unk_C2C10);
    v66 = sub_A8CC(&qword_F1E58, &qword_F1E50, &unk_C2C10);
    v64 = 0u;
    sub_B6830();
    v42 = sub_B70C0();
    v43 = &v4[*(v21 + 36)];
    *v43 = v42;
    *(v43 + 8) = 0u;
    *(v43 + 24) = 0u;
    v43[40] = 1;
    v44 = sub_B70D0();
    v45 = &v4[*(v96 + 36)];
    *v45 = v44;
    *(v45 + 8) = 0u;
    *(v45 + 24) = 0u;
    v45[40] = 1;
    v46 = &qword_F1E38;
    v47 = &qword_C2BF8;
    sub_A310(v4, v7, &qword_F1E38, &qword_C2BF8);
    swift_storeEnumTagMultiPayload();
    sub_7FB70();
    sub_7FC74();
  }

  sub_B6F00();
  return sub_A194(v4, v46, v47);
}

uint64_t sub_7D5D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E80, &qword_C2C28);
  v3 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v5 = &v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E88, &qword_C2C30);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = &v38 - v11;
  v12 = sub_7C328();
  v14 = v13;
  v15 = *(a1 + 24);
  v42 = *(a1 + 8);
  v43 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E90, &qword_C2C38);
  sub_B76C0();
  *&v42 = v12;
  *(&v42 + 1) = v14;
  sub_97E8();
  sub_B77A0();
  v16 = sub_B70B0();
  v17 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E98, &qword_C2C40) + 36)];
  *v17 = v16;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  v17[40] = 1;
  sub_B7520();
  v18 = sub_B7510();

  v19 = sub_B70B0();
  v20 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1EA0, &qword_C2C48) + 36)];
  *v20 = v18;
  v20[8] = v19;
  v21 = &v5[*(v38 + 36)];
  v22 = *(sub_B6C60() + 20);
  v23 = enum case for RoundedCornerStyle.continuous(_:);
  v24 = sub_B6E70();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  __asm { FMOV            V0.2D, #26.0 }

  *v21 = _Q0;
  *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F10C0, &unk_C0D90) + 36)] = 256;
  *a1;
  sub_7FE04();
  v30 = v39;
  sub_B7280();
  sub_A194(v5, &qword_F1E80, &qword_C2C28);
  v31 = v7[2];
  v32 = v40;
  v31(v40, v30, v6);
  v33 = v41;
  *v41 = 0x403E000000000000;
  *(v33 + 8) = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1ED0, &qword_C2C58);
  v31(v33 + *(v34 + 48), v32, v6);
  v35 = v7[1];
  v35(v30, v6);
  v35(v32, v6);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E70, &qword_C2C20);
  return (*(*(v36 - 8) + 56))(v33, 0, 1, v36);
}

uint64_t sub_7DA04@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E50, &unk_C2C10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  *v8 = sub_B6EA0();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1ED8, &qword_C2C60);
  sub_7DB34(a1, &v8[*(v9 + 44)]);
  sub_AB00(v8, a2, &qword_F1E50, &unk_C2C10);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_7DB34@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v71 = a2;
  v3 = sub_B6BB0();
  v74 = *(v3 - 8);
  v4 = *(v74 + 64);
  __chkstk_darwin(v3);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1EE0, &qword_C2C68);
  v72 = *(v7 - 8);
  v8 = *(v72 + 64);
  __chkstk_darwin(v7);
  v10 = &v71 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1EE8, &qword_C2C70);
  v73 = *(v79 - 8);
  v11 = *(v73 + 64);
  __chkstk_darwin(v79);
  v13 = &v71 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1EF0, &qword_C2C78);
  v78 = *(v82 - 8);
  v14 = *(v78 + 64);
  __chkstk_darwin(v82);
  v92 = &v71 - v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1EF8, &qword_C2C80);
  v80 = *(v84 - 1);
  v16 = *(v80 + 64);
  __chkstk_darwin(v84);
  v76 = &v71 - v17;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F00, &qword_C2C88);
  v81 = *(v83 - 8);
  v18 = *(v81 + 64);
  __chkstk_darwin(v83);
  v77 = &v71 - v19;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F08, &qword_C2C90);
  v87 = *(v88 - 8);
  v20 = *(v87 + 64);
  v21 = __chkstk_darwin(v88);
  v96 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v94 = &v71 - v23;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  v86 = *(v95 - 8);
  v24 = *(v86 + 64);
  v25 = __chkstk_darwin(v95);
  v93 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v98 = &v71 - v27;
  sub_B7A60();
  v85 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v99 = sub_7C1A0();
  v100 = v28;
  sub_97E8();
  v90 = sub_B7200();
  v89 = v29;
  v75 = v30;
  v97 = v31;
  KeyPath = swift_getKeyPath();
  v103 = sub_7C4B0();
  v104 = v32;
  v33 = swift_allocObject();
  v34 = a1[3];
  v33[3] = a1[2];
  v33[4] = v34;
  v33[5] = a1[4];
  v35 = a1[1];
  v33[1] = *a1;
  v33[2] = v35;
  sub_7FD34(a1, &v99);
  v36 = sub_B7640();
  __chkstk_darwin(v36);
  *(&v71 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F10, &qword_C2CC8);
  sub_8009C();
  sub_B7180();
  sub_B6BA0();
  v37 = sub_A8CC(&qword_F1F70, &qword_F1EE0, &qword_C2C68);
  sub_B7490();
  (*(v74 + 8))(v6, v3);
  (*(v72 + 8))(v10, v7);
  v103 = sub_B74E0();
  v99 = v7;
  v100 = v3;
  v101 = v37;
  v102 = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v79;
  sub_B7380();

  (*(v73 + 8))(v13, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0738, &qword_BFE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C2800;
  v41 = sub_B70C0();
  *(inited + 32) = v41;
  v42 = sub_B70E0();
  *(inited + 33) = v42;
  v43 = sub_B7100();
  *(inited + 34) = v43;
  sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v41)
  {
    sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v42)
  {
    sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v43)
  {
    sub_B70F0();
  }

  v99 = v39;
  v100 = &type metadata for Color;
  v101 = OpaqueTypeConformance2;
  v102 = &protocol witness table for Color;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v76;
  v46 = v82;
  v47 = v92;
  sub_B7270();
  (*(v78 + 8))(v47, v46);
  v99 = v46;
  v100 = v44;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v77;
  v50 = v84;
  sub_B72B0();
  (*(v80 + 8))(v45, v50);
  v99 = v50;
  v100 = v48;
  swift_getOpaqueTypeConformance2();
  v51 = v94;
  v52 = v83;
  sub_B7390();
  (*(v81 + 8))(v49, v52);
  v53 = v86;
  v54 = *(v86 + 16);
  v55 = v93;
  v56 = v95;
  v54(v93, v98, v95);
  v57 = v87;
  v84 = *(v87 + 16);
  v58 = v88;
  (v84)(v96, v51, v88);
  v59 = v71;
  v60 = v89;
  *v71 = v90;
  v59[1] = v60;
  LODWORD(v92) = v75 & 1;
  *(v59 + 16) = v75 & 1;
  v61 = KeyPath;
  v59[3] = v97;
  v59[4] = v61;
  *(v59 + 40) = 1;
  v59[6] = 0x4020000000000000;
  *(v59 + 56) = 0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F78, &qword_C2CF8);
  v54(v59 + v62[16], v55, v56);
  v63 = v59 + v62[20];
  *v63 = 0x4048000000000000;
  v63[8] = 0;
  v64 = v96;
  (v84)(v59 + v62[24], v96, v58);
  v65 = v90;
  v66 = v89;
  sub_41410(v90, v89, v92);
  v67 = *(v57 + 8);

  v67(v94, v58);
  v68 = *(v53 + 8);
  v69 = v95;
  v68(v98, v95);
  v67(v64, v58);
  v68(v93, v69);
  sub_9C84(v65, v66, v92);
}

uint64_t sub_7E734(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 56);
  (*(a1 + 48))(isCurrentExecutor);
}

uint64_t sub_7E7D8@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F28, &qword_C2CD0);
  v32 = *(v1 - 8);
  v33 = v1;
  v2 = *(v32 + 64);
  __chkstk_darwin(v1);
  v31 = v29 - v3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F10, &qword_C2CC8);
  v4 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v6 = v29 - v5;
  sub_B7A60();
  v29[2] = sub_B7A50();
  sub_B7A00();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v29[1] = v29;
  __chkstk_darwin(isCurrentExecutor);
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v41 = sub_7C74C();
  v42 = v8;
  sub_97E8();
  v9 = sub_B7200();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v41 = v9;
  v42 = v11;
  v43 = v13 & 1;
  v44 = v15;
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = sub_7C8D4();
  v38 = v16;
  v17 = sub_B7200();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v37 = v17;
  v38 = v19;
  v39 = v21 & 1;
  v40 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F80, &qword_C2D00);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1F30, &qword_C2CD8);
  v25 = sub_80220();
  v35 = v24;
  v36 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v31;
  sub_B7710();
  v41 = sub_B74E0();
  v27 = sub_B76A0();
  (*(v32 + 32))(v6, v26, v33);
  *&v6[*(v30 + 36)] = v27;
  sub_AB00(v6, v34, &qword_F1F10, &qword_C2CC8);
}

uint64_t sub_7EBD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v62 = a1;
  v58 = sub_B6C60();
  v2 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F88, &qword_C2D08);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v57 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F40, &qword_C2CE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v57 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F30, &qword_C2CD8);
  v13 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v15 = &v57 - v14;
  sub_B7A60();
  v59 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_B6E60();
  v16 = *(v62 + 24);
  v63 = *(v62 + 8);
  v64 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E90, &qword_C2C38);
  sub_B76C0();
  sub_B7790();
  v17 = sub_B70B0();
  sub_B6A10();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E98, &qword_C2C40) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = &v12[*(v9 + 36)];
  v27[32] = 0;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  sub_B6AF0();
  sub_80314();
  sub_B72F0();
  sub_A194(v12, &qword_F1F40, &qword_C2CE0);
  v28 = *(v58 + 20);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = sub_B6E70();
  (*(*(v30 - 8) + 104))(&v4[v28], v29, v30);
  __asm { FMOV            V0.2D, #8.0 }

  *v4 = _Q0;
  sub_B74C0();
  v36 = sub_B7510();

  sub_B6A70();
  sub_803D4(v4, v8);
  v37 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F90, &qword_C2D10) + 36)];
  v38 = v64;
  *v37 = v63;
  *(v37 + 1) = v38;
  *(v37 + 4) = v65;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F98, &qword_C2D18);
  *&v8[*(v39 + 52)] = v36;
  *&v8[*(v39 + 56)] = 256;
  v40 = sub_B7760();
  v42 = v41;
  sub_80438(v4, &type metadata accessor for RoundedRectangle);
  v43 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1FA0, &unk_C2D20) + 36)];
  *v43 = v40;
  v43[1] = v42;
  v44 = sub_B74E0();
  v45 = &v15[*(v60 + 36)];
  sub_803D4(v8, v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1FA8, &qword_C40B0);
  *(v45 + *(v46 + 52)) = v44;
  *(v45 + *(v46 + 56)) = 256;
  v47 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1FB0, &qword_C2D30) + 36);
  sub_A310(v8, v47, &qword_F1F88, &qword_C2D08);
  v48 = sub_B7760();
  v50 = v49;
  sub_A194(v8, &qword_F1F88, &qword_C2D08);
  v51 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1FB8, &qword_C2D38) + 36));
  *v51 = v48;
  v51[1] = v50;
  v52 = sub_B7760();
  v54 = v53;
  v55 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F68, &qword_C2CF0) + 36));
  *v55 = v52;
  v55[1] = v54;
  *v62;
  sub_80220();
  sub_B7280();
  sub_A194(v15, &qword_F1F30, &qword_C2CD8);
}

uint64_t sub_7F184@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = *v1;
  v4 = v1[1];
  return sub_7CA5C(a1);
}

uint64_t sub_7F22C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  sub_4C52C(v5, v3);
  return sub_81CE8(&v5);
}

uint64_t sub_7F274@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8))
  {
    result = 0;
  }

  else
  {
    v4 = *a1;
  }

  *a2 = result;
  return result;
}

unint64_t sub_7F2BC()
{
  result = qword_F1D88;
  if (!qword_F1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1D88);
  }

  return result;
}

unint64_t sub_7F320()
{
  result = qword_F1DD8;
  if (!qword_F1DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1DD0, &qword_C2AC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1DE0, &qword_C2AD0);
    sub_A8CC(&qword_F1DE8, &qword_F1DE0, &qword_C2AD0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1DD8);
  }

  return result;
}

uint64_t sub_7F41C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7FC2C(&qword_F1D98, type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  *a2 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__hasFetchedInitialContactInfo);
  return result;
}

uint64_t sub_7F520()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7F558()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_7F598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_F248;

  return sub_8290C(a1, v4, v5, v6);
}

unint64_t sub_7F6B8()
{
  result = qword_F1E18;
  if (!qword_F1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1E18);
  }

  return result;
}

uint64_t objectdestroy_49Tm()
{
  v1 = sub_B6C30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  v9 = *(v0 + 8);

  v10 = *(v0 + 10);

  if (*(v0 + 11))
  {
    v11 = *(v0 + 12);
  }

  v12 = (v3 + 104) & ~v3;
  (*(v2 + 8))(&v0[v12], v1);

  return _swift_deallocObject(v0, v12 + v4, v3 | 7);
}

uint64_t objectdestroyTm_8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[10];

  if (v0[11])
  {
    v7 = v0[12];
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_7F94C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E08, &qword_C2B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7FAB0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_B79A0();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

unint64_t sub_7FB70()
{
  result = qword_F1E60;
  if (!qword_F1E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1E48, &qword_C2C08);
    sub_7FC2C(&qword_F0560, &type metadata accessor for OnboardingWelcomeView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1E60);
  }

  return result;
}

uint64_t sub_7FC2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_7FC74()
{
  result = qword_F1E68;
  if (!qword_F1E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1E38, &qword_C2BF8);
    sub_7FB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1E68);
  }

  return result;
}

uint64_t sub_7FD0C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return v1();
}

uint64_t sub_7FD6C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return v1();
}

uint64_t sub_7FD94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E48, &qword_C2C08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_7FE04()
{
  result = qword_F1EA8;
  if (!qword_F1EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1E80, &qword_C2C28);
    sub_7FEBC();
    sub_A8CC(&qword_F10F8, &qword_F10C0, &unk_C0D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1EA8);
  }

  return result;
}

unint64_t sub_7FEBC()
{
  result = qword_F1EB0;
  if (!qword_F1EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1EA0, &qword_C2C48);
    sub_7FF74();
    sub_A8CC(&qword_F1EC0, &qword_F1EC8, &qword_C2C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1EB0);
  }

  return result;
}

unint64_t sub_7FF74()
{
  result = qword_F1EB8;
  if (!qword_F1EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1E98, &qword_C2C40);
    sub_A8CC(&qword_F1B00, &qword_F1AF8, &qword_C2148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1EB8);
  }

  return result;
}

uint64_t objectdestroy_72Tm_0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_8009C()
{
  result = qword_F1F18;
  if (!qword_F1F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1F10, &qword_C2CC8);
    sub_80154();
    sub_A8CC(&qword_F0810, &qword_F0818, &qword_BFF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1F18);
  }

  return result;
}

unint64_t sub_80154()
{
  result = qword_F1F20;
  if (!qword_F1F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1F28, &qword_C2CD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1F30, &qword_C2CD8);
    sub_80220();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1F20);
  }

  return result;
}

unint64_t sub_80220()
{
  result = qword_F1F38;
  if (!qword_F1F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1F30, &qword_C2CD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1F40, &qword_C2CE0);
    sub_80314();
    swift_getOpaqueTypeConformance2();
    sub_A8CC(&qword_F1F60, &qword_F1F68, &qword_C2CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1F38);
  }

  return result;
}

unint64_t sub_80314()
{
  result = qword_F1F48;
  if (!qword_F1F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1F40, &qword_C2CE0);
    sub_7FF74();
    sub_A8CC(&qword_F1F50, &qword_F1F58, &qword_C2CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1F48);
  }

  return result;
}

uint64_t sub_803D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_B6C60();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_80438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_80498@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(&v19 + 1) = 0xE000000000000000;
  sub_B75B0();
  *&v19 = a1;
  type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel();

  sub_B75B0();
  v7 = v25;
  swift_getKeyPath();
  *&v25 = a1;
  sub_7FC2C(&qword_F1D98, type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  v8 = *(a1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone);
  v9 = *(a1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone + 8);
  v10 = *(a1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 32);
  v11 = *(a1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 40);
  v12 = *(a1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 56);

  v10(v8, v9);

  sub_B75B0();

  *&v19 = v7;
  *(&v19 + 1) = *(&v25 + 1);
  v20 = v25;
  *&v21 = v26;
  *(&v21 + 1) = 0x656E6F6850;
  *&v22 = 0xE500000000000000;
  *(&v22 + 1) = 0x6C69616D45;
  *&v23 = 0xE500000000000000;
  *(&v23 + 1) = a2;
  v24 = a3;
  *&v25 = v7;
  v26 = v20;
  v27 = v21;
  v28 = 0x656E6F6850;
  v29 = 0xE500000000000000;
  v30 = 0x6C69616D45;
  v31 = 0xE500000000000000;
  v32 = a2;
  v33 = a3;
  sub_7F1F0(&v19, v18);
  sub_806DC(&v25);
  v13 = v22;
  v14 = v23;
  *(a4 + 32) = v21;
  *(a4 + 48) = v13;
  *(a4 + 64) = v14;
  *(a4 + 80) = v24;
  result = *&v19;
  v16 = v20;
  *a4 = v19;
  *(a4 + 16) = v16;
  return result;
}

uint64_t sub_8071C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1D70, &qword_C2A98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1D78, &qword_C2AA0);
  sub_A8CC(&qword_F1D80, &qword_F1D70, &qword_C2A98);
  sub_7F2BC();
  type metadata accessor for ItemContactInfoSetupConfirmationView();
  sub_7FC2C(&qword_F1D90, type metadata accessor for ItemContactInfoSetupConfirmationView);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_80858()
{
  result = qword_F1FC0;
  if (!qword_F1FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1FC8, &unk_C2D70);
    sub_7FB70();
    sub_7FC74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1FC0);
  }

  return result;
}

uint64_t sub_8090C(__int16 a1, __int16 a2)
{
  if (HIBYTE(a1))
  {
    v2 = HIBYTE(a2) == 2 && ((a2 ^ a1) & 1) == 0;
    if (HIBYTE(a1) == 1)
    {
      return HIBYTE(a2) == 1;
    }

    else
    {
      return v2;
    }
  }

  else if (HIBYTE(a2))
  {
    return 0;
  }

  else
  {
    return sub_B7EA0();
  }
}

uint64_t sub_80950(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        sub_4C540(a1, 1);
        sub_4C540(a3, 1);
        v7 = sub_B7EA0();
        sub_4BE2C(a1, 1);
        return v7 & 1;
      }
    }

    else if (a4 == 2)
    {
      v10 = a3 == a1;
      sub_4C540(a1, 2);
      sub_4C540(a3, 2);
      sub_4BE2C(a1, 2);
      return v10;
    }
  }

  else if (!a4)
  {
    sub_4C540(a1, 0);
    sub_4C540(a3, 0);
    sub_4BE2C(a3, 0);
    if (a1 == a3)
    {
      sub_4BE2C(a3, 0);
      return 1;
    }

    v14 = a1;
    v15 = 0;
    goto LABEL_11;
  }

  sub_4C540(a1, a2);
  sub_4C540(a3, a4);
  sub_4BE2C(a1, a2);
  v14 = a3;
  v15 = a4;
LABEL_11:
  sub_4BE2C(v14, v15);
  return 0;
}

uint64_t sub_80A98(__int16 a1, __int16 a2)
{
  if (!HIBYTE(a1))
  {
    if (!HIBYTE(a2))
    {
      return sub_B7EA0();
    }

    return 0;
  }

  if (HIBYTE(a1) == 1)
  {
    if (HIBYTE(a2) == 1)
    {
      return sub_B7EA0();
    }

    return 0;
  }

  return HIBYTE(a2) == 2 && a2 == a1;
}

uint64_t sub_80ADC(__int16 a1, __int16 a2)
{
  if (HIBYTE(a1))
  {
    v2 = HIBYTE(a2) == 2 && a2 == a1;
    if (HIBYTE(a1) == 1)
    {
      return HIBYTE(a2) == 1;
    }

    else
    {
      return v2;
    }
  }

  else if (HIBYTE(a2))
  {
    return 0;
  }

  else
  {
    return sub_B7EA0();
  }
}

BOOL sub_80B20(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        sub_4C540(a1, 1);
        sub_4C540(a3, 1);
        v7 = sub_B7EA0();
        v8 = a1;
        v9 = 1;
LABEL_9:
        sub_4BE2C(v8, v9);
        return v7 & 1;
      }
    }

    else if (a4 == 2)
    {
      sub_4C540(a1, 2);
      sub_4C540(a3, 2);
      v7 = sub_B7EA0();
      v8 = a1;
      v9 = 2;
      goto LABEL_9;
    }
  }

  else if (!a4)
  {
    sub_4C540(a1, 0);
    sub_4C540(a3, 0);
    sub_4BE2C(a3, 0);
    sub_4BE2C(a1, 0);
    return a1 == a3;
  }

  sub_4C540(a1, a2);
  sub_4C540(a3, a4);
  sub_4BE2C(a1, a2);
  sub_4BE2C(a3, a4);
  return 0;
}

BOOL sub_80C50(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        sub_4C540(a1, 1);
        sub_4C540(a3, 1);
        v7 = sub_B7EA0();
        sub_4BE2C(a1, 1);
        return v7 & 1;
      }
    }

    else if (a4 == 2)
    {
      sub_4C540(a1, 2);
      sub_4C540(a3, 2);
      sub_4BE2C(a1, 2);
      return 1;
    }
  }

  else if (!a4)
  {
    sub_4C540(a1, 0);
    sub_4C540(a3, 0);
    sub_4BE2C(a3, 0);
    sub_4BE2C(a1, 0);
    return a1 == a3;
  }

  sub_4C540(a1, a2);
  sub_4C540(a3, a4);
  sub_4BE2C(a1, a2);
  sub_4BE2C(a3, a4);
  return 0;
}

uint64_t sub_80D80(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  if (!a2)
  {
    v9 = a4;
    sub_83A34(a1, 0);
    if (!v9)
    {
      sub_83A34(a3, 0);
      MyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0 = sub_B7EA0();
      sub_83A4C(a1, 0);
      return MyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0 & 1;
    }

    goto LABEL_9;
  }

  if (a2 != 1)
  {
    v10 = a4;
    sub_83A34(a1, 2);
    if (v10 == 2)
    {
      sub_83A34(a3, 2);
      MyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0 = sub_B7EA0();
      sub_83A4C(a1, 2);
      return MyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0 & 1;
    }

LABEL_9:
    sub_83A34(a3, a4);
LABEL_11:
    sub_83A4C(a1, a2);
    sub_83A4C(a3, a4);
    MyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0 = 0;
    return MyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0 & 1;
  }

  v13 = a1;
  v14 = 1;
  if (a4 != 1)
  {
    sub_83A34(a1, 1);
    sub_83A34(a3, a4);
    sub_83A34(a1, 1);

    goto LABEL_11;
  }

  v12 = a3;
  sub_83A34(a1, 1);
  sub_83A34(a3, 1);
  sub_83A34(a1, 1);
  MyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0 = _s13FindMyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0(&v13, &v12);

  sub_83A4C(a1, 1);
  return MyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0 & 1;
}

uint64_t sub_80F40(char a1)
{
  v2 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod;
  v3 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod);
  if (v3 == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod) = a1 & 1;
    swift_getKeyPath();
    sub_83780(&qword_F1D98);
    sub_B65C0();

    if (v3 != *(v1 + v2))
    {
      return sub_82118();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_83780(&qword_F1D98);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_810B4()
{
  v1 = v0;
  v2 = sub_B6320();
  v74 = *(v2 - 8);
  v75 = v2;
  v3 = *(v74 + 64);
  __chkstk_darwin(v2);
  v73 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LostAccessory();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v80 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LostModeInfo();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v79 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v78 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v63 - v15;
  v17 = sub_B6370();
  v76 = *(v17 - 8);
  v77 = v17;
  v18 = *(v76 + 64);
  __chkstk_darwin(v17);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v84[0] = v0;
  sub_83780(&qword_F1D98);
  sub_B65C0();

  if (*(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod))
  {
    swift_getKeyPath();
    *&v84[0] = v0;
    sub_B65C0();

    v21 = v0;
    v22 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone);
    v23 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone + 8);

    sub_B6350();
    if (qword_EEAC8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  swift_getKeyPath();
  *&v84[0] = v0;
  sub_B65C0();

  v21 = v0;
  v24 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__email);
  v25 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__email + 8);

  sub_B6350();
  if (qword_EEAC8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v26 = sub_B62F0();
  v27 = __swift_project_value_buffer(v26, qword_FADB0);
  v28 = *(v26 - 8);
  (*(v28 + 16))(v16, v27, v26);
  (*(v28 + 56))(v16, 0, 1, v26);
  v29 = sub_B78D0();
  v31 = v30;
  v72 = v20;
  sub_2B630(v16);
  v32 = v78;
  (*(v76 + 16))(v78, v20, v77);
  v33 = (v32 + *(v8 + 20));
  *v33 = v29;
  v33[1] = v31;
  sub_7788C(v32, v79, type metadata accessor for LostModeInfo);
  v34 = v21 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies;
  v35 = v21;
  v71 = v21;
  v37 = *(v21 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 56);
  v36 = *(v34 + 64);
  v39 = *(v34 + 88);
  v38 = *(v34 + 96);
  v41 = *(v34 + 136);
  v40 = *(v34 + 144);
  v42 = *(v34 + 168);
  *&v84[0] = *v34;
  v63 = *(v34 + 8);
  *(v84 + 8) = v63;
  v64 = *(v34 + 24);
  *(&v84[1] + 8) = v64;
  v66 = *(v34 + 40);
  *(&v84[2] + 8) = v66;
  *(&v84[3] + 1) = v37;
  *&v85[0] = v38;
  v67 = *(v34 + 104);
  *(v85 + 8) = v67;
  v68 = *(v34 + 120);
  *(&v85[1] + 8) = v68;
  *(&v85[2] + 1) = v41;
  *&v86[0] = v36;
  v65 = *(v34 + 72);
  *(v86 + 8) = v65;
  *(&v86[1] + 1) = v39;
  *&v87[0] = v40;
  v69 = *(v34 + 152);
  *(v87 + 8) = v69;
  *(&v87[1] + 1) = v42;
  v70 = type metadata accessor for LostAccessory;
  sub_7788C(v35 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_lostAccessory, v80, type metadata accessor for LostAccessory);
  v43 = type metadata accessor for ItemContactInfoSetupConfirmationViewModel();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  *(v46 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__dismiss) = 0;
  v47 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination;
  *(v46 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination) = -256;

  sub_B65F0();
  *(v46 + v47) = -256;
  v48 = v79;
  sub_7788C(v79, v46 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo, type metadata accessor for LostModeInfo);
  sub_7788C(v48, v46 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_originalLostModeInfo, type metadata accessor for LostModeInfo);
  *(v46 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType) = 0;
  v49 = (v46 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies);
  v50 = v87[0];
  v49[8] = v86[1];
  v49[9] = v50;
  v49[10] = v87[1];
  v51 = v85[1];
  v49[4] = v85[0];
  v49[5] = v51;
  v52 = v86[0];
  v49[6] = v85[2];
  v49[7] = v52;
  v53 = v84[1];
  *v49 = v84[0];
  v49[1] = v53;
  v54 = v84[3];
  v49[2] = v84[2];
  v49[3] = v54;
  sub_777DC(v84, &v82);
  v55 = v73;
  sub_B6330();
  (*(v74 + 32))(v46 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_contactKind, v55, v75);
  *(v46 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableSaveButton) = 0;
  *(v46 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableCancelButton) = 0;
  MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0 = _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
  v57 = (v46 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
  *v57 = MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0;
  v57[1] = v58;
  *(v46 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound) = 0;
  *(v46 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound) = 0;
  *(v46 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting) = 0;
  *(v46 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling) = 0;
  v59 = *&v87[0];
  v60 = *&v87[1];
  v81 = 0;

  v59(&v82, &v81);

  *(v46 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userVisibleEditItems) = v82;
  v81 = 0;

  v60(&v82, &v81);
  sub_77838(v84);

  *(v46 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userInteractableEditItems) = v82;
  v61 = v80;
  sub_7788C(v80, v46 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_lostAccessory, v70);
  sub_769C4();
  sub_778F4(v61, type metadata accessor for LostAccessory);
  sub_778F4(v48, type metadata accessor for LostModeInfo);
  v82 = v46;
  v83 = 0;
  sub_81CE8(&v82);
  sub_778F4(v78, type metadata accessor for LostModeInfo);
  return (*(v76 + 8))(v72, v77);
}

uint64_t sub_81A28(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_83780(&qword_F1D98);
  sub_B65C0();

  v4 = (v2 + *a2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_81B04(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  if (*v6 == a1 && v6[1] == a2)
  {
    return sub_82570(a1, a2, a3);
  }

  v8 = a3;
  v9 = sub_B7DD0();
  a3 = v8;
  if (v9)
  {
    return sub_82570(a1, a2, a3);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_83780(&qword_F1D98);
  sub_B65B0();
}

uint64_t sub_81C3C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_83780(&qword_F1D98);
  sub_B65C0();

  v3 = v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination;
  v4 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination);
  *a1 = v4;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_4C52C(v4, v5);
}

uint64_t sub_81CE8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination;
  v5 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination);
  v6 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination + 8);
  sub_4C52C(v5, v6);
  v7 = sub_83614(v5, v6, v2, v3);
  sub_4BE18(v5, v6);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_83780(&qword_F1D98);
    sub_B65B0();
    sub_4BE18(v2, v3);
  }

  else
  {
    v10 = *v4;
    *v4 = v2;
    v11 = *(v4 + 8);
    *(v4 + 8) = v3;

    return sub_4BE18(v10, v11);
  }
}

uint64_t sub_81E80(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_83780(&qword_F1D98);
  sub_B65C0();

  return *(v2 + *a2);
}

uint64_t sub_81F94(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_83780(&qword_F1D98);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_82084()
{
  swift_getKeyPath();
  sub_83780(&qword_F1D98);
  sub_B65C0();

  return *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod);
}

uint64_t sub_82118()
{
  v1 = v0;
  swift_getKeyPath();
  sub_83780(&qword_F1D98);
  sub_B65C0();

  v2 = (v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies);
  v3 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 88);
  if (*(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod))
  {
    v4 = v2[9];
    v5 = v2[10];
    swift_getKeyPath();

    sub_B65C0();

    v6 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone);
    v7 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone + 8);

    v8 = v5(v6, v7) & 1;

    v10 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__isComplete;
    if (v8 != *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__isComplete))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = v2[8];
    v11 = v2[9];
    swift_getKeyPath();

    sub_B65C0();

    v13 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__email);
    v14 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__email + 8);

    v8 = v12(v13, v14) & 1;

    v10 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__isComplete;
    if (v8 != *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__isComplete))
    {
LABEL_5:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_B65B0();
    }
  }

  *(v1 + v10) = v8;
  return result;
}

uint64_t sub_823FC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_83780(&qword_F1D98);
  sub_B65C0();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_8249C(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod;
  v4 = *(a1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod);
  *(a1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod) = a2 & 1;
  swift_getKeyPath();
  sub_83780(&qword_F1D98);
  sub_B65C0();

  if (v4 != *(a1 + v3))
  {
    return sub_82118();
  }

  return result;
}

uint64_t sub_82570(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  v6 = *v4;
  v5 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  swift_getKeyPath();
  sub_83780(&qword_F1D98);
  sub_B65C0();

  if (*v4 == v6 && v4[1] == v5)
  {
  }

  v8 = sub_B7DD0();

  if ((v8 & 1) == 0)
  {
    return sub_82118();
  }

  return result;
}

uint64_t sub_82664@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_83780(&qword_F1D98);
  sub_B65C0();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t keypath_set_11Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return sub_81B04(v7, v6, a5);
}

uint64_t sub_827F4(uint64_t *a1, _OWORD *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination;
  *v8 = 0;
  *(v8 + 8) = -1;
  sub_B65F0();
  sub_4BE18(*v8, *(v8 + 8));
  *v8 = v6;
  *(v8 + 8) = v7;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__isComplete) = 0;
  v9 = (v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies);
  v10 = a2[9];
  v9[8] = a2[8];
  v9[9] = v10;
  v9[10] = a2[10];
  v11 = a2[5];
  v9[4] = a2[4];
  v9[5] = v11;
  v12 = a2[7];
  v9[6] = a2[6];
  v9[7] = v12;
  v13 = a2[1];
  *v9 = *a2;
  v9[1] = v13;
  v14 = a2[3];
  v9[2] = a2[2];
  v9[3] = v14;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod) = 1;
  v15 = (v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__email);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__hasFetchedInitialContactInfo) = 0;
  sub_83A64(a3, v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_lostAccessory);
  return v3;
}

uint64_t sub_8290C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_B7A60();
  v4[8] = sub_B7A50();
  v6 = sub_B7A00();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_829A4, v6, v5);
}

uint64_t sub_829A4()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies;
    v4 = *(Strong + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies);
    v0[12] = *(Strong + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 8);
    v0[13] = *(v3 + 24);

    v10 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_82B24;

    return v10();
  }

  else
  {
    v8 = v0[8];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_82B24(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 112);
  v8 = *v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = v2;

  if (v2)
  {
    v6 = sub_82EF0;
  }

  else
  {
    v6 = sub_82C3C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_82C3C()
{
  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[9];
  v4 = v0[10];

  return _swift_task_switch(sub_82CA8, v3, v4);
}

uint64_t sub_82CA8()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[8];

  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__email) == v1 && *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__email + 8) == v2;
  if (v5 || (v6 = v0[15], v7 = v0[16], (sub_B7DD0() & 1) != 0))
  {
    v8 = v0[11];
    sub_82570(v0[15], v0[16], &OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__email);
    v9 = v0[17];
  }

  else
  {
    v10 = v0[16];
    v11 = v0[17];
    v12 = v0[15];
    v13 = v0[11];
    swift_getKeyPath();
    v14 = swift_task_alloc();
    v14[2] = v13;
    v14[3] = v12;
    v14[4] = v10;
    v0[6] = v13;
    sub_83780(&qword_F1D98);
    sub_B65B0();
  }

  v15 = v0[11];
  if (*(v15 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__hasFetchedInitialContactInfo) == 1)
  {
    *(v15 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__hasFetchedInitialContactInfo) = 1;
  }

  else
  {
    swift_getKeyPath();
    v16 = swift_task_alloc();
    *(v16 + 16) = v15;
    *(v16 + 24) = 1;
    v0[5] = v15;
    sub_83780(&qword_F1D98);
    sub_B65B0();
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_82EF0()
{
  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[9];
  v4 = v0[10];

  return _swift_task_switch(sub_82F5C, v3, v4);
}

uint64_t sub_82F5C()
{
  v1 = v0[17];
  v2 = v0[8];

  v3 = v0[11];
  if (*(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__hasFetchedInitialContactInfo) == 1)
  {
    *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__hasFetchedInitialContactInfo) = 1;
  }

  else
  {
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    v0[5] = v3;
    sub_83780(&qword_F1D98);
    sub_B65B0();
  }

  v5 = v0[1];

  return v5();
}

uint64_t ItemContactInfoSetupEnterDetailsViewModel.deinit()
{
  sub_778F4(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_lostAccessory, type metadata accessor for LostAccessory);
  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 128);
  v11[9] = v1;
  v11[10] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 160);
  v2 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 64);
  v11[5] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 96);
  v11[7] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies);
  v11[1] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 32);
  v11[3] = v5;
  sub_831BC(v11);
  sub_4BE18(*(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination), *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination + 8));
  v6 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__email + 8);

  v7 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone + 8);

  v8 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel___observationRegistrar;
  v9 = sub_B6600();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t ItemContactInfoSetupEnterDetailsViewModel.__deallocating_deinit()
{
  sub_778F4(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_lostAccessory, type metadata accessor for LostAccessory);
  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 144);
  v13[8] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 128);
  v13[9] = v1;
  v13[10] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 160);
  v2 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 80);
  v13[4] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 64);
  v13[5] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 112);
  v13[6] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 96);
  v13[7] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 16);
  v13[0] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies);
  v13[1] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 48);
  v13[2] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 32);
  v13[3] = v5;
  sub_831BC(v13);
  sub_4BE18(*(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination), *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination + 8));
  v6 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__email + 8);

  v7 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone + 8);

  v8 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel___observationRegistrar;
  v9 = sub_B6600();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_83350(uint64_t a1)
{
  result = sub_83780(&qword_F1FF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel()
{
  result = qword_F2048;
  if (!qword_F2048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8341C()
{
  result = type metadata accessor for LostAccessory();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_B6600();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_8353C()
{
  result = qword_F2110;
  if (!qword_F2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2110);
  }

  return result;
}

unint64_t sub_83590(uint64_t a1)
{
  *(a1 + 8) = sub_7F2BC();
  result = sub_835C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_835C0()
{
  result = qword_F2118;
  if (!qword_F2118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2118);
  }

  return result;
}

uint64_t sub_83614(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2 == -1)
  {
    if (a4 == -1)
    {
      sub_4C52C(a1, 255);
      sub_4C52C(a3, 255);
      sub_4BE18(a1, 255);
      v9 = 0;
      return v9 & 1;
    }

    goto LABEL_5;
  }

  if (a4 == -1)
  {
LABEL_5:
    sub_4C52C(a1, a2);
    sub_4C52C(a3, a4);
    sub_4BE18(a1, a2);
    sub_4BE18(a3, a4);
    v9 = 1;
    return v9 & 1;
  }

  sub_4C52C(a1, a2);
  sub_4C52C(a3, a4);
  v8 = sub_80B20(a1, a2, a3, a4);
  sub_4BE18(a3, a4);
  sub_4BE18(a1, a2);
  v9 = !v8;
  return v9 & 1;
}

uint64_t sub_83720()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination;
  v3 = *v2;
  v4 = *(v0 + 32);
  *v2 = v1;
  v5 = *(v2 + 8);
  *(v2 + 8) = v4;
  sub_4C52C(v1, v4);
  return sub_4BE18(v3, v5);
}

uint64_t sub_83780(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_839D0(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  return sub_82570(v4, v5, a1);
}

uint64_t sub_83A34(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_83A4C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_83A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostAccessory();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_83B28@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  result = sub_B68C0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_83B68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_B6DE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ItemContactInfoSetupIntroductionView();
  sub_A310(v1 + *(v12 + 28), v11, &qword_EF668, &qword_BE260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_B6A40();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_B7B50();
    v16 = sub_B7080();
    sub_B6990();

    sub_B6DD0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t ItemContactInfoSetupIntroductionView.init(viewModel:onDismiss:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = xmmword_C3130;
  v6 = *(type metadata accessor for ItemContactInfoSetupIntroductionView() + 28);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ItemContactInfoSetupIntroductionViewModel();
  result = sub_B75B0();
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  return result;
}

uint64_t type metadata accessor for ItemContactInfoSetupIntroductionView()
{
  result = qword_F2248;
  if (!qword_F2248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ItemContactInfoSetupIntroductionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v145 = a1;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v136 = *(v137 - 8);
  v1 = *(v136 + 64);
  __chkstk_darwin(v137);
  v117 = &v116 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v135 = &v116 - v5;
  v6 = type metadata accessor for ItemContactInfoSetupIntroductionView();
  v151 = *(v6 - 8);
  v7 = *(v151 + 64);
  __chkstk_darwin(v6 - 8);
  v154 = v8;
  v155 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_B67E0();
  v146 = *(v150 - 8);
  v9 = *(v146 + 64);
  __chkstk_darwin(v150);
  v129 = (&v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = sub_B67D0();
  OpaqueTypeConformance2 = *(v127 - 8);
  v11 = *(OpaqueTypeConformance2 + 64);
  __chkstk_darwin(v127);
  v128 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_B6980();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v116 - v20;
  v132 = sub_B6850();
  v131 = *(v132 - 8);
  v22 = *(v131 + 64);
  __chkstk_darwin(v132);
  v130 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2120, &qword_C3170);
  Description = v152[-1].Description;
  v24 = Description[8];
  __chkstk_darwin(v152);
  v133 = &v116 - v25;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2128, &qword_C3178);
  v140 = *(v143 - 8);
  v26 = *(v140 + 64);
  __chkstk_darwin(v143);
  v153 = &v116 - v27;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2130, &qword_C3180);
  v141 = *(v144 - 8);
  v28 = *(v141 + 64);
  __chkstk_darwin(v144);
  v139 = &v116 - v29;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2138, &qword_C3188);
  v30 = *(*(v138 - 8) + 64);
  __chkstk_darwin(v138);
  v142 = &v116 - v31;
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v32 = sub_B62F0();
  v33 = __swift_project_value_buffer(v32, qword_FADB0);
  v34 = *(v32 - 8);
  v35 = *(v34 + 16);
  v123 = v33;
  v122 = v35;
  (v35)(v21);
  v36 = *(v34 + 56);
  v36(v21, 0, 1, v32);
  v125 = sub_B78D0();
  v124 = v37;
  sub_A194(v21, &unk_F17B0, &qword_BE7D0);
  v160 = &type metadata for SolariumFeatureFlag;
  v161 = sub_28360();
  v38 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v157);
  if (v38)
  {
    v39 = [objc_opt_self() clearColor];
  }

  else
  {
    v40 = *(v156 + 24);
    v157 = *(v156 + 16);
    v158 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
    sub_B75C0();
    v41 = v171 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory;
    LOBYTE(v41) = v41[*(type metadata accessor for LostAccessory() + 24)];

    sub_40D5C();
    if (v41)
    {
      if (qword_EEB18 != -1)
      {
        swift_once();
      }

      v42 = qword_FAED0;
    }

    else
    {
      if (qword_EEB20 != -1)
      {
        swift_once();
      }

      v42 = qword_FAEE8;
    }

    v43 = __swift_project_value_buffer(v13, v42);
    (*(v14 + 16))(v17, v43, v13);
    v39 = sub_B7B90();
  }

  v121 = v39;
  v44 = v156;
  v149 = *(v156 + 16);
  v148 = *(v156 + 24);
  v157 = v149;
  v158 = v148;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
  sub_B75C0();
  v120 = sub_89688();

  v119 = &v116;
  __chkstk_darwin(v45);
  v118 = &v113;
  v115 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE8, &unk_C0EB0);
  v46 = *(sub_B6800() - 8);
  v47 = *(v46 + 72);
  v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_BDA30;
  v122(v21, v123, v32);
  v36(v21, 0, 1, v32);
  sub_B78D0();
  sub_A194(v21, &unk_F17B0, &qword_BE7D0);
  (*(OpaqueTypeConformance2 + 104))(v128, enum case for OnboardingTrayAction.State.enabled(_:), v127);
  (*(v146 + 104))(v129, enum case for OnboardingTrayAction.Style.bold(_:), v150);
  v50 = v155;
  sub_87D04(v44, v155);
  v51 = *(v151 + 80);
  v127 = ~v51;
  v146 = v51;
  v150 = v154 + ((v51 + 16) & ~v51);
  v52 = (v51 + 16) & ~v51;
  v151 = v52;
  v53 = swift_allocObject();
  sub_87D6C(v50, v53 + v52);
  sub_B67F0();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2148, &qword_C31A0);
  v55 = sub_87E40();
  v114 = v54;
  v115 = v55;
  v113 = v49;
  v56 = v130;
  v57 = sub_B6830();
  __chkstk_darwin(v57);
  v115 = v44;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C30, &qword_C04F0);
  v128 = sub_88EC4(&qword_F0560, &type metadata accessor for OnboardingWelcomeView);
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C38, &qword_C04F8);
  v59 = sub_A8CC(&qword_F0C40, &qword_F0C38, &qword_C04F8);
  v157 = v58;
  v158 = v59;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v133;
  v61 = v132;
  sub_B7450();
  (*(v131 + 8))(v56, v61);
  v171 = v149;
  v172 = v148;
  sub_B75E0();
  v62 = v157;
  v63 = v158;
  v64 = v159;
  swift_getKeyPath();
  v175 = v62;
  v176 = v63;
  v177 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F21B8, &qword_C3208);
  sub_B76B0();

  v66 = v171;
  v65 = v172;
  v67 = v173;
  v68 = v174;

  swift_getKeyPath();
  v167 = v66;
  v168 = v65;
  v169 = v67;
  v170 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F21C0, &qword_C3238);
  sub_B76B0();

  sub_881E8(v67, v68);
  v163 = v165;
  v164 = v166;
  v69 = v155;
  sub_87D04(v156, v155);
  v70 = v146;
  v71 = swift_allocObject();
  sub_87D6C(v69, v71 + v151);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F21C8, &qword_C3240);
  v157 = v61;
  v158 = v129;
  v159 = v128;
  v160 = OpaqueTypeConformance2;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = sub_8827C();
  v75 = sub_882D0();
  v157 = &type metadata for ItemContactInfoSetupEnterDetailsView;
  v158 = v75;
  v129 = swift_getOpaqueTypeConformance2();
  v115 = v129;
  v76 = v152;
  v132 = v72;
  v131 = v73;
  v130 = v74;
  sub_B7340();

  (Description[1])(v60, v76);
  v157 = v149;
  v158 = v148;
  sub_B75C0();
  v77 = v135;
  sub_8A244(v135);

  v78 = v136;
  v79 = v137;
  if ((*(v136 + 48))(v77, 1, v137))
  {
    sub_A194(v77, &qword_EEE08, &qword_BD530);
    v80 = 0;
    v81 = 0xE000000000000000;
  }

  else
  {
    v82 = v117;
    (*(v78 + 16))(v117, v77, v79);
    sub_A194(v77, &qword_EEE08, &qword_BD530);
    v80 = sub_B6920();
    v81 = v83;
    (*(v78 + 8))(v82, v79);
  }

  v157 = v80;
  v158 = v81;
  sub_97E8();
  v149 = sub_B7200();
  v148 = v84;
  LODWORD(v137) = v85;
  v147 = v86;
  v87 = v156;
  v88 = v155;
  sub_87D04(v156, v155);
  sub_B7A60();
  v89 = sub_B7A50();
  v90 = (v70 + 32) & v127;
  v91 = swift_allocObject();
  *(v91 + 16) = v89;
  *(v91 + 24) = &protocol witness table for MainActor;
  sub_87D6C(v88, v91 + v90);
  sub_87D04(v87, v88);
  v92 = sub_B7A50();
  v93 = swift_allocObject();
  *(v93 + 16) = v92;
  *(v93 + 24) = &protocol witness table for MainActor;
  sub_87D6C(v88, v93 + v90);
  v94 = sub_B76D0();
  v154 = &v116;
  v95 = __chkstk_darwin(v94);
  __chkstk_darwin(v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE70, &qword_BFEF0);
  v157 = v152;
  v158 = &type metadata for ItemContactInfoSetupIntroductionViewModel.Stack;
  v159 = v132;
  v160 = v131;
  v161 = v130;
  v162 = v129;
  v96 = swift_getOpaqueTypeConformance2();
  v114 = sub_9BD4();
  v115 = &protocol witness table for Text;
  v113 = v96;
  v97 = v143;
  v98 = v137;
  v99 = v139;
  v100 = v149;
  v101 = v148;
  v102 = v153;
  sub_B7400();

  sub_9C84(v100, v101, v98 & 1);

  (*(v140 + 8))(v102, v97);
  v103 = v156;
  sub_87D04(v156, v88);
  v104 = swift_allocObject();
  v105 = v151;
  sub_87D6C(v88, v104 + v151);
  v106 = v142;
  (*(v141 + 32))(v142, v99, v144);
  v107 = &v106[*(v138 + 36)];
  *v107 = sub_88560;
  v107[1] = v104;
  v107[2] = 0;
  v107[3] = 0;
  sub_87D04(v103, v88);
  v108 = swift_allocObject();
  sub_87D6C(v88, v108 + v105);
  v109 = v106;
  v110 = v145;
  sub_8860C(v109, v145);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F21E0, &qword_C3248);
  v112 = (v110 + *(result + 36));
  *v112 = 0;
  v112[1] = 0;
  v112[2] = sub_8857C;
  v112[3] = v108;
  return result;
}

double sub_8543C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_B7550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *(a1 + 24);
  *&v70 = *(a1 + 16);
  *(&v70 + 1) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
  sub_B75C0();
  v10 = *&v60[0] + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory;
  LOBYTE(v10) = *(v10 + *(type metadata accessor for LostAccessory() + 24));

  if (v10)
  {
    *(&v71 + 1) = &type metadata for SolariumFeatureFlag;
    *&v72 = sub_28360();
    sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(&v70);
    type metadata accessor for DelegatedSharesReportingModule();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_B7580();
    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v13 = sub_B7570();

    (*(v5 + 8))(v8, v4);
    v60[0] = v13;
    LOWORD(v60[1]) = 257;
    sub_890B8(v60);
  }

  else
  {
    v14 = sub_B74E0();
    v15 = sub_B7760();
    v17 = v16;
    sub_85A60(v60);
    v33[1] = v60[1];
    v33[2] = v60[2];
    v33[3] = v60[3];
    v33[4] = v60[4];
    v40 = v60[2];
    v41 = v60[3];
    v33[0] = v60[0];
    *&v34 = v15;
    *(&v34 + 1) = v17;
    v38 = v60[0];
    v39 = v60[1];
    v42 = v60[4];
    v43 = v34;
    v35[3] = v60[3];
    v35[4] = v60[4];
    v35[1] = v60[1];
    v35[2] = v60[2];
    v35[0] = v60[0];
    v36 = v15;
    v37 = v17;
    sub_A310(v33, &v70, &qword_F21A0, &qword_C31C8);
    sub_A194(v35, &qword_F21A0, &qword_C31C8);
    v18 = sub_B6C10();
    v19 = sub_B70B0();
    v21 = *a1;
    v20 = *(a1 + 8);
    sub_B7760();
    if (v21 > v20)
    {
      sub_B7B50();
      HIDWORD(v31) = v19;
      v22 = sub_B7080();
      LOBYTE(v19) = BYTE4(v31);
      sub_B6990();
    }

    sub_B6C90();
    *&v32[55] = v66;
    *&v32[71] = v67;
    *&v32[87] = v68;
    *&v32[103] = v69;
    *&v32[7] = v63;
    *&v32[23] = v64;
    *&v32[39] = v65;
    *&v60[0] = v14;
    *(&v60[1] + 8) = v39;
    *(v60 + 8) = v38;
    *(&v60[5] + 8) = v43;
    *(&v60[4] + 8) = v42;
    *(&v60[3] + 8) = v41;
    *(&v60[2] + 8) = v40;
    WORD4(v60[6]) = 0;
    *&v61[0] = v18;
    BYTE8(v61[0]) = v19;
    *(&v61[3] + 9) = *&v32[48];
    *(&v61[2] + 9) = *&v32[32];
    *(&v61[1] + 9) = *&v32[16];
    *(v61 + 9) = *v32;
    *(&v61[7] + 1) = *(&v69 + 1);
    *(&v61[6] + 9) = *&v32[96];
    *(&v61[5] + 9) = *&v32[80];
    *(&v61[4] + 9) = *&v32[64];
    sub_890C4(v60);
  }

  v56 = v61[5];
  v57 = v61[6];
  v58 = v61[7];
  v59 = v62;
  v52 = v61[1];
  v53 = v61[2];
  v54 = v61[3];
  v55 = v61[4];
  v48 = v60[4];
  v49 = v60[5];
  v50 = v60[6];
  v51 = v61[0];
  v44 = v60[0];
  v45 = v60[1];
  v46 = v60[2];
  v47 = v60[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2160, &qword_C31A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0538, &qword_C04E0);
  sub_87ECC();
  sub_40DB8();
  sub_B6F00();
  v61[5] = v82;
  v61[6] = v83;
  v61[7] = v84;
  v62 = v85;
  v61[1] = v78;
  v61[2] = v79;
  v61[3] = v80;
  v61[4] = v81;
  v60[4] = v74;
  v60[5] = v75;
  v60[6] = v76;
  v61[0] = v77;
  v60[0] = v70;
  v60[1] = v71;
  v60[2] = v72;
  v60[3] = v73;
  ItemContactInfoSetupIntroductionViewModel.bind()();
  v23 = v61[6];
  *(a2 + 192) = v61[5];
  *(a2 + 208) = v23;
  *(a2 + 224) = v61[7];
  *(a2 + 240) = v62;
  v24 = v61[2];
  *(a2 + 128) = v61[1];
  *(a2 + 144) = v24;
  v25 = v61[4];
  *(a2 + 160) = v61[3];
  *(a2 + 176) = v25;
  v26 = v60[5];
  *(a2 + 64) = v60[4];
  *(a2 + 80) = v26;
  v27 = v61[0];
  *(a2 + 96) = v60[6];
  *(a2 + 112) = v27;
  v28 = v60[1];
  *a2 = v60[0];
  *(a2 + 16) = v28;
  result = *&v60[2];
  v30 = v60[3];
  *(a2 + 32) = v60[2];
  *(a2 + 48) = v30;
  return result;
}

__n128 sub_85A60@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_B6A40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_83B68(v9);
  (*(v3 + 104))(v7, enum case for ColorScheme.dark(_:), v2);
  v10 = sub_B6A30();
  v11 = *(v3 + 8);
  v11(v7, v2);
  v11(v9, v2);
  if (v10)
  {
    v35.n128_u64[1] = &type metadata for SolariumFeatureFlag;
    *&v36 = sub_28360();
    v12 = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(&v34);
    type metadata accessor for MicaBundle();
    if (v12)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      LOBYTE(v25) = 0;
      *&v34 = 0xD000000000000016;
      *(&v34 + 1) = 0x80000000000BB850;
      v35.n128_u64[0] = v14;
      v35.n128_u8[8] = 1;
      v36 = 0uLL;
      v37[0] = 1;
      *&v37[8] = sub_28D50;
      *&v37[16] = 0;
      *&v37[24] = 0;
    }

    else
    {
      v18 = swift_getObjCClassFromMetadata();
      v19 = [objc_opt_self() bundleForClass:v18];
      LOBYTE(v25) = 1;
      *&v34 = 0xD000000000000012;
      *(&v34 + 1) = 0x80000000000BB830;
      v35.n128_u64[0] = v19;
      v35.n128_u8[8] = 1;
      v36 = 0uLL;
      v37[0] = 0;
      *&v37[8] = sub_28D50;
      *&v37[16] = 0;
      *&v37[24] = 256;
    }

    sub_890CC();
    sub_B6F00();
    v36 = v32;
    *v37 = v33[0];
    *&v37[10] = *(v33 + 10);
    v34 = v30;
    v35 = v31;
    v29 = 0;
    v37[26] = 0;
  }

  else
  {
    v35.n128_u64[1] = &type metadata for SolariumFeatureFlag;
    *&v36 = sub_28360();
    v15 = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(&v34);
    type metadata accessor for LostModeDetailPlatterModule();
    if (v15)
    {
      v16 = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass:v16];
      LOBYTE(v25) = 0;
      *&v34 = 0xD000000000000016;
      *(&v34 + 1) = 0x80000000000BB810;
      v35.n128_u64[0] = v17;
      v35.n128_u8[8] = 1;
      v36 = 0uLL;
      v37[0] = 1;
      *&v37[8] = sub_28D50;
      *&v37[16] = 0;
      *&v37[24] = 0;
    }

    else
    {
      v20 = swift_getObjCClassFromMetadata();
      v21 = [objc_opt_self() bundleForClass:v20];
      LOBYTE(v25) = 1;
      *&v34 = 0xD000000000000012;
      *(&v34 + 1) = 0x80000000000BB7F0;
      v35.n128_u64[0] = v21;
      v35.n128_u8[8] = 1;
      v36 = 0uLL;
      v37[0] = 0;
      *&v37[8] = sub_28D50;
      *&v37[16] = 0;
      *&v37[24] = 256;
    }

    sub_890CC();
    sub_B6F00();
    v36 = v32;
    *v37 = v33[0];
    *&v37[10] = *(v33 + 10);
    v34 = v30;
    v35 = v31;
    v29 = 1;
    v37[26] = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F22B8, &qword_C3368);
  sub_89120();
  sub_B6F00();

  *v37 = *v28;
  *&v37[11] = *&v28[11];
  v34 = v25;
  v35 = v26;
  v22 = *v37;
  *(a1 + 32) = v27;
  *(a1 + 48) = v22;
  *(a1 + 59) = *&v37[11];
  result = v35;
  *a1 = v34;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_85F8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
  sub_B75C0();
  sub_89CA8();
}

uint64_t sub_85FE8(uint64_t a1)
{
  v2 = sub_B6F50();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C38, &qword_C04F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_B6F30();
  __chkstk_darwin(v9);
  *(&v11 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C88, &qword_C0688);
  sub_4C558();
  sub_B6A80();
  sub_A8CC(&qword_F0C40, &qword_F0C38, &qword_C04F8);
  sub_B6F60();
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_8622C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v76 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  v64 = *(v66 - 8);
  v2 = *(v64 + 64);
  __chkstk_darwin(v66);
  v4 = &v61 - v3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0CB0, &qword_C06A0);
  v5 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v65 = &v61 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0CB8, &qword_C06A8);
  v7 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v74 = &v61 - v8;
  v9 = type metadata accessor for ItemContactInfoSetupIntroductionView();
  v67 = *(v9 - 8);
  v10 = *(v67 + 64);
  __chkstk_darwin(v9 - 8);
  v68 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_B7950();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0668, &qword_C1FD0);
  v62 = *(v20 - 8);
  v63 = v20;
  v21 = *(v62 + 64);
  __chkstk_darwin(v20);
  v23 = &v61 - v22;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0CA0, &unk_C0690);
  v24 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v26 = &v61 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C88, &qword_C0688);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v71 = &v61 - v29;
  sub_B7A60();
  v70 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v79 = &type metadata for SolariumFeatureFlag;
  v80 = sub_28360();
  v30 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v77);
  if (v30)
  {
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v31 = sub_B62F0();
    v32 = __swift_project_value_buffer(v31, qword_FAD48);
    v33 = *(v31 - 8);
    (*(v33 + 16))(v19, v32, v31);
    (*(v33 + 56))(v19, 0, 1, v31);
    v34 = sub_B78D0();
    v36 = v35;
    sub_A194(v19, &unk_F17B0, &qword_BE7D0);
    (*(v12 + 104))(v15, enum case for String.ButtonType.cancel(_:), v11);
    v37 = sub_B7960();
    v39 = v38;
    (*(v12 + 8))(v15, v11);
    v40 = v68;
    sub_87D04(v69, v68);
    v41 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v42 = swift_allocObject();
    v43 = sub_87D6C(v40, v42 + v41);
    v77 = v34;
    v78 = v36;
    __chkstk_darwin(v43);
    *(&v61 - 4) = &v77;
    *(&v61 - 3) = v37;
    *(&v61 - 2) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06A0, &unk_C06B0);
    sub_A8CC(&qword_F06A8, &qword_F06A0, &unk_C06B0);
    sub_B7610();

    sub_A8CC(&qword_F0660, &qword_F0668, &qword_C1FD0);
    v44 = v63;
    sub_B7360();
    (*(v62 + 8))(v23, v44);
    v45 = &qword_F0CA0;
    v46 = &unk_C0690;
    sub_A310(v26, v74, &qword_F0CA0, &unk_C0690);
    swift_storeEnumTagMultiPayload();
    sub_4C5E4();
    sub_4C714();
    v47 = v71;
    sub_B6F00();
    v48 = v26;
  }

  else
  {
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v49 = sub_B62F0();
    v50 = __swift_project_value_buffer(v49, qword_FAD48);
    v51 = *(v49 - 8);
    (*(v51 + 16))(v19, v50, v49);
    (*(v51 + 56))(v19, 0, 1, v49);
    v52 = sub_B78D0();
    v54 = v53;
    sub_A194(v19, &unk_F17B0, &qword_BE7D0);
    v77 = v52;
    v78 = v54;
    v55 = v68;
    sub_87D04(v69, v68);
    v56 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v57 = swift_allocObject();
    sub_87D6C(v55, v57 + v56);
    sub_97E8();
    sub_B7640();
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
    v59 = v65;
    v58 = v66;
    sub_B7360();
    (*(v64 + 8))(v4, v58);
    v45 = &qword_F0CB0;
    v46 = &qword_C06A0;
    sub_A310(v59, v74, &qword_F0CB0, &qword_C06A0);
    swift_storeEnumTagMultiPayload();
    sub_4C5E4();
    sub_4C714();
    v47 = v71;
    sub_B6F00();
    v48 = v59;
  }

  sub_A194(v48, v45, v46);
  sub_4C81C(v47, v76);
}

uint64_t sub_86C1C(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 40);
    v3(isCurrentExecutor);
  }
}

uint64_t sub_86CD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_88EC4(&qword_F22A8, type metadata accessor for ItemContactInfoSetupIntroductionViewModel);
  sub_B65C0();

  v4 = v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination;
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination);
  *a2 = v5;
  v6 = *(v4 + 8);
  *(a2 + 8) = v6;
  return sub_88EA8(v5, v6);
}

uint64_t sub_86D94(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  sub_88EA8(v5, v3);
  return sub_8A0AC(&v5);
}

uint64_t *sub_86DDC(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  if (*result)
  {
    v4 = *(a2 + 8);
    if (v4 != 255)
    {
      v5 = *a2;
      v6 = *result;

      result = sub_83AFC(v5, v4);
      *a2 = v3;
      *(a2 + 8) = 0;
    }
  }

  else
  {
    result = sub_881E8(*a2, *(a2 + 8));
    *a2 = 0;
    *(a2 + 8) = -1;
  }

  return result;
}

uint64_t sub_86E54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  sub_C5D8(v4);
  sub_80498(v3, v4, v5, v7);
  sub_882D0();
  sub_B73A0();
  v9[3] = v7[3];
  v9[4] = v7[4];
  v10 = v8;
  v9[0] = v7[0];
  v9[1] = v7[1];
  v9[2] = v7[2];
  sub_806DC(v9);
}

uint64_t sub_86F80@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v12 - v6;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a1 + 24);
  v12[2] = *(a1 + 16);
  v12[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
  sub_B75C0();
  sub_8A244(v7);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v10 = (*(*(v9 - 8) + 48))(v7, 1, v9) != 1;
  sub_A194(v7, &qword_EEE08, &qword_BD530);

  *a2 = v10;
  return result;
}

uint64_t sub_87114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(a4 + 24);
  v7 = *(a4 + 16);
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
  sub_B75C0();
  v7 = 0;
  LOBYTE(v8) = -1;
  sub_8A0AC(&v7);
}

uint64_t sub_871F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v14 - v9;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(a1 + 24);
  v15 = *(a1 + 16);
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
  sub_B75C0();
  sub_8A244(v10);

  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_A194(v10, &qword_EEE08, &qword_BD530);
    v12 = &_swiftEmptyArrayStorage;
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_A194(v10, &qword_EEE08, &qword_BD530);
    v12 = sub_B6930();
    (*(v3 + 8))(v6, v2);
  }

  v15 = v12;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF30, &qword_C1F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  sub_A8CC(&qword_EEF38, &qword_EEF30, &qword_C1F50);
  sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
  sub_B76E0();
}

uint64_t sub_8753C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v23 - v14;
  sub_B7A60();
  v23[0] = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[2] = sub_B68C0();
  v23[3] = v16;
  sub_B68A0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    sub_A194(v11, &qword_EEF48, &unk_C01F0);
    v19 = sub_B6A00();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  }

  else
  {
    sub_B6890();
    (*(v18 + 8))(v11, v17);
  }

  (*(v4 + 16))(v7, a1, v3);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  (*(v4 + 32))(v21 + v20, v7, v3);
  sub_97E8();
  sub_B7630();
}

uint64_t sub_878A8()
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v0 = sub_B68D0();
  v2(v0);
}

uint64_t sub_87970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a1 + 24);
  v26 = *(a1 + 16);
  v27 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
  sub_B75C0();
  sub_8A244(v12);

  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_A194(v12, &qword_EEE08, &qword_BD530);
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_A194(v12, &qword_EEE08, &qword_BD530);
    v14 = sub_B6940();
    v15 = v16;
    (*(v5 + 8))(v8, v4);
  }

  v26 = v14;
  v27 = v15;
  sub_97E8();
  v17 = sub_B7200();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v23;
  return result;
}

uint64_t sub_87C10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
  v5 = sub_B75C0();
  a3(v5);
}

uint64_t sub_87D04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemContactInfoSetupIntroductionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_87D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemContactInfoSetupIntroductionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_87DD0(uint64_t a1)
{
  v3 = *(type metadata accessor for ItemContactInfoSetupIntroductionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_85F8C(a1, v4);
}

unint64_t sub_87E40()
{
  result = qword_F2150;
  if (!qword_F2150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2148, &qword_C31A0);
    sub_87ECC();
    sub_40DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2150);
  }

  return result;
}

unint64_t sub_87ECC()
{
  result = qword_F2158;
  if (!qword_F2158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2160, &qword_C31A8);
    sub_87F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2158);
  }

  return result;
}

unint64_t sub_87F58()
{
  result = qword_F2168;
  if (!qword_F2168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2170, &qword_C31B0);
    sub_87FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2168);
  }

  return result;
}

unint64_t sub_87FE4()
{
  result = qword_F2178;
  if (!qword_F2178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2180, &qword_C31B8);
    sub_8809C();
    sub_A8CC(&qword_F21A8, &qword_F21B0, &unk_C31D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2178);
  }

  return result;
}

unint64_t sub_8809C()
{
  result = qword_F2188;
  if (!qword_F2188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2190, &qword_C31C0);
    sub_A8CC(&qword_F2198, &qword_F21A0, &qword_C31C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2188);
  }

  return result;
}

uint64_t sub_88160(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  sub_88EA8(v5, v3);
  return sub_8A0AC(&v5);
}

uint64_t sub_881A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8))
  {
    result = 0;
  }

  else
  {
    v4 = *a1;
  }

  *a2 = result;
  return result;
}

uint64_t sub_881E8(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_83AFC();
  }

  return result;
}

uint64_t sub_881FC(uint64_t *a1)
{
  v3 = *(type metadata accessor for ItemContactInfoSetupIntroductionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_86E54(a1, v4);
}

unint64_t sub_8827C()
{
  result = qword_F21D0;
  if (!qword_F21D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F21D0);
  }

  return result;
}

unint64_t sub_882D0()
{
  result = qword_F21D8;
  if (!qword_F21D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F21D8);
  }

  return result;
}

uint64_t sub_88328@<X0>(BOOL *a1@<X8>)
{
  v3 = *(type metadata accessor for ItemContactInfoSetupIntroductionView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_86F80(v6, a1);
}

uint64_t objectdestroy_16Tm_0()
{
  v1 = type metadata accessor for ItemContactInfoSetupIntroductionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  if (*(v0 + v3 + 32))
  {
    v9 = *(v6 + 40);
  }

  v10 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_B6A40();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
    v12 = *(v6 + v10);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_884DC(uint64_t a1)
{
  v3 = *(type metadata accessor for ItemContactInfoSetupIntroductionView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_87114(a1, v4, v5, v6);
}

uint64_t sub_8860C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2138, &qword_C3188);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_886AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F21E8, &unk_C4030);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_8877C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F21E8, &unk_C4030);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_8882C()
{
  sub_88938(319, &qword_F2258, type metadata accessor for ItemContactInfoSetupIntroductionViewModel, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_7129C();
    if (v1 <= 0x3F)
    {
      sub_88938(319, &qword_F2260, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_88938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_889A0()
{
  result = qword_F2298;
  if (!qword_F2298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F21E0, &qword_C3248);
    sub_88A2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2298);
  }

  return result;
}

unint64_t sub_88A2C()
{
  result = qword_F22A0;
  if (!qword_F22A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2138, &qword_C3188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2128, &qword_C3178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE70, &qword_BFEF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2120, &qword_C3170);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F21C8, &qword_C3240);
    sub_B6850();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C30, &qword_C04F0);
    sub_88EC4(&qword_F0560, &type metadata accessor for OnboardingWelcomeView);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C38, &qword_C04F8);
    sub_A8CC(&qword_F0C40, &qword_F0C38, &qword_C04F8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_8827C();
    sub_882D0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_9BD4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F22A0);
  }

  return result;
}

uint64_t sub_88CE8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  result = sub_B68C0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_88D28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_88DBC()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8) + 80);

  return sub_878A8();
}

uint64_t sub_88E28(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_97E8();

  return sub_B75A0();
}

uint64_t sub_88EA8(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_83AF8();
  }

  return result;
}

uint64_t sub_88EC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for ItemContactInfoSetupIntroductionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 24);

  if (*(v0 + v3 + 32))
  {
    v8 = *(v5 + 40);
  }

  v9 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_B6A40();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_890CC()
{
  result = qword_F22B0;
  if (!qword_F22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F22B0);
  }

  return result;
}

unint64_t sub_89120()
{
  result = qword_F22C0;
  if (!qword_F22C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F22B8, &qword_C3368);
    sub_890CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F22C0);
  }

  return result;
}

uint64_t sub_891D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ItemProximityProvider();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_89290(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ItemProximityProvider();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies()
{
  result = qword_F2320;
  if (!qword_F2320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_89380()
{
  result = type metadata accessor for ItemProximityProvider();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_89454()
{
  result = qword_F2368;
  if (!qword_F2368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2368);
  }

  return result;
}

unint64_t sub_894AC()
{
  result = qword_F2370;
  if (!qword_F2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2370);
  }

  return result;
}

unint64_t sub_89504()
{
  result = qword_F2378;
  if (!qword_F2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2378);
  }

  return result;
}

uint64_t sub_89584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_895C0()
{
  result = qword_F2380;
  if (!qword_F2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2380);
  }

  return result;
}

unint64_t sub_89614()
{
  result = qword_F2388;
  if (!qword_F2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2388);
  }

  return result;
}

uint64_t sub_89688()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v21 - v3;
  v5 = v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory;
  v6 = *(v5 + *(type metadata accessor for LostAccessory() + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F24A0, &qword_C36D8);
  v7 = *(sub_B6870() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v21[1] = *(v7 + 72);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_BD800;
  v22 = v9;
  v23 = v9 + v8;
  if (v6 == 1)
  {
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v10 = sub_B62F0();
    v11 = __swift_project_value_buffer(v10, qword_FADB0);
    v12 = *(v10 - 8);
    v13 = *(v12 + 16);
    v13(v4, v11, v10);
    v14 = *(v12 + 56);
    v14(v4, 0, 1, v10);
    v21[0] = sub_B78D0();
    sub_2B630(v4);
    v13(v4, v11, v10);
    v14(v4, 0, 1, v10);
    sub_B78D0();
    sub_2B630(v4);
    sub_B6860();
    v13(v4, v11, v10);
    v14(v4, 0, 1, v10);
    sub_B78D0();
    sub_2B630(v4);
    v13(v4, v11, v10);
    v14(v4, 0, 1, v10);
  }

  else
  {
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v15 = sub_B62F0();
    v16 = __swift_project_value_buffer(v15, qword_FADB0);
    v17 = *(v15 - 8);
    v18 = *(v17 + 16);
    v18(v4, v16, v15);
    v19 = *(v17 + 56);
    v19(v4, 0, 1, v15);
    v21[0] = sub_B78D0();
    sub_2B630(v4);
    v18(v4, v16, v15);
    v19(v4, 0, 1, v15);
    sub_B78D0();
    sub_2B630(v4);
    sub_B6860();
    v18(v4, v16, v15);
    v19(v4, 0, 1, v15);
    sub_B78D0();
    sub_2B630(v4);
    v18(v4, v16, v15);
    v19(v4, 0, 1, v15);
  }

  sub_B78D0();
  sub_2B630(v4);
  sub_B6860();
  return v22;
}

uint64_t sub_89CA8()
{
  v1 = v0;
  v2 = type metadata accessor for LostAccessory();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_hasValidItemLocationToContinueSubmission) == 1)
  {
    v37 = 0;
    v38 = -1;
    v6 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 168);
    v25 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies);
    v15 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 8);
    v26 = v15;
    v16 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 24);
    v27 = v16;
    v17 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 40);
    v28 = v17;
    v18 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 56);
    v29 = v18;
    v19 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 72);
    v30 = v19;
    v20 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 88);
    v31 = v20;
    v21 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 104);
    v32 = v21;
    v22 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 120);
    v33 = v22;
    v23 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 136);
    v34 = v23;
    v24 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 152);
    v35 = v24;
    v36 = v6;
    sub_8C09C(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory, v5, type metadata accessor for LostAccessory);
    v7 = type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();

    v25 = sub_827F4(&v37, &v25, v5);
    LOBYTE(v26) = 0;
  }

  else
  {
    v10 = sub_B69A0();
    v11 = sub_B7B60();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_17834(0xD000000000000016, 0x80000000000BB8B0, &v25);
      _os_log_impl(&dword_0, v10, v11, "%s hasValidItemLocationToContinueSubmission==false. Presenting alert...", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
    }

    v25 = 0;
    LOBYTE(v26) = 2;
  }

  return sub_8A0AC(&v25);
}

uint64_t sub_89FEC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_8C424(&qword_F22A8, type metadata accessor for ItemContactInfoSetupIntroductionViewModel);
  sub_B65C0();

  v3 = v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination;
  v4 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination);
  *a1 = v4;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_88EA8(v4, v5);
}

uint64_t sub_8A0AC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination;
  v5 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination);
  v6 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination + 8);
  sub_88EA8(v5, v6);
  v7 = sub_8C46C(v5, v6, v2, v3);
  sub_881E8(v5, v6);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_8C424(&qword_F22A8, type metadata accessor for ItemContactInfoSetupIntroductionViewModel);
    sub_B65B0();
    sub_881E8(v2, v3);
  }

  else
  {
    v10 = *v4;
    *v4 = v2;
    v11 = *(v4 + 8);
    *(v4 + 8) = v3;

    return sub_881E8(v10, v11);
  }
}

uint64_t sub_8A244@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v27 - v9;
  swift_getKeyPath();
  v30 = v1;
  sub_8C424(&qword_F22A8, type metadata accessor for ItemContactInfoSetupIntroductionViewModel);
  sub_B65C0();

  if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination + 8) == 2)
  {
    v28 = v6;
    v29 = a1;
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v11 = sub_B62F0();
    v12 = __swift_project_value_buffer(v11, qword_FAD48);
    v13 = *(v11 - 8);
    v14 = *(v13 + 16);
    v14(v10, v12, v11);
    v15 = *(v13 + 56);
    v15(v10, 0, 1, v11);
    v16 = sub_B78D0();
    v27[2] = v17;
    v27[3] = v16;
    sub_2B630(v10);
    v14(v10, v12, v11);
    v15(v10, 0, 1, v11);
    v18 = sub_B78D0();
    v27[0] = v19;
    v27[1] = v18;
    sub_2B630(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    *(swift_allocObject() + 16) = xmmword_BDA30;
    v14(v10, v12, v11);
    v15(v10, 0, 1, v11);
    sub_B78D0();
    sub_2B630(v10);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
    (*(*(v23 - 8) + 56))(v28, 1, 1, v23);
    v30 = ItemContactInfoSetupIntroductionViewModel.bind();
    v31 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
    sub_B68B0();
    a1 = v29;
    sub_B6910();
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  return (*(*(v25 - 8) + 56))(a1, v24, 1, v25);
}

void sub_8A70C()
{
  if (*(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_8C424(&qword_F22A8, type metadata accessor for ItemContactInfoSetupIntroductionViewModel);
    sub_B65B0();
  }
}

uint64_t sub_8A810()
{
  swift_getKeyPath();
  sub_8C424(&qword_F22A8, type metadata accessor for ItemContactInfoSetupIntroductionViewModel);
  sub_B65C0();

  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask);
}

uint64_t sub_8A8BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_8C424(&qword_F22A8, type metadata accessor for ItemContactInfoSetupIntroductionViewModel);
  sub_B65C0();

  *a2 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask);
}

uint64_t sub_8A970(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask;
  if (!*(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_8C424(&qword_F22A8, type metadata accessor for ItemContactInfoSetupIntroductionViewModel);
    sub_B65B0();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask);

  v5 = sub_B7AD0();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + v3);
LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t ItemContactInfoSetupIntroductionViewModel.__allocating_init(initialDestination:lostAccessory:dependencies:hasValidItemLocationToContinueSubmission:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  v12 = swift_allocObject();
  v13 = *a1;
  *(v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask) = 0;
  LOBYTE(a1) = *(a1 + 8);
  sub_B69B0();
  v14 = v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination;
  *v14 = 0;
  *(v14 + 8) = -1;
  sub_B65F0();
  sub_881E8(*v14, *(v14 + 8));
  *v14 = v13;
  *(v14 + 8) = a1;
  sub_8AD8C(a2, v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_8AD8C(a3, v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies, type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies);
  *(v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_hasValidItemLocationToContinueSubmission) = a4;
  return v12;
}

uint64_t ItemContactInfoSetupIntroductionViewModel.init(initialDestination:lostAccessory:dependencies:hasValidItemLocationToContinueSubmission:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *a1;
  *(v4 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask) = 0;
  v9 = *(a1 + 8);
  sub_B69B0();
  v10 = v4 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination;
  *v10 = 0;
  *(v10 + 8) = -1;
  sub_B65F0();
  sub_881E8(*v10, *(v10 + 8));
  *v10 = v8;
  *(v10 + 8) = v9;
  sub_8AD8C(a2, v4 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_8AD8C(a3, v4 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies, type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies);
  *(v4 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_hasValidItemLocationToContinueSubmission) = a4;
  return v4;
}

uint64_t sub_8AD8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_8ADF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v59 = &v46 - v3;
  v4 = type metadata accessor for ItemProximityProvider();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  v58 = *(v8 - 8);
  v56 = *(v58 + 64);
  v9 = __chkstk_darwin(v8);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v46 - v11;
  v13 = type metadata accessor for LostAccessory();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_B65A0();
  v47 = v17;
  v57 = *(v17 - 8);
  v18 = v57;
  v19 = *(v57 + 64);
  v20 = __chkstk_darwin(v17);
  v52 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v46 - v21;
  sub_8C09C(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory, v16, type metadata accessor for LostAccessory);
  v23 = *(v18 + 32);
  v53 = v18 + 32;
  v54 = v23;
  v48 = v22;
  v23(v22, v16, v17);
  v24 = v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies;
  v50 = v0;
  v25 = type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies();
  sub_8C09C(v24 + *(v25 + 36), v7, type metadata accessor for ItemProximityProvider);
  v26 = v58;
  v51 = *(v58 + 32);
  v49 = v12;
  v27 = v7;
  v28 = v8;
  v46 = v8;
  v51(v12, v27, v8);
  v29 = sub_B7A80();
  (*(*(v29 - 8) + 56))(v59, 1, 1, v29);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = v26;
  v32 = v55;
  (*(v26 + 16))(v55, v12, v28);
  v33 = v57;
  v34 = v52;
  v35 = v22;
  v36 = v47;
  (*(v57 + 16))(v52, v35, v47);
  sub_B7A60();

  v37 = sub_B7A50();
  v38 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v39 = (v56 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (*(v33 + 80) + v39 + 8) & ~*(v33 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v37;
  *(v41 + 24) = &protocol witness table for MainActor;
  v42 = v32;
  v43 = v46;
  v51((v41 + v38), v42, v46);
  *(v41 + v39) = v30;
  v54(v41 + v40, v34, v36);

  v44 = sub_30A3C(0, 0, v59, &unk_C3698, v41);
  sub_8A970(v44);
  (*(v58 + 8))(v49, v43);
  return (*(v57 + 8))(v48, v36);
}

uint64_t sub_8B300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_B65A0();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0E70, &qword_C0800);
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = sub_B7A60();
  v6[16] = sub_B7A50();
  v14 = sub_B7A00();
  v6[17] = v14;
  v6[18] = v13;

  return _swift_task_switch(sub_8B464, v14, v13);
}

uint64_t sub_8B464()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  sub_B7A90();
  swift_beginAccess();
  v4 = v0[15];
  v5 = sub_B7A50();
  v0[19] = v5;
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_8B560;
  v8 = v0[14];
  v9 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v0 + 21, v5, &protocol witness table for MainActor, v9);
}

uint64_t sub_8B560()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return _swift_task_switch(sub_8B6A4, v5, v4);
}

uint64_t sub_8B6A4()
{
  v1 = *(v0 + 168);
  if (v1 != 3)
  {
    v2 = *(v0 + 56);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
      v5 = sub_B69A0();
      v6 = sub_B7B20();
      v7 = os_log_type_enabled(v5, v6);
      v9 = *(v0 + 80);
      v8 = *(v0 + 88);
      v10 = *(v0 + 72);
      if (v7)
      {
        v32 = v6;
        log = v5;
        v11 = swift_slowAlloc();
        *(v0 + 40) = swift_slowAlloc();
        *v11 = 141558531;
        *(v11 + 4) = 1752392040;
        *(v11 + 12) = 2081;
        sub_8C424(&qword_F0A28, &type metadata accessor for UUID);
        v12 = sub_B7DA0();
        v14 = v13;
        (*(v9 + 8))(v8, v10);
        v15 = sub_17834(v12, v14, (v0 + 40));

        *(v11 + 14) = v15;
        *(v11 + 22) = 2082;
        v16 = 0xE300000000000000;
        v17 = 7496038;
        if (v1 != 1)
        {
          v17 = 0x54426E6968746977;
          v16 = 0xED000065676E6152;
        }

        if (v1)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0x6E776F6E6B6E75;
        }

        if (v1)
        {
          v19 = v16;
        }

        else
        {
          v19 = 0xE700000000000000;
        }

        v20 = sub_17834(v18, v19, (v0 + 40));

        *(v11 + 24) = v20;
        _os_log_impl(&dword_0, log, v32, "%{private,mask.hash}s proximity: %{public}s", v11, 0x20u);
        swift_arrayDestroy();

        if (!v1)
        {
          goto LABEL_19;
        }
      }

      else
      {

        (*(v9 + 8))(v8, v10);
        if (!v1)
        {
          goto LABEL_19;
        }
      }

      if (v1 == 1)
      {
        v21 = 1;
LABEL_20:

        *(v4 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_hasValidItemLocationToContinueSubmission) = v21 & 1;

        v26 = *(v0 + 120);
        v27 = sub_B7A50();
        *(v0 + 152) = v27;
        v28 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
        v29 = swift_task_alloc();
        *(v0 + 160) = v29;
        *v29 = v0;
        v29[1] = sub_8B560;
        v30 = *(v0 + 112);
        v31 = *(v0 + 96);

        return AsyncStream.Iterator.next(isolation:)(v0 + 168, v27, &protocol witness table for MainActor, v31);
      }

LABEL_19:
      v21 = sub_B7DD0();
      goto LABEL_20;
    }
  }

  v22 = *(v0 + 128);
  v23 = *(v0 + 88);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t ItemContactInfoSetupIntroductionViewModel.deinit()
{
  sub_8BBE8(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_8BBE8(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies, type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies);
  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask);

  v2 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_logger;
  v3 = sub_B69C0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_881E8(*(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination), *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination + 8));
  v4 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel___observationRegistrar;
  v5 = sub_B6600();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_8BBE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ItemContactInfoSetupIntroductionViewModel.__deallocating_deinit()
{
  sub_8BBE8(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_8BBE8(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies, type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies);
  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask);

  v2 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_logger;
  v3 = sub_B69C0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_881E8(*(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination), *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination + 8));
  v4 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel___observationRegistrar;
  v5 = sub_B6600();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_8BD94(uint64_t a1)
{
  result = sub_8C424(&qword_F23B0, type metadata accessor for ItemContactInfoSetupIntroductionViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ItemContactInfoSetupIntroductionViewModel()
{
  result = qword_F23E8;
  if (!qword_F23E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8BE88()
{
  result = type metadata accessor for LostAccessory();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = sub_B69C0();
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = sub_B6600();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_8C014(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_8A970(v4);
}

uint64_t sub_8C058()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask);
  *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask) = *(v0 + 24);
}

uint64_t sub_8C09C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_8C104()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_8C13C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_B65A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_8C2AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_B65A0() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_F248;

  return sub_8B300(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_8C424(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_8C46C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2 == -1)
  {
    if (a4 == -1)
    {
      sub_88EA8(a1, 255);
      sub_88EA8(a3, 255);
      sub_881E8(a1, 255);
      v9 = 0;
      return v9 & 1;
    }

    goto LABEL_5;
  }

  if (a4 == -1)
  {
LABEL_5:
    sub_88EA8(a1, a2);
    sub_88EA8(a3, a4);
    sub_881E8(a1, a2);
    sub_881E8(a3, a4);
    v9 = 1;
    return v9 & 1;
  }

  sub_88EA8(a1, a2);
  sub_88EA8(a3, a4);
  v8 = sub_80C50(a1, a2, a3, a4);
  sub_881E8(a3, a4);
  sub_881E8(a1, a2);
  v9 = !v8;
  return v9 & 1;
}

uint64_t sub_8C578()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination;
  v3 = *v2;
  v4 = *(v0 + 32);
  *v2 = v1;
  v5 = *(v2 + 8);
  *(v2 + 8) = v4;
  sub_88EA8(v1, v4);
  return sub_881E8(v3, v5);
}

uint64_t DetailsSectionFooterView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = *v1;
  v25 = v1[1];
  sub_97E8();

  v3 = sub_B7200();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  v11 = sub_B70A0();
  sub_B6A10();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v7 & 1;
  v21 = sub_B7110();
  v22 = swift_getKeyPath();
  result = sub_B74C0();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v20;
  *(a1 + 24) = v9;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = v11;
  *(a1 + 56) = v13;
  *(a1 + 64) = v15;
  *(a1 + 72) = v17;
  *(a1 + 80) = v19;
  *(a1 + 88) = 0;
  *(a1 + 96) = v22;
  *(a1 + 104) = v21;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_8C708@<X0>(_BYTE *a1@<X8>)
{
  result = sub_B6D40();
  *a1 = result;
  return result;
}

uint64_t sub_8C734@<X0>(_BYTE *a1@<X8>)
{
  result = sub_B6D40();
  *a1 = result;
  return result;
}

uint64_t sub_8C7B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B6D60();
  *a1 = result;
  return result;
}

uint64_t sub_8C7DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B6D60();
  *a1 = result;
  return result;
}

uint64_t sub_8C808(uint64_t *a1)
{
  v1 = *a1;

  return sub_B6D70();
}

uint64_t sub_8C834(uint64_t *a1)
{
  v1 = *a1;

  return sub_B6D70();
}

unint64_t sub_8C890()
{
  result = qword_F24A8;
  if (!qword_F24A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F24B0, &qword_C37E0);
    sub_8C948();
    sub_A8CC(&qword_F24E8, &qword_F24F0, &unk_C3800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F24A8);
  }

  return result;
}

unint64_t sub_8C948()
{
  result = qword_F24B8;
  if (!qword_F24B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F24C0, &qword_C37E8);
    sub_8CA00();
    sub_A8CC(&qword_EF620, &qword_EF550, &qword_BE150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F24B8);
  }

  return result;
}

unint64_t sub_8CA00()
{
  result = qword_F24C8;
  if (!qword_F24C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F24D0, &qword_C37F0);
    sub_8CA8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F24C8);
  }

  return result;
}

unint64_t sub_8CA8C()
{
  result = qword_F24D8;
  if (!qword_F24D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F24E0, &qword_C37F8);
    sub_A8CC(&qword_EEFD8, &qword_EEFE0, &qword_BD750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F24D8);
  }

  return result;
}

uint64_t DetailsSectionHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_B6E30();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F24F8, &qword_C3810);
  sub_8CCB8(v1, a1 + *(v3 + 44));
  v4 = sub_B70A0();
  v5 = &v1[*(type metadata accessor for DetailsSectionHeaderView(0) + 24)];
  v6 = type metadata accessor for DetailsSectionHeaderView.Style(0);
  v7 = *&v5[v6[5]];
  sub_B6A10();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2500, &qword_C3818) + 36);
  *v16 = v4;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = sub_B70C0();
  v18 = *&v5[v6[6]];
  sub_B6A10();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2508, &qword_C3820) + 36);
  *v27 = v17;
  *(v27 + 8) = v20;
  *(v27 + 16) = v22;
  *(v27 + 24) = v24;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  v28 = sub_B70D0();
  v29 = *&v5[v6[7]];
  sub_B6A10();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2510, &qword_C3828);
  v39 = a1 + *(result + 36);
  *v39 = v28;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_8CCB8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2678, &qword_C38C8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_B6EB0();
  v12 = &a1[*(type metadata accessor for DetailsSectionHeaderView(0) + 24)];
  v13 = *&v12[*(type metadata accessor for DetailsSectionHeaderView.Style(0) + 32)];
  *v10 = v11;
  *(v10 + 1) = v13;
  v10[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2680, &qword_C38D0);
  sub_8CEF4(a1, &v10[*(v14 + 44)]);
  sub_A310(v10, v8, &qword_F2678, &qword_C38C8);
  sub_A310(v8, a2, &qword_F2678, &qword_C38C8);
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2688, &qword_C38D8) + 48);
  *v15 = 0;
  *(v15 + 8) = 0;
  sub_A194(v10, &qword_F2678, &qword_C38C8);
  sub_A194(v8, &qword_F2678, &qword_C38C8);
}

uint64_t sub_8CEF4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2690, &qword_C38E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = &v44 - v7;
  v8 = sub_B66C0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2698, &qword_C38E8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F26A0, &qword_C38F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v45 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v44 - v18;
  sub_B7A60();
  v44 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = type metadata accessor for DetailsSectionHeaderView(0);
  v21 = *(v20 + 20);
  v22 = sub_B63C0();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v13, &a1[v21], v22);
  (*(v23 + 56))(v13, 0, 1, v22);
  sub_B7130();
  sub_B66B0();
  sub_B66A0();
  v24 = &a1[*(v20 + 24)];
  v25 = type metadata accessor for DetailsSectionHeaderView.Style(0);
  v26 = &v19[*(v14 + 36)];
  *v26 = *&v24[*(v25 + 36)];
  *(v26 + 1) = 0;
  v27 = *(a1 + 1);
  v49 = *a1;
  v50 = v27;
  sub_97E8();

  v28 = sub_B7200();
  v30 = v29;
  LOBYTE(v22) = v31;
  sub_B7160();
  v32 = sub_B71E0();
  v34 = v33;
  LOBYTE(v23) = v35;
  v37 = v36;

  sub_9C84(v28, v30, v22 & 1);

  v49 = v32;
  v50 = v34;
  v51 = v23 & 1;
  v52 = v37;
  v38 = v46;
  sub_B7360();
  sub_9C84(v32, v34, v23 & 1);

  v39 = v45;
  sub_A310(v19, v45, &qword_F26A0, &qword_C38F0);
  v40 = v48;
  sub_A310(v38, v48, &qword_F2690, &qword_C38E0);
  v41 = v47;
  sub_A310(v39, v47, &qword_F26A0, &qword_C38F0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F26A8, &unk_C38F8);
  sub_A310(v40, v41 + *(v42 + 48), &qword_F2690, &qword_C38E0);
  sub_A194(v38, &qword_F2690, &qword_C38E0);
  sub_A194(v19, &qword_F26A0, &qword_C38F0);
  sub_A194(v40, &qword_F2690, &qword_C38E0);
  sub_A194(v39, &qword_F26A0, &qword_C38F0);
}