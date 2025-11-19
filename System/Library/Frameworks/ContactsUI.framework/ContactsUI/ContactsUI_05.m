void ContactCardView.init(forContactIdentifiers:scrollToType:scrollToLabel:)(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v16 = 0;
  type metadata accessor for CardViewModel(0);
  v10 = swift_allocObject();
  sub_199B0E520(a1, &v16);
  v15 = v9;

  sub_199B0CEE4(&v15);
  sub_199B0D170(a3, a4);

  if (qword_1EAF71ED0 != -1)
  {
    swift_once();
  }

  v11 = sub_199DF804C();
  __swift_project_value_buffer(v11, qword_1EAF74510);
  v12 = sub_199DF802C();
  v13 = sub_199DFA33C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_199A75000, v12, v13, "Scroll to feature is not yet implemented", v14, 2u);
    MEMORY[0x19A8FA1A0](v14, -1, -1);
  }

  *a5 = v10;
}

void ContactCardView.init(forContactIdentifiers:context:scrollToType:scrollToLabel:)(void *a1@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v16 = 0;
  type metadata accessor for CardViewModel(0);
  v10 = swift_allocObject();
  sub_199B0E520(a1, &v16);
  v15 = v9;

  sub_199B0CEE4(&v15);
  sub_199B0D170(a3, a4);

  if (qword_1EAF71ED0 != -1)
  {
    swift_once();
  }

  v11 = sub_199DF804C();
  __swift_project_value_buffer(v11, qword_1EAF74510);
  v12 = sub_199DF802C();
  v13 = sub_199DFA33C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_199A75000, v12, v13, "Scroll to feature is not yet implemented", v14, 2u);
    MEMORY[0x19A8FA1A0](v14, -1, -1);
  }

  *a5 = v10;
}

uint64_t sub_199B0BBC8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t (*a3)(uint64_t, char *)@<X2>, uint64_t *a4@<X8>)
{
  v9 = *a2;
  type metadata accessor for CardViewModel(0);
  v7 = swift_allocObject();
  result = a3(a1, &v9);
  *a4 = v7;
  return result;
}

uint64_t ContactCardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v36[1] = a1;
  v2 = *v1;
  swift_getKeyPath();
  *&v39 = v2;
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  swift_retain_n();
  sub_199DF73AC();

  v3 = *(v2 + 40);

  if (v3 == 1)
  {
    v4 = &qword_1EAF74538;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74538);
    MEMORY[0x1EEE9AC00](v5, v6);
    v8 = v36 - v7;
    *(v36 - v7) = v2;
    LOBYTE(v37) = 0;
    sub_199DF983C();
    v9 = *(&v39 + 1);
    v8[8] = v39;
    *(v8 + 2) = v9;
    v37 = 0;
    v38 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74540);
    sub_199DF983C();
    v10 = BYTE8(v39);
    v11 = v40;
    *(v8 + 3) = v39;
    v8[32] = v10;
    *(v8 + 5) = v11;
    v37 = 0;
    v38 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74548);
    sub_199DF983C();
    v12 = BYTE8(v39);
    v13 = v40;
    *(v8 + 6) = v39;
    v8[56] = v12;
    *(v8 + 8) = v13;
    v37 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74550);
    sub_199DF983C();
    *(v8 + 72) = v39;
    v14 = *(type metadata accessor for ContactCardViewSwiftUI(0) + 36);
    *&v8[v14] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090);
    swift_storeEnumTagMultiPayload();
    v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74560) + 36)];
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = CGSizeMake;
    *(v15 + 3) = 0;
    swift_getKeyPath();
    *&v39 = v2;
    sub_199DF73AC();

    v16 = *(v2 + 16);
    v17 = &v8[*(v5 + 36)];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74568);

    v19 = v16;
    sub_199DFA18C();
    *&v17[*(v18 + 40)] = v19;
    *v17 = &unk_199E3D558;
    *(v17 + 1) = v2;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74570);
    MEMORY[0x1EEE9AC00](v20, v21);
    sub_199AAD408(v8, v36 - v22, &qword_1EAF74538);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74578);
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74578);
    MEMORY[0x1EEE9AC00](v23, v24);
    v8 = v36 - v25;
    v37 = sub_199DF971C();
    sub_199DF983C();
    v27 = *(&v39 + 1);
    v26 = v39;
    swift_getKeyPath();
    *&v39 = v2;
    sub_199DF73AC();

    v28 = *(v2 + 16);
    v29 = &v8[*(v23 + 36)];
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74568);

    v31 = v28;
    sub_199DFA18C();
    *&v29[*(v30 + 40)] = v31;
    *v29 = &unk_199E3D588;
    *(v29 + 1) = v2;
    *v8 = v2;
    *(v8 + 1) = v26;
    *(v8 + 3) = 0;
    *(v8 + 4) = 0;
    *(v8 + 2) = v27;
    *(v8 + 5) = CGSizeMake;
    *(v8 + 6) = 0;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74570);
    MEMORY[0x1EEE9AC00](v32, v33);
    v4 = &qword_1EAF74578;
    sub_199AAD408(v8, v36 - v34, &qword_1EAF74578);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74538);
  }

  sub_199B11310(&qword_1EAF74580, &qword_1EAF74578, &unk_199E3D570, sub_199B11230);
  sub_199B11310(&qword_1EAF745A8, &qword_1EAF74538, &unk_199E3D4C8, sub_199B113B4);
  sub_199DF8EDC();
  return sub_199A79A04(v8, v4);
}

uint64_t sub_199B0C2B0()
{
  v0[2] = sub_199DFA17C();
  v0[3] = sub_199DFA16C();
  v2 = sub_199DFA12C();
  v0[4] = v2;
  v0[5] = v1;

  return MEMORY[0x1EEE6DFA0](sub_199B0C348, v2, v1);
}

uint64_t sub_199B0C348()
{
  *(v0 + 48) = sub_199DFA16C();
  v2 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B0C3D4, v2, v1);
}

uint64_t sub_199B0C3D4()
{

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_199B0C438, v1, v2);
}

uint64_t sub_199B0C438()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_199B0C498()
{
  v0[2] = sub_199DFA17C();
  v0[3] = sub_199DFA16C();
  v2 = sub_199DFA12C();
  v0[4] = v2;
  v0[5] = v1;

  return MEMORY[0x1EEE6DFA0](sub_199B0C530, v2, v1);
}

uint64_t sub_199B0C530()
{
  *(v0 + 48) = sub_199DFA16C();
  v2 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B0C5BC, v2, v1);
}

uint64_t sub_199B0C5BC()
{

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_199B12B80, v1, v2);
}

id sub_199B0C624()
{
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  v1 = *(v0 + 16);

  return v1;
}

id sub_199B0C6D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_199B0C78C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_199A7DDB0();
  v5 = v4;
  v6 = sub_199DFA4EC();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
    sub_199DF739C();
  }
}

uint64_t sub_199B0C8E8()
{
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  return *(v0 + 24);
}

uint64_t sub_199B0C988@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_199B0CA30(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
    sub_199DF739C();
  }

  return result;
}

uint64_t sub_199B0CB40()
{
  swift_getKeyPath();
  v3 = v0;
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  v1 = *(v0 + 32);
  sub_199B12614(v1, *(v3 + 40));
  return v1;
}

uint64_t sub_199B0CC08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_199B12614(v4, v5);
}

uint64_t sub_199B0CCBC()
{
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF739C();
}

uint64_t sub_199B0CD94@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  *a1 = *(v1 + 64);
  return result;
}

uint64_t sub_199B0CE3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_199B0CEE4(unsigned __int8 *a1)
{
  v2 = *a1;
  result = *(v1 + 64);
  if (result != 7)
  {
    if (v2 == 7)
    {
      goto LABEL_7;
    }

    result = sub_199AA9538(result, v2);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 64) = v2;
    return result;
  }

  if (v2 == 7)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v5);
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF739C();
}

uint64_t sub_199B0D014()
{
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  v1 = *(v0 + 72);
  sub_199DF81AC();
  return v1;
}

uint64_t sub_199B0D0C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
  return sub_199DF81AC();
}

uint64_t sub_199B0D170(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 72) == a1 && v5 == a2;
      if (v6 || (sub_199DFA99C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
    sub_199DF739C();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t sub_199B0D2E0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  *a1 = *(v1 + 88);
  return result;
}

uint64_t sub_199B0D388@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  *a2 = *(v3 + 88);
  return result;
}

unsigned __int8 *sub_199B0D430(unsigned __int8 *result)
{
  if (*(v1 + 88) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
    sub_199DF739C();
  }

  return result;
}

uint64_t sub_199B0D538()
{
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  v1 = *(v0 + 96);
  sub_199A9A57C(v1);
  return v1;
}

uint64_t sub_199B0D5EC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_199B12B7C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_199A9A57C(v4);
}

uint64_t sub_199B0D6D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_199B12B28;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v6);
  sub_199A9A57C(v1);
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF739C();
  sub_199A9A5FC(v4);
}

uint64_t sub_199B0D834()
{
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  v1 = *(v0 + 112);
  sub_199A9A57C(v1);
  return v1;
}

uint64_t sub_199B0D8E8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_199B12788;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_199A9A57C(v4);
}

uint64_t sub_199B0D9D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_199B12760;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v6);
  sub_199A9A57C(v1);
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF739C();
  sub_199A9A5FC(v4);
}

uint64_t sub_199B0DB30@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  v3 = OBJC_IVAR____TtC10ContactsUI13CardViewModel__contactEntity;
  swift_beginAccess();
  return sub_199AAD408(v5 + v3, a1, &unk_1EAF74680);
}

uint64_t sub_199B0DC08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  v4 = OBJC_IVAR____TtC10ContactsUI13CardViewModel__contactEntity;
  swift_beginAccess();
  return sub_199AAD408(v3 + v4, a2, &unk_1EAF74680);
}

uint64_t sub_199B0DCE0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74680);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10[-v6];
  sub_199AAD408(a1, &v10[-v6], &unk_1EAF74680);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF739C();

  return sub_199A79A04(v7, &unk_1EAF74680);
}

uint64_t sub_199B0DE30(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10ContactsUI13CardViewModel__contactEntity;
  swift_beginAccess();
  sub_199B12480(a2, a1 + v4);
  return swift_endAccess();
}

id sub_199B0DE9C()
{
  v1 = OBJC_IVAR____TtC10ContactsUI13CardViewModel____lazy_storage___contactFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC10ContactsUI13CardViewModel____lazy_storage___contactFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10ContactsUI13CardViewModel____lazy_storage___contactFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_199B0DF10()
{
  v1 = v0;
  swift_getKeyPath();
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_199E37DF0;
  v4 = objc_opt_self();
  v5 = v2;
  *(v3 + 32) = [v4 descriptorForRequiredKeysForStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790);
  v6 = sub_199DFA0BC();

  LODWORD(v3) = [v5 areKeysAvailable_];

  if (!v3)
  {
    return 0;
  }

  v7 = sub_199B0DE9C();
  swift_getKeyPath();
  sub_199DF73AC();

  v8 = [v7 stringFromContact_];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_199DF9F8C();

  return v9;
}

uint64_t sub_199B0E100(void *a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  *(v3 + 32) = xmmword_199E3D430;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 7;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  v6 = OBJC_IVAR____TtC10ContactsUI13CardViewModel__contactEntity;
  v7 = sub_199DF76CC();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC10ContactsUI13CardViewModel____lazy_storage___contactFormatter) = 0;
  sub_199DF73DC();
  *(v3 + 16) = a1;
  *(v3 + 88) = v5;
  *(v3 + 24) = 1;
  swift_getKeyPath();
  v29 = v3;
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  v8 = a1;
  sub_199DF73AC();

  if (*(v3 + 24) != 1)
  {
    if (qword_1EAF71ED0 != -1)
    {
      swift_once();
    }

    v22 = sub_199DF804C();
    __swift_project_value_buffer(v22, qword_1EAF74510);
    v23 = v8;
    v11 = sub_199DF802C();
    v24 = sub_199DFA33C();

    if (os_log_type_enabled(v11, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138477827;
      *(v25 + 4) = v23;
      *v26 = v23;
      v27 = v23;
      _os_log_impl(&dword_199A75000, v11, v24, "Init Contact Card with non-persisted contact %{private}@", v25, 0xCu);
      sub_199A79A04(v26, &unk_1EAF73A90);
      MEMORY[0x19A8FA1A0](v26, -1, -1);
      MEMORY[0x19A8FA1A0](v25, -1, -1);

      return v3;
    }

LABEL_12:
    return v3;
  }

  if (qword_1EAF71ED0 != -1)
  {
    swift_once();
  }

  v9 = sub_199DF804C();
  __swift_project_value_buffer(v9, qword_1EAF74510);
  v10 = v8;
  v11 = sub_199DF802C();
  v12 = sub_199DFA33C();

  if (!os_log_type_enabled(v11, v12))
  {

    goto LABEL_12;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v29 = v15;
  *v13 = 136315395;
  v16 = [v10 identifier];
  v17 = sub_199DF9F8C();
  v19 = v18;

  v20 = sub_199A9BE90(v17, v19, &v29);

  *(v13 + 4) = v20;
  *(v13 + 12) = 2113;
  *(v13 + 14) = v10;
  *v14 = v10;
  v21 = v10;
  _os_log_impl(&dword_199A75000, v11, v12, "Init Contact Card with %s, %{private}@", v13, 0x16u);
  sub_199A79A04(v14, &unk_1EAF73A90);
  MEMORY[0x19A8FA1A0](v14, -1, -1);
  __swift_destroy_boxed_opaque_existential_0(v15);
  MEMORY[0x19A8FA1A0](v15, -1, -1);
  MEMORY[0x19A8FA1A0](v13, -1, -1);

  return v3;
}

uint64_t sub_199B0E520(void *a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  *(v3 + 32) = xmmword_199E3D430;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 7;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  v6 = OBJC_IVAR____TtC10ContactsUI13CardViewModel__contactEntity;
  v7 = sub_199DF76CC();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC10ContactsUI13CardViewModel____lazy_storage___contactFormatter) = 0;
  sub_199DF73DC();
  *(v3 + 88) = v5;
  if (a1[2])
  {
    v9 = a1[4];
    v8 = a1[5];
    sub_199DF81AC();

    v10 = objc_allocWithZone(MEMORY[0x1E695CD58]);
    v11 = sub_199DF9F5C();
    v12 = [v10 initWithIdentifier_];

    *(v3 + 24) = 1;
    v13 = qword_1EAF71ED0;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_199DF804C();
    __swift_project_value_buffer(v15, qword_1EAF74510);
    sub_199DF81AC();
    v16 = sub_199DF802C();
    v17 = sub_199DFA33C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      v20 = sub_199A9BE90(v9, v8, &v26);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_199A75000, v16, v17, "Init Contact Card with identifier %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x19A8FA1A0](v19, -1, -1);
      MEMORY[0x19A8FA1A0](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    if (qword_1EAF71ED0 != -1)
    {
      swift_once();
    }

    v21 = sub_199DF804C();
    __swift_project_value_buffer(v21, qword_1EAF74510);
    v22 = sub_199DF802C();
    v23 = sub_199DFA31C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_199A75000, v22, v23, "Contact card needs a valid identifier", v24, 2u);
      MEMORY[0x19A8FA1A0](v24, -1, -1);
    }

    v14 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    *(v3 + 24) = 0;
  }

  *(v3 + 16) = v14;
  return v3;
}

uint64_t sub_199B0E8B4()
{
  sub_199B125CC(*(v0 + 32), *(v0 + 40));

  sub_199A9A5FC(*(v0 + 96));
  sub_199A9A5FC(*(v0 + 112));
  sub_199A79A04(v0 + OBJC_IVAR____TtC10ContactsUI13CardViewModel__contactEntity, &unk_1EAF74680);

  v1 = OBJC_IVAR____TtC10ContactsUI13CardViewModel___observationRegistrar;
  v2 = sub_199DF73EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_199B0E970()
{
  sub_199B0E8B4();

  return swift_deallocClassInstance();
}

uint64_t sub_199B0E9C8@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v2 = type metadata accessor for ContactCardViewSwiftUI(0);
  v93 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v94 = v4;
  v95 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74680);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v79 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF727A0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v102 = &v79 - v10;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74690);
  MEMORY[0x1EEE9AC00](v99, v11);
  v100 = &v79 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74698);
  MEMORY[0x1EEE9AC00](v97, v13);
  v98 = &v79 - v14;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746A0);
  MEMORY[0x1EEE9AC00](v90, v15);
  v96 = &v79 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746A8);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v17);
  v89 = &v79 - v18;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746B0);
  MEMORY[0x1EEE9AC00](v85, v19);
  v86 = &v79 - v20;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746B8);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v21);
  v82 = &v79 - v22;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746C0);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v23);
  v25 = &v79 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746C8);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v79 - v29;
  v103 = v1;
  sub_199DF914C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746D0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF746D8);
  v32 = sub_199AA0B90(&qword_1EAF746E0, &qword_1EAF746D8);
  v107 = v31;
  v108 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v79;
  sub_199DF854C();
  v34 = v1;
  v35 = *v1;
  swift_getKeyPath();
  v36 = OBJC_IVAR____TtC10ContactsUI13CardViewModel___observationRegistrar;
  v107 = v35;
  v37 = sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  v88 = v36;
  v87 = v37;
  sub_199DF73AC();

  v38 = OBJC_IVAR____TtC10ContactsUI13CardViewModel__contactEntity;
  swift_beginAccess();
  sub_199AAD408(v35 + v38, v33, &unk_1EAF74680);
  v39 = sub_199DF76CC();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v33, 1, v39) == 1)
  {
    sub_199A79A04(v33, &unk_1EAF74680);
    v41 = 1;
  }

  else
  {
    sub_199B11470(&qword_1EAF71BA0, MEMORY[0x1E69968E0]);
    sub_199DF6EBC();
    (*(v40 + 8))(v33, v39);
    v41 = 0;
  }

  v42 = sub_199DF6EDC();
  v43 = v102;
  (*(*(v42 - 8) + 56))(v102, v41, 1, v42);
  v44 = sub_199AA0B90(&qword_1EAF746E8, &qword_1EAF746C8);
  MEMORY[0x19A8F71B0](v43, v26, v44);
  sub_199A79A04(v43, &qword_1EAF727A0);
  (*(v27 + 8))(v30, v26);
  v45 = *(v34 + 56);
  v46 = *(v34 + 64);
  v104 = *(v34 + 48);
  LOBYTE(v105) = v45;
  v106 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746F0);
  sub_199DF986C();
  sub_199DF9C2C();
  v104 = v26;
  v105 = v44;
  swift_getOpaqueTypeConformance2();
  v47 = v82;
  v48 = v81;
  sub_199DF94DC();

  (*(v80 + 8))(v25, v48);
  sub_199DF917C();
  sub_199DF84FC();
  v107 = v49;
  v108 = v50;
  v109 = v51;
  v110 = v52;
  v111 = 0;
  v53 = v86;
  sub_199DF8FBC();
  (*(v83 + 32))(v53, v47, v84);
  v54 = v95;
  sub_199B124F8(v34, v95, type metadata accessor for ContactCardViewSwiftUI);
  v55 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v56 = swift_allocObject();
  sub_199B11F98(v54, v56 + v55);
  sub_199B1207C();
  sub_199B121E8();
  v57 = v89;
  sub_199DF958C();

  sub_199A79A04(v53, &qword_1EAF746B0);
  KeyPath = swift_getKeyPath();
  v59 = v96;
  v60 = &v96[*(v90 + 36)];
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74710) + 28);
  v62 = *MEMORY[0x1E697DBA8];
  v63 = sub_199DF857C();
  (*(*(v63 - 8) + 104))(v60 + v61, v62, v63);
  *v60 = KeyPath;
  (*(v91 + 32))(v59, v57, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  LOBYTE(v61) = sub_199DF919C();
  *(inited + 32) = v61;
  v65 = sub_199DF91BC();
  *(inited + 33) = v65;
  v66 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v61)
  {
    v66 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v65)
  {
    v66 = sub_199DF91AC();
  }

  sub_199DF84FC();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = v98;
  sub_199AB7794(v59, v98, &qword_1EAF746A0);
  v76 = v75 + *(v97 + 36);
  *v76 = v66;
  *(v76 + 8) = v68;
  *(v76 + 16) = v70;
  *(v76 + 24) = v72;
  *(v76 + 32) = v74;
  *(v76 + 40) = 0;
  v77 = v100;
  sub_199AB7794(v75, v100, &qword_1EAF74698);
  *(v77 + *(v99 + 36)) = 1;
  swift_getKeyPath();
  v104 = v35;
  sub_199DF73AC();

  sub_199B0FEB4(*(v35 + 88) == 1);
  return sub_199A79A04(v77, &qword_1EAF74690);
}

uint64_t sub_199B0F6C0(uint64_t a1)
{
  v2 = sub_199DF8F6C();
  MEMORY[0x1EEE9AC00](v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10[-v7];
  sub_199DF8D5C();
  v11 = a1;
  v12 = 0;
  sub_199B11470(&qword_1EAF74760, MEMORY[0x1E697FCB0]);
  sub_199DFAB2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74768);
  sub_199AA0B90(&qword_1EAF74770, &qword_1EAF74768);
  sub_199DF853C();
  sub_199AA0B90(&qword_1EAF746E0, &qword_1EAF746D8);
  sub_199DF955C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_199B0F910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for ContactCardHeaderNameView(0);
  v4 = v3 - 8;
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v39 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v37[-v9];
  v11 = *a1;
  swift_getKeyPath();
  v41 = v11;
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  v12 = *(v11 + 16);
  v13 = a1[2];
  LOBYTE(v45) = *(a1 + 8);
  v46 = v13;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF986C();
  v15 = v41;
  v16 = v42;
  v17 = v43;
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  LOBYTE(v45) = 0;
  sub_199DF983C();
  v18 = v42;
  v10[40] = v41;
  *(v10 + 6) = v18;
  sub_199B02B9C(v14, &v10[*(v4 + 36)]);
  *(v10 + 2) = v15;
  *(v10 + 3) = v16;
  v10[32] = v17;
  swift_getKeyPath();
  v41 = v11;
  sub_199DF73AC();

  v19 = *(v11 + 96);
  v20 = *(v11 + 104);
  swift_getKeyPath();
  v41 = v11;
  sub_199A9A57C(v19);
  sub_199DF73AC();

  v21 = *(v11 + 112);
  v22 = *(v11 + 120);
  sub_199A9A57C(v21);
  v23 = sub_199B07448(v19, v20, v21, v22);
  swift_getKeyPath();
  v41 = v11;
  sub_199DF73AC();

  v24 = *(v11 + 16);
  swift_getKeyPath();
  v41 = v11;
  v25 = v24;
  sub_199DF73AC();

  v38 = *(v11 + 64);
  v26 = *(a1 + 56);
  v27 = a1[8];
  v45 = a1[6];
  LOBYTE(v46) = v26;
  v47 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF746F0);
  sub_199DF986C();
  v28 = v41;
  v29 = v42;
  v30 = v43;
  LOBYTE(v20) = v44;
  type metadata accessor for ContactDetailsViewModel(0);
  swift_allocObject();
  v31 = sub_199B0A180(v25);

  v32 = v39;
  sub_199B124F8(v10, v39, type metadata accessor for ContactCardHeaderNameView);
  v33 = v40;
  sub_199B124F8(v32, v40, type metadata accessor for ContactCardHeaderNameView);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74778);
  *(v33 + *(v34 + 48)) = v23;
  v35 = v33 + *(v34 + 64);
  *v35 = v31;
  *(v35 + 8) = v38;
  *(v35 + 16) = v28;
  *(v35 + 24) = v29;
  *(v35 + 32) = v30;
  *(v35 + 40) = v20;

  sub_199DF81AC();

  sub_199B12560(v10);

  return sub_199B12560(v32);
}

uint64_t sub_199B0FD14@<X0>(void *a1@<X8>)
{
  result = sub_199DF87EC();
  *a1 = v3;
  return result;
}

