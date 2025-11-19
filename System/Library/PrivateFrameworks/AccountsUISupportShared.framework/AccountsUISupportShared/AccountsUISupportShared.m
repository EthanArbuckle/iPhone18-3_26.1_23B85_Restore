void *sub_23DD73ED0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_23DD73EE0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_23DD73F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OAuth.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23DD74020(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OAuth.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23DD740C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuth.Kind.Custom(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DD74130(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for OAuth.Kind.Custom(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_23DD741B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DDA48E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23DD74274(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23DDA48E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23DD74378()
{
  v1 = 0x7245726576726573;
  if (*v0 != 1)
  {
    v1 = 0x726F727245637078;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64696C61766E69;
  }
}

uint64_t sub_23DD743DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD91CF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD74470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DDA48C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_23DD74534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23DDA48C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23DD745F4()
{
  if (*v0)
  {
    return 1953656688;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_23DD74648()
{
  if (*v0)
  {
    return 0x676E696F6774756FLL;
  }

  else
  {
    return 0x676E696D6F636E69;
  }
}

uint64_t sub_23DD74680()
{
  v1 = 1701667182;
  v2 = 7564404;
  if (*v0 != 2)
  {
    v2 = 0x69746E6564657263;
  }

  if (*v0)
  {
    v1 = 1953656688;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23DD746EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DDA44EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t PreliminaryInformation.NextStep.accountTypeIdentifier.getter()
{
  v1 = v0;
  v2 = *(*(type metadata accessor for OAuth.Kind(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OAuth.Account(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(type metadata accessor for PreliminaryInformation.NextStep(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DD74CFC(v1, v11, type metadata accessor for PreliminaryInformation.NextStep);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_23DD74C98(v11, v8);
    sub_23DD74CFC(&v8[*(v5 + 24)], v4, type metadata accessor for OAuth.Kind);
    v17 = type metadata accessor for OAuth.Kind.Custom(0);
    v18 = (*(*(v17 - 8) + 48))(v4, 6, v17);
    if (v18 <= 2)
    {
      if (!v18)
      {
        sub_23DD74D64(v8, type metadata accessor for OAuth.Account);
        v20 = type metadata accessor for OAuth.Kind;
        v21 = v4;
        goto LABEL_11;
      }

      if (v18 == 1)
      {
        v19 = MEMORY[0x277CB8B98];
      }

      else
      {
        v19 = MEMORY[0x277CB8C40];
      }
    }

    else if (v18 > 4)
    {
      if (v18 == 5)
      {
        v19 = MEMORY[0x277CB8C50];
      }

      else
      {
        v19 = MEMORY[0x277CB8C00];
      }
    }

    else if (v18 == 3)
    {
      v19 = MEMORY[0x277CB8BA0];
    }

    else
    {
      v19 = MEMORY[0x277CB8D38];
    }

    v24 = *v19;
    v22 = sub_23DDA4910();
    sub_23DD74D64(v8, type metadata accessor for OAuth.Account);
    return v22;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v20 = type metadata accessor for PreliminaryInformation.NextStep;
    v21 = v11;
LABEL_11:
    sub_23DD74D64(v21, v20);
    return 0;
  }

  v13 = *(v11 + 5);
  v26[4] = *(v11 + 4);
  v26[5] = v13;
  v26[6] = *(v11 + 6);
  v27 = v11[112];
  v14 = *(v11 + 1);
  v26[0] = *v11;
  v26[1] = v14;
  v15 = *(v11 + 3);
  v26[2] = *(v11 + 2);
  v26[3] = v15;
  if (v27 > 1u)
  {
    if (v27 == 2)
    {
      v16 = MEMORY[0x277CB8CE8];
    }

    else
    {
      v16 = MEMORY[0x277CB8C60];
    }
  }

  else if (v27)
  {
    v16 = MEMORY[0x277CB8B80];
  }

  else
  {
    v16 = MEMORY[0x277CB8B88];
  }

  v23 = *v16;
  v22 = sub_23DDA4910();
  sub_23DD74C44(v26);
  return v22;
}

uint64_t OAuth.Kind.accountTypeIdentifier.getter()
{
  v1 = *(*(type metadata accessor for OAuth.Kind(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DD74CFC(v0, v3, type metadata accessor for OAuth.Kind);
  v4 = type metadata accessor for OAuth.Kind.Custom(0);
  v5 = (*(*(v4 - 8) + 48))(v3, 6, v4);
  if (v5 <= 2)
  {
    if (!v5)
    {
      sub_23DD74D64(v3, type metadata accessor for OAuth.Kind);
      return 0;
    }

    if (v5 == 1)
    {
      v6 = MEMORY[0x277CB8B98];
    }

    else
    {
      v6 = MEMORY[0x277CB8C40];
    }
  }

  else if (v5 > 4)
  {
    if (v5 == 5)
    {
      v6 = MEMORY[0x277CB8C50];
    }

    else
    {
      v6 = MEMORY[0x277CB8C00];
    }
  }

  else if (v5 == 3)
  {
    v6 = MEMORY[0x277CB8BA0];
  }

  else
  {
    v6 = MEMORY[0x277CB8D38];
  }

  v8 = *v6;
  return sub_23DDA4910();
}

uint64_t sub_23DD74C98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuth.Account(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DD74CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DD74D64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EmailAddress.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA4BE0();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_23DDA4B20();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x2821FEB70](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t EmailAddress.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA4BC0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = sub_23DDA4B10();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static EmailAddress.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23DDA4B00();
  }
}

uint64_t EmailAddress.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23DDA4940();
}

uint64_t EmailAddress.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23DDA4B70();
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t sub_23DD75084@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA4BC0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = sub_23DDA4B10();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23DD75148(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA4BE0();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_23DDA4B20();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_23DD751E0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23DDA4B70();
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t sub_23DD7522C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23DDA4940();
}

uint64_t sub_23DD75234()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23DDA4B70();
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t sub_23DD7527C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23DDA4B00();
  }
}

uint64_t static EmailAddress.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_23DDA4B00();
  }
}

uint64_t static EmailAddress.<= infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_23DDA4B00() ^ 1) & 1;
  }
}

uint64_t static EmailAddress.>= infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_23DDA4B00() ^ 1) & 1;
  }
}

uint64_t static EmailAddress.> infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_23DDA4B00();
  }
}

uint64_t sub_23DD753B0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_23DDA4B00();
  }
}

uint64_t sub_23DD753E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_23DDA4B00() ^ 1) & 1;
  }
}

uint64_t sub_23DD75428(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_23DDA4B00() ^ 1) & 1;
  }
}

uint64_t sub_23DD7547C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_23DDA4B00();
  }
}

uint64_t EmailAddress.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_23DD754D0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

BOOL EmailAddress.isEmpty.getter()
{
  v1 = v0[1];
  v2 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 == 0;
}

AccountsUISupportShared::EmailAddress __swiftcall EmailAddress.trimmed()()
{
  v2 = v0;
  v3 = sub_23DDA48A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  v15[0] = *v1;
  v15[1] = v8;

  sub_23DDA4890();
  sub_23DD75638();
  v9 = sub_23DDA49B0();
  v11 = v10;
  (*(v4 + 8))(v7, v3);

  *v2 = v9;
  v2[1] = v11;
  result.underlying._object = v13;
  result.underlying._countAndFlagsBits = v12;
  return result;
}

unint64_t sub_23DD75638()
{
  result = qword_27E312E60;
  if (!qword_27E312E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312E60);
  }

  return result;
}

unint64_t sub_23DD7568C()
{
  result = qword_27E312E68;
  if (!qword_27E312E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312E68);
  }

  return result;
}

unint64_t sub_23DD756E4()
{
  result = qword_27E312E70;
  if (!qword_27E312E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312E70);
  }

  return result;
}

unint64_t sub_23DD75748()
{
  result = qword_27E312E78;
  if (!qword_27E312E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312E78);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23DD757C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23DD75808(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t EmailAddress.Domain.underlying.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EmailAddress.Domain.underlying.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static EmailAddress.Domain.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23DDA4B00();
  }
}

uint64_t EmailAddress.Domain.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23DDA4940();
}

uint64_t EmailAddress.Domain.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23DDA4B70();
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t EmailAddress.Domain.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t String.init(_:)(void *a1)
{
  v1 = a1[1];
  return *a1;
}

{
  v1 = a1[1];
  return *a1;
}

uint64_t EmailAddress.init(localPart:domain:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v7 = *a1;
  v8 = a1[1];
  MEMORY[0x23EEFF270](64, 0xE100000000000000);
  MEMORY[0x23EEFF270](v4, v5);

  *a3 = v7;
  a3[1] = v8;
  return result;
}

uint64_t EmailAddress.domain.getter@<X0>(_OWORD *a1@<X8>)
{
  v6 = *v1;
  v7 = v1[1];
  EmailAddress.split()(&v8);
  result = v9;
  if (v9)
  {
    v5 = v10;

    v4 = v5;
  }

  else
  {
    v4 = 0uLL;
  }

  *a1 = v4;
  return result;
}

double EmailAddress.split()@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  sub_23DD75B54(64, 0xE100000000000000, *v1, v4);
  if ((v5 & 1) == 0)
  {
    v6 = sub_23DDA4980();
    v7 = MEMORY[0x23EEFF240](v6);
    v9 = v8;

    v10 = sub_23DDA4950();
    v11 = sub_23DD75C44(v10, v3, v4);
    v12 = MEMORY[0x23EEFF240](v11);
    v14 = v13;

    v16 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v16 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v17 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        *a1 = v7;
        a1[1] = v9;
        a1[2] = v12;
        a1[3] = v14;
        return result;
      }
    }
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

unint64_t sub_23DD75B54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_23DDA4970() != a1 || v9 != a2)
  {
    v10 = sub_23DDA4B00();

    if (v10)
    {
      return v8;
    }

    v8 = sub_23DDA4950();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_23DD75C44(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_23DDA4980();
  }

  __break(1u);
  return result;
}

unint64_t sub_23DD75C94()
{
  result = qword_27E312E80;
  if (!qword_27E312E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312E80);
  }

  return result;
}

unint64_t sub_23DD75CEC()
{
  result = qword_27E312E88;
  if (!qword_27E312E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312E88);
  }

  return result;
}

unint64_t sub_23DD75D44()
{
  result = qword_27E312E90;
  if (!qword_27E312E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312E90);
  }

  return result;
}

uint64_t EmailAddress.LocalPart.underlying.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EmailAddress.LocalPart.underlying.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static EmailAddress.LocalPart.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23DDA4B00();
  }
}

uint64_t EmailAddress.LocalPart.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23DDA4940();
}

uint64_t EmailAddress.LocalPart.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23DDA4B70();
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t EmailAddress.LocalPart.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_23DD75ED4()
{
  result = qword_27E312E98;
  if (!qword_27E312E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312E98);
  }

  return result;
}

unint64_t sub_23DD75F2C()
{
  result = qword_27E312EA0;
  if (!qword_27E312EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312EA0);
  }

  return result;
}

unint64_t sub_23DD75F84()
{
  result = qword_27E312EA8;
  if (!qword_27E312EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312EA8);
  }

  return result;
}

uint64_t OAuth.Account.emailAddress.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t OAuth.Account.emailAddress.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t OAuth.Account.userFullName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t OAuth.Account.userFullName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t OAuth.Account.kind.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for OAuth.Account(0) + 24);

  return sub_23DD761BC(a1, v3);
}

