void sub_1CD0()
{
  v1 = v0;
  v2 = *(*(sub_1E1E8() - 8) + 64);
  __chkstk_darwin();
  v3 = sub_1E148();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_1E958() - 8) + 64);
  __chkstk_darwin();
  v9 = *(*(sub_1E158() - 8) + 64);
  __chkstk_darwin();
  v10 = type metadata accessor for AppInstallationSettingsController();
  v49.receiver = v0;
  v49.super_class = v10;
  objc_msgSendSuper2(&v49, "viewDidLoad");
  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v11 = sub_286C(v3, qword_2D318);
  (*(v4 + 16))(v7, v11, v3);
  sub_1E1D8();
  sub_1E178();
  sub_1E988();
  v12 = sub_1E968();

  [v0 setTitle:v12];

  v47[1] = sub_3BD4;
  v47[2] = 0;
  v48 = 0;
  v13 = objc_allocWithZone(sub_27F0(&qword_2CA30, &qword_1F378));
  v14 = sub_1E5E8();
  [v1 addChildViewController:v14];
  [v14 willMoveToParentViewController:v1];
  v15 = [v1 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v15;
  v17 = [v14 view];
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v17;
  [v16 addSubview:v17];

  [v14 didMoveToParentViewController:v1];
  v19 = [v14 view];

  if (!v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_27F0(&qword_2CA38, &unk_1F380);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1F300;
  v21 = [v14 view];

  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = [v21 topAnchor];

  v23 = [v1 view];
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  v25 = [v23 topAnchor];

  v26 = [v22 constraintEqualToAnchor:v25];
  *(v20 + 32) = v26;
  v27 = [v14 view];

  if (!v27)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = [v27 bottomAnchor];

  v29 = [v1 view];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v29;
  v31 = [v29 bottomAnchor];

  v32 = [v28 constraintEqualToAnchor:v31];
  *(v20 + 40) = v32;
  v33 = [v14 view];

  if (!v33)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v34 = [v33 leadingAnchor];

  v35 = [v1 view];
  if (!v35)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v36 = v35;
  v37 = [v35 leadingAnchor];

  v38 = [v34 constraintEqualToAnchor:v37];
  *(v20 + 48) = v38;
  v39 = [v14 view];

  if (!v39)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v40 = [v39 trailingAnchor];

  v41 = [v1 view];
  if (v41)
  {
    v42 = v41;
    v43 = objc_opt_self();
    v44 = [v42 trailingAnchor];

    v45 = [v40 constraintEqualToAnchor:v44];
    *(v20 + 56) = v45;
    sub_28A4();
    isa = sub_1E9C8().super.isa;

    [v43 activateConstraints:isa];

    return;
  }

LABEL_25:
  __break(1u);
}

id sub_2458()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppInstallationSettingsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_248C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_1DC40(2, 26, 0, 0))
  {
    sub_1E618();

    return sub_1E4A8();
  }

  else
  {
    sub_1E4D8();
    swift_getWitnessTable();
    sub_1E608();
    sub_1E4A8();
    sub_1EAB8();
    swift_getWitnessTable();
    sub_1E4D8();
    swift_getWitnessTable();
    sub_1E608();
    return sub_1E4A8();
  }
}

uint64_t sub_25F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_1DC40(2, 26, 0, 0))
  {
    sub_1E618();
    sub_1E4A8();
  }

  else
  {
    sub_1E4D8();
    swift_getWitnessTable();
    sub_1E608();
    sub_1E4A8();
    sub_1EAB8();
    swift_getWitnessTable();
    sub_1E4D8();
    swift_getWitnessTable();
    sub_1E608();
    sub_1E4A8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_27F0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2838(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_286C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_28A4()
{
  result = qword_2CA40;
  if (!qword_2CA40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2CA40);
  }

  return result;
}

void sub_28F0()
{
  v0 = sub_1E968();
  v1 = sub_1E968();
  v2 = [objc_opt_self() bagForProfile:v0 profileVersion:v1];

  qword_2CA48 = v2;
}

unint64_t sub_29B8()
{
  result = qword_2CAF8;
  if (!qword_2CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CAF8);
  }

  return result;
}

uint64_t sub_2A28()
{
  v0 = *(*(sub_1E1E8() - 8) + 64);
  __chkstk_darwin();
  v1 = sub_1E148();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_1E958() - 8) + 64);
  __chkstk_darwin();
  v7 = *(*(sub_1E158() - 8) + 64);
  __chkstk_darwin();
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15[1] = sub_3BD4;
  v15[2] = 0;
  v16 = 0;
  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v8 = sub_286C(v1, qword_2D318);
  (*(v2 + 16))(v5, v8, v1);
  sub_1E1D8();
  sub_1E178();
  v9 = sub_1E688();
  v11 = v10;
  v13 = v12;
  sub_2DE8();
  sub_1E718();
  sub_2E3C(v9, v11, v13 & 1);
}

uint64_t sub_2D4C()
{
  sub_27F0(&qword_2CB00, &qword_1F468);
  sub_2DE8();
  swift_getOpaqueTypeConformance2();
  return sub_1E8E8();
}

unint64_t sub_2DE8()
{
  result = qword_2CB08;
  if (!qword_2CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CB08);
  }

  return result;
}

uint64_t sub_2E3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2E60()
{
  result = qword_2CB10;
  if (!qword_2CB10)
  {
    sub_2EC4(&qword_2CB18, &qword_1F470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CB10);
  }

  return result;
}

uint64_t sub_2EC4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2F0C()
{
  v0 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v19 - v2;
  if (byte_2CA58 != 1)
  {
    v9 = qword_2CA50;
LABEL_15:
    v10 = [objc_opt_self() stringFromByteCount:v9 countStyle:2];
    goto LABEL_16;
  }

  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = sub_1E968();
  v6 = [v4 initWithSuiteName:v5];

  if (v6)
  {
    v7 = sub_1E968();
    v8 = [v6 objectForKey:v7];

    if (v8)
    {
      sub_1EAC8();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23[0] = v21;
    v23[1] = v22;
    if (*(&v22 + 1))
    {
      if (swift_dynamicCast())
      {
        v9 = v20;
        if (v20 > 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_BCF4(v23, &qword_2CCE8, &qword_1FA60);
    }

    v9 = 200000000;
LABEL_14:
    qword_2CA50 = v9;
    byte_2CA58 = 0;
    v11 = sub_1EA68();
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1EA48();
    v13 = v6;

    v14 = sub_1EA38();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v13;
    v15[5] = v12;

    sub_F71C(0, 0, v3, &unk_1FA70, v15);

    goto LABEL_15;
  }

  v10 = [objc_opt_self() stringFromByteCount:200000000 countStyle:2];
LABEL_16:
  v16 = v10;
  v17 = sub_1E978();

  return v17;
}

uint64_t sub_322C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v6 = *(*(sub_27F0(&qword_2CBF8, &qword_1FED0) - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v7 = sub_1E388();
  v5[29] = v7;
  v8 = *(v7 - 8);
  v5[30] = v8;
  v9 = *(v8 + 64) + 15;
  v5[31] = swift_task_alloc();
  v10 = sub_27F0(&qword_2CCF0, &qword_1FA78);
  v5[32] = v10;
  v11 = *(v10 - 8);
  v5[33] = v11;
  v12 = *(v11 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = sub_1EA48();
  v5[36] = sub_1EA38();
  v14 = sub_1E9F8();
  v5[37] = v14;
  v5[38] = v13;

  return _swift_task_switch(sub_33C4, v14, v13);
}

uint64_t sub_33C4()
{
  v1 = objc_opt_self();
  v2 = sub_1E968();
  if (qword_2C9E8 != -1)
  {
    swift_once();
  }

  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v6 = [v1 networkConstraintsForMediaType:v2 withBag:{qword_2CA48, v0 + 10}];
  v0[39] = v6;

  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_3618;
  swift_continuation_init();
  v0[17] = v5;
  v7 = sub_B0E4(v0 + 14);
  sub_B76C(0, &qword_2CCF8, AMSNetworkConstraints_ptr);
  sub_27F0(&qword_2CC10, &unk_1F910);
  sub_1EA08();
  (*(v4 + 32))(v7, v3, v5);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_3BC0;
  v0[13] = &unk_29498;
  [v6 resultWithCompletion:?];
  (*(v4 + 8))(v7, v5);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_3618()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 320) = v3;
  v4 = *(v1 + 304);
  v5 = *(v1 + 296);
  if (v3)
  {
    v6 = sub_3990;
  }

  else
  {
    v6 = sub_3748;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_3748()
{
  v1 = v0[39];
  v2 = v0[36];

  v3 = v0[24];

  v4 = [v3 sizeLimitForNetworkType:AMSNetworkTypeCellular];
  v5 = v4;
  if ((byte_2CA58 & 1) != 0 || v4 != qword_2CA50)
  {
    v8 = v0[26];
    isa = sub_1EB68().super.super.isa;
    v10 = sub_1E968();
    [v8 setObject:isa forKey:v10];

    v6 = byte_2CA58;
    v7 = qword_2CA50;
  }

  else
  {
    v6 = 0;
    v7 = v4;
  }

  v11 = 200000000;
  if (v5 > 0)
  {
    v11 = v5;
  }

  if (((v6 & 1) != 0 || v11 != v7) && (v12 = v0[27], qword_2CA50 = v11, byte_2CA58 = 0, swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v14 = Strong;
    v15 = v0[35];
    v16 = v0[28];
    v17 = sub_1EA68();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    v18 = v14;
    v19 = sub_1EA38();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v18;
    sub_F71C(0, 0, v16, &unk_1FA80, v20);
  }

  else
  {
  }

  v21 = v0[34];
  v22 = v0[31];
  v23 = v0[28];

  v24 = v0[1];

  return v24();
}

uint64_t sub_3990()
{
  v29 = v0;
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[36];
  v4 = v0[31];

  swift_willThrow();

  sub_1E378();
  swift_errorRetain();
  v5 = sub_1E368();
  v6 = sub_1EA78();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[40];
    v8 = v0[30];
    v27 = v0[31];
    v9 = v0[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[18];
    v12 = v0[19];
    v14 = v0[20];
    v15 = sub_1EB58();
    v17 = sub_A864(v15, v16, &v28);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_0, v5, v6, "Error when fetching network constraints: %s", v10, 0xCu);
    sub_B1BC(v11);

    (*(v8 + 8))(v27, v9);
  }

  else
  {
    v18 = v0[40];
    v20 = v0[30];
    v19 = v0[31];
    v21 = v0[29];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[34];
  v23 = v0[31];
  v24 = v0[28];

  v25 = v0[1];

  return v25();
}

id sub_3BD4()
{
  v0 = objc_allocWithZone(type metadata accessor for AppInstallationSettingsViewModel());

  return [v0 init];
}

__n128 sub_3C18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_3C2C(uint64_t a1, unsigned int a2)
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

uint64_t sub_3C74(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_3CE4@<X0>(uint64_t a1@<X8>)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppInstallationSettingsViewModel();
  sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel);
  v17 = sub_1E528();
  v3 = v2;
  v4 = sub_1E528();
  v6 = v5;
  v7 = sub_1E528();
  v9 = v8;
  v10 = sub_1E528();
  v12 = v11;
  v13 = sub_1E528();
  v15 = v14;
  sub_1E798();
  *a1 = v17;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = v15;
  *(a1 + 80) = v18;
  *(a1 + 88) = v19;
}

uint64_t sub_3E98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_27F0(&qword_2CB20, &qword_1F570);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = v15 - v6;
  v8 = *v1;
  v15[0] = v1[1];
  v15[1] = v8;
  v9 = *(v1 + 16);
  *a1 = sub_1E5C8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(sub_27F0(&qword_2CB28, &qword_1F578) + 44);
  sub_27F0(&qword_2CB30, &qword_1F580);
  sub_BC44(&qword_2CB38, &qword_2CB30, &qword_1F580);
  sub_1E658();
  sub_BC44(&qword_2CB40, &qword_2CB20, &qword_1F570);
  sub_1E6A8();
  (*(v4 + 8))(v7, v3);

  type metadata accessor for AppInstallationSettingsViewModel();
  sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel);
  v11 = sub_1E438();
  v12 = sub_1E398();
  result = sub_27F0(&qword_2CB50, &qword_1F588);
  v14 = (a1 + *(result + 36));
  *v14 = v12;
  v14[1] = v11;
  return result;
}

__n128 sub_4150(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_415C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_41B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_421C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_4260(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_42BC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_4320()
{
  result = qword_2CB58;
  if (!qword_2CB58)
  {
    sub_2EC4(&qword_2CB50, &qword_1F588);
    sub_BC44(&qword_2CB60, &qword_2CB68, &qword_1F680);
    sub_BC44(&qword_2CB70, &qword_2CB78, qword_1F688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CB58);
  }

  return result;
}

uint64_t sub_4420@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = sub_1E158();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27F0(&qword_2CD48, &qword_1FAE0);
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  __chkstk_darwin(v9);
  v12 = &v38 - v11;
  v42 = a1;
  v43 = a2;
  v38 = a2;
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B294(v8);
  v48 = sub_1E988();
  v49 = v13;
  sub_AE7C();
  v14 = sub_1E698();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v48 = v14;
  v49 = v16;
  v50 = v18 & 1;
  v51 = v20;
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = a1;
    sub_1E3C8();

    if (v44)
    {
      sub_1B5BC(v8);
      v44 = sub_1E988();
      v45 = v22;
      v23 = sub_1E698();
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v30 = v27 & 1;
    }

    else
    {

      v23 = 0;
      v25 = 0;
      v30 = 0;
      v29 = 0;
    }

    v44 = v23;
    v45 = v25;
    v46 = v30;
    v47 = v29;
    sub_27F0(&qword_2CD50, &qword_1FB30);
    sub_27F0(&qword_2CD58, &qword_1FB38);
    sub_BC44(&qword_2CD60, &qword_2CD50, &qword_1FB30);
    sub_BAF0();
    sub_1E868();
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = v21;
    sub_1E3C8();

    v32 = v48;
    KeyPath = swift_getKeyPath();
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    v35 = v41;
    (*(v39 + 32))(v41, v12, v40);
    result = sub_27F0(&qword_2CD70, &qword_1FB40);
    v37 = (v35 + *(result + 36));
    *v37 = KeyPath;
    v37[1] = sub_C344;
    v37[2] = v34;
  }

  else
  {
    type metadata accessor for AppInstallationSettingsViewModel();
    sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel);
    result = sub_1E508();
    __break(1u);
  }

  return result;
}

uint64_t sub_48D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v50 = sub_27F0(&qword_2CD78, &qword_1FB48);
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v50);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v41 - v11;
  __chkstk_darwin(v10);
  v14 = v41 - v13;
  v15 = sub_27F0(&qword_2CD80, &qword_1FB50);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v41 - v20;
  sub_1EA48();
  v44 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = [objc_opt_self() sharedConnection];
  v47 = v9;
  v48 = a3;
  v45 = v19;
  v46 = v12;
  if (!v22)
  {
    goto LABEL_11;
  }

  v23 = v22;
  if (![v22 isAppInstallationAllowed] || !objc_msgSend(v23, "isAutomaticAppUpdatesAllowed"))
  {

    goto LABEL_11;
  }

  v24 = [v23 isAutomaticAppDownloadsAllowed];

  if (!v24)
  {
LABEL_11:
    (*(v5 + 56))(v21, 1, 1, v50);
    v26 = v49;
LABEL_12:
    type metadata accessor for AppInstallationSettingsViewModel();
    sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel);
    v27 = sub_1E4F8();
    swift_getKeyPath();
    sub_1E518();

    __chkstk_darwin(v28);
    *&v41[-4] = a1;
    *&v41[-2] = v26;
    sub_27F0(&qword_2CD88, &qword_1FB80);
    sub_BC44(&qword_2CD90, &qword_2CD88, &qword_1FB80);
    v29 = v46;
    sub_1E828();
    v30 = v45;
    sub_BC8C(v21, v45, &qword_2CD80, &qword_1FB50);
    v31 = *(v5 + 16);
    v32 = v47;
    v33 = v50;
    v31(v47, v29, v50);
    v34 = v48;
    sub_BC8C(v30, v48, &qword_2CD80, &qword_1FB50);
    v35 = sub_27F0(&qword_2CD98, &qword_1FB88);
    v31((v34 + *(v35 + 48)), v32, v33);
    v36 = *(v5 + 8);
    v36(v29, v33);
    sub_BCF4(v21, &qword_2CD80, &qword_1FB50);
    v36(v32, v33);
    sub_BCF4(v30, &qword_2CD80, &qword_1FB50);
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v43 = a1;
    sub_1E3C8();

    if (v52)
    {
      v51 = 0;
      v25 = sub_1E838();
    }

    else
    {
      type metadata accessor for AppInstallationSettingsViewModel();
      sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel);
      v38 = sub_1E4F8();
      swift_getKeyPath();
      sub_1E518();
    }

    v42 = v53;
    v43 = v52;
    v41[1] = v54;
    __chkstk_darwin(v25);
    v39 = v49;
    *&v41[-4] = a1;
    *&v41[-2] = v39;
    sub_27F0(&qword_2CD88, &qword_1FB80);
    sub_BC44(&qword_2CD90, &qword_2CD88, &qword_1FB80);
    sub_1E828();
    v40 = v50;
    (*(v5 + 32))(v21, v14, v50);
    (*(v5 + 56))(v21, 0, 1, v40);
    v26 = v39;
    goto LABEL_12;
  }

  type metadata accessor for AppInstallationSettingsViewModel();
  sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel);
  result = sub_1E508();
  __break(1u);
  return result;
}

