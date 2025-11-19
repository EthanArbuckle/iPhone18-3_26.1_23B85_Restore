uint64_t sub_19748C664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  v14 = *(*v4 + 80);
  v15 = a3;
  v16 = v5;
  v17 = a4;
  type metadata accessor for ManagedObjectKeyedDecoding();
  v6 = *(v4 + 72);
  v14 = *(v4 + 64);
  LOBYTE(v15) = v6;
  v7 = *(v4 + 32);
  v8 = *(v4 + 40);
  v9 = *(v4 + 48);
  v10 = *(v4 + 24);
  v11 = *(v4 + 16);

  sub_1974028EC(v14, v6);

  v12 = sub_19749A398(v11, v7, &v14, v8, v9, v10);

  v14 = v12;
  swift_getWitnessTable();
  return sub_19752265C();
}

uint64_t sub_19748C808@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 88);
  v5 = sub_197521F5C();
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v10 = &v18 - v9;
  v11 = *(v4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  v15 = &v18 - v14;
  v16 = *(v3 + 104);
  sub_197522B5C();
  result = (*(v11 + 48))(v10, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v15, v10, v4);
    sub_19748C9C4(a1);
    return (*(v11 + 8))(v15, v4);
  }

  return result;
}

uint64_t sub_19748C9C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 96);
  v5 = type metadata accessor for ManagedObjectDecoder();
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 16);

  v9 = sub_19749AE94(v8, v6, v7);

  a1[3] = v5;
  result = swift_getWitnessTable();
  a1[4] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_19748CAB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, ProtocolDescriptor *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v83 = *v6;
  v84 = a6;
  v12 = sub_197521F5C();
  v13 = *(v12 - 8);
  v81 = v12;
  v82 = v13;
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v80 - v20;
  v22 = v6[4];
  swift_beginAccess();
  v23 = v22[12];
  if (!*(v23 + 16) || (v24 = sub_1973F4028(a1, a2), (v25 & 1) == 0))
  {
    swift_endAccess();
    *&v87[0] = 0;
    *(&v87[0] + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000028, 0x80000001975254B0);
    MEMORY[0x19A8DFF80](a1, a2);
    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    v68 = [(ProtocolDescriptor *)a3 description];
    a1 = sub_1975217BC();
    v70 = v69;

    MEMORY[0x19A8DFF80](a1, v70);

    MEMORY[0x19A8DFF80](544106784, 0xE400000000000000);
    *&v86[0] = v22;
    type metadata accessor for Schema.Entity();
    sub_19752235C();
    goto LABEL_57;
  }

  v26 = *(*(v23 + 56) + 8 * v24);
  swift_endAccess();

  v27 = sub_19752178C();
  v28 = [(ProtocolDescriptor *)a3 valueForKey:v27];

  if (!v28)
  {

    return (*(*(a5 - 8) + 56))(v84, 1, 1, a5);
  }

  sub_197521FDC();
  swift_unknownObjectRelease();
  sub_1974028B8(v86, v87);
  v29 = v26[120];
  if (v29)
  {
    sub_197404860(v87, v86);
    sub_197438EA8(0, &qword_1EAF2ACD8, 0x1E695DF20);
    if (!swift_dynamicCast())
    {
      goto LABEL_58;
    }

    v34 = v85[0];
    type metadata accessor for Schema.CompositeAttribute();
    v35 = swift_dynamicCastClass();
    if (v35)
    {
      v36 = v35;
      if ((v29 & 6) != 0)
      {
        v37 = sub_19748D7F0(v34, v35);
      }

      else
      {
        v37 = v34;
      }

      a1 = v37;
      v85[0] = v37;
      *&v86[0] = a4;
      a3 = &protocol descriptor for _Optional;
      v38 = a4;
      if (swift_conformsToProtocol2())
      {
        v38 = a4;
        if (a4)
        {
          v38 = a4;
          do
          {
            sub_1973F732C(v38, v86);
            v38 = *&v86[0];
            if (swift_conformsToProtocol2())
            {
              v39 = v38 == 0;
            }

            else
            {
              v39 = 1;
            }
          }

          while (!v39);
        }
      }

      v40 = dynamic_cast_existential_2_conditional(v38);
      if (v40)
      {
        v42 = *(*(v40 - 8) + 64);
        v43 = MEMORY[0x1EEE9AC00](v40, v41);
        v44 = v83[10];
        v45 = v83[11];
        v46 = v83[12];
        v79 = v83[13];
        sub_19748DFDC(v43, v85, v36);

        __swift_destroy_boxed_opaque_existential_1Tm_1(v87);
        v47 = v84;
        v48 = swift_dynamicCast();
        return (*(*(a5 - 8) + 56))(v47, v48 ^ 1u, 1, a5);
      }

      *&v86[0] = 0;
      *(&v86[0] + 1) = 0xE000000000000000;
      sub_1975221EC();

      *&v86[0] = 0xD000000000000023;
      *(&v86[0] + 1) = 0x8000000197524170;
      v78 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v78);
    }

    else
    {
      *&v86[0] = 0;
      *(&v86[0] + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197524130);
      v74 = [(ProtocolDescriptor *)a3 description];
      v75 = sub_1975217BC();
      v77 = v76;

      MEMORY[0x19A8DFF80](v75, v77);

      MEMORY[0x19A8DFF80](0x2074756220, 0xE500000000000000);
      MEMORY[0x19A8DFF80](a1, a2);
      MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197524150);
      v85[0] = v26;
      type metadata accessor for Schema.Attribute();
      sub_19752235C();
    }

    while (1)
    {
LABEL_57:
      sub_1975223EC();
      __break(1u);
LABEL_58:
      *&v86[0] = 0;
      *(&v86[0] + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000019, 0x80000001975254E0);
      MEMORY[0x19A8DFF80](a1, a2);
      MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197525500);
      v71 = [(ProtocolDescriptor *)a3 description];
      a1 = sub_1975217BC();
      v73 = v72;

      MEMORY[0x19A8DFF80](a1, v73);

      MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
      sub_19752235C();
    }
  }

  *&v86[0] = a4;
  if (swift_conformsToProtocol2() && a4)
  {
    do
    {
      sub_1973F732C(a4, v86);
      a4 = *&v86[0];
      if (swift_conformsToProtocol2())
      {
        v30 = a4 == 0;
      }

      else
      {
        v30 = 1;
      }
    }

    while (!v30);
  }

  if (sub_1973F6EEC(a4))
  {
    if (swift_dynamicCastMetatype())
    {
      sub_197404860(v87, v86);
      sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v31 = v85[0];
        v32 = [v85[0] unsignedCharValue];

        __swift_destroy_boxed_opaque_existential_1Tm_1(v87);
        LOBYTE(v86[0]) = v32;
LABEL_52:
        v66 = v84;
        v67 = swift_dynamicCast();
        return (*(*(a5 - 8) + 56))(v66, v67 ^ 1u, 1, a5);
      }
    }

    else if (swift_dynamicCastMetatype())
    {
      sub_197404860(v87, v86);
      sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v49 = v85[0];
        v50 = [v85[0] unsignedShortValue];

        __swift_destroy_boxed_opaque_existential_1Tm_1(v87);
        LOWORD(v86[0]) = v50;
        goto LABEL_52;
      }
    }

    else if (swift_dynamicCastMetatype())
    {
      sub_197404860(v87, v86);
      sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v51 = v85[0];
        v52 = [v85[0] unsignedIntValue];

        __swift_destroy_boxed_opaque_existential_1Tm_1(v87);
        LODWORD(v86[0]) = v52;
        goto LABEL_52;
      }
    }

    else if (swift_dynamicCastMetatype())
    {
      sub_197404860(v87, v86);
      sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v53 = v85[0];
        v54 = [v85[0] unsignedLongLongValue];

        __swift_destroy_boxed_opaque_existential_1Tm_1(v87);
        *&v86[0] = v54;
        goto LABEL_52;
      }
    }

    else
    {
      if (!swift_dynamicCastMetatype())
      {
LABEL_51:

        sub_1974028B8(v87, v86);
        goto LABEL_52;
      }

      sub_197404860(v87, v86);
      sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v55 = v85[0];
        v56 = [v85[0] unsignedIntegerValue];

        __swift_destroy_boxed_opaque_existential_1Tm_1(v87);
        *&v86[0] = v56;
        goto LABEL_52;
      }
    }
  }

  v57 = swift_conformsToProtocol2();
  if (!v57)
  {
    goto LABEL_51;
  }

  if (!a4)
  {
    goto LABEL_51;
  }

  v58 = v57;
  sub_197404860(v87, v86);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_19744D0E0(v85[0], v85[1]);
  v59 = *(a5 - 8);
  v60 = *(v59 + 56);
  v60(v21, 1, 1, a5);
  sub_19748E27C(a4, v87, v21, v83[10], v83[11], a5, a4, v83[12], v83[13], v58);

  swift_beginAccess();
  v62 = v81;
  v61 = v82;
  (*(v82 + 16))(v18, v21, v81);
  v63 = *(v61 + 8);
  v82 = v61 + 8;
  v63(v21, v62);
  v64 = *(v59 + 48);
  if (v64(v18, 1, a5) == 1)
  {
    sub_1974028B8(v87, v86);
    v65 = v84;
    swift_dynamicCast();
    if (v64(v18, 1, a5) != 1)
    {
      v63(v18, v62);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v87);
    v65 = v84;
    (*(v59 + 32))(v84, v18, a5);
  }

  return (v60)(v65, 0, 1, a5);
}

id sub_19748D7F0(void *a1, uint64_t *a2)
{
  v31 = *a2;
  if ((a2[15] & 2) != 0)
  {
    sub_197438EA8(0, qword_1ED7C6730, 0x1E695DF90);
    v4 = sub_197521D6C();
    sub_197521D7C();
    sub_197521D9C();
    v37 = v33;
    v38 = v34;
    v39 = v35;
    for (i = v36; *(&v34 + 1); i = v36)
    {
      sub_1974028B8(&v37, &v33);
      sub_1974028B8(&v39, &v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE8, &unk_19752C690);
      if (swift_dynamicCast())
      {
        v5 = sub_19748DE08(v42);

        if (v5)
        {
          __swift_project_boxed_opaque_existential_1Tm_0(&v33, *(&v34 + 1));
          [v4 __swift_setObject_forKeyedSubscript_];
          swift_unknownObjectRelease();
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm_1(&v33);
      sub_197521D9C();
      v37 = v33;
      v38 = v34;
      v39 = v35;
    }

    v6 = [v4 allKeys];
    v7 = sub_1975219CC();

    if (*(v7 + 16))
    {
      sub_197404860(v7 + 32, &v37);

      v8 = MEMORY[0x1E69E6158];
      if ((swift_dynamicCast() & 1) == 0)
      {
        return v4;
      }

      v9 = v33;
      swift_beginAccess();
      v10 = a2[18];

      v11 = sub_1974248B8(v9, *(&v9 + 1), v10);

      if (v11)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B590, &qword_19752E9C8);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_19752C280;
        *(v12 + 56) = v8;
        *(v12 + 32) = v9;
        v13 = sub_1974BF988(MEMORY[0x1E69E7CC0]);
        *(v12 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B598, &unk_19752E9D0);
        *(v12 + 64) = v13;
        v14 = sub_197521D8C();

        return v14;
      }
    }

LABEL_39:

    return v4;
  }

  if ((a2[15] & 4) != 0)
  {
    sub_197438EA8(0, qword_1ED7C6730, 0x1E695DF90);
    v4 = sub_197521D6C();
    result = swift_beginAccess();
    v15 = a2[16];
    if (v15 >> 62)
    {
      if (v15 < 0)
      {
        v30 = a2[16];
      }

      result = sub_1975220EC();
      v16 = result;
      if (!result)
      {
        return v4;
      }

      goto LABEL_18;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_18:
      if (v16 < 1)
      {
        __break(1u);
        return result;
      }

      for (j = 0; j != v16; ++j)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x19A8E0960](j, v15);
        }

        else
        {
          v18 = *(v15 + 8 * j + 32);
        }

        v19 = *(v18 + 120);
        if ((v19 & 6) != 0 && (v20 = swift_dynamicCastClass()) != 0)
        {
          v21 = v20;
          swift_beginAccess();
          v22 = *(v21 + 24);
          *&v33 = *(v21 + 16);
          *(&v33 + 1) = v22;
          swift_retain_n();

          v23 = [v4 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v23)
          {
            sub_197521FDC();
            swift_unknownObjectRelease();
          }

          else
          {
            v33 = 0u;
            v34 = 0u;
          }

          v37 = v33;
          v38 = v34;
          if (*(&v34 + 1))
          {
            sub_197438EA8(0, &qword_1EAF2ACD8, 0x1E695DF20);
            if (swift_dynamicCast())
            {
              v24 = v41;
              if ((v19 & 2) != 0 && ![v41 count])
              {
                v28 = *(v21 + 16);
                v29 = *(v21 + 24);

                *&v37 = v28;
                *(&v37 + 1) = v29;
                [v4 __swift_setObject_forKeyedSubscript_];
              }

              else
              {
                v25 = *(v21 + 16);
                v26 = *(v21 + 24);

                v27 = sub_19748D7F0(v24, v21);
                *&v37 = v25;
                *(&v37 + 1) = v26;
                [v4 __swift_setObject_forKeyedSubscript_];
              }

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          else
          {

            sub_1973FE58C(&v37, &qword_1EAF2AF20, &unk_19752F320);
          }
        }

        else
        {
        }
      }

      goto LABEL_39;
    }

    return v4;
  }

  return a1;
}

uint64_t sub_19748DE08(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = 1;
    return v3 & 1;
  }

  v2 = a1 + 64;
  v3 = 1;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_13:
      v13 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v14 = v13 | (v10 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      sub_197404860(*(a1 + 56) + 32 * v14, v18);
      *&v19 = v16;
      *(&v19 + 1) = v17;
      sub_1974028B8(v18, &v20);

      v12 = v10;
LABEL_14:
      v22 = v19;
      v23[0] = v20;
      v23[1] = v21;
      if (!*(&v19 + 1))
      {

        return v3 & 1;
      }

      sub_1974028B8(v23, &v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE8, &unk_19752C690);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v3 = sub_19748DE08(*&v18[0]);

      v9 = v12;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v3 = 0;
    return v3 & 1;
  }

LABEL_6:
  if (v7 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v6 = 0;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      goto LABEL_14;
    }

    v6 = *(v2 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19748DFDC(uint64_t a1, void **a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *a2;
  type metadata accessor for CompositeDecoder();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = MEMORY[0x1E69E7CC0];
  v9 = v6;
  v10 = sub_197441730(v8);
  v7[4] = a3;
  v7[5] = v9;
  v7[3] = v10;
  sub_19749B3F4(&qword_1ED7C6930, type metadata accessor for CompositeDecoder);

  sub_197521B9C();
}

uint64_t sub_19748E27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = dynamic_cast_existential_2_conditional(a7);
  if (result)
  {
    return sub_19748E324(result, a2, a3, a4, a5, a6, a7, result, a8, a9, a10, v18);
  }

  return result;
}

uint64_t sub_19748E324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v41 = a3;
  v38[1] = a12;
  v15 = sub_197521F5C();
  v39 = *(v15 - 8);
  v40 = v15;
  v16 = *(v39 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = v38 - v19;
  v21 = *(a8 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](v18, v23);
  v26 = v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = v38 - v28;
  v30 = sub_197520B7C();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_197520B6C();
  sub_197404860(a2, v44);
  swift_dynamicCast();
  v33 = v42;
  v34 = v43;
  sub_197520B5C();

  sub_19744D0E0(v33, v34);
  (*(v21 + 32))(v26, v29, a8);
  v35 = swift_dynamicCast();
  (*(*(a6 - 8) + 56))(v20, v35 ^ 1u, 1, a6);
  v36 = v41;
  swift_beginAccess();
  return (*(v39 + 40))(v36, v20, v40);
}

uint64_t sub_19748E5D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  sub_1974028C8(*(v0 + 64), *(v0 + 72));
  return v0;
}

uint64_t sub_19748E624()
{
  sub_19748E5D0();

  return swift_deallocClassInstance();
}

uint64_t sub_19748E988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(a2 + 80);
  v10 = *(a2 + 96);
  v7 = type metadata accessor for ManagedObjectKeyedDecoding();
  return a4(a1, v7, a3);
}

uint64_t sub_19748EA14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  type metadata accessor for ManagedObjectKeyedDecoding();
  return sub_1975228AC();
}

uint64_t sub_19748EA74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  type metadata accessor for ManagedObjectKeyedDecoding();
  return sub_19752289C();
}

uint64_t sub_19748EC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(a2 + 80);
  v10 = *(a2 + 96);
  v7 = type metadata accessor for ManagedObjectKeyedDecoding();
  return a4(a1, v7, a3) & 0x1FF;
}

uint64_t sub_19748ED2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(a2 + 80);
  v10 = *(a2 + 96);
  v7 = type metadata accessor for ManagedObjectKeyedDecoding();
  return a4(a1, v7, a3) & 0x1FFFF;
}

uint64_t sub_19748EDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v7 = type metadata accessor for ManagedObjectKeyedDecoding();
  v8 = a4(a1, v7, a3);
  return v8 | ((HIDWORD(v8) & 1) << 32);
}

uint64_t sub_19748EE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v11 = *(a2 + 80);
  v12 = *(a2 + 96);
  v8 = type metadata accessor for ManagedObjectKeyedDecoding();
  result = a4(a1, v8, a3);
  if (v4)
  {
    return v10;
  }

  return result;
}

uint64_t sub_19748EF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v11 = *(a2 + 80);
  v12 = *(a2 + 96);
  v8 = type metadata accessor for ManagedObjectKeyedDecoding();
  result = a4(a1, v8, a3);
  if (v4)
  {
    return v10;
  }

  return result;
}

uint64_t sub_19748EF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 80);
  v7 = *(a5 + 96);
  type metadata accessor for ManagedObjectKeyedDecoding();
  return sub_1975228EC();
}

