uint64_t sub_1974FFD9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t Schema.Relationship.keypath.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t Schema.Relationship.keypath.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t Schema.Relationship.options.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t Schema.Relationship.options.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t Schema.Relationship.valueType.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t Schema.Relationship.destination.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t Schema.Relationship.destination.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t Schema.Relationship.deleteRule.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 88);
  return result;
}

uint64_t Schema.Relationship.deleteRule.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 88) = v2;
  return result;
}

uint64_t Schema.Relationship.inverseName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t Schema.Relationship.inverseName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t Schema.Relationship.inverseKeyPath.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t Schema.Relationship.inverseKeyPath.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t Schema.Relationship.minimumModelCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t Schema.Relationship.minimumModelCount.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 120) = a1;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t Schema.Relationship.maximumModelCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t Schema.Relationship.maximumModelCount.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 136) = a1;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t Schema.Relationship.hashModifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

uint64_t Schema.Relationship.hashModifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 160);
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
}

uint64_t Schema.Relationship.DeleteRule.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1975224CC();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Schema.Relationship.DeleteRule.rawValue.getter()
{
  v1 = 0x6E6F697463416F6ELL;
  v2 = 0x65646163736163;
  if (*v0 != 2)
  {
    v2 = 2037278052;
  }

  if (*v0)
  {
    v1 = 0x7966696C6C756ELL;
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

uint64_t sub_1975007B0()
{
  v1 = *v0;
  sub_197522A5C();
  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_19750086C()
{
  *v0;
  *v0;
  *v0;
  sub_19752180C();
}

uint64_t sub_197500914()
{
  v1 = *v0;
  sub_197522A5C();
  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_1975009CC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Schema.Relationship.DeleteRule.init(rawValue:)(a1);
}

void sub_1975009D8(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6E6F697463416F6ELL;
  v4 = 0xE700000000000000;
  v5 = 0x65646163736163;
  if (*v1 != 2)
  {
    v5 = 2037278052;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x7966696C6C756ELL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t Schema.Relationship.Option.debugDescription.getter()
{
  if (*v0 == 1)
  {
    MEMORY[0x19A8DFF80](0x657571696E75, 0xE600000000000000);
  }

  return 0;
}

uint64_t sub_197500BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7571696E5573695FLL && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19752282C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_197500C4C(uint64_t a1)
{
  v2 = sub_197505B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197500C88(uint64_t a1)
{
  v2 = sub_197505B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.Relationship.Option.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD40, &qword_1975320A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_197505B70();
  sub_197522B0C();
  sub_19752269C();
  return (*(v4 + 8))(v8, v3);
}

uint64_t Schema.Relationship.Option.hashValue.getter()
{
  v1 = *v0;
  sub_197522A5C();
  sub_197522A7C();
  return sub_197522A9C();
}

uint64_t Schema.Relationship.Option.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD50, &qword_1975320B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_197505B70();
  sub_197522AFC();
  if (!v2)
  {
    v12 = sub_1975225FC();
    (*(v6 + 8))(v10, v5);
    *a2 = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_6(a1);
}

uint64_t sub_197500FE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD40, &qword_1975320A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_197505B70();
  sub_197522B0C();
  sub_19752269C();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_197501118()
{
  v1 = *v0;
  sub_197522A5C();
  sub_197522A7C();
  return sub_197522A9C();
}

uint64_t sub_19750118C()
{
  v1 = *v0;
  sub_197522A5C();
  sub_197522A7C();
  return sub_197522A9C();
}

uint64_t sub_1975011D0()
{
  if (*v0 == 1)
  {
    MEMORY[0x19A8DFF80](0x657571696E75, 0xE600000000000000);
  }

  return 0;
}

uint64_t Schema.Relationship.__allocating_init(_:deleteRule:minimumModelCount:maximumModelCount:originalName:inverse:hashModifier:)(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = swift_allocObject();
  v17 = *a2;
  *(v16 + 48) = 0;
  *(v16 + 88) = 1;
  *(v16 + 96) = 0u;
  *(v16 + 112) = 0u;
  *(v16 + 128) = 1;
  *(v16 + 136) = 0;
  *(v16 + 144) = 1;
  *(v16 + 152) = 0;
  *(v16 + 160) = 0;
  *(v16 + 168) = 0;
  swift_beginAccess();
  *(v16 + 88) = v17;
  *(v16 + 56) = a1;
  if (a9)
  {
    swift_beginAccess();
    *(v16 + 112) = a9;
  }

  if (a8)
  {
    v18 = a7;
  }

  else
  {
    v18 = 0;
  }

  if (a8)
  {
    v19 = a8;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  *(v16 + 32) = v18;
  *(v16 + 40) = v19;
  swift_beginAccess();
  *(v16 + 120) = a3;
  *(v16 + 128) = a4 & 1;
  swift_beginAccess();
  *(v16 + 136) = a5;
  *(v16 + 144) = a6 & 1;
  swift_beginAccess();
  *(v16 + 152) = a10;
  *(v16 + 160) = a11;
  v20 = MEMORY[0x1E69E7CA0];
  *(v16 + 16) = 0;
  *(v16 + 24) = 0xE000000000000000;
  *(v16 + 64) = v20 + 8;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0xE000000000000000;
  return v16;
}

uint64_t Schema.Relationship.init(_:deleteRule:minimumModelCount:maximumModelCount:originalName:inverse:hashModifier:)(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v17 = *a2;
  *(v11 + 88) = 1;
  v18 = v11 + 88;
  *(v18 - 40) = 0;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  *(v18 + 40) = 1;
  *(v18 + 48) = 0;
  *(v18 + 56) = 1;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 80) = 0;
  swift_beginAccess();
  *v18 = v17;
  *(v18 - 32) = a1;
  if (a9)
  {
    swift_beginAccess();
    *(v12 + 112) = a9;
  }

  if (a8)
  {
    v19 = a7;
  }

  else
  {
    v19 = 0;
  }

  if (a8)
  {
    v20 = a8;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  *(v12 + 32) = v19;
  *(v12 + 40) = v20;
  swift_beginAccess();
  *(v12 + 120) = a3;
  *(v12 + 128) = a4 & 1;
  swift_beginAccess();
  *(v12 + 136) = a5;
  *(v12 + 144) = a6 & 1;
  swift_beginAccess();
  *(v12 + 152) = a10;
  *(v12 + 160) = a11;
  v21 = MEMORY[0x1E69E7CA0];
  *(v12 + 16) = 0;
  *(v12 + 24) = 0xE000000000000000;
  *(v12 + 64) = v21 + 8;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0xE000000000000000;
  return v12;
}

unint64_t sub_197501560(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0xD000000000000011;
    if (a1 != 8)
    {
      v6 = 0x69646F4D68736168;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x75526574656C6564;
    if (a1 != 5)
    {
      v7 = 0x4E65737265766E69;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701667182;
    v2 = 0x736E6F6974706FLL;
    v3 = 0x70795465756C6176;
    if (a1 != 3)
    {
      v3 = 0x74616E6974736564;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6C616E696769726FLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1975016D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975062EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197501714(uint64_t a1)
{
  v2 = sub_197505BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197501750(uint64_t a1)
{
  v2 = sub_197505BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.Relationship.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Schema.Relationship.init(from:)(a1);
  return v2;
}

uint64_t Schema.Relationship.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v75 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD58, &qword_1975320B8);
  v74 = *(v4 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v71 - v7;
  *(v2 + 88) = 1;
  v9 = (v2 + 11);
  v2[6] = 0;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 128) = 1;
  v2[17] = 0;
  *(v2 + 144) = 1;
  v2[19] = 0;
  v2[20] = 0;
  v76 = a1;
  v77 = v2;
  *(v2 + 84) = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_197505BC4();
  v11 = v84;
  sub_197522AFC();
  if (v11)
  {
    v84 = v11;
    v12 = v77;
    v18 = v77[6];

    v19 = v76;
LABEL_4:
    v20 = v12[13];

    v21 = v12[14];

    v22 = v12[20];

    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  v13 = v74;
  LOBYTE(v82) = 0;
  v14 = sub_1975225EC();
  v12 = v77;
  v77[2] = v14;
  v12[3] = v15;
  LOBYTE(v82) = 1;
  v16 = sub_1975225EC();
  v84 = 0;
  v12[4] = v16;
  v12[5] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD68, &qword_1975320C0);
  v81 = 2;
  sub_197505C18();
  v25 = v84;
  sub_19752261C();
  if (v25)
  {
    (*(v13 + 8))(v8, v4);
    v84 = v25;
    v26 = v25;
LABEL_13:
    v34 = v12[3];

    v35 = v12[5];

    v36 = v12[6];

    v19 = v76;
    if (!v26)
    {
      v37 = v12[7];
    }

    goto LABEL_4;
  }

  v12[7] = v82;
  LOBYTE(v82) = 3;
  v73 = 0;
  v27 = sub_1975225EC();
  v84 = 0;
  v72 = v27;
  v29 = v28;
  v30 = sub_1975221FC();
  if (v30)
  {
    v31 = v30;

    v12 = v77;
    v32 = v77;
    v77[8] = v31;
    v72 = (v32 + 8);
    LOBYTE(v82) = 5;
    sub_197505CF0();
    v33 = v84;
    sub_19752261C();
    v84 = v33;
    if (v33)
    {
      (*(v13 + 8))(v8, v4);
    }

    else
    {
      v38 = v81;
      swift_beginAccess();
      *v9 = v38;
      v81 = 4;
      v39 = v84;
      v40 = sub_1975225EC();
      if (!v39)
      {
        v42 = v77;
        v77[9] = v40;
        v42[10] = v41;
        v81 = 6;
        v43 = sub_1975224FC();
        v84 = 0;
        v75 = v44;
        v45 = v43;
        swift_beginAccess();
        v46 = v42[13];
        v47 = v75;
        v42[12] = v45;
        v42[13] = v47;

        v80 = 9;
        v48 = v84;
        v49 = sub_1975224FC();
        v84 = v48;
        if (v48)
        {
          goto LABEL_18;
        }

        v51 = v50;
        v52 = v49;
        swift_beginAccess();
        v53 = v42[20];
        v42[19] = v52;
        v42[20] = v51;

        swift_beginAccess();
        v54 = v42[8];
        v79[0] = v54;
        if (swift_conformsToProtocol2() && v54)
        {
          do
          {
            sub_1973F732C(v54, v79);
            v54 = v79[0];
            if (swift_conformsToProtocol2())
            {
              v55 = v54 == 0;
            }

            else
            {
              v55 = 1;
            }
          }

          while (!v55);
        }

        v79[0] = v54;
        if (swift_conformsToProtocol2())
        {
          v56 = v54 == 0;
        }

        else
        {
          v56 = 1;
        }

        if (!v56)
        {
          do
          {
            sub_1973F732C(v54, v79);
            v54 = v79[0];
            if (swift_conformsToProtocol2())
            {
              v57 = v54 == 0;
            }

            else
            {
              v57 = 1;
            }
          }

          while (!v57);
        }

        v58 = !swift_conformsToProtocol2() || v54 == 0;
        v59 = !v58;
        v42 = v77;
        *(v77 + 168) = v59;
        LOBYTE(v79[0]) = 7;
        v60 = v84;
        v61 = sub_19752253C();
        v84 = v60;
        if (v60)
        {
LABEL_18:

          (*(v13 + 8))(v8, v4);
          v19 = v76;
          v12 = v42;
        }

        else
        {
          v63 = v61;
          v64 = v62;
          swift_beginAccess();
          v42[15] = v63;
          *(v42 + 128) = v64 & 1;
          v78 = 8;
          v65 = v84;
          v66 = sub_19752253C();
          v84 = v65;
          if (!v65)
          {
            v69 = v66;
            v70 = v67;
            (*(v13 + 8))(v8, v4);
            swift_beginAccess();
            v23 = v76;
            v12 = v77;
            v77[17] = v69;
            *(v12 + 144) = v70 & 1;
            goto LABEL_6;
          }

          v68 = v77;

          v12 = v68;
          (*(v13 + 8))(v8, v4);
          v19 = v76;
        }

LABEL_5:
        v23 = v19;
LABEL_6:
        __swift_destroy_boxed_opaque_existential_1Tm_6(v23);
        return v12;
      }

      v84 = v39;
      (*(v13 + 8))(v8, v4);
      v12 = v77;
    }

    v26 = v73;
    goto LABEL_13;
  }

  v82 = 0;
  v83 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x8000000197529C00);
  MEMORY[0x19A8DFF80](v72, v29);
  MEMORY[0x19A8DFF80](0xD000000000000020, 0x8000000197529C20);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t Schema.Relationship.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD88, &qword_1975320C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v28[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_197505BC4();
  sub_197522B0C();
  swift_beginAccess();
  v13 = *(v4 + 16);
  v14 = *(v4 + 24);
  v41 = 0;

  sub_19752268C();
  if (v3)
  {
    (*(v7 + 8))(v11, v6);
  }

  else
  {

    swift_beginAccess();
    v15 = *(v4 + 32);
    v16 = *(v4 + 40);
    v40 = 1;

    sub_19752268C();

    swift_beginAccess();
    v39 = *(v4 + 56);
    LOBYTE(v37) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD68, &qword_1975320C0);
    sub_197505D44();
    sub_1975226EC();
    swift_beginAccess();
    v18 = *(v4 + 64);
    sub_19752238C();
    if (v19)
    {
      LOBYTE(v37) = 3;
      sub_19752268C();

      swift_beginAccess();
      v36 = *(v4 + 88);
      v35 = 5;
      sub_197505E1C();
      sub_1975226EC();
      swift_beginAccess();
      v20 = *(v4 + 72);
      v21 = *(v4 + 80);
      v35 = 4;

      sub_19752268C();

      swift_beginAccess();
      v22 = *(v4 + 96);
      v23 = *(v4 + 104);
      v34 = 6;

      sub_19752267C();

      swift_beginAccess();
      v24 = *(v4 + 128);
      v32 = *(v4 + 120);
      v33 = v24;
      LOBYTE(v30) = 7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BDA8, &unk_1975320D0);
      sub_197505E70();
      sub_1975226EC();
      swift_beginAccess();
      v25 = *(v4 + 144);
      v30 = *(v4 + 136);
      v31 = v25;
      LOBYTE(v29) = 8;
      sub_1975226EC();
      swift_beginAccess();
      v29 = *(v4 + 152);
      v28[15] = 9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE58, &unk_19752F390);
      sub_197506F70(&qword_1EAF2BD08, &qword_1EAF2AE58, &unk_19752F390);
      sub_1975226EC();
      return (*(v7 + 8))(v11, v6);
    }

    else
    {
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_1975221EC();

      v37 = 0xD00000000000001FLL;
      v38 = 0x8000000197529C50;
      v26 = *(v4 + 64);
      swift_getMetatypeMetadata();
      v27 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v27);

      result = sub_1975223EC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_197502548()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  sub_19752180C();
}

uint64_t sub_1975025B4()
{
  sub_197522A5C();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_197502624(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 24);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
}

uint64_t (*sub_19750267C())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess_3_21;
}

uint64_t sub_1975026D0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 40);
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
}

uint64_t (*sub_197502728())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess_3_22;
}

uint64_t sub_19750277C(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 64) = a1;
  return result;
}

uint64_t (*sub_1975027C0())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess_3_23;
}

uint64_t sub_19750282C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = Schema.Relationship.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1975028A8()
{
  v1 = *v0;
  sub_197522A5C();
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_19750291C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  sub_19752180C();
}

uint64_t sub_197502988()
{
  v1 = *v0;
  sub_197522A5C();
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  sub_19752180C();

  return sub_197522A9C();
}

uint64_t (*Schema.Index.name.modify(uint64_t a1))()
{
  strcpy(a1, "Schema.Index");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  return sub_1975089F0;
}

uint64_t (*Schema.Index.originalName.modify(uint64_t a1))(uint64_t a1)
{
  strcpy(a1, "Schema.Index");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  return sub_197502ACC;
}

void (*Schema.Index.valueType.modify(double **a1))(void **a1)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  v7.val[0] = *(*v2 + 80);
  v7.val[1] = v7.val[0];
  vst2q_f64(v4, v7);
  type metadata accessor for Schema.Index.Types();
  *(v5 + 4) = sub_197521AAC();
  return sub_197502BAC;
}

BOOL static Schema.Index.== infix(_:_:)()
{
  v0 = sub_1974194C0();
  v1 = sub_1974194C0();
  v2 = sub_1974D178C(v0, v1);

  return v2;
}

uint64_t Schema.Index.hash(into:)(uint64_t a1)
{
  v2 = sub_1974194C0();
  sub_197505780(a1, v2);
}

uint64_t Schema.Index.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

{
  swift_allocObject();
  v2 = sub_197506D40(a1);

  return v2;
}

uint64_t Schema.Index.init(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  v1 = sub_197506D40(a1);

  return v1;
}

uint64_t Schema.Index.debugDescription.getter()
{
  v1 = *v0;
  v3[0] = 0.0;
  v3[1] = -2.68156159e154;
  sub_1975221EC();
  v4 = 0;
  v5 = 0xE000000000000000;
  MEMORY[0x19A8DFF80](0xD000000000000011, 0x8000000197529CB0);
  *&v3[4] = v0[2];
  v6.val[0] = *(v1 + 80);
  v6.val[1] = v6.val[0];
  vst2q_f64(v3, v6);
  type metadata accessor for Schema.Index.Types();
  sub_197521AAC();
  swift_getWitnessTable();
  sub_19752280C();
  return v4;
}

uint64_t Schema.Index.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656369646E69 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19752282C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_197502F48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_197502F9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Schema.Index.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Schema.Index.init(from:)(a1);
  return v2;
}

uint64_t Schema.Index.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *(*v1 + 88);
  v16 = *(*v1 + 80);
  type metadata accessor for Schema.Index.CodingKeys();
  swift_getWitnessTable();
  v17 = sub_19752264C();
  v15 = *(v17 - 8);
  v5 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17, v6);
  v8 = &v15 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  v10 = v18;
  sub_197522AFC();
  if (v10)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v15;
    v11 = v16;
    v18 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BDC0, &qword_1975320E0);
    sub_197506FD0();
    sub_19752261C();
    v14 = sub_197503300(v19, v11, v18);

    (*(v12 + 8))(v8, v17);
    *(v2 + 16) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm_6(a1);
  return v2;
}

uint64_t sub_197503300(uint64_t a1, char *a2, char *a3)
{
  v8 = *(v3 + 88);
  v36 = *(v3 + 80);
  v37 = a2;
  v38 = v8;
  v39 = a3;
  v31 = type metadata accessor for Schema.Index.Types();
  v9 = sub_1975215CC();
  v40 = v9;
  v30 = *(a1 + 16);
  if (!v30)
  {
    v23 = v9;
    goto LABEL_26;
  }

  v11 = 0;
  v12 = 0;
  v29 = a1 + 32;
  do
  {
    v14 = *(v29 + 8 * v11);
    if (!*(v14 + 2))
    {
      v25 = *(v29 + 8 * v11);

      goto LABEL_30;
    }

    v15 = *(v14 + 4);
    v4 = *(v14 + 5);
    v36 = v15;
    v37 = v4;
    MEMORY[0x1EEE9AC00](v9, v10);
    v27 = &v36;

    if ((sub_19741E284(sub_197508BC8, &v26, &unk_1F0BA5390) & 1) == 0)
    {
      goto LABEL_28;
    }

    v16 = *(v14 + 2);
    if (!v16)
    {
      __break(1u);
LABEL_28:

LABEL_30:
      v28 = 0;
      v27 = 1029;
      goto LABEL_32;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v14;
    v33 = v12;
    if (!isUniquelyReferenced_nonNull_native || (v16 - 1) > *(v14 + 3) >> 1)
    {
      v14 = sub_19741E330(isUniquelyReferenced_nonNull_native, v16, 1, v14);
      v35 = v14;
    }

    v32 = v11;
    sub_19750622C(0, 1, 0);
    if (!*(v14 + 2))
    {
      v28 = 0;
      v27 = 1033;
      goto LABEL_32;
    }

    sub_19752228C();
    v34 = sub_1975215CC();
    v18 = *(v14 + 2);
    if (v18)
    {
      v19 = (v14 + 40);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;

        sub_1974A280C(v20, v21, a2, a3);

        v36 = swift_dynamicCastClassUnconditional();
        sub_197521AAC();
        sub_197521A7C();
        v19 += 2;
        --v18;
      }

      while (v18);
    }

    a1 = v15;
    if (v15 == 0x7972616E6962 && v4 == 0xE600000000000000)
    {

      v13 = v32;
LABEL_4:
      v12 = v33;

      v36 = v34;
      LOBYTE(v37) = 0;
      goto LABEL_5;
    }

    v22 = sub_19752282C();
    v13 = v32;
    if (v22)
    {

      goto LABEL_4;
    }

    v12 = v33;
    if ((v15 != 0x656572742D72 || v4 != 0xE600000000000000) && (sub_19752282C() & 1) == 0)
    {
      while (1)
      {
        v36 = 0;
        v37 = 0xE000000000000000;
        sub_1975221EC();

        v36 = 0xD000000000000015;
        v37 = 0x800000019752A340;
        MEMORY[0x19A8DFF80](a1, v4);
        v28 = 0;
        v27 = 1045;
LABEL_32:
        sub_1975223EC();
        __break(1u);
      }
    }

    v36 = v34;
    LOBYTE(v37) = 1;
LABEL_5:
    sub_197521AAC();
    v9 = sub_197521A7C();
    v11 = v13 + 1;
  }

  while (v11 != v30);
  v23 = v40;
LABEL_26:
  swift_arrayDestroy();
  return v23;
}

uint64_t Schema.Index.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Schema.Index.hashValue.getter()
{
  sub_197522A5C();
  v0 = sub_1974194C0();
  sub_197505780(v2, v0);

  return sub_197522A9C();
}

uint64_t (*sub_1975037FC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Schema.Index.name.modify(v2);
  return sub_197508B24;
}

uint64_t (*sub_197503884(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Schema.Index.originalName.modify(v2);
  return sub_1975038EC;
}

uint64_t sub_1975038F0(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  return sub_197505FEC();
}

uint64_t (*sub_197503900(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = Schema.Index.valueType.modify(v3);
  return sub_197508B28;
}

uint64_t sub_197503A10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Schema.Index.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_197503A60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static Schema.Index.== infix(_:_:)();
}

uint64_t (*Schema.Unique.name.modify(uint64_t a1))()
{
  strcpy(a1, "Schema.Unique");
  *(a1 + 14) = -4864;
  return sub_1975089F4;
}

uint64_t (*Schema.Unique.originalName.modify(uint64_t a1))()
{
  strcpy(a1, "Schema.Unique");
  *(a1 + 14) = -4864;
  return sub_1975089F8;
}

uint64_t (*Schema.Unique.valueType.modify(uint64_t *a1))()
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  *a1 = sub_197506028();
  return nullsub_51;
}

uint64_t static Schema.Unique.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v5 = *(v2 + 80);
  sub_19752228C();
  sub_197521AAC();
  swift_getWitnessTable();
  return sub_197521ACC() & 1;
}

uint64_t Schema.Unique.hash(into:)()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  sub_19752228C();
  sub_197521AAC();
  swift_getWitnessTable();
  return sub_197521ABC();
}

uint64_t Schema.Unique.debugDescription.getter()
{
  v1 = *v0;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197529CD0);
  v4 = v0[2];
  v2 = *(v1 + 80);
  sub_19752228C();
  sub_197521AAC();
  sub_197521AAC();
  swift_getWitnessTable();
  sub_19752280C();
  return 0;
}

uint64_t Schema.Unique.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69617274736E6F63 && a2 == 0xEB0000000073746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19752282C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t _s9SwiftData6SchemaC5IndexC10CodingKeysO9hashValueSivg_0()
{
  sub_197522A5C();
  MEMORY[0x19A8E1190](0);
  return sub_197522A9C();
}

uint64_t sub_197503F48()
{
  sub_197522A5C();
  MEMORY[0x19A8E1190](0);
  return sub_197522A9C();
}

uint64_t sub_197503F8C()
{
  sub_197522A5C();
  MEMORY[0x19A8E1190](0);
  return sub_197522A9C();
}

uint64_t sub_197503FFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_197504050(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1975040F8(void *a1, void (*a2)(uint64_t, void, void), uint64_t a3, uint64_t a4)
{
  v16[0] = a4;
  v5 = v4;
  a2(255, *(*v5 + 80), *(*v5 + 88));
  swift_getWitnessTable();
  v7 = sub_19752278C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  v14 = sub_197522B0C();
  v16[3] = (v16[0])(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BDC0, &qword_1975320E0);
  sub_197506ECC();
  sub_1975226EC();

  return (*(v8 + 8))(v12, v7);
}

uint64_t Schema.Unique.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Schema.Unique.init(from:)(a1);
  return v2;
}

uint64_t Schema.Unique.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 88);
  type metadata accessor for Schema.Unique.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_19752264C();
  v17 = *(v7 - 8);
  v18 = v7;
  v8 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_197522AFC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BDC0, &qword_1975320E0);
    sub_197506FD0();
    v14 = v18;
    sub_19752261C();
    v16 = sub_197504560(v19);

    (*(v13 + 8))(v11, v14);
    *(v3 + 16) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1Tm_6(a1);
  return v3;
}