uint64_t sub_4FE4@<X0>(uint64_t a1@<X8>)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = sub_1E5D8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(sub_27F0(&qword_2CDA0, &qword_1FBB8) + 44);
  __chkstk_darwin();
  sub_27F0(&qword_2CDA8, &qword_1FBC0);
  sub_BC44(&qword_2CDB0, &qword_2CDA8, &qword_1FBC0);
  sub_1E418();
}

uint64_t sub_51A0@<X0>(void *a1@<X0>, void (*a2)(uint64_t)@<X3>, void (*a3)(uint64_t)@<X4>, void *a4@<X8>)
{
  v55 = a3;
  v58 = a4;
  v6 = *(*(sub_1E158() - 8) + 64);
  __chkstk_darwin();
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EA48();
  v59 = sub_1EA38();
  sub_1E9F8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
  v99 = sub_1E988();
  v100 = v10;
  v11 = sub_AE7C();
  v12 = sub_1E698();
  if (a1)
  {
    v15 = v12;
    v16 = v13;
    v17 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    v54 = a1;
    sub_1E3C8();

    v53[0] = v8;
    v53[1] = v11;
    if (v99)
    {
      sub_1E768();
      v18 = sub_1E778();
    }

    else
    {
      v19 = [objc_opt_self() labelColor];
      v18 = sub_1E748();
    }

    v99 = v18;
    v20 = sub_1E668();
    v22 = v21;
    v24 = v23;
    sub_2E3C(v15, v16, v17 & 1);

    sub_1E638();
    v56 = sub_1E678();
    v57 = v25;
    v61 = v26;
    v28 = v27;

    sub_2E3C(v20, v22, v24 & 1);

    sub_1E898();
    v29 = sub_1E4E8();
    v60 = v28 & 1;
    v121 = v28 & 1;
    v55(v29);
    v99 = sub_1E988();
    v100 = v30;
    v31 = sub_1E698();
    v33 = v32;
    v35 = v34;
    swift_getKeyPath();
    swift_getKeyPath();
    v36 = v54;
    sub_1E3C8();

    if (v99 == 1)
    {
      sub_1E768();
      v37 = sub_1E778();
    }

    else
    {
      v37 = sub_1E788();
    }

    v99 = v37;
    v38 = sub_1E668();
    v40 = v39;
    v42 = v41;
    sub_2E3C(v31, v33, v35 & 1);

    sub_1E648();
    v43 = sub_1E678();
    v45 = v44;
    v47 = v46;
    v49 = v48;

    sub_2E3C(v38, v40, v42 & 1);

    sub_1E898();
    sub_1E4E8();
    LOBYTE(v38) = v47 & 1;
    v112 = v47 & 1;
    v51 = v56;
    v50 = v57;
    *&v70 = v56;
    *(&v70 + 1) = v61;
    LOBYTE(v71) = v60;
    *(&v71 + 1) = *v120;
    DWORD1(v71) = *&v120[3];
    *(&v71 + 1) = v57;
    v76 = v117;
    v77 = v118;
    v78 = v119;
    v72 = v113;
    v73 = v114;
    v74 = v115;
    v75 = v116;
    v62[6] = v117;
    v62[7] = v118;
    v62[2] = v113;
    v62[3] = v114;
    v62[4] = v115;
    v62[5] = v116;
    v62[0] = v70;
    v62[1] = v71;
    *&v79 = v43;
    *(&v79 + 1) = v45;
    LOBYTE(v80) = v38;
    *(&v80 + 1) = *v111;
    DWORD1(v80) = *&v111[3];
    *(&v80 + 1) = v49;
    v85 = v67;
    v86 = v68;
    v87 = v69;
    v81 = v63;
    v82 = v64;
    v83 = v65;
    v84 = v66;
    v62[12] = v64;
    v62[13] = v65;
    v62[10] = v80;
    v62[11] = v63;
    v62[14] = v66;
    v62[15] = v67;
    v62[16] = v68;
    v62[17] = v69;
    v62[8] = v119;
    v62[9] = v79;
    memcpy(v58, v62, 0x120uLL);
    v88[0] = v43;
    v88[1] = v45;
    v89 = v38;
    *v90 = *v111;
    *&v90[3] = *&v111[3];
    v91 = v49;
    v96 = v67;
    v97 = v68;
    v98 = v69;
    v92 = v63;
    v93 = v64;
    v94 = v65;
    v95 = v66;
    sub_BC8C(&v70, &v99, &qword_2CDB8, &qword_1FBC8);
    sub_BC8C(&v79, &v99, &qword_2CDB8, &qword_1FBC8);
    sub_BCF4(v88, &qword_2CDB8, &qword_1FBC8);
    v99 = v51;
    v100 = v61;
    v101 = v60;
    *v102 = *v120;
    *&v102[3] = *&v120[3];
    v103 = v50;
    v108 = v117;
    v109 = v118;
    v110 = v119;
    v104 = v113;
    v105 = v114;
    v106 = v115;
    v107 = v116;
    sub_BCF4(&v99, &qword_2CDB8, &qword_1FBC8);
  }

  else
  {
    type metadata accessor for AppInstallationSettingsViewModel();
    sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel);
    result = sub_1E508();
    __break(1u);
  }

  return result;
}

uint64_t sub_58B4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E158();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27F0(&qword_2CCA0, &qword_1F9F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v13 = &v25 - v12;
  if (a1)
  {
    if (*&a1[OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel_telephonyClient])
    {
      v26 = a2;
      v27 = v11;
      v25 = &v25;
      __chkstk_darwin(v10);
      sub_1EA48();
      sub_1EA38();
      sub_1E9F8();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_1B8E4(v7);
      *&v28 = sub_1E988();
      *(&v28 + 1) = v14;
      sub_AE7C();
      v15 = sub_1E698();
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v29 = v15;
      v30 = v17;
      v31 = v19 & 1;
      v32 = v21;
      sub_6D4C(a1, &v28);
      sub_27F0(&qword_2CCA8, &qword_1F9F8);
      sub_27F0(&qword_2CCB0, &unk_1FA00);
      sub_BC44(&qword_2CCB8, &qword_2CCA8, &qword_1F9F8);
      sub_B4E8();
      sub_1E868();
      v22 = v26;
      (*(v27 + 32))(v26, v13, v8);
      return (*(v27 + 56))(v22, 0, 1, v8);
    }

    else
    {
      v24 = *(v11 + 56);

      return v24(a2, 1, 1, v8);
    }
  }

  else
  {
    type metadata accessor for AppInstallationSettingsViewModel();
    sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel);
    result = sub_1E508();
    __break(1u);
  }

  return result;
}

uint64_t sub_5C6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v40 = a3;
  v5 = sub_27F0(&qword_2CD08, &qword_1FA90);
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  v7 = __chkstk_darwin(v5);
  v45 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = v37 - v9;
  v39 = sub_27F0(&qword_2CC90, &qword_1F9C0);
  v10 = *(v39 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v39);
  v38 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v37 - v14;
  sub_1EA48();
  v37[1] = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppInstallationSettingsViewModel();
  sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel);
  v16 = sub_1E4F8();
  swift_getKeyPath();
  sub_1E518();

  v43 = v15;
  v17 = sub_1E828();
  v37[0] = v37;
  __chkstk_darwin(v17);
  v37[-2] = a1;
  v37[-1] = a2;
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = sub_1E528();
  if (a1)
  {
    v20 = v18;
    v21 = v19;
    v22 = a1;
    v23 = sub_1E398();

    v46 = v20;
    v47 = v21;
    v48 = v23;
    v49 = a1;
    sub_27F0(&qword_2CD10, &qword_1FAC0);
    sub_27F0(&qword_2CD18, &qword_1FAC8);
    sub_BC44(&qword_2CD20, &qword_2CD10, &qword_1FAC0);
    sub_B8BC();
    v24 = v44;
    sub_1E498();
    v25 = v10[2];
    v27 = v38;
    v26 = v39;
    v25(v38, v43, v39);
    v29 = v41;
    v28 = v42;
    v30 = *(v41 + 16);
    v30(v45, v24, v42);
    v31 = v40;
    v25(v40, v27, v26);
    v32 = &v31[*(sub_27F0(&qword_2CD38, &qword_1FAD0) + 48)];
    v33 = v45;
    v30(v32, v45, v28);
    v34 = *(v29 + 8);
    v34(v44, v28);
    v35 = v10[1];
    v35(v43, v26);
    v34(v33, v28);
    v35(v27, v26);
  }

  else
  {
    result = sub_1E508();
    __break(1u);
  }

  return result;
}

double sub_61C0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1E5B8();
  v18 = 1;
  sub_6344(a1, &v11);
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v19 = v11;
  v20 = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v25[5] = v16;
  v25[0] = v11;
  v25[1] = v12;
  sub_BC8C(&v19, &v10, &qword_2CD40, &qword_1FAD8);
  sub_BCF4(v25, &qword_2CD40, &qword_1FAD8);

  *&v17[87] = v24;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  *&v17[7] = v19;
  v5 = *&v17[32];
  *(a2 + 65) = *&v17[48];
  v6 = *&v17[80];
  *(a2 + 81) = *&v17[64];
  *(a2 + 97) = v6;
  result = *v17;
  v8 = *&v17[16];
  *(a2 + 17) = *v17;
  *(a2 + 33) = v8;
  v9 = v18;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 112) = *&v17[95];
  *(a2 + 49) = v5;
  return result;
}

uint64_t sub_6344@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E158();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EA48();
  v24[1] = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1BC10(v7);
  *&v28 = sub_1E988();
  *(&v28 + 1) = v8;
  sub_AE7C();
  v24[0] = sub_1E698();
  v25 = v9;
  v11 = v10;
  v13 = v12;
  sub_65AC(a1, &v28);
  v14 = v28;
  v15 = v29;
  v16 = v30;
  v17 = v32;
  v18 = v31;
  v19 = sub_1E788();
  v11 &= 1u;
  LOBYTE(v28) = v11;
  v27 = 1;
  v26 = v17;
  v20 = v24[0];
  v21 = v25;
  *a2 = v24[0];
  *(a2 + 8) = v21;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v14;
  *(a2 + 64) = v15;
  *(a2 + 72) = v16;
  *(a2 + 80) = v18;
  *(a2 + 81) = v17;
  *(a2 + 88) = v19;
  v22 = v20;
  sub_2838(v20, v21, v11);

  sub_BA48(v14, *(&v14 + 1), v15, v16, v18, v17, sub_B9C8, sub_BA04);

  sub_BA48(v14, *(&v14 + 1), v15, v16, v18, v17, sub_BA60, sub_BA9C);

  sub_2E3C(v22, v25, v11);
}

uint64_t sub_65AC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E158();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E318();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EA48();
  v13 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = a1;
    sub_1E3C8();

    v15 = (*(v9 + 88))(v12, v8);
    v47 = v13;
    v48 = a2;
    if (v15 == enum case for CellularSettings.Prompt.always(_:))
    {

      sub_1C2F8(v7);
      *&v52 = sub_1E988();
      *(&v52 + 1) = v16;
      sub_AE7C();
      v17 = sub_1E698();
      v19 = v18;
      *&v49 = v17;
      *(&v49 + 1) = v18;
      v21 = v20 & 1;
      *&v50 = v20 & 1;
      *(&v50 + 1) = v22;
      LOBYTE(v51) = 0;
      sub_2838(v17, v18, v20 & 1);

      sub_1E5F8();
      v49 = v52;
      v50 = v53;
      LOBYTE(v51) = v54;
      HIBYTE(v51) = 1;
      sub_27F0(&qword_2CCD0, &unk_20360);
      sub_27F0(&qword_2CCE0, &qword_1FA10);
      sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
      sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    }

    else
    {
      if (v15 != enum case for CellularSettings.Prompt.overLimit(_:))
      {
        v36 = enum case for CellularSettings.Prompt.never(_:);
        v37 = v15;

        if (v37 != v36)
        {
          v49 = 0u;
          v50 = 0u;
          LOBYTE(v51) = 1;
          sub_1E5F8();
          v49 = v52;
          v50 = v53;
          LOBYTE(v51) = v54;
          HIBYTE(v51) = 1;
          sub_27F0(&qword_2CCD0, &unk_20360);
          sub_27F0(&qword_2CCE0, &qword_1FA10);
          sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
          sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
          sub_1E5F8();
          v45 = v53;
          v46 = v52;
          v33 = v54;
          v34 = v55;
          (*(v9 + 8))(v12, v8);

          v32 = v45;
          v31 = v46;
          goto LABEL_10;
        }

        sub_1BF38(v7);
        *&v52 = sub_1E988();
        *(&v52 + 1) = v38;
        sub_AE7C();
        v39 = sub_1E698();
        v41 = v40;
        *&v49 = v39;
        *(&v49 + 1) = v40;
        v43 = v42 & 1;
        *&v50 = v42 & 1;
        *(&v50 + 1) = v44;
        LOBYTE(v51) = 0;
        sub_2838(v39, v40, v42 & 1);

        sub_1E5F8();
        v49 = v52;
        v50 = v53;
        v51 = v54;
        sub_27F0(&qword_2CCD0, &unk_20360);
        sub_27F0(&qword_2CCE0, &qword_1FA10);
        sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
        sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
        sub_1E5F8();
        sub_2E3C(v39, v41, v43);

LABEL_9:

        v31 = v52;
        v32 = v53;
        v33 = v54;
        v34 = v55;
LABEL_10:
        v35 = v48;
        *v48 = v31;
        v35[1] = v32;
        *(v35 + 32) = v33;
        *(v35 + 33) = v34;
        return result;
      }

      v23 = sub_2F0C();
      v25 = v24;

      sub_1BF58(v23, v25, v7);

      *&v52 = sub_1E988();
      *(&v52 + 1) = v26;
      sub_AE7C();
      v17 = sub_1E698();
      v19 = v27;
      v21 = v28 & 1;
      *&v49 = v17;
      *(&v49 + 1) = v27;
      *&v50 = v28 & 1;
      *(&v50 + 1) = v29;
      LOBYTE(v51) = 1;
      sub_2838(v17, v27, v28 & 1);

      sub_1E5F8();
      v49 = v52;
      v50 = v53;
      v51 = v54;
      sub_27F0(&qword_2CCD0, &unk_20360);
      sub_27F0(&qword_2CCE0, &qword_1FA10);
      sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
      sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    }

    sub_1E5F8();
    sub_2E3C(v17, v19, v21);

    goto LABEL_9;
  }

  type metadata accessor for AppInstallationSettingsViewModel();
  sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel);
  result = sub_1E508();
  __break(1u);
  return result;
}