uint64_t sub_19748F0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v13 + 16))(&v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v14);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for _StitchedBackingData();
  if (swift_dynamicCast())
  {
    v17 = *(v70 + 16);
    sub_1973FE14C(a3, &v70, &qword_1EAF2AF20, &unk_19752F320);

    sub_197511DB4(&v70, a1, a2);
  }

  v65 = v5;
  sub_1973F51F0(AssociatedTypeWitness, AssociatedConformanceWitness, v72);
  sub_1974D4CB4(a1, a2, &v70);
  v75 = v72[0];
  sub_1973FE58C(&v75, &qword_1EAF2B568, &qword_19752E990);
  v19 = v72[2];
  v74 = v72[1];
  sub_1973FE58C(&v74, &qword_1EAF2B570, &qword_19752E998);
  v73 = v19;
  sub_1973FE58C(&v73, &qword_1EAF2B578, &qword_19752E9A0);
  if (!*(&v70 + 1))
  {
    goto LABEL_66;
  }

  v20 = v71;

  sub_1973F82A8(&v70);
  v21 = *v20;
  v64 = v20;
  if (sub_197521FFC() != AssociatedTypeWitness)
  {
    *&v70 = 0;
    *(&v70 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000020, 0x8000000197525030);
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197525060);
    v68[0] = v64;
    sub_19752202C();
    sub_19752235C();
    goto LABEL_78;
  }

  sub_197521FFC();
  v23 = v22;
  if (swift_conformsToProtocol2())
  {
    v24 = v23 == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = v24;
  v63 = v25;
  sub_197521FFC();
  v27 = v26;
  *&v70 = v26;
  if (swift_conformsToProtocol2() && v27)
  {
    do
    {
      sub_1973F732C(v27, &v70);
      v27 = v70;
      if (swift_conformsToProtocol2())
      {
        v28 = v27 == 0;
      }

      else
      {
        v28 = 1;
      }
    }

    while (!v28);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
  type metadata accessor for Schema.Entity();
  v29 = sub_1973FDF38(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_beginAccess();
  v30 = *(v29 + 96);
  if (!*(v30 + 16) || (v31 = sub_1973F4028(a1, a2), (v32 & 1) == 0))
  {
    swift_endAccess();
LABEL_27:
    v35 = sub_1975214EC();
    v36 = sub_1975214EC();
    if (v35)
    {
      if (v36 && v35 == v36)
      {
        goto LABEL_30;
      }
    }

    else if (!v36)
    {
LABEL_30:
      sub_1975214DC();
      if (v37 < 0)
      {
        __break(1u);
      }

      else
      {
        if (!v37)
        {
          *&v70 = 0;
          *(&v70 + 1) = 0xE000000000000000;
          sub_1975221EC();

          *&v70 = 0xD00000000000001DLL;
          *(&v70 + 1) = 0x8000000197524E70;
          v56 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v56);

          goto LABEL_78;
        }

        v38 = sub_1975214DC();
        if (v39 >= 1)
        {
          v40 = *v38;
          if (swift_conformsToProtocol2() && v40)
          {
            if (v63)
            {
              sub_1973FE14C(a3, v68, &qword_1EAF2AF20, &unk_19752F320);
              if (v69)
              {
                sub_1974028B8(v68, &v70);
                sub_197490CD4(&v70, v64, v42, a4, v40, a5);
                goto LABEL_52;
              }

LABEL_76:
              sub_1973FE58C(v68, &qword_1EAF2AF20, &unk_19752F320);
              *&v70 = 0;
              *(&v70 + 1) = 0xE000000000000000;
              sub_1975221EC();
              MEMORY[0x19A8DFF80](0xD000000000000026, 0x8000000197525080);
              v68[0] = v64;
              sub_19752202C();
              sub_19752235C();
              goto LABEL_78;
            }

            sub_197490998(a3, v64, v41, a4, v40, a5);
          }

          else
          {
            v52 = dynamic_cast_existential_2_conditional(v40);
            if (!v52)
            {
              *&v70 = 0;
              *(&v70 + 1) = 0xE000000000000000;
              sub_1975221EC();

              *&v70 = 0xD00000000000002FLL;
              *(&v70 + 1) = 0x80000001975250B0;
              v58 = sub_197522B8C();
              MEMORY[0x19A8DFF80](v58);

              goto LABEL_78;
            }

            v54 = v52;
            if (v63)
            {
              sub_1973FE14C(a3, v68, &qword_1EAF2AF20, &unk_19752F320);
              if (!v69)
              {
                sub_1973FE58C(v68, &qword_1EAF2AF20, &unk_19752F320);
                *&v70 = 0;
                *(&v70 + 1) = 0xE000000000000000;
                sub_1975221EC();
                MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x80000001975250E0);
                v68[0] = v64;
                sub_19752202C();
                sub_19752235C();
                MEMORY[0x19A8DFF80](0xD000000000000033, 0x8000000197525100);
                goto LABEL_78;
              }

              sub_1974028B8(v68, &v70);
              sub_197491310(&v70, v64, v55, a4, v54, a5);
LABEL_52:

              return __swift_destroy_boxed_opaque_existential_1Tm_1(&v70);
            }

            sub_197490F5C(a3, v64, v53, a4, v52, a5);
          }

          goto LABEL_56;
        }
      }

      __break(1u);
LABEL_66:
      sub_1973FE58C(&v70, &qword_1EAF2B580, &qword_19752E9A8);
      *&v70 = 0;
      *(&v70 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0x6620746F6E6E6143, 0xEC00000020646E69);
      MEMORY[0x19A8DFF80](a1, a2);
      MEMORY[0x19A8DFF80](0xD00000000000002DLL, 0x8000000197525000);
      sub_1975227FC();
      goto LABEL_78;
    }

    v43 = swift_conformsToProtocol2();
    if (v43 && v27)
    {
      v44 = v43;
      if (v63)
      {
        sub_1973FE14C(a3, v68, &qword_1EAF2AF20, &unk_19752F320);
        if (v69)
        {
          sub_1974028B8(v68, &v70);
          sub_19749171C(&v70, v64, v45, a4, v27, a5, v44);
          goto LABEL_52;
        }

        goto LABEL_76;
      }

      sub_197491598(a3, v64, v27, a4, v27, a5, v43);
    }

    else
    {
      v46 = dynamic_cast_existential_2_conditional(v27);
      if (!v46)
      {
        *&v70 = 0;
        *(&v70 + 1) = 0xE000000000000000;
        sub_1975221EC();

        *&v70 = 0xD000000000000029;
        *(&v70 + 1) = 0x8000000197524E40;
        v57 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v57);

        goto LABEL_78;
      }

      v49 = v46;
      v50 = v47;
      if (v63)
      {
        sub_1973FE14C(a3, v68, &qword_1EAF2AF20, &unk_19752F320);
        if (v69)
        {
          sub_1974028B8(v68, &v70);
          sub_197491EC8(&v70, v64, v49, a4, v49, a5, v51, v50);
          goto LABEL_52;
        }

        goto LABEL_76;
      }

      sub_197491984(a3, v64, v47, a4, v46, a5, v48, v47);
    }

LABEL_56:
  }

  v33 = *(*(v30 + 56) + 8 * v31);
  swift_endAccess();
  if ((*(v33 + 120) & 0x90) == 0)
  {
    goto LABEL_27;
  }

  if (!*(a3 + 24))
  {
    v70 = 0u;
    v71 = 0u;

    goto LABEL_59;
  }

  sub_1973FE14C(a3, v68, &qword_1EAF2AF20, &unk_19752F320);
  if (!v69)
  {

    sub_1973FE58C(v68, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_72;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_72:
    v68[0] = 0;
    v68[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000002ELL, 0x8000000197525180);
    MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
    MEMORY[0x19A8DFF80](0xD000000000000025, 0x80000001975251B0);
    v59 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v59);

    MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
    MEMORY[0x19A8DFF80](a1, a2);
    goto LABEL_78;
  }

  v34 = v66;
  type metadata accessor for Schema.Attribute();
  sub_19744D340(v34, *(&v34 + 1), v33, &v70);
  sub_19744D0E0(v34, *(&v34 + 1));
LABEL_59:
  if ((v63 & 1) == 0)
  {
    sub_1974900B0(&v70, v64, v27, a4, v27, a5);

    return sub_1973FE58C(&v70, &qword_1EAF2AF20, &unk_19752F320);
  }

  sub_1973FE14C(&v70, &v66, &qword_1EAF2AF20, &unk_19752F320);
  if (v67)
  {
    sub_1974028B8(&v66, v68);
    sub_1974905D0(v68, v64, v27, a4, v27, a5);

    __swift_destroy_boxed_opaque_existential_1Tm_1(v68);
    return sub_1973FE58C(&v70, &qword_1EAF2AF20, &unk_19752F320);
  }

  sub_1973FE58C(&v66, &qword_1EAF2AF20, &unk_19752F320);
  v68[0] = 0;
  v68[1] = 0xE000000000000000;
  sub_1975221EC();
  v66 = *v68;
  MEMORY[0x19A8DFF80](0xD00000000000003CLL, 0x8000000197525140);
  swift_beginAccess();
  v60 = *(v33 + 16);
  v61 = *(v33 + 24);

  MEMORY[0x19A8DFF80](v60, v61);

  MEMORY[0x19A8DFF80](0x6C696E206F7420, 0xE700000000000000);
LABEL_78:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974900B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a1;
  v37 = sub_197521F5C();
  v38 = *(v37 - 8);
  v11 = *(v38 + 64);
  v13 = MEMORY[0x1EEE9AC00](v37, v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = v34 - v18;
  v20 = *(a5 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17, v22);
  v35 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v34[0] = a2;
  v34[1] = a3;
  v24 = sub_19749AEF0();
  sub_1973FE14C(v36, &v40, &qword_1EAF2AF20, &unk_19752F320);
  if (v41)
  {
    sub_1974028B8(&v40, v42);
    sub_197404860(v42, &v40);

    v25 = swift_dynamicCast();
    v26 = *(v20 + 56);
    if (v25)
    {
      v26(v19, 0, 1, a5);
      v27 = v35;
      (*(v20 + 32))(v35, v19, a5);
      (*(v20 + 16))(v15, v27, a5);
      v26(v15, 0, 1, a5);
      v28 = a6;
      v29 = *(a6 + 152);
      v30 = v37;
      v29(v24, v15, v37, a4, v28);

      (*(v38 + 8))(v15, v30);
      (*(v20 + 8))(v27, a5);
      return __swift_destroy_boxed_opaque_existential_1Tm_1(v42);
    }

    else
    {
      v26(v19, 1, 1, a5);
      (*(v38 + 8))(v19, v37);
      *&v40 = 0;
      *(&v40 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975251E0);
      v39 = v34[0];
      sub_19752202C();
      sub_19752235C();
      MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197525200);
      v33 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v33);

      MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197525220);
      sub_19752235C();
      result = sub_1975223EC();
      __break(1u);
    }
  }

  else
  {

    sub_1973FE58C(&v40, &qword_1EAF2AF20, &unk_19752F320);
    (*(v20 + 56))(v15, 1, 1, a5);
    v32 = v37;
    (*(a6 + 152))(v24, v15, v37, a4, a6);

    return (*(v38 + 8))(v15, v32);
  }

  return result;
}

uint64_t sub_1974905D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a2;
  v11 = sub_197521F5C();
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = *(v29 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v28 - v15;
  v17 = *(a5 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14, v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v31 = a3;
  v22 = v33;
  v23 = sub_19749B068();
  v32 = a1;
  sub_197404860(a1, v35);

  v24 = swift_dynamicCast();
  v25 = *(v17 + 56);
  if (v24)
  {
    v25(v16, 0, 1, a5);
    (*(v17 + 32))(v21, v16, a5);
    (*(a6 + 152))(v23, v21, a5, a4, a6);

    return (*(v17 + 8))(v21, a5);
  }

  else
  {
    v25(v16, 1, 1, a5);
    (*(v29 + 8))(v16, v30);
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975251E0);
    v34 = v22;
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197525200);
    v27 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v27);

    MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197525220);
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_197490998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  sub_197521AAC();
  swift_getAssociatedConformanceWitness();
  v10 = sub_19749AEF0();
  sub_1973FE14C(a1, v19, &qword_1EAF2AF20, &unk_19752F320);
  if (!v19[3])
  {

    sub_1973FE58C(v19, &qword_1EAF2AF20, &unk_19752F320);
    v11 = 0;
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    v11 = v18;
LABEL_5:
    v19[0] = v11;
    v12 = *(a6 + 136);
    v13 = sub_197521F5C();
    swift_getWitnessTable();
    WitnessTable = swift_getWitnessTable();
    v12(v10, v19, v13, a5, WitnessTable, a4, a6);
  }

  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975252A0);
  v19[0] = v10;
  sub_197521F5C();
  sub_197522B2C();
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0x7463657078652820, 0xEB00000000206465);
  v16 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v16);

  MEMORY[0x19A8DFF80](2112041, 0xE300000000000000);
  sub_1973FE14C(a1, v19, &qword_1EAF2AF20, &unk_19752F320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  v17 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v17);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197490CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  v10 = sub_197521AAC();
  swift_getAssociatedConformanceWitness();
  v11 = sub_19749B068();
  sub_197404860(a1, v17);

  if (swift_dynamicCast())
  {
    v17[0] = v16;
    v12 = *(a6 + 136);
    WitnessTable = swift_getWitnessTable();
    v12(v11, v17, v10, a5, WitnessTable, a4, a6);
  }

  else
  {
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975252A0);
    sub_197522B2C();
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0x7463657078652820, 0xEB00000000206465);
    v15 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v15);

    MEMORY[0x19A8DFF80](2112041, 0xE300000000000000);
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_197490F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  sub_197521AAC();
  swift_getAssociatedConformanceWitness();
  v9 = sub_19749AEF0();
  sub_1973FE14C(a1, &v19, &qword_1EAF2AF20, &unk_19752F320);
  if (v20)
  {
    sub_1974028B8(&v19, v21);
    sub_197404860(v21, &v19);

    if (swift_dynamicCast())
    {
      *&v19 = v18;
      v10 = *(a6 + 112);
      v11 = sub_197521F5C();
      swift_getWitnessTable();
      WitnessTable = swift_getWitnessTable();
      v10(v9, &v19, v11, WitnessTable, a4, a6);

      return __swift_destroy_boxed_opaque_existential_1Tm_1(v21);
    }

    else
    {
      *&v19 = 0;
      *(&v19 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975252A0);
      sub_197521F5C();
      sub_197522B2C();
      sub_1975227FC();
      MEMORY[0x19A8DFF80](0x7463657078652820, 0xEB00000000206465);
      v17 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v17);

      MEMORY[0x19A8DFF80](2112041, 0xE300000000000000);
      sub_19752235C();
      result = sub_1975223EC();
      __break(1u);
    }
  }

  else
  {

    sub_1973FE58C(&v19, &qword_1EAF2AF20, &unk_19752F320);
    *&v21[0] = 0;
    v14 = *(a6 + 112);
    v15 = sub_197521F5C();
    swift_getWitnessTable();
    v16 = swift_getWitnessTable();
    v14(v9, v21, v15, v16, a4, a6);
  }

  return result;
}

uint64_t sub_197491310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  v9 = sub_197521AAC();
  swift_getAssociatedConformanceWitness();
  v10 = sub_19749B068();
  sub_197404860(a1, v16);

  if (swift_dynamicCast())
  {
    v16[0] = v15;
    v11 = *(a6 + 112);
    WitnessTable = swift_getWitnessTable();
    v11(v10, v16, v9, WitnessTable, a4, a6);
  }

  else
  {
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975252A0);
    sub_197522B2C();
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0x7463657078652820, 0xEB00000000206465);
    v14 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v14);

    MEMORY[0x19A8DFF80](2112041, 0xE300000000000000);
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_197491598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = sub_19749AEF0();
  sub_1973FE14C(a1, &v16, &qword_1EAF2AF20, &unk_19752F320);
  if (v17)
  {
    sub_1974028B8(&v16, v18);

    sub_19749171C(v18, a2, v14, a4, a5, a6, a7);

    return __swift_destroy_boxed_opaque_existential_1Tm_1(v18);
  }

  else
  {

    sub_1973FE58C(&v16, &qword_1EAF2AF20, &unk_19752F320);
    (*(a6 + 128))(v13, 0, a5, a7, a4, a6);
  }
}

uint64_t sub_19749171C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = sub_19749AEF0();
  sub_197404860(a1, v17);

  if (swift_dynamicCast())
  {
    v13 = *(a6 + 128);
    swift_unknownObjectRetain();
    v13(v12, v16, a5, a7, a4, a6);

    return swift_unknownObjectRelease_n();
  }

  else
  {
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975252A0);
    sub_197521F5C();
    sub_197522B2C();
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0x7463657078652820, 0xEB00000000206465);
    v15 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v15);

    MEMORY[0x19A8DFF80](2112041, 0xE300000000000000);
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_197491984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v41 = a2;
  v12 = sub_197521F5C();
  v13 = sub_197521F5C();
  v39 = *(v13 - 8);
  v40 = v13;
  v14 = *(v39 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v39 - v17;
  v44 = *(v12 - 8);
  v19 = *(v44 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16, v20);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v39 - v25;
  swift_getAssociatedTypeWitness();
  v43 = a4;
  swift_getAssociatedConformanceWitness();
  v27 = sub_19749AEF0();
  v41 = a1;
  sub_1973FE14C(a1, &v48, &qword_1EAF2AF20, &unk_19752F320);
  if (v49)
  {
    v28 = v42;
    sub_1974028B8(&v48, v50);
    sub_197404860(v50, &v48);

    v29 = swift_dynamicCast();
    v30 = *(v44 + 56);
    if (v29)
    {
      v30(v18, 0, 1, v12);
      v31 = v44;
      (*(v44 + 32))(v26, v18, v12);
      v32 = *(a6 + 112);
      v45 = v28;
      WitnessTable = swift_getWitnessTable();
      v32(v27, v26, v12, WitnessTable, v43, a6);

      (*(v31 + 8))(v26, v12);
      return __swift_destroy_boxed_opaque_existential_1Tm_1(v50);
    }

    else
    {
      v30(v18, 1, 1, v12);
      (*(v39 + 8))(v18, v40);
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      sub_1975221EC();
      v46 = v48;
      MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975252A0);
      *&v48 = v27;
      sub_197522B2C();
      sub_1975227FC();
      MEMORY[0x19A8DFF80](0x7463657078652820, 0xEB00000000206465);
      v37 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v37);

      MEMORY[0x19A8DFF80](2112041, 0xE300000000000000);
      sub_1973FE14C(v41, &v48, &qword_1EAF2AF20, &unk_19752F320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
      v38 = sub_1975217CC();
      MEMORY[0x19A8DFF80](v38);

      result = sub_1975223EC();
      __break(1u);
    }
  }

  else
  {

    sub_1973FE58C(&v48, &qword_1EAF2AF20, &unk_19752F320);
    (*(*(a5 - 8) + 56))(v23, 1, 1, a5);
    v35 = *(a6 + 112);
    v47 = v42;
    v36 = swift_getWitnessTable();
    v35(v27, v23, v12, v36, v43, a6);

    return (*(v44 + 8))(v23, v12);
  }

  return result;
}

