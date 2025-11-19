uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2410A8864(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F20, &qword_2410E3868) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_2410A88F4()
{
  result = qword_27E525F28;
  if (!qword_27E525F28)
  {
    type metadata accessor for _CommunicationHandle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525F28);
  }

  return result;
}

unint64_t sub_2410A89A0()
{
  result = qword_27E525F38;
  if (!qword_27E525F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525F38);
  }

  return result;
}

uint64_t sub_2410A8A30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

unint64_t sub_2410A8B24()
{
  result = qword_27E525F58;
  if (!qword_27E525F58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E525F58);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

id IconProvider.init()@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:48.0 scale:{48.0, 3.0}];
  *a1 = result;
  return result;
}

id IconProvider.init(scale:)@<X0>(void *a1@<X8>, double a2@<D0>)
{
  result = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:48.0 scale:{48.0, a2}];
  *a1 = result;
  return result;
}

void sub_2410A8E0C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() genericApplicationIcon];
  v5 = [v4 imageForDescriptor_];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 CGImage];
    if (v7)
    {
      v8 = v7;
      [a1 scale];
      v10 = v9;

      *a2 = v8;
      *(a2 + 8) = v10;
      *(a2 + 16) = 1;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void IconProvider.clientIcon(for:isBadge:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *(a1 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier);
  v8 = *(a1 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier + 8);
  if (a2)
  {
    [v6 size];
    v10 = v9 * 0.333333333;
    [v6 size];
    v12 = v11 * 0.333333333;
    [v6 scale];
    v14 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v10 scale:{v12, v13}];
  }

  else
  {
    v14 = v6;
  }

  v15 = v14;
  v16 = *(a1 + OBJC_IVAR____TtC9AskToCore9ATPayload_question);
  v17 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  v18 = *(v16 + v17);
  v19 = &unk_2852E38C8;
  if (v18 < 0 && (v18 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_2410AB88C(&unk_2852E38C8);
    v19 = &unk_2852E3918;
  }

  sub_2410A9070(v19, v7, v8, *(a1 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData), *(a1 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData + 8), v15, a3);
}

void sub_2410A9070(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X5>, unint64_t a5@<X6>, void *a6@<X7>, uint64_t a7@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = *v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_19:
    if (qword_27E525478 != -1)
    {
      swift_once();
    }

    v35 = sub_2410DEFE0();
    __swift_project_value_buffer(v35, qword_27E530388);
    v36 = sub_2410DEFC0();
    v37 = sub_2410DF3F0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_24107E000, v36, v37, "Nothing worked! Falling back to generic blank icon", v38, 2u);
      MEMORY[0x245CDA690](v38, -1, -1);
    }

    v56[0] = v8;
    sub_2410A8E0C(a6, a7);
    goto LABEL_24;
  }

  v13 = (a1 + 32);
  v53 = a5 >> 60;
  while (1)
  {
    v17 = *v13++;
    v16 = v17;
    if (v17 > 2)
    {
      goto LABEL_4;
    }

    if (!v16)
    {
      sub_2410AAD84(a2, a3, a6, v56);
      v24 = v56[0];
      if (!v56[0])
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (v16 == 1)
    {
      break;
    }

    if (v53 > 0xE)
    {
      goto LABEL_4;
    }

    sub_241086284(a4, a5);
    v25 = sub_2410DEE20();
    v56[0] = 0;
    v26 = [v25 decompressedDataUsingAlgorithm:3 error:v56];

    v27 = v56[0];
    if (!v26)
    {
      v14 = v27;
      v15 = sub_2410DEDC0();

      swift_willThrow();
      sub_2410861E4(a4, a5);

      goto LABEL_4;
    }

    v28 = sub_2410DEE40();
    v30 = v29;

    IconProvider.icon(from:)(v56);
    sub_2410861E4(a4, a5);
    sub_2410861F8(v28, v30);
    v24 = v56[0];
LABEL_17:
    v31 = v56[1];
    v32 = v57;
    v33 = v24;
    v34 = v33;
    if ((v32 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_4:
    if (!--v9)
    {
      goto LABEL_19;
    }
  }

  if (!a3)
  {
    goto LABEL_4;
  }

  v56[0] = v8;
  v18 = sub_2410AA3C0(a2, a3);
  v56[0] = v8;
  v22 = sub_2410AAFA4(v18, v19, v20, v21, a6, 0);

  if (!v22)
  {
    goto LABEL_4;
  }

  v23 = [v22 CGImage];
  if (!v23)
  {

    goto LABEL_4;
  }

  v40 = v23;
  [v22 scale];
  v31 = v41;

  v34 = v40;
LABEL_26:
  if (qword_27E525478 != -1)
  {
    swift_once();
  }

  v42 = sub_2410DEFE0();
  __swift_project_value_buffer(v42, qword_27E530388);
  v43 = sub_2410DEFC0();
  v44 = sub_2410DF400();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v56[0] = v46;
    *v45 = 136315138;
    v47 = 0xEC00000073656369;
    v48 = 0x767265536E6F6369;
    if (v16 != 1)
    {
      v48 = 0xD000000000000015;
      v47 = 0x80000002410E6D40;
    }

    if (v16)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0x696C436E776F6E6BLL;
    }

    if (v16)
    {
      v50 = v47;
    }

    else
    {
      v50 = 0xEB00000000746E65;
    }

    v51 = sub_241085208(v49, v50, v56);

    *(v45 + 4) = v51;
    _os_log_impl(&dword_24107E000, v43, v44, "Got icon from source %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x245CDA690](v46, -1, -1);
    MEMORY[0x245CDA690](v45, -1, -1);
  }

  *a7 = v34;
  *(a7 + 8) = v31;
  *(a7 + 16) = 0;
LABEL_24:
  v39 = *MEMORY[0x277D85DE8];
}

void IconProvider.associatedContentIcon(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + OBJC_IVAR____TtC9AskToCore9ATPayload_question);
  v6 = (v5 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  v9 = (v5 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier);
  swift_beginAccess();
  v10 = v9[1];
  v43 = a2;
  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = *v9;
  v12 = HIBYTE(v10) & 0xF;
  v13 = v11 & 0xFFFFFFFFFFFFLL;
  if (!((v10 & 0x2000000000000000) != 0 ? HIBYTE(v10) & 0xF : v11 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_27;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {

    sub_2410AB978(v11, v10, 10);

    goto LABEL_28;
  }

  if ((v10 & 0x2000000000000000) == 0)
  {
    if ((v11 & 0x1000000000000000) != 0)
    {
      v15 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v15 = sub_2410DF5B0();
    }

    v12 = *v15;
    if (v12 == 43)
    {
      goto LABEL_24;
    }

    if (v12 != 45 || v13 >= 1)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  if (v11 == 43)
  {
    goto LABEL_26;
  }

  if (v11 != 45 || v12 != 0)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_24:
  if (v13 < 1)
  {
    __break(1u);
LABEL_26:
    if (!v12)
    {
      __break(1u);
      return;
    }
  }

LABEL_27:

LABEL_28:
  v18 = 0;
  while (1)
  {
    v19 = byte_2852E38C8[v18 + 32];
    if ((v19 - 2) < 3)
    {
      goto LABEL_30;
    }

    if (!byte_2852E38C8[v18 + 32])
    {
      sub_2410AAD84(v8, v7, v4, v44);
      if (!v44[0])
      {
        goto LABEL_30;
      }

      v20 = v44[1];
      v21 = v45;
      v22 = v44[0];
      v23 = v22;
      if ((v21 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    }

    if (!v7)
    {
      goto LABEL_30;
    }

    v44[0] = v4;
    v24 = sub_2410AA3C0(v8, v7);
    v44[0] = v4;
    v23 = sub_2410AAFA4(v24, v25, v26, v27, v4, 0);

    if (!v23)
    {
      goto LABEL_30;
    }

    v28 = [v23 CGImage];
    if (v28)
    {
      break;
    }

LABEL_29:

LABEL_30:
    if (++v18 == 5)
    {
      if (qword_27E525478 != -1)
      {
        swift_once();
      }

      v39 = sub_2410DEFE0();
      __swift_project_value_buffer(v39, qword_27E530388);
      v40 = sub_2410DEFC0();
      v41 = sub_2410DF3F0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_24107E000, v40, v41, "Nothing worked! Falling back to generic blank icon", v42, 2u);
        MEMORY[0x245CDA690](v42, -1, -1);
      }

      v44[0] = v4;
      sub_2410A8E0C(v4, a2);

      return;
    }
  }

  v29 = v28;
  [v23 scale];
  v20 = v30;

  v23 = v29;
LABEL_40:
  if (qword_27E525478 != -1)
  {
    swift_once();
  }

  v31 = sub_2410DEFE0();
  __swift_project_value_buffer(v31, qword_27E530388);
  v32 = sub_2410DEFC0();
  v33 = sub_2410DF400();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44[0] = v35;
    *v34 = 136315138;
    if (v19)
    {
      v36 = 0x767265536E6F6369;
    }

    else
    {
      v36 = 0x696C436E776F6E6BLL;
    }

    if (v19)
    {
      v37 = 0xEC00000073656369;
    }

    else
    {
      v37 = 0xEB00000000746E65;
    }

    v38 = sub_241085208(v36, v37, v44);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_24107E000, v32, v33, "Got icon from source %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x245CDA690](v35, -1, -1);
    MEMORY[0x245CDA690](v34, -1, -1);
  }

  *v43 = v23;
  *(v43 + 8) = v20;
  *(v43 + 16) = 0;
}

void IconProvider.messagesIcon(isBadge:)(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    [v4 size];
    v6 = v5 * 0.333333333;
    [v4 size];
    v8 = v7 * 0.333333333;
    [v4 scale];
    v10 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v6 scale:{v8, v9}];
  }

  else
  {
    v10 = v4;
  }

  v11 = v10;
  v12 = sub_2410AAFA4(0xD000000000000013, 0x80000002410E69D0, 0xD000000000000013, 0x80000002410E69D0, v10, 0);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 CGImage];
    if (v14)
    {
      v15 = v14;
      [v13 scale];
      v17 = v16;

      *a2 = v15;
      *(a2 + 8) = v17;
      *(a2 + 16) = 0;
      return;
    }
  }

  sub_2410A8E0C(v11, a2);
}

void IconProvider.contactsIcon(isBadge:)(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    [v4 size];
    v6 = v5 * 0.333333333;
    [v4 size];
    v8 = v7 * 0.333333333;
    [v4 scale];
    v10 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v6 scale:{v8, v9}];
  }

  else
  {
    v10 = v4;
  }

  v11 = v10;
  v12 = sub_2410AAFA4(0xD00000000000001BLL, 0x80000002410E69F0, 0xD000000000000015, 0x80000002410E6A10, v10, 0);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 CGImage];
    if (v14)
    {
      v15 = v14;
      [v13 scale];
      v17 = v16;

      *a2 = v15;
      *(a2 + 8) = v17;
      *(a2 + 16) = 0;
      return;
    }
  }

  sub_2410A8E0C(v11, a2);
}

void IconProvider.screentimeIcon(isBadge:)(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    [v4 size];
    v6 = v5 * 0.333333333;
    [v4 size];
    v8 = v7 * 0.333333333;
    [v4 scale];
    v10 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v6 scale:{v8, v9}];
  }

  else
  {
    v10 = v4;
  }

  v11 = v10;
  v12 = sub_2410AAFA4(0xD000000000000019, 0x80000002410E6AB0, 0xD000000000000019, 0x80000002410E6AB0, v10, 0);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 CGImage];
    if (v14)
    {
      v15 = v14;
      [v13 scale];
      v17 = v16;

      *a2 = v15;
      *(a2 + 8) = v17;
      *(a2 + 16) = 0;
      return;
    }
  }

  sub_2410A8E0C(v11, a2);
}

void IconProvider.icon(bundleIdentifier:adamIdentifier:isBadge:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W4>, uint64_t a4@<X8>)
{
  v7 = *v4;
  if (a3)
  {
    [*v4 size];
    v9 = v8 * 0.333333333;
    [v7 size];
    v11 = v10 * 0.333333333;
    [v7 scale];
    v13 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v9 scale:{v11, v12}];
  }

  else
  {
    v13 = v7;
  }

  v40 = v13;
  v14 = 0;
  while (1)
  {
    v15 = byte_2852E38C8[v14 + 32];
    if ((v15 - 2) < 3)
    {
      goto LABEL_6;
    }

    if (!byte_2852E38C8[v14 + 32])
    {
      sub_2410AAD84(a1, a2, v40, v41);
      if (!v41[0])
      {
        goto LABEL_6;
      }

      v16 = v41[1];
      v17 = v42;
      v18 = v41[0];
      v19 = v18;
      if ((v17 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_5;
    }

    if (!a2)
    {
      goto LABEL_6;
    }

    v41[0] = v7;
    v20 = sub_2410AA3C0(a1, a2);
    v41[0] = v7;
    v19 = sub_2410AAFA4(v20, v21, v22, v23, v40, 0);

    if (!v19)
    {
      goto LABEL_6;
    }

    v24 = [v19 CGImage];
    if (v24)
    {
      break;
    }

LABEL_5:

LABEL_6:
    if (++v14 == 5)
    {
      if (qword_27E525478 != -1)
      {
        swift_once();
      }

      v35 = sub_2410DEFE0();
      __swift_project_value_buffer(v35, qword_27E530388);
      v36 = sub_2410DEFC0();
      v37 = sub_2410DF3F0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_24107E000, v36, v37, "Nothing worked! Falling back to generic blank icon", v38, 2u);
        MEMORY[0x245CDA690](v38, -1, -1);
      }

      v41[0] = v7;
      sub_2410A8E0C(v40, a4);

      return;
    }
  }

  v25 = v24;
  [v19 scale];
  v16 = v26;

  v19 = v25;
LABEL_16:
  if (qword_27E525478 != -1)
  {
    swift_once();
  }

  v27 = sub_2410DEFE0();
  __swift_project_value_buffer(v27, qword_27E530388);
  v28 = sub_2410DEFC0();
  v29 = sub_2410DF400();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v41[0] = v31;
    *v30 = 136315138;
    if (v15)
    {
      v32 = 0x767265536E6F6369;
    }

    else
    {
      v32 = 0x696C436E776F6E6BLL;
    }

    if (v15)
    {
      v33 = 0xEC00000073656369;
    }

    else
    {
      v33 = 0xEB00000000746E65;
    }

    v34 = sub_241085208(v32, v33, v41);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_24107E000, v28, v29, "Got icon from source %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x245CDA690](v31, -1, -1);
    MEMORY[0x245CDA690](v30, -1, -1);
  }

  *a4 = v19;
  *(a4 + 8) = v16;
  *(a4 + 16) = 0;
}

void IconProvider.iconServicesIcon(for:isBadge:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  if (a3)
  {
    [v8 size];
    v10 = v9 * 0.333333333;
    [v8 size];
    v12 = v11 * 0.333333333;
    [v8 scale];
    v14 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v10 scale:{v12, v13}];
  }

  else
  {
    v14 = v8;
  }

  v15 = v14;
  v16 = sub_2410AA3C0(a1, a2);
  v20 = sub_2410AAFA4(v16, v17, v18, v19, v15, 0);

  if (v20)
  {
    v21 = [v20 CGImage];
    if (v21)
    {
      v22 = v21;
      [v20 scale];
      v24 = v23;

      *a4 = v22;
      *(a4 + 8) = v24;
      *(a4 + 16) = 0;
      return;
    }
  }

  sub_2410A8E0C(v15, a4);
}

uint64_t sub_2410AA3C0(uint64_t a1, unint64_t a2)
{
  if (qword_27E5254D0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v3 = qword_27E530460 + 56;
  v4 = 1 << *(qword_27E530460 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(qword_27E530460 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v37 = v8;
  v38 = a2;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v7)
        {

          swift_bridgeObjectRetain_n();
          v17 = a1;
          v28 = a1;
          v26 = a2;
          v27 = a2;
          goto LABEL_24;
        }

        v6 = *(v3 + 8 * v10);
        ++v9;
        if (v6)
        {
          v9 = v10;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_12:
    v11 = (*(v8 + 48) + ((v9 << 11) | (32 * __clz(__rbit64(v6)))));
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5267A0, &qword_2410E29F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2410E3570;
    v36 = v13;
    *(inited + 32) = v13;
    v17 = v14;
    *(inited + 40) = v12;
    *(inited + 48) = v14;
    *(inited + 56) = v15;
    v40 = v12;
    swift_bridgeObjectRetain_n();
    v39 = v15;
    swift_bridgeObjectRetain_n();
    v18 = sub_2410C51D8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    a2 = v38;
    if (*(v18 + 16))
    {
      v19 = *(v18 + 40);
      sub_2410DF990();
      sub_2410DF150();
      v20 = sub_2410DF9F0();
      v21 = -1 << *(v18 + 32);
      v22 = v20 & ~v21;
      if ((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        break;
      }
    }

LABEL_6:
    v6 &= v6 - 1;

    v8 = v37;
  }

  v23 = ~v21;
  while (1)
  {
    v24 = (*(v18 + 48) + 16 * v22);
    v25 = *v24 == a1 && v24[1] == v38;
    if (v25 || (sub_2410DF8D0() & 1) != 0)
    {
      break;
    }

    v22 = (v22 + 1) & v23;
    if (((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v27 = v39;
  v26 = v40;
  v28 = v36;
LABEL_24:
  if (qword_27E525478 != -1)
  {
    swift_once();
  }

  v29 = sub_2410DEFE0();
  __swift_project_value_buffer(v29, qword_27E530388);

  v30 = sub_2410DEFC0();
  v31 = sub_2410DF400();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v42 = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_241085208(a1, a2, &v42);
    *(v32 + 12) = 2080;
    v43 = 0;
    v44 = 0xE000000000000000;

    sub_2410DF570();
    MEMORY[0x245CD9620](0xD000000000000025, 0x80000002410E8830);
    MEMORY[0x245CD9620](v28, v26);
    MEMORY[0x245CD9620](0x3A534F63616D202CLL, 0xE900000000000020);
    MEMORY[0x245CD9620](v17, v27);
    MEMORY[0x245CD9620](32032, 0xE200000000000000);

    v34 = sub_241085208(v43, v44, &v42);

    *(v32 + 14) = v34;
    _os_log_impl(&dword_24107E000, v30, v31, "Platform correct bundle identifier for %s is %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDA690](v33, -1, -1);
    MEMORY[0x245CDA690](v32, -1, -1);
  }

  return v28;
}

void IconProvider.icon(from:)(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_2410DEE20();
  v5 = CGImageSourceCreateWithData(v4, 0);

  if (v5)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, 0);
    if (ImageAtIndex)
    {
      v7 = ImageAtIndex;
      [v3 scale];
      v9 = v8;

      *a1 = v7;
      *(a1 + 8) = v9;
      *(a1 + 16) = 0;
      return;
    }

    if (qword_27E525478 != -1)
    {
      swift_once();
    }

    v13 = sub_2410DEFE0();
    __swift_project_value_buffer(v13, qword_27E530388);
    v14 = sub_2410DEFC0();
    v15 = sub_2410DF3F0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24107E000, v14, v15, "Image was nil for existing image data image source.", v16, 2u);
      MEMORY[0x245CDA690](v16, -1, -1);
    }
  }

  else
  {
    if (qword_27E525478 != -1)
    {
      swift_once();
    }

    v10 = sub_2410DEFE0();
    __swift_project_value_buffer(v10, qword_27E530388);
    v5 = sub_2410DEFC0();
    v11 = sub_2410DF3F0();
    if (os_log_type_enabled(v5, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24107E000, v5, v11, "Image source was nil for existing image data.", v12, 2u);
      MEMORY[0x245CDA690](v12, -1, -1);
    }
  }

  sub_2410A8E0C(v3, a1);
}

uint64_t IconProvider.png(for:)(CGImage **a1)
{
  v1 = *a1;
  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v3 = Mutable;
    v4 = CGImageDestinationCreateWithData(Mutable, *MEMORY[0x277CC2120], 1uLL, 0);
    if (v4)
    {
      v5 = v4;
      CGImageDestinationAddImage(v4, v1, 0);
      if (CGImageDestinationFinalize(v5))
      {
        v6 = v3;
        v7 = sub_2410DEE40();

        return v7;
      }

      if (qword_27E525478 != -1)
      {
        swift_once();
      }

      v16 = sub_2410DEFE0();
      __swift_project_value_buffer(v16, qword_27E530388);
      v17 = sub_2410DEFC0();
      v18 = sub_2410DF3F0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_24107E000, v17, v18, "CGImageDestinationFinalize failed", v19, 2u);
        MEMORY[0x245CDA690](v19, -1, -1);
      }
    }

    else
    {
      if (qword_27E525478 != -1)
      {
        swift_once();
      }

      v12 = sub_2410DEFE0();
      __swift_project_value_buffer(v12, qword_27E530388);
      v13 = sub_2410DEFC0();
      v14 = sub_2410DF3F0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24107E000, v13, v14, "CGImageDestinationCreateWithData failed", v15, 2u);
        MEMORY[0x245CDA690](v15, -1, -1);
      }
    }
  }

  else
  {
    if (qword_27E525478 != -1)
    {
      swift_once();
    }

    v9 = sub_2410DEFE0();
    __swift_project_value_buffer(v9, qword_27E530388);
    v3 = sub_2410DEFC0();
    v10 = sub_2410DF3F0();
    if (os_log_type_enabled(v3, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24107E000, v3, v10, "CFDataCreateMutable failed", v11, 2u);
      MEMORY[0x245CDA690](v11, -1, -1);
    }
  }

  return 0;
}