void sub_199B0FD40(uint64_t a1, double *a2)
{
  v2 = *a2;
  if (*a2 < -300.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74758);
    sub_199DF985C();
    goto LABEL_3;
  }

  if (v2 < -200.0 || v2 < -150.0)
  {
    v3 = &qword_1EAF74758;
    goto LABEL_7;
  }

  if (v2 < -10.0 || v2 > 0.0)
  {
LABEL_3:
    v3 = &qword_1EAF74750;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(v3);
    sub_199DF985C();
  }
}

uint64_t sub_199B0FEB4(char a1)
{
  if (a1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74720);
    v3 = *(v2 - 8);
    v5 = MEMORY[0x1EEE9AC00](v2, v4);
    v7 = &v16 - v6;
    MEMORY[0x1EEE9AC00](v5, v8);
    *(&v16 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74690);
    sub_199B1223C();
    sub_199DF88AC();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74718);
    MEMORY[0x1EEE9AC00](v9, v10);
    (*(v3 + 16))(&v16 - v11, v7, v2);
    swift_storeEnumTagMultiPayload();
    sub_199AA0B90(&qword_1EAF74728, &qword_1EAF74720);
    sub_199DF8EDC();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74718);
    MEMORY[0x1EEE9AC00](v13, v14);
    sub_199A956BC(v1, &v16 - v15);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74690);
    sub_199AA0B90(&qword_1EAF74728, &qword_1EAF74720);
    sub_199B1223C();
    return sub_199DF8EDC();
  }
}

void *sub_199B101C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_getKeyPath();
  *&__dst[0] = a1;
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF73AC();

  v8 = a1[5];
  if (v8 == 1)
  {
    sub_199B11D94(__dst);
  }

  else
  {
    v30 = a4;
    v10 = a1[6];
    v9 = a1[7];
    v11 = a1[4];
    sub_199DF81AC();
    sub_199DF81AC();
    v29 = sub_199DF8D5C();
    sub_199B105B0(v11, v8, v10, v9, __dst);
    v44 = __dst[12];
    v45 = __dst[13];
    v46 = __dst[14];
    v40 = __dst[8];
    v41 = __dst[9];
    v42 = __dst[10];
    v43 = __dst[11];
    v36 = __dst[4];
    v37 = __dst[5];
    v38 = __dst[6];
    v39 = __dst[7];
    v32 = __dst[0];
    v33 = __dst[1];
    v34 = __dst[2];
    v35 = __dst[3];
    v48[12] = __dst[12];
    v48[13] = __dst[13];
    v48[14] = __dst[14];
    v48[8] = __dst[8];
    v48[9] = __dst[9];
    v48[10] = __dst[10];
    v48[11] = __dst[11];
    v48[4] = __dst[4];
    v48[5] = __dst[5];
    v48[6] = __dst[6];
    v48[7] = __dst[7];
    v48[0] = __dst[0];
    v48[1] = __dst[1];
    v47 = __dst[15];
    v49 = __dst[15];
    v48[2] = __dst[2];
    v48[3] = __dst[3];
    sub_199AAD408(&v32, __src, &qword_1EAF74630);
    sub_199A79A04(v48, &qword_1EAF74630);
    *&v31[199] = v44;
    *&v31[215] = v45;
    *&v31[231] = v46;
    *&v31[135] = v40;
    *&v31[151] = v41;
    *&v31[167] = v42;
    *&v31[183] = v43;
    *&v31[71] = v36;
    *&v31[87] = v37;
    *&v31[103] = v38;
    *&v31[119] = v39;
    *&v31[7] = v32;
    *&v31[23] = v33;
    *&v31[39] = v34;
    v31[247] = v47;
    *&v31[55] = v35;

    *&__dst[0] = a2;
    *(&__dst[0] + 1) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74638);
    sub_199DF984C();
    v12 = __src[0];
    KeyPath = swift_getKeyPath();
    v14 = sub_199DF915C();
    sub_199DF84FC();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    LOBYTE(__dst[0]) = 0;
    v23 = sub_199DF91CC();
    sub_199DF84FC();
    *(&__src[26] + 1) = *&v31[192];
    *(&__src[28] + 1) = *&v31[208];
    *(&__src[30] + 1) = *&v31[224];
    *(&__src[18] + 1) = *&v31[128];
    *(&__src[20] + 1) = *&v31[144];
    *(&__src[22] + 1) = *&v31[160];
    *(&__src[24] + 1) = *&v31[176];
    *(&__src[10] + 1) = *&v31[64];
    *(&__src[12] + 1) = *&v31[80];
    *(&__src[14] + 1) = *&v31[96];
    *(&__src[16] + 1) = *&v31[112];
    *(&__src[2] + 1) = *v31;
    *(&__src[4] + 1) = *&v31[16];
    *(&__src[6] + 1) = *&v31[32];
    __src[0] = v29;
    __src[1] = 0;
    LOBYTE(__src[2]) = 1;
    *(&__src[32] + 1) = *&v31[240];
    *(&__src[8] + 1) = *&v31[48];
    __src[34] = KeyPath;
    __src[35] = v12;
    a4 = v30;
    LOBYTE(__src[36]) = v14;
    __src[37] = v16;
    __src[38] = v18;
    __src[39] = v20;
    __src[40] = v22;
    LOBYTE(__src[41]) = 0;
    LOBYTE(__src[42]) = v23;
    __src[43] = v24;
    __src[44] = v25;
    __src[45] = v26;
    __src[46] = v27;
    LOBYTE(__src[47]) = 0;
    CGSizeMake(__src);
    memcpy(__dst, __src, 0x179uLL);
  }

  return memcpy(a4, __dst, 0x179uLL);
}

uint64_t sub_199B105B0@<X0>(uint64_t a1@<X3>, unint64_t a2@<X4>, uint64_t a3@<X5>, unint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v49 = a3;
  v50 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74640);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v48 - v10;
  v12 = sub_199B0DF10();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    *&v77 = sub_199B0DF10();
    *(&v77 + 1) = v16;
    sub_199A9C458();
    v17 = sub_199DF93CC();
    v54 = v18;
    v55 = v17;
    v20 = v19;
    v53 = v21;
    KeyPath = swift_getKeyPath();
    v22 = sub_199DF922C();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    sub_199DF928C();
    sub_199A79A04(v11, &unk_1EAF74640);
    sub_199DF925C();
    *(&v51 + 1) = sub_199DF92BC();

    *&v51 = swift_getKeyPath();
    LOBYTE(v77) = v20 & 1;
    v23 = v20 & 1;
  }

  else
  {
    v54 = 0;
    v55 = 0;
    KeyPath = 0;
    v53 = 0;
    v51 = 0uLL;
    v23 = 0;
  }

  v48 = v23;
  v24 = sub_199DF8CEC();
  LOBYTE(v56[0]) = 1;
  sub_199B10AD0(a1, a2, v49, v50, &v77);
  v66 = v78[4];
  v67 = v78[5];
  v68[0] = v78[6];
  *(v68 + 9) = *(&v78[6] + 9);
  v63 = v78[1];
  v64 = v78[2];
  v65 = v78[3];
  v61 = v77;
  v62 = v78[0];
  v69[5] = v78[4];
  v69[6] = v78[5];
  v70[0] = v78[6];
  *(v70 + 9) = *(&v78[6] + 9);
  v69[2] = v78[1];
  v69[3] = v78[2];
  v69[4] = v78[3];
  v69[0] = v77;
  v69[1] = v78[0];
  sub_199AAD408(&v61, v75, &qword_1EAF74650);
  sub_199A79A04(v69, &qword_1EAF74650);
  *(&v60[2] + 7) = v63;
  *(&v60[1] + 7) = v62;
  *(&v60[6] + 7) = v67;
  *(&v60[5] + 7) = v66;
  *(&v60[7] + 7) = v68[0];
  v60[8] = *(v68 + 9);
  *(&v60[3] + 7) = v64;
  *(&v60[4] + 7) = v65;
  *(v60 + 7) = v61;
  v25 = v56[0];
  v75[0] = v24;
  v26 = v24;
  v75[1] = 0;
  v76[0] = v56[0];
  v27 = v60[1];
  *&v76[1] = v60[0];
  v28 = v60[3];
  *&v76[65] = v60[4];
  v29 = v60[2];
  *&v76[49] = v60[3];
  *&v76[33] = v60[2];
  v30 = v60[0];
  *&v76[17] = v60[1];
  v31 = v60[7];
  *&v76[129] = *(v68 + 9);
  v32 = v60[6];
  *&v76[113] = v60[7];
  v33 = v60[5];
  *&v76[97] = v60[6];
  v34 = v60[4];
  *&v76[81] = v60[5];
  *&v58[71] = *&v76[48];
  *&v58[55] = *&v76[32];
  *&v58[119] = *&v76[96];
  *&v58[135] = *&v76[112];
  v58[167] = BYTE8(v68[1]);
  v35 = v54;
  v36 = v55;
  *&v71 = v55;
  *(&v71 + 1) = v54;
  *&v72 = v23;
  v37 = KeyPath;
  v38 = v53;
  *(&v72 + 1) = v53;
  v73 = KeyPath;
  v39 = v51;
  v74 = v51;
  *&v58[151] = *&v76[128];
  *&v58[87] = *&v76[64];
  *&v58[103] = *&v76[80];
  *&v58[7] = v75[0];
  *&v58[23] = *v76;
  *&v58[39] = *&v76[16];
  v40 = v72;
  *a5 = v71;
  *(a5 + 16) = v40;
  v41 = v74;
  *(a5 + 32) = v73;
  *(a5 + 48) = v41;
  v42 = *&v58[96];
  *(a5 + 185) = *&v58[112];
  v43 = *&v58[144];
  *(a5 + 201) = *&v58[128];
  *(a5 + 217) = v43;
  v44 = *&v58[32];
  *(a5 + 121) = *&v58[48];
  v45 = *&v58[80];
  *(a5 + 137) = *&v58[64];
  *(a5 + 153) = v45;
  *(a5 + 169) = v42;
  v46 = *&v58[16];
  *(a5 + 73) = *v58;
  *(a5 + 89) = v46;
  *(a5 + 105) = v44;
  *(&v78[5] + 1) = v33;
  *(&v78[6] + 1) = v32;
  *(&v78[7] + 1) = v31;
  *(&v78[8] + 1) = v60[8];
  *(&v78[1] + 1) = v27;
  v59 = 1;
  *(a5 + 64) = 0;
  *(a5 + 72) = 1;
  *(a5 + 233) = *&v58[160];
  v77 = v26;
  LOBYTE(v78[0]) = v25;
  *(&v78[2] + 1) = v29;
  *(&v78[3] + 1) = v28;
  *(&v78[4] + 1) = v34;
  *(v78 + 1) = v30;
  sub_199AAD408(&v71, v56, &qword_1EAF74658);
  sub_199AAD408(v75, v56, &qword_1EAF74660);
  sub_199A79A04(&v77, &qword_1EAF74660);
  v56[0] = v36;
  v56[1] = v35;
  v56[2] = v48;
  v56[3] = v38;
  v56[4] = v37;
  v56[5] = 0;
  v57 = v39;
  return sub_199A79A04(v56, &qword_1EAF74658);
}

uint64_t sub_199B10AD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_199DF8D5C();
  LOBYTE(v34) = 1;
  sub_199B10CE4(a1, a2, a3, a4, &v36);
  v29 = v40;
  v30 = v41;
  v31 = v42[0];
  v25 = v36;
  v26 = v37;
  v27 = v38;
  v28 = v39;
  v32[0] = v36;
  v32[1] = v37;
  v32[2] = v38;
  v32[3] = v39;
  v32[4] = v40;
  v32[5] = v41;
  v33 = v42[0];
  sub_199AAD408(&v25, v43, &qword_1EAF74668);
  sub_199A79A04(v32, &qword_1EAF74668);
  *&v24[55] = v28;
  *&v24[71] = v29;
  *&v24[87] = v30;
  v24[103] = v31;
  *&v24[7] = v25;
  *&v24[23] = v26;
  *&v24[39] = v27;
  v11 = *&v24[96];
  *&v35[97] = *&v24[96];
  v12 = v34;
  v34 = v10;
  v35[0] = v12;
  v13 = *&v24[16];
  *&v35[1] = *v24;
  *&v35[33] = *&v24[32];
  v14 = *v24;
  *&v35[17] = *&v24[16];
  v15 = *&v24[64];
  *&v35[81] = *&v24[80];
  v16 = *&v24[48];
  *&v35[65] = *&v24[64];
  v17 = *&v24[32];
  *&v35[49] = *&v24[48];
  v38 = *&v35[16];
  v39 = *&v35[32];
  v36 = v10;
  v37 = *v35;
  *&v42[9] = *&v35[89];
  v41 = *&v35[64];
  *v42 = *&v35[80];
  v40 = *&v35[48];
  v18 = *&v35[32];
  *(a5 + 32) = *&v35[16];
  *(a5 + 48) = v18;
  v19 = v37;
  *a5 = v36;
  *(a5 + 16) = v19;
  v20 = *&v42[16];
  *(a5 + 96) = *v42;
  *(a5 + 112) = v20;
  v21 = v41;
  *(a5 + 64) = v40;
  *(a5 + 80) = v21;
  v47 = v17;
  v23[128] = 1;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  v43[0] = v10;
  v43[1] = 0;
  v44 = v12;
  v46 = v13;
  v45 = v14;
  v51 = v11;
  v50 = *&v24[80];
  v49 = v15;
  v48 = v16;
  sub_199AAD408(&v34, v23, &qword_1EAF74670);
  return sub_199A79A04(v43, &qword_1EAF74670);
}

uint64_t sub_199B10CE4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v58 = a4;
  v59 = a3;
  v64 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74640);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v60 = v56 - v9;
  if (a2)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (a2)
  {
    v11 = a2;
  }

  v71 = v10;
  v72 = v11;
  v56[1] = sub_199A9C458();
  sub_199DF81AC();
  v12 = sub_199DF93CC();
  v14 = v13;
  v16 = v15;
  sub_199DF929C();
  v17 = sub_199DF939C();
  v19 = v18;
  v21 = v20;

  sub_199ACE3E8(v12, v14, v16 & 1);

  LODWORD(v71) = sub_199DF8F8C();
  v22 = sub_199DF934C();
  v62 = v23;
  v63 = v22;
  v61 = v24;
  v57 = v25;
  sub_199ACE3E8(v17, v19, v21 & 1);

  v26 = v59;
  if (!v58)
  {
    v26 = 0;
  }

  v27 = 0xE000000000000000;
  if (v58)
  {
    v27 = v58;
  }

  v71 = v26;
  v72 = v27;
  sub_199DF81AC();
  v28 = sub_199DF93CC();
  v30 = v29;
  v32 = v31;
  v33 = sub_199DF922C();
  v34 = v60;
  (*(*(v33 - 8) + 56))(v60, 1, 1, v33);
  sub_199DF928C();
  sub_199A79A04(v34, &unk_1EAF74640);
  sub_199DF925C();
  sub_199DF92BC();

  v35 = sub_199DF939C();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_199ACE3E8(v28, v30, v32 & 1);

  KeyPath = swift_getKeyPath();
  v43 = swift_getKeyPath();
  v44 = v39 & 1;
  v83 = v39 & 1;
  v81 = 0;
  v45 = v57 & 1;
  v65[72] = v57 & 1;
  *&v66 = v35;
  *(&v66 + 1) = v37;
  LOBYTE(v67) = v39 & 1;
  *(&v67 + 1) = *v82;
  DWORD1(v67) = *&v82[3];
  *(&v67 + 1) = v41;
  *&v68 = KeyPath;
  *(&v68 + 1) = 0x3FD3333333333333;
  *&v69 = v43;
  *(&v69 + 1) = 3;
  v70 = 0;
  v47 = v63;
  v46 = v64;
  v49 = v61;
  v48 = v62;
  *v64 = v63;
  v46[1] = v49;
  *(v46 + 16) = v45;
  v46[3] = v48;
  v50 = v66;
  v51 = v67;
  v52 = v68;
  v53 = v69;
  *(v46 + 96) = 0;
  *(v46 + 4) = v52;
  *(v46 + 5) = v53;
  *(v46 + 2) = v50;
  *(v46 + 3) = v51;
  v71 = v35;
  v72 = v37;
  v73 = v44;
  *&v74[3] = *&v82[3];
  *v74 = *v82;
  v75 = v41;
  v76 = KeyPath;
  v77 = 0x3FD3333333333333;
  v78 = v43;
  v79 = 3;
  v80 = 0;
  v54 = v47;
  sub_199ACE3F8(v47, v49, v45);
  sub_199DF81AC();
  sub_199AAD408(&v66, v65, &qword_1EAF74678);
  sub_199A79A04(&v71, &qword_1EAF74678);
  sub_199ACE3E8(v54, v49, v45);
}

uint64_t sub_199B110D0@<X0>(void *a1@<X8>)
{
  sub_199B027F8();
  result = sub_199DF8C9C();
  *a1 = v3;
  return result;
}

uint64_t sub_199B11120()
{
  sub_199B027F8();

  return sub_199DF8CAC();
}

uint64_t sub_199B111A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_199AA7688;

  return sub_199B0C498();
}

unint64_t sub_199B11230()
{
  result = qword_1EAF74588;
  if (!qword_1EAF74588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74590);
    sub_199B112BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74588);
  }

  return result;
}

unint64_t sub_199B112BC()
{
  result = qword_1EAF74598;
  if (!qword_1EAF74598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74598);
  }

  return result;
}

uint64_t sub_199B11310(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_199AA0B90(&qword_1EAF745A0, &qword_1EAF74568);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_199B113B4()
{
  result = qword_1EAF745B0;
  if (!qword_1EAF745B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74560);
    sub_199B11470(&qword_1EAF745B8, type metadata accessor for ContactCardViewSwiftUI);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF745B0);
  }

  return result;
}

uint64_t sub_199B11470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_199B114B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_199AA7314;

  return sub_199B0C2B0();
}

unint64_t sub_199B1154C()
{
  result = qword_1EAF745C0;
  if (!qword_1EAF745C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF745C0);
  }

  return result;
}

unint64_t sub_199B115A4()
{
  result = qword_1EAF745C8;
  if (!qword_1EAF745C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF745C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactPropertyType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactPropertyType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void sub_199B11834()
{
  sub_199B11C38(319, &qword_1EAF745F8, MEMORY[0x1E69968E0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_199DF73EC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_199B11978()
{
  result = qword_1EAF74600;
  if (!qword_1EAF74600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74608);
    sub_199B11310(&qword_1EAF74580, &qword_1EAF74578, &unk_199E3D570, sub_199B11230);
    sub_199B11310(&qword_1EAF745A8, &qword_1EAF74538, &unk_199E3D4C8, sub_199B113B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74600);
  }

  return result;
}

void sub_199B11A94()
{
  type metadata accessor for CardViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_199ACDA98();
    if (v1 <= 0x3F)
    {
      sub_199B11BE4(319, &qword_1EAF711D8, &qword_1EAF74540);
      if (v2 <= 0x3F)
      {
        sub_199B11BE4(319, &qword_1EAF74620, &qword_1EAF74548);
        if (v3 <= 0x3F)
        {
          sub_199B11BE4(319, &qword_1EAF74628, &unk_1EAF74550);
          if (v4 <= 0x3F)
          {
            sub_199B11C38(319, &qword_1EAF730F0, MEMORY[0x1EEE7B720], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_199B11BE4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_199DF987C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_199B11C38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_199B11C9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_199B11CF8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_199B11D94(_OWORD *a1)
{
  result = 0.0;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 361) = 0u;
  return result;
}

uint64_t sub_199B11DD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_199DF8AAC();
  *a1 = result;
  return result;
}

uint64_t sub_199B11E2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_199DF8BAC();
  *a1 = result;
  return result;
}

uint64_t sub_199B11E84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_199DF8B7C();
  *a1 = result;
  return result;
}

uint64_t sub_199B11ED8@<X0>(uint64_t a1@<X8>)
{
  result = sub_199DF8C1C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_199B11F3C@<X0>(void *a1@<X8>)
{
  result = sub_199DF8B0C();
  *a1 = v3;
  return result;
}

uint64_t sub_199B11F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardViewSwiftUI(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_199B11FFC(uint64_t a1, double *a2)
{
  type metadata accessor for ContactCardViewSwiftUI(0);

  sub_199B0FD40(a1, a2);
}

unint64_t sub_199B1207C()
{
  result = qword_1EAF746F8;
  if (!qword_1EAF746F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF746B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF746C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF746C8);
    sub_199AA0B90(&qword_1EAF746E8, &qword_1EAF746C8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_199B11470(&unk_1EAF74700, MEMORY[0x1E6980270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF746F8);
  }

  return result;
}

unint64_t sub_199B121E8()
{
  result = qword_1EAF714C8;
  if (!qword_1EAF714C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF714C8);
  }

  return result;
}

unint64_t sub_199B1223C()
{
  result = qword_1EAF74730;
  if (!qword_1EAF74730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74690);
    sub_199B122C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74730);
  }

  return result;
}

unint64_t sub_199B122C8()
{
  result = qword_1EAF74738;
  if (!qword_1EAF74738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74698);
    sub_199B12354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74738);
  }

  return result;
}

unint64_t sub_199B12354()
{
  result = qword_1EAF74740;
  if (!qword_1EAF74740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF746A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF746B0);
    sub_199B1207C();
    sub_199B121E8();
    swift_getOpaqueTypeConformance2();
    sub_199AA0B90(&qword_1EAF74748, &qword_1EAF74710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74740);
  }

  return result;
}

uint64_t sub_199B12480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74680);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B124F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_199B12560(uint64_t a1)
{
  v2 = type metadata accessor for ContactCardHeaderNameView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_199B125CC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_199B12614(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    sub_199DF81AC();

    return sub_199DF81AC();
  }

  return result;
}

uint64_t sub_199B1265C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 72) = v0[3];
  *(v1 + 80) = v2;
  sub_199DF81AC();
}

uint64_t sub_199B126AC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v2[4];
  v7 = v2[5];
  v2[4] = v1;
  v2[5] = v3;
  v2[6] = v4;
  v2[7] = v5;
  sub_199B12614(v1, v3);
  return sub_199B125CC(v6, v7);
}

uint64_t sub_199B12714()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 112);
  *(v2 + 112) = v1;
  *(v2 + 120) = v3;
  sub_199A9A57C(v1);
  return sub_199A9A5FC(v4);
}

uint64_t sub_199B127B0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 96);
  *(v2 + 96) = v1;
  *(v2 + 104) = v3;
  sub_199A9A57C(v1);
  return sub_199A9A5FC(v4);
}

unint64_t sub_199B127FC()
{
  result = qword_1EAF74798;
  if (!qword_1EAF74798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF747A0);
    sub_199B12880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74798);
  }

  return result;
}

unint64_t sub_199B12880()
{
  result = qword_1EAF747A8;
  if (!qword_1EAF747A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF747B0);
    sub_199B1290C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF747A8);
  }

  return result;
}

unint64_t sub_199B1290C()
{
  result = qword_1EAF747B8;
  if (!qword_1EAF747B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF747C0);
    sub_199B12998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF747B8);
  }

  return result;
}

unint64_t sub_199B12998()
{
  result = qword_1EAF747C8;
  if (!qword_1EAF747C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF747D0);
    sub_199AA0B90(&qword_1EAF747D8, &qword_1EAF747E0);
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF747C8);
  }

  return result;
}

unint64_t sub_199B12A7C()
{
  result = qword_1EAF747E8;
  if (!qword_1EAF747E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF747F0);
    sub_199AA0B90(&qword_1EAF74728, &qword_1EAF74720);
    sub_199B1223C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF747E8);
  }

  return result;
}

unint64_t sub_199B12B84@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_199B15628(*a1);
  *a2 = result;
  return result;
}