uint64_t sub_197491EC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a3;
  v43 = a8;
  v44 = *(a4 - 8);
  v13 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_197521F5C();
  v41 = *(v16 - 8);
  v17 = *(v41 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v40 - v20;
  v22 = *(a5 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19, v24);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  sub_197404860(a1, &v48);
  v27 = swift_dynamicCast();
  v28 = *(v22 + 56);
  if (v27)
  {
    v28(v21, 0, 1, a5);
    (*(v22 + 32))(v26, v21, a5);
    v29 = *a2;
    v30 = sub_197521FFC();
    if (v30 == swift_getAssociatedTypeWitness())
    {
      swift_getAssociatedConformanceWitness();
      sub_19749B068();
      v35 = *(a6 + 112);

      v35(v36, v26, a5, v43, a4, a6);
      goto LABEL_6;
    }

    (*(v44 + 16))(v15, v46, a4);
    swift_getAssociatedConformanceWitness();
    type metadata accessor for _StitchedBackingData();
    if (swift_dynamicCast())
    {
      v31 = *(v48 + 16);

      v32 = sub_1973F8364(a2);
      v34 = v33;
      sub_197404860(v45, &v48);
      sub_197511DB4(&v48, v32, v34);

LABEL_6:

      return (*(v22 + 8))(v26, a5);
    }

    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1975221EC();

    v48 = 0xD00000000000002BLL;
    v49 = 0x80000001975252E0;
    v39 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v39);
  }

  else
  {
    v28(v21, 1, 1, a5);
    (*(v41 + 8))(v21, v16);
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975252A0);
    v47 = a2;
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](0x7463657078652820, 0xEB00000000206465);
    v38 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v38);

    MEMORY[0x19A8DFF80](2112041, 0xE300000000000000);
    sub_19752235C();
  }

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19749244C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t **a8@<X8>, uint64_t a9)
{
  v40 = a8;
  v15 = *(a5 - 8);
  v16 = *(v15 + 64);
  v39 = a9;
  MEMORY[0x1EEE9AC00](a1, a2);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  sub_197522B2C();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    (*(v15 + 16))(v18, a3, a5);
    swift_getAssociatedConformanceWitness();
    type metadata accessor for _KKMDBackingData();

    if (swift_dynamicCast())
    {
      sub_197512340(v20, v39, v46);
    }

    else
    {
      v29 = v39;
      (*(a7 + 72))(v20, a6, v39, a5, a7);
      PersistentModel.persistentModelID.getter(a6, v29, v46);
      swift_unknownObjectRelease();
    }

    v31 = *&v46[0];
    v32 = BYTE8(v46[0]);
    goto LABEL_11;
  }

  v21 = sub_1973F8364(a2);
  v23 = *(a4 + 16);
  if (*(v23 + 16))
  {
    v24 = sub_1973F4028(v21, v22);
    v26 = v25;

    if (v26)
    {
      v27 = *(*(v23 + 56) + 8 * v24);
      swift_beginAccess();
      if ((v27 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v28 = *(a4 + 32);
        if (v27 < *(v28 + 16))
        {
          sub_1973FE14C(v28 + 32 * v27 + 32, v46, &qword_1EAF2AF20, &unk_19752F320);
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_24:
      sub_1973FE58C(&v43, &qword_1EAF2AF20, &unk_19752F320);
      goto LABEL_25;
    }
  }

  else
  {
  }

  memset(v46, 0, sizeof(v46));
LABEL_14:
  sub_1973FE14C(v46, &v43, &qword_1EAF2AF20, &unk_19752F320);
  if (v45)
  {
    if (swift_dynamicCast())
    {
      PersistentModel.persistentModelID.getter(a6, v39, &v43);
      swift_unknownObjectRelease();
      result = sub_1973FE58C(v46, &qword_1EAF2AF20, &unk_19752F320);
      v31 = v43;
      v32 = v44;
LABEL_11:
      v33 = v40;
      *v40 = v31;
      *(v33 + 8) = v32;
      return result;
    }
  }

  else
  {
    sub_1973FE58C(&v43, &qword_1EAF2AF20, &unk_19752F320);
  }

  sub_1973FE14C(v46, &v43, &qword_1EAF2AF20, &unk_19752F320);
  if (!v45)
  {
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1975221EC();
    v41 = v43;
    v42 = v44;
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197525A50);
    v43 = a2;
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000024, 0x8000000197525A70);
    sub_1973FE14C(v46, &v43, &qword_1EAF2AF20, &unk_19752F320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
    v37 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v37);

    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  sub_1973FE58C(v46, &qword_1EAF2AF20, &unk_19752F320);
  v34 = v41;
  v35 = v42;
  result = swift_unknownObjectRelease();
  v36 = v40;
  *v40 = v34;
  *(v36 + 8) = v35;
  return result;
}

uint64_t sub_19749295C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = sub_1975214DC();
  if (v17 < 1)
  {
    __break(1u);
  }

  else
  {
    v18 = *v16;
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = v18 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      return sub_197492AE8(v18, a2, a3, a4, a5, a6, a7, v18, a8, a9, v19);
    }
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0x742064656C696146, 0xEF2074736163206FLL);
  v22 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v22);

  MEMORY[0x19A8DFF80](0xD000000000000023, 0x8000000197524F60);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197492AE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54 = a11;
  v16 = *(a5 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v52 = a8;
  v53 = sub_197521AAC();
  sub_197522B2C();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    v22 = *(v16 + 16);
    v51[1] = a3;
    v22(v19, a3, a5);
    swift_getAssociatedConformanceWitness();
    type metadata accessor for _KKMDBackingData();

    if (swift_dynamicCast())
    {
      v55 = v54;
      WitnessTable = swift_getWitnessTable();
      v24 = sub_197512784(v21, v52, WitnessTable);

LABEL_25:

      return v24;
    }

    v51[0] = a2;
    v36 = sub_1973F8364(a2);
    v38 = *(a4 + 16);
    if (*(v38 + 16))
    {
      v39 = sub_1973F4028(v36, v37);
      v41 = v40;

      if (v41)
      {
        v42 = *(*(v38 + 56) + 8 * v39);
        swift_beginAccess();
        if ((v42 & 0x8000000000000000) == 0)
        {
          v43 = *(a4 + 32);
          if (v42 < *(v43 + 16))
          {
            sub_1973FE14C(v43 + 32 * v42 + 32, &v60, &qword_1EAF2AF20, &unk_19752F320);
            if (*(&v61 + 1))
            {
              sub_1974028B8(&v60, v66);
              sub_197404860(v66, v65);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
              if (swift_dynamicCast())
              {
                __swift_destroy_boxed_opaque_existential_1Tm_1(v66);

                goto LABEL_18;
              }

              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              v60 = 0u;
              sub_1973FE58C(&v60, &qword_1EAF2B5F8, &qword_19752EA50);
              sub_197404860(v66, &v60);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
              if (swift_dynamicCast())
              {
                __swift_destroy_boxed_opaque_existential_1Tm_1(v66);

                return *&v58[0];
              }

              sub_197404860(v66, &v60);
              v49 = v53;
              if (swift_dynamicCast())
              {
                *&v60 = *&v58[0];
                v56 = v54;
                v50 = swift_getWitnessTable();
                v24 = sub_19743055C(1, v49, v50);

                goto LABEL_35;
              }

              goto LABEL_40;
            }

LABEL_24:
            sub_1973FE58C(&v60, &qword_1EAF2AF20, &unk_19752F320);
            v44 = *(a9 + 88);
            v45 = v53;
            v57 = v54;
            v46 = swift_getWitnessTable();
            v44(&v60, v21, v45, v52, v46, a5, a9);
            *&v58[0] = v60;
            v24 = sub_19743055C(1, v45, v46);

            goto LABEL_25;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    else
    {
    }

    v61 = 0u;
    v60 = 0u;
    goto LABEL_24;
  }

  v25 = sub_1973F8364(a2);
  v27 = *(a4 + 16);
  if (!*(v27 + 16))
  {

    goto LABEL_20;
  }

  v28 = a4;
  v29 = v54;
  v30 = sub_1973F4028(v25, v26);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_20:
    v61 = 0u;
    v60 = 0u;
    goto LABEL_21;
  }

  v33 = *(*(v27 + 56) + 8 * v30);
  swift_beginAccess();
  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v34 = *(v28 + 32);
  if (v33 >= *(v34 + 16))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1973FE14C(v34 + 32 * v33 + 32, &v60, &qword_1EAF2AF20, &unk_19752F320);
  v35 = v53;
  if (!*(&v61 + 1))
  {
LABEL_21:
    sub_1973FE58C(&v60, &qword_1EAF2AF20, &unk_19752F320);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1974028B8(&v60, v66);
  sub_197404860(v66, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v66);
LABEL_18:
    v58[3] = v63;
    v58[4] = v64;
    v58[0] = v60;
    v58[1] = v61;
    v58[2] = v62;
    v24 = v60;
    sub_1974416CC(v63);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v58 + 1);
    return v24;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  sub_1973FE58C(&v60, &qword_1EAF2B5F8, &qword_19752EA50);
  sub_197404860(v66, &v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v66);
    return *&v58[0];
  }

  sub_197404860(v66, &v60);
  if (swift_dynamicCast())
  {
    v59 = v29;
    *&v60 = *&v58[0];
    v48 = swift_getWitnessTable();
    v24 = sub_19743055C(1, v35, v48);
LABEL_35:
    __swift_destroy_boxed_opaque_existential_1Tm_1(v66);

    return v24;
  }

LABEL_40:
  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197525AD0);
  sub_19752235C();
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197493308@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v112 = a4;
  v110 = a6;
  v119 = 0u;
  v120 = 0u;
  v10 = sub_1973F8364(a1);
  v12 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Schema.Entity();
  v15 = sub_1973FDF38(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_beginAccess();
  v16 = *(v15 + 96);
  if (*(v16 + 16) && (v17 = sub_1973F4028(v10, v12), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    if ((*(v19 + 120) & 0x90) != 0)
    {

      *&v113 = a2;
      MetatypeMetadata = swift_getMetatypeMetadata();
      if (sub_1974482A8(&v113, MetatypeMetadata))
      {
        *&v113 = a2;
        if (swift_conformsToProtocol2() && a2)
        {
          do
          {
            sub_1973F732C(a2, &v113);
            a2 = v113;
            if (swift_conformsToProtocol2())
            {
              v21 = a2 == 0;
            }

            else
            {
              v21 = 1;
            }
          }

          while (!v21);
        }

        v22 = sub_197521F5C();
        v23 = *(v22 - 8);
        v24 = *(v23 + 64);
        MEMORY[0x1EEE9AC00](v22, v25);
        v27 = &v109 - v26;
        v28 = a3;
        v29 = v112;
        sub_197494C0C(a2, a1, v111, v28, v112, a2, a5);
        v30 = *(a2 - 8);
        if ((*(v30 + 48))(v27, 1, a2) == 1)
        {
          sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);

          (*(v23 + 8))(v27, v22);
          v113 = 0u;
          v114 = 0u;
        }

        else
        {
          *(&v114 + 1) = a2;
          boxed_opaque_existential_2Tm_0 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v113);
          (*(v30 + 32))(boxed_opaque_existential_2Tm_0, v27, a2);

          sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);
        }

        v119 = v113;
        v120 = v114;
      }

      else
      {
        sub_197522B2C();
        v64 = swift_dynamicCastClassUnconditional();
        v65 = *(a5 + 104);
        *(&v114 + 1) = v112;
        __swift_allocate_boxed_opaque_existential_2Tm_0(&v113);
        v65(v64, v112, a3, a5);

        sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);
        v119 = v113;
        v120 = v114;
        v29 = v112;
      }

      goto LABEL_60;
    }
  }

  else
  {
    swift_endAccess();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && a2)
  {
    v32 = v31;

    v33 = a3;
    v29 = v112;
    v34 = sub_1974945E4(a2, a1, v111, v33, v112, a2, a5, v32);
    v35 = v110;
    if (v34)
    {
      ObjectType = swift_getObjectType();

      sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);
    }

    else
    {
      sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);

      ObjectType = 0;
    }

    goto LABEL_63;
  }

  if (swift_conformsToProtocol2() && a2)
  {
    *&v113 = a2;
    v37 = a2;
    do
    {
      sub_1973F732C(v37, &v113);
      v37 = v113;
      if (swift_conformsToProtocol2())
      {
        v38 = v37 == 0;
      }

      else
      {
        v38 = 1;
      }
    }

    while (!v38);
    v39 = swift_conformsToProtocol2();
    if (v39)
    {
      v40 = v37 == 0;
    }

    else
    {
      v40 = 1;
    }

    if (!v40)
    {
      v61 = v39;

      v62 = a3;
      v29 = v112;
      v63 = sub_197494B40(v37, a1, v111, v62, v112, v37, a5, v61);
      v34 = v63;
      if (!v63)
      {
        sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);

        ObjectType = 0;
        goto LABEL_62;
      }

      v46 = swift_getObjectType();
LABEL_54:
      ObjectType = v46;

      sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);
LABEL_62:
      v35 = v110;
LABEL_63:
      *&v120 = 0;
      v119 = v34;
      *(&v120 + 1) = ObjectType;
      goto LABEL_77;
    }

    if (!swift_conformsToProtocol2() || !v37)
    {
      v66 = dynamic_cast_existential_2_conditional(v37);
      if (!v66)
      {
        *&v113 = 0;
        *(&v113 + 1) = 0xE000000000000000;
        sub_1975221EC();

        *&v113 = 0xD000000000000029;
        *(&v113 + 1) = 0x8000000197524E40;
        v69 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v69);

        goto LABEL_98;
      }

LABEL_70:
      v72 = v66;
      v73 = v67;
      v74 = v68;

      v75 = sub_197521F5C();
      v109 = &v109;
      v76 = *(v75 - 8);
      v82 = *(v76 + 64);
      MEMORY[0x1EEE9AC00](v75, v83);
      v80 = &v109 - v84;
      v85 = a3;
      v29 = v112;
      sub_197494A30(v72, a1, v111, v85, v112, v72, a5);
      goto LABEL_71;
    }

    sub_1975214DC();
    if ((v41 & 0x8000000000000000) == 0)
    {
      if (v41)
      {
        v42 = sub_1975214DC();
        if (v43 >= 1)
        {
          v44 = *v42;
          if (swift_conformsToProtocol2() && v44)
          {

            v45 = a3;
            v29 = v112;
            ObjectType = sub_197494CDC(v44, a1, v111, v45, v112, v44, a5);
            if (!ObjectType)
            {
              sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);

              v34 = 0;
              goto LABEL_62;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
            v34 = sub_19752234C();

            v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
            goto LABEL_54;
          }

          if (dynamic_cast_existential_2_conditional(v44))
          {
            v93 = dynamic_cast_existential_2_conditional(v37);
            if (v93)
            {
              v72 = v93;
              v96 = v94;
              v97 = v95;

              v98 = sub_197521F5C();
              v109 = &v109;
              v99 = *(v98 - 8);
              v100 = *(v99 + 64);
              MEMORY[0x1EEE9AC00](v98, v101);
              v80 = &v109 - v102;
              v103 = a3;
              v29 = v112;
              sub_197494A30(v72, a1, v111, v103, v112, v72, a5);
              v86 = *(v72 - 8);
              if ((*(v86 + 48))(v80, 1, v72) == 1)
              {
                sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);

                (*(v99 + 8))(v80, v98);
                goto LABEL_73;
              }

              *(&v114 + 1) = v72;
              v115 = v96;
              v116 = v97;
              goto LABEL_75;
            }
          }

          *&v113 = 0;
          *(&v113 + 1) = 0xE000000000000000;
          sub_1975221EC();

          *&v113 = 0xD00000000000001ALL;
          *(&v113 + 1) = 0x8000000197524F40;
          v107 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v107);

LABEL_98:
          result = sub_1975223EC();
          __break(1u);
          return result;
        }

        goto LABEL_93;
      }

      v66 = dynamic_cast_existential_2_conditional(v37);
      if (!v66)
      {
        *&v113 = 0;
        *(&v113 + 1) = 0xE000000000000000;
        sub_1975221EC();

        *&v113 = 0xD00000000000001DLL;
        *(&v113 + 1) = 0x8000000197524E70;
        v108 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v108);

        goto LABEL_98;
      }

      goto LABEL_70;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v47 = swift_conformsToProtocol2();
  if (!v47 || !a2)
  {
    v57 = dynamic_cast_existential_2_conditional(a2);
    if (!v57)
    {
      sub_1975221EC();

      *&v113 = 0xD000000000000029;
      *(&v113 + 1) = 0x8000000197524E40;
      v60 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v60);

      goto LABEL_98;
    }

    goto LABEL_68;
  }

  v48 = v47;
  sub_1975214DC();
  if (v49 < 0)
  {
    __break(1u);
    goto LABEL_91;
  }

  if (!v49)
  {
    v57 = dynamic_cast_existential_2_conditional(a2);
    if (!v57)
    {
      sub_1975221EC();

      *&v113 = 0xD00000000000001DLL;
      *(&v113 + 1) = 0x8000000197524E70;
      v71 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v71);

      goto LABEL_98;
    }

LABEL_68:
    v72 = v57;
    v73 = v58;
    v74 = v59;

    v75 = sub_197521F5C();
    v109 = &v109;
    v76 = *(v75 - 8);
    v77 = *(v76 + 64);
    MEMORY[0x1EEE9AC00](v75, v78);
    v80 = &v109 - v79;
    v81 = a3;
    v29 = v112;
    sub_1974944E0(v81, v72, a5, v73, &v109 - v79);
LABEL_71:
    v86 = *(v72 - 8);
    if ((*(v86 + 48))(v80, 1, v72) == 1)
    {
      sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);

      (*(v76 + 8))(v80, v75);
LABEL_73:
      v117 = 0u;
      v118 = 0u;
LABEL_76:
      v35 = v110;
      v119 = v117;
      v120 = v118;
      goto LABEL_77;
    }

    *(&v114 + 1) = v72;
    v115 = v73;
    v116 = v74;
LABEL_75:
    v87 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v113);
    (*(v86 + 32))(v87, v80, v72);
    v88 = *(&v114 + 1);
    v89 = __swift_project_boxed_opaque_existential_1Tm_0(&v113, *(&v114 + 1));
    *(&v118 + 1) = v88;
    v90 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v117);
    (*(*(v88 - 8) + 16))(v90, v89, v88);

    sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);
    __swift_destroy_boxed_opaque_existential_1Tm_1(&v113);
    goto LABEL_76;
  }

  v50 = sub_1975214DC();
  if (v51 < 1)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v52 = *v50;
  if (!swift_conformsToProtocol2() || !v52)
  {
    if (!dynamic_cast_existential_2_conditional(v52))
    {
LABEL_94:
      *&v113 = 0;
      *(&v113 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000039, 0x8000000197524E90);
      v104 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v104);

      goto LABEL_98;
    }

    v57 = dynamic_cast_existential_2_conditional(a2);
    if (!v57)
    {
      *&v113 = 0;
      *(&v113 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197524ED0);
      v105 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v105);

      MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
      MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197524EF0);
      MEMORY[0x19A8DFF80](0xD000000000000025, 0x8000000197524F10);
      v106 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v106);

      goto LABEL_98;
    }

    goto LABEL_68;
  }

  *(&v114 + 1) = a2;
  v115 = v48;
  __swift_allocate_boxed_opaque_existential_2Tm_0(&v113);
  v53 = a3;
  v29 = v112;
  sub_197494698(a2, a1, v111, v53, v112, a2, a5);
  v54 = *(&v114 + 1);
  v55 = __swift_project_boxed_opaque_existential_1Tm_0(&v113, *(&v114 + 1));
  *(&v118 + 1) = v54;
  v56 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v117);
  (*(*(v54 - 8) + 16))(v56, v55, v54);

  sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);
  v119 = v117;
  v120 = v118;
  __swift_destroy_boxed_opaque_existential_1Tm_1(&v113);
LABEL_60:
  v35 = v110;
LABEL_77:
  sub_1973FE14C(&v119, &v113, &qword_1EAF2AF20, &unk_19752F320);
  if (*(&v114 + 1))
  {
    sub_1973FE58C(&v113, &qword_1EAF2AF20, &unk_19752F320);
    v117 = v119;
    v118 = v120;
    if (*(&v120 + 1))
    {
      sub_1974028B8(&v117, &v113);
      swift_dynamicCast();
      return (*(*(v29 - 8) + 56))(v35, 0, 1, v29);
    }

    v92 = &v117;
  }

  else
  {
    sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);
    v92 = &v113;
  }

  sub_1973FE58C(v92, &qword_1EAF2AF20, &unk_19752F320);
  return (*(*(v29 - 8) + 56))(v35, 1, 1, v29);
}

uint64_t sub_1974944E0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_197522B2C();
  v10 = swift_dynamicCastClassUnconditional();
  (*(a3 + 64))(v10, a2, a4, a1, a3);
  v11 = *(*(a2 - 8) + 56);

  return v11(a5, 0, 1, a2);
}

uint64_t sub_1974945E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  sub_197522B2C();
  v12 = swift_dynamicCastClassUnconditional();
  return (*(a7 + 72))(v12, a6, a8, a4, a7);
}

uint64_t sub_197494698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1975214DC();
  if (v14 < 1)
  {
    __break(1u);
  }

  else
  {
    v15 = *v13;
    if (swift_conformsToProtocol2())
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      sub_197494884(v15, a2, a3, a4, a5, a6, v15, a7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      sub_19752234C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
      return swift_dynamicCast();
    }
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0x742064656C696146, 0xEF2074736163206FLL);
  v18 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v18);

  MEMORY[0x19A8DFF80](0xD000000000000023, 0x8000000197524F60);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197494884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  v11 = sub_197521AAC();
  sub_197522B2C();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v14 = *(a8 + 88);

    WitnessTable = swift_getWitnessTable();
    v14(&v17, v13, v11, a7, WitnessTable, a4, a8);

    return v17;
  }

  else
  {
    MEMORY[0x19A8DFF80](0x6961662074736143, 0xEC0000002064656CLL);
    sub_19752202C();
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_197494A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  v9 = sub_197521F5C();
  sub_197522B2C();
  v10 = swift_dynamicCastClassUnconditional();
  v11 = *(a7 + 64);
  WitnessTable = swift_getWitnessTable();
  return v11(v10, v9, WitnessTable, a4, a7);
}

uint64_t sub_197494B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  sub_197521F5C();
  sub_197522B2C();
  v12 = swift_dynamicCastClassUnconditional();
  return (*(a7 + 80))(v12, a6, a8, a4, a7);
}

uint64_t sub_197494C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  v9 = sub_197521F5C();
  sub_197522B2C();
  v10 = swift_dynamicCastClassUnconditional();
  return (*(a7 + 104))(v10, v9, a4, a7);
}

uint64_t sub_197494CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  sub_197521AAC();
  v10 = sub_197521F5C();
  sub_197522B2C();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = *(a7 + 88);

    swift_getWitnessTable();
    WitnessTable = swift_getWitnessTable();
    v13(&v16, v12, v10, a6, WitnessTable, a4, a7);

    return v16;
  }

  else
  {
    MEMORY[0x19A8DFF80](0x6961662074736143, 0xEC0000002064656CLL);
    sub_19752202C();
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_197494EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = sub_1974A280C(a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_197493308(v16, a3, a4, a5, a6, a7);
}

uint64_t sub_197494FA4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_197438DC8(a1, v6 + 32);
  return v6;
}

uint64_t sub_197494FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + 88);
  *&v9 = *(*v3 + 80);
  *(&v9 + 1) = v9;
  v10 = a2;
  v11 = v4;
  v12 = v4;
  v13 = a3;
  type metadata accessor for BackingDataDecoder.BackingDataKeyedDecoding();
  v5 = v3[2];

  v6 = sub_197521A1C();
  sub_19749B32C((v3 + 4), &v9);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_197438DC8(&v9, v7 + 32);
  *&v9 = v7;
  swift_getWitnessTable();
  return sub_19752265C();
}

uint64_t sub_197495114(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_197438DC8(a3, v6 + 32);
  return v6;
}

void sub_19749516C()
{
  v1 = *v0;
  sub_1975221EC();

  v2 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v2);

  sub_1975223EC();
  __break(1u);
}

void sub_197495238()
{
  v1 = *v0;
  sub_1975221EC();

  v2 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v2);

  sub_1975223EC();
  __break(1u);
}

BOOL sub_197495304()
{
  v1 = *v0;
  sub_19749B32C((v0 + 4), v12);
  v2 = v13;
  v3 = v14;
  __swift_project_boxed_opaque_existential_1Tm_0(v12, v13);
  v4 = *(v1 + 96);
  v5 = *(v1 + 120);
  v6 = sub_197522B4C();
  sub_197494EB8(v6, v7, MEMORY[0x1E69E7CA0] + 8, v2, MEMORY[0x1E69E7CA0] + 8, v3, v10);

  v8 = v11 != 0;
  sub_1973FE58C(v10, &qword_1EAF2AF20, &unk_19752F320);
  __swift_destroy_boxed_opaque_existential_1Tm_1(v12);
  return v8;
}

BOOL sub_1974953F0()
{
  v1 = *v0;
  sub_19749B32C((v0 + 4), v12);
  v2 = v13;
  v3 = v14;
  __swift_project_boxed_opaque_existential_1Tm_0(v12, v13);
  v4 = *(v1 + 96);
  v5 = *(v1 + 120);
  v6 = sub_197522B4C();
  sub_197494EB8(v6, v7, MEMORY[0x1E69E7CA0] + 8, v2, MEMORY[0x1E69E7CA0] + 8, v3, v10);

  v8 = v11 == 0;
  sub_1973FE58C(v10, &qword_1EAF2AF20, &unk_19752F320);
  __swift_destroy_boxed_opaque_existential_1Tm_1(v12);
  return v8;
}

