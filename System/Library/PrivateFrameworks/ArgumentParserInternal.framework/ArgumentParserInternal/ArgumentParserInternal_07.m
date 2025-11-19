uint64_t sub_24103FC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000024104F600 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_241047428();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24103FCB4(uint64_t a1)
{
  v2 = sub_241042E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24103FCF0(uint64_t a1)
{
  v2 = sub_241042E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToolInfoHeader.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F9A0, &qword_24104D0D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241042E40();
  sub_241047628();
  if (!v2)
  {
    v11 = sub_2410472A8();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ToolInfoV0.command.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v4 = *(v1 + 72);
  v10 = *(v1 + 56);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 88);
  v6 = *(v1 + 24);
  v9[0] = *(v1 + 8);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_241033B5C(v9, v8);
}

__n128 ToolInfoV0.command.setter(uint64_t a1)
{
  v3 = *(v1 + 56);
  v8[2] = *(v1 + 40);
  v8[3] = v3;
  v8[4] = *(v1 + 72);
  v9 = *(v1 + 88);
  v4 = *(v1 + 24);
  v8[0] = *(v1 + 8);
  v8[1] = v4;
  sub_241033BB8(v8);
  v5 = *(a1 + 48);
  *(v1 + 40) = *(a1 + 32);
  *(v1 + 56) = v5;
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v7;
  return result;
}

unint64_t sub_24103FFD4()
{
  if (*v0)
  {
    result = 0x646E616D6D6F63;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_241040014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000024104F600 == a2 || (sub_241047428() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_241047428();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2410400FC(uint64_t a1)
{
  v2 = sub_241045480();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241040138(uint64_t a1)
{
  v2 = sub_241045480();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToolInfoV0.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F9B0, &qword_24104D0D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v9 = *v1;
  v10 = *(v1 + 7);
  v28 = *(v1 + 5);
  v29 = v10;
  v30 = *(v1 + 9);
  v31 = v1[11];
  v11 = *(v1 + 3);
  v26 = *(v1 + 1);
  v27 = v11;
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v12);
  sub_241045480();
  sub_241047638();
  LOBYTE(v20) = 0;
  sub_241047328();
  if (!v2)
  {
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v20 = v26;
    v21 = v27;
    v32 = 1;
    sub_241033B5C(&v26, v18);
    sub_2410454D4();
    sub_241047338();
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v19 = v25;
    v18[0] = v20;
    v18[1] = v21;
    sub_241033BB8(v18);
  }

  return (*(v5 + 8))(v8, v16);
}

uint64_t ToolInfoV0.hash(into:)(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x245CD7AE0](*v2);
  return CommandInfoV0.hash(into:)(a1);
}

uint64_t ToolInfoV0.hashValue.getter()
{
  v1 = *v0;
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v1);
  CommandInfoV0.hash(into:)(v3);
  return sub_2410475E8();
}

uint64_t ToolInfoV0.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F9C8, &qword_24104D0E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241045480();
  sub_241047628();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v10 = v5;
  v11 = v38;
  LOBYTE(v18) = 0;
  v12 = sub_2410472A8();
  v25 = 1;
  sub_241045528();
  sub_2410472B8();
  (*(v10 + 8))(v8, v4);
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v37 = v31;
  v32 = v26;
  v33 = v27;
  *&v17[0] = v12;
  *(v17 + 8) = v26;
  *(&v17[1] + 8) = v27;
  *(&v17[4] + 8) = v30;
  *(&v17[5] + 1) = v31;
  *(&v17[3] + 8) = v29;
  *(&v17[2] + 8) = v28;
  v13 = v17[5];
  v11[4] = v17[4];
  v11[5] = v13;
  v14 = v17[3];
  v11[2] = v17[2];
  v11[3] = v14;
  v15 = v17[1];
  *v11 = v17[0];
  v11[1] = v15;
  sub_240FF78E4(v17, &v18);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v18 = v12;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v19 = v32;
  v20 = v33;
  return sub_240FF7C6C(&v18);
}

uint64_t sub_2410406C4()
{
  v1 = *v0;
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v1);
  CommandInfoV0.hash(into:)(v3);
  return sub_2410475E8();
}

uint64_t sub_241040724(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x245CD7AE0](*v2);
  return CommandInfoV0.hash(into:)(a1);
}

uint64_t sub_24104075C()
{
  v1 = *v0;
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v1);
  CommandInfoV0.hash(into:)(v3);
  return sub_2410475E8();
}