uint64_t sub_6D4C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E158();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E318();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EA48();
  v13 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = a1;
    sub_1E3C8();

    v15 = (*(v9 + 88))(v12, v8);
    v44 = v13;
    v45 = a2;
    if (v15 == enum case for CellularSettings.Prompt.always(_:))
    {

      sub_1C62C(v7);
      *&v49 = sub_1E988();
      *(&v49 + 1) = v16;
      sub_AE7C();
      v17 = sub_1E698();
      v19 = v18;
      *&v46 = v17;
      *(&v46 + 1) = v18;
      v21 = v20 & 1;
      *&v47 = v20 & 1;
      *(&v47 + 1) = v22;
      LOBYTE(v48) = 0;
      sub_2838(v17, v18, v20 & 1);

      sub_1E5F8();
      v46 = v49;
      v47 = v50;
      v48 = v51;
      sub_27F0(&qword_2CCD0, &unk_20360);
      sub_27F0(&qword_2CCE0, &qword_1FA10);
      sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
      sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    }

    else if (v15 == enum case for CellularSettings.Prompt.overLimit(_:))
    {
      v23 = sub_2F0C();
      v25 = v24;

      sub_1C954(v23, v25, v7);

      *&v49 = sub_1E988();
      *(&v49 + 1) = v26;
      sub_AE7C();
      v17 = sub_1E698();
      v19 = v27;
      v21 = v28 & 1;
      *&v46 = v17;
      *(&v46 + 1) = v27;
      *&v47 = v28 & 1;
      *(&v47 + 1) = v29;
      LOBYTE(v48) = 1;
      sub_2838(v17, v27, v28 & 1);

      sub_1E5F8();
      v46 = v49;
      v47 = v50;
      v48 = v51;
      sub_27F0(&qword_2CCD0, &unk_20360);
      sub_27F0(&qword_2CCE0, &qword_1FA10);
      sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
      sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    }

    else
    {
      v30 = enum case for CellularSettings.Prompt.never(_:);
      v31 = v15;

      if (v31 != v30)
      {
        v46 = 0u;
        v47 = 0u;
        LOBYTE(v48) = 1;
        sub_1E5F8();
        v46 = v49;
        v47 = v50;
        LOBYTE(v48) = v51;
        HIBYTE(v48) = 1;
        sub_27F0(&qword_2CCD0, &unk_20360);
        sub_27F0(&qword_2CCE0, &qword_1FA10);
        sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
        sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
        sub_1E5F8();
        v42 = v50;
        v43 = v49;
        v39 = v51;
        v40 = v52;
        (*(v9 + 8))(v12, v8);

        v38 = v42;
        v37 = v43;
        goto LABEL_11;
      }

      sub_1CCF0(v7);
      *&v49 = sub_1E988();
      *(&v49 + 1) = v32;
      sub_AE7C();
      v17 = sub_1E698();
      v19 = v33;
      *&v46 = v17;
      *(&v46 + 1) = v33;
      v21 = v34 & 1;
      *&v47 = v34 & 1;
      *(&v47 + 1) = v35;
      LOBYTE(v48) = 0;
      sub_2838(v17, v33, v34 & 1);

      sub_1E5F8();
      v46 = v49;
      v47 = v50;
      LOBYTE(v48) = v51;
      HIBYTE(v48) = 1;
      sub_27F0(&qword_2CCD0, &unk_20360);
      sub_27F0(&qword_2CCE0, &qword_1FA10);
      sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
      sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    }

    sub_1E5F8();
    sub_2E3C(v17, v19, v21);

    v37 = v49;
    v38 = v50;
    v39 = v51;
    v40 = v52;
LABEL_11:
    v41 = v45;
    *v45 = v37;
    v41[1] = v38;
    *(v41 + 32) = v39;
    *(v41 + 33) = v40;
    return result;
  }

  type metadata accessor for AppInstallationSettingsViewModel();
  sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel);
  result = sub_1E508();
  __break(1u);
  return result;
}

uint64_t sub_74F0()
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppInstallationSettingsViewModel();
  sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel);
  v0 = sub_1E4F8();
  swift_getKeyPath();
  sub_1E518();

  sub_1E828();
}

uint64_t sub_766C@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1E158();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
  sub_1E988();
  sub_AE7C();
  v7 = sub_1E698();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v13;
  return result;
}

uint64_t sub_77A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1E8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1E148();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E958();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1E158();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v13 = sub_286C(v4, qword_2D318);
  (*(v5 + 16))(v8, v13, v4);
  sub_1E1D8();
  sub_1E178();
  v23[1] = sub_1E988();
  v23[2] = v14;
  sub_AE7C();
  v15 = sub_1E698();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  return result;
}

uint64_t sub_7A98()
{
  v2 = *v0;
  sub_77A8(v3);
  sub_27F0(&qword_2CC90, &qword_1F9C0);
  sub_BC44(&qword_2CC98, &qword_2CC90, &qword_1F9C0);
  return sub_1E888();
}

uint64_t sub_7B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_27F0(&qword_2CC40, &qword_1F920);
  v15 = *(v6 - 8);
  v7 = *(v15 + 64);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  v10 = *(sub_1E258() + 16);

  if (v10)
  {
    __chkstk_darwin(v11);
    *(&v14 - 2) = a1;
    *(&v14 - 1) = a2;
    sub_856C(v16);
    sub_27F0(&qword_2CC48, &qword_1F928);
    sub_B308();
    sub_1E858();
    (*(v15 + 32))(a3, v9, v6);
    return (*(v15 + 56))(a3, 0, 1, v6);
  }

  else
  {
    v13 = *(v15 + 56);

    return v13(a3, 1, 1, v6);
  }
}

uint64_t sub_7D6C(void *a1)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = a1;
    sub_1E3C8();

    swift_getKeyPath();
    sub_27F0(&qword_2CC70, &qword_1F9B0);
    sub_27F0(&qword_2CC78, &qword_1F9B8);
    sub_BC44(&qword_2CC80, &qword_2CC70, &qword_1F9B0);
    sub_2EC4(&qword_2CC58, &qword_1F930);
    sub_1E4C8();
    sub_BC44(&qword_2CC60, &qword_2CC58, &qword_1F930);
    sub_B488(&qword_2CC68, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1E848();
  }

  else
  {
    type metadata accessor for AppInstallationSettingsViewModel();
    sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel);
    result = sub_1E508();
    __break(1u);
  }

  return result;
}

uint64_t sub_8034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1E4C8();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E288();
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v23);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ApprovedDeveloperView();
  v11 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_27F0(&qword_2CC58, &qword_1F930);
  v26 = *(v14 - 8);
  v27 = v14;
  v15 = *(v26 + 64);
  __chkstk_darwin(v14);
  v17 = v22 - v16;
  sub_1EA48();
  v25 = sub_1EA38();
  sub_1E9F8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v22[1] = v22;
  __chkstk_darwin(isCurrentExecutor);
  v22[-2] = a1;
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v7 + 16))(v10, a1, v23);
  sub_11AF8(v10, v13);

  sub_B488(&qword_2CC88, type metadata accessor for ApprovedDeveloperView);
  sub_1E498();
  sub_1E4B8();
  sub_BC44(&qword_2CC60, &qword_2CC58, &qword_1F930);
  sub_B488(&qword_2CC68, &type metadata accessor for PlainButtonStyle);
  v19 = v27;
  v20 = v30;
  sub_1E6D8();
  (*(v29 + 8))(v6, v20);
  (*(v26 + 8))(v17, v19);
}

uint64_t sub_8488@<X0>(uint64_t a1@<X8>)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E278();
  sub_AE7C();
  v2 = sub_1E698();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_856C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1E8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1E148();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E958();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1E158();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v13 = sub_286C(v4, qword_2D318);
  (*(v5 + 16))(v8, v13, v4);
  sub_1E1D8();
  sub_1E178();
  v23[1] = sub_1E988();
  v23[2] = v14;
  sub_AE7C();
  v15 = sub_1E698();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  return result;
}

uint64_t sub_8880@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a2;
  v9 = sub_27F0(&qword_2CB80, &qword_1F820);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = a1;
    sub_1E3C8();

    if (v20)
    {
      v16 = 1;
    }

    else
    {
      __chkstk_darwin(v15);
      v17 = v19;
      *(&v19 - 4) = a1;
      *(&v19 - 3) = v17;
      *(&v19 - 16) = a3 & 1;
      *(&v19 - 1) = a4;
      sub_27F0(&qword_2CB88, &qword_1F870);
      sub_A75C();
      sub_1E878();
      (*(v10 + 32))(a5, v13, v9);
      v16 = 0;
    }

    return (*(v10 + 56))(a5, v16, 1, v9);
  }

  else
  {
    type metadata accessor for AppInstallationSettingsViewModel();
    sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel);
    result = sub_1E508();
    __break(1u);
  }

  return result;
}

uint64_t sub_8AD0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3 & 1;
  *(v10 + 40) = a4;
  __chkstk_darwin(v10);

  v11 = a1;
  sub_27F0(&qword_2CBB8, &qword_1F888);
  sub_BC44(&qword_2CBC0, &qword_2CBB8, &qword_1F888);
  sub_1E7E8();
  sub_27F0(&qword_2CBC8, &qword_1F890);
  sub_1E7A8();
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v16;

  result = sub_27F0(&qword_2CB88, &qword_1F870);
  v15 = (a5 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = sub_AE64;
  v15[2] = v13;
  return result;
}

uint64_t sub_8D08(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v18[-v10];
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a3 & 1;
  v18[16] = v12;
  v19 = a4;
  v18[15] = 1;
  sub_27F0(&qword_2CBC8, &qword_1F890);
  sub_1E7B8();
  v13 = sub_1EA68();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);

  v14 = a1;
  v15 = sub_1EA38();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = &protocol witness table for MainActor;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = v12;
  *(v16 + 56) = a4;
  sub_F71C(0, 0, v11, &unk_1F8F8, v16);
}

uint64_t sub_8EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 360) = a5;
  *(v7 + 368) = a7;
  *(v7 + 569) = a6;
  *(v7 + 352) = a4;
  v8 = sub_1E8B8();
  *(v7 + 376) = v8;
  v9 = *(v8 - 8);
  *(v7 + 384) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 392) = swift_task_alloc();
  v11 = sub_1E8D8();
  *(v7 + 400) = v11;
  v12 = *(v11 - 8);
  *(v7 + 408) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 416) = swift_task_alloc();
  v14 = sub_27F0(&qword_2CC00, &qword_1F900);
  *(v7 + 424) = v14;
  v15 = *(v14 - 8);
  *(v7 + 432) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 440) = swift_task_alloc();
  v17 = sub_27F0(&qword_2CC08, &qword_1F908);
  *(v7 + 448) = v17;
  v18 = *(v17 - 8);
  *(v7 + 456) = v18;
  v19 = *(v18 + 64) + 15;
  *(v7 + 464) = swift_task_alloc();
  v20 = sub_1E1C8();
  *(v7 + 472) = v20;
  v21 = *(v20 - 8);
  *(v7 + 480) = v21;
  v22 = *(v21 + 64) + 15;
  *(v7 + 488) = swift_task_alloc();
  sub_1EA48();
  *(v7 + 496) = sub_1EA38();
  v24 = sub_1E9F8();
  *(v7 + 504) = v24;
  *(v7 + 512) = v23;

  return _swift_task_switch(sub_917C, v24, v23);
}

uint64_t sub_917C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[61];
  v5 = v0[58];
  v14 = v0[59];
  v8 = v0 + 56;
  v6 = v0[56];
  v7 = v8[1];
  v15 = objc_opt_self();
  v9 = objc_allocWithZone(ASDSystemAppMetadata);
  v10 = sub_1E968();
  v11 = [v9 initWithBundleID:v10];
  v1[65] = v11;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_9398;
  swift_continuation_init();
  v1[25] = v6;
  v12 = sub_B0E4(v1 + 22);
  v1[66] = sub_27F0(&qword_2CC10, &unk_1F910);
  sub_1EA08();
  (*(v7 + 32))(v12, v5, v6);
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_9F58;
  v1[21] = &unk_293A8;
  [v15 installApp:v11 withCompletionHandler:v3];
  (*(v7 + 8))(v12, v6);

  return _swift_continuation_await(v2);
}

uint64_t sub_9398()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 536) = v3;
  v4 = *(v1 + 512);
  v5 = *(v1 + 504);
  if (v3)
  {
    v6 = sub_99D0;
  }

  else
  {
    v6 = sub_94C8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_94C8()
{
  v1 = *(v0 + 520);
  (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));

  v2 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  *(v0 + 544) = v2;
  if (v2)
  {
    v3 = v2;
    v18 = *(v0 + 528);
    v5 = *(v0 + 432);
    v4 = *(v0 + 440);
    v6 = *(v0 + 424);
    v7 = sub_1E968();
    *(v0 + 552) = v7;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 344;
    *(v0 + 88) = sub_97B0;
    swift_continuation_init();
    *(v0 + 264) = v6;
    v8 = sub_B0E4((v0 + 240));
    sub_B76C(0, &qword_2CC38, BSProcessHandle_ptr);
    sub_1EA08();
    (*(v5 + 32))(v8, v4, v6);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_A04C;
    *(v0 + 232) = &unk_29420;
    [v3 openApplication:v7 withOptions:0 completion:?];
    (*(v5 + 8))(v8, v6);

    return _swift_continuation_await(v0 + 80);
  }

  else
  {
    v9 = *(v0 + 496);

    v10 = *(v0 + 368);
    *(v0 + 320) = *(v0 + 569);
    *(v0 + 328) = v10;
    *(v0 + 568) = 0;
    sub_27F0(&qword_2CBC8, &qword_1F890);
    sub_1E7B8();
    v11 = *(v0 + 488);
    v12 = *(v0 + 464);
    v13 = *(v0 + 440);
    v14 = *(v0 + 416);
    v15 = *(v0 + 392);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_97B0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 560) = v3;
  v4 = *(v1 + 512);
  v5 = *(v1 + 504);
  if (v3)
  {
    v6 = sub_9C90;
  }

  else
  {
    v6 = sub_98E0;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_98E0()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 496);

  v4 = *(v0 + 368);
  *(v0 + 320) = *(v0 + 569);
  *(v0 + 328) = v4;
  *(v0 + 568) = 0;
  sub_27F0(&qword_2CBC8, &qword_1F890);
  sub_1E7B8();
  v5 = *(v0 + 488);
  v6 = *(v0 + 464);
  v7 = *(v0 + 440);
  v8 = *(v0 + 416);
  v9 = *(v0 + 392);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_99D0()
{
  v1 = v0[67];
  v2 = v0[65];
  v3 = v0[62];

  swift_willThrow();

  v22 = v0[52];
  v24 = v0[67];
  v25 = v0[51];
  v4 = v0[49];
  v26 = v0[50];
  v5 = v0[47];
  v6 = v0[48];
  v7 = v0[45];
  v8 = v0[46];
  v9 = *(v0 + 569);
  v10 = v0[44];
  sub_B76C(0, &qword_2CC18, OS_dispatch_queue_ptr);
  v23 = sub_1EA98();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v7;
  *(v11 + 32) = v9;
  *(v11 + 40) = v8;
  v0[38] = sub_B248;
  v0[39] = v11;
  v0[34] = _NSConcreteStackBlock;
  v0[35] = 1107296256;
  v0[36] = sub_F9DC;
  v0[37] = &unk_293F8;
  v12 = _Block_copy(v0 + 34);

  v13 = v10;
  sub_1E8C8();
  v0[42] = &_swiftEmptyArrayStorage;
  sub_B488(&qword_2CC20, &type metadata accessor for DispatchWorkItemFlags);
  sub_27F0(&qword_2CC28, &unk_1FFB0);
  sub_BC44(&qword_2CC30, &qword_2CC28, &unk_1FFB0);
  sub_1EAD8();
  sub_1EAA8();
  _Block_release(v12);

  (*(v6 + 8))(v4, v5);
  (*(v25 + 8))(v22, v26);
  v14 = v0[39];

  v15 = v0[61];
  v16 = v0[58];
  v17 = v0[55];
  v18 = v0[52];
  v19 = v0[49];

  v20 = v0[1];

  return v20();
}

uint64_t sub_9C90()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[62];

  swift_willThrow();

  v23 = v0[52];
  v25 = v0[70];
  v26 = v0[51];
  v5 = v0[49];
  v27 = v0[50];
  v6 = v0[47];
  v7 = v0[48];
  v8 = v0[45];
  v9 = v0[46];
  v10 = *(v0 + 569);
  v11 = v0[44];
  sub_B76C(0, &qword_2CC18, OS_dispatch_queue_ptr);
  v24 = sub_1EA98();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = v9;
  v0[38] = sub_B248;
  v0[39] = v12;
  v0[34] = _NSConcreteStackBlock;
  v0[35] = 1107296256;
  v0[36] = sub_F9DC;
  v0[37] = &unk_293F8;
  v13 = _Block_copy(v0 + 34);

  v14 = v11;
  sub_1E8C8();
  v0[42] = &_swiftEmptyArrayStorage;
  sub_B488(&qword_2CC20, &type metadata accessor for DispatchWorkItemFlags);
  sub_27F0(&qword_2CC28, &unk_1FFB0);
  sub_BC44(&qword_2CC30, &qword_2CC28, &unk_1FFB0);
  sub_1EAD8();
  sub_1EAA8();
  _Block_release(v13);

  (*(v7 + 8))(v5, v6);
  (*(v26 + 8))(v23, v27);
  v15 = v0[39];

  v16 = v0[61];
  v17 = v0[58];
  v18 = v0[55];
  v19 = v0[52];
  v20 = v0[49];

  v21 = v0[1];

  return v21();
}