uint64_t sub_1974954EC()
{
  v1 = *v0;
  sub_19749B32C((v0 + 4), v10);
  v2 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1Tm_0(v10, v11);
  v4 = *(v1 + 96);
  v5 = *(v1 + 120);
  v6 = sub_197522B4C();
  sub_197494EB8(v6, v7, MEMORY[0x1E69E6370], v2, MEMORY[0x1E69E6370], v3, &v13);

  v9 = v13;
  if (v13 == 2)
  {
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v10);
    return v9 & 1;
  }

  return result;
}

uint64_t sub_1974955D0()
{
  v1 = *v0;
  sub_19749B32C((v0 + 4), v11);
  v2 = v12;
  v3 = v13;
  __swift_project_boxed_opaque_existential_1Tm_0(v11, v12);
  v4 = *(v1 + 96);
  v5 = *(v1 + 120);
  v6 = sub_197522B4C();
  sub_197494EB8(v6, v7, MEMORY[0x1E69E6158], v2, MEMORY[0x1E69E6158], v3, v10);

  if (v10[1])
  {
    v9 = v10[0];
    __swift_destroy_boxed_opaque_existential_1Tm_1(v11);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1974956B8()
{
  v1 = *v0;
  sub_19749B32C((v0 + 4), v11);
  v2 = v12;
  v3 = v13;
  __swift_project_boxed_opaque_existential_1Tm_0(v11, v12);
  v4 = *(v1 + 96);
  v5 = *(v1 + 120);
  v6 = sub_197522B4C();
  sub_197494EB8(v6, v7, MEMORY[0x1E69E63B0], v2, MEMORY[0x1E69E63B0], v3, &v9);

  if ((v10 & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm_1(v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_1974957A4()
{
  v1 = *v0;
  sub_19749B32C((v0 + 4), v11);
  v2 = v12;
  v3 = v13;
  __swift_project_boxed_opaque_existential_1Tm_0(v11, v12);
  v4 = *(v1 + 96);
  v5 = *(v1 + 120);
  v6 = sub_197522B4C();
  sub_197494EB8(v6, v7, MEMORY[0x1E69E6448], v2, MEMORY[0x1E69E6448], v3, &v9);

  if ((v10 & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm_1(v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_197495890(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_19749B32C((v2 + 4), v15);
  v5 = v16;
  v6 = v17;
  __swift_project_boxed_opaque_existential_1Tm_0(v15, v16);
  v7 = *(v4 + 96);
  v8 = *(v4 + 120);
  v9 = sub_197522B4C();
  sub_197494EB8(v9, v10, a2, v5, a2, v6, &v13);

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v12 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm_1(v15);
    return v12;
  }

  return result;
}

uint64_t sub_197495974(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_19749B32C((v2 + 4), v14);
  v5 = v15;
  v6 = v16;
  __swift_project_boxed_opaque_existential_1Tm_0(v14, v15);
  v7 = *(v4 + 96);
  v8 = *(v4 + 120);
  v9 = sub_197522B4C();
  sub_197494EB8(v9, v10, a2, v5, a2, v6, v13);

  if (v13[1])
  {
    __break(1u);
  }

  else
  {
    v12 = v13[0];
    __swift_destroy_boxed_opaque_existential_1Tm_1(v14);
    return v12;
  }

  return result;
}

uint64_t sub_197495A58(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_19749B32C((v2 + 4), v15);
  v5 = v16;
  v6 = v17;
  __swift_project_boxed_opaque_existential_1Tm_0(v15, v16);
  v7 = *(v4 + 96);
  v8 = *(v4 + 120);
  v9 = sub_197522B4C();
  sub_197494EB8(v9, v10, a2, v5, a2, v6, &v13);

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v12 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm_1(v15);
    return v12;
  }

  return result;
}

uint64_t sub_197495B3C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_19749B32C((v2 + 4), v15);
  v5 = v16;
  v6 = v17;
  __swift_project_boxed_opaque_existential_1Tm_0(v15, v16);
  v7 = *(v4 + 96);
  v8 = *(v4 + 120);
  v9 = sub_197522B4C();
  sub_197494EB8(v9, v10, a2, v5, a2, v6, &v13);

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v12 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm_1(v15);
    return v12;
  }

  return result;
}

uint64_t sub_197495C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v20 = a3;
  v6 = *v3;
  v7 = sub_197521F5C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v21[-1] - v10;
  sub_19749B32C((v3 + 4), v21);
  v13 = v22;
  v12 = v23;
  __swift_project_boxed_opaque_existential_1Tm_0(v21, v22);
  v14 = *(v6 + 96);
  v15 = *(v6 + 120);
  v16 = sub_197522B4C();
  sub_197494EB8(v16, v17, a1, v13, a2, v12, v11);

  v18 = *(a2 - 8);
  result = (*(v18 + 48))(v11, 1, a2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v18 + 32))(v20, v11, a2);
    return __swift_destroy_boxed_opaque_existential_1Tm_1(v21);
  }

  return result;
}

uint64_t sub_197495DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v5 = *v4;
  v10 = *(*v4 + 80);
  v11 = a3;
  v12 = *(v5 + 104);
  type metadata accessor for BackingDataDecoder.BackingDataKeyedDecoding();
  v6 = v4[2];

  v7 = sub_197521A1C();
  sub_19749B32C((v4 + 4), &v10);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  sub_197438DC8(&v10, v8 + 32);
  *&v10 = v8;
  swift_getWitnessTable();
  return sub_19752265C();
}

void sub_197495ED4()
{
  v1 = *v0;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000025, 0x8000000197524E10);
  sub_1975227FC();
  sub_1975223EC();
  __break(1u);
}

uint64_t sub_197495FA0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 96);
  v5 = sub_197521F5C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v13 - v8;
  v10 = *(v3 + 120);
  sub_197522B5C();
  v11 = *(v4 - 8);
  result = (*(v11 + 48))(v9, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_197496100(a1);
    return (*(v11 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_197496100@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 112);
  v5 = type metadata accessor for BackingDataDecoder();
  sub_19749B32C((v1 + 4), v10);
  v6 = v1[2];

  v7 = sub_197441730(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  sub_197438DC8(v10, v8 + 32);
  a1[3] = v5;
  result = swift_getWitnessTable();
  a1[4] = result;
  *a1 = v8;
  return result;
}

void *sub_1974961EC()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 4);
  return v0;
}

uint64_t sub_19749621C()
{
  sub_1974961EC();

  return swift_deallocClassInstance();
}

uint64_t sub_19749656C()
{
  result = sub_1975228BC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1974965BC()
{
  result = sub_1975228CC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_197496664()
{
  result = sub_1975228FC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1974966B4()
{
  result = sub_1975228DC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1974967F4()
{
  result = sub_19752290C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_197496844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

void *sub_19749692C()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 4);
  return v0;
}

uint64_t sub_19749695C()
{
  sub_19749692C();

  return swift_deallocClassInstance();
}

uint64_t sub_197496AD4()
{
  v1 = *v0;
  sub_197499D5C(v0[9], v0[2], v0[3]);

  v3 = *(v1 + 80);
  v4 = *(v1 + 96);
  type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding();
  swift_getWitnessTable();
  return sub_19752279C();
}

void *sub_197496CA0()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 4);
  v3 = v0[9];

  return v0;
}

uint64_t sub_197496CD8()
{
  sub_197496CA0();

  return swift_deallocClassInstance();
}

uint64_t sub_197496D7C()
{
  v1 = *v0;
  sub_19749B32C(v0[4] + 32, v10);
  v2 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1Tm_0(v10, v11);
  v4 = *(v1 + 112);
  v5 = *(v1 + 152);
  v6 = sub_197522B4C();
  memset(v9, 0, sizeof(v9));
  sub_19748F0AC(v6, v7, v9, v2, v3);

  sub_1973FE58C(v9, &qword_1EAF2AF20, &unk_19752F320);
  return __swift_destroy_boxed_opaque_existential_1Tm_1(v10);
}

uint64_t sub_197496E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = a2;
  v4[0] = a1;
  return sub_197498390(v4, a3, MEMORY[0x1E69E6158]);
}

uint64_t sub_19749718C(ValueMetadata *a1, uint64_t a2, ValueMetadata *a3)
{
  v5 = v3;
  v8 = *v5;
  v153 = a1;
  v154 = v8;
  Description = a3[-1].Description;
  v10 = Description[8];
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = (&v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v144 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v144 - v19;
  v22 = *(v21 + 112);
  v151 = *(v21 + 152);
  v152 = v22;
  if (sub_197522B4C() == 0xD000000000000014 && 0x8000000197524BA0 == v23)
  {
  }

  v150 = a2;
  v25 = sub_19752282C();

  if (v25)
  {
    return result;
  }

  v149 = v4;
  sub_19749B32C(v5[4] + 32, &v157);
  v27 = v154;
  v28 = *(v154 + 96);
  v161 = v28;
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  v30 = *(v27 + 80);
  v31 = *(v27 + 120);
  type metadata accessor for _StitchedBackingData();
  v148 = ExtendedExistentialTypeMetadata;
  if (swift_dynamicCast())
  {
    v32 = v155[2];

    v33 = sub_197522B4C();
    v35 = v34;
    v160 = a3;
    boxed_opaque_existential_2Tm_0 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v157);
    (Description[2])(boxed_opaque_existential_2Tm_0, v153, a3);
    sub_197511DB4(&v157, v33, v35);
LABEL_8:
  }

  v146 = v28;
  v147 = v5;
  v157 = a3;
  v37 = &protocol descriptor for _Optional;
  if (swift_conformsToProtocol2())
  {
    v38 = a3;
    do
    {
      sub_1973F732C(v38, &v157);
      v38 = v157;
      if (swift_conformsToProtocol2())
      {
        v39 = v38 == 0;
      }

      else
      {
        v39 = 1;
      }
    }

    while (!v39);
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
  v41 = sub_1975214EC();
  v145 = v40;
  v42 = sub_1975214EC();
  if (!v41)
  {
    if (!v42)
    {
      goto LABEL_21;
    }

LABEL_29:
    v50 = swift_dynamicCastMetatype();
    v51 = v147;
    if (v50)
    {
      v52 = Description[2];
      Description += 2;
      v52(v17, v153, a3);
      v13 = &type metadata for PersistentIdentifier;
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        return result;
      }

      v53 = v157;
      v37 = v158;
      if (v158)
      {
        if (v158 == 1)
        {
          v54 = *(v157 + 72);
          v55 = *(v157 + 80);
        }

        else
        {
          v54 = sub_19750A588();
          v55 = v83;
        }
      }

      else
      {
        v81 = [v157 entityName];
        v54 = sub_1975217BC();
        v55 = v82;
      }

      v84 = *(v51[4] + 24);
      if (*(v84 + 16))
      {
        v85 = *(v84 + 16);
      }

      else
      {
        Strong = swift_weakLoadStrong();
        if (!Strong)
        {
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v85 = Strong;
      }

      v87 = *(v85 + 16);

      v88 = *(v87 + 72);

      if (*(v88 + 16))
      {
        sub_1973F4028(v54, v55);
        if (v89)
        {

          sub_19749B32C(v51[4] + 32, &v157);
          v90 = *(v154 + 136);
          type metadata accessor for _KKMDBackingData();
          if (swift_dynamicCast())
          {
            if (*(v155 + 48) == 1)
            {
              v91 = v155[2];

              v92 = sub_197522B4C();
              v94 = v93;
              v160 = &type metadata for PersistentIdentifier;
              v157 = v53;
              LOBYTE(v158) = v37;
              sub_1974028EC(v53, v37);
              sub_197511DB4(&v157, v92, v94);
              sub_1974028C8(v53, v37);
              goto LABEL_8;
            }
          }

          v102 = v51[4];
          v103 = *(v102 + 72);
          v104 = *(v102 + 80);

          sub_1974028EC(v103, v104);
          v105 = sub_197522B4C();
          v107 = sub_1974A280C(v105, v106, v146, v90);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3C0, &qword_19752D580);
          v108 = swift_allocObject();
          *(v108 + 16) = xmmword_19752C280;
          *(v108 + 32) = v53;
          *(v108 + 40) = v37;
          type metadata accessor for BackingDataEncodingRelationshipLink();
          v109 = swift_allocObject();
          *(v109 + 16) = v103;
          *(v109 + 24) = v104;
          *(v109 + 32) = v107;
          *(v109 + 40) = v108;
          sub_1974028EC(v53, v37);
          sub_197499498(v109);
          sub_1974028C8(v53, v37);
          goto LABEL_8;
        }
      }

      v157 = 0;
      v158 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x8000000197525390);
      MEMORY[0x19A8DFF80](v54, v55);
      MEMORY[0x19A8DFF80](0xD000000000000011, 0x80000001975253B0);
      v155 = v53;
      LOBYTE(v156) = v37;
      sub_19752235C();
      goto LABEL_117;
    }

    if (swift_dynamicCastMetatype())
    {
      (Description[2])(v13, v153, a3);
      if (swift_dynamicCast())
      {
        v56 = v157;
        v57 = v158;
        v58 = v159;
        sub_19749B32C(v51[4] + 32, &v157);
        v59 = *(v154 + 136);
        type metadata accessor for _KKMDBackingData();
        if (swift_dynamicCast())
        {
          v60 = v155[2];

          v61 = sub_197522B4C();
          v160 = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
          v157 = v56;
          v158 = v57;
          v159 = v58;
          sub_197511DB4(&v157, v61, v62);
        }

        v157 = 0;
        v158 = 0xE000000000000000;
        sub_1975221EC();
        v155 = v157;
        v156 = v158;
        MEMORY[0x19A8DFF80](0xD000000000000043, 0x8000000197525340);
        sub_19749B32C(v51[4] + 32, &v157);
        sub_1975227FC();
        __swift_destroy_boxed_opaque_existential_1Tm_1(&v157);
      }

      else
      {
        v157 = 0;
        v158 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197525310);
        sub_1975227FC();
      }

      goto LABEL_117;
    }

    v63 = v153;
    return sub_197498390(v63, v150, a3);
  }

  if (!v42 || v41 != v42)
  {
    goto LABEL_29;
  }

LABEL_21:
  v43 = sub_1975214DC();
  v44 = v147;
  if (v45 < 1)
  {
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v46 = *v43;
  v47 = swift_dynamicCastMetatype();
  v13 = v153;
  if (!v47)
  {
    v63 = v153;
    return sub_197498390(v63, v150, a3);
  }

  (Description[2])(v20, v153, a3);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
  if (!swift_dynamicCast())
  {
    v157 = 0;
    v158 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x80000001975253D0);
    sub_1975227FC();
    goto LABEL_117;
  }

  Description = v157;
  if (!*(v157 + 16))
  {
    v64 = *(v44[4] + 24);
    if (*(v64 + 16))
    {
      v65 = *(v64 + 16);
    }

    else
    {
      v110 = swift_weakLoadStrong();
      if (!v110)
      {
LABEL_104:
        __break(1u);
LABEL_105:

        v157 = 0;
        v158 = 0xE000000000000000;
        sub_1975221EC();

        v157 = 0xD00000000000001DLL;
        v158 = 0x8000000197525390;
        MEMORY[0x19A8DFF80](v37, v13);
        MEMORY[0x19A8DFF80](0xD000000000000011, 0x80000001975253B0);
        v140 = MEMORY[0x19A8E0100](Description, &type metadata for PersistentIdentifier);
        MEMORY[0x19A8DFF80](v140);

LABEL_117:
        result = sub_1975223EC();
        __break(1u);
        return result;
      }

      v65 = v110;
    }

    v111 = *(v65 + 16);

    v112 = *(v111 + 72);

    v113 = *(v154 + 136);
    v114 = sub_1973F7AAC();
    if (*(v112 + 16))
    {
      v116 = sub_1973F4028(v114, v115);
      v118 = v117;

      if (v118)
      {
        v119 = *(*(v112 + 56) + 8 * v116);

        v120 = sub_197522B4C();
        v122 = v121;
        swift_beginAccess();
        v123 = *(v119 + 104);
        if (*(v123 + 16))
        {
          v124 = sub_1973F4028(v120, v122);
          v126 = v125;

          if (v126)
          {
            v127 = *(*(v123 + 56) + 8 * v124);
            swift_endAccess();
            swift_beginAccess();
            v128 = *(v127 + 48);
            if (v128)
            {
              v129 = *v128;

              if (sub_197521FFC() != v146)
              {
                v155 = 0;
                v156 = 0xE000000000000000;
                sub_1975221EC();
                MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197525450);
                v143 = sub_197522B8C();
                MEMORY[0x19A8DFF80](v143);

                MEMORY[0x19A8DFF80](0x74796E61206F7420, 0xEF202D20676E6968);
                v161 = v128;
                sub_19752202C();
                sub_19752235C();
                goto LABEL_117;
              }

              sub_197521FFC();
              v131 = v130;
              v155 = v130;
              if (swift_conformsToProtocol2())
              {
                v132 = v131 == 0;
              }

              else
              {
                v132 = 1;
              }

              if (v132)
              {
                v13 = v145;
              }

              else
              {
                v13 = v145;
                do
                {
                  sub_1973F732C(v131, &v155);
                  v131 = v155;
                  if (swift_conformsToProtocol2())
                  {
                    v133 = v131 == 0;
                  }

                  else
                  {
                    v133 = 1;
                  }
                }

                while (!v133);
              }

              v37 = sub_1975214EC();
              v134 = sub_1975214EC();
              if (v37)
              {
                if (v134 && v37 == v134)
                {
LABEL_92:
                  v135 = sub_1975214DC();
                  if (v136 >= 1)
                  {
                    v137 = *v135;
                    if (swift_conformsToProtocol2())
                    {
                      v138 = v137 == 0;
                    }

                    else
                    {
                      v138 = 1;
                    }

                    if (!v138)
                    {

                      v155 = sub_1975215CC();
                      v139 = sub_197521AAC();
                      sub_197498390(&v155, v150, v139);

                      goto LABEL_8;
                    }

                    v155 = 0;
                    v156 = 0xE000000000000000;
                    sub_1975221EC();
                    MEMORY[0x19A8DFF80](0xD000000000000020, 0x8000000197525480);
                    v161 = v128;
                    sub_19752202C();
                    sub_19752235C();
                    goto LABEL_117;
                  }

                  goto LABEL_101;
                }
              }

              else if (!v134)
              {
                goto LABEL_92;
              }
            }

LABEL_114:
            v155 = 0;
            v156 = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD000000000000022, 0x8000000197525420);
            v142 = *(v151 + 16);
            sub_19752280C();
            MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
            v161 = v119;
            type metadata accessor for Schema.Entity();
            sub_19752235C();
            goto LABEL_117;
          }
        }

        else
        {
        }

        swift_endAccess();
        goto LABEL_114;
      }
    }

    else
    {
    }

    v157 = 0;
    v158 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197525400);
    v141 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v141);

    MEMORY[0x19A8DFF80](544106784, 0xE400000000000000);
    v155 = *(v44[4] + 24);
    type metadata accessor for ModelContext(0);
    sub_19752235C();
    goto LABEL_117;
  }

  v49 = *(v157 + 32);
  if (*(v157 + 40))
  {
    if (*(v157 + 40) == 1)
    {
      v37 = v49[9];
      v13 = v49[10];

      goto LABEL_46;
    }

    sub_1974028EC(*(v157 + 32), 2);
    v37 = sub_19750A588();
    v13 = v70;
    v68 = v49;
    v69 = 2;
  }

  else
  {
    sub_1974028EC(*(v157 + 32), 0);
    v66 = [v49 entityName];
    v37 = sub_1975217BC();
    v13 = v67;

    v68 = v49;
    v69 = 0;
  }

  sub_1974028C8(v68, v69);
LABEL_46:
  v71 = *(v44[4] + 24);
  if (!*(v71 + 16))
  {
    v73 = swift_weakLoadStrong();
    if (v73)
    {
      v72 = v73;
      goto LABEL_50;
    }

    goto LABEL_102;
  }

  v72 = *(v71 + 16);
LABEL_50:
  v74 = *(v72 + 16);

  v75 = *(v74 + 72);

  if (!*(v75 + 16))
  {
    goto LABEL_105;
  }

  sub_1973F4028(v37, v13);
  if ((v76 & 1) == 0)
  {
    goto LABEL_105;
  }

  sub_19749B32C(v44[4] + 32, &v157);
  v77 = *(v154 + 136);
  type metadata accessor for _KKMDBackingData();
  if (swift_dynamicCast())
  {
    if (*(v155 + 48) == 1)
    {
      v78 = v155[2];

      v79 = sub_197522B4C();
      v160 = v48;
      v157 = Description;
      sub_197511DB4(&v157, v79, v80);
    }
  }

  v95 = v44[4];
  v96 = *(v95 + 72);
  v97 = *(v95 + 80);

  sub_1974028EC(v96, v97);
  v98 = sub_197522B4C();
  v100 = sub_1974A280C(v98, v99, v146, v77);

  type metadata accessor for BackingDataEncodingRelationshipLink();
  v101 = swift_allocObject();
  *(v101 + 16) = v96;
  *(v101 + 24) = v97;
  *(v101 + 32) = v100;
  *(v101 + 40) = Description;
  sub_197499498(v101);
}