id PosterEditFlowReporter.__deallocating_deinit()
{
  sub_199B1422C();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterEditFlowReporter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199B12CF8(char a1)
{
  v3 = sub_199DF804C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_entryPoint) = 3;
  *(v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_isEditingMeCard) = a1;
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v3);
  v8 = sub_199DF802C();
  v9 = sub_199DFA30C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_199A75000, v8, v9, "Starting from SNaP", v10, 2u);
    MEMORY[0x19A8FA1A0](v10, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_199B12EC4(char a1, char a2)
{
  v5 = sub_199DF804C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  *(v2 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_entryPoint) = v10;
  *(v2 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_isEditingMeCard) = a1;
  (*(v6 + 16))(v9, v2 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v5);
  v11 = sub_199DF802C();
  v12 = sub_199DFA30C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    if (a2)
    {
      v15 = 1953064037;
    }

    else
    {
      v15 = 0x79616C70736964;
    }

    if (a2)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    v17 = sub_199A9BE90(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_199A75000, v11, v12, "Starting from Contacts %s mode", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x19A8FA1A0](v14, -1, -1);
    MEMORY[0x19A8FA1A0](v13, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_199B13134(char a1)
{
  v3 = sub_199DF804C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_entryPoint) = 4;
  *(v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_isEditingMeCard) = a1;
  *(v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_editType) = 4;
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v3);
  v8 = sub_199DF802C();
  v9 = sub_199DFA30C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_199A75000, v8, v9, "Starting from Onboarding", v10, 2u);
    MEMORY[0x19A8FA1A0](v10, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_199B13564(void *a1, char a2, const char *a3)
{
  v7 = sub_199DF804C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + *a1) = a2;
  (*(v8 + 16))(v11, v3 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v7);
  v12 = sub_199DF802C();
  v13 = sub_199DFA30C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_199A75000, v12, v13, a3, v14, 2u);
    MEMORY[0x19A8FA1A0](v14, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_199B1371C()
{
  v1 = sub_199DF804C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_cancelLocation) = 3;
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) <= 2u)
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) = 3;
  }

  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v1);
  v6 = sub_199DF802C();
  v7 = sub_199DFA30C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_199A75000, v6, v7, "didCancelFromCarousel()", v8, 2u);
    MEMORY[0x19A8FA1A0](v8, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_199B138E4()
{
  v1 = sub_199DF804C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_cancelLocation) = 1;
  if (!*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint))
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) = 1;
  }

  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v1);
  v6 = sub_199DF802C();
  v7 = sub_199DFA30C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_199A75000, v6, v7, "didCancelFromOnboardingWelcome()", v8, 2u);
    MEMORY[0x19A8FA1A0](v8, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_199B13AA8()
{
  v1 = sub_199DF804C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_cancelLocation) = 2;
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) <= 1u)
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) = 2;
  }

  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v1);
  v6 = sub_199DF802C();
  v7 = sub_199DFA30C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_199A75000, v6, v7, "didCancelFromOnboardingNew()", v8, 2u);
    MEMORY[0x19A8FA1A0](v8, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_199B13C70()
{
  v1 = sub_199DF804C();
  v2 = *(v1 - 8);
  result = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_cancelLocation) = 4;
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) <= 3u)
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) = 4;
  }

  v7 = *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didCancelAvatarCount);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didCancelAvatarCount) = v9;
    if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_avatarResult) != 2)
    {
      *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_avatarResult) = 4;
    }

    (*(v2 + 16))(v6, v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v1);
    v10 = sub_199DF802C();
    v11 = sub_199DFA30C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_199A75000, v10, v11, "didCancelFromAvatarEditor()", v12, 2u);
      MEMORY[0x19A8FA1A0](v12, -1, -1);
    }

    return (*(v2 + 8))(v6, v1);
  }

  return result;
}

uint64_t sub_199B13E70()
{
  v1 = sub_199DF804C();
  v2 = *(v1 - 8);
  result = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_cancelLocation) = 5;
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) <= 4u)
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint) = 5;
  }

  v7 = *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didCancelPosterCount);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didCancelPosterCount) = v9;
    if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_posterResult) != 2)
    {
      *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_posterResult) = 4;
    }

    (*(v2 + 16))(v6, v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v1);
    v10 = sub_199DF802C();
    v11 = sub_199DFA30C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_199A75000, v10, v11, "didCancelFromPosterEditor()", v12, 2u);
      MEMORY[0x19A8FA1A0](v12, -1, -1);
    }

    return (*(v2 + 8))(v6, v1);
  }

  return result;
}

uint64_t sub_199B14070()
{
  v1 = sub_199DF804C();
  v2 = *(v1 - 8);
  result = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didDeleteCount);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didDeleteCount) = v9;
    (*(v2 + 16))(v6, v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v1);
    v10 = sub_199DF802C();
    v11 = sub_199DFA30C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_199A75000, v10, v11, "didDelete()", v12, 2u);
      MEMORY[0x19A8FA1A0](v12, -1, -1);
    }

    return (*(v2 + 8))(v6, v1);
  }

  return result;
}

uint64_t sub_199B1422C()
{
  v1 = v0;
  v2 = sub_199DFA7FC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
  v11 = sub_199DF804C();
  v12 = *(v11 - 8);
  result = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didAlreadySubmit) & 1) == 0)
  {
    (*(v12 + 16))(v16, v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v11);
    v17 = sub_199DF802C();
    v18 = sub_199DFA30C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28 = v2;
      v20 = v19;
      *v19 = 0;
      _os_log_impl(&dword_199A75000, v17, v18, "didFinish()", v19, 2u);
      v21 = v20;
      v2 = v28;
      MEMORY[0x19A8FA1A0](v21, -1, -1);
    }

    (*(v12 + 8))(v16, v11);
    (*(v3 + 16))(v10, v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_startTime, v2);
    sub_199DFA7DC();
    v22 = sub_199DFA7EC();
    v24 = v23;
    v25 = *(v3 + 8);
    v25(v7, v2);
    v25(v10, v2);
    v26 = v1 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_duration;
    *v26 = v22;
    *(v26 + 8) = v24;
    *(v26 + 16) = 0;
    return sub_199B14568();
  }

  return result;
}

uint64_t type metadata accessor for PosterEditFlowReporter()
{
  result = qword_1EAF71A30;
  if (!qword_1EAF71A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199B14568()
{
  v1 = sub_199DF804C();
  v2 = *(v1 - 8);
  result = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_entryPoint) != 5 && (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didAlreadySubmit) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didAlreadySubmit) = 1;
    v7 = sub_199B147F4();
    v8 = objc_opt_self();
    v9 = sub_199DF9F5C();
    [v8 sendDictionary:v7 forEvent:v9 andLog:1];

    (*(v2 + 16))(v6, v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_logger, v1);
    v10 = v7;
    v11 = sub_199DF802C();
    v12 = sub_199DFA30C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v13 = 136315138;
      v14 = [v10 debugDescription];
      v15 = sub_199DF9F8C();
      v17 = v16;

      v18 = sub_199A9BE90(v15, v17, &v21);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_199A75000, v11, v12, "Submitted: %s", v13, 0xCu);
      v19 = v20;
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x19A8FA1A0](v19, -1, -1);
      MEMORY[0x19A8FA1A0](v13, -1, -1);
    }

    else
    {
    }

    return (*(v2 + 8))(v6, v1);
  }

  return result;
}

id sub_199B147F4()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  sub_199DF81AC();
  v2 = sub_199DF9F5C();

  v3 = sub_199DF9F5C();
  [v1 setValue:v2 forKey:v3];

  v4 = sub_199DFA11C();
  v5 = sub_199DF9F5C();
  [v1 setValue:v4 forKey:v5];

  v6 = sub_199DFA28C();
  v7 = sub_199DF9F5C();
  [v1 setValue:v6 forKey:v7];

  v8 = sub_199DFA28C();
  v9 = sub_199DF9F5C();
  [v1 setValue:v8 forKey:v9];

  v10 = sub_199DFA28C();
  v11 = sub_199DF9F5C();
  [v1 setValue:v10 forKey:v11];

  v12 = sub_199DFA28C();
  v13 = sub_199DF9F5C();
  [v1 setValue:v12 forKey:v13];

  v14 = sub_199DFA28C();
  v15 = sub_199DF9F5C();
  [v1 setValue:v14 forKey:v15];

  if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_entryPoint) != 5)
  {
    v16 = sub_199DFA28C();
    v17 = sub_199DF9F5C();
    [v1 setValue:v16 forKey:v17];
  }

  if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_avatarResult) != 5)
  {
    v18 = sub_199DFA28C();
    v19 = sub_199DF9F5C();
    [v1 setValue:v18 forKey:v19];
  }

  if (*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_posterResult) != 5)
  {
    v20 = sub_199DFA28C();
    v21 = sub_199DF9F5C();
    [v1 setValue:v20 forKey:v21];
  }

  if ((*(v0 + OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_duration + 16) & 1) == 0)
  {
    sub_199DFAAFC();
    v22 = sub_199DFA22C();
    v23 = sub_199DF9F5C();
    [v1 setValue:v22 forKey:v23];
  }

  return v1;
}

id PosterEditFlowReporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PosterEditFlowReporter.init()()
{
  sub_199DF803C();
  v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_isEditingMeCard] = 0;
  v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_entryPoint] = 5;
  v1 = &v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_processName];
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 processName];

  v4 = sub_199DF9F8C();
  v6 = v5;

  *v1 = v4;
  v1[1] = v6;
  v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_editType] = 0;
  v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_avatarResult] = 5;
  v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_posterResult] = 5;
  *&v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didDeleteCount] = 0;
  *&v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didCancelAvatarCount] = 0;
  *&v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didCancelPosterCount] = 0;
  v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_deepestCancelPoint] = 0;
  v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_cancelLocation] = 0;
  sub_199DFA7CC();
  v7 = &v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_duration];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v0[OBJC_IVAR____TtC10ContactsUI22PosterEditFlowReporter_didAlreadySubmit] = 0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PosterEditFlowReporter();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_199B14E20()
{
  result = sub_199DF804C();
  if (v1 <= 0x3F)
  {
    result = sub_199DFA7FC();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AvatarPosterConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AvatarPosterConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_199B154CC()
{
  result = qword_1EAF74800;
  if (!qword_1EAF74800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74800);
  }

  return result;
}

unint64_t sub_199B15524()
{
  result = qword_1EAF74808;
  if (!qword_1EAF74808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74808);
  }

  return result;
}

unint64_t sub_199B1557C()
{
  result = qword_1EAF74810;
  if (!qword_1EAF74810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74810);
  }

  return result;
}

unint64_t sub_199B155D4()
{
  result = qword_1EAF74818;
  if (!qword_1EAF74818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74818);
  }

  return result;
}

unint64_t sub_199B15628(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_199B15658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_199B156A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_199B15738()
{
  sub_199ACDA98();
  if (v0 <= 0x3F)
  {
    sub_199B15AD0(319, &qword_1EAF730F0, MEMORY[0x1EEE7B730], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_199B158B8();
      if (v2 <= 0x3F)
      {
        sub_199B15A6C(319, &qword_1EAF74838, &qword_1EAF74840, &unk_199E3E0D0, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_199DF9D7C();
          if (v4 <= 0x3F)
          {
            sub_199DF9D1C();
            if (v5 <= 0x3F)
            {
              sub_199A7A02C(319, &qword_1EAF74848);
              if (v6 <= 0x3F)
              {
                type metadata accessor for DuplicateContactsListView(319);
                if (v7 <= 0x3F)
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

void sub_199B158B8()
{
  if (!qword_1EAF74830)
  {
    sub_199A7A02C(255, &qword_1EAF72E88);
    v0 = sub_199DF859C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF74830);
    }
  }
}

void sub_199B15968()
{
  sub_199B15A6C(319, &qword_1EAF76090, &qword_1EAF740B0, &unk_199E3A9B0, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_199B15AD0(319, &qword_1EAF74868, MEMORY[0x1E695C0D0], MEMORY[0x1EEE7B7A8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for DuplicateContactsListView(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CNUIDuplicatesContactStoreFacade();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_199B15A6C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_199B15AD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_199B15B50@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for DuplicateContactsDetailView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v60 = sub_199DF9D4C();
  v59 = sub_199DF9D2C();
  v8 = [*(a1 + *(v4 + 56)) string];
  v63 = sub_199DF9F8C();
  v62 = v9;

  v71 = *(a1 + *(v4 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74890);
  sub_199DF984C();
  v61 = v66;
  sub_199B1C0D4(a1, v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsDetailView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v58 = swift_allocObject();
  sub_199B1C13C(v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v58 + v10, type metadata accessor for DuplicateContactsDetailView);
  LOBYTE(v66) = 0;
  sub_199DF983C();
  v54 = v71;
  v55 = *(&v71 + 1);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74898);
  v51[0] = *(v53 - 8);
  v11 = v51[0];
  v51[1] = *(v51[0] + 64);
  MEMORY[0x1EEE9AC00](v53, v12);
  v52 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v57 = v51 - v52;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748A0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748A8);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v51 - v21;
  v64 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748B0);
  sub_199AA0B90(&qword_1EAF748B8, &qword_1EAF748B0);
  sub_199DF931C();
  sub_199AA0B90(&qword_1EAF748C0, &qword_1EAF748A8);
  sub_199DF95AC();
  (*(v19 + 8))(v22, v18);
  v23 = sub_199DF8F5C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8F4C();
  sub_199B1B324();
  v28 = v57;
  sub_199DF966C();
  (*(v24 + 8))(v27, v23);
  sub_199A79A04(v17, &qword_1EAF748A0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748D8);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v29 - 8, v31);
  v33 = v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v33[*(v32 + 44)] = 0x4079000000000000;
  *&v33[*(v32 + 48)] = 0xC020000000000000;
  v34 = sub_199B17E34(a1, v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v36 = v51 - v52;
  v37 = *(v11 + 16);
  v38 = v53;
  v39 = v37(v51 - v52, v28, v53);
  MEMORY[0x1EEE9AC00](v39, v40);
  sub_199A95E04(v33, v33);
  *&v66 = v60;
  *(&v66 + 1) = v59;
  *&v67 = v63;
  *(&v67 + 1) = v62;
  *&v68 = 0x4054000000000000;
  *(&v68 + 1) = v61;
  v52 = sub_199B1B2AC;
  *&v69 = sub_199B1B2AC;
  *(&v69 + 1) = v58;
  LOBYTE(v28) = v54;
  LOBYTE(v70) = v54;
  *(&v70 + 1) = *v65;
  DWORD1(v70) = *&v65[3];
  v41 = v55;
  *(&v70 + 1) = v55;
  v42 = v66;
  v43 = v67;
  v44 = v70;
  v45 = v56;
  *(v56 + 3) = v69;
  *(v45 + 4) = v44;
  v46 = v68;
  *(v45 + 1) = v43;
  *(v45 + 2) = v46;
  *v45 = v42;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748E0);
  v37(&v45[v47[12]], v36, v38);
  v48 = &v45[v47[16]];
  *v48 = 0;
  v48[8] = 1;
  sub_199A95E04(v33, &v45[v47[20]]);
  sub_199B1B45C(&v66, &v71);
  sub_199A79A04(v33, &qword_1EAF748D8);
  v49 = *(v51[0] + 8);
  v49(v57, v38);
  sub_199A79A04(v33, &qword_1EAF748D8);
  v49(v36, v38);
  *&v71 = v60;
  *(&v71 + 1) = v59;
  v72 = v63;
  v73 = v62;
  v74 = 0x4054000000000000;
  v75 = v61;
  v76 = v52;
  v77 = v58;
  v78 = v28;
  *v79 = *v65;
  *&v79[3] = *&v65[3];
  v80 = v41;
  return sub_199B1B494(&v71);
}

uint64_t sub_199B16340(void *a1)
{
  sub_199B163B0(a1);
  type metadata accessor for DuplicateContactsDetailView(0);
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74890);
  return sub_199DF985C();
}

void sub_199B163B0(void *a1)
{
  v2 = v1;
  if (a1)
  {
    sub_199DF9DBC();
    v4 = type metadata accessor for DuplicateContactsDetailView(0);
    v5 = v2 + *(v4 + 28);
    v6 = *v5;
    v7 = *(v5 + 8);
    v8 = a1;
    v9 = sub_199AC392C(v6, v7);
    v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];

    v11 = [v8 imageData];
    if (v11)
    {
      v12 = v11;
      v13 = sub_199DF71FC();
      v15 = v14;

      v16 = sub_199DF71DC();
      sub_199A9EF34(v13, v15);
    }

    else
    {
      v16 = 0;
    }

    [v10 setImageData_];

    v18 = [v8 thumbnailImageData];
    if (v18)
    {
      v19 = v18;
      v20 = sub_199DF71FC();
      v22 = v21;

      v23 = sub_199DF71DC();
      sub_199A9EF34(v20, v22);
    }

    else
    {
      v23 = 0;
    }

    [v10 setThumbnailImageData_];

    [v8 cropRect];
    v24 = NSStringFromRect(v57);
    if (!v24)
    {
      sub_199DF9F8C();
      v24 = sub_199DF9F5C();
    }

    [v10 setCropRectString_];

    v25 = [v8 fullscreenImageData];
    if (v25)
    {
      v26 = v25;
      v27 = sub_199DF71FC();
      v29 = v28;

      v30 = sub_199DF71DC();
      sub_199A9EF34(v27, v29);
    }

    else
    {
      v30 = 0;
    }

    [v10 setFullscreenImageData_];

    v31 = [v8 imageType];
    if (!v31)
    {
      sub_199A7A02C(0, &qword_1EAF73568);
      v31 = sub_199DFA50C();
    }

    [v10 setImageType_];

    v32 = [v8 imageHash];
    if (v32)
    {
      v33 = v32;
      v34 = sub_199DF71FC();
      v36 = v35;

      v37 = sub_199DF71DC();
      sub_199A9EF34(v34, v36);
    }

    else
    {
      v37 = 0;
    }

    [v10 setImageHash_];

    v38 = [v8 memojiMetadata];
    if (v38)
    {
      v39 = v38;
      v40 = sub_199DF71FC();
      v42 = v41;

      v43 = sub_199DF71DC();
      sub_199A9EF34(v40, v42);
    }

    else
    {
      v43 = 0;
    }

    [v10 setMemojiMetadata_];

    sub_199DF9DCC();
    v44 = sub_199AC392C(v6, v7);
    v45 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];

    v46 = [v8 wallpaper];
    if (v46)
    {
      v47 = v46;
      v48 = [v46 posterArchiveData];

      v49 = sub_199DF71FC();
      v51 = v50;

      v52 = sub_199DF71DC();
      sub_199A9EF34(v49, v51);
    }

    else
    {
      v52 = 0;
    }

    [v45 setPosterData_];

    v53 = *(v2 + *(v4 + 44));
    v54 = v10;
    sub_199B328B8(v10, v53);

    v55 = v45;
    sub_199B32920(v45, v53);
  }

  else
  {
    v17 = type metadata accessor for DuplicateContactsDetailView(0);
    sub_199B328B8(0, *(v1 + *(v17 + 44)));
  }
}

uint64_t sub_199B168A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = sub_199DF9F4C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74920);
  v49 = *(v47 - 8);
  v45 = v49[8];
  MEMORY[0x1EEE9AC00](v47, v8);
  v46 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v42 - v46;
  v51 = a1;
  sub_199DF9EEC();
  v11 = sub_199AA8A84(v7, MEMORY[0x1E69E7CC0]);
  v13 = v12;
  (*(v4 + 8))(v7, v3);
  v52 = v11;
  v53 = v13;
  sub_199A9C458();
  v52 = sub_199DF93CC();
  v53 = v14;
  v54 = v15 & 1;
  v55 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74928);
  sub_199B1B72C(&qword_1EAF74930, &qword_1EAF74928, &unk_199E3E260, sub_199B1B5D0);
  v17 = v10;
  v43 = v10;
  sub_199DF9A0C();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74968);
  v42 = *(v44 - 8);
  v18 = v42;
  v19 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44, v20);
  v50 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74970);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v42 - v23;
  *v24 = sub_199DF8CFC();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74978);
  sub_199B17528(a1, &v24[*(v25 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74980);
  sub_199AA0B90(&qword_1EAF74988, &qword_1EAF74970);
  sub_199B1B67C();
  v26 = sub_199DF9A0C();
  MEMORY[0x1EEE9AC00](v26, v27);
  v28 = &v42 - v46;
  v29 = v49[2];
  v30 = v17;
  v31 = v47;
  v32 = v29(&v42 - v46, v30, v47);
  MEMORY[0x1EEE9AC00](v32, v33);
  v34 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v18 + 16);
  v36 = v44;
  v35(v34, v34, v44);
  v37 = v48;
  v29(v48, v28, v31);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749B0);
  v35(&v37[*(v38 + 48)], v34, v36);
  v39 = *(v42 + 8);
  v39(v34, v36);
  v40 = v49[1];
  v40(v43, v31);
  v39(v34, v36);
  return (v40)(v28, v31);
}

uint64_t sub_199B16DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v3 = type metadata accessor for DuplicateContactsDetailView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v15 = sub_199DF9D2C();
  swift_getKeyPath();
  sub_199B1C0D4(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsDetailView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_199B1C13C(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for DuplicateContactsDetailView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74950);
  sub_199AA0B90(&qword_1EAF74A30, &qword_1EAF74A28);
  sub_199B1BDC0();
  sub_199AA0B90(&qword_1EAF74948, &qword_1EAF74950);
  v10 = v14;
  sub_199DF99EC();
  v11 = a1 + *(v4 + 60);
  v15 = *(v11 + *(type metadata accessor for DuplicateContactsListView(0) + 60));

  v12 = sub_199DF995C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74928);
  *(v10 + *(result + 36)) = v12;
  return result;
}

uint64_t sub_199B17044(id *a1)
{
  v1 = *a1;
  v2 = [*a1 identifier];
  v3 = sub_199DF9F8C();
  v5 = v4;

  type metadata accessor for DuplicateContactsDetailView(0);
  v6 = sub_199DF9D4C();
  v7 = [v6 identifier];

  v8 = sub_199DF9F8C();
  v10 = v9;

  if (v3 == v8 && v5 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_199DFA99C();
  }

  sub_199B4C0B4(v1, 0, v12 & 1);
  v13 = sub_199DF917C();
  sub_199DF91AC();
  sub_199DF91AC();
  v14 = sub_199DF91AC();
  if (v14 != v13)
  {
    v14 = sub_199DF91AC();
  }

  MEMORY[0x1EEE9AC00](v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A00);
  sub_199B1B7DC();
  sub_199B1BAC8();
  return sub_199DF878C();
}

uint64_t sub_199B17224()
{
  type metadata accessor for DuplicateContactsDetailView(0);
  v0 = sub_199DF9D4C();
  type metadata accessor for DuplicateContactsDetailViewData();
  inited = swift_initStackObject();
  *(inited + 16) = v0;
  *(inited + 24) = 0;
  v2 = sub_199B30720();
  swift_setDeallocating();

  sub_199B172CC(v2);
}

uint64_t sub_199B172CC(uint64_t a1)
{
  v3 = type metadata accessor for DuplicateContactsDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = sub_199AB2F2C(*(a1 + 16), 0);
  if (sub_199B1BC74(v13, (v8 + 4), v7, 0, v7) != v7)
  {
    __break(1u);
LABEL_4:
    v8 = MEMORY[0x1E69E7CC0];
  }

  v13[0] = v8;
  swift_getKeyPath();
  sub_199B1C0D4(v1, &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsDetailView);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  sub_199B1C13C(&v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for DuplicateContactsDetailView);
  sub_199DF81AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749A0);
  sub_199AA0B90(&qword_1EAF74A20, &qword_1EAF74A18);
  sub_199B1B72C(&qword_1EAF74998, &qword_1EAF749A0, &unk_199E3E2A0, sub_199B1B7DC);
  return sub_199DF99EC();
}