void sub_9F58(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1E1C8();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  sub_B2BC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v7 = a3;
    sub_27F0(&qword_2CC08, &qword_1F908);
    sub_1EA18();
  }

  else
  {
    sub_1E1B8();
    sub_27F0(&qword_2CC08, &qword_1F908);
    sub_1EA28();
  }
}

void sub_A060(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  sub_B2BC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v9 = a3;
    sub_27F0(a4, a5);
    sub_1EA18();
  }

  else if (a2)
  {
    v10 = a2;
    sub_27F0(a4, a5);
    sub_1EA28();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_A110@<X0>(char a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_1E5B8();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_27F0(&qword_2CBD0, &qword_1F8C8);
  sub_A204(a1 & 1, a2, a3 + *(v6 + 44));
}

uint64_t sub_A204@<X0>(int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v45 = a2;
  v44 = a1;
  v4 = sub_27F0(&qword_2CBD8, &qword_1F8D0);
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  __chkstk_darwin(v4);
  v42 = &v41 - v6;
  v7 = sub_27F0(&qword_2CBE0, &qword_1F8D8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v48 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = sub_1E1E8();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_1E148();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E958();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_1E158();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  sub_1EA48();
  v43 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v24 = sub_286C(v15, qword_2D318);
  (*(v16 + 16))(v19, v24, v15);
  sub_1E1D8();
  sub_1E178();
  v50 = sub_1E988();
  v51 = v25;
  sub_AE7C();
  v26 = sub_1E698();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  LOBYTE(v50) = v44 & 1;
  v51 = v45;
  sub_27F0(&qword_2CBC8, &qword_1F890);
  sub_1E7A8();
  v33 = 1;
  v35 = v46;
  v34 = v47;
  if (v49 == 1)
  {
    v36 = v42;
    sub_1E458();
    (*(v35 + 32))(v12, v36, v34);
    v33 = 0;
  }

  (*(v35 + 56))(v12, v33, 1, v34);
  v37 = v48;
  sub_BC8C(v12, v48, &qword_2CBE0, &qword_1F8D8);
  *a3 = v26;
  *(a3 + 8) = v28;
  v38 = v30 & 1;
  *(a3 + 16) = v38;
  *(a3 + 24) = v32;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v39 = sub_27F0(&qword_2CBF0, &unk_1F8E0);
  sub_BC8C(v37, a3 + *(v39 + 64), &qword_2CBE0, &qword_1F8D8);
  sub_2838(v26, v28, v38);

  sub_BCF4(v12, &qword_2CBE0, &qword_1F8D8);
  sub_BCF4(v37, &qword_2CBE0, &qword_1F8D8);
  sub_2E3C(v26, v28, v38);
}

unint64_t sub_A75C()
{
  result = qword_2CB90;
  if (!qword_2CB90)
  {
    sub_2EC4(&qword_2CB88, &qword_1F870);
    sub_BC44(&qword_2CB98, &qword_2CBA0, &qword_1F878);
    sub_BC44(&qword_2CBA8, &qword_2CBB0, &qword_1F880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CB90);
  }

  return result;
}

uint64_t sub_A854@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_A110(*(v1 + 32), *(v1 + 40), a1);
}

uint64_t sub_A864(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_A930(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_B158(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_B1BC(v11);
  return v7;
}

unint64_t sub_A930(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_AA3C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1EB18();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_AA3C(uint64_t a1, unint64_t a2)
{
  v4 = sub_AA88(a1, a2);
  sub_ABB8(&off_28FE8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_AA88(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_ACA4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1EB18();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E9B8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_ACA4(v10, 0);
        result = sub_1EAE8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_ABB8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_AD18(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_ACA4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_27F0(&qword_2CD00, &qword_1FA88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_AD18(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_27F0(&qword_2CD00, &qword_1FA88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_AE0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E558();
  *a1 = result & 1;
  return result;
}

unint64_t sub_AE7C()
{
  result = qword_2CBE8;
  if (!qword_2CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CBE8);
  }

  return result;
}

uint64_t sub_AED0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_AF18(uint64_t a1)
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
  v10[1] = sub_AFF0;

  return sub_8EF8(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_AFF0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t *sub_B0E4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_B158(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_B1BC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_B208()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_B248()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_27F0(&qword_2CBC8, &qword_1F890);
  return sub_1E7B8();
}

uint64_t sub_B2A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_B2BC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_B308()
{
  result = qword_2CC50;
  if (!qword_2CC50)
  {
    sub_2EC4(&qword_2CC48, &qword_1F928);
    sub_2EC4(&qword_2CC58, &qword_1F930);
    sub_1E4C8();
    sub_BC44(&qword_2CC60, &qword_2CC58, &qword_1F930);
    sub_B488(&qword_2CC68, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CC50);
  }

  return result;
}

uint64_t sub_B454@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E268();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_B488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_B4D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_74F0();
}

unint64_t sub_B4E8()
{
  result = qword_2CCC0;
  if (!qword_2CCC0)
  {
    sub_2EC4(&qword_2CCB0, &unk_1FA00);
    sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
    sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CCC0);
  }

  return result;
}

uint64_t sub_B5B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2EC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_B62C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B664()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_B6AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_C338;

  return sub_322C(a1, v4, v5, v7, v6);
}

uint64_t sub_B76C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_B7B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_B7F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_C338;

  return sub_D700(a1, v4, v5, v6);
}

unint64_t sub_B8BC()
{
  result = qword_2CD28;
  if (!qword_2CD28)
  {
    sub_2EC4(&qword_2CD18, &qword_1FAC8);
    sub_B974();
    sub_BC44(&qword_2CB70, &qword_2CB78, qword_1F688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CD28);
  }

  return result;
}

unint64_t sub_B974()
{
  result = qword_2CD30;
  if (!qword_2CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CD30);
  }

  return result;
}

uint64_t sub_B9C8(uint64_t a1, uint64_t a2, char a3)
{
  sub_2838(a1, a2, a3 & 1);
}

uint64_t sub_BA04(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_2838(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_BA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a5 & 1;
  if (a6)
  {
    return a8(a1, a2, a3, a4, v8);
  }

  else
  {
    return a7(a1, a2, a3, a4, v8);
  }
}

uint64_t sub_BA60(uint64_t a1, uint64_t a2, char a3)
{
  sub_2E3C(a1, a2, a3 & 1);
}

uint64_t sub_BA9C(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_2E3C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_BAF0()
{
  result = qword_2CD68;
  if (!qword_2CD68)
  {
    sub_2EC4(&qword_2CD58, &qword_1FB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CD68);
  }

  return result;
}

uint64_t sub_BB84@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_4FE4(a1);
}

uint64_t sub_BBC4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_4FE4(a1);
}

uint64_t sub_BC44(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2EC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_BC8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_27F0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_BCF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_27F0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_BDE0()
{
  result = qword_2CDD0;
  if (!qword_2CDD0)
  {
    sub_2EC4(&qword_2CB80, &qword_1F820);
    sub_A75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CDD0);
  }

  return result;
}

unint64_t sub_BEB4()
{
  result = qword_2CDE8;
  if (!qword_2CDE8)
  {
    sub_2EC4(&qword_2CC40, &qword_1F920);
    sub_B308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CDE8);
  }

  return result;
}

unint64_t sub_BF50()
{
  result = qword_2CDF0;
  if (!qword_2CDF0)
  {
    sub_2EC4(&qword_2CDF8, &qword_1FBE0);
    sub_BC44(&qword_2CC98, &qword_2CC90, &qword_1F9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CDF0);
  }

  return result;
}

uint64_t sub_C058(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2EC4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_C0D4()
{
  result = qword_2CE10;
  if (!qword_2CE10)
  {
    sub_2EC4(&qword_2CCA0, &qword_1F9F0);
    sub_BC44(&qword_2CCB8, &qword_2CCA8, &qword_1F9F8);
    sub_B4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CE10);
  }

  return result;
}

unint64_t sub_C19C()
{
  result = qword_2CE18;
  if (!qword_2CE18)
  {
    sub_2EC4(&qword_2CD70, &qword_1FB40);
    sub_C254();
    sub_BC44(&qword_2CBA8, &qword_2CBB0, &qword_1F880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CE18);
  }

  return result;
}

unint64_t sub_C254()
{
  result = qword_2CE20;
  if (!qword_2CE20)
  {
    sub_2EC4(&qword_2CD48, &qword_1FAE0);
    sub_BC44(&qword_2CD60, &qword_2CD50, &qword_1FB30);
    sub_BAF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CE20);
  }

  return result;
}

uint64_t sub_C43C(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v8 = *a1;
  v9 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v9;
  v10 = sub_1E3D8();
  return a7(v10);
}

void sub_C4D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_1E968();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_1E968();
    [v2 setBool:v4 forKey:v3];
  }
}

void sub_C5F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_1E968();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_1E968();
    [v2 setBool:v4 forKey:v3];
  }
}

void sub_C710()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_1E968();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_1E968();
    [v2 setBool:v4 forKey:v3];
  }
}

uint64_t sub_C82C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();
}

uint64_t sub_C8A4(uint64_t a1)
{
  v3 = sub_1E318();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v4 + 16))(v7, a1, v3);
  v1;
  sub_1E3D8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  swift_beginAccess();
  sub_1E2F8();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void sub_CA4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_1E968();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_1E968();
    [v2 setBool:v4 forKey:v3];
  }
}

uint64_t sub_CB68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  return v1;
}

uint64_t sub_CBF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  return v1;
}

char *sub_CC5C()
{
  v1 = sub_1E2D8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v73[2] = v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_27F0(&qword_2CEB8, &qword_1FF08);
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = *(v77 + 64);
  __chkstk_darwin(v4);
  v76 = v73 - v6;
  v7 = sub_27F0(&qword_2CEC0, &qword_1FF10);
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = *(v74 + 64);
  __chkstk_darwin(v7);
  v10 = v73 - v9;
  v11 = sub_1E318();
  v82 = *(v11 - 8);
  v12 = *(v82 + 64);
  v13 = __chkstk_darwin(v11);
  v79 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v80 = v73 - v15;
  v16 = sub_27F0(&qword_2CEC8, &qword_1FF18);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v73 - v19;
  v21 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel__isLowPowerMode;
  v22 = [objc_opt_self() processInfo];
  v23 = [v22 isLowPowerModeEnabled];

  LOBYTE(v84) = v23;
  sub_1E3B8();
  v24 = *(v17 + 32);
  v83 = v16;
  v24(&v0[v21], v20, v16);
  v25 = objc_allocWithZone(NSUserDefaults);
  v26 = sub_1E968();
  v27 = [v25 initWithSuiteName:v26];

  if (v27)
  {
    v28 = sub_1E968();
    v29 = [v27 BOOLForKey:v28];
  }

  else
  {
    v29 = 1;
  }

  v30 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel__autoUpdatesEnabled;
  LOBYTE(v84) = v29;
  sub_1E3B8();
  v31 = v83;
  v24(&v0[v30], v20, v83);
  v32 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel__autoBackgroundAssetsEnabled;
  LOBYTE(v84) = sub_F570() & 1;
  sub_1E3B8();
  v81 = v24;
  v24(&v0[v32], v20, v31);
  v33 = objc_allocWithZone(NSUserDefaults);
  v34 = sub_1E968();
  v35 = [v33 initWithSuiteName:v34];

  if (v35)
  {
    v36 = sub_1E968();
    v37 = [v35 BOOLForKey:v36];
  }

  else
  {
    v37 = 1;
  }

  v38 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel__cellularAutoDownloadsEnabled;
  LOBYTE(v84) = v37;
  sub_1E3B8();
  v81(&v0[v38], v20, v83);
  v39 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel__cellularAutoDownloadPrompt;
  v40 = v82;
  v41 = v80;
  (*(v82 + 104))(v80, enum case for CellularSettings.Prompt.overLimit(_:), v11);
  v73[0] = *(v40 + 16);
  v73[1] = v40 + 16;
  (v73[0])(v79, v41, v11);
  sub_1E3B8();
  v42 = *(v40 + 8);
  v82 = v40 + 8;
  v42(v41, v11);
  (*(v74 + 32))(&v0[v39], v10, v75);
  v43 = objc_allocWithZone(NSUserDefaults);
  v44 = sub_1E968();
  v45 = [v43 initWithSuiteName:v44];

  if (v45)
  {
    v46 = sub_1E968();
    v47 = [v45 BOOLForKey:v46];
  }

  else
  {
    v47 = 0;
  }

  v75 = v11;
  v48 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel__offloadUnusedAppsEnabled;
  LOBYTE(v84) = v47;
  sub_1E3B8();
  v49 = v83;
  v50 = v81;
  v81(&v0[v48], v20, v83);
  v51 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel__approvedDevelopers;
  v84 = sub_1E258();
  sub_27F0(&qword_2CC70, &qword_1F9B0);
  v52 = v76;
  sub_1E3B8();
  (*(v77 + 32))(&v0[v51], v52, v78);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v54 = result;
    v78 = v42;
    v55 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel__isAppStoreInstalled;
    v56 = sub_1E968();
    v57 = [v54 applicationIsInstalled:v56];

    LOBYTE(v84) = v57;
    sub_1E3B8();
    v50(&v0[v55], v20, v49);
    v58 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel_telephonyClient;
    *&v0[OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel_telephonyClient] = 0;
    sub_1E2C8();
    sub_1E308();
    v59 = sub_F1E8();
    v60 = *&v0[v58];
    *&v0[v58] = v59;

    v61 = type metadata accessor for AppInstallationSettingsViewModel();
    v85.receiver = v0;
    v85.super_class = v61;
    v62 = objc_msgSendSuper2(&v85, "init");
    v63 = *&v62[OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel_telephonyClient];
    if (v63)
    {
      [v63 setDelegate:v62];
    }

    swift_beginAccess();
    v64 = v80;
    sub_1E2E8();
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    v65 = v75;
    (v73[0])(v79, v64, v75);
    v66 = v62;
    sub_1E3D8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1E3C8();

    swift_beginAccess();
    sub_1E2F8();
    swift_endAccess();
    v78(v64, v65);
    v67 = objc_opt_self();
    v68 = [v67 defaultCenter];
    [v68 addObserver:v66 selector:"lowPowerModeChanged" name:NSProcessInfoPowerStateDidChangeNotification object:0];

    v69 = [v67 defaultCenter];
    [v69 addObserver:v66 selector:"appWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

    v70 = [v67 defaultCenter];
    v71 = v66;
    v72 = sub_1E228();
    [v70 addObserver:v71 selector:"appDistributorsOrTrustedDevelopersChanged" name:v72 object:0];

    return v71;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_D700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_1E318();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v8 = sub_1E328();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  sub_1EA48();
  v4[16] = sub_1EA38();
  v12 = sub_1E9F8();

  return _swift_task_switch(sub_D85C, v12, v11);
}

uint64_t sub_D85C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v13 = v0[10];
  v8 = v0[8];

  v9 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel_cellularSettings;
  swift_beginAccess();
  (*(v4 + 16))(v2, &v8[v9], v3);
  sub_1E2E8();
  (*(v4 + 8))(v2, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v13 + 16))(v5, v6, v7);
  v10 = v8;
  sub_1E3D8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  swift_beginAccess();
  sub_1E2F8();
  swift_endAccess();
  (*(v13 + 8))(v6, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_DA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1EA48();
  *(v4 + 24) = sub_1EA38();
  v6 = sub_1E9F8();

  return _swift_task_switch(sub_DAF8, v6, v5);
}

uint64_t sub_DAF8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = [objc_opt_self() processInfo];
  v4 = [v3 isLowPowerModeEnabled];

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v4;
  v5 = v2;
  sub_1E3D8();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_DD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1EA48();
  v5[5] = sub_1EA38();
  v7 = sub_1E9F8();

  return _swift_task_switch(sub_DDAC, v7, v6);
}

uint64_t sub_DDAC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v5 = *(v0 + 24);

  *(swift_task_alloc() + 16) = v5;
  sub_1E8A8();
  sub_1E488();

  v3 = *(v0 + 8);

  return v3();
}

id sub_DE84(void *a1)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v3 = result;
    v4 = sub_1E968();
    [v3 applicationIsInstalled:v4];

    swift_getKeyPath();
    swift_getKeyPath();
    v5 = a1;
    sub_1E3D8();
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v5;

    sub_1E3D8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_E044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1EA48();
  v5[5] = sub_1EA38();
  v7 = sub_1E9F8();

  return _swift_task_switch(sub_E0E0, v7, v6);
}