uint64_t sub_197504560(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 80);
  sub_19752228C();
  sub_197521AAC();
  result = sub_1975215CC();
  v15 = result;
  v14 = *(a1 + 16);
  if (v14)
  {
    v6 = 0;
    v13 = a1 + 32;
    while (1)
    {
      v7 = *(v13 + 8 * v6);
      if (!*(v7 + 16))
      {
        break;
      }

      v8 = *(v13 + 8 * v6);

      sub_1975215CC();
      v9 = *(v7 + 16);
      if (v9)
      {
        v10 = (v7 + 40);
        do
        {
          v11 = *(v10 - 1);
          v12 = *v10;

          sub_1974A280C(v11, v12, v4, *(v2 + 88));

          swift_dynamicCastClassUnconditional();
          sub_197521A7C();
          v10 += 2;
          --v9;
        }

        while (v9);
      }

      ++v6;
      sub_197521AAC();
      sub_197521A7C();
      if (v6 == v14)
      {
        return v15;
      }
    }

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t Schema.Unique.hashValue.getter()
{
  sub_197522A5C();
  Schema.Unique.hash(into:)();
  return sub_197522A9C();
}

uint64_t (*sub_19750478C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Schema.Unique.name.modify(v2);
  return sub_197508B30;
}

uint64_t (*sub_197504818(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Schema.Unique.originalName.modify(v2);
  return sub_197508B34;
}

uint64_t sub_197504880(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  return sub_197506028();
}

uint64_t (*sub_197504890(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = Schema.Unique.valueType.modify(v3);
  return sub_197508B38;
}

void sub_197504904(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1975049F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_197522A5C();
  v6 = *v4;
  a4(v8);
  return sub_197522A9C();
}

uint64_t sub_197504A38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Schema.Unique.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_197504A94()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_197504ADC()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

unint64_t sub_197504B20()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x7571696E5573695FLL;
    if (v1 == 1)
    {
      v5 = 0xD000000000000011;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0x6F7473626D6F745FLL;
    if (v1 != 5)
    {
      v2 = 0x67696C746F70735FLL;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_197504C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197506A70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197504C4C(uint64_t a1)
{
  v2 = sub_1975070E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197504C88(uint64_t a1)
{
  v2 = sub_1975070E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.Attribute.Option.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BDE8, &qword_1975320E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_1975070E8();
  sub_197522AFC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm_6(a1);
    v32 = 0;
    *v33 = *v42;
    *&v33[3] = *&v42[3];
    v34 = 0;
    v35 = 0uLL;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v32 = 0;
    LOBYTE(v29) = sub_1975225FC() & 1;
    v29 = v29;
    v32 = 1;
    *&v28 = sub_1975224FC();
    *(&v28 + 1) = v13;
    v32 = 2;
    v14 = sub_1975225FC() & 1;
    v32 = 3;
    v15 = sub_1975225FC();
    v27 = a2;
    v16 = v15 & 1;
    v32 = 4;
    v17 = sub_1975225FC() & 1;
    v32 = 5;
    v18 = sub_1975225FC() & 1;
    v41 = 6;
    v19 = sub_1975225FC();
    v20 = *(v6 + 8);
    v26 = v19;
    v20(v10, v5);
    v26 &= 1u;
    v21 = v29;
    LOBYTE(v30[0]) = v29;
    v22 = v28;
    v30[1] = 0;
    *v31 = v28;
    v31[16] = v14;
    v31[17] = v16;
    v31[18] = v17;
    v31[19] = v18;
    v31[20] = v26;
    v31[21] = 0;
    v23 = v28;
    v24 = v27;
    *v27 = v30[0];
    v24[1] = v23;
    *(v24 + 30) = *&v31[14];
    sub_19741DE14(v30, &v32);
    __swift_destroy_boxed_opaque_existential_1Tm_6(a1);
    v32 = v21;
    v34 = 0;
    v35 = v22;
    v36 = v14;
    v37 = v16;
    v38 = v17;
    v39 = v18;
    v40 = v26;
  }

  return sub_19741EE34(&v32);
}

uint64_t Schema.Attribute.Option.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BDF8, &qword_1975320F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 2);
  v16 = *(v1 + 3);
  v17 = v10;
  v21 = v1[32];
  LODWORD(v10) = v1[33];
  v15[4] = v1[34];
  v15[5] = v10;
  v15[3] = v1[35];
  v11 = v1[36];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_1975070E8();
  sub_197522B0C();
  LOBYTE(v19) = 0;
  v13 = v18;
  sub_19752269C();
  if (!v13)
  {
    v19 = v17;
    v20 = v16;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE58, &unk_19752F390);
    sub_197506F70(&qword_1EAF2BD08, &qword_1EAF2AE58, &unk_19752F390);
    sub_1975226EC();
    LOBYTE(v19) = 2;
    sub_19752269C();
    LOBYTE(v19) = 3;
    sub_19752269C();
    LOBYTE(v19) = 4;
    sub_19752269C();
    LOBYTE(v19) = 5;
    sub_19752269C();
    LOBYTE(v19) = 6;
    sub_19752269C();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t Schema.Attribute.Option.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[32];
  v5 = v0[33];
  v6 = v0[34];
  v7 = v0[35];
  v8 = v0[36];
  sub_197522A7C();
  sub_197522A7C();
  sub_197522A7C();
  sub_197522A7C();
  sub_197522A7C();
  sub_197522A7C();
  if (!v3)
  {
    return sub_197522A7C();
  }

  sub_197522A7C();

  return sub_19752180C();
}

uint64_t Schema.Attribute.Option.hashValue.getter()
{
  sub_197522A5C();
  Schema.Attribute.Option.hash(into:)();
  return sub_197522A9C();
}

uint64_t sub_1975054E8()
{
  sub_197522A5C();
  Schema.Attribute.Option.hash(into:)();
  return sub_197522A9C();
}

uint64_t sub_19750552C()
{
  sub_197522A5C();
  Schema.Attribute.Option.hash(into:)();
  return sub_197522A9C();
}

uint64_t sub_19750556C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1973F4028(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      goto LABEL_23;
    }

    v20 = *(*(a2 + 56) + 8 * v17);
    swift_beginAccess();
    v21 = v20[2];
    v22 = v20[3];
    swift_beginAccess();
    v23 = v21 == v16[2] && v22 == v16[3];
    if (!v23 && (sub_19752282C() & 1) == 0 || (swift_beginAccess(), v24 = v20[6], swift_beginAccess(), (sub_1974D1674(v24, v16[6]) & 1) == 0))
    {
LABEL_23:

      return 0;
    }

    swift_beginAccess();
    v25 = v20[7];
    swift_beginAccess();
    v26 = v16[7];

    if (v25 != v26)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197505780(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x19A8E1190](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = *(v6 + 8 * v5);
      result = MEMORY[0x19A8E1190](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {

        v9 = (v7 + 40);
        do
        {
          v10 = *(v9 - 1);
          v11 = *v9;

          sub_19752180C();

          v9 += 2;
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

BOOL _s9SwiftData6SchemaC9AttributeC6OptionV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (a1[32] == a2[32] && ((a1[34] ^ a2[34]) & 1) == 0 && ((a1[36] ^ a2[36]) & 1) == 0 && ((a1[33] ^ a2[33]) & 1) == 0 && ((a1[35] ^ a2[35]) & 1) == 0)
  {
    v4 = *a1;
    v5 = *a2;
    if (((v4 ^ v5) & 1) == 0)
    {
      if ((v4 & v5) == 1)
      {
        v6 = *(a1 + 3);
        v7 = *(a2 + 3);
        if (v6)
        {
          return v7 && (*(a1 + 2) == *(a2 + 2) && v6 == v7 || (sub_19752282C() & 1) != 0);
        }

        if (v7)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

BOOL _s9SwiftData6SchemaC9AttributeC2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (!v6 && (sub_19752282C() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v7 = a1[6];
  swift_beginAccess();
  if ((sub_1974D1674(v7, a2[6]) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v8 = a1[7];
  swift_beginAccess();
  return v8 == a2[7];
}

uint64_t sub_197505A1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_197505A80()
{
  result = qword_1EAF2BD18;
  if (!qword_1EAF2BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD18);
  }

  return result;
}

uint64_t sub_197505AD4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BD20, &qword_197532098);
    sub_1973F7598(a2, type metadata accessor for Schema.Attribute);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_197505B70()
{
  result = qword_1EAF2BD48;
  if (!qword_1EAF2BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD48);
  }

  return result;
}

unint64_t sub_197505BC4()
{
  result = qword_1EAF2BD60;
  if (!qword_1EAF2BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD60);
  }

  return result;
}

unint64_t sub_197505C18()
{
  result = qword_1EAF2BD70;
  if (!qword_1EAF2BD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BD68, &qword_1975320C0);
    sub_197505C9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD70);
  }

  return result;
}

unint64_t sub_197505C9C()
{
  result = qword_1EAF2BD78;
  if (!qword_1EAF2BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD78);
  }

  return result;
}

unint64_t sub_197505CF0()
{
  result = qword_1EAF2BD80;
  if (!qword_1EAF2BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD80);
  }

  return result;
}

unint64_t sub_197505D44()
{
  result = qword_1EAF2BD90;
  if (!qword_1EAF2BD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BD68, &qword_1975320C0);
    sub_197505DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD90);
  }

  return result;
}

unint64_t sub_197505DC8()
{
  result = qword_1EAF2BD98;
  if (!qword_1EAF2BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD98);
  }

  return result;
}

unint64_t sub_197505E1C()
{
  result = qword_1EAF2BDA0;
  if (!qword_1EAF2BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BDA0);
  }

  return result;
}

unint64_t sub_197505E70()
{
  result = qword_1EAF2BDB0;
  if (!qword_1EAF2BDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BDA8, &unk_1975320D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BDB0);
  }

  return result;
}

uint64_t sub_197505EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for Schema.Entity();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1975220EC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1975220EC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_197506028()
{
  sub_19752228C();
  sub_197521AAC();

  return sub_197521AAC();
}

uint64_t sub_19750606C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000027 && 0x800000019752A120 == a2 || (sub_19752282C() & 1) != 0 || a1 == 0xD000000000000022 && 0x800000019752A150 == a2 || (sub_19752282C() & 1) != 0 || a1 == 0xD000000000000013 && 0x800000019752A180 == a2 || (sub_19752282C() & 1) != 0 || a1 == 0xD000000000000018 && 0x800000019752A1A0 == a2 || (sub_19752282C() & 1) != 0)
  {
    goto LABEL_13;
  }

  v6 = *MEMORY[0x1E696A510];
  if (sub_1975217BC() == a1 && v7 == a2)
  {
    goto LABEL_17;
  }

  v8 = sub_19752282C();

  if ((v8 & 1) == 0)
  {
    v9 = *MEMORY[0x1E696A9F8];
    if (sub_1975217BC() != a1 || v10 != a2)
    {
      v4 = sub_19752282C();
      goto LABEL_18;
    }

LABEL_17:
    v4 = 1;
LABEL_18:

    return v4 & 1;
  }

LABEL_13:
  v4 = 1;
  return v4 & 1;
}

unint64_t sub_19750622C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1975062EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEC000000656D614ELL || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_19752282C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70795465756C6176 && a2 == 0xED0000656D614E65 || (sub_19752282C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_19752282C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x75526574656C6564 && a2 == 0xEA0000000000656CLL || (sub_19752282C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4E65737265766E69 && a2 == 0xEB00000000656D61 || (sub_19752282C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000197529E90 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000197529EB0 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x69646F4D68736168 && a2 == 0xEC00000072656966)
  {

    return 9;
  }

  else
  {
    v6 = sub_19752282C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_197506648(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEC000000656D614ELL || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_19752282C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70795465756C6176 && a2 == 0xED0000656D614E65 || (sub_19752282C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_19752282C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6974704F7369 && a2 == 0xEA00000000006C61)
  {

    return 5;
  }

  else
  {
    v6 = sub_19752282C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_19750685C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEC000000656D614ELL || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_19752282C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70795465756C6176 && a2 == 0xED0000656D614E65 || (sub_19752282C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69646F4D68736168 && a2 == 0xEC00000072656966 || (sub_19752282C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6974704F7369 && a2 == 0xEA00000000006C61)
  {

    return 5;
  }

  else
  {
    v6 = sub_19752282C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_197506A70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000197529EF0 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000197529F10 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7571696E5573695FLL && a2 == 0xE900000000000065 || (sub_19752282C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000197529F30 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000197529F50 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F7473626D6F745FLL && a2 == 0xEA0000000000656ELL || (sub_19752282C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x67696C746F70735FLL && a2 == 0xEA00000000007468)
  {

    return 6;
  }

  else
  {
    v5 = sub_19752282C();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_197506CD0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_197506D08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_197506D40(uint64_t a1)
{
  v2 = v1;
  v15.val[0] = *(*v1 + 80);
  v15.val[1] = v15.val[0];
  v4 = &v12;
  vst2q_f64(v4, v15);
  type metadata accessor for Schema.Index.Types();
  v14 = sub_1975215CC();
  sub_19752228C();
  sub_197521AAC();
  if (sub_197521A5C())
  {
    v5 = 4;
    do
    {
      v6 = v5 - 4;
      v7 = sub_197521A3C();
      sub_1975219EC();
      if (v7)
      {
        v8 = *(a1 + 8 * v5);

        v10 = v5 - 3;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9 = sub_19752222C();
        v10 = v5 - 3;
        if (__OFADD__(v6, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      v12 = v9;
      v13 = 0;
      sub_197521AAC();
      sub_197521A7C();
      ++v5;
    }

    while (v10 != sub_197521A5C());
  }

  *(v2 + 16) = v14;
  return v2;
}

unint64_t sub_197506ECC()
{
  result = qword_1EAF2BDC8;
  if (!qword_1EAF2BDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BDC0, &qword_1975320E0);
    sub_197506F70(&qword_1EAF2BDD0, &qword_1EAF2AE60, &qword_19752C0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BDC8);
  }

  return result;
}

uint64_t sub_197506F70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_197506FD0()
{
  result = qword_1EAF2BDD8;
  if (!qword_1EAF2BDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BDC0, &qword_1975320E0);
    sub_197507054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BDD8);
  }

  return result;
}

unint64_t sub_197507054()
{
  result = qword_1EAF2BDE0;
  if (!qword_1EAF2BDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2AE60, &qword_19752C0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BDE0);
  }

  return result;
}

unint64_t sub_1975070E8()
{
  result = qword_1EAF2BDF0;
  if (!qword_1EAF2BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BDF0);
  }

  return result;
}

unint64_t sub_197507140()
{
  result = qword_1EAF2BE00;
  if (!qword_1EAF2BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BE00);
  }

  return result;
}

unint64_t sub_197507198()
{
  result = qword_1EAF2BE08;
  if (!qword_1EAF2BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BE08);
  }

  return result;
}

unint64_t sub_1975072F4()
{
  result = qword_1EAF2BE10[0];
  if (!qword_1EAF2BE10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAF2BE10);
  }

  return result;
}

uint64_t sub_197507898(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 38))
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

uint64_t sub_1975078F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 38) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 38) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _s12RelationshipC10DeleteRuleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s12RelationshipC10DeleteRuleOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s12RelationshipC6OptionVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s12RelationshipC6OptionVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of Schema.Index.__allocating_init(_:)()
{
  return (*(v0 + 104))();
}

{
  return (*(v0 + 112))();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_197507D04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_197507D4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t _s9AttributeC6OptionV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9AttributeC6OptionV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s12RelationshipC10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s12RelationshipC10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1975080C0(unsigned int *a1, int a2)
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

_WORD *sub_197508110(_WORD *result, int a2, int a3)
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

uint64_t sub_1975081C0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_197508250(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_197508318()
{
  result = qword_1EAF2BF18;
  if (!qword_1EAF2BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF18);
  }

  return result;
}

unint64_t sub_197508370()
{
  result = qword_1EAF2BF20;
  if (!qword_1EAF2BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF20);
  }

  return result;
}

unint64_t sub_1975083C8()
{
  result = qword_1EAF2BF28;
  if (!qword_1EAF2BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF28);
  }

  return result;
}

unint64_t sub_197508420()
{
  result = qword_1EAF2BF30;
  if (!qword_1EAF2BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF30);
  }

  return result;
}

unint64_t sub_197508478()
{
  result = qword_1EAF2BF38;
  if (!qword_1EAF2BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF38);
  }

  return result;
}

unint64_t sub_1975084D0()
{
  result = qword_1EAF2BF40;
  if (!qword_1EAF2BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF40);
  }

  return result;
}

unint64_t sub_197508528()
{
  result = qword_1EAF2BF48;
  if (!qword_1EAF2BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF48);
  }

  return result;
}

unint64_t sub_197508580()
{
  result = qword_1EAF2BF50;
  if (!qword_1EAF2BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF50);
  }

  return result;
}

unint64_t sub_1975085D8()
{
  result = qword_1EAF2BF58;
  if (!qword_1EAF2BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF58);
  }

  return result;
}

unint64_t sub_197508630()
{
  result = qword_1EAF2BF60;
  if (!qword_1EAF2BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF60);
  }

  return result;
}

unint64_t sub_197508688()
{
  result = qword_1EAF2BF68;
  if (!qword_1EAF2BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF68);
  }

  return result;
}

unint64_t sub_1975086E0()
{
  result = qword_1EAF2BF70;
  if (!qword_1EAF2BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF70);
  }

  return result;
}

unint64_t sub_197508738()
{
  result = qword_1EAF2BF78;
  if (!qword_1EAF2BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF78);
  }

  return result;
}

unint64_t sub_197508790()
{
  result = qword_1EAF2BF80;
  if (!qword_1EAF2BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF80);
  }

  return result;
}

unint64_t sub_1975087E8()
{
  result = qword_1EAF2BF88;
  if (!qword_1EAF2BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF88);
  }

  return result;
}

unint64_t sub_197508840()
{
  result = qword_1EAF2BF90;
  if (!qword_1EAF2BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF90);
  }

  return result;
}

unint64_t sub_197508898()
{
  result = qword_1EAF2BF98;
  if (!qword_1EAF2BF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF98);
  }

  return result;
}

unint64_t sub_1975088F0()
{
  result = qword_1EAF2BFA0;
  if (!qword_1EAF2BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BFA0);
  }

  return result;
}

unint64_t sub_197508948()
{
  result = qword_1EAF2BFA8;
  if (!qword_1EAF2BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BFA8);
  }

  return result;
}

unint64_t sub_19750899C()
{
  result = qword_1EAF2BFB0;
  if (!qword_1EAF2BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BFB0);
  }

  return result;
}

uint64_t sub_197508C08()
{
  result = getSDSystemVersionSDK_Spring2024();
  qword_1EAF33EA0 = result;
  return result;
}

uint64_t sub_197508C2C()
{
  result = getSDSystemVersionSDK_Fall2024();
  qword_1EAF33E00 = result;
  return result;
}

uint64_t sub_197508C50()
{
  result = getSDSystemVersionSDK_Fall2025();
  qword_1EAF33EA8 = result;
  return result;
}

uint64_t sub_197508C74()
{
  result = sub_19752178C();
  qword_1ED7CE5D0 = result;
  return result;
}

uint64_t sub_197508CAC()
{
  result = sub_19752178C();
  qword_1ED7CE5C0 = result;
  return result;
}

uint64_t sub_197508CE4()
{
  result = sub_19752178C();
  qword_1ED7CE5E0 = result;
  return result;
}

uint64_t sub_197508D1C()
{
  result = sub_19752178C();
  qword_1ED7CE5D8 = result;
  return result;
}

uint64_t sub_197508D54()
{
  result = sub_19752178C();
  qword_1ED7CE5C8 = result;
  return result;
}

uint64_t sub_197508D8C()
{
  result = sub_19752178C();
  qword_1ED7CE5F0 = result;
  return result;
}

uint64_t sub_197508DC4()
{
  result = sub_19752178C();
  qword_1ED7CE608 = result;
  return result;
}

uint64_t sub_197508DFC()
{
  result = sub_19752178C();
  qword_1ED7CE600 = result;
  return result;
}

uint64_t sub_197508E34()
{
  result = sub_19752178C();
  qword_1ED7CE5E8 = result;
  return result;
}

uint64_t sub_197508E6C()
{
  result = sub_19752178C();
  qword_1ED7CE5F8 = result;
  return result;
}

uint64_t sub_197508ED8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BFB8, &qword_1975333E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1975333C0;
  if (qword_1ED7C7470 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED7CE5D0;
  *(v0 + 32) = qword_1ED7CE5D0;
  v2 = qword_1ED7C7478;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED7CE5D8;
  *(v0 + 40) = qword_1ED7CE5D8;
  v5 = qword_1ED7C7490;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED7CE5F0;
  *(v0 + 48) = qword_1ED7CE5F0;
  v8 = qword_1ED7C74A0;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED7CE600;
  *(v0 + 56) = qword_1ED7CE600;
  v11 = qword_1ED7C7498;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED7CE5F8;
  *(v0 + 64) = qword_1ED7CE5F8;
  v14 = v13;
  return v0;
}

uint64_t sub_197509068()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BFB8, &qword_1975333E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1975333C0;
  if (qword_1ED7C7460 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED7CE5C0;
  *(v0 + 32) = qword_1ED7CE5C0;
  v2 = qword_1ED7C7468;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED7CE5C8;
  *(v0 + 40) = qword_1ED7CE5C8;
  v5 = qword_1ED7C7480;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED7CE5E0;
  *(v0 + 48) = qword_1ED7CE5E0;
  v8 = qword_1ED7C74A8;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED7CE608;
  *(v0 + 56) = qword_1ED7CE608;
  v11 = qword_1ED7C7488;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED7CE5E8;
  *(v0 + 64) = qword_1ED7CE5E8;
  v14 = v13;
  return v0;
}

uint64_t PersistentIdentifier.entityName.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      v2 = v1[9];
      v3 = v1[10];
    }

    else
    {
      v5 = *v0;
      return sub_19750A588();
    }
  }

  else
  {
    v4 = [v1 entityName];
    v2 = sub_1975217BC();
  }

  return v2;
}

uint64_t PersistentIdentifier.storeIdentifier.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      v2 = v1[2];
      v3 = v1[3];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = [v1 storeIdentifier];
    v2 = sub_1975217BC();
  }

  return v2;
}

uint64_t static PersistentIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  sub_1974028EC(*a1, v4);
  sub_1974028EC(v3, v5);
  v6 = sub_19742291C(v2, v4, v3, v5);
  sub_1974028C8(v3, v5);
  sub_1974028C8(v2, v4);
  return v6 & 1;
}

BOOL sub_197509390(void *a1, unsigned __int8 a2, void *a3, char a4)
{
  if (!a4)
  {
    if (!a2)
    {
      v7 = [a3 compare_] == -1;
      return (v7 & 1) == 0;
    }

    type metadata accessor for PersistentIdentifierImplementation();
    swift_allocObject();
    v8 = sub_19750C5E0(a3);
    sub_1974028C8(a3, 0);
    v9 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (a4 == 1)
  {
    if (a2 == 1)
    {
      v7 = sub_19750C8BC(a3, a1);
      return (v7 & 1) == 0;
    }

    v8 = a3;
    v9 = a2;
    if (a2)
    {
      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for PersistentIdentifierImplementation();
    swift_allocObject();
    v14 = sub_19750C5E0(a1);
    sub_1974028C8(a1, 0);
LABEL_18:
    v7 = sub_19750C8BC(v8, v14);

    return (v7 & 1) == 0;
  }

  if (a2 != 2)
  {
    type metadata accessor for PersistentIdentifierImplementation();
    v8 = swift_allocObject();
    v8[5] = 0;
    v8[6] = 0;
    v8[7] = sub_19750A470();
    v8[8] = v17;
    v8[9] = sub_19750A588();
    v8[10] = v18;
    v8[2] = 0;
    v8[3] = 0;
    *(v8 + 16) = 256;
    v9 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_13:
    if (v9 == 1)
    {

      v14 = a1;
    }

    else
    {
      type metadata accessor for PersistentIdentifierImplementation();
      v14 = swift_allocObject();
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = sub_19750A470();
      *(v14 + 64) = v15;
      *(v14 + 72) = sub_19750A588();
      *(v14 + 80) = v16;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = 256;
    }

    goto LABEL_18;
  }

  v10 = sub_19750A588();
  v12 = v11;
  if (v10 == sub_19750A588() && v12 == v13)
  {
  }

  else
  {
    v7 = 1;
    v20 = sub_19752282C();

    if (v20)
    {
      return (v7 & 1) == 0;
    }
  }

  if (a3[8] == a1[8] && a3[9] == a1[9] || (v7 = 0, (sub_19752282C() & 1) != 0))
  {
    v21 = sub_19750A470();
    v23 = v22;
    if (v21 == sub_19750A470() && v23 == v24)
    {

      v7 = 0;
    }

    else
    {
      v25 = sub_19752282C();

      v7 = (v25 & 1) != 0;
    }
  }

  return (v7 & 1) == 0;
}

id PersistentIdentifier.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

uint64_t sub_1975096BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D656C706D69 && a2 == 0xEE006E6F69746174)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19752282C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_197509764(uint64_t a1)
{
  v2 = sub_19750C868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975097A0(uint64_t a1)
{
  v2 = sub_19750C868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersistentIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BFC0, &qword_1975333F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19750C868();
  sub_197522AFC();
  if (!v2)
  {
    type metadata accessor for PersistentIdentifierImplementation();
    sub_19750DC34(&qword_1EAF2BFD0, v12, type metadata accessor for PersistentIdentifierImplementation);
    sub_19752261C();
    (*(v6 + 8))(v10, v5);
    *a2 = v14[1];
    *(a2 + 8) = 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersistentIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BFD8, &qword_1975333F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v17 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19750C868();
  sub_197522B0C();
  if (v10)
  {
    if (v10 == 1)
    {

      v12 = v9;
    }

    else
    {
      type metadata accessor for PersistentIdentifierImplementation();
      v12 = swift_allocObject();
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = sub_19750A470();
      *(v12 + 64) = v13;
      *(v12 + 72) = sub_19750A588();
      *(v12 + 80) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = 256;
    }
  }

  else
  {
    type metadata accessor for PersistentIdentifierImplementation();
    swift_allocObject();
    v12 = sub_19750C5E0(v9);
    sub_1974028C8(v9, 0);
  }

  v17[3] = v12;
  type metadata accessor for PersistentIdentifierImplementation();
  sub_19750DC34(&qword_1EAF2BFE0, v15, type metadata accessor for PersistentIdentifierImplementation);
  sub_1975226EC();

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_197509BBC()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x19A8E1190](1);
      return sub_197452CB8();
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    return sub_197521F4C();
  }
}

uint64_t *static PersistentIdentifier.identifier<A>(for:entityName:primaryKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for GenericPersistentIdentifierImplementation();

  result = sub_19750D4B8(a1, a2, a3, a4, a5);
  *a6 = result;
  *(a6 + 8) = 1;
  return result;
}

uint64_t _s9SwiftData20PersistentIdentifierV2IDV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_197522A5C();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_197452CB8();
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_197521F4C();
  }

  return sub_197522A9C();
}

id sub_197509E44@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

BOOL sub_197509E90(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v8 = *a1;
  v9 = v2;
  v6 = v3;
  v7 = v4;
  return !_s9SwiftData20PersistentIdentifierV1loiySbAC_ACtFZ_0(&v8, &v6);
}

BOOL sub_197509EE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v8 = *a1;
  v9 = v2;
  v6 = v3;
  v7 = v4;
  return _s9SwiftData20PersistentIdentifierV1loiySbAC_ACtFZ_0(&v6, &v8);
}

uint64_t sub_197509F5C(uint64_t a1, char a2)
{
  sub_197522A5C();
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_197452CB8();
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_197521F4C();
  }

  return sub_197522A9C();
}

id sub_19750A03C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

uint64_t sub_19750A0D8()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x19A8E1190](1);
      return sub_197452CB8();
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    return sub_197521F4C();
  }
}

uint64_t sub_19750A1C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_197522A5C();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_197452CB8();
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_197521F4C();
  }

  return sub_197522A9C();
}

uint64_t sub_19750A29C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
  }

  else
  {
    if (qword_1EAF2ADB0 != -1)
    {
      v3 = swift_once();
    }

    v6 = qword_1EAF33EB0;
    MEMORY[0x1EEE9AC00](v3, a2);

    os_unfair_lock_lock(v6 + 4);
    v7 = v2;
    sub_19750E0D8(v11);
    os_unfair_lock_unlock(v6 + 4);
    v4 = v11[0];
    v8 = v11[1];

    v9 = *(v7 + 24);
    *(v7 + 16) = v4;
    *(v7 + 24) = v8;
  }

  return v4;
}