uint64_t sub_197498390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_19749B32C(v3[4] + 32, v17);
  v7 = v18;
  v8 = v19;
  __swift_project_boxed_opaque_existential_1Tm_0(v17, v18);
  v9 = *(v6 + 112);
  v10 = *(v6 + 152);
  v11 = sub_197522B4C();
  v13 = v12;
  v16[3] = a3;
  boxed_opaque_existential_2Tm_0 = __swift_allocate_boxed_opaque_existential_2Tm_0(v16);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_2Tm_0, a1, a3);
  sub_19748F0AC(v11, v13, v16, v7, v8);

  sub_1973FE58C(v16, &qword_1EAF2AF20, &unk_19752F320);
  return __swift_destroy_boxed_opaque_existential_1Tm_1(v17);
}

void sub_197498518()
{
  v1 = *v0;
  sub_1975221EC();
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding();
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x8000000197524FE0);
  sub_1975223EC();
  __break(1u);
}

uint64_t sub_197498604@<X0>(uint64_t **a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 112);
  v5 = sub_197521F5C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v13 - v8;
  v10 = *(v3 + 152);
  sub_197522B5C();
  v11 = *(v4 - 8);
  result = (*(v11 + 48))(v9, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_197498748(a1);
    return (*(v11 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_197498748@<X0>(uint64_t **a1@<X8>)
{
  v3 = *(*v1 + 136);
  v13[0] = *(*v1 + 96);
  v13[1] = v3;
  v4 = type metadata accessor for BackingDataEncoder();
  v5 = v1[4];
  sub_19749B32C(v5 + 32, v13);
  v8 = v5 + 16;
  v7 = *(v5 + 16);
  v6 = *(v8 + 8);
  v10 = v1[2];
  v9 = v1[3];

  v11 = sub_19749A79C(v13, v6, v7, v10, v9);

  __swift_destroy_boxed_opaque_existential_1Tm_1(v13);
  a1[3] = v4;
  result = swift_getWitnessTable();
  a1[4] = result;
  *a1 = v11;
  return result;
}

void *sub_197498858()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_197498888()
{
  sub_197498858();

  return swift_deallocClassInstance();
}

uint64_t sub_1974988D4(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 128);
  type metadata accessor for FetchDescriptor();
  result = sub_197521F5C();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_197498C1C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = a4[5];
  v14 = a4[6];
  v15 = a4[7];
  v16 = a4[8];
  v17 = a4[9];
  v11 = type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding();
  return a6(a1, a2, a3, v11, a5);
}

uint64_t sub_197498CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v6 = a5[5];
  v7 = a5[6];
  v8 = a5[7];
  v9 = a5[8];
  v10 = a5[9];
  type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding();
  return sub_19752296C();
}

uint64_t sub_197498D60(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = a3[5];
  v5 = a3[6];
  v6 = a3[7];
  v7 = a3[8];
  v8 = a3[9];
  type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding();
  return sub_19752294C();
}

uint64_t sub_197498DD8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = a4[5];
  v6 = a4[6];
  v7 = a4[7];
  v8 = a4[8];
  v9 = a4[9];
  type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding();
  return sub_19752293C();
}

uint64_t sub_197499018(__int16 a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a3[5];
  v12 = a3[6];
  v13 = a3[7];
  v14 = a3[8];
  v15 = a3[9];
  v9 = type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding();
  return a5(a1 & 0x1FF, a2, v9, a4);
}

uint64_t sub_1974990CC(int a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a3[5];
  v12 = a3[6];
  v13 = a3[7];
  v14 = a3[8];
  v15 = a3[9];
  v9 = type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding();
  return a5(a1 & 0x1FFFF, a2, v9, a4);
}

uint64_t sub_197499180(unint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = a3[5];
  v12 = a3[6];
  v13 = a3[7];
  v14 = a3[8];
  v15 = a3[9];
  v9 = type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding();
  return a5(a1 | ((HIDWORD(a1) & 1) << 32), a2, v9, a4);
}

uint64_t sub_19749923C(uint64_t a1, char a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v13 = a4[5];
  v14 = a4[6];
  v15 = a4[7];
  v16 = a4[8];
  v17 = a4[9];
  v11 = type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding();
  return a6(a1, a2 & 1, a3, v11, a5);
}

uint64_t sub_1974992F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v15 = a5[5];
  v16 = a5[6];
  v17 = a5[7];
  v18 = a5[8];
  v19 = a5[9];
  v13 = type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding();
  return a7(a1, a2, a3 & 1, a4, v13, a6);
}

uint64_t sub_197499398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v6 = a5[5];
  v7 = a5[6];
  v8 = a5[7];
  v9 = a5[8];
  v10 = a5[9];
  type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding();
  return sub_19752295C();
}

uint64_t sub_197499498(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 96);
  v6 = *(v4 + 128);
  Descriptor = type metadata accessor for FetchDescriptor();
  v8 = sub_197521F5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v38[-v13];
  v15 = *(Descriptor - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12, v17);
  v19 = &v38[-v18];
  (*(v9 + 16))(v14, v2 + *(v4 + 176), v8);
  if ((*(v15 + 48))(v14, 1, Descriptor) == 1)
  {
    return (*(v9 + 8))(v14, v8);
  }

  (*(v15 + 32))(v19, v14, Descriptor);
  v21 = *(a1 + 32);
  sub_19752228C();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    return (*(v15 + 8))(v19, Descriptor);
  }

  v42 = *&v19[*(Descriptor + 56)];
  v41 = v22;
  sub_197521AAC();

  swift_getWitnessTable();
  if ((sub_19752197C() & 1) == 0)
  {
    (*(v15 + 8))(v19, Descriptor);
  }

  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  v25 = *(*v2 + 184);
  swift_beginAccess();
  v26 = *(v2 + v25);
  if (!*(v26 + 16))
  {
    goto LABEL_10;
  }

  sub_1974028EC(v23, v24);

  v27 = sub_197403C30(v23, v24);
  if ((v28 & 1) == 0)
  {

    sub_1974028C8(v23, v24);
LABEL_10:
    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v29 = *(v26 + 56);
  v39 = v24;
  v30 = *(v29 + 8 * v27);

  sub_1974028C8(v23, v39);

LABEL_11:
  v43 = v30;

  MEMORY[0x19A8E00D0](v31);
  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v37 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1975219FC();
  }

  sub_197521A4C();
  v32 = v43;
  v33 = *(a1 + 16);
  v34 = *(a1 + 24);
  swift_beginAccess();
  sub_1974028EC(v33, v34);
  v35 = *(v2 + v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v2 + v25);
  *(v2 + v25) = 0x8000000000000000;
  sub_19747CCF0(v32, v33, v34, isUniquelyReferenced_nonNull_native);
  sub_1974028C8(v33, v34);
  *(v2 + v25) = v40;
  swift_endAccess();

  return (*(v15 + 8))(v19, Descriptor);
}

uint64_t *sub_1974998D8()
{
  v1 = *v0;
  v2 = v0[2];

  v3 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 4);
  sub_1974028C8(v0[9], *(v0 + 80));
  v4 = *(*v0 + 176);
  v5 = *(v1 + 96);
  v6 = *(v1 + 128);
  type metadata accessor for FetchDescriptor();
  v7 = sub_197521F5C();
  (*(*(v7 - 8) + 8))(v0 + v4, v7);
  v8 = *(v0 + *(*v0 + 184));

  return v0;
}

uint64_t sub_1974999C4()
{
  sub_1974998D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_197499A78()
{
  sub_1974028C8(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_197499AFC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_197499B38(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x19A8E0830](a1, a2, v7);
      sub_197438EA8(0, &qword_1ED7C9360, 0x1E695D620);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_197438EA8(0, &qword_1ED7C9360, 0x1E695D620);
    if (sub_1975220CC() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1975220DC();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_197521F2C();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_197521F3C();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

void *sub_197499D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 96);
  v9 = *(*a1 + 112);
  v10 = *(*a1 + 128);
  type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding();
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a1;
  return result;
}

uint64_t sub_197499DF4()
{
  v1 = sub_197487350();
  v2 = *(v0 + 16);
  *&v7 = v1;
  *(&v7 + 1) = v3;

  v4 = [v2 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v4)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v6, &v7);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197499EDC()
{
  v1 = sub_197487350();
  v2 = *(v0 + 16);
  *&v7 = v1;
  *(&v7 + 1) = v3;

  v4 = [v2 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v4)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v6, &v7);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197499FC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 48) = MEMORY[0x1E69E7CD0];
  v6 = v4 + 48;
  *(v6 - 8) = a1;
  *(v6 - 32) = a2;
  *(v6 - 24) = a3;
  v7 = a1;

  v8 = [v7 allKeys];
  v9 = sub_1975219CC();

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v9 + 32;
    while (v11 < *(v9 + 16))
    {
      sub_197404860(v12, v18);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_8;
      }

      ++v11;
      v13 = v17[0];
      v14 = v17[1];
      swift_beginAccess();
      sub_197414EA0(v17, v13, v14);
      swift_endAccess();

      v12 += 32;
      if (v10 == v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
LABEL_6:

    *(v5 + 32) = a4;
    return v5;
  }

  return result;
}

uint64_t sub_19749A170(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 80);
  v10 = *(v4 + 88);
  type metadata accessor for CompositeKeyedDecoding();
  swift_allocObject();
  return sub_197499FC4(a1, a2, a3, a4);
}

uint64_t sub_19749A1DC(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v10 = *a3;
  v11 = *(a3 + 8);
  *(v6 + 56) = MEMORY[0x1E69E7CD0];
  *(v6 + 64) = v10;
  *(v6 + 72) = v11;
  *(v6 + 32) = a2;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a6;
  swift_beginAccess();
  v12 = *(a2 + 64);
  swift_beginAccess();
  v13 = *(a2 + 72);
  v25[0] = v12;
  v14 = a1;

  sub_1974EE570(v15);

  sub_1974EEA08(v25);

  v16 = v25[0][2];
  if (v16)
  {
    v17 = v25[0] + 4;
    do
    {
      sub_19749B32C(v17, v25);
      v18 = v26;
      v19 = v27;
      __swift_project_boxed_opaque_existential_1Tm_0(v25, v26);
      v20 = (*(v19 + 32))(v18, v19);
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1Tm_1(v25);
      swift_beginAccess();
      sub_197414EA0(&v24, v20, v22);
      swift_endAccess();

      v17 += 5;
      --v16;
    }

    while (v16);
  }

  return v7;
}

uint64_t sub_19749A398(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 80);
  v15 = *(v6 + 96);
  type metadata accessor for ManagedObjectKeyedDecoding();
  swift_allocObject();
  return sub_19749A1DC(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_19749A42C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(*v5 + 176);
  v11 = *(*v5 + 128);
  v18 = *(*v5 + 96);
  Descriptor = type metadata accessor for FetchDescriptor();
  (*(*(Descriptor - 8) + 56))(v5 + v10, 1, 1, Descriptor);
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + *(*v5 + 184)) = a4;
  sub_19749B32C(a1, v5 + 32);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_0(a1, v13);
  v15 = *(v14 + 32);

  v15(&v19, v13, v14);
  v16 = v20;
  if (v20 == 255)
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000040, 0x8000000197524F90);
    swift_getExtendedExistentialTypeMetadata();
    sub_1975227FC();
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
    *(v5 + 72) = v19;
    *(v5 + 80) = v16;
    return v5;
  }

  return result;
}

uint64_t sub_19749A644(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = v4[5];
  v14 = v4[6];
  v15 = v4[7];
  v16 = v4[8];
  v9 = type metadata accessor for BackingDataEncoder.BackingDataEncodingContext();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  return sub_19749A42C(a1, a2, a3, a4);
}

uint64_t *sub_19749A6C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *v6;
  *(v6 + 80) = 0;
  v6[2] = a4;
  v6[3] = a5;
  v11 = v10;
  sub_19749B32C(a1, (v6 + 4));
  v15 = *(v11 + 80);
  v16 = *(v11 + 96);
  type metadata accessor for BackingDataEncoder.BackingDataEncodingContext();
  v12 = sub_1974BFAC4(MEMORY[0x1E69E7CC0]);
  v13 = sub_19749A644(a1, a3, a2, v12);

  v6[9] = v13;
  return v6;
}

uint64_t *sub_19749A79C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 80);
  v13 = *(v5 + 96);
  type metadata accessor for BackingDataEncoder();
  swift_allocObject();
  return sub_19749A6C8(a1, a2, a3, a4, a5);
}

uint64_t sub_19749A820()
{
  v1 = sub_197487350();
  v2 = *(v0 + 16);
  *&v7 = v1;
  *(&v7 + 1) = v3;

  v4 = [v2 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v4)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v6, &v7);
    swift_dynamicCast();
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19749A908()
{
  v1 = sub_197487350();
  v2 = *(v0 + 16);
  *&v8 = v1;
  *(&v8 + 1) = v3;

  v4 = [v2 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v4)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    swift_dynamicCast();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19749A9F0()
{
  v1 = sub_197487350();
  v2 = *(v0 + 16);
  *&v8 = v1;
  *(&v8 + 1) = v3;

  v4 = [v2 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v4)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    swift_dynamicCast();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19749AAD8()
{
  v1 = sub_197487350();
  v2 = *(v0 + 16);
  *&v8 = v1;
  *(&v8 + 1) = v3;

  v4 = [v2 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v4)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    swift_dynamicCast();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19749ABC0()
{
  v1 = sub_197487350();
  v2 = *(v0 + 16);
  *&v8 = v1;
  *(&v8 + 1) = v3;

  v4 = [v2 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v4)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    swift_dynamicCast();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19749ACA8()
{
  v1 = sub_197487350();
  v2 = *(v0 + 16);
  *&v8 = v1;
  *(&v8 + 1) = v3;

  v4 = [v2 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v4)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    swift_dynamicCast();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19749AD90(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = sub_197441730(v7);
  *(v3 + 32) = a1;
  *(v3 + 40) = a3;
  *(v3 + 48) = a2;
  v8 = a1;

  *(v3 + 56) = [v8 objectID];
  *(v3 + 64) = 0;
  v9 = [*(v3 + 32) entity];
  v10 = [v9 relationshipsByName];

  sub_197438EA8(0, &qword_1ED7C9350, 0x1E695D6E8);
  v11 = sub_1975215FC();

  *(v3 + 72) = sub_1974EE374(v11);
  return v3;
}

uint64_t sub_19749AE94(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  type metadata accessor for ManagedObjectDecoder();
  swift_allocObject();
  return sub_19749AD90(a1, a2, a3);
}

uint64_t sub_19749AEF0()
{
  sub_197521F5C();
  sub_197522B2C();
  result = swift_dynamicCastClass();
  if (!result)
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000019, 0x8000000197525240);
    v1 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v1);

    MEMORY[0x19A8DFF80](8236, 0xE200000000000000);
    v2 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v2);

    MEMORY[0x19A8DFF80](0xD000000000000011, 0x8000000197525260);
    sub_19752202C();
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19749B068()
{
  sub_197522B2C();
  result = swift_dynamicCastClass();
  if (!result)
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000019, 0x8000000197525240);
    v1 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v1);

    MEMORY[0x19A8DFF80](8236, 0xE200000000000000);
    v2 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v2);

    MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197525280);
    sub_19752202C();
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

id sub_19749B1D8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*(v2 + 32) + 24);
  sub_197487DF0(*a1);
  result = [v4 objectID];
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_19749B23C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_19749B248(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *a1;
  v5 = a1[1];

  return sub_197522B5C();
}

unint64_t sub_19749B2B0()
{
  result = qword_1EAF2B5C0;
  if (!qword_1EAF2B5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2B5B8, &qword_19752EA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B5C0);
  }

  return result;
}

_OWORD *sub_19749B314(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_19749B32C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_19749B390(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];

  return sub_197522B5C();
}

uint64_t sub_19749B3F4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19749B4B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1[1] == 1;
  }

  if (v7)
  {
    sub_197448384(a1, &qword_1EAF2B660, qword_19752F190);
    v11 = *v3;
    v12 = sub_1973F7ADC(a2, a3);
    if (v13)
    {
      v14 = v12;
      v15 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      v19 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1974795F4();
        v17 = v19;
      }

      sub_197480ED0(*(v17 + 56) + 16 * v14, &v20);
      sub_19749F6CC(v14, v17);
      *v4 = v17;
    }

    else
    {
      v20 = xmmword_19752EA60;
    }

    return sub_197448384(&v20, &qword_1EAF2B660, qword_19752F190);
  }

  else
  {
    sub_197480ED0(a1, &v20);
    v8 = *v3;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_19747C374(&v20, a2, a3, v9);
    *v3 = v18;
  }

  return result;
}

uint64_t sub_19749B5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1974028A0(a1, v19);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    v8 = v20;
    v9 = v21;
    v10 = v22;
    v11 = __swift_mutable_project_boxed_opaque_existential_2(v19, v20);
    v12 = *(*(v8 - 8) + 64);
    MEMORY[0x1EEE9AC00](v11, v11);
    v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14);
    sub_19743B06C(v14, a2, a3, isUniquelyReferenced_nonNull_native, &v18, v8, v9, v10);
    __swift_destroy_boxed_opaque_existential_1Tm_2(v19);

    *v3 = v18;
  }

  else
  {
    sub_197448384(a1, &qword_1EAF2B5E8, &qword_19752EA40);
    sub_19749F3EC(a2, a3, v19);

    return sub_197448384(v19, &qword_1EAF2B5E8, &qword_19752EA40);
  }

  return result;
}

void sub_19749B7C4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, void *, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    sub_1974028C8(a2, a3);
    *v5 = v22;
  }

  else
  {
    v14 = *v5;
    v15 = sub_197403C30(a2, a3);
    if (v16)
    {
      v17 = v15;
      v18 = *v6;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v6;
      v23 = *v6;
      if (!v19)
      {
        a5();
        v20 = v23;
      }

      sub_1974028C8(*(*(v20 + 48) + 16 * v17), *(*(v20 + 48) + 16 * v17 + 8));
      v21 = *(*(v20 + 56) + 8 * v17);

      sub_19749FDE8(v17, v20);
      sub_1974028C8(a2, a3);
      *v6 = v20;
    }

    else
    {

      sub_1974028C8(a2, a3);
    }
  }
}

uint64_t sub_19749B95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v29 - v11;
  v13 = sub_1975213EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v13) == 1)
  {
    sub_197448384(a1, &qword_1EAF2B658, &unk_19752F180);
    v19 = *v4;
    v20 = sub_1973F7ADC(a2, a3);
    if (v21)
    {
      v22 = v20;
      v23 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v4;
      v30 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_19747B898();
        v25 = v30;
      }

      (*(v14 + 32))(v12, *(v25 + 56) + *(v14 + 72) * v22, v13);
      sub_1974A02EC(v22, v25);
      *v4 = v25;
      (*(v14 + 56))(v12, 0, 1, v13);
    }

    else
    {
      (*(v14 + 56))(v12, 1, 1, v13);
    }

    return sub_197448384(v12, &qword_1EAF2B658, &unk_19752F180);
  }

  else
  {
    (*(v14 + 32))(v18, a1, v13);
    v26 = *v4;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v4;
    result = sub_19747CD18(v18, a2, a3, v27);
    *v4 = v30;
  }

  return result;
}

void *DataStoreSaveChangesResult.__allocating_init(for:remappedIdentifiers:snapshotsToReregister:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a1;
  result[4] = a2;
  result[5] = a4;
  return result;
}

uint64_t sub_19749BC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_197521F5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v24[-v11 - 8];
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10, v15);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_197413B90(a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B170, &qword_19752D118);
  v18 = swift_dynamicCast();
  v19 = *(v13 + 56);
  if (v18)
  {
    v19(v12, 0, 1, a2);
    (*(v13 + 32))(v17, v12, a2);
    v20 = *(*(a3 + 8) + 8);
    v21 = sub_19752173C();
    (*(v13 + 8))(v17, a2);
  }

  else
  {
    v19(v12, 1, 1, a2);
    (*(v7 + 8))(v12, v6);
    v21 = 0;
  }

  return v21 & 1;
}

unint64_t DataStoreSnapshotCodingKey.stringValue.getter()
{
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else
  {
    v1 = 0xD000000000000014;
  }

  return v1;
}

uint64_t DataStore.fetchCount<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21[2] = a3;
  v21[3] = AssociatedTypeWitness;
  v21[4] = a5;
  v21[5] = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for DataStoreFetchResult();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v21 - v15;
  v17 = v21[7];
  (*(a4 + 80))(a1, a3, a5, a2, a4);
  if (!v17)
  {
    v18 = *&v16[*(v11 + 52)];
    v19 = *(v12 + 8);

    v19(v16, v11);
    AssociatedTypeWitness = sub_197521A5C();
  }

  return AssociatedTypeWitness;
}