uint64_t sub_23DD761BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuth.Kind(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OAuth.Account.init(emailAddress:userFullName:kind:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = a1[1];
  *a5 = *a1;
  a5[1] = v7;
  a5[2] = a2;
  a5[3] = a3;
  v8 = type metadata accessor for OAuth.Account(0);
  return sub_23DD7AA0C(a4, a5 + *(v8 + 24), type metadata accessor for OAuth.Kind);
}

uint64_t sub_23DD762C8()
{
  v1 = 0x6C6C754672657375;
  if (*v0 != 1)
  {
    v1 = 1684957547;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6464416C69616D65;
  }
}

uint64_t sub_23DD7632C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD7BF04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD76360(uint64_t a1)
{
  v2 = sub_23DD7A7B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD7639C(uint64_t a1)
{
  v2 = sub_23DD7A7B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OAuth.Account.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312EB0, &qword_23DDA52C0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD7A7B4();
  sub_23DDA4BF0();
  v11 = v3[1];
  v17 = *v3;
  v18 = v11;
  v16[15] = 0;
  sub_23DD7A808();

  sub_23DDA4AD0();

  if (!v2)
  {
    v12 = v3[2];
    v13 = v3[3];
    LOBYTE(v17) = 1;
    sub_23DDA4AC0();
    v14 = *(type metadata accessor for OAuth.Account(0) + 24);
    LOBYTE(v17) = 2;
    type metadata accessor for OAuth.Kind(0);
    sub_23DD7A8B0(&qword_27E312EC8, type metadata accessor for OAuth.Kind);
    sub_23DDA4AD0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t OAuth.Account.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23DDA4940();
  v3 = v0[2];
  v4 = v0[3];
  sub_23DDA4940();
  v5 = v0 + *(type metadata accessor for OAuth.Account(0) + 24);
  return OAuth.Kind.hash(into:)();
}

uint64_t OAuth.Account.hashValue.getter()
{
  sub_23DDA4B70();
  v1 = *v0;
  v2 = v0[1];
  sub_23DDA4940();
  v3 = v0[2];
  v4 = v0[3];
  sub_23DDA4940();
  v5 = v0 + *(type metadata accessor for OAuth.Account(0) + 24);
  OAuth.Kind.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t OAuth.Account.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for OAuth.Kind(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312ED0, &qword_23DDA52C8);
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  v12 = type metadata accessor for OAuth.Account(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20]();
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_23DD7A7B4();
  sub_23DDA4BD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v18 = v26;
  v19 = v15;
  v24[1] = v4;
  v31 = 0;
  sub_23DD7A85C();
  v20 = v27;
  sub_23DDA4A50();
  v21 = v30;
  *v19 = v29;
  v19[1] = v21;
  LOBYTE(v29) = 1;
  v19[2] = sub_23DDA4A40();
  v19[3] = v22;
  LOBYTE(v29) = 2;
  sub_23DD7A8B0(&qword_27E312EE0, type metadata accessor for OAuth.Kind);
  sub_23DDA4A50();
  (*(v18 + 8))(v11, v20);
  sub_23DD7AA0C(v7, v19 + *(v12 + 24), type metadata accessor for OAuth.Kind);
  sub_23DD7A8F8(v19, v25, type metadata accessor for OAuth.Account);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_23DD7AAC8(v19, type metadata accessor for OAuth.Account);
}

uint64_t sub_23DD76A14(uint64_t a1)
{
  sub_23DDA4B70();
  v3 = *v1;
  v4 = v1[1];
  sub_23DDA4940();
  v5 = v1[2];
  v6 = v1[3];
  sub_23DDA4940();
  v7 = v1 + *(a1 + 24);
  OAuth.Kind.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t sub_23DD76A78(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_23DDA4940();
  v6 = v2[2];
  v7 = v2[3];
  sub_23DDA4940();
  v8 = v2 + *(a2 + 24);
  return OAuth.Kind.hash(into:)();
}

uint64_t sub_23DD76AC8(uint64_t a1, uint64_t a2)
{
  sub_23DDA4B70();
  v4 = *v2;
  v5 = v2[1];
  sub_23DDA4940();
  v6 = v2[2];
  v7 = v2[3];
  sub_23DDA4940();
  v8 = v2 + *(a2 + 24);
  OAuth.Kind.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t static OAuth.Kind.exchange.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OAuth.Kind.Custom(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 5, 6, v2);
}

uint64_t sub_23DD76BD8(uint64_t a1)
{
  v2 = sub_23DD7ACCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD76C14(uint64_t a1)
{
  v2 = sub_23DD7ACCC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23DD76C50()
{
  v1 = *v0;
  v2 = 7106401;
  v3 = 0xD000000000000012;
  if (v1 != 5)
  {
    v3 = 0x6D6F74737563;
  }

  v4 = 0x6F6F686179;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C676F6F67;
  if (v1 != 1)
  {
    v5 = 0x64756F6C4369;
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

uint64_t sub_23DD76D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD7C024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD76D54(uint64_t a1)
{
  v2 = sub_23DD7A9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD76D90(uint64_t a1)
{
  v2 = sub_23DD7A9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD76DD4()
{
  sub_23DDA4B70();
  MEMORY[0x23EEFF490](0);
  return sub_23DDA4BB0();
}

uint64_t sub_23DD76E18()
{
  sub_23DDA4B70();
  MEMORY[0x23EEFF490](0);
  return sub_23DDA4BB0();
}

uint64_t sub_23DD76E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23DDA4B00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23DD76EE4(uint64_t a1)
{
  v2 = sub_23DD7AA74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD76F20(uint64_t a1)
{
  v2 = sub_23DD7AA74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD76F5C(uint64_t a1)
{
  v2 = sub_23DD7AB7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD76F98(uint64_t a1)
{
  v2 = sub_23DD7AB7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD76FD4(uint64_t a1)
{
  v2 = sub_23DD7AB28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD77010(uint64_t a1)
{
  v2 = sub_23DD7AB28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD7704C(uint64_t a1)
{
  v2 = sub_23DD7AC78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD77088(uint64_t a1)
{
  v2 = sub_23DD7AC78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD770C4(uint64_t a1)
{
  v2 = sub_23DD7AC24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD77100(uint64_t a1)
{
  v2 = sub_23DD7AC24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD7713C(uint64_t a1)
{
  v2 = sub_23DD7ABD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD77178(uint64_t a1)
{
  v2 = sub_23DD7ABD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OAuth.Kind.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312EE8, &qword_23DDA52D0);
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v2);
  v71 = &v54 - v4;
  v5 = type metadata accessor for OAuth.Kind.Custom(0);
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = *(v72 + 64);
  MEMORY[0x28223BE20](v5);
  v70 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312EF0, &qword_23DDA52D8);
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v8);
  v63 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312EF8, &qword_23DDA52E0);
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v60 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312F00, &qword_23DDA52E8);
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = *(v58 + 64);
  MEMORY[0x28223BE20](v14);
  v57 = &v54 - v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312F08, &qword_23DDA52F0);
  v55 = *(v56 - 8);
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v54 = &v54 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312F10, &qword_23DDA52F8);
  v69 = *(v19 - 8);
  v20 = *(v69 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312F18, &qword_23DDA5300);
  v68 = *(v23 - 8);
  v24 = *(v68 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v54 - v25;
  v27 = type metadata accessor for OAuth.Kind(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312F20, &qword_23DDA5308);
  v76 = *(v31 - 8);
  v77 = v31;
  v32 = *(v76 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v54 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD7A9B8();
  v75 = v34;
  v36 = v73;
  sub_23DDA4BF0();
  sub_23DD7A8F8(v74, v30, type metadata accessor for OAuth.Kind);
  v37 = (*(v72 + 48))(v30, 6, v36);
  if (v37 > 2)
  {
    if (v37 > 4)
    {
      if (v37 == 5)
      {
        v82 = 4;
        sub_23DD7AB7C();
        v46 = v60;
        v39 = v77;
        v40 = v75;
        sub_23DDA4A80();
        v48 = v61;
        v47 = v62;
      }

      else
      {
        v83 = 5;
        sub_23DD7AB28();
        v46 = v63;
        v39 = v77;
        v40 = v75;
        sub_23DDA4A80();
        v48 = v64;
        v47 = v65;
      }
    }

    else
    {
      if (v37 == 3)
      {
        v80 = 2;
        sub_23DD7AC24();
        v38 = v54;
        v39 = v77;
        v40 = v75;
        sub_23DDA4A80();
        (*(v55 + 8))(v38, v56);
        return (*(v76 + 8))(v40, v39);
      }

      v81 = 3;
      sub_23DD7ABD0();
      v46 = v57;
      v39 = v77;
      v40 = v75;
      sub_23DDA4A80();
      v48 = v58;
      v47 = v59;
    }

    (*(v48 + 8))(v46, v47);
    return (*(v76 + 8))(v40, v39);
  }

  v41 = v68;
  v42 = v69;
  v43 = v71;
  if (v37)
  {
    if (v37 == 1)
    {
      v78 = 0;
      sub_23DD7ACCC();
      v44 = v77;
      v45 = v75;
      sub_23DDA4A80();
      (*(v41 + 8))(v26, v23);
    }

    else
    {
      v79 = 1;
      sub_23DD7AC78();
      v44 = v77;
      v45 = v75;
      sub_23DDA4A80();
      (*(v42 + 8))(v22, v19);
    }

    return (*(v76 + 8))(v45, v44);
  }

  else
  {
    v49 = v70;
    sub_23DD7AA0C(v30, v70, type metadata accessor for OAuth.Kind.Custom);
    v84 = 6;
    sub_23DD7AA74();
    v50 = v77;
    v51 = v75;
    sub_23DDA4A80();
    sub_23DD7A8B0(&qword_27E312F38, type metadata accessor for OAuth.Kind.Custom);
    v52 = v67;
    sub_23DDA4AD0();
    (*(v66 + 8))(v43, v52);
    sub_23DD7AAC8(v49, type metadata accessor for OAuth.Kind.Custom);
    return (*(v76 + 8))(v51, v50);
  }
}

uint64_t OAuth.Kind.hash(into:)()
{
  v1 = sub_23DDA48E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OAuth.Kind.Custom(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(type metadata accessor for OAuth.Kind(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DD7A8F8(v0, v13, type metadata accessor for OAuth.Kind);
  v14 = (*(v7 + 48))(v13, 6, v6);
  if (v14 > 2)
  {
    if (v14 > 4)
    {
      if (v14 == 5)
      {
        v15 = 4;
      }

      else
      {
        v15 = 5;
      }
    }

    else if (v14 == 3)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    return MEMORY[0x23EEFF490](v15);
  }

  if (v14)
  {
    v15 = v14 != 1;
    return MEMORY[0x23EEFF490](v15);
  }

  sub_23DD7AA0C(v13, v10, type metadata accessor for OAuth.Kind.Custom);
  MEMORY[0x23EEFF490](6);
  v16 = sub_23DD7A8B0(&qword_27E312F70, MEMORY[0x277CC9260]);
  sub_23DDA48F0();
  v17 = &v10[v6[5]];
  v18 = *v17;
  v19 = *(v17 + 1);
  sub_23DDA4940();
  v20 = &v10[v6[6]];
  v32[1] = v16;
  sub_23DDA48F0();
  v21 = &v10[v6[7]];
  v22 = *v21;
  v23 = *(v21 + 1);
  sub_23DDA4940();
  v24 = v6[8];
  v32[0] = v10;
  v25 = *&v10[v24];
  MEMORY[0x23EEFF490](*(v25 + 16));
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = *(v2 + 16);
    v28 = v25 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v29 = *(v2 + 72);
    v30 = (v2 + 8);
    do
    {
      v27(v5, v28, v1);
      sub_23DDA48F0();
      (*v30)(v5, v1);
      v28 += v29;
      --v26;
    }

    while (v26);
  }

  return sub_23DD7AAC8(v32[0], type metadata accessor for OAuth.Kind.Custom);
}

uint64_t OAuth.Kind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312F78, &qword_23DDA5310);
  v4 = *(v3 - 8);
  v91 = v3;
  v92 = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v100 = &v76 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312F80, &qword_23DDA5318);
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v99 = &v76 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312F88, &qword_23DDA5320);
  v87 = *(v10 - 8);
  v88 = v10;
  v11 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v95 = &v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312F90, &qword_23DDA5328);
  v14 = *(v13 - 8);
  v85 = v13;
  v86 = v14;
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v94 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312F98, &qword_23DDA5330);
  v83 = *(v17 - 8);
  v84 = v17;
  v18 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v93 = &v76 - v19;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FA0, &qword_23DDA5338);
  v82 = *(v79 - 8);
  v20 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v98 = &v76 - v21;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FA8, &qword_23DDA5340);
  v80 = *(v81 - 8);
  v22 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v24 = &v76 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB0, &qword_23DDA5348);
  v97 = *(v25 - 8);
  v26 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v28 = &v76 - v27;
  v29 = type metadata accessor for OAuth.Kind(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = (MEMORY[0x28223BE20])();
  v33 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v76 - v34;
  v37 = a1[3];
  v36 = a1[4];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_23DD7A9B8();
  v38 = v102;
  sub_23DDA4BD0();
  if (v38)
  {
    goto LABEL_11;
  }

  v39 = v29;
  v77 = v33;
  v102 = 0;
  v40 = v98;
  v41 = v99;
  v42 = v100;
  v78 = v35;
  v43 = sub_23DDA4A70();
  if (*(v43 + 16) != 1 || (v44 = *(v43 + 32), v44 == 7))
  {
    v51 = sub_23DDA49D0();
    swift_allocError();
    v52 = v25;
    v54 = v53;
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350) + 48);
    *v54 = v39;
    sub_23DDA4A00();
    sub_23DDA49C0();
    (*(*(v51 - 8) + 104))(v54, *MEMORY[0x277D84160], v51);
    swift_willThrow();
    (*(v97 + 8))(v28, v52);
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    v56 = v101;
    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  if (*(v43 + 32) > 2u)
  {
    if (*(v43 + 32) > 4u)
    {
      v45 = v96;
      if (v44 != 5)
      {
        v109 = 6;
        sub_23DD7AA74();
        v66 = v42;
        v67 = v102;
        sub_23DDA49F0();
        v68 = v97;
        if (!v67)
        {
          v102 = v28;
          v73 = type metadata accessor for OAuth.Kind.Custom(0);
          sub_23DD7A8B0(&qword_27E312FC0, type metadata accessor for OAuth.Kind.Custom);
          v74 = v77;
          v75 = v91;
          v99 = v73;
          sub_23DDA4A50();
          (*(v92 + 8))(v66, v75);
          (*(v68 + 8))(v102, v25);
          swift_unknownObjectRelease();
          (*(*(v99 - 1) + 56))(v74, 0, 6);
          v50 = v78;
          sub_23DD7AA0C(v74, v78, type metadata accessor for OAuth.Kind);
          goto LABEL_32;
        }

        (*(v97 + 8))(v28, v25);
LABEL_35:
        swift_unknownObjectRelease();
        v56 = v101;
        return __swift_destroy_boxed_opaque_existential_1(v56);
      }

      v108 = 5;
      sub_23DD7AB28();
      v60 = v102;
      sub_23DDA49F0();
      v48 = v97;
      if (!v60)
      {
        (*(v89 + 8))(v41, v90);
        (*(v48 + 8))(v28, v25);
        swift_unknownObjectRelease();
        v61 = type metadata accessor for OAuth.Kind.Custom(0);
        v50 = v78;
        (*(*(v61 - 8) + 56))(v78, 6, 6, v61);
        goto LABEL_32;
      }
    }

    else
    {
      v45 = v96;
      if (v44 == 3)
      {
        v106 = 3;
        sub_23DD7ABD0();
        v46 = v94;
        v47 = v102;
        sub_23DDA49F0();
        v48 = v97;
        if (!v47)
        {
          (*(v86 + 8))(v46, v85);
          (*(v48 + 8))(v28, v25);
          swift_unknownObjectRelease();
          v49 = type metadata accessor for OAuth.Kind.Custom(0);
          v50 = v78;
          (*(*(v49 - 8) + 56))(v78, 4, 6, v49);
LABEL_32:
          v70 = v101;
          goto LABEL_33;
        }
      }

      else
      {
        v107 = 4;
        sub_23DD7AB7C();
        v64 = v95;
        v65 = v102;
        sub_23DDA49F0();
        v48 = v97;
        if (!v65)
        {
          (*(v87 + 8))(v64, v88);
          (*(v48 + 8))(v28, v25);
          swift_unknownObjectRelease();
          v72 = type metadata accessor for OAuth.Kind.Custom(0);
          v50 = v78;
          (*(*(v72 - 8) + 56))(v78, 5, 6, v72);
          goto LABEL_32;
        }
      }
    }

    (*(v48 + 8))(v28, v25);
    goto LABEL_35;
  }

  if (!*(v43 + 32))
  {
    v103 = 0;
    sub_23DD7ACCC();
    v62 = v102;
    sub_23DDA49F0();
    if (!v62)
    {
      (*(v80 + 8))(v24, v81);
      (*(v97 + 8))(v28, v25);
      swift_unknownObjectRelease();
      v69 = type metadata accessor for OAuth.Kind.Custom(0);
      v50 = v78;
      (*(*(v69 - 8) + 56))(v78, 1, 6, v69);
      v70 = v101;
      v45 = v96;
LABEL_33:
      sub_23DD7AA0C(v50, v45, type metadata accessor for OAuth.Kind);
      v56 = v70;
      return __swift_destroy_boxed_opaque_existential_1(v56);
    }

    (*(v97 + 8))(v28, v25);
    goto LABEL_10;
  }

  v58 = v102;
  if (v44 == 1)
  {
    v104 = 1;
    sub_23DD7AC78();
    sub_23DDA49F0();
    if (!v58)
    {
      (*(v82 + 8))(v40, v79);
      (*(v97 + 8))(v28, v25);
      swift_unknownObjectRelease();
      v59 = type metadata accessor for OAuth.Kind.Custom(0);
      v50 = v78;
      (*(*(v59 - 8) + 56))(v78, 2, 6, v59);
LABEL_30:
      v70 = v101;
      v45 = v96;
      goto LABEL_33;
    }
  }

  else
  {
    v105 = 2;
    sub_23DD7AC24();
    v63 = v93;
    sub_23DDA49F0();
    if (!v58)
    {
      (*(v83 + 8))(v63, v84);
      (*(v97 + 8))(v28, v25);
      swift_unknownObjectRelease();
      v71 = type metadata accessor for OAuth.Kind.Custom(0);
      v50 = v78;
      (*(*(v71 - 8) + 56))(v78, 3, 6, v71);
      goto LABEL_30;
    }
  }

  (*(v97 + 8))(v28, v25);
  swift_unknownObjectRelease();
  v56 = v101;
  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_23DD78B90()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD78BC4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD78BF8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD78C2C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD78C60()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OAuth.Kind.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for OAuth.Kind.Custom(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OAuth.Kind(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DD7A8F8(v1, v10, type metadata accessor for OAuth.Kind);
  v11 = (*(v3 + 48))(v10, 6, v2);
  if (v11 <= 2)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        return 1819238702;
      }

      else
      {
        return 0x656C676F6F672ELL;
      }
    }

    else
    {
      sub_23DD7AA0C(v10, v6, type metadata accessor for OAuth.Kind.Custom);
      v14[0] = 0;
      v14[1] = 0xE000000000000000;
      MEMORY[0x23EEFF270](0x286D6F747375632ELL, 0xE800000000000000);
      sub_23DDA49E0();
      MEMORY[0x23EEFF270](41, 0xE100000000000000);
      v13 = v14[0];
      sub_23DD7AAC8(v6, type metadata accessor for OAuth.Kind.Custom);
      return v13;
    }
  }

  else if (v11 > 4)
  {
    if (v11 == 5)
    {
      return 0xD000000000000011;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else if (v11 == 3)
  {
    return 0x64756F6C43692ELL;
  }

  else
  {
    return 0x6F6F6861792ELL;
  }
}

uint64_t OAuth.Kind.Custom.authorizationEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DDA48E0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OAuth.Kind.Custom.authorizationEndpoint.setter(uint64_t a1)
{
  v3 = sub_23DDA48E0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t OAuth.Kind.Custom.clientID.getter()
{
  v1 = (v0 + *(type metadata accessor for OAuth.Kind.Custom(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t OAuth.Kind.Custom.clientID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OAuth.Kind.Custom(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t OAuth.Kind.Custom.redirectURI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OAuth.Kind.Custom(0) + 24);
  v4 = sub_23DDA48E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OAuth.Kind.Custom.redirectURI.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OAuth.Kind.Custom(0) + 24);
  v4 = sub_23DDA48E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OAuth.Kind.Custom.scope.getter()
{
  v1 = (v0 + *(type metadata accessor for OAuth.Kind.Custom(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t OAuth.Kind.Custom.scope.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OAuth.Kind.Custom(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t OAuth.Kind.Custom.resources.getter()
{
  v1 = *(v0 + *(type metadata accessor for OAuth.Kind.Custom(0) + 32));
}

uint64_t OAuth.Kind.Custom.resources.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OAuth.Kind.Custom(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t OAuth.Kind.Custom.init(authorizationEndpoint:clientID:redirectURI:scope:resources:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = sub_23DDA48E0();
  v16 = *(*(v15 - 8) + 32);
  v16(a8, a1, v15);
  v17 = type metadata accessor for OAuth.Kind.Custom(0);
  v18 = (a8 + v17[5]);
  *v18 = a2;
  v18[1] = a3;
  result = (v16)(a8 + v17[6], a4, v15);
  v20 = (a8 + v17[7]);
  *v20 = a5;
  v20[1] = a6;
  *(a8 + v17[8]) = a7;
  return result;
}

uint64_t _s23AccountsUISupportShared15PasswordAccountO5KnownV4KindO9hashValueSivg_0()
{
  v1 = *v0;
  sub_23DDA4B70();
  MEMORY[0x23EEFF490](v1);
  return sub_23DDA4BB0();
}

uint64_t sub_23DD7954C()
{
  v1 = *v0;
  sub_23DDA4B70();
  MEMORY[0x23EEFF490](v1);
  return sub_23DDA4BB0();
}

unint64_t sub_23DD79590()
{
  v1 = *v0;
  v2 = 0x4449746E65696C63;
  v3 = 0x7463657269646572;
  v4 = 0x65706F6373;
  if (v1 != 3)
  {
    v4 = 0x656372756F736572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23DD79638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD7C268(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD79660(uint64_t a1)
{
  v2 = sub_23DD7AD20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD7969C(uint64_t a1)
{
  v2 = sub_23DD7AD20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OAuth.Kind.Custom.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FC8, &qword_23DDA5358);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD7AD20();
  sub_23DDA4BF0();
  v25 = 0;
  sub_23DDA48E0();
  sub_23DD7A8B0(&qword_27E312FD8, MEMORY[0x277CC9260]);
  sub_23DDA4AD0();
  if (!v2)
  {
    v11 = type metadata accessor for OAuth.Kind.Custom(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v24 = 1;
    sub_23DDA4AC0();
    v15 = v11[6];
    v23 = 2;
    sub_23DDA4AD0();
    v16 = (v3 + v11[7]);
    v17 = *v16;
    v18 = v16[1];
    v22 = 3;
    sub_23DDA4AC0();
    v20[1] = *(v3 + v11[8]);
    v21 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FE0, &qword_23DDA5360);
    sub_23DD7ADBC(&qword_27E312FE8, &qword_27E312FD8);
    sub_23DDA4AD0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t OAuth.Kind.Custom.hash(into:)()
{
  v1 = v0;
  v2 = sub_23DDA48E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23DD7A8B0(&qword_27E312F70, MEMORY[0x277CC9260]);
  sub_23DDA48F0();
  v8 = type metadata accessor for OAuth.Kind.Custom(0);
  v9 = (v0 + v8[5]);
  v10 = *v9;
  v11 = v9[1];
  sub_23DDA4940();
  v12 = v0 + v8[6];
  v25[1] = v7;
  sub_23DDA48F0();
  v13 = (v1 + v8[7]);
  v14 = *v13;
  v15 = v13[1];
  sub_23DDA4940();
  v16 = *(v1 + v8[8]);
  result = MEMORY[0x23EEFF490](*(v16 + 16));
  v18 = *(v16 + 16);
  if (v18)
  {
    v21 = *(v3 + 16);
    v19 = v3 + 16;
    v20 = v21;
    v22 = v16 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v23 = *(v19 + 56);
    v24 = (v19 - 8);
    do
    {
      v20(v6, v22, v2);
      sub_23DDA48F0();
      result = (*v24)(v6, v2);
      v22 += v23;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t sub_23DD79B9C(void (*a1)(_BYTE *))
{
  sub_23DDA4B70();
  a1(v3);
  return sub_23DDA4BB0();
}

uint64_t OAuth.Kind.Custom.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v40 = sub_23DDA48E0();
  v38 = *(v40 - 8);
  v3 = *(v38 + 64);
  v4 = MEMORY[0x28223BE20](v40);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FF0, &qword_23DDA5368);
  v39 = *(v42 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v42);
  v11 = &v33 - v10;
  v12 = type metadata accessor for OAuth.Kind.Custom(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD7AD20();
  v41 = v11;
  v17 = v43;
  sub_23DDA4BD0();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = v6;
  v18 = v15;
  v49 = 0;
  sub_23DD7A8B0(&qword_27E312FF8, MEMORY[0x277CC9260]);
  sub_23DDA4A50();
  v19 = *(v38 + 32);
  v20 = v8;
  v21 = v40;
  v19(v18, v20, v40);
  v48 = 1;
  v22 = sub_23DDA4A40();
  v34 = v19;
  v35 = 0;
  v23 = v12[5];
  v36 = v18;
  v24 = &v18[v23];
  *v24 = v22;
  v24[1] = v25;
  v47 = 2;
  v26 = v43;
  sub_23DDA4A50();
  v27 = v39;
  v34(v36 + v12[6], v26, v21);
  v46 = 3;
  v28 = sub_23DDA4A40();
  v29 = v36;
  v30 = (v36 + v12[7]);
  *v30 = v28;
  v30[1] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FE0, &qword_23DDA5360);
  v45 = 4;
  sub_23DD7ADBC(&qword_27E313000, &qword_27E312FF8);
  sub_23DDA4A50();
  (*(v27 + 8))(v41, v42);
  *(v29 + v12[8]) = v44;
  sub_23DD7A8F8(v29, v37, type metadata accessor for OAuth.Kind.Custom);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23DD7AAC8(v29, type metadata accessor for OAuth.Kind.Custom);
}

uint64_t sub_23DD7A16C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_23DDA4B70();
  a3(v5);
  return sub_23DDA4BB0();
}

uint64_t sub_23DD7A1D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_23DDA4B70();
  a4(v6);
  return sub_23DDA4BB0();
}

uint64_t _s23AccountsUISupportShared5OAuthO4KindO6CustomV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_23DDA48D0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OAuth.Kind.Custom(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_23DDA4B00() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  if ((sub_23DDA48D0() & 1) == 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_23DDA4B00() & 1) == 0)
  {
    return 0;
  }

  v16 = v4[8];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);

  return sub_23DD92160(v17, v18);
}

uint64_t _s23AccountsUISupportShared5OAuthO4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuth.Kind.Custom(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OAuth.Kind(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313118, &qword_23DDA5EE8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_23DD7A8F8(a1, &v23 - v16, type metadata accessor for OAuth.Kind);
  sub_23DD7A8F8(a2, &v17[v18], type metadata accessor for OAuth.Kind);
  v19 = *(v5 + 48);
  v20 = v19(v17, 6, v4);
  if (v20 <= 2)
  {
    if (!v20)
    {
      sub_23DD7A8F8(v17, v12, type metadata accessor for OAuth.Kind);
      if (!v19(&v17[v18], 6, v4))
      {
        sub_23DD7AA0C(&v17[v18], v8, type metadata accessor for OAuth.Kind.Custom);
        v21 = _s23AccountsUISupportShared5OAuthO4KindO6CustomV2eeoiySbAG_AGtFZ_0(v12, v8);
        sub_23DD7AAC8(v8, type metadata accessor for OAuth.Kind.Custom);
        sub_23DD7AAC8(v12, type metadata accessor for OAuth.Kind.Custom);
        sub_23DD7AAC8(v17, type metadata accessor for OAuth.Kind);
        return v21 & 1;
      }

      sub_23DD7AAC8(v12, type metadata accessor for OAuth.Kind.Custom);
      goto LABEL_20;
    }

    if (v20 == 1)
    {
      if (v19(&v17[v18], 6, v4) != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v19(&v17[v18], 6, v4) == 2)
    {
      goto LABEL_16;
    }

LABEL_20:
    sub_23DD7C42C(v17);
    v21 = 0;
    return v21 & 1;
  }

  if (v20 > 4)
  {
    if (v20 == 5)
    {
      if (v19(&v17[v18], 6, v4) != 5)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v19(&v17[v18], 6, v4) == 6)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (v20 == 3)
  {
    if (v19(&v17[v18], 6, v4) != 3)
    {
      goto LABEL_20;
    }
  }

  else if (v19(&v17[v18], 6, v4) != 4)
  {
    goto LABEL_20;
  }

LABEL_16:
  sub_23DD7AAC8(v17, type metadata accessor for OAuth.Kind);
  v21 = 1;
  return v21 & 1;
}

uint64_t _s23AccountsUISupportShared5OAuthO7AccountV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23DDA4B00() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_23DDA4B00() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for OAuth.Account(0) + 24);

  return _s23AccountsUISupportShared5OAuthO4KindO2eeoiySbAE_AEtFZ_0(a1 + v6, a2 + v6);
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

unint64_t sub_23DD7A7B4()
{
  result = qword_27E312EB8;
  if (!qword_27E312EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312EB8);
  }

  return result;
}

unint64_t sub_23DD7A808()
{
  result = qword_27E312EC0;
  if (!qword_27E312EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312EC0);
  }

  return result;
}

unint64_t sub_23DD7A85C()
{
  result = qword_27E312ED8;
  if (!qword_27E312ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312ED8);
  }

  return result;
}

uint64_t sub_23DD7A8B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DD7A8F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DD7A980(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23DD7A9B8()
{
  result = qword_27E312F28;
  if (!qword_27E312F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312F28);
  }

  return result;
}

uint64_t sub_23DD7AA0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23DD7AA74()
{
  result = qword_27E312F30;
  if (!qword_27E312F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312F30);
  }

  return result;
}

uint64_t sub_23DD7AAC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23DD7AB28()
{
  result = qword_27E312F40;
  if (!qword_27E312F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312F40);
  }

  return result;
}

unint64_t sub_23DD7AB7C()
{
  result = qword_27E312F48;
  if (!qword_27E312F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312F48);
  }

  return result;
}

unint64_t sub_23DD7ABD0()
{
  result = qword_27E312F50;
  if (!qword_27E312F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312F50);
  }

  return result;
}

unint64_t sub_23DD7AC24()
{
  result = qword_27E312F58;
  if (!qword_27E312F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312F58);
  }

  return result;
}

unint64_t sub_23DD7AC78()
{
  result = qword_27E312F60;
  if (!qword_27E312F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312F60);
  }

  return result;
}

unint64_t sub_23DD7ACCC()
{
  result = qword_27E312F68;
  if (!qword_27E312F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312F68);
  }

  return result;
}

unint64_t sub_23DD7AD20()
{
  result = qword_27E312FD0;
  if (!qword_27E312FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E312FD0);
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

uint64_t sub_23DD7ADBC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E312FE0, &qword_23DDA5360);
    sub_23DD7A8B0(a2, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23DD7AF78()
{
  result = type metadata accessor for OAuth.Kind(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23DD7B024()
{
  v0 = type metadata accessor for OAuth.Kind.Custom(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_23DD7B0A4()
{
  sub_23DDA48E0();
  if (v0 <= 0x3F)
  {
    sub_23DD7B134();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23DD7B134()
{
  if (!qword_27E313050)
  {
    sub_23DDA48E0();
    v0 = sub_23DDA4990();
    if (!v1)
    {
      atomic_store(v0, &qword_27E313050);
    }
  }
}

uint64_t getEnumTagSinglePayload for OAuth.Kind.Custom.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OAuth.Kind.Custom.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for OAuth.Kind.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OAuth.Kind.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23DD7B498(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_23DD7B4E8(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OAuth.Account.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OAuth.Account.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23DD7B6C8()
{
  result = qword_27E313058;
  if (!qword_27E313058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313058);
  }

  return result;
}

unint64_t sub_23DD7B720()
{
  result = qword_27E313060;
  if (!qword_27E313060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313060);
  }

  return result;
}

unint64_t sub_23DD7B778()
{
  result = qword_27E313068;
  if (!qword_27E313068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313068);
  }

  return result;
}

unint64_t sub_23DD7B7D0()
{
  result = qword_27E313070;
  if (!qword_27E313070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313070);
  }

  return result;
}

unint64_t sub_23DD7B828()
{
  result = qword_27E313078;
  if (!qword_27E313078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313078);
  }

  return result;
}

unint64_t sub_23DD7B880()
{
  result = qword_27E313080;
  if (!qword_27E313080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313080);
  }

  return result;
}

unint64_t sub_23DD7B8D8()
{
  result = qword_27E313088;
  if (!qword_27E313088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313088);
  }

  return result;
}

unint64_t sub_23DD7B930()
{
  result = qword_27E313090;
  if (!qword_27E313090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313090);
  }

  return result;
}

unint64_t sub_23DD7B988()
{
  result = qword_27E313098;
  if (!qword_27E313098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313098);
  }

  return result;
}

unint64_t sub_23DD7B9E0()
{
  result = qword_27E3130A0;
  if (!qword_27E3130A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3130A0);
  }

  return result;
}

unint64_t sub_23DD7BA38()
{
  result = qword_27E3130A8;
  if (!qword_27E3130A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3130A8);
  }

  return result;
}

unint64_t sub_23DD7BA90()
{
  result = qword_27E3130B0;
  if (!qword_27E3130B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3130B0);
  }

  return result;
}

unint64_t sub_23DD7BAE8()
{
  result = qword_27E3130B8;
  if (!qword_27E3130B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3130B8);
  }

  return result;
}

unint64_t sub_23DD7BB40()
{
  result = qword_27E3130C0;
  if (!qword_27E3130C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3130C0);
  }

  return result;
}

unint64_t sub_23DD7BB98()
{
  result = qword_27E3130C8;
  if (!qword_27E3130C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3130C8);
  }

  return result;
}

unint64_t sub_23DD7BBF0()
{
  result = qword_27E3130D0;
  if (!qword_27E3130D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3130D0);
  }

  return result;
}

unint64_t sub_23DD7BC48()
{
  result = qword_27E3130D8;
  if (!qword_27E3130D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3130D8);
  }

  return result;
}

unint64_t sub_23DD7BCA0()
{
  result = qword_27E3130E0;
  if (!qword_27E3130E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3130E0);
  }

  return result;
}

unint64_t sub_23DD7BCF8()
{
  result = qword_27E3130E8;
  if (!qword_27E3130E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3130E8);
  }

  return result;
}

unint64_t sub_23DD7BD50()
{
  result = qword_27E3130F0;
  if (!qword_27E3130F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3130F0);
  }

  return result;
}

unint64_t sub_23DD7BDA8()
{
  result = qword_27E3130F8;
  if (!qword_27E3130F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3130F8);
  }

  return result;
}

unint64_t sub_23DD7BE00()
{
  result = qword_27E313100;
  if (!qword_27E313100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313100);
  }

  return result;
}