uint64_t sub_199B17528@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for DuplicateContactsDetailView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v8 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_199DF9F4C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v14 = sub_199AA8A84(v13, MEMORY[0x1E69E7CC0]);
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  *&v57 = v14;
  *(&v57 + 1) = v16;
  sub_199A9C458();
  v17 = sub_199DF93CC();
  v53 = v18;
  v54 = v17;
  v50 = v19;
  v55 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749B8);
  v51 = *(v21 - 8);
  v52 = v21;
  v48[1] = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v21, v22);
  v56 = v48 - v23;
  v24 = sub_199DF9D4C();
  v57 = *(a1 + *(v4 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74890);
  sub_199DF984C();
  v25 = v64;
  v26 = [v24 copyWithDistinctIdentifier];
  if (v25)
  {
    v27 = v25;
    [v26 mutableCopy];
    sub_199DFA66C();
    swift_unknownObjectRelease();
    sub_199A7A02C(0, &qword_1EAF710A0);
    swift_dynamicCast();
    v28 = v64;
    [v27 updateImageForContact_];

    v24 = v27;
    v26 = v28;
  }

  v29 = sub_199DF917C();
  v30 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v29)
  {
    v30 = sub_199DF91AC();
  }

  sub_199B1C0D4(a1, v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsDetailView);
  v31 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v32 = swift_allocObject();
  sub_199B1C13C(v8, v32 + v31, type metadata accessor for DuplicateContactsDetailView);
  sub_199B1C0D4(a1, v8, type metadata accessor for DuplicateContactsDetailView);
  v33 = swift_allocObject();
  sub_199B1C13C(v8, v33 + v31, type metadata accessor for DuplicateContactsDetailView);
  *&v57 = v26;
  BYTE8(v57) = v30;
  v58 = sub_199B1B830;
  v59 = v32;
  v60 = 0u;
  v61 = 0u;
  v62 = sub_199B1B838;
  v63 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749C8);
  sub_199B1B8A4();
  sub_199B1BA44(&qword_1EAF749E0, &qword_1EAF749C8, &unk_199E3E2C0, sub_199B1BA14);
  v34 = v56;
  v35 = sub_199DF878C();
  v48[0] = v48;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = v48 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v51;
  v40 = v52;
  v41 = *(v51 + 16);
  v41(v38, v34, v52);
  v43 = v53;
  v42 = v54;
  v44 = v49;
  *v49 = v54;
  v44[1] = v43;
  LOBYTE(v31) = v50 & 1;
  *(v44 + 16) = v50 & 1;
  v44[3] = v55;
  v44[4] = 0;
  *(v44 + 40) = 1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A08);
  v41(v44 + *(v45 + 64), v38, v40);
  sub_199ACE3F8(v42, v43, v31);
  v46 = *(v39 + 8);
  sub_199DF81AC();
  v46(v56, v40);
  v46(v38, v40);
  sub_199ACE3E8(v42, v43, v31);
}

uint64_t sub_199B17B18()
{
  type metadata accessor for DuplicateContactsDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  return sub_199DF985C();
}

uint64_t sub_199B17B8C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v7 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v23[0] = v7;
  v23[1] = v9;
  sub_199A9C458();
  v10 = sub_199DF93CC();
  v12 = v11;
  LOBYTE(v7) = v13;
  v15 = v14;
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749D0) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749D8) + 28);
  v18 = sub_199DF937C();
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  *v16 = swift_getKeyPath();
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v15;
  v19 = sub_199DF91EC();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749C0);
  v22 = (a1 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = v19;
  return result;
}

void sub_199B17D8C(uint64_t a1)
{
  v2 = type metadata accessor for DuplicateContactsDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF984C();
  if ((v4 & 1) == 0)
  {
    v3 = *(a1 + *(v2 + 44));
    sub_199B328B8(0, v3);
    sub_199B32920(0, v3);
  }
}

uint64_t sub_199B17E34@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v87 = sub_199DF9F4C();
  v90 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v3);
  v5 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DuplicateContactsDetailView(0);
  v7 = *(v6 - 8);
  v82 = v6 - 8;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748E8);
  v84 = *(v10 - 8);
  v85 = v10;
  v83 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v89 = v72 - v12;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748F0);
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v13);
  v79 = v72 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF748F8);
  v15 = *(v88 - 1);
  MEMORY[0x1EEE9AC00](v88, v16);
  v18 = v72 - v17;
  sub_199B1C0D4(a1, v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsDetailView);
  v19 = *(v7 + 80);
  v20 = (v19 + 16) & ~v19;
  v75 = v8;
  v72[1] = v19;
  v21 = swift_allocObject();
  v73 = v20;
  v76 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B1C13C(v76, v21 + v20, type metadata accessor for DuplicateContactsDetailView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73270);
  sub_199AD5690();
  sub_199DF989C();
  v22 = sub_199DF904C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF903C();
  v78 = MEMORY[0x1EEE7D278];
  v27 = sub_199AA0B90(&qword_1EAF74900, &qword_1EAF748F8);
  v28 = sub_199AD576C();
  v29 = v88;
  sub_199DF944C();
  (*(v23 + 8))(v26, v22);
  (*(v15 + 8))(v18, v29);
  sub_199DF9EEC();
  v30 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v32 = v31;
  v77 = v31;
  v33 = v90[1];
  v74 = v5;
  ++v90;
  v72[0] = v33;
  v33(v5, v87);
  v98 = v30;
  v99 = v32;
  v34 = *(a1 + 8);
  v96 = *a1;
  v97 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF986C();
  v91 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D8);
  v92 = v88;
  v93 = v22;
  v94 = v27;
  v95 = v28;
  swift_getOpaqueTypeConformance2();
  sub_199A9C458();
  sub_199AA0B90(&qword_1EAF731E0, &qword_1EAF731D8);
  v35 = v80;
  v36 = v79;
  sub_199DF952C();

  v37 = a1;

  (*(v81 + 8))(v36, v35);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74908);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8, v40);
  v42 = v72 - v41;
  LOBYTE(v36) = sub_199DF9D6C();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74910);
  v45 = v43;
  v46 = *(v43 - 8);
  if (v36)
  {
    v47 = v42;
    v48 = (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
  }

  else
  {
    v88 = v72;
    MEMORY[0x1EEE9AC00](v43, v44);
    v51 = v72 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52 = v74;
    sub_199DF9EEC();
    v53 = sub_199AA8A84(v52, MEMORY[0x1E69E7CC0]);
    v55 = v54;
    (v72[0])(v52, v87);
    v92 = v53;
    v93 = v55;
    v56 = v76;
    sub_199B1C0D4(v37, v76, type metadata accessor for DuplicateContactsDetailView);
    v57 = v73;
    v58 = swift_allocObject();
    sub_199B1C13C(v56, v58 + v57, type metadata accessor for DuplicateContactsDetailView);
    sub_199DF98BC();
    sub_199B1B524(v51, v42);
    v47 = v42;
    v48 = (*(v46 + 56))(v42, 0, 1, v45);
  }

  v90 = v72;
  MEMORY[0x1EEE9AC00](v48, v49);
  v60 = v72 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v84;
  v61 = v85;
  v63 = *(v84 + 16);
  v64 = v89;
  v65 = v63(v60, v89, v85);
  v88 = v72;
  MEMORY[0x1EEE9AC00](v65, v66);
  v67 = v72 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AAD408(v47, v67, &qword_1EAF74908);
  v68 = v86;
  v63(v86, v60, v61);
  v69 = &v68[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74918) + 48)];
  sub_199AAD408(v67, v69, &qword_1EAF74908);
  sub_199A79A04(v47, &qword_1EAF74908);
  v70 = *(v62 + 8);
  v70(v64, v61);
  sub_199A79A04(v67, &qword_1EAF74908);
  return (v70)(v60, v61);
}

__n128 sub_199B188A4@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v7 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  *&v20 = v7;
  *(&v20 + 1) = v9;
  sub_199A9C458();
  v10 = sub_199DF93CC();
  v12 = v11;
  LOBYTE(v7) = v13;
  v15 = v14;
  sub_199DF9B5C();
  sub_199DF897C();
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v15;
  v16 = v25;
  *(a1 + 96) = v24;
  *(a1 + 112) = v16;
  *(a1 + 128) = v26;
  v17 = v21;
  *(a1 + 32) = v20;
  *(a1 + 48) = v17;
  result = v23;
  *(a1 + 64) = v22;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_199B18A54(uint64_t a1)
{
  v2 = type metadata accessor for DuplicateContactsDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = sub_199DF9F4C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v11 = sub_199AA8A84(v10, MEMORY[0x1E69E7CC0]);
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v17[0] = v11;
  v17[1] = v13;
  sub_199B1C0D4(a1, v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsDetailView);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_199B1C13C(v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for DuplicateContactsDetailView);
  sub_199A9C458();
  return sub_199DF98BC();
}

uint64_t sub_199B18C6C(uint64_t a1)
{
  v2 = type metadata accessor for DuplicateContactsDetailView(0);
  sub_199B32594(*(a1 + *(v2 + 44)));
  v3 = sub_199DF867C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AC3274(v7);
  sub_199DF866C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_199B18D68(uint64_t a1)
{
  v2 = type metadata accessor for DuplicateContactsDetailView(0);
  v3 = *(a1 + *(v2 + 44));
  v11 = a1 + *(v2 + 52);
  v12 = v3;
  sub_199B37FB8(1, v3, sub_199B1B594);
  v4 = sub_199DF867C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_199AC3274(v8);
  sub_199DF866C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t *sub_199B18E88@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(a2 + 16))
  {
    v5 = (a2 + 32 * v4);
    v7 = v5[4];
    v6 = v5[5];
    v9 = v5[6];
    v8 = v5[7];
    type metadata accessor for DuplicateContactsDetailView(0);
    type metadata accessor for DuplicateContactsListView(0);
    sub_199DF81AC();
    sub_199DF81AC();

    result = sub_199DF995C();
    *a3 = v7;
    a3[1] = v6;
    a3[2] = 0;
    a3[3] = v9;
    a3[4] = v8;
    a3[5] = 0x4010000000000000;
    a3[6] = result;
    return result;
  }

  __break(1u);
  return result;
}

id sub_199B18F54@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = a1 + *(type metadata accessor for DuplicateContactsDetailView(0) + 52);
  v8 = type metadata accessor for DuplicateContactsListView(0);
  __swift_project_boxed_opaque_existential_0((v7 + *(v8 + 40)), *(v7 + *(v8 + 40) + 24));
  v9 = sub_199B1D70C(a2, a3);
  result = sub_199B18FEC(a2);
  *a4 = 0;
  a4[1] = 0xE000000000000000;
  a4[2] = v9;
  a4[3] = result;
  a4[4] = v11;
  a4[5] = 0x4010000000000000;
  return result;
}

id sub_199B18FEC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DuplicateContactsDetailView(0) + 52);
  v4 = [*(v3 + *(type metadata accessor for DuplicateContactsListView(0) + 44)) accountForContact_];
  if (!v4)
  {
    v9 = [objc_opt_self() currentDevice];
    v7 = [v9 model];

    v8 = sub_199DF9F8C();
    goto LABEL_5;
  }

  v5 = v4;
  result = [v4 accountDescription];
  if (result)
  {
    v7 = result;
    v8 = sub_199DF9F8C();

LABEL_5:
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_199B190E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 - 8;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74870);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v19 - v10;
  sub_199B15B50(v3, v19 - v10);
  v12 = (v3 + *(v5 + 64));
  v14 = *v12;
  v13 = v12[1];
  v19[0] = v14;
  v19[1] = v13;
  sub_199AA0B90(&qword_1EAF74878, &qword_1EAF74870);
  sub_199A9C458();
  sub_199DF950C();
  sub_199A79A04(v11, &qword_1EAF74870);
  sub_199B1C0D4(v3, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsDetailView);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_199B1C13C(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for DuplicateContactsDetailView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74888);
  v18 = (a3 + *(result + 36));
  *v18 = 0;
  v18[1] = 0;
  v18[2] = sub_199B1AF84;
  v18[3] = v16;
  return result;
}

double sub_199B19310@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AD0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  *v7 = sub_199DF8D4C();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AD8);
  sub_199B194AC(v2, &v7[*(v8 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  v10 = sub_199DF919C();
  *(inited + 32) = v10;
  v11 = sub_199DF91BC();
  *(inited + 33) = v11;
  v12 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v10)
  {
    v12 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v11)
  {
    v12 = sub_199DF91AC();
  }

  sub_199A961F4(v7, a1);
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AE0) + 36);
  *v13 = v12;
  result = 0.0;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 1;
  return result;
}

void sub_199B194AC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v71 = a2;
  v3 = *(a1 + 32);
  v4 = *a1;
  v73 = *(a1 + 40);
  v5 = v73;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AE8);
  v78 = *(v79 - 8);
  v74 = v78[8];
  MEMORY[0x1EEE9AC00](v79, v6);
  v75 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = &v63 - v75;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v63 - v10;
  v12 = swift_allocObject();
  v13 = *(v2 + 48);
  v12[3] = *(v2 + 32);
  v12[4] = v13;
  v12[5] = *(v2 + 64);
  v14 = *(v2 + 16);
  v12[1] = *v2;
  v12[2] = v14;
  v76 = v5;
  v72 = v4;
  sub_199B1B45C(v2, &v86);
  sub_199DF989C();
  v15 = sub_199DF92FC();
  KeyPath = swift_getKeyPath();
  v17 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AF8) + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  LOBYTE(v15) = sub_199DF917C();
  sub_199DF84FC();
  v18 = &v11[*(v8 + 36)];
  *v18 = v15;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v80 = *(v2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF986C();
  v23 = swift_allocObject();
  v24 = *(v2 + 48);
  v23[3] = *(v2 + 32);
  v23[4] = v24;
  v23[5] = *(v2 + 64);
  v25 = *(v2 + 16);
  v23[1] = *v2;
  v23[2] = v25;
  sub_199B1B45C(v2, &v86);
  sub_199B1C908();
  sub_199AFEDE0();
  v26 = v77;
  sub_199DF95DC();

  sub_199A79A04(v11, &qword_1EAF74AF0);
  v27 = *(v2 + 24);
  v86 = *(v2 + 16);
  v87 = v27;
  sub_199A9C458();
  sub_199DF81AC();
  v28 = sub_199DF93CC();
  v66 = v28;
  v70 = v29;
  LOBYTE(KeyPath) = v30;
  v69 = v31;
  v68 = swift_getKeyPath();
  v67 = sub_199DF91DC();
  v64 = swift_getKeyPath();
  LOBYTE(v2) = KeyPath & 1;
  LOBYTE(v86) = KeyPath & 1;
  v32 = sub_199DF917C();
  v33 = v32;
  v65 = v32;
  v34 = sub_199DF84FC();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  MEMORY[0x1EEE9AC00](v34, v43);
  v44 = &v63 - v75;
  v45 = v78[2];
  v46 = v79;
  v45(&v63 - v75, v26, v79);
  v47 = v71;
  *v71 = v3;
  v48 = v72;
  v49 = v73;
  v47[1] = v72;
  v47[2] = v49;
  v50 = v47;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74B10);
  v45(v50 + *(v51 + 48), v44, v46);
  v52 = (v50 + *(v51 + 64));
  *&v80 = v28;
  v53 = v70;
  *(&v80 + 1) = v70;
  LOBYTE(v81) = v2;
  v54 = v69;
  *(&v81 + 1) = v69;
  v55 = v68;
  *&v82 = v68;
  BYTE8(v82) = 1;
  v56 = v64;
  *&v83 = v64;
  v57 = v67;
  *(&v83 + 1) = v67;
  LOBYTE(v84) = v33;
  *(&v84 + 1) = v36;
  *&v85[0] = v38;
  *(&v85[0] + 1) = v40;
  *&v85[1] = v42;
  BYTE8(v85[1]) = 0;
  v58 = v81;
  *v52 = v80;
  v52[1] = v58;
  v59 = v83;
  v52[2] = v82;
  v52[3] = v59;
  v60 = v85[0];
  v52[4] = v84;
  v52[5] = v60;
  *(v52 + 89) = *(v85 + 9);
  v75 = v48;
  v76 = v76;
  sub_199AAD408(&v80, &v86, &qword_1EAF74B18);
  v61 = v78[1];
  v62 = v79;
  v61(v77, v79);
  v86 = v66;
  v87 = v53;
  v88 = v2;
  v89 = v54;
  v90 = v55;
  v91 = 1;
  v92 = v56;
  v93 = v57;
  v94 = v65;
  v95 = v36;
  v96 = v38;
  v97 = v40;
  v98 = v42;
  v99 = 0;
  sub_199A79A04(&v86, &qword_1EAF74B18);
  v61(v44, v62);
}

uint64_t sub_199B19B54@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v7 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_199A9C458();
  result = sub_199DF93CC();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_199B19C80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = swift_allocObject();
  v7 = *(a1 + 48);
  v6[3] = *(a1 + 32);
  v6[4] = v7;
  v6[5] = *(a1 + 64);
  v8 = *(a1 + 16);
  v6[1] = *a1;
  v6[2] = v8;
  v9 = swift_allocObject();
  v10 = *(a1 + 48);
  v9[3] = *(a1 + 32);
  v9[4] = v10;
  v9[5] = *(a1 + 64);
  v11 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v11;
  *a2 = v5;
  a2[1] = v4;
  a2[2] = sub_199B1CA6C;
  a2[3] = v6;
  a2[4] = sub_199B1CAE8;
  a2[5] = v9;
  sub_199B1B45C(a1, v14);
  sub_199B1B45C(a1, v14);
  v12 = v5;
  return sub_199DF81AC();
}

uint64_t sub_199B19D6C(uint64_t a1)
{
  v3 = *(a1 + 64);
  v2[1] = *(a1 + 64);
  v4 = *(&v3 + 1);
  sub_199AAD408(&v4, v2, &qword_1EAF74B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF984C();
  v2[0] = v3;
  sub_199DF985C();
  return sub_199A79A04(&v3, &qword_1EAF74750);
}

uint64_t sub_199B19E30(uint64_t a1, uint64_t a2)
{
  (*(a2 + 48))();
  v5 = *(a2 + 64);
  v4[1] = *(a2 + 64);
  v6 = *(&v5 + 1);
  sub_199AAD408(&v6, v4, &qword_1EAF74B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF984C();
  v4[0] = v5;
  sub_199DF985C();
  return sub_199A79A04(&v5, &qword_1EAF74750);
}

uint64_t sub_199B19F48@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView(0);
  v38 = *(v2 - 8);
  v37 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_199DF9F4C();
  v5 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A40);
  MEMORY[0x1EEE9AC00](v34, v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A48);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v31 - v15;
  v39 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A50);
  sub_199B1BE3C();
  sub_199DF931C();
  sub_199AA0B90(&qword_1EAF74A78, &qword_1EAF74A48);
  sub_199DF95AC();
  (*(v13 + 8))(v16, v12);
  sub_199DF9EEC();
  v17 = sub_199AA8A84(v8, MEMORY[0x1E69E7CC0]);
  v19 = v18;
  (*(v5 + 8))(v8, v32);
  v40 = v17;
  v41 = v19;
  v20 = sub_199DF8CBC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, *MEMORY[0x1E697C430], v20);
  sub_199B1BFF0();
  sub_199A9C458();
  v25 = v35;
  sub_199DF953C();
  (*(v21 + 8))(v24, v20);

  sub_199A79A04(v11, &qword_1EAF74A40);
  v26 = v36;
  sub_199B1C0D4(v33, v36, type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView);
  v27 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v28 = swift_allocObject();
  sub_199B1C13C(v26, v28 + v27, type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A88);
  v30 = (v25 + *(result + 36));
  *v30 = sub_199B1C1A4;
  v30[1] = v28;
  v30[2] = 0;
  v30[3] = 0;
  return result;
}

uint64_t sub_199B1A3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView(0);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v26 = *(v6 + 20);
  v29 = v6;
  v7 = *(a1 + *(v6 + 28));
  v27 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  v8 = objc_opt_self();
  v9 = [objc_opt_self() sharedDefaults];
  v10 = [v9 sortOrder];

  v11 = [v8 comparatorForNameSortOrder_];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
  MEMORY[0x1EEE9AC00](v13, v14);
  v17 = a1;
  (*(v16 + 16))(&v25 - v15, a1 + v26, v13);
  sub_199AA0B90(&qword_1EAF74A98, &qword_1EAF74850);

  v18 = v27;

  v31 = sub_199DFA09C();
  sub_199B3BE98(&v31, v7, v18, sub_199B1C1D0, v12);

  sub_199B1C0D4(a1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView);
  v19 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v20 = swift_allocObject();
  sub_199B1C13C(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74AA8);
  type metadata accessor for DuplicateListCell(0);
  sub_199AA0B90(&qword_1EAF74AB0, &qword_1EAF74AA8);
  sub_199B1BFA8(&qword_1EAF74A70, type metadata accessor for DuplicateListCell);
  sub_199B1BFA8(&qword_1EAF74AB8, MEMORY[0x1E695C0D0]);
  v21 = v30;
  sub_199DF99FC();
  v22 = v17 + *(v29 + 24);
  v31 = *(v22 + *(type metadata accessor for DuplicateContactsListView(0) + 60));

  v23 = sub_199DF995C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A50);
  *(v21 + *(result + 36)) = v23;
  return result;
}

id sub_199B1A8A0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v19 = *a1;
  v11 = *(v10 + 32);
  v12 = type metadata accessor for DuplicateListCell(0);
  sub_199B1C0D4(a2 + v11, a3 + v12[5], type metadata accessor for DuplicateContactsListView);
  sub_199B1C0D4(a2, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_199B1C13C(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView);
  v15 = v19;
  *a3 = v19;
  *(a3 + v12[6]) = 1;
  *(a3 + v12[7]) = 1;
  v16 = (a3 + v12[8]);
  *v16 = sub_199B1C598;
  v16[1] = v14;

  return v15;
}

uint64_t sub_199B1AA40()
{
  type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
  sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850);
  sub_199DFA29C();
  sub_199DFA2BC();
  result = sub_199DFA2AC();
  if (!result)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF740B0);
    MEMORY[0x1EEE9AC00](v1, v2);
    v4 = &v7[-v3];
    sub_199AC3500(&v7[-v3]);
    v5 = sub_199DF892C();
    MEMORY[0x1EEE9AC00](v5 - 8, v6);
    MEMORY[0x19A8F7740](v1);
    sub_199DF891C();
    sub_199DF997C();
    return sub_199A79A04(v4, &qword_1EAF740B0);
  }

  return result;
}

uint64_t sub_199B1AC04()
{
  type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView(0);
  v0 = sub_199B1AC60();
  sub_199AD60FC(v0);
}

char *sub_199B1AC60()
{
  v1 = *(type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView(0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A90);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
  MEMORY[0x1EEE9AC00](v7, v8);
  (*(v10 + 16))(&v25 - v9, v0 + v1, v7);
  sub_199AA0B90(&qword_1EAF74A98, &qword_1EAF74850);
  sub_199DFA08C();
  v11 = *(v3 + 44);
  sub_199AA0B90(&qword_1EAF74AA0, &qword_1EAF74850);
  sub_199DFA2BC();
  v12 = MEMORY[0x1E69E7CC0];
  while (*&v6[v11] != v27[0])
  {
    v14 = sub_199DFA2DC();
    v16 = *v15;
    v14(v27, 0);
    sub_199DFA2CC();
    v17 = [v16 primaryID];
    if (v17)
    {
      v18 = v17;
      v19 = sub_199DF9F8C();
      v26 = v20;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_199AB26E4(0, *(v12 + 2) + 1, 1, v12);
      }

      v22 = *(v12 + 2);
      v21 = *(v12 + 3);
      if (v22 >= v21 >> 1)
      {
        v12 = sub_199AB26E4((v21 > 1), v22 + 1, 1, v12);
      }

      *(v12 + 2) = v22 + 1;
      v23 = &v12[16 * v22];
      v24 = v26;
      *(v23 + 4) = v19;
      *(v23 + 5) = v24;
    }

    else
    {
    }

    sub_199DFA2BC();
  }

  sub_199A79A04(v6, &qword_1EAF74A90);
  return v12;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for DuplicateContactsDetailView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_199DF867C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  sub_199AC6288(*(v4 + v1[7]), *(v4 + v1[7] + 8));

  v7 = v4 + v1[13];

  v8 = type metadata accessor for DuplicateContactsListView(0);
  v9 = v8[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_199DF867C();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  else
  {
  }

  sub_199AC6288(*(v7 + v8[7]), *(v7 + v8[7] + 8));
  v11 = v8[8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880);
  v13 = *(*(v12 - 8) + 8);
  v13(v7 + v11, v12);
  v13(v7 + v8[9], v12);
  __swift_destroy_boxed_opaque_existential_0(v7 + v8[10]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v15, v2 | 7);
}

uint64_t sub_199B1B2AC(void *a1)
{
  type metadata accessor for DuplicateContactsDetailView(0);

  return sub_199B16340(a1);
}

unint64_t sub_199B1B324()
{
  result = qword_1EAF748C8;
  if (!qword_1EAF748C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF748A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF748A8);
    sub_199AA0B90(&qword_1EAF748C0, &qword_1EAF748A8);
    swift_getOpaqueTypeConformance2();
    sub_199B1B408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF748C8);
  }

  return result;
}