uint64_t sub_19750A3B8@<X0>(void *a1@<X8>)
{
  v2 = sub_19750A588();
  MEMORY[0x19A8DFF80](v2);

  MEMORY[0x19A8DFF80](47, 0xE100000000000000);
  v3 = sub_19750A470();
  MEMORY[0x19A8DFF80](v3);

  *a1 = 0x6474666977732D78;
  a1[1] = v5;
  return result;
}

uint64_t sub_19750A470()
{
  v1 = v0;
  v2 = sub_19752135C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 40))
  {
    v8 = *(v0 + 32);
  }

  else
  {
    sub_19752134C();
    v8 = sub_19752133C();
    v10 = v9;
    (*(v3 + 8))(v7, v2);
    v11 = *(v1 + 40);
    *(v1 + 32) = v8;
    *(v1 + 40) = v10;
  }

  return v8;
}

uint64_t sub_19750A588()
{
  if (v0[9])
  {
    v1 = v0[8];
    v2 = v0[9];
  }

  else
  {
    v3 = v0[7];
    v4 = v0;
    v5 = v0[6];
    v1 = sub_1973F7AAC();
    v6 = v4[9];
    v4[8] = v1;
    v4[9] = v7;
  }

  return v1;
}

uint64_t sub_19750A600()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_19750A648()
{
  v1 = *v0;
  sub_197522A5C();
  sub_19750A470();
  sub_19752180C();

  sub_19750A588();
  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_19750A6CC()
{
  v1 = *v0;
  sub_19750A470();
  sub_19752180C();

  sub_19750A588();
  sub_19752180C();
}

uint64_t sub_19750A74C()
{
  sub_197522A5C();
  v1 = *v0;
  sub_19750A470();
  sub_19752180C();

  sub_19750A588();
  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_19750A7CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_19750A470();
  v6 = v5;
  if (v4 == sub_19750A470() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_19752282C();

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      return v10 & 1;
    }
  }

  v11 = sub_19750A588();
  v13 = v12;
  if (v11 == sub_19750A588() && v13 == v14)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_19752282C();
  }

  return v10 & 1;
}

uint64_t sub_19750A8E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_19750D1B4();
  *a2 = result;
  return result;
}

void sub_19750A910(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000617461;
  v4 = 0xEA00000000006174;
  v5 = 0x616465726F632D78;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000197523720;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6474666977732D78;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_19750A980()
{
  v1 = *v0;
  sub_197522A5C();
  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_19750AA34()
{
  *v0;
  *v0;
  sub_19752180C();
}

uint64_t sub_19750AAD4()
{
  v1 = *v0;
  sub_197522A5C();
  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_19750AB84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x616465726F632D78;
  v4 = 0xEA00000000006174;
  v5 = 0x8000000197523720;
  if (v2 != 1)
  {
    v3 = 0xD000000000000012;
    v4 = 0x8000000197523720;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6474666977732D78;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEB00000000617461;
  }

  v8 = 0x616465726F632D78;
  if (*a2 == 1)
  {
    v5 = 0xEA00000000006174;
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
    v9 = 0x6474666977732D78;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEB00000000617461;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19752282C();
  }

  return v11 & 1;
}

uint64_t sub_19750AC9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B000, &qword_19752C760);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1EAF33EB0 = result;
  return result;
}

uint64_t sub_19750ACDC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
  }

  else
  {
    if (qword_1EAF2ADB0 != -1)
    {
      v3 = swift_once();
    }

    v6 = qword_1EAF33EB0;
    MEMORY[0x1EEE9AC00](v3, a2);

    os_unfair_lock_lock(v6 + 4);
    v7 = v2;
    sub_19750DC98(v11);
    os_unfair_lock_unlock(v6 + 4);
    v4 = v11[0];
    v8 = v11[1];

    v9 = *(v7 + 48);
    *(v7 + 40) = v4;
    *(v7 + 48) = v8;
  }

  return v4;
}

uint64_t sub_19750ADF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = 0xEA00000000006174;
  v6 = 0x616465726F632D78;
  if (v4 != 1)
  {
    v6 = 0xD000000000000012;
    v5 = 0x8000000197523720;
  }

  if (*(a1 + 32))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6474666977732D78;
  }

  if (v4)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xEB00000000617461;
  }

  MEMORY[0x19A8DFF80](v7, v8);

  MEMORY[0x19A8DFF80](3092282, 0xE300000000000000);
  v9 = *(a1 + 24);
  if (v9)
  {
    v13 = *(a1 + 16);

    v14 = sub_1975218CC();
    v15 = v10;
    sub_19752184C();
    v9 = v14;
    v11 = v15;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  MEMORY[0x19A8DFF80](v9, v11);

  MEMORY[0x19A8DFF80](*(a1 + 72), *(a1 + 80));
  MEMORY[0x19A8DFF80](47, 0xE100000000000000);
  result = MEMORY[0x19A8DFF80](*(a1 + 56), *(a1 + 64));
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_19750AF98()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_19750B00C()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_19750B050()
{
  v1 = *v0;
  v2 = 0x65644965726F7473;
  v3 = 0x4B7972616D697270;
  v4 = 0x614E797469746E65;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F706D65547369;
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

uint64_t sub_19750B10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19750D200(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19750B14C(uint64_t a1)
{
  v2 = sub_19750DB78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19750B188(uint64_t a1)
{
  v2 = sub_19750DB78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19750B1C4(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_19750B214(a1);
  return v2;
}

uint64_t sub_19750B214(uint64_t *a1)
{
  v4 = sub_1975212CC();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C0C8, &unk_197533D50);
  v9 = *(v31 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v31, v11);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  v13 = a1[3];
  v12 = a1[4];
  v32 = a1;
  v14 = a1;
  v16 = &v29 - v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_19750DB78();
  sub_197522AFC();
  if (v2)
  {
    v20 = v1;
    v18 = *(v1 + 48);

    type metadata accessor for PersistentIdentifierImplementation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v8;
    v37 = 0;
    v17 = v31;
    v20 = v1;
    *(v1 + 16) = sub_1975224FC();
    *(v1 + 24) = v21;
    v36 = 1;
    v22 = v9;
    *(v1 + 33) = sub_1975225FC() & 1;
    v35 = 2;
    *(v1 + 56) = sub_1975225EC();
    *(v1 + 64) = v23;
    v34 = 3;
    *(v1 + 72) = sub_1975225EC();
    *(v1 + 80) = v24;
    v33 = 4;
    sub_19750DC34(&qword_1EAF2AF10, 255, MEMORY[0x1E6968FB0]);
    v25 = v29;
    sub_19752261C();
    sub_19752129C();
    v26 = v17;
    v27 = sub_1975224CC();

    if (v27 >= 3)
    {
      v28 = 2;
    }

    else
    {
      v28 = v27;
    }

    (*(v30 + 8))(v25, v4);
    (*(v22 + 8))(v16, v26);
    *(v20 + 32) = v28;
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  return v20;
}

uint64_t sub_19750B634(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v37 - v5;
  v7 = sub_1975212CC();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF2C0D8, qword_197533D60);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v37 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19750DB78();
  v19 = v41;
  sub_197522B0C();
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  LOBYTE(v39) = 0;
  v22 = v38;
  sub_19752267C();
  if (v22)
  {
    return (*(v13 + 8))(v17, v12);
  }

  v38 = v11;
  v23 = v37;
  v24 = *(v19 + 33);
  LOBYTE(v39) = 1;
  sub_19752269C();
  v26 = *(v19 + 56);
  v27 = *(v19 + 64);
  LOBYTE(v39) = 2;
  sub_19752268C();
  v28 = v13;
  v29 = *(v19 + 72);
  v30 = *(v19 + 80);
  LOBYTE(v39) = 3;
  v31 = sub_19752268C();
  sub_19750ACDC(v31, v32);
  v33 = v6;
  sub_1975212AC();

  if ((*(v23 + 48))(v6, 1, v7) == 1)
  {
    sub_19750DBCC(v6);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1975221EC();
    v36 = *(v41 + 40);
    v35 = *(v41 + 48);

    v39 = v36;
    v40 = v35;
    MEMORY[0x19A8DFF80](0xD000000000000013, 0x800000019752A6C0);
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
    v34 = v38;
    (*(v23 + 32))(v38, v33, v7);
    LOBYTE(v39) = 4;
    sub_19750DC34(&qword_1EAF2AF18, 255, MEMORY[0x1E6968FB0]);
    sub_1975226EC();
    (*(v23 + 8))(v34, v7);
    return (*(v28 + 8))(v17, v12);
  }

  return result;
}

uint64_t sub_19750BA5C()
{
  v1 = *v0;
  sub_197522A5C();
  sub_197452CB8();
  return sub_197522A9C();
}

uint64_t sub_19750BAC4()
{
  sub_197522A5C();
  v1 = *v0;
  sub_197452CB8();
  return sub_197522A9C();
}

uint64_t sub_19750BB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  result = sub_19750ACDC(a1, a2);
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t sub_19750BB48@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 192))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_19750BBC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6972506465707974 && a2 == 0xEF79654B7972616DLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_19752282C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_19750BC50()
{
  sub_197522A5C();
  MEMORY[0x19A8E1190](0);
  return sub_197522A9C();
}

uint64_t sub_19750BC94()
{
  sub_197522A5C();
  MEMORY[0x19A8E1190](0);
  return sub_197522A9C();
}

uint64_t sub_19750BCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19750BBC8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_19750BD30@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  result = sub_19750E0A4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_19750BD6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_19750BDC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_19750BE14(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_19750BE64(a1, v6);
  return v5;
}

uint64_t sub_19750BE64(uint64_t *a1, uint64_t a2)
{
  v4 = *(*v2 + 216);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v28 = &v26 - v6;
  v8 = v7[28];
  v10 = *(v9 + 232);
  v11 = v7[31];
  v12 = v7[32];
  *&v33 = v4;
  *(&v33 + 1) = v8;
  v30 = v11;
  v31 = v8;
  v32 = v10;
  v34 = v10;
  v35 = v11;
  v36 = v12;
  v29 = v12;
  type metadata accessor for GenericPersistentIdentifierImplementation.CodingKeys();
  swift_getWitnessTable();
  v13 = sub_19752264C();
  v27 = *(v13 - 8);
  v14 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v37;
  sub_197522AFC();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    *&v22 = v4;
    *(&v22 + 1) = v31;
    v33 = v22;
    v34 = v32;
    v35 = v30;
    v36 = v29;
    type metadata accessor for GenericPersistentIdentifierImplementation();
    v23 = *(*v2 + 48);
    v24 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v26;
    v21 = v28;
    sub_19752261C();
    (*(v20 + 32))(v2 + *(*v2 + 264), v21, v4);
    sub_197505A1C(a1, &v33);
    sub_19750B214(&v33);
    (*(v27 + 8))(v17, v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v2;
}

uint64_t sub_19750C1DC(void *a1, uint64_t a2)
{
  v4 = *(*v2 + 216);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v23 = v21 - v6;
  v8 = *(v7 + 240);
  v25 = v4;
  v26 = *(v9 + 224);
  v27 = v8;
  v22 = *(v9 + 248);
  v28 = v22;
  type metadata accessor for GenericPersistentIdentifierImplementation.CodingKeys();
  swift_getWitnessTable();
  v10 = sub_19752278C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v21 - v14;
  v16 = v29;
  result = sub_19750B634(a1);
  if (!v16)
  {
    v29 = v11;
    v18 = a1[3];
    v21[1] = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    v19 = v24;
    sub_197522B0C();
    v20 = v23;
    (*(v19 + 16))(v23, v2 + *(*v2 + 264), v4);
    sub_1975226EC();
    (*(v19 + 8))(v20, v4);
    return (*(v29 + 8))(v15, v10);
  }

  return result;
}

char *sub_19750C4F0()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(v0 + 6);

  v4 = *(v0 + 8);

  v5 = *(v0 + 10);

  (*(*(*(v1 + 216) - 8) + 8))(&v0[*(*v0 + 264)]);
  return v0;
}

uint64_t sub_19750C588()
{
  sub_19750C4F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_19750C5E0(void *a1)
{
  v2 = v1;
  v4 = sub_1975212CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  v10 = [a1 persistentStore];
  if (v10 && (v11 = v10, v12 = [v10 identifier], v11, v12))
  {
    v13 = sub_1975217BC();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *(v2 + 16) = v13;
  *(v2 + 24) = v15;
  *(v2 + 33) = [a1 isTemporaryID];
  *(v2 + 32) = 1;
  v16 = [a1 URIRepresentation];
  sub_19752127C();

  v17 = sub_19752123C();
  v19 = v18;
  (*(v5 + 8))(v9, v4);
  *(v2 + 56) = v17;
  *(v2 + 64) = v19;
  v20 = [a1 entityName];
  v21 = sub_1975217BC();
  v23 = v22;

  *(v2 + 72) = v21;
  *(v2 + 80) = v23;
  return v2;
}

uint64_t sub_19750C7A0(void *a1, void *a2)
{
  v4 = a1[7] == a2[7] && a1[8] == a2[8];
  if (!v4 && (sub_19752282C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[9] == a2[9] && a1[10] == a2[10];
  if (!v5 && (sub_19752282C() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[3];
  v7 = a2[3];
  result = (v6 | v7) == 0;
  if (v6 && v7)
  {
    if (a1[2] == a2[2] && v6 == v7)
    {
      return 1;
    }

    else
    {

      return sub_19752282C();
    }
  }

  return result;
}

unint64_t sub_19750C868()
{
  result = qword_1EAF2BFC8;
  if (!qword_1EAF2BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BFC8);
  }

  return result;
}

uint64_t sub_19750C8BC(void *a1, void *a2)
{
  v5 = a1[2];
  v4 = a1[3];
  if (v4)
  {
    v6 = a1[2];
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v9 = a2[2];
  v8 = a2[3];
  if (v8)
  {
    v10 = a2[2];
  }

  else
  {
    v10 = 0;
  }

  if (v8)
  {
    v11 = a2[3];
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {

    if (v4)
    {
LABEL_19:
      if (!v8 || (v5 != v9 || v4 != v8) && (sub_19752282C() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v13 = 1;
    v14 = sub_19752282C();

    if (v14)
    {
      return v13;
    }

    if (v4)
    {
      goto LABEL_19;
    }
  }

  if (v8)
  {
    return 0;
  }

LABEL_26:
  if (a1[9] != a2[9] || a1[10] != a2[10])
  {
    v13 = 1;
    v15 = a1[9];
    v16 = a1[10];
    v17 = a2[9];
    v18 = a2[10];
    if (sub_19752282C())
    {
      return v13;
    }

    if ((sub_19752282C() & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[7] == a2[7] && a1[8] == a2[8])
  {
    return 0;
  }

  v13 = 1;
  if ((sub_19752282C() & 1) == 0)
  {
    return 0;
  }

  return v13;
}

uint64_t sub_19750CA54(void *a1, char a2, void *a3, unsigned __int8 a4)
{
  if (!a2)
  {
    if (a4)
    {
      type metadata accessor for PersistentIdentifierImplementation();
      swift_allocObject();
      v8 = sub_19750C5E0(a1);
      sub_1974028C8(a1, 0);
      v9 = a4;
      if (!a4)
      {
LABEL_17:
        type metadata accessor for PersistentIdentifierImplementation();
        swift_allocObject();
        v10 = sub_19750C5E0(a3);
        sub_1974028C8(a3, 0);
LABEL_18:
        v17 = sub_19750C8BC(v8, v10);

        return v17 & 1;
      }

LABEL_9:
      if (v9 == 1)
      {

        v10 = a3;
      }

      else
      {
        type metadata accessor for PersistentIdentifierImplementation();
        v10 = swift_allocObject();
        *(v10 + 40) = 0;
        *(v10 + 48) = 0;
        *(v10 + 56) = sub_19750A470();
        *(v10 + 64) = v15;
        *(v10 + 72) = sub_19750A588();
        *(v10 + 80) = v16;
        *(v10 + 16) = 0;
        *(v10 + 24) = 0;
        *(v10 + 32) = 256;
      }

      goto LABEL_18;
    }

    return [a1 compare_] == -1;
  }

  if (a2 != 1)
  {
    if (a4 != 2)
    {
      type metadata accessor for PersistentIdentifierImplementation();
      v8 = swift_allocObject();
      v8[5] = 0;
      v8[6] = 0;
      v8[7] = sub_19750A470();
      v8[8] = v18;
      v8[9] = sub_19750A588();
      v8[10] = v19;
      v8[2] = 0;
      v8[3] = 0;
      *(v8 + 16) = 256;
      v9 = a4;
      if (!a4)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    v11 = sub_19750A588();
    v13 = v12;
    if (v11 == sub_19750A588() && v13 == v14)
    {
    }

    else
    {
      v20 = 1;
      v21 = sub_19752282C();

      if (v21)
      {
        return v20;
      }
    }

    if (a1[8] != a3[8] || a1[9] != a3[9])
    {
      v20 = 0;
      if ((sub_19752282C() & 1) == 0)
      {
        return v20;
      }
    }

    v22 = sub_19750A470();
    v24 = v23;
    if (v22 == sub_19750A470() && v24 == v25)
    {

      return 0;
    }

    v20 = 1;
    v26 = sub_19752282C();

    if ((v26 & 1) == 0)
    {
      return 0;
    }

    return v20;
  }

  if (a4 != 1)
  {

    v8 = a1;
    v9 = a4;
    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  return sub_19750C8BC(a1, a3);
}

BOOL _s9SwiftData20PersistentIdentifierV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      v5 = *a1;
      if (v4 == 1)
      {
        sub_1974028EC(v5, 1);
        sub_1974028EC(v3, 1);
        v6 = sub_19750C8BC(v2, v3);
        sub_1974028C8(v3, 1);
        sub_1974028C8(v2, 1);
        return v6 & 1;
      }

      v8 = v2;
      if (!v4)
      {
        goto LABEL_18;
      }

      goto LABEL_7;
    }

    if (v4 != 2)
    {
      type metadata accessor for PersistentIdentifierImplementation();
      v8 = swift_allocObject();
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = sub_19750A470();
      *(v8 + 64) = v21;
      *(v8 + 72) = sub_19750A588();
      *(v8 + 80) = v22;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 256;
      if (!v4)
      {
LABEL_18:
        type metadata accessor for PersistentIdentifierImplementation();
        swift_allocObject();
        v9 = sub_19750C5E0(v3);
        sub_1974028C8(v3, 0);
LABEL_19:
        v20 = sub_19750C8BC(v8, v9);

        return v20 & 1;
      }

LABEL_7:
      if (v4 == 1)
      {

        v9 = v3;
      }

      else
      {
        type metadata accessor for PersistentIdentifierImplementation();
        v9 = swift_allocObject();
        *(v9 + 40) = 0;
        *(v9 + 48) = 0;
        *(v9 + 56) = sub_19750A470();
        *(v9 + 64) = v18;
        *(v9 + 72) = sub_19750A588();
        *(v9 + 80) = v19;
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *(v9 + 32) = 256;
      }

      goto LABEL_19;
    }

    v10 = *a1;
    v11 = sub_19750A588();
    v13 = v12;
    if (v11 == sub_19750A588() && v13 == v14)
    {
    }

    else
    {
      v16 = 1;
      v17 = sub_19752282C();

      if (v17)
      {
        return v16;
      }
    }

    if (v2[8] != v3[8] || v2[9] != v3[9])
    {
      v16 = 0;
      if ((sub_19752282C() & 1) == 0)
      {
        return v16;
      }
    }

    v23 = sub_19750A470();
    v25 = v24;
    if (v23 == sub_19750A470() && v25 == v26)
    {

      return 0;
    }

    v16 = 1;
    v27 = sub_19752282C();

    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      type metadata accessor for PersistentIdentifierImplementation();
      swift_allocObject();
      v8 = sub_19750C5E0(v2);
      sub_1974028C8(v2, 0);
      goto LABEL_7;
    }

    return [*a1 compare_] == -1;
  }

  return v16;
}

uint64_t sub_19750D068(uint64_t a1, uint64_t a2)
{
  v4 = sub_19750A588();
  v6 = v5;
  if (v4 == sub_19750A588() && v6 == v7)
  {
  }

  else
  {
    v8 = 1;
    v9 = sub_19752282C();

    if (v9)
    {
      return v8;
    }
  }

  if (*(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) || (v8 = 0, (sub_19752282C() & 1) != 0))
  {
    v10 = sub_19750A470();
    v12 = v11;
    if (v10 == sub_19750A470() && v12 == v13)
    {

      return 0;
    }

    v8 = 1;
    v14 = sub_19752282C();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_19750D1B4()
{
  v0 = sub_1975224CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_19750D200(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65644965726F7473 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F706D65547369 && a2 == 0xEB00000000797261 || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B7972616D697270 && a2 == 0xEA00000000007965 || (sub_19752282C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E797469746E65 && a2 == 0xEA0000000000656DLL || (sub_19752282C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000019752A6E0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_19752282C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t *sub_19750D3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  (*(*(*(*v5 + 216) - 8) + 16))(v5 + *(*v5 + 264), a5, *(*v5 + 216));
  v11 = *(v10 + 232);
  v12 = sub_1975227DC();
  v5[5] = 0;
  v5[6] = 0;
  v5[2] = a1;
  v5[3] = a2;
  v5[7] = v12;
  v5[8] = v13;
  v5[9] = a3;
  v5[10] = a4;
  *(v5 + 16) = 2;
  return v5;
}

uint64_t *sub_19750D4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *(v5 + 216);
  v16 = *(v5 + 232);
  v17 = *(v5 + 248);
  v11 = type metadata accessor for GenericPersistentIdentifierImplementation();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  return sub_19750D3D4(a1, a2, a3, a4, a5);
}

unint64_t sub_19750D54C()
{
  result = qword_1EAF2BFE8;
  if (!qword_1EAF2BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BFE8);
  }

  return result;
}

unint64_t sub_19750D5A4()
{
  result = qword_1EAF2BFF0[0];
  if (!qword_1EAF2BFF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAF2BFF0);
  }

  return result;
}

uint64_t sub_19750D630(uint64_t a1)
{
  v1 = *(a1 + 216);
  result = swift_checkMetadataState();
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

uint64_t getEnumTagSinglePayload for PersistentIdentifierImplementation.Scheme(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PersistentIdentifierImplementation.Scheme(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_19750D818(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19750D860(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_19750D8E4()
{
  result = qword_1EAF2C078;
  if (!qword_1EAF2C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C078);
  }

  return result;
}

unint64_t sub_19750D938()
{
  result = qword_1EAF2C080;
  if (!qword_1EAF2C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C080);
  }

  return result;
}

unint64_t sub_19750D990()
{
  result = qword_1EAF2C088;
  if (!qword_1EAF2C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C088);
  }

  return result;
}

unint64_t sub_19750D9E8()
{
  result = qword_1EAF2C090;
  if (!qword_1EAF2C090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2C098, qword_197533A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C090);
  }

  return result;
}

unint64_t sub_19750DA50()
{
  result = qword_1EAF2C0A0;
  if (!qword_1EAF2C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C0A0);
  }

  return result;
}

unint64_t sub_19750DAB4()
{
  result = qword_1EAF2C0B8;
  if (!qword_1EAF2C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C0B8);
  }

  return result;
}

unint64_t sub_19750DB0C()
{
  result = qword_1EAF2C0C0;
  if (!qword_1EAF2C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C0C0);
  }

  return result;
}

unint64_t sub_19750DB78()
{
  result = qword_1EAF2C0D0;
  if (!qword_1EAF2C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C0D0);
  }

  return result;
}

uint64_t sub_19750DBCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19750DC34(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_19750DCCC@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersistentIdentifierImplementation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PersistentIdentifierImplementation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_19750DE6C(unsigned int *a1, int a2)
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

_WORD *sub_19750DEBC(_WORD *result, int a2, int a3)
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

unint64_t sub_19750DF68()
{
  result = qword_1EAF2C160;
  if (!qword_1EAF2C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C160);
  }

  return result;
}

unint64_t sub_19750DFC0()
{
  result = qword_1EAF2C168;
  if (!qword_1EAF2C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C168);
  }

  return result;
}

unint64_t sub_19750E018()
{
  result = qword_1EAF2C170;
  if (!qword_1EAF2C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C170);
  }

  return result;
}

uint64_t Schema._coreDataMakeManagedObjectModel()@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19741AB44();
  v3 = result;
  if (result)
  {
    result = sub_19741CD8C(0, &qword_1EAF2B6B0, 0x1E695D638);
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  return result;
}

id sub_19750E1C0(void *a1)
{
  v3 = sub_1974DBEE8(v1, 1);
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_197530980;
    *(v5 + 32) = a1;
    *(v5 + 40) = v4;
    sub_19741CD8C(0, &qword_1EAF2B6B0, 0x1E695D638);
    v6 = a1;
    v7 = v4;
    v8 = sub_1975219BC();

    v9 = [objc_opt_self() modelByMergingModels_];
  }

  else
  {
    if (qword_1EAF2ACE8 != -1)
    {
      swift_once();
    }

    v10 = sub_19752157C();
    __swift_project_value_buffer(v10, qword_1EAF33E08);
    v11 = sub_19752155C();
    v12 = sub_197521DDC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1973F2000, v11, v12, "Failed to create an NSManagedObjectModel for this Schema mergedWith another NSManagedObjectModel", v13, 2u);
      MEMORY[0x19A8E1B50](v13, -1, -1);
    }

    return 0;
  }

  return v9;
}

double Schema._coreDataManagedObjectModel(mergedWith:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_197404860(a1, v8);
  v3 = sub_19741CD8C(0, &qword_1EAF2B6B0, 0x1E695D638);
  if (swift_dynamicCast())
  {
    v4 = sub_19750E1C0(v7);
    if (v4)
    {
      v5 = v4;
      *(a2 + 24) = v3;

      *a2 = v5;
      return result;
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t static Schema._coreDataMakeManagedObjectModel(_:)@<X0>(void *a1@<X8>)
{
  v7 = 0;
  v6 = 1uLL;
  swift_allocObject();

  v3 = Schema.init(_:version:)(v2, &v6);
  v4 = sub_1974DBEE8(v3, 1);

  if (v4)
  {
    result = sub_19741CD8C(0, &qword_1EAF2B6B0, 0x1E695D638);
  }

  else
  {
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  return result;
}

double static Schema._coreDataManagedObjectModel(for:mergedWith:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_197404860(a2, v10);
  v5 = sub_19741CD8C(0, &qword_1EAF2B6B0, 0x1E695D638);
  if (swift_dynamicCast())
  {
    v6 = sub_19750FB74(a1, v9);
    if (v6)
    {
      v7 = v6;
      *(a3 + 24) = v5;

      *a3 = v7;
      return result;
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_19750E574()
{
  swift_beginAccess();
  v2 = *(v0 + 80);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 80);
    }

    sub_1975220AC();
    type metadata accessor for Schema.Attribute();
    sub_19750FE74(&qword_1ED7CA320, type metadata accessor for Schema.Attribute);
    sub_197521C1C();
    v2 = v32;
    v4 = v33;
    v5 = v34;
    v6 = v35;
    v7 = v36;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  v26 = v2;
  v11 = (v5 + 64) >> 6;
  while (v2 < 0)
  {
    v16 = sub_19752212C();
    if (!v16)
    {
      return sub_1973FF47C();
    }

    v30 = v16;
    type metadata accessor for Schema.Attribute();
    swift_dynamicCast();
    v1 = i;
    v14 = v6;
    v15 = v7;
    if (!i)
    {
      return sub_1973FF47C();
    }

LABEL_20:
    if ((*(v1 + 120) & 0x40) != 0)
    {
      swift_beginAccess();
      v17 = *(v1 + 56);
      for (i = v17; swift_conformsToProtocol2() && v17 != 0; v17 = i)
      {
        sub_1973F732C(v17, &i);
      }

      if (!dynamic_cast_existential_2_conditional(v17))
      {
        goto LABEL_31;
      }

      swift_beginAccess();
      v19 = *(v1 + 24);
      i = *(v1 + 16);
      v29 = v19;

      MEMORY[0x19A8DFF80](0x706164414E4F534ALL, 0xEB00000000726574);
      sub_197521EEC();

      v2 = v26;
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_16:
    v15 = (v13 - 1) & v13;
    v1 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v1)
    {
      return sub_1973FF47C();
    }

    goto LABEL_20;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      return sub_1973FF47C();
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  i = 0;
  v29 = 0xE000000000000000;
  sub_1975221EC();
  v30 = i;
  v31 = v29;
  MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x800000019752A8E0);
  swift_beginAccess();
  v21 = *(v1 + 16);
  v22 = *(v1 + 24);

  MEMORY[0x19A8DFF80](v21, v22);

  MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
  v23 = *(v1 + 56);
  v27 = v23;
  if (swift_conformsToProtocol2() && v23)
  {
    do
    {
      sub_1973F732C(v23, &v27);
      v23 = v27;
      if (swift_conformsToProtocol2())
      {
        v24 = v23 == 0;
      }

      else
      {
        v24 = 1;
      }
    }

    while (!v24);
  }

  v25 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v25);

  MEMORY[0x19A8DFF80](41, 0xE100000000000000);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

id sub_19750E9D4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (sub_1975217DC() == 0x7470697263736564 && v4 == 0xEB000000006E6F69)
  {
    goto LABEL_81;
  }

  v6 = sub_19752282C();

  if (v6)
  {
    goto LABEL_80;
  }

  v83 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v7 = *(v1 + 128);
  if (v7 >> 62)
  {
    goto LABEL_66;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  swift_beginAccess();
  swift_beginAccess();
  if (v8)
  {
    v9 = 0;
    v81 = v7 & 0xFFFFFFFFFFFFFF8;
    v82 = (v7 & 0xC000000000000001);
    v79 = v7;
    v80 = v8;
    while (1)
    {
      if (v82)
      {
        v10 = MEMORY[0x19A8E0960](v9, v7);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v9 >= *(v81 + 16))
        {
          goto LABEL_65;
        }

        v10 = *(v7 + 8 * v9 + 32);

        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          v8 = sub_1975220EC();
          goto LABEL_8;
        }
      }

      v12 = [v10 propertyDescription];
      if (!v12)
      {
        goto LABEL_79;
      }

      v13 = v12;
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (!v14)
      {
        goto LABEL_78;
      }

      v15 = v14;
      if (*(v1 + 96) == 1)
      {
        [v14 setOptional_];
      }

      v16 = *(v1 + 32);
      v17 = *(v1 + 40);

      v18 = sub_19752181C();

      if (v18 >= 1 && (*(v1 + 120) & 2) != 0)
      {
        break;
      }

      v19 = *(v1 + 32);
      v20 = *(v1 + 40);

      v21 = sub_19752181C();

      if (v21 < 1)
      {
        goto LABEL_31;
      }

      v22 = v13;
      v23 = [v15 renamingIdentifier];
      if (v23)
      {
        v24 = v23;
        v25 = sub_1975217BC();
        v27 = v26;

        if (v27)
        {
          if (v25 == *(v1 + 32) && v27 == *(v1 + 40))
          {

            goto LABEL_27;
          }

          v30 = sub_19752282C();

          if (v30)
          {
LABEL_27:
            v31 = *(v1 + 32);
            v32 = *(v1 + 40);
LABEL_28:

            v33 = sub_19752178C();

            [v15 setRenamingIdentifier_];

            v22 = v33;
          }
        }

        v7 = v79;
      }

LABEL_31:
      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();
      if (v34 && *(v1 + 96) == 1)
      {
        v35 = v34;
        v36 = v13;
        v37 = [v35 elements];
        sub_19741CD8C(0, &qword_1ED7C7700, 0x1E695D530);
        v38 = sub_1975219CC();

        sub_19750F8EC(v38);
      }

      v39 = v13;
      MEMORY[0x19A8E00D0]();
      if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v40 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1975219FC();
      }

      sub_197521A4C();

      ++v9;
      if (v11 == v80)
      {
        v13 = v83;
        goto LABEL_42;
      }
    }

    v28 = *(v1 + 32);
    v29 = *(v1 + 40);
    v22 = v13;
    goto LABEL_28;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_42:

  v41 = [objc_allocWithZone(MEMORY[0x1E695D5A0]) init];
  v42 = *(v1 + 16);
  v43 = *(v1 + 24);
  v44 = v41;

  v45 = sub_19752178C();

  [v44 setName_];

  swift_beginAccess();
  v46 = *(v1 + 32);
  v47 = *(v1 + 40);

  v48 = sub_19752181C();

  if (v48 >= 1)
  {
    v49 = *(v1 + 32);
    v50 = *(v1 + 40);

    v51 = sub_19752178C();

    [v44 setRenamingIdentifier_];
  }

  swift_beginAccess();
  if (*(v1 + 112))
  {
    v52 = *(v1 + 104);
    v53 = *(v1 + 112);

    v54 = sub_19752181C();

    if (v54 >= 1)
    {
      if (*(v1 + 112))
      {
        v55 = *(v1 + 104);
        v56 = *(v1 + 112);

        v57 = sub_19752178C();
      }

      else
      {
        v57 = 0;
      }

      [v44 setVersionHashModifier_];
    }
  }

  swift_beginAccess();
  [v44 setOptional_];
  swift_beginAccess();
  v58 = *(v1 + 48);
  v59 = (v58 + 67);
  v60 = *(v58 + 16) + 1;
  do
  {
    if (!--v60)
    {
      goto LABEL_68;
    }

    v61 = *v59;
    v59 += 40;
  }

  while (v61 != 1);
  [v44 setPreservesValueInHistoryOnDeletion_];
  if (v13 >> 62)
  {
    v62 = sub_1975220EC();
    if (v62)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v62 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v62)
    {
LABEL_55:
      if (v62 >= 1)
      {
        for (i = 0; i != v62; ++i)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v66 = MEMORY[0x19A8E0960](i, v13);
          }

          else
          {
            v66 = *(v13 + 8 * i + 32);
          }

          v67 = v66;
          [v66 setPreservesValueInHistoryOnDeletion_];
          objc_opt_self();
          v68 = swift_dynamicCastObjCClass();
          if (v68)
          {
            v64 = [v68 elements];
            sub_19741CD8C(0, &qword_1ED7C7700, 0x1E695D530);
            v65 = sub_1975219CC();

            sub_19750F90C(v65);
          }

          else
          {
          }
        }

        goto LABEL_68;
      }

      __break(1u);
LABEL_78:

LABEL_79:
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000002CLL, 0x800000019752A720);
      type metadata accessor for Schema.Attribute();
      sub_19752235C();
      while (1)
      {
LABEL_80:
        sub_1975223EC();
        __break(1u);
LABEL_81:
      }
    }
  }

LABEL_68:
  v69 = *(v1 + 48);
  v70 = (v69 + 68);
  v71 = *(v69 + 16) + 1;
  while (--v71)
  {
    v72 = *v70;
    v70 += 40;
    if (v72 == 1)
    {
      [v44 setIndexedBySpotlight_];
      break;
    }
  }

  v73 = *(v1 + 48);
  v74 = (v73 + 66);
  v75 = *(v73 + 16) + 1;
  while (--v75)
  {
    v76 = *v74;
    v74 += 40;
    if (v76 == 1)
    {
      [v44 setAllowsCloudEncryption_];
      break;
    }
  }

  sub_19741CD8C(0, &qword_1ED7C7700, 0x1E695D530);
  v77 = sub_1975219BC();

  [v44 setElements_];

  return v44;
}

void sub_19750F2AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v38 = a2;
  v12 = sub_197521F5C();
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v38 - v16;
  v40 = *(a7 - 8);
  v18 = *(v40 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15, v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v38 - v24;
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || (sub_19752132C(), swift_dynamicCastMetatype()) || (type metadata accessor for Decimal(0), swift_dynamicCastMetatype()) || swift_dynamicCastMetatype() || (sub_19752135C(), swift_dynamicCastMetatype()) || (sub_1975212CC(), swift_dynamicCastMetatype()) || swift_dynamicCastMetatype())
  {
    [a3 setAttributeType_];
    [a3 setValueTransformerName_];
    *&v42 = a4;
    *(&v42 + 1) = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C180, &unk_197534030);
    sub_1975217CC();
    v26 = sub_19752178C();

    [a3 setAttributeValueClassName_];
  }

  else
  {
    swift_beginAccess();
    *a6 = 1;
    [a3 setAttributeType_];
    v27 = v38;
    swift_beginAccess();
    sub_197413B20(v27 + 64, &v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
    v28 = swift_dynamicCast();
    v29 = *(v40 + 56);
    if (v28)
    {
      v29(v17, 0, 1, a7);
      v30 = v40;
      (*(v40 + 32))(v25, v17, a7);
      (*(v30 + 16))(v22, v25, a7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5C8, &unk_19752EA10);
      if (swift_dynamicCast())
      {
        sub_19749B314(v41, &v42);
        __swift_project_boxed_opaque_existential_0Tm_0(&v42, v43);
        v31 = sub_197520BAC();
        v32 = *(v31 + 48);
        v33 = *(v31 + 52);
        swift_allocObject();
        sub_197520B9C();
        v34 = sub_197520B8C();
        v36 = v35;

        *&v41[0] = v34;
        *(&v41[0] + 1) = v36;
        v37 = sub_19752281C();
        sub_19750FD6C(v41);
        [a3 setDefaultValue_];
        swift_unknownObjectRelease();
        (*(v40 + 8))(v25, a7);
        __swift_destroy_boxed_opaque_existential_0Tm_1(&v42);
      }

      else
      {
        (*(v40 + 8))(v25, a7);
        memset(v41, 0, sizeof(v41));
        sub_19750FE14(v41, &qword_1EAF2B5D0, &unk_197534040);
      }
    }

    else
    {
      v29(v17, 1, 1, a7);
      (*(v39 + 8))(v17, v12);
    }
  }
}

void sub_19750F92C(unint64_t a1, SEL *a2, void (*a3)(uint64_t))
{
  if (a1 >> 62)
  {
    v6 = sub_1975220EC();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v6; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x19A8E0960](i, a1);
      }

      else
      {
        v10 = *(a1 + 8 * i + 32);
      }

      v11 = v10;
      [v10 *a2];
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v8 = [v12 elements];
        sub_19741CD8C(0, &qword_1ED7C7700, 0x1E695D530);
        v9 = sub_1975219CC();

        a3(v9);
      }

      else
      {
      }
    }
  }
}