uint64_t CommandInfoV0.superCommands.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CommandInfoV0.commandName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t CommandInfoV0.commandName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CommandInfoV0.abstract.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t CommandInfoV0.abstract.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t CommandInfoV0.discussion.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t CommandInfoV0.discussion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t CommandInfoV0.defaultSubcommand.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t CommandInfoV0.defaultSubcommand.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t CommandInfoV0.subcommands.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t CommandInfoV0.arguments.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_241040AD8()
{
  v1 = *v0;
  v2 = 0x6D6F437265707573;
  v3 = 0x616D6D6F63627573;
  if (v1 != 5)
  {
    v3 = 0x746E656D75677261;
  }

  v4 = 0x6973737563736964;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x4E646E616D6D6F63;
  if (v1 != 1)
  {
    v5 = 0x7463617274736261;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_241040BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_241044748(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_241040C10(uint64_t a1)
{
  v2 = sub_24104557C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241040C4C(uint64_t a1)
{
  v2 = sub_24104557C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CommandInfoV0.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F9D8, &unk_24104D0E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v27 = v1[2];
  v28 = v9;
  v12 = v1[5];
  v25 = v1[4];
  v26 = v11;
  v13 = v1[7];
  v23 = v1[6];
  v24 = v12;
  v14 = v1[8];
  v15 = v1[9];
  v21 = v13;
  v22 = v14;
  v19 = v1[10];
  v20 = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24104557C();

  sub_241047638();
  v30 = v10;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_24104572C(&qword_27E51F9E8);
  sub_2410472F8();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v30) = 1;
    sub_241047308();
    LOBYTE(v30) = 2;
    sub_2410472E8();
    LOBYTE(v30) = 3;
    sub_2410472E8();
    LOBYTE(v30) = 4;
    sub_2410472E8();
    v30 = v20;
    v29 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F9F0, &qword_24104D0F8);
    sub_2410455D0();
    sub_2410472F8();
    v30 = v19;
    v29 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51FA00, &qword_24104D100);
    sub_241045654();
    sub_2410472F8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t CommandInfoV0.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[4];
  v39 = v1[3];
  v40 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = v1[9];
  v41 = v1[8];
  v42 = v1[10];
  if (*v1)
  {
    sub_2410475C8();
    MEMORY[0x245CD7AE0](*(v3 + 16));
    v10 = *(v3 + 16);
    if (v10)
    {
      v11 = (v3 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;

        sub_241046A88();

        v11 += 2;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    sub_2410475C8();
  }

  sub_241046A88();
  if (v6)
  {
    sub_2410475C8();
    sub_241046A88();
    v14 = v41;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_2410475C8();
    v14 = v41;
    if (v8)
    {
LABEL_9:
      sub_2410475C8();
      sub_241046A88();
      if (v14)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  sub_2410475C8();
  if (v14)
  {
LABEL_10:
    sub_2410475C8();
    sub_241046A88();
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  sub_2410475C8();
  if (v9)
  {
LABEL_11:
    sub_2410475C8();
    MEMORY[0x245CD7AE0](*(v9 + 16));
    v15 = *(v9 + 16);
    if (v15)
    {
      v16 = (v9 + 32);
      do
      {
        v17 = v16[1];
        v43 = *v16;
        v44 = v17;
        v18 = v16[2];
        v19 = v16[3];
        v20 = v16[4];
        *&v48 = *(v16 + 10);
        v46 = v19;
        v47 = v20;
        v45 = v18;
        v21 = v16[1];
        v61 = *v16;
        v62 = v21;
        v22 = v16[2];
        v23 = v16[3];
        v24 = v16[4];
        *&v66 = *(v16 + 10);
        v64 = v23;
        v65 = v24;
        v63 = v22;
        sub_241033B5C(&v43, &v52);
        CommandInfoV0.hash(into:)(a1);
        v54 = v63;
        v55 = v64;
        v56 = v65;
        *&v57 = v66;
        v52 = v61;
        v53 = v62;
        sub_241033BB8(&v52);
        v16 = (v16 + 88);
        --v15;
      }

      while (v15);
    }

    v25 = v42;
    if (v42)
    {
      goto LABEL_15;
    }

    return sub_2410475C8();
  }

LABEL_22:
  sub_2410475C8();
  v25 = v42;
  if (!v42)
  {
    return sub_2410475C8();
  }

LABEL_15:
  sub_2410475C8();
  result = MEMORY[0x245CD7AE0](*(v25 + 16));
  v27 = *(v25 + 16);
  if (v27)
  {
    v28 = (v25 + 32);
    do
    {
      v43 = *v28;
      v29 = v28[1];
      v30 = v28[2];
      v31 = v28[4];
      v46 = v28[3];
      v47 = v31;
      v44 = v29;
      v45 = v30;
      v32 = v28[5];
      v33 = v28[6];
      v34 = v28[7];
      v51 = *(v28 + 16);
      v49 = v33;
      v50 = v34;
      v48 = v32;
      v35 = v28[7];
      v67 = v28[6];
      v68 = v35;
      v69 = *(v28 + 16);
      v36 = v28[3];
      v63 = v28[2];
      v64 = v36;
      v37 = v28[5];
      v65 = v28[4];
      v66 = v37;
      v38 = v28[1];
      v61 = *v28;
      v62 = v38;
      sub_241033E34(&v43, &v52);
      ArgumentInfoV0.hash(into:)(a1);
      v58 = v67;
      v59 = v68;
      v60 = v69;
      v54 = v63;
      v55 = v64;
      v56 = v65;
      v57 = v66;
      v52 = v61;
      v53 = v62;
      result = sub_241033E90(&v52);
      v28 = (v28 + 136);
      --v27;
    }

    while (v27);
  }

  return result;
}

uint64_t CommandInfoV0.hashValue.getter()
{
  sub_2410475A8();
  CommandInfoV0.hash(into:)(v1);
  return sub_2410475E8();
}

uint64_t CommandInfoV0.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51FA18, &qword_24104D108);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24104557C();
  sub_241047628();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    LOBYTE(v37) = 0;
    sub_24104572C(&qword_27E51F5A8);
    sub_241047278();
    v35 = v43[0];
    LOBYTE(v43[0]) = 1;
    v11 = sub_241047288();
    v36 = v12;
    LOBYTE(v43[0]) = 2;
    v33 = sub_241047268();
    v34 = v13;
    LOBYTE(v43[0]) = 3;
    v14 = sub_241047268();
    v16 = v15;
    v32 = v14;
    v31 = a2;
    LOBYTE(v43[0]) = 4;
    v17 = sub_241047268();
    v19 = v18;
    v30 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F9F0, &qword_24104D0F8);
    LOBYTE(v37) = 5;
    sub_241045798();
    sub_241047278();
    v29 = v11;
    v20 = v43[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51FA00, &qword_24104D100);
    v44 = 6;
    sub_24104581C();
    sub_241047278();
    (*(v6 + 8))(v9, v5);
    v21 = v45;
    v22 = v35;
    *&v37 = v35;
    *(&v37 + 1) = v29;
    v23 = v36;
    *&v38 = v36;
    *(&v38 + 1) = v33;
    v24 = v34;
    *&v39 = v34;
    *(&v39 + 1) = v32;
    *&v40 = v16;
    *(&v40 + 1) = v30;
    *&v41 = v19;
    *(&v41 + 1) = v20;
    v42 = v45;
    v25 = v31;
    *(v31 + 80) = v45;
    v26 = v40;
    v25[2] = v39;
    v25[3] = v26;
    v25[4] = v41;
    v27 = v38;
    *v25 = v37;
    v25[1] = v27;
    sub_241033B5C(&v37, v43);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v43[0] = v22;
    v43[1] = v29;
    v43[2] = v23;
    v43[3] = v33;
    v43[4] = v24;
    v43[5] = v32;
    v43[6] = v16;
    v43[7] = v30;
    v43[8] = v19;
    v43[9] = v20;
    v43[10] = v21;
    return sub_241033BB8(v43);
  }
}

uint64_t sub_2410418D0()
{
  sub_2410475A8();
  CommandInfoV0.hash(into:)(v1);
  return sub_2410475E8();
}

uint64_t sub_241041914()
{
  sub_2410475A8();
  CommandInfoV0.hash(into:)(v1);
  return sub_2410475E8();
}

ArgumentParserInternal::ArgumentInfoV0::NameInfoV0::KindV0_optional __swiftcall ArgumentInfoV0.NameInfoV0.KindV0.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_241047258();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ArgumentInfoV0.NameInfoV0.KindV0.rawValue.getter()
{
  v1 = 0x74726F6873;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1735290732;
  }
}

uint64_t sub_241041A04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x74726F6873;
  v5 = 0x800000024104DDA0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000024104DDA0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1735290732;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x74726F6873;
  if (*a2 == 1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1735290732;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_241047428();
  }

  return v11 & 1;
}