unint64_t sub_199B1B408()
{
  result = qword_1EAF748D0;
  if (!qword_1EAF748D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF748D0);
  }

  return result;
}

uint64_t sub_199B1B524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_199B1B5D0()
{
  result = qword_1EAF74938;
  if (!qword_1EAF74938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74940);
    sub_199AA0B90(&qword_1EAF74948, &qword_1EAF74950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74938);
  }

  return result;
}

unint64_t sub_199B1B67C()
{
  result = qword_1EAF74990;
  if (!qword_1EAF74990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74980);
    sub_199B1B72C(&qword_1EAF74998, &qword_1EAF749A0, &unk_199E3E2A0, sub_199B1B7DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74990);
  }

  return result;
}

uint64_t sub_199B1B72C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_199AA0B90(&qword_1EAF74958, &qword_1EAF74960);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_199B1B7DC()
{
  result = qword_1EAF749A8;
  if (!qword_1EAF749A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF749A8);
  }

  return result;
}

unint64_t sub_199B1B8A4()
{
  result = qword_1EAF712A0;
  if (!qword_1EAF712A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF749C0);
    sub_199B1B95C();
    sub_199AA0B90(&qword_1EAF71208, &qword_1EAF74300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712A0);
  }

  return result;
}

unint64_t sub_199B1B95C()
{
  result = qword_1EAF71300;
  if (!qword_1EAF71300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF749D0);
    sub_199AA0B90(&qword_1EAF71200, &qword_1EAF749D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71300);
  }

  return result;
}

uint64_t sub_199B1BA44(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_199B1BAC8()
{
  result = qword_1EAF749F8;
  if (!qword_1EAF749F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74A00);
    sub_199B1BB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF749F8);
  }

  return result;
}

unint64_t sub_199B1BB54()
{
  result = qword_1EAF75770;
  if (!qword_1EAF75770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75770);
  }

  return result;
}

uint64_t sub_199B1BBCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74A10);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_199AAD408(a1, &v6 - v4, &qword_1EAF74A10);
  return sub_199DF8BEC();
}

uint64_t *sub_199B1BC74(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *sub_199B1BD10@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DuplicateContactsDetailView(0);
  v5 = *(v2 + 16);

  return sub_199B18E88(a1, v5, a2);
}

unint64_t sub_199B1BDC0()
{
  result = qword_1EAF74A38;
  if (!qword_1EAF74A38)
  {
    sub_199A7A02C(255, &qword_1EAF710A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74A38);
  }

  return result;
}

unint64_t sub_199B1BE3C()
{
  result = qword_1EAF74A58;
  if (!qword_1EAF74A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74A50);
    sub_199B1BEF4();
    sub_199AA0B90(&qword_1EAF74958, &qword_1EAF74960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74A58);
  }

  return result;
}

unint64_t sub_199B1BEF4()
{
  result = qword_1EAF74A60;
  if (!qword_1EAF74A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74A68);
    sub_199B1BFA8(&qword_1EAF74A70, type metadata accessor for DuplicateListCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74A60);
  }

  return result;
}

uint64_t sub_199B1BFA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_199B1BFF0()
{
  result = qword_1EAF74A80;
  if (!qword_1EAF74A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74A40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74A48);
    sub_199AA0B90(&qword_1EAF74A78, &qword_1EAF74A48);
    swift_getOpaqueTypeConformance2();
    sub_199B1B408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74A80);
  }

  return result;
}

uint64_t sub_199B1C0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_199B1C13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_51Tm()
{
  v1 = type metadata accessor for DuplicateContactsPreviouslyIgnoredDetailView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*(v1 - 8) + 64);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72318);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF740B0) + 32);
    v7 = sub_199DF892C();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  v8 = *(v1 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74850);
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  v10 = v4 + *(v1 + 24);

  v11 = type metadata accessor for DuplicateContactsListView(0);
  v12 = v11[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_199DF867C();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  else
  {
  }

  sub_199AC6288(*(v10 + v11[7]), *(v10 + v11[7] + 8));
  v14 = v11[8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74880);
  v16 = *(*(v15 - 8) + 8);
  v16(v10 + v14, v15);
  v16(v10 + v11[9], v15);
  __swift_destroy_boxed_opaque_existential_0(v10 + v11[10]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v18, v2 | 7);
}

uint64_t sub_199B1C500(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_199B1C5C4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
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

uint64_t sub_199B1C65C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_199B1C6A4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_199B1C708()
{
  result = qword_1EAF74AC0;
  if (!qword_1EAF74AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74870);
    sub_199AA0B90(&qword_1EAF74878, &qword_1EAF74870);
    sub_199A9C458();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74AC0);
  }

  return result;
}

unint64_t sub_199B1C80C()
{
  result = qword_1EAF74AC8;
  if (!qword_1EAF74AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74A88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74A40);
    sub_199B1BFF0();
    sub_199A9C458();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74AC8);
  }

  return result;
}

unint64_t sub_199B1C908()
{
  result = qword_1EAF74B00;
  if (!qword_1EAF74B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74AF0);
    sub_199B1C994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74B00);
  }

  return result;
}

unint64_t sub_199B1C994()
{
  result = qword_1EAF74B08;
  if (!qword_1EAF74B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74AF8);
    sub_199AA0B90(&qword_1EAF731E0, &qword_1EAF731D8);
    sub_199AA0B90(&qword_1EAF71208, &qword_1EAF74300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74B08);
  }

  return result;
}

uint64_t objectdestroy_72Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

unint64_t sub_199B1CAF0()
{
  result = qword_1EAF74B28;
  if (!qword_1EAF74B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74AE0);
    sub_199AA0B90(&unk_1EAF74B30, &qword_1EAF74AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74B28);
  }

  return result;
}

uint64_t sub_199B1CBAC()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF87028);
  __swift_project_value_buffer(v0, qword_1EAF87028);
  return sub_199DF803C();
}

void sub_199B1CC30()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69DDCF8];
  v2 = [v0 preferredFontForTextStyle_];

  qword_1EAF87040 = v2;
}

void sub_199B1CC9C()
{
  if (qword_1EAF71EE0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAF87040;
  v1 = [v0 fontDescriptor];

  v2 = [v1 fontDescriptorWithSymbolicTraits_];
  if (v2)
  {
    v3 = qword_1EAF87040;
    [v3 pointSize];
    v5 = v4;

    v6 = [objc_opt_self() fontWithDescriptor:v2 size:v5];
    qword_1EAF87048 = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_199B1CDA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74B60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  v1 = *MEMORY[0x1E69DB648];
  type metadata accessor for Key(0);
  sub_199AE2FC4();
  v2 = v1;
  sub_199DFA6CC();

  if (qword_1EAF71EE0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAF87040;
  v4 = sub_199AE301C();
  *(inited + 96) = v4;
  *(inited + 72) = v3;
  sub_199DF9F8C();
  v5 = v3;
  sub_199DFA6CC();
  if (qword_1EAF71EE8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EAF87048;
  *(inited + 168) = v4;
  *(inited + 144) = v6;
  v7 = v6;
  v8 = sub_199B4B130(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75650);
  result = swift_arrayDestroy();
  qword_1EAF87050 = v8;
  return result;
}

id sub_199B1CF4C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate) contactStore];

  return v1;
}

id DuplicatesUIHelper.__allocating_init(delegate:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id DuplicatesUIHelper.init(delegate:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DuplicatesUIHelper();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_199B1D09C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74B48);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v25[-1] - v10;
  sub_199DF9DAC();
  sub_199DF9D8C();
  v12 = sub_199DF9D9C();

  if (v12 && (v13 = [v12 viewContext], v12, v13))
  {
    v25[3] = type metadata accessor for DuplicatesUIHelper();
    v25[4] = &off_1F0CE0F60;
    v25[0] = v2;
    v14 = v2;
    sub_199B32BFC(v25, a1 & 1, 0, 0, v11);
    KeyPath = swift_getKeyPath();
    v16 = &v11[*(v4 + 36)];
    *v16 = KeyPath;
    v16[1] = v13;
    sub_199B1DDB8(v11, v8);
    v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74B50));
    v18 = sub_199DF8DFC();
    sub_199B1DE28(v11);
    return v18;
  }

  else
  {
    if (qword_1EAF71ED8 != -1)
    {
      swift_once();
    }

    v20 = sub_199DF804C();
    __swift_project_value_buffer(v20, qword_1EAF87028);
    v21 = sub_199DF802C();
    v22 = sub_199DFA31C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_199A75000, v21, v22, "Could not load duplicates store.", v23, 2u);
      MEMORY[0x19A8FA1A0](v23, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_199B1D2E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_199DF8B5C();
  *a1 = result;
  return result;
}

id sub_199B1D38C(void *a1)
{
  v2 = v1;
  v4 = sub_199DF70EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(sub_199DF9D7C());
  v10 = a1;
  v11 = sub_199DF9D3C();
  sub_199DF9D5C();
  v12 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  sub_199DF70BC();
  v13 = sub_199DF9F5C();

  [v12 setNamePrefix_];

  sub_199DF708C();
  v14 = sub_199DF9F5C();

  [v12 setGivenName_];

  sub_199DF70AC();
  v15 = sub_199DF9F5C();

  [v12 setMiddleName_];

  sub_199DF709C();
  v16 = sub_199DF9F5C();

  [v12 setFamilyName_];

  sub_199DF70CC();
  v17 = sub_199DF9F5C();

  [v12 setNameSuffix_];

  sub_199DF70DC();
  v18 = sub_199DF9F5C();

  [v12 setNickname_];

  result = [*(v2 + OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate) contactFormatter];
  if (result)
  {
    v20 = result;
    if (qword_1EAF71EF0 != -1)
    {
      swift_once();
    }

    v21 = sub_199DF9E8C();
    v22 = [v20 attributedStringFromContact:v12 defaultAttributes:v21];

    if (!v22)
    {
      v22 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
    }

    (*(v5 + 8))(v8, v4);
    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_199B1D70C(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = [a1 identifier];
  v5 = sub_199DF9F8C();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_12:
    result = [*(v2 + OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate) contactFormatter];
    if (result)
    {
      v21 = result;
      if (qword_1EAF71EF0 != -1)
      {
        swift_once();
      }

      v22 = sub_199DF9E8C();
      v20 = [v21 attributedStringFromContact:a1 defaultAttributes:v22];

      if (v20)
      {
        return v20;
      }

      v23 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

      return [v23 init];
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v9 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v10 = OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate;
  v11 = v2;
  v12 = [*(v2 + OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate) contactStore];
  v13 = [a1 identifier];
  sub_199DF9F8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_199E37DF0;
  *(v14 + 32) = v9;
  swift_unknownObjectRetain();
  v15 = sub_199B1DA84();

  if (!v15)
  {
    v15 = a1;
  }

  v16 = [v15 copyWithDistinctIdentifier];

  result = [*(v11 + v10) contactFormatter];
  if (!result)
  {
    goto LABEL_22;
  }

  v18 = result;
  if (qword_1EAF71EF0 != -1)
  {
    swift_once();
  }

  v19 = sub_199DF9E8C();
  v20 = [v18 attributedStringFromContact:v16 defaultAttributes:v19];

  if (v20)
  {
    swift_unknownObjectRelease();

    return v20;
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
  swift_unknownObjectRelease();

  return v24;
}

id sub_199B1DA84()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = sub_199DF9F5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790);
  v2 = sub_199DFA0BC();
  v8[0] = 0;
  v3 = [v0 unifiedContactWithIdentifier:v1 keysToFetch:v2 error:v8];

  v4 = v8[0];
  if (!v3)
  {
    v5 = v4;
    v6 = sub_199DF717C();

    swift_willThrow();
    return 0;
  }

  return v3;
}

id DuplicatesUIHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DuplicatesUIHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DuplicatesUIHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_199B1DC64(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = *v6;
  if (a3)
  {
    v9 = sub_199DF867C();
    v10 = *(v9 - 8);
    MEMORY[0x1EEE9AC00](v9, v11);
    v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for DuplicateContactsListView(0);
    sub_199AC3274(v13);
    sub_199DF866C();
    (*(v10 + 8))(v13, v9);
  }

  v14 = *(v8 + OBJC_IVAR____TtC10ContactsUI18DuplicatesUIHelper_delegate);
  swift_unknownObjectRetain();
  v15 = sub_199DFA0BC();
  [v14 *a6];
  swift_unknownObjectRelease();
}

uint64_t sub_199B1DDB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74B48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B1DE28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74B48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_199B1E34C()
{
  [v0 frame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView];
  [v9 frame];
  v33.origin.x = v10;
  v33.origin.y = v11;
  v33.size.width = v12;
  v33.size.height = v13;
  v30.origin.x = v2;
  v30.origin.y = v4;
  v30.size.width = v6;
  v30.size.height = v8;
  if (CGRectEqualToRect(v30, v33))
  {
    v14 = v0;
    oslog = sub_199DF802C();
    v15 = sub_199DFA33C();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134218752;
      [v9 frame];
      *(v16 + 4) = v17;
      *(v16 + 12) = 2048;
      [v9 frame];
      *(v16 + 14) = v18;
      *(v16 + 22) = 2048;
      [v9 frame];
      *(v16 + 24) = CGRectGetWidth(v31);
      *(v16 + 32) = 2048;
      [v9 frame];
      *(v16 + 34) = CGRectGetHeight(v32);
      _os_log_impl(&dword_199A75000, oslog, v15, "#ContactsButton ContactsButtonSlotView frame didSet called with the same slot view as before (%f,%f %f,%f), ignoring", v16, 0x2Au);
      v19 = v16;
LABEL_12:
      MEMORY[0x19A8FA1A0](v19, -1, -1);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  [v0 frame];
  [v9 setFrame_];
  v20 = v0;
  v21 = sub_199DF802C();
  v22 = sub_199DFA33C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v9;
    *v24 = v9;
    v25 = v9;
    _os_log_impl(&dword_199A75000, v21, v22, "#ContactsButton ContactsButtonSlotView frame didSet is called %@", v23, 0xCu);
    sub_199A79A04(v24, &unk_1EAF73A90);
    MEMORY[0x19A8FA1A0](v24, -1, -1);
    MEMORY[0x19A8FA1A0](v23, -1, -1);
  }

  if (!*&v20[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_slotMaker])
  {
    oslog = sub_199DF802C();
    v26 = sub_199DFA33C();
    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_199A75000, oslog, v26, "#ContactsButton ContactsButtonSlotView slotMaker is nil", v27, 2u);
      v19 = v27;
      goto LABEL_12;
    }

LABEL_13:

    return;
  }

  sub_199B209CC();
}

id sub_199B1E694()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactsButtonSlotView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199B1E780()
{
  result = sub_199DF804C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_199B1E828()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF87058);
  __swift_project_value_buffer(v0, qword_1EAF87058);
  return sub_199DF803C();
}

id sub_199B1E8A8()
{
  v1 = OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker____lazy_storage___connection;
  v2 = *(v0 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker____lazy_storage___connection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker____lazy_storage___connection);
  }

  else
  {
    v4 = sub_199B1E90C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_199B1E90C(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v3 = sub_199DF9F5C();
  v4 = [v2 initWithServiceName_];

  v5 = [objc_opt_self() interfaceWithProtocol_];
  [v4 setRemoteObjectInterface_];

  v13 = sub_199B23C58;
  v14 = a1;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_199AB45A0;
  v12 = &block_descriptor_92;
  v6 = _Block_copy(&v9);

  [v4 setInterruptionHandler_];
  _Block_release(v6);
  v13 = sub_199B23C7C;
  v14 = a1;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_199AB45A0;
  v12 = &block_descriptor_95;
  v7 = _Block_copy(&v9);

  [v4 setInvalidationHandler_];
  _Block_release(v7);
  [v4 resume];
  return v4;
}

void sub_199B1EB0C(uint64_t a1, const char *a2)
{
  oslog = sub_199DF802C();
  v3 = sub_199DFA2FC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_199A75000, oslog, v3, a2, v4, 2u);
    MEMORY[0x19A8FA1A0](v4, -1, -1);
  }
}

void sub_199B1EBC0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_199B1EC28()
{
  v1 = sub_199B1E8A8();
  aBlock[4] = sub_199B23C50;
  v11 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199B1EBC0;
  aBlock[3] = &block_descriptor_89;
  v2 = _Block_copy(aBlock);

  v3 = [v1 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v2);

  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199A9DA04(aBlock, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D48);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    return v8;
  }

  else
  {
    v5 = sub_199DF802C();
    v6 = sub_199DFA31C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_199A75000, v5, v6, "#ContactsButton Failed to get service interface", v7, 2u);
      MEMORY[0x19A8FA1A0](v7, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(aBlock);
    return 0;
  }
}

void sub_199B1EDEC(void *a1)
{
  v2 = a1;
  oslog = sub_199DF802C();
  v3 = sub_199DFA31C();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD0);
    v7 = sub_199DF9FBC();
    v9 = sub_199A9BE90(v7, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_199A75000, oslog, v3, "#ContactsButton Failed to get service proxy: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x19A8FA1A0](v5, -1, -1);
    MEMORY[0x19A8FA1A0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_199B1EF54(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = 0;
    if ((a4 & 1) == 0)
    {
LABEL_3:
      v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    if ((a4 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:

  v10 = sub_199DF802C();
  v11 = sub_199DFA33C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = *(v5 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView);
    *(v12 + 4) = v14;
    *v13 = v14;
    v15 = v14;
    _os_log_impl(&dword_199A75000, v10, v11, "#ContactsButton slotMaker sizeThatFits is called %@", v12, 0xCu);
    sub_199A79A04(v13, &unk_1EAF73A90);
    MEMORY[0x19A8FA1A0](v13, -1, -1);
    MEMORY[0x19A8FA1A0](v12, -1, -1);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 1;
  v17 = sub_199B1EC28();
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = v5;
    *(v19 + 24) = v16;
    v23[4] = sub_199B23C48;
    v23[5] = v19;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    v23[2] = sub_199B23CE4;
    v23[3] = &block_descriptor_86;
    v20 = _Block_copy(v23);

    [v18 sizeThatFitsWithProposalWidth:v8 proposalHeight:v9 with:v20];
    _Block_release(v20);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  swift_beginAccess();
  v21 = *(v16 + 16);

  return v21;
}

void sub_199B1F220(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2)
  {
    v7 = a1;
    v8 = a2;
    sub_199DF73FC();
    v10 = v9;
    [v8 floatValue];
    v12 = v11;

    swift_beginAccess();
    *(a4 + 16) = v10;
    *(a4 + 24) = v12;
    *(a4 + 32) = 0;
  }

  else
  {

    oslog = sub_199DF802C();
    v13 = sub_199DFA33C();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = *(a3 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView);
      *(v14 + 4) = v16;
      *v15 = v16;
      v17 = v16;
      _os_log_impl(&dword_199A75000, oslog, v13, "#ContactsButton sizeThatFits is nil %@", v14, 0xCu);
      sub_199A79A04(v15, &unk_1EAF73A90);
      MEMORY[0x19A8FA1A0](v15, -1, -1);
      MEMORY[0x19A8FA1A0](v14, -1, -1);
    }
  }
}

void sub_199B1F3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  aBlock[9] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v11 = sub_199DF802C();
    v16 = sub_199DFA31C();
    if (os_log_type_enabled(v11, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_199A75000, v11, v16, "#ContactsButton view deallocated?", v17, 2u);
      MEMORY[0x19A8FA1A0](v17, -1, -1);
    }

    goto LABEL_16;
  }

  v11 = Strong;
  if ([objc_opt_self() authorizationStatusForEntityType_] == 3)
  {
    v12 = OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_didFaultAlreadyForUndesiredRendering;
    if ((*(a6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_didFaultAlreadyForUndesiredRendering) & 1) == 0)
    {
      v13 = sub_199DF802C();
      v14 = sub_199DFA32C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_199A75000, v13, v14, "ContactAccessButton should not be rendered when your app has Full Access or Denied authorization", v15, 2u);
        MEMORY[0x19A8FA1A0](v15, -1, -1);
      }

      *(a6 + v12) = 1;
      return;
    }

LABEL_16:

    return;
  }

  v18 = objc_opt_self();
  v19 = *(a6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_traits);
  aBlock[0] = 0;
  v20 = [v18 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:aBlock];
  v21 = aBlock[0];
  if (!v20)
  {
    v45 = v21;
    sub_199DF717C();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v51 = sub_199DF71FC();
  v52 = v22;

  v23 = sub_199DF802C();
  v24 = sub_199DFA2FC();

  v50 = a2;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315138;
    v27 = a1;
    v28 = *(a6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_queryStr);
    v29 = *(a6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_queryStr + 8);
    sub_199DF81AC();
    v30 = sub_199A9BE90(v28, v29, aBlock);

    *(v25 + 4) = v30;
    a1 = v27;
    _os_log_impl(&dword_199A75000, v23, v24, "#ContactsButton will query '%s'...", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x19A8FA1A0](v26, -1, -1);
    MEMORY[0x19A8FA1A0](v25, -1, -1);
  }

  v31 = sub_199B1EC28();
  if (!v31)
  {
    sub_199A9EF34(v51, v52);
    goto LABEL_16;
  }

  v49 = a1;
  if (a1 < 0)
  {
    __break(1u);
  }

  v32 = v31;
  sub_199DF81AC();
  v48 = sub_199DF9F5C();

  [*(&v11->isa + OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView) frame];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_199DF81AC();
  v47 = sub_199DFA23C();

  sub_199DF81AC();
  v46 = sub_199DFA23C();

  v41 = sub_199DF71DC();
  v42 = sub_199DF9F5C();
  v43 = swift_allocObject();
  v43[2] = a6;
  v43[3] = a3;
  v43[4] = a4;
  aBlock[4] = sub_199B23BF4;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199B23CE4;
  aBlock[3] = &block_descriptor_61;
  v44 = _Block_copy(aBlock);

  [v32 getRemoteContentForStyle:v50 layerContext:v49 queryString:v48 currentFrame:v47 ignoredEmails:v46 ignoredPhones:v41 traitData:v34 sbExtension:v36 with:{v38, v40, v42, v44}];
  sub_199A9EF34(v51, v52);

  swift_unknownObjectRelease();
  _Block_release(v44);
}