uint64_t sub_E0E0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v5 = *(v0 + 24);

  *(swift_task_alloc() + 16) = v5;
  sub_1E8A8();
  sub_1E488();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_E1B8(void *a1)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;

  sub_1E3D8();
}

void sub_E2C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v10 = a1;
  v11 = sub_1E258();
  v12 = sub_1EA68();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_1EA48();
  v13 = v10;
  v14 = sub_1EA38();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;
  v15[5] = v11;
  sub_F71C(0, 0, v9, a4, v15);
}

id sub_E404()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppInstallationSettingsViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppInstallationSettingsViewModel()
{
  result = qword_2CE90;
  if (!qword_2CE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_E690()
{
  sub_E7E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_E830();
    if (v4 <= 0x3F)
    {
      v9 = *(v3 - 8) + 64;
      sub_E888();
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        v7 = sub_1E328();
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_E7E0()
{
  if (!qword_2CEA0)
  {
    v0 = sub_1E3E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2CEA0);
    }
  }
}

void sub_E830()
{
  if (!qword_2CEA8)
  {
    sub_1E318();
    v0 = sub_1E3E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2CEA8);
    }
  }
}

void sub_E888()
{
  if (!qword_2CEB0)
  {
    sub_2EC4(&qword_2CC70, &qword_1F9B0);
    v0 = sub_1E3E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2CEB0);
    }
  }
}

uint64_t sub_E8F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppInstallationSettingsViewModel();
  result = sub_1E3A8();
  *a1 = result;
  return result;
}

uint64_t sub_E938(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();
}

uint64_t sub_E9B4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1E318();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_C8A4(v7);
}

uint64_t sub_EAA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  *a2 = v5;
  return result;
}

uint64_t sub_EB28(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_1E3D8();
}

uint64_t sub_EBB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  *a2 = v5;
  return result;
}

uint64_t sub_EC6C(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_1E3D8();
}

uint64_t sub_EEF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_C338;

  return sub_E044(a1, v4, v5, v7, v6);
}

uint64_t sub_EFD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_F018(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_C338;

  return sub_DD10(a1, v4, v5, v7, v6);
}

uint64_t sub_F0F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_F134(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_AFF0;

  return sub_DA60(a1, v4, v5, v6);
}

void *sub_F1E8()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  wifiCapability = MobileGestalt_get_wifiCapability();

  if (!wifiCapability)
  {
    return 0;
  }

  sub_B76C(0, &qword_2CC18, OS_dispatch_queue_ptr);
  v3 = sub_1EA98();
  v4 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v3];

  v25 = 0;
  v5 = v4;
  v6 = [v4 getSubscriptionInfoWithError:&v25];
  if (v6)
  {
    v7 = v6;
    v8 = v25;
    v9 = [v7 subscriptions];

    if (!v9)
    {
      goto LABEL_29;
    }

    sub_B76C(0, &qword_2CED0, CTXPCServiceSubscriptionContext_ptr);
    v10 = sub_1E9D8();

    if (v10 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1EB38())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = sub_1EB08();
        }

        else
        {
          if (v12 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_26;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if ([v13 slotID] == &dword_0 + 1)
        {

          v17 = sub_1E968();
          v18 = [objc_allocWithZone(CTBundle) initWithBundleType:1];
          v25 = 0;
          v19 = [v5 copyCarrierBundleValue:v14 key:v17 bundleType:v18 error:&v25];

          v20 = v25;
          if (v19)
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              LOBYTE(v25) = 2;
              v21 = v20;
              sub_1E9E8();

              if (v25 != 2 && (v25 & 1) == 0)
              {
LABEL_29:

                return 0;
              }
            }

            else
            {
              v23 = v20;
            }
          }

          else
          {
            v22 = v25;
            sub_1E138();

            swift_willThrow();
          }

          return v5;
        }

        ++v12;
        if (v15 == i)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_28:

    goto LABEL_29;
  }

  v16 = v25;
  sub_1E138();

  swift_willThrow();

  return 0;
}

uint64_t sub_F570()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_1E968();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_9:
    sub_F6B4(&v8);
    return 1;
  }

  v3 = sub_1E968();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_1EAC8();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  return 1;
}

uint64_t sub_F6B4(uint64_t a1)
{
  v2 = sub_27F0(&qword_2CCE8, &qword_1FA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_11018(a3, v27 - v11);
  v13 = sub_1EA68();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_11088(v12);
  }

  else
  {
    sub_1EA58();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1E9F8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1E998() + 32;
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

      sub_11088(a3);

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

  sub_11088(a3);
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

uint64_t sub_F9DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_FA20()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  return v1;
}

uint64_t sub_FA94(uint64_t a1)
{
  v2 = v1;
  v4 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v25 - v6;
  v8 = sub_27F0(&qword_2D098, &qword_20048);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v25 - v11;
  v13 = OBJC_IVAR____TtC23AppInstallationSettings26ApprovedDeveloperViewModel__installedApps;
  v25[1] = &_swiftEmptyArrayStorage;
  sub_27F0(&unk_2CFB8, &qword_1FF70);
  sub_1E3B8();
  (*(v9 + 32))(v2 + v13, v12, v8);
  v14 = OBJC_IVAR____TtC23AppInstallationSettings26ApprovedDeveloperViewModel_approvedDeveloper;
  v15 = sub_1E288();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v2 + v14, a1, v15);
  v17 = sub_1EA68();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_1EA48();

  v18 = sub_1EA38();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v2;
  sub_F71C(0, 0, v7, &unk_20050, v19);

  v20 = objc_opt_self();
  v21 = [v20 defaultCenter];
  [v21 addObserver:v2 selector:"appWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

  v22 = [v20 defaultCenter];

  v23 = sub_1E228();
  [v22 addObserver:v2 selector:"distributorsOrDevelopersChanged" name:v23 object:0];

  (*(v16 + 8))(a1, v15);
  return v2;
}

uint64_t sub_FDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = sub_1EA48();
  v4[5] = sub_1EA38();
  v5 = sub_1E9F8();
  v4[6] = v5;
  v4[7] = v6;

  return _swift_task_switch(sub_FE9C, v5, v6);
}

uint64_t sub_FE9C()
{
  v1 = v0[3];
  sub_1E218();
  sub_1E268();
  v2 = sub_1E208();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    v5 = &_swiftEmptyArrayStorage;
    v22 = v0;
    do
    {
      v8 = *(v4 - 1);
      v7 = *v4;
      v9 = objc_allocWithZone(LSApplicationRecord);

      v10 = sub_1E968();
      v0[2] = 0;
      v11 = [v9 initWithBundleIdentifier:v10 allowPlaceholder:0 error:v0 + 2];

      v12 = v0[2];
      if (v11)
      {
        v13 = v12;
        v14 = [v11 localizedName];
        v15 = sub_1E978();
        v17 = v16;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1158C(0, v5[2] + 1, 1, v5);
        }

        v19 = v5[2];
        v18 = v5[3];
        if (v19 >= v18 >> 1)
        {
          v5 = sub_1158C((v18 > 1), v19 + 1, 1, v5);
        }

        v5[2] = v19 + 1;
        v20 = &v5[4 * v19];
        v20[4] = v15;
        v20[5] = v17;
        v20[6] = v8;
        v20[7] = v7;
        v0 = v22;
      }

      else
      {
        v6 = v12;

        sub_1E138();

        swift_willThrow();
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
  }

  v0[8] = v5;

  return _swift_task_switch(sub_100F4, 0, 0);
}

uint64_t sub_100F4()
{
  v1 = *(v0 + 32);
  *(v0 + 72) = sub_1EA38();
  v3 = sub_1E9F8();

  return _swift_task_switch(sub_101B4, v3, v2);
}

uint64_t sub_101B4()
{
  v1 = v0[9];
  v2 = v0[4];

  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = v0[8];
  v4 = v0[3];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v3;

  sub_1E3D8();

  v5 = v0[6];
  v6 = v0[7];

  return _swift_task_switch(sub_10308, v5, v6);
}

uint64_t sub_10308()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_103A0(uint64_t a1)
{
  v2 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_1EA68();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);

  v7 = sub_1EA38();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a1;
  sub_F71C(0, 0, v5, &unk_20040, v8);
}

uint64_t sub_1053C(uint64_t a1, uint64_t a2)
{
  sub_1EA38();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_116EC();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1EAF8(66);
    v8._object = 0x8000000000022840;
    v8._countAndFlagsBits = 0xD00000000000003FLL;
    sub_1E9A8(v8);
    v9._countAndFlagsBits = sub_1EB78();
    sub_1E9A8(v9);

    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    sub_1E9A8(v10);
    result = sub_1EB28();
    __break(1u);
  }

  return result;
}

uint64_t sub_10750()
{
  v1 = sub_1E8B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E8D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10E38();
  v11 = sub_1EA98();
  aBlock[4] = sub_10E84;
  v16 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_F9DC;
  aBlock[3] = &unk_29598;
  v12 = _Block_copy(aBlock);

  sub_1E8C8();
  v14[1] = &_swiftEmptyArrayStorage;
  sub_10EA4();
  sub_27F0(&qword_2CC28, &unk_1FFB0);
  sub_10EFC();
  sub_1EAD8();
  sub_1EAA8();
  _Block_release(v12);

  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_109BC(uint64_t a1)
{
  v2 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_1EA68();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);

  v7 = sub_1EA38();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a1;
  sub_F71C(0, 0, v5, &unk_1FFC8, v8);
}

uint64_t sub_10B8C()
{
  v1 = OBJC_IVAR____TtC23AppInstallationSettings26ApprovedDeveloperViewModel__installedApps;
  v2 = sub_27F0(&qword_2D098, &qword_20048);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23AppInstallationSettings26ApprovedDeveloperViewModel_approvedDeveloper;
  v4 = sub_1E288();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for ApprovedDeveloperViewModel()
{
  result = qword_2CFA0;
  if (!qword_2CFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10CC8()
{
  sub_10D94();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1E288();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10D94()
{
  if (!qword_2CFB0)
  {
    sub_2EC4(&unk_2CFB8, &qword_1FF70);
    v0 = sub_1E3E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2CFB0);
    }
  }
}

uint64_t sub_10DF8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ApprovedDeveloperViewModel();
  result = sub_1E3A8();
  *a1 = result;
  return result;
}

unint64_t sub_10E38()
{
  result = qword_2CC18;
  if (!qword_2CC18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2CC18);
  }

  return result;
}

uint64_t sub_10E8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10EA4()
{
  result = qword_2CC20;
  if (!qword_2CC20)
  {
    sub_1E8B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CC20);
  }

  return result;
}

unint64_t sub_10EFC()
{
  result = qword_2CC30;
  if (!qword_2CC30)
  {
    sub_2EC4(&qword_2CC28, &unk_1FFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CC30);
  }

  return result;
}

uint64_t sub_10F64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_C338;

  return sub_FDCC(a1, v4, v5, v6);
}

uint64_t sub_11018(uint64_t a1, uint64_t a2)
{
  v4 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11088(uint64_t a1)
{
  v2 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_110F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  *a2 = v5;
  return result;
}

uint64_t sub_11170(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E3D8();
}

uint64_t sub_111EC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_112E4;

  return v7(a1);
}

uint64_t sub_112E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_113DC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_11414(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_C338;

  return sub_111EC(a1, v5);
}

uint64_t sub_114CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_AFF0;

  return sub_111EC(a1, v5);
}