void sub_241041AFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x74726F6873;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x800000024104DDA0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1735290732;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_241041C04()
{
  v1 = *v0;
  sub_2410475A8();
  sub_241046A88();

  return sub_2410475E8();
}

uint64_t sub_241041CA0()
{
  *v0;
  *v0;
  sub_241046A88();
}

uint64_t sub_241041D28()
{
  v1 = *v0;
  sub_2410475A8();
  sub_241046A88();

  return sub_2410475E8();
}

uint64_t ArgumentInfoV0.NameInfoV0.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ArgumentInfoV0.NameInfoV0.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_241041E84()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_241041EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v5 || (sub_241047428() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_241047428();

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

uint64_t sub_241041F84(uint64_t a1)
{
  v2 = sub_2410458F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241041FC0(uint64_t a1)
{
  v2 = sub_2410458F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArgumentInfoV0.NameInfoV0.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51FA38, &qword_24104D110);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410458F4();
  sub_241047638();
  v16 = v9;
  v15 = 0;
  sub_241045948();
  sub_241047338();
  if (!v2)
  {
    v14 = 1;
    sub_241047308();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ArgumentInfoV0.NameInfoV0.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_241046A88();

  return sub_241046A88();
}

uint64_t ArgumentInfoV0.NameInfoV0.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_2410475A8();
  sub_241046A88();

  sub_241046A88();
  return sub_2410475E8();
}

uint64_t ArgumentInfoV0.NameInfoV0.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51FA50, &qword_24104D118);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410458F4();
  sub_241047628();
  if (!v2)
  {
    v18 = 0;
    sub_24104599C();
    sub_2410472B8();
    v11 = v19;
    v17 = 1;
    v13 = sub_241047288();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_2410424F4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_241046A88();

  return sub_241046A88();
}

uint64_t sub_24104259C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_2410475A8();
  sub_241046A88();

  sub_241046A88();
  return sub_2410475E8();
}

ArgumentParserInternal::ArgumentInfoV0::KindV0_optional __swiftcall ArgumentInfoV0.KindV0.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_241047258();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ArgumentInfoV0.KindV0.rawValue.getter()
{
  v1 = 0x6E6F6974706FLL;
  if (*v0 != 1)
  {
    v1 = 1734437990;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697469736F70;
  }
}

uint64_t sub_241042704(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F6974706FLL;
  if (v2 != 1)
  {
    v4 = 1734437990;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E6F697469736F70;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006C61;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6E6F6974706FLL;
  if (*a2 != 1)
  {
    v8 = 1734437990;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F697469736F70;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_241047428();
  }

  return v11 & 1;
}

void sub_2410427FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006C61;
  v4 = 0xE600000000000000;
  v5 = 0x6E6F6974706FLL;
  if (v2 != 1)
  {
    v5 = 1734437990;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F697469736F70;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_241042904()
{
  v1 = *v0;
  sub_2410475A8();
  sub_241046A88();

  return sub_2410475E8();
}

uint64_t sub_2410429A0()
{
  *v0;
  *v0;
  sub_241046A88();
}

uint64_t sub_241042A28()
{
  v1 = *v0;
  sub_2410475A8();
  sub_241046A88();

  return sub_2410475E8();
}

uint64_t ArgumentInfoV0.sectionTitle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ArgumentInfoV0.sectionTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ArgumentInfoV0.names.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ArgumentInfoV0.preferredName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v2;
}

__n128 ArgumentInfoV0.preferredName.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *(v1 + 56);

  result = v5;
  *(v1 + 40) = v5;
  *(v1 + 56) = v2;
  return result;
}