unint64_t sub_23DD7BE58()
{
  result = qword_27E313108;
  if (!qword_27E313108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313108);
  }

  return result;
}

unint64_t sub_23DD7BEB0()
{
  result = qword_27E313110;
  if (!qword_27E313110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313110);
  }

  return result;
}

uint64_t sub_23DD7BF04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C754672657375 && a2 == 0xEC000000656D614ELL || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23DDA4B00();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23DD7C024(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7106401 && a2 == 0xE300000000000000;
  if (v3 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C676F6F67 && a2 == 0xE600000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64756F6C4369 && a2 == 0xE600000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6F686179 && a2 == 0xE500000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023DDB25C0 == a2 || (sub_23DDA4B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023DDB25E0 == a2 || (sub_23DDA4B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

uint64_t sub_23DD7C268(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000023DDB2600 == a2 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463657269646572 && a2 == 0xEB00000000495255 || (sub_23DDA4B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v5 = sub_23DDA4B00();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23DD7C42C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313118, &qword_23DDA5EE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PasswordAccount.Known.immutable.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 11) = *(v1 + 43);
  v4 = *(v8 + 11);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 43) = v4;
  return sub_23DD7C518(v7, &v6);
}

uint64_t PasswordAccount.Known.password.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t PasswordAccount.Known.password.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t PasswordAccount.Known.userFullName.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t PasswordAccount.Known.userFullName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t PasswordAccount.Known.accountDescription.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t PasswordAccount.Known.accountDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t PasswordAccount.Known.Immutable.emailAddress.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t PasswordAccount.Known.Immutable.emailAddress.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t PasswordAccount.Known.Immutable.incomingServer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 34);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 18) = v4;
}

uint64_t PasswordAccount.Known.Immutable.incomingServer.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  v5 = *(a1 + 18);
  v6 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 34) = v5;
  return result;
}

uint64_t PasswordAccount.Known.Immutable.outgoingServer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 58);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 18) = v4;
}

uint64_t PasswordAccount.Known.Immutable.outgoingServer.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  v5 = *(a1 + 18);
  v6 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 58) = v5;
  return result;
}

uint64_t sub_23DD7C894()
{
  v1 = 0x676E696D6F636E69;
  if (*v0 != 1)
  {
    v1 = 0x676E696F6774756FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6464416C69616D65;
  }
}