void *sub_1158C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_27F0(&qword_2D088, &qword_20030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_27F0(&qword_2D090, &qword_20038);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_116EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_11714(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_AFF0;

  return sub_FDCC(a1, v4, v5, v6);
}

uint64_t sub_117C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_11808(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_27F0(&qword_2D0A0, &qword_201C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_11914(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_27F0(&qword_2D0A8, &qword_20060);
  v10 = *(sub_1E288() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1E288() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_11AF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1E288();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  *a2 = swift_getKeyPath();
  sub_27F0(&qword_2D0B0, &qword_200A0);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for ApprovedDeveloperView();
  v8 = v7[5];
  *(a2 + v8) = swift_getKeyPath();
  sub_27F0(&qword_2D0B8, &qword_200D8);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v7[7];
  v25 = 0;
  sub_1E798();
  v10 = v27;
  *v9 = v26;
  *(v9 + 1) = v10;
  v11 = a2 + v7[8];
  v25 = 0;
  sub_1E798();
  v12 = v27;
  *v11 = v26;
  *(v11 + 1) = v12;
  v13 = a2 + v7[10];
  sub_1E378();
  v14 = v7[11];
  v15 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  [v15 setScale:v18];
  [v15 setDrawBorder:1];
  *(a2 + v14) = v15;
  (*(v5 + 16))(a2 + v7[9], a1, v4);
  v19 = *(v5 + 32);
  v19(&v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v4);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  result = (v19)(v21 + v20, &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v23 = a2 + v7[6];
  *v23 = sub_16D78;
  *(v23 + 1) = v21;
  v23[16] = 0;
  return result;
}

uint64_t sub_11E10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E588();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27F0(&qword_2D0B0, &qword_200A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_BC8C(v2, &v17 - v11, &qword_2D0B0, &qword_200A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E478();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_1EA88();
    v16 = sub_1E628();
    sub_1E358();

    sub_1E578();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_12010@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E588();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27F0(&qword_2D0B8, &qword_200D8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ApprovedDeveloperView();
  sub_BC8C(v1 + *(v12 + 20), v11, &qword_2D0B8, &qword_200D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E2A8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1EA88();
    v16 = sub_1E628();
    sub_1E358();

    sub_1E578();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_12218(uint64_t a1)
{
  v2 = sub_1E288();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  v7 = type metadata accessor for ApprovedDeveloperViewModel();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_FA94(v5);
}

uint64_t sub_122F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_1E158();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v51 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_27F0(&qword_2D1A8, &qword_20158);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v38 - v9;
  v46 = sub_27F0(&qword_2D1B0, &qword_20160);
  v47 = *(v46 - 8);
  v11 = *(v47 + 64);
  __chkstk_darwin(v46);
  v43 = v38 - v12;
  v48 = sub_27F0(&qword_2D1B8, &qword_20168);
  v49 = *(v48 - 8);
  v13 = *(v49 + 64);
  __chkstk_darwin(v48);
  v53 = v38 - v14;
  v56 = v1;
  sub_27F0(&qword_2D1C0, &unk_20170);
  v52 = &protocol conformance descriptor for TupleView<A>;
  sub_BC44(&qword_2D1C8, &qword_2D1C0, &unk_20170);
  sub_1E658();
  v15 = type metadata accessor for ApprovedDeveloperView();
  v16 = *(v15 + 36);
  v45 = v15;
  v44 = v16;
  v57 = sub_1E278();
  v58 = v17;
  v18 = sub_BC44(&qword_2D1D0, &qword_2D1A8, &qword_20158);
  v39 = sub_AE7C();
  sub_1E728();

  (*(v7 + 8))(v10, v6);
  v19 = sub_1E278();
  sub_1D878(v19, v20);

  v67 = sub_1E988();
  v68 = v21;
  v22 = (v1 + *(v15 + 28));
  v23 = *v22;
  v24 = *(v22 + 1);
  v65 = v23;
  v66 = v24;
  v42 = sub_27F0(&qword_2CBC8, &qword_1F890);
  sub_1E7C8();
  v38[1] = v59;
  v55 = v1;
  v40 = sub_27F0(&qword_2D1D8, &qword_20180);
  v57 = v6;
  v58 = &type metadata for String;
  v59 = v18;
  v25 = v39;
  v60 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_BC44(&qword_2D1E0, &qword_2D1D8, &qword_20180);
  v27 = v46;
  v28 = v43;
  sub_1E738();

  (*(v47 + 8))(v28, v27);
  v29 = sub_1E278();
  sub_1D878(v29, v30);

  v67 = sub_1E988();
  v68 = v31;
  v32 = (v2 + *(v45 + 32));
  v33 = *v32;
  v34 = *(v32 + 1);
  v65 = v33;
  v66 = v34;
  sub_1E7C8();
  LODWORD(v51) = v59;
  v54 = v2;
  sub_27F0(&qword_2D1E8, &qword_20188);
  v57 = v27;
  v58 = &type metadata for String;
  v59 = v40;
  v60 = &type metadata for Text;
  v61 = OpaqueTypeConformance2;
  v62 = v25;
  v63 = v41;
  v64 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  sub_BC44(&qword_2D1F0, &qword_2D1E8, &qword_20188);
  v35 = v48;
  v36 = v53;
  sub_1E738();

  return (*(v49 + 8))(v36, v35);
}

uint64_t sub_12A18@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v82 = a2;
  v3 = sub_27F0(&qword_2D218, &qword_201E0);
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  __chkstk_darwin(v3);
  v72 = v71 - v5;
  v6 = sub_27F0(&qword_2D220, &qword_201E8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v85 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = v71 - v10;
  v11 = sub_27F0(&qword_2D228, &qword_201F0);
  v80 = *(v11 - 8);
  v81 = v11;
  v12 = *(v80 + 64);
  v13 = __chkstk_darwin(v11);
  v84 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v86 = v71 - v15;
  v16 = sub_1E158();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_27F0(&qword_2D230, &qword_201F8);
  v75 = *(v18 - 8);
  v76 = v18;
  v19 = *(v75 + 64);
  v20 = __chkstk_darwin(v18);
  v83 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v71 - v22;
  sub_1EA48();
  v74 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = type metadata accessor for ApprovedDeveloperView();
  v71[1] = *(v24 + 36);
  v25 = sub_1E278();
  sub_1D344(v25, v26);

  v87 = sub_1E988();
  v88 = v27;
  v71[0] = sub_AE7C();
  v28 = sub_1E698();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v87 = v28;
  v88 = v30;
  v89 = v32 & 1;
  v90 = v34;
  v35 = sub_1E888();
  __chkstk_darwin(v35);
  v71[-2] = a1;
  sub_27F0(&qword_2D200, &qword_20198);
  sub_BC44(&qword_2D238, &qword_2D200, &qword_20198);
  sub_1E878();
  v36 = (a1 + *(v24 + 24));
  v37 = *v36;
  v38 = v36[1];
  v39 = *(v36 + 16);
  type metadata accessor for ApprovedDeveloperViewModel();
  sub_18570(&qword_2D150, type metadata accessor for ApprovedDeveloperViewModel);
  sub_1E438();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  v40 = *(v87 + 16);

  if (v40)
  {
    __chkstk_darwin(v41);
    v71[-2] = a1;
    sub_1EA38();
    sub_1E9F8();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v42 = sub_1E278();
    sub_1D5DC(v42, v43);

    v87 = sub_1E988();
    v88 = v44;
    v45 = sub_1E698();
    v47 = v46;
    v49 = v48;
    v51 = v50;

    v87 = v45;
    v88 = v47;
    v89 = v49 & 1;
    v90 = v51;
    sub_27F0(&qword_2D240, &qword_20248);
    sub_183C8();
    v52 = v72;
    sub_1E858();
    v53 = v77;
    v54 = v78;
    v55 = v52;
    v56 = v79;
    (*(v78 + 32))(v77, v55, v79);
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v53 = v77;
    v54 = v78;
    v56 = v79;
  }

  (*(v54 + 56))(v53, v57, 1, v56);
  v58 = v75;
  v59 = v76;
  v60 = *(v75 + 16);
  v61 = v83;
  v73 = v23;
  v60(v83, v23, v76);
  v62 = v80;
  v63 = v81;
  v79 = *(v80 + 16);
  v79(v84, v86, v81);
  sub_BC8C(v53, v85, &qword_2D220, &qword_201E8);
  v64 = v82;
  v60(v82, v61, v59);
  v65 = sub_27F0(&qword_2D260, &qword_20258);
  v66 = v84;
  v79(&v64[*(v65 + 48)], v84, v63);
  v67 = v85;
  sub_BC8C(v85, &v64[*(v65 + 64)], &qword_2D220, &qword_201E8);
  sub_18478(v53);
  v68 = *(v62 + 8);
  v68(v86, v63);
  v69 = *(v58 + 8);
  v69(v73, v59);
  sub_18478(v67);
  v68(v66, v63);
  v69(v83, v59);
}

uint64_t sub_132B8()
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_13348(uint64_t a1)
{
  v2 = type metadata accessor for ApprovedDeveloperView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_17450(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_174BC(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1E7E8();
}

uint64_t sub_134DC(uint64_t a1)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for ApprovedDeveloperView();
  v3 = (a1 + v2[6]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for ApprovedDeveloperViewModel();
  sub_18570(&qword_2D150, type metadata accessor for ApprovedDeveloperViewModel);
  sub_1E438();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  v7 = *(v11 + 16);

  if (v7)
  {
    v8 = v2[7];
  }

  else
  {
    v8 = v2[8];
  }

  v9 = (a1 + v8);
  v12 = *v9;
  v13 = *(v9 + 1);
  sub_27F0(&qword_2CBC8, &qword_1F890);
  sub_1E7B8();
}

uint64_t sub_136A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1E8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1E148();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E958();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1E158();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1EA48();
  v28[1] = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v13 = sub_286C(v4, qword_2D318);
  (*(v5 + 16))(v8, v13, v4);
  sub_1E1D8();
  sub_1E178();
  v29 = sub_1E988();
  v30 = v14;
  sub_AE7C();
  v15 = sub_1E698();
  v17 = v16;
  v19 = v18;
  v29 = sub_1E758();
  v20 = sub_1E668();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_2E3C(v15, v17, v19 & 1);

  *a1 = v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v26;
  return result;
}

uint64_t sub_139F8(uint64_t a1)
{
  v2 = type metadata accessor for ApprovedDeveloperView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1 + *(v2 + 24);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  type metadata accessor for ApprovedDeveloperViewModel();
  sub_18570(&qword_2D150, type metadata accessor for ApprovedDeveloperViewModel);
  sub_1E438();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  swift_getKeyPath();
  sub_17450(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_174BC(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_27F0(&unk_2CFB8, &qword_1FF70);
  sub_27F0(&qword_2D258, &qword_20250);
  sub_BC44(&qword_2D268, &unk_2CFB8, &qword_1FF70);
  sub_BC44(&qword_2D250, &qword_2D258, &qword_20250);
  sub_1E848();
}

uint64_t sub_13D00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v13 = sub_1E348();
  v5 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v12[1] = v12;
  __chkstk_darwin(isCurrentExecutor);
  v12[-6] = v6;
  v12[-5] = v7;
  v12[-4] = v8;
  v12[-3] = v9;
  v12[-2] = a2;
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E338();

  sub_27F0(&qword_2D270, &qword_20288);
  sub_BC44(&qword_2D278, &qword_2D270, &qword_20288);
  sub_18570(&qword_2D280, &type metadata accessor for ApplicationSettingsView);
  sub_1E498();
}

uint64_t sub_13F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a4 = sub_1E5B8();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = sub_27F0(&qword_2D288, &qword_20290);
  sub_14064(a1, a2, a3, (a4 + *(v8 + 44)));
}

uint64_t sub_14064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, _BYTE *a4@<X8>)
{
  v39 = a4;
  v41 = sub_27F0(&qword_2D290, &qword_20298);
  v7 = *(v41 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v41);
  v40 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v36[-v11];
  sub_1EA48();
  v38 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = objc_allocWithZone(ISIcon);
  v14 = sub_1E968();
  [v13 initWithBundleIdentifier:v14];

  v15 = *(a3 + *(type metadata accessor for ApprovedDeveloperView() + 44));
  sub_1E2B8();
  v42 = a1;
  v43 = a2;
  sub_AE7C();

  v16 = sub_1E698();
  v18 = v17;
  v20 = v19;
  v21 = [objc_opt_self() labelColor];
  v42 = sub_1E748();
  v22 = sub_1E668();
  v24 = v23;
  v37 = v25;
  v27 = v26;
  sub_2E3C(v16, v18, v20 & 1);

  v28 = v7[2];
  v30 = v40;
  v29 = v41;
  v28(v40, v12, v41);
  v31 = v39;
  v28(v39, v30, v29);
  v32 = &v31[*(sub_27F0(&qword_2D298, &unk_202A0) + 48)];
  *v32 = v22;
  *(v32 + 1) = v24;
  v33 = v37;
  LOBYTE(v16) = v37 & 1;
  v32[16] = v37 & 1;
  *(v32 + 3) = v27;
  sub_2838(v22, v24, v33 & 1);
  v34 = v7[1];

  v34(v12, v29);
  sub_2E3C(v22, v24, v16);

  v34(v30, v29);
}

uint64_t sub_143B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v69 = a1;
  v67 = a2;
  v2 = sub_27F0(&qword_2D1F8, &qword_20190);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v66 = v55 - v4;
  v5 = type metadata accessor for ApprovedDeveloperView();
  v59 = *(v5 - 8);
  v6 = *(v59 + 64);
  __chkstk_darwin(v5 - 8);
  v70 = v7;
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1E8();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1E148();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E958();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_1E158();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v57 = v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_27F0(&qword_2D200, &qword_20198);
  v60 = *(v58 - 8);
  v21 = *(v60 + 64);
  v22 = __chkstk_darwin(v58);
  v65 = v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v64 = v55 - v25;
  v26 = __chkstk_darwin(v24);
  v63 = v55 - v27;
  v28 = __chkstk_darwin(v26);
  v61 = v55 - v29;
  v30 = __chkstk_darwin(v28);
  v71 = v55 - v31;
  __chkstk_darwin(v30);
  v72 = v55 - v32;
  sub_1EA48();
  v62 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v33 = sub_286C(v11, qword_2D318);
  v34 = *(v12 + 16);
  v55[1] = v12 + 16;
  v68 = v34;
  v34(v15, v33, v11);
  sub_1E1D8();
  sub_1E178();
  v73 = sub_1E988();
  v74 = v35;
  sub_17450(v69, v8);
  v56 = v11;
  v36 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v37 = swift_allocObject();
  sub_174BC(v8, v37 + v36);
  v59 = sub_AE7C();
  sub_1E808();
  sub_1E8F8();
  v68(v15, v33, v11);
  sub_1E1D8();
  sub_1E178();
  v73 = sub_1E988();
  v74 = v38;
  sub_17450(v69, v8);
  v39 = swift_allocObject();
  sub_174BC(v8, v39 + v36);
  v40 = v71;
  sub_1E808();
  sub_1E8F8();
  v68(v15, v33, v56);
  sub_1E1D8();
  sub_1E178();
  v73 = sub_1E988();
  v74 = v41;
  v42 = v66;
  sub_1E3F8();
  v43 = sub_1E408();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v44 = v61;
  sub_1E7F8();
  v45 = v60;
  v46 = *(v60 + 16);
  v47 = v63;
  v48 = v58;
  v46(v63, v72, v58);
  v49 = v64;
  v46(v64, v40, v48);
  v50 = v65;
  v46(v65, v44, v48);
  v51 = v67;
  v46(v67, v47, v48);
  v52 = sub_27F0(&qword_2D210, &qword_201C8);
  v46(&v51[*(v52 + 48)], v49, v48);
  v46(&v51[*(v52 + 64)], v50, v48);
  v53 = *(v45 + 8);
  v53(v44, v48);
  v53(v71, v48);
  v53(v72, v48);
  v53(v50, v48);
  v53(v49, v48);
  v53(v47, v48);
}

uint64_t sub_14C64(uint64_t a1)
{
  v2 = type metadata accessor for ApprovedDeveloperView();
  v20[0] = *(v2 - 8);
  v3 = *(v20[0] + 64);
  v4 = __chkstk_darwin(v2);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v20 - v9;
  sub_1EA48();
  v20[1] = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(v2 + 36);
  sub_1E268();
  sub_1E248();

  v12 = sub_1E268();
  v14 = v13;
  v15 = sub_1EA68();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  sub_17450(a1, v6);
  v16 = sub_1EA38();
  v17 = (*(v20[0] + 80) + 49) & ~*(v20[0] + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = &protocol witness table for MainActor;
  *(v18 + 32) = v12;
  *(v18 + 40) = v14;
  *(v18 + 48) = 1;
  sub_174BC(v6, v18 + v17);
  sub_F71C(0, 0, v10, &unk_201D0, v18);
}

uint64_t sub_15094@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1E8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1E148();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E958();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1E158();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v13 = sub_286C(v4, qword_2D318);
  (*(v5 + 16))(v8, v13, v4);
  sub_1E1D8();
  sub_1E178();
  v23[1] = sub_1E988();
  v23[2] = v14;
  sub_AE7C();
  v15 = sub_1E698();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  return result;
}

uint64_t sub_15384@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a1;
  v59 = a2;
  v2 = sub_27F0(&qword_2D1F8, &qword_20190);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v58 = &v46 - v4;
  v5 = type metadata accessor for ApprovedDeveloperView();
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  __chkstk_darwin(v5 - 8);
  v49 = v7;
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1E8();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1E148();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E958();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_1E158();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_27F0(&qword_2D200, &qword_20198);
  v53 = *(v20 - 8);
  v21 = *(v53 + 64);
  v22 = __chkstk_darwin(v20);
  v57 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v56 = &v46 - v25;
  v26 = __chkstk_darwin(v24);
  v54 = &v46 - v27;
  __chkstk_darwin(v26);
  v52 = &v46 - v28;
  sub_1EA48();
  v55 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v29 = sub_286C(v11, qword_2D318);
  v47 = *(v12 + 16);
  v48 = v29;
  v47(v15, v29, v11);
  sub_1E1D8();
  sub_1E178();
  v60 = sub_1E988();
  v61 = v30;
  sub_17450(v51, v8);
  v31 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v32 = swift_allocObject();
  sub_174BC(v8, v32 + v31);
  sub_AE7C();
  v33 = v52;
  sub_1E808();
  sub_1E8F8();
  v47(v15, v48, v11);
  sub_1E1D8();
  sub_1E178();
  v60 = sub_1E988();
  v61 = v34;
  v35 = v58;
  sub_1E3F8();
  v36 = sub_1E408();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = v54;
  sub_1E7F8();
  v38 = v53;
  v39 = *(v53 + 16);
  v40 = v56;
  v39(v56, v33, v20);
  v41 = v57;
  v39(v57, v37, v20);
  v42 = v59;
  v39(v59, v40, v20);
  v43 = sub_27F0(&qword_2D208, &unk_201A0);
  v39(&v42[*(v43 + 48)], v41, v20);
  v44 = *(v38 + 8);
  v44(v37, v20);
  v44(v33, v20);
  v44(v41, v20);
  v44(v40, v20);
}

uint64_t sub_15A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a3;
  v24 = a4;
  v5 = type metadata accessor for ApprovedDeveloperView();
  v23[0] = *(v5 - 8);
  v6 = *(v23[0] + 64);
  v7 = __chkstk_darwin(v5);
  __chkstk_darwin(v7);
  v9 = v23 - v8;
  v10 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v23 - v12;
  sub_1EA48();
  v25 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(v5 + 36);
  sub_1E268();
  sub_1E248();

  v15 = sub_1E268();
  v17 = v16;
  v18 = sub_1EA68();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  sub_17450(a1, v9);
  v19 = sub_1EA38();
  v20 = (*(v23[0] + 80) + 49) & ~*(v23[0] + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = &protocol witness table for MainActor;
  *(v21 + 32) = v15;
  *(v21 + 40) = v17;
  *(v21 + 48) = 0;
  sub_174BC(v9, v21 + v20);
  sub_F71C(0, 0, v13, v24, v21);
}

uint64_t sub_15E98()
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_15F2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1E8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1E148();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E958();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1E158();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v13 = sub_286C(v4, qword_2D318);
  (*(v5 + 16))(v8, v13, v4);
  sub_1E1D8();
  sub_1E178();
  v23[1] = sub_1E988();
  v23[2] = v14;
  sub_AE7C();
  v15 = sub_1E698();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  return result;
}

uint64_t sub_1621C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 32) = a5;
  *(v7 + 40) = a7;
  *(v7 + 216) = a6;
  *(v7 + 24) = a4;
  v8 = sub_1E478();
  *(v7 + 48) = v8;
  v9 = *(v8 - 8);
  *(v7 + 56) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 64) = swift_task_alloc();
  v11 = sub_1E2A8();
  *(v7 + 72) = v11;
  v12 = *(v11 - 8);
  *(v7 + 80) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  v14 = sub_1E288();
  *(v7 + 96) = v14;
  v15 = *(v14 - 8);
  *(v7 + 104) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = sub_1EA48();
  *(v7 + 128) = sub_1EA38();
  v18 = sub_1E9F8();
  *(v7 + 136) = v18;
  *(v7 + 144) = v17;

  return _swift_task_switch(sub_163D4, v18, v17);
}

uint64_t sub_163D4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  *(v0 + 16) = sub_1E238();
  v3 = (v0 + 16);

  v4 = sub_179A0((v0 + 16), v1, v2);

  v5 = *(v0 + 16);
  v6 = v5[2];
  if (v4 > v6)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v4 < 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (__OFADD__(v6, v4 - v6))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    v4 = sub_11808(0, *(v4 + 16) + 1, 1, v4);
    goto LABEL_20;
  }

  v7 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v4 > v5[3] >> 1)
  {
    if (v6 <= v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = v6;
    }

    v5 = sub_11914(isUniquelyReferenced_nonNull_native, v9, 1, v5);
    *v3 = v5;
  }

  *(v0 + 152) = v5;
  sub_17DD8(v4, v6, 0);
  *(v0 + 160) = v5[2];
  v10 = sub_1E238();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v0 + 104);
    sub_176B0(0, v11, 0);
    v4 = _swiftEmptyArrayStorage;
    v13 = *(v12 + 16);
    v12 += 16;
    v14 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v54 = *(v12 + 56);
    v55 = v13;
    v15 = (v12 - 8);
    do
    {
      v16 = *(v0 + 120);
      v55(*(v0 + 112), v14, *(v0 + 96));
      sub_1EA38();
      sub_1E9F8();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v17 = *(v0 + 112);
      v18 = *(v0 + 96);
      v19 = sub_1E268();
      v21 = v20;
      (*v15)(v17, v18);

      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_176B0((v22 > 1), v23 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      v24 = &_swiftEmptyArrayStorage[2 * v23];
      *(v24 + 4) = v19;
      *(v24 + 5) = v21;
      v14 += v54;
      --v11;
    }

    while (v11);
  }

  else
  {

    v4 = _swiftEmptyArrayStorage;
  }

  v25 = *(v0 + 32);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_20:
  v26 = *(v4 + 16);
  *(v0 + 168) = v26;
  v27 = *(v4 + 24);
  v28 = v26 + 1;
  if (v26 >= v27 >> 1)
  {
    v4 = sub_11808((v27 > 1), v26 + 1, 1, v4);
  }

  *(v0 + 176) = v4;
  v30 = *(v0 + 24);
  v29 = *(v0 + 32);
  *(v4 + 16) = v28;
  v31 = v4 + 16 * v26;
  *(v31 + 32) = v30;
  *(v31 + 40) = v29;
  *(v0 + 217) = 0;
  *(v0 + 184) = 0;
  v32 = *(v0 + 176);
  if (*(v32 + 16))
  {
    v33 = 0;
    while (1)
    {
      v34 = *(v0 + 216);
      v35 = v32 + 16 * v33;
      v28 = *(v35 + 32);
      v4 = *(v35 + 40);
      *(v0 + 192) = v4;
      if ((v34 & 1) == 0)
      {
        break;
      }

      if (v28 != *(v0 + 24) || v4 != *(v0 + 32))
      {
        if ((sub_1EB48() & 1) == 0)
        {
          break;
        }

        v33 = *(v0 + 184);
      }

      if (v33 == *(v0 + 168))
      {
        v39 = *(v0 + 217);
        v40 = *(v0 + 176);
        v41 = *(v0 + 152);
        v42 = *(v0 + 160);
        v43 = *(v0 + 128);

        v44 = *(v0 + 40);
        if ((v39 & 1) != 0 || v42)
        {
          v45 = (v0 + 64);
          sub_11E10(*(v0 + 64));
          sub_1E468();
          v46 = 48;
          v47 = 56;
        }

        else
        {
          v45 = (v0 + 88);
          sub_12010(*(v0 + 88));
          sub_1E298();
          v46 = 72;
          v47 = 80;
        }

        v48 = *v45;
        v49 = *(v0 + 112);
        v50 = *(v0 + 88);
        v51 = *(v0 + 64);
        (*(*(v0 + v47) + 8))(v48, *(v0 + v46));

        v52 = *(v0 + 8);

        return v52();
      }

      *(v0 + 184) = ++v33;
      v32 = *(v0 + 176);
      if (v33 >= *(v32 + 16))
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
LABEL_33:
    __break(1u);
  }

  sub_1E218();
  v37 = async function pointer to static AppLibrary.associatedApps(developerID:)[1];

  v38 = swift_task_alloc();
  *(v0 + 200) = v38;
  *v38 = v0;
  v38[1] = sub_168B8;

  return static AppLibrary.associatedApps(developerID:)(v28, v4);
}