id sub_19750FA8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{

  v5 = a3(v4);

  return v5;
}

uint64_t sub_19750FADC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_19741CB08(&v12, v10 + 40 * a1 + 32);
}

id sub_19750FB74(uint64_t a1, void *a2)
{
  v17 = 1uLL;
  type metadata accessor for Schema();
  v18 = 0;
  swift_allocObject();

  v4 = Schema.init(_:version:)(v3, &v17);
  v5 = sub_1974DBEE8(v4, 1);
  if (v5)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_197530980;
    *(v7 + 32) = a2;
    *(v7 + 40) = v6;
    sub_19741CD8C(0, &qword_1EAF2B6B0, 0x1E695D638);
    v8 = a2;
    v9 = v6;
    v10 = sub_1975219BC();

    v11 = [objc_opt_self() modelByMergingModels_];
  }

  else
  {
    if (qword_1EAF2ACE8 != -1)
    {
      swift_once();
    }

    v12 = sub_19752157C();
    __swift_project_value_buffer(v12, qword_1EAF33E08);
    v13 = sub_19752155C();
    v14 = sub_197521DDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1973F2000, v13, v14, "Failed to create an NSManagedObjectModel for entityTypes mergedWith another NSManagedObjectModel", v15, 2u);
      MEMORY[0x19A8E1B50](v15, -1, -1);
    }

    return 0;
  }

  return v11;
}

unint64_t sub_19750FDC0()
{
  result = qword_1EAF2C1A0[0];
  if (!qword_1EAF2C1A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAF2C1A0);
  }

  return result;
}