uint64_t sub_23DD7C910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD90B60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD7C938(uint64_t a1)
{
  v2 = sub_23DD8A408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD7C974(uint64_t a1)
{
  v2 = sub_23DD8A408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PasswordAccount.Known.Immutable.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313120, &qword_23DDA5F00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[3];
  v24 = v1[2];
  v25 = v10;
  v31 = *(v1 + 16);
  v23 = *(v1 + 34);
  v11 = v1[5];
  v21 = v1[6];
  v22 = v11;
  LODWORD(v11) = *(v1 + 28);
  v19 = *(v1 + 58);
  v20 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD8A408();

  sub_23DDA4BF0();
  v27 = v8;
  v28 = v9;
  v32 = 0;
  sub_23DD7A808();
  v13 = v26;
  sub_23DDA4AD0();

  if (!v13)
  {
    v15 = v19;
    v14 = v20;
    v16 = v21;
    v17 = v22;
    v27 = v24;
    v28 = v25;
    v29 = v31;
    v30 = v23;
    v32 = 1;
    sub_23DD8A45C();

    sub_23DDA4AD0();

    v27 = v17;
    v28 = v16;
    v29 = v14;
    v30 = v15;
    v32 = 2;
    sub_23DD8A4B0();

    sub_23DDA4AD0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PasswordAccount.Known.Immutable.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 16);
  v6 = *(v0 + 34);
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + 28);
  v10 = *(v0 + 58);
  sub_23DDA4940();
  sub_23DDA4940();
  sub_23DDA4B90();
  if (v6 != 1)
  {
    sub_23DDA4BA0();
  }

  sub_23DDA4940();
  if (v10)
  {
    return sub_23DDA4B90();
  }

  sub_23DDA4B90();
  return sub_23DDA4BA0();
}

uint64_t PasswordAccount.Known.Immutable.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 16);
  v6 = *(v0 + 34);
  v7 = v0[5];
  v8 = v0[6];
  v11 = *(v0 + 28);
  v9 = *(v0 + 58);
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4940();
  sub_23DDA4B90();
  if (v6 != 1)
  {
    sub_23DDA4BA0();
  }

  sub_23DDA4940();
  sub_23DDA4B90();
  if (!v9)
  {
    sub_23DDA4BA0();
  }

  return sub_23DDA4BB0();
}

uint64_t PasswordAccount.Known.Immutable.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313140, &qword_23DDA5F08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD8A408();
  sub_23DDA4BD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32) = 0;
  sub_23DD7A85C();
  sub_23DDA4A50();
  v31 = a2;
  v12 = v35;
  v11 = v36;
  LOBYTE(v32) = 1;
  sub_23DD8A504();
  sub_23DDA4A50();
  v30 = v12;
  v13 = v36;
  v29 = v35;
  v49 = v37;
  v51 = BYTE2(v37);
  v52 = 2;
  sub_23DD8A558();
  sub_23DDA4A50();
  (*(v6 + 8))(v9, v5);
  v28 = v45;
  v27 = v46;
  v26 = v47;
  v14 = v48;
  v50 = v48;
  v15 = v30;
  *&v32 = v30;
  *(&v32 + 1) = v11;
  v16 = v29;
  *&v33 = v29;
  *(&v33 + 1) = v13;
  v17 = v49;
  *v34 = v49;
  v18 = v51;
  v34[2] = v51;
  *&v34[8] = v45;
  *&v34[16] = v46;
  *&v34[24] = v47;
  v34[26] = v48;
  v19 = v32;
  v20 = v33;
  v21 = *v34;
  v25 = v13;
  v22 = v31;
  *(v31 + 43) = *&v34[11];
  v22[1] = v20;
  v22[2] = v21;
  *v22 = v19;
  sub_23DD7C518(&v32, &v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35 = v15;
  v36 = v11;
  v37 = v16;
  v38 = v25;
  v39 = v17;
  v40 = v18;
  v41 = v28;
  v42 = v27;
  v43 = v26;
  v44 = v14;
  return sub_23DD8A5AC(&v35);
}