uint64_t sub_168B8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 208) = a1;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);

  return _swift_task_switch(sub_16A04, v6, v5);
}

uint64_t sub_16A04()
{
  v1 = *(*(v0 + 208) + 16);

  if (!v1)
  {
    goto LABEL_13;
  }

  v4 = *(v0 + 184);
  if (v4 == *(v0 + 168))
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 152);
    v7 = *(v0 + 128);
  }

  else
  {
    *(v0 + 217) = 1;
    do
    {
      v12 = v4 + 1;
      *(v0 + 184) = v12;
      v13 = *(v0 + 176);
      if (v12 >= *(v13 + 16))
      {
        __break(1u);
        return static AppLibrary.associatedApps(developerID:)(v2, v3);
      }

      v14 = *(v0 + 216);
      v15 = v13 + 16 * v12;
      v17 = *(v15 + 32);
      v16 = *(v15 + 40);
      *(v0 + 192) = v16;
      if ((v14 & 1) == 0 || (v17 == *(v0 + 24) ? (v18 = v16 == *(v0 + 32)) : (v18 = 0), !v18 && (v2 = sub_1EB48(), (v2 & 1) == 0)))
      {
        sub_1E218();
        v31 = async function pointer to static AppLibrary.associatedApps(developerID:)[1];

        v32 = swift_task_alloc();
        *(v0 + 200) = v32;
        *v32 = v0;
        v32[1] = sub_168B8;
        v2 = v17;
        v3 = v16;

        return static AppLibrary.associatedApps(developerID:)(v2, v3);
      }

LABEL_13:
      v4 = *(v0 + 184);
    }

    while (v4 != *(v0 + 168));
    v19 = *(v0 + 217);
    v20 = *(v0 + 176);
    v21 = *(v0 + 152);
    v22 = *(v0 + 160);
    v23 = *(v0 + 128);

    if ((v19 & 1) == 0 && !v22)
    {
      v8 = (v0 + 88);
      v24 = *(v0 + 40);
      sub_12010(*(v0 + 88));
      sub_1E298();
      v10 = 72;
      v11 = 80;
      goto LABEL_17;
    }
  }

  v8 = (v0 + 64);
  v9 = *(v0 + 40);
  sub_11E10(*(v0 + 64));
  sub_1E468();
  v10 = 48;
  v11 = 56;
LABEL_17:
  v25 = *v8;
  v26 = *(v0 + 112);
  v27 = *(v0 + 88);
  v28 = *(v0 + 64);
  (*(*(v0 + v11) + 8))(v25, *(v0 + v10));

  v29 = *(v0 + 8);

  return v29();
}