uint64_t sub_19750FE14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_19750FE74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19750FEBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_19750FF04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19750FFC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + result;
  if (__OFADD__(a3, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = __OFADD__(v4, a4);
  v6 = v4 + a4;
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a4 != -1 || v6 != 0x8000000000000000)
  {
    return sub_197521AFC();
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_19751000C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  v4 = v0[7];

  return v0;
}

uint64_t sub_197510044()
{
  sub_19751000C();

  return swift_deallocClassInstance();
}

uint64_t sub_197510098(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_197521F5C();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = sub_197521F5C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_197510138(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  if (v5)
  {
    v12 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v12 = *(*(*(a3 + 16) - 8) + 64) + 1;
  }

  v13 = *(v8 + 80);
  if (v9)
  {
    v14 = 7;
  }

  else
  {
    v14 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v12 + v13;
  if (v11 < a2)
  {
    v16 = ((((((((v14 + *(*(v7 - 8) + 64) + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v17 = a2 - v11;
    v18 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = v17 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    v21 = v19 >= 2 ? v20 : 0;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_32;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v16);
      if (v22)
      {
LABEL_32:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v11 + (v24 | v23) + 1;
      }
    }

    if (!v11)
    {
      return 0;
    }
  }

  if (v6 >= v10)
  {
    v25 = (*(v4 + 48))();
  }

  else
  {
    v25 = (*(v8 + 48))((a1 + v15) & ~v13, v9, v7);
  }

  if (v25 >= 2)
  {
    return v25 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_197510340(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  v15 = v11 - 1;
  if (!v11)
  {
    v15 = 0;
  }

  if (v15 <= v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = v15;
  }

  if (!v7)
  {
    ++v12;
  }

  v17 = v12 + v13;
  if (!v11)
  {
    ++v14;
  }

  v18 = ((((((((v14 + ((v12 + v13) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 < a3)
  {
    v19 = a3 - v16;
    if (((((((((v14 + ((v12 + v13) & ~v13) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v5 = v21;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v16)
  {
    if (((((((((v14 + ((v12 + v13) & ~v13) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v22 = a2 - v16;
    }

    else
    {
      v22 = 1;
    }

    if (((((((((v14 + ((v12 + v13) & ~v13) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v23 = ~v16 + a2;
      v24 = a1;
      bzero(a1, v18);
      a1 = v24;
      *v24 = v23;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v18) = v22;
      }

      else
      {
        *(a1 + v18) = v22;
      }
    }

    else if (v5)
    {
      *(a1 + v18) = v22;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *(a1 + v18) = 0;
  }

  else if (v5)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return;
  }

LABEL_43:
  if (v8 >= v15)
  {
    if (v8 >= a2)
    {
      v36 = *(v6 + 56);

      v36();
    }

    else
    {
      if (v12 <= 3)
      {
        v29 = ~(-1 << (8 * v12));
      }

      else
      {
        v29 = -1;
      }

      if (v12)
      {
        v30 = v29 & (~v8 + a2);
        if (v12 <= 3)
        {
          v31 = v12;
        }

        else
        {
          v31 = 4;
        }

        v32 = a1;
        bzero(a1, v12);
        if (v31 > 2)
        {
          if (v31 == 3)
          {
            *v32 = v30;
            *(v32 + 2) = BYTE2(v30);
          }

          else
          {
            *v32 = v30;
          }
        }

        else if (v31 == 1)
        {
          *v32 = v30;
        }

        else
        {
          *v32 = v30;
        }
      }
    }
  }

  else
  {
    v25 = (a1 + v17) & ~v13;
    if (v15 >= a2)
    {
      v33 = *(v10 + 56);
      v34 = a2 + 1;
      v35 = (a1 + v17) & ~v13;

      v33(v35, v34, v11, v9);
    }

    else
    {
      if (v14 <= 3)
      {
        v26 = ~(-1 << (8 * v14));
      }

      else
      {
        v26 = -1;
      }

      if (v14)
      {
        v27 = v26 & (~v15 + a2);
        if (v14 <= 3)
        {
          v28 = v14;
        }

        else
        {
          v28 = 4;
        }

        bzero(((a1 + v17) & ~v13), v14);
        if (v28 > 2)
        {
          if (v28 == 3)
          {
            *v25 = v27;
            *(v25 + 2) = BYTE2(v27);
          }

          else
          {
            *v25 = v27;
          }
        }

        else if (v28 == 1)
        {
          *v25 = v27;
        }

        else
        {
          *v25 = v27;
        }
      }
    }
  }
}

uint64_t sub_1975106D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_19751071C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19751073C(uint64_t result, int a2, int a3)
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_197510784()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1975107CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_197510814(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1975108B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 16);
  result = sub_197510888(a1);
  *a3 = result;
  a3[1] = 0;
  a3[2] = v6;
  return result;
}

uint64_t sub_197510904(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69828](a1, a2, WitnessTable, v5);
}

void (*sub_1975109A0(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_197510A78(v7, *a2, *v3, v3[1], v3[2], *(a3 + 16));
  return sub_197510A30;
}

void sub_197510A30(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_197510A78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(void *a1)
{
  v11 = *(a6 - 8);
  *a1 = a6;
  a1[1] = v11;
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  a1[2] = v12;
  sub_19750FFC4(a2, a3, a4, a5);
  return sub_197510B64;
}

void sub_197510B64(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_197510BB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](a1, WitnessTable, v3);
}

uint64_t sub_197510CB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69820](a1, a2, WitnessTable, v5);
}

uint64_t sub_197510D38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

__n128 sub_197510DB0@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_197510DC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_197510E24()
{
  swift_getWitnessTable();
  v1 = sub_197511298();
  v2 = *v0;

  return v1;
}

unint64_t sub_197510F04()
{
  result = qword_1EAF2C3B8;
  if (!qword_1EAF2C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C3B8);
  }

  return result;
}

uint64_t sub_197511078(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2C3B0, &qword_1975342A0);
    sub_197510F04();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1975111B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1975216DC();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_19751129C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1975216DC();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_197521D4C() + 36);
  result = sub_1975216DC();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1975113DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  (*(a3 + 16))(&v8, ObjectType, a3);
  v5 = v8;
  if (!v9)
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v5, 0);
    sub_197521F4C();
    sub_1974028C8(v5, 0);
    v6 = v5;
    v7 = 0;
    goto LABEL_5;
  }

  if (v9 == 1)
  {
    MEMORY[0x19A8E1190](1);
    sub_1974028EC(v5, 1);
    sub_197452CB8();
    sub_1974028C8(v5, 1);
    v6 = v5;
    v7 = 1;
LABEL_5:

    sub_1974028C8(v6, v7);
    return;
  }

  MEMORY[0x19A8E1190](2);
  sub_1974028EC(v5, 2);
  sub_19750A470();
  sub_19752180C();

  sub_19750A588();
  sub_19752180C();
  sub_1974028C8(v5, 2);
  sub_1974028C8(v5, 2);
}

uint64_t sub_197511570(uint64_t a1, uint64_t a2)
{
  sub_197522A5C();
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(&v6, ObjectType, a2);
  v4 = v6;
  if (v7)
  {
    if (v7 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v4, 1);
      sub_197452CB8();
      sub_1974028C8(v4, 1);
      sub_1974028C8(v4, 1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v4, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
      sub_1974028C8(v4, 2);
      sub_1974028C8(v4, 2);
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v4, 0);
    sub_197521F4C();
    sub_1974028C8(v4, 0);
    sub_1974028C8(v4, 0);
  }

  return sub_197522A9C();
}

uint64_t sub_197511708()
{
  v1 = *v0;
  v2 = v0[1];
  sub_197522A5C();
  ObjectType = swift_getObjectType();
  (*(v2 + 16))(&v7, ObjectType, v2);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    if (v8 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v4, 1);
      sub_197452CB8();
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v4, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v4, 0);
    sub_197521F4C();
  }

  sub_1974028C8(v4, v5);
  sub_1974028C8(v4, v5);
  return sub_197522A9C();
}

unint64_t sub_197511850()
{
  v1 = *v0;
  v2 = v0[1];
  swift_getObjectType();
  v3 = *(v2 + 8);
  v4 = sub_19752283C();
  MEMORY[0x19A8DFF80](v4);

  return 0xD000000000000011;
}

unint64_t sub_1975118CC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = sub_19752162C();
  strcpy(v12, "KnownKeysMap: ");
  HIBYTE(v12[1]) = -18;
  MEMORY[0x19A8DFF80](v3);

  v4 = v12[0];
  v5 = v12[1];
  v12[0] = 0xD000000000000014;
  v12[1] = 0x800000019752AB90;
  MEMORY[0x19A8DFF80](v4, v5);

  MEMORY[0x19A8DFF80](0x3A7365756C617620, 0xE900000000000020);

  swift_beginAccess();
  v6 = *(v1 + 32);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  v8 = MEMORY[0x19A8E0130](v6, v7);
  v10 = v9;

  MEMORY[0x19A8DFF80](v8, v10);

  return 0xD000000000000014;
}

id sub_197511A4C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  v3 = *(v1 + 32);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

unint64_t sub_197511A60@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (result = sub_1973F4028(result, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v6 + 56) + 8 * result);
    result = swift_beginAccess();
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v9 = *(v5 + 32);
      if (v8 < *(v9 + 16))
      {
        return sub_197413B20(v9 + 32 * v8 + 32, a3);
      }
    }

    __break(1u);
  }

  else
  {
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_197511AFC()
{
  v1 = *(v0 + 16);

  sub_1974028C8(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_197511BB4()
{
  v1 = *(v0 + 16);
  v2 = sub_19752162C();
  strcpy(v11, "KnownKeysMap: ");
  HIBYTE(v11[1]) = -18;
  MEMORY[0x19A8DFF80](v2);

  v3 = v11[0];
  v4 = v11[1];
  v11[0] = 0xD000000000000014;
  v11[1] = 0x800000019752AB90;
  MEMORY[0x19A8DFF80](v3, v4);

  MEMORY[0x19A8DFF80](0x3A7365756C617620, 0xE900000000000020);

  swift_beginAccess();
  v5 = *(v0 + 32);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  v7 = MEMORY[0x19A8E0130](v5, v6);
  v9 = v8;

  MEMORY[0x19A8DFF80](v7, v9);

  return 0xD000000000000014;
}

uint64_t sub_197511D34()
{
  v1 = *v0;
  v2 = sub_19752162C();
  strcpy(v4, "KnownKeysMap: ");
  MEMORY[0x19A8DFF80](v2);

  return v4[0];
}

uint64_t sub_197511DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v7 = *(v3 + 16);
  if (!*(v7 + 16))
  {
    goto LABEL_10;
  }

  v9 = sub_1973F4028(a2, a3);
  if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = v9;

  v5 = *(*(v7 + 56) + 8 * v11);
  swift_beginAccess();
  v12 = *(v4 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 32) = v12;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = sub_19751C104(v12);
    *(v4 + 32) = v12;
    if ((v5 & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (v5 < v12[2])
      {
        sub_1973F7958(a1, &v12[4 * v5 + 4]);
        *(v4 + 32) = v12;
        swift_endAccess();
        return sub_1973F9E68(a1);
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  sub_1975221EC();

  MEMORY[0x19A8DFF80](a2, v5);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197511F20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_197511F68(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_197511FB8()
{
  result = qword_1EAF2C450[0];
  if (!qword_1EAF2C450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAF2C450);
  }

  return result;
}

uint64_t sub_197512030(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197512074()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  if (v2 != swift_getAssociatedTypeWitness())
  {
    v4 = sub_1974C23A4(v2, v3)[2];
LABEL_5:

    v10 = *(v4 + 16);
    swift_beginAccess();
    v6 = *(v4 + 32);

    type metadata accessor for KnownKeysDictionary();
    v7 = swift_allocObject();
    *(v7 + 16) = v10;
    *(v7 + 32) = v6;
    *(v1 + 16) = v7;
    PersistentModel.persistentModelID.getter(v2, v3, &v11);
    v8 = v12;
    *(v1 + 24) = v11;
    *(v1 + 32) = v8;
    return v1;
  }

  v5 = *(v3 + 56);
  v5(v14, v2, v3);
  v13 = v2;
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData();
  if (swift_dynamicCast())
  {
    v4 = *(v11 + 16);
    goto LABEL_5;
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x800000019752ABB0);
  v5(v14, v2, v3);
  sub_1975227FC();
  __swift_destroy_boxed_opaque_existential_1(v14);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1975122EC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  type metadata accessor for ModelSnapshot();
  swift_allocObject();
  return sub_197512074();
}

uint64_t sub_197512340@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *v3;
  v8 = *a1;
  if (*(v3 + 48) != 1)
  {
    v7 = a2;
    v4 = *(v3 + 16);
    v17 = v4[3];
    v18 = *(v17 + 16);

    if (!v18)
    {
      goto LABEL_26;
    }

    v19 = sub_1973F7814(a1);
    if ((v20 & 1) == 0)
    {
      goto LABEL_26;
    }

    v21 = *(*(v17 + 56) + 8 * v19);
    swift_beginAccess();
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v22 = v4[4];
      if (v21 < *(v22 + 16))
      {
        sub_197413B20(v22 + 32 * v21 + 32, &v30);

        if (*(&v31 + 1))
        {
          sub_1974028B8(&v30, v32);
          v23 = *(v8 + *MEMORY[0x1E69E77B0] + 8);
          swift_dynamicCast();
          PersistentModel.persistentModelID.getter(v23, v7, a3);
          return swift_unknownObjectRelease();
        }

        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v9 = *(v3 + 16);
  v10 = *(v9 + 24);
  v11 = *(v10 + 16);
  v12 = v4[2];

  if (v11)
  {
    v13 = sub_1973F7814(a1);
    if (v14)
    {
      v15 = *(*(v10 + 56) + 8 * v13);
      swift_beginAccess();
      if ((v15 & 0x8000000000000000) == 0)
      {
        v16 = *(v9 + 32);
        if (v15 < *(v16 + 16))
        {
          sub_197413B20(v16 + 32 * v15 + 32, v32);
          goto LABEL_14;
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v30 = 0u;
      v31 = 0u;

LABEL_27:
      __break(1u);
LABEL_28:
      sub_1973FE5EC(&v30, &qword_1EAF2AF20, &unk_19752F320);
      goto LABEL_29;
    }
  }

  memset(v32, 0, sizeof(v32));
LABEL_14:

  sub_197413B20(v32, &v30);
  if (*(&v31 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
    if (swift_dynamicCast())
    {
      sub_1973FE5EC(v32, &qword_1EAF2AF20, &unk_19752F320);
      result = swift_unknownObjectRelease();
      *a3 = v27;
      *(a3 + 8) = v29;
      return result;
    }
  }

  else
  {
    sub_1973FE5EC(&v30, &qword_1EAF2AF20, &unk_19752F320);
  }

  sub_197413B20(v32, &v30);
  if (!*(&v31 + 1))
  {
    goto LABEL_28;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000026, 0x800000019752B620);
    v25 = *(v7 + 232);
    v26 = *(v8 + *MEMORY[0x1E69E77B0] + 8);
    sub_197522B2C();
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0x206D6F726620, 0xE600000000000000);
    v28 = v4[2];
    type metadata accessor for KnownKeysDictionary();
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    sub_1975227FC();
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  result = sub_1973FE5EC(v32, &qword_1EAF2AF20, &unk_19752F320);
  *a3 = v27;
  *(a3 + 8) = v29;
  return result;
}

uint64_t sub_197512784(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a3;
  v33 = *v3;
  v6 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v7 = sub_197521F5C();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v32 - v11;
  v13 = *(v6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10, v15);
  v17 = &v32 - v16;
  v18 = v3[2];
  v19 = *(v18 + 24);
  v20 = *(v19 + 16);

  if (!v20 || (v21 = sub_1973F7814(a1), (v22 & 1) == 0))
  {
    v36 = 0u;
    v37 = 0u;

    goto LABEL_10;
  }

  v23 = *(*(v19 + 56) + 8 * v21);
  swift_beginAccess();
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v25 = *(v18 + 32);
  v24 = *(v25 + 16);
  if (v23 >= v24)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_197413B20(v25 + 32 * v23 + 32, &v36);

  if (*(&v37 + 1))
  {
    sub_1974028B8(&v36, &v42);
    if (*(v4 + 48) == 1)
    {
      sub_197404860(&v42, v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm_7(&v42);
        v35[4] = v40;
        v35[0] = v36;
        v35[1] = v37;
        v35[3] = v39;
        v35[2] = v38;
        v26 = v36;
        sub_1974416CC(v39);
        __swift_destroy_boxed_opaque_existential_1Tm_7(v35 + 1);
        return v26;
      }

      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      v36 = 0u;
      v37 = 0u;
      sub_1973FE5EC(&v36, &qword_1EAF2B5F8, &qword_19752EA50);
      sub_197404860(&v42, &v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm_7(&v42);
        return *&v35[0];
      }

      *&v36 = 0;
      *(&v36 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000028, 0x800000019752B6A0);
      MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752B340);
      MEMORY[0x19A8DFF80](2606, 0xE200000000000000);
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      *&v35[0] = v4;
      sub_1975227FC();
      goto LABEL_20;
    }

    sub_197404860(&v42, &v36);
    v28 = swift_dynamicCast();
    v24 = *(v13 + 56);
    if (v28)
    {
      v24(v12, 0, 1, v6);
      (*(v13 + 32))(v17, v12, v6);
      v29 = sub_19743055C(1, v6, v34);
      (*(v13 + 8))(v17, v6);
      __swift_destroy_boxed_opaque_existential_1Tm_7(&v42);
      return v29;
    }

LABEL_18:
    v24(v12, 1, 1, v6);
    (*(v32 + 8))(v12, v7);
    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000025, 0x800000019752B650);
    *&v35[0] = a1;
    v30 = *(v33 + 232);
    sub_197522B2C();
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x800000019752B680);
    v31 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v31);

    MEMORY[0x19A8DFF80](0x746F672074756220, 0xE900000000000020);
    sub_19752235C();
    MEMORY[0x19A8DFF80](8238, 0xE200000000000000);
    *&v35[0] = v4;
    sub_1975227FC();
LABEL_20:
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

LABEL_10:
  sub_1973FE5EC(&v36, &qword_1EAF2AF20, &unk_19752F320);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_197512DF4(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  sub_1973FBC40(a1, a2);
  return v4;
}

uint64_t sub_197512E44()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = v0;
    type metadata accessor for _ModelMetadata();
    swift_allocObject();
    v1 = sub_1973FD110();
    v3 = *(v2 + 40);
    *(v2 + 40) = v1;
  }

  return v1;
}

uint64_t sub_197512EB8(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  sub_197518E60(a1, a2);
  return v4;
}

uint64_t sub_197512F10(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  sub_197517B98(a1, a2);
  return v4;
}

uint64_t sub_197512F60(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  sub_197517264(v3, a2);
  return v3;
}

void sub_197512FA8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_197446EF8(a3, a4, &v12);
  if (AssociatedTypeWitness)
  {
    sub_19743099C(&v12, v15);
    v5 = v16;
    v6 = __swift_project_boxed_opaque_existential_1Tm_5(v15, v16);
    v7 = *(*(v5 - 8) + 64);
    MEMORY[0x1EEE9AC00](v6, v6);
    (*(v9 + 16))(&v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1Tm_1(&v12);
    sub_1975218EC();
    while (1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(&v12, AssociatedTypeWitness);
      sub_197521F8C();
      if (!v11)
      {
        break;
      }

      a1(v11);
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1Tm_7(&v12);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v15);
  }
}

uint64_t sub_197513168(uint64_t a1)
{
  sub_197512E44();
  swift_beginAccess();

  sub_19747D9D8(&v3, a1);
  swift_endAccess();
}

uint64_t sub_1975131E4(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
}

id sub_1975131F4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  v3 = *(v1 + 40);
  *(a1 + 8) = v3;
  return sub_1974ADEAC(v2, v3);
}

void (*sub_19751327C(uint64_t a1))()
{
  *a1 = 0;
  *(a1 + 8) = -1;
  return sub_1975132A8;
}

uint64_t sub_1975137B0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  *a1 = result;
  return result;
}

void (*sub_1975137E8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 112))();
  return sub_19751387C;
}

void sub_19751387C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1975139F4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(v1 + 24);
  *a1 = v3;
  v4 = *(v1 + 32);
  *(a1 + 8) = v4;
  sub_1974ADEAC(v3, v4);
  return sub_197513A48;
}

void sub_197513A48(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    sub_1974ADEAC(*a1, v3);
    v5 = *(v4 + 24);
    *(v4 + 24) = v2;
    v6 = *(v4 + 32);
    *(v4 + 32) = v3;
    sub_1974A1014(v5, v6);
    v7 = v2;
    v8 = v3;
  }

  else
  {
    v7 = *(v4 + 24);
    *(v4 + 24) = v2;
    v8 = *(v4 + 32);
    *(v4 + 32) = v3;
  }

  sub_1974A1014(v7, v8);
}

uint64_t sub_197513AC8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *a1;
  if (qword_1EAF2ADA8 != -1)
  {
    swift_once();
  }

  if (dyld_program_sdk_at_least())
  {
    v8 = sub_197512E44();
    swift_beginAccess();
    v9 = *(v8 + 88);

    LOBYTE(v8) = sub_197473058(a1, v9);

    if (v8)
    {
      if (qword_1EAF2AC88 != -1)
      {
        swift_once();
      }

      v10 = sub_19752157C();
      __swift_project_value_buffer(v10, qword_1EAF33DD0);

      v11 = sub_19752155C();
      v12 = sub_197521DDC();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v63[0] = v14;
        *v13 = 136315138;
        *&v60 = a1;
        v15 = *(v6 + 232);
        v16 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
        sub_197522B2C();

        v17 = sub_1975217CC();
        v19 = sub_197462310(v17, v18, v63);

        *(v13 + 4) = v19;
        _os_log_impl(&dword_1973F2000, v11, v12, "Attempting to read a value after it has been invalidated, forKey: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_7(v14);
        MEMORY[0x19A8E1B50](v14, -1, -1);
        MEMORY[0x19A8E1B50](v13, -1, -1);
      }
    }
  }

  if (*(v3 + 48) != 1)
  {
    v28 = v3[2];
    v29 = *(v28 + 24);
    v30 = *(v29 + 16);

    if (v30 && (v31 = sub_1973F7814(a1), (v32 & 1) != 0))
    {
      v33 = *(*(v29 + 56) + 8 * v31);
      swift_beginAccess();
      if ((v33 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v34 = *(v28 + 32);
      if (v33 >= *(v34 + 16))
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      sub_197413B20(v34 + 32 * v33 + 32, &v60);
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    if (*(&v61 + 1))
    {
      sub_1974028B8(&v60, v63);
      v35 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
      swift_dynamicCast();
      return v59[0];
    }

    goto LABEL_45;
  }

  v20 = *(sub_197512E44() + 16);

  if (!v20)
  {
LABEL_46:
    v63[0] = 0;
    v63[1] = 0xE000000000000000;
    sub_1975221EC();

    v63[0] = 0xD000000000000017;
    v63[1] = 0x800000019752B400;
    sub_197433F28(&v60);
    *&v65[0] = v60;
    BYTE8(v65[0]) = BYTE8(v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
    v56 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v56);

    goto LABEL_52;
  }

  v21 = v3[2];
  v22 = *(v21 + 24);
  v23 = *(v22 + 16);

  if (v23)
  {
    v24 = sub_1973F7814(a1);
    if (v25)
    {
      v26 = *(*(v22 + 56) + 8 * v24);
      swift_beginAccess();
      if ((v26 & 0x8000000000000000) == 0)
      {
        v27 = *(v21 + 32);
        if (v26 < *(v27 + 16))
        {
          sub_197413B20(v27 + 32 * v26 + 32, v65);
          goto LABEL_26;
        }

        goto LABEL_44;
      }

      goto LABEL_42;
    }
  }

  memset(v65, 0, 32);
LABEL_26:

  sub_197413B20(v65, v63);
  if (v64)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
    if (swift_dynamicCast())
    {
      sub_1973FE5EC(v65, &qword_1EAF2AF20, &unk_19752F320);

      sub_1974028C8(v60, SBYTE8(v60));
      *v63 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      v37 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
      swift_dynamicCast();
      return v60;
    }
  }

  else
  {
    sub_1973FE5EC(v63, &qword_1EAF2AF20, &unk_19752F320);
  }

  sub_197413B20(v65, v63);
  if (v64)
  {
    if (swift_dynamicCast())
    {
      v38 = v60;
      v39 = BYTE8(v60);
      v63[0] = v60;
      LOBYTE(v63[1]) = BYTE8(v60);
      v63[0] = sub_1974309B4(v63);
      v63[1] = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      v41 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
      swift_dynamicCast();
      v42 = v60;
      v43 = v3[2];
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
      v44 = swift_allocObject();
      v63[0] = v44;
      *(v44 + 16) = v60;
      *(v44 + 24) = v39;
      *(v44 + 32) = v42;
      *(v44 + 40) = a2;

      sub_1974028EC(v38, v39);
      swift_unknownObjectRetain();
      sub_1973FCF28(v63, a1);

      sub_1974028C8(v38, v39);
      sub_1973FE5EC(v65, &qword_1EAF2AF20, &unk_19752F320);
      return v42;
    }
  }

  else
  {
    sub_1973FE5EC(v63, &qword_1EAF2AF20, &unk_19752F320);
  }

  sub_197413B20(v65, v59);
  if (!v59[3])
  {
    sub_1973FE5EC(v59, &qword_1EAF2AF20, &unk_19752F320);
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
    goto LABEL_49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4E0, &qword_197534B50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    goto LABEL_49;
  }

  if (!*(&v61 + 1))
  {
LABEL_49:
    sub_1973FE5EC(&v60, &qword_1EAF2C4E8, &qword_197534B58);
    goto LABEL_52;
  }

  v58 = a2;
  sub_19743099C(&v60, v63);
  if (*(v3[5] + 16))
  {
    v45 = v3[3];
    v46 = *(v3 + 32);
    sub_1974ADEAC(v45, *(v3 + 32));
    if (v46 != 255)
    {
      v47 = __swift_project_boxed_opaque_existential_1Tm_5(v63, v64);
      v48 = *v47;
      v49 = v47[1];
      v50 = *(v47 + 16);

      sub_197428988(v48, v49, v50, v45, v46, &v60);
      v51 = v60;
      LOBYTE(v49) = BYTE8(v60);
      *&v60 = sub_1974309B4(&v60);
      *(&v60 + 1) = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      v53 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
      swift_dynamicCast();
      v42 = v59[0];
      v54 = v3[2];
      *(&v61 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
      v55 = swift_allocObject();
      *&v60 = v55;
      *(v55 + 16) = v51;
      *(v55 + 24) = v49;
      *(v55 + 32) = v42;
      *(v55 + 40) = v58;

      sub_1974028EC(v51, v49);
      swift_unknownObjectRetain();
      sub_1973FCF28(&v60, a1);

      sub_1974A1014(v45, v46);

      sub_1974028C8(v51, v49);
      sub_1973FE5EC(v65, &qword_1EAF2AF20, &unk_19752F320);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v63);
      return v42;
    }

    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000060, 0x800000019752B420);
    v59[0] = v3;
    sub_1975227FC();
  }

  else
  {
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_1975221EC();

    *&v60 = 0xD000000000000017;
    *(&v60 + 1) = 0x800000019752B400;
    sub_197433F28(v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
    v57 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v57);
  }

LABEL_52:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19751456C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *v3;
  v8 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v54 - v13;
  if (*(v3 + 48) != 1)
  {
LABEL_29:
    v45 = v4[2];
    v46 = *(v45 + 24);
    v47 = *(v46 + 16);

    if (!v47 || (v48 = sub_1973F7814(a1), (v49 & 1) == 0))
    {
      v71 = 0u;
      v72 = 0u;
      goto LABEL_35;
    }

    v50 = *(*(v46 + 56) + 8 * v48);
    swift_beginAccess();
    if ((v50 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v51 = *(v45 + 32);
      if (v50 < *(v51 + 16))
      {
        sub_197413B20(v51 + 32 * v50 + 32, &v71);
LABEL_35:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
        return swift_dynamicCast();
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v57 = v12;
  v58 = v10;
  v59 = v11;
  v60 = a3;
  v15 = *(sub_197512E44() + 16);

  if (!v15)
  {
LABEL_42:
    *&v71 = 0;
    *(&v71 + 1) = 0xE000000000000000;
    sub_1975221EC();

    *&v71 = 0xD000000000000017;
    *(&v71 + 1) = 0x800000019752B400;
    sub_197433F28(&v61);
    v76[0] = v61;
    LOBYTE(v76[1]) = BYTE8(v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
    v52 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v52);

    goto LABEL_43;
  }

  v16 = v3[2];
  v17 = *(v16 + 24);
  v18 = *(v17 + 16);

  if (v18 && (v19 = sub_1973F7814(a1), (v20 & 1) != 0))
  {
    v21 = *(*(v17 + 56) + 8 * v19);
    swift_beginAccess();
    if ((v21 & 0x8000000000000000) != 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v22 = *(v16 + 32);
    if (v21 >= *(v22 + 16))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    sub_197413B20(v22 + 32 * v21 + 32, v76);
  }

  else
  {
    memset(v76, 0, 32);
  }

  sub_197413B20(v76, &v61);
  if (!*(&v62 + 1))
  {
    sub_1973FE5EC(&v61, &qword_1EAF2AF20, &unk_19752F320);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    goto LABEL_15;
  }

  if (!v71)
  {
LABEL_15:
    sub_1973FE5EC(&v71, &qword_1EAF2B5F8, &qword_19752EA50);
    sub_197413B20(v76, &v71);
    if (*(&v72 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
      if (swift_dynamicCast())
      {
        v23 = v61;
        v24 = v58;
        sub_19744CC48(v61, v15, v8);
        v25 = v4[2];
        *(&v72 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
        v26 = swift_allocObject();
        *&v71 = v26;
        v26[2] = v23;
        v26[6] = v8;
        v26[7] = v24;
        boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v26 + 3);
        v28 = v59;
        (*(v59 + 16))(boxed_opaque_existential_1Tm_1, v14, v8);
        v26[8] = 1;
        v26[9] = 0;
        v26[10] = 0;
        v26[11] = 0;

        sub_1973FCF28(&v71, a1);

        sub_1973FE5EC(v76, &qword_1EAF2AF20, &unk_19752F320);
        return (*(v28 + 32))(v60, v14, v8);
      }
    }

    else
    {
      sub_1973FE5EC(&v71, &qword_1EAF2AF20, &unk_19752F320);
    }

    sub_197413B20(v76, &v68);
    if (v70)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4E0, &qword_197534B50);
      if (swift_dynamicCast())
      {
        if (*(&v62 + 1))
        {
          sub_19743099C(&v61, &v71);
          v30 = *(v4[5] + 16);
          if (!v30)
          {
            goto LABEL_44;
          }

          v31 = *(v4 + 32);
          v55 = v4[3];
          sub_1974ADEAC(v55, v31);
          v56 = v31;
          if (v31 != 255)
          {
            v32 = __swift_project_boxed_opaque_existential_1Tm_5(&v71, *(&v72 + 1));
            v33 = *v32;
            v34 = v32[1];
            v35 = *(v32 + 16);

            v36 = v35;
            v37 = v55;
            v38 = sub_197450578(v33, v34, v36, v55, v56);
            v39 = v30;
            v57 = v30;
            v40 = v58;
            sub_19744CC48(v38, v39, v8);
            v41 = v4[2];
            *(&v62 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
            v42 = swift_allocObject();
            *&v61 = v42;
            v42[2] = v38;
            v42[6] = v8;
            v42[7] = v40;
            v43 = __swift_allocate_boxed_opaque_existential_1Tm_1(v42 + 3);
            v44 = v59;
            (*(v59 + 16))(v43, v14, v8);
            v42[8] = 1;
            v42[9] = 0;
            v42[10] = 0;
            v42[11] = 0;

            sub_1973FCF28(&v61, a1);

            sub_1974A1014(v37, v56);

            sub_1973FE5EC(v76, &qword_1EAF2AF20, &unk_19752F320);
            (*(v44 + 32))(v60, v14, v8);
            return __swift_destroy_boxed_opaque_existential_1Tm_7(&v71);
          }

          *&v61 = 0;
          *(&v61 + 1) = 0xE000000000000000;

          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000060, 0x800000019752B420);
          v68 = v4;
          sub_1975227FC();
          while (1)
          {
LABEL_43:
            sub_1975223EC();
            __break(1u);
LABEL_44:
            *&v61 = 0;
            *(&v61 + 1) = 0xE000000000000000;
            sub_1975221EC();

            *&v61 = 0xD000000000000017;
            *(&v61 + 1) = 0x800000019752B400;
            sub_197433F28(&v68);
            v66 = v68;
            v67 = v69;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
            v53 = sub_1975217CC();
            MEMORY[0x19A8DFF80](v53);
          }
        }
      }

      else
      {
        *&v63 = 0;
        v61 = 0u;
        v62 = 0u;
      }

      sub_1973FE5EC(v76, &qword_1EAF2AF20, &unk_19752F320);
    }

    else
    {
      sub_1973FE5EC(v76, &qword_1EAF2AF20, &unk_19752F320);

      sub_1973FE5EC(&v68, &qword_1EAF2AF20, &unk_19752F320);
      v61 = 0u;
      v62 = 0u;
      *&v63 = 0;
    }

    sub_1973FE5EC(&v61, &qword_1EAF2C4E8, &qword_197534B58);
    goto LABEL_29;
  }

  sub_1973FE5EC(v76, &qword_1EAF2AF20, &unk_19752F320);

  v61 = v71;
  v62 = v72;
  v63 = v73;
  v64 = v74;
  v65 = v75;

  sub_1974416CC(v64);
  sub_19743099C((&v61 + 8), &v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B680, &unk_197534B40);
  return swift_dynamicCast();
}

uint64_t sub_197514EBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  sub_197512E44();
  swift_beginAccess();
  sub_19751CC3C();
  swift_endAccess();

  v8 = *(v3 + 16);
  if (*(v3 + 48) == 1)
  {
    v12 = &type metadata for PersistentIdentifier;
    v9 = *(v7 + *MEMORY[0x1E69E77B0] + 8);

    PersistentModel.persistentModelID.getter(v9, a3, v11);
  }

  else
  {
    v12 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
    v11[0] = a2;

    swift_unknownObjectRetain();
  }

  sub_1973FCF28(v11, a1);
}

uint64_t sub_197515020(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *(v5 + 16);
  if (*(v5 + 48) == 1)
  {
    v11 = *(v8 + *MEMORY[0x1E69E77B0] + 8);

    v12 = sub_19743055C(0, v11, a5);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
    v16[0] = v12;
  }

  else
  {
    v17 = *(v8 + *MEMORY[0x1E69E77B0] + 8);
    v13 = v17;
    boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v16);
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_1Tm_1, a2, v13);
  }

  sub_1973FCF28(v16, a1);
}

uint64_t sub_19751516C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v37 = *a3;
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, v8, &v38);
  if (v39)
  {
    if (v39 == 1)
    {
      v10 = *(v38 + 33);
      sub_1974028C8(v38, 1);
      if ((v10 & 1) == 0)
      {
        return PersistentModel.persistentModelID.getter(ObjectType, v8, a4);
      }
    }

    else
    {
      sub_1974028C8(v38, 2);
    }
  }

  else
  {
    v11 = v38;
    v12 = [v38 isTemporaryID];
    sub_1974028C8(v11, 0);
    if ((v12 & 1) == 0)
    {
      return PersistentModel.persistentModelID.getter(ObjectType, v8, a4);
    }
  }

  if (*a2)
  {
    v35 = a4;
    if (qword_1EAF2AC88 != -1)
    {
      swift_once();
    }

    v13 = sub_19752157C();
    __swift_project_value_buffer(v13, qword_1EAF33DD0);

    swift_unknownObjectRetain();
    v14 = sub_19752155C();
    v15 = sub_197521DDC();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40 = v34;
      *v16 = 136315394;
      PersistentModel.persistentModelID.getter(ObjectType, v8, &v38);
      v17 = sub_1975217CC();
      v19 = sub_197462310(v17, v18, &v40);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      v38 = a3;

      v20 = sub_1975217CC();
      v22 = sub_197462310(v20, v21, &v40);

      *(v16 + 14) = v22;
      _os_log_impl(&dword_1973F2000, v14, v15, "Illegal attempt to flip a temporary object to a future %s: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8E1B50](v34, -1, -1);
      MEMORY[0x19A8E1B50](v16, -1, -1);
    }

    a4 = v35;
  }

  else
  {
    if (qword_1EAF2AC88 != -1)
    {
      swift_once();
    }

    v23 = sub_19752157C();
    __swift_project_value_buffer(v23, qword_1EAF33DD0);

    v24 = sub_19752155C();
    v25 = sub_197521DDC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38 = v36;
      *v26 = 136315138;

      v27 = sub_1975217CC();
      v29 = ObjectType;
      v30 = v8;
      v31 = a4;
      v32 = sub_197462310(v27, v28, &v38);

      *(v26 + 4) = v32;
      a4 = v31;
      v8 = v30;
      ObjectType = v29;
      _os_log_impl(&dword_1973F2000, v24, v25, "This backing data has retained a temporary object ID beyond the mutations to the context %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v36);
      MEMORY[0x19A8E1B50](v36, -1, -1);
      MEMORY[0x19A8E1B50](v26, -1, -1);
    }
  }

  return PersistentModel.persistentModelID.getter(ObjectType, v8, a4);
}

uint64_t sub_197515578(int a1, _BYTE *a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (a3 == 1 && (a2[33] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (![a2 isTemporaryID])
  {
    goto LABEL_11;
  }

  if (qword_1EAF2AC88 != -1)
  {
    swift_once();
  }

  v7 = sub_19752157C();
  __swift_project_value_buffer(v7, qword_1EAF33DD0);
  sub_1974028EC(a2, a3);

  v8 = sub_19752155C();
  v9 = sub_197521DDC();
  sub_1974028C8(a2, a3);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    sub_1974028EC(a2, a3);
    v12 = sub_1975217CC();
    v14 = sub_197462310(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    swift_beginAccess();
    v15 = *(a4 + 16);
    v16 = *(a4 + 24);

    v17 = sub_197462310(v15, v16, &v21);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1973F2000, v8, v9, "%%@ is attempting to flip a captured a temporary persistentIdentifier for %s on %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8E1B50](v11, -1, -1);
    MEMORY[0x19A8E1B50](v10, -1, -1);
  }

LABEL_11:
  v21 = a2;
  LOBYTE(v22) = a3;
  v21 = sub_1974309B4(&v21);
  v22 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  swift_dynamicCast();
  return v20;
}

uint64_t sub_197515800()
{
  v1 = *(v0 + 16);

  sub_1974A1014(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 40);
}

void sub_19751583C()
{
  sub_1975221EC();
  v0 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v0);

  MEMORY[0x19A8DFF80](0xD00000000000003CLL, 0x800000019752AFA0);
  sub_1975223EC();
  __break(1u);
}

id sub_1975158E8@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (v3 == 255)
  {
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    *a1 = v4;
    *(a1 + 8) = v3;
    return sub_1974028EC(v4, v3);
  }

  return result;
}

void sub_19751598C()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_197515A60()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_197515B34()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_197515C08()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

uint64_t (*sub_197515CEC())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess_4;
}

uint64_t sub_197515F20@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 40);
  a1[3] = type metadata accessor for _ModelMetadata();
  *a1 = v3;
}

void sub_197515FC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - v4;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1975221EC();
  v16 = v14;
  v17 = v15;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v6 = *(v0 + 24);
  v14 = *(v0 + 16);
  LOBYTE(v15) = v6;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v7 = *(*(v0 + 40) + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v5, v7 + v8, v9);
    v11 = 0;
  }

  else
  {
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    v11 = 1;
  }

  (*(v10 + 56))(v5, v11, 1, v9);
  v12 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v12);

  sub_1975223EC();
  __break(1u);
}

void sub_1975161F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - v4;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1975221EC();
  v16 = v14;
  v17 = v15;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v6 = *(v0 + 24);
  v14 = *(v0 + 16);
  LOBYTE(v15) = v6;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v7 = *(*(v0 + 40) + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v5, v7 + v8, v9);
    v11 = 0;
  }

  else
  {
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    v11 = 1;
  }

  (*(v10 + 56))(v5, v11, 1, v9);
  v12 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v12);

  sub_1975223EC();
  __break(1u);
}

void sub_19751642C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - v4;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1975221EC();
  v16 = v14;
  v17 = v15;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v6 = *(v0 + 24);
  v14 = *(v0 + 16);
  LOBYTE(v15) = v6;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v7 = *(*(v0 + 40) + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v5, v7 + v8, v9);
    v11 = 0;
  }

  else
  {
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    v11 = 1;
  }

  (*(v10 + 56))(v5, v11, 1, v9);
  v12 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v12);

  sub_1975223EC();
  __break(1u);
}

void sub_197516660()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - v4;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1975221EC();
  v16 = v14;
  v17 = v15;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v6 = *(v0 + 24);
  v14 = *(v0 + 16);
  LOBYTE(v15) = v6;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v7 = *(*(v0 + 40) + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v5, v7 + v8, v9);
    v11 = 0;
  }

  else
  {
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    v11 = 1;
  }

  (*(v10 + 56))(v5, v11, 1, v9);
  v12 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v12);

  sub_1975223EC();
  __break(1u);
}

void (*sub_197516900(uint64_t a1))()
{
  v2 = *v1;
  sub_197428E9C(a1);
  return sub_197516948;
}

void sub_197516B80(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  sub_1975221EC();
  v4 = *(v2 + 232);
  v5 = *(v3 + *MEMORY[0x1E69E77B0] + 8);
  sub_197522B2C();
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0xD000000000000044, 0x800000019752B100);
  sub_1975223EC();
  __break(1u);
}

void sub_197516C88(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  sub_1975221EC();
  v4 = *(v2 + 232);
  v5 = *(v3 + *MEMORY[0x1E69E77B0] + 8);
  sub_197522B2C();
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0xD000000000000044, 0x800000019752B100);
  sub_1975223EC();
  __break(1u);
}

void sub_197516D90(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  sub_1975221EC();
  v4 = *(v2 + 232);
  v5 = *(v3 + *MEMORY[0x1E69E77B0] + 8);
  sub_197522B2C();
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0xD000000000000044, 0x800000019752B100);
  sub_1975223EC();
  __break(1u);
}

void sub_197516E98(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  sub_1975221EC();
  v4 = *(v2 + 232);
  v5 = *(v3 + *MEMORY[0x1E69E77B0] + 8);
  sub_197522B2C();
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0xD000000000000044, 0x800000019752B100);
  sub_1975223EC();
  __break(1u);
}

void sub_197516FA0(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  sub_1975221EC();
  v4 = *(v2 + 232);
  v5 = *(v3 + *MEMORY[0x1E69E77B0] + 8);
  sub_197522B2C();
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0xD000000000000044, 0x800000019752B100);
  sub_1975223EC();
  __break(1u);
}

void sub_1975170A8(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  sub_1975221EC();
  v4 = *(v2 + 232);
  v5 = *(v3 + *MEMORY[0x1E69E77B0] + 8);
  sub_197522B2C();
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0xD000000000000044, 0x800000019752B100);
  sub_1975223EC();
  __break(1u);
}

void sub_1975171B8()
{
  sub_1975221EC();
  sub_197522B8C();

  MEMORY[0x19A8DFF80](0xD000000000000027, 0x800000019752B090);
  sub_1975223EC();
  __break(1u);
}

uint64_t sub_197517264(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a2;
  v5 = *(a2 + 8);
  *(v2 + 16) = 0;
  v6 = (v2 + 16);
  *(v3 + 24) = -1;
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v8 = *(v3 + 24);
  *(v3 + 24) = v5;
  sub_1974A1014(v7, v8);
  v9 = type metadata accessor for _ModelMetadata();
  swift_allocObject();
  v10 = sub_1973FD110();
  *(v10 + 24) |= 0x100000u;
  *(v3 + 56) = v9;
  *(v3 + 32) = v10;
  return v3;
}

id sub_197517308@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v2;
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (v5 == 255)
  {
    sub_1975221EC();
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0xD000000000000031, 0x800000019752B050);
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
    v6 = v2[2];
    *a1 = v6;
    *(a1 + 8) = v5;
    return sub_1974028EC(v6, v5);
  }

  return result;
}

void sub_19751741C()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_1975174F0()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_1975175C4()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_197517698()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

id sub_19751777C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a1 = v4;
  v5 = *(v3 + 24);
  *(a1 + 8) = v5;
  return sub_1974ADEAC(v4, v5);
}

void sub_1975177D0(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = v3;
  v6 = *(v2 + 24);
  *(v2 + 24) = v4;
  sub_1974A1014(v5, v6);
}

uint64_t (*sub_197517830())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess_4;
}

void sub_197517A60(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v1 + 32);
  *(v1 + 32) = v2;
  v5 = *(v1 + 40);
  *(v1 + 40) = v3;
  sub_1974A1014(v4, v5);
}

void (*sub_197517A7C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(v1 + 32);
  *a1 = v3;
  v4 = *(v1 + 40);
  *(a1 + 8) = v4;
  sub_1974ADEAC(v3, v4);
  return sub_197517AD0;
}

void sub_197517AD0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    sub_1974ADEAC(*a1, v3);
    v5 = *(v4 + 32);
    *(v4 + 32) = v2;
    v6 = *(v4 + 40);
    *(v4 + 40) = v3;
    sub_1974A1014(v5, v6);
    v7 = v2;
    v8 = v3;
  }

  else
  {
    v7 = *(v4 + 32);
    *(v4 + 32) = v2;
    v8 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  sub_1974A1014(v7, v8);
}