uint64_t ArgumentInfoV0.valueName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ArgumentInfoV0.valueName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ArgumentInfoV0.defaultValue.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ArgumentInfoV0.defaultValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t ArgumentInfoV0.allValueStrings.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

unint64_t sub_241042E40()
{
  result = qword_27E51F9A8;
  if (!qword_27E51F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F9A8);
  }

  return result;
}

uint64_t (*ArgumentInfoV0.allValueStrings.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 96);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_241042EE4;
}

uint64_t sub_241042EE4(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *(v3 + 96) = v4;
  }

  else
  {
    v7 = a1[2];

    *(v3 + 96) = v4;
  }

  return result;
}

uint64_t ArgumentInfoV0.abstract.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t ArgumentInfoV0.abstract.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t ArgumentInfoV0.discussion.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t ArgumentInfoV0.discussion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 128);

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t sub_24104306C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x65756C61566C6C61;
    v7 = 0x7463617274736261;
    if (a1 != 10)
    {
      v7 = 0x6973737563736964;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6572726566657270;
    v9 = 0x6D614E65756C6176;
    if (a1 != 7)
    {
      v9 = 0x56746C7561666564;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1684957547;
    v2 = 0x6E6F6974704F7369;
    v3 = 0x7461657065527369;
    if (a1 != 4)
    {
      v3 = 0x73656D616ELL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6944646C756F6873;
    if (a1 != 1)
    {
      v4 = 0x546E6F6974636573;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_241043230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_241044354(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_241043264(uint64_t a1)
{
  v2 = sub_2410459F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410432A0(uint64_t a1)
{
  v2 = sub_2410459F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArgumentInfoV0.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51FA60, &qword_24104D120);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - v6;
  v8 = *v1;
  v41 = v1[1];
  v9 = *(v1 + 1);
  v35 = *(v1 + 2);
  v36 = v9;
  LODWORD(v9) = v1[24];
  v33 = v1[25];
  v34 = v9;
  v10 = *(v1 + 4);
  v12 = *(v1 + 6);
  v11 = *(v1 + 7);
  v29 = *(v1 + 5);
  v30 = v12;
  v31 = v11;
  v32 = v10;
  v13 = *(v1 + 9);
  v27 = *(v1 + 8);
  v28 = v13;
  v14 = *(v1 + 11);
  v25 = *(v1 + 10);
  v26 = v14;
  v15 = *(v1 + 12);
  v16 = *(v1 + 13);
  v17 = *(v1 + 15);
  v23[2] = *(v1 + 14);
  v24 = v15;
  v23[0] = v17;
  v23[1] = v16;
  v18 = *(v1 + 16);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410459F0();
  sub_241047638();
  LOBYTE(v38) = v8;
  v42 = 0;
  sub_241045A44();
  v20 = v37;
  sub_241047338();
  if (!v20)
  {
    v21 = v32;
    v37 = v18;
    LOBYTE(v38) = 1;
    sub_241047318();
    LOBYTE(v38) = 2;
    sub_2410472E8();
    LOBYTE(v38) = 3;
    sub_241047318();
    LOBYTE(v38) = 4;
    sub_241047318();
    v38 = v21;
    v42 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51FA78, &qword_24104D128);
    sub_241045A98();
    sub_2410472F8();
    v38 = v29;
    v39 = v30;
    v40 = v31;
    v42 = 6;
    sub_241045B1C();

    sub_2410472F8();

    LOBYTE(v38) = 7;
    sub_2410472E8();
    LOBYTE(v38) = 8;
    sub_2410472E8();
    v38 = v24;
    v42 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_24104572C(&qword_27E51F9E8);
    sub_2410472F8();
    LOBYTE(v38) = 10;
    sub_2410472E8();
    LOBYTE(v38) = 11;
    sub_2410472E8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ArgumentInfoV0.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 16);
  v22 = *(v1 + 24);
  v23 = *(v1 + 25);
  v4 = *(v1 + 32);
  v15 = *(v1 + 8);
  v16 = *(v1 + 40);
  v5 = *(v1 + 56);
  v6 = *(v1 + 72);
  v17 = *(v1 + 48);
  v18 = *(v1 + 64);
  v7 = *(v1 + 88);
  v19 = *(v1 + 80);
  v8 = *(v1 + 96);
  *v1;
  v20 = *(v1 + 104);
  v21 = *(v1 + 120);
  v24 = *(v1 + 112);
  v25 = *(v1 + 128);
  sub_241046A88();

  sub_2410475C8();
  sub_2410475C8();
  if (v3)
  {
    sub_241046A88();
  }

  sub_2410475C8();
  sub_2410475C8();
  if (!v4)
  {
    sub_2410475C8();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_7:
    sub_2410475C8();
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_8:
    sub_2410475C8();
    if (v7)
    {
      goto LABEL_13;
    }

LABEL_9:
    sub_2410475C8();
    if (v8)
    {
      goto LABEL_14;
    }

LABEL_10:
    sub_2410475C8();
    goto LABEL_17;
  }

  sub_2410475C8();
  sub_241044264(a1, v4);
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_2410475C8();
  sub_241046A88();

  sub_241046A88();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_12:
  sub_2410475C8();
  sub_241046A88();
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_13:
  sub_2410475C8();
  sub_241046A88();
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_14:
  sub_2410475C8();
  MEMORY[0x245CD7AE0](*(v8 + 16));
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = (v8 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      sub_241046A88();

      v11 += 2;
      --v10;
    }

    while (v10);
  }

LABEL_17:
  if (!v24)
  {
    sub_2410475C8();
    if (v25)
    {
      goto LABEL_19;
    }

    return sub_2410475C8();
  }

  sub_2410475C8();
  sub_241046A88();
  if (!v25)
  {
    return sub_2410475C8();
  }

LABEL_19:
  sub_2410475C8();

  return sub_241046A88();
}

uint64_t ArgumentInfoV0.hashValue.getter()
{
  sub_2410475A8();
  ArgumentInfoV0.hash(into:)(v1);
  return sub_2410475E8();
}

uint64_t ArgumentInfoV0.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51FA90, &qword_24104D130);
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v50);
  v8 = &v32 - v7;
  v9 = a1[3];
  v10 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2410459F0();
  sub_241047628();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  else
  {
    LOBYTE(v52) = 0;
    sub_241045B70();
    sub_2410472B8();
    v11 = v61;
    LOBYTE(v61) = 1;
    v12 = sub_241047298();
    LOBYTE(v61) = 2;
    v48 = sub_241047268();
    v49 = v13;
    LOBYTE(v61) = 3;
    v79 = sub_241047298();
    LOBYTE(v61) = 4;
    v47 = sub_241047298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51FA78, &qword_24104D128);
    LOBYTE(v52) = 5;
    sub_241045BC4();
    sub_241047278();
    v46 = v61;
    LOBYTE(v52) = 6;
    sub_241045C48();
    sub_241047278();
    v43 = v62;
    v44 = v61;
    v45 = v63;

    LOBYTE(v61) = 7;
    v39 = sub_241047268();
    v41 = v5;
    v42 = v14;
    LOBYTE(v61) = 8;
    v15 = sub_241047268();
    v40 = v16;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    LOBYTE(v52) = 9;
    sub_24104572C(&qword_27E51F5A8);
    sub_241047278();
    v38 = v61;
    LOBYTE(v61) = 10;
    v37 = sub_241047268();
    v19 = v18;
    v80 = 11;
    v35 = sub_241047268();
    v36 = v20;
    v21 = v12 & 1;
    v34 = v21;
    v22 = v79 & 1;
    v33 = v79 & 1;
    v79 = v47 & 1;
    (*(v41 + 8))(v8, v50);
    HIDWORD(v32) = v11;
    LOBYTE(v52) = v11;
    BYTE1(v52) = v21;
    v23 = v49;
    *(&v52 + 1) = v48;
    *&v53 = v49;
    BYTE8(v53) = v22;
    BYTE9(v53) = v79;
    *&v54 = v46;
    *(&v54 + 1) = v44;
    *&v55 = v43;
    *(&v55 + 1) = v45;
    v24 = v40;
    *&v56 = v39;
    *(&v56 + 1) = v42;
    *&v57 = v17;
    *(&v57 + 1) = v40;
    *&v58 = v38;
    *(&v58 + 1) = v37;
    v25 = v35;
    v26 = v36;
    *&v59 = v19;
    *(&v59 + 1) = v35;
    v60 = v36;
    *(a2 + 128) = v36;
    v27 = v53;
    *a2 = v52;
    *(a2 + 16) = v27;
    v28 = v59;
    *(a2 + 96) = v58;
    *(a2 + 112) = v28;
    v29 = v57;
    *(a2 + 64) = v56;
    *(a2 + 80) = v29;
    v30 = v55;
    *(a2 + 32) = v54;
    *(a2 + 48) = v30;
    sub_241033E34(&v52, &v61);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    LOBYTE(v61) = BYTE4(v32);
    BYTE1(v61) = v34;
    v62 = v48;
    v63 = v23;
    v64 = v33;
    v65 = v79;
    v66 = v46;
    v67 = v44;
    v68 = v43;
    v69 = v45;
    v70 = v39;
    v71 = v42;
    v72 = v17;
    v73 = v24;
    v74 = v38;
    v75 = v37;
    v76 = v19;
    v77 = v25;
    v78 = v26;
    return sub_241033E90(&v61);
  }
}