uint64_t DataStore.fetchIdentifiers<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for DataStoreFetchResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v27 - v14;
  v16 = v33;
  (*(a4 + 80))(a1, v29, a5, a2, a4);
  if (!v16)
  {
    v17 = *&v15[*(v10 + 52)];
    v18 = *(v11 + 8);
    v28 = a5;
    v19 = v17;

    v20 = v18(v15, v10);
    v33 = &v27;
    v29 = v19;
    MEMORY[0x1EEE9AC00](v20, v21);
    *(&v27 - 4) = a2;
    *(&v27 - 3) = a3;
    v22 = v28;
    *(&v27 - 2) = a4;
    *(&v27 - 1) = v22;
    v23 = sub_197521AAC();
    WitnessTable = swift_getWitnessTable();
    v11 = sub_1974048EC(sub_1974A0B48, (&v27 - 6), v23, &type metadata for PersistentIdentifier, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v25);
  }

  return v11;
}

uint64_t DataStoreError.hashValue.getter()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_19749C3D0()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_19749C444()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t DataStoreSnapshotCodingKey.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  if (a1 == 0xD000000000000014 && 0x8000000197524BA0 == a2 || (result = sub_19752282C(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 0;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

double DataStoreSnapshotCodingKey.init(intValue:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_19752EA60;
  return result;
}

uint64_t sub_19749C544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  if (a1 == 0xD000000000000014 && 0x8000000197524BA0 == a2 || (result = sub_19752282C(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 0;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

double sub_19749C5D8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_19752EA60;
  return result;
}

uint64_t sub_19749C5E8(uint64_t a1)
{
  v2 = sub_197442414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19749C624(uint64_t a1)
{
  v2 = sub_197442414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id DefaultSnapshot.persistentIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  v3 = *(v1 + 16);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

void *DefaultSnapshot.init(from:relatedBackingDatas:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = MEMORY[0x1E69E7CC8];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_1(a1, v6);
  result = (*(v7 + 32))(&v13, v6, v7);
  if (v14 == 255)
  {
    __break(1u);
  }

  else
  {
    v16 = v13;
    v17 = v14;
    __swift_project_boxed_opaque_existential_1Tm_1(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    v10 = a1[4];
    sub_19743E484(DynamicType, a1, a2, &v15);
    v11 = v16;
    v12 = v17;
    *a3 = v15;
    *(a3 + 8) = v11;
    *(a3 + 16) = v12;
    return __swift_destroy_boxed_opaque_existential_1Tm_2(a1);
  }

  return result;
}

uint64_t sub_19749C758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _BYTE *a7)
{
  v34[1] = a5;
  v35 = a7;
  v37 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_197521F5C();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = v34 - v14;
  v38 = *(AssociatedTypeWitness - 8);
  v16 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v13, v17);
  v19 = v34 - v18;
  v39[0] = a3;
  v39[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(AssociatedConformanceWitness + 8);
  v22 = v40;
  result = sub_19752255C();
  if (!v22)
  {
    v25 = v36;
    v24 = v37;
    v40 = 0;
    if ((*(v38 + 48))(v15, 1, AssociatedTypeWitness) == 1)
    {
      return (*(v25 + 8))(v15, v10);
    }

    else
    {
      v26 = v38;
      (*(v38 + 32))(v19, v15, AssociatedTypeWitness);
      v27 = v24[3];
      v28 = v24[4];
      __swift_project_boxed_opaque_existential_1Tm_1(v24, v27);
      v29 = (*(v28 + 32))(v27, v28);
      v31 = v30;
      v39[3] = AssociatedTypeWitness;
      v39[4] = v21;
      v39[5] = *(AssociatedConformanceWitness + 16);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v39);
      (*(v26 + 16))(boxed_opaque_existential_2, v19, AssociatedTypeWitness);
      sub_19749B5D4(v39, v29, v31);
      (*(v26 + 8))(v19, AssociatedTypeWitness);
      v33 = v35;
      result = swift_beginAccess();
      *v33 = 1;
    }
  }

  return result;
}

uint64_t sub_19749CA50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v135 = a1;
  v11 = a1;
  if (swift_conformsToProtocol2())
  {
    v11 = a1;
    if (a1)
    {
      v11 = a1;
      do
      {
        sub_1973F732C(v11, &v135);
        v11 = v135;
        if (swift_conformsToProtocol2())
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 1;
        }
      }

      while (!v12);
    }
  }

  if (swift_dynamicCastMetatype())
  {
    v13 = a3[3];
    v14 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v13);
    v15 = (*(v14 + 32))(v13, v14);
    v17 = v16;
    v18 = a3[3];
    v19 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v18);
    (*(v19 + 32))(v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v20 = sub_19752250C();
    if (!v5)
    {
      v21 = v20;

      if (v21 != 2)
      {
        LOBYTE(v135) = v21 & 1;
        v24 = MEMORY[0x1E69E6378];
        v23 = MEMORY[0x1E69E6390];
        v22 = MEMORY[0x1E69E6370];
        goto LABEL_28;
      }

      goto LABEL_12;
    }

    goto LABEL_68;
  }

  if (swift_dynamicCastMetatype())
  {
    v25 = a3[3];
    v26 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v25);
    v15 = (*(v26 + 32))(v25, v26);
    v17 = v27;
    v28 = a3[3];
    v29 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v28);
    (*(v29 + 32))(v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v30 = sub_1975224FC();
    if (!v5)
    {
      v32 = v31;
      v33 = v30;

      if (v32)
      {
        v24 = MEMORY[0x1E69E6160];
        v23 = MEMORY[0x1E69E6190];
        v22 = MEMORY[0x1E69E6158];
      }

      else
      {
        v33 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v137 = 0;
      }

      v135 = v33;
      v136 = v32;
      goto LABEL_28;
    }

    goto LABEL_68;
  }

  if (swift_dynamicCastMetatype())
  {
    v34 = a3[3];
    v35 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v34);
    v15 = (*(v35 + 32))(v34, v35);
    v17 = v36;
    v37 = a3[3];
    v38 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v37);
    (*(v38 + 32))(v37, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v39 = sub_19752251C();
    if (!v5)
    {
      v41 = v40;
      v42 = v39;

      if ((v41 & 1) == 0)
      {
        v24 = MEMORY[0x1E69E63C0];
        v23 = MEMORY[0x1E69E63E8];
        v22 = MEMORY[0x1E69E63B0];
        v135 = v42;
        goto LABEL_28;
      }

      goto LABEL_20;
    }

LABEL_68:
  }

  if (swift_dynamicCastMetatype())
  {
    v43 = a3[3];
    v44 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v43);
    v15 = (*(v44 + 32))(v43, v44);
    v17 = v45;
    v46 = a3[3];
    v47 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v46);
    (*(v47 + 32))(v46, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v48 = sub_19752252C();
    if (v5)
    {
      goto LABEL_68;
    }

    v49 = v48;

    if ((v49 & 0x100000000) == 0)
    {
      LODWORD(v135) = v49;
      v24 = MEMORY[0x1E69E6458];
      v23 = MEMORY[0x1E69E6478];
      v22 = MEMORY[0x1E69E6448];
      goto LABEL_28;
    }

LABEL_12:
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v135 = 0;
    v136 = 0;
    v137 = 0;
LABEL_28:
    v138 = v22;
    v139 = v23;
    v140 = v24;
    return sub_19749B5D4(&v135, v15, v17);
  }

  if (swift_dynamicCastMetatype())
  {
    v51 = a3[3];
    v52 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v51);
    v15 = (*(v52 + 32))(v51, v52);
    v17 = v53;
    v54 = a3[3];
    v55 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v54);
    (*(v55 + 32))(v54, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v56 = sub_19752253C();
    if (!v5)
    {
      v58 = v57;
      v59 = v56;

      if ((v58 & 1) == 0)
      {
        v24 = MEMORY[0x1E69E6538];
        v23 = MEMORY[0x1E69E6560];
        v22 = MEMORY[0x1E69E6530];
        v135 = v59;
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    goto LABEL_68;
  }

  if (swift_dynamicCastMetatype())
  {
    v60 = a3[3];
    v61 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v60);
    v15 = (*(v61 + 32))(v60, v61);
    v17 = v62;
    v63 = a3[3];
    v64 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v63);
    (*(v64 + 32))(v63, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v65 = sub_19752256C();
    if (v5)
    {
      goto LABEL_68;
    }

    v66 = v65;

    if ((v66 & 0x100) == 0)
    {
      LOBYTE(v135) = v66;
      v24 = MEMORY[0x1E69E7238];
      v23 = MEMORY[0x1E69E7250];
      v22 = MEMORY[0x1E69E7230];
      goto LABEL_28;
    }

    goto LABEL_12;
  }

  if (swift_dynamicCastMetatype())
  {
    v67 = a3[3];
    v68 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v67);
    v15 = (*(v68 + 32))(v67, v68);
    v17 = v69;
    v70 = a3[3];
    v71 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v70);
    (*(v71 + 32))(v70, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v72 = sub_19752257C();
    if (v5)
    {
      goto LABEL_68;
    }

    v73 = v72;

    if ((v73 & 0x10000) == 0)
    {
      LOWORD(v135) = v73;
      v24 = MEMORY[0x1E69E7298];
      v23 = MEMORY[0x1E69E72B0];
      v22 = MEMORY[0x1E69E7290];
      goto LABEL_28;
    }

    goto LABEL_12;
  }

  if (swift_dynamicCastMetatype())
  {
    v74 = a3[3];
    v75 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v74);
    v15 = (*(v75 + 32))(v74, v75);
    v17 = v76;
    v77 = a3[3];
    v78 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v77);
    (*(v78 + 32))(v77, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v79 = sub_19752258C();
    if (v5)
    {
      goto LABEL_68;
    }

    v80 = v79;

    if ((v80 & 0x100000000) == 0)
    {
      LODWORD(v135) = v80;
      v24 = MEMORY[0x1E69E72F8];
      v23 = MEMORY[0x1E69E7320];
      v22 = MEMORY[0x1E69E72F0];
      goto LABEL_28;
    }

    goto LABEL_12;
  }

  if (swift_dynamicCastMetatype())
  {
    v81 = a3[3];
    v82 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v81);
    v15 = (*(v82 + 32))(v81, v82);
    v17 = v83;
    v84 = a3[3];
    v85 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v84);
    (*(v85 + 32))(v84, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v86 = sub_19752259C();
    if (v5)
    {
      goto LABEL_68;
    }

    v88 = v87;
    v89 = v86;

    if ((v88 & 1) == 0)
    {
      v24 = MEMORY[0x1E69E7368];
      v23 = MEMORY[0x1E69E7390];
      v22 = MEMORY[0x1E69E7360];
      v135 = v89;
      goto LABEL_28;
    }

LABEL_20:
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v136 = 0;
    v137 = 0;
    v135 = 0;
    goto LABEL_28;
  }

  if (swift_dynamicCastMetatype())
  {
    v90 = a3[3];
    v91 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v90);
    v15 = (*(v91 + 32))(v90, v91);
    v17 = v92;
    v93 = a3[3];
    v94 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v93);
    (*(v94 + 32))(v93, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v95 = sub_19752254C();
    if (v5)
    {
      goto LABEL_68;
    }

    v97 = v95;
    v98 = v96;

    if ((v98 & 1) == 0)
    {
      v24 = MEMORY[0x1E69E6818];
      v23 = MEMORY[0x1E69E6840];
      v22 = MEMORY[0x1E69E6810];
      v135 = v97;
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  if (swift_dynamicCastMetatype())
  {
    v99 = a3[3];
    v100 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v99);
    v15 = (*(v100 + 32))(v99, v100);
    v17 = v101;
    v102 = a3[3];
    v103 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v102);
    (*(v103 + 32))(v102, v103);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v104 = sub_1975225AC();
    if (v5)
    {
      goto LABEL_68;
    }

    v105 = v104;

    if ((v105 & 0x100) == 0)
    {
      LOBYTE(v135) = v105;
      v24 = MEMORY[0x1E69E7510];
      v23 = MEMORY[0x1E69E7528];
      v22 = MEMORY[0x1E69E7508];
      goto LABEL_28;
    }

    goto LABEL_12;
  }

  if (swift_dynamicCastMetatype())
  {
    v106 = a3[3];
    v107 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v106);
    v15 = (*(v107 + 32))(v106, v107);
    v17 = v108;
    v109 = a3[3];
    v110 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v109);
    (*(v110 + 32))(v109, v110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v111 = sub_1975225BC();
    if (v5)
    {
      goto LABEL_68;
    }

    v112 = v111;

    if ((v112 & 0x10000) == 0)
    {
      LOWORD(v135) = v112;
      v24 = MEMORY[0x1E69E7600];
      v23 = MEMORY[0x1E69E7628];
      v22 = MEMORY[0x1E69E75F8];
      goto LABEL_28;
    }

    goto LABEL_12;
  }

  if (swift_dynamicCastMetatype())
  {
    v113 = a3[3];
    v114 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v113);
    v15 = (*(v114 + 32))(v113, v114);
    v17 = v115;
    v116 = a3[3];
    v117 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v116);
    (*(v117 + 32))(v116, v117);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v118 = sub_1975225CC();
    if (v5)
    {
      goto LABEL_68;
    }

    v119 = v118;

    if ((v119 & 0x100000000) == 0)
    {
      LODWORD(v135) = v119;
      v24 = MEMORY[0x1E69E7670];
      v23 = MEMORY[0x1E69E7698];
      v22 = MEMORY[0x1E69E7668];
      goto LABEL_28;
    }

    goto LABEL_12;
  }

  if (swift_dynamicCastMetatype())
  {
    v120 = a3[3];
    v121 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v120);
    v15 = (*(v121 + 32))(v120, v121);
    v17 = v122;
    v123 = a3[3];
    v124 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v123);
    (*(v124 + 32))(v123, v124);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v125 = sub_1975225DC();
    if (v5)
    {
      goto LABEL_68;
    }

    v130 = v125;
    v131 = v126;

    if ((v131 & 1) == 0)
    {
      v24 = MEMORY[0x1E69E76E0];
      v23 = MEMORY[0x1E69E7708];
      v22 = MEMORY[0x1E69E76D8];
      v135 = v130;
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  if (dynamic_cast_existential_2_conditional(v11))
  {
    v127 = dynamic_cast_existential_2_unconditional(a1);
    return sub_19749D920(v127, a4, a3, a2, a5, v127, v128, v129);
  }

  else
  {
    v135 = 0;
    v136 = 0xE000000000000000;
    sub_1975221EC();

    v135 = 0xD000000000000023;
    v136 = 0x8000000197525D70;
    v132 = a3[3];
    v133 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v132);
    (*(v133 + 80))(v132, v133);
    v134 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v134);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19749D920(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a2;
  v32 = a8;
  v33 = a4;
  v42 = a7;
  v38 = a1;
  v31 = sub_197521F5C();
  v35 = *(v31 - 8);
  v10 = *(v35 + 64);
  v12 = MEMORY[0x1EEE9AC00](v31, v11);
  v14 = &v31 - v13;
  v36 = *(a6 - 8);
  v15 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v12, v16);
  v34 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3[3];
  v18 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm_1(a3, v19);
  v20 = *(v18 + 32);
  v41[0] = v20(v19, v18);
  v41[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
  v37 = v14;
  v22 = v40;
  sub_19752255C();
  if (v22)
  {
  }

  v39 = v18;
  v40 = 0;
  v25 = v34;
  v24 = v35;

  if ((*(v36 + 48))(v37, 1, a6) == 1)
  {
    return (*(v24 + 8))(v37, v31);
  }

  v26 = v36;
  (*(v36 + 32))(v25, v37, a6);
  v27 = v20(v19, v39);
  v29 = v28;
  v41[3] = a6;
  v41[4] = v42;
  v41[5] = v32;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v41);
  (*(v26 + 16))(boxed_opaque_existential_2, v25, a6);
  sub_19749B5D4(v41, v27, v29);
  return (*(v26 + 8))(v25, a6);
}

id DefaultSnapshot.copy(persistentIdentifier:remappedIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *v3;
  if (a2 && *(a2 + 16))
  {
    v8 = *(v3 + 8);
    v9 = *(v3 + 16);
    v88 = *v3;
    v80 = a2;
    if (v6)
    {
      if (v6 == 1)
      {
        v11 = v5[9];
        v10 = v5[10];
      }

      else
      {

        v11 = sub_19750A588();
        v10 = v15;
      }
    }

    else
    {

      v13 = [v5 entityName];
      v11 = sub_1975217BC();
      v10 = v14;

      v7 = v88;
    }

    v16 = sub_197442240(v11, v10);

    if (v16)
    {
      v83 = v6;
      v84 = a3;
      v85 = v5;
      swift_beginAccess();
      v82 = v16;
      v17 = *(v16 + 88);
      v79 = v9;
      v78 = v8;
      if ((v17 & 0xC000000000000001) != 0)
      {

        sub_1975220AC();
        type metadata accessor for Schema.Relationship();
        sub_197404DE0(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship);
        sub_197521C1C();
        v17 = v100;
        v18 = v101;
        v19 = v102;
        v20 = v103;
        v21 = v104;
      }

      else
      {
        v22 = -1 << *(v17 + 32);
        v18 = v17 + 56;
        v19 = ~v22;
        v23 = -v22;
        if (v23 < 64)
        {
          v24 = ~(-1 << v23);
        }

        else
        {
          v24 = -1;
        }

        v21 = v24 & *(v17 + 56);

        v20 = 0;
      }

      v81 = v19;
      v25 = (v19 + 64) >> 6;
      v86 = v7;
      v87 = v18;
      while (2)
      {
        while (2)
        {
          v26 = v20;
          v27 = v21;
          while (1)
          {
            if (v17 < 0)
            {
              v30 = sub_19752212C();
              if (!v30 || (*&v94 = v30, type metadata accessor for Schema.Relationship(), swift_dynamicCast(), v21 = *&v99[0], v20 = v26, v89 = v27, !*&v99[0]))
              {
LABEL_38:
                sub_1974A1090();

                a3 = v84;
                v5 = v85;
                LOBYTE(v6) = v83;
                v7 = v86;
                goto LABEL_39;
              }
            }

            else
            {
              v28 = v26;
              v29 = v27;
              v20 = v26;
              if (!v27)
              {
                while (1)
                {
                  v20 = v28 + 1;
                  if (__OFADD__(v28, 1))
                  {
                    break;
                  }

                  if (v20 >= v25)
                  {
                    goto LABEL_38;
                  }

                  v29 = *(v18 + 8 * v20);
                  ++v28;
                  if (v29)
                  {
                    goto LABEL_24;
                  }
                }

                __break(1u);
                goto LABEL_41;
              }

LABEL_24:
              v89 = (v29 - 1) & v29;
              v21 = *(*(v17 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v29)))));

              if (!v21)
              {
                goto LABEL_38;
              }
            }

            v31 = v17;
            swift_beginAccess();
            v32 = v88;
            if (*(v88 + 2))
            {
              v33 = *(v21 + 16);
              v34 = *(v21 + 24);

              v35 = sub_1973F4028(v33, v34);
              v37 = v36;

              if (v37)
              {
                break;
              }
            }

            v26 = v20;
            v27 = v89;
            v17 = v31;
            v18 = v87;
          }

          sub_1973FDED4(*(v32 + 7) + 48 * v35, &v94);
          sub_1974028A0(&v94, v99);
          if (*(v21 + 168))
          {
            sub_1973FDED4(v99, &v94);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
            if (swift_dynamicCast())
            {
              v17 = v31;
              v38 = v91;
              v39 = BYTE8(v91);
              v18 = v87;
              if (*(v80 + 16) && (v40 = sub_197403C30(v91, BYTE8(v91)), (v41 & 1) != 0))
              {
                v42 = *(v80 + 56) + 16 * v40;
                v45 = *(v21 + 16);
                v44 = *(v21 + 24);
                v74 = *v42;
                v43 = v74;
                v75 = v45;
                v77 = v44;
                v76 = v39;
                v46 = *(v42 + 8);
                v96 = &type metadata for PersistentIdentifier;
                v97 = sub_197412644();
                v98 = sub_197411E68();
                *&v94 = v43;
                BYTE8(v94) = v46;
                sub_1974028A0(&v94, &v91);
                sub_1974028EC(v43, v46);
                sub_1974028EC(v43, v46);

                v47 = v86;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v93 = v47;
                v73 = v38;
                v48 = v92;
                v49 = __swift_mutable_project_boxed_opaque_existential_2(&v91, v92);
                v86 = v71;
                v50 = *(*(v48 - 8) + 64);
                MEMORY[0x1EEE9AC00](v49, v49);
                v52 = &v71[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
                (*(v53 + 16))(v52);
                sub_197422EA0(*v52, v52[8], v75, v77, isUniquelyReferenced_nonNull_native, &v93);
                sub_1974028C8(v73, v76);

                sub_1974028C8(v74, v46);
                __swift_destroy_boxed_opaque_existential_1Tm_2(v99);
                __swift_destroy_boxed_opaque_existential_1Tm_2(&v91);
                v86 = v93;
                v21 = v89;
              }

              else
              {
                sub_1974028C8(v38, v39);

                __swift_destroy_boxed_opaque_existential_1Tm_2(v99);
                v21 = v89;
              }

              continue;
            }

LABEL_41:
            *&v94 = 0;
            *(&v94 + 1) = 0xE000000000000000;
            sub_1975221EC();
            v91 = v94;
            MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x8000000197525D00);
            v67 = *(v21 + 16);
            v68 = *(v21 + 24);

            MEMORY[0x19A8DFF80](v67, v68);

            MEMORY[0x19A8DFF80](0x70616E73206E6920, 0xEE00203A746F6873);
            *&v94 = v88;
            *(&v94 + 1) = v78;
            v95 = v79;
            sub_19752235C();
            MEMORY[0x19A8DFF80](10, 0xE100000000000000);
            sub_19752235C();
            goto LABEL_44;
          }

          break;
        }

        sub_1973FDED4(v99, &v94);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
        if (swift_dynamicCast())
        {
          v17 = v31;
          v55 = v91;
          v93 = MEMORY[0x1E69E7CC0];
          v56 = v80;

          sub_1974A0E58(v55, v56, &v93);

          v57 = *(v21 + 24);
          v77 = *(v21 + 16);
          v58 = v93;
          v96 = v54;
          v97 = sub_197412788(&qword_1ED7C77C0, sub_197412644);
          v98 = sub_197412788(&qword_1ED7C77C8, sub_197411E68);
          *&v94 = v58;
          sub_1974028A0(&v94, &v91);

          v59 = v86;
          v76 = swift_isUniquelyReferenced_nonNull_native();
          v90 = v59;
          v60 = v92;
          v61 = __swift_mutable_project_boxed_opaque_existential_2(&v91, v92);
          v86 = v71;
          v62 = *(*(v60 - 8) + 64);
          MEMORY[0x1EEE9AC00](v61, v61);
          v64 = &v71[-((v63 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v65 + 16))(v64);
          sub_197412800(*v64, v77, v57, v76, &v90);

          __swift_destroy_boxed_opaque_existential_1Tm_2(v99);
          __swift_destroy_boxed_opaque_existential_1Tm_2(&v91);

          v18 = v87;
          v21 = v89;
          v86 = v90;
          continue;
        }

        break;
      }

      *&v94 = 0;
      *(&v94 + 1) = 0xE000000000000000;
      sub_1975221EC();
      v91 = v94;
      MEMORY[0x19A8DFF80](0xD000000000000030, 0x8000000197525CC0);
      v69 = *(v21 + 16);
      v70 = *(v21 + 24);

      MEMORY[0x19A8DFF80](v69, v70);

      MEMORY[0x19A8DFF80](0x70616E73206E6920, 0xEE00203A746F6873);
      *&v94 = v88;
      *(&v94 + 1) = v78;
      v95 = v79;
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      sub_19752235C();
    }

    else
    {
      *&v99[0] = 0;
      *(&v99[0] + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000058, 0x8000000197525B80);
      *&v94 = v8;
      BYTE8(v94) = v9;
      sub_19752235C();
    }