void sub_199B1F97C(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = sub_199DF802C();
  v9 = sub_199DFA33C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_199A75000, v8, v9, "#ContactsButton handling response", v10, 2u);
    MEMORY[0x19A8FA1A0](v10, -1, -1);
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  v45 = a4;
  v11 = 0x8000000199E47F60;
  v12 = a2;
  v13 = [v12 userInfo];
  v14 = sub_199DF9E9C();

  if (*(v14 + 16) && (v15 = sub_199AEF9E8(0xD000000000000026, 0x8000000199E47E70), (v16 & 1) != 0))
  {
    sub_199A9DA04(*(v14 + 56) + 32 * v15, &v48);

    if (swift_dynamicCast())
    {
      v17 = v46;
      v11 = v47;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v17 = 0xD00000000000002FLL;
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74CD0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_199E37D40;
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_199DFA71C();
  MEMORY[0x19A8F7E00](0xD00000000000003ALL, 0x8000000199E47F90);
  MEMORY[0x19A8F7E00](v17, v11);

  v19 = v48;
  v20 = v49;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  sub_199DFAA5C();

  if ([v12 code] != 8)
  {

    a4 = v45;
LABEL_15:
    if (a1)
    {
      v25 = a1;
      if (a4())
      {

        v26 = sub_199DF802C();
        v27 = sub_199DFA2FC();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v28 = 138412290;
          v30 = *(a3 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView);
          *(v28 + 4) = v30;
          *v29 = v30;
          v31 = v30;
          _os_log_impl(&dword_199A75000, v26, v27, "#ContactsButton loaded content for slot %@", v28, 0xCu);
          sub_199A79A04(v29, &unk_1EAF73A90);
          MEMORY[0x19A8FA1A0](v29, -1, -1);
          MEMORY[0x19A8FA1A0](v28, -1, -1);
        }
      }

      else
      {
        v41 = sub_199DF802C();
        v42 = sub_199DFA31C();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_199A75000, v41, v42, "#ContactsButton Failed to yield remote content", v43, 2u);
          MEMORY[0x19A8FA1A0](v43, -1, -1);
        }
      }
    }

    else
    {
      v32 = a2;
      v33 = sub_199DF802C();
      v34 = sub_199DFA31C();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v48 = v36;
        *v35 = 136446210;
        v37 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74D38);
        v38 = sub_199DF9FBC();
        v40 = sub_199A9BE90(v38, v39, &v48);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_199A75000, v33, v34, "#ContactsButton Failed to get remote content: %{public}s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x19A8FA1A0](v36, -1, -1);
        MEMORY[0x19A8FA1A0](v35, -1, -1);
      }
    }

    return;
  }

  v21 = [v12 domain];
  v22 = sub_199DF9F8C();
  v24 = v23;

  if (v22 == 0xD000000000000023 && 0x8000000199E47FD0 == v24)
  {

    return;
  }

  v44 = sub_199DFA99C();

  a4 = v45;
  if ((v44 & 1) == 0)
  {
    goto LABEL_15;
  }
}

void sub_199B1FEF4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_199B1FF80(uint64_t a1, uint64_t a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v9 = a3;
  v6(a2, v9, sub_199B23BCC, v8);
}

void sub_199B20048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;

  v9 = a1;
  v10 = sub_199DF802C();
  v11 = sub_199DFA33C();

  if (os_log_type_enabled(v10, v11))
  {
    v49 = a5;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315394;
    v15 = *(v6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_queryStr);
    v14 = *(v6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_queryStr + 8);
    sub_199DF81AC();
    v16 = sub_199A9BE90(v15, v14, aBlock);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = *&v9[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath + 8];
    if (!v17)
    {
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    *(v12 + 14) = sub_199A9BE90(*&v9[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath], v17, aBlock);
    _os_log_impl(&dword_199A75000, v10, v11, "#ContactsButton loading initial slot view for query '%s' at %s...", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8FA1A0](v13, -1, -1);
    MEMORY[0x19A8FA1A0](v12, -1, -1);

    a5 = v49;
  }

  else
  {
  }

  v18 = *&v9[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath + 8];
  if (!v18)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = *&v9[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath];
  sub_199DF9FCC();
  v20 = sandbox_extension_issue_file();

  if (v20)
  {
    v21 = (v6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_queryStr);
    *v21 = a2;
    v21[1] = a3;
    sub_199DF81AC();

    *(v6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_ignoredEmails) = a4;
    sub_199DF81AC();

    *(v6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_ignoredPhones) = a5;
    sub_199DF81AC();

    v22 = *(v6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_traits);
    *(v6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_traits) = v9;
    v23 = v9;

    v24 = sub_199DFA03C();
    v26 = v25;
    v27 = OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView;
    v28 = *(v6 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView);
    if (!v28)
    {
      v29 = objc_allocWithZone(type metadata accessor for ContactsButtonSlotView(0));

      v30 = [v29 initWithFrame_];
      v31 = *&v30[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView];
      v32 = v30;
      [v32 addSubview_];
      *&v32[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_slotMaker] = v6;

      v33 = *(v6 + v27);
      *(v6 + v27) = v32;

      v28 = *(v6 + v27);
      if (!v28)
      {
        goto LABEL_18;
      }
    }

    v34 = *(v28 + OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView);
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    v36[2] = v35;
    v36[3] = v6;
    v36[4] = v24;
    v36[5] = v26;
    aBlock[4] = sub_199B23CE8;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_199B1FF80;
    aBlock[3] = &block_descriptor_77;
    v37 = _Block_copy(aBlock);

    v38 = v34;
    sub_199DF81AC();

    [v38 _setSlotAnyContentProvider_];
    _Block_release(v37);

    v39 = *(v6 + v27);
    if (v39)
    {
      v39;

      return;
    }

    goto LABEL_16;
  }

  v40 = v9;
  v41 = sub_199DF802C();
  v42 = sub_199DFA32C();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_199A9BE90(v19, v18, aBlock);
    _os_log_impl(&dword_199A75000, v41, v42, "#ContactsButton unable to issue sandbox extension for '%s'...", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x19A8FA1A0](v44, -1, -1);
    MEMORY[0x19A8FA1A0](v43, -1, -1);
  }

  v45 = objc_allocWithZone(type metadata accessor for ContactsButtonSlotView(0));

  v46 = [v45 initWithFrame_];
  v47 = *&v46[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView];
  v48 = v46;
  [v48 addSubview_];
  *&v48[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_slotMaker] = v6;
}

void sub_199B205D4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *&a1[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath + 8];
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = *&a1[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath];
  sub_199DF9FCC();
  v12 = sandbox_extension_issue_file();

  if (v12)
  {
    v13 = (v5 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_queryStr);
    *v13 = a2;
    v13[1] = a3;
    sub_199DF81AC();

    *(v5 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_ignoredEmails) = a4;
    sub_199DF81AC();

    *(v5 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_ignoredPhones) = a5;
    sub_199DF81AC();

    v14 = *(v5 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_traits);
    *(v5 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_traits) = a1;
    v15 = a1;

    v16 = sub_199DFA03C();
    v18 = v17;
    v19 = OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView;
    v20 = *(v5 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView);
    if (!v20)
    {
      v21 = objc_allocWithZone(type metadata accessor for ContactsButtonSlotView(0));

      v22 = [v21 initWithFrame_];
      v23 = *&v22[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView];
      v24 = v22;
      [v24 addSubview_];
      *&v24[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_slotMaker] = v5;

      v25 = *(v5 + v19);
      *(v5 + v19) = v24;

      v20 = *(v5 + v19);
      if (!v20)
      {
        goto LABEL_15;
      }
    }

    v26 = *(v20 + OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v5;
    v28[4] = v16;
    v28[5] = v18;
    aBlock[4] = sub_199B23CE8;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_199B1FF80;
    aBlock[3] = &block_descriptor_69;
    v29 = _Block_copy(aBlock);

    v30 = v26;
    sub_199DF81AC();

    [v30 _setSlotAnyContentProvider_];
    _Block_release(v29);

    if (*(v5 + v19))
    {

      return;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v31 = a1;
  osloga = sub_199DF802C();
  v32 = sub_199DFA32C();

  if (os_log_type_enabled(osloga, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_199A9BE90(v11, v6, aBlock);
    _os_log_impl(&dword_199A75000, osloga, v32, "#ContactsButton unable to issue sandbox extension for '%s'...", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x19A8FA1A0](v34, -1, -1);
    MEMORY[0x19A8FA1A0](v33, -1, -1);
  }

  else
  {
  }
}

void sub_199B209CC()
{
  v1 = OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_traits;
  if (!*(*(v0 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_traits) + OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath + 8))
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = v0;
  sub_199DF9FCC();
  v3 = sandbox_extension_issue_file();

  if (v3)
  {
    v4 = sub_199DF802C();
    v5 = sub_199DFA30C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_199A75000, v4, v5, "#ContactsButton ContactsButtonSlotView yieldContentView", v6, 2u);
      MEMORY[0x19A8FA1A0](v6, -1, -1);
    }

    v7 = *(v2 + v1);
    sub_199DF81AC();
    sub_199DF81AC();
    v8 = v7;
    sub_199DF81AC();

    v9 = sub_199DFA03C();
    v11 = v10;
    v12 = OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView;
    v13 = *(v2 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView);
    if (!v13)
    {
      v14 = objc_allocWithZone(type metadata accessor for ContactsButtonSlotView(0));

      v15 = [v14 initWithFrame_];
      v16 = *&v15[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView];
      v17 = v15;
      [v17 addSubview_];
      *&v17[OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_slotMaker] = v2;

      v18 = *(v2 + v12);
      *(v2 + v12) = v17;

      v13 = *(v2 + v12);
      if (!v13)
      {
        goto LABEL_18;
      }
    }

    v19 = *(v13 + OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v2;
    v21[4] = v9;
    v21[5] = v11;
    aBlock[4] = sub_199B23BC0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_199B1FF80;
    aBlock[3] = &block_descriptor_52_0;
    v22 = _Block_copy(aBlock);

    v23 = v19;
    sub_199DF81AC();

    [v23 _setSlotAnyContentProvider_];
    _Block_release(v22);

    if (*(v2 + v12))
    {

      return;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  oslog = sub_199DF802C();
  v24 = sub_199DFA32C();
  if (os_log_type_enabled(oslog, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315138;
    v27 = (*(v2 + v1) + OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath);
    v28 = v27[1];
    if (!v28)
    {
LABEL_19:

      __break(1u);
      return;
    }

    v29 = v26;
    v30 = *v27;
    sub_199DF81AC();

    v31 = sub_199A9BE90(v30, v28, aBlock);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_199A75000, oslog, v24, "#ContactsButton unable to issue sandbox extension for '%s'...", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x19A8FA1A0](v29, -1, -1);
    MEMORY[0x19A8FA1A0](v25, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_199B20E68()
{
  v1 = OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger;
  v2 = sub_199DF804C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_199A79A04(v0 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker____lazy_storage___proxy, &qword_1EAF73080);
  return v0;
}

uint64_t sub_199B20F4C()
{
  sub_199B20E68();

  return swift_deallocClassInstance();
}

uint64_t sub_199B20FCC()
{
  result = sub_199DF804C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_199B211BC()
{
  result = type metadata accessor for RepresentableSlotView(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_199B212B8(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_199DF804C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v42 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v41 - v15;
  sub_199B23B64();
  sub_199B23B1C(&qword_1EAF74CC8, sub_199B23B64);
  v17 = sub_199DFA23C();
  v46.receiver = v3;
  v46.super_class = ObjectType;
  v44 = a2;
  objc_msgSendSuper2(&v46, sel_touchesEnded_withEvent_, v17, a2);

  v18 = OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer_slotContainer;
  v19 = *(v7 + 16);
  v19(v16, *&v3[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer_slotContainer] + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v6);
  v20 = sub_199DF802C();
  v21 = sub_199DFA30C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_199A75000, v20, v21, "#ContactsButton touch event began", v22, 2u);
    MEMORY[0x19A8FA1A0](v22, -1, -1);
  }

  v23 = *(v7 + 8);
  v23(v16, v6);

  v24 = sub_199B1EC28();

  if (v24)
  {
    v25 = [v44 _authenticationMessage];
    if (v25)
    {
      v26 = v25;
      v27 = swift_allocObject();
      *(v27 + 16) = v3;
      aBlock[4] = sub_199B23BB0;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_199B21F40;
      aBlock[3] = &block_descriptor_11;
      v28 = _Block_copy(aBlock);
      v29 = v26;
      v30 = v3;

      [v24 onPrimaryTouchUpEvent:v29 with:v28];
      _Block_release(v28);
      swift_unknownObjectRelease();

      return;
    }

    v37 = v42;
    v19(v42, *&v3[v18] + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v6);
    v38 = sub_199DF802C();
    v39 = sub_199DFA31C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_199A75000, v38, v39, "#ContactsButton event had no authentication message?", v40, 2u);
      MEMORY[0x19A8FA1A0](v40, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v36 = v37;
  }

  else
  {
    v31 = *&v3[v18] + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger;
    v32 = v43;
    v19(v43, v31, v6);
    v33 = sub_199DF802C();
    v34 = sub_199DFA2FC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_199A75000, v33, v34, "#ContactsButton no proxy, can't send the event :(", v35, 2u);
      MEMORY[0x19A8FA1A0](v35, -1, -1);
    }

    v36 = v32;
  }

  v23(v36, v6);
}

uint64_t sub_199B2176C(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v8 = sub_199DF804C();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v70 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v70 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v70 - v23;
  if (!a3)
  {
    v77 = a2;
    v75 = OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer_slotContainer;
    v76 = a4;
    v37 = *(a4 + OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer_slotContainer) + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger;
    v72 = *(v9 + 16);
    v73 = v9 + 16;
    v72(v21, v37, v8);
    v38 = sub_199DF802C();
    v39 = v8;
    v40 = sub_199DFA31C();
    v41 = os_log_type_enabled(v38, v40);
    v74 = a1;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v71 = v39;
      v43 = v42;
      v44 = swift_slowAlloc();
      v80 = v44;
      *v43 = 136315138;
      if (v77)
      {
        v45 = 0x646C756F6853;
      }

      else
      {
        v45 = 0x6E20646C756F6853;
      }

      if (v77)
      {
        v46 = 0xE600000000000000;
      }

      else
      {
        v46 = 0xEA0000000000746FLL;
      }

      v47 = v17;
      v48 = v13;
      v49 = v9;
      v50 = sub_199A9BE90(v45, v46, &v80);

      *(v43 + 4) = v50;
      v51 = v49;
      v13 = v48;
      v17 = v47;
      _os_log_impl(&dword_199A75000, v38, v40, "#ContactsButton response after touch -- %s show UI", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x19A8FA1A0](v44, -1, -1);
      MEMORY[0x19A8FA1A0](v43, -1, -1);

      v52 = *(v51 + 8);
      v39 = v71;
      v52(v21, v71);
    }

    else
    {

      v52 = *(v9 + 8);
      v52(v21, v39);
    }

    if (v77)
    {
      v57 = *(v76 + OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer__showLibraryUI + 8);
      v58 = *(v76 + OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer__showLibraryUI + 16);
      v80 = *(v76 + OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer__showLibraryUI);
      v81 = v57;
      v82 = v58;
      LOBYTE(v78) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0);
      sub_199DF997C();
    }

    else
    {
      v59 = *(v76 + OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer_approvalCallback);
      if (v59)
      {
        if (v74)
        {
          v60 = objc_opt_self();

          v61 = [v60 authorizationStatusForEntityType_];
          if ((v61 | 2) != 2)
          {
            v59(v74);
            sub_199A9A5FC(v59);
            goto LABEL_33;
          }

          v62 = v61;
          v72(v13, *(v76 + v75) + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v39);
          v63 = sub_199DF802C();
          v64 = sub_199DFA31C();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 134217984;
            *(v65 + 4) = v62;
            _os_log_impl(&dword_199A75000, v63, v64, "#ContactsButton: auth status is %ld, don't/ invoke callback", v65, 0xCu);
            MEMORY[0x19A8FA1A0](v65, -1, -1);
          }

          sub_199A9A5FC(v59);

          v66 = v13;
        }

        else
        {
          v72(v17, *(v76 + v75) + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v39);

          v67 = sub_199DF802C();
          v68 = sub_199DFA31C();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = 0;
            _os_log_impl(&dword_199A75000, v67, v68, "#ContactsButton: match for callback was unexpectedly nil?", v69, 2u);
            MEMORY[0x19A8FA1A0](v69, -1, -1);
          }

          sub_199A9A5FC(v59);

          v66 = v17;
        }

        return (v52)(v66, v39);
      }
    }

LABEL_33:

    sub_199B209CC();
  }

  v25 = 0xD00000000000001DLL;
  v26 = 0x8000000199E47E50;
  v27 = a3;
  v28 = [v27 userInfo];
  v29 = sub_199DF9E9C();

  if (*(v29 + 16) && (v30 = sub_199AEF9E8(0xD000000000000026, 0x8000000199E47E70), (v31 & 1) != 0))
  {
    sub_199A9DA04(*(v29 + 56) + 32 * v30, &v80);

    if (swift_dynamicCast())
    {
      v25 = v78;
      v26 = v79;
    }
  }

  else
  {
  }

  (*(v9 + 16))(v24, *(a4 + OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer_slotContainer) + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v8);
  sub_199DF81AC();
  v32 = sub_199DF802C();
  v33 = sub_199DFA31C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = v8;
    v36 = swift_slowAlloc();
    v80 = v36;
    *v34 = 136315138;
    *(v34 + 4) = sub_199A9BE90(v25, v26, &v80);
    _os_log_impl(&dword_199A75000, v32, v33, "#ContactsButton response after touch -- encountered an error: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x19A8FA1A0](v36, -1, -1);
    MEMORY[0x19A8FA1A0](v34, -1, -1);

    (*(v9 + 8))(v24, v35);
  }

  else
  {

    (*(v9 + 8))(v24, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74CD0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_199E37D40;
  v80 = 0x203A726F727245;
  v81 = 0xE700000000000000;
  MEMORY[0x19A8F7E00](v25, v26);

  v54 = v80;
  v55 = v81;
  *(v53 + 56) = MEMORY[0x1E69E6158];
  *(v53 + 32) = v54;
  *(v53 + 40) = v55;
  sub_199DFAA5C();
}

uint64_t sub_199B21F40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_199DFA0CC();
  }

  else
  {
    v7 = 0;
  }

  v8 = a4;
  v6(v7, a3, a4);
}

id sub_199B220F4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_199B221E4()
{
  type metadata accessor for ContactsButtonSlotTraits();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIDeviceOrientation(319);
    if (v1 <= 0x3F)
    {
      sub_199AC4D20();
      if (v2 <= 0x3F)
      {
        sub_199B222D0();
        if (v3 <= 0x3F)
        {
          sub_199B22320();
          if (v4 <= 0x3F)
          {
            sub_199DF804C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_199B222D0()
{
  if (!qword_1EAF74210)
  {
    v0 = sub_199DF99BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF74210);
    }
  }
}

void sub_199B22320()
{
  if (!qword_1EAF73110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF74CA0);
    v0 = sub_199DFA63C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF73110);
    }
  }
}

id sub_199B22384()
{
  v1 = type metadata accessor for RepresentableSlotView(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B23900(v0, v4);
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  v9 = *v0;
  v8 = v0[1];
  v30 = v0[2];
  v31 = v8;
  v10 = type metadata accessor for RepresentableSlotView.SlotCoordinator(0);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedQueryStr];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v13 = MEMORY[0x1E69E7CD0];
  *&v11[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedIgnoredEmails] = MEMORY[0x1E69E7CD0];
  *&v11[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedIgnoredPhones] = v13;
  v14 = OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedTraits;
  v15 = objc_allocWithZone(type metadata accessor for ContactsButtonSlotTraits());
  sub_199DF81AC();
  sub_199DF81AC();
  sub_199DF81AC();
  *&v11[v14] = [v15 init];
  sub_199B23900(v4, &v11[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_parent]);
  type metadata accessor for ContactsButtonSlotMaker(0);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger;
  v18 = qword_1EAF71EF8;
  v19 = v9;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = sub_199DF804C();
  v21 = __swift_project_value_buffer(v20, qword_1EAF87058);
  (*(*(v20 - 8) + 16))(v16 + v17, v21, v20);
  *(v16 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_slotView) = 0;
  *(v16 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_didFaultAlreadyForUndesiredRendering) = 0;
  v22 = v16 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_cachedCalculatedFrame;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 1;
  *(v16 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker____lazy_storage___connection) = 0;
  v23 = (v16 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker____lazy_storage___proxy);
  *v23 = 0u;
  v23[1] = 0u;
  v24 = (v16 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_queryStr);
  v25 = v31;
  *v24 = v30;
  v24[1] = v5;
  *(v16 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_ignoredEmails) = v7;
  *(v16 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_ignoredPhones) = v6;
  *(v16 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_traits) = v19;
  *&v11[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_containedSlotMaker] = v16;
  *&v11[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedOrientation] = v25;
  v26 = *&v19[OBJC_IVAR___ContactsButtonSlotTraits_contentSizeCategory];
  *&v11[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedContentSizeCategory] = v26;
  v32.receiver = v11;
  v32.super_class = v10;
  v27 = v26;
  v28 = objc_msgSendSuper2(&v32, sel_init);
  sub_199AC6054(v4);
  return v28;
}

id sub_199B22654()
{
  v1 = v0;
  type metadata accessor for RepresentableSlotView(0);
  v2 = sub_199DF802C();
  v3 = sub_199DFA2FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_199A75000, v2, v3, "#ContactsButton makeUIView ", v4, 2u);
    MEMORY[0x19A8FA1A0](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74CB0);
  sub_199DF900C();

  sub_199B20048(*v1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  v6 = v5;

  v7 = v6;
  LODWORD(v8) = 1148846080;
  [v7 setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [v7 setContentHuggingPriority:1 forAxis:v9];
  v32 = sel_handleTap_;
  v41[3] = type metadata accessor for RepresentableSlotView.SlotCoordinator(0);
  sub_199DF900C();
  sub_199DF900C();
  v10 = *&v40[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_containedSlotMaker];

  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v34[0] = *(v1 + 48);
  v34[1] = v11;
  v35 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0);
  sub_199DF999C();
  v13 = v37;
  v14 = v38;
  v15 = v39;
  v16 = *(v1 + 72);
  v17 = *(v1 + 80);
  v18 = type metadata accessor for RepresentableSlotView._TapGestureRecognizer();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer_approvalCallback];
  *v20 = 0;
  v20[1] = 0;
  *&v19[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer_slotContainer] = v10;
  v21 = &v19[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer__showLibraryUI];
  *v21 = v13;
  *(v21 + 1) = v14;
  v21[16] = v15;
  *v20 = v16;
  v20[1] = v17;
  sub_199AC90C0(v41, v34);
  v22 = v36;
  if (v36)
  {
    v23 = __swift_project_boxed_opaque_existential_0(v34, v36);
    v30 = &v30;
    v31 = v18;
    v24 = *(v22 - 8);
    MEMORY[0x1EEE9AC00](v23, v23);
    v26 = &v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v26);

    sub_199A9A57C(v16);
    v27 = sub_199DFA98C();
    (*(v24 + 8))(v26, v22);
    v18 = v31;
    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {

    sub_199A9A57C(v16);
    v27 = 0;
  }

  v33.receiver = v19;
  v33.super_class = v18;
  v28 = objc_msgSendSuper2(&v33, sel_initWithTarget_action_, v27, v32, v30);

  swift_unknownObjectRelease();
  sub_199A79A04(v41, &qword_1EAF73080);
  [v7 addGestureRecognizer_];
  [v7 setUserInteractionEnabled_];

  return v7;
}

void sub_199B22A4C(void *a1)
{
  v2 = v1;
  v4 = sub_199DF804C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v106 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v107 = &v106 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v109 = &v106 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v110 = &v106 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v111 = &v106 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v106 - v22;
  type metadata accessor for RepresentableSlotView(0);
  v24 = a1;
  v25 = sub_199DF802C();
  v26 = sub_199DFA2FC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134218752;
    v108 = v2;
    [v24 frame];
    *(v27 + 4) = CGRectGetWidth(v114);
    *(v27 + 12) = 2048;
    [v24 frame];
    *(v27 + 14) = CGRectGetHeight(v115);
    *(v27 + 22) = 2048;
    [v24 frame];
    *(v27 + 24) = CGRectGetWidth(v116);
    *(v27 + 32) = 2048;
    v2 = v108;
    [v24 frame];
    *(v27 + 34) = CGRectGetWidth(v117);
    _os_log_impl(&dword_199A75000, v25, v26, "#ContactsButton updateUIView w %f h %f gw %f gh %f", v27, 0x2Au);
    MEMORY[0x19A8FA1A0](v27, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74CB0);
  sub_199DF900C();
  v28 = v113;
  v30 = *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedQueryStr];
  v29 = *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedQueryStr + 8];
  sub_199DF81AC();

  v31 = *(v2 + 24);
  v112 = *(v2 + 16);
  if (v30 == v112 && v29 == v31)
  {
  }

  else
  {
    v32 = sub_199DFA99C();

    if ((v32 & 1) == 0)
    {
      sub_199DF900C();
      v56 = v113;
      v57 = *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_containedSlotMaker];

      v5[2](v23, v57 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v4);

      v58 = sub_199DF802C();
      v59 = sub_199DFA30C();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = v31;
        v61 = v23;
        v62 = v2;
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_199A75000, v58, v59, "#ContactsButton can update because query updated", v63, 2u);
        v64 = v63;
        v2 = v62;
        v23 = v61;
        v31 = v60;
        MEMORY[0x19A8FA1A0](v64, -1, -1);
      }

      (v5[1])(v23, v4);
      goto LABEL_23;
    }
  }

  sub_199DF900C();
  v33 = v113;
  v34 = *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedIgnoredEmails];
  sub_199DF81AC();

  v35 = *(v2 + 32);
  v36 = sub_199B23964(v34, v35);

  if (v36)
  {
    sub_199DF900C();
    v37 = v113;
    v38 = *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedIgnoredPhones];
    sub_199DF81AC();

    v39 = *(v2 + 40);
    LOBYTE(v37) = sub_199B23964(v38, v39);

    if (v37)
    {
      v111 = v4;
      v40 = *v2;
      sub_199DF900C();
      v41 = v113;
      v42 = *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedTraits];

      LOBYTE(v41) = sub_199B42A1C(v42);
      if (v41)
      {
        sub_199DF900C();
        v43 = *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedOrientation];

        v108 = v2;
        v44 = *(v2 + 8);
        if (v43 != v44)
        {
          sub_199DF900C();
          v88 = v5;
          v89 = v113;
          v90 = *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_containedSlotMaker];

          v110 = v88;
          (*(v88 + 2))(v107, v90 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v111);

          v91 = sub_199DF802C();
          v92 = sub_199DFA30C();
          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            *v93 = 0;
            _os_log_impl(&dword_199A75000, v91, v92, "#ContactsButton orientation changed", v93, 2u);
            MEMORY[0x19A8FA1A0](v93, -1, -1);
          }

          (*(v110 + 1))(v107, v111);
          sub_199DF900C();
          v94 = v113;
          *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedOrientation] = v44;

          goto LABEL_31;
        }

        sub_199DF900C();
        v45 = v113;
        v46 = *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedContentSizeCategory];

        v109 = OBJC_IVAR___ContactsButtonSlotTraits_contentSizeCategory;
        v110 = v46;
        v47 = sub_199DF9F8C();
        v49 = v48;
        if (v47 == sub_199DF9F8C() && v49 == v50)
        {

LABEL_31:
          v73 = &OBJC_IVAR____TtC10ContactsUI36CNExistingWallpaperEditorCoordinator_editor;
          v72 = v112;
          goto LABEL_24;
        }

        v95 = sub_199DFA99C();

        if (v95)
        {
          goto LABEL_31;
        }

        sub_199DF900C();
        v96 = v113;
        v97 = *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_containedSlotMaker];

        v98 = v106;
        v5[2](v106, v97 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v111);

        v99 = sub_199DF802C();
        v100 = sub_199DFA30C();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&dword_199A75000, v99, v100, "#ContactsButton can update because contentSizeCategory/dynamicTypeSize updated", v101, 2u);
          MEMORY[0x19A8FA1A0](v101, -1, -1);
        }

        (v5[1])(v98, v111);
        sub_199DF900C();
        v102 = *&v109[v40];
        v103 = v113;
        v104 = *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedContentSizeCategory];
        *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedContentSizeCategory] = v102;
        v105 = v102;

        v2 = v108;
      }

      else
      {
        v81 = v2;
        sub_199DF900C();
        v82 = v113;
        v83 = *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_containedSlotMaker];

        v84 = v111;
        v5[2](v109, v83 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v111);

        v85 = sub_199DF802C();
        v86 = sub_199DFA30C();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          _os_log_impl(&dword_199A75000, v85, v86, "#ContactsButton can update because traits updated", v87, 2u);
          MEMORY[0x19A8FA1A0](v87, -1, -1);
        }

        (v5[1])(v109, v84);
        v2 = v81;
      }
    }

    else
    {
      sub_199DF900C();
      v65 = v113;
      v66 = *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_containedSlotMaker];

      v5[2](v110, v66 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v4);

      v67 = sub_199DF802C();
      v68 = sub_199DFA30C();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_199A75000, v67, v68, "#ContactsButton can update because ignored phones updated", v69, 2u);
        MEMORY[0x19A8FA1A0](v69, -1, -1);
      }

      (v5[1])(v110, v4);
    }
  }

  else
  {
    sub_199DF900C();
    v51 = v113;
    v52 = *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_containedSlotMaker];

    v5[2](v111, v52 + OBJC_IVAR____TtC10ContactsUI23ContactsButtonSlotMaker_logger, v4);

    v53 = sub_199DF802C();
    v54 = sub_199DFA30C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_199A75000, v53, v54, "#ContactsButton can update because ignored emails updated", v55, 2u);
      MEMORY[0x19A8FA1A0](v55, -1, -1);
    }

    (v5[1])(v111, v4);
  }