void sub_2410AAD84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v7 = *v4;
    if (qword_27E5254E8 != -1)
    {
      v17 = a1;
      v18 = a2;
      swift_once();
      a1 = v17;
      a2 = v18;
    }

    v8 = off_27E526870;
    if (*(off_27E526870 + 2))
    {
      v9 = sub_2410D81D4(a1, a2);
      if (v10)
      {
        v11 = 0;
        v12 = *(v8[7] + v9);
        v13 = 0;
        if (v12 > 3)
        {
          if (*(v8[7] + v9) > 5u)
          {
            if (v12 == 6)
            {
              v14 = sub_2410AAFA4(0xD00000000000001BLL, 0x80000002410E69F0, 0xD000000000000015, 0x80000002410E6A10, a3, 0);
              if (v14)
              {
LABEL_18:
                v15 = v14;
                v11 = [v14 CGImage];
                if (v11)
                {
                  [v15 scale];
                  v13 = v16;
                }

                goto LABEL_22;
              }

              goto LABEL_21;
            }
          }

          else if (v12 != 4)
          {
            v14 = sub_2410AAFA4(0xD000000000000019, 0x80000002410E6AB0, 0xD000000000000019, 0x80000002410E6AB0, a3, 0);
            if (v14)
            {
              goto LABEL_18;
            }

LABEL_21:
            v11 = 0;
          }
        }

        else if (v12 >= 3)
        {
          v14 = sub_2410AAFA4(0xD000000000000013, 0x80000002410E69D0, 0xD000000000000013, 0x80000002410E69D0, a3, 0);
          if (v14)
          {
            goto LABEL_18;
          }

          goto LABEL_21;
        }

LABEL_22:
        *a4 = v11;
        *(a4 + 8) = v13;
        goto LABEL_11;
      }
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
LABEL_11:
  *(a4 + 16) = 0;
}

id sub_2410AAFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v12 = result;
    v13 = sub_2410DF0A0();
    v14 = [v12 applicationIsInstalled_];

    if (a1 == 0xD000000000000019 && 0x80000002410E6AB0 == a2)
    {
      goto LABEL_4;
    }

    if ((sub_2410DF8D0() & 1) == 0)
    {
      if ((v14 & 1) == 0)
      {
        if (qword_27E525478 != -1)
        {
          swift_once();
        }

        v47 = sub_2410DEFE0();
        __swift_project_value_buffer(v47, qword_27E530388);
        v48 = sub_2410DEFC0();
        v49 = sub_2410DF400();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_24107E000, v48, v49, "Not using IconServices because !isAppInstalled && !appHasSystemIcon", v50, 2u);
          MEMORY[0x245CDA690](v50, -1, -1);
        }

        return 0;
      }

      v18 = 0;
LABEL_19:
      if (qword_27E525478 != -1)
      {
        swift_once();
      }

      v29 = sub_2410DEFE0();
      __swift_project_value_buffer(v29, qword_27E530388);

      v30 = sub_2410DEFC0();
      v31 = sub_2410DF400();

      if (os_log_type_enabled(v30, v31))
      {
        v53 = a6;
        v32 = swift_slowAlloc();
        v51 = a5;
        v33 = swift_slowAlloc();
        *v32 = 136315138;
        v56 = v33;
        sub_2410DF570();
        MEMORY[0x245CD9620](0xD000000000000025, 0x80000002410E8830);
        MEMORY[0x245CD9620](a1, a2);
        MEMORY[0x245CD9620](0x3A534F63616D202CLL, 0xE900000000000020);
        MEMORY[0x245CD9620](a3, a4);
        MEMORY[0x245CD9620](32032, 0xE200000000000000);
        v34 = sub_241085208(0, 0xE000000000000000, &v56);

        *(v32 + 4) = v34;
        _os_log_impl(&dword_24107E000, v30, v31, "Trying to use bundle ID to get IconServices icon for app with bundle ID %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        v35 = v33;
        a5 = v51;
        MEMORY[0x245CDA690](v35, -1, -1);
        v36 = v32;
        a6 = v53;
        MEMORY[0x245CDA690](v36, -1, -1);
      }

      v37 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v38 = sub_2410DF0A0();
      v39 = [v37 initWithBundleIdentifier_];

      v40 = [v39 prepareImageForDescriptor_];
      v18 = v40;
LABEL_24:
      if (!v18)
      {
        return v18;
      }

      goto LABEL_25;
    }

    if (sub_2410DF8D0())
    {
LABEL_4:
      v54 = v14;
      v15 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v16 = sub_2410DF0A0();
      v17 = [v15 initWithType_];

      v18 = [v17 prepareImageForDescriptor_];
      if (v18)
      {
        if (qword_27E525478 != -1)
        {
          swift_once();
        }

        v19 = sub_2410DEFE0();
        __swift_project_value_buffer(v19, qword_27E530388);

        v20 = a4;
        v21 = sub_2410DEFC0();
        v22 = sub_2410DF400();

        if (os_log_type_enabled(v21, v22))
        {
          v52 = a6;
          v23 = swift_slowAlloc();
          v51 = a5;
          v24 = swift_slowAlloc();
          *v23 = 136315138;
          v56 = v24;
          sub_2410DF570();
          MEMORY[0x245CD9620](0xD000000000000025, 0x80000002410E8830);
          MEMORY[0x245CD9620](a1, a2);
          MEMORY[0x245CD9620](0x3A534F63616D202CLL, 0xE900000000000020);
          v25 = v20;
          MEMORY[0x245CD9620](a3, v20);
          MEMORY[0x245CD9620](32032, 0xE200000000000000);
          v26 = sub_241085208(0, 0xE000000000000000, &v56);

          *(v23 + 4) = v26;
          _os_log_impl(&dword_24107E000, v21, v22, "App with bundle ID %s has a system icon image! Using that.", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v24);
          v27 = v24;
          a5 = v51;
          MEMORY[0x245CDA690](v27, -1, -1);
          v28 = v23;
          a6 = v52;
          MEMORY[0x245CDA690](v28, -1, -1);
        }

        else
        {
          v25 = v20;
        }

        v14 = v54;
        a4 = v25;
        if (![v18 placeholder] || (a6 & 1) != 0)
        {
LABEL_25:
          if (![v18 placeholder] || (a6 & 1) != 0)
          {
            return v18;
          }

          if (qword_27E525478 != -1)
          {
            swift_once();
          }

          v41 = sub_2410DEFE0();
          __swift_project_value_buffer(v41, qword_27E530388);

          v42 = sub_2410DEFC0();
          v43 = sub_2410DF400();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            *v44 = 136315138;
            v56 = v45;
            sub_2410DF570();
            MEMORY[0x245CD9620](0xD000000000000025, 0x80000002410E8830);
            MEMORY[0x245CD9620](a1, a2);
            MEMORY[0x245CD9620](0x3A534F63616D202CLL, 0xE900000000000020);
            MEMORY[0x245CD9620](a3, a4);
            MEMORY[0x245CD9620](32032, 0xE200000000000000);
            v46 = sub_241085208(0, 0xE000000000000000, &v56);

            *(v44 + 4) = v46;
            _os_log_impl(&dword_24107E000, v42, v43, "Icon for app with bundle ID %s was a placeholder. Removing as placeholders were not allowed", v44, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v45);
            MEMORY[0x245CDA690](v45, -1, -1);
            MEMORY[0x245CDA690](v44, -1, -1);
          }

          return 0;
        }
      }
    }

    else
    {
      v18 = 0;
    }

    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void *sub_2410AB818(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525860, &qword_2410E1750);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2410AB88C(uint64_t result)
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

  result = sub_2410D225C(result, v12, 1, v3);
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

unsigned __int8 *sub_2410AB978(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_2410DF200();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2410ABF90();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2410DF5B0();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_2410ABEFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2410ABF44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2410ABF90()
{
  v0 = sub_2410DF210();
  v4 = sub_2410AC010(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2410AC010(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2410DF140();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_2410DF4B0();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2410AB818(v9, 0);
  v12 = sub_2410AC168(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2410DF140();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2410DF5B0();
LABEL_4:

  return sub_2410DF140();
}

unint64_t sub_2410AC168(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2410AC388(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2410DF1D0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2410DF5B0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2410AC388(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2410DF1B0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2410AC388(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2410DF1E0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x245CD9660](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t ContactFormatter.Style.hashValue.getter()
{
  v1 = *v0;
  sub_2410DF990();
  MEMORY[0x245CD9E40](v1);
  return sub_2410DF9F0();
}

Swift::String __swiftcall ContactFormatter.displayName(for:shouldUsePhoneNumberAsFallback:lastResortFallback:)(CNContact a1, Swift::Bool shouldUsePhoneNumberAsFallback, Swift::String lastResortFallback)
{
  object = lastResortFallback._object;
  countAndFlagsBits = lastResortFallback._countAndFlagsBits;
  isa = a1.super.isa;
  v8 = [*v3 stringFromContact_];
  if (v8)
  {
    v9 = v8;
    countAndFlagsBits = sub_2410DF0C0();
    object = v10;

    goto LABEL_24;
  }

  v11 = [isa emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F70, ",t");
  v12 = sub_2410DF2C0();

  if (v12 >> 62)
  {
    if (sub_2410DF620())
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x245CD9A20](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_21:
      v19 = sub_2410DF620();
      if (v19)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  v15 = [v14 value];

  if (v15)
  {
    countAndFlagsBits = sub_2410DF0C0();
    object = v16;

    goto LABEL_24;
  }

LABEL_12:
  if (!shouldUsePhoneNumberAsFallback)
  {
LABEL_23:

    goto LABEL_24;
  }

  v17 = [isa phoneNumbers];
  isa = sub_2410DF2C0();

  if (isa >> 62)
  {
    goto LABEL_21;
  }

  v19 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
LABEL_22:

    goto LABEL_23;
  }

LABEL_15:
  if ((isa & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x245CD9A20](0, isa);
  }

  else
  {
    if (!*((isa & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v20 = *(isa + 32);
  }

  v21 = v20;

  v22 = [v21 value];

  v23 = [v22 stringValue];
  countAndFlagsBits = sub_2410DF0C0();
  object = v24;

LABEL_24:
  v19 = countAndFlagsBits;
  v18 = object;
LABEL_27:
  result._object = v18;
  result._countAndFlagsBits = v19;
  return result;
}

unint64_t sub_2410AC7A4()
{
  result = qword_27E525F78;
  if (!qword_27E525F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525F78);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2410AC80C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_2410AC854(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t ATQuestion.Topic.Metadata.description.getter()
{
  v1 = *v0;
  sub_2410DF570();

  v2 = [v1 description];
  v3 = sub_2410DF0C0();
  v5 = v4;

  MEMORY[0x245CD9620](v3, v5);

  MEMORY[0x245CD9620](32032, 0xE200000000000000);
  return 0xD000000000000010;
}

uint64_t static ATQuestion.Topic.Metadata.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_24108F4C4(0, &unk_27E525BC0, 0x277D82BB8);
  v4 = v2;
  v5 = v3;
  v6 = sub_2410DF460();

  return v6 & 1;
}

uint64_t sub_2410ACA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x63696E756D6D6F63 && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2410DF8D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2410ACA9C(uint64_t a1)
{
  v2 = sub_2410ACDE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410ACAD8(uint64_t a1)
{
  v2 = sub_2410ACDE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2410ACB20(uint64_t a1)
{
  v2 = sub_2410ACE38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410ACB5C(uint64_t a1)
{
  v2 = sub_2410ACE38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ATQuestion.Topic.Metadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F88, &qword_2410E39D0);
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F90, &qword_2410E39D8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = *v1;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410ACDE4();
  sub_2410DFA20();
  sub_2410ACE38();
  sub_2410DF790();
  v20 = v13;
  type metadata accessor for ATCommunicationMetadata();
  sub_2410AD408(&unk_27E525A90, 255, type metadata accessor for ATCommunicationMetadata);
  v15 = v18;
  sub_2410DF830();
  (*(v19 + 8))(v7, v15);
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_2410ACDE4()
{
  result = qword_27E525F98;
  if (!qword_27E525F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525F98);
  }

  return result;
}

unint64_t sub_2410ACE38()
{
  result = qword_27E525FA0;
  if (!qword_27E525FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525FA0);
  }

  return result;
}

uint64_t ATQuestion.Topic.Metadata.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x245CD9E40](0);
  return sub_2410DF470();
}

uint64_t ATQuestion.Topic.Metadata.hashValue.getter()
{
  v1 = *v0;
  sub_2410DF990();
  MEMORY[0x245CD9E40](0);
  sub_2410DF470();
  return sub_2410DF9F0();
}

uint64_t ATQuestion.Topic.Metadata.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FB0, &qword_2410E39E0);
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FB8, &unk_2410E39E8);
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410ACDE4();
  sub_2410DFA10();
  if (v2)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v13 = v26;
  v14 = sub_2410DF780();
  v15 = (2 * *(v14 + 16)) | 1;
  v27 = v14;
  v28 = v14 + 32;
  v29 = 0;
  v30 = v15;
  v16 = v11;
  if (sub_24108A0B0() || v29 != v30 >> 1)
  {
    v17 = sub_2410DF5A0();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525FC0, &qword_2410E18F0) + 48);
    *v19 = &type metadata for ATQuestion.Topic.Metadata;
    sub_2410DF680();
    sub_2410DF590();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v13 + 8))(v16, v8);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_2410ACE38();
  sub_2410DF670();
  type metadata accessor for ATCommunicationMetadata();
  sub_2410AD408(&qword_27E525A88, 255, type metadata accessor for ATCommunicationMetadata);
  sub_2410DF730();
  (*(v25 + 8))(v7, v4);
  (*(v13 + 8))(v11, v8);
  swift_unknownObjectRelease();
  v22 = v23;
  *v24 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_2410AD320()
{
  v1 = *v0;
  sub_2410DF990();
  MEMORY[0x245CD9E40](0);
  sub_2410DF470();
  return sub_2410DF9F0();
}

uint64_t sub_2410AD374()
{
  v1 = *v0;
  MEMORY[0x245CD9E40](0);
  return sub_2410DF470();
}

uint64_t sub_2410AD3B8()
{
  v1 = *v0;
  sub_2410DF990();
  MEMORY[0x245CD9E40](0);
  sub_2410DF470();
  return sub_2410DF9F0();
}

uint64_t sub_2410AD408(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2410AD454(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_24108F4C4(0, &unk_27E525BC0, 0x277D82BB8);
  v4 = v2;
  v5 = v3;
  v6 = sub_2410DF460();

  return v6 & 1;
}

uint64_t ATQuestion.Topic.description.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATQuestionTopic_rawValue);
  v2 = *(v0 + OBJC_IVAR___ATQuestionTopic_rawValue + 8);

  return v1;
}

id ATQuestion.Topic.__allocating_init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___ATQuestionTopic_rawValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ATQuestion.Topic.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___ATQuestionTopic_rawValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t ATQuestion.Topic.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_241082EC4(a1, v7, &unk_27E525CA0, "P?");
  if (!v8)
  {
    sub_241086184(v7, &unk_27E525CA0, "P?");
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  if (*(v1 + OBJC_IVAR___ATQuestionTopic_rawValue) == *&v6[OBJC_IVAR___ATQuestionTopic_rawValue] && *(v1 + OBJC_IVAR___ATQuestionTopic_rawValue + 8) == *&v6[OBJC_IVAR___ATQuestionTopic_rawValue + 8])
  {

    v4 = 1;
  }

  else
  {
    v4 = sub_2410DF8D0();
  }

  return v4 & 1;
}

void ATQuestion.Topic.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATQuestionTopic_rawValue);
  v2 = *(v0 + OBJC_IVAR___ATQuestionTopic_rawValue + 8);
  JUMPOUT(0x245CD9690);
}

id ATQuestion.Topic.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2410AD844@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = objc_allocWithZone(v2);
  v7 = &v6[OBJC_IVAR___ATQuestionTopic_rawValue];
  *v7 = v4;
  *(v7 + 1) = v5;
  v9.receiver = v6;
  v9.super_class = v2;
  result = objc_msgSendSuper2(&v9, sel_init);
  *a2 = result;
  return result;
}

uint64_t ATQuestion.systemId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_systemId;
  v4 = sub_2410DEF00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_2410ADA4C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_2410DF0A0();

  return v6;
}

uint64_t ATQuestion.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5AskTo10ATQuestion_id);
  v2 = *(v0 + OBJC_IVAR____TtC5AskTo10ATQuestion_id + 8);

  return v1;
}

id ATQuestion.topic.getter()
{
  v1 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ATQuestion.topic.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ATQuestion.topicMetadata.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    result = v5;
  }

  *a1 = v5;
  return result;
}

id sub_2410ADD1C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    result = v6;
  }

  *a2 = v6;
  return result;
}

void ATQuestion.topicMetadata.setter(unint64_t *a1)
{
  v2 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  *a1;
  if (*a1)
  {
    v3 = *a1;
  }

  else
  {
    v3 = 0xF000000000000007;
  }

  swift_beginAccess();
  v4 = *(v1 + v2);
  *(v1 + v2) = v3;
  sub_2410ADDF0(v4);
}

void sub_2410ADDF0(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

void (*ATQuestion.topicMetadata.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v7 = v6;
  }

  *(v4 + 24) = v6;
  return sub_2410ADEAC;
}

void sub_2410ADEAC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {
    v7 = *(v6 + v5);
    if (v3)
    {
      *(v6 + v5) = v3;
      v8 = v3;
    }

    else
    {
      *(v6 + v5) = 0xF000000000000007;
    }

    sub_2410ADDF0(v7);
  }

  else
  {
    v9 = *(v6 + v5);
    if (!v3)
    {
      v3 = 0xF000000000000007;
    }

    *(v6 + v5) = v3;
    sub_2410ADDF0(v9);
  }

  free(v2);
}

unint64_t ATQuestion.askToTopicMetadata.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;
  return sub_2410ADF9C(v4);
}

unint64_t sub_2410ADF9C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return (result & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void ATQuestion.askToTopicMetadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  sub_2410ADDF0(v4);
}

uint64_t ATQuestion.customTopicData.getter()
{
  v1 = v0 + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData;
  swift_beginAccess();
  v2 = *v1;
  sub_24108AFBC(*v1, *(v1 + 8));
  return v2;
}

uint64_t ATQuestion.customTopicData.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_2410861E4(v6, v7);
}

id sub_2410AE358(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_2410DF0A0();

  return v6;
}