LABEL_44:
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
    v12 = *v3;

LABEL_39:
    *(a3 + 16) = v6;
    *a3 = v7;
    *(a3 + 8) = v5;
    return sub_1974028EC(v5, v6);
  }

  return result;
}

uint64_t sub_19749E6C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*(a2 + 16))
  {
    v7 = sub_197403C30(*a1, v5);
    if (v8)
    {
      v9 = *(a2 + 56) + 16 * v7;
      v4 = *v9;
      v5 = *(v9 + 8);
    }
  }

  v10 = *a3;
  sub_1974028EC(v4, v5);
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v10;
  if ((result & 1) == 0)
  {
    result = sub_197445BA8(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
    *a3 = result;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_197445BA8((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
    *a3 = result;
  }

  *(v10 + 16) = v13 + 1;
  v14 = v10 + 16 * v13;
  *(v14 + 32) = v4;
  *(v14 + 40) = v5;
  return result;
}

uint64_t DataStoreFetchRequest.descriptor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  Descriptor = type metadata accessor for FetchDescriptor();
  v8 = *(*(Descriptor - 8) + 16);

  return v8(a2, v2 + v4, Descriptor);
}

uint64_t sub_19749E874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  Request = type metadata accessor for DataStoreBatchFetchRequest();
  sub_1974074E0(a1, a4 + *(Request + 40));
  Descriptor = type metadata accessor for FetchDescriptor();
  result = (*(*(Descriptor - 8) + 32))(a4, a2, Descriptor);
  *(a4 + *(Request + 36)) = a3;
  return result;
}

uint64_t DataStoreFetchResult.descriptor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  Descriptor = type metadata accessor for FetchDescriptor();
  v7 = *(*(Descriptor - 8) + 16);

  return v7(a2, v2, Descriptor);
}

uint64_t DataStoreSaveChangesResult.storeIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void *DataStoreSaveChangesResult.init(for:remappedIdentifiers:snapshotsToReregister:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a4;
  return v4;
}

uint64_t DataStoreBatchDeleteRequest.predicate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v7 = *(a1 + 16);
  sub_19752139C();
  v5 = sub_197521F5C();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t EditingState.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19752135C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EditingState.author.getter()
{
  v1 = (v0 + *(type metadata accessor for EditingState() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t EditingState.author.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EditingState() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_19749EC04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19752135C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_19749EC6C()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 24);
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness);
}

uint64_t sub_19749ED2C(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (v3 != v2)
  {
    v4 = *(result + 16);
    if (v2 == v4)
    {
      return 0;
    }

    if (v2 >= v4)
    {
      __break(1u);
      goto LABEL_13;
    }

    v5 = *(a2 + 32 + 8 * v2);
    v6 = *(result + 32 + 8 * v2);
    if (v5 < v6)
    {
      return 1;
    }

    ++v2;
    if (v6 < v5)
    {
      return 0;
    }
  }

  v7 = *(result + 16);
  if (v3 == v7)
  {
    return 0;
  }

  if (v3 < v7)
  {
    return 1;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_19749ED9C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_197522A4C();

  return sub_19749EF54(a1, v4);
}

unint64_t sub_19749EDE0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_197522A5C();
  type metadata accessor for CFRunLoopObserver(0);
  sub_197404DE0(&qword_1ED7C7338, type metadata accessor for CFRunLoopObserver);
  sub_19752140C();
  v4 = sub_197522A9C();

  return sub_19749EFC0(a1, v4);
}

unint64_t sub_19749EE94(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_19752239C();
  v5 = sub_1975216AC();

  return sub_19749F0CC(a1, v5);
}

unint64_t sub_19749EEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1975216AC();

  return sub_19749F264(a1, v9, a2, a3);
}

unint64_t sub_19749EF54(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_19749EFC0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFRunLoopObserver(0);
    sub_197404DE0(&qword_1ED7C7338, type metadata accessor for CFRunLoopObserver);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1975213FC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_19749F0CC(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = sub_19752239C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v22 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v7 + 16);
    v13 = v7 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v9, *(v24 + 48) + v16 * v11, v4);
      v19 = sub_19752173C();
      (*v17)(v9, v4);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v22 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_19749F264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_19752173C();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

double sub_19749F3EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1973F4028(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19747A934();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1974028A0((*(v12 + 56) + 48 * v9), a3);
    sub_19749FA7C(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

double sub_19749F498@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1973F4028(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_197422CFC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1974028B8((*(v12 + 56) + 32 * v9), a3);
    sub_19749FC38(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_19749F53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_1973F4028(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v16 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19747BB04();
      v12 = v16;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = (*(v12 + 56) + 32 * v9);
    v15 = v14[1];
    *a3 = *v14;
    *(a3 + 16) = v15;
    result = sub_1974A04C0(v9, v12);
    *v4 = v12;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 1;
  }

  return result;
}

double sub_19749F5E4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1974079DC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v18 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19747C0E8();
      v11 = v18;
    }

    v12 = *(v11 + 48);
    v13 = sub_197520DAC();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = (*(v11 + 56) + (v8 << 6));
    v15 = v14[1];
    *a2 = *v14;
    a2[1] = v15;
    v16 = v14[3];
    a2[2] = v14[2];
    a2[3] = v16;
    sub_1974A0820(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_19749F6CC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 16 * v6);
      sub_197522A5C();
      MEMORY[0x19A8E1190](v10);
      result = sub_197522A9C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 16 * v3);
      v14 = (v12 + 16 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      result = v15 + 16 * v3;
      if (v3 < v6 || result >= v15 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_19749F884(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_197522A5C();
      type metadata accessor for CFRunLoopObserver(0);
      sub_197404DE0(&qword_1ED7C7338, type metadata accessor for CFRunLoopObserver);
      v11 = v10;
      sub_19752140C();
      v12 = sub_197522A9C();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_19749FA7C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_197522A5C();

      sub_19752180C();
      v15 = sub_197522A9C();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (v3 != v6 || v21 >= v22 + 3)
        {
          v9 = *v22;
          v10 = v22[2];
          v21[1] = v22[1];
          v21[2] = v10;
          *v21 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_19749FC38(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_197522A5C();

      sub_19752180C();
      v14 = sub_197522A9C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_19749FDE8(int64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    v34 = v8;
    do
    {
      v9 = 16 * v6;
      v10 = *(v2 + 40);
      v11 = *(v2 + 48) + 16 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      sub_197522A5C();
      if (v13)
      {
        if (v13 == 1)
        {
          MEMORY[0x19A8E1190](1);
          v14 = *(v12 + 56);
          v15 = *(v12 + 64);
          sub_1974028EC(v12, 1);
          sub_19752180C();
          v16 = *(v12 + 72);
          v17 = *(v12 + 80);
          sub_19752180C();
          if (*(v12 + 24))
          {
            v35 = v3;
            v18 = v2;
            v19 = v7;
            v20 = v4;
            v21 = *(v12 + 16);
            sub_197522A7C();
            v4 = v20;
            v7 = v19;
            v2 = v18;
            v3 = v35;
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          v22 = *(v12 + 33);
          sub_197522A7C();
          v8 = v34;
          *(v12 + 32);
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_1974028EC(v12, 2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
        }

        sub_19752180C();
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_1974028EC(v12, 0);
        sub_197521F4C();
      }

      v23 = sub_197522A9C();
      sub_1974028C8(v12, v13);
      v24 = v23 & v7;
      if (v3 >= v8)
      {
        if (v24 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v24 >= v8)
      {
        goto LABEL_19;
      }

      if (v3 >= v24)
      {
LABEL_19:
        v25 = *(v2 + 48);
        v26 = (v25 + 16 * v3);
        v27 = (v25 + v9);
        if (16 * v3 != v9 || v26 >= v27 + 1)
        {
          *v26 = *v27;
        }

        v28 = *(v2 + 56);
        v29 = (v28 + 8 * v3);
        v30 = (v28 + 8 * v6);
        if (v3 != v6 || v29 >= v30 + 1)
        {
          *v29 = *v30;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v31 = *(v2 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v33;
    ++*(v2 + 36);
  }
}

uint64_t sub_1974A013C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_197522A5C();

      sub_19752180C();
      v13 = sub_197522A9C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1974A02EC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 16 * v6);
      sub_197522A5C();
      MEMORY[0x19A8E1190](v10);
      result = sub_197522A9C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 16 * v3);
      v14 = (v12 + 16 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1975213EC() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1974A04C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_197522A5C();

      sub_19752180C();
      v14 = sub_197522A9C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1974A0670(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_197522A5C();

      sub_19752180C();
      v13 = sub_197522A9C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1974A0820(int64_t a1, uint64_t a2)
{
  v47 = sub_197520DAC();
  v4 = *(v47 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v47, v6);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v48 = v8;
    v14 = sub_19752207C();
    v15 = v47;
    v8 = v48;
    v16 = v13;
    v45 = (v14 + 1) & v13;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v43 = a2 + 64;
    v44 = v18;
    v19 = *(v17 + 56);
    v42 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v12;
      v22 = v46;
      v23 = v16;
      v24 = v17;
      v25 = v8;
      v44(v46, *(v8 + 48) + v19 * v12, v15);
      v26 = *(v25 + 40);
      sub_197404DE0(qword_1ED7C9228, MEMORY[0x1E6968B10]);
      v27 = sub_1975216AC();
      result = (*v42)(v22, v15);
      v16 = v23;
      v28 = v27 & v23;
      if (a1 >= v45)
      {
        if (v28 >= v45 && a1 >= v28)
        {
LABEL_15:
          v8 = v48;
          v31 = *(v48 + 48);
          result = v31 + v20 * a1;
          v17 = v24;
          if (v20 * a1 < v21 || (v19 = v20, result >= v31 + v21 + v20))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v48;
            v19 = v20;
            v16 = v23;
            v10 = v43;
          }

          else
          {
            v10 = v43;
            if (v20 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v8 = v48;
              v19 = v20;
              v16 = v23;
            }
          }

          v32 = *(v8 + 56);
          v33 = (v32 + (a1 << 6));
          v34 = (v32 + (v12 << 6));
          if (a1 != v12 || v33 >= v34 + 4)
          {
            v35 = *v34;
            v36 = v34[1];
            v37 = v34[3];
            v33[2] = v34[2];
            v33[3] = v37;
            *v33 = v35;
            v33[1] = v36;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v28 >= v45 || a1 >= v28)
      {
        goto LABEL_15;
      }

      v17 = v24;
      v10 = v43;
      v19 = v20;
      v8 = v48;
LABEL_4:
      v12 = (v12 + 1) & v16;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v38 = *(v8 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v40;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_1974A0B48()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_19749EC6C();
}

uint64_t sub_1974A0B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v11);
  v13 = v24 - v12;
  if (sub_197521A5C())
  {
    sub_19752246C();
    v14 = sub_19752245C();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = sub_197521A5C();
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (sub_197521A3C())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = sub_19752222C();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_19749EEF8(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

void sub_1974A0E58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = v4 - 1;
    v8 = (a1 + 40);
    do
    {
      v9 = v7;
      v10 = *v8;
      v11 = *(v8 - 1);
      v12 = v10;
      sub_1974028EC(v11, v10);
      sub_19749E6C0(&v11, a2, a3);
      sub_1974028C8(v11, v12);
      if (v3)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 16;
    }

    while (v9);
  }
}

uint64_t sub_1974A0EF8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v1 = sub_197521A1C();
  v2 = sub_197405108();
  v3 = sub_1974A0B6C(v1, &type metadata for PersistentIdentifier, AssociatedTypeWitness, v2);

  return v3;
}

uint64_t sub_1974A0FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B630, &qword_19752EAA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1974A1014(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1974028C8(a1, a2);
  }
}

uint64_t *__swift_deallocate_boxed_opaque_existential_2(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x19A8E1B50);
  }

  return result;
}

uint64_t sub_1974A1078(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1974A109C()
{
  result = qword_1EAF2B638;
  if (!qword_1EAF2B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B638);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataStoreError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DataStoreError(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1974A14D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1974A1528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1974A157C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1974A1598(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1974A1634(uint64_t a1)
{
  result = type metadata accessor for EditingState();
  if (v3 <= 0x3F)
  {
    v5 = *(a1 + 16);
    sub_19752139C();
    result = sub_197521F5C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1974A172C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for FetchDescriptor();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for EditingState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t dynamic_cast_existential_2_unconditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1974A18AC(char *a1, int a2, unsigned __int8 *a3)
{
  v120 = a2;
  v124 = a1;
  v133 = *MEMORY[0x1E69E9840];
  v113 = sub_19752120C();
  v112 = *(v113 - 8);
  v4 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v113, v5);
  v111 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1975212CC();
  v7 = *(v128 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v128, v9);
  v125 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v109 = &v104 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v108 = &v104 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v114 = &v104 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v110 = &v104 - v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v115 = &v104 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v26 - 8, v28);
  v117 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v116 = &v104 - v33;
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v104 - v35;
  v123 = sub_19752157C();
  v37 = *(v123 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v123, v39);
  v126 = &v104 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *a3;
  v42 = *(a3 + 2);
  v127 = *(a3 + 1);
  if (qword_1ED7C6D20 != -1)
  {
    swift_once();
  }

  v43 = v123;
  v44 = __swift_project_value_buffer(v123, qword_1ED7CE5A0);
  (*(v37 + 16))(v126, v44, v43);
  v45 = *(v7 + 56);
  v45(v36, 1, 1, v128);
  v46 = [objc_opt_self() defaultManager];
  v121 = v46;
  v122 = v36;
  v119 = v37;
  if (v41)
  {
    v127 = sub_1974A98BC();
    if (v47)
    {
      v42 = v47;
      goto LABEL_8;
    }

    LODWORD(v115) = 0;
LABEL_14:
    v118 = 0;
    goto LABEL_15;
  }

  if (!v42)
  {
    LODWORD(v115) = 0;
    v127 = 0;
    goto LABEL_14;
  }

LABEL_8:

  v48 = sub_19752178C();
  v49 = [v46 containerURLForSecurityApplicationGroupIdentifier_];

  v118 = v42;
  if (v49)
  {

    sub_19752127C();

    v129 = 0x7972617262694CLL;
    v130 = 0xE700000000000000;
    v50 = *MEMORY[0x1E6968F58];
    v106 = v7 + 56;
    v51 = v112;
    v52 = *(v112 + 104);
    v107 = v7;
    v53 = v111;
    v105 = v45;
    v54 = v113;
    v52(v111, v50, v113);
    sub_197416D54();
    v55 = v110;
    sub_1975212BC();
    v56 = *(v51 + 8);
    v56(v53, v54);
    v129 = 0xD000000000000013;
    v130 = 0x80000001975263B0;
    v52(v53, v50, v54);
    v36 = v122;
    v57 = v114;
    sub_1975212BC();
    v58 = v53;
    v7 = v107;
    v59 = v54;
    v45 = v105;
    v56(v58, v59);
    v60 = *(v7 + 8);
    v61 = v128;
    v60(v55, v128);
    v60(v115, v61);
    sub_1973F7DA4(v36, &qword_1EAF2AE78, &qword_19752C290);
    v62 = *(v7 + 32);
    v62(v55, v57, v61);
    v63 = v55;
    v46 = v121;
    v62(v36, v63, v61);
    v45(v36, 0, 1, v61);
    LODWORD(v115) = 0;
  }

  else
  {
    if ((sub_19752188C() & 1) == 0)
    {
      v129 = 0;
      v130 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000034, 0x8000000197526370);
      MEMORY[0x19A8DFF80](v127, v42);
      MEMORY[0x19A8DFF80](41, 0xE100000000000000);
      goto LABEL_34;
    }

    LODWORD(v115) = 1;
  }

LABEL_15:
  v64 = v116;
  sub_1973FE1B4(v36, v116, &qword_1EAF2AE78, &qword_19752C290);
  v114 = *(v7 + 48);
  v65 = (v114)(v64, 1, v128);
  sub_1973F7DA4(v64, &qword_1EAF2AE78, &qword_19752C290);
  if (v65 == 1)
  {
    v66 = [v46 URLsForDirectory:14 inDomains:1];
    v67 = sub_1975219CC();

    if (*(v67 + 16))
    {
      v68 = v109;
      v69 = v128;
      (*(v7 + 16))(v109, v67 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v128);

      v36 = v122;
      sub_1973F7DA4(v122, &qword_1EAF2AE78, &qword_19752C290);
      v70 = *(v7 + 32);
      v71 = v108;
      v70(v108, v68, v69);
      v70(v36, v71, v69);
      v45(v36, 0, 1, v69);
    }

    else
    {

      v72 = sub_19752155C();
      v73 = sub_197521DDC();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_1973F2000, v72, v73, "File Manager was unable to find Application Support in the User Domain", v74, 2u);
        MEMORY[0x19A8E1B50](v74, -1, -1);
      }

      v36 = v122;
    }
  }

  v75 = v117;
  sub_1973FE1B4(v36, v117, &qword_1EAF2AE78, &qword_19752C290);
  if ((v114)(v75, 1, v128) == 1)
  {
    sub_1973F7DA4(v75, &qword_1EAF2AE78, &qword_19752C290);
  }

  else
  {
    v76 = *(v7 + 32);
    v77 = v125;
    v78 = v75;
    v79 = v128;
    v76(v125, v78, v128);
    (*(v7 + 16))(v124, v77, v79);
    if (v115)
    {
      v129 = 0x646572616873;
      v130 = 0xE600000000000000;
      v80 = v112;
      v81 = v7;
      v82 = v111;
      v83 = v113;
      (*(v112 + 104))(v111, *MEMORY[0x1E6968F58], v113);
      sub_197416D54();
      v84 = v110;
      v85 = v124;
      sub_1975212BC();
      v86 = v82;
      v7 = v81;
      v87 = v128;
      (*(v80 + 8))(v86, v83);
      (*(v81 + 8))(v85, v87);
      v76(v85, v84, v87);
    }

    v88 = v119;
    v89 = v121;
    v90 = v122;
    if ((v120 & 1) == 0)
    {
      goto LABEL_27;
    }

    v91 = sub_19752124C();
    v129 = 0;
    v92 = [v89 createDirectoryAtURL:v91 withIntermediateDirectories:1 attributes:0 error:&v129];

    if (v92)
    {
      v93 = v129;
LABEL_27:

      (*(v7 + 8))(v125, v128);
      sub_1973F7DA4(v90, &qword_1EAF2AE78, &qword_19752C290);
      (*(v88 + 8))(v126, v123);
      v94 = *MEMORY[0x1E69E9840];
      return v127;
    }

    v96 = v129;
    v97 = sub_1975211DC();

    swift_willThrow();
    (*(v7 + 8))(v125, v128);
    (*(v88 + 8))(v126, v123);
    v129 = 0;
    v130 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000033, 0x8000000197526310);
    v98 = [objc_opt_self() mainBundle];
    v99 = [v98 bundleIdentifier];

    if (v99)
    {
      v100 = sub_1975217BC();
      v102 = v101;
    }

    else
    {
      v100 = 0;
      v102 = 0;
    }

    v131 = v100;
    v132 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE58, &unk_19752F390);
    v103 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v103);

    MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
    v131 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
    sub_19752235C();
  }

LABEL_34:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974A2604(uint64_t a1, uint64_t *a2)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      do
      {
LABEL_8:
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v6)))));
        v12 = *v11;
        v13 = v11[1];
        v14 = *a2;
        swift_unknownObjectRetain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v14 = sub_197433F80(0, v14[2] + 1, 1, v14);
          *a2 = v14;
        }

        v17 = v14[2];
        v16 = v14[3];
        if (v17 >= v16 >> 1)
        {
          *a2 = sub_197433F80((v16 > 1), v17 + 1, 1, v14);
        }

        v6 &= v6 - 1;
        ObjectType = swift_getObjectType();
        sub_19743F3E4(v17, v12, a2, ObjectType, v13);
        result = swift_unknownObjectRelease();
      }

      while (v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1974A2780(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_unknownObjectRetain_n();
      sub_1974327FC(&v5, v4, v3);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1974A280C(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v5 = v4;
  if (qword_1ED7C9850 != -1)
  {
    swift_once();
  }

  sub_1973F79C8(a3, a4);

  v10 = sub_1974D4E08(a1, a2);
  if (v10)
  {
    v11 = v10;

    return v11;
  }

  else
  {

    v13 = sub_1974D6808(a1, a2, v5, a4);

    return v13;
  }
}

BOOL sub_1974A2910(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v4 + 16))(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B6A8, &unk_19752F380);
  swift_dynamicCast();
  v5 = v12;
  v11 = v12;
  if (swift_conformsToProtocol2())
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    do
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      swift_beginAccess();
      v11 = AssociatedTypeWitness;
      if (swift_conformsToProtocol2())
      {
        v8 = AssociatedTypeWitness == 0;
      }

      else
      {
        v8 = 1;
      }
    }

    while (!v8);
  }

  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  sub_19752132C();
  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  sub_19752135C();
  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  sub_1975212CC();
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return 1;
  }

  type metadata accessor for Decimal(0);
  return swift_dynamicCastMetatype() != 0;
}