uint64_t type metadata accessor for ApprovedDeveloperView()
{
  result = qword_2D128;
  if (!qword_2D128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_16CF0()
{
  v1 = sub_1E288();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_16D78()
{
  v1 = *(sub_1E288() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_12218(v2);
}

uint64_t sub_16DEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_27F0(&qword_2D0C0, &qword_200E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_27F0(&qword_2D0C8, &qword_200E8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_1E288();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[9];
    goto LABEL_9;
  }

  v15 = sub_1E388();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[10];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[11]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_16FB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_27F0(&qword_2D0C0, &qword_200E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_27F0(&qword_2D0C8, &qword_200E8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1E288();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[9];
      }

      else
      {
        result = sub_1E388();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[11]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[10];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_17164()
{
  sub_17298(319, &qword_2D138, &type metadata accessor for DismissAction);
  if (v0 <= 0x3F)
  {
    sub_17298(319, &qword_2D140, &type metadata accessor for ClearSettingsNavigationPathAction);
    if (v1 <= 0x3F)
    {
      sub_172EC();
      if (v2 <= 0x3F)
      {
        sub_17380();
        if (v3 <= 0x3F)
        {
          sub_1E288();
          if (v4 <= 0x3F)
          {
            sub_1E388();
            if (v5 <= 0x3F)
            {
              sub_173D0();
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

void sub_17298(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E428();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_172EC()
{
  if (!qword_2D148)
  {
    type metadata accessor for ApprovedDeveloperViewModel();
    sub_18570(&qword_2D150, type metadata accessor for ApprovedDeveloperViewModel);
    v0 = sub_1E448();
    if (!v1)
    {
      atomic_store(v0, &qword_2D148);
    }
  }
}

void sub_17380()
{
  if (!qword_2D158)
  {
    v0 = sub_1E7D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2D158);
    }
  }
}

unint64_t sub_173D0()
{
  result = qword_2D160;
  if (!qword_2D160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2D160);
  }

  return result;
}

uint64_t sub_17450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApprovedDeveloperView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_174BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApprovedDeveloperView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_17544(uint64_t a1)
{
  v2 = type metadata accessor for ApprovedDeveloperView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_175A4(uint64_t a1)
{
  v4 = *(type metadata accessor for ApprovedDeveloperView() - 8);
  v5 = (*(v4 + 80) + 49) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_C338;

  return sub_1621C(a1, v6, v7, v8, v9, v10, v1 + v5);
}

char *sub_176B0(char *a1, int64_t a2, char a3)
{
  result = sub_176D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_176D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_27F0(&qword_2D0A0, &qword_201C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_177F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *(a1 + 16);
  if (!v13)
  {
    return 0;
  }

  v6 = *(sub_1E288() - 8);
  v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v12 = *(v6 + 72);
  sub_1EA48();
  v8 = 0;
  while (1)
  {
    sub_1EA38();
    sub_1E9F8();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (sub_1E268() == a2 && v9 == a3)
    {
      break;
    }

    v10 = sub_1EB48();

    if (v10)
    {
      return v8;
    }

    ++v8;
    v7 += v12;
    if (v13 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_179A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E288();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v43 - v13;
  __chkstk_darwin(v12);
  v16 = &v43 - v15;
  v17 = *a1;
  v18 = v59;
  result = sub_177F0(*a1, a2, a3);
  if (!v18)
  {
    v21 = v17;
    v59 = v16;
    v56 = a2;
    v57 = a3;
    v48 = 0;
    if (v20)
    {
      return *(v17 + 16);
    }

    v46 = v11;
    v47 = v14;
    v45 = a1;
    v50 = result;
    v22 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v23 = v21;
      v25 = (v21 + 16);
      v24 = *(v21 + 16);
      v26 = v59;
      if (v22 == v24)
      {
        return v50;
      }

      v51 = v7;
      v52 = (v7 + 8);
      v44 = (v7 + 40);
      v49 = v7 + 16;
      while (v22 < v24)
      {
        v53 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v27 = *(v7 + 72);
        v28 = *(v7 + 16);
        v58 = v27 * v22;
        v54 = v28;
        v55 = v23 + v53;
        v28(v26, v23 + v53 + v27 * v22, v6);
        sub_1EA48();
        sub_1EA38();
        sub_1E9F8();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v26 = v59;
        if (sub_1E268() == v56 && v29 == v57)
        {

          result = (*v52)(v26, v6);
          v7 = v51;
        }

        else
        {
          v30 = v23;
          v31 = sub_1EB48();

          result = (*v52)(v26, v6);
          if (v31)
          {
            v7 = v51;
            v26 = v59;
            v23 = v30;
          }

          else
          {
            v32 = v50;
            if (v22 == v50)
            {
              v7 = v51;
            }

            else
            {
              if ((v50 & 0x8000000000000000) != 0)
              {
                goto LABEL_29;
              }

              v33 = *v25;
              if (v50 >= *v25)
              {
                goto LABEL_30;
              }

              v34 = v30;
              v35 = v27 * v50;
              v37 = v54;
              v36 = v55;
              v38 = v47;
              result = (v54)(v47, v55 + v35, v6);
              if (v22 >= v33)
              {
                goto LABEL_31;
              }

              v39 = v36 + v58;
              v40 = v46;
              v37(v46, v39, v6);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v34 = sub_177DC(v34);
              }

              v7 = v51;
              v30 = v34;
              v41 = v34 + v53;
              v42 = *v44;
              result = (*v44)(&v41[v35], v40, v6);
              if (v22 >= v30[2])
              {
                goto LABEL_32;
              }

              result = v42(&v41[v58], v38, v6);
              *v45 = v30;
              v32 = v50;
            }

            v26 = v59;
            v23 = v30;
            v50 = v32 + 1;
          }
        }

        ++v22;
        v25 = v23 + 2;
        v24 = v23[2];
        if (v22 == v24)
        {
          return v50;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_17DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_1E288();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_17FDC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ApprovedDeveloperView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_18050(uint64_t a1)
{
  v4 = *(type metadata accessor for ApprovedDeveloperView() - 8);
  v5 = (*(v4 + 80) + 49) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_AFF0;

  return sub_1621C(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1815C()
{
  v1 = type metadata accessor for ApprovedDeveloperView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 49) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 40);

  v7 = (v0 + v3);
  sub_27F0(&qword_2D0B0, &qword_200A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E478();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
  }

  else
  {
    v9 = *v7;
  }

  v10 = v1[5];
  sub_27F0(&qword_2D0B8, &qword_200D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E2A8();
    (*(*(v11 - 8) + 8))(&v7[v10], v11);
  }

  else
  {
    v12 = *&v7[v10];
  }

  v13 = &v7[v1[6]];
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = v13[16];
  sub_174B4();
  v17 = *&v7[v1[7] + 8];

  v18 = *&v7[v1[8] + 8];

  v19 = v1[9];
  v20 = sub_1E288();
  (*(*(v20 - 8) + 8))(&v7[v19], v20);
  v21 = v1[10];
  v22 = sub_1E388();
  (*(*(v22 - 8) + 8))(&v7[v21], v22);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_183C8()
{
  result = qword_2D248;
  if (!qword_2D248)
  {
    sub_2EC4(&qword_2D240, &qword_20248);
    sub_BC44(&qword_2D250, &qword_2D258, &qword_20250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D248);
  }

  return result;
}

uint64_t sub_18478(uint64_t a1)
{
  v2 = sub_27F0(&qword_2D220, &qword_201E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_184E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ApprovedDeveloperView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_13D00(a1, v6, a2);
}

uint64_t sub_18560@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_13F60(v1[2], v1[3], v1[6], a1);
}

uint64_t sub_18570(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_185B8()
{
  v1 = type metadata accessor for ApprovedDeveloperView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_27F0(&qword_2D0B0, &qword_200A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1E478();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  sub_27F0(&qword_2D0B8, &qword_200D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E2A8();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = &v5[v1[6]];
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = v11[16];
  sub_174B4();
  v15 = *&v5[v1[7] + 8];

  v16 = *&v5[v1[8] + 8];

  v17 = v1[9];
  v18 = sub_1E288();
  (*(*(v18 - 8) + 8))(&v5[v17], v18);
  v19 = v1[10];
  v20 = sub_1E388();
  (*(*(v20 - 8) + 8))(&v5[v19], v20);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_18814()
{
  sub_2EC4(&qword_2D1B8, &qword_20168);
  sub_2EC4(&qword_2D1E8, &qword_20188);
  sub_2EC4(&qword_2D1B0, &qword_20160);
  sub_2EC4(&qword_2D1D8, &qword_20180);
  sub_2EC4(&qword_2D1A8, &qword_20158);
  sub_BC44(&qword_2D1D0, &qword_2D1A8, &qword_20158);
  sub_AE7C();
  swift_getOpaqueTypeConformance2();
  sub_BC44(&qword_2D1E0, &qword_2D1D8, &qword_20180);
  swift_getOpaqueTypeConformance2();
  sub_BC44(&qword_2D1F0, &qword_2D1E8, &qword_20188);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18A40(void *a1)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  sub_19940(a1, &v4);
  sub_27F0(&qword_2D2D8, &qword_20370);
  sub_27F0(&qword_2CCB0, &unk_1FA00);
  sub_2EC4(&qword_2D2B8, &qword_20348);
  sub_2EC4(&qword_2D2C0, &unk_20350);
  sub_1E5A8();
  sub_BC44(&qword_2D2C8, &qword_2D2C0, &unk_20350);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_B4E8();
  sub_1E888();
}

uint64_t sub_18C50@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_1E5A8();
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  __chkstk_darwin(v1);
  v32 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_27F0(&qword_2D2E0, &qword_203C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v27 = sub_27F0(&qword_2D2C0, &unk_20350);
  v29 = *(v27 - 8);
  v11 = *(v29 + 64);
  __chkstk_darwin(v27);
  v13 = &v26 - v12;
  v14 = sub_27F0(&qword_2D2B8, &qword_20348);
  v30 = *(v14 - 8);
  v31 = v14;
  v15 = *(v30 + 64);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  sub_1EA48();
  v28 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppInstallationSettingsViewModel();
  sub_1A498(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel);
  v18 = sub_1E4F8();
  swift_getKeyPath();
  sub_1E518();

  v26 = &v26;
  __chkstk_darwin(v19);
  sub_1A428(v10, v8);
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E318();
  sub_27F0(&qword_2D2E8, &qword_203C8);
  sub_1A498(&qword_2D2F0, &type metadata accessor for CellularSettings.Prompt);
  sub_BC44(&qword_2D2F8, &qword_2D2E8, &qword_203C8);
  sub_1E818();
  sub_1A4E0(v10);
  v20 = v32;
  sub_1E598();
  v21 = sub_BC44(&qword_2D2C8, &qword_2D2C0, &unk_20350);
  v22 = v27;
  v23 = v34;
  sub_1E6E8();
  (*(v33 + 8))(v20, v23);
  (*(v29 + 8))(v13, v22);
  v36 = v22;
  v37 = v23;
  v38 = v21;
  v39 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v24 = v31;
  sub_1E6F8();
  (*(v30 + 8))(v17, v24);
}

uint64_t sub_191E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v81[1] = a2;
  v88 = a1;
  v95 = a3;
  v3 = sub_1E318();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E158();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v87 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v81 - v12;
  v86 = sub_27F0(&qword_2D300, &qword_203D0);
  v91 = *(v86 - 8);
  v14 = *(v91 + 64);
  v15 = __chkstk_darwin(v86);
  v94 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v93 = v81 - v18;
  v19 = __chkstk_darwin(v17);
  v92 = v81 - v20;
  v21 = __chkstk_darwin(v19);
  v90 = v81 - v22;
  v23 = __chkstk_darwin(v21);
  v83 = v81 - v24;
  v25 = __chkstk_darwin(v23);
  v102 = v81 - v26;
  __chkstk_darwin(v25);
  v101 = v81 - v27;
  sub_1EA48();
  v89 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1BF38(v13);
  v103 = sub_1E988();
  v104 = v28;
  v85 = sub_AE7C();
  v29 = sub_1E698();
  v82 = v13;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v4[13];
  v100 = v4 + 13;
  v84 = v36;
  v36(v7, enum case for CellularSettings.Prompt.never(_:), v3);
  v97 = sub_27F0(&qword_2C9F8, &qword_1F318);
  v37 = v7;
  v38 = v3;
  v39 = v101;
  v40 = &v101[*(v97 + 36)];
  v41 = v37;
  v42 = v38;
  v98 = v4[4];
  v99 = v4 + 4;
  v98(v40);
  v96 = sub_27F0(&qword_2CA00, &unk_1F320);
  v40[*(v96 + 36)] = 1;
  *v39 = v29;
  *(v39 + 1) = v31;
  v39[16] = v33 & 1;
  *(v39 + 3) = v35;
  if (v88)
  {
    v43 = v88;
    v44 = sub_2F0C();
    v46 = v45;

    sub_1BF58(v44, v46, v87);

    v103 = sub_1E988();
    v104 = v47;
    v48 = sub_1E698();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = v42;
    v56 = v42;
    v57 = v84;
    v84(v41, enum case for CellularSettings.Prompt.overLimit(_:), v56);
    v58 = v57;
    v59 = v83;
    v60 = &v83[*(v97 + 36)];
    (v98)(v60, v41, v55);
    v60[*(v96 + 36)] = 1;
    *v59 = v48;
    *(v59 + 1) = v50;
    v59[16] = v52 & 1;
    *(v59 + 3) = v54;
    v61 = v91;
    v62 = v59;
    v63 = v86;
    (*(v91 + 32))(v102, v62, v86);
    sub_1C2F8(v82);
    v103 = sub_1E988();
    v104 = v64;
    v65 = sub_1E698();
    v67 = v66;
    LOBYTE(v50) = v68;
    v70 = v69;
    v58(v41, enum case for CellularSettings.Prompt.always(_:), v55);
    v71 = v90;
    v72 = &v90[*(v97 + 36)];
    (v98)(v72, v41, v55);
    v72[*(v96 + 36)] = 1;
    *v71 = v65;
    *(v71 + 1) = v67;
    v71[16] = v50 & 1;
    *(v71 + 3) = v70;
    v73 = *(v61 + 16);
    v74 = v92;
    v73(v92, v101, v63);
    v75 = v93;
    v73(v93, v102, v63);
    v76 = v94;
    v73(v94, v71, v63);
    v77 = v95;
    v73(v95, v74, v63);
    v78 = sub_27F0(&qword_2D308, &qword_203D8);
    v73(&v77[*(v78 + 48)], v75, v63);
    v73(&v77[*(v78 + 64)], v76, v63);
    v79 = *(v61 + 8);
    v79(v71, v63);
    v79(v102, v63);
    v79(v101, v63);
    v79(v76, v63);
    v79(v75, v63);
    v79(v74, v63);
  }

  else
  {
    type metadata accessor for AppInstallationSettingsViewModel();
    sub_1A498(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel);
    result = sub_1E508();
    __break(1u);
  }

  return result;
}

uint64_t sub_19940@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E158();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E318();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EA48();
  v13 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = a1;
    sub_1E3C8();

    v15 = (*(v9 + 88))(v12, v8);
    v44 = v13;
    v45 = a2;
    if (v15 == enum case for CellularSettings.Prompt.always(_:))
    {

      sub_1C62C(v7);
      *&v49 = sub_1E988();
      *(&v49 + 1) = v16;
      sub_AE7C();
      v17 = sub_1E698();
      v19 = v18;
      *&v46 = v17;
      *(&v46 + 1) = v18;
      v21 = v20 & 1;
      *&v47 = v20 & 1;
      *(&v47 + 1) = v22;
      LOBYTE(v48) = 0;
      sub_2838(v17, v18, v20 & 1);

      sub_1E5F8();
      v46 = v49;
      v47 = v50;
      v48 = v51;
      sub_27F0(&qword_2CCD0, &unk_20360);
      sub_27F0(&qword_2CCE0, &qword_1FA10);
      sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
      sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    }

    else if (v15 == enum case for CellularSettings.Prompt.overLimit(_:))
    {
      v23 = sub_2F0C();
      v25 = v24;

      sub_1C954(v23, v25, v7);

      *&v49 = sub_1E988();
      *(&v49 + 1) = v26;
      sub_AE7C();
      v17 = sub_1E698();
      v19 = v27;
      v21 = v28 & 1;
      *&v46 = v17;
      *(&v46 + 1) = v27;
      *&v47 = v28 & 1;
      *(&v47 + 1) = v29;
      LOBYTE(v48) = 1;
      sub_2838(v17, v27, v28 & 1);

      sub_1E5F8();
      v46 = v49;
      v47 = v50;
      v48 = v51;
      sub_27F0(&qword_2CCD0, &unk_20360);
      sub_27F0(&qword_2CCE0, &qword_1FA10);
      sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
      sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    }

    else
    {
      v30 = enum case for CellularSettings.Prompt.never(_:);
      v31 = v15;

      if (v31 != v30)
      {
        v46 = 0u;
        v47 = 0u;
        LOBYTE(v48) = 1;
        sub_1E5F8();
        v46 = v49;
        v47 = v50;
        LOBYTE(v48) = v51;
        HIBYTE(v48) = 1;
        sub_27F0(&qword_2CCD0, &unk_20360);
        sub_27F0(&qword_2CCE0, &qword_1FA10);
        sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
        sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
        sub_1E5F8();
        v42 = v50;
        v43 = v49;
        v39 = v51;
        v40 = v52;
        (*(v9 + 8))(v12, v8);

        v38 = v42;
        v37 = v43;
        goto LABEL_11;
      }

      sub_1CCF0(v7);
      *&v49 = sub_1E988();
      *(&v49 + 1) = v32;
      sub_AE7C();
      v17 = sub_1E698();
      v19 = v33;
      *&v46 = v17;
      *(&v46 + 1) = v33;
      v21 = v34 & 1;
      *&v47 = v34 & 1;
      *(&v47 + 1) = v35;
      LOBYTE(v48) = 0;
      sub_2838(v17, v33, v34 & 1);

      sub_1E5F8();
      v46 = v49;
      v47 = v50;
      LOBYTE(v48) = v51;
      HIBYTE(v48) = 1;
      sub_27F0(&qword_2CCD0, &unk_20360);
      sub_27F0(&qword_2CCE0, &qword_1FA10);
      sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
      sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    }

    sub_1E5F8();
    sub_2E3C(v17, v19, v21);

    v37 = v49;
    v38 = v50;
    v39 = v51;
    v40 = v52;
LABEL_11:
    v41 = v45;
    *v45 = v37;
    v41[1] = v38;
    *(v41 + 32) = v39;
    *(v41 + 33) = v40;
    return result;
  }

  type metadata accessor for AppInstallationSettingsViewModel();
  sub_1A498(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel);
  result = sub_1E508();
  __break(1u);
  return result;
}

uint64_t sub_1A0C0()
{
  v1 = sub_1E158();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_27F0(&qword_2D2A0, &qword_20338);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v13 = *v0;
  sub_27F0(&qword_2D2A8, &qword_20340);
  sub_1A2AC();
  sub_1E658();
  sub_1BC10(v4);
  v14 = sub_1E988();
  v15 = v10;
  sub_BC44(&qword_2D2D0, &qword_2D2A0, &qword_20338);
  sub_AE7C();
  sub_1E728();
  (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A2AC()
{
  result = qword_2D2B0;
  if (!qword_2D2B0)
  {
    sub_2EC4(&qword_2D2A8, &qword_20340);
    sub_2EC4(&qword_2D2B8, &qword_20348);
    sub_2EC4(&qword_2D2C0, &unk_20350);
    sub_1E5A8();
    sub_BC44(&qword_2D2C8, &qword_2D2C0, &unk_20350);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_B4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D2B0);
  }

  return result;
}

uint64_t sub_1A410@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_18C50(a1);
}

uint64_t sub_1A428(uint64_t a1, uint64_t a2)
{
  v4 = sub_27F0(&qword_2D2E0, &qword_203C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A498(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4E0(uint64_t a1)
{
  v2 = sub_27F0(&qword_2D2E0, &qword_203C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A548()
{
  sub_2EC4(&qword_2D2A0, &qword_20338);
  sub_BC44(&qword_2D2D0, &qword_2D2A0, &qword_20338);
  sub_AE7C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A5F4@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_1E1E8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_27F0(&qword_2D310, &unk_203E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_1E188();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E148();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E958();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_1E8F8();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_1E1A8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1E198();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1A91C@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_1E1E8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_27F0(&qword_2D310, &unk_203E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_1E188();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E148();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E958();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_1E8F8();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_1E1A8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1E198();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1AC44@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_1E1E8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_27F0(&qword_2D310, &unk_203E0);
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_1E188();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E148();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E958();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_1E8F8();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_1E1A8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1E198();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1AF6C@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_1E1E8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_27F0(&qword_2D310, &unk_203E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_1E188();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E148();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E958();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_1E8F8();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_1E1A8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1E198();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1B294@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_1E1E8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_27F0(&qword_2D310, &unk_203E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_1E188();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E148();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E958();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_1E8F8();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_1E1A8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1E198();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1B5BC@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_1E1E8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_27F0(&qword_2D310, &unk_203E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_1E188();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E148();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E958();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_1E8F8();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_1E1A8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1E198();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1B8E4@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_1E1E8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_27F0(&qword_2D310, &unk_203E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_1E188();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E148();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E958();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_1E8F8();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_1E1A8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1E198();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1BC10@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_1E1E8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_27F0(&qword_2D310, &unk_203E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_1E188();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E148();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E958();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_1E8F8();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_1E1A8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1E198();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1BF58@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25._countAndFlagsBits = a1;
  v25._object = a2;
  v26 = a3;
  v3 = sub_1E1E8();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_27F0(&qword_2D310, &unk_203E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_1E188();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E148();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E958();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_1E938();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  sub_1E928();
  v27._countAndFlagsBits = 0x58585F5245444E55;
  v27._object = 0xED00005F424D5F58;
  sub_1E918(v27);
  sub_1E908(v25);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_1E918(v28);
  sub_1E948();
  (*(v10 + 104))(v13, enum case for URL.DirectoryHint.isDirectory(_:), v9);
  v23 = sub_1E1A8();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  sub_1E198();
  (*(v15 + 104))(v18, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v14);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1C314@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22[1] = a1;
  v22[2] = a2;
  v2 = sub_1E1E8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_27F0(&qword_2D310, &unk_203E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v22 - v6;
  v8 = sub_1E188();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E148();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E958();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  sub_1E8F8();
  (*(v9 + 104))(v12, enum case for URL.DirectoryHint.isDirectory(_:), v8);
  v20 = sub_1E1A8();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  sub_1E198();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v13);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1C62C@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_1E1E8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_27F0(&qword_2D310, &unk_203E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_1E188();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E148();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E958();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_1E8F8();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_1E1A8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1E198();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1C954@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25._countAndFlagsBits = a1;
  v25._object = a2;
  v26 = a3;
  v3 = sub_1E1E8();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_27F0(&qword_2D310, &unk_203E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_1E188();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E148();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E958();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_1E938();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  sub_1E928();
  v27._object = 0x8000000000022AD0;
  v27._countAndFlagsBits = 0xD000000000000019;
  sub_1E918(v27);
  sub_1E908(v25);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_1E918(v28);
  sub_1E948();
  (*(v10 + 104))(v13, enum case for URL.DirectoryHint.isDirectory(_:), v9);
  v23 = sub_1E1A8();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  sub_1E198();
  (*(v15 + 104))(v18, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v14);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1CCF0@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_1E1E8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_27F0(&qword_2D310, &unk_203E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_1E188();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E148();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E958();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_1E8F8();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_1E1A8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1E198();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1D01C@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_1E1E8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_27F0(&qword_2D310, &unk_203E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_1E188();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E148();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E958();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_1E8F8();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_1E1A8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1E198();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1D344(uint64_t a1, void *a2)
{
  v4 = sub_1E1E8();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1E148();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E958();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1E938();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_1E928();
  v18._object = 0x8000000000022D00;
  v18._countAndFlagsBits = 0xD000000000000023;
  sub_1E918(v18);
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  sub_1E908(v19);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_1E918(v20);
  sub_1E948();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v15 = sub_286C(v6, qword_2D318);
  (*(v7 + 16))(v10, v15, v6);
  sub_1E1D8();
  return sub_1E168();
}

uint64_t sub_1D5DC(uint64_t a1, void *a2)
{
  v4 = sub_1E1E8();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1E148();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E958();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1E938();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_1E928();
  v18._object = 0x8000000000022CB0;
  v18._countAndFlagsBits = 0x1000000000000017;
  sub_1E918(v18);
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  sub_1E908(v19);
  v20._countAndFlagsBits = 10322146;
  v20._object = 0xA300000000000000;
  sub_1E918(v20);
  sub_1E948();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v15 = sub_286C(v6, qword_2D318);
  (*(v7 + 16))(v10, v15, v6);
  sub_1E1D8();
  return sub_1E168();
}

uint64_t sub_1D878(uint64_t a1, void *a2)
{
  v4 = sub_1E1E8();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1E148();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E958();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1E938();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_1E928();
  v18._countAndFlagsBits = 0xE22065766F6D6552;
  v18._object = 0xAA00000000009C80;
  sub_1E918(v18);
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  sub_1E908(v19);
  v20._countAndFlagsBits = 1067286754;
  v20._object = 0xA400000000000000;
  sub_1E918(v20);
  sub_1E948();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v15 = sub_286C(v6, qword_2D318);
  (*(v7 + 16))(v10, v15, v6);
  sub_1E1D8();
  return sub_1E168();
}

uint64_t sub_1DB38()
{
  v0 = sub_1E148();
  sub_1DBD4(v0, qword_2D318);
  v1 = sub_286C(v0, qword_2D318);
  *v1 = type metadata accessor for ResourceBundleClass();
  v2 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t *sub_1DBD4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1DC40(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_2DB28 == -1)
  {
    if (qword_2DB30)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1E108();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_2DB30)
    {
      return _availability_version_check();
    }
  }

  if (qword_2DB20 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1E120();
    a3 = v10;
    a4 = v9;
    v8 = dword_2DB10 < v11;
    if (dword_2DB10 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_2DB14 > a3)
      {
        return 1;
      }

      if (dword_2DB14 >= a3)
      {
        return dword_2DB18 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_2DB10 < a2;
  if (dword_2DB10 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1DDD4(uint64_t result)
{
  v1 = qword_2DB30;
  if (qword_2DB30)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_2DB30 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_2DB10, &dword_2DB14, &dword_2DB18);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}