LABEL_23:
  sub_199DF900C();
  v70 = v113;

  v40 = *v2;
  v35 = *(v2 + 32);
  v39 = *(v2 + 40);
  v71 = *v2;
  v72 = v112;
  sub_199B205D4(v71, v112, v31, v35, v39);

  v73 = &OBJC_IVAR____TtC10ContactsUI36CNExistingWallpaperEditorCoordinator_editor;
LABEL_24:
  sub_199DF900C();
  v74 = v113;
  v75 = &v113[v73[18]];
  *v75 = v72;
  v75[1] = v31;
  sub_199DF81AC();

  sub_199DF900C();
  v76 = v113;
  *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedIgnoredEmails] = v35;
  sub_199DF81AC();

  sub_199DF900C();
  v77 = v113;
  *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedIgnoredPhones] = v39;
  sub_199DF81AC();

  sub_199DF900C();
  v78 = v113;
  v79 = *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedTraits];
  *&v113[OBJC_IVAR____TtCV10ContactsUI21RepresentableSlotView15SlotCoordinator_cachedTraits] = v40;
  v80 = v40;
}

id sub_199B23668@<X0>(void *a1@<X8>)
{
  result = sub_199B22384();
  *a1 = result;
  return result;
}

uint64_t sub_199B23690(uint64_t a1, char a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74CB0);
  sub_199DF900C();

  v8 = sub_199B1EF54(a1, a2 & 1, a3, a4 & 1);

  return v8;
}

void sub_199B23860()
{
  sub_199B23B1C(&qword_1EAF74CB8, type metadata accessor for RepresentableSlotView);
  sub_199DF8EAC();
  __break(1u);
}

uint64_t sub_199B23900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RepresentableSlotView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B23964(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_199DFAA7C();
    sub_199DF81AC();
    sub_199DF9FEC();
    v16 = sub_199DFAABC();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_199DFA99C() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_199B23B1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_199B23B64()
{
  result = qword_1EAF74CC0;
  if (!qword_1EAF74CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF74CC0);
  }

  return result;
}

uint64_t objectdestroy_48Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_199B23D38()
{
  v1 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_199B23DEC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_199B23E44(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id CNPosterOnboardingWelcomeViewWrapper.__allocating_init(with:hasOptionToSkip:hasExistingNickname:navigationBarHeight:delegate:windowScene:)(uint64_t a1, char a2, char a3, double a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D58);
  v14 = v13 - 8;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = (v40 - v20);
  v22 = objc_allocWithZone(v7);
  *v21 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for CNPosterOnboardingWelcomeView();
  *(v21 + v23[5]) = a1;
  *(v21 + v23[6]) = a2;
  *(v21 + v23[7]) = a3;
  *(v21 + v23[8]) = a4;
  swift_unknownObjectWeakInit();
  v24 = v21 + v23[10];
  LOBYTE(v42) = 0;
  sub_199DF983C();
  v25 = *(&v45 + 1);
  *v24 = v45;
  *(v24 + 1) = v25;
  v26 = v21 + v23[11];
  LOBYTE(v42) = 0;
  sub_199DF983C();
  v27 = *(&v45 + 1);
  *v26 = v45;
  *(v26 + 1) = v27;
  v28 = v21 + v23[12];
  LOBYTE(v42) = !UIAccessibilityIsVideoAutoplayEnabled();
  sub_199DF983C();
  v29 = *(&v45 + 1);
  *v28 = v45;
  *(v28 + 1) = v29;
  v30 = (v21 + v23[13]);
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D60);
  sub_199DF983C();
  v31 = v46;
  v32 = v47;
  *v30 = v45;
  v30[1] = v31;
  v30[2] = v32;
  v33 = v21 + v23[14];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  KeyPath = swift_getKeyPath();
  v35 = (v21 + *(v14 + 44));
  *v35 = KeyPath;
  v35[1] = a6;
  sub_199AAD408(v21, v18, &qword_1EAF74D58);
  v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D68));
  v37 = a6;
  *&v22[OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper_hostingController] = sub_199DF8DFC();
  v41.receiver = v22;
  v41.super_class = v40[1];
  v38 = objc_msgSendSuper2(&v41, sel_init);
  swift_unknownObjectRelease();

  sub_199A79A04(v21, &qword_1EAF74D58);
  return v38;
}

id CNPosterOnboardingWelcomeViewWrapper.init(with:hasOptionToSkip:hasExistingNickname:navigationBarHeight:delegate:windowScene:)(uint64_t a1, char a2, char a3, uint64_t a4, void *a5, double a6)
{
  v7 = sub_199B29F10(a1, a2, a3, a6, a4, a5);
  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_199B24250@<X0>(void *a1@<X8>)
{
  sub_199B2AE70();
  result = sub_199DF8C9C();
  *a1 = v3;
  return result;
}

uint64_t sub_199B242A0(void **a1)
{
  v1 = *a1;
  sub_199B2AE70();
  v2 = v1;
  return sub_199DF8CAC();
}

id CNPosterOnboardingWelcomeViewWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNPosterOnboardingWelcomeViewWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNPosterOnboardingWelcomeViewWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_199B2446C()
{
  v1 = *(v0 + *(type metadata accessor for CNPosterOnboardingWelcomeView() + 20));
  v2 = [v1 wallpaper];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 posterArchiveData];

    v5 = sub_199DF71FC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xC000000000000000;
  }

  v8 = [v1 thumbnailImageData];
  if (v8 || (v8 = [v1 imageData]) != 0)
  {
    v9 = v8;
    v10 = sub_199DF71FC();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xC000000000000000;
  }

  v13 = [v1 givenName];
  v14 = sub_199DF9F8C();
  v16 = v15;

  v17 = type metadata accessor for CNPosterEditorViewConfiguration();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData];
  *v19 = v5;
  v19[1] = v7;
  v20 = &v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData];
  *v20 = v10;
  v20[1] = v12;
  v21 = &v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName];
  *v21 = v14;
  v21[1] = v16;
  v22 = &v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier];
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe] = 1;
  *&v18[OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration] = 0;
  v24.receiver = v18;
  v24.super_class = v17;
  return objc_msgSendSuper2(&v24, sel_init);
}

void sub_199B24634()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 54.0;
  if (v1 != 1)
  {
    v2 = 5.0;
  }

  qword_1EAF86E40 = *&v2;
}

void sub_199B246A4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 35.0;
  if (v1 == 1)
  {
    v2 = 56.0;
  }

  qword_1EAF86E78 = *&v2;
}

void sub_199B2471C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 35.0;
  if (v1 == 1)
  {
    v2 = 36.0;
  }

  qword_1EAF86E68 = *&v2;
}

void sub_199B24794()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 bounds];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 bounds];
  v6 = v5;

  v7 = v3 / v6;
  v8 = [v0 mainScreen];
  [v8 bounds];
  v10 = v9;

  v11 = [v0 mainScreen];
  [v11 bounds];
  v13 = v12;

  v14 = v10 / v13;
  if (v10 / v13 >= v7)
  {
    v14 = v7;
  }

  qword_1EAF86E70 = *&v14;
}

void sub_199B24894()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 37.0;
  if (v1 == 1)
  {
    v2 = 13.0;
  }

  qword_1EAF86E30 = *&v2;
}

void sub_199B24908()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 54.0;
  if (v1 != 1)
  {
    v2 = 0.0;
  }

  qword_1EAF86E58 = *&v2;
}

void sub_199B24978()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 44.0;
  if (v1 != 1)
  {
    v2 = 0.0;
  }

  qword_1EAF86E38 = *&v2;
}

void sub_199B249E8()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0.0;
  if (v1 == 1)
  {
    v2 = 5.0;
  }

  qword_1EAF86E60 = *&v2;
}

void sub_199B24A54()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0x4056000000000000;
  if (v1 != 1)
  {
    v2 = 0;
  }

  qword_1EAF86E48 = v2;
  byte_1EAF86E50 = v1 != 1;
}

uint64_t sub_199B24AC8@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for CNPosterOnboardingWelcomeView();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D70);
  MEMORY[0x1EEE9AC00](v48, v6);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D78);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D80);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v46 - v15;
  *v16 = sub_199DF8D4C();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D88);
  sub_199B24F40(a1, &v16[*(v17 + 44)]);
  v18 = sub_199DF917C();
  v19 = [objc_opt_self() currentDevice];
  [v19 userInterfaceIdiom];

  sub_199DF84FC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_199AB7794(v16, v12, &qword_1EAF74D80);
  v28 = &v12[*(v9 + 36)];
  *v28 = v18;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  LOBYTE(v9) = sub_199DF919C();
  *(inited + 32) = v9;
  v30 = sub_199DF91BC();
  *(inited + 33) = v30;
  v31 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v9)
  {
    v31 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v30)
  {
    v31 = sub_199DF91AC();
  }

  if (qword_1EAF719C0 != -1)
  {
    swift_once();
  }

  v32 = byte_1EAF86E50;
  v33 = 0uLL;
  v34 = 0uLL;
  if ((byte_1EAF86E50 & 1) == 0)
  {
    sub_199DF84FC();
    *(&v34 + 1) = v35;
    *(&v33 + 1) = v36;
  }

  v46 = v34;
  v47 = v33;
  sub_199AB7794(v12, v8, &qword_1EAF74D78);
  v37 = &v8[*(v48 + 36)];
  *v37 = v31;
  v38 = v47;
  *(v37 + 24) = v46;
  *(v37 + 8) = v38;
  v37[40] = v32;
  v39 = a1;
  v40 = v50;
  sub_199B2A4D4(v39, v50);
  v41 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v42 = swift_allocObject();
  sub_199B2A538(v40, v42 + v41);
  v43 = v51;
  sub_199AB7794(v8, v51, &qword_1EAF74D70);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D90);
  v45 = (v43 + *(result + 36));
  *v45 = sub_199B2A61C;
  v45[1] = v42;
  v45[2] = 0;
  v45[3] = 0;
  return result;
}