uint64_t sub_23DD7D13C()
{
  sub_23DDA4B70();
  PasswordAccount.Known.Immutable.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t sub_23DD7D180()
{
  sub_23DDA4B70();
  PasswordAccount.Known.Immutable.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t sub_23DD7D1F4()
{
  v1 = *v0;
  v2 = 0x6C626174756D6D69;
  v3 = 0x6C6C754672657375;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 1684957547;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64726F7773736170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23DD7D298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD90C8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD7D2C0(uint64_t a1)
{
  v2 = sub_23DD8A7AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD7D2FC(uint64_t a1)
{
  v2 = sub_23DD8A7AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PasswordAccount.Known.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313158, &qword_23DDA5F10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = v1[1];
  v31 = *v1;
  v32 = v9;
  v33[0] = v1[2];
  *(v33 + 11) = *(v1 + 43);
  v10 = *(v1 + 9);
  v34 = *(v1 + 8);
  v21 = v10;
  v11 = *(v1 + 11);
  v20 = *(v1 + 10);
  v19 = v11;
  v12 = *(v1 + 13);
  v18 = *(v1 + 12);
  v17 = v12;
  v16 = *(v1 + 112);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD7C518(&v31, &v28);
  sub_23DD8A7AC();
  sub_23DDA4BF0();
  v28 = v31;
  v29 = v32;
  v30[0] = v33[0];
  *(v30 + 11) = *(v33 + 11);
  v27 = 0;
  sub_23DD8A800();
  sub_23DDA4AD0();
  if (v2)
  {
    v24 = v28;
    v25 = v29;
    *v26 = v30[0];
    *&v26[11] = *(v30 + 11);
    sub_23DD8A5AC(&v24);
  }

  else
  {
    v24 = v28;
    v25 = v29;
    *v26 = v30[0];
    *&v26[11] = *(v30 + 11);
    sub_23DD8A5AC(&v24);
    v23 = 1;
    sub_23DDA4AC0();
    v23 = 2;
    sub_23DDA4AC0();
    v23 = 3;
    sub_23DDA4AC0();
    v23 = v16;
    v22 = 4;
    sub_23DD8A854();
    sub_23DDA4AD0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PasswordAccount.Known.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 16);
  v6 = *(v0 + 34);
  v8 = v0[5];
  v7 = v0[6];
  v12 = *(v0 + 28);
  v9 = *(v0 + 58);
  v10 = v0[9];
  v13 = v0[8];
  v14 = v0[11];
  v15 = v0[10];
  v16 = v0[13];
  v17 = v0[12];
  v18 = *(v0 + 112);
  sub_23DDA4940();
  sub_23DDA4940();
  sub_23DDA4B90();
  if (v6 != 1)
  {
    sub_23DDA4BA0();
  }

  sub_23DDA4940();
  sub_23DDA4B90();
  if (!v9)
  {
    sub_23DDA4BA0();
  }

  sub_23DDA4940();
  sub_23DDA4940();
  sub_23DDA4940();
  return MEMORY[0x23EEFF490](v18);
}

uint64_t PasswordAccount.Known.hashValue.getter()
{
  sub_23DDA4B70();
  PasswordAccount.Known.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t PasswordAccount.Known.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313178, &qword_23DDA5F18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_23DD8A7AC();
  sub_23DDA4BD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v12 = v6;
  v53 = 0;
  sub_23DD8A8A8();
  v13 = v5;
  sub_23DDA4A50();
  v57 = v54;
  v58 = v55;
  *v59 = v56[0];
  *&v59[11] = *(v56 + 11);
  LOBYTE(v43[0]) = 1;
  v14 = sub_23DDA4A40();
  v37 = v15;
  v35 = v14;
  LOBYTE(v43[0]) = 2;
  v16 = sub_23DDA4A40();
  v18 = v17;
  v34 = v16;
  LOBYTE(v43[0]) = 3;
  v33 = sub_23DDA4A40();
  v36 = v19;
  v51 = 4;
  sub_23DD8A8FC();
  sub_23DDA4A50();
  (*(v12 + 8))(v9, v13);
  v21 = *v59;
  v20 = *&v59[16];
  v38[2] = *v59;
  v38[3] = *&v59[16];
  v22 = v58;
  v38[0] = v57;
  v38[1] = v58;
  v24 = v34;
  v23 = v35;
  v26 = v36;
  v25 = v37;
  *&v39 = v35;
  *(&v39 + 1) = v37;
  *&v40 = v34;
  *(&v40 + 1) = v18;
  *&v41 = v33;
  *(&v41 + 1) = v36;
  v27 = v52;
  v42 = v52;
  *a2 = v57;
  *(a2 + 16) = v22;
  *(a2 + 32) = v21;
  *(a2 + 48) = v20;
  v28 = v39;
  v29 = v40;
  v30 = v41;
  *(a2 + 112) = v27;
  *(a2 + 80) = v29;
  *(a2 + 96) = v30;
  *(a2 + 64) = v28;
  sub_23DD8A950(v38, v43);
  __swift_destroy_boxed_opaque_existential_1(v60);
  v43[0] = v57;
  v43[1] = v58;
  v43[2] = *v59;
  v43[3] = *&v59[16];
  v44 = v23;
  v45 = v25;
  v46 = v24;
  v47 = v18;
  v48 = v33;
  v49 = v26;
  v50 = v27;
  return sub_23DD74C44(v43);
}

uint64_t sub_23DD7DBCC()
{
  sub_23DDA4B70();
  PasswordAccount.Known.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t sub_23DD7DC10()
{
  sub_23DDA4B70();
  PasswordAccount.Known.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t PasswordAccount.Known.init(emailAddress:password:userFullName:accountDescription:kind:incomingServer:outgoingServer:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = *a8;
  v14 = *a10;
  v15 = a10[1];
  v16 = *(a10 + 8);
  v19 = *a11;
  result = a11[1];
  v20 = *(a11 + 8);
  v17 = *(a10 + 18);
  v21 = *(a11 + 18);
  *a9 = v11;
  *(a9 + 8) = v12;
  *(a9 + 16) = v14;
  *(a9 + 24) = v15;
  *(a9 + 32) = v16;
  *(a9 + 34) = v17;
  *(a9 + 40) = v19;
  *(a9 + 48) = result;
  *(a9 + 56) = v20;
  *(a9 + 58) = v21;
  *(a9 + 64) = a2;
  *(a9 + 72) = a3;
  *(a9 + 80) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = v13;
  return result;
}

uint64_t PasswordAccount.Known.init(preliminary:password:kind:accountDescription:incomingServer:outgoingServer:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = *a4;
  v14 = *a7;
  v15 = a7[1];
  v16 = *(a7 + 8);
  v17 = *(a7 + 18);
  result = *a8;
  v19 = a8[1];
  v20 = *(a8 + 8);
  v21 = *(a8 + 18);
  *a9 = v9;
  *(a9 + 8) = v10;
  *(a9 + 16) = v14;
  *(a9 + 24) = v15;
  *(a9 + 32) = v16;
  *(a9 + 34) = v17;
  *(a9 + 40) = result;
  *(a9 + 48) = v19;
  *(a9 + 56) = v20;
  *(a9 + 58) = v21;
  *(a9 + 64) = a2;
  *(a9 + 72) = a3;
  *(a9 + 80) = v11;
  *(a9 + 88) = v12;
  *(a9 + 96) = a5;
  *(a9 + 104) = a6;
  *(a9 + 112) = v13;
  return result;
}

uint64_t sub_23DD7DD5C()
{
  v1 = 0x51746E65636E6574;
  if (*v0 != 2)
  {
    v1 = 0x726568746FLL;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0x316573614574656ELL;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23DD7DDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD90E50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD7DDF0(uint64_t a1)
{
  v2 = sub_23DD8A988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD7DE2C(uint64_t a1)
{
  v2 = sub_23DD8A988();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD7DE68(uint64_t a1)
{
  v2 = sub_23DD8AA84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD7DEA4(uint64_t a1)
{
  v2 = sub_23DD8AA84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD7DEE0(uint64_t a1)
{
  v2 = sub_23DD8AAD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD7DF1C(uint64_t a1)
{
  v2 = sub_23DD8AAD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD7DF58(uint64_t a1)
{
  v2 = sub_23DD8A9DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD7DF94(uint64_t a1)
{
  v2 = sub_23DD8A9DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD7DFD0(uint64_t a1)
{
  v2 = sub_23DD8AA30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD7E00C(uint64_t a1)
{
  v2 = sub_23DD8AA30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PasswordAccount.Known.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313190, &qword_23DDA5F20);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313198, &qword_23DDA5F28);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3131A0, &qword_23DDA5F30);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3131A8, &qword_23DDA5F38);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3131B0, &qword_23DDA5F40);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD8A988();
  sub_23DDA4BF0();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_23DD8AA30();
      v24 = v33;
      sub_23DDA4A80();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_23DD8A9DC();
      v24 = v36;
      sub_23DDA4A80();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_23DD8AA84();
    v24 = v30;
    sub_23DDA4A80();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_23DD8AAD8();
  sub_23DDA4A80();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t PasswordAccount.Known.Kind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3131E0, &qword_23DDA5F48);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3131E8, &qword_23DDA5F50);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3131F0, &qword_23DDA5F58);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3131F8, &qword_23DDA5F60);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313200, &unk_23DDA5F68);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_23DD8A988();
  v21 = v53;
  sub_23DDA4BD0();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_23DDA4A70();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_23DD7C49C();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_23DDA49D0();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350) + 48);
      *v34 = &type metadata for PasswordAccount.Known.Kind;
      sub_23DDA4A00();
      sub_23DDA49C0();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_23DD8AA84();
        v39 = v42;
        sub_23DDA49F0();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_23DD8AAD8();
        v31 = v42;
        sub_23DDA49F0();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_23DD8AA30();
      v38 = v42;
      sub_23DDA49F0();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_23DD8A9DC();
      v40 = v42;
      sub_23DDA49F0();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t PasswordAccount.Known.Validated.sanitized.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v12 = *(v1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 112);
  v5 = v14;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_23DD8A950(v11, v10);
}

__n128 PasswordAccount.Known.Validated.sanitized.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v3;
  v10[6] = *(v1 + 96);
  v11 = *(v1 + 112);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v5;
  sub_23DD74C44(v10);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = *(a1 + 112);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v9;
  return result;
}

__n128 PasswordAccount.Known.Validated.init(sanitized:passwordStatus:userFullNameStatus:accountDescriptionStatus:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = *(a1 + 80);
  *(a5 + 64) = *(a1 + 64);
  *(a5 + 80) = v8;
  *(a5 + 96) = *(a1 + 96);
  *(a5 + 112) = *(a1 + 112);
  v9 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  *(a5 + 32) = result;
  *(a5 + 48) = v11;
  *(a5 + 113) = v5;
  *(a5 + 114) = v6;
  *(a5 + 115) = v7;
  return result;
}

uint64_t sub_23DD7ED38(uint64_t a1)
{
  v2 = sub_23DD8ABD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD7ED74(uint64_t a1)
{
  v2 = sub_23DD8ABD4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23DD7EDB0()
{
  v1 = 0x7974706D65;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x65746164696C6176;
  }

  if (*v0)
  {
    v1 = 1685024615;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23DD7EE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD90FBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD7EE50(uint64_t a1)
{
  v2 = sub_23DD8AB2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD7EE8C(uint64_t a1)
{
  v2 = sub_23DD8AB2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD7EEC8(uint64_t a1)
{
  v2 = sub_23DD8AC7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD7EF04(uint64_t a1)
{
  v2 = sub_23DD8AC7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD7EF40(uint64_t a1)
{
  v2 = sub_23DD8AC28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD7EF7C(uint64_t a1)
{
  v2 = sub_23DD8AC28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD7EFB8(uint64_t a1)
{
  v2 = sub_23DD8AB80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD7EFF4(uint64_t a1)
{
  v2 = sub_23DD8AB80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PasswordAccount.Known.Validated.PasswordStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313208, &qword_23DDA5F78);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313210, &qword_23DDA5F80);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313218, &qword_23DDA5F88);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313220, &qword_23DDA5F90);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313228, &qword_23DDA5F98);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD8AB2C();
  sub_23DDA4BF0();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_23DD8ABD4();
      v24 = v33;
      sub_23DDA4A80();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_23DD8AB80();
      v24 = v36;
      sub_23DDA4A80();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_23DD8AC28();
    v24 = v30;
    sub_23DDA4A80();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_23DD8AC7C();
  sub_23DDA4A80();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t PasswordAccount.Known.Validated.PasswordStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313258, &qword_23DDA5FA0);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313260, &qword_23DDA5FA8);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313268, &qword_23DDA5FB0);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313270, &qword_23DDA5FB8);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313278, &qword_23DDA5FC0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_23DD8AB2C();
  v21 = v53;
  sub_23DDA4BD0();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_23DDA4A70();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_23DD7C49C();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_23DDA49D0();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350) + 48);
      *v34 = &type metadata for PasswordAccount.Known.Validated.PasswordStatus;
      sub_23DDA4A00();
      sub_23DDA49C0();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_23DD8AC28();
        v39 = v42;
        sub_23DDA49F0();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_23DD8AC7C();
        v31 = v42;
        sub_23DDA49F0();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_23DD8ABD4();
      v38 = v42;
      sub_23DDA49F0();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_23DD8AB80();
      v40 = v42;
      sub_23DDA49F0();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_23DD7FB0C()
{
  if (*v0)
  {
    result = 1685024615;
  }

  else
  {
    result = 0x7974706D65;
  }

  *v0;
  return result;
}

uint64_t sub_23DD7FB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v6 || (sub_23DDA4B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1685024615 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23DDA4B00();

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

uint64_t sub_23DD7FC14(uint64_t a1)
{
  v2 = sub_23DD8ACD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD7FC50(uint64_t a1)
{
  v2 = sub_23DD8ACD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD7FC8C(uint64_t a1)
{
  v2 = sub_23DD8AD78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD7FCC8(uint64_t a1)
{
  v2 = sub_23DD8AD78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD7FD04(uint64_t a1)
{
  v2 = sub_23DD8AD24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD7FD40(uint64_t a1)
{
  v2 = sub_23DD8AD24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PasswordAccount.Known.Validated.UserFullNameStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313280, &qword_23DDA5FC8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313288, &qword_23DDA5FD0);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313290, &qword_23DDA5FD8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD8ACD0();
  sub_23DDA4BF0();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_23DD8AD24();
    v18 = v22;
    sub_23DDA4A80();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_23DD8AD78();
    sub_23DDA4A80();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t PasswordAccount.Known.Validated.UserFullNameStatus.hashValue.getter()
{
  v1 = *v0;
  sub_23DDA4B70();
  MEMORY[0x23EEFF490](v1);
  return sub_23DDA4BB0();
}

uint64_t PasswordAccount.Known.Validated.UserFullNameStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3132B0, &qword_23DDA5FE0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3132B8, &qword_23DDA5FE8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3132C0, &qword_23DDA5FF0);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD8ACD0();
  v16 = v36;
  sub_23DDA4BD0();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_23DDA4A70();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_23DD7C4A8();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_23DDA49D0();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350) + 48);
      *v26 = &type metadata for PasswordAccount.Known.Validated.UserFullNameStatus;
      sub_23DDA4A00();
      sub_23DDA49C0();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_23DD8AD24();
        sub_23DDA49F0();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_23DD8AD78();
        sub_23DDA49F0();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_23DD8058C()
{
  v1 = 0x746163696C707564;
  if (*v0 != 1)
  {
    v1 = 1685024615;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7974706D65;
  }
}

uint64_t sub_23DD805E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD9112C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD80608(uint64_t a1)
{
  v2 = sub_23DD8ADCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD80644(uint64_t a1)
{
  v2 = sub_23DD8ADCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD80680(uint64_t a1)
{
  v2 = sub_23DD8AE74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD806BC(uint64_t a1)
{
  v2 = sub_23DD8AE74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD806F8(uint64_t a1)
{
  v2 = sub_23DD8AEC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD80734(uint64_t a1)
{
  v2 = sub_23DD8AEC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD80770(uint64_t a1)
{
  v2 = sub_23DD8AE20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD807AC(uint64_t a1)
{
  v2 = sub_23DD8AE20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PasswordAccount.Known.Validated.AccountDescriptionStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3132C8, &qword_23DDA5FF8);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3132D0, &qword_23DDA6000);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3132D8, &qword_23DDA6008);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3132E0, &qword_23DDA6010);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD8ADCC();
  sub_23DDA4BF0();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_23DD8AE74();
      v12 = v26;
      sub_23DDA4A80();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_23DD8AE20();
      v12 = v29;
      sub_23DDA4A80();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_23DD8AEC8();
    sub_23DDA4A80();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t PasswordAccount.Known.Validated.AccountDescriptionStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313308, &qword_23DDA6018);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313310, &qword_23DDA6020);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313318, &qword_23DDA6028);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313320, &qword_23DDA6030);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_23DD8ADCC();
  v20 = v43;
  sub_23DDA4BD0();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_23DDA4A70();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_23DD7C4A0();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_23DDA49D0();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350) + 48);
      *v30 = &type metadata for PasswordAccount.Known.Validated.AccountDescriptionStatus;
      sub_23DDA4A00();
      sub_23DDA49C0();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_23DD8AE74();
          sub_23DDA49F0();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_23DD8AE20();
          v33 = v22;
          sub_23DDA49F0();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_23DD8AEC8();
        sub_23DDA49F0();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

unint64_t sub_23DD810F8()
{
  v1 = 0x657A6974696E6173;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0x64726F7773736170;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23DD81188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD91248(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD811B0(uint64_t a1)
{
  v2 = sub_23DD8B0B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD811EC(uint64_t a1)
{
  v2 = sub_23DD8B0B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PasswordAccount.Known.Validated.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313328, &qword_23DDA6038);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = v1[5];
  v46 = v1[4];
  v47 = v9;
  v48 = v1[6];
  v49 = *(v1 + 112);
  v10 = v1[1];
  v42 = *v1;
  v43 = v10;
  v11 = v1[3];
  v44 = v1[2];
  v45 = v11;
  v12 = *(v1 + 113);
  v50 = *(v1 + 114);
  v51 = v12;
  v22 = *(v1 + 115);
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v13);
  sub_23DD8A950(&v42, &v34);
  sub_23DD8B0B8();
  sub_23DDA4BF0();
  v38 = v46;
  v39 = v47;
  v40 = v48;
  v41 = v49;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v33 = 0;
  sub_23DD8B10C();
  sub_23DDA4AD0();
  if (v2)
  {
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v28 = v37;
    sub_23DD74C44(&v25);
  }

  else
  {
    v18 = v50;
    v19 = v22;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v28 = v37;
    sub_23DD74C44(&v25);
    v24 = v51;
    v23 = 1;
    sub_23DD8B160();
    sub_23DDA4AD0();
    v24 = v18;
    v23 = 2;
    sub_23DD8B1B4();
    sub_23DDA4AD0();
    v24 = v19;
    v23 = 3;
    sub_23DD8B208();
    sub_23DDA4AD0();
  }

  return (*(v5 + 8))(v8, v17);
}

uint64_t PasswordAccount.Known.Validated.hash(into:)()
{
  v1 = v0[113];
  v2 = v0[114];
  v3 = v0[115];
  PasswordAccount.Known.hash(into:)();
  MEMORY[0x23EEFF490](v1);
  MEMORY[0x23EEFF490](v2);
  return MEMORY[0x23EEFF490](v3);
}

uint64_t PasswordAccount.Known.Validated.hashValue.getter()
{
  v1 = v0[113];
  v2 = v0[114];
  v3 = v0[115];
  sub_23DDA4B70();
  PasswordAccount.Known.hash(into:)();
  MEMORY[0x23EEFF490](v1);
  MEMORY[0x23EEFF490](v2);
  MEMORY[0x23EEFF490](v3);
  return sub_23DDA4BB0();
}

uint64_t PasswordAccount.Known.Validated.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313358, &qword_23DDA6040);
  v5 = *(v52 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v52);
  v8 = &v18 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD8B0B8();
  sub_23DDA4BD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  v35 = 0;
  sub_23DD8B25C();
  v11 = v52;
  sub_23DDA4A50();
  v48 = v40;
  v49 = v41;
  v50 = v42;
  v51 = v43;
  v44 = v36;
  v45 = v37;
  v46 = v38;
  v47 = v39;
  LOBYTE(v20) = 1;
  sub_23DD8B2B0();
  sub_23DDA4A50();
  v19 = LOBYTE(v28[0]);
  LOBYTE(v20) = 2;
  sub_23DD8B304();
  sub_23DDA4A50();
  v12 = v28[0];
  v33 = 3;
  sub_23DD8B358();
  sub_23DDA4A50();
  (*(v10 + 8))(v8, v11);
  v13 = v34;
  LOBYTE(v27) = v51;
  v24 = v48;
  v25 = v49;
  v26 = v50;
  v20 = v44;
  v21 = v45;
  v22 = v46;
  v23 = v47;
  LOBYTE(v11) = v19;
  BYTE1(v27) = v19;
  BYTE2(v27) = v12;
  HIBYTE(v27) = v34;
  v14 = v49;
  *(a2 + 64) = v48;
  *(a2 + 80) = v14;
  *(a2 + 96) = v26;
  *(a2 + 112) = v27;
  v15 = v21;
  *a2 = v20;
  *(a2 + 16) = v15;
  v16 = v23;
  *(a2 + 32) = v22;
  *(a2 + 48) = v16;
  sub_23DD8B3AC(&v20, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v28[4] = v48;
  v28[5] = v49;
  v28[6] = v50;
  v29 = v51;
  v28[0] = v44;
  v28[1] = v45;
  v28[2] = v46;
  v28[3] = v47;
  v30 = v11;
  v31 = v12;
  v32 = v13;
  return sub_23DD8B3E4(v28);
}

uint64_t sub_23DD8199C()
{
  v1 = v0[113];
  v2 = v0[114];
  v3 = v0[115];
  PasswordAccount.Known.hash(into:)();
  MEMORY[0x23EEFF490](v1);
  MEMORY[0x23EEFF490](v2);
  return MEMORY[0x23EEFF490](v3);
}

uint64_t sub_23DD819F8()
{
  v1 = v0[113];
  v2 = v0[114];
  v3 = v0[115];
  sub_23DDA4B70();
  PasswordAccount.Known.hash(into:)();
  MEMORY[0x23EEFF490](v1);
  MEMORY[0x23EEFF490](v2);
  MEMORY[0x23EEFF490](v3);
  return sub_23DDA4BB0();
}

uint64_t sub_23DD81AF4(uint64_t a1)
{
  v2 = sub_23DD8B414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD81B30(uint64_t a1)
{
  v2 = sub_23DD8B414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD81B6C(uint64_t a1)
{
  v2 = sub_23DD8B510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD81BA8(uint64_t a1)
{
  v2 = sub_23DD8B510();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD81BE4(uint64_t a1)
{
  v2 = sub_23DD8B4BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD81C20(uint64_t a1)
{
  v2 = sub_23DD8B4BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD81C7C(uint64_t a1)
{
  v2 = sub_23DD8B468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD81CB8(uint64_t a1)
{
  v2 = sub_23DD8B468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PasswordAccount.Known.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313380, &qword_23DDA6048);
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v29 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313388, &qword_23DDA6050);
  v37 = *(v39 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v8 = &v29 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313390, &qword_23DDA6058);
  v36 = *(v38 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v11 = &v29 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313398, &qword_23DDA6060);
  v12 = *(v44 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v44);
  v15 = &v29 - v14;
  v16 = *v1;
  v35 = v1[1];
  v43 = v16;
  v17 = v1[2];
  v33 = v1[3];
  v34 = v17;
  v18 = v1[4];
  v31 = v1[5];
  v32 = v18;
  v19 = *(v1 + 13);
  v30 = *(v1 + 12);
  v29 = v19;
  v20 = *(v1 + 28);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD8B414();
  sub_23DDA4BF0();
  if (v20 >> 30)
  {
    if (v20 >> 30 == 1)
    {
      LOBYTE(v45) = 2;
      sub_23DD8B468();
      v22 = v40;
      v23 = v44;
      sub_23DDA4A80();
      v24 = v42;
      sub_23DDA4AC0();
      (*(v41 + 8))(v22, v24);
      return (*(v12 + 8))(v15, v23);
    }

    else
    {
      LOBYTE(v45) = 1;
      sub_23DD8B4BC();
      v28 = v44;
      sub_23DDA4A80();
      (*(v37 + 8))(v8, v39);
      return (*(v12 + 8))(v15, v28);
    }
  }

  else
  {
    LOBYTE(v45) = 0;
    sub_23DD8B510();
    v26 = v44;
    sub_23DDA4A80();
    v45 = v43;
    v46 = v35;
    v47 = v34;
    v48 = v33;
    v49 = v32;
    v50 = v31;
    v51 = v30;
    v52 = v29;
    v53 = v20 & 0x3FFFFFFF;
    sub_23DD8B564();
    v27 = v38;
    sub_23DDA4AD0();
    (*(v36 + 8))(v11, v27);
    return (*(v12 + 8))(v15, v26);
  }
}

uint64_t PasswordAccount.Known.Error.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3133C8, &qword_23DDA6068);
  v56 = *(v52 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v52);
  v57 = &v50 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3133D0, &qword_23DDA6070);
  v55 = *(v53 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3133D8, &qword_23DDA6078);
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3133E0, &qword_23DDA6080);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v50 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_23DD8B414();
  v19 = v59;
  sub_23DDA4BD0();
  if (!v19)
  {
    v51 = v8;
    v20 = v57;
    v59 = v13;
    v21 = v58;
    v22 = v16;
    v23 = sub_23DDA4A70();
    v24 = (2 * *(v23 + 16)) | 1;
    v70 = v23;
    v71 = v23 + 32;
    v72 = 0;
    v73 = v24;
    v25 = sub_23DD7C4A0();
    if (v25 == 3 || v72 != v73 >> 1)
    {
      v37 = sub_23DDA49D0();
      swift_allocError();
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350) + 48);
      *v39 = &type metadata for PasswordAccount.Known.Error;
      sub_23DDA4A00();
      sub_23DDA49C0();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
      swift_willThrow();
      (*(v59 + 8))(v22, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v25)
      {
        if (v25 == 1)
        {
          LOBYTE(v60) = 1;
          sub_23DD8B4BC();
          sub_23DDA49F0();
          v26 = v59;
          (*(v55 + 8))(v7, v53);
          (*(v26 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0uLL;
          v32 = 0uLL;
          v33 = 0x80000000;
          v34 = 0uLL;
          v35 = 0uLL;
          v36 = 0uLL;
        }

        else
        {
          LOBYTE(v60) = 2;
          sub_23DD8B468();
          v43 = v16;
          sub_23DDA49F0();
          v44 = v59;
          v45 = v20;
          v46 = v52;
          v47 = sub_23DDA4A40();
          v55 = v48;
          v27 = v47;
          (*(v56 + 8))(v45, v46);
          (*(v44 + 8))(v43, v12);
          swift_unknownObjectRelease();
          v29 = 0;
          v30 = 0;
          v28 = &v75;
          *&v31 = v55;
          v33 = 0x40000000;
        }
      }

      else
      {
        LOBYTE(v60) = 0;
        sub_23DD8B510();
        v42 = v16;
        sub_23DDA49F0();
        sub_23DD8B5B8();
        v49 = v51;
        sub_23DDA4A50();
        (*(v54 + 8))(v11, v49);
        (*(v59 + 8))(v42, v12);
        swift_unknownObjectRelease();
        v27 = v60;
        v31 = v61;
        v28 = v62;
        v32 = v64;
        v34 = v66;
        v35 = v67;
        v36 = v68;
        v29 = v63 & 0x1FFFF;
        v30 = v65 & 0x1FFFF;
        v33 = v69 & 0x3010303;
      }

      *v21 = v27;
      *(v21 + 8) = v31;
      *(v21 + 24) = v28;
      *(v21 + 32) = v29;
      *(v21 + 40) = v32;
      *(v21 + 56) = v30;
      *(v21 + 64) = v34;
      *(v21 + 80) = v35;
      *(v21 + 96) = v36;
      *(v21 + 112) = v33;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t sub_23DD828D0()
{
  sub_23DDA4B70();
  PasswordAccount.Known.Error.hash(into:)(v1);
  return sub_23DDA4BB0();
}

uint64_t sub_23DD82914()
{
  sub_23DDA4B70();
  PasswordAccount.Known.Error.hash(into:)(v1);
  return sub_23DDA4BB0();
}

uint64_t PasswordAccount.Unknown.immutable.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t PasswordAccount.Unknown.username.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PasswordAccount.Unknown.username.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PasswordAccount.Unknown.password.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PasswordAccount.Unknown.password.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PasswordAccount.Unknown.incomingServer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 66);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 18) = v4;
}

uint64_t PasswordAccount.Unknown.incomingServer.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  v5 = *(a1 + 18);
  v6 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 66) = v5;
  return result;
}

uint64_t PasswordAccount.Unknown.outgoingServer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 90);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 18) = v4;
}

uint64_t PasswordAccount.Unknown.outgoingServer.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  v5 = *(a1 + 18);
  v6 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  *(v1 + 90) = v5;
  return result;
}

uint64_t PasswordAccount.Unknown.accountDescription.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t PasswordAccount.Unknown.accountDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t PasswordAccount.Unknown.userFullName.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t PasswordAccount.Unknown.userFullName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t PasswordAccount.Unknown.init(immutable:username:password:incomingServer:outgoingServer:accountDescription:userFullName:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = *a6;
  v14 = a6[1];
  v15 = *(a6 + 8);
  v16 = *(a6 + 18);
  v17 = *a7;
  v18 = a7[1];
  result = *(a7 + 8);
  v20 = *(a7 + 18);
  *a9 = v11;
  *(a9 + 8) = v12;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = v13;
  *(a9 + 56) = v14;
  *(a9 + 64) = v15;
  *(a9 + 66) = v16;
  *(a9 + 72) = v17;
  *(a9 + 80) = v18;
  *(a9 + 88) = result;
  *(a9 + 90) = v20;
  *(a9 + 96) = a8;
  *(a9 + 104) = a10;
  *(a9 + 120) = a11;
  return result;
}