uint64_t sub_197517B50@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  a1[3] = type metadata accessor for _ModelMetadata();
  *a1 = v3;
}

uint64_t *sub_197517B98(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *a2;
  v7 = *(a2 + 8);
  type metadata accessor for _ModelMetadata();
  swift_allocObject();
  v2[3] = sub_1973FD110();
  v2[4] = 0;
  *(v2 + 20) = 255;
  v8 = *(v5 + 240);
  type metadata accessor for KnownKeysDictionary();
  v9 = swift_allocObject();
  v10 = sub_1973FCD6C(a1, v8);
  v9[2] = v10;
  v9[3] = v11;
  memset(v15, 0, sizeof(v15));
  v9[4] = sub_1973FE64C(v15, *(v10 + 16));
  v3[2] = v9;
  v12 = v3[4];
  v3[4] = v6;
  v13 = *(v3 + 40);
  *(v3 + 40) = v7;
  sub_1974A1014(v12, v13);
  return v3;
}

void sub_197517CA0()
{
  type metadata accessor for _ModelMetadata();
  swift_allocObject();
  *(v0 + 24) = sub_1973FD110();
  *(v0 + 32) = 0;
  *(v0 + 40) = 255;
  sub_1975223EC();
  __break(1u);
}

uint64_t sub_197517D2C(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 16);

  v5 = sub_1973F8364(a1);
  v7 = *(v4 + 16);
  if (!*(v7 + 16))
  {

    goto LABEL_7;
  }

  v8 = sub_1973F4028(v5, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_7:
    memset(v15, 0, sizeof(v15));
    goto LABEL_8;
  }

  v11 = *(*(v7 + 56) + 8 * v8);
  result = swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v4 + 32);
    if (v11 < *(v13 + 16))
    {
      sub_197413B20(v13 + 32 * v11 + 32, v15);
LABEL_8:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
      v14 = *(v3 + *MEMORY[0x1E69E77B0] + 8);
      return swift_dynamicCast();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197517E74(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 16);

  v5 = sub_1973F8364(a1);
  v7 = *(v4 + 16);
  if (*(v7 + 16))
  {
    v8 = sub_1973F4028(v5, v6);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v8);
      result = swift_beginAccess();
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v13 = *(v4 + 32);
        if (v11 < *(v13 + 16))
        {
          sub_197413B20(v13 + 32 * v11 + 32, &v21);
          goto LABEL_8;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {
  }

  v21 = 0u;
  v22 = 0u;
LABEL_8:

  sub_197413B20(&v21, &v19);
  if (*(&v20 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
    if (swift_dynamicCast())
    {
      sub_1973FE5EC(&v21, &qword_1EAF2AF20, &unk_19752F320);
      sub_1974028C8(v16, v17);
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      v14 = *(*(v3 + *MEMORY[0x1E69E77B0] + 8) + 16);
      goto LABEL_14;
    }
  }

  else
  {
    sub_1973FE5EC(&v19, &qword_1EAF2AF20, &unk_19752F320);
  }

  v19 = v21;
  v20 = v22;
  if (!*(&v22 + 1))
  {
    sub_1973FE5EC(&v19, &qword_1EAF2AF20, &unk_19752F320);
    return 0;
  }

  v15 = *(*(v3 + *MEMORY[0x1E69E77B0] + 8) + 16);
LABEL_14:
  if (swift_dynamicCast())
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1975180B0(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 16);

  v5 = sub_1973F8364(a1);
  v7 = *(v4 + 16);
  if (*(v7 + 16))
  {
    v8 = sub_1973F4028(v5, v6);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v8);
      result = swift_beginAccess();
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v13 = *(v4 + 32);
        if (v11 < *(v13 + 16))
        {
          sub_197413B20(v13 + 32 * v11 + 32, v21);
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }
  }

  else
  {
  }

  memset(v21, 0, sizeof(v21));
LABEL_8:

  sub_197413B20(v21, &v19);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
    if (swift_dynamicCast())
    {
      sub_1973FE5EC(v21, &qword_1EAF2AF20, &unk_19752F320);
      sub_1974028C8(v17, SBYTE8(v17));
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      v14 = *(v3 + *MEMORY[0x1E69E77B0] + 8);
      swift_dynamicCast();
      return v17;
    }
  }

  else
  {
    sub_1973FE5EC(&v19, &qword_1EAF2AF20, &unk_19752F320);
  }

  result = sub_197413B20(v21, &v17);
  if (!*(&v18 + 1))
  {
    goto LABEL_17;
  }

  sub_1973FE5EC(v21, &qword_1EAF2AF20, &unk_19752F320);
  sub_1974028B8(&v17, &v19);
  v15 = *(v3 + *MEMORY[0x1E69E77B0] + 8);
  swift_dynamicCast();
  return v16;
}

uint64_t sub_1975182F4(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 16);

  v5 = sub_1973F8364(a1);
  v7 = *(v4 + 16);
  if (!*(v7 + 16))
  {

    goto LABEL_7;
  }

  v8 = sub_1973F4028(v5, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_7:
    memset(v15, 0, sizeof(v15));
    goto LABEL_8;
  }

  v11 = *(*(v7 + 56) + 8 * v8);
  result = swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v4 + 32);
    if (v11 < *(v13 + 16))
    {
      sub_197413B20(v13 + 32 * v11 + 32, v15);
LABEL_8:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
      v14 = *(v3 + *MEMORY[0x1E69E77B0] + 8);
      return swift_dynamicCast();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19751843C(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 16);

  v5 = sub_1973F8364(a1);
  v7 = *(v4 + 16);
  if (!*(v7 + 16))
  {

    goto LABEL_7;
  }

  v8 = sub_1973F4028(v5, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_7:
    v27 = 0u;
    v28 = 0u;
LABEL_8:

    sub_197413B20(&v27, &v17);
    if (*(&v18 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
      if (swift_dynamicCast())
      {
        if (v22)
        {
          sub_1973FE5EC(&v27, &qword_1EAF2AF20, &unk_19752F320);
          v17 = v22;
          v18 = v23;
          v19 = v24;
          v20 = v25;
          v21 = v26;

          sub_1974416CC(v20);
          sub_19743099C((&v17 + 8), &v22);
          v14 = &qword_1EAF2B680;
          v15 = &unk_197534B40;
LABEL_15:
          __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
          v16 = *(v3 + *MEMORY[0x1E69E77B0] + 8);
          return swift_dynamicCast();
        }
      }

      else
      {
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        v22 = 0u;
        v23 = 0u;
      }
    }

    else
    {
      sub_1973FE5EC(&v17, &qword_1EAF2AF20, &unk_19752F320);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
    }

    sub_1973FE5EC(&v22, &qword_1EAF2B5F8, &qword_19752EA50);
    v22 = v27;
    v23 = v28;
    v14 = &qword_1EAF2AF20;
    v15 = &unk_19752F320;
    goto LABEL_15;
  }

  v11 = *(*(v7 + 56) + 8 * v8);
  result = swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v4 + 32);
    if (v11 < *(v13 + 16))
    {
      sub_197413B20(v13 + 32 * v11 + 32, &v27);
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1975186A8(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 16);

  v5 = sub_1973F8364(a1);
  v7 = *(v4 + 16);
  if (!*(v7 + 16))
  {

    goto LABEL_7;
  }

  v8 = sub_1973F4028(v5, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_7:
    v27 = 0u;
    v28 = 0u;
LABEL_8:

    sub_197413B20(&v27, &v17);
    if (*(&v18 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
      if (swift_dynamicCast())
      {
        if (v22)
        {
          sub_1973FE5EC(&v27, &qword_1EAF2AF20, &unk_19752F320);
          v17 = v22;
          v18 = v23;
          v19 = v24;
          v20 = v25;
          v21 = v26;

          sub_1974416CC(v20);
          sub_19743099C((&v17 + 8), &v22);
          v14 = &qword_1EAF2B680;
          v15 = &unk_197534B40;
LABEL_15:
          __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
          v16 = *(v3 + *MEMORY[0x1E69E77B0] + 8);
          return swift_dynamicCast();
        }
      }

      else
      {
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        v22 = 0u;
        v23 = 0u;
      }
    }

    else
    {
      sub_1973FE5EC(&v17, &qword_1EAF2AF20, &unk_19752F320);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
    }

    sub_1973FE5EC(&v22, &qword_1EAF2B5F8, &qword_19752EA50);
    v22 = v27;
    v23 = v28;
    v14 = &qword_1EAF2AF20;
    v15 = &unk_19752F320;
    goto LABEL_15;
  }

  v11 = *(*(v7 + 56) + 8 * v8);
  result = swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v4 + 32);
    if (v11 < *(v13 + 16))
    {
      sub_197413B20(v13 + 32 * v11 + 32, &v27);
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197518914(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *(v2 + 16);

  v7 = sub_1973F8364(a1);
  v9 = v8;
  v10 = *(v5 + *MEMORY[0x1E69E77B0] + 8);
  v13[3] = v10;
  boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v13);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1Tm_1, a2, v10);
  sub_197511DB4(v13, v7, v9);
}

uint64_t sub_1975189FC(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *(v2 + 16);

  v7 = sub_1973F8364(a1);
  v9 = v8;
  if (a2)
  {
    v10 = *(*(v5 + *MEMORY[0x1E69E77B0] + 8) + 16);
    v11 = a2;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v13[1] = 0;
    v13[2] = 0;
  }

  v13[0] = v11;
  v13[3] = v10;
  swift_unknownObjectRetain();
  sub_197511DB4(v13, v7, v9);
}

uint64_t sub_197518AE0(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *(v2 + 16);

  v7 = sub_1973F8364(a1);
  v9 = v8;
  v11[3] = *(v5 + *MEMORY[0x1E69E77B0] + 8);
  v11[0] = a2;
  swift_unknownObjectRetain();
  sub_197511DB4(v11, v7, v9);
}

uint64_t sub_197518BA8(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *(v2 + 16);

  v7 = sub_1973F8364(a1);
  v9 = v8;
  v10 = *(v5 + *MEMORY[0x1E69E77B0] + 8);
  v13[3] = v10;
  boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v13);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1Tm_1, a2, v10);
  sub_197511DB4(v13, v7, v9);
}

uint64_t sub_197518C90(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *(v2 + 16);

  v7 = sub_1973F8364(a1);
  v9 = v8;
  v10 = *(v5 + *MEMORY[0x1E69E77B0] + 8);
  v13[3] = v10;
  boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v13);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1Tm_1, a2, v10);
  sub_197511DB4(v13, v7, v9);
}

uint64_t sub_197518D78(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *(v2 + 16);

  v7 = sub_1973F8364(a1);
  v9 = v8;
  v10 = *(v5 + *MEMORY[0x1E69E77B0] + 8);
  v13[3] = v10;
  boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v13);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1Tm_1, a2, v10);
  sub_197511DB4(v13, v7, v9);
}