uint64_t sub_199B24F40@<X0>(_BYTE *a1@<X1>, void *a2@<X8>)
{
  v243 = a1;
  v233 = a2;
  v242 = sub_199DF9F4C();
  v244 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242, v2);
  v241 = &v208[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_199DF8F3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v208[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EAF719F8 != -1)
  {
    swift_once();
  }

  sub_199DF9B5C();
  sub_199DF863C();
  v230 = v379;
  v231 = v377;
  v228 = v382;
  v229 = v381;
  v406 = 1;
  v405 = v378;
  v404 = v380;
  v9 = objc_opt_self();
  v10 = [v9 currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 != 1)
  {
    sub_199DF8FAC();
    sub_199DF86AC();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v407.origin.x = v13;
    v407.origin.y = v15;
    v407.size.width = v17;
    v407.size.height = v19;
    CGRectGetHeight(v407);
  }

  sub_199DF8FAC();
  sub_199DF86AC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v5 + 8))(v8, v4);
  v408.origin.x = v21;
  v408.origin.y = v23;
  v408.size.width = v25;
  v408.size.height = v27;
  CGRectGetWidth(v408);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DA0);
  v232 = v208;
  v227 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v245 = &v208[-v30];
  v31 = [v9 currentDevice];
  v32 = [v31 userInterfaceIdiom];

  if (v32 == 1)
  {
    v33 = sub_199B2446C();
    sub_199DF9B5C();
    sub_199DF897C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_199E39320;
    v35 = sub_199DF919C();
    *(v34 + 32) = v35;
    v36 = sub_199DF91BC();
    *(v34 + 33) = v36;
    v37 = sub_199DF91AC();
    sub_199DF91AC();
    if (sub_199DF91AC() != v35)
    {
      v37 = sub_199DF91AC();
    }

    sub_199DF91AC();
    if (sub_199DF91AC() != v36)
    {
      v37 = sub_199DF91AC();
    }

    if (qword_1EAF719B0 != -1)
    {
      swift_once();
    }

    sub_199DF84FC();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    LOBYTE(v283) = 0;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DD0);
    MEMORY[0x1EEE9AC00](v46, v46);
    v48 = &v208[-v47];
    v49 = v248;
    *(v48 + 56) = v249;
    v50 = v251;
    *(v48 + 72) = v250;
    *(v48 + 88) = v50;
    *(v48 + 104) = v252;
    v51 = v247;
    *(v48 + 8) = v246;
    *(v48 + 24) = v51;
    *v48 = v33;
    *(v48 + 40) = v49;
    v48[120] = v37;
    *(v48 + 16) = v39;
    *(v48 + 17) = v41;
    *(v48 + 18) = v43;
    *(v48 + 19) = v45;
    v48[160] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DD8);
    sub_199B2A754();
    sub_199B2A834();
    sub_199DF8EDC();
  }

  else
  {
    v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DA8);
    v240 = v208;
    MEMORY[0x1EEE9AC00](v239, v52);
    v238 = &v208[-v53];
    v54 = type metadata accessor for CNPosterOnboardingWelcomeView();
    v55 = v243;
    v56 = &v243[*(v54 + 52)];
    v57 = v56[1];
    v283 = *v56;
    v284 = v57;
    v285 = v56[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74D98);
    sub_199DF984C();
    v58 = v268;
    if (v268)
    {
      v226 = *(&v268 + 1);
      v235 = *(&v269 + 1);
      *&v234 = v269;
      v236 = v270;
      v402[0] = v268;
      v402[1] = v269;
      v403 = v270;
      v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DC8);
      KeyPath = v208;
      MEMORY[0x1EEE9AC00](v225, v59);
      v61 = &v208[-v60];
      *v61 = sub_199DF9B5C();
      v61[1] = v62;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E18);
      sub_199B26B08(v402, v55, (v61 + *(v63 + 44)));
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DC0);
      v224 = v208;
      MEMORY[0x1EEE9AC00](v64, v65);
      sub_199AAD408(v61, &v208[-v66], &qword_1EAF74DC8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DB0);
      sub_199AA0B90(&qword_1EAF71178, &qword_1EAF74DC8);
      sub_199AA0B90(&qword_1EAF71188, &qword_1EAF74DB0);
      v67 = v238;
      sub_199DF8EDC();

      sub_199A79A04(v61, &qword_1EAF74DC8);
    }

    else
    {
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DB0);
      KeyPath = v208;
      MEMORY[0x1EEE9AC00](v68, v69);
      v71 = &v208[-v70];
      *v71 = sub_199DF9B5C();
      v71[1] = v72;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DB8);
      sub_199B27FEC(v71 + *(v73 + 44));
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DC0);
      v236 = v208;
      MEMORY[0x1EEE9AC00](v74, v75);
      sub_199AAD408(v71, &v208[-v76], &qword_1EAF74DB0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DC8);
      sub_199AA0B90(&qword_1EAF71178, &qword_1EAF74DC8);
      sub_199AA0B90(&qword_1EAF71188, &qword_1EAF74DB0);
      v67 = v238;
      sub_199DF8EDC();
      sub_199A79A04(v71, &qword_1EAF74DB0);
    }

    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DD0);
    MEMORY[0x1EEE9AC00](v77, v78);
    sub_199AAD408(v67, &v208[-v79], &qword_1EAF74DA8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74DD8);
    sub_199B2A754();
    sub_199B2A834();
    sub_199DF8EDC();
    sub_199A79A04(v67, &qword_1EAF74DA8);
  }

  if (qword_1EAF719E0 != -1)
  {
    swift_once();
  }

  sub_199DF9B5C();
  sub_199DF863C();
  v221 = v385;
  v222 = v383;
  v219 = v388;
  v220 = v387;
  v376 = 1;
  v375 = v384;
  v374 = v386;
  v210 = type metadata accessor for CNPosterOnboardingWelcomeView();
  v80 = v241;
  sub_199DF9EEC();
  v81 = sub_199AA8A84(v80, MEMORY[0x1E69E7CC0]);
  v83 = v82;
  v84 = *(v244 + 8);
  v244 += 8;
  v218 = v84;
  v84(v80, v242);
  *&v283 = v81;
  *(&v283 + 1) = v83;
  v217 = sub_199A9C458();
  v85 = sub_199DF93CC();
  v87 = v86;
  v89 = v88;
  sub_199DF91DC();
  v90 = sub_199DF939C();
  v92 = v91;
  LOBYTE(v80) = v93;

  sub_199ACE3E8(v85, v87, v89 & 1);

  sub_199DF923C();
  v94 = sub_199DF932C();
  v238 = v95;
  v239 = v94;
  LOBYTE(v85) = v96;
  v240 = v97;
  sub_199ACE3E8(v90, v92, v80 & 1);

  sub_199DF9B5C();
  sub_199DF897C();
  LODWORD(v236) = v85 & 1;
  v369 = v85 & 1;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690);
  v98 = swift_allocObject();
  v234 = xmmword_199E39320;
  *(v98 + 16) = xmmword_199E39320;
  LOBYTE(v87) = sub_199DF919C();
  *(v98 + 32) = v87;
  v99 = sub_199DF91BC();
  *(v98 + 33) = v99;
  v100 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v87)
  {
    v100 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v99)
  {
    v100 = sub_199DF91AC();
  }

  LODWORD(v235) = v100;
  if (qword_1EAF719C8 != -1)
  {
    swift_once();
  }

  sub_199DF84FC();
  v225 = v102;
  v226 = v101;
  v223 = v104;
  v224 = v103;
  v370 = 0;
  sub_199DF9B5C();
  sub_199DF863C();
  v213 = v391;
  v214 = v389;
  v211 = v394;
  v212 = v393;
  v360 = 1;
  v359 = v390;
  v358 = v392;
  v105 = v241;
  sub_199DF9EEC();
  v106 = sub_199AA8A84(v105, MEMORY[0x1E69E7CC0]);
  v108 = v107;
  v218(v105, v242);
  *&v283 = v106;
  *(&v283 + 1) = v108;
  v109 = sub_199DF93CC();
  v111 = v110;
  LOBYTE(v105) = v112;
  sub_199DF920C();
  v241 = sub_199DF939C();
  v218 = v113;
  v115 = v114;
  v244 = v116;

  sub_199ACE3E8(v109, v111, v105 & 1);

  sub_199DF9B5C();
  sub_199DF897C();
  v216 = v115 & 1;
  v353 = v115 & 1;
  v242 = swift_getKeyPath();
  v217 = swift_getKeyPath();
  v117 = swift_allocObject();
  *(v117 + 16) = v234;
  v118 = sub_199DF919C();
  *(v117 + 32) = v118;
  v119 = sub_199DF91BC();
  *(v117 + 33) = v119;
  v120 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v118)
  {
    v120 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v119)
  {
    v120 = sub_199DF91AC();
  }

  v121 = v243;
  v215 = v120;
  sub_199DF84FC();
  v123 = v122;
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v355 = 0;
  if (qword_1EAF71990 != -1)
  {
    swift_once();
  }

  sub_199DF9B5C();
  sub_199DF897C();
  *&v343[55] = v398;
  *&v343[71] = v399;
  *&v343[87] = v400;
  *&v343[103] = v401;
  *&v343[7] = v395;
  *&v343[23] = v396;
  v344 = 1;
  *&v343[39] = v397;
  v130 = v121[*(v210 + 24)];
  swift_unknownObjectWeakLoadStrong();
  LOBYTE(v283) = v130;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v131 = swift_allocObject();
  *(v131 + 16) = v234;
  v132 = sub_199DF919C();
  *(v131 + 32) = v132;
  v133 = sub_199DF91BC();
  *(v131 + 33) = v133;
  v134 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v132)
  {
    v134 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v133)
  {
    v134 = sub_199DF91AC();
  }

  if (qword_1EAF719A0 != -1)
  {
    swift_once();
  }

  sub_199DF84FC();
  v136 = v135;
  v138 = v137;
  v140 = v139;
  v142 = v141;
  sub_199B2A940(&v283, v329);
  v329[16] = v134;
  v330 = v136;
  v331 = v138;
  v332 = v140;
  v333 = v142;
  v334 = 0;
  v143 = sub_199DF918C();
  v144 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v143)
  {
    v144 = sub_199DF91AC();
  }

  if (qword_1EAF719D8 != -1)
  {
    swift_once();
  }

  sub_199DF84FC();
  v146 = v145;
  v148 = v147;
  v150 = v149;
  v152 = v151;
  sub_199AB7794(v329, v335, &qword_1EAF74DE8);
  v335[64] = v144;
  v336 = v146;
  v337 = v148;
  v338 = v150;
  v339 = v152;
  v340 = 0;
  sub_199AB7794(v335, v341, &qword_1EAF74DF0);
  v341[14] = 0x3FF0000000000000;
  v153 = sub_199AB7794(v341, v342, &qword_1EAF74DF8);
  v243 = v208;
  v154 = v406;
  v155 = v405;
  v156 = v404;
  MEMORY[0x1EEE9AC00](v153, v157);
  v159 = &v208[-((v158 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v234 = v159;
  sub_199AAD408(v245, v159, &qword_1EAF74DA0);
  v160 = v376;
  v161 = v375;
  v162 = v374;
  v209 = v360;
  LODWORD(v210) = v359;
  LODWORD(v227) = v358;
  sub_199AAD408(v342, v253, &qword_1EAF74DF8);
  v163 = v233;
  *v233 = 0;
  *(v163 + 8) = v154;
  v164 = v230;
  v163[2] = v231;
  *(v163 + 24) = v155;
  v163[4] = v164;
  *(v163 + 40) = v156;
  v165 = v228;
  v163[6] = v229;
  v163[7] = v165;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E00);
  sub_199AAD408(v159, v163 + v166[12], &qword_1EAF74DA0);
  v167 = v163 + v166[16];
  *v167 = 0;
  v167[8] = v160;
  v168 = v221;
  *(v167 + 2) = v222;
  v167[24] = v161;
  *(v167 + 4) = v168;
  v167[40] = v162;
  v169 = v219;
  *(v167 + 6) = v220;
  *(v167 + 7) = v169;
  v170 = v163 + v166[20];
  *&v254 = v239;
  *(&v254 + 1) = v238;
  LOBYTE(v255) = v236;
  *(&v255 + 1) = *v368;
  DWORD1(v255) = *&v368[3];
  v260 = v365;
  v261 = v366;
  v262 = v367;
  v258 = v363;
  v259 = v364;
  v256 = v361;
  v257 = v362;
  *(&v255 + 1) = v240;
  *&v263 = KeyPath;
  HIDWORD(v263) = *&v372[3];
  *(&v263 + 9) = *v372;
  DWORD1(v264) = *&v371[3];
  *(&v264 + 1) = *v371;
  HIDWORD(v266) = *&v373[3];
  *(&v266 + 9) = *v373;
  BYTE8(v263) = 1;
  LOBYTE(v264) = v235;
  v172 = v225;
  v171 = v226;
  *(&v264 + 1) = v226;
  *&v265 = v225;
  v174 = v223;
  v173 = v224;
  *(&v265 + 1) = v224;
  *&v266 = v223;
  BYTE8(v266) = 0;
  v267 = 0x3FF0000000000000;
  v176 = v264;
  v175 = v265;
  v177 = v266;
  *(v170 + 26) = 0x3FF0000000000000;
  *(v170 + 11) = v175;
  *(v170 + 12) = v177;
  v178 = v255;
  *v170 = v254;
  *(v170 + 1) = v178;
  v179 = v256;
  v180 = v257;
  v181 = v259;
  *(v170 + 4) = v258;
  *(v170 + 5) = v181;
  *(v170 + 2) = v179;
  *(v170 + 3) = v180;
  v182 = v260;
  v183 = v261;
  v184 = v262;
  *(v170 + 9) = v263;
  *(v170 + 10) = v176;
  *(v170 + 7) = v183;
  *(v170 + 8) = v184;
  *(v170 + 6) = v182;
  v185 = v163 + v166[24];
  v185[8] = v209;
  *(v185 + 2) = v214;
  v185[24] = v210;
  *(v185 + 4) = v213;
  v185[40] = v227;
  v186 = v211;
  *(v185 + 6) = v212;
  *(v185 + 7) = v186;
  *v185 = 0;
  *(&v269 + 1) = *v352;
  v187 = v163 + v166[28];
  v188 = v241;
  *&v268 = v241;
  v189 = v218;
  *(&v268 + 1) = v218;
  v190 = v216;
  LOBYTE(v269) = v216;
  DWORD1(v269) = *&v352[3];
  *(&v269 + 1) = v244;
  v276 = v351;
  v271 = v346;
  v270 = v345;
  v275 = v350;
  v274 = v349;
  v272 = v347;
  v273 = v348;
  *&v277 = v242;
  BYTE8(v277) = 1;
  HIDWORD(v277) = *&v354[3];
  *(&v277 + 9) = *v354;
  DWORD1(v279) = *&v356[3];
  *(&v279 + 1) = *v356;
  HIDWORD(v281) = *&v357[3];
  *(&v281 + 9) = *v357;
  v191 = v217;
  *&v278 = v217;
  *(&v278 + 1) = 0x3FE0000000000000;
  v192 = v215;
  LOBYTE(v279) = v215;
  *(&v279 + 1) = v123;
  *&v280 = v125;
  *(&v280 + 1) = v127;
  *&v281 = v129;
  BYTE8(v281) = 0;
  v282 = 0x3FF0000000000000;
  v193 = v280;
  v194 = v281;
  *(v187 + 28) = 0x3FF0000000000000;
  *(v187 + 12) = v193;
  *(v187 + 13) = v194;
  v195 = v269;
  *v187 = v268;
  *(v187 + 1) = v195;
  v196 = v270;
  v197 = v271;
  v198 = v273;
  *(v187 + 4) = v272;
  *(v187 + 5) = v198;
  *(v187 + 2) = v196;
  *(v187 + 3) = v197;
  v199 = v274;
  v200 = v275;
  v201 = v279;
  *(v187 + 10) = v278;
  *(v187 + 11) = v201;
  v202 = v277;
  *(v187 + 8) = v276;
  *(v187 + 9) = v202;
  *(v187 + 6) = v199;
  *(v187 + 7) = v200;
  v203 = v163 + v166[32];
  v203[8] = 1;
  v204 = *&v343[80];
  *(v203 + 105) = *&v343[96];
  *(v203 + 15) = *&v343[111];
  *(v203 + 16) = 0xBFF0000000000000;
  *v203 = 0;
  *(v203 + 73) = *&v343[64];
  *(v203 + 89) = v204;
  v205 = *&v343[16];
  *(v203 + 9) = *v343;
  *(v203 + 25) = v205;
  v206 = *&v343[48];
  *(v203 + 41) = *&v343[32];
  *(v203 + 57) = v206;
  sub_199AAD408(v253, v163 + v166[36], &qword_1EAF74DF8);
  sub_199AAD408(&v254, &v283, &qword_1EAF74E08);
  sub_199AAD408(&v268, &v283, &qword_1EAF74E10);
  sub_199A79A04(v342, &qword_1EAF74DF8);
  sub_199A79A04(v245, &qword_1EAF74DA0);
  sub_199A79A04(v253, &qword_1EAF74DF8);
  *&v283 = v188;
  *(&v283 + 1) = v189;
  LOBYTE(v284) = v190;
  *(&v284 + 1) = *v352;
  DWORD1(v284) = *&v352[3];
  v289 = v349;
  v290 = v350;
  v291 = v351;
  v285 = v345;
  v286 = v346;
  v287 = v347;
  v288 = v348;
  *(&v284 + 1) = v244;
  v292 = v242;
  v293 = 1;
  *&v294[3] = *&v354[3];
  *v294 = *v354;
  v295 = v191;
  v296 = 0x3FE0000000000000;
  v297 = v192;
  *&v298[3] = *&v356[3];
  *v298 = *v356;
  v299 = v123;
  v300 = v125;
  v301 = v127;
  v302 = v129;
  v303 = 0;
  *v304 = *v357;
  *&v304[3] = *&v357[3];
  v305 = 0x3FF0000000000000;
  sub_199A79A04(&v283, &qword_1EAF74E10);
  v306[0] = v239;
  v306[1] = v238;
  v307 = v236;
  *v308 = *v368;
  *&v308[3] = *&v368[3];
  v309 = v240;
  v314 = v365;
  v315 = v366;
  v316 = v367;
  v310 = v361;
  v311 = v362;
  v313 = v364;
  v312 = v363;
  v317 = KeyPath;
  v318 = 1;
  *&v319[3] = *&v372[3];
  *v319 = *v372;
  v320 = v235;
  *&v321[3] = *&v371[3];
  *v321 = *v371;
  v322 = v171;
  v323 = v172;
  v324 = v173;
  v325 = v174;
  v326 = 0;
  *&v327[3] = *&v373[3];
  *v327 = *v373;
  v328 = 0x3FF0000000000000;
  sub_199A79A04(v306, &qword_1EAF74E08);
  return sub_199A79A04(v234, &qword_1EAF74DA0);
}

uint64_t sub_199B26B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = type metadata accessor for CNPosterOnboardingWelcomeView();
  v70 = *(v10 - 8);
  v11 = v70[8];
  v13 = *(MEMORY[0x1EEE9AC00](v10 - 8, v12) + 56);
  v71 = a2;
  v14 = (a2 + v13);
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v84) = v15;
  *(&v84 + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF986C();
  v74 = v92;
  v75 = v91;
  v81 = v93;
  v76 = v7;
  v77 = v6;
  v130 = v7;
  v131 = v6;
  v82 = v9;
  v83 = v8;
  v128 = v9;
  v129 = v8;
  v80 = v5;
  sub_199AAD408(&v131, &v91, &qword_1EAF72750);
  sub_199AAD408(&v130, &v91, &qword_1EAF72750);
  sub_199AAD408(&v129, &v91, &qword_1EAF72750);
  sub_199AAD408(&v128, &v91, &qword_1EAF72750);
  if (qword_1EAF719E8 != -1)
  {
    swift_once();
  }

  v79 = qword_1EAF86E70;
  v116 = 0;
  sub_199DF9B5C();
  sub_199DF897C();
  *&v117[54] = v124;
  *&v117[70] = v125;
  *&v117[86] = v126;
  *&v117[102] = v127;
  *&v117[6] = v121;
  *&v117[22] = v122;
  *&v117[38] = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_199E39320;
  v18 = sub_199DF919C();
  *(v17 + 32) = v18;
  v19 = sub_199DF91BC();
  *(v17 + 33) = v19;
  v20 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v18)
  {
    v20 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v19)
  {
    v20 = sub_199DF91AC();
  }

  if (qword_1EAF719B0 != -1)
  {
    swift_once();
  }

  v73 = v20;
  sub_199DF84FC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v118 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E20);
  v72 = &v66;
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8, v31);
  v33 = &v66 - v32;
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v78 = v33;
  if (IsReduceMotionEnabled || !UIAccessibilityIsVideoAutoplayEnabled())
  {
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E28);
    v68 = &v66;
    v38 = *(v67 - 8);
    MEMORY[0x1EEE9AC00](v67, v39);
    v69 = v30;
    v41 = &v66 - v40;
    sub_199B2A4D4(v71, &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v42 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v43 = swift_allocObject();
    v44 = sub_199B2A538(&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + v42);
    v70 = &v66;
    MEMORY[0x1EEE9AC00](v44, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E30);
    v33 = v78;
    sub_199AA0B90(&qword_1EAF74E38, &qword_1EAF74E30);
    sub_199DF989C();
    v46 = v41;
    v30 = v69;
    v47 = v67;
    (*(v38 + 32))(v33, v46, v67);
    v36 = (*(v38 + 56))(v33, 0, 1, v47);
  }

  else
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E28);
    v36 = (*(*(v35 - 8) + 56))(v33, 1, 1, v35);
  }

  v71 = &v66;
  MEMORY[0x1EEE9AC00](v36, v37);
  v48 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AAD408(v33, v48, &qword_1EAF74E20);
  v50 = v76;
  v49 = v77;
  *&v84 = v80;
  *(&v84 + 1) = v77;
  *&v85 = v76;
  *(&v85 + 1) = v83;
  v52 = v74;
  v51 = v75;
  *&v86 = v82;
  *(&v86 + 1) = v75;
  *&v87 = v74;
  BYTE8(v87) = v81;
  *(&v87 + 9) = *v120;
  HIDWORD(v87) = *&v120[3];
  *&v88[0] = v79;
  WORD4(v88[0]) = 0;
  *(&v88[3] + 10) = *&v117[48];
  *(&v88[2] + 10) = *&v117[32];
  *(&v88[1] + 10) = *&v117[16];
  *(v88 + 10) = *v117;
  *(&v88[7] + 1) = *&v117[110];
  *(&v88[6] + 10) = *&v117[96];
  *(&v88[5] + 10) = *&v117[80];
  *(&v88[4] + 10) = *&v117[64];
  v53 = v73;
  LOBYTE(v89) = v73;
  DWORD1(v89) = *&v119[3];
  *(&v89 + 1) = *v119;
  *(&v89 + 1) = v22;
  *&v90[0] = v24;
  *(&v90[0] + 1) = v26;
  *&v90[1] = v28;
  BYTE8(v90[1]) = 0;
  v54 = v85;
  *a3 = v84;
  a3[1] = v54;
  v55 = v86;
  v56 = v87;
  v57 = v88[1];
  a3[4] = v88[0];
  a3[5] = v57;
  a3[2] = v55;
  a3[3] = v56;
  v58 = v88[2];
  v59 = v88[3];
  v60 = v88[5];
  a3[8] = v88[4];
  a3[9] = v60;
  a3[6] = v58;
  a3[7] = v59;
  v61 = v88[6];
  v62 = v88[7];
  *(a3 + 217) = *(v90 + 9);
  v63 = v90[0];
  a3[12] = v89;
  a3[13] = v63;
  a3[10] = v61;
  a3[11] = v62;
  v64 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E40) + 48);
  sub_199AAD408(v48, v64, &qword_1EAF74E20);
  sub_199AAD408(&v84, &v91, &qword_1EAF74E48);
  sub_199A79A04(v78, &qword_1EAF74E20);
  sub_199A79A04(v48, &qword_1EAF74E20);
  v91 = v80;
  v92 = v49;
  v93 = v50;
  v94 = v83;
  v95 = v82;
  v96 = v51;
  v97 = v52;
  v98 = v81;
  *v99 = *v120;
  *&v99[3] = *&v120[3];
  v100 = v79;
  v101 = 0;
  v105 = *&v117[48];
  v104 = *&v117[32];
  v103 = *&v117[16];
  v102 = *v117;
  *&v108[14] = *&v117[110];
  *v108 = *&v117[96];
  v107 = *&v117[80];
  v106 = *&v117[64];
  v109 = v53;
  *&v110[3] = *&v119[3];
  *v110 = *v119;
  v111 = v22;
  v112 = v24;
  v113 = v26;
  v114 = v28;
  v115 = 0;
  return sub_199A79A04(&v91, &qword_1EAF74E48);
}

uint64_t sub_199B273E0()
{
  type metadata accessor for CNPosterOnboardingWelcomeView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF984C();
  sub_199DF985C();
}

uint64_t sub_199B2748C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for CNPosterOnboardingWelcomeView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  sub_199B2A4D4(a1, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  result = sub_199B2A538(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *a2 = sub_199B2ABC4;
  a2[1] = v11;
  return result;
}

uint64_t sub_199B27594@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_199DF8CFC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E50);
  return sub_199B2760C(a1, a2 + *(v4 + 44));
}

uint64_t sub_199B2760C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E58);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15 - v10;
  *v11 = sub_199DF8D4C();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E60);
  sub_199B27778(a1, &v11[*(v12 + 44)]);
  sub_199AAD408(v11, v8, &qword_1EAF74E58);
  *a2 = 0;
  *(a2 + 8) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E68);
  sub_199AAD408(v8, a2 + *(v13 + 48), &qword_1EAF74E58);
  sub_199A79A04(v11, &qword_1EAF74E58);
  return sub_199A79A04(v8, &qword_1EAF74E58);
}

uint64_t sub_199B27778@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v89 = a1;
  v102 = a2;
  v96 = sub_199DF884C();
  v94 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v2);
  v92 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E70);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v89 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E78);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v89 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E80);
  MEMORY[0x1EEE9AC00](v90, v14);
  v16 = &v89 - v15;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E88);
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v17);
  v19 = &v89 - v18;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E90);
  MEMORY[0x1EEE9AC00](v91, v20);
  v99 = &v89 - v21;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74E98);
  v23 = MEMORY[0x1EEE9AC00](v98, v22);
  v101 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v97 = &v89 - v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v100 = &v89 - v29;
  v30 = sub_199DF8F3C();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8FAC();
  sub_199DF86AC();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  (*(v31 + 8))(v34, v30);
  v105.origin.x = v36;
  v105.origin.y = v38;
  v105.size.width = v40;
  v105.size.height = v42;
  CGRectGetHeight(v105);
  v43 = (v89 + *(type metadata accessor for CNPosterOnboardingWelcomeView() + 48));
  v44 = *v43;
  v45 = *(v43 + 1);
  v103 = v44;
  v104 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF984C();
  v46 = sub_199DF97CC();
  v47 = (v8 + *(v5 + 44));
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74EA0) + 28);
  v49 = *MEMORY[0x1E69816E0];
  v50 = sub_199DF980C();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = swift_getKeyPath();
  *v8 = v46;
  v51 = sub_199DF91DC();
  KeyPath = swift_getKeyPath();
  sub_199AB7794(v8, v13, &qword_1EAF74E70);
  v53 = &v13[*(v10 + 44)];
  *v53 = KeyPath;
  v53[1] = v51;
  v54 = &v16[*(v90 + 36)];
  v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73800) + 28);
  sub_199DF8D7C();
  v56 = sub_199DF8D8C();
  (*(*(v56 - 8) + 56))(v54 + v55, 0, 1, v56);
  *v54 = swift_getKeyPath();
  sub_199AB7794(v13, v16, &qword_1EAF74E78);
  v57 = v94;
  v58 = v92;
  v59 = v96;
  (*(v94 + 104))(v92, *MEMORY[0x1E697E728], v96);
  sub_199B2AC48();
  sub_199DF94EC();
  (*(v57 + 8))(v58, v59);
  sub_199A79A04(v16, &qword_1EAF74E80);
  LOBYTE(v55) = sub_199DF91BC();
  v60 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v55)
  {
    v60 = sub_199DF91AC();
  }

  sub_199DF84FC();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v99;
  (*(v93 + 32))(v99, v19, v95);
  v70 = &v69[*(v91 + 36)];
  *v70 = v60;
  *(v70 + 1) = v62;
  *(v70 + 2) = v64;
  *(v70 + 3) = v66;
  *(v70 + 4) = v68;
  v70[40] = 0;
  v71 = sub_199DF918C();
  v72 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v71)
  {
    v72 = sub_199DF91AC();
  }

  sub_199DF84FC();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v69;
  v82 = v97;
  sub_199AB7794(v81, v97, &qword_1EAF74E90);
  v83 = v82 + *(v98 + 36);
  *v83 = v72;
  *(v83 + 8) = v74;
  *(v83 + 16) = v76;
  *(v83 + 24) = v78;
  *(v83 + 32) = v80;
  *(v83 + 40) = 0;
  v84 = v100;
  sub_199AB7794(v82, v100, &qword_1EAF74E98);
  v85 = v101;
  sub_199AAD408(v84, v101, &qword_1EAF74E98);
  v86 = v102;
  *v102 = 0;
  *(v86 + 8) = 1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74ED0);
  sub_199AAD408(v85, v86 + *(v87 + 48), &qword_1EAF74E98);
  sub_199A79A04(v84, &qword_1EAF74E98);
  return sub_199A79A04(v85, &qword_1EAF74E98);
}

uint64_t sub_199B27FEC@<X0>(_BYTE *a1@<X8>)
{
  v64 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74EE0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v56[-v3];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74EE8);
  v6 = MEMORY[0x1EEE9AC00](v60, v5);
  v63 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v56[-v10];
  MEMORY[0x1EEE9AC00](v9, v12);
  v58 = &v56[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73768);
  v61 = *(v14 - 8);
  v62 = v14;
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v57 = &v56[-v17];
  sub_199DF85FC();
  v59 = sub_199DF96FC();
  if (qword_1EAF719E8 != -1)
  {
    swift_once();
  }

  v18 = qword_1EAF86E70;
  sub_199DF9B5C();
  sub_199DF897C();
  v68 = 0;
  *&v67[54] = v72;
  *&v67[70] = v73;
  *&v67[86] = v74;
  *&v67[102] = v75;
  *&v67[6] = v69;
  *&v67[22] = v70;
  v19 = &v4[*(v1 + 36)];
  *&v67[38] = v71;
  v20 = *(sub_199DF896C() + 20);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_199DF8D1C();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  __asm { FMOV            V0.2D, #24.0 }

  *v19 = _Q0;
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C10) + 36)] = 256;
  v28 = *&v67[80];
  *(v4 + 90) = *&v67[64];
  *(v4 + 106) = v28;
  *(v4 + 122) = *&v67[96];
  v29 = *&v67[16];
  *(v4 + 26) = *v67;
  *(v4 + 42) = v29;
  v30 = *&v67[48];
  *(v4 + 58) = *&v67[32];
  *v4 = v59;
  *(v4 + 4) = 256;
  *(v4 + 10) = v65;
  *(v4 + 7) = v66;
  *(v4 + 2) = v18;
  *(v4 + 12) = 0;
  *(v4 + 17) = *&v67[110];
  *(v4 + 74) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  LOBYTE(v20) = sub_199DF919C();
  *(inited + 32) = v20;
  v32 = sub_199DF91BC();
  *(inited + 33) = v32;
  v33 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v20)
  {
    v33 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v32)
  {
    v33 = sub_199DF91AC();
  }

  if (qword_1EAF719B0 != -1)
  {
    swift_once();
  }

  sub_199DF84FC();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_199AB7794(v4, v11, &qword_1EAF74EE0);
  v42 = &v11[*(v60 + 9)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  v43 = v58;
  v44 = sub_199AB7794(v11, v58, &qword_1EAF74EE8);
  v60 = v56;
  MEMORY[0x1EEE9AC00](v44, v45);
  v46 = &v56[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = v61;
  v48 = v62;
  v49 = *(v61 + 16);
  v50 = v57;
  v49(v46, v57, v62);
  v51 = v63;
  sub_199AAD408(v43, v63, &qword_1EAF74EE8);
  v52 = v64;
  v49(v64, v46, v48);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74EF0);
  sub_199AAD408(v51, &v52[*(v53 + 48)], &qword_1EAF74EE8);
  sub_199A79A04(v43, &qword_1EAF74EE8);
  v54 = *(v47 + 8);
  v54(v50, v48);
  sub_199A79A04(v51, &qword_1EAF74EE8);
  return (v54)(v46, v48);
}