uint64_t sub_2410441E0()
{
  sub_2410475A8();
  ArgumentInfoV0.hash(into:)(v1);
  return sub_2410475E8();
}

uint64_t sub_241044224()
{
  sub_2410475A8();
  ArgumentInfoV0.hash(into:)(v1);
  return sub_2410475E8();
}

uint64_t sub_241044264(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245CD7AE0](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *(v5 - 16);
      v8 = *(v5 - 1);
      v7 = *v5;

      sub_241046A88();

      sub_241046A88();

      v5 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_241044354(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_241047428() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6944646C756F6873 && a2 == 0xED000079616C7073 || (sub_241047428() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546E6F6974636573 && a2 == 0xEC000000656C7469 || (sub_241047428() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6974704F7369 && a2 == 0xEA00000000006C61 || (sub_241047428() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461657065527369 && a2 == 0xEB00000000676E69 || (sub_241047428() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73656D616ELL && a2 == 0xE500000000000000 || (sub_241047428() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6572726566657270 && a2 == 0xED0000656D614E64 || (sub_241047428() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D614E65756C6176 && a2 == 0xE900000000000065 || (sub_241047428() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x56746C7561666564 && a2 == 0xEC00000065756C61 || (sub_241047428() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65756C61566C6C61 && a2 == 0xE900000000000073 || (sub_241047428() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7463617274736261 && a2 == 0xE800000000000000 || (sub_241047428() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6973737563736964 && a2 == 0xEA00000000006E6FLL)
  {

    return 11;
  }

  else
  {
    v6 = sub_241047428();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_241044748(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F437265707573 && a2 == 0xED000073646E616DLL;
  if (v4 || (sub_241047428() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E646E616D6D6F63 && a2 == 0xEB00000000656D61 || (sub_241047428() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463617274736261 && a2 == 0xE800000000000000 || (sub_241047428() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6973737563736964 && a2 == 0xEA00000000006E6FLL || (sub_241047428() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024104F620 == a2 || (sub_241047428() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616D6D6F63627573 && a2 == 0xEB0000000073646ELL || (sub_241047428() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073)
  {

    return 6;
  }

  else
  {
    v6 = sub_241047428();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t _s22ArgumentParserInternal0A6InfoV0V04NamedE0V2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = 0xE500000000000000;
  v8 = 0x74726F6873;
  v9 = 0x800000024104DDA0;
  if (v2 != 1)
  {
    v8 = 0xD000000000000012;
    v7 = 0x800000024104DDA0;
  }

  if (*a1)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1735290732;
  }

  if (v2)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  v12 = 0x74726F6873;
  if (*a2 == 1)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xD000000000000012;
  }

  if (*a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1735290732;
  }

  if (*a2)
  {
    v14 = v9;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  if (v10 == v13 && v11 == v14)
  {
  }

  else
  {
    v15 = sub_241047428();

    result = 0;
    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return sub_241047428();
}

BOOL _s22ArgumentParserInternal0A6InfoV0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = 0xEA00000000006C61;
  v3 = 0x6E6F697469736F70;
  if (*a1)
  {
    if (*a1 == 1)
    {
      v4 = 0xE600000000000000;
      v5 = 0x6E6F6974706FLL;
      if (!*a2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = 0xE400000000000000;
      v5 = 1734437990;
      if (!*a2)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v5 = 0x6E6F697469736F70;
    v4 = 0xEA00000000006C61;
    if (!*a2)
    {
      goto LABEL_11;
    }
  }

  if (*a2 == 1)
  {
    v2 = 0xE600000000000000;
    v3 = 0x6E6F6974706FLL;
  }

  else
  {
    v2 = 0xE400000000000000;
    v3 = 1734437990;
  }

LABEL_11:
  v53 = *(a1 + 8);
  v60 = *(a1 + 16);
  v45 = *(a1 + 48);
  v50 = *(a1 + 56);
  v41 = *(a1 + 64);
  v47 = *(a1 + 72);
  v36 = *(a1 + 80);
  v43 = *(a1 + 88);
  v6 = *(a1 + 112);
  v7 = *(a1 + 120);
  v8 = *(a1 + 128);
  v52 = *(a2 + 8);
  v59 = *(a2 + 16);
  v44 = *(a2 + 48);
  v51 = *(a2 + 56);
  v46 = *(a2 + 72);
  v9 = *(a2 + 80);
  v39 = v9;
  v40 = *(a2 + 64);
  v42 = *(a2 + 88);
  v10 = *(a2 + 120);
  v35 = *(a2 + 112);
  v11 = *(a2 + 128);
  v12 = *(a1 + 1);
  v58 = *(a1 + 24);
  v56 = *(a1 + 25);
  v48 = *(a1 + 40);
  v54 = *(a1 + 32);
  v33 = *(a1 + 104);
  v38 = *(a1 + 96);
  v13 = *(a2 + 1);
  v57 = *(a2 + 24);
  v55 = *(a2 + 25);
  v14 = *(a2 + 32);
  v49 = *(a2 + 40);
  v34 = *(a2 + 104);
  v37 = *(a2 + 96);
  if (v5 == v3 && v4 == v2)
  {

    if (v12 != v13)
    {
      return 0;
    }

LABEL_17:
    if (v60)
    {
      if (!v59)
      {
        return 0;
      }

      if (v53 == v52 && v60 == v59)
      {
        result = 0;
        if (v58 != v57)
        {
          return result;
        }

        goto LABEL_27;
      }

      v22 = sub_241047428();
      result = 0;
      if ((v22 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v59)
      {
        return result;
      }
    }

    if ((v58 ^ v57))
    {
      return result;
    }

LABEL_27:
    if ((v56 ^ v55))
    {
      return result;
    }

    if (v54)
    {
      if (!v14)
      {
        return 0;
      }

      v23 = sub_24102F95C(v54, v14);

      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v14)
    {
      return 0;
    }

    if (v50)
    {
      if (v51)
      {
        v24 = 1735290732;
        if (v48)
        {
          if (v48 == 1)
          {
            v25 = 0x74726F6873;
          }

          else
          {
            v25 = 0xD000000000000012;
          }

          if (v48 == 1)
          {
            v26 = 0xE500000000000000;
          }

          else
          {
            v26 = 0x800000024104DDA0;
          }
        }

        else
        {
          v26 = 0xE400000000000000;
          v25 = 1735290732;
        }

        v27 = v11;
        if (v49)
        {
          if (v49 == 1)
          {
            v24 = 0x74726F6873;
          }

          else
          {
            v24 = 0xD000000000000012;
          }

          if (v49 == 1)
          {
            v28 = 0xE500000000000000;
          }

          else
          {
            v28 = 0x800000024104DDA0;
          }
        }

        else
        {
          v28 = 0xE400000000000000;
        }

        v29 = v8;
        if (v25 == v24 && v26 == v28)
        {
          swift_bridgeObjectRetain_n();

LABEL_61:
          if (v45 == v44 && v50 == v51)
          {
            swift_bridgeObjectRelease_n();

            v8 = v29;
            v11 = v27;
          }

          else
          {
            v31 = sub_241047428();
            swift_bridgeObjectRelease_n();

            v8 = v29;
            v11 = v27;
            if ((v31 & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_65;
        }

        v30 = sub_241047428();
        swift_bridgeObjectRetain_n();

        if (v30)
        {
          goto LABEL_61;
        }

        swift_bridgeObjectRelease_n();
LABEL_44:

        return 0;
      }
    }

    else if (!v51)
    {

LABEL_65:
      if (v47)
      {
        if (!v46 || (v41 != v40 || v47 != v46) && (sub_241047428() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v46)
      {
        return 0;
      }

      if (v43)
      {
        if (!v42 || (v36 != v39 || v43 != v42) && (sub_241047428() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v42)
      {
        return 0;
      }

      if (v38)
      {
        if (!v37 || (sub_24102F200(v38, v37) & 1) == 0)
        {
          return 0;
        }
      }

      else if (v37)
      {
        return 0;
      }

      if (v6)
      {
        if (!v35 || (v33 != v34 || v6 != v35) && (sub_241047428() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v35)
      {
        return 0;
      }

      if (v8)
      {
        return v11 && (v7 == v10 && v8 == v11 || (sub_241047428() & 1) != 0);
      }

      return !v11;
    }

    goto LABEL_44;
  }

  v32 = *(a2 + 32);
  v15 = *(a1 + 112);
  v16 = *(a2 + 120);
  v17 = *(a2 + 128);
  v18 = *(a1 + 128);
  v19 = *(a1 + 120);
  v20 = sub_241047428();

  result = 0;
  if (v20)
  {
    v7 = v19;
    v8 = v18;
    v11 = v17;
    v10 = v16;
    v6 = v15;
    v14 = v32;
    if (((v12 ^ v13) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t _s22ArgumentParserInternal13CommandInfoV0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v6 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[6];
  v22 = a1[7];
  v28 = a1[8];
  v20 = a1[10];
  v10 = *a2;
  v12 = a2[1];
  v11 = a2[2];
  v14 = a2[3];
  v13 = a2[4];
  v15 = a2[6];
  v25 = a2[5];
  v26 = a1[5];
  v21 = a2[7];
  v27 = a2[8];
  v23 = a2[9];
  v24 = a1[9];
  v19 = a2[10];
  if (v4)
  {
    if (!v10 || (sub_24102F200(v4, v10) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if ((v6 != v12 || v5 != v11) && (sub_241047428() & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    if (!v13 || (v7 != v14 || v8 != v13) && (sub_241047428() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v9)
  {
    if (!v15 || (v26 != v25 || v9 != v15) && (sub_241047428() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v28)
  {
    if (!v27 || (v22 != v21 || v28 != v27) && (sub_241047428() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  if (v24)
  {
    if (!v23)
    {
      return 0;
    }

    v16 = sub_24102F624(v24, v23);

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v20)
  {
    if (v19)
    {

      v17 = sub_24102F794(v20, v19);

      if (v17)
      {
        return 1;
      }
    }
  }

  else if (!v19)
  {
    return 1;
  }

  return 0;
}

uint64_t _s22ArgumentParserInternal10ToolInfoV0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 7);
  v32[2] = *(a1 + 5);
  v32[3] = v3;
  v32[4] = *(a1 + 9);
  v33 = a1[11];
  v4 = *(a1 + 3);
  v32[0] = *(a1 + 1);
  v32[1] = v4;
  v5 = *a2;
  v6 = *(a2 + 3);
  v34[0] = *(a2 + 1);
  v34[1] = v6;
  v7 = *(a2 + 5);
  v8 = *(a2 + 7);
  v9 = *(a2 + 9);
  v35 = a2[11];
  v34[3] = v8;
  v34[4] = v9;
  v34[2] = v7;
  if (v2 == v5)
  {
    v10 = *(a1 + 7);
    v24 = *(a1 + 5);
    v25 = v10;
    v26 = *(a1 + 9);
    v27 = a1[11];
    v11 = *(a1 + 3);
    v22 = *(a1 + 1);
    v23 = v11;
    v12 = *(a2 + 7);
    v18 = *(a2 + 5);
    v19 = v12;
    v20 = *(a2 + 9);
    v21 = a2[11];
    v13 = *(a2 + 3);
    v16 = *(a2 + 1);
    v17 = v13;
    sub_241033B5C(v32, v30);
    sub_241033B5C(v34, v30);
    v14 = _s22ArgumentParserInternal13CommandInfoV0V2eeoiySbAC_ACtFZ_0(&v22, &v16);
    v28[2] = v18;
    v28[3] = v19;
    v28[4] = v20;
    v29 = v21;
    v28[0] = v16;
    v28[1] = v17;
    sub_241033BB8(v28);
    v30[2] = v24;
    v30[3] = v25;
    v30[4] = v26;
    v31 = v27;
    v30[0] = v22;
    v30[1] = v23;
    sub_241033BB8(v30);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

unint64_t sub_241045480()
{
  result = qword_27E51F9B8;
  if (!qword_27E51F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F9B8);
  }

  return result;
}

unint64_t sub_2410454D4()
{
  result = qword_27E51F9C0;
  if (!qword_27E51F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F9C0);
  }

  return result;
}

unint64_t sub_241045528()
{
  result = qword_27E51F9D0;
  if (!qword_27E51F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F9D0);
  }

  return result;
}

unint64_t sub_24104557C()
{
  result = qword_27E51F9E0;
  if (!qword_27E51F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F9E0);
  }

  return result;
}

unint64_t sub_2410455D0()
{
  result = qword_27E51F9F8;
  if (!qword_27E51F9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51F9F0, &qword_24104D0F8);
    sub_2410454D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F9F8);
  }

  return result;
}

unint64_t sub_241045654()
{
  result = qword_27E51FA08;
  if (!qword_27E51FA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51FA00, &qword_24104D100);
    sub_2410456D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FA08);
  }

  return result;
}

unint64_t sub_2410456D8()
{
  result = qword_27E51FA10;
  if (!qword_27E51FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FA10);
  }

  return result;
}

uint64_t sub_24104572C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51F448, &qword_241048080);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_241045798()
{
  result = qword_27E51FA20;
  if (!qword_27E51FA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51F9F0, &qword_24104D0F8);
    sub_241045528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FA20);
  }

  return result;
}

unint64_t sub_24104581C()
{
  result = qword_27E51FA28;
  if (!qword_27E51FA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51FA00, &qword_24104D100);
    sub_2410458A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FA28);
  }

  return result;
}

unint64_t sub_2410458A0()
{
  result = qword_27E51FA30;
  if (!qword_27E51FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FA30);
  }

  return result;
}

unint64_t sub_2410458F4()
{
  result = qword_27E51FA40;
  if (!qword_27E51FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FA40);
  }

  return result;
}

unint64_t sub_241045948()
{
  result = qword_27E51FA48;
  if (!qword_27E51FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FA48);
  }

  return result;
}

unint64_t sub_24104599C()
{
  result = qword_27E51FA58;
  if (!qword_27E51FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FA58);
  }

  return result;
}

unint64_t sub_2410459F0()
{
  result = qword_27E51FA68;
  if (!qword_27E51FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FA68);
  }

  return result;
}

unint64_t sub_241045A44()
{
  result = qword_27E51FA70;
  if (!qword_27E51FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FA70);
  }

  return result;
}

unint64_t sub_241045A98()
{
  result = qword_27E51FA80;
  if (!qword_27E51FA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51FA78, &qword_24104D128);
    sub_241045B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FA80);
  }

  return result;
}

unint64_t sub_241045B1C()
{
  result = qword_27E51FA88;
  if (!qword_27E51FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FA88);
  }

  return result;
}

unint64_t sub_241045B70()
{
  result = qword_27E51FA98;
  if (!qword_27E51FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FA98);
  }

  return result;
}

unint64_t sub_241045BC4()
{
  result = qword_27E51FAA0;
  if (!qword_27E51FAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51FA78, &qword_24104D128);
    sub_241045C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FAA0);
  }

  return result;
}

unint64_t sub_241045C48()
{
  result = qword_27E51FAA8;
  if (!qword_27E51FAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FAA8);
  }

  return result;
}

unint64_t sub_241045CA0()
{
  result = qword_27E51FAB0;
  if (!qword_27E51FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FAB0);
  }

  return result;
}

unint64_t sub_241045CF8()
{
  result = qword_27E51FAB8;
  if (!qword_27E51FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FAB8);
  }

  return result;
}

unint64_t sub_241045D50()
{
  result = qword_27E51FAC0;
  if (!qword_27E51FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FAC0);
  }

  return result;
}

unint64_t sub_241045DA8()
{
  result = qword_27E51FAC8;
  if (!qword_27E51FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FAC8);
  }

  return result;
}

unint64_t sub_241045E00()
{
  result = qword_27E51FAD0;
  if (!qword_27E51FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FAD0);
  }

  return result;
}

unint64_t sub_241045E58()
{
  result = qword_27E51FAD8;
  if (!qword_27E51FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FAD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolInfoHeader(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ToolInfoHeader(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
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

uint64_t sub_241045F38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_241045F80(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_241046018(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_241046074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_2410460F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_241046140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArgumentInfoV0.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArgumentInfoV0.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_241046344()
{
  result = qword_27E51FAE0;
  if (!qword_27E51FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FAE0);
  }

  return result;
}

unint64_t sub_24104639C()
{
  result = qword_27E51FAE8;
  if (!qword_27E51FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FAE8);
  }

  return result;
}

unint64_t sub_2410463F4()
{
  result = qword_27E51FAF0;
  if (!qword_27E51FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FAF0);
  }

  return result;
}

unint64_t sub_24104644C()
{
  result = qword_27E51FAF8;
  if (!qword_27E51FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FAF8);
  }

  return result;
}

unint64_t sub_2410464A4()
{
  result = qword_27E51FB00;
  if (!qword_27E51FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FB00);
  }

  return result;
}

unint64_t sub_2410464FC()
{
  result = qword_27E51FB08;
  if (!qword_27E51FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FB08);
  }

  return result;
}

unint64_t sub_241046554()
{
  result = qword_27E51FB10;
  if (!qword_27E51FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FB10);
  }

  return result;
}

unint64_t sub_2410465AC()
{
  result = qword_27E51FB18;
  if (!qword_27E51FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FB18);
  }

  return result;
}

unint64_t sub_241046604()
{
  result = qword_27E51FB20;
  if (!qword_27E51FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FB20);
  }

  return result;
}

unint64_t sub_24104665C()
{
  result = qword_27E51FB28;
  if (!qword_27E51FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FB28);
  }

  return result;
}

unint64_t sub_2410466B4()
{
  result = qword_27E51FB30;
  if (!qword_27E51FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FB30);
  }

  return result;
}

unint64_t sub_24104670C()
{
  result = qword_27E51FB38;
  if (!qword_27E51FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FB38);
  }

  return result;
}

unint64_t sub_241046764()
{
  result = qword_27E51FB40;
  if (!qword_27E51FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FB40);
  }

  return result;
}

unint64_t sub_2410467BC()
{
  result = qword_27E51FB48;
  if (!qword_27E51FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FB48);
  }

  return result;
}

unint64_t sub_241046814()
{
  result = qword_27E51FB50;
  if (!qword_27E51FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FB50);
  }

  return result;
}

unint64_t sub_241046868()
{
  result = qword_27E51FB58;
  if (!qword_27E51FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FB58);
  }

  return result;
}

unint64_t sub_2410468BC()
{
  result = qword_27E51FB60;
  if (!qword_27E51FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51FB60);
  }

  return result;
}