uint64_t PasswordAccount.Unknown.Immutable.emailAddress.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t PasswordAccount.Unknown.Immutable.emailAddress.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t static PasswordAccount.Unknown.Immutable.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = sub_23DDA4B00();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

uint64_t sub_23DD82E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23DDA4B00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23DD82EC4(uint64_t a1)
{
  v2 = sub_23DD8B60C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD82F00(uint64_t a1)
{
  v2 = sub_23DD8B60C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PasswordAccount.Unknown.Immutable.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3133F0, &qword_23DDA6088);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD8B60C();

  sub_23DDA4BF0();
  v12[0] = v8;
  v12[1] = v9;
  sub_23DD7A808();
  sub_23DDA4AD0();

  return (*(v4 + 8))(v7, v3);
}

uint64_t PasswordAccount.Unknown.Immutable.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23DDA4940();
}

uint64_t PasswordAccount.Unknown.Immutable.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23DDA4B70();
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t PasswordAccount.Unknown.Immutable.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313400, &qword_23DDA6090);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD8B60C();
  sub_23DDA4BD0();
  if (!v2)
  {
    sub_23DD7A85C();
    sub_23DDA4A50();
    (*(v6 + 8))(v9, v5);
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23DD83298()
{
  v1 = *v0;
  v2 = 0x6C626174756D6D69;
  v3 = 0xD000000000000012;
  if (v1 != 5)
  {
    v3 = 0x6C6C754672657375;
  }

  v4 = 0x676E696D6F636E69;
  if (v1 != 3)
  {
    v4 = 0x676E696F6774756FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656D616E72657375;
  if (v1 != 1)
  {
    v5 = 0x64726F7773736170;
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

uint64_t sub_23DD8339C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD913C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD833C4(uint64_t a1)
{
  v2 = sub_23DD8BCD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD83400(uint64_t a1)
{
  v2 = sub_23DD8BCD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PasswordAccount.Unknown.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313408, &qword_23DDA6098);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v31 = v1[3];
  v32 = v10;
  v11 = v1[4];
  v29 = v1[5];
  v30 = v11;
  v12 = v1[6];
  v27 = v1[7];
  v28 = v12;
  LODWORD(v12) = *(v1 + 32);
  v38 = *(v1 + 66);
  v13 = v1[10];
  v22 = v1[9];
  v23 = v13;
  v24 = *(v1 + 44);
  v25 = *(v1 + 90);
  v26 = v12;
  v14 = v1[13];
  v21[2] = v1[12];
  v21[3] = v14;
  v15 = v1[15];
  v21[0] = v1[14];
  v21[1] = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD8BCD8();

  sub_23DDA4BF0();
  v34 = v9;
  v35 = v8;
  v39 = 0;
  sub_23DD8BD2C();
  v17 = v33;
  sub_23DDA4AD0();
  if (v17)
  {
  }

  else
  {
    v18 = v27;
    v19 = v28;

    LOBYTE(v34) = 1;
    sub_23DDA4A90();
    LOBYTE(v34) = 2;
    sub_23DDA4AC0();
    v34 = v19;
    v35 = v18;
    v36 = v26;
    v37 = v38;
    v39 = 3;
    sub_23DD8A45C();

    sub_23DDA4AD0();

    v34 = v22;
    v35 = v23;
    v36 = v24;
    v37 = v25;
    v39 = 4;
    sub_23DD8A4B0();

    sub_23DDA4AD0();

    LOBYTE(v34) = 5;
    sub_23DDA4AC0();
    LOBYTE(v34) = 6;
    sub_23DDA4AC0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PasswordAccount.Unknown.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = *(v0 + 66);
  v10 = v0[10];
  v14 = v0[9];
  v12 = *(v0 + 32);
  v13 = *(v0 + 44);
  v15 = *(v0 + 90);
  v16 = v0[13];
  v17 = v0[12];
  v18 = v0[15];
  v19 = v0[14];
  sub_23DDA4940();
  sub_23DDA4B90();
  if (v4)
  {
    sub_23DDA4940();
  }

  sub_23DDA4940();
  sub_23DDA4940();
  sub_23DDA4B90();
  if (!v9)
  {
    sub_23DDA4BA0();
  }

  sub_23DDA4940();
  sub_23DDA4B90();
  if (!v15)
  {
    sub_23DDA4BA0();
  }

  sub_23DDA4940();

  return sub_23DDA4940();
}

uint64_t PasswordAccount.Unknown.hashValue.getter()
{
  sub_23DDA4B70();
  PasswordAccount.Unknown.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t PasswordAccount.Unknown.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v47 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313420, &qword_23DDA60A0);
  v4 = *(v48 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v48);
  v7 = &v32 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD8BCD8();
  v9 = v7;
  sub_23DDA4BD0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = v4;
    v11 = v47;
    LOBYTE(v49) = 0;
    sub_23DD8BD80();
    v12 = v48;
    v13 = v9;
    sub_23DDA4A50();
    v14 = v57;
    v46 = v58;
    LOBYTE(v57) = 1;
    v41 = sub_23DDA4A10();
    v45 = v15;
    LOBYTE(v57) = 2;
    v40 = sub_23DDA4A40();
    v44 = v16;
    LOBYTE(v49) = 3;
    sub_23DD8A504();
    sub_23DDA4A50();
    v39 = v57;
    v43 = v58;
    v75 = v59;
    v77 = BYTE2(v59);
    LOBYTE(v49) = 4;
    sub_23DD8A558();
    sub_23DDA4A50();
    v38 = v57;
    v42 = v58;
    v37 = v59;
    v76 = BYTE2(v59);
    LOBYTE(v57) = 5;
    v17 = sub_23DDA4A40();
    v19 = v18;
    v36 = v17;
    v78 = 6;
    v20 = sub_23DDA4A40();
    v21 = *(v10 + 8);
    v35 = v20;
    v22 = v13;
    v24 = v23;
    v21(v22, v12);
    v34 = v14;
    *&v49 = v14;
    *(&v49 + 1) = v46;
    *&v50 = v41;
    *(&v50 + 1) = v45;
    *&v51 = v40;
    *(&v51 + 1) = v44;
    v25 = v38;
    *&v52 = v39;
    *(&v52 + 1) = v43;
    LOWORD(v53) = v75;
    LODWORD(v48) = v77;
    BYTE2(v53) = v77;
    *(&v53 + 1) = v38;
    *&v54 = v42;
    LOWORD(v12) = v37;
    WORD4(v54) = v37;
    v33 = v76;
    BYTE10(v54) = v76;
    v26 = v36;
    *&v55 = v36;
    *(&v55 + 1) = v19;
    *&v56 = v35;
    *(&v56 + 1) = v24;
    v27 = v56;
    v11[6] = v55;
    v11[7] = v27;
    v28 = v50;
    *v11 = v49;
    v11[1] = v28;
    v29 = v52;
    v11[2] = v51;
    v11[3] = v29;
    v30 = v54;
    v11[4] = v53;
    v11[5] = v30;
    sub_23DD8BDD4(&v49, &v57);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v57 = v34;
    v58 = v46;
    v59 = v41;
    v60 = v45;
    v61 = v40;
    v62 = v44;
    v63 = v39;
    v64 = v43;
    v65 = v75;
    v66 = v48;
    v67 = v25;
    v68 = v42;
    v69 = v12;
    v70 = v33;
    v71 = v26;
    v72 = v19;
    v73 = v35;
    v74 = v24;
    return sub_23DD8BE0C(&v57);
  }
}

uint64_t sub_23DD83E8C()
{
  sub_23DDA4B70();
  PasswordAccount.Unknown.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t sub_23DD83ED0()
{
  sub_23DDA4B70();
  PasswordAccount.Unknown.hash(into:)();
  return sub_23DDA4BB0();
}

void *PasswordAccount.Unknown.init(_:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 66) = 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xE000000000000000;
  *(a2 + 88) = 0;
  *(a2 + 90) = 1;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0xE000000000000000;
  *(a2 + 112) = v3;
  *(a2 + 120) = v4;
  return result;
}

uint64_t PasswordAccount.Unknown.Validated.sanitized.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v5 = v1[7];
  v16 = v1[6];
  v4 = v16;
  v17 = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_23DD8BDD4(v11, &v10);
}

__n128 PasswordAccount.Unknown.Validated.sanitized.setter(uint64_t a1)
{
  v3 = v1[5];
  v12[4] = v1[4];
  v12[5] = v3;
  v4 = v1[7];
  v12[6] = v1[6];
  v12[7] = v4;
  v5 = v1[1];
  v12[0] = *v1;
  v12[1] = v5;
  v6 = v1[3];
  v12[2] = v1[2];
  v12[3] = v6;
  sub_23DD8BE0C(v12);
  v7 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v7;
  v8 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v8;
  v9 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v11;
  return result;
}

__n128 PasswordAccount.Unknown.Validated.init(sanitized:passwordStatus:userFullNameStatus:usernameStatus:accountDescriptionStatus:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *(a1 + 80);
  *(a6 + 64) = *(a1 + 64);
  *(a6 + 80) = v10;
  v11 = *(a1 + 112);
  *(a6 + 96) = *(a1 + 96);
  *(a6 + 112) = v11;
  v12 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v12;
  result = *(a1 + 32);
  v14 = *(a1 + 48);
  *(a6 + 32) = result;
  *(a6 + 48) = v14;
  *(a6 + 128) = v6;
  *(a6 + 129) = v7;
  *(a6 + 130) = v8;
  *(a6 + 131) = v9;
  return result;
}

uint64_t sub_23DD841A4(uint64_t a1)
{
  v2 = sub_23DD8BEE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD841E0(uint64_t a1)
{
  v2 = sub_23DD8BEE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD8421C()
{
  v1 = *v0;
  v2 = 0x656465654E746F6ELL;
  v3 = 1685024615;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x65746164696C6176;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7974706D65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23DD842B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD91634(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD842D8(uint64_t a1)
{
  v2 = sub_23DD8BE3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD84314(uint64_t a1)
{
  v2 = sub_23DD8BE3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD84350(uint64_t a1)
{
  v2 = sub_23DD8BF8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD8438C(uint64_t a1)
{
  v2 = sub_23DD8BF8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD843C8(uint64_t a1)
{
  v2 = sub_23DD8BF38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD84404(uint64_t a1)
{
  v2 = sub_23DD8BF38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD84440(uint64_t a1)
{
  v2 = sub_23DD8BFE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD8447C(uint64_t a1)
{
  v2 = sub_23DD8BFE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD844B8(uint64_t a1)
{
  v2 = sub_23DD8BE90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD844F4(uint64_t a1)
{
  v2 = sub_23DD8BE90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PasswordAccount.Unknown.Validated.UsernameStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313430, &qword_23DDA60A8);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313438, &qword_23DDA60B0);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313440, &qword_23DDA60B8);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313448, &qword_23DDA60C0);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313450, &qword_23DDA60C8);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313458, &qword_23DDA60D0);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v52);
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_23DD8BE3C();
  sub_23DDA4BF0();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_23DD8BF8C();
      v38 = v52;
      sub_23DDA4A80();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_23DD8BFE0();
      v38 = v52;
      sub_23DDA4A80();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_23DD8BF38();
      v29 = v40;
      v30 = v52;
      sub_23DDA4A80();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_23DD8BEE4();
      v29 = v43;
      v30 = v52;
      sub_23DDA4A80();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_23DD8BE90();
      v29 = v46;
      v30 = v52;
      sub_23DDA4A80();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

uint64_t PasswordAccount.Unknown.Validated.UsernameStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313490, &qword_23DDA60D8);
  v60 = *(v63 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v63);
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313498, &qword_23DDA60E0);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v66 = &v53 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3134A0, &qword_23DDA60E8);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v65 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3134A8, &qword_23DDA60F0);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3134B0, &qword_23DDA60F8);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3134B8, &qword_23DDA6100);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_23DD8BE3C();
  v26 = v69;
  sub_23DDA4BD0();
  if (v26)
  {
    goto LABEL_11;
  }

  v27 = v18;
  v53 = v15;
  v54 = 0;
  v29 = v65;
  v28 = v66;
  v69 = v20;
  v30 = v67;
  v31 = v19;
  v32 = sub_23DDA4A70();
  v33 = (2 * *(v32 + 16)) | 1;
  v70 = v32;
  v71 = v32 + 32;
  v72 = 0;
  v73 = v33;
  v34 = sub_23DD7C4A4();
  if (v34 == 5 || v72 != v73 >> 1)
  {
    v39 = sub_23DDA49D0();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350) + 48);
    *v41 = &type metadata for PasswordAccount.Unknown.Validated.UsernameStatus;
    sub_23DDA4A00();
    sub_23DDA49C0();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v69 + 8))(v23, v19);
    goto LABEL_10;
  }

  v74 = v34;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v75 = 1;
      sub_23DD8BF8C();
      v51 = v14;
      v46 = v19;
      v52 = v54;
      sub_23DDA49F0();
      if (v52)
      {
        v48 = v69;
        goto LABEL_23;
      }

      (*(v57 + 8))(v51, v58);
      (*(v69 + 8))(v23, v19);
    }

    else
    {
      v75 = 0;
      sub_23DD8BFE0();
      v45 = v54;
      sub_23DDA49F0();
      if (v45)
      {
        (*(v69 + 8))(v23, v19);
        goto LABEL_10;
      }

      (*(v55 + 8))(v27, v53);
      (*(v69 + 8))(v23, v19);
    }

    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
    goto LABEL_30;
  }

  v35 = v30;
  if (v34 == 2)
  {
    v75 = 2;
    sub_23DD8BF38();
    v46 = v31;
    v47 = v54;
    sub_23DDA49F0();
    v48 = v69;
    if (!v47)
    {
      (*(v56 + 8))(v29, v59);
      (*(v48 + 8))(v23, v46);
LABEL_25:
      swift_unknownObjectRelease();
      v43 = v68;
      goto LABEL_30;
    }

LABEL_23:
    (*(v48 + 8))(v23, v46);
    goto LABEL_10;
  }

  v36 = v23;
  v37 = v69;
  if (v34 != 3)
  {
    v75 = 4;
    sub_23DD8BE90();
    v49 = v64;
    v50 = v54;
    sub_23DDA49F0();
    if (v50)
    {
      (*(v37 + 8))(v36, v31);
      goto LABEL_10;
    }

    (*(v60 + 8))(v49, v63);
    (*(v37 + 8))(v36, v31);
    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
LABEL_30:
    *v35 = v74;
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v75 = 3;
  sub_23DD8BEE4();
  v38 = v54;
  sub_23DDA49F0();
  if (!v38)
  {
    (*(v62 + 8))(v28, v61);
    (*(v37 + 8))(v36, v31);
    goto LABEL_25;
  }

  (*(v37 + 8))(v36, v31);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v43 = v68;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_23DD8529C()
{
  v1 = 1885433193;
  if (*v0 != 1)
  {
    v1 = 7368560;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1886678387;
  }
}

uint64_t sub_23DD852E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD917F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD85308(uint64_t a1)
{
  v2 = sub_23DD8C034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD85344(uint64_t a1)
{
  v2 = sub_23DD8C034();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD85380(uint64_t a1)
{
  v2 = sub_23DD8C0DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD853BC(uint64_t a1)
{
  v2 = sub_23DD8C0DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD853F8(uint64_t a1)
{
  v2 = sub_23DD8C088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD85434(uint64_t a1)
{
  v2 = sub_23DD8C088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD85470(uint64_t a1)
{
  v2 = sub_23DD8C130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD854AC(uint64_t a1)
{
  v2 = sub_23DD8C130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PasswordAccount.Unknown.Validated.ServerStatus.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3134C0, &qword_23DDA6108);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3134C8, &qword_23DDA6110);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3134D0, &qword_23DDA6118);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3134D8, &qword_23DDA6120);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD8C034();
  sub_23DDA4BF0();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_23DD8C0DC();
      v12 = v26;
      sub_23DDA4A80();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_23DD8C088();
      v12 = v29;
      sub_23DDA4A80();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_23DD8C130();
    sub_23DDA4A80();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t PasswordAccount.Unknown.Validated.ServerStatus.Kind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313500, &qword_23DDA6128);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313508, &qword_23DDA6130);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313510, &qword_23DDA6138);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313518, &qword_23DDA6140);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_23DD8C034();
  v20 = v43;
  sub_23DDA4BD0();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_23DDA4A70();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_23DD7C4A0();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_23DDA49D0();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350) + 48);
      *v30 = &type metadata for PasswordAccount.Unknown.Validated.ServerStatus.Kind;
      sub_23DDA4A00();
      sub_23DDA49C0();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_23DD8C0DC();
          sub_23DDA49F0();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_23DD8C088();
          v33 = v22;
          sub_23DDA49F0();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_23DD8C130();
        sub_23DDA49F0();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_23DD85DF8()
{
  v1 = *v0;
  v2 = 0x7974706D65;
  v3 = 0x6F54656C62616E75;
  v4 = 1685024615;
  if (v1 != 4)
  {
    v4 = 0x65746164696C6176;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4E64696C61766E69;
  if (v1 != 1)
  {
    v5 = 0x74736978656E6F6ELL;
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

uint64_t sub_23DD85ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD91910(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD85F00(uint64_t a1)
{
  v2 = sub_23DD8C184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD85F3C(uint64_t a1)
{
  v2 = sub_23DD8C184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD85F78(uint64_t a1)
{
  v2 = sub_23DD8C424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD85FB4(uint64_t a1)
{
  v2 = sub_23DD8C424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD85FF0(uint64_t a1)
{
  v2 = sub_23DD8C2D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD8602C(uint64_t a1)
{
  v2 = sub_23DD8C2D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD86068(uint64_t a1)
{
  v2 = sub_23DD8C3D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD860A4(uint64_t a1)
{
  v2 = sub_23DD8C3D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD860E0(uint64_t a1)
{
  v2 = sub_23DD8C37C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD8611C(uint64_t a1)
{
  v2 = sub_23DD8C37C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD86158(uint64_t a1)
{
  v2 = sub_23DD8C328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD86194(uint64_t a1)
{
  v2 = sub_23DD8C328();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD861D0()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_23DD861EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_23DDA4B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23DDA4B00();

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

uint64_t sub_23DD862B8(uint64_t a1)
{
  v2 = sub_23DD8C1D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD862F4(uint64_t a1)
{
  v2 = sub_23DD8C1D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PasswordAccount.Unknown.Validated.ServerStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313520, &qword_23DDA6148);
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313528, &qword_23DDA6150);
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313530, &qword_23DDA6158);
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v46 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313538, &qword_23DDA6160);
  v44 = *(v12 - 8);
  v45 = v12;
  v13 = *(v44 + 64);
  MEMORY[0x28223BE20](v12);
  v43 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313540, &qword_23DDA6168);
  v56 = *(v15 - 8);
  v16 = *(v56 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313548, &qword_23DDA6170);
  v55 = *(v19 - 8);
  v20 = *(v55 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v43 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313550, &qword_23DDA6178);
  v57 = *(v23 - 8);
  v58 = v23;
  v24 = *(v57 + 64);
  MEMORY[0x28223BE20](v23);
  v25 = *v1;
  v27 = a1[3];
  v26 = a1[4];
  v28 = a1;
  v30 = &v43 - v29;
  __swift_project_boxed_opaque_existential_1(v28, v27);
  sub_23DD8C184();
  sub_23DDA4BF0();
  if (v25 <= 4u)
  {
    v34 = v55;
    v35 = v56;
    if (v25 != 3)
    {
      v32 = v58;
      v31 = v59;
      if (v25 == 4)
      {
        v61 = 1;
        sub_23DD8C3D0();
        sub_23DDA4A80();
        (*(v35 + 8))(v18, v15);
        return (*(v57 + 8))(v30, v32);
      }

LABEL_14:
      v69 = 5;
      sub_23DD8C1D8();
      v41 = v52;
      sub_23DDA4A80();
      v68 = v25;
      v67 = 0;
      sub_23DD8C22C();
      v42 = v54;
      sub_23DDA4AD0();
      if (!v31)
      {
        v66 = HIBYTE(v25);
        v65 = 1;
        sub_23DD8C280();
        sub_23DDA4AD0();
      }

      (*(v53 + 8))(v41, v42);
      return (*(v57 + 8))(v30, v32);
    }

    v60 = 0;
    sub_23DD8C424();
    v37 = v58;
    sub_23DDA4A80();
    (*(v34 + 8))(v22, v19);
    return (*(v57 + 8))(v30, v37);
  }

  if (v25 == 5)
  {
    v62 = 2;
    sub_23DD8C37C();
    v36 = v43;
    v37 = v58;
    sub_23DDA4A80();
    v39 = v44;
    v38 = v45;
LABEL_11:
    (*(v39 + 8))(v36, v38);
    return (*(v57 + 8))(v30, v37);
  }

  if (v25 == 6)
  {
    v63 = 3;
    sub_23DD8C328();
    v36 = v46;
    v37 = v58;
    sub_23DDA4A80();
    v39 = v47;
    v38 = v48;
    goto LABEL_11;
  }

  v32 = v58;
  v31 = v59;
  if (v25 != 7)
  {
    goto LABEL_14;
  }

  v64 = 4;
  sub_23DD8C2D4();
  v33 = v49;
  sub_23DDA4A80();
  (*(v50 + 8))(v33, v51);
  return (*(v57 + 8))(v30, v32);
}

uint64_t PasswordAccount.Unknown.Validated.ServerStatus.hash(into:)()
{
  v1 = *v0;
  if ((v1 - 3) >= 5u)
  {
    v2 = v1 >> 8;
    MEMORY[0x23EEFF490](5);
    MEMORY[0x23EEFF490](v1);
  }

  else
  {
    v2 = (v1 - 3);
  }

  return MEMORY[0x23EEFF490](v2);
}

uint64_t PasswordAccount.Unknown.Validated.ServerStatus.hashValue.getter()
{
  v1 = *v0;
  sub_23DDA4B70();
  if ((v1 - 3) >= 5u)
  {
    v2 = v1 >> 8;
    MEMORY[0x23EEFF490](5);
    MEMORY[0x23EEFF490](v1);
  }

  else
  {
    v2 = (v1 - 3);
  }

  MEMORY[0x23EEFF490](v2);
  return sub_23DDA4BB0();
}

uint64_t PasswordAccount.Unknown.Validated.ServerStatus.init(from:)@<X0>(void *a1@<X0>, __int16 *a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3135A0, &qword_23DDA6180);
  v4 = *(v3 - 8);
  v74 = v3;
  v75 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v79 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3135A8, &qword_23DDA6188);
  v8 = *(v7 - 8);
  v72 = v7;
  v73 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v78 = &v62 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3135B0, &qword_23DDA6190);
  v71 = *(v66 - 8);
  v11 = *(v71 + 64);
  MEMORY[0x28223BE20](v66);
  v77 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3135B8, &qword_23DDA6198);
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v13);
  v76 = &v62 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3135C0, &qword_23DDA61A0);
  v67 = *(v16 - 8);
  v68 = v16;
  v17 = *(v67 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3135C8, &qword_23DDA61A8);
  v65 = *(v20 - 8);
  v21 = *(v65 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v62 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3135D0, &qword_23DDA61B0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v62 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_23DD8C184();
  v31 = v81;
  sub_23DDA4BD0();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(v82);
  }

  v32 = v23;
  v62 = v20;
  v63 = v19;
  v34 = v77;
  v33 = v78;
  v81 = v25;
  v36 = v79;
  v35 = v80;
  v64 = v24;
  v37 = sub_23DDA4A70();
  v38 = (2 * *(v37 + 16)) | 1;
  v83 = v37;
  v84 = v37 + 32;
  v85 = 0;
  v86 = v38;
  v39 = sub_23DD78BC4();
  if (v39 == 6 || v85 != v86 >> 1)
  {
    v43 = sub_23DDA49D0();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350) + 48);
    *v45 = &type metadata for PasswordAccount.Unknown.Validated.ServerStatus;
    v47 = v64;
    sub_23DDA4A00();
    sub_23DDA49C0();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
    swift_willThrow();
    (*(v81 + 8))(v28, v47);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v82);
  }

  if (v39 > 2u)
  {
    v49 = v81;
    if (v39 == 3)
    {
      v89 = 3;
      sub_23DD8C328();
      v53 = v64;
      sub_23DDA49F0();
      (*(v71 + 8))(v34, v66);
      (*(v49 + 8))(v28, v53);
      swift_unknownObjectRelease();
      v57 = 6;
    }

    else
    {
      v50 = v64;
      if (v39 == 4)
      {
        v89 = 4;
        sub_23DD8C2D4();
        sub_23DDA49F0();
        (*(v73 + 8))(v33, v72);
        (*(v49 + 8))(v28, v50);
        swift_unknownObjectRelease();
        v57 = 7;
      }

      else
      {
        v89 = 5;
        sub_23DD8C1D8();
        v56 = v36;
        sub_23DDA49F0();
        v58 = v50;
        v88 = 0;
        sub_23DD8C478();
        v59 = v74;
        sub_23DDA4A50();
        v60 = v56;
        v61 = v58;
        LOWORD(v58) = v89;
        v87 = 1;
        sub_23DD8C4CC();
        sub_23DDA4A50();
        (*(v75 + 8))(v60, v59);
        (*(v49 + 8))(v28, v61);
        swift_unknownObjectRelease();
        v57 = v58 | (v88 << 8);
      }
    }
  }

  else
  {
    v40 = v81;
    if (v39)
    {
      if (v39 == 1)
      {
        v89 = 1;
        sub_23DD8C3D0();
        v41 = v63;
        v42 = v64;
        sub_23DDA49F0();
        (*(v67 + 8))(v41, v68);
        (*(v40 + 8))(v28, v42);
        swift_unknownObjectRelease();
        v57 = 4;
      }

      else
      {
        v89 = 2;
        sub_23DD8C37C();
        v54 = v76;
        v55 = v64;
        sub_23DDA49F0();
        (*(v69 + 8))(v54, v70);
        (*(v40 + 8))(v28, v55);
        swift_unknownObjectRelease();
        v57 = 5;
      }
    }

    else
    {
      v89 = 0;
      sub_23DD8C424();
      v51 = v32;
      v52 = v64;
      sub_23DDA49F0();
      (*(v65 + 8))(v51, v62);
      (*(v40 + 8))(v28, v52);
      swift_unknownObjectRelease();
      v57 = 3;
    }
  }

  *v35 = v57;
  return __swift_destroy_boxed_opaque_existential_1(v82);
}

uint64_t sub_23DD87524()
{
  v1 = *v0;
  if ((v1 - 3) >= 5u)
  {
    v2 = v1 >> 8;
    MEMORY[0x23EEFF490](5);
    MEMORY[0x23EEFF490](v1);
  }

  else
  {
    v2 = (v1 - 3);
  }

  return MEMORY[0x23EEFF490](v2);
}

uint64_t sub_23DD87588()
{
  v1 = *v0;
  sub_23DDA4B70();
  if ((v1 - 3) >= 5u)
  {
    v2 = v1 >> 8;
    MEMORY[0x23EEFF490](5);
    MEMORY[0x23EEFF490](v1);
  }

  else
  {
    v2 = (v1 - 3);
  }

  MEMORY[0x23EEFF490](v2);
  return sub_23DDA4BB0();
}

unint64_t sub_23DD87640()
{
  v1 = *v0;
  v2 = 0x657A6974696E6173;
  v3 = 0xD000000000000012;
  v4 = 0x656D616E72657375;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64726F7773736170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23DD876FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD91B24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD87724(uint64_t a1)
{
  v2 = sub_23DD8C6AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD87760(uint64_t a1)
{
  v2 = sub_23DD8C6AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PasswordAccount.Unknown.Validated.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3135E8, &qword_23DDA61B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = v1[5];
  v48 = v1[4];
  v49 = v9;
  v10 = v1[7];
  v50 = v1[6];
  v51 = v10;
  v11 = v1[1];
  v44 = *v1;
  v45 = v11;
  v12 = v1[3];
  v46 = v1[2];
  v47 = v12;
  v13 = *(v1 + 128);
  v52 = *(v1 + 129);
  v53 = v13;
  v14 = *(v1 + 130);
  HIDWORD(v23) = *(v1 + 131);
  v24 = v14;
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v15);
  sub_23DD8BDD4(&v44, &v36);
  sub_23DD8C6AC();
  sub_23DDA4BF0();
  v40 = v48;
  v41 = v49;
  v42 = v50;
  v43 = v51;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  v39 = v47;
  v35 = 0;
  sub_23DD8C700();
  sub_23DDA4AD0();
  if (v2)
  {
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v34 = v43;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    sub_23DD8BE0C(&v27);
  }

  else
  {
    v20 = v52;
    v21 = v24;
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v34 = v43;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    sub_23DD8BE0C(&v27);
    v26 = v53;
    v25 = 1;
    sub_23DD8B160();
    sub_23DDA4AD0();
    v26 = v20;
    v25 = 2;
    sub_23DD8B1B4();
    sub_23DDA4AD0();
    v26 = v21;
    v25 = 3;
    sub_23DD8C754();
    sub_23DDA4AD0();
    v26 = BYTE4(v23);
    v25 = 4;
    sub_23DD8B208();
    sub_23DDA4AD0();
  }

  return (*(v5 + 8))(v8, v19);
}

uint64_t PasswordAccount.Unknown.Validated.hash(into:)()
{
  v1 = v0[128];
  v2 = v0[129];
  v3 = v0[130];
  v4 = v0[131];
  PasswordAccount.Unknown.hash(into:)();
  MEMORY[0x23EEFF490](v1);
  MEMORY[0x23EEFF490](v2);
  MEMORY[0x23EEFF490](v3);
  return MEMORY[0x23EEFF490](v4);
}

uint64_t PasswordAccount.Unknown.Validated.hashValue.getter()
{
  v1 = v0[128];
  v2 = v0[129];
  v3 = v0[130];
  v4 = v0[131];
  sub_23DDA4B70();
  PasswordAccount.Unknown.hash(into:)();
  MEMORY[0x23EEFF490](v1);
  MEMORY[0x23EEFF490](v2);
  MEMORY[0x23EEFF490](v3);
  MEMORY[0x23EEFF490](v4);
  return sub_23DDA4BB0();
}

uint64_t PasswordAccount.Unknown.Validated.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313608, &qword_23DDA61C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_23DD8C6AC();
  sub_23DDA4BD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  v12 = v6;
  v58 = 0;
  sub_23DD8C7A8();
  v13 = v5;
  sub_23DDA4A50();
  v51 = v43;
  v52 = v44;
  v53 = v45;
  v54 = v46;
  v47 = v39;
  v48 = v40;
  v49 = v41;
  v50 = v42;
  LOBYTE(v25) = 1;
  sub_23DD8B2B0();
  sub_23DDA4A50();
  v14 = v34[0];
  LOBYTE(v25) = 2;
  sub_23DD8B304();
  sub_23DDA4A50();
  v15 = v34[0];
  LOBYTE(v25) = 3;
  sub_23DD8C7FC();
  sub_23DDA4A50();
  v55 = LOBYTE(v34[0]);
  v56 = 4;
  sub_23DD8B358();
  sub_23DDA4A50();
  (*(v12 + 8))(v9, v13);
  v16 = v57;
  v29 = v51;
  v30 = v52;
  v31 = v53;
  v32 = v54;
  v25 = v47;
  v26 = v48;
  v27 = v49;
  v28 = v50;
  LOBYTE(v33) = v14;
  BYTE1(v33) = v15;
  LOBYTE(v13) = v55;
  BYTE2(v33) = v55;
  HIBYTE(v33) = v57;
  v17 = v52;
  v18 = v53;
  *(a2 + 64) = v51;
  *(a2 + 80) = v17;
  v19 = v32;
  *(a2 + 96) = v18;
  *(a2 + 112) = v19;
  *(a2 + 128) = v33;
  v20 = v28;
  *(a2 + 32) = v27;
  *(a2 + 48) = v20;
  v21 = v26;
  *a2 = v25;
  *(a2 + 16) = v21;
  sub_23DD8C850(&v25, v34);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v34[4] = v51;
  v34[5] = v52;
  v34[6] = v53;
  v34[7] = v54;
  v34[0] = v47;
  v34[1] = v48;
  v34[2] = v49;
  v34[3] = v50;
  v35 = v14;
  v36 = v15;
  v37 = v13;
  v38 = v16;
  return sub_23DD8C888(v34);
}

uint64_t sub_23DD87F80()
{
  v1 = v0[128];
  v2 = v0[129];
  v3 = v0[130];
  v4 = v0[131];
  PasswordAccount.Unknown.hash(into:)();
  MEMORY[0x23EEFF490](v1);
  MEMORY[0x23EEFF490](v2);
  MEMORY[0x23EEFF490](v3);
  return MEMORY[0x23EEFF490](v4);
}

uint64_t sub_23DD87FE8()
{
  v1 = v0[128];
  v2 = v0[129];
  v3 = v0[130];
  v4 = v0[131];
  sub_23DDA4B70();
  PasswordAccount.Unknown.hash(into:)();
  MEMORY[0x23EEFF490](v1);
  MEMORY[0x23EEFF490](v2);
  MEMORY[0x23EEFF490](v3);
  MEMORY[0x23EEFF490](v4);
  return sub_23DDA4BB0();
}

uint64_t sub_23DD880FC(uint64_t a1)
{
  v2 = sub_23DD8C8B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD88138(uint64_t a1)
{
  v2 = sub_23DD8C8B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD88174(uint64_t a1)
{
  v2 = sub_23DD8C9B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD881B0(uint64_t a1)
{
  v2 = sub_23DD8C9B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD881EC(uint64_t a1)
{
  v2 = sub_23DD8C960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD88228(uint64_t a1)
{
  v2 = sub_23DD8C960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD88264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23DDA4B00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23DD882F0(uint64_t a1)
{
  v2 = sub_23DD8C90C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD8832C(uint64_t a1)
{
  v2 = sub_23DD8C90C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PasswordAccount.Unknown.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313620, &qword_23DDA61C8);
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v29 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313628, &qword_23DDA61D0);
  v37 = *(v39 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v8 = &v29 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313630, &qword_23DDA61D8);
  v36 = *(v38 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v11 = &v29 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313638, &qword_23DDA61E0);
  v12 = *(v44 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v44);
  v15 = &v29 - v14;
  v16 = *v1;
  v35 = v1[1];
  v43 = v16;
  v17 = v1[2];
  v33 = v1[3];
  v34 = v17;
  v18 = v1[4];
  v31 = v1[5];
  v32 = v18;
  v19 = *(v1 + 13);
  v30 = *(v1 + 12);
  v29 = v19;
  v20 = *(v1 + 28);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD8C8B8();
  sub_23DDA4BF0();
  if (v20 >> 30)
  {
    if (v20 >> 30 == 1)
    {
      LOBYTE(v45) = 2;
      sub_23DD8C90C();
      v22 = v40;
      v23 = v44;
      sub_23DDA4A80();
      v24 = v42;
      sub_23DDA4AC0();
      (*(v41 + 8))(v22, v24);
      return (*(v12 + 8))(v15, v23);
    }

    else
    {
      LOBYTE(v45) = 1;
      sub_23DD8C960();
      v28 = v44;
      sub_23DDA4A80();
      (*(v37 + 8))(v8, v39);
      return (*(v12 + 8))(v15, v28);
    }
  }

  else
  {
    LOBYTE(v45) = 0;
    sub_23DD8C9B4();
    v26 = v44;
    sub_23DDA4A80();
    v45 = v43;
    v46 = v35;
    v47 = v34;
    v48 = v33;
    v49 = v32;
    v50 = v31;
    v51 = v30;
    v52 = v29;
    v53 = v20 & 0x3FFFFFFF;
    sub_23DD8B564();
    v27 = v38;
    sub_23DDA4AD0();
    (*(v36 + 8))(v11, v27);
    return (*(v12 + 8))(v15, v26);
  }
}

uint64_t _s23AccountsUISupportShared15PasswordAccountO5KnownV5ErrorO4hash4intoys6HasherVz_tF_0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 115);
  if (!(v3 >> 6))
  {
    v5 = *(v0 + 114);
    v6 = *(v0 + 56);
    MEMORY[0x23EEFF490](0);
    v9 = *(v0 + 2);
    v8 = *(v0 + 1);
    v11 = *(v0 + 4);
    v10 = *(v0 + 3);
    v13 = *(v0 + 6);
    v12 = *(v0 + 5);
    PasswordAccount.Known.hash(into:)();
    MEMORY[0x23EEFF490](v6 >> 8);
    MEMORY[0x23EEFF490](v5 & 1);
    v7 = v3 & 0x3F;
    return MEMORY[0x23EEFF490](v7);
  }

  if (v3 >> 6 != 1)
  {
    v7 = 1;
    return MEMORY[0x23EEFF490](v7);
  }

  MEMORY[0x23EEFF490](2);

  return sub_23DDA4940();
}

uint64_t _s23AccountsUISupportShared15PasswordAccountO5KnownV5ErrorO9hashValueSivg_0()
{
  v12 = v0[1];
  v13 = *v0;
  v10 = v0[3];
  v11 = v0[2];
  v8 = v0[5];
  v9 = v0[4];
  v1 = *(v0 + 12);
  v2 = *(v0 + 13);
  v3 = *(v0 + 56);
  v4 = *(v0 + 114);
  v5 = *(v0 + 115);
  sub_23DDA4B70();
  if (!(v5 >> 6))
  {
    MEMORY[0x23EEFF490](0);
    PasswordAccount.Known.hash(into:)();
    MEMORY[0x23EEFF490](v3 >> 8);
    MEMORY[0x23EEFF490](v4 & 1);
    v6 = v5 & 0x3F;
LABEL_6:
    MEMORY[0x23EEFF490](v6);
    return sub_23DDA4BB0();
  }

  if (v5 >> 6 != 1)
  {
    v6 = 1;
    goto LABEL_6;
  }

  MEMORY[0x23EEFF490](2);
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t PasswordAccount.Unknown.Error.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313660, &qword_23DDA61E8);
  v56 = *(v52 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v52);
  v57 = &v50 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313668, &qword_23DDA61F0);
  v55 = *(v53 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313670, &qword_23DDA61F8);
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313678, &qword_23DDA6200);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v50 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_23DD8C8B8();
  v19 = v59;
  sub_23DDA4BD0();
  if (!v19)
  {
    v51 = v8;
    v20 = v57;
    v59 = v13;
    v21 = v58;
    v22 = v16;
    v23 = sub_23DDA4A70();
    v24 = (2 * *(v23 + 16)) | 1;
    v70 = v23;
    v71 = v23 + 32;
    v72 = 0;
    v73 = v24;
    v25 = sub_23DD7C4A0();
    if (v25 == 3 || v72 != v73 >> 1)
    {
      v37 = sub_23DDA49D0();
      swift_allocError();
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350) + 48);
      *v39 = &type metadata for PasswordAccount.Unknown.Error;
      sub_23DDA4A00();
      sub_23DDA49C0();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
      swift_willThrow();
      (*(v59 + 8))(v22, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v25)
      {
        if (v25 == 1)
        {
          LOBYTE(v60) = 1;
          sub_23DD8C960();
          sub_23DDA49F0();
          v26 = v59;
          (*(v55 + 8))(v7, v53);
          (*(v26 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0uLL;
          v32 = 0uLL;
          v33 = 0x80000000;
          v34 = 0uLL;
          v35 = 0uLL;
          v36 = 0uLL;
        }

        else
        {
          LOBYTE(v60) = 2;
          sub_23DD8C90C();
          v43 = v16;
          sub_23DDA49F0();
          v44 = v59;
          v45 = v20;
          v46 = v52;
          v47 = sub_23DDA4A40();
          v55 = v48;
          v27 = v47;
          (*(v56 + 8))(v45, v46);
          (*(v44 + 8))(v43, v12);
          swift_unknownObjectRelease();
          v29 = 0;
          v30 = 0;
          v28 = &v75;
          *&v31 = v55;
          v33 = 0x40000000;
        }
      }

      else
      {
        LOBYTE(v60) = 0;
        sub_23DD8C9B4();
        v42 = v16;
        sub_23DDA49F0();
        sub_23DD8B5B8();
        v49 = v51;
        sub_23DDA4A50();
        (*(v54 + 8))(v11, v49);
        (*(v59 + 8))(v42, v12);
        swift_unknownObjectRelease();
        v27 = v60;
        v31 = v61;
        v28 = v62;
        v32 = v64;
        v34 = v66;
        v35 = v67;
        v36 = v68;
        v29 = v63 & 0x1FFFF;
        v30 = v65 & 0x1FFFF;
        v33 = v69 & 0x3010303;
      }

      *v21 = v27;
      *(v21 + 8) = v31;
      *(v21 + 24) = v28;
      *(v21 + 32) = v29;
      *(v21 + 40) = v32;
      *(v21 + 56) = v30;
      *(v21 + 64) = v34;
      *(v21 + 80) = v35;
      *(v21 + 96) = v36;
      *(v21 + 112) = v33;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t sub_23DD89178()
{
  v12 = v0[1];
  v13 = *v0;
  v10 = v0[3];
  v11 = v0[2];
  v8 = v0[5];
  v9 = v0[4];
  v1 = *(v0 + 12);
  v2 = *(v0 + 13);
  v3 = *(v0 + 56);
  v4 = *(v0 + 114);
  v5 = *(v0 + 115);
  sub_23DDA4B70();
  if (!(v5 >> 6))
  {
    MEMORY[0x23EEFF490](0);
    PasswordAccount.Known.hash(into:)();
    MEMORY[0x23EEFF490](v3 >> 8);
    MEMORY[0x23EEFF490](v4 & 1);
    v6 = v5 & 0x3F;
LABEL_6:
    MEMORY[0x23EEFF490](v6);
    return sub_23DDA4BB0();
  }

  if (v5 >> 6 != 1)
  {
    v6 = 1;
    goto LABEL_6;
  }

  MEMORY[0x23EEFF490](2);
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t sub_23DD892B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 32) = 0;
  *(a3 + 56) = 0;
  *(a3 + 112) = 0x40000000;
}

uint64_t PasswordAccount.ResolvedAccount.accountDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PasswordAccount.ResolvedAccount.accountDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PasswordAccount.ResolvedAccount.userFullName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PasswordAccount.ResolvedAccount.userFullName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PasswordAccount.ResolvedAccount.emailAddress.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t PasswordAccount.ResolvedAccount.emailAddress.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t PasswordAccount.ResolvedAccount.server.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[8];
  v13 = v1[7];
  v2 = v13;
  v14 = v3;
  v15 = v1[9];
  v4 = v15;
  v5 = v1[4];
  v10[0] = v1[3];
  v10[1] = v5;
  v6 = v1[6];
  v11 = v1[5];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_23DD8CA08(v10, &v9);
}

__n128 PasswordAccount.ResolvedAccount.server.setter(uint64_t a1)
{
  v3 = v1[8];
  v9[4] = v1[7];
  v9[5] = v3;
  v9[6] = v1[9];
  v4 = v1[4];
  v9[0] = v1[3];
  v9[1] = v4;
  v5 = v1[6];
  v9[2] = v1[5];
  v9[3] = v5;
  sub_23DD8CA64(v9);
  v6 = *(a1 + 80);
  v1[7] = *(a1 + 64);
  v1[8] = v6;
  v1[9] = *(a1 + 96);
  v7 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v7;
  result = *(a1 + 48);
  v1[5] = *(a1 + 32);
  v1[6] = result;
  return result;
}

__n128 PasswordAccount.ResolvedAccount.init(accountDescription:userFullName:emailAddress:server:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  v8 = a5[1];
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v7;
  *(a7 + 40) = v8;
  v9 = *(a6 + 80);
  *(a7 + 112) = *(a6 + 64);
  *(a7 + 128) = v9;
  *(a7 + 144) = *(a6 + 96);
  v10 = *(a6 + 16);
  *(a7 + 48) = *a6;
  *(a7 + 64) = v10;
  result = *(a6 + 48);
  *(a7 + 80) = *(a6 + 32);
  *(a7 + 96) = result;
  return result;
}

unint64_t sub_23DD895B8()
{
  v1 = 0x6C6C754672657375;
  v2 = 0x6464416C69616D65;
  if (*v0 != 2)
  {
    v2 = 0x726576726573;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23DD89644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD91E0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD8966C(uint64_t a1)
{
  v2 = sub_23DD8CAB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD896A8(uint64_t a1)
{
  v2 = sub_23DD8CAB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PasswordAccount.ResolvedAccount.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313680, &qword_23DDA6208);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[3];
  v24 = v1[2];
  v25 = v8;
  v11 = v1[5];
  v22 = v1[4];
  v23 = v10;
  v21 = v11;
  v12 = *(v1 + 8);
  v39 = *(v1 + 7);
  v40 = v12;
  v41 = *(v1 + 9);
  v13 = *(v1 + 4);
  v35 = *(v1 + 3);
  v36 = v13;
  v14 = *(v1 + 6);
  v37 = *(v1 + 5);
  v38 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD8CAB8();
  sub_23DDA4BF0();
  LOBYTE(v28) = 0;
  v16 = v26;
  v17 = v7;
  sub_23DDA4AC0();
  if (!v16)
  {
    v18 = v21;
    v19 = v22;
    LOBYTE(v28) = 1;
    sub_23DDA4AC0();
    *&v28 = v19;
    *(&v28 + 1) = v18;
    LOBYTE(v27[0]) = 2;
    sub_23DD7A808();

    sub_23DDA4AD0();

    v32 = v39;
    v33 = v40;
    v34 = v41;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v31 = v38;
    v42 = 3;
    sub_23DD8CA08(&v35, v27);
    sub_23DD8CB0C();
    sub_23DDA4AD0();
    v27[4] = v32;
    v27[5] = v33;
    v27[6] = v34;
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    v27[3] = v31;
    sub_23DD8CA64(v27);
  }

  return (*(v4 + 8))(v17, v3);
}

uint64_t PasswordAccount.ResolvedAccount.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v12 = *(v0 + 7);
  v13 = *(v0 + 8);
  v14 = *(v0 + 9);
  v8 = *(v0 + 3);
  v9 = *(v0 + 4);
  v10 = *(v0 + 5);
  v11 = *(v0 + 6);
  sub_23DDA4940();
  sub_23DDA4940();
  sub_23DDA4940();
  return ResolvedServerConfiguration.hash(into:)();
}

uint64_t PasswordAccount.ResolvedAccount.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v12 = *(v0 + 7);
  v13 = *(v0 + 8);
  v14 = *(v0 + 9);
  v8 = *(v0 + 3);
  v9 = *(v0 + 4);
  v10 = *(v0 + 5);
  v11 = *(v0 + 6);
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4940();
  sub_23DDA4940();
  ResolvedServerConfiguration.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t PasswordAccount.ResolvedAccount.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313698, &qword_23DDA6210);
  v5 = *(v77 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v77);
  v8 = &v32 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD8CAB8();
  sub_23DDA4BD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  v38 = a2;
  LOBYTE(v49) = 0;
  v11 = sub_23DDA4A40();
  v13 = v12;
  v36 = v11;
  LOBYTE(v49) = 1;
  v14 = sub_23DDA4A40();
  v37 = v15;
  v35 = v14;
  LOBYTE(v39) = 2;
  sub_23DD7A85C();
  sub_23DDA4A50();
  v16 = a1;
  v17 = v50;
  v34 = v49;
  v62 = 3;
  sub_23DD8CB60();
  sub_23DDA4A50();
  (*(v10 + 8))(v8, v77);
  v74 = v67;
  v75 = v68;
  v76 = v69;
  v70 = v63;
  v71 = v64;
  v72 = v65;
  v73 = v66;
  v43 = v64;
  v42 = v63;
  v48 = v69;
  v18 = v35;
  v19 = v36;
  *&v39 = v36;
  *(&v39 + 1) = v13;
  v20 = v37;
  *&v40 = v35;
  *(&v40 + 1) = v37;
  v21 = v17;
  v33 = v17;
  v22 = v34;
  *&v41 = v34;
  *(&v41 + 1) = v21;
  v47 = v68;
  v46 = v67;
  v45 = v66;
  v44 = v65;
  v23 = v40;
  v24 = v38;
  *v38 = v39;
  v24[1] = v23;
  v25 = v41;
  v26 = v42;
  v27 = v44;
  v24[4] = v43;
  v24[5] = v27;
  v24[2] = v25;
  v24[3] = v26;
  v28 = v45;
  v29 = v46;
  v30 = v48;
  v24[8] = v47;
  v24[9] = v30;
  v24[6] = v28;
  v24[7] = v29;
  sub_23DD8CBB4(&v39, &v49);
  __swift_destroy_boxed_opaque_existential_1(v16);
  v49 = v19;
  v50 = v13;
  v51 = v18;
  v52 = v20;
  v53 = v22;
  v54 = v33;
  v59 = v74;
  v60 = v75;
  v61 = v76;
  v55 = v70;
  v56 = v71;
  v58 = v73;
  v57 = v72;
  return sub_23DD8CBEC(&v49);
}

uint64_t sub_23DD89EA0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v12 = *(v0 + 7);
  v13 = *(v0 + 8);
  v14 = *(v0 + 9);
  v8 = *(v0 + 3);
  v9 = *(v0 + 4);
  v10 = *(v0 + 5);
  v11 = *(v0 + 6);
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4940();
  sub_23DDA4940();
  ResolvedServerConfiguration.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t sub_23DD89F58()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v12 = *(v0 + 7);
  v13 = *(v0 + 8);
  v14 = *(v0 + 9);
  v8 = *(v0 + 3);
  v9 = *(v0 + 4);
  v10 = *(v0 + 5);
  v11 = *(v0 + 6);
  sub_23DDA4940();
  sub_23DDA4940();
  sub_23DDA4940();
  return ResolvedServerConfiguration.hash(into:)();
}