BOOL sub_1974A2C24(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v4 + 16))(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B6A8, &unk_19752F380);
  swift_dynamicCast();
  v5 = v12;
  v11 = v12;
  if (swift_conformsToProtocol2())
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    do
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      swift_beginAccess();
      v11 = AssociatedTypeWitness;
      if (swift_conformsToProtocol2())
      {
        v8 = AssociatedTypeWitness == 0;
      }

      else
      {
        v8 = 1;
      }
    }

    while (!v8);
  }

  sub_197520C6C();
  return swift_dynamicCastMetatype() != 0;
}

uint64_t sub_1974A2DB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  result = PersistentModel.persistentModelID.getter(*(a2 + a3 - 16), *(a2 + a3 - 8), &v8);
  v7 = v9;
  *a4 = v8;
  *(a4 + 8) = v7;
  return result;
}

uint64_t sub_1974A2E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19752202C();
  KeyPath = swift_getKeyPath();
  v7 = MEMORY[0x19A8E0730](a1, KeyPath);

  if (v7)
  {
    return 0;
  }

  v9 = sub_1973F68A4(a2, a3);
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v9 + 32;
    while (v12 < *(v10 + 16))
    {
      sub_1973F7E64(v13, &v44);
      if (MEMORY[0x19A8E0730](v46, a1))
      {

        v19 = v44;

        sub_1973F82A8(&v44);
        return v19;
      }

      ++v12;
      sub_1973F82A8(&v44);
      v13 += 96;
      if (v11 == v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_8:
  v14 = sub_1974A33B8(MEMORY[0x1E69E7CC0], a2, a3);
  if (!*(v14 + 16) || (v15 = sub_1973F7814(a1), (v16 & 1) == 0))
  {
    v44 = sub_197521FEC();
    v45 = v21;
    sub_197416D54();
    v22 = sub_197521FBC();
    v43 = v14;
    v24 = v23;

    v44 = v22;
    v45 = v24;
    v25 = sub_197521FBC();
    v27 = v26;

    v28 = sub_1974A3A00(v25, v27, v43);
    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v31 = v28;

      return v31;
    }

    if ((sub_19752189C() & 1) == 0)
    {
      goto LABEL_28;
    }

    v44 = v25;
    v45 = v27;
    v32 = *(sub_197521F9C() + 16);

    if (v32 < 3)
    {

      return 0;
    }

    if (!__OFSUB__(0, sub_19752181C()))
    {
      sub_19752183C();
      v33 = sub_1975218DC();
      v34 = MEMORY[0x19A8DFF20](v33);
      v36 = v35;

      v37 = sub_1974A3A00(v34, v36, v43);
      v39 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v39 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        v40 = v37;

        return v40;
      }

      v44 = 0;
      v45 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525E50);
      sub_19752235C();
      goto LABEL_30;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0x74276E646C756F43, 0xEE0020646E696620);
    sub_19752235C();
    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    v41 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v41);

    MEMORY[0x19A8DFF80](0x6966206874697720, 0xED00002073646C65);
    v42 = MEMORY[0x19A8E0100](v10, &type metadata for Schema.PropertyMetadata);
    MEMORY[0x19A8DFF80](v42);

LABEL_30:
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v17 = v15;

  v18 = (*(v14 + 56) + 16 * v17);
  v19 = *v18;
  v20 = v18[1];

  return v19;
}

uint64_t sub_1974A33B8(uint64_t AssociatedTypeWitness, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = sub_1973F68A4(a2, a3);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = AssociatedTypeWitness;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_2;
  }

LABEL_69:
  v7 = sub_1973FA32C(0, *(AssociatedTypeWitness + 16) + 1, 1, AssociatedTypeWitness);
LABEL_2:
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1973FA32C((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  *&v7[8 * v9 + 32] = v3;
  v71 = *(v5 + 16);
  if (!v71)
  {

    return MEMORY[0x1E69E7CC8];
  }

  v66 = v7;
  v10 = 0;
  v69 = v5 + 32;
  v70 = *(AssociatedTypeWitness + 16);
  v68 = (AssociatedTypeWitness + 32);
  v11 = MEMORY[0x1E69E7CC8];
  v65 = v5;
  do
  {
    if (v10 >= *(v5 + 16))
    {
      goto LABEL_64;
    }

    v12 = v5;
    sub_1973F7E64(v69 + 96 * v10, v77);
    v13 = v77[0];
    v14 = v77[1];
    v15 = v77[2];

    sub_1973F82A8(v77);
    v16 = *v15;
    v75 = v15;
    sub_197521FFC();
    v18 = v17;
    v76 = v17;
    if (swift_conformsToProtocol2())
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    AssociatedTypeWitness = v18;
    if (!v19)
    {
      do
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        swift_beginAccess();
        v76 = AssociatedTypeWitness;
        if (swift_conformsToProtocol2())
        {
          v20 = AssociatedTypeWitness == 0;
        }

        else
        {
          v20 = 1;
        }
      }

      while (!v20);
    }

    ++v10;

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v76 = v11;
    v3 = &v76;
    sub_19747C4B0(v13, v14, v75, v21);

    v11 = v76;
    v22 = v70;
    v23 = v68;
    while (v22)
    {
      v24 = *v23++;
      --v22;
      if (v24 == AssociatedTypeWitness)
      {

        goto LABEL_59;
      }
    }

    v5 = sub_1974A3E2C(v18, v13, v14, v75, v66);

    if (v5)
    {
      v67 = v10;
      v25 = 0;
      v26 = v5 + 64;
      v27 = 1 << *(v5 + 32);
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v29 = v28 & *(v5 + 64);
      v30 = (v27 + 63) >> 6;
      v72 = v5;
      if (v29)
      {
        goto LABEL_30;
      }

      do
      {
LABEL_31:
        v32 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
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
          goto LABEL_69;
        }

        if (v32 >= v30)
        {

          v5 = v65;
          v10 = v67;
          goto LABEL_7;
        }

        v29 = *(v26 + 8 * v32);
        ++v25;
      }

      while (!v29);
      while (1)
      {
        v33 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v34 = v33 | (v32 << 6);
        v35 = *(*(v5 + 48) + 8 * v34);
        v36 = (*(v5 + 56) + 16 * v34);
        AssociatedTypeWitness = v36[1];
        v73 = *v36;
        sub_19752202C();

        v74 = AssociatedTypeWitness;

        v37 = sub_1975224AC();
        if (v37)
        {
          break;
        }

        v46 = swift_isUniquelyReferenced_nonNull_native();
        v76 = v11;
        v47 = v35;
        v48 = v35;
        v3 = v11;
        v49 = sub_1973F7814(v48);
        v51 = v11[2];
        v52 = (v50 & 1) == 0;
        v53 = __OFADD__(v51, v52);
        v54 = v51 + v52;
        if (v53)
        {
          goto LABEL_66;
        }

        AssociatedTypeWitness = v50;
        if (v11[3] >= v54)
        {
          if ((v46 & 1) == 0)
          {
            v3 = &v76;
            v63 = v49;
            sub_197479770();
            v49 = v63;
          }
        }

        else
        {
          sub_197477E60(v54, v46);
          v3 = v76;
          v49 = sub_1973F7814(v47);
          if ((AssociatedTypeWitness & 1) != (v55 & 1))
          {
LABEL_70:
            result = sub_1975229CC();
            __break(1u);
            return result;
          }
        }

        v11 = v76;
        if (AssociatedTypeWitness)
        {
          v59 = (v76[7] + 16 * v49);
          AssociatedTypeWitness = v59[1];
          *v59 = v73;
          v59[1] = v74;
        }

        else
        {
          v76[(v49 >> 6) + 8] |= 1 << v49;
          *(v11[6] + 8 * v49) = v47;
          v60 = (v11[7] + 16 * v49);
          *v60 = v73;
          v60[1] = v74;
          v61 = v11[2];
          v53 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v53)
          {
            goto LABEL_68;
          }

          v11[2] = v62;
        }

        v25 = v32;
        if (!v29)
        {
          goto LABEL_31;
        }

LABEL_30:
        v32 = v25;
      }

      AssociatedTypeWitness = v37;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v76 = v11;
      v3 = v11;
      v5 = sub_1973F7814(AssociatedTypeWitness);
      v40 = v11[2];
      v41 = (v39 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        goto LABEL_65;
      }

      v43 = v39;
      if (v11[3] < v42)
      {
        sub_197477E60(v42, v38);
        v3 = v76;
        v44 = sub_1973F7814(AssociatedTypeWitness);
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_70;
        }

        v5 = v44;
        v11 = v76;
        if ((v43 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_28:
        v31 = (v11[7] + 16 * v5);
        v3 = v31[1];
        *v31 = v73;
        v31[1] = v74;

LABEL_29:
        v25 = v32;
        v5 = v72;
        if (!v29)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v38)
      {
        v11 = v76;
        if (v39)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v3 = &v76;
        sub_197479770();
        v11 = v76;
        if (v43)
        {
          goto LABEL_28;
        }
      }

LABEL_46:
      v11[(v5 >> 6) + 8] |= 1 << v5;
      *(v11[6] + 8 * v5) = AssociatedTypeWitness;
      v56 = (v11[7] + 16 * v5);
      *v56 = v73;
      v56[1] = v74;

      v57 = v11[2];
      v53 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v53)
      {
        goto LABEL_67;
      }

      v11[2] = v58;
      goto LABEL_29;
    }

LABEL_59:
    v5 = v12;
LABEL_7:
    ;
  }

  while (v10 != v71);

  return v11;
}

uint64_t sub_1974A3A00(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  v12 = 0xE000000000000000;
  v35 = v9;
  v36 = v5;
  if (v8)
  {
    while (1)
    {
      v40 = v10;
      v13 = v11;
LABEL_9:
      v14 = __clz(__rbit64(v8)) | (v13 << 6);
      v15 = *(*(a3 + 48) + 8 * v14);
      v16 = (*(a3 + 56) + 16 * v14);
      v17 = *v16;
      v18 = v16[1];

      v20 = sub_197521FEC() == a1 && v19 == a2;
      v38 = v17;
      if (v20 || (sub_19752282C() & 1) != 0)
      {

        v40 = v17;
        v12 = v18;
      }

      v39 = v12;
      v21 = sub_1974A3D3C(46, 0xE100000000000000, a1, a2);
      if (v22)
      {
        break;
      }

      v23 = v21;

      v24 = a1;
      sub_1974A3CF0(v23, a1, a2);
      a1 = v25;
      if (v25 >> 14 < sub_197521F6C() >> 14)
      {
        goto LABEL_23;
      }

      v8 &= v8 - 1;
      v26 = sub_197521F7C();
      v28 = v27;
      v30 = v29;
      v31 = a2;
      v33 = v32;

      LOBYTE(v26) = sub_1974ACA50(v26, v28, v30, v33, v38, v18);
      a2 = v31;

      v12 = v39;
      v10 = v40;
      if (v26)
      {
        v10 = v38;
        v12 = v18;
      }

      v11 = v13;
      a1 = v24;
      v9 = v35;
      v5 = v36;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {

        return v10;
      }

      v8 = *(v5 + 8 * v13);
      ++v11;
      if (v8)
      {
        v40 = v10;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  sub_1975221EC();

  MEMORY[0x19A8DFF80](a1, a2);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

unint64_t sub_1974A3CF0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1975218DC();
  }

  __break(1u);
  return result;
}

unint64_t sub_1974A3D3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  while (sub_1975218BC() != a1 || v9 != a2)
  {
    v10 = sub_19752282C();

    if (v10)
    {
      return v8;
    }

    v8 = sub_19752182C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1974A3E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_1973F6EEC(a1))
  {
    return 0;
  }

  v63 = a1;
  if (swift_conformsToProtocol2())
  {
    v12 = a1 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  AssociatedTypeWitness = a1;
  if (!v12)
  {
    do
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      swift_beginAccess();
      v63 = AssociatedTypeWitness;
      if (swift_conformsToProtocol2())
      {
        v15 = AssociatedTypeWitness == 0;
      }

      else
      {
        v15 = 1;
      }
    }

    while (!v15);
  }

  v16 = *AssociatedTypeWitness;
  if (*AssociatedTypeWitness > 0x7FF)
  {
    if ((sub_19752148C() - 2048) < 0xFFFFFFFFFFFFF801)
    {
      return MEMORY[0x1E69E7CC8];
    }
  }

  else
  {
    v60 = v13;
    v10 = MEMORY[0x1E69E7CC8];
    if ((v16 - 513) < 2)
    {
      return v10;
    }

    if (v16 == 512)
    {
      if (swift_conformsToProtocol2())
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v10;
        sub_19747C4B0(a2, a3, a4, isUniquelyReferenced_nonNull_native);

        return v10;
      }

      if (!sub_19752154C())
      {
        return v10;
      }

      v28 = 0;
      v29 = 0xEC00000061746144;
      while (1)
      {
        if (v28 >= sub_19752154C())
        {
          __break(1u);
LABEL_91:
          v63 = 0;
          v64 = 0xE000000000000000;
          sub_1975221EC();

          v63 = 0xD000000000000017;
          v64 = 0x8000000197525EB0;
          v51 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v51);

          while (1)
          {
LABEL_94:
            sub_1975223EC();
            __break(1u);
          }
        }

        v30 = *AssociatedTypeWitness;
        v31 = sub_19752148C();
        if (v30 > 0x7FF)
        {
          if (v31 - 2048 < 0xFFFFFFFFFFFFF801)
          {
            goto LABEL_54;
          }
        }

        else if (v31 >= 0x800)
        {
          if (!v30)
          {
LABEL_54:
            sub_19752145C();
            sub_19752144C();
            v32 = sub_19752142C();
            goto LABEL_59;
          }
        }

        else if (v30 == v31)
        {
          goto LABEL_54;
        }

        v34 = 8;
        if ((*AssociatedTypeWitness - 512) < 3)
        {
          v34 = 1;
        }

        v35 = *(AssociatedTypeWitness[v34] + 16);
        v36 = *(sub_19752146C() + 8);
        v32 = sub_19752186C();
LABEL_59:
        if (v32 == 0x676E696B6361625FLL && v33 == v29)
        {
        }

        else
        {
          v38 = a2;
          v39 = v29;
          v40 = sub_19752282C();

          if (v40)
          {
            goto LABEL_68;
          }

          if (sub_19752151C() == 0xD000000000000016 && 0x8000000197525EF0 == v41)
          {
            goto LABEL_66;
          }

          v42 = sub_19752282C();

          if (v42)
          {
            goto LABEL_68;
          }

          if (sub_19752151C() == 0x7265666675625FLL && v43 == 0xE700000000000000)
          {
LABEL_66:

LABEL_68:
            v29 = v39;
            a2 = v38;
            goto LABEL_47;
          }

          v44 = sub_19752282C();

          if (v44)
          {
            goto LABEL_68;
          }

          v45 = sub_19752151C();
          v59 = v46;
          v56 = v45;
          if (v60)
          {
            sub_1974AA070(AssociatedTypeWitness, v28, AssociatedTypeWitness);
          }

          else
          {
            sub_19752150C();
          }

          v61 = v38;
          v62 = a3;

          MEMORY[0x19A8DFF80](46, 0xE100000000000000);

          MEMORY[0x19A8DFF80](v56, v59);

          v47 = v62;
          v53 = v61;
          v48 = sub_19752152C();
          v61 = v48;
          v54 = v47;
          v57 = v48;
          v29 = v39;
          if (swift_conformsToProtocol2() && v48)
          {
            a2 = v38;
            do
            {
              v48 = swift_getAssociatedTypeWitness();
              swift_beginAccess();
              v61 = v48;
            }

            while (swift_conformsToProtocol2() && v48);
          }

          else
          {
            a2 = v38;
          }

          sub_19752202C();
          v55 = sub_1975224AC();
          if (!v55)
          {
            v61 = 0;
            v62 = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x8000000197525F10);
            sub_19752235C();
            MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
            sub_19752235C();
            goto LABEL_94;
          }

          if (sub_1973F6EEC(v57) || swift_conformsToProtocol2() && v48)
          {

            v49 = swift_isUniquelyReferenced_nonNull_native();
            v61 = v10;
            sub_19747C4B0(v53, v54, v55, v49);
          }

          else
          {
            v58 = sub_1974A3E2C(v57, v53, v54, v55, a5);
            if (!v58)
            {
              goto LABEL_94;
            }

            v50 = swift_isUniquelyReferenced_nonNull_native();
            v61 = v10;
            sub_1974ACAC8(v58, sub_1974ACA08, 0, v50, &v61);
          }

          v10 = v61;
        }

LABEL_47:
        if (++v28 == sub_19752154C())
        {
          return v10;
        }
      }
    }

    v18 = sub_19752148C();
    if (v18 >= 0x800)
    {
      if (!v16)
      {
        return v10;
      }
    }

    else if (v16 == v18)
    {
      return v10;
    }
  }

  v19 = *AssociatedTypeWitness;
  if ((*AssociatedTypeWitness - 2048) >= 0xFFFFFFFFFFFFF801)
  {
    v20 = sub_19752147C();
    v21 = v20 < 0x800 && v20 == v19;
    v22 = v21;
    if ((v19 - 515) >= 2 && !v22)
    {
      sub_1975221EC();

      v63 = 0xD00000000000001FLL;
      v64 = 0x8000000197525ED0;
      v52 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v52);

      goto LABEL_94;
    }
  }

  v24 = *(a5 + 16);
  v25 = 32;
  while (v24)
  {
    v26 = *(a5 + v25);
    v25 += 8;
    --v24;
    if (v26 == AssociatedTypeWitness)
    {
      return 0;
    }
  }

  v27 = swift_conformsToProtocol2();
  if (!v27)
  {
    goto LABEL_91;
  }

  return sub_1974A92C4(AssociatedTypeWitness, a5, a2, a3, AssociatedTypeWitness, v27);
}