uint64_t sub_197518E60(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v2;
  type metadata accessor for _ModelMetadata();
  swift_allocObject();
  *(v2 + 24) = sub_1973FD110();
  *(v2 + 32) = 0;
  *(v2 + 40) = 255;
  v7 = *(v6 + 240);
  type metadata accessor for KnownKeysDictionary();
  v8 = swift_allocObject();
  v9 = sub_1973FCD6C(a1, v7);
  v8[2] = v9;
  v8[3] = v10;
  v90 = 0u;
  v91 = 0u;
  v8[4] = sub_1973FE64C(&v90, *(v9 + 16));
  *(v3 + 16) = v8;
  v12 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm_5(a2, v12);
  (*(*(v11 + 8) + 24))(&v90, v12);
  v13 = BYTE8(v90);
  v14 = *(v3 + 32);
  *(v3 + 32) = v90;
  v15 = *(v3 + 40);
  v87 = v3;
  *(v3 + 40) = v13;
  sub_1974A1014(v14, v15);
  type metadata accessor for Schema.Entity();
  v16 = sub_1973FDF38(a1, v7);
  swift_beginAccess();
  v85 = v16;
  v17 = *(v16 + 80);
  if ((v17 & 0xC000000000000001) != 0)
  {
    if (v17 < 0)
    {
      v18 = *(v16 + 80);
    }

    v19 = *(v16 + 80);

    sub_1975220AC();
    type metadata accessor for Schema.Attribute();
    sub_19751E7F8(&qword_1ED7CA320, type metadata accessor for Schema.Attribute);
    sub_197521C1C();
    v17 = v96;
    v20 = v97;
    v21 = v98;
    v22 = v99;
    v23 = v100;
  }

  else
  {
    v24 = -1 << *(v17 + 32);
    v20 = v17 + 56;
    v21 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v23 = v26 & *(v17 + 56);

    v22 = 0;
  }

  v27 = (v21 + 64) >> 6;
  v86 = a2;
  while (v17 < 0)
  {
    v32 = sub_19752212C();
    if (!v32)
    {
      goto LABEL_33;
    }

    *&v101 = v32;
    type metadata accessor for Schema.Attribute();
    swift_dynamicCast();
    v31 = v90;
    v30 = v22;
    v3 = v23;
    if (!v90)
    {
      goto LABEL_33;
    }

LABEL_19:
    v33 = *__swift_project_boxed_opaque_existential_1Tm_5(a2, a2[3]);
    swift_beginAccess();
    if (!*(v33 + 16))
    {
      goto LABEL_28;
    }

    v88 = v3;
    v35 = *(v31 + 16);
    v34 = *(v31 + 24);

    v36 = sub_1973F4028(v35, v34);
    v38 = v37;
    v3 = v88;

    if ((v38 & 1) == 0)
    {
LABEL_28:

      v94 = 0u;
      v95 = 0u;
      goto LABEL_29;
    }

    sub_1973FDED4(*(v33 + 56) + 48 * v36, &v90);
    v39 = *(&v91 + 1);
    v40 = __swift_project_boxed_opaque_existential_1Tm_5(&v90, *(&v91 + 1));
    *(&v95 + 1) = v39;
    boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(&v94);
    (*(*(v39 - 8) + 16))(boxed_opaque_existential_1Tm_1, v40, v39);
    __swift_destroy_boxed_opaque_existential_1Tm_7(&v90);
    if (*(&v95 + 1))
    {
      sub_1974028B8(&v94, &v101);
      v42 = *(v87 + 16);
      v22 = *(v31 + 16);
      v3 = *(v31 + 24);
      sub_197404860(&v101, &v90);
      v43 = *(v42 + 16);
      v44 = *(v43 + 16);

      if (!v44)
      {
        goto LABEL_71;
      }

      v45 = sub_1973F4028(v22, v3);
      if ((v46 & 1) == 0)
      {
        goto LABEL_71;
      }

      v47 = v45;

      v3 = *(*(v43 + 56) + 8 * v47);
      swift_beginAccess();
      v48 = *(v42 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v42 + 32) = v48;
      if (isUniquelyReferenced_nonNull_native)
      {
        a2 = v86;
        if (v3 < 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v48 = sub_19751C104(v48);
        *(v42 + 32) = v48;
        a2 = v86;
        if (v3 < 0)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      if (v3 >= v48[2])
      {
        goto LABEL_69;
      }

      sub_1973F7958(&v90, &v48[4 * v3 + 4]);
      *(v42 + 32) = v48;
      swift_endAccess();

      sub_1973FE5EC(&v90, &qword_1EAF2AF20, &unk_19752F320);
      __swift_destroy_boxed_opaque_existential_1Tm_7(&v101);

      v22 = v30;
      v23 = v88;
    }

    else
    {

LABEL_29:
      sub_1973FE5EC(&v94, &qword_1EAF2AF20, &unk_19752F320);
      v22 = v30;
      v23 = v3;
    }
  }

  v28 = v22;
  v29 = v23;
  v30 = v22;
  if (v23)
  {
LABEL_15:
    v3 = (v29 - 1) & v29;
    v31 = *(*(v17 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));

    if (!v31)
    {
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_68;
    }

    if (v30 >= v27)
    {
      break;
    }

    v29 = *(v20 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_15;
    }
  }

LABEL_33:
  sub_1973FF47C();
  swift_beginAccess();
  v50 = *(v85 + 88);
  if ((v50 & 0xC000000000000001) != 0)
  {
    if (v50 < 0)
    {
      v51 = *(v85 + 88);
    }

    v52 = *(v85 + 88);

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_19751E7F8(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship);
    sub_197521C1C();
    v53 = *(&v101 + 1);
    v50 = v101;
    v54 = v102;
    v55 = v103;
    v56 = v104;
  }

  else
  {
    v57 = -1 << *(v50 + 32);
    v53 = v50 + 56;
    v54 = ~v57;
    v58 = -v57;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v56 = v59 & *(v50 + 56);

    v55 = 0;
  }

  v60 = (v54 + 64) >> 6;
  while (2)
  {
    if (v50 < 0)
    {
      v65 = sub_19752212C();
      if (!v65)
      {
        goto LABEL_66;
      }

      *&v94 = v65;
      type metadata accessor for Schema.Relationship();
      swift_dynamicCast();
      v64 = v90;
      v3 = v55;
      v63 = v56;
      if (!v90)
      {
        goto LABEL_66;
      }

LABEL_54:
      v89 = v63;
      v66 = *__swift_project_boxed_opaque_existential_1Tm_5(a2, a2[3]);
      swift_beginAccess();
      if (*(v66 + 16) && (v67 = *(v64 + 16), v68 = *(v64 + 24), , v69 = sub_1973F4028(v67, v68), v22 = v70, , (v22 & 1) != 0))
      {
        sub_1973FDED4(*(v66 + 56) + 48 * v69, &v90);
        v71 = *(&v91 + 1);
        v72 = __swift_project_boxed_opaque_existential_1Tm_5(&v90, *(&v91 + 1));
        *(&v93 + 1) = v71;
        v73 = __swift_allocate_boxed_opaque_existential_1Tm_1(&v92);
        (*(*(v71 - 8) + 16))(v73, v72, v71);
        __swift_destroy_boxed_opaque_existential_1Tm_7(&v90);
        if (*(&v93 + 1))
        {
          sub_1974028B8(&v92, &v94);
          v74 = *(v87 + 16);
          v22 = *(v64 + 16);
          v75 = *(v64 + 24);
          sub_197404860(&v94, &v90);
          v76 = *(v74 + 16);
          v77 = *(v76 + 16);

          if (!v77 || (v78 = sub_1973F4028(v22, v75), (v79 & 1) == 0))
          {
            *&v92 = 0;
            *(&v92 + 1) = 0xE000000000000000;
            sub_1975221EC();

            *&v92 = 0xD000000000000029;
            *(&v92 + 1) = 0x8000000197527BD0;
            MEMORY[0x19A8DFF80](v22, v75);
            goto LABEL_73;
          }

          v80 = v78;

          v81 = *(*(v76 + 56) + 8 * v80);
          swift_beginAccess();
          v82 = *(v74 + 32);
          v83 = swift_isUniquelyReferenced_nonNull_native();
          *(v74 + 32) = v82;
          if (v83)
          {
            a2 = v86;
            if ((v81 & 0x8000000000000000) != 0)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v82 = sub_19751C104(v82);
            *(v74 + 32) = v82;
            a2 = v86;
            if ((v81 & 0x8000000000000000) != 0)
            {
LABEL_65:
              __break(1u);
LABEL_66:

              sub_1973FF47C();
              __swift_destroy_boxed_opaque_existential_1Tm_7(a2);
              return v87;
            }
          }

          if (v81 >= v82[2])
          {
            goto LABEL_70;
          }

          sub_1973F7958(&v90, &v82[4 * v81 + 4]);
          *(v74 + 32) = v82;
          swift_endAccess();

          sub_1973FE5EC(&v90, &qword_1EAF2AF20, &unk_19752F320);
          __swift_destroy_boxed_opaque_existential_1Tm_7(&v94);

          goto LABEL_44;
        }
      }

      else
      {

        v92 = 0u;
        v93 = 0u;
      }

      sub_1973FE5EC(&v92, &qword_1EAF2AF20, &unk_19752F320);
LABEL_44:
      v55 = v3;
      v56 = v89;
      continue;
    }

    break;
  }

  v61 = v55;
  v62 = v56;
  v3 = v55;
  if (v56)
  {
LABEL_50:
    v63 = (v62 - 1) & v62;
    v64 = *(*(v50 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v62)))));

    if (!v64)
    {
      goto LABEL_66;
    }

    goto LABEL_54;
  }

  while (1)
  {
    v3 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v3 >= v60)
    {
      goto LABEL_66;
    }

    v62 = *(v53 + 8 * v3);
    ++v61;
    if (v62)
    {
      goto LABEL_50;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  *&v94 = 0;
  *(&v94 + 1) = 0xE000000000000000;
  sub_1975221EC();

  *&v94 = 0xD000000000000029;
  *(&v94 + 1) = 0x8000000197527BD0;
  MEMORY[0x19A8DFF80](v22, v3);
LABEL_73:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197519840(void *a1)
{
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 240);
  type metadata accessor for Schema.Entity();
  v5 = sub_1973FDF38(v3, v4);
  swift_beginAccess();
  v94 = v5;
  v6 = *(v5 + 80);
  if ((v6 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *(v5 + 80);
    }

    sub_1975220AC();
    type metadata accessor for Schema.Attribute();
    sub_19751E7F8(&qword_1ED7CA320, type metadata accessor for Schema.Attribute);
    sub_197521C1C();
    v6 = v105;
    v8 = v106;
    v9 = v107;
    v10 = v108;
    v11 = v109;
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v8 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);

    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  while (1)
  {
    if (v6 < 0)
    {
      v21 = sub_19752212C();
      if (!v21)
      {
        goto LABEL_40;
      }

      *&v110 = v21;
      type metadata accessor for Schema.Attribute();
      swift_dynamicCast();
      v20 = v99;
      v18 = v10;
      v19 = v11;
      if (!v99)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v16 = v10;
      v17 = v11;
      v18 = v10;
      if (!v11)
      {
        while (1)
        {
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v18 >= v15)
          {
            goto LABEL_40;
          }

          v17 = *(v8 + 8 * v18);
          ++v16;
          if (v17)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        *&v110 = 0;
        *(&v110 + 1) = 0xE000000000000000;
        sub_1975221EC();

        *&v110 = 0xD000000000000029;
        *(&v110 + 1) = 0x8000000197527BD0;
        MEMORY[0x19A8DFF80](v10, i);
        while (1)
        {
LABEL_91:
          sub_1975223EC();
          __break(1u);
LABEL_92:
          *&v103 = 0;
          *(&v103 + 1) = 0xE000000000000000;
          sub_1975221EC();

          *&v103 = 0xD000000000000029;
          *(&v103 + 1) = 0x8000000197527BD0;
          v92 = v10;
          v93 = i;
LABEL_90:
          MEMORY[0x19A8DFF80](v92, v93);
        }
      }

LABEL_16:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v6 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

      if (!v20)
      {
        goto LABEL_40;
      }
    }

    v95 = v19;
    v22 = *__swift_project_boxed_opaque_existential_1Tm_5(a1, a1[3]);
    swift_beginAccess();
    if (*(v22 + 16))
    {
      v23 = *(v20 + 16);
      v24 = *(v20 + 24);

      v25 = sub_1973F4028(v23, v24);
      v27 = v26;

      if (v27)
      {
        break;
      }
    }

    v103 = 0u;
    v104 = 0u;
LABEL_30:
    sub_1973FE5EC(&v103, &qword_1EAF2AF20, &unk_19752F320);
    v39 = *(v98 + 16);
    v10 = *(v20 + 16);
    i = *(v20 + 24);
    v99 = 0u;
    v100 = 0u;
    v40 = *(v39 + 16);
    v41 = *(v40 + 16);

    if (!v41)
    {
      goto LABEL_88;
    }

    v42 = sub_1973F4028(v10, i);
    if ((v43 & 1) == 0)
    {
      goto LABEL_88;
    }

    v44 = v42;

    i = *(*(v40 + 56) + 8 * v44);
    swift_beginAccess();
    v45 = *(v39 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v39 + 32) = v45;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((i & 0x8000000000000000) != 0)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v45 = sub_19751C104(v45);
      *(v39 + 32) = v45;
      if ((i & 0x8000000000000000) != 0)
      {
        goto LABEL_82;
      }
    }

    if (i >= v45[2])
    {
      goto LABEL_83;
    }

    sub_1973F7958(&v99, &v45[4 * i + 4]);
    *(v39 + 32) = v45;
    swift_endAccess();

    sub_1973FE5EC(&v99, &qword_1EAF2AF20, &unk_19752F320);
LABEL_10:

    v10 = v18;
    v11 = v95;
  }

  sub_1973FDED4(*(v22 + 56) + 48 * v25, &v99);
  v28 = *(&v100 + 1);
  v29 = __swift_project_boxed_opaque_existential_1Tm_5(&v99, *(&v100 + 1));
  *(&v104 + 1) = v28;
  boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(&v103);
  (*(*(v28 - 8) + 16))(boxed_opaque_existential_1Tm_1, v29, v28);
  __swift_destroy_boxed_opaque_existential_1Tm_7(&v99);
  if (!*(&v104 + 1))
  {
    goto LABEL_30;
  }

  sub_1974028B8(&v103, &v110);
  v31 = *(v98 + 16);
  v10 = *(v20 + 16);
  i = *(v20 + 24);
  sub_197404860(&v110, &v99);
  v32 = *(v31 + 16);
  v33 = *(v32 + 16);

  if (!v33)
  {
    goto LABEL_92;
  }

  v34 = sub_1973F4028(v10, i);
  if ((v35 & 1) == 0)
  {
    goto LABEL_92;
  }

  v36 = v34;

  i = *(*(v32 + 56) + 8 * v36);
  swift_beginAccess();
  v37 = *(v31 + 32);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + 32) = v37;
  if (v38)
  {
    if ((i & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_27;
  }

  v37 = sub_19751C104(v37);
  *(v31 + 32) = v37;
  if ((i & 0x8000000000000000) == 0)
  {
LABEL_27:
    if (i >= v37[2])
    {
      goto LABEL_86;
    }

    sub_1973F7958(&v99, &v37[4 * i + 4]);
    *(v31 + 32) = v37;
    swift_endAccess();

    sub_1973FE5EC(&v99, &qword_1EAF2AF20, &unk_19752F320);
    __swift_destroy_boxed_opaque_existential_1Tm_7(&v110);
    goto LABEL_10;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  sub_1973FF47C();
  *(v98 + 41) = 1;
  *(*(v98 + 24) + 80) = 0;
  swift_beginAccess();
  v47 = *(v94 + 88);
  if ((v47 & 0xC000000000000001) != 0)
  {
    if (v47 < 0)
    {
      v48 = *(v94 + 88);
    }

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_19751E7F8(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship);
    sub_197521C1C();
    v49 = *(&v110 + 1);
    v47 = v110;
    v50 = v111;
    v51 = v112;
    v52 = v113;
  }

  else
  {
    v53 = -1 << *(v47 + 32);
    v49 = v47 + 56;
    v50 = ~v53;
    v54 = -v53;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    else
    {
      v55 = -1;
    }

    v52 = v55 & *(v47 + 56);

    v51 = 0;
  }

  v56 = (v50 + 64) >> 6;
  while (2)
  {
    if (v47 < 0)
    {
      v61 = sub_19752212C();
      if (!v61)
      {
        goto LABEL_79;
      }

      *&v103 = v61;
      type metadata accessor for Schema.Relationship();
      swift_dynamicCast();
      v60 = v99;
      i = v51;
      v59 = v52;
      if (!v99)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v57 = v51;
      v58 = v52;
      for (i = v51; !v58; ++v57)
      {
        i = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_81;
        }

        if (i >= v56)
        {
          goto LABEL_79;
        }

        v58 = *(v49 + 8 * i);
      }

      v59 = (v58 - 1) & v58;
      v60 = *(*(v47 + 48) + ((i << 9) | (8 * __clz(__rbit64(v58)))));

      if (!v60)
      {
        goto LABEL_79;
      }
    }

    v96 = v59;
    v62 = *__swift_project_boxed_opaque_existential_1Tm_5(a1, a1[3]);
    swift_beginAccess();
    if (!*(v62 + 16) || (v63 = *(v60 + 16), v64 = *(v60 + 24), , v65 = sub_1973F4028(v63, v64), v67 = v66, , (v67 & 1) == 0))
    {
      v101 = 0u;
      v102 = 0u;
LABEL_69:
      sub_1973FE5EC(&v101, &qword_1EAF2AF20, &unk_19752F320);
      v81 = *(v98 + 16);
      v10 = *(v60 + 16);
      v82 = *(v60 + 24);
      v99 = 0u;
      v100 = 0u;
      v83 = *(v81 + 16);
      v84 = *(v83 + 16);

      if (!v84 || (v85 = sub_1973F4028(v10, v82), (v86 & 1) == 0))
      {
        *&v103 = 0;
        *(&v103 + 1) = 0xE000000000000000;
        sub_1975221EC();

        *&v103 = 0xD000000000000029;
        *(&v103 + 1) = 0x8000000197527BD0;
        v92 = v10;
        v93 = v82;
        goto LABEL_90;
      }

      v87 = v85;

      v88 = *(*(v83 + 56) + 8 * v87);
      swift_beginAccess();
      v89 = *(v81 + 32);
      v90 = swift_isUniquelyReferenced_nonNull_native();
      *(v81 + 32) = v89;
      if (v90)
      {
        if ((v88 & 0x8000000000000000) != 0)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v89 = sub_19751C104(v89);
        *(v81 + 32) = v89;
        if ((v88 & 0x8000000000000000) != 0)
        {
          goto LABEL_84;
        }
      }

      if (v88 >= v89[2])
      {
        goto LABEL_85;
      }

      sub_1973F7958(&v99, &v89[4 * v88 + 4]);
      *(v81 + 32) = v89;
      swift_endAccess();

      sub_1973FE5EC(&v99, &qword_1EAF2AF20, &unk_19752F320);
      goto LABEL_49;
    }

    sub_1973FDED4(*(v62 + 56) + 48 * v65, &v99);
    v68 = *(&v100 + 1);
    v69 = __swift_project_boxed_opaque_existential_1Tm_5(&v99, *(&v100 + 1));
    *(&v102 + 1) = v68;
    v70 = __swift_allocate_boxed_opaque_existential_1Tm_1(&v101);
    (*(*(v68 - 8) + 16))(v70, v69, v68);
    __swift_destroy_boxed_opaque_existential_1Tm_7(&v99);
    if (!*(&v102 + 1))
    {
      goto LABEL_69;
    }

    sub_1974028B8(&v101, &v103);
    v71 = *(v98 + 16);
    v10 = *(v60 + 16);
    v72 = *(v60 + 24);
    sub_197404860(&v103, &v99);
    v73 = *(v71 + 16);
    v74 = *(v73 + 16);

    if (!v74 || (v75 = sub_1973F4028(v10, v72), (v76 & 1) == 0))
    {
      *&v101 = 0;
      *(&v101 + 1) = 0xE000000000000000;
      sub_1975221EC();

      *&v101 = 0xD000000000000029;
      *(&v101 + 1) = 0x8000000197527BD0;
      MEMORY[0x19A8DFF80](v10, v72);
      goto LABEL_91;
    }

    v77 = v75;

    v78 = *(*(v73 + 56) + 8 * v77);
    swift_beginAccess();
    v79 = *(v71 + 32);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    *(v71 + 32) = v79;
    if (v80)
    {
      if ((v78 & 0x8000000000000000) != 0)
      {
        goto LABEL_78;
      }

LABEL_66:
      if (v78 >= v79[2])
      {
        goto LABEL_87;
      }

      sub_1973F7958(&v99, &v79[4 * v78 + 4]);
      *(v71 + 32) = v79;
      swift_endAccess();

      sub_1973FE5EC(&v99, &qword_1EAF2AF20, &unk_19752F320);
      __swift_destroy_boxed_opaque_existential_1Tm_7(&v103);
LABEL_49:

      v51 = i;
      v52 = v96;
      continue;
    }

    break;
  }

  v79 = sub_19751C104(v79);
  *(v71 + 32) = v79;
  if ((v78 & 0x8000000000000000) == 0)
  {
    goto LABEL_66;
  }

LABEL_78:
  __break(1u);
LABEL_79:
  sub_1973FF47C();
}

void sub_19751A3A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  sub_1974A1014(v3, v4);
}

uint64_t sub_19751A3DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1974A1014(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t sub_19751A410()
{
  sub_19751A3DC();

  return swift_deallocClassInstance();
}

void BackingData._generateCurrentClassBackingData<A>()(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v60 = a3;
  v62 = a2;
  v6 = a1;
  v61 = a4;
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v65 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v58 - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v58 - v17;
  (*(v19 + 32))(v68, v16, v19);
  v63 = BYTE8(v68[0]);
  if (BYTE8(v68[0]) == 255)
  {
    goto LABEL_34;
  }

  v20 = *&v68[0];
  v21 = *(v7 + 16);
  (v21)(v18, v4, v6);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for _StitchedBackingData();
  if (!swift_dynamicCast())
  {
    goto LABEL_21;
  }

  v65 = *&v68[0];
  v14 = v62;
  v22 = v60;
  v23 = type metadata accessor for _KKMDBackingData();
  *&v68[0] = v20;
  BYTE8(v68[0]) = v63;
  v59 = v20;
  sub_1974028EC(v20, v63);
  v58 = v23;
  v64 = swift_allocObject();
  sub_1973FBC40(v14, v68);
  v24 = sub_1973F68A4(v14, v22);
  v21 = v24;
  v20 = *(v24 + 16);
  if (!v20)
  {
LABEL_24:

    v48 = v64;
    *(v64 + 48) = v65[41];
    v49 = v61;
    v61[3] = v58;
    v49[4] = swift_getWitnessTable();

    sub_1974A1014(v59, v63);
    *v49 = v48;
    return;
  }

  v5 = 0;
  v25 = v24 + 32;
  while (1)
  {
    if (v5 >= *(v21 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v66 = 0;
      v67 = 0xE000000000000000;
      sub_1975221EC();

      v66 = 0xD000000000000029;
      v67 = 0x8000000197527BD0;
      MEMORY[0x19A8DFF80](v14, v6);
      goto LABEL_34;
    }

    sub_1973F7E64(v25, v68);
    v26 = *(v64 + 16);
    v6 = *(&v68[0] + 1);
    v14 = *&v68[0];

    sub_1973F82A8(v68);
    v27 = *(v65 + 2);
    v28 = *(v27 + 16);
    v29 = *(v28 + 16);

    if (v29 && (v30 = sub_1973F4028(v14, v6), (v31 & 1) != 0))
    {
      v32 = *(*(v28 + 56) + 8 * v30);
      swift_beginAccess();
      if ((v32 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      v33 = *(v27 + 32);
      if (v32 >= *(v33 + 16))
      {
        goto LABEL_32;
      }

      sub_197413B20(v33 + 32 * v32 + 32, v69);
    }

    else
    {
      memset(v69, 0, 32);
    }

    v34 = *(v26 + 16);
    if (!*(v34 + 16))
    {
      goto LABEL_33;
    }

    v35 = sub_1973F4028(v14, v6);
    if ((v36 & 1) == 0)
    {
      goto LABEL_33;
    }

    v37 = v35;

    v14 = *(*(v34 + 56) + 8 * v37);
    swift_beginAccess();
    v38 = *(v26 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + 32) = v38;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_16;
    }

    v38 = sub_19751C104(v38);
    *(v26 + 32) = v38;
    if ((v14 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_16:
    if (v14 >= v38[2])
    {
      goto LABEL_30;
    }

    ++v5;
    sub_1973F7958(v69, &v38[4 * v14 + 4]);
    *(v26 + 32) = v38;
    swift_endAccess();
    sub_1973FE5EC(v69, &qword_1EAF2AF20, &unk_19752F320);

    v25 += 96;
    if (v20 == v5)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_21:
  v40 = v20;
  (v21)(v14, v5, v6);
  v41 = type metadata accessor for _FullFutureBackingData();
  if (!swift_dynamicCast())
  {
    (v21)(v65, v5, v6);
    v66 = v62;
    swift_getExtendedExistentialTypeMetadata();
    if (swift_dynamicCast())
    {
      sub_1974A1014(v20, v63);
      sub_19743099C(v69, v68);
      sub_19743099C(v68, v61);
      return;
    }

    *&v68[0] = 0;
    *(&v68[0] + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0x7420656C62616E55, 0xEF2074736163206FLL);
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752AC50);
    v57 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v57);

    MEMORY[0x19A8DFF80](41, 0xE100000000000000);
    while (1)
    {
LABEL_34:
      sub_1975223EC();
      __break(1u);
    }
  }

  v42 = *&v68[0];
  v43 = v62;
  if (swift_getAssociatedTypeWitness() != v43)
  {
    v44 = type metadata accessor for _KKMDBackingData();
    *&v68[0] = v40;
    v45 = v63;
    BYTE8(v68[0]) = v63;
    sub_1974028EC(v40, v63);
    v46 = swift_allocObject();
    sub_1973FBC40(v43, v68);
    *(sub_197512E44() + 112) = 1;

    v47 = v61;
    v61[3] = v44;
    v47[4] = swift_getWitnessTable();

    sub_1974A1014(v40, v45);
    *v47 = v46;
    return;
  }

  *&v68[0] = v42;
  WitnessTable = swift_getWitnessTable();
  v51 = *(sub_1973FE71C(v41, WitnessTable) + 16);

  if (!v51)
  {
    goto LABEL_34;
  }

  v52 = type metadata accessor for _FullFutureBackingData();
  *&v68[0] = v40;
  v53 = v63;
  BYTE8(v68[0]) = v63;
  sub_1974ADEAC(v40, v63);
  v54 = swift_allocObject();

  sub_1974499A4(v55, v68, v51);
  v56 = v61;
  v61[3] = v52;
  v56[4] = swift_getWitnessTable();

  sub_1974A1014(v40, v53);
  *v56 = v54;
}

void BackingData._superClassBackingData<A>(of:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v103 = a5;
  v102 = a4;
  v7 = a3;
  *&v104 = a1;
  v99 = a6;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v98 = v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = v97 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v97 - v17;
  (*(v19 + 32))(v105, v20, v19);
  v101 = BYTE8(v105[0]);
  if (BYTE8(v105[0]) == 255)
  {
    goto LABEL_72;
  }

  v100 = *&v105[0];
  v21 = *(v8 + 16);
  v21(v18, v6, v7);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for _StitchedBackingData();
  if (!swift_dynamicCast())
  {
    v21(v15, v6, v7);
    v28 = type metadata accessor for _FullFutureBackingData();
    if (swift_dynamicCast())
    {
      v97[1] = *&v105[0];
      WitnessTable = swift_getWitnessTable();
      v30 = *(sub_1973FE71C(v28, WitnessTable) + 16);

      if (!v30)
      {
        goto LABEL_72;
      }

      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v32 = v102;
      v33 = v101;
      if (AssociatedTypeWitness == v102)
      {
        v88 = type metadata accessor for _FullFutureBackingData();
        v89 = v100;
        *&v105[0] = v100;
        BYTE8(v105[0]) = v33;
        sub_1974ADEAC(v100, v33);
        v90 = swift_allocObject();

        sub_1974499A4(v91, v105, v30);
        v92 = v99;
        v99[3] = v88;
        v92[4] = swift_getWitnessTable();

        sub_1974A1014(v89, v33);
        *v92 = v90;
        return;
      }

      if (sub_1975214CC())
      {
        v34 = swift_conformsToProtocol2();
        v35 = v100;
        if (v34)
        {
          sub_19751C00C(v100, v33, v30, &v110);
          v104 = *&v111[8];
          v36 = *&v111[8];
          v37 = v35;
          v38 = __swift_project_boxed_opaque_existential_1Tm_5(&v110, *&v111[8]);
          *(&v105[1] + 8) = v104;
          boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v105);
          (*(*(v36 - 8) + 16))(boxed_opaque_existential_1Tm_1, v38, v36);
          __swift_destroy_boxed_opaque_existential_1Tm_7(&v110);
          sub_19751C118(v105, &v108);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B220, &qword_19752D3B0);
          v106 = v32;
          swift_getExtendedExistentialTypeMetadata();
          if (swift_dynamicCast())
          {
            sub_1974A1014(v37, v33);

            sub_19743099C(&v107, &v110);
            sub_19743099C(&v110, v99);
            __swift_destroy_boxed_opaque_existential_1Tm_7(v105);
            return;
          }

          *&v110 = 0;
          *(&v110 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0x7420656C62616E55, 0xEF2074736163206FLL);
          sub_19752235C();
          MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752AC50);
          v96 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v96);

          goto LABEL_72;
        }

LABEL_16:
        v21(v98, v6, v7);
        v108 = v32;
        swift_getExtendedExistentialTypeMetadata();
        if (swift_dynamicCast())
        {
          sub_1974A1014(v35, v33);
          goto LABEL_59;
        }

        *&v105[0] = 0;
        *(&v105[0] + 1) = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0x7420656C62616E55, 0xEF2074736163206FLL);
        sub_1975227FC();
        MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752AC50);
        v93 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v93);

        goto LABEL_72;
      }
    }

    else
    {
      v32 = v102;
      v33 = v101;
    }

    v35 = v100;
    goto LABEL_16;
  }

  v22 = *&v105[0];
  v23 = sub_1975214CC();
  *&v104 = v22;
  if (!v23)
  {
    v40 = swift_getAssociatedTypeWitness();
    v41 = v101;
    if (v40 != v102)
    {
      goto LABEL_72;
    }

    v42 = v40;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v44 = type metadata accessor for _KKMDBackingData();
    *&v105[0] = v100;
    BYTE8(v105[0]) = v41;
    sub_1974028EC(v100, v41);
    v98 = v44;
    v7 = swift_allocObject();
    sub_1973FBC40(v42, v105);
    v45 = sub_1973F68A4(v42, AssociatedConformanceWitness);
    v46 = v45;
    v103 = *(v45 + 16);
    if (!v103)
    {
      goto LABEL_37;
    }

    v47 = 0;
    v48 = v45 + 32;
    while (v47 < *(v46 + 16))
    {
      sub_1973F7E64(v48, v105);
      v49 = v7;
      v50 = *(v7 + 16);
      v21 = *(&v105[0] + 1);
      v7 = *&v105[0];

      sub_1973F82A8(v105);
      v51 = *(v22 + 16);
      v52 = *(v51 + 16);
      v53 = *(v52 + 16);

      if (v53 && (v54 = sub_1973F4028(v7, v21), (v55 & 1) != 0))
      {
        v56 = *(*(v52 + 56) + 8 * v54);
        swift_beginAccess();
        if ((v56 & 0x8000000000000000) != 0)
        {
          goto LABEL_67;
        }

        v57 = *(v51 + 32);
        if (v56 >= *(v57 + 16))
        {
          goto LABEL_68;
        }

        sub_197413B20(v57 + 32 * v56 + 32, &v110);
      }

      else
      {
        v110 = 0u;
        *v111 = 0u;
      }

      v58 = *(v50 + 16);
      if (!*(v58 + 16))
      {
        goto LABEL_71;
      }

      v59 = sub_1973F4028(v7, v21);
      if ((v60 & 1) == 0)
      {
        goto LABEL_71;
      }

      v61 = v59;

      v22 = *(*(v58 + 56) + 8 * v61);
      swift_beginAccess();
      v62 = *(v50 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v50 + 32) = v62;
      if (isUniquelyReferenced_nonNull_native)
      {
        v7 = v49;
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v62 = sub_19751C104(v62);
        *(v50 + 32) = v62;
        v7 = v49;
        if ((v22 & 0x8000000000000000) != 0)
        {
LABEL_36:
          __break(1u);
LABEL_37:

          *(v7 + 48) = *(v22 + 41);
          v108 = v7;

          v106 = v102;
          swift_getExtendedExistentialTypeMetadata();
          if (swift_dynamicCast())
          {
            goto LABEL_58;
          }

          *&v105[0] = 0;
          *(&v105[0] + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000010, 0x800000019752AD20);
          *&v110 = v7;
          sub_1975227FC();
          MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x800000019752AD40);
          v94 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v94);

          while (1)
          {
LABEL_72:
            sub_1975223EC();
            __break(1u);
          }
        }
      }

      if (v22 >= v62[2])
      {
        goto LABEL_64;
      }

      ++v47;
      sub_1973F7958(&v110, &v62[4 * v22 + 4]);
      *(v50 + 32) = v62;
      swift_endAccess();
      sub_1973FE5EC(&v110, &qword_1EAF2AF20, &unk_19752F320);

      v48 += 96;
      v22 = v104;
      if (v103 == v47)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    v108 = 0;
    v109 = 0xE000000000000000;
    sub_1975221EC();

    v108 = 0xD000000000000029;
    v109 = 0x8000000197527BD0;
    MEMORY[0x19A8DFF80](v7, v21);
    goto LABEL_72;
  }

  v24 = v23;
  v25 = swift_conformsToProtocol2();
  v26 = v101;
  if (!v25)
  {
    goto LABEL_72;
  }

  if (v24 != v102)
  {
    v27 = v100;
    sub_19751BF3C(v100, v101, v22, v102, v99);

    sub_1974A1014(v27, v26);
    return;
  }

  v64 = swift_getAssociatedTypeWitness();
  v65 = swift_getAssociatedConformanceWitness();
  v66 = type metadata accessor for _KKMDBackingData();
  *&v105[0] = v100;
  BYTE8(v105[0]) = v26;
  sub_1974028EC(v100, v26);
  v98 = v66;
  v67 = swift_allocObject();
  sub_1973FBC40(v64, v105);
  v68 = sub_1973F68A4(v64, v65);
  v69 = v68;
  v103 = *(v68 + 16);
  if (!v103)
  {
    goto LABEL_57;
  }

  v70 = 0;
  v71 = v68 + 32;
  while (1)
  {
    v72 = v104;
    if (v70 >= *(v69 + 16))
    {
      goto LABEL_65;
    }

    sub_1973F7E64(v71, v105);
    v73 = v67;
    v67 = *(v67 + 16);
    v21 = *(&v105[0] + 1);
    v7 = *&v105[0];

    sub_1973F82A8(v105);
    v74 = *(v72 + 16);
    v75 = *(v74 + 16);
    v76 = *(v75 + 16);

    if (v76 && (v77 = sub_1973F4028(v7, v21), (v78 & 1) != 0))
    {
      v79 = *(*(v75 + 56) + 8 * v77);
      swift_beginAccess();
      if ((v79 & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }

      v80 = *(v74 + 32);
      if (v79 >= *(v80 + 16))
      {
        goto LABEL_70;
      }

      sub_197413B20(v80 + 32 * v79 + 32, &v110);
    }

    else
    {
      v110 = 0u;
      *v111 = 0u;
    }

    v81 = *(v67 + 16);
    if (!*(v81 + 16))
    {
      goto LABEL_71;
    }

    v82 = sub_1973F4028(v7, v21);
    if ((v83 & 1) == 0)
    {
      goto LABEL_71;
    }

    v84 = v82;

    v85 = *(*(v81 + 56) + 8 * v84);
    swift_beginAccess();
    v86 = *(v67 + 32);
    v87 = swift_isUniquelyReferenced_nonNull_native();
    *(v67 + 32) = v86;
    if (v87)
    {
      if ((v85 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_52;
    }

    v86 = sub_19751C104(v86);
    *(v67 + 32) = v86;
    if ((v85 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_52:
    if (v85 >= v86[2])
    {
      goto LABEL_66;
    }

    ++v70;
    sub_1973F7958(&v110, &v86[4 * v85 + 4]);
    *(v67 + 32) = v86;
    swift_endAccess();
    sub_1973FE5EC(&v110, &qword_1EAF2AF20, &unk_19752F320);

    v71 += 96;
    v67 = v73;
    if (v103 == v70)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_57:

  *(v67 + 48) = *(v104 + 41);
  v108 = v67;

  v106 = v102;
  swift_getExtendedExistentialTypeMetadata();
  if (!swift_dynamicCast())
  {
    *&v105[0] = 0;
    *(&v105[0] + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000010, 0x800000019752AD20);
    *&v110 = v67;
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752AC50);
    v95 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v95);

    goto LABEL_72;
  }

LABEL_58:
  sub_1974A1014(v100, v101);

LABEL_59:
  sub_19743099C(&v110, v105);
  sub_19743099C(v105, v99);
}

uint64_t sub_19751BF3C@<X0>(void *a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for _StitchedBackingData();
  v14 = a1;
  v15 = a2;
  sub_1974028EC(a1, a2);
  v11 = swift_allocObject();
  sub_197517B98(a4, &v14);
  v12 = *(v11 + 16);
  *(v11 + 16) = *(a3 + 16);

  a5[3] = v10;
  result = swift_getWitnessTable();
  a5[4] = result;
  *a5 = v11;
  return result;
}

uint64_t sub_19751C00C@<X0>(void *a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for _FullFutureBackingData();
  v12 = a1;
  v13 = a2;
  sub_1974028EC(a1, a2);
  v9 = swift_allocObject();

  sub_1974499A4(v10, &v12, a3);
  a4[3] = v8;
  result = swift_getWitnessTable();
  a4[4] = result;
  *a4 = v9;
  return result;
}

uint64_t sub_19751C118(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t dispatch thunk of BackingData.getValue<A>(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 64))();
}

{
  return (*(a5 + 72))();
}

{
  return (*(a5 + 80))();
}

uint64_t sub_19751C2D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1975220EC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_19752224C();
}

void sub_19751C33C(void *a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  v92 = sub_1975212CC();
  v7 = *(v92 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v92, v9);
  v91 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = *(*v3 + 40);
  sub_197522A5C();
  v87 = v3;
  v88 = a3;
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_197452CB8();
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_197521F4C();
  }

  v13 = sub_197522A9C();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  v95 = v11 + 56;
  if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_78:
    v79 = v88;
    *v88 = 0;
    *(v79 + 8) = -1;
    return;
  }

  v94 = ~v14;
  v89 = v11;
  v90 = (v7 + 8);
  while (1)
  {
    v17 = 16 * v15;
    v18 = *(v11 + 48) + 16 * v15;
    v19 = *v18;
    v20 = *(v18 + 8);
    if (!*(v18 + 8))
    {
      if (!a2)
      {
        sub_197422C6C();
        sub_1974028EC(a1, 0);
        sub_1974028EC(v19, 0);
        v16 = sub_197521F3C();
        sub_1974028C8(a1, 0);
        sub_1974028C8(v19, 0);
        if (v16)
        {
          goto LABEL_83;
        }

        goto LABEL_9;
      }

      v93 = 16 * v15;
      type metadata accessor for PersistentIdentifierImplementation();
      v26 = swift_allocObject();
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      sub_1974028EC(a1, a2);
      sub_1974028EC(v19, 0);
      v27 = [v19 persistentStore];
      if (v27 && (v28 = v27, v29 = [v27 identifier], v28, v29))
      {
        v30 = sub_1975217BC();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      *(v26 + 16) = v30;
      *(v26 + 24) = v32;
      *(v26 + 33) = [v19 isTemporaryID];
      *(v26 + 32) = 1;
      v50 = [v19 URIRepresentation];
      v51 = v91;
      sub_19752127C();

      v52 = sub_19752123C();
      v54 = v53;
      (*v90)(v51, v92);
      *(v26 + 56) = v52;
      *(v26 + 64) = v54;
      v55 = [v19 entityName];
      v56 = sub_1975217BC();
      v58 = v57;

      *(v26 + 72) = v56;
      *(v26 + 80) = v58;
      v40 = a2;
      goto LABEL_50;
    }

    if (v20 == 1)
    {
      break;
    }

    if (a2 != 2)
    {
      v93 = 16 * v15;
      type metadata accessor for PersistentIdentifierImplementation();
      v26 = swift_allocObject();
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      sub_1974028EC(a1, a2);
      sub_1974028EC(v19, 2);
      *(v26 + 56) = sub_19750A470();
      *(v26 + 64) = v41;
      *(v26 + 72) = sub_19750A588();
      *(v26 + 80) = v42;
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = 256;
      v40 = a2;
      if (!a2)
      {
        goto LABEL_45;
      }

LABEL_50:
      if (v40 == 1)
      {
        sub_1974028EC(a1, 1);
        v43 = a1;
      }

      else
      {
        type metadata accessor for PersistentIdentifierImplementation();
        v43 = swift_allocObject();
        *(v43 + 40) = 0;
        *(v43 + 48) = 0;
        *(v43 + 56) = sub_19750A470();
        *(v43 + 64) = v59;
        *(v43 + 72) = sub_19750A588();
        *(v43 + 80) = v60;
        *(v43 + 16) = 0;
        *(v43 + 24) = 0;
        *(v43 + 32) = 256;
      }

      goto LABEL_55;
    }

    sub_1974028EC(a1, 2);
    sub_1974028EC(v19, 2);
    v33 = sub_19750A470();
    v35 = v34;
    if (v33 == sub_19750A470() && v35 == v36)
    {
    }

    else
    {
      v38 = sub_19752282C();

      if ((v38 & 1) == 0)
      {
        v39 = 2;
        LOBYTE(v20) = 2;
LABEL_70:
        sub_1974028C8(a1, v39);
        sub_1974028C8(v19, v20);
        goto LABEL_9;
      }
    }

    v74 = sub_19750A588();
    v76 = v75;
    if (v74 == sub_19750A588() && v76 == v77)
    {

      a2 = 2;
      LOBYTE(v20) = 2;
      goto LABEL_82;
    }

    v78 = sub_19752282C();

    sub_1974028C8(a1, 2);
    sub_1974028C8(v19, 2);
    if (v78)
    {
      goto LABEL_83;
    }

LABEL_9:
    v15 = (v15 + 1) & v94;
    if (((*(v95 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  if (a2 == 1)
  {
    v21 = v19[7] == a1[7] && v19[8] == a1[8];
    if (v21 || (sub_19752282C() & 1) != 0)
    {
      v22 = v19[9] == a1[9] && v19[10] == a1[10];
      if (v22 || (sub_19752282C() & 1) != 0)
      {
        v23 = v19[3];
        v24 = a1[3];
        if (v23)
        {
          if (v24)
          {
            v25 = v19[2] == a1[2] && v23 == v24;
            if (v25 || (sub_19752282C() & 1) != 0)
            {
              goto LABEL_83;
            }
          }
        }

        else if (!v24)
        {
          goto LABEL_83;
        }
      }
    }

    goto LABEL_9;
  }

  v93 = 16 * v15;
  sub_1974028EC(v19, 1);
  sub_1974028EC(a1, a2);
  sub_1974028EC(v19, 1);
  v26 = v19;
  v40 = a2;
  if (a2)
  {
    goto LABEL_50;
  }

LABEL_45:
  type metadata accessor for PersistentIdentifierImplementation();
  v43 = swift_allocObject();
  *(v43 + 40) = 0;
  *(v43 + 48) = 0;
  v44 = [a1 persistentStore];
  if (v44 && (v45 = v44, v46 = [v44 identifier], v45, v46))
  {
    v47 = sub_1975217BC();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  *(v43 + 16) = v47;
  *(v43 + 24) = v49;
  *(v43 + 33) = [a1 isTemporaryID];
  *(v43 + 32) = 1;
  v61 = [a1 URIRepresentation];
  v62 = v91;
  sub_19752127C();

  v63 = sub_19752123C();
  v65 = v64;
  (*v90)(v62, v92);
  *(v43 + 56) = v63;
  *(v43 + 64) = v65;
  v66 = [a1 entityName];
  v67 = sub_1975217BC();
  v69 = v68;

  *(v43 + 72) = v67;
  *(v43 + 80) = v69;
  v11 = v89;
LABEL_55:
  if ((*(v26 + 56) != *(v43 + 56) || *(v26 + 64) != *(v43 + 64)) && (sub_19752282C() & 1) == 0 || (*(v26 + 72) != *(v43 + 72) || *(v26 + 80) != *(v43 + 80)) && (sub_19752282C() & 1) == 0)
  {
LABEL_67:

LABEL_69:

    v39 = a2;
    goto LABEL_70;
  }

  v70 = *(v26 + 24);
  v71 = *(v43 + 24);
  if (!v70)
  {

    if (!v71)
    {
      goto LABEL_81;
    }

    goto LABEL_69;
  }

  if (!v71)
  {
    goto LABEL_67;
  }

  if (*(v26 + 16) != *(v43 + 16) || v70 != v71)
  {
    v72 = *(v43 + 24);
    v73 = sub_19752282C();

    sub_1974028C8(a1, a2);
    sub_1974028C8(v19, v20);
    v17 = v93;
    if (v73)
    {
      goto LABEL_83;
    }

    goto LABEL_9;
  }

LABEL_81:

  v17 = v93;
LABEL_82:
  sub_1974028C8(a1, a2);
  sub_1974028C8(v19, v20);
LABEL_83:
  v80 = v87;
  v81 = *v87;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v80;
  v96 = *v80;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_19747FB74();
    v83 = v96;
  }

  v84 = *(v83 + 48) + v17;
  v85 = *v84;
  LOBYTE(v84) = *(v84 + 8);
  v86 = v88;
  *v88 = v85;
  *(v86 + 8) = v84;
  sub_19751CF54(v15);
  *v80 = v96;
}

uint64_t sub_19751CC3C()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = sub_19752213C();

    if (v4)
    {
      v5 = sub_19751CDD8();

      return v5;
    }

    return 0;
  }

  sub_19752202C();
  v7 = *(v1 + 40);
  v8 = sub_1975216AC();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (sub_19752173C())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_19747FE30();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_19751D2C8(v10);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_19751CDD8()
{
  v1 = *v0;

  v2 = sub_1975220EC();
  v3 = swift_unknownObjectRetain();
  v4 = sub_19747DE54(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);
  sub_19752202C();

  v6 = sub_1975216AC();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (sub_19752173C())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_19751D2C8(v8);
  result = sub_19752173C();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_19751CF54(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_19752207C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      v34 = v10;
      v11 = v7;
      do
      {
        v12 = 16 * v6;
        v13 = *(v3 + 40);
        v14 = *(v3 + 48) + 16 * v6;
        v15 = *v14;
        v16 = *(v14 + 8);
        sub_197522A5C();
        if (v16)
        {
          if (v16 == 1)
          {
            MEMORY[0x19A8E1190](1);
            v17 = *(v15 + 56);
            v18 = *(v15 + 64);
            sub_1974028EC(v15, 1);
            sub_19752180C();
            v19 = *(v15 + 72);
            v20 = *(v15 + 80);
            sub_19752180C();
            if (*(v15 + 24))
            {
              v35 = v2;
              v21 = v3;
              v22 = v11;
              v23 = v4;
              v24 = *(v15 + 16);
              sub_197522A7C();
              v4 = v23;
              v11 = v22;
              v3 = v21;
              v2 = v35;
              sub_19752180C();
            }

            else
            {
              sub_197522A7C();
            }

            v25 = *(v15 + 33);
            sub_197522A7C();
            v10 = v34;
            *(v15 + 32);
          }

          else
          {
            MEMORY[0x19A8E1190](2);
            sub_1974028EC(v15, 2);
            sub_19750A470();
            sub_19752180C();

            sub_19750A588();
          }

          sub_19752180C();
        }

        else
        {
          MEMORY[0x19A8E1190](0);
          sub_1974028EC(v15, 0);
          sub_197521F4C();
        }

        v26 = sub_197522A9C();
        sub_1974028C8(v15, v16);
        v27 = v26 & v11;
        if (v2 >= v10)
        {
          if (v27 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v27 >= v10)
        {
          goto LABEL_20;
        }

        if (v2 >= v27)
        {
LABEL_20:
          v28 = *(v3 + 48);
          v29 = (v28 + 16 * v2);
          v30 = (v28 + v12);
          if (16 * v2 != v12 || (v2 = v6, v29 >= v30 + 1))
          {
            *v29 = *v30;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v11;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v31 = *(v3 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v33;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_19751D2C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_19752207C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      sub_19752202C();
      do
      {
        v11 = *(v3 + 40);
        v21 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_1975216AC() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void sub_19751D484()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_19751D558()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - v4;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1975221EC();
  v16 = v14;
  v17 = v15;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v6 = *(v0 + 24);
  v14 = *(v0 + 16);
  LOBYTE(v15) = v6;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v7 = *(*(v0 + 40) + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v5, v7 + v8, v9);
    v11 = 0;
  }

  else
  {
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    v11 = 1;
  }

  (*(v10 + 56))(v5, v11, 1, v9);
  v12 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v12);

  sub_1975223EC();
  __break(1u);
}

void sub_19751D78C()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_19751D860()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_19751D934()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - v4;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1975221EC();
  v16 = v14;
  v17 = v15;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v6 = *(v0 + 24);
  v14 = *(v0 + 16);
  LOBYTE(v15) = v6;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v7 = *(*(v0 + 40) + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v5, v7 + v8, v9);
    v11 = 0;
  }

  else
  {
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    v11 = 1;
  }

  (*(v10 + 56))(v5, v11, 1, v9);
  v12 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v12);

  sub_1975223EC();
  __break(1u);
}

void sub_19751DB68()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_19751DC3C()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_19751DD18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - v4;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1975221EC();
  v16 = v14;
  v17 = v15;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v6 = *(v0 + 24);
  v14 = *(v0 + 16);
  LOBYTE(v15) = v6;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v7 = *(*(v0 + 40) + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v5, v7 + v8, v9);
    v11 = 0;
  }

  else
  {
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    v11 = 1;
  }

  (*(v10 + 56))(v5, v11, 1, v9);
  v12 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v12);

  sub_1975223EC();
  __break(1u);
}

void sub_19751DF50()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_19751E02C()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_19751E108()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - v4;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1975221EC();
  v16 = v14;
  v17 = v15;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v6 = *(v0 + 24);
  v14 = *(v0 + 16);
  LOBYTE(v15) = v6;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v7 = *(*(v0 + 40) + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v5, v7 + v8, v9);
    v11 = 0;
  }

  else
  {
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    v11 = 1;
  }

  (*(v10 + 56))(v5, v11, 1, v9);
  v12 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v12);

  sub_1975223EC();
  __break(1u);
}