uint64_t sub_2410AE3DC(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_2410AE43C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2410DF0C0();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_2410AE4B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t ATQuestion.answerChoices.getter()
{
  v1 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t ATQuestion.answerChoices.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *ATQuestion.defaultAnswerChoice.getter()
{
  v1 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ATQuestion.defaultAnswerChoice.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_2410AEC68(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = sub_2410DF0A0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2410AED08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_2410DF0C0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_2410AEF60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_241082EC4(v4 + v8, a4, a2, a3);
}

uint64_t sub_2410AF1D0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_2410BC314(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

unint64_t ATQuestion.TopicMetadata.description.getter()
{
  v1 = *v0;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    sub_2410DF570();

    v8 = 0xD000000000000021;
    v2 = [v1 & 0x7FFFFFFFFFFFFFFFLL description];
  }

  else
  {
    sub_2410DF570();

    v8 = 0xD000000000000010;
    v2 = [v1 description];
  }

  v3 = v2;
  v4 = sub_2410DF0C0();
  v6 = v5;

  MEMORY[0x245CD9620](v4, v6);

  MEMORY[0x245CD9620](32032, 0xE200000000000000);
  return v8;
}

unint64_t sub_2410AF3B8()
{
  if (*v0)
  {
    result = 0xD00000000000001ELL;
  }

  else
  {
    result = 0x63696E756D6D6F63;
  }

  *v0;
  return result;
}

uint64_t sub_2410AF404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x63696E756D6D6F63 && a2 == 0xED00006E6F697461;
  if (v6 || (sub_2410DF8D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000002410E9380 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2410DF8D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2410AF4F0(uint64_t a1)
{
  v2 = sub_2410BBCEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410AF52C(uint64_t a1)
{
  v2 = sub_2410BBCEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2410AF568(uint64_t a1)
{
  v2 = sub_2410BBD94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410AF5A4(uint64_t a1)
{
  v2 = sub_2410BBD94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2410AF5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2410DF8D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2410AF660(uint64_t a1)
{
  v2 = sub_2410BBD40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410AF69C(uint64_t a1)
{
  v2 = sub_2410BBD40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ATQuestion.TopicMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF8, &qword_2410E3A08);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526000, &qword_2410E3A10);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526008, &qword_2410E3A18);
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = &v22 - v12;
  v14 = *v1;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410BBCEC();
  sub_2410DFA20();
  if (v14 < 0)
  {
    v18 = v14 & 0x7FFFFFFFFFFFFFFFLL;
    LOBYTE(v27) = 1;
    sub_2410BBD40();
    v19 = v22;
    v20 = v26;
    sub_2410DF790();
    v27 = v18;
    type metadata accessor for ATContentAgeRestrictionExceptionMetadata();
    sub_2410AD408(&qword_27E526020, 255, type metadata accessor for ATContentAgeRestrictionExceptionMetadata);
    v21 = v24;
    sub_2410DF830();
    (*(v23 + 8))(v19, v21);
    return (*(v10 + 8))(v13, v20);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_2410BBD94();
    v16 = v26;
    sub_2410DF790();
    v27 = v14;
    type metadata accessor for ATCommunicationMetadata();
    sub_2410AD408(&unk_27E525A90, 255, type metadata accessor for ATCommunicationMetadata);
    sub_2410DF830();
    (*(v25 + 8))(v9, v6);
    return (*(v10 + 8))(v13, v16);
  }
}

uint64_t ATQuestion.TopicMetadata.hashValue.getter()
{
  v1 = *v0;
  sub_2410DF990();
  MEMORY[0x245CD9E40](v1 >> 63);
  sub_2410DF470();
  return sub_2410DF9F0();
}

uint64_t ATQuestion.TopicMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v40 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526030, &qword_2410E3A20);
  v39 = *(v37 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526038, &qword_2410E3A28);
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526040, &qword_2410E3A30);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2410BBCEC();
  v17 = v41;
  sub_2410DFA10();
  if (!v17)
  {
    v36 = v6;
    v18 = v40;
    v41 = v11;
    v19 = sub_2410DF780();
    v20 = (2 * *(v19 + 16)) | 1;
    v43 = v19;
    v44 = v19 + 32;
    v45 = 0;
    v46 = v20;
    v21 = sub_24108A0DC();
    v22 = v10;
    if (v21 == 2 || v45 != v46 >> 1)
    {
      v25 = sub_2410DF5A0();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525FC0, &qword_2410E18F0) + 48);
      *v27 = &type metadata for ATQuestion.TopicMetadata;
      sub_2410DF680();
      sub_2410DF590();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v41 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v21)
      {
        LOBYTE(v47) = 1;
        sub_2410BBD40();
        v23 = v5;
        sub_2410DF670();
        v24 = v41;
        type metadata accessor for ATContentAgeRestrictionExceptionMetadata();
        sub_2410AD408(&qword_27E526048, 255, type metadata accessor for ATContentAgeRestrictionExceptionMetadata);
        v33 = v37;
        sub_2410DF730();
        (*(v39 + 8))(v23, v33);
        (*(v24 + 8))(v14, v22);
        swift_unknownObjectRelease();
        v34 = v47 | 0x8000000000000000;
      }

      else
      {
        LOBYTE(v47) = 0;
        sub_2410BBD94();
        v30 = v9;
        sub_2410DF670();
        v31 = v41;
        type metadata accessor for ATCommunicationMetadata();
        sub_2410AD408(&qword_27E525A88, 255, type metadata accessor for ATCommunicationMetadata);
        v32 = v36;
        sub_2410DF730();
        (*(v38 + 8))(v30, v32);
        (*(v31 + 8))(v14, v10);
        swift_unknownObjectRelease();
        v34 = v47;
      }

      *v18 = v34;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_2410B0108()
{
  v1 = *v0;
  sub_2410DF990();
  MEMORY[0x245CD9E40](v1 >> 63);
  sub_2410DF470();
  return sub_2410DF9F0();
}

uint64_t sub_2410B01A0()
{
  v1 = *v0;
  sub_2410DF990();
  MEMORY[0x245CD9E40](v1 >> 63);
  sub_2410DF470();
  return sub_2410DF9F0();
}

uint64_t ATQuestion.__allocating_init(id:topic:title:summary:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v35 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = sub_2410DEF00();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = objc_allocWithZone(v6);
  sub_2410DEEF0();
  v32 = v15;
  v33 = sub_2410DEEC0();
  sub_2410DEEA0();
  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v17 = sub_2410DEEC0();
    v30 = *(v12 + 8);
    v30(v10, v11);
    v29 = sub_2410DF0A0();
    v28 = sub_2410DF0A0();
    v18 = sub_2410DF0A0();

    v19 = sub_2410DF0A0();

    type metadata accessor for ATAnswerChoice();
    v20 = sub_2410DF2B0();
    v21 = v33;
    v22 = v17;
    v23 = v17;
    v34 = v11;
    v24 = v35;
    v25 = v28;
    v26 = v29;
    v27 = [v31 initWithSystemId:v33 version:v23 id:v35 topic:v29 title:v28 summary:v18 longTitle:7.0 longSummary:v19 notificationText:0 answerChoices:v20];

    v30(v32, v34);
    return v27;
  }

  return result;
}

uint64_t ATQuestion.init(id:topic:title:summary:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_2410BBDE8(a1, a2, a3, a4, a5, a6);

  return v7;
}

uint64_t ATQuestion.__allocating_init(id:topic:title:summary:shortTitle:shortSummary:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v36 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - v9;
  v11 = sub_2410DEF00();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = objc_allocWithZone(v6);
  sub_2410DEEF0();
  v35 = v15;
  v33 = sub_2410DEEC0();
  sub_2410DEEA0();
  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v17 = sub_2410DEEC0();
    v18 = *(v12 + 8);
    v29 = v12 + 8;
    v30 = v17;
    v31 = v18;
    v18(v10, v11);
    v19 = sub_2410DF0A0();
    v20 = sub_2410DF0A0();
    v21 = sub_2410DF0A0();

    v22 = sub_2410DF0A0();

    type metadata accessor for ATAnswerChoice();
    v23 = sub_2410DF2B0();
    v24 = v33;
    v25 = v30;
    v26 = v11;
    v27 = v36;
    v28 = [v32 initWithSystemId:v33 version:v30 id:v36 topic:v19 title:v20 summary:v21 longTitle:7.0 longSummary:v22 notificationText:0 answerChoices:v23];

    v31(v35, v26);
    return v28;
  }

  return result;
}

uint64_t ATQuestion.init(id:topic:title:summary:shortTitle:shortSummary:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_2410BC074(a1, a2, a3, a4, a5, a6);

  return v7;
}

id ATQuestion.__allocating_init(id:topic:title:summary:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a6;
  v67 = a5;
  v65 = a4;
  v64 = a3;
  v63 = a2;
  v69 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v59 - v10;
  v11 = sub_2410DEF00();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v16;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v59 - v18;
  v66 = &v59 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v59 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v59 - v23;
  v71 = &v59 - v23;
  sub_2410DEEF0();
  v25 = *(v12 + 16);
  v70 = v22;
  v25(v22, v24, v11);
  v25(v19, a1, v11);
  v62 = v6;
  v72 = objc_allocWithZone(v6);
  v25(v16, v22, v11);
  v61 = sub_2410DEEB0();
  v60 = v26;
  v27 = objc_allocWithZone(v6);
  (*(v12 + 56))(&v27[OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash], 1, 1, v11);
  *&v27[OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata] = 0xF000000000000007;
  *&v27[OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData] = xmmword_2410E1830;
  v28 = &v27[OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v27[OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v27[OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  *&v27[OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices] = MEMORY[0x277D84F90];
  *&v27[OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice] = 0;
  v32 = &v27[OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &v27[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v27[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v27[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v27[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  v38 = sub_2410DEE90();
  (*(*(v38 - 8) + 56))(&v27[v37], 1, 1, v38);
  v39 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  v40 = sub_2410DEDF0();
  (*(*(v40 - 8) + 56))(&v27[v39], 1, 1, v40);
  v25(&v27[OBJC_IVAR____TtC5AskTo10ATQuestion_systemId], v74, v11);
  *&v27[OBJC_IVAR____TtC5AskTo10ATQuestion_version] = 0x401C000000000000;
  v41 = &v27[OBJC_IVAR____TtC5AskTo10ATQuestion_id];
  v42 = v60;
  *v41 = v61;
  v41[1] = v42;
  v43 = v63;
  *&v27[OBJC_IVAR____TtC5AskTo10ATQuestion_topic] = v63;
  v44 = &v27[OBJC_IVAR____TtC5AskTo10ATQuestion_title];
  v45 = v65;
  *v44 = v64;
  *(v44 + 1) = v45;
  v46 = &v27[OBJC_IVAR____TtC5AskTo10ATQuestion_summary];
  v47 = v68;
  *v46 = v67;
  *(v46 + 1) = v47;
  swift_beginAccess();
  *v28 = 0;
  *(v28 + 1) = 0;
  swift_beginAccess();
  *v29 = 0;
  *(v29 + 1) = 0;
  swift_beginAccess();
  v48 = *(v30 + 1);
  *v30 = 0;
  *(v30 + 1) = 0;
  v49 = v43;

  swift_beginAccess();
  v50 = *&v27[v31];
  *&v27[v31] = MEMORY[0x277D84F90];

  v75.receiver = v27;
  v75.super_class = v62;
  v51 = objc_msgSendSuper2(&v75, sel_init);
  v52 = v73;
  sub_2410B1788(v73);

  v53 = *(v12 + 8);
  v53(v69, v11);
  v53(v74, v11);
  v53(v66, v11);
  v53(v70, v11);
  v53(v71, v11);
  v54 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  sub_2410BC314(v52, v51 + v54, &qword_27E525FE0, &qword_2410E1900);
  swift_endAccess();

  v55 = v72;
  swift_getObjectType();
  v56 = *((*MEMORY[0x277D85000] & *v55) + 0x30);
  v57 = *((*MEMORY[0x277D85000] & *v55) + 0x34);
  swift_deallocPartialClassInstance();
  return v51;
}

id sub_2410B0FD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v74 = a8;
  v71 = a7;
  v69 = a6;
  v68 = a5;
  v67 = a4;
  v66 = a3;
  v75 = a2;
  v76 = a1;
  v80 = a15;
  v78 = a14;
  v77 = a13;
  v73 = a12;
  v72 = a11;
  v70 = a10;
  ObjectType = swift_getObjectType();
  v65 = ObjectType;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v79 = &v62 - v19;
  v20 = sub_2410DEF00();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v62 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v21 + 16);
  v24();
  v64 = sub_2410DEEB0();
  v63 = v25;
  v26 = objc_allocWithZone(ObjectType);
  (*(v21 + 56))(&v26[OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash], 1, 1, v20);
  *&v26[OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata] = 0xF000000000000007;
  *&v26[OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData] = xmmword_2410E1830;
  v27 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  *&v26[OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices] = MEMORY[0x277D84F90];
  *&v26[OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice] = 0;
  v31 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  v37 = sub_2410DEE90();
  (*(*(v37 - 8) + 56))(&v26[v36], 1, 1, v37);
  v38 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  v39 = sub_2410DEDF0();
  (*(*(v39 - 8) + 56))(&v26[v38], 1, 1, v39);
  v40 = v62;
  (v24)(&v26[OBJC_IVAR____TtC5AskTo10ATQuestion_systemId], v62, v20);
  *&v26[OBJC_IVAR____TtC5AskTo10ATQuestion_version] = a9;
  v41 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_id];
  v42 = v63;
  *v41 = v64;
  v41[1] = v42;
  v43 = v66;
  *&v26[OBJC_IVAR____TtC5AskTo10ATQuestion_topic] = v66;
  v44 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_title];
  v45 = v68;
  *v44 = v67;
  *(v44 + 1) = v45;
  v46 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_summary];
  v47 = v71;
  *v46 = v69;
  *(v46 + 1) = v47;
  swift_beginAccess();
  v48 = v70;
  *v27 = v74;
  *(v27 + 1) = v48;
  swift_beginAccess();
  v49 = v73;
  *v28 = v72;
  *(v28 + 1) = v49;
  swift_beginAccess();
  v50 = *(v29 + 1);
  v51 = v78;
  *v29 = v77;
  *(v29 + 1) = v51;
  v52 = v43;

  swift_beginAccess();
  v53 = *&v26[v30];
  *&v26[v30] = v80;

  v82.receiver = v26;
  v82.super_class = v65;
  v54 = objc_msgSendSuper2(&v82, sel_init);
  v55 = v79;
  sub_2410B1788(v79);

  v56 = *(v21 + 8);
  v56(v75, v20);
  v56(v76, v20);
  v56(v40, v20);
  v57 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  sub_2410BC314(v55, v54 + v57, &qword_27E525FE0, &qword_2410E1900);
  swift_endAccess();

  v58 = v81;
  swift_getObjectType();
  v59 = *((*MEMORY[0x277D85000] & *v58) + 0x30);
  v60 = *((*MEMORY[0x277D85000] & *v58) + 0x34);
  swift_deallocPartialClassInstance();
  return v54;
}

uint64_t sub_2410B1788@<X0>(char *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v10 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
    swift_beginAccess();
    v57 = *(v1 + v10);
    v58 = a1;
    v11 = *(v1 + v3);
    v52 = v11;
    if ((v11 & 0x8000000000000000) != 0)
    {
      v56 = 0;
    }

    else
    {
      v12 = v11;
      v56 = v11;
    }

    v13 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData);
    swift_beginAccess();
    v54 = v13[1];
    v55 = *v13;
    v14 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_title);
    swift_beginAccess();
    v15 = v14[1];
    v53 = *v14;
    v16 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_summary);
    swift_beginAccess();
    v17 = v16[1];
    v51 = *v16;
    v18 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle);
    swift_beginAccess();
    v19 = v18[1];
    v20 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary);
    v50 = *v18;
    swift_beginAccess();
    v49 = v20[1];
    v21 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText);
    v48 = *v20;
    swift_beginAccess();
    v47 = *v21;
    v59 = v21[1];
    v22 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
    swift_beginAccess();
    v65 = *(v1 + v22);
    v23 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
    swift_beginAccess();
    v64 = *(v1 + v23);
    v24 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier);
    swift_beginAccess();
    v46 = *v24;
    v63 = v24[1];
    v25 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName);
    swift_beginAccess();
    v45 = *v25;
    v62 = v25[1];
    v26 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier);
    swift_beginAccess();
    v44 = *v26;
    v61 = v26[1];
    v27 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier);
    swift_beginAccess();
    v43 = *v27;
    v60 = v27[1];
    v28 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier);
    swift_beginAccess();
    v29 = v28[1];
    v42 = *v28;
    v30 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
    swift_beginAccess();
    v31 = _s10AllContentVMa(0);
    v67 = v31;
    v68 = sub_2410AD408(&qword_27E526248, 255, _s10AllContentVMa);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
    sub_241082EC4(v1 + v30, boxed_opaque_existential_1 + SLODWORD(v31[5].Kind), &qword_27E525FE8, &qword_2410E39F8);
    v33 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
    swift_beginAccess();
    sub_241082EC4(v1 + v33, boxed_opaque_existential_1 + SHIDWORD(v31[5].Kind), &qword_27E525FF0, &qword_2410E3A00);
    *boxed_opaque_existential_1 = v57;
    boxed_opaque_existential_1[1] = v56;
    boxed_opaque_existential_1[2] = v52;
    boxed_opaque_existential_1[3] = v55;
    boxed_opaque_existential_1[4] = v54;
    boxed_opaque_existential_1[5] = v53;
    boxed_opaque_existential_1[6] = v15;
    boxed_opaque_existential_1[7] = v51;
    boxed_opaque_existential_1[8] = v17;
    *&v34 = v50;
    *(&v34 + 1) = v19;
    *&v35 = v48;
    *(&v35 + 1) = v49;
    *(boxed_opaque_existential_1 + 11) = v35;
    *(boxed_opaque_existential_1 + 9) = v34;
    boxed_opaque_existential_1[13] = v47;
    boxed_opaque_existential_1[14] = v59;
    boxed_opaque_existential_1[15] = v65;
    boxed_opaque_existential_1[16] = v64;
    boxed_opaque_existential_1[17] = v46;
    boxed_opaque_existential_1[18] = v63;
    boxed_opaque_existential_1[19] = v45;
    boxed_opaque_existential_1[20] = v62;
    boxed_opaque_existential_1[21] = v44;
    boxed_opaque_existential_1[22] = v61;
    boxed_opaque_existential_1[23] = v43;
    boxed_opaque_existential_1[24] = v60;
    boxed_opaque_existential_1[25] = v42;
    boxed_opaque_existential_1[26] = v29;
    v36 = v57;
    sub_2410ADF9C(v52);
    sub_24108AFBC(v55, v54);

    v37 = v64;

    a1 = v58;
  }

  else
  {
    v5 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
    swift_beginAccess();
    v6 = *(v1 + v5);
    sub_2410ADF9C(v4);
    sub_2410ADF9C(v4);
    v7 = sub_2410BC658(v6, v4);
    v9 = v8;
    v67 = &_s20CommunicationContentVN;
    v68 = sub_2410BE6E0();
    sub_2410ADDF0(v4);
    v66[0] = v7;
    v66[1] = v9;
  }

  v38 = v67;
  v39 = v68;
  v40 = __swift_project_boxed_opaque_existential_1(v66, v67);
  sub_2410B4F48(v40, v38, v39, a1);
  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t sub_2410B1F18@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  v3 = (*v2 + *a1);
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t ATQuestion.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_2410DEDF0();
  v188 = *(v2 - 8);
  v3 = *(v188 + 64);
  MEMORY[0x28223BE20](v2);
  v184 = &v179 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526050, &qword_2410E3A38);
  v5 = *(*(v186 - 8) + 64);
  MEMORY[0x28223BE20](v186);
  v192 = &v179 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v187 = &v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v189 = &v179 - v11;
  v195 = sub_2410DEE90();
  v193 = *(v195 - 8);
  v12 = *(v193 + 64);
  MEMORY[0x28223BE20](v195);
  v185 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526058, &qword_2410E3A40);
  v14 = *(*(v191 - 8) + 64);
  MEMORY[0x28223BE20](v191);
  v196 = &v179 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE8, &qword_2410E39F8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v190 = &v179 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v194 = &v179 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526060, &qword_2410E3A48);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v197 = &v179 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v179 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v179 - v29;
  v31 = sub_2410DEF00();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v179 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241082EC4(a1, v202, &unk_27E525CA0, "P?");
  if (!v203)
  {
    v47 = &unk_27E525CA0;
    v48 = "P?";
    v49 = v202;
LABEL_12:
    sub_241086184(v49, v47, v48);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v181 = v2;
  v36 = v201;
  (*(v32 + 16))(v35, &v201[OBJC_IVAR____TtC5AskTo10ATQuestion_systemId], v31);
  v37 = v198;
  v38 = sub_2410DEED0();
  v182 = *(v32 + 8);
  v183 = v32 + 8;
  v182(v35, v31);
  if ((v38 & 1) == 0 || *(v37 + OBJC_IVAR____TtC5AskTo10ATQuestion_version) != *&v36[OBJC_IVAR____TtC5AskTo10ATQuestion_version] || (*(v37 + OBJC_IVAR____TtC5AskTo10ATQuestion_id) != *&v36[OBJC_IVAR____TtC5AskTo10ATQuestion_id] || *(v37 + OBJC_IVAR____TtC5AskTo10ATQuestion_id + 8) != *&v36[OBJC_IVAR____TtC5AskTo10ATQuestion_id + 8]) && (v39 = sub_2410DF8D0(), v37 = v198, (v39 & 1) == 0))
  {

    goto LABEL_14;
  }

  v40 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  sub_241082EC4(v37 + v40, v30, &qword_27E525FE0, &qword_2410E1900);
  v41 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  v42 = *(v21 + 48);
  v43 = v197;
  sub_241082EC4(v30, v197, &qword_27E525FE0, &qword_2410E1900);
  v180 = v36;
  v44 = &v36[v41];
  v45 = v42;
  sub_241082EC4(v44, v43 + v42, &qword_27E525FE0, &qword_2410E1900);
  v46 = *(v32 + 48);
  if (v46(v43, 1, v31) == 1)
  {
    sub_241086184(v30, &qword_27E525FE0, &qword_2410E1900);
    if (v46(v43 + v45, 1, v31) == 1)
    {
      sub_241086184(v43, &qword_27E525FE0, &qword_2410E1900);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_241082EC4(v43, v28, &qword_27E525FE0, &qword_2410E1900);
  if (v46(v43 + v45, 1, v31) == 1)
  {

    sub_241086184(v30, &qword_27E525FE0, &qword_2410E1900);
    v182(v28, v31);
LABEL_19:
    v47 = &qword_27E526060;
    v48 = &qword_2410E3A48;
    v49 = v43;
    goto LABEL_12;
  }

  (*(v32 + 32))(v35, v43 + v45, v31);
  sub_2410AD408(&qword_27E526078, 255, MEMORY[0x277CC95F0]);
  v52 = sub_2410DF090();
  v53 = v182;
  v182(v35, v31);
  sub_241086184(v30, &qword_27E525FE0, &qword_2410E1900);
  v53(v28, v31);
  sub_241086184(v43, &qword_27E525FE0, &qword_2410E1900);
  if ((v52 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_21:
  sub_24108F4C4(0, &unk_27E525BC0, 0x277D82BB8);
  v54 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  v55 = v198;
  swift_beginAccess();
  v56 = *(v55 + v54);
  v57 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  v58 = v180;
  swift_beginAccess();
  v59 = *&v58[v57];
  v60 = v56;
  v61 = v59;
  LOBYTE(v59) = sub_2410DF460();

  if ((v59 & 1) == 0)
  {
    goto LABEL_60;
  }

  v62 = (v55 + OBJC_IVAR____TtC5AskTo10ATQuestion_title);
  swift_beginAccess();
  v63 = *v62;
  v64 = v62[1];
  v65 = &v58[OBJC_IVAR____TtC5AskTo10ATQuestion_title];
  swift_beginAccess();
  if ((v63 != *v65 || v64 != *(v65 + 1)) && (sub_2410DF8D0() & 1) == 0)
  {
    goto LABEL_60;
  }

  v66 = (v198 + OBJC_IVAR____TtC5AskTo10ATQuestion_summary);
  swift_beginAccess();
  v67 = *v66;
  v68 = v66[1];
  v69 = &v58[OBJC_IVAR____TtC5AskTo10ATQuestion_summary];
  swift_beginAccess();
  if ((v67 != *v69 || v68 != *(v69 + 1)) && (sub_2410DF8D0() & 1) == 0)
  {
    goto LABEL_60;
  }

  v70 = (v198 + OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle);
  swift_beginAccess();
  v71 = *v70;
  v72 = v70[1];
  v73 = &v58[OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle];
  swift_beginAccess();
  v74 = *(v73 + 1);
  if (v72)
  {
    if (!v74 || (v71 != *v73 || v72 != v74) && (sub_2410DF8D0() & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (v74)
  {
    goto LABEL_60;
  }

  v75 = (v198 + OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary);
  swift_beginAccess();
  v76 = *v75;
  v77 = v75[1];
  v78 = &v58[OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary];
  swift_beginAccess();
  v79 = *(v78 + 1);
  if (v77)
  {
    if (!v79 || (v76 != *v78 || v77 != v79) && (sub_2410DF8D0() & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (v79)
  {
    goto LABEL_60;
  }

  v80 = (v198 + OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText);
  swift_beginAccess();
  v81 = *v80;
  v82 = v80[1];
  v83 = &v58[OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText];
  swift_beginAccess();
  v84 = *(v83 + 1);
  if (v82)
  {
    if (!v84 || (v81 != *v83 || v82 != v84) && (sub_2410DF8D0() & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (v84)
  {
    goto LABEL_60;
  }

  v85 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  v86 = v198;
  swift_beginAccess();
  v87 = *(v86 + v85);
  v88 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  swift_beginAccess();
  v89 = *&v58[v88];

  v90 = sub_241093744(v87, v89);

  if ((v90 & 1) == 0)
  {
    goto LABEL_60;
  }

  v91 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  swift_beginAccess();
  v92 = *(v86 + v91);
  v93 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  swift_beginAccess();
  v94 = *&v58[v93];
  if (!v92)
  {
    if (!v94)
    {
      goto LABEL_53;
    }

LABEL_60:

    goto LABEL_14;
  }

  if (!v94)
  {
    goto LABEL_60;
  }

  type metadata accessor for ATAnswerChoice();
  v95 = v94;
  v96 = v92;
  v97 = sub_2410DF460();

  if ((v97 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_53:
  v98 = (v198 + OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier);
  swift_beginAccess();
  v99 = *v98;
  v100 = v98[1];
  v101 = &v58[OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier];
  swift_beginAccess();
  v102 = *(v101 + 1);
  if (v100)
  {
    if (!v102 || (v99 != *v101 || v100 != v102) && (sub_2410DF8D0() & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  else if (v102)
  {
    goto LABEL_90;
  }

  v103 = (v198 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName);
  swift_beginAccess();
  v104 = *v103;
  v105 = v103[1];
  v106 = &v180[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName];
  swift_beginAccess();
  v107 = *(v106 + 1);
  if (v105)
  {
    if (!v107 || (v104 != *v106 || v105 != v107) && (sub_2410DF8D0() & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  else if (v107)
  {
    goto LABEL_90;
  }

  v108 = (v198 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier);
  swift_beginAccess();
  v109 = *v108;
  v110 = v108[1];
  v111 = &v180[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier];
  swift_beginAccess();
  v112 = *(v111 + 1);
  if (v110)
  {
    if (!v112 || (v109 != *v111 || v110 != v112) && (sub_2410DF8D0() & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  else if (v112)
  {
    goto LABEL_90;
  }

  v113 = (v198 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier);
  swift_beginAccess();
  v114 = *v113;
  v115 = v113[1];
  v116 = &v180[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier];
  swift_beginAccess();
  v117 = *(v116 + 1);
  if (v115)
  {
    if (!v117 || (v114 != *v116 || v115 != v117) && (sub_2410DF8D0() & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  else if (v117)
  {
    goto LABEL_90;
  }

  v118 = (v198 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier);
  swift_beginAccess();
  v119 = *v118;
  v120 = v118[1];
  v121 = &v180[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier];
  swift_beginAccess();
  v122 = *(v121 + 1);
  if (v120)
  {
    if (!v122 || (v119 != *v121 || v120 != v122) && (sub_2410DF8D0() & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  else if (v122)
  {
    goto LABEL_90;
  }

  v123 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  v124 = v198;
  swift_beginAccess();
  v125 = v194;
  sub_241082EC4(v124 + v123, v194, &qword_27E525FE8, &qword_2410E39F8);
  v126 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  v127 = v180;
  swift_beginAccess();
  v128 = *(v191 + 48);
  v129 = v125;
  v130 = v196;
  sub_241082EC4(v129, v196, &qword_27E525FE8, &qword_2410E39F8);
  sub_241082EC4(&v127[v126], v130 + v128, &qword_27E525FE8, &qword_2410E39F8);
  v131 = *(v193 + 48);
  if (v131(v130, 1, v195) == 1)
  {
    sub_241086184(v194, &qword_27E525FE8, &qword_2410E39F8);
    if (v131(&v196[v128], 1, v195) == 1)
    {
      sub_241086184(v196, &qword_27E525FE8, &qword_2410E39F8);
      goto LABEL_99;
    }

    goto LABEL_97;
  }

  v132 = v196;
  sub_241082EC4(v196, v190, &qword_27E525FE8, &qword_2410E39F8);
  if (v131((v132 + v128), 1, v195) == 1)
  {

    sub_241086184(v194, &qword_27E525FE8, &qword_2410E39F8);
    (*(v193 + 8))(v190, v195);
LABEL_97:
    v47 = &qword_27E526058;
    v48 = &qword_2410E3A40;
    v49 = v196;
    goto LABEL_12;
  }

  v133 = v193;
  v134 = v195;
  v135 = v196;
  v136 = v185;
  (*(v193 + 32))(v185, &v196[v128], v195);
  sub_2410AD408(&qword_27E526070, 255, MEMORY[0x277CC9578]);
  v137 = v190;
  v138 = sub_2410DF090();
  v139 = *(v133 + 8);
  v139(v136, v134);
  sub_241086184(v194, &qword_27E525FE8, &qword_2410E39F8);
  v139(v137, v134);
  sub_241086184(v135, &qword_27E525FE8, &qword_2410E39F8);
  if ((v138 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_99:
  v140 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  v141 = v198;
  swift_beginAccess();
  v142 = v189;
  sub_241082EC4(v141 + v140, v189, &qword_27E525FF0, &qword_2410E3A00);
  v143 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  v144 = v180;
  swift_beginAccess();
  v145 = *(v186 + 48);
  v146 = v142;
  v147 = v192;
  sub_241082EC4(v146, v192, &qword_27E525FF0, &qword_2410E3A00);
  sub_241082EC4(&v144[v143], v147 + v145, &qword_27E525FF0, &qword_2410E3A00);
  v148 = *(v188 + 48);
  if (v148(v147, 1, v181) == 1)
  {
    sub_241086184(v189, &qword_27E525FF0, &qword_2410E3A00);
    if (v148(&v192[v145], 1, v181) == 1)
    {
      sub_241086184(v192, &qword_27E525FF0, &qword_2410E3A00);
      goto LABEL_107;
    }

    goto LABEL_105;
  }

  v149 = v192;
  sub_241082EC4(v192, v187, &qword_27E525FF0, &qword_2410E3A00);
  if (v148((v149 + v145), 1, v181) == 1)
  {

    sub_241086184(v189, &qword_27E525FF0, &qword_2410E3A00);
    (*(v188 + 8))(v187, v181);
LABEL_105:
    v47 = &qword_27E526050;
    v48 = &qword_2410E3A38;
    v49 = v192;
    goto LABEL_12;
  }

  v150 = v188;
  v151 = v192;
  v152 = v184;
  v153 = v181;
  (*(v188 + 32))(v184, &v192[v145], v181);
  sub_2410AD408(&qword_27E526068, 255, MEMORY[0x277CC9260]);
  v154 = v187;
  v155 = sub_2410DF090();
  v156 = *(v150 + 8);
  v156(v152, v153);
  sub_241086184(v189, &qword_27E525FF0, &qword_2410E3A00);
  v156(v154, v153);
  sub_241086184(v151, &qword_27E525FF0, &qword_2410E3A00);
  if ((v155 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_107:
  v157 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  v158 = v198;
  swift_beginAccess();
  v159 = *(v158 + v157);
  if ((v159 & 0x8000000000000000) != 0)
  {
    v159 = 0;
  }

  else
  {
    v160 = v159;
  }

  v161 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  v162 = v180;
  swift_beginAccess();
  v163 = *&v162[v161];
  if ((v163 & 0x8000000000000000) != 0)
  {
    if (!v159)
    {
      goto LABEL_119;
    }

    goto LABEL_116;
  }

  v164 = v163;
  if (!v159)
  {
    if (!v163)
    {
      goto LABEL_119;
    }

LABEL_118:

    goto LABEL_14;
  }

  if (!v163)
  {
LABEL_116:
    v164 = 0;
    goto LABEL_118;
  }

  v165 = v159;
  v166 = v164;
  v167 = v165;
  v168 = sub_2410DF460();

  if ((v168 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_119:
  v169 = *(v198 + v157);
  v170 = *&v180[v161];
  if ((~v169 & 0xF000000000000007) != 0)
  {
    v200 = *(v198 + v157);
    if ((~v170 & 0xF000000000000007) == 0)
    {
      sub_2410ADF9C(v169);
      sub_2410ADF9C(v170);
      sub_2410ADF9C(v169);

      v171 = (v169 & 0x7FFFFFFFFFFFFFFFLL);
LABEL_125:

      sub_2410ADDF0(v169);
      sub_2410ADDF0(v170);
      goto LABEL_14;
    }

    v199 = v170;
    sub_2410ADF9C(v169);
    sub_2410ADF9C(v170);
    sub_2410ADF9C(v169);
    v172 = _s5AskTo10ATQuestionC13TopicMetadataO2eeoiySbAE_AEtFZ_0(&v200, &v199);

    sub_2410ADDF0(v169);
    if (v172)
    {
      goto LABEL_127;
    }

LABEL_90:

    goto LABEL_14;
  }

  sub_2410ADF9C(*(v198 + v157));
  sub_2410ADF9C(v170);
  if ((~v170 & 0xF000000000000007) != 0)
  {
    v171 = v180;
    goto LABEL_125;
  }

  sub_2410ADDF0(v169);
LABEL_127:
  v173 = (v198 + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData);
  swift_beginAccess();
  v175 = *v173;
  v174 = v173[1];
  v176 = &v180[OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData];
  swift_beginAccess();
  v177 = *v176;
  v178 = v176[1];
  if (v174 >> 60 == 15)
  {
    sub_24108AFBC(v175, v174);
    sub_24108AFBC(v177, v178);

    if (v178 >> 60 == 15)
    {
      sub_2410861E4(v175, v174);
      v50 = 1;
      return v50 & 1;
    }
  }

  else
  {
    sub_24108AFBC(v175, v174);
    sub_24108AFBC(v177, v178);
    if (v178 >> 60 != 15)
    {
      sub_24108AFBC(v175, v174);
      sub_24108AFBC(v177, v178);
      v50 = sub_2410958F8(v175, v174, v177, v178);
      sub_2410861E4(v177, v178);
      sub_2410861E4(v177, v178);
      sub_2410861E4(v175, v174);

      sub_2410861E4(v175, v174);
      return v50 & 1;
    }
  }

  sub_2410861E4(v175, v174);
  sub_2410861E4(v177, v178);
LABEL_14:
  v50 = 0;
  return v50 & 1;
}

uint64_t sub_2410B35C0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_2410DF4E0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_241086184(v10, &unk_27E525CA0, "P?");
  return v8 & 1;
}

uint64_t ATQuestion.hash.getter()
{
  v1 = v0;
  v2 = sub_2410DEDF0();
  v84 = *(v2 - 8);
  v85 = v2;
  v3 = *(v84 + 64);
  MEMORY[0x28223BE20](v2);
  v79 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v83 = &v78 - v7;
  v8 = sub_2410DEE90();
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = *(v81 + 64);
  MEMORY[0x28223BE20](v8);
  v78 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE8, &qword_2410E39F8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v80 = &v78 - v13;
  v14 = sub_2410DEF00();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v78 - v21;
  sub_2410DFA00();
  sub_2410AD408(&qword_27E526080, 255, MEMORY[0x277CC95F0]);
  sub_2410DF070();
  v23 = *(v0 + OBJC_IVAR____TtC5AskTo10ATQuestion_version);
  if (v23 == 0.0)
  {
    v23 = 0.0;
  }

  MEMORY[0x245CD9E70](*&v23);
  v24 = *(v0 + OBJC_IVAR____TtC5AskTo10ATQuestion_id);
  v25 = *(v0 + OBJC_IVAR____TtC5AskTo10ATQuestion_id + 8);
  sub_2410DF150();
  v26 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  sub_241082EC4(v1 + v26, v22, &qword_27E525FE0, &qword_2410E1900);
  if ((*(v15 + 48))(v22, 1, v14) == 1)
  {
    sub_2410DF9B0();
  }

  else
  {
    (*(v15 + 32))(v18, v22, v14);
    sub_2410DF9B0();
    sub_2410DF070();
    (*(v15 + 8))(v18, v14);
  }

  v27 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  v28 = *(v1 + v27);
  sub_2410DF470();

  v29 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_title);
  swift_beginAccess();
  v31 = *v29;
  v30 = v29[1];

  sub_2410DF150();

  v32 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_summary);
  swift_beginAccess();
  v34 = *v32;
  v33 = v32[1];

  sub_2410DF150();

  v35 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle);
  swift_beginAccess();
  v37 = v81;
  v36 = v82;
  if (v35[1])
  {
    v38 = *v35;
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  v39 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary);
  swift_beginAccess();
  if (v39[1])
  {
    v40 = *v39;
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  v41 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText);
  swift_beginAccess();
  if (v41[1])
  {
    v42 = *v41;
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  v43 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  swift_beginAccess();
  v44 = *(v1 + v43);

  sub_241094094(v86, v44);

  v45 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  swift_beginAccess();
  v46 = *(v1 + v45);
  sub_2410DF9B0();
  if (v46)
  {
    v47 = v46;
    sub_2410DF470();
  }

  v48 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier);
  swift_beginAccess();
  if (v48[1])
  {
    v49 = *v48;
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  v50 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName);
  swift_beginAccess();
  if (v50[1])
  {
    v51 = *v50;
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  v52 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier);
  swift_beginAccess();
  if (v52[1])
  {
    v53 = *v52;
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  v54 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier);
  swift_beginAccess();
  if (v54[1])
  {
    v55 = *v54;
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  v56 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier);
  swift_beginAccess();
  if (v56[1])
  {
    v57 = *v56;
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  v59 = v84;
  v58 = v85;
  v60 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  swift_beginAccess();
  v61 = v1 + v60;
  v62 = v80;
  sub_241082EC4(v61, v80, &qword_27E525FE8, &qword_2410E39F8);
  if ((*(v37 + 48))(v62, 1, v36) == 1)
  {
    sub_2410DF9B0();
  }

  else
  {
    v63 = v78;
    (*(v37 + 32))(v78, v62, v36);
    sub_2410DF9B0();
    sub_2410AD408(&qword_27E526088, 255, MEMORY[0x277CC9578]);
    sub_2410DF070();
    (*(v37 + 8))(v63, v36);
  }

  v64 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  swift_beginAccess();
  v65 = v1 + v64;
  v66 = v83;
  sub_241082EC4(v65, v83, &qword_27E525FF0, &qword_2410E3A00);
  if ((*(v59 + 48))(v66, 1, v58) == 1)
  {
    sub_2410DF9B0();
  }

  else
  {
    v67 = v79;
    (*(v59 + 32))(v79, v66, v58);
    sub_2410DF9B0();
    sub_2410AD408(&qword_27E526090, 255, MEMORY[0x277CC9260]);
    sub_2410DF070();
    (*(v59 + 8))(v67, v58);
  }

  v68 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  v69 = *(v1 + v68);
  sub_2410DF9B0();
  if ((v69 & 0x8000000000000000) == 0)
  {
    MEMORY[0x245CD9E40](0);
    v70 = v69;
    sub_2410DF470();
    sub_2410ADDF0(v69);
  }

  v71 = *(v1 + v68);
  if ((~v71 & 0xF000000000000007) != 0)
  {
    sub_2410DF9B0();
    if (v71 < 0)
    {
      MEMORY[0x245CD9E40](1);
      v73 = (v71 & 0x7FFFFFFFFFFFFFFFLL);
    }

    else
    {
      MEMORY[0x245CD9E40](0);
      v72 = v71;
    }

    sub_2410DF470();
    sub_2410ADDF0(v71);
  }

  else
  {
    sub_2410DF9B0();
  }

  v74 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData);
  swift_beginAccess();
  v75 = v74[1];
  if (v75 >> 60 == 15)
  {
    sub_2410DF9B0();
  }

  else
  {
    v76 = *v74;
    sub_2410DF9B0();
    sub_241086284(v76, v75);
    sub_2410DEE50();
    sub_2410861E4(v76, v75);
  }

  return sub_2410DF9E0();
}

unint64_t sub_2410B4270(char a1)
{
  result = 0x6369706F74;
  switch(a1)
  {
    case 1:
      result = 0x74654D6369706F74;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6F546D6F74737563;
      break;
    case 4:
      result = 0x656C746974;
      break;
    case 5:
      result = 0x7972616D6D7573;
      break;
    case 6:
      result = 0x6C746954676E6F6CLL;
      break;
    case 7:
      result = 0x6D6D7553676E6F6CLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6843726577736E61;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000023;
      break;
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 14:
      result = 0xD000000000000021;
      break;
    case 15:
      result = 0xD00000000000001FLL;
      break;
    case 16:
      result = 0x6974617269707865;
      break;
    case 17:
      result = 0x6B6361626C6C6166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2410B44BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526300, &qword_2410E4680);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410BEAE8();
  sub_2410DFA20();
  v40 = *v3;
  v42 = 0;
  type metadata accessor for ATQuestion.Topic();
  sub_2410AD408(&qword_27E526120, v11, type metadata accessor for ATQuestion.Topic);
  sub_2410DF830();
  if (!v2)
  {
    v40 = *(v3 + 8);
    v12 = v40;
    v42 = 1;
    sub_2410BC590();
    v13 = v12;
    sub_2410DF7D0();

    v40 = *(v3 + 16);
    v42 = 2;
    sub_2410ADF9C(v40);
    sub_2410BC5E4();
    sub_2410DF7D0();
    sub_2410ADDF0(v40);
    v14 = *(v3 + 32);
    v40 = *(v3 + 24);
    v41 = v14;
    v42 = 3;
    sub_24108AFBC(v40, v14);
    sub_24108C350();
    sub_2410DF7D0();
    sub_2410861E4(v40, v41);
    v15 = *(v3 + 40);
    v16 = *(v3 + 48);
    LOBYTE(v40) = 4;
    sub_2410DF800();
    v17 = *(v3 + 56);
    v18 = *(v3 + 64);
    LOBYTE(v40) = 5;
    sub_2410DF800();
    v19 = *(v3 + 72);
    v20 = *(v3 + 80);
    LOBYTE(v40) = 6;
    sub_2410DF7A0();
    v21 = *(v3 + 88);
    v22 = *(v3 + 96);
    LOBYTE(v40) = 7;
    sub_2410DF7A0();
    v23 = *(v3 + 104);
    v24 = *(v3 + 112);
    LOBYTE(v40) = 8;
    sub_2410DF7A0();
    v40 = *(v3 + 120);
    v42 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5260D0, &qword_2410E3A68);
    sub_2410BC4F0(&qword_27E526128, &qword_27E526130);
    sub_2410DF830();
    v40 = *(v3 + 128);
    v42 = 10;
    type metadata accessor for ATAnswerChoice();
    sub_2410AD408(&qword_27E526130, 255, type metadata accessor for ATAnswerChoice);
    sub_2410DF7D0();
    v25 = *(v3 + 136);
    v26 = *(v3 + 144);
    LOBYTE(v40) = 11;
    sub_2410DF7A0();
    v27 = *(v3 + 152);
    v28 = *(v3 + 160);
    LOBYTE(v40) = 12;
    sub_2410DF7A0();
    v29 = *(v3 + 168);
    v30 = *(v3 + 176);
    LOBYTE(v40) = 13;
    sub_2410DF7A0();
    v31 = *(v3 + 184);
    v32 = *(v3 + 192);
    LOBYTE(v40) = 14;
    sub_2410DF7A0();
    v33 = *(v3 + 200);
    v34 = *(v3 + 208);
    LOBYTE(v40) = 15;
    sub_2410DF7A0();
    v35 = _s10AllContentVMa(0);
    v36 = *(v35 + 80);
    LOBYTE(v40) = 16;
    sub_2410DEE90();
    sub_2410AD408(&qword_27E526138, 255, MEMORY[0x277CC9578]);
    sub_2410DF7D0();
    v37 = *(v35 + 84);
    LOBYTE(v40) = 17;
    sub_2410DEDF0();
    sub_2410AD408(&qword_27E526140, 255, MEMORY[0x277CC9260]);
    sub_2410DF7D0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2410B4AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2410BE088(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2410B4B20(uint64_t a1)
{
  v2 = sub_2410BEAE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410B4B5C(uint64_t a1)
{
  v2 = sub_2410BEAE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2410B4BB0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526310, &qword_2410E4688);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410BEB3C();
  sub_2410DFA20();
  v17 = a2;
  v16 = 0;
  type metadata accessor for ATQuestion.Topic();
  sub_2410AD408(&qword_27E526120, v13, type metadata accessor for ATQuestion.Topic);
  sub_2410DF830();
  if (!v3)
  {
    v17 = a3;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526258, &qword_2410E45A8);
    sub_2410BEB90();
    sub_2410DF830();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2410B4D90()
{
  if (*v0)
  {
    result = 0x6148646574726F73;
  }

  else
  {
    result = 0x6369706F74;
  }

  *v0;
  return result;
}

uint64_t sub_2410B4DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_2410DF8D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6148646574726F73 && a2 == 0xED000073656C646ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2410DF8D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2410B4EB4(uint64_t a1)
{
  v2 = sub_2410BEB3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410B4EF0(uint64_t a1)
{
  v2 = sub_2410BEB3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2410B4F48@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v192 = a1;
  v193 = a3;
  v191 = a2;
  v189 = a4;
  v186 = *(a2 - 1);
  v4 = *(v186 + 8);
  MEMORY[0x28223BE20](a1);
  v185 = &v179 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v179 = &v179 - v8;
  v190 = sub_2410DEF00();
  v194 = *(v190 - 8);
  v9 = *(v194 + 64);
  v10 = MEMORY[0x28223BE20](v190);
  v180 = &v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v181 = &v179 - v12;
  v13 = sub_2410DF020();
  v183 = *(v13 - 8);
  v184 = v13;
  v14 = *(v183 + 64);
  MEMORY[0x28223BE20](v13);
  v182 = &v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2410DF030();
  v187 = *(v16 - 8);
  v188 = v16;
  v17 = *(v187 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v179 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v179 - v21;
  v23 = sub_2410DF100();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = sub_2410DEBB0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = sub_2410DEBF0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_2410DEBE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526278, &qword_2410E45C0);
  v32 = *(v26 + 72);
  v33 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v34 = swift_allocObject();
  v195 = xmmword_2410E13A0;
  *(v34 + 16) = xmmword_2410E13A0;
  sub_2410DEBA0();
  v196 = v34;
  sub_2410AD408(&qword_27E526280, 255, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526288, &qword_2410E45C8);
  sub_2410BE734(&qword_27E526290, &qword_27E526288, &qword_2410E45C8);
  sub_2410DF4F0();
  sub_2410DEBC0();
  v193 = v31;
  v35 = sub_2410DEBD0();
  v186 = v20;
  v36 = v35;
  v38 = v37;
  v191 = v22;
  v39 = sub_2410DF400();
  v192 = sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
  v40 = sub_2410DF480();
  if (os_log_type_enabled(v40, v39))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v196 = v42;
    *v41 = 136315394;
    *(v41 + 4) = sub_241085208(0x726F662868736168, 0xEA0000000000293ALL, &v196);
    *(v41 + 12) = 2080;
    sub_2410DF0F0();
    v43 = v36;
    v44 = sub_2410DF0D0();
    if (v45)
    {
      v46 = v45;
    }

    else
    {
      v44 = 7104878;
      v46 = 0xE300000000000000;
    }

    v47 = sub_241085208(v44, v46, &v196);

    *(v41 + 14) = v47;
    _os_log_impl(&dword_24107E000, v40, v39, "%s JSON is %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDA690](v42, -1, -1);
    MEMORY[0x245CDA690](v41, -1, -1);

    v48 = v188;
    v49 = v191;
  }

  else
  {

    v48 = v188;
    v49 = v191;
    v43 = v36;
  }

  v51 = v183;
  v50 = v184;
  sub_2410AD408(&qword_27E526298, 255, MEMORY[0x277CC5588]);
  v52 = v182;
  sub_2410DF010();
  sub_241086284(v43, v38);
  sub_2410BB990(v43, v38);
  v184 = v43;
  v185 = v38;
  sub_2410861F8(v43, v38);
  sub_2410DF000();
  (*(v51 + 8))(v52, v50);
  (*(v187 + 16))(v186, v49, v48);
  sub_2410AD408(&unk_27E5262A0, 255, MEMORY[0x277CC55B0]);
  result = sub_2410DF220();
  v54 = v196;
  v55 = v197;
  v56 = *(v196 + 16);
  v57 = MEMORY[0x277D84F90];
  if (v197 != v56)
  {
    v153 = v197;
    while ((v55 & 0x8000000000000000) == 0)
    {
      if (v153 >= *(v54 + 16))
      {
        goto LABEL_48;
      }

      v154 = *(v54 + 32 + v153);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE0, &unk_2410E45D0);
      v155 = swift_allocObject();
      *(v155 + 16) = v195;
      *(v155 + 56) = MEMORY[0x277D84B78];
      *(v155 + 64) = MEMORY[0x277D84BC0];
      *(v155 + 32) = v154;
      v156 = sub_2410DF0E0();
      v158 = v157;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2410D2150(0, *(v57 + 16) + 1, 1, v57);
        v57 = result;
      }

      v160 = *(v57 + 16);
      v159 = *(v57 + 24);
      if (v160 >= v159 >> 1)
      {
        result = sub_2410D2150((v159 > 1), v160 + 1, 1, v57);
        v57 = result;
      }

      ++v153;
      *(v57 + 16) = v160 + 1;
      v161 = v57 + 16 * v160;
      *(v161 + 32) = v156;
      *(v161 + 40) = v158;
      if (v56 == v153)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    return result;
  }

LABEL_8:

  v196 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5262B0, &qword_2410E0E08);
  sub_2410BE734(&unk_27E5262B8, &qword_27E5262B0, &qword_2410E0E08);
  v58 = sub_2410DF080();
  v60 = v59;

  v61 = sub_2410DF400();
  v62 = sub_2410DF480();
  if (os_log_type_enabled(v62, v61))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v196 = v64;
    *v63 = 136315394;
    *(v63 + 4) = sub_241085208(0x726F662868736168, 0xEA0000000000293ALL, &v196);
    *(v63 + 12) = 2080;
    *(v63 + 14) = sub_241085208(v58, v60, &v196);
    _os_log_impl(&dword_24107E000, v62, v61, "%s content hash string is %s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDA690](v64, -1, -1);
    MEMORY[0x245CDA690](v63, -1, -1);
  }

  v65 = v190;
  if (sub_2410DF160() != 32)
  {
    v162 = sub_2410DF3F0();

    v163 = sub_2410DF480();
    if (os_log_type_enabled(v163, v162))
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v196 = v165;
      *v164 = 136315394;
      *(v164 + 4) = sub_241085208(0x726F662868736168, 0xEA0000000000293ALL, &v196);
      *(v164 + 12) = 2048;
      v166 = sub_2410DF160();

      *(v164 + 14) = v166;

      _os_log_impl(&dword_24107E000, v163, v162, "%s hashStr has %ld characters, expected 32", v164, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v165);
      MEMORY[0x245CDA690](v165, -1, -1);
      MEMORY[0x245CDA690](v164, -1, -1);

      sub_2410861F8(v184, v185);
    }

    else
    {

      sub_2410861F8(v184, v185);
    }

    (*(v187 + 8))(v191, v188);
    return (*(v194 + 56))(v189, 1, 1, v65);
  }

  v66 = sub_2410BC830(8);
  v68 = v67;
  v70 = v69;
  v72 = v71;

  v73 = MEMORY[0x245CD95D0](v66, v68, v70, v72);
  v75 = v74;

  v196 = v73;
  v197 = v75;

  MEMORY[0x245CD9620](45, 0xE100000000000000);

  v77 = v196;
  v76 = v197;

  v78 = sub_2410BC8CC(8uLL, v58, v60);
  v80 = v79;

  result = sub_2410DF4A0();
  if (v81)
  {
    v82 = v80;
  }

  else
  {
    v82 = result;
  }

  if (v82 >> 14 < v78 >> 14)
  {
    goto LABEL_49;
  }

  v83 = sub_2410DF4C0();
  v85 = v84;
  v87 = v86;
  v89 = v88;

  v90 = MEMORY[0x245CD95D0](v83, v85, v87, v89);
  v92 = v91;

  v196 = v77;
  v197 = v76;

  MEMORY[0x245CD9620](v90, v92);

  MEMORY[0x245CD9620](45, 0xE100000000000000);

  v94 = v196;
  v93 = v197;

  v95 = sub_2410BC8CC(0xCuLL, v58, v60);
  v97 = v96;

  result = sub_2410DF4A0();
  if (v98)
  {
    v99 = v97;
  }

  else
  {
    v99 = result;
  }

  if (v99 >> 14 < v95 >> 14)
  {
    goto LABEL_50;
  }

  v100 = sub_2410DF4C0();
  v102 = v101;
  v104 = v103;
  v106 = v105;

  v107 = MEMORY[0x245CD95D0](v100, v102, v104, v106);
  v109 = v108;

  v196 = v94;
  v197 = v93;

  MEMORY[0x245CD9620](v107, v109);

  MEMORY[0x245CD9620](45, 0xE100000000000000);

  v111 = v196;
  v110 = v197;

  v112 = sub_2410BC8CC(0x10uLL, v58, v60);
  v114 = v113;

  result = sub_2410DF4A0();
  if (v115)
  {
    v116 = v114;
  }

  else
  {
    v116 = result;
  }

  if (v116 >> 14 < v112 >> 14)
  {
    goto LABEL_51;
  }

  v117 = sub_2410DF4C0();
  v119 = v118;
  v121 = v120;
  v123 = v122;

  v124 = MEMORY[0x245CD95D0](v117, v119, v121, v123);
  v126 = v125;

  v196 = v111;
  v197 = v110;

  MEMORY[0x245CD9620](v124, v126);

  MEMORY[0x245CD9620](45, 0xE100000000000000);

  v128 = v196;
  v127 = v197;
  v129 = sub_2410BC8CC(0x14uLL, v58, v60);
  v131 = v130;
  v133 = v132;
  v135 = v134;

  v136 = MEMORY[0x245CD95D0](v129, v131, v133, v135);
  v138 = v137;

  v196 = v128;
  v197 = v127;

  MEMORY[0x245CD9620](v136, v138);

  v140 = v196;
  v139 = v197;
  v141 = sub_2410DF400();
  v142 = sub_2410DF480();
  if (os_log_type_enabled(v142, v141))
  {
    v143 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    v196 = v144;
    *v143 = 136315394;
    *(v143 + 4) = sub_241085208(0x726F662868736168, 0xEA0000000000293ALL, &v196);
    *(v143 + 12) = 2080;
    *(v143 + 14) = sub_241085208(v140, v139, &v196);
    _os_log_impl(&dword_24107E000, v142, v141, "%s uuidStr is %s", v143, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDA690](v144, -1, -1);
    MEMORY[0x245CDA690](v143, -1, -1);
  }

  v145 = v180;
  v146 = v181;
  v147 = v179;
  sub_2410DEEA0();

  v148 = v194;
  if ((*(v194 + 48))(v147, 1, v65) == 1)
  {
    sub_241086184(v147, &qword_27E525FE0, &qword_2410E1900);
    v149 = sub_2410DF3F0();
    v150 = sub_2410DF480();
    if (os_log_type_enabled(v150, v149))
    {
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v196 = v152;
      *v151 = 136315138;
      *(v151 + 4) = sub_241085208(0x726F662868736168, 0xEA0000000000293ALL, &v196);
      _os_log_impl(&dword_24107E000, v150, v149, "%s uuidStr was not valid", v151, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v152);
      MEMORY[0x245CDA690](v152, -1, -1);
      MEMORY[0x245CDA690](v151, -1, -1);

      sub_2410861F8(v184, v185);
    }

    else
    {
      sub_2410861F8(v184, v185);
    }

    (*(v187 + 8))(v191, v188);
    return (*(v148 + 56))(v189, 1, 1, v65);
  }

  else
  {
    v167 = *(v148 + 32);
    v167(v146, v147, v65);
    v168 = sub_2410DF400();
    (*(v148 + 16))(v145, v146, v65);
    v169 = sub_2410DF480();
    if (os_log_type_enabled(v169, v168))
    {
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v196 = v171;
      *v170 = 136315394;
      *(v170 + 4) = sub_241085208(0x726F662868736168, 0xEA0000000000293ALL, &v196);
      *(v170 + 12) = 2080;
      v172 = sub_2410DEEB0();
      v173 = v145;
      v175 = v174;
      (*(v194 + 8))(v173, v65);
      v176 = sub_241085208(v172, v175, &v196);

      *(v170 + 14) = v176;
      _os_log_impl(&dword_24107E000, v169, v168, "%s uuid is %s", v170, 0x16u);
      swift_arrayDestroy();
      v177 = v171;
      v148 = v194;
      MEMORY[0x245CDA690](v177, -1, -1);
      MEMORY[0x245CDA690](v170, -1, -1);

      sub_2410861F8(v184, v185);
    }

    else
    {

      sub_2410861F8(v184, v185);
      (*(v148 + 8))(v145, v65);
    }

    (*(v187 + 8))(v191, v188);
    v178 = v189;
    v167(v189, v146, v65);
    return (*(v148 + 56))(v178, 0, 1, v65);
  }
}

uint64_t ATQuestion.description.getter()
{
  v1 = v0;
  v2 = sub_2410DEDF0();
  v118 = *(v2 - 8);
  v3 = *(v118 + 64);
  MEMORY[0x28223BE20](v2);
  v116 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2410DEE90();
  v117 = *(v5 - 8);
  v6 = *(v117 + 64);
  MEMORY[0x28223BE20](v5);
  v115 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2410DEF00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = 0;
  v124 = 0xE000000000000000;
  sub_2410DF570();
  v125 = ObjectType;
  v126 = v124;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526098, &qword_2410E3A50);
  v13 = sub_2410DF110();
  MEMORY[0x245CD9620](v13);

  MEMORY[0x245CD9620](0x747379730A7B203ALL, 0xEE00203A64496D65);
  v14 = sub_2410DEEB0();
  MEMORY[0x245CD9620](v14);

  MEMORY[0x245CD9620](0x6E6F69737265760ALL, 0xEA0000000000203ALL);
  v15 = *(v0 + OBJC_IVAR____TtC5AskTo10ATQuestion_version);
  sub_2410DF360();
  MEMORY[0x245CD9620](0x203A64690ALL, 0xE500000000000000);
  MEMORY[0x245CD9620](*(v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_id), *(v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_id + 8));
  MEMORY[0x245CD9620](0x746E65746E6F630ALL, 0xEE00203A68736148);
  v16 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  if ((*(v9 + 48))(v1 + v16, 1, v8))
  {
    v17 = 0xE300000000000000;
    v18 = 7104878;
  }

  else
  {
    (*(v9 + 16))(v12, v1 + v16, v8);
    v18 = sub_2410DEEB0();
    v17 = v19;
    (*(v9 + 8))(v12, v8);
  }

  MEMORY[0x245CD9620](v18, v17);

  MEMORY[0x245CD9620](0xD000000000000011, 0x80000002410E8EB0);
  v20 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  v21 = (*(v1 + v20) + OBJC_IVAR___ATQuestionTopic_rawValue);
  v22 = *v21;
  v23 = v21[1];

  MEMORY[0x245CD9620](v22, v23);

  MEMORY[0x245CD9620](0x203A656C7469740ALL, 0xE800000000000000);
  v24 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_title);
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[1];

  MEMORY[0x245CD9620](v25, v26);

  MEMORY[0x245CD9620](0x7972616D6D75730ALL, 0xEA0000000000203ALL);
  v27 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_summary);
  swift_beginAccess();
  v28 = *v27;
  v29 = v27[1];

  MEMORY[0x245CD9620](v28, v29);

  MEMORY[0x245CD9620](0x746954676E6F6C0ALL, 0xEC000000203A656CLL);
  v30 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle);
  swift_beginAccess();
  v31 = v2;
  if (v30[1])
  {
    v32 = *v30;
    v33 = v30[1];
  }

  else
  {
    v33 = 0xE300000000000000;
    v32 = 7104878;
  }

  MEMORY[0x245CD9620](v32, v33);

  MEMORY[0x245CD9620](0x6D7553676E6F6C0ALL, 0xEE00203A7972616DLL);
  v34 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary);
  swift_beginAccess();
  if (v34[1])
  {
    v35 = *v34;
    v36 = v34[1];
  }

  else
  {
    v36 = 0xE300000000000000;
    v35 = 7104878;
  }

  MEMORY[0x245CD9620](v35, v36);

  MEMORY[0x245CD9620](0xD000000000000013, 0x80000002410E8ED0);
  v37 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText);
  swift_beginAccess();
  if (v37[1])
  {
    v38 = *v37;
    v39 = v37[1];
  }

  else
  {
    v39 = 0xE300000000000000;
    v38 = 7104878;
  }

  MEMORY[0x245CD9620](v38, v39);

  MEMORY[0x245CD9620](0xD000000000000026, 0x80000002410E8EF0);
  v40 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier);
  swift_beginAccess();
  if (v40[1])
  {
    v41 = *v40;
    v42 = v40[1];
  }

  else
  {
    v42 = 0xE300000000000000;
    v41 = 7104878;
  }

  MEMORY[0x245CD9620](v41, v42);

  MEMORY[0x245CD9620](0xD00000000000001FLL, 0x80000002410E8F20);
  v43 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName);
  swift_beginAccess();
  if (v43[1])
  {
    v44 = *v43;
    v45 = v43[1];
  }

  else
  {
    v45 = 0xE300000000000000;
    v44 = 7104878;
  }

  MEMORY[0x245CD9620](v44, v45);

  MEMORY[0x245CD9620](0xD00000000000001ELL, 0x80000002410E8F40);
  v46 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier);
  swift_beginAccess();
  if (v46[1])
  {
    v47 = *v46;
    v48 = v46[1];
  }

  else
  {
    v48 = 0xE300000000000000;
    v47 = 7104878;
  }

  MEMORY[0x245CD9620](v47, v48);

  MEMORY[0x245CD9620](0xD000000000000024, 0x80000002410E8F60);
  v49 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier);
  swift_beginAccess();
  if (v49[1])
  {
    v50 = *v49;
    v51 = v49[1];
  }

  else
  {
    v51 = 0xE300000000000000;
    v50 = 7104878;
  }

  MEMORY[0x245CD9620](v50, v51);

  MEMORY[0x245CD9620](0xD000000000000022, 0x80000002410E8F90);
  v52 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier);
  swift_beginAccess();
  if (v52[1])
  {
    v53 = *v52;
    v54 = v52[1];
  }

  else
  {
    v54 = 0xE300000000000000;
    v53 = 7104878;
  }

  MEMORY[0x245CD9620](v53, v54);

  MEMORY[0x245CD9620](0xD000000000000011, 0x80000002410E8FC0);
  v55 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  swift_beginAccess();
  v56 = v117;
  if ((*(v117 + 48))(v1 + v55, 1, v5))
  {
    v57 = 0xE300000000000000;
    v58 = 7104878;
  }

  else
  {
    v59 = v115;
    (*(v56 + 16))(v115, v1 + v55, v5);
    v60 = sub_2410DEE60();
    v57 = v61;
    (*(v56 + 8))(v59, v5);
    v58 = v60;
  }

  v62 = v118;
  MEMORY[0x245CD9620](v58, v57);

  MEMORY[0x245CD9620](0x6361626C6C61660ALL, 0xEE00203A4C52556BLL);
  v63 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  swift_beginAccess();
  if ((*(v62 + 48))(v1 + v63, 1, v31))
  {
    v64 = 0xE300000000000000;
    v65 = 7104878;
  }

  else
  {
    v66 = v116;
    (*(v62 + 16))(v116, v1 + v63, v31);
    v67 = sub_2410DEDD0();
    v64 = v68;
    (*(v62 + 8))(v66, v31);
    v65 = v67;
  }

  MEMORY[0x245CD9620](v65, v64);

  MEMORY[0x245CD9620](0xD000000000000019, 0x80000002410E8FE0);
  v69 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  swift_beginAccess();
  v70 = *(v1 + v69);
  v71 = &OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id;
  if (v70)
  {
    v72 = (v70 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);
    v74 = *v72;
    v73 = v72[1];
  }

  else
  {
    v73 = 0xE300000000000000;
    v74 = 7104878;
  }

  MEMORY[0x245CD9620](v74, v73);

  MEMORY[0x245CD9620](0xD000000000000012, 0x80000002410E9000);
  v75 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData);
  result = swift_beginAccess();
  v77 = v75[1];
  if (v77 >> 60 != 15)
  {
    v80 = *v75;
    v81 = v77 >> 62;
    if ((v77 >> 62) > 1)
    {
      if (v81 != 2)
      {
        v80 = 0;
        goto LABEL_49;
      }

      v84 = v80 + 16;
      v82 = *(v80 + 16);
      v83 = *(v84 + 8);
      v85 = __OFSUB__(v83, v82);
      v80 = v83 - v82;
      if (!v85)
      {
        goto LABEL_49;
      }

      __break(1u);
    }

    else if (!v81)
    {
      v80 = BYTE6(v77);
LABEL_49:
      v121 = v80;
      sub_2410BC37C();
      v79 = sub_2410DF4D0();
      v78 = v86;
      goto LABEL_50;
    }

    v85 = __OFSUB__(HIDWORD(v80), v80);
    LODWORD(v80) = HIDWORD(v80) - v80;
    if (v85)
    {
      goto LABEL_71;
    }

    v80 = v80;
    goto LABEL_49;
  }

  v78 = 0xE100000000000000;
  v79 = 48;
LABEL_50:
  v121 = v79;
  v122 = v78;

  MEMORY[0x245CD9620](0x736574796220, 0xE600000000000000);

  MEMORY[0x245CD9620](v121, v122);

  MEMORY[0x245CD9620](0xD000000000000010, 0x80000002410E9020);
  v87 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  if ((*(v1 + v87) & 0x8000000000000000) != 0)
  {
    v90 = 0xE300000000000000;
    v88 = 7104878;
  }

  else
  {
    v120 = *(v1 + v87);
    v88 = ATQuestion.Topic.Metadata.description.getter();
    v90 = v89;
  }

  MEMORY[0x245CD9620](v88, v90);

  MEMORY[0x245CD9620](0xD000000000000015, 0x80000002410E9040);
  if ((~*(v1 + v87) & 0xF000000000000007) != 0)
  {
    v120 = *(v1 + v87);
    v92 = ATQuestion.TopicMetadata.description.getter();
    v91 = v93;
  }

  else
  {
    v91 = 0xE300000000000000;
    v92 = 7104878;
  }

  MEMORY[0x245CD9620](v92, v91);

  MEMORY[0x245CD9620](0xD000000000000017, 0x80000002410E9060);
  v94 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  swift_beginAccess();
  v95 = *(v1 + v94);
  if (v95 >> 62)
  {
    v114 = *(v1 + v94);
    v96 = sub_2410DF620();
    v95 = v114;
  }

  else
  {
    v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97 = MEMORY[0x277D84F90];
  if (!v96)
  {
LABEL_68:
    v111 = MEMORY[0x245CD9770](v97, MEMORY[0x277D837D0]);
    v113 = v112;

    MEMORY[0x245CD9620](v111, v113);

    MEMORY[0x245CD9620](32010, 0xE200000000000000);
    return v125;
  }

  v119 = MEMORY[0x277D84F90];
  v98 = v95;

  result = sub_241093D90(0, v96 & ~(v96 >> 63), 0);
  if ((v96 & 0x8000000000000000) == 0)
  {
    v99 = 0;
    v97 = v119;
    v100 = v98;
    v118 = v98 & 0xC000000000000001;
    v101 = v98;
    do
    {
      if (v118)
      {
        v102 = MEMORY[0x245CD9A20](v99, v100);
      }

      else
      {
        v102 = *(v100 + 8 * v99 + 32);
      }

      v103 = v102;
      v104 = v71;
      v105 = &v102[*v71];
      v107 = *v105;
      v106 = *(v105 + 1);

      v119 = v97;
      v109 = *(v97 + 16);
      v108 = *(v97 + 24);
      if (v109 >= v108 >> 1)
      {
        sub_241093D90((v108 > 1), v109 + 1, 1);
        v97 = v119;
      }

      ++v99;
      *(v97 + 16) = v109 + 1;
      v110 = v97 + 16 * v109;
      *(v110 + 32) = v107;
      *(v110 + 40) = v106;
      v71 = v104;
      v100 = v101;
    }

    while (v96 != v99);

    goto LABEL_68;
  }

  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

unint64_t sub_2410B7390(char a1)
{
  result = 0x64496D6574737973;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 0x48746E65746E6F63;
      break;
    case 4:
      result = 0x6369706F74;
      break;
    case 5:
      result = 0x3256656C746974;
      break;
    case 6:
      result = 0x567972616D6D7573;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6843726577736E61;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000023;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD00000000000001BLL;
      break;
    case 13:
      result = 0xD000000000000021;
      break;
    case 14:
      result = 0xD00000000000001FLL;
      break;
    case 15:
      result = 0x74654D6369706F74;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x6F546D6F74737563;
      break;
    case 18:
      result = 0x6974617269707865;
      break;
    case 19:
      result = 0x6B6361626C6C6166;
      break;
    case 20:
      result = 0x656C746974;
      break;
    case 21:
      result = 0x7972616D6D7573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2410B7634(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2410B7390(*a1);
  v5 = v4;
  if (v3 == sub_2410B7390(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2410DF8D0();
  }

  return v8 & 1;
}

uint64_t sub_2410B76BC()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410B7390(v1);
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_2410B7720()
{
  sub_2410B7390(*v0);
  sub_2410DF150();
}

uint64_t sub_2410B7774()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410B7390(v1);
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_2410B77D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2410BE634();
  *a2 = result;
  return result;
}

unint64_t sub_2410B7804@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2410B7390(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2410B7838@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2410BE634();
  *a1 = result;
  return result;
}

uint64_t sub_2410B786C(uint64_t a1)
{
  v2 = sub_2410BC3D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410B78A8(uint64_t a1)
{
  v2 = sub_2410BC3D0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *ATQuestion.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v210 = &v180 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE8, &qword_2410E39F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v213 = &v180 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v211 = &v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v212 = &v180 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v214 = &v180 - v15;
  MEMORY[0x28223BE20](v14);
  v218 = &v180 - v16;
  v17 = sub_2410DEF00();
  v219 = *(v17 - 8);
  v220 = v17;
  v18 = v219[8];
  v19 = MEMORY[0x28223BE20](v17);
  v217 = &v180 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v215 = &v180 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v180 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v180 - v27;
  MEMORY[0x28223BE20](v26);
  v222 = &v180 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5260A8, &qword_2410E3A58);
  v221 = *(v30 - 8);
  v31 = *(v221 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v180 - v32;
  v34 = a1[3];
  v35 = a1[4];
  v224 = a1;
  v36 = __swift_project_boxed_opaque_existential_1(a1, v34);
  v37 = sub_2410BC3D0();
  v38 = v223;
  sub_2410DFA10();
  if (v38)
  {
    goto LABEL_3;
  }

  v223 = v37;
  v208 = v25;
  v209 = v28;
  v39 = v219;
  LOBYTE(v238) = 0;
  v40 = sub_2410AD408(&unk_27E5259B0, 255, MEMORY[0x277CC95F0]);
  v41 = v220;
  sub_2410DF730();
  LOBYTE(v238) = 1;
  sub_2410DF720();
  v43 = v42;
  LOBYTE(v238) = 2;
  sub_2410DF700();
  v207 = v30;
  v45 = v218;
  sub_2410DEEA0();

  v46 = v39[6];
  v47 = v46(v45, 1, v41);
  if (v47 == 1)
  {
    sub_241086184(v45, &qword_27E525FE0, &qword_2410E1900);
    v36 = sub_2410DF5A0();
    swift_allocError();
    v48 = v41;
    v50 = v49;
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525FC0, &qword_2410E18F0) + 48);
    *v50 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5260C0, &qword_2410E3A60);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_2410E13A0;
    v53 = v223;
    *(v52 + 56) = &_s10CodingKeysON;
    *(v52 + 64) = v53;
    *(v52 + 32) = 2;
    sub_2410DF590();
    (*(*(v36 - 1) + 104))(v50, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    (v39[1])(v222, v48);
    (*(v221 + 8))(v33, v207);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v224);
    return v36;
  }

  v204 = v46;
  v205 = v39 + 6;
  v223 = v40;
  v54 = v39;
  v218 = v39[4];
  (v218)(v209, v45, v41);
  type metadata accessor for ATQuestion.Topic();
  v237 = 4;
  sub_2410AD408(&qword_27E526500, v55, type metadata accessor for ATQuestion.Topic);
  v206 = v33;
  sub_2410DF730();
  v203 = v39 + 4;
  v56 = v238;
  LOBYTE(v238) = 5;
  v57 = sub_2410DF690();
  if (!v58)
  {
    goto LABEL_14;
  }

  v59 = v57;
  v60 = v58;
  LOBYTE(v238) = 6;
  v61 = sub_2410DF690();
  if (!v62)
  {

LABEL_14:
    LOBYTE(v238) = 20;
    v66 = sub_2410DF700();
    v68 = v67;
    v69 = v66;
    LOBYTE(v238) = 21;
    v70 = sub_2410DF700();
    v72 = v71;

    v201 = v72;
    v202 = v68;
    v199 = v72;
    v200 = v68;
    v195 = v70;
    v196 = v70;
    v197 = v69;
    v198 = v69;
    goto LABEL_16;
  }

  v196 = v61;
  v197 = v59;
  v63 = v62;
  v64 = *&v56[OBJC_IVAR___ATQuestionTopic_rawValue];
  v65 = *&v56[OBJC_IVAR___ATQuestionTopic_rawValue + 8];
  v201 = v63;
  v202 = v60;
  if (v64 == 0xD00000000000001DLL && 0x80000002410E8910 == v65 || (sub_2410DF8D0() & 1) != 0)
  {
    LOBYTE(v238) = 20;
    v198 = sub_2410DF690();
    v200 = v73;
    LOBYTE(v238) = 21;
    v195 = sub_2410DF690();
    v199 = v74;
  }

  else
  {
    v195 = 0;
    v198 = 0;
    v199 = 0;
    v200 = 0;
  }

LABEL_16:
  LOBYTE(v238) = 7;
  v192 = sub_2410DF690();
  v193 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5260D0, &qword_2410E3A68);
  v237 = 8;
  sub_2410BC4F0(&qword_27E5260D8, &qword_27E5260E0);
  sub_2410DF730();
  v194 = 0;
  v190 = v238;
  v77 = v54 + 2;
  v76 = v54[2];
  v78 = v208;
  v79 = v220;
  v76();
  v188 = v76;
  v189 = v77;
  (v76)(v215, v209, v79);
  v80 = v216;
  v191 = objc_allocWithZone(v216);
  (v76)(v217, v78, v79);
  v185 = v56;
  v81 = sub_2410DEEB0();
  v186 = v82;
  v187 = v81;
  v83 = objc_allocWithZone(v80);
  v84 = v79;
  v181 = v219[7];
  v182 = (v219 + 7);
  v181(&v83[OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash], 1, 1, v79);
  *&v83[OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata] = 0xF000000000000007;
  *&v83[OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData] = xmmword_2410E1830;
  v85 = &v83[OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle];
  *v85 = 0;
  v85[1] = 0;
  v86 = &v83[OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary];
  *v86 = 0;
  v86[1] = 0;
  v87 = &v83[OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText];
  *v87 = 0;
  v87[1] = 0;
  v88 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  *&v83[OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices] = MEMORY[0x277D84F90];
  *&v83[OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice] = 0;
  v89 = &v83[OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier];
  *v89 = 0;
  *(v89 + 1) = 0;
  v90 = &v83[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName];
  *v90 = 0;
  *(v90 + 1) = 0;
  v91 = &v83[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier];
  *v91 = 0;
  *(v91 + 1) = 0;
  v92 = &v83[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier];
  *v92 = 0;
  *(v92 + 1) = 0;
  v93 = &v83[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier];
  *v93 = 0;
  *(v93 + 1) = 0;
  v94 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  v95 = sub_2410DEE90();
  v96 = *(*(v95 - 8) + 56);
  v184 = v95;
  v96(&v83[v94], 1, 1);
  v97 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  v98 = sub_2410DEDF0();
  v99 = *(*(v98 - 8) + 56);
  v183 = v98;
  v99(&v83[v97], 1, 1);
  (v188)(&v83[OBJC_IVAR____TtC5AskTo10ATQuestion_systemId], v217, v84);
  *&v83[OBJC_IVAR____TtC5AskTo10ATQuestion_version] = v43;
  v100 = &v83[OBJC_IVAR____TtC5AskTo10ATQuestion_id];
  v101 = v186;
  *v100 = v187;
  v100[1] = v101;
  v102 = v185;
  *&v83[OBJC_IVAR____TtC5AskTo10ATQuestion_topic] = v185;
  v103 = &v83[OBJC_IVAR____TtC5AskTo10ATQuestion_title];
  v104 = v202;
  *v103 = v197;
  *(v103 + 1) = v104;
  v105 = &v83[OBJC_IVAR____TtC5AskTo10ATQuestion_summary];
  v106 = v201;
  *v105 = v196;
  v105[1] = v106;
  swift_beginAccess();
  v107 = v200;
  *v85 = v198;
  v85[1] = v107;
  swift_beginAccess();
  v108 = v199;
  *v86 = v195;
  v86[1] = v108;
  swift_beginAccess();
  v109 = v87[1];
  v110 = v193;
  *v87 = v192;
  v87[1] = v110;
  v111 = v102;

  swift_beginAccess();
  v112 = *&v83[v88];
  *&v83[v88] = v190;

  v236.receiver = v83;
  v236.super_class = v216;
  v113 = objc_msgSendSuper2(&v236, sel_init);
  v114 = v214;
  sub_2410B1788(v214);
  v216 = v111;

  v115 = v220;
  v116 = v219[1];
  v116(v217, v220);
  v116(v215, v115);
  v117 = v116;
  v116(v208, v115);
  v118 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  v119 = v118;
  sub_2410BC314(v114, v113 + v118, &qword_27E525FE0, &qword_2410E1900);
  swift_endAccess();
  v219 = v113;

  v120 = v191;
  swift_getObjectType();
  v121 = *((*MEMORY[0x277D85000] & *v120) + 0x30);
  v122 = *((*MEMORY[0x277D85000] & *v120) + 0x34);
  swift_deallocPartialClassInstance();
  type metadata accessor for ATAnswerChoice();
  v235 = 9;
  sub_2410AD408(&qword_27E5260E0, 255, type metadata accessor for ATAnswerChoice);
  v123 = v194;
  sub_2410DF6C0();
  if (v123)
  {

    v36 = v220;
    v117(v209, v220);
    v117(v222, v36);
    (*(v221 + 8))(v206, v207);
    __swift_destroy_boxed_opaque_existential_1(v224);

    return v36;
  }

  v124 = v234;
  v125 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  v126 = v219;
  swift_beginAccess();
  v127 = *(v126 + v125);
  *(v126 + v125) = v124;

  LOBYTE(v234) = 10;
  v128 = sub_2410DF690();
  v130 = v129;
  v131 = (v219 + OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier);
  swift_beginAccess();
  v132 = v131[1];
  *v131 = v128;
  v131[1] = v130;

  v233 = 11;
  v133 = sub_2410DF690();
  v135 = v134;
  v136 = (v219 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName);
  swift_beginAccess();
  v137 = v136[1];
  *v136 = v133;
  v136[1] = v135;

  v232 = 12;
  v138 = sub_2410DF690();
  v140 = v139;
  v141 = (v219 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier);
  swift_beginAccess();
  v142 = v141[1];
  *v141 = v138;
  v141[1] = v140;

  v231 = 13;
  v143 = sub_2410DF690();
  v145 = v144;
  v146 = (v219 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier);
  swift_beginAccess();
  v147 = v146[1];
  *v146 = v143;
  v146[1] = v145;

  v230 = 14;
  v148 = sub_2410DF690();
  v150 = v149;
  v151 = (v219 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier);
  swift_beginAccess();
  v152 = v151[1];
  *v151 = v148;
  v151[1] = v150;

  LOBYTE(v229) = 18;
  sub_2410AD408(&qword_27E5260E8, 255, MEMORY[0x277CC9578]);
  sub_2410DF6C0();
  v153 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  v154 = v219;
  swift_beginAccess();
  sub_2410BC314(v213, v154 + v153, &qword_27E525FE8, &qword_2410E39F8);
  swift_endAccess();
  LOBYTE(v229) = 19;
  sub_2410AD408(&qword_27E5260F0, 255, MEMORY[0x277CC9260]);
  sub_2410DF6C0();
  v155 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  v156 = v219;
  swift_beginAccess();
  sub_2410BC314(v210, v156 + v155, &qword_27E525FF0, &qword_2410E3A00);
  swift_endAccess();
  v228 = 15;
  sub_2410BC448();
  sub_2410DF6C0();
  v157 = v229;
  v228 = 16;
  sub_2410BC49C();
  sub_2410DF6C0();
  v217 = v229;
  if (!v157)
  {
    v163 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
    v164 = v219;
    swift_beginAccess();
    v165 = *(v164 + v163);
    *(v164 + v163) = 0xF000000000000007;
LABEL_24:
    sub_2410ADDF0(v165);
    v168 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
    v169 = v219;
    swift_beginAccess();
    v162 = *(v169 + v168);
    v170 = v217;
    *(v169 + v168) = v217;
    sub_2410ADF9C(v170);
    goto LABEL_25;
  }

  v158 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  if ((~v217 & 0xF000000000000007) != 0)
  {
    v166 = v219;
    swift_beginAccess();
    v165 = *(v166 + v158);
    *(v166 + v158) = v157;
    v167 = v157;
    goto LABEL_24;
  }

  v159 = v219;
  swift_beginAccess();
  v160 = *(v159 + v158);
  *(v159 + v158) = v157;
  v161 = v157;
  sub_2410ADDF0(v160);
  v162 = *(v159 + v158);
  *(v159 + v158) = v157;
LABEL_25:
  sub_2410ADDF0(v162);
  v227 = 17;
  sub_24108BC78();
  sub_2410DF6C0();
  v171 = v225;
  v172 = v226;
  v173 = (v219 + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData);
  swift_beginAccess();
  v174 = *v173;
  v175 = v173[1];
  *v173 = v171;
  v173[1] = v172;
  sub_2410861E4(v174, v175);
  LOBYTE(v225) = 3;
  sub_2410DF6C0();
  LODWORD(v171) = v204(v211, 1, v220);
  v36 = v219;
  if (v171 == 1)
  {
    sub_2410B1788(v212);
    sub_2410ADDF0(v217);

    v176 = v220;
    v117(v209, v220);
    v117(v222, v176);
    (*(v221 + 8))(v206, v207);
    if (v204(v211, 1, v176) != 1)
    {
      sub_241086184(v211, &qword_27E525FE0, &qword_2410E1900);
    }
  }

  else
  {
    sub_2410ADDF0(v217);

    v177 = v220;
    v117(v209, v220);
    v117(v222, v177);
    (*(v221 + 8))(v206, v207);
    v178 = v212;
    (v218)(v212, v211, v177);
    v181(v178, 0, 1, v177);
  }

  v179 = v219;
  swift_beginAccess();
  sub_2410BC314(v212, v179 + v119, &qword_27E525FE0, &qword_2410E1900);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v224);

  return v36;
}

uint64_t ATQuestion.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = &v75 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE8, &qword_2410E39F8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = &v75 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v75 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E526110, &unk_2410E3A70);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v75 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410BC3D0();
  sub_2410DFA20();
  v98 = 0;
  sub_2410DEF00();
  sub_2410AD408(&qword_27E5264F0, 255, MEMORY[0x277CC95F0]);
  v20 = v99;
  sub_2410DF830();
  if (v20)
  {
    return (*(v15 + 8))(v18, v14);
  }

  v99 = v15;
  v22 = *(v2 + OBJC_IVAR____TtC5AskTo10ATQuestion_version);
  v98 = 1;
  sub_2410DF820();
  v23 = *(v2 + OBJC_IVAR____TtC5AskTo10ATQuestion_id);
  v24 = *(v2 + OBJC_IVAR____TtC5AskTo10ATQuestion_id + 8);
  v98 = 2;
  sub_2410DF800();
  v25 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  v76 = v2;
  sub_241082EC4(v2 + v25, v13, &qword_27E525FE0, &qword_2410E1900);
  v97 = 3;
  sub_2410DF7D0();
  sub_241086184(v13, &qword_27E525FE0, &qword_2410E1900);
  v26 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  v27 = v76;
  swift_beginAccess();
  v96 = *(v27 + v26);
  v95 = 4;
  type metadata accessor for ATQuestion.Topic();
  sub_2410AD408(&qword_27E526120, v28, type metadata accessor for ATQuestion.Topic);
  sub_2410DF830();
  v29 = (v27 + OBJC_IVAR____TtC5AskTo10ATQuestion_title);
  swift_beginAccess();
  v30 = *v29;
  v31 = v29[1];
  v95 = 5;

  sub_2410DF800();
  v75 = v29;

  v32 = (v76 + OBJC_IVAR____TtC5AskTo10ATQuestion_summary);
  swift_beginAccess();
  v33 = *v32;
  v34 = v32[1];
  v94 = 6;

  sub_2410DF800();

  v35 = (v76 + OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText);
  swift_beginAccess();
  v36 = *v35;
  v37 = v35[1];
  v93 = 7;

  sub_2410DF7A0();

  v38 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  v39 = v76;
  swift_beginAccess();
  v92 = *(v39 + v38);
  LOBYTE(v91) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5260D0, &qword_2410E3A68);
  sub_2410BC4F0(&qword_27E526128, &qword_27E526130);
  sub_2410DF830();
  v40 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  v41 = v76;
  swift_beginAccess();
  v91 = *(v41 + v40);
  v90 = 9;
  type metadata accessor for ATAnswerChoice();
  sub_2410AD408(&qword_27E526130, 255, type metadata accessor for ATAnswerChoice);
  sub_2410DF7D0();
  v42 = v76;
  v43 = (v76 + OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier);
  swift_beginAccess();
  v44 = *v43;
  v45 = v43[1];
  v90 = 10;

  sub_2410DF7A0();

  v46 = (v42 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName);
  swift_beginAccess();
  v47 = *v46;
  v48 = v46[1];
  v89 = 11;

  sub_2410DF7A0();

  v49 = (v42 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier);
  swift_beginAccess();
  v50 = *v49;
  v51 = v49[1];
  v88 = 12;

  sub_2410DF7A0();

  v52 = (v42 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier);
  swift_beginAccess();
  v53 = *v52;
  v54 = v52[1];
  v87 = 13;

  sub_2410DF7A0();

  v55 = (v42 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier);
  swift_beginAccess();
  v56 = *v55;
  v57 = v55[1];
  v86 = 14;

  sub_2410DF7A0();

  v58 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  swift_beginAccess();
  sub_241082EC4(v42 + v58, v78, &qword_27E525FE8, &qword_2410E39F8);
  v85 = 18;
  sub_2410DEE90();
  sub_2410AD408(&qword_27E526138, 255, MEMORY[0x277CC9578]);
  sub_2410DF7D0();
  sub_241086184(v78, &qword_27E525FE8, &qword_2410E39F8);
  v59 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  swift_beginAccess();
  sub_241082EC4(v42 + v59, v77, &qword_27E525FF0, &qword_2410E3A00);
  v84 = 19;
  sub_2410DEDF0();
  sub_2410AD408(&qword_27E526140, 255, MEMORY[0x277CC9260]);
  sub_2410DF7D0();
  sub_241086184(v77, &qword_27E525FF0, &qword_2410E3A00);
  v60 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  v61 = *(v42 + v60);
  if ((v61 & 0x8000000000000000) != 0)
  {
    v61 = 0;
  }

  else
  {
    v62 = v61;
  }

  v83 = v61;
  LOBYTE(v81) = 15;
  sub_2410BC590();
  sub_2410DF7D0();

  v83 = *(v42 + v60);
  LOBYTE(v81) = 16;
  sub_2410ADF9C(v83);
  sub_2410BC5E4();
  sub_2410DF7D0();
  sub_2410ADDF0(v83);
  v63 = (v42 + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData);
  swift_beginAccess();
  v64 = v63[1];
  v81 = *v63;
  v82 = v64;
  v80 = 17;
  sub_24108AFBC(v81, v64);
  sub_24108C350();
  sub_2410DF7D0();
  sub_2410861E4(v81, v82);
  v65 = (v42 + OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle);
  swift_beginAccess();
  if (v65[1])
  {
    v66 = *v65;
    v67 = v65[1];
  }

  else
  {
    v68 = *v75;
    v69 = v75[1];
  }

  v80 = 20;

  sub_2410DF800();

  v70 = (v42 + OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary);
  swift_beginAccess();
  if (v70[1])
  {
    v71 = *v70;
    v72 = v70[1];
  }

  else
  {
    v73 = *v32;
    v74 = v32[1];
  }

  v79 = 21;

  sub_2410DF800();
  (*(v99 + 8))(v18, v14);
}

void *sub_2410B9DEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = ATQuestion.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id ATQuestion.init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

char *ATQuestion.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_24108F4C4(0, &qword_27E525C40, 0x277CBEA90);
  v4 = sub_2410DF440();
  if (v4)
  {
    v5 = v4;
    v6 = sub_2410DEE40();
    v8 = v7;
    v9 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v10 = sub_24108E3EC();
    sub_2410861F8(v6, v8);
    sub_2410AD408(&qword_27E526160, 255, type metadata accessor for ATQuestion);
    sub_2410DF420();
    if (v20)
    {
      swift_getObjectType();
      v15 = sub_2410BC97C(v20);
      v16 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
      v17 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
      swift_deallocPartialClassInstance();
      v18 = v15;
      [v10 finishDecoding];

      return v18;
    }

    sub_2410DF3F0();
    sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
    v19 = sub_2410DF480();
    sub_2410DEFB0();

    [v10 finishDecoding];
  }

  else
  {
    sub_2410DF3F0();
    sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
    v11 = sub_2410DF480();
    sub_2410DEFB0();
  }

  swift_getObjectType();
  v12 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v13 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ATQuestion.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_2410AD408(&qword_27E526540, 255, type metadata accessor for ATQuestion);
  sub_2410DF410();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2410DF0A0();
    [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

uint64_t ATQuestion.isCommLimits.getter()
{
  v1 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  v2 = (*(v0 + v1) + OBJC_IVAR___ATQuestionTopic_rawValue);
  v3 = *v2;
  v4 = v2[1];
  v5 = *v2 == 0xD00000000000002DLL && 0x80000002410E9190 == v4;
  if (v5 || (sub_2410DF8D0() & 1) != 0 || (v3 == 0xD00000000000001DLL ? (v6 = 0x80000002410E91C0 == v4) : (v6 = 0), v6))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2410DF8D0();
  }

  return v7 & 1;
}

uint64_t ATQuestion.isThirdPartyCommLimitsRequest.getter()
{
  v1 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  v2 = (*(v0 + v1) + OBJC_IVAR___ATQuestionTopic_rawValue);
  if (*v2 == 0xD00000000000002DLL && 0x80000002410E9190 == v2[1])
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2410DF8D0();
  }

  return v4 & 1;
}

void *sub_2410BA630(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526268, &qword_2410E45B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_2410BA6B8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2410BB97C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v27 = v2 + 32;
  v26[0] = v2 + 32;
  v26[1] = v4;
  v5 = sub_2410DF890();
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v27;
      v23 = v4;
      do
      {
        v11 = *(v27 + 8 * v9);
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          v15 = (v11 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
          swift_beginAccess();
          v16 = *v15;
          v17 = v15[1];
          v18 = (v14 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
          swift_beginAccess();
          if (v16 == *v18 && v17 == v18[1])
          {
            break;
          }

          if ((sub_2410DF8D0() & 1) == 0)
          {
            break;
          }

          v20 = *v13;
          v11 = v13[1];
          *v13 = v11;
          v13[1] = v20;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v23);
    }
  }

  else
  {
    v6 = v5;
    if (v4 >= 2)
    {
      type metadata accessor for _CommunicationHandle();
      v7 = sub_2410DF2F0();
      *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v25[0] = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    v25[1] = v4 >> 1;
    sub_2410BA890(v25, v24, v26, v6);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_2410DF5D0();
}

uint64_t sub_2410BA890(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v119 = result;
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = v5;
      v8 = v5 + 1;
      if (v5 + 1 < v4)
      {
        v9 = *a3;
        v10 = *(*a3 + 8 * v5);
        v11 = (*(*a3 + 8 * v8) + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
        swift_beginAccess();
        v12 = *v11;
        v13 = v11[1];
        v14 = (v10 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
        result = swift_beginAccess();
        v15 = v12 == *v14 && v13 == v14[1];
        if (v15)
        {
          __src = 0;
        }

        else
        {
          result = sub_2410DF8D0();
          __src = result;
        }

        v8 = v7 + 2;
        if (v7 + 2 < v4)
        {
          v127 = v7;
          v16 = (v9 + 8 * v7 + 16);
          do
          {
            v17 = *(v16 - 1);
            v18 = (*v16 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
            swift_beginAccess();
            v19 = *v18;
            v20 = v18[1];
            v21 = (v17 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
            result = swift_beginAccess();
            if (v19 == *v21 && v20 == v21[1])
            {
              if (__src)
              {
                v7 = v127;
                goto LABEL_25;
              }
            }

            else
            {
              result = sub_2410DF8D0();
              if ((__src ^ result))
              {
                goto LABEL_23;
              }
            }

            ++v8;
            ++v16;
          }

          while (v4 != v8);
          v8 = v4;
LABEL_23:
          v7 = v127;
        }

        if (__src)
        {
LABEL_25:
          if (v8 < v7)
          {
            goto LABEL_180;
          }

          if (v7 < v8)
          {
            v23 = 8 * v8 - 8;
            v24 = 8 * v7;
            v25 = v8;
            v26 = v7;
            do
            {
              if (v26 != --v25)
              {
                v28 = *a3;
                if (!*a3)
                {
                  goto LABEL_186;
                }

                v27 = *(v28 + v24);
                *(v28 + v24) = *(v28 + v23);
                *(v28 + v23) = v27;
              }

              ++v26;
              v23 -= 8;
              v24 += 8;
            }

            while (v26 < v25);
          }
        }
      }

      v29 = a3[1];
      if (v8 < v29)
      {
        if (__OFSUB__(v8, v7))
        {
          goto LABEL_179;
        }

        if (v8 - v7 < a4)
        {
          v30 = v7 + a4;
          if (__OFADD__(v7, a4))
          {
            goto LABEL_181;
          }

          if (v30 >= v29)
          {
            v30 = a3[1];
          }

          if (v30 < v7)
          {
            goto LABEL_182;
          }

          if (v8 != v30)
          {
            v130 = v30;
            v132 = v6;
            v31 = *a3;
            v32 = (*a3 + 8 * v8 - 8);
            v128 = v7;
            v33 = v7 - v8;
            do
            {
              v122 = v8;
              v34 = *(v31 + 8 * v8);
              v35 = v33;
              __srca = v32;
              do
              {
                v36 = *v32;
                v6 = &OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value;
                v37 = (v34 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
                swift_beginAccess();
                v38 = *v37;
                v8 = v37[1];
                v39 = (v36 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
                swift_beginAccess();
                v40 = v38 == *v39 && v8 == v39[1];
                if (v40 || (sub_2410DF8D0() & 1) == 0)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_183;
                }

                v41 = *v32;
                v34 = *(v32 + 1);
                *v32 = v34;
                *(v32 + 1) = v41;
                v32 -= 8;
              }

              while (!__CFADD__(v35++, 1));
              v8 = v122 + 1;
              v32 = __srca + 8;
              --v33;
            }

            while (v122 + 1 != v130);
            v8 = v130;
            v6 = v132;
            v7 = v128;
          }
        }
      }

      if (v8 < v7)
      {
        goto LABEL_176;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v123 = v8;
      if ((result & 1) == 0)
      {
        result = sub_2410BB5B8(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
      }

      v44 = *(v6 + 2);
      v43 = *(v6 + 3);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        result = sub_2410BB5B8((v43 > 1), v44 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 2) = v45;
      v46 = &v6[16 * v44];
      *(v46 + 4) = v7;
      *(v46 + 5) = v8;
      v47 = *v119;
      if (!*v119)
      {
        goto LABEL_187;
      }

      if (v44)
      {
        break;
      }

LABEL_3:
      v5 = v123;
      v4 = a3[1];
      if (v123 >= v4)
      {
        goto LABEL_151;
      }
    }

    __srcb = *v119;
    while (1)
    {
      v48 = v45 - 1;
      if (v45 >= 4)
      {
        break;
      }

      if (v45 == 3)
      {
        v49 = *(v6 + 4);
        v50 = *(v6 + 5);
        v59 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        v52 = v59;
LABEL_75:
        if (v52)
        {
          goto LABEL_167;
        }

        v65 = &v6[16 * v45];
        v67 = *v65;
        v66 = *(v65 + 1);
        v68 = __OFSUB__(v66, v67);
        v69 = v66 - v67;
        v70 = v68;
        if (v68)
        {
          goto LABEL_170;
        }

        v71 = &v6[16 * v48 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v59 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v59)
        {
          goto LABEL_173;
        }

        if (__OFADD__(v69, v74))
        {
          goto LABEL_174;
        }

        if (v69 + v74 >= v51)
        {
          if (v51 < v74)
          {
            v48 = v45 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_89;
      }

      v75 = &v6[16 * v45];
      v77 = *v75;
      v76 = *(v75 + 1);
      v59 = __OFSUB__(v76, v77);
      v69 = v76 - v77;
      v70 = v59;
LABEL_89:
      if (v70)
      {
        goto LABEL_169;
      }

      v78 = &v6[16 * v48];
      v80 = *(v78 + 4);
      v79 = *(v78 + 5);
      v59 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v59)
      {
        goto LABEL_172;
      }

      if (v81 < v69)
      {
        goto LABEL_3;
      }

LABEL_96:
      if (v48 - 1 >= v45)
      {
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

      v86 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
        return result;
      }

      v125 = v48 - 1;
      v126 = v48;
      v87 = *&v6[16 * v48 + 32];
      v88 = *&v6[16 * v48 + 40];
      v131 = *&v6[16 * v48 + 16];
      v133 = v6;
      v89 = (v86 + 8 * v131);
      v90 = 8 * v87;
      v6 = (v86 + 8 * v87);
      v129 = v88;
      v91 = 8 * v88;
      v92 = (v86 + 8 * v88);
      v8 = 8 * v87 - 8 * v131;
      v93 = 8 * v88 - 8 * v87;
      if (v8 >= v93)
      {
        if (v6 != v47 || v92 <= v47)
        {
          memmove(v47, (v86 + 8 * v87), 8 * v88 - 8 * v87);
        }

        v94 = &v47[v93];
        if (v93 < 1 || v90 <= 8 * v131)
        {
          v95 = __srcb;
          v111 = v6;
        }

        else
        {
          do
          {
            __dst = v6;
            v102 = v6 - 8;
            v92 -= 8;
            v103 = v94;
            while (1)
            {
              v104 = *(v103 - 1);
              v103 -= 8;
              v6 = v102;
              v105 = *v102;
              v8 = &OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value;
              v106 = (v104 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
              swift_beginAccess();
              v108 = *v106;
              v107 = v106[1];
              v109 = (v105 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
              swift_beginAccess();
              v110 = v108 == *v109 && v107 == v109[1];
              if (!v110 && (sub_2410DF8D0() & 1) != 0)
              {
                break;
              }

              if (v92 + 8 != v94)
              {
                *v92 = *v103;
              }

              v92 -= 8;
              v94 = v103;
              v102 = v6;
              if (v103 <= __srcb)
              {
                v94 = v103;
                v95 = __srcb;
                v111 = __dst;
                goto LABEL_141;
              }
            }

            v111 = v6;
            if (v92 + 8 != __dst)
            {
              *v92 = *v6;
            }

            v95 = __srcb;
          }

          while (v94 > __srcb && v89 < v6);
        }
      }

      else
      {
        if (v89 != v47 || v6 <= v47)
        {
          memmove(v47, (v86 + 8 * v131), 8 * v87 - 8 * v131);
        }

        v94 = &v47[v8];
        if (v8 >= 1 && v91 > v90)
        {
          v95 = __srcb;
          while (1)
          {
            v96 = *v95;
            v97 = (*v6 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
            swift_beginAccess();
            v98 = *v97;
            v8 = v97[1];
            v99 = (v96 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
            swift_beginAccess();
            v100 = v98 == *v99 && v8 == v99[1];
            if (v100 || (sub_2410DF8D0() & 1) == 0)
            {
              break;
            }

            v101 = v6;
            v15 = v89 == v6;
            v6 += 8;
            if (!v15)
            {
              goto LABEL_114;
            }

LABEL_115:
            v89 += 8;
            if (v95 >= v94 || v6 >= v92)
            {
              goto LABEL_138;
            }
          }

          v101 = v95;
          v15 = v89 == v95;
          v95 += 8;
          if (v15)
          {
            goto LABEL_115;
          }

LABEL_114:
          *v89 = *v101;
          goto LABEL_115;
        }

        v95 = __srcb;
LABEL_138:
        v111 = v89;
      }

LABEL_141:
      if (v111 != v95 || v111 >= &v95[(v94 - v95 + (v94 - v95 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v111, v95, 8 * ((v94 - v95) / 8));
      }

      v112 = v133;
      v47 = __srcb;
      if (v129 < v131)
      {
        goto LABEL_163;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_2410BB5A4(v133);
      }

      if (v126 > *(v112 + 2))
      {
        goto LABEL_164;
      }

      v113 = &v112[16 * v125];
      *(v113 + 4) = v131;
      *(v113 + 5) = v129;
      result = sub_2410BB518(v126);
      v6 = v112;
      v45 = *(v112 + 2);
      if (v45 <= 1)
      {
        goto LABEL_3;
      }
    }

    v53 = &v6[16 * v45 + 32];
    v54 = *(v53 - 64);
    v55 = *(v53 - 56);
    v59 = __OFSUB__(v55, v54);
    v56 = v55 - v54;
    if (v59)
    {
      goto LABEL_165;
    }

    v58 = *(v53 - 48);
    v57 = *(v53 - 40);
    v59 = __OFSUB__(v57, v58);
    v51 = v57 - v58;
    v52 = v59;
    if (v59)
    {
      goto LABEL_166;
    }

    v60 = &v6[16 * v45];
    v62 = *v60;
    v61 = *(v60 + 1);
    v59 = __OFSUB__(v61, v62);
    v63 = v61 - v62;
    if (v59)
    {
      goto LABEL_168;
    }

    v59 = __OFADD__(v51, v63);
    v64 = v51 + v63;
    if (v59)
    {
      goto LABEL_171;
    }

    if (v64 >= v56)
    {
      v82 = &v6[16 * v48 + 32];
      v84 = *v82;
      v83 = *(v82 + 1);
      v59 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v59)
      {
        goto LABEL_175;
      }

      if (v51 < v85)
      {
        v48 = v45 - 2;
      }

      goto LABEL_96;
    }

    goto LABEL_75;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_151:
  v8 = *v119;
  if (!*v119)
  {
    goto LABEL_189;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_184:
    result = sub_2410BB5A4(v6);
    v6 = result;
  }

  v114 = *(v6 + 2);
  if (v114 >= 2)
  {
    while (*a3)
    {
      v115 = *&v6[16 * v114];
      v116 = *&v6[16 * v114 + 24];
      sub_2410BB208((*a3 + 8 * v115), (*a3 + 8 * *&v6[16 * v114 + 16]), (*a3 + 8 * v116), v8);
      if (v120)
      {
      }

      if (v116 < v115)
      {
        goto LABEL_177;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_2410BB5A4(v6);
      }

      if (v114 - 2 >= *(v6 + 2))
      {
        goto LABEL_178;
      }

      v117 = &v6[16 * v114];
      *v117 = v115;
      *(v117 + 1) = v116;
      result = sub_2410BB518(v114 - 1);
      v114 = *(v6 + 2);
      if (v114 <= 1)
      {
      }
    }

    goto LABEL_188;
  }
}

uint64_t sub_2410BB208(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_46;
    }

    while (1)
    {
      v15 = *v4;
      v16 = (*v6 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
      swift_beginAccess();
      v17 = *v16;
      v18 = v16[1];
      v19 = (v15 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
      swift_beginAccess();
      v20 = v17 == *v19 && v18 == v19[1];
      if (v20 || (sub_2410DF8D0() & 1) == 0)
      {
        break;
      }

      v21 = v6;
      v20 = v7 == v6;
      v6 += 8;
      if (!v20)
      {
        goto LABEL_20;
      }

LABEL_21:
      v7 += 8;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }
    }

    v21 = v4;
    v20 = v7 == v4;
    v4 += 8;
    if (v20)
    {
      goto LABEL_21;
    }

LABEL_20:
    *v7 = *v21;
    goto LABEL_21;
  }

  if (a4 != __dst || &__dst[8 * v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    v32 = v4;
    do
    {
      v22 = (v6 - 8);
      v5 -= 8;
      v23 = v14;
      v33 = v6 - 8;
      while (1)
      {
        v24 = *(v23 - 1);
        v23 -= 8;
        v25 = *v22;
        v26 = (v24 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
        swift_beginAccess();
        v27 = *v26;
        v28 = v26[1];
        v29 = (v25 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
        swift_beginAccess();
        v30 = v27 == *v29 && v28 == v29[1];
        if (!v30 && (sub_2410DF8D0() & 1) != 0)
        {
          break;
        }

        if (v5 + 8 != v14)
        {
          *v5 = *v23;
        }

        v5 -= 8;
        v14 = v23;
        v4 = v32;
        v22 = (v6 - 8);
        if (v23 <= v32)
        {
          v14 = v23;
          goto LABEL_46;
        }
      }

      if (v5 + 8 != v6)
      {
        *v5 = *v33;
      }

      v4 = v32;
      if (v14 <= v32)
      {
        break;
      }

      v6 -= 8;
    }

    while (v33 > v7);
    v6 = v33;
  }

LABEL_46:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_2410BB518(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2410BB5A4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_2410BB5B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526270, &qword_2410E45B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_2410BB6BC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_2410DF620();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2410BA630(v3, 0);
  sub_2410BB750((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2410BB750(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2410DF620();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2410DF620();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2410BE734(&qword_27E526260, &qword_27E526258, &qword_2410E45A8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526258, &qword_2410E45A8);
            v9 = sub_2410BB8F4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for _CommunicationHandle();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_2410BB8F4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245CD9A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2410BB974;
  }

  __break(1u);
  return result;
}

uint64_t sub_2410BB990(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_2410DF020();
      sub_2410AD408(&qword_27E526298, 255, MEMORY[0x277CC5588]);
      result = sub_2410DEFF0();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_2410BBB78(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2410BBB78(uint64_t a1, uint64_t a2)
{
  result = sub_2410DECC0();
  if (!result || (result = sub_2410DECE0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_2410DECD0();
      sub_2410DF020();
      sub_2410AD408(&qword_27E526298, 255, MEMORY[0x277CC5588]);
      return sub_2410DEFF0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s5AskTo10ATQuestionC13TopicMetadataO2eeoiySbAE_AEtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v2 &= ~0x8000000000000000;
    v3 &= ~0x8000000000000000;
  }

  else if ((v3 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  sub_24108F4C4(0, &unk_27E525BC0, 0x277D82BB8);
  v5 = v3;
  v6 = v2;
  v7 = sub_2410DF460();

  return v7 & 1;
}

unint64_t sub_2410BBCEC()
{
  result = qword_27E526010;
  if (!qword_27E526010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526010);
  }

  return result;
}

unint64_t sub_2410BBD40()
{
  result = qword_27E526018;
  if (!qword_27E526018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526018);
  }

  return result;
}

unint64_t sub_2410BBD94()
{
  result = qword_27E526028;
  if (!qword_27E526028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526028);
  }

  return result;
}

uint64_t sub_2410BBDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a3;
  v28 = a6;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_2410DEF00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2410DEEF0();
  v26 = v14;
  v27 = sub_2410DEEC0();
  sub_2410DEEA0();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v16 = sub_2410DEEC0();
    v25 = *(v11 + 8);
    v25(v9, v10);
    v17 = sub_2410DF0A0();
    v18 = sub_2410DF0A0();
    v19 = sub_2410DF0A0();

    v20 = sub_2410DF0A0();

    type metadata accessor for ATAnswerChoice();
    v21 = sub_2410DF2B0();
    v22 = v10;
    v23 = v27;
    v24 = [v30 initWithSystemId:v27 version:v16 id:v29 topic:v17 title:v18 summary:v19 longTitle:7.0 longSummary:v20 notificationText:0 answerChoices:v21];

    v25(v26, v22);
    return v24;
  }

  return result;
}

uint64_t sub_2410BC074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v27 = a6;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_2410DEF00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2410DEEF0();
  v25 = v14;
  v26 = sub_2410DEEC0();
  sub_2410DEEA0();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v16 = sub_2410DEEC0();
    v24 = *(v11 + 8);
    v24(v9, v10);
    v17 = sub_2410DF0A0();
    v18 = sub_2410DF0A0();
    v19 = sub_2410DF0A0();

    v20 = sub_2410DF0A0();

    type metadata accessor for ATAnswerChoice();
    v21 = sub_2410DF2B0();
    v22 = v26;
    v23 = [v29 initWithSystemId:v26 version:v16 id:v28 topic:v17 title:v18 summary:v19 longTitle:7.0 longSummary:v20 notificationText:0 answerChoices:v21];

    v24(v25, v10);
    return v23;
  }

  return result;
}

uint64_t sub_2410BC314(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_2410BC37C()
{
  result = qword_27E5260A0;
  if (!qword_27E5260A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5260A0);
  }

  return result;
}

unint64_t sub_2410BC3D0()
{
  result = qword_27E5260B0;
  if (!qword_27E5260B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5260B0);
  }

  return result;
}

unint64_t sub_2410BC448()
{
  result = qword_27E5260F8;
  if (!qword_27E5260F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5260F8);
  }

  return result;
}

unint64_t sub_2410BC49C()
{
  result = qword_27E526100;
  if (!qword_27E526100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526100);
  }

  return result;
}

uint64_t sub_2410BC4F0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5260D0, &qword_2410E3A68);
    sub_2410AD408(a2, 255, type metadata accessor for ATAnswerChoice);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2410BC590()
{
  result = qword_27E526148;
  if (!qword_27E526148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526148);
  }

  return result;
}

unint64_t sub_2410BC5E4()
{
  result = qword_27E526150;
  if (!qword_27E526150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526150);
  }

  return result;
}

uint64_t sub_2410BC658(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for ATCommunicationMetadata.PersonInformation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_personInformation;
  swift_beginAccess();
  v10 = *&a2[v9];
  v11 = *(v10 + 16);
  if (v11)
  {
    v18 = a1;
    v19 = MEMORY[0x277D84F90];

    sub_2410DF5E0();
    v12 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_24108BCCC(v12, v8);
      v14 = *&v8[*(v4 + 20)];
      sub_24108BD30(v8);
      sub_2410DF5C0();
      v15 = *(v19 + 16);
      sub_2410DF5F0();
      sub_2410DF600();
      sub_2410DF5D0();
      v12 += v13;
      --v11;
    }

    while (v11);

    a1 = v18;
  }

  v19 = sub_2410BB6BC(v16);
  sub_2410BA6B8(&v19);

  return a1;
}

uint64_t sub_2410BC830(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2410DF170();

    return sub_2410DF210();
  }

  return result;
}

unint64_t sub_2410BC8CC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_2410DF170();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_2410DF210();
}

char *sub_2410BC97C(char *a1)
{
  ObjectType = swift_getObjectType();
  v130 = ObjectType;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v133 = &v115 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE8, &qword_2410E39F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v132 = &v115 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v137 = &v115 - v11;
  v134 = sub_2410DEF00();
  v12 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v136 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14;
  v131 = v14;
  v129 = *(v14 + 16);
  v129();
  v16 = *&a1[OBJC_IVAR____TtC5AskTo10ATQuestion_version];
  v17 = *&a1[OBJC_IVAR____TtC5AskTo10ATQuestion_id + 8];
  v128 = *&a1[OBJC_IVAR____TtC5AskTo10ATQuestion_id];
  v135 = v17;
  v18 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  v127 = *&a1[v18];
  v19 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_title];
  swift_beginAccess();
  v20 = *v19;
  v125 = *(v19 + 1);
  v126 = v20;
  v21 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_summary];
  swift_beginAccess();
  v22 = *v21;
  v123 = *(v21 + 1);
  v124 = v22;
  v23 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle];
  swift_beginAccess();
  v24 = *v23;
  v121 = *(v23 + 1);
  v122 = v24;
  v25 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary];
  swift_beginAccess();
  v26 = *v25;
  v119 = *(v25 + 1);
  v120 = v26;
  v27 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText];
  swift_beginAccess();
  v28 = *v27;
  v117 = *(v27 + 1);
  v118 = v28;
  v29 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  swift_beginAccess();
  v116 = *&a1[v29];
  v30 = objc_allocWithZone(ObjectType);
  v31 = *(v15 + 56);
  v32 = v134;
  v31(&v30[OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash], 1, 1, v134);
  *&v30[OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata] = 0xF000000000000007;
  *&v30[OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData] = xmmword_2410E1830;
  v33 = &v30[OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v30[OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v30[OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText];
  *v35 = 0;
  *(v35 + 1) = 0;
  v115 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  *&v30[OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices] = MEMORY[0x277D84F90];
  *&v30[OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice] = 0;
  v36 = &v30[OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v30[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &v30[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = &v30[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier];
  *v39 = 0;
  *(v39 + 1) = 0;
  v40 = &v30[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier];
  *v40 = 0;
  *(v40 + 1) = 0;
  v41 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  v42 = sub_2410DEE90();
  (*(*(v42 - 8) + 56))(&v30[v41], 1, 1, v42);
  v43 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  v44 = sub_2410DEDF0();
  (*(*(v44 - 8) + 56))(&v30[v43], 1, 1, v44);
  (v129)(&v30[OBJC_IVAR____TtC5AskTo10ATQuestion_systemId], v136, v32);
  *&v30[OBJC_IVAR____TtC5AskTo10ATQuestion_version] = v16;
  v45 = &v30[OBJC_IVAR____TtC5AskTo10ATQuestion_id];
  v46 = v127;
  v47 = v135;
  *v45 = v128;
  *(v45 + 1) = v47;
  *&v30[OBJC_IVAR____TtC5AskTo10ATQuestion_topic] = v46;
  v48 = &v30[OBJC_IVAR____TtC5AskTo10ATQuestion_title];
  v49 = v125;
  *v48 = v126;
  *(v48 + 1) = v49;
  v50 = &v30[OBJC_IVAR____TtC5AskTo10ATQuestion_summary];
  v51 = v123;
  *v50 = v124;
  *(v50 + 1) = v51;
  swift_beginAccess();
  v52 = v121;
  *v33 = v122;
  *(v33 + 1) = v52;
  swift_beginAccess();
  v53 = v119;
  *v34 = v120;
  *(v34 + 1) = v53;
  swift_beginAccess();
  v54 = v117;
  *v35 = v118;
  *(v35 + 1) = v54;
  v55 = v115;
  swift_beginAccess();
  v129 = *&v30[v55];
  *&v30[v55] = v116;

  v56 = v46;

  v138.receiver = v30;
  v138.super_class = v130;
  v57 = objc_msgSendSuper2(&v138, sel_init);
  v58 = v137;
  sub_2410B1788(v137);

  (*(v131 + 8))(v136, v134);
  v59 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  sub_2410BC314(v58, &v57[v59], &qword_27E525FE0, &qword_2410E1900);
  swift_endAccess();
  v60 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  swift_beginAccess();
  v61 = *&a1[v60];
  v62 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  swift_beginAccess();
  v63 = *&v57[v62];
  *&v57[v62] = v61;
  v64 = v57;
  v65 = v61;

  v66 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier];
  swift_beginAccess();
  v68 = *v66;
  v67 = *(v66 + 1);
  v69 = &v64[OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier];
  swift_beginAccess();
  v70 = *(v69 + 1);
  *v69 = v68;
  *(v69 + 1) = v67;

  v71 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName];
  swift_beginAccess();
  v73 = *v71;
  v72 = *(v71 + 1);
  v74 = &v64[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName];
  swift_beginAccess();
  v75 = *(v74 + 1);
  *v74 = v73;
  *(v74 + 1) = v72;

  v76 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier];
  swift_beginAccess();
  v78 = *v76;
  v77 = *(v76 + 1);
  v79 = &v64[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier];
  swift_beginAccess();
  v80 = *(v79 + 1);
  *v79 = v78;
  *(v79 + 1) = v77;

  v81 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier];
  swift_beginAccess();
  v83 = *v81;
  v82 = *(v81 + 1);
  v84 = &v64[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier];
  swift_beginAccess();
  v85 = *(v84 + 1);
  *v84 = v83;
  *(v84 + 1) = v82;

  v86 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier];
  swift_beginAccess();
  v88 = *v86;
  v87 = *(v86 + 1);
  v89 = &v64[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier];
  swift_beginAccess();
  v90 = *(v89 + 1);
  *v89 = v88;
  *(v89 + 1) = v87;

  v91 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  swift_beginAccess();
  v92 = v132;
  sub_241082EC4(&a1[v91], v132, &qword_27E525FE8, &qword_2410E39F8);
  v93 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  swift_beginAccess();
  sub_2410BC314(v92, &v64[v93], &qword_27E525FE8, &qword_2410E39F8);
  swift_endAccess();
  v94 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  swift_beginAccess();
  v95 = v133;
  sub_241082EC4(&a1[v94], v133, &qword_27E525FF0, &qword_2410E3A00);
  v96 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  swift_beginAccess();
  sub_2410BC314(v95, &v64[v96], &qword_27E525FF0, &qword_2410E3A00);
  swift_endAccess();
  v97 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  v98 = *&a1[v97];
  v99 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  v100 = *&v64[v99];
  if ((v98 & 0x8000000000000000) != 0)
  {
    *&v64[v99] = 0xF000000000000007;
  }

  else
  {
    *&v64[v99] = v98;
    v101 = v98;
  }

  sub_2410ADDF0(v100);
  v102 = *&a1[v97];
  v103 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  v104 = *&v64[v103];
  *&v64[v103] = v102;
  sub_2410ADF9C(v102);
  sub_2410ADDF0(v104);
  v105 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData];
  swift_beginAccess();
  v107 = *v105;
  v106 = v105[1];
  v108 = &v64[OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData];
  swift_beginAccess();
  v109 = *v108;
  v110 = v108[1];
  *v108 = v107;
  v108[1] = v106;
  sub_24108AFBC(v107, v106);
  sub_2410861E4(v109, v110);
  v111 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  v112 = &a1[v111];
  v113 = v137;
  sub_241082EC4(v112, v137, &qword_27E525FE0, &qword_2410E1900);

  swift_beginAccess();
  sub_2410BC314(v113, &v57[v59], &qword_27E525FE0, &qword_2410E1900);
  swift_endAccess();

  return v64;
}

unint64_t sub_2410BD47C()
{
  result = qword_27E526168;
  if (!qword_27E526168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526168);
  }

  return result;
}

unint64_t sub_2410BD4D4()
{
  result = qword_27E526170;
  if (!qword_27E526170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526170);
  }

  return result;
}

void sub_2410BD53C()
{
  v0 = sub_2410DEF00();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_2410BEA84(319, &qword_27E526190, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_2410BEA84(319, &qword_27E526198, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_2410BEA84(319, &qword_27E5261A0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_2410BD7D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2410BD834(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2410BDA5C()
{
  result = qword_27E5261B0;
  if (!qword_27E5261B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261B0);
  }

  return result;
}

unint64_t sub_2410BDAB4()
{
  result = qword_27E5261B8;
  if (!qword_27E5261B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261B8);
  }

  return result;
}

unint64_t sub_2410BDB0C()
{
  result = qword_27E5261C0;
  if (!qword_27E5261C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261C0);
  }

  return result;
}

unint64_t sub_2410BDB64()
{
  result = qword_27E5261C8;
  if (!qword_27E5261C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261C8);
  }

  return result;
}

unint64_t sub_2410BDBBC()
{
  result = qword_27E5261D0;
  if (!qword_27E5261D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261D0);
  }

  return result;
}

unint64_t sub_2410BDC14()
{
  result = qword_27E5261D8;
  if (!qword_27E5261D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261D8);
  }

  return result;
}

unint64_t sub_2410BDC6C()
{
  result = qword_27E5261E0;
  if (!qword_27E5261E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261E0);
  }

  return result;
}

unint64_t sub_2410BDCC4()
{
  result = qword_27E5261E8;
  if (!qword_27E5261E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261E8);
  }

  return result;
}

unint64_t sub_2410BDD1C()
{
  result = qword_27E5261F0;
  if (!qword_27E5261F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261F0);
  }

  return result;
}

unint64_t sub_2410BDD74()
{
  result = qword_27E5261F8;
  if (!qword_27E5261F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261F8);
  }

  return result;
}

unint64_t sub_2410BDDCC()
{
  result = qword_27E526200;
  if (!qword_27E526200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526200);
  }

  return result;
}

unint64_t sub_2410BDE24()
{
  result = qword_27E526208;
  if (!qword_27E526208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526208);
  }

  return result;
}

unint64_t sub_2410BDE7C()
{
  result = qword_27E526210;
  if (!qword_27E526210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526210);
  }

  return result;
}

unint64_t sub_2410BDED4()
{
  result = qword_27E526218;
  if (!qword_27E526218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526218);
  }

  return result;
}

unint64_t sub_2410BDF2C()
{
  result = qword_27E526220;
  if (!qword_27E526220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526220);
  }

  return result;
}

unint64_t sub_2410BDF84()
{
  result = qword_27E526228;
  if (!qword_27E526228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526228);
  }

  return result;
}

unint64_t sub_2410BDFDC()
{
  result = qword_27E526230;
  if (!qword_27E526230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526230);
  }

  return result;
}

unint64_t sub_2410BE034()
{
  result = qword_27E526238;
  if (!qword_27E526238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526238);
  }

  return result;
}

uint64_t sub_2410BE088(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_2410DF8D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74654D6369706F74 && a2 == 0xED00006174616461 || (sub_2410DF8D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002410E6C10 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F546D6F74737563 && a2 == 0xEF61746144636970 || (sub_2410DF8D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C746954676E6F6CLL && a2 == 0xE900000000000065 || (sub_2410DF8D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D6D7553676E6F6CLL && a2 == 0xEB00000000797261 || (sub_2410DF8D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002410E6B00 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6843726577736E61 && a2 == 0xED0000736563696FLL || (sub_2410DF8D0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002410E6B20 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000023 && 0x80000002410E6B40 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002410E6B70 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002410E6B90 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000021 && 0x80000002410E6BB0 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000002410E6BE0 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL || (sub_2410DF8D0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEB000000004C5255)
  {

    return 17;
  }

  else
  {
    v6 = sub_2410DF8D0();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}