void sub_19751E340()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_19751E41C()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_19751E4F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - v4;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1975221EC();
  v16 = v14;
  v17 = v15;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v6 = *(v0 + 24);
  v14 = *(v0 + 16);
  LOBYTE(v15) = v6;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v7 = *(*(v0 + 40) + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v5, v7 + v8, v9);
    v11 = 0;
  }

  else
  {
    v9 = sub_19752135C();
    v10 = *(v9 - 8);
    v11 = 1;
  }

  (*(v10 + 56))(v5, v11, 1, v9);
  v12 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v12);

  sub_1975223EC();
  __break(1u);
}

void sub_19751E724()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

uint64_t sub_19751E7F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19751E8C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = sub_1974BFC08(MEMORY[0x1E69E7CC0]);
  v11 = a1[2];
  if (a4 & 1 | (a3 < 1))
  {
    a3 = a1[2];
  }

  if (!a3)
  {
    goto LABEL_23;
  }

  v12 = v10;

  v13 = sub_1974C1878(0, v11, a3, a1, a3);
  v32 = a2;

  v14 = *(v13 + 16);
  if (!v14)
  {
LABEL_19:

    *a5 = v12;
    a5[1] = v32;
    a5[2] = a3;
    a5[3] = v11;
    return result;
  }

  v15 = 0;
  while (v15 < *(v13 + 16))
  {
    v18 = *(v13 + 32 + 8 * v15);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_19749ED9C(v15);
    v22 = v12[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_21;
    }

    v26 = v21;
    if (v12[3] < v25)
    {
      sub_197479384(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_19749ED9C(v15);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }

LABEL_14:
      if (v26)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v30 = v20;
    sub_19747BF8C();
    v20 = v30;
    if (v26)
    {
LABEL_6:
      v16 = v12[7];
      v17 = *(v16 + 8 * v20);
      *(v16 + 8 * v20) = v18;

      goto LABEL_7;
    }

LABEL_15:
    v12[(v20 >> 6) + 8] |= 1 << v20;
    *(v12[6] + 8 * v20) = v15;
    *(v12[7] + 8 * v20) = v18;
    v28 = v12[2];
    v24 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v24)
    {
      goto LABEL_22;
    }

    v12[2] = v29;
LABEL_7:
    if (v14 == ++v15)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

uint64_t FetchResultsCollection.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 1);
  v8 = v2[2];
  if (v8 != 1)
  {
    if (v8)
    {
      if (a1 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_27;
      }

      v30 = *(v2 + 1);
      if (!*(v5 + 16))
      {
        goto LABEL_29;
      }

      v13 = sub_19749ED9C(a1 / v8);
      if ((v14 & 1) == 0)
      {
        goto LABEL_29;
      }

      v15 = *(*(v5 + 56) + 8 * v13);

      if (!v15)
      {
        goto LABEL_29;
      }

      v16 = a1 % v8;
      if ((v16 & 0x8000000000000000) == 0)
      {
        if (v16 < *(v15 + 16))
        {
          v31 = v15 + 40 * v16;
          sub_197520068(v31 + 32, &v35);
          v17 = v6;
          v18 = *(&v36 + 1);
          v19 = v37;
          __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
          v20 = *(a2 + 16);
          v21 = v18;
          v22 = v17;
          v23 = (*(v19 + 24))(v20, v17, v20, v21, v19);
          __swift_destroy_boxed_opaque_existential_1(&v35);
          if (v23)
          {
            *&v35 = v5;
            *(&v35 + 1) = v17;
            v36 = v30;
            sub_19751ED9C(a1, a2);
          }

          if (v16 < *(v15 + 16))
          {
            sub_197520068(v31 + 32, &v35);

            v24 = *(&v36 + 1);
            v25 = v37;
            __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
            (*(v25 + 16))(v20, v22, v20, v24, v25);
            v26 = &v35;
            return __swift_destroy_boxed_opaque_existential_1(v26);
          }

          goto LABEL_26;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

  if (*(v5 + 16))
  {
    v9 = *v2;
    v10 = sub_19749ED9C(a1);
    if (v11)
    {
      v12 = *(*(v5 + 56) + 8 * v10);

      if (v12)
      {
        if (*(v12 + 16))
        {
          sub_197520068(v12 + 32, &v35);

          goto LABEL_20;
        }

        goto LABEL_28;
      }
    }
  }

  v37 = 0;
  v35 = 0u;
  v36 = 0u;
LABEL_20:
  sub_1975200CC(&v35, v32);
  v27 = v33;
  if (v33)
  {
    v28 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    (*(v28 + 16))(*(a2 + 16), v6, *(a2 + 16), v27, v28);
    sub_19752013C(&v35);
    v26 = v32;
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

LABEL_30:
  result = sub_19752013C(v32);
  __break(1u);
  return result;
}

uint64_t sub_19751ED9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 16);
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = *v7;
  v24 = v7[1];
  if (result == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_22;
  }

  if (!*(v11 + 16))
  {
    goto LABEL_20;
  }

  result = sub_19749ED9C(result / v10);
  if ((v12 & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v13 = *(v11 + 56);
  v14 = *(v13 + 8 * result);
  v15 = v14[2];
  if (v15)
  {
    v16 = (v4 + 8);
    v17 = *(v13 + 8 * result);

    v18 = 0;
    for (i = 4; ; i += 5)
    {
      if (v14)
      {
        if (v18 >= v14[2])
        {
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        sub_197520068(&v14[i], v25);
        sub_197471350(v25, v26);
        v20 = v27;
        v21 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        (*(v21 + 16))(v3, v24, v3, v20, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_19751C0DC(v14);
        }

        result = (*v16)(v9, v3);
        if (v18 >= v14[2])
        {
          goto LABEL_18;
        }

        __swift_assign_boxed_opaque_existential_1(&v14[i], v26);
        result = __swift_destroy_boxed_opaque_existential_1(v26);
      }

      if (v15 == ++v18)
      {
      }
    }
  }

  v22 = *(v13 + 8 * result);
}

uint64_t sub_19751EFC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69828](a1, a2, WitnessTable, v5);
}

uint64_t sub_19751F058@<X0>(uint64_t *a1@<X8>)
{
  result = FetchResultsCollection.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_19751F080(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_19751F150(v6, *a2, a3);
  return sub_19751F108;
}

void sub_19751F108(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_19751F150(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  FetchResultsCollection.subscript.getter(a2, a3);
  return sub_19751F220;
}

void sub_19751F220(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_19751F270(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](a1, WitnessTable, v3);
}

uint64_t sub_19751F2F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69820](a1, a2, WitnessTable, v5);
}

uint64_t sub_19751F378(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

__n128 sub_19751F3F0@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_19751F400(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_19751F45C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_19751F4D8()
{
  if (swift_dynamicCastMetatype())
  {
    sub_1974028EC(*v0, *(v0 + 8));
    return swift_dynamicCast();
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000029, 0x800000019752B830);
    MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752B340);
    MEMORY[0x19A8DFF80](0x7463656C6C6F6320, 0xEC000000736E6F69);
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19751F614(uint64_t a1, uint64_t a2)
{
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    sub_19751F780(a1, a2, a1, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
    return swift_dynamicCast();
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000025, 0x8000000197534E20);
    MEMORY[0x19A8DFF80](0xD000000000000036, 0x800000019752B760);
    MEMORY[0x19A8DFF80](0x6574736973726550, 0xEF6C65646F4D746ELL);
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19751F780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for EditingState();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v17 = sub_197404E70(a2 + v16, v13);
    MEMORY[0x1EEE9AC00](v17, v18);
    *(&v34 - 6) = a3;
    *(&v34 - 5) = a4;
    *(&v34 - 4) = v4;
    *(&v34 - 3) = a2;
    v32 = v15;
    v33 = a1;
    sub_197406BD8(v13, sub_197520638, (&v34 - 8), a3, v37);

    sub_197428DBC(v13);
    return v37[0];
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1975221EC();
  v37[0] = v35;
  v37[1] = v36;
  MEMORY[0x19A8DFF80](0xD00000000000004DLL, 0x800000019752B7A0);
  v20 = *(v4 + 16);
  v21 = [v20 description];
  v22 = sub_1975217BC();
  v24 = v23;

  MEMORY[0x19A8DFF80](v22, v24);

  MEMORY[0x19A8DFF80](10, 0xE100000000000000);
  v25 = *(a2 + 16);
  if (!v25)
  {
    v26 = swift_weakLoadStrong();
    if (v26)
    {
      v27 = v26;
      goto LABEL_8;
    }

    __break(1u);
  }

  v27 = v25;
LABEL_8:
  swift_beginAccess();
  v28 = *(v27 + 56);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  v29 = sub_19752160C();
  v31 = v30;

  MEMORY[0x19A8DFF80](v29, v31);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19751FA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v36 = 0;
  v15 = *(a1 + 16);
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = &v36;
  v16[7] = a1;
  v16[8] = v15;
  v16[9] = a4;
  v16[10] = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_19752065C;
  *(v17 + 24) = v16;
  v34 = sub_197520694;
  v35 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_197472418;
  v33 = &block_descriptor_4;
  v18 = _Block_copy(&aBlock);
  v19 = v15;
  v20 = a2;
  v21 = v19;

  [v21 performBlockAndWait_];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    v22 = v36;
    if (v36)
    {
      swift_unknownObjectRetain();

      *a8 = v22;

      return swift_unknownObjectRelease();
    }
  }

  aBlock = 0;
  v31 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000036, 0x800000019752B7F0);
  v24 = *(v20 + 16);
  v25 = [v24 description];
  v26 = sub_1975217BC();
  v28 = v27;

  MEMORY[0x19A8DFF80](v26, v28);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19751FD08(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v40 = a1[2];
  LOBYTE(v41) = 0;
  v14 = v40;
  v15 = sub_19742C058(&v40);
  if (v15)
  {
    v16 = v15;

    v17 = *a3;
    *a3 = v16;

    return swift_unknownObjectRelease();
  }

  else
  {
    v19 = *(a4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFC8, &qword_19752C730);
    inited = swift_initStackObject();
    v21 = MEMORY[0x1E69E7CC8];
    v37 = a3;
    inited[2] = MEMORY[0x1E69E7CC8];
    inited[3] = v21;
    inited[4] = MEMORY[0x1E69E7CD0];
    inited[5] = v19;
    v36 = v14;
    v22 = a1[2];

    v35 = [a5 objectWithID_];
    sub_197402910(v35, a5, inited, &v40);
    v23 = v40;
    v24 = v41;
    v25 = v42;
    swift_beginAccess();
    sub_1974028EC(v24, v25);

    sub_1974028EC(v24, v25);
    v26 = inited[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = inited[2];
    sub_197400CA8(v23, v24, v25, v24, v25, isUniquelyReferenced_nonNull_native);
    sub_1974028C8(v24, v25);
    swift_endAccess();
    swift_beginAccess();
    v28 = sub_197400BC8(v24, v25);
    swift_endAccess();

    v40 = v23;
    v41 = v24;
    v42 = v25;
    v29 = sub_197520790(a7, &v40, a8, a9);
    sub_19743371C(v29, a8, a9);

    sub_1974028C8(v24, v25);

    swift_setDeallocating();
    v30 = inited[3];

    v31 = inited[4];

    v32 = inited[5];

    v33 = *v37;
    *v37 = v29;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v34 = a1[3];
    a1[3] = v29;
    a1[4] = a9;
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_19751FFD0()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_197520068(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1975200CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4F0, &unk_197534B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19752013C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4F0, &unk_197534B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_197520368(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2C3B0, &qword_1975342A0);
    sub_197510F04();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197520418()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_197520460(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1975204A8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_197520524(uint64_t a1)
{
  if (swift_conformsToProtocol2() && a1)
  {
    return *(v1 + 24) == 0;
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000025, 0x8000000197534E20);
  MEMORY[0x19A8DFF80](0xD000000000000036, 0x800000019752B760);
  MEMORY[0x19A8DFF80](0x6574736973726550, 0xEF6C65646F4D746ELL);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19752069C()
{
  if (swift_dynamicCastMetatype())
  {
    return 0;
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000029, 0x800000019752B830);
  MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752B340);
  MEMORY[0x19A8DFF80](0x7463656C6C6F6320, 0xEC000000736E6F69);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197520790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = type metadata accessor for _KKMDBackingData();
  v15 = &type metadata for DefaultSnapshot;
  WitnessTable = sub_19752088C();
  v13[0] = v7;
  v13[1] = v8;
  v14 = v9;

  sub_1974028EC(v8, v9);
  v11 = sub_1973FD1A4(a1, v13);
  _SD_set_faulting_backingdata_tsd(1);
  v15 = v10;
  WitnessTable = swift_getWitnessTable();
  v13[0] = v11;
  return (*(a4 + 48))(v13, a3, a4);
}

unint64_t sub_19752088C()
{
  result = qword_1EAF2C4F8;
  if (!qword_1EAF2C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C4F8);
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}