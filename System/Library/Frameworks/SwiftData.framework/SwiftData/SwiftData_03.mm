uint64_t sub_197428988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v14 = type metadata accessor for EditingState();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a5;
  v33 = a6;
  v34 = a1;
  if (a5)
  {
    if (a5 != 1 || (v22 = a4[3]) == 0)
    {
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197526FB0);
      v36 = a4;
      LOBYTE(v37) = a5;
      sub_19752235C();
      goto LABEL_17;
    }

    v20 = a4[2];
    v25 = a4[3];

    v23 = *(v7 + 16);
    if (v23)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [a4 storeIdentifier];
    v20 = sub_1975217BC();
    v22 = v21;

    v23 = *(v7 + 16);
    if (v23)
    {
LABEL_3:
      v24 = v23;
      goto LABEL_9;
    }
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_14:

    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000005CLL, 0x8000000197527010);
    *&v38 = a4;
    BYTE8(v38) = v35;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v38 = v7;
    type metadata accessor for ModelContext(0);
    sub_19752235C();
    goto LABEL_17;
  }

  v24 = Strong;
LABEL_9:
  swift_beginAccess();
  v27 = *(v24 + 56);

  if (!*(v27 + 16))
  {
    goto LABEL_14;
  }

  v28 = sub_1973F4028(v20, v22);
  if ((v29 & 1) == 0)
  {
    goto LABEL_14;
  }

  v32 = *(*(v27 + 56) + 16 * v28);
  swift_unknownObjectRetain();

  type metadata accessor for DefaultStore(0);
  if (swift_dynamicCastClass())
  {

    v30 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    sub_197404E70(v7 + v30, v18);
    sub_197426B00(v34, a2, a3, a4, v35, v33);
    swift_unknownObjectRelease();
    return sub_197428DBC(v18);
  }

  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000048, 0x8000000197527070);
  MEMORY[0x19A8DFF80](0x53746C7561666544, 0xEC00000065726F74);
  MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
  v38 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  sub_19752235C();
LABEL_17:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197428DBC(uint64_t a1)
{
  v2 = type metadata accessor for EditingState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_197428E9C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

uint64_t sub_197428ED4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v36 = a4;
  v39 = a5;
  v8 = sub_19752119C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v34 - v12;
  swift_getWitnessTable();
  v14 = sub_19752115C();
  v41 = *(v14 - 8);
  v15 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v37 = &v34 - v17;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B900, &qword_19752FBE0);
  v40 = *(v35 - 8);
  v18 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v35, v19);
  v38 = &v34 - v20;
  v21 = *a1;
  v47 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B908, &qword_19752FBE8);
  sub_1975211AC();
  sub_1975211BC();
  v42 = a3;
  v43 = v36;
  swift_getKeyPath();
  sub_197520EAC();

  (*(v9 + 8))(v13, v8);
  v22 = sub_19742A020(&qword_1ED7C7260, &qword_1EAF2B900, &qword_19752FBE0);
  WitnessTable = swift_getWitnessTable();
  v24 = sub_19742A020(&qword_1ED7C7150, &qword_1EAF2B908, &qword_19752FBE8);
  v25 = sub_197411EBC();
  v26 = v35;
  v47 = v35;
  v48 = v14;
  v49 = v22;
  v50 = WitnessTable;
  v51 = v24;
  v52 = v25;
  v27 = sub_197520F2C();
  v28 = v39;
  v39[3] = v27;
  v29 = sub_19742A068();
  v46 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v44 = v29;
  v45 = v30;
  v28[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1Tm_0(v28);
  v31 = v37;
  v32 = v38;
  sub_197520EBC();
  (*(v41 + 8))(v31, v14);
  return (*(v40 + 8))(v32, v26);
}

__n128 sub_19742930C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_197429338(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B228, &qword_19752D3B8);
  result = sub_1975221AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v36 = v2;
    v37 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 16 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v6 + 40);
      sub_197522A5C();
      if (v21)
      {
        if (v21 == 1)
        {
          MEMORY[0x19A8E1190](1);
          v23 = *(v20 + 56);
          v24 = *(v20 + 64);
          sub_1974028EC(v20, 1);
          sub_19752180C();
          v25 = *(v20 + 72);
          v26 = *(v20 + 80);
          sub_19752180C();
          if (*(v20 + 24))
          {
            v35 = *(v20 + 16);
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          v27 = *(v20 + 33);
          sub_197522A7C();
          v3 = v37;
          *(v20 + 32);
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_1974028EC(v20, 2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
        }

        sub_19752180C();
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_1974028EC(v20, 0);
        sub_197521F4C();
      }

      result = sub_197522A9C();
      v28 = -1 << *(v6 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v13 + 8 * v30);
          if (v34 != -1)
          {
            v14 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_39;
      }

      v14 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 16 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v36;
        goto LABEL_37;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {

LABEL_37:
    *v2 = v6;
  }

  return result;
}

void sub_1974296EC(void *a1, unsigned __int8 a2, unint64_t a3, char a4)
{
  v6 = v4;
  v95 = sub_1975212CC();
  v11 = *(v95 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v95, v13);
  v94 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*v6 + 16);
  v16 = *(*v6 + 24);
  v91 = v6;
  if (v16 > v15 && (a4 & 1) != 0)
  {
    goto LABEL_87;
  }

  if (a4)
  {
    sub_19747E614(v15 + 1);
  }

  else
  {
    if (v16 > v15)
    {
      sub_19747FB74();
      goto LABEL_87;
    }

    sub_197429338(v15 + 1);
  }

  v17 = *v6;
  v18 = *(*v6 + 40);
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

  v19 = sub_197522A9C();
  v20 = v17 + 56;
  v21 = -1 << *(v17 + 32);
  a3 = v19 & ~v21;
  if ((*(v17 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v96 = ~v21;
    v92 = (v11 + 8);
    v93 = v17 + 56;
    v90 = v17;
    while (1)
    {
      v23 = *(v17 + 48) + 16 * a3;
      v5 = *v23;
      v24 = *(v23 + 8);
      if (!*(v23 + 8))
      {
        if (!a2)
        {
          sub_19744CC00(0, &qword_1ED7C8630, 0x1E69E58C0);
          sub_1974028EC(a1, 0);
          sub_1974028EC(v5, 0);
          v22 = sub_197521F3C();
          sub_1974028C8(a1, 0);
          sub_1974028C8(v5, 0);
          if (v22)
          {
            goto LABEL_94;
          }

          goto LABEL_16;
        }

        type metadata accessor for PersistentIdentifierImplementation();
        v30 = swift_allocObject();
        *(v30 + 40) = 0;
        *(v30 + 48) = 0;
        sub_1974028EC(a1, a2);
        sub_1974028EC(v5, 0);
        v31 = [v5 persistentStore];
        if (v31 && (v32 = v31, v33 = [v31 identifier], v32, v33))
        {
          v34 = sub_1975217BC();
          v36 = v35;
        }

        else
        {
          v34 = 0;
          v36 = 0;
        }

        *(v30 + 16) = v34;
        *(v30 + 24) = v36;
        *(v30 + 33) = [v5 isTemporaryID];
        *(v30 + 32) = 1;
        v54 = [v5 URIRepresentation];
        v55 = v94;
        sub_19752127C();

        v56 = sub_19752123C();
        v58 = v57;
        (*v92)(v55, v95);
        *(v30 + 56) = v56;
        *(v30 + 64) = v58;
        v59 = [v5 entityName];
        v60 = sub_1975217BC();
        v62 = v61;

        *(v30 + 72) = v60;
        *(v30 + 80) = v62;
        v20 = v93;
        v44 = a2;
        goto LABEL_57;
      }

      if (v24 != 1)
      {
        break;
      }

      if (a2 != 1)
      {
        sub_1974028EC(v5, 1);
        sub_1974028EC(a1, a2);
        sub_1974028EC(v5, 1);
        v30 = v5;
        v44 = a2;
        if (!a2)
        {
          goto LABEL_52;
        }

LABEL_57:
        if (v44 == 1)
        {
          sub_1974028EC(a1, 1);
          v47 = a1;
        }

        else
        {
          type metadata accessor for PersistentIdentifierImplementation();
          v47 = swift_allocObject();
          *(v47 + 40) = 0;
          *(v47 + 48) = 0;
          *(v47 + 56) = sub_19750A470();
          *(v47 + 64) = v63;
          *(v47 + 72) = sub_19750A588();
          *(v47 + 80) = v64;
          *(v47 + 16) = 0;
          *(v47 + 24) = 0;
          *(v47 + 32) = 256;
        }

LABEL_62:
        if ((*(v30 + 56) != *(v47 + 56) || *(v30 + 64) != *(v47 + 64)) && (sub_19752282C() & 1) == 0 || (*(v30 + 72) != *(v47 + 72) || *(v30 + 80) != *(v47 + 80)) && (sub_19752282C() & 1) == 0)
        {
LABEL_73:

          goto LABEL_75;
        }

        v74 = *(v30 + 24);
        v75 = *(v47 + 24);
        if (!v74)
        {

          if (!v75)
          {
            goto LABEL_92;
          }

LABEL_75:

          v43 = a2;
LABEL_76:
          sub_1974028C8(a1, v43);
          sub_1974028C8(v5, v24);
          goto LABEL_16;
        }

        if (!v75)
        {
          goto LABEL_73;
        }

        if (*(v30 + 16) == *(v47 + 16) && v74 == v75)
        {

LABEL_92:

LABEL_93:
          sub_1974028C8(a1, a2);
          sub_1974028C8(v5, v24);
LABEL_94:
          sub_1975229BC();
          __break(1u);
          return;
        }

        v76 = *(v47 + 24);
        v77 = sub_19752282C();

        sub_1974028C8(a1, a2);
        v78 = v5;
        v79 = v24;
        goto LABEL_83;
      }

      v25 = v5[7] == a1[7] && v5[8] == a1[8];
      if (v25 || (sub_19752282C() & 1) != 0)
      {
        v26 = v5[9] == a1[9] && v5[10] == a1[10];
        if (v26 || (sub_19752282C() & 1) != 0)
        {
          v27 = v5[3];
          v28 = a1[3];
          if (v27)
          {
            if (v28)
            {
              v29 = v5[2] == a1[2] && v27 == v28;
              if (v29 || (sub_19752282C() & 1) != 0)
              {
                goto LABEL_94;
              }
            }
          }

          else if (!v28)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_16:
      a3 = (a3 + 1) & v96;
      if (((*(v20 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    if (a2 != 2)
    {
      type metadata accessor for PersistentIdentifierImplementation();
      v30 = swift_allocObject();
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      sub_1974028EC(a1, a2);
      sub_1974028EC(v5, 2);
      *(v30 + 56) = sub_19750A470();
      *(v30 + 64) = v45;
      *(v30 + 72) = sub_19750A588();
      *(v30 + 80) = v46;
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      *(v30 + 32) = 256;
      v44 = a2;
      if (a2)
      {
        goto LABEL_57;
      }

LABEL_52:
      type metadata accessor for PersistentIdentifierImplementation();
      v47 = swift_allocObject();
      *(v47 + 40) = 0;
      *(v47 + 48) = 0;
      v48 = [a1 persistentStore];
      if (v48 && (v49 = v48, v50 = [v48 identifier], v49, v50))
      {
        v51 = sub_1975217BC();
        v53 = v52;
      }

      else
      {
        v51 = 0;
        v53 = 0;
      }

      *(v47 + 16) = v51;
      *(v47 + 24) = v53;
      *(v47 + 33) = [a1 isTemporaryID];
      *(v47 + 32) = 1;
      v65 = [a1 URIRepresentation];
      v66 = v94;
      sub_19752127C();

      v67 = sub_19752123C();
      v69 = v68;
      (*v92)(v66, v95);
      *(v47 + 56) = v67;
      *(v47 + 64) = v69;
      v70 = [a1 entityName];
      v71 = sub_1975217BC();
      v73 = v72;

      *(v47 + 72) = v71;
      *(v47 + 80) = v73;
      v17 = v90;
      v20 = v93;
      goto LABEL_62;
    }

    sub_1974028EC(a1, 2);
    sub_1974028EC(v5, 2);
    v37 = sub_19750A470();
    v39 = v38;
    if (v37 == sub_19750A470() && v39 == v40)
    {
    }

    else
    {
      v42 = sub_19752282C();

      if ((v42 & 1) == 0)
      {
        v43 = 2;
        LOBYTE(v24) = 2;
        goto LABEL_76;
      }
    }

    v80 = sub_19750A588();
    v82 = v81;
    if (v80 == sub_19750A588() && v82 == v83)
    {
      goto LABEL_90;
    }

    v77 = sub_19752282C();

    sub_1974028C8(a1, 2);
    v78 = v5;
    v79 = 2;
LABEL_83:
    sub_1974028C8(v78, v79);
    if (v77)
    {
      goto LABEL_94;
    }

    goto LABEL_16;
  }

LABEL_87:
  v85 = *v91;
  *(v85 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v86 = *(v85 + 48) + 16 * a3;
  *v86 = a1;
  *(v86 + 8) = a2;
  v87 = *(v85 + 16);
  v88 = __OFADD__(v87, 1);
  v89 = v87 + 1;
  if (v88)
  {
    __break(1u);
LABEL_90:

    a2 = 2;
    LOBYTE(v24) = 2;
    goto LABEL_93;
  }

  *(v85 + 16) = v89;
}

uint64_t sub_19742A020(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_19742A068()
{
  result = qword_1ED7C7268;
  if (!qword_1ED7C7268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2B900, &qword_19752FBE0);
    sub_197452A0C(&qword_1ED7C7148, sub_197412644);
    sub_197452A0C(qword_1ED7C7158, sub_197411E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7268);
  }

  return result;
}

uint64_t sub_19742A1A4(_OWORD *a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = a1[1];
    v12[0] = *a1;
    v12[1] = v4;
    v5 = a1[3];
    v12[2] = a1[2];
    v12[3] = v5;
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    sub_19742A344(v12, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_197520DAC();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v11;
  }

  else
  {
    sub_197448384(a1, &qword_1EAF2B650, &qword_19752F178);
    sub_19749F5E4(a2, v12);
    v10 = sub_197520DAC();
    (*(*(v10 - 8) + 8))(a2, v10);
    return sub_197448384(v12, &qword_1EAF2B650, &qword_19752F178);
  }

  return result;
}

uint64_t sub_19742A2E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_19742A344(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_197520DAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_1974079DC(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_19747C0E8();
      goto LABEL_7;
    }

    sub_197448648(v19, a3 & 1);
    v25 = *v4;
    v26 = sub_1974079DC(a2);
    if ((v20 & 1) == (v27 & 1))
    {
      v16 = v26;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_19742A510(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_1975229CC();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7] + (v16 << 6);

  return sub_19744BDE0(a1, v23);
}

uint64_t sub_19742A510(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_197520DAC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + (a1 << 6));
  v12 = a3[3];
  v11[2] = a3[2];
  v11[3] = v12;
  v13 = a3[1];
  *v11 = *a3;
  v11[1] = v13;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_19742A5D8(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a8;
  v9 = v8;
  v76 = a2;
  v77 = a4;
  v75 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  v15 = *(v70 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v59 = &v58 - v18;
  v62 = a5;
  v60 = *(a5 - 8);
  v19 = *(v60 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v72 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v73 = &v58 - v24;
  v25 = sub_197521F5C();
  v63 = *(v25 - 8);
  v64 = v25;
  v26 = *(v63 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v66 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v33 = &v58 - v32;
  v34 = *(*(a4 - 1) + 64);
  v36 = MEMORY[0x1EEE9AC00](v31, v35);
  v65 = &v58 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v71 = *(a3 - 1);
  v40 = *(v71 + 8);
  MEMORY[0x1EEE9AC00](v39, v41);
  v43 = &v58 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a6;
  v78 = swift_getAssociatedTypeWitness();
  v67 = *(v78 - 8);
  v44 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v78, v45);
  v47 = &v58 - v46;
  v48 = sub_1975218FC();
  v79 = sub_19752230C();
  v74 = sub_19752231C();
  sub_1975222BC();
  (*(v71 + 2))(v43, v68, a3);
  v77 = v47;
  v71 = a3;
  result = sub_1975218EC();
  if (v48 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v48)
  {
    v50 = (v70 + 48);
    v51 = (v70 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_197521F8C();
      result = (*v50)(v33, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v75(v33, v73);
      if (v9)
      {
        (*(v67 + 8))(v77, v78);

        (*(v60 + 32))(v61, v73, v62);
        return (*v51)(v33, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v51)(v33, AssociatedTypeWitness);
      sub_1975222FC();
      if (!--v48)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v52 = v66;
  sub_197521F8C();
  v53 = v52;
  v54 = v70;
  v55 = *(v70 + 48);
  v73 = (v70 + 48);
  v71 = v55;
  if (v55(v52, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v67 + 8))(v77, v78);
    (*(v63 + 8))(v53, v64);
    return v79;
  }

  else
  {
    v70 = *(v54 + 32);
    v56 = (v54 + 8);
    v57 = v59;
    while (1)
    {
      (v70)(v57, v53, AssociatedTypeWitness);
      v75(v57, v72);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v56)(v57, AssociatedTypeWitness);
      sub_1975222FC();
      sub_197521F8C();
      if (v71(v53, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v56)(v57, AssociatedTypeWitness);
    (*(v67 + 8))(v77, v78);

    return (*(v60 + 32))(v61, v72, v62);
  }
}

uint64_t sub_19742AD04(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v13);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0Tm, a1, AssociatedTypeWitness);
  a2(v13);
  if (v6)
  {
    *a6 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm_0(v13);
}

uint64_t sub_19742AE44(void *a1, void *a2, unsigned __int8 a3)
{
  v94 = sub_1975212CC();
  v7 = *(v94 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v94, v9);
  v93 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = *(*v3 + 40);
  sub_197522A5C();
  v89 = v3;
  v90 = a1;
  if (a3)
  {
    if (a3 == 1)
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
  v97 = v11 + 56;
  if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_78:
    v79 = v89;
    v80 = *v89;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = *v79;
    sub_1974028EC(a2, a3);
    sub_1974296EC(a2, a3, v15, isUniquelyReferenced_nonNull_native);
    *v79 = v98;
    v82 = v90;
    *v90 = a2;
    *(v82 + 8) = a3;
    return 1;
  }

  v96 = ~v14;
  v91 = v11;
  v92 = (v7 + 8);
  while (1)
  {
    v17 = 16 * v15;
    v18 = *(v11 + 48) + 16 * v15;
    v19 = *v18;
    v20 = *(v18 + 8);
    if (!*(v18 + 8))
    {
      if (!a3)
      {
        sub_19744CC00(0, &qword_1ED7C8630, 0x1E69E58C0);
        sub_1974028EC(a2, 0);
        sub_1974028EC(v19, 0);
        v16 = sub_197521F3C();
        sub_1974028C8(a2, 0);
        sub_1974028C8(v19, 0);
        if (v16)
        {
          goto LABEL_83;
        }

        goto LABEL_9;
      }

      v95 = 16 * v15;
      type metadata accessor for PersistentIdentifierImplementation();
      v26 = swift_allocObject();
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      sub_1974028EC(a2, a3);
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
      v51 = v93;
      sub_19752127C();

      v52 = sub_19752123C();
      v54 = v53;
      (*v92)(v51, v94);
      *(v26 + 56) = v52;
      *(v26 + 64) = v54;
      v55 = [v19 entityName];
      v56 = sub_1975217BC();
      v58 = v57;

      *(v26 + 72) = v56;
      *(v26 + 80) = v58;
      v40 = a3;
      goto LABEL_50;
    }

    if (v20 == 1)
    {
      break;
    }

    if (a3 != 2)
    {
      v95 = 16 * v15;
      type metadata accessor for PersistentIdentifierImplementation();
      v26 = swift_allocObject();
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      sub_1974028EC(a2, a3);
      sub_1974028EC(v19, 2);
      *(v26 + 56) = sub_19750A470();
      *(v26 + 64) = v41;
      *(v26 + 72) = sub_19750A588();
      *(v26 + 80) = v42;
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = 256;
      v40 = a3;
      if (!a3)
      {
LABEL_45:
        type metadata accessor for PersistentIdentifierImplementation();
        v43 = swift_allocObject();
        *(v43 + 40) = 0;
        *(v43 + 48) = 0;
        v44 = [a2 persistentStore];
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
        *(v43 + 33) = [a2 isTemporaryID];
        *(v43 + 32) = 1;
        v61 = [a2 URIRepresentation];
        v62 = v93;
        sub_19752127C();

        v63 = sub_19752123C();
        v65 = v64;
        (*v92)(v62, v94);
        *(v43 + 56) = v63;
        *(v43 + 64) = v65;
        v66 = [a2 entityName];
        v67 = sub_1975217BC();
        v69 = v68;

        *(v43 + 72) = v67;
        *(v43 + 80) = v69;
        v11 = v91;
        goto LABEL_55;
      }

LABEL_50:
      if (v40 == 1)
      {
        sub_1974028EC(a2, 1);
        v43 = a2;
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

LABEL_55:
      if ((*(v26 + 56) != *(v43 + 56) || *(v26 + 64) != *(v43 + 64)) && (sub_19752282C() & 1) == 0 || (*(v26 + 72) != *(v43 + 72) || *(v26 + 80) != *(v43 + 80)) && (sub_19752282C() & 1) == 0)
      {
LABEL_67:

        goto LABEL_69;
      }

      v70 = *(v26 + 24);
      v71 = *(v43 + 24);
      if (!v70)
      {

        if (!v71)
        {
          goto LABEL_81;
        }

LABEL_69:

        v39 = a3;
LABEL_70:
        sub_1974028C8(a2, v39);
        sub_1974028C8(v19, v20);
        goto LABEL_9;
      }

      if (!v71)
      {
        goto LABEL_67;
      }

      if (*(v26 + 16) == *(v43 + 16) && v70 == v71)
      {

LABEL_81:

        v84 = a3;
        v17 = v95;
LABEL_82:
        sub_1974028C8(a2, v84);
        sub_1974028C8(v19, v20);
        goto LABEL_83;
      }

      v72 = *(v43 + 24);
      v73 = sub_19752282C();

      sub_1974028C8(a2, a3);
      sub_1974028C8(v19, v20);
      v17 = v95;
      if (v73)
      {
        goto LABEL_83;
      }

      goto LABEL_9;
    }

    sub_1974028EC(a2, 2);
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
        goto LABEL_70;
      }
    }

    v74 = sub_19750A588();
    v76 = v75;
    if (v74 == sub_19750A588() && v76 == v77)
    {

      v84 = 2;
      LOBYTE(v20) = 2;
      goto LABEL_82;
    }

    v78 = sub_19752282C();

    sub_1974028C8(a2, 2);
    sub_1974028C8(v19, 2);
    if (v78)
    {
      goto LABEL_83;
    }

LABEL_9:
    v15 = (v15 + 1) & v96;
    if (((*(v97 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  if (a3 != 1)
  {
    v95 = 16 * v15;
    sub_1974028EC(v19, 1);
    sub_1974028EC(a2, a3);
    sub_1974028EC(v19, 1);
    v26 = v19;
    v40 = a3;
    if (!a3)
    {
      goto LABEL_45;
    }

    goto LABEL_50;
  }

  v21 = v19[7] == a2[7] && v19[8] == a2[8];
  if (!v21 && (sub_19752282C() & 1) == 0)
  {
    goto LABEL_9;
  }

  v22 = v19[9] == a2[9] && v19[10] == a2[10];
  if (!v22 && (sub_19752282C() & 1) == 0)
  {
    goto LABEL_9;
  }

  v23 = v19[3];
  v24 = a2[3];
  if (!v23)
  {
    if (!v24)
    {
      goto LABEL_83;
    }

    goto LABEL_9;
  }

  if (!v24)
  {
    goto LABEL_9;
  }

  if (v19[2] != a2[2] || v23 != v24)
  {
    if (sub_19752282C())
    {
      goto LABEL_83;
    }

    goto LABEL_9;
  }

  a3 = 1;
LABEL_83:
  v85 = v90;
  sub_1974028C8(a2, a3);
  v86 = *(v11 + 48) + v17;
  v87 = *v86;
  *v85 = *v86;
  v88 = *(v86 + 8);
  *(v85 + 8) = v88;
  sub_1974028EC(v87, v88);
  return 0;
}

uint64_t PersistentModel.setValue<A>(forKey:to:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v10 = *a1;
  v11 = MEMORY[0x1E69E77B0];
  v12 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v12, a3))
  {
    sub_1974258A4(v12, v7);
  }

  v13 = sub_19744C800(a1, v12, v7);
  v14 = a1;
  v15 = v13;
  v57 = v14;
  if (!a2)
  {
    v24 = sub_1974C4BBC(v4, v14, v7, a4);
    if (!v24)
    {
      if (!PersistentModel.modelContext.getter(v12, v7))
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v20 = v24;
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v13;
  v18 = *(*(v10 + *v16 + 8) + 16);
  swift_unknownObjectRetain();
  if (sub_1973FE6F0(v18, a4))
  {
    sub_1974258A4(v18, a4);
  }

  swift_unknownObjectRelease();
  v19 = sub_1974C4BBC(v4, v57, v7, a4);
  if (v19)
  {
    v20 = v19;
    *&v60 = v19;
    v58 = a2;
    v21 = *(*(v10 + *MEMORY[0x1E69E77B0] + 8) + 16);
    v22 = *(*(a4 + 16) + 8);
    swift_unknownObjectRetain();
    LOBYTE(v21) = sub_19752173C();
    swift_unknownObjectRelease();
    v15 = v17;
    v11 = MEMORY[0x1E69E77B0];
    if (v21)
    {

      return swift_unknownObjectRelease();
    }

LABEL_11:
    sub_197454D38(v15, v20, v12, *(*(v10 + *v11 + 8) + 16), v7, a4);
    swift_unknownObjectRelease();
    if (!PersistentModel.modelContext.getter(v12, v7))
    {
      if (!a2)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

LABEL_18:

    goto LABEL_19;
  }

  v25 = PersistentModel.modelContext.getter(v12, v7);
  v11 = MEMORY[0x1E69E77B0];
  if (v25)
  {
    goto LABEL_18;
  }

LABEL_15:
  v26 = *(*(v10 + *v11 + 8) + 16);
  if (PersistentModel.modelContext.getter(v26, a4))
  {

    v27 = PersistentModel.modelContext.getter(v26, a4);
    sub_197452A84(v27, v12, v7);

    v55 = 0;
    v56 = 1;
    goto LABEL_37;
  }

LABEL_19:
  if (!PersistentModel.modelContext.getter(v12, v7) || (, !a2))
  {
LABEL_23:
    v29 = PersistentModel.modelContext.getter(v12, v7);
    v56 = v29 == 0;
    if (v29)
    {
    }

    if (a2)
    {
      v30 = PersistentModel.modelContext.getter(*(*(v10 + *v11 + 8) + 16), a4);
      v55 = v30 == 0;
      if (v30)
      {
      }

      v31 = PersistentModel.modelContext.getter(v12, v7);
      if (v31)
      {
        v32 = v31;
        v54 = *(*(v10 + *v11 + 8) + 16);
        v33 = PersistentModel.modelContext.getter(v54, a4);
        if (v33)
        {
          v34 = v33;
          if (v32 != v33)
          {
            goto LABEL_56;
          }
        }
      }
    }

    else
    {
      if (PersistentModel.modelContext.getter(v12, v7))
      {
      }

      v55 = 0;
    }

    goto LABEL_37;
  }

  v28 = *(*(v10 + *v11 + 8) + 16);
  if (PersistentModel.modelContext.getter(v28, a4))
  {

    goto LABEL_23;
  }

  v35 = PersistentModel.modelContext.getter(v12, v7);
  sub_197452A84(v35, v28, a4);

  v55 = 1;
  v56 = 0;
LABEL_37:
  if (PersistentModel.modelContext.getter(v12, v7))
  {
    sub_197432658(v5, v12, v7);
  }

  if (swift_getAssociatedTypeWitness() == v12)
  {
    (*(v7 + 56))(&v60, v12, v7);
    v38 = a4;
    v39 = v10;
    v40 = v15;
    v41 = v62;
    v42 = v63;
    __swift_project_boxed_opaque_existential_1Tm_2(&v60, v62);
    v43 = *(*(v39 + *MEMORY[0x1E69E77B0] + 8) + 16);
    v44 = v41;
    v15 = v40;
    v10 = v39;
    a4 = v38;
    (*(v42 + 128))(v57, a2, v43, v38, v44, v42);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v60);
  }

  else
  {
    sub_1974C2DAC(v57, v7, &v60);
    v32 = v61;
    v36 = *v61;
    v34 = sub_197521FFC();
    v37 = swift_conformsToProtocol2();
    if (!v37 || !v34)
    {
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
      v48 = sub_197522B8C();
      a4 = v49;
      MEMORY[0x19A8DFF80](v48);

      while (1)
      {
        sub_1975223EC();
        __break(1u);
LABEL_56:
        *&v60 = 0;
        *(&v60 + 1) = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x8000000197527DA0);
        PersistentModel.persistentModelID.getter(v12, v7, &v58);
        v50 = v58;
        v51 = v59;
        v7 = MEMORY[0x1E69E7078];
        sub_19752235C();
        sub_1974028C8(v50, v51);
        MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197527DC0);
        v58 = v32;
        v12 = type metadata accessor for ModelContext(0);
        sub_19752235C();
        MEMORY[0x19A8DFF80](0xD000000000000018, 0x8000000197527DE0);
        PersistentModel.persistentModelID.getter(v54, a4, &v58);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
        v52 = sub_1975217CC();
        a4 = v53;
        MEMORY[0x19A8DFF80](v52);

        MEMORY[0x19A8DFF80](0xD000000000000024, 0x8000000197527E00);
        v58 = v34;
        sub_19752235C();
      }
    }

    sub_1974C4FE8(v34, v32, v5, a2, v12, *(*(v10 + *MEMORY[0x1E69E77B0] + 8) + 16), v34, v7, a4, v37);
    sub_1973F82A8(&v60);
  }

  v45 = MEMORY[0x1E69E77B0];
  if (a2)
  {
    v46 = swift_unknownObjectRetain();
    sub_197452DB8(v46, a4, v12, v7);
    sub_1974530DC(v15, a2, v12, *(*(v10 + *v45 + 8) + 16), v7, a4);
    swift_unknownObjectRelease();
  }

  if (v56 && PersistentModel.modelContext.getter(v12, v7))
  {
    sub_197454EEC(v5, v12, v7);
  }

  if (v55 && a2)
  {
    v47 = *(*(v10 + *v45 + 8) + 16);
    if (PersistentModel.modelContext.getter(v47, a4))
    {
      sub_197454EEC(a2, v47, a4);
    }
  }
}

{
  v9 = *a1;
  v10 = MEMORY[0x1E69E77B0];
  v11 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v11, a3))
  {
    sub_1974258A4(v11, a3);
  }

  if (PersistentModel.modelContext.getter(v11, a3))
  {
    sub_197432658(v4, v11, a3);
  }

  if (swift_getAssociatedTypeWitness() == v11)
  {
    (*(a3 + 56))(&v21, v11, a3);
    v18 = v23;
    v19 = v24;
    __swift_project_boxed_opaque_existential_1Tm_2(&v21, v23);
    (*(v19 + 112))(a1, a2, *(v9 + *v10 + 8), a4, v18, v19);
    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v21);
  }

  else
  {
    sub_1974C2DAC(a1, a3, &v21);
    v12 = v22;
    v13 = *v22;
    v14 = sub_197521FFC();
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
      v20 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v20);

      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      sub_1974C3C60(v14, v12, v4, a2, v11, *(v9 + *v10 + 8), v14, a3, a4, v15);
      return sub_1973F82A8(&v21);
    }
  }

  return result;
}

{
  v5 = v4;
  v10 = *a1;
  v11 = MEMORY[0x1E69E77B0];
  v12 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v12, a3))
  {
    sub_1974258A4(v12, a3);
  }

  v13 = *(v10 + *v11 + 8);
  if (sub_1973FE6F0(v13, a4))
  {
    sub_1974258A4(v13, a4);
  }

  v14 = sub_1974C457C(v4, a1, a3, a4);
  *&v42 = v14;
  v40 = a2;
  v15 = *(*(a4 + 16) + 8);
  if (sub_19752173C())
  {
    return swift_unknownObjectRelease();
  }

  sub_197452DB8(a2, a4, v12, a3);
  if (PersistentModel.modelContext.getter(v12, a3))
  {
  }

  else if (PersistentModel.modelContext.getter(v13, a4))
  {
    v19 = v14;

    v20 = PersistentModel.modelContext.getter(v13, a4);
    sub_197452A84(v20, v12, a3);
    v39 = 0;
    v37 = 1;
    goto LABEL_20;
  }

  if (!PersistentModel.modelContext.getter(v12, a3))
  {
    goto LABEL_11;
  }

  if (PersistentModel.modelContext.getter(v13, a4))
  {

LABEL_11:
    v16 = PersistentModel.modelContext.getter(v12, a3);
    v17 = PersistentModel.modelContext.getter(v13, a4);
    if (v16)
    {
      if (v17)
      {
        v18 = v17;

        if (v16 != v18)
        {
          goto LABEL_38;
        }

        goto LABEL_18;
      }
    }

    else if (!v17)
    {
LABEL_18:
      v39 = 0;
      v37 = 0;
      goto LABEL_21;
    }

LABEL_38:
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x8000000197527DA0);
    PersistentModel.persistentModelID.getter(v12, a3, &v40);
    v31 = v40;
    v32 = v41;
    v46 = v40;
    v47 = v41;
    sub_19752235C();
    sub_1974028C8(v31, v32);
    MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197527DC0);
    v40 = PersistentModel.modelContext.getter(v12, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9A8, &qword_19752FD50);
    v33 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v33);

    MEMORY[0x19A8DFF80](0xD000000000000018, 0x8000000197527DE0);
    PersistentModel.persistentModelID.getter(v13, a4, &v40);
    v34 = v40;
    v35 = v41;
    v46 = v40;
    v47 = v41;
    sub_19752235C();
    sub_1974028C8(v34, v35);
    MEMORY[0x19A8DFF80](0xD000000000000024, 0x8000000197527E00);
    v40 = PersistentModel.modelContext.getter(v13, a4);
    v36 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v36);

    goto LABEL_39;
  }

  v19 = v14;
  v21 = PersistentModel.modelContext.getter(v12, a3);
  sub_197452A84(v21, v13, a4);
  v37 = 0;
  v39 = 1;
LABEL_20:

  v14 = v19;
LABEL_21:
  v22 = sub_19744C800(a1, v12, a3);
  if (PersistentModel.modelContext.getter(v12, a3))
  {
    sub_197432658(v5, v12, a3);
  }

  v38 = v22;
  sub_197454D38(v22, v14, v12, v13, a3, a4);
  if (swift_getAssociatedTypeWitness() == v12)
  {
    (*(a3 + 56))(&v42, v12, a3);
    v27 = v44;
    v28 = v45;
    __swift_project_boxed_opaque_existential_1Tm_2(&v42, v44);
    (*(v28 + 120))(a1, a2, v13, a4, v27, v28);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v42);
LABEL_28:
    sub_1974530DC(v38, a2, v12, v13, a3, a4);
    if (v37 && PersistentModel.modelContext.getter(v12, a3))
    {
      sub_197454EEC(v5, v12, a3);
    }

    if (v39)
    {
      if (PersistentModel.modelContext.getter(v13, a4))
      {
        sub_197454EEC(a2, v13, a4);
      }
    }

    return swift_unknownObjectRelease();
  }

  sub_1974C2DAC(a1, a3, &v42);
  v23 = v43;
  v24 = *v43;
  v25 = sub_197521FFC();
  v26 = swift_conformsToProtocol2();
  if (v26 && v25)
  {
    sub_1974C49B4(v25, v23, v5, a2, v12, v13, v25, a3, a4, v26);
    sub_1973F82A8(&v42);
    goto LABEL_28;
  }

  v40 = 0;
  v41 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
  v30 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v30);

LABEL_39:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19742C058(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = sub_197403C30(v2, v3);
    if (v8)
    {
      sub_19742FE50(*(v5 + 56) + 32 * v7, &v13);

      LOBYTE(v6) = *(&v13 + 1) != 1;
      if (v13)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    LOBYTE(v6) = 0;
  }

  v13 = xmmword_19752EA60;
  v14 = 0;
  v15 = 0;
LABEL_7:
  if ((v6 & 1) == 0)
  {
    sub_1974050A8(&v13, &qword_1EAF2B640, &unk_19752F160);
    return 0;
  }

LABEL_9:
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = *(&v13 + 1);
  sub_1974050A8(&v13, &qword_1EAF2B640, &unk_19752F160);
  if (Strong)
  {
    *&v13 = Strong;
    *(&v13 + 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
    swift_dynamicCast();
    return v12;
  }

  return 0;
}

uint64_t PersistentModel.setTransformableValue<A>(forKey:to:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v9, a3))
  {
    sub_1974258A4(v9, a3);
  }

  if (PersistentModel.modelContext.getter(v9, a3))
  {
    sub_197432658(v3, v9, a3);
  }

  if (swift_getAssociatedTypeWitness() == v9)
  {
    (*(a3 + 56))(&v19, v9, a3);
    v16 = v21;
    v17 = v22;
    __swift_project_boxed_opaque_existential_1Tm_2(&v19, v21);
    (*(v17 + 152))(a1, a2, *(v7 + *v8 + 8), v16, v17);
    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v19);
  }

  else
  {
    sub_1974C2DAC(a1, a3, &v19);
    v10 = v20;
    v11 = *v20;
    v12 = sub_197521FFC();
    v13 = swift_conformsToProtocol2();
    if (v13)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
      v18 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v18);

      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      sub_1974C8578(v12, v10, v3, a2, v9, *(v7 + *v8 + 8), v12, a3, v13);
      return sub_1973F82A8(&v19);
    }
  }

  return result;
}

uint64_t sub_19742C490(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v10 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v6 = v10;
  boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v9);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm_1, a2, v6);

  sub_1973FCF28(v9, a1);
}

uint64_t sub_19742C568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v65 = a4;
  v63 = a5;
  v8 = type metadata accessor for EditingState();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v64 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v59 = AssociatedTypeWitness;
  v13 = swift_getAssociatedTypeWitness();
  v57 = sub_197521F5C();
  v56 = *(v57 - 8);
  v14 = *(v56 + 64);
  v16 = MEMORY[0x1EEE9AC00](v57, v15);
  v18 = &v56 - v17;
  v19 = *(a3 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v16, v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v13;
  v25 = *(v13 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22, v27);
  v29 = &v56 - v28;
  v30 = *a2;
  v31 = *(a2 + 8);
  v67 = a1;
  v61 = v31;
  v60 = v30;
  if (v31)
  {
    if (v31 != 1 || (v35 = v30[3]) == 0)
    {
      v72 = 0;
      v73 = 0xE000000000000000;
      v50 = v31;
      v51 = v30;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197526FB0);
      *&v70 = v51;
      BYTE8(v70) = v50;
      sub_19752235C();
      goto LABEL_19;
    }

    v33 = v30[2];
    v36 = v30[3];
  }

  else
  {
    v32 = [v30 storeIdentifier];
    v33 = sub_1975217BC();
    v35 = v34;
  }

  v37 = *(v69 + 16);
  v68 = a3;
  if (v37)
  {
    Strong = v37;
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      __break(1u);
LABEL_15:

      *&v70 = 0;
      *(&v70 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000005CLL, 0x8000000197527010);
      *&v71 = v60;
      BYTE8(v71) = v61;
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      *&v71 = v69;
      type metadata accessor for ModelContext(0);
      sub_19752235C();
      goto LABEL_19;
    }
  }

  v39 = Strong;
  swift_beginAccess();
  v40 = *(v39 + 56);

  if (!*(v40 + 16))
  {
    goto LABEL_15;
  }

  v41 = sub_1973F4028(v33, v35);
  if ((v42 & 1) == 0)
  {
    goto LABEL_15;
  }

  v58 = *(*(v40 + 56) + 16 * v41);
  swift_unknownObjectRetain();

  v70 = v58;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  v43 = swift_checkMetadataState();
  if (swift_dynamicCast())
  {
    (*(v19 + 16))(v24, v67, v68);
    v44 = v66;
    if (swift_dynamicCast())
    {

      (*(v25 + 56))(v18, 0, 1, v44);
      (*(v25 + 32))(v29, v18, v44);
      *&v71 = v60;
      BYTE8(v71) = v61;
      v45 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
      v46 = v69;
      swift_beginAccess();
      v47 = v46 + v45;
      v48 = v64;
      sub_197404E70(v47, v64);
      (*(AssociatedConformanceWitness + 32))(v65, v29, &v71, v48, v65, v43);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_19740BE74(v48, type metadata accessor for EditingState);
      return (*(v25 + 8))(v29, v44);
    }

    (*(v25 + 56))(v18, 1, 1, v44);
    (*(v56 + 8))(v18, v57);
    *&v70 = 0;
    *(&v70 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000022, 0x80000001975270C0);
    v53 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v53);

    MEMORY[0x19A8DFF80](0xD000000000000038, 0x80000001975270F0);
    v54 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v54);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    v55 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v55);

    MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
    sub_1975227FC();
  }

  else
  {
    *&v70 = 0;
    *(&v70 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000048, 0x8000000197527070);
    v52 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v52);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    v71 = v58;
    sub_19752235C();
  }

LABEL_19:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19742CDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v244 = a6;
  *&v245 = a2;
  *(&v245 + 1) = a3;
  v243 = a8;
  v14 = *v9;
  v239 = sub_197521F5C();
  v238 = *(v239 - 8);
  v15 = *(v238 + 64);
  v17 = MEMORY[0x1EEE9AC00](v239, v16);
  v233 = v230 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v234 = v230 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v232 = v230 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v237 = v230 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v236 = v230 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v235 = v230 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v37 = v230 - v36;
  v246 = a7;
  v240 = *(a7 - 1);
  v38 = *(v240 + 64);
  v40 = MEMORY[0x1EEE9AC00](v35, v39);
  v42 = MEMORY[0x1EEE9AC00](v40, v41);
  v44 = v230 - v43;
  MEMORY[0x1EEE9AC00](v42, v45);
  v47 = v230 - v46;
  v48 = *a5;
  v49 = *(a5 + 8);
  v50 = *(v9[4] + 72);
  v242 = v49;
  v241 = v48;
  v230[1] = v14;
  v231 = v51;
  if (v49)
  {
    if (v49 == 1)
    {
      v52 = v48[9];
      v53 = v48[10];
    }

    else
    {

      v52 = sub_19750A588();
      v53 = v56;
    }
  }

  else
  {

    v54 = [v48 entityName];
    v52 = sub_1975217BC();
    v53 = v55;
  }

  if (!*(v50 + 16))
  {
LABEL_125:

    goto LABEL_126;
  }

  v57 = sub_1973F4028(v52, v53);
  v59 = v58;

  if ((v59 & 1) == 0)
  {
LABEL_126:

    *&v252 = 0;
    *(&v252 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197523F10);
    if (v242)
    {
      if (v242 == 1)
      {
        v195 = v241[9];
        v197 = v241[10];
      }

      else
      {
        v195 = sub_19750A588();
        v197 = v196;
      }
    }

    else
    {
      v199 = [v241 entityName];
      v195 = sub_1975217BC();
      v197 = v200;
    }

    MEMORY[0x19A8DFF80](v195, v197);

    MEMORY[0x19A8DFF80](0xD000000000000028, 0x8000000197523F30);
    *&v250 = v241;
    BYTE8(v250) = v242;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v250 = v9;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    v201 = [*(v9 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) managedObjectModel];
    v202 = [v201 description];
    v203 = sub_1975217BC();
    v205 = v204;

    MEMORY[0x19A8DFF80](v203, v205);

    goto LABEL_154;
  }

  v247 = *(*(v50 + 56) + 8 * v57);

  v61 = *(v9 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v63 = MEMORY[0x1EEE9AC00](v60, v62);
  MEMORY[0x1EEE9AC00](v63, v64);

  os_unfair_lock_lock(v61 + 4);
  sub_197431F54(&v252);
  os_unfair_lock_unlock(v61 + 4);
  v65 = v252;

  if (!v65)
  {
    *&v252 = 0;
    *(&v252 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v250 = v252;
    MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197523F60);
    v252 = v245;
    LOBYTE(v253) = a4;
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197523F90);
    sub_19752135C();
    sub_197413CBC(&qword_1EAF2AF28, MEMORY[0x1E69695A8]);
    v198 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v198);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    *&v252 = v9;
    sub_19752235C();
    goto LABEL_154;
  }

  v66 = *(&v245 + 1);
  v67 = v245;
  if (a4 > 2u)
  {
    if (a4 == 3)
    {
      swift_beginAccess();
      v118 = v65[5];
      if (*(v118 + 16))
      {
        v119 = v65[5];

        v120 = sub_197403C30(v241, v242);
        if (v121)
        {
          v122 = *(*(v118 + 56) + 8 * v120);

          if (*(v122 + 16))
          {
            v123 = sub_1973F4028(v67, v66);
            if (v124)
            {
              v125 = *(*(v122 + 56) + 8 * v123);

              *&v250 = v125;
              BYTE8(v250) = 0;
              return swift_dynamicCast();
            }
          }
        }

        v66 = *(&v245 + 1);
        v67 = v245;
      }

      *&v250 = 0;
      *(&v250 + 1) = 0xE000000000000000;
      sub_1975221EC();
      v249 = v250;
      MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197523FB0);
      *&v250 = v67;
      *(&v250 + 1) = v66;
      LOBYTE(v251) = 3;
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      *&v250 = v241;
      BYTE8(v250) = v242;
      sub_19752235C();
      goto LABEL_154;
    }

    v9 = v246;
    if (a4 == 4)
    {
      swift_beginAccess();
      v77 = v65[6];
      if (*(v77 + 16))
      {
        v78 = v65[6];

        v79 = sub_197403C30(v241, v242);
        if (v80)
        {
          v81 = *(*(v77 + 56) + 8 * v79);

          if (*(v81 + 16))
          {
            v82 = sub_1973F4028(v67, v66);
            if (v83)
            {
              v84 = *(*(v81 + 56) + 8 * v82);

              if (v84 >> 62)
              {
                v85 = sub_1975220EC();
                if (v85)
                {
                  goto LABEL_25;
                }
              }

              else
              {
                v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v85)
                {
LABEL_25:
                  *&v250 = MEMORY[0x1E69E7CC0];
                  sub_197411CB8(0, v85 & ~(v85 >> 63), 0);
                  if ((v85 & 0x8000000000000000) == 0)
                  {
                    v86 = 0;
                    v87 = v250;
                    do
                    {
                      if ((v84 & 0xC000000000000001) != 0)
                      {
                        v88 = MEMORY[0x19A8E0960](v86, v84);
                      }

                      else
                      {
                        v88 = *(v84 + 8 * v86 + 32);
                      }

                      *&v250 = v87;
                      v90 = *(v87 + 16);
                      v89 = *(v87 + 24);
                      if (v90 >= v89 >> 1)
                      {
                        v92 = v88;
                        sub_197411CB8((v89 > 1), v90 + 1, 1);
                        v88 = v92;
                        v87 = v250;
                      }

                      ++v86;
                      *(v87 + 16) = v90 + 1;
                      v91 = v87 + 16 * v90;
                      *(v91 + 32) = v88;
                      *(v91 + 40) = 0;
                    }

                    while (v85 != v86);

                    goto LABEL_121;
                  }

                  __break(1u);
                  goto LABEL_125;
                }
              }

              v87 = MEMORY[0x1E69E7CC0];
LABEL_121:
              *&v250 = v87;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
              return swift_dynamicCast();
            }
          }
        }

        v66 = *(&v245 + 1);
        v67 = v245;
      }

      *&v250 = 0;
      *(&v250 + 1) = 0xE000000000000000;
      sub_1975221EC();
      v249 = v250;
      MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197523FB0);
      *&v250 = v67;
      *(&v250 + 1) = v66;
      LOBYTE(v251) = 4;
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      *&v250 = v241;
      BYTE8(v250) = v242;
      sub_19752235C();
      goto LABEL_154;
    }

    swift_beginAccess();
    v158 = v65[7];
    if (*(v158 + 16))
    {
      v159 = v65[7];

      v160 = sub_197403C30(v241, v242);
      if (v161)
      {
        v162 = *(*(v158 + 56) + 8 * v160);

        if (*(v162 + 16))
        {
          v163 = sub_1973F4028(v67, v66);
          if (v164)
          {
            sub_197404860(*(v162 + 56) + 32 * v163, &v252);

LABEL_117:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
            return swift_dynamicCast();
          }
        }
      }
    }

    else
    {
    }

    v252 = 0u;
    v253 = 0u;
    goto LABEL_117;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      swift_beginAccess();
      v68 = v65[4];
      v69 = v246;
      v70 = v240;
      if (*(v68 + 16))
      {
        v71 = v65[4];

        v72 = sub_197403C30(v241, v242);
        if (v73)
        {
          v74 = *(*(v68 + 56) + 8 * v72);

          if (*(v74 + 16))
          {
            v75 = sub_1973F4028(v67, v66);
            if (v76)
            {
              sub_197404860(*(v74 + 56) + 32 * v75, &v252);

LABEL_95:
              sub_1973FE0E4(&v252, &v250, &qword_1EAF2AF20, &unk_19752F320);
              v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
              if (swift_dynamicCast())
              {
                sub_19740C044(&v252, &qword_1EAF2AF20, &unk_19752F320);

                (*(v70 + 56))(v37, 0, 1, v69);
                v178 = *(v70 + 32);
                v178(v47, v37, v69);
                return (v178)(v243, v47, v69);
              }

              v179 = *(v70 + 56);
              v179(v37, 1, 1, v69);
              v180 = *(v238 + 8);
              v180(v37, v239);
              sub_1973FE0E4(&v252, &v250, &qword_1EAF2AF20, &unk_19752F320);
              *&v245 = v177;
              if (!*(&v251 + 1))
              {
                goto LABEL_155;
              }

              *(&v245 + 1) = v180;
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_156;
              }

              v181 = v248;
              *&v250 = a1;
              v182 = a1;
              if (swift_conformsToProtocol2())
              {
                v182 = a1;
                if (a1)
                {
                  v182 = a1;
                  do
                  {
                    sub_1973F732C(v182, &v250);
                    v182 = v250;
                    if (swift_conformsToProtocol2())
                    {
                      v183 = v182 == 0;
                    }

                    else
                    {
                      v183 = 1;
                    }
                  }

                  while (!v183);
                }
              }

              v184 = swift_conformsToProtocol2();
              if (v184)
              {
                v185 = v182 == 0;
              }

              else
              {
                v185 = 1;
              }

              if (!v185)
              {
                v186 = v184;
                v187 = v235;
                v188 = v246;
                v179(v235, 1, 1, v246);
                v189 = v188;
                sub_19746CD10(v182, v181, *(&v181 + 1), v187, v188, v182, v186);
                sub_19744D0E0(v181, *(&v181 + 1));

                swift_beginAccess();
                v190 = v236;
                v191 = v239;
                (*(v238 + 16))(v236, v187, v239);
                v192 = *(&v245 + 1);
                (*(&v245 + 1))(v187, v191);
                v193 = v240;
                v194 = *(v240 + 48);
                if (v194(v190, 1, v189) == 1)
                {
                  v250 = v252;
                  v251 = v253;
                  swift_dynamicCast();
                  result = v194(v190, 1, v189);
                  if (result != 1)
                  {
                    return v192(v190, v191);
                  }
                }

                else
                {
                  sub_19740C044(&v252, &qword_1EAF2AF20, &unk_19752F320);
                  return (*(v193 + 32))(v243, v190, v189);
                }

                return result;
              }

              *&v250 = 0;
              *(&v250 + 1) = 0xE000000000000000;
              sub_1975221EC();
              v248 = v250;
              MEMORY[0x19A8DFF80](0xD000000000000014, 0x8000000197524210);
              sub_1973FE0E4(&v252, &v250, &qword_1EAF2AF20, &unk_19752F320);
              v227 = sub_1975217CC();
              MEMORY[0x19A8DFF80](v227);

              MEMORY[0x19A8DFF80](0xD000000000000022, 0x8000000197524230);
              v228 = sub_197522B8C();
              MEMORY[0x19A8DFF80](v228);

              while (1)
              {
LABEL_154:
                sub_1975223EC();
                __break(1u);
LABEL_155:
                sub_19740C044(&v250, &qword_1EAF2AF20, &unk_19752F320);
LABEL_156:
                *&v250 = 0;
                *(&v250 + 1) = 0xE000000000000000;
                sub_1975221EC();

                *&v248 = 0xD000000000000012;
                *(&v248 + 1) = 0x80000001975241D0;
                sub_1973FE0E4(&v252, &v250, &qword_1EAF2AF20, &unk_19752F320);
                v225 = sub_1975217CC();
                MEMORY[0x19A8DFF80](v225);

                MEMORY[0x19A8DFF80](0xD000000000000012, 0x80000001975241F0);
                v226 = sub_197522B8C();
                MEMORY[0x19A8DFF80](v226);
              }
            }
          }
        }
      }

      v252 = 0u;
      v253 = 0u;
      goto LABEL_95;
    }

    swift_beginAccess();
    v126 = v65[3];
    if (*(v126 + 16))
    {
      v127 = v65[3];

      v128 = sub_197403C30(v241, v242);
      if (v129)
      {
        v130 = *(*(v126 + 56) + 8 * v128);

        if (*(v130 + 16))
        {
          v131 = sub_1973F4028(v67, v66);
          if (v132)
          {
            v133 = *(*(v130 + 56) + 8 * v131);

            v134 = sub_1975215EC();
            v135 = v247;
            swift_beginAccess();
            v136 = *(v135 + 96);
            if (*(v136 + 16) && (v137 = sub_1973F4028(v67, v66), (v138 & 1) != 0))
            {
              v139 = *(*(v136 + 56) + 8 * v137);
              swift_endAccess();
              type metadata accessor for Schema.CompositeAttribute();
              v140 = swift_dynamicCastClass();
              if (v140)
              {
                v141 = v140;

                v142 = sub_19746C608(v134, v141);
                *&v250 = a1;
                v143 = a1;
                if (swift_conformsToProtocol2())
                {
                  v143 = a1;
                  if (a1)
                  {
                    v143 = a1;
                    do
                    {
                      sub_1973F732C(v143, &v250);
                      v143 = v250;
                      if (swift_conformsToProtocol2())
                      {
                        v144 = v143 == 0;
                      }

                      else
                      {
                        v144 = 1;
                      }
                    }

                    while (!v144);
                  }
                }

                v145 = dynamic_cast_existential_2_conditional(v143);
                if (!v145)
                {
                  *&v250 = 0;
                  *(&v250 + 1) = 0xE000000000000000;
                  sub_1975221EC();

                  *&v250 = 0xD000000000000023;
                  *(&v250 + 1) = 0x8000000197524170;
                  v217 = sub_197522B8C();
                  MEMORY[0x19A8DFF80](v217);

                  goto LABEL_154;
                }

                v147 = *(*(v145 - 8) + 64);
                v148 = MEMORY[0x1EEE9AC00](v145, v146);
                v149 = v142;
                *(&v245 + 1) = v142;
                v150 = v246;
                sub_19746CA90(v148, v149, v141);
                v151 = v237;
                if (!swift_dynamicCast())
                {
                  (*(v240 + 56))(v151, 1, 1, v150);
                  (*(v238 + 8))(v151, v239);
                  *&v250 = 0;
                  *(&v250 + 1) = 0xE000000000000000;
                  sub_1975221EC();

                  *&v250 = 0xD000000000000020;
                  *(&v250 + 1) = 0x80000001975241A0;
                  v218 = sub_197522B8C();
                  MEMORY[0x19A8DFF80](v218);

                  MEMORY[0x19A8DFF80](0x206D6F726620, 0xE600000000000000);
                  v219 = [*(&v245 + 1) description];
                  v220 = sub_1975217BC();
                  v222 = v221;

                  MEMORY[0x19A8DFF80](v220, v222);

                  goto LABEL_154;
                }

                v152 = v240;
                (*(v240 + 56))(v151, 0, 1, v150);
                v153 = v151;
                v154 = *(v152 + 32);
                v154(v44, v153, v150);
                v155 = v243;
                v156 = v44;
                v157 = v150;
                return (v154)(v155, v156, v157);
              }
            }

            else
            {
              swift_endAccess();
            }

            *&v250 = 0;
            *(&v250 + 1) = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197524130);
            *&v249 = v241;
            BYTE8(v249) = v242;
            sub_19752235C();
            MEMORY[0x19A8DFF80](0x2074756220, 0xE500000000000000);
            MEMORY[0x19A8DFF80](v245, *(&v245 + 1));
            MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197524150);
            *&v249 = v247;
            type metadata accessor for Schema.Entity();
            sub_19752235C();
            goto LABEL_154;
          }
        }
      }
    }

    *&v250 = 0;
    *(&v250 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000003CLL, 0x80000001975240F0);
    if (v242)
    {
      if (v242 == 1)
      {
        v206 = v241[9];
        v208 = v241[10];
      }

      else
      {
        v206 = sub_19750A588();
        v208 = v207;
      }
    }

    else
    {
      v223 = [v241 entityName];
      v206 = sub_1975217BC();
      v208 = v224;
    }

    MEMORY[0x19A8DFF80](v206, v208);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v245, *(&v245 + 1));
    MEMORY[0x19A8DFF80](0x20726F662029, 0xE600000000000000);
    *&v249 = v241;
    BYTE8(v249) = v242;
    sub_19752235C();
    goto LABEL_154;
  }

  v93 = v247;
  swift_beginAccess();
  v94 = *(v93 + 96);
  if (!*(v94 + 16) || (v95 = sub_1973F4028(v67, v66), (v96 & 1) == 0))
  {
    swift_endAccess();
    *&v252 = 0;
    *(&v252 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197523F10);
    MEMORY[0x19A8DFF80](v67, v66);
    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    *&v250 = v241;
    BYTE8(v250) = v242;
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x8000000197524010);
    *&v250 = v9;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v250 = v247;
    type metadata accessor for Schema.Entity();
    sub_19752235C();
    goto LABEL_154;
  }

  v97 = *(*(v94 + 56) + 8 * v95);
  swift_endAccess();
  *&v252 = a1;
  if (swift_conformsToProtocol2() && a1)
  {
    do
    {
      sub_1973F732C(a1, &v252);
      a1 = v252;
      if (swift_conformsToProtocol2())
      {
        v98 = a1 == 0;
      }

      else
      {
        v98 = 1;
      }
    }

    while (!v98);
  }

  if ((*(v97 + 120) & 0x40) != 0)
  {
    swift_beginAccess();
    v165 = v65[2];
    v166 = *(v165 + 16);

    if (!v166)
    {
      goto LABEL_146;
    }

    v167 = sub_197403C30(v241, v242);
    if ((v168 & 1) == 0 || (v169 = *(*(v165 + 56) + 8 * v167), , , !*(v169 + 16)) || (v170 = sub_1973F4028(v67, v66), (v171 & 1) == 0))
    {

      v66 = *(&v245 + 1);
      v67 = v245;
      goto LABEL_146;
    }

    sub_197404860(*(v169 + 56) + 32 * v170, &v250);

    sub_1974028B8(&v250, &v252);
    sub_1974028B8(&v252, &v250);
    return swift_dynamicCast();
  }

  v99 = swift_conformsToProtocol2();
  if (!v99 || !a1)
  {
    *&v252 = 0;
    *(&v252 + 1) = 0xE000000000000000;

    sub_1975221EC();
    v250 = v252;
    MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x8000000197524050);
    v209 = v247;
    swift_beginAccess();
    v210 = *(v209 + 16);
    v211 = *(v209 + 24);

    MEMORY[0x19A8DFF80](v210, v211);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v67, v66);
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v212 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v212);

    goto LABEL_154;
  }

  v100 = v99;
  swift_beginAccess();
  v101 = v65[2];
  v102 = *(v101 + 16);

  if (!v102)
  {
    goto LABEL_146;
  }

  v103 = sub_197403C30(v241, v242);
  if ((v104 & 1) == 0 || (v105 = *(*(v101 + 56) + 8 * v103), , , !*(v105 + 16)) || (v106 = sub_1973F4028(v67, v66), (v107 & 1) == 0))
  {

    v66 = *(&v245 + 1);
    v67 = v245;
LABEL_146:
    *&v252 = 0;
    *(&v252 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v250 = v252;
    MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197524080);
    v213 = v247;
    swift_beginAccess();
    v214 = *(v213 + 16);
    v215 = *(v213 + 24);

    MEMORY[0x19A8DFF80](v214, v215);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v67, v66);
    MEMORY[0x19A8DFF80](0x20726F662029, 0xE600000000000000);
    *&v248 = v241;
    BYTE8(v248) = v242;
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975240A0);
    sub_19752135C();
    sub_197413CBC(&qword_1EAF2AF28, MEMORY[0x1E69695A8]);
    v216 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v216);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    *&v248 = v9;
    sub_19752235C();
    goto LABEL_154;
  }

  sub_197404860(*(v105 + 56) + 32 * v106, &v250);

  sub_1974028B8(&v250, &v252);
  sub_197404860(&v252, &v250);
  if (!swift_dynamicCast())
  {
    sub_197404860(&v252, &v250);
    v172 = v233;
    v173 = v246;
    v174 = swift_dynamicCast();
    v175 = v240;
    if (!v174)
    {
      (*(v240 + 56))(v172, 1, 1, v173);
      (*(v238 + 8))(v172, v239);
      *&v250 = 0;
      *(&v250 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000026, 0x80000001975240C0);
      MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
      MEMORY[0x19A8DFF80](544370464, 0xE400000000000000);
      v229 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v229);

      MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
      sub_19752235C();
      goto LABEL_154;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v252);

    (*(v175 + 56))(v172, 0, 1, v173);
    v154 = *(v175 + 32);
    v176 = v231;
    v154(v231, v172, v173);
    v155 = v243;
    v156 = v176;
    v157 = v173;
    return (v154)(v155, v156, v157);
  }

  v108 = v248;
  v109 = v240;
  v110 = v232;
  v111 = v246;
  (*(v240 + 56))(v232, 1, 1, v246);
  sub_19746CD10(a1, v108, *(&v108 + 1), v110, v111, a1, v100);
  sub_19744D0E0(v108, *(&v108 + 1));

  swift_beginAccess();
  v112 = v238;
  v113 = v234;
  v114 = v239;
  (*(v238 + 16))(v234, v110, v239);
  v115 = *(v112 + 8);
  v115(v110, v114);
  v116 = *(v109 + 48);
  if (v116(v113, 1, v111) == 1)
  {
    sub_1974028B8(&v252, &v250);
    swift_dynamicCast();
    result = v116(v113, 1, v111);
    if (result != 1)
    {
      return (v115)(v113, v239);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v252);
    return (*(v109 + 32))(v243, v113, v111);
  }

  return result;
}

uint64_t sub_19742F2AC(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *a1;
  v6 = v1[2];
  v7 = *(v6 + 24);
  v8 = *(v7 + 16);

  v9 = MEMORY[0x1E69E77B0];
  if (!v8 || (v10 = sub_1973F7814(a1), (v11 & 1) == 0))
  {
    v40 = 0u;
    v41 = 0u;

LABEL_12:
    sub_1973FE5EC(&v40, &qword_1EAF2AF20, &unk_19752F320);
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    goto LABEL_13;
  }

  v12 = *(*(v7 + 56) + 8 * v10);
  swift_beginAccess();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = *(v6 + 32);
  if (v12 >= *(v13 + 16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_28;
  }

  sub_197413B20(v13 + 32 * v12 + 32, &v40);

  if (!*(&v41 + 1))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4E0, &qword_197534B50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    goto LABEL_13;
  }

  if (!*(&v38 + 1))
  {
LABEL_13:
    v20 = v9;
    sub_1973FE5EC(&v37, &qword_1EAF2C4E8, &qword_197534B58);
    goto LABEL_14;
  }

  sub_19743099C(&v37, &v40);
  v14 = v2[3];
  v15 = *(v2 + 32);
  sub_1974ADEAC(v14, *(v2 + 32));
  if (v15 != 255)
  {
    *&v37 = v2;
    WitnessTable = swift_getWitnessTable();
    v17 = *(sub_1973FE71C(v4, WitnessTable) + 16);

    if (v17)
    {
      v18 = v2[2];
      v19 = __swift_project_boxed_opaque_existential_1Tm_5(&v40, *(&v41 + 1));
      v20 = v9;
      v21 = *(v5 + *v9 + 8);
      v35 = v14;
      v36 = v15;
      *(&v38 + 1) = v21;
      v34 = v14;
      boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(&v37);
      sub_19742FAC8();

      sub_19742C568(v19, &v35, &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture, v21, boxed_opaque_existential_1Tm_1);

      sub_1973FCF28(&v37, a1);

      sub_1974A1014(v34, v15);

      __swift_destroy_boxed_opaque_existential_1Tm_7(&v40);
LABEL_14:
      v23 = v2[2];
      v24 = *(v23 + 24);
      v25 = *(v24 + 16);

      if (!v25 || (v26 = sub_1973F7814(a1), (v27 & 1) == 0))
      {
        v40 = 0u;
        v41 = 0u;
        goto LABEL_20;
      }

      v28 = *(*(v24 + 56) + 8 * v26);
      swift_beginAccess();
      if ((v28 & 0x8000000000000000) == 0)
      {
        v29 = *(v23 + 32);
        if (v28 < *(v29 + 16))
        {
          sub_197413B20(v29 + 32 * v28 + 32, &v40);
LABEL_20:

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
          v30 = *(v5 + *v20 + 8);
          return swift_dynamicCast();
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }

    *&v37 = 0;
    *(&v37 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000052, 0x800000019752B510);
    v36 = v15;
    sub_19752235C();
    MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
    v35 = a1;
    v32 = *(v4 + 232);
    v33 = *(v5 + *v9 + 8);
    sub_197522B2C();
    sub_1975227FC();
  }

LABEL_28:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t PersistentModel.getTransformableValue<A>(forKey:)(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = MEMORY[0x1E69E77B0];
  v7 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v7, a2))
  {
    sub_1974258A4(v7, a2);
  }

  if (PersistentModel.modelContext.getter(v7, a2))
  {
    sub_1974B2F38(a1, a2);
  }

  if (swift_getAssociatedTypeWitness() == v7)
  {
    (*(a2 + 56))(&v17, v7, a2);
    v14 = v19;
    v15 = v20;
    __swift_project_boxed_opaque_existential_1Tm_2(&v17, v19);
    (*(v15 + 104))(a1, *(v5 + *v6 + 8), v14, v15);
    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v17);
  }

  else
  {
    sub_1974C2DAC(a1, a2, &v17);
    v8 = v18;
    v9 = *v18;
    v10 = sub_197521FFC();
    v11 = swift_conformsToProtocol2();
    if (v11)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
      v16 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v16);

      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      sub_1974C3A5C(v10, v8, v2, v7, *(v5 + *v6 + 8), v10, a2, v11);
      return sub_1973F82A8(&v17);
    }
  }

  return result;
}

uint64_t sub_19742FA88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19742FAC8()
{
  result = qword_1ED7C77A8;
  if (!qword_1ED7C77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C77A8);
  }

  return result;
}

uint64_t sub_19742FB1C()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

_OWORD *sub_19742FEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v12 = MEMORY[0x1E6969080];
  v33 = MEMORY[0x1E6969080];
  v34 = sub_1974122A4();
  v35 = sub_1974122F8();
  *&v32 = a1;
  *(&v32 + 1) = a2;
  v13 = *a6;
  v15 = sub_1973F4028(a3, a4);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a5 & 1) != 0)
  {
LABEL_7:
    v21 = *a6;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 48 * v15);
      __swift_destroy_boxed_opaque_existential_1Tm_2(v22);
      return sub_1974028A0(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a5 & 1) == 0)
  {
    sub_19747A934();
    goto LABEL_7;
  }

  sub_1973FF110(v18, a5 & 1);
  v24 = *a6;
  v25 = sub_1973F4028(a3, a4);
  if ((v19 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_1975229CC();
    __break(1u);
    return result;
  }

  v15 = v25;
  v21 = *a6;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v27 = __swift_mutable_project_boxed_opaque_existential_2(&v32, v12);
  v28 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27, v27);
  v30 = (&v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  sub_197431368(v15, a3, a4, *v30, v30[1], v21);

  return __swift_destroy_boxed_opaque_existential_1Tm_2(&v32);
}

uint64_t PersistentModel.persistentModelID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getAssociatedTypeWitness() == a1)
  {
    (*(a2 + 56))(v16, a1, a2);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1Tm_2(v16, v17);
    (*(v11 + 32))(&v14, v10, v11);
    v12 = v15;
    if (v15 != 255)
    {
      v13 = v14;
      result = __swift_destroy_boxed_opaque_existential_1Tm_3(v16);
      *a3 = v13;
      *(a3 + 8) = v12;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1Tm_3(v16);
  }

  else
  {
    sub_197434244(a1, a1, a2, a2, v16);
    v6 = v17;
    v7 = v18;
    __swift_project_boxed_opaque_existential_1Tm_2(v16, v17);
    (*(v7 + 32))(&v14, v6, v7);
    v8 = v15;
    if (v15 != 255)
    {
      *a3 = v14;
      *(a3 + 8) = v8;
      return __swift_destroy_boxed_opaque_existential_1Tm_3(v16);
    }
  }

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197430254(uint64_t result)
{
  if (result)
  {
    if ((*(v1 + 48) & 1) == 0)
    {
      v2 = *(sub_197512E44() + 16);

      if (v2)
      {

        if ((*(*(v1 + 40) + 24) & 0x3F) == 1)
        {
          if (qword_1EAF2AC88 != -1)
          {
            swift_once();
          }

          v3 = sub_19752157C();
          __swift_project_value_buffer(v3, qword_1EAF33DD0);
          v4 = sub_19752155C();
          v5 = sub_197521DDC();
          if (os_log_type_enabled(v4, v5))
          {
            v6 = swift_slowAlloc();
            *v6 = 0;
            _os_log_impl(&dword_1973F2000, v4, v5, "Mutated models cannot turn their relationships in to futures.", v6, 2u);
            MEMORY[0x19A8E1B50](v6, -1, -1);
          }
        }

        return sub_1973FD1F4();
      }

      else
      {
        result = sub_1975223EC();
        __break(1u);
      }
    }
  }

  else if (*(v1 + 48))
  {

    return sub_197453618();
  }

  return result;
}

uint64_t sub_197430420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC9SwiftData12DefaultStore__contextsByEditorIdentifier;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16) && (v8 = sub_197404D0C(a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    *a3 = *(v10 + 24);
  }

  else
  {
    result = swift_endAccess();
    *a3 = 0;
  }

  return result;
}

void *sub_1974304C8@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t PersistentModel.modelContext.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 16);

  return v2;
}

char *sub_19743055C(char a1, uint64_t a2, uint64_t a3)
{
  sub_197446EF8(a2, a3, &v30);
  if (!AssociatedTypeWitness)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_19743099C(&v30, v33);
  v4 = v34;
  v5 = __swift_project_boxed_opaque_existential_1Tm_5(v33, v34);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v5);
  (*(v8 + 16))(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm_1(&v30);
  sub_1975218EC();
  __swift_mutable_project_boxed_opaque_existential_1(&v30, AssociatedTypeWitness);
  sub_197521F8C();
  if (v28)
  {
    v27 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (a1)
      {
        v9 = swift_getAssociatedTypeWitness();
        v10 = swift_getAssociatedConformanceWitness();
      }

      else
      {
        v9 = swift_getAssociatedTypeWitness();
        v10 = swift_getAssociatedConformanceWitness();
        PersistentModel.persistentModelID.getter(v9, v10, &v28);
        if (v29)
        {
          if (v29 != 1)
          {
            sub_1974028C8(v28, 2);
LABEL_12:
            if (qword_1EAF2AC88 != -1)
            {
              swift_once();
            }

            v14 = sub_19752157C();
            __swift_project_value_buffer(v14, qword_1EAF33DD0);
            v15 = sub_19752155C();
            v16 = sub_197521DDC();
            if (os_log_type_enabled(v15, v16))
            {
              v17 = swift_slowAlloc();
              *v17 = 0;
              _os_log_impl(&dword_1973F2000, v15, v16, "Illegal attempt to map a relationship containing temporary objects to its identifiers.", v17, 2u);
              MEMORY[0x19A8E1B50](v17, -1, -1);
            }

            swift_unknownObjectRelease();
            goto LABEL_17;
          }

          v11 = *(v28 + 33);
          sub_1974028C8(v28, 1);
          if (v11)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v12 = v28;
          v13 = [v28 isTemporaryID];
          sub_1974028C8(v12, 0);
          if (v13)
          {
            goto LABEL_12;
          }
        }
      }

      PersistentModel.persistentModelID.getter(v9, v10, &v28);
      v18 = v27;
      v19 = v28;
      v20 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_197445BA8(0, *(v18 + 2) + 1, 1, v18);
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      v27 = v18;
      if (v22 >= v21 >> 1)
      {
        v27 = sub_197445BA8((v21 > 1), v22 + 1, 1, v27);
      }

      swift_unknownObjectRelease();
      v23 = v27;
      *(v27 + 2) = v22 + 1;
      v24 = &v23[16 * v22];
      *(v24 + 4) = v19;
      v24[40] = v20;
LABEL_17:
      __swift_mutable_project_boxed_opaque_existential_1(&v30, AssociatedTypeWitness);
      sub_197521F8C();
      if (!v28)
      {
        goto LABEL_27;
      }
    }
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_27:
  __swift_destroy_boxed_opaque_existential_1Tm_7(&v30);
  __swift_destroy_boxed_opaque_existential_1Tm_7(v33);
  return v27;
}

uint64_t sub_19743099C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1974309B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1975212CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  v66 = *a1;
  v67 = v11;
  if (v11 != 1)
  {
    sub_1974028EC(v10, v11);
    goto LABEL_35;
  }

  if (v10[32] && v10[32] == 1)
  {
    sub_1974028EC(v10, 1);
    sub_1974028EC(v10, 1);
  }

  else
  {
    v12 = sub_19752282C();
    sub_1974028EC(v10, 1);
    sub_1974028EC(v10, 1);

    if ((v12 & 1) == 0)
    {
      v11 = 1;
      sub_1974028C8(v10, 1);
      goto LABEL_35;
    }
  }

  v13 = *(v2 + 16);
  v60 = v5;
  v61 = v4;
  v59 = v9;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v14 = result;
  }

  swift_beginAccess();
  v16 = *(v14 + 48);

  v5 = *(v16 + 16);
  if (!v5)
  {

    sub_1974028C8(v10, 1);
LABEL_34:
    v5 = v60;
    v4 = v61;
    v9 = v59;
    v10 = v66;
    v11 = v67;
LABEL_35:
    v23 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
    swift_beginAccess();
    v24 = *(v2 + v23);
    v25 = *(v24 + 16);
    if (v25)
    {
      sub_1974028EC(v10, v11);

      v26 = sub_197403C30(v10, v11);
      if (v27)
      {
        sub_19742FE50(*(v24 + 56) + 32 * v26, &v62);
        sub_1974028C8(v10, v11);

        LOBYTE(v25) = *(&v62 + 1) != 1;
        if (v62)
        {
          goto LABEL_43;
        }

        goto LABEL_41;
      }

      sub_1974028C8(v10, v11);
      LOBYTE(v25) = 0;
    }

    v62 = xmmword_19752EA60;
    v63 = 0;
    v64 = 0;
LABEL_41:
    if ((v25 & 1) == 0)
    {
      sub_1974050A8(&v62, &qword_1EAF2B640, &unk_19752F160);
      goto LABEL_45;
    }

LABEL_43:
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1974050A8(&v62, &qword_1EAF2B640, &unk_19752F160);
    if (Strong)
    {
      sub_1974028C8(v10, v11);
      return Strong;
    }

LABEL_45:
    if (v11)
    {
      if (v11 != 1 || v10[33] == 1)
      {
        goto LABEL_48;
      }
    }

    else if ([v10 isTemporaryID])
    {
LABEL_48:
      v29 = OBJC_IVAR____TtC9SwiftData12ModelContext__allowTemporaryLookup;
      if (*(v2 + OBJC_IVAR____TtC9SwiftData12ModelContext__allowTemporaryLookup))
      {
        goto LABEL_52;
      }

      if (qword_1ED7C7270 != -1)
      {
        swift_once();
      }

      if (*(qword_1ED7CE5B8 + 16))
      {
LABEL_52:
        *(v2 + v29) = 1;
        if (qword_1EAF2ACC0 != -1)
        {
          goto LABEL_66;
        }

        goto LABEL_53;
      }
    }

    v46 = MEMORY[0x19A8E1370]();
    sub_197448C98(&v66, v2, &v62);
    objc_autoreleasePoolPop(v46);
    sub_1974028C8(v66, v67);
    return v62;
  }

  v57 = v2;
  v4 = 0;
  v9 = (v16 + 32);
  v58 = 0x8000000197523720;
  while (v4 < *(v16 + 16))
  {
    sub_1974047F8(v9, &v62, &qword_1EAF2AF38, &qword_19752C6A8);
    type metadata accessor for DefaultStore(0);
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v66;
      if (v67 == 1)
      {
        if (v66[32])
        {
          v19 = v17;
          if (v66[32] == 1)
          {
            sub_1974028EC(v66, 1);
            sub_1974028EC(v18, 1);
            swift_unknownObjectRetain();

LABEL_25:
            v2 = [*(v19 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) persistentStoreCoordinator];
            sub_19750ACDC(v2, v20);
            v21 = sub_197521EDC();
            swift_unknownObjectRelease_n();
            sub_1974028C8(v18, 1);

            if (v21)
            {

              sub_1974028C8(v10, 1);
              sub_1974028C8(v18, 1);
              v18 = v66;
              v22 = v67;
              goto LABEL_32;
            }

            goto LABEL_28;
          }
        }

        else
        {
          v19 = v17;
        }

        v2 = sub_19752282C();
        sub_1974028EC(v18, 1);
        sub_1974028EC(v18, 1);
        swift_unknownObjectRetain();

        if (v2)
        {
          goto LABEL_25;
        }

        swift_unknownObjectRelease_n();
        sub_1974028C8(v18, 1);
LABEL_28:
        sub_1974028C8(v18, 1);
        goto LABEL_16;
      }

      if (!v67)
      {
        sub_1974028EC(v66, 0);
        sub_1974028EC(v18, 0);

        sub_1974028C8(v10, 1);
        swift_unknownObjectRelease();
        sub_1974028C8(v18, 0);
        v22 = 0;
        v21 = v18;
LABEL_32:
        sub_1974028C8(v18, v22);
        v66 = v21;
        v67 = 0;
        sub_197414BEC(&v62);
LABEL_33:
        v2 = v57;
        goto LABEL_34;
      }
    }

    swift_unknownObjectRelease();
LABEL_16:
    ++v4;
    sub_197414BEC(&v62);
    v9 += 56;
    if (v5 == v4)
    {

      sub_1974028C8(v10, 1);
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_66:
  swift_once();
LABEL_53:
  v30 = sub_19752157C();
  __swift_project_value_buffer(v30, qword_1EAF33DE8);

  v31 = sub_19752155C();
  v32 = sub_197521DDC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = v9;
    v34 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v65 = v58;
    *v34 = 136315394;
    *&v62 = v2;
    v35 = sub_197522B3C();
    v37 = sub_197462310(v35, v36, &v65);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    swift_beginAccess();
    v38 = v66;
    if (v67)
    {
      if (v67 == 1)
      {
        v39 = sub_1974028EC(v66, 1);
        v41 = sub_19750ACDC(v39, v40);
        v43 = v42;
        v44 = v38;
        v45 = 1;
      }

      else
      {
        v50 = sub_1974028EC(v66, 2);
        v41 = sub_19750A29C(v50, v51);
        v43 = v52;
        v44 = v38;
        v45 = 2;
      }

      sub_1974028C8(v44, v45);
    }

    else
    {
      sub_1974028EC(v66, 0);
      v47 = [v38 URIRepresentation];
      sub_19752127C();

      v48 = v5;
      v41 = sub_19752121C();
      v43 = v49;
      sub_1974028C8(v38, 0);
      (*(v48 + 8))(v33, v4);
    }

    v53 = v58;
    v54 = sub_197462310(v41, v43, &v65);

    *(v34 + 14) = v54;
    swift_arrayDestroy();
    MEMORY[0x19A8E1B50](v53, -1, -1);
    MEMORY[0x19A8E1B50](v34, -1, -1);
  }

  v55 = MEMORY[0x19A8E1370]();
  sub_1974B0D94(&v66, v2, &v65);
  objc_autoreleasePoolPop(v55);
  sub_1974028C8(v66, v67);
  return v65;
}

_OWORD *sub_197431368(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v18 = MEMORY[0x1E6969080];
  v19 = sub_1974122A4();
  v20 = sub_1974122F8();
  *&v17 = a4;
  *(&v17 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a6[6] + 16 * a1);
  *v12 = a2;
  v12[1] = a3;
  result = sub_1974028A0(&v17, (a6[7] + 48 * a1));
  v14 = a6[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v16;
  }

  return result;
}

uint64_t sub_197431424()
{
  sub_197431458();

  return swift_deallocClassInstance();
}

uint64_t sub_197431458()
{
  v1 = *(v0 + 16);

  sub_1974A1014(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_19743148C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *a1;
  if (*(v2 + 48) != 1)
  {
    v15 = v2[2];
    v16 = *(v15 + 24);
    v17 = *(v16 + 16);

    if (v17 && (v18 = sub_1973F7814(a1), (v19 & 1) != 0))
    {
      v20 = *(*(v16 + 56) + 8 * v18);
      swift_beginAccess();
      if ((v20 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v21 = *(v15 + 32);
      if (v20 >= *(v21 + 16))
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      sub_197413B20(v21 + 32 * v20 + 32, &v58);

      if (*(&v59 + 1))
      {
        v22 = *(*(v6 + *MEMORY[0x1E69E77B0] + 8) + 16);
        v23 = swift_dynamicCast();
        v24 = v60[0];
        goto LABEL_20;
      }
    }

    else
    {
      v59 = 0u;
      v58 = 0u;
    }

    v25 = &qword_1EAF2AF20;
    v26 = &unk_19752F320;
    v27 = &v58;
    goto LABEL_38;
  }

  v7 = *(sub_197512E44() + 16);

  if (!v7)
  {
LABEL_44:
    sub_1975221EC();

    *&v58 = 0xD000000000000017;
    *(&v58 + 1) = 0x800000019752B400;
    sub_197433F28(&v55);
    v60[0] = v55;
    LOBYTE(v60[1]) = BYTE8(v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
    v51 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v51);

    goto LABEL_45;
  }

  v8 = v2[2];
  v9 = *(v8 + 24);
  v10 = *(v9 + 16);

  if (v10)
  {
    v11 = sub_1973F7814(a1);
    if (v12)
    {
      v13 = *(*(v9 + 56) + 8 * v11);
      swift_beginAccess();
      if ((v13 & 0x8000000000000000) == 0)
      {
        v14 = *(v8 + 32);
        if (v13 < *(v14 + 16))
        {
          sub_197413B20(v14 + 32 * v13 + 32, v60);
          goto LABEL_17;
        }

        goto LABEL_43;
      }

      goto LABEL_41;
    }
  }

  memset(v60, 0, 32);
LABEL_17:

  sub_197413B20(v60, &v58);
  if (!*(&v59 + 1))
  {
    sub_1973FE5EC(&v58, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    sub_197413B20(v60, &v58);
    if (*(&v59 + 1))
    {
      if (swift_dynamicCast())
      {
        v30 = v55;
        v31 = BYTE8(v55);
        *&v58 = v55;
        BYTE8(v58) = BYTE8(v55);
        *&v58 = sub_1974309B4(&v58);
        *(&v58 + 1) = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
        v33 = *(*(v6 + *MEMORY[0x1E69E77B0] + 8) + 16);
        swift_dynamicCast();
        v34 = v55;
        v35 = v3[2];
        *(&v59 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
        v36 = swift_allocObject();
        *&v58 = v36;
        *(v36 + 16) = v55;
        *(v36 + 24) = v31;
        *(v36 + 32) = v34;
        *(v36 + 40) = a2;

        sub_1974028EC(v30, v31);
        swift_unknownObjectRetain();

        sub_1973FCF28(&v58, a1);

        sub_1974028C8(v30, v31);
        sub_1973FE5EC(v60, &qword_1EAF2AF20, &unk_19752F320);
        return v34;
      }
    }

    else
    {
      sub_1973FE5EC(&v58, &qword_1EAF2AF20, &unk_19752F320);
    }

    sub_197413B20(v60, v54);
    if (v54[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4E0, &qword_197534B50);
      if (swift_dynamicCast())
      {
        if (*(&v56 + 1))
        {
          sub_19743099C(&v55, &v58);
          if (!*(v3[5] + 16))
          {
            goto LABEL_46;
          }

          v37 = *(v3 + 32);
          v38 = v3[3];
          sub_1974ADEAC(v38, *(v3 + 32));
          if (v37 != 255)
          {
            v39 = v37;
            v40 = __swift_project_boxed_opaque_existential_1Tm_5(&v58, *(&v59 + 1));
            v41 = *v40;
            v42 = v40[1];
            v43 = *(v40 + 16);

            sub_197428988(v41, v42, v43, v38, v39, &v55);
            v44 = v55;
            v45 = BYTE8(v55);
            *&v55 = sub_1974309B4(&v55);
            *(&v55 + 1) = v46;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
            v47 = *(*(v6 + *MEMORY[0x1E69E77B0] + 8) + 16);
            swift_dynamicCast();
            v48 = v54[0];
            v49 = v3[2];
            *(&v56 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
            v50 = swift_allocObject();
            *&v55 = v50;
            *(v50 + 16) = v44;
            *(v50 + 24) = v45;
            *(v50 + 32) = v48;
            *(v50 + 40) = a2;

            sub_1974028EC(v44, v45);
            swift_unknownObjectRetain();
            sub_1973FCF28(&v55, a1);

            sub_1974A1014(v38, v39);

            sub_1974028C8(v44, v45);
            sub_1973FE5EC(v60, &qword_1EAF2AF20, &unk_19752F320);
            __swift_destroy_boxed_opaque_existential_1Tm_7(&v58);
            return v48;
          }

          *&v55 = 0;
          *(&v55 + 1) = 0xE000000000000000;

          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000060, 0x800000019752B420);
          v54[0] = v3;
          sub_1975227FC();
          while (1)
          {
LABEL_45:
            sub_1975223EC();
            __break(1u);
LABEL_46:
            *&v55 = 0;
            *(&v55 + 1) = 0xE000000000000000;
            sub_1975221EC();

            *&v55 = 0xD000000000000017;
            *(&v55 + 1) = 0x800000019752B400;
            sub_197433F28(v54);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
            v52 = sub_1975217CC();
            MEMORY[0x19A8DFF80](v52);
          }
        }
      }

      else
      {
        v57 = 0;
        v55 = 0u;
        v56 = 0u;
      }

      sub_1973FE5EC(v60, &qword_1EAF2AF20, &unk_19752F320);
    }

    else
    {
      sub_1973FE5EC(v60, &qword_1EAF2AF20, &unk_19752F320);

      sub_1973FE5EC(v54, &qword_1EAF2AF20, &unk_19752F320);
      v55 = 0u;
      v56 = 0u;
      v57 = 0;
    }

    v25 = &qword_1EAF2C4E8;
    v26 = &qword_197534B58;
    v27 = &v55;
LABEL_38:
    sub_1973FE5EC(v27, v25, v26);
    return 0;
  }

  sub_1973FE5EC(v60, &qword_1EAF2AF20, &unk_19752F320);

  sub_1974028C8(v55, SBYTE8(v55));
  v58 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  v28 = *(*(v6 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v23 = swift_dynamicCast();
  v24 = v55;
LABEL_20:
  if (v23)
  {
    return v24;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_197431D74()
{
  sub_1974028C8(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_197431E38()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  *(v0 + 96) = 0;

  swift_beginAccess();
  v2 = *(v0 + 104);
  *(v0 + 104) = 0;

  v3 = *(v0 + 16);
  *(v0 + 16) = 0;

  *(v0 + 24) |= 0x80000u;
  v4 = *(v0 + 32);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  swift_unknownObjectRelease();
  v5 = *(v0 + 48);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  swift_unknownObjectRelease();
  v6 = *(v0 + 64);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  swift_unknownObjectRelease();
  v7 = *(v0 + 16);

  v8 = *(v0 + 32);
  swift_unknownObjectRelease();
  v9 = *(v0 + 48);
  swift_unknownObjectRelease();
  v10 = *(v0 + 64);
  swift_unknownObjectRelease();
  v11 = *(v0 + 88);

  v12 = *(v0 + 96);

  v13 = *(v0 + 104);

  return v0;
}

uint64_t sub_197431F0C()
{
  sub_197431E38();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_197431FA4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_19744C698(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_19747FCD8();
        goto LABEL_25;
      }

      sub_197440990(v8 + 1);
    }

    v33 = *v4;
    v10 = *(*v4 + 40);
    sub_197522A5C();
    ObjectType = swift_getObjectType();
    PersistentModel.persistentModelID.getter(ObjectType, a2, &v35);
    v12 = v35;
    if (v36)
    {
      if (v36 == 1)
      {
        MEMORY[0x19A8E1190](1);
        sub_1974028EC(v12, 1);
        sub_197452CB8();
        sub_1974028C8(v12, 1);
        sub_1974028C8(v12, 1);
      }

      else
      {
        MEMORY[0x19A8E1190](2);
        sub_1974028EC(v12, 2);
        sub_19750A470();
        sub_19752180C();

        sub_19750A588();
        sub_19752180C();
        sub_1974028C8(v12, 2);
        sub_1974028C8(v12, 2);
      }
    }

    else
    {
      MEMORY[0x19A8E1190](0);
      sub_1974028EC(v12, 0);
      sub_197521F4C();
      sub_1974028C8(v12, 0);
      sub_1974028C8(v12, 0);
    }

    result = sub_197522A9C();
    v13 = -1 << *(v33 + 32);
    a3 = result & ~v13;
    if ((*(v33 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v31 = a2;
      v32 = ~v13;
      do
      {
        v14 = (*(v33 + 48) + 16 * a3);
        v16 = *v14;
        v15 = v14[1];
        v17 = swift_getObjectType();
        swift_unknownObjectRetain();
        v34 = v15;
        PersistentModel.persistentModelID.getter(v17, v15, &v37);
        v18 = v37;
        v19 = v38;
        PersistentModel.persistentModelID.getter(ObjectType, a2, &v35);
        v20 = v35;
        v21 = v36;
        v22 = sub_19742291C(v18, v19, v35, v36);
        sub_1974028C8(v20, v21);
        sub_1974028C8(v18, v19);
        if (v22)
        {
          v23 = PersistentModel.modelContext.getter(v17, v34);
          a2 = v31;
          v24 = PersistentModel.modelContext.getter(ObjectType, v31);
          swift_unknownObjectRelease();
          if (!v23)
          {
            if (!v24)
            {
              goto LABEL_28;
            }

LABEL_23:

            goto LABEL_16;
          }

          if (!v24)
          {
            goto LABEL_23;
          }

          if (v23 == v24)
          {
            goto LABEL_28;
          }
        }

        else
        {
          result = swift_unknownObjectRelease();
          a2 = v31;
        }

LABEL_16:
        a3 = (a3 + 1) & v32;
      }

      while (((*(v33 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_25:
  v25 = *v30;
  *(*v30 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v26 = (*(v25 + 48) + 16 * a3);
  *v26 = v7;
  v26[1] = a2;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
LABEL_28:
    result = sub_1975229BC();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

uint64_t sub_197432360(char a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1973FE074(a2, a3);
  *(v4 + 24) = *(v4 + 24) & 0xFFFFFFFE | a1 & 1;
}

uint64_t sub_197432658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_unknownObjectRetain();
  if ((sub_197432B8C(a2, a3) & 7) != 0)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_197440D38(a1, a2, a3);
    *(v3 + 50) = 1;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1974327FC(&v11, a1, a3);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_197432360(1, a2, a3);
    sub_197440AC4();
    if (*(v3 + 58) == 1 || (*(v3 + 59) & 1) != 0)
    {
      result = swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      v9 = *(v3 + 40);
      if (v9)
      {
        v10 = v9;
        if ([v10 groupsByEvent])
        {
          type metadata accessor for ModelContext(0);
          sub_197521DBC();
        }
      }

      result = swift_unknownObjectRelease();
      *(v4 + 58) = 1;
    }

    *(v4 + 48) = 1;
  }

  return result;
}

uint64_t sub_1974327FC(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = *v3;
  v6 = *(*v3 + 40);
  sub_197522A5C();
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a3, &v33);
  v8 = v33;
  if (v34)
  {
    if (v34 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v8, 1);
      sub_197452CB8();
      sub_1974028C8(v8, 1);
      sub_1974028C8(v8, 1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v8, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
      sub_1974028C8(v8, 2);
      sub_1974028C8(v8, 2);
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v8, 0);
    sub_197521F4C();
    sub_1974028C8(v8, 0);
    sub_1974028C8(v8, 0);
  }

  v9 = sub_197522A9C();
  v10 = -1 << *(v31 + 32);
  v11 = v9 & ~v10;
  if (((*(v31 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_18:
    v23 = *v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v27;
    v25 = swift_unknownObjectRetain();
    sub_197431FA4(v25, a3, v11, isUniquelyReferenced_nonNull_native);
    *v27 = v35;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v29 = ~v10;
  v30 = a3;
  while (1)
  {
    v12 = (*(v31 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = swift_getObjectType();
    swift_unknownObjectRetain();
    v32 = v13;
    PersistentModel.persistentModelID.getter(v15, v13, &v35);
    v16 = v35;
    v17 = v36;
    PersistentModel.persistentModelID.getter(ObjectType, a3, &v33);
    v18 = v33;
    v19 = v34;
    v20 = sub_19742291C(v16, v17, v33, v34);
    sub_1974028C8(v18, v19);
    sub_1974028C8(v16, v17);
    if ((v20 & 1) == 0)
    {
      swift_unknownObjectRelease();
      a3 = v30;
      goto LABEL_9;
    }

    v21 = PersistentModel.modelContext.getter(v15, v32);
    a3 = v30;
    v22 = PersistentModel.modelContext.getter(ObjectType, v30);
    swift_unknownObjectRelease();
    if (!v21)
    {
      break;
    }

    if (!v22)
    {
      goto LABEL_16;
    }

    if (v21 == v22)
    {
      goto LABEL_19;
    }

LABEL_9:
    v11 = (v11 + 1) & v29;
    if (((*(v31 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (v22)
  {
LABEL_16:

    goto LABEL_9;
  }

LABEL_19:
  swift_unknownObjectRelease();
  *a1 = *(*(v31 + 48) + 16 * v11);
  swift_unknownObjectRetain();
  return 0;
}

uint64_t sub_197432B8C(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return v2;
}

uint64_t sub_197432BB8(void *a1)
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
  *(v98 + 48) = 1;
  *(sub_197512E44() + 80) = 0;

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

uint64_t sub_19743371C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  PersistentModel.persistentModelID.getter(a2, a3, &v21);
  v8 = v21;
  v9 = v22;
  v10 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_197403C30(v8, v9);
    if (v13)
    {
      sub_19742FE50(*(v11 + 56) + 32 * v12, &v25);
      sub_1974028C8(v8, v9);

      v14 = *(&v25 + 1) != 1;
      if (v25)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  sub_1974028C8(v8, v9);
  v14 = 0;
  v25 = xmmword_19752EA60;
  v26 = 0;
  v27 = 0;
LABEL_7:
  if (!v14)
  {
    sub_1974050A8(&v25, &qword_1EAF2B640, &unk_19752F160);
    return sub_1974339E4(a1, v4, a2, a3);
  }

LABEL_9:
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = *(&v25 + 1);
  sub_1974050A8(&v25, &qword_1EAF2B640, &unk_19752F160);
  if (!Strong)
  {
    return sub_1974339E4(a1, v4, a2, a3);
  }

  if (Strong == a1)
  {
    return swift_unknownObjectRelease();
  }

  *&v25 = 0;
  *(&v25 + 1) = 0xE000000000000000;
  v18 = Strong;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197527560);
  PersistentModel.persistentModelID.getter(a2, a3, &v21);
  v19 = v21;
  v20 = v22;
  v23 = v21;
  v24 = v22;
  sub_19752235C();
  sub_1974028C8(v19, v20);
  MEMORY[0x19A8DFF80](10, 0xE100000000000000);
  v21 = v18;
  v22 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  sub_19752235C();
  MEMORY[0x19A8DFF80](10, 0xE100000000000000);
  v21 = a1;
  sub_1975227FC();
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974339E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  PersistentModel.persistentModelID.getter(a3, a4, &v19);
  v7 = v19;
  v8 = BYTE8(v19);
  v9 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v10 = *(a2 + v9);
  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = *(a2 + v9);

  v13 = sub_197403C30(v7, v8);
  if ((v14 & 1) == 0)
  {

    LODWORD(v11) = 0;
LABEL_6:
    v19 = xmmword_19752EA60;
    v20 = 0;
    v21 = 0;
LABEL_7:
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_19742FE50(*(v10 + 56) + 32 * v13, &v19);

  LODWORD(v11) = *(&v19 + 1) != 1;
  if (!v19)
  {
    goto LABEL_7;
  }

LABEL_8:
  swift_unknownObjectWeakLoadStrong();
LABEL_9:
  sub_1974050A8(&v19, &qword_1EAF2B640, &unk_19752F160);
  if (PersistentModel.modelContext.getter(a3, a4))
  {

    PersistentModel.modelContext.getter(a3, a4);
  }

  else
  {
    sub_197452A84(a2, a3, a4);
  }

  v15 = sub_197432B8C(a3, a4);
  sub_197433EE8(v15 & 0xFFF7FF7F, a3, a4);
  *(&v19 + 1) = 0;
  swift_unknownObjectWeakInit();
  *(&v19 + 1) = a4;
  swift_unknownObjectWeakAssign();
  PersistentModel.persistentModelID.getter(a3, a4, &v17);
  v20 = v17;
  v21 = v18;
  swift_beginAccess();
  sub_197433D4C(&v19, v7, v8);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

id sub_197433C04(uint64_t a1, void *a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_197403C30(a2, a3);
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
      sub_19747B580();
      v11 = v19;
      goto LABEL_8;
    }

    sub_19743EFD0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_197403C30(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 32 * v11;

    return sub_19744C9D4(a1, v23);
  }

  else
  {
    sub_1974341D0(v11, a2, a3, a1, v22);

    return sub_1974028EC(a2, a3);
  }
}

void sub_197433D4C(void *a1, void *a2, char a3)
{
  if (*a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1[1] == 1;
  }

  if (v6)
  {
    sub_197448384(a1, &qword_1EAF2B640, &unk_19752F160);
    sub_197459F50(a2, a3, v10);
    sub_1974028C8(a2, a3);
    sub_197448384(v10, &qword_1EAF2B640, &unk_19752F160);
  }

  else
  {
    sub_197433E8C(a1, v10);
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_197433C04(v10, a2, a3, isUniquelyReferenced_nonNull_native);
    sub_1974028C8(a2, a3);
    *v3 = v9;
  }
}

uint64_t sub_197433EE8(int a1, uint64_t a2, uint64_t a3)
{
  *(sub_1973FE074(a2, a3) + 24) = a1;
}

id sub_197433F28@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  v3 = *(v1 + 32);
  *(a1 + 8) = v3;
  return sub_1974ADEAC(v2, v3);
}

void *sub_197433FA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_0(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1974341D0(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = a5[6] + 16 * a1;
  *v6 = a2;
  *(v6 + 8) = a3;
  result = sub_197433E8C(a4, a5[7] + 32 * a1);
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

uint64_t sub_197434244@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = sub_197522AEC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_getAssociatedTypeWitness() != a2)
  {
    v31 = a5;
    v18 = sub_1973FE074(a1, a3);
    swift_beginAccess();
    v19 = *(v18 + 96);

    if (v19)
    {
      if (*(v19 + 16) && (v20 = sub_1973F7950(a2, a4), (v21 & 1) != 0))
      {
        sub_197480E74(*(v19 + 56) + 16 * v20, &v34);

        v22 = *(&v34 + 1) != 1;
        if (v34)
        {
          goto LABEL_13;
        }
      }

      else
      {

        v22 = 0;
        v34 = xmmword_19752EA60;
      }

      if (v22)
      {
LABEL_13:
        Strong = swift_unknownObjectWeakLoadStrong();
        v27 = *(&v34 + 1);
        sub_1973F7E04(&v34, &qword_1EAF2B660, qword_19752F190);
        if (Strong)
        {
          *&v34 = Strong;
          *(&v34 + 1) = v27;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9C8, &qword_19752FE28);
          v33 = a2;
          swift_getExtendedExistentialTypeMetadata();
          if (swift_dynamicCast())
          {
            if (v36)
            {
              v23 = v35;
              v24 = v31;
              return sub_197434660(v23, v24);
            }
          }
        }

        goto LABEL_17;
      }

      sub_1973F7E04(&v34, &qword_1EAF2B660, qword_19752F190);
    }

LABEL_17:
    v36 = a1;
    v35[0] = v6;
    swift_unknownObjectRetain();
    sub_197522ABC();
    sub_1974C24A0(v17, v6, a2, a4, a1, a2, a3, a4, v31);
    return (*(v13 + 8))(v17, v12);
  }

  (*(a3 + 56))(v35, a1, a3);
  *&v34 = a1;
  swift_getExtendedExistentialTypeMetadata();
  *&v34 = a2;
  swift_getExtendedExistentialTypeMetadata();
  if (swift_dynamicCast())
  {
    v23 = &v32;
    v24 = a5;
    return sub_197434660(v23, v24);
  }

  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000023, 0x80000001975284D0);
  v28 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v28);

  MEMORY[0x19A8DFF80](0xD000000000000011, 0x8000000197528500);
  v29 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v29);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197434660(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_197434728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_197404860(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B688, &qword_19752F360);
  if (swift_dynamicCast())
  {
    sub_197434908(&v11, v14);
    sub_197413BF4(v14, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B698, &qword_19752F370);
    if (swift_dynamicCast())
    {
      v4 = *(&v12 + 1);
      v5 = v13;
      __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
      (*(v5 + 8))(&v9, v4, v5);
      __swift_destroy_boxed_opaque_existential_1(&v11);
      if (*(&v10 + 1))
      {
        __swift_destroy_boxed_opaque_existential_1(v14);
        return sub_1974028B8(&v9, a2);
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
      sub_1973F7DA4(&v11, &qword_1EAF2B6A0, &qword_19752F378);
      v9 = 0u;
      v10 = 0u;
    }

    v7 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(a2 + 24) = sub_1974ADEC0(0, &qword_1ED7C7900, 0x1E695DFB0);
    *a2 = v7;
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    if (*(&v10 + 1))
    {
      return sub_1973F7DA4(&v9, &qword_1EAF2AF20, &unk_19752F320);
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1973F7DA4(&v11, &qword_1EAF2B690, &qword_19752F368);
    return sub_197404860(a1, a2);
  }

  return result;
}

uint64_t sub_197434908(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_197434920(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v230 = a5;
  v240 = a4;
  v245 = a3;
  v249 = a2;
  v265 = *MEMORY[0x1E69E9840];
  v233 = sub_1975211FC();
  v225 = *(v233 - 8);
  v6 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v233, v7);
  v232 = &v224 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFC0, &qword_19752C728);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v239 = &v224 - v12;
  v13 = sub_197520BFC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v238 = &v224 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1975212CC();
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFC8, &qword_19752C730);
  inited = swift_initStackObject();
  v21 = MEMORY[0x1E69E7CC8];
  inited[2] = MEMORY[0x1E69E7CC8];
  inited[3] = v21;
  inited[4] = MEMORY[0x1E69E7CD0];
  inited[5] = v19;
  v229 = inited;
  v22 = swift_allocBox();
  v231 = v14;
  v23 = *(v14 + 56);
  v226 = v24;
  v228 = v13;
  v23(v24, 1, 1, v13);
  v25 = objc_opt_self();
  v26 = v18;
  v227 = v19;

  v236 = v25;
  v27 = [v25 defaultCenter];
  sub_1973F3D34(0, &qword_1ED7C7908, 0x1E695D628);
  v28 = sub_197521E6C();
  v263 = sub_1974457B8;
  v264 = v22;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v261 = sub_197444BE4;
  v262 = &block_descriptor_99;
  v29 = _Block_copy(&aBlock);
  v30 = v26;
  v237 = v22;

  v235 = [v27 addObserverForName:v28 object:v30 queue:0 usingBlock:v29];
  _Block_release(v29);

  v250 = v30;
  v31 = *(v249 + OBJC_IVAR____TtC9SwiftData12DefaultStore_store);
  if (!v31)
  {
    goto LABEL_145;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFD0, &qword_19752C738);
  v32 = swift_allocObject();
  v32[2] = v21;
  v33 = v32 + 2;
  v32[3] = v21;
  v32[4] = MEMORY[0x1E69E7CD0];
  v34 = MEMORY[0x1E69E7CC0];
  v32[5] = v21;
  v32[6] = v34;
  v252 = v32;
  v35 = *v245;
  v244 = *(*v245 + 16);
  v234 = v31;
  if (v244)
  {
    v241 = v31;
    swift_beginAccess();
    v36 = 0;
    v37 = (v35 + 48);
    v254 = MEMORY[0x1E69E7CC8];
    v38 = v250;
    v242 = v33;
    v243 = v35;
    while (1)
    {
      if (v36 >= *(v35 + 16))
      {
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
      }

      v248 = v36;
      v39 = *(v37 - 1);
      v40 = *v37;
      v41 = *v33;
      v42 = *(*v33 + 16);
      v246 = *(v37 - 2);

      sub_1974028EC(v39, v40);
      v251 = v39;
      if (v42)
      {

        v43 = sub_197403C30(v39, v40);
        if (v44)
        {
          v45 = *(*(v41 + 56) + 8 * v43);

          v46 = [v38 objectWithID_];
          goto LABEL_12;
        }
      }

      *&aBlock = v39;
      BYTE8(aBlock) = v40;
      v46 = sub_197440E94(&aBlock, v38);
      v47 = [v46 objectID];
      v48 = [v47 isTemporaryID];

      if (v48)
      {
        [v38 assignObject:v46 toPersistentStore:v241];
      }

      v45 = [v46 objectID];
      v39 = v251;
      sub_19744191C(v251, v40, v45);
LABEL_12:

      v49 = v46;
      sub_1974028EC(v39, v40);
      v50 = v254;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v50;
      sub_197424C58(v49, v39, v40, isUniquelyReferenced_nonNull_native);
      sub_1974028C8(v39, v40);
      v254 = aBlock;
      v52 = [v49 entity];
      v53 = [v52 name];

      if (!v53)
      {
        goto LABEL_139;
      }

      v247 = v37;
      v54 = sub_1975217BC();
      v56 = v55;

      v57 = *(*(v249 + 32) + 72);
      if (!*(v57 + 16) || (v58 = v242, v59 = *(*(v249 + 32) + 72), , v60 = sub_1973F4028(v54, v56), v62 = v61, , (v62 & 1) == 0))
      {

LABEL_139:
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197523DF0);
        *&v258 = v249;
        type metadata accessor for DefaultStore(0);
        sub_19752235C();
        MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
        v215 = [v49 description];
        v216 = sub_1975217BC();
        v218 = v217;

        MEMORY[0x19A8DFF80](v216, v218);

        while (1)
        {
LABEL_145:
          sub_1975223EC();
          __break(1u);
        }
      }

      v63 = *(*(v57 + 56) + 8 * v60);

      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFD8, &qword_19752C740);
      v65 = swift_allocObject();
      v66 = MEMORY[0x1E69E7CC0];
      v65[2] = MEMORY[0x1E69E7CC0];
      v67 = v49;

      v68 = v252;

      v65[3] = sub_197441730(v66);
      v65[4] = v68;
      v65[5] = v67;
      v65[6] = v63;
      v69 = v251;
      *&v258 = v246;
      *(&v258 + 1) = v251;
      LOBYTE(v259) = v40;
      v262 = v64;
      v263 = sub_1974717A0(qword_1ED7C7A18, &qword_1EAF2AFD8, &qword_19752C740);
      *&aBlock = v65;

      v70 = v253;
      DefaultSnapshot.encode(to:)(&aBlock);
      v253 = v70;
      if (v70)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
        swift_unexpectedError();
        __break(1u);
LABEL_143:

LABEL_144:
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197523DF0);
        *&v258 = v249;
        type metadata accessor for DefaultStore(0);
        sub_19752235C();
        MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
        v219 = [v58 description];
        v220 = sub_1975217BC();
        v222 = v221;

        MEMORY[0x19A8DFF80](v220, v222);

        goto LABEL_145;
      }

      v36 = v248 + 1;

      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);

      sub_1974028C8(v69, v40);
      v37 = v247 + 24;
      v38 = v250;
      v33 = v58;
      v35 = v243;
      if (v244 == v36)
      {
        goto LABEL_19;
      }
    }
  }

  v71 = v31;
  v254 = MEMORY[0x1E69E7CC8];
  v38 = v250;
LABEL_19:
  v72 = v245;
  v73 = v245[1];
  v244 = *(v73 + 16);
  if (v244)
  {
    v74 = 0;
    v75 = (v73 + 48);
    v243 = v73;
    while (1)
    {
      if (v74 >= *(v73 + 16))
      {
        goto LABEL_132;
      }

      v76 = *(v75 - 1);
      v247 = *(v75 - 2);
      v248 = v75;
      v77 = *v75;
      *&aBlock = v76;
      BYTE8(aBlock) = v77;

      sub_1974028EC(v76, v77);
      sub_1974028EC(v76, v77);
      v58 = sub_197440E94(&aBlock, v38);
      sub_1974028C8(v76, v77);
      v78 = [v58 entity];
      v79 = [v78 name];

      if (!v79)
      {
        goto LABEL_144;
      }

      v251 = v74;
      v80 = sub_1975217BC();
      v82 = v81;

      v83 = *(*(v249 + 32) + 72);
      if (!*(v83 + 16))
      {
        goto LABEL_143;
      }

      v84 = *(*(v249 + 32) + 72);

      v85 = sub_1973F4028(v80, v82);
      v87 = v86;

      if ((v87 & 1) == 0)
      {
        goto LABEL_143;
      }

      v88 = *(*(v83 + 56) + 8 * v85);

      v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFD8, &qword_19752C740);
      v89 = swift_allocObject();
      v90 = MEMORY[0x1E69E7CC0];
      v89[2] = MEMORY[0x1E69E7CC0];
      v91 = v252;

      v92 = v58;
      v89[3] = sub_197441730(v90);
      v89[4] = v91;
      v89[5] = v92;
      v89[6] = v88;
      sub_1974028EC(v76, v77);
      v58 = v92;
      v93 = v254;
      v94 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v93;
      sub_197424C58(v58, v76, v77, v94);
      sub_1974028C8(v76, v77);
      v254 = aBlock;
      v95 = v89[4];
      sub_1974028EC(v76, v77);

      v96 = [v58 objectID];
      sub_19744191C(v76, v77, v96);

      sub_1974028C8(v76, v77);
      *&v258 = v247;
      *(&v258 + 1) = v76;
      LOBYTE(v259) = v77;
      v262 = v246;
      v263 = sub_1974717A0(qword_1ED7C7A18, &qword_1EAF2AFD8, &qword_19752C740);
      *&aBlock = v89;

      v97 = v253;
      DefaultSnapshot.encode(to:)(&aBlock);
      v253 = v97;
      if (v97)
      {
        break;
      }

      v74 = v251 + 1;

      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);

      sub_1974028C8(v76, v77);
      v75 = (v248 + 24);
      v72 = v245;
      v38 = v250;
      v73 = v243;
      if (v244 == v74)
      {
        goto LABEL_27;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    swift_unexpectedError();
    __break(1u);
    goto LABEL_143;
  }

LABEL_27:
  v98 = v72[2];
  v99 = *(v98 + 16);
  if (v99)
  {
    v100 = (v98 + 48);
    do
    {
      v106 = *(v100 - 2);
      v105 = *(v100 - 1);
      v107 = *v100;
      if (*v100)
      {
        v251 = *(v100 - 2);
        if (v107 == 1)
        {
          v108 = *(v105 + 33);

          sub_1974028EC(v105, 1);
          sub_1974028EC(v105, 1);
          if ((v108 & 1) == 0)
          {
            v113 = [v38 persistentStoreCoordinator];
            if (!v113)
            {
              goto LABEL_137;
            }

            v115 = v113;
            sub_19750ACDC(v113, v114);
            v102 = sub_197521EDC();

            if (!v102)
            {
              goto LABEL_136;
            }

            goto LABEL_42;
          }

          v101 = objc_opt_self();
          v109 = *(v105 + 72);
          v110 = *(v105 + 80);
        }

        else
        {
          v101 = objc_opt_self();

          sub_1974028EC(v105, 2);
          sub_1974028EC(v105, 2);
          sub_19750A588();
        }
      }

      else
      {
        v111 = *(v100 - 2);

        sub_1974028EC(v105, 0);
        sub_1974028EC(v105, 0);
        if (![v105 isTemporaryID])
        {
          sub_1974028EC(v105, 0);
          v102 = v105;
LABEL_42:
          v103 = [v38 objectWithID_];
          goto LABEL_31;
        }

        v251 = v106;
        v101 = objc_opt_self();
        v112 = [v105 entityName];
        sub_1975217BC();

        v38 = v250;
      }

      v102 = sub_19752178C();

      v103 = [v101 insertNewObjectForEntityForName:v102 inManagedObjectContext:v38];
LABEL_31:
      v100 += 24;
      v104 = v103;

      sub_1974028C8(v105, v107);
      [v38 deleteObject_];

      sub_1974028C8(v105, v107);
      --v99;
    }

    while (v99);
  }

  *&aBlock = 0;
  if ([v38 save_])
  {
    v116 = (v254 + 64);
    v117 = 1 << *(v254 + 32);
    v118 = -1;
    if (v117 < 64)
    {
      v118 = ~(-1 << v117);
    }

    v119 = v118 & *(v254 + 64);
    v120 = (v117 + 63) >> 6;
    v121 = aBlock;

    v122 = 0;
    v123 = v239;
    v246 = v120;
    v247 = v116;
LABEL_52:
    if (v119)
    {
      goto LABEL_57;
    }

    while (1)
    {
      v130 = v122 + 1;
      if (__OFADD__(v122, 1))
      {
        goto LABEL_133;
      }

      if (v130 >= v120)
      {
        break;
      }

      v119 = *&v116[8 * v130];
      ++v122;
      if (v119)
      {
        v122 = v130;
LABEL_57:
        v131 = __clz(__rbit64(v119));
        v119 &= v119 - 1;
        v132 = v131 | (v122 << 6);
        v133 = *(v254 + 48) + 16 * v132;
        v134 = *v133;
        v135 = *(v133 + 8);
        v136 = *(*(v254 + 56) + 8 * v132);
        sub_1974028EC(v134, v135);
        v248 = v136;
        v137 = [v136 objectID];
        v251 = v137;
        if (!v135)
        {
          sub_1973F3D34(0, &qword_1ED7C8630, 0x1E69E58C0);
          sub_1974028EC(v134, 0);
          v143 = v137;
          v144 = sub_197521F3C();
          sub_1974028C8(v134, 0);

          if ((v144 & 1) == 0)
          {
            goto LABEL_83;
          }

          goto LABEL_50;
        }

        type metadata accessor for PersistentIdentifierImplementation();
        swift_initStackObject();
        sub_1974028EC(v134, v135);
        v138 = v137;
        v139 = sub_19750C5E0(v138);
        if (v135 == 2)
        {
          v140 = swift_allocObject();
          *(v140 + 40) = 0;
          *(v140 + 48) = 0;
          *(v140 + 56) = sub_19750A470();
          *(v140 + 64) = v141;
          *(v140 + 72) = sub_19750A588();
          *(v140 + 80) = v142;
          *(v140 + 16) = 0;
          *(v140 + 24) = 0;
          *(v140 + 32) = 256;
        }

        else
        {

          v140 = v134;
        }

        v145 = v139[7] == *(v140 + 56) && v139[8] == *(v140 + 64);
        if (!v145 && (sub_19752282C() & 1) == 0 || (v139[9] == *(v140 + 72) ? (v146 = v139[10] == *(v140 + 80)) : (v146 = 0), !v146 && (sub_19752282C() & 1) == 0))
        {
LABEL_81:

          goto LABEL_82;
        }

        v147 = v139[3];
        v148 = *(v140 + 24);
        if (!v147)
        {

          if (!v148)
          {
LABEL_49:
            sub_1974028C8(v134, v135);

            v123 = v239;
LABEL_50:

            goto LABEL_51;
          }

LABEL_82:
          sub_1974028C8(v134, v135);

          v123 = v239;
          goto LABEL_83;
        }

        if (!v148)
        {
          goto LABEL_81;
        }

        if (v139[2] == *(v140 + 16) && v147 == v148)
        {

          goto LABEL_49;
        }

        v150 = *(v140 + 24);
        v151 = sub_19752282C();

        sub_1974028C8(v134, v135);

        v123 = v239;
        if (v151)
        {
          goto LABEL_50;
        }

LABEL_83:
        sub_1974028EC(v134, v135);
        v152 = v240;
        v153 = *v240;
        v154 = swift_isUniquelyReferenced_nonNull_native();
        *&aBlock = *v152;
        v155 = aBlock;
        *v152 = 0x8000000000000000;
        v156 = sub_197403C30(v134, v135);
        v158 = *(v155 + 16);
        v159 = (v157 & 1) == 0;
        v160 = __OFADD__(v158, v159);
        v161 = v158 + v159;
        if (v160)
        {
          goto LABEL_134;
        }

        v162 = v157;
        if (*(v155 + 24) >= v161)
        {
          if ((v154 & 1) == 0)
          {
            v173 = v156;
            sub_19747ADC4();
            v156 = v173;
          }
        }

        else
        {
          sub_197458C84(v161, v154);
          v156 = sub_197403C30(v134, v135);
          if ((v162 & 1) != (v163 & 1))
          {
            sub_1975229CC();
            __break(1u);
            goto LABEL_147;
          }
        }

        v164 = v251;
        v165 = aBlock;
        if (v162)
        {
          v166 = *(aBlock + 56) + 16 * v156;
          v167 = *v166;
          *v166 = v251;
          v168 = *(v166 + 8);
          *(v166 + 8) = 0;
          sub_1974028C8(v167, v168);
          sub_1974028C8(v134, v135);
          goto LABEL_93;
        }

        *(aBlock + 8 * (v156 >> 6) + 64) |= 1 << v156;
        v169 = v165[6] + 16 * v156;
        *v169 = v134;
        *(v169 + 8) = v135;
        v170 = v165[7] + 16 * v156;
        *v170 = v164;
        *(v170 + 8) = 0;
        v171 = v165[2];
        v160 = __OFADD__(v171, 1);
        v172 = v171 + 1;
        if (v160)
        {
          goto LABEL_135;
        }

        v165[2] = v172;
LABEL_93:
        *v240 = v165;
LABEL_51:
        sub_1974028C8(v134, v135);

        v38 = v250;
        v120 = v246;
        v116 = v247;
        goto LABEL_52;
      }
    }

    v174 = v226;
    swift_beginAccess();
    sub_1973FE0E4(v174, v123, &qword_1EAF2AFC0, &qword_19752C728);
    v175 = v231;
    v176 = v228;
    if ((*(v231 + 48))(v123, 1, v228) == 1)
    {
      sub_19740C044(v123, &qword_1EAF2AFC0, &qword_19752C728);
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197524580);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE80, &qword_19752C298);
      sub_19752235C();
      goto LABEL_145;
    }

    (*(v175 + 32))(v238, v123, v176);
    v177 = sub_197520BEC();
    v178 = v229;
    if (v177)
    {
      v179 = v177;
      v180 = *MEMORY[0x1E695D328];
      v256 = sub_1975217BC();
      v257 = v181;
      sub_19752218C();
      if (*(v179 + 16))
      {
        v182 = sub_197445520(&aBlock);
        if (v183)
        {
          sub_197404860(*(v179 + 56) + 32 * v182, &v258);
          sub_197420CA4(&aBlock);

          if (*(&v259 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFE0, &qword_19752C748);
            if (swift_dynamicCast())
            {
              v184 = aBlock;
              v185 = v38;
              v186 = v249;

              v187 = v253;
              sub_197444CD8(v184, v186, v185, v178, v230);
              v253 = v187;
            }

LABEL_106:
            v188 = sub_197520BEC();
            if (v188)
            {
              v189 = v188;
              v190 = *MEMORY[0x1E695D4D0];
              v256 = sub_1975217BC();
              v257 = v191;
              sub_19752218C();
              if (*(v189 + 16))
              {
                v192 = sub_197445520(&aBlock);
                if (v193)
                {
                  sub_197404860(*(v189 + 56) + 32 * v192, &v258);
                  sub_197420CA4(&aBlock);

                  if (*(&v259 + 1))
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFE0, &qword_19752C748);
                    if (swift_dynamicCast())
                    {
                      v194 = aBlock;
                      v195 = v38;
                      v196 = v249;

                      v197 = v253;
                      sub_197444CD8(v194, v196, v195, v178, v230);
                      v253 = v197;
                    }

LABEL_115:
                    v198 = v38;
                    v199 = v249;

                    sub_197445880(v200, v199, v198, v178, v230);

                    v201 = v238;
                    v202 = sub_197520BEC();
                    if (v202)
                    {
                      v203 = v202;
                      v204 = *MEMORY[0x1E695D2F8];
                      v256 = sub_1975217BC();
                      v257 = v205;
                      sub_19752218C();
                      if (*(v203 + 16) && (v206 = sub_197445520(&aBlock), (v207 & 1) != 0))
                      {
                        sub_197404860(*(v203 + 56) + 32 * v206, &v258);
                        sub_197420CA4(&aBlock);

                        if (*(&v259 + 1))
                        {
                          sub_1973F3D34(0, &qword_1ED7C77E0, 0x1E695DFD8);
                          if (swift_dynamicCast())
                          {
                            v253 = aBlock;
                            sub_197521EFC();
                            sub_197413CBC(qword_1ED7C77F8, MEMORY[0x1E6968EB0]);
                            sub_197521F8C();
                            if (v262)
                            {
                              while (1)
                              {
                                sub_1974028B8(&aBlock, &v258);
                                sub_197404860(&v258, &v256);
                                sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
                                if (!swift_dynamicCast())
                                {
                                  break;
                                }

                                __swift_destroy_boxed_opaque_existential_1Tm(&v258);
                                sub_197521F8C();
                                if (!v262)
                                {
                                  goto LABEL_123;
                                }
                              }

LABEL_147:
                              v256 = 0;
                              v257 = 0xE000000000000000;
                              sub_1975221EC();
                              MEMORY[0x19A8DFF80](0xD000000000000039, 0x80000001975245C0);
                              v223 = sub_197522B8C();
                              MEMORY[0x19A8DFF80](v223);

                              MEMORY[0x19A8DFF80](8255, 0xE200000000000000);
                              sub_19752235C();
                              goto LABEL_145;
                            }

LABEL_123:

                            (*(v225 + 8))(v232, v233);
                            (*(v231 + 8))(v238, v228);

                            v208 = v236;
                            v178 = v229;
                          }

                          else
                          {
                            (*(v231 + 8))(v238, v176);

                            v208 = v236;
                          }

                          goto LABEL_128;
                        }
                      }

                      else
                      {

                        sub_197420CA4(&aBlock);
                        v258 = 0u;
                        v259 = 0u;
                      }

                      (*(v175 + 8))(v238, v176);
                    }

                    else
                    {
                      (*(v175 + 8))(v201, v176);

                      v258 = 0u;
                      v259 = 0u;
                    }

                    v208 = v236;
                    sub_19740C044(&v258, &qword_1EAF2AF20, &unk_19752F320);
LABEL_128:
                    v209 = [v208 defaultCenter];
                    [v209 removeObserver_];

                    swift_unknownObjectRelease();

                    swift_setDeallocating();
                    v210 = v178[2];

                    v211 = v178[3];

                    v212 = v178[4];

                    v213 = v178[5];

                    goto LABEL_129;
                  }

LABEL_114:
                  sub_19740C044(&v258, &qword_1EAF2AF20, &unk_19752F320);
                  goto LABEL_115;
                }
              }

              sub_197420CA4(&aBlock);
            }

            v258 = 0u;
            v259 = 0u;
            goto LABEL_114;
          }

LABEL_105:
          sub_19740C044(&v258, &qword_1EAF2AF20, &unk_19752F320);
          goto LABEL_106;
        }
      }

      sub_197420CA4(&aBlock);
    }

    v258 = 0u;
    v259 = 0u;
    goto LABEL_105;
  }

  v124 = aBlock;

  v125 = sub_1975211DC();

  swift_willThrow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_19752C280;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1975221EC();
  *&v258 = v249;
  type metadata accessor for DefaultStore(0);
  sub_19752235C();
  MEMORY[0x19A8DFF80](0xD000000000000019, 0x8000000197524560);
  *&v258 = v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
  sub_19752235C();
  v127 = aBlock;
  *(v126 + 56) = MEMORY[0x1E69E6158];
  *(v126 + 32) = v127;
  sub_197522A3C();

  type metadata accessor for CoreDataErrorSanitizer();
  v128 = sub_1975211CC();
  sub_197465B5C(v128);

  swift_willThrow();

  v129 = [v236 defaultCenter];
  [v129 removeObserver_];

  swift_unknownObjectRelease();

LABEL_129:
  v214 = *MEMORY[0x1E69E9840];
}

uint64_t DefaultSnapshot.encode(to:)(void *a1)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
  v4 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58, v5);
  v7 = &v55 - v6;
  v8 = v1[1];
  v73 = *v1;
  LODWORD(v9) = *(v1 + 16);
  v56 = v10;
  if (v9)
  {
    if (v9 == 1)
    {
      v12 = *(v8 + 72);
      v11 = *(v8 + 80);
      sub_1974028EC(v8, 1);
    }

    else
    {
      sub_1974028EC(v8, 2);
      v12 = sub_19750A588();
      v11 = v15;
    }
  }

  else
  {
    sub_1974028EC(v8, 0);
    v13 = [v8 entityName];
    v12 = sub_1975217BC();
    v11 = v14;
  }

  v16 = sub_197442240(v12, v11);

  v57 = v16;
  if (!v16)
  {
    goto LABEL_39;
  }

  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_1(a1, a1[3]);
  sub_197442414();
  sub_197522B0C();
  *&v67[0] = v8;
  BYTE8(v67[0]) = v9;
  sub_197411E68();
  v68 = 0uLL;
  v18 = v58;
  sub_1975226EC();
  if (!v2)
  {
    sub_1974028C8(*&v67[0], SBYTE8(v67[0]));
    v20 = v57;
    swift_beginAccess();
    v21 = *(v20 + 64);
    v61 = *(v21 + 16);
    if (!v61)
    {

      return (*(v56 + 8))(v7, v18);
    }

    v62 = v7;
    v60 = v21 + 32;

    v8 = 0;
    v9 = v73;
    v59 = v21;
    while (1)
    {
      if (v8 >= *(v21 + 16))
      {
        __break(1u);
LABEL_39:
        *&v68 = 0;
        *(&v68 + 1) = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000058, 0x8000000197525B80);
        *&v67[0] = v8;
        BYTE8(v67[0]) = v9;
        sub_19752235C();
        goto LABEL_40;
      }

      sub_197413B90(v60 + 40 * v8, v70);
      v25 = v71;
      v26 = v72;
      __swift_project_boxed_opaque_existential_1Tm_1(v70, v71);
      v27 = (*(v26 + 32))(v25, v26);
      if (!*(v9 + 16))
      {

LABEL_25:
        v48 = v71;
        v49 = v72;
        __swift_project_boxed_opaque_existential_1Tm_1(v70, v71);
        *&v67[0] = (*(v49 + 32))(v48, v49);
        *(&v67[0] + 1) = v50;
        swift_beginAccess();
        sub_19752277C();
        swift_endAccess();

LABEL_26:
        v21 = v59;
        v9 = v73;
        goto LABEL_14;
      }

      v29 = sub_1973F4028(v27, v28);
      v31 = v30;

      if ((v31 & 1) == 0)
      {
        goto LABEL_25;
      }

      sub_1973FDED4(*(v9 + 56) + 48 * v29, v67);
      sub_1974028A0(v67, &v68);
      sub_1973FDED4(&v68, v67);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
      if (!swift_dynamicCast())
      {
        break;
      }

      v22 = v71;
      v23 = v72;
      __swift_project_boxed_opaque_existential_1Tm_1(v70, v71);
      v63 = (*(v23 + 32))(v22, v23);
      v64 = v24;
      swift_beginAccess();
      sub_1973FF428();
      v18 = v58;
      sub_1975226EC();
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1Tm_2(&v68);

LABEL_13:
      v21 = v59;
LABEL_14:
      ++v8;
      __swift_destroy_boxed_opaque_existential_1Tm_2(v70);
      if (v8 == v61)
      {

        v7 = v62;
        return (*(v56 + 8))(v7, v18);
      }
    }

    v32 = v71;
    v33 = v72;
    __swift_project_boxed_opaque_existential_1Tm_1(v70, v71);
    v34 = (*(v33 + 32))(v32, v33);
    v36 = v35;
    v37 = v57;
    swift_beginAccess();
    v38 = *(v37 + 96);
    if (*(v38 + 16))
    {
      v39 = sub_1973F4028(v34, v36);
      v41 = v40;

      if (v41)
      {
        v42 = *(*(v38 + 56) + 8 * v39);
        swift_endAccess();
        v18 = v58;
        if ((*(v42 + 120) & 0x10) != 0)
        {
          sub_1973FDED4(&v68, v67);
          if (!swift_dynamicCast())
          {
            while (1)
            {
              *&v67[0] = 0;
              *(&v67[0] + 1) = 0xE000000000000000;
              sub_1975221EC();
              MEMORY[0x19A8DFF80](0xD000000000000049, 0x8000000197525BE0);
              MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
              MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197525C30);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
              sub_19752235C();
              MEMORY[0x19A8DFF80](10, 0xE100000000000000);
              __swift_project_boxed_opaque_existential_1Tm_1(&v68, v69);
              swift_getDynamicType();
              v54 = sub_197522B8C();
              MEMORY[0x19A8DFF80](v54);

LABEL_40:
              sub_1975223EC();
              __break(1u);
            }
          }

          v43 = v65;
          v44 = v66;
          v45 = v71;
          v46 = v72;
          __swift_project_boxed_opaque_existential_1Tm_1(v70, v71);
          v63 = (*(v46 + 32))(v45, v46);
          v64 = v47;
          swift_beginAccess();
          sub_1974122F8();
          sub_1975226EC();
          swift_endAccess();

          __swift_destroy_boxed_opaque_existential_1Tm_2(&v68);
          sub_19744D0E0(v43, v44);
          v18 = v58;
          goto LABEL_26;
        }

        goto LABEL_29;
      }
    }

    else
    {
    }

    swift_endAccess();
    v18 = v58;
LABEL_29:
    v51 = v71;
    v52 = v72;
    __swift_project_boxed_opaque_existential_1Tm_1(v70, v71);
    v53 = (*(v52 + 80))(v51, v52);
    *&v67[0] = v53;
    if (swift_conformsToProtocol2())
    {
      v9 = v73;
      if (v53)
      {
        do
        {
          sub_1973F732C(v53, v67);
          v53 = *&v67[0];
        }

        while (swift_conformsToProtocol2() && v53);
      }
    }

    else
    {
      v9 = v73;
    }

    sub_197437118(v53, v62, &v68, v70);
    __swift_destroy_boxed_opaque_existential_1Tm_2(&v68);
    goto LABEL_13;
  }

  sub_1974028C8(*&v67[0], SBYTE8(v67[0]));
  return (*(v56 + 8))(v7, v18);
}

void sub_197437118(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v8 = a4[3];
    v9 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v8);
    (*(v9 + 32))(v8, v9);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752269C();
LABEL_3:
    swift_endAccess();
LABEL_6:

    return;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v10 = a4[3];
    v11 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v10);
    (*(v11 + 32))(v10, v11);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752268C();
    swift_endAccess();

    goto LABEL_6;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v12 = a4[3];
    v13 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v12);
    (*(v13 + 32))(v12, v13);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_1975226AC();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v14 = a4[3];
    v15 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v14);
    (*(v15 + 32))(v14, v15);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_1975226BC();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v16 = a4[3];
    v17 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v16);
    (*(v17 + 32))(v16, v17);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_1975226CC();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v18 = a4[3];
    v19 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v18);
    (*(v19 + 32))(v18, v19);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_1975226FC();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v20 = a4[3];
    v21 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v20);
    (*(v21 + 32))(v20, v21);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752270C();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v22 = a4[3];
    v23 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v22);
    (*(v23 + 32))(v22, v23);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752271C();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v24 = a4[3];
    v25 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v24);
    (*(v25 + 32))(v24, v25);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752272C();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v26 = a4[3];
    v27 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v26);
    (*(v27 + 32))(v26, v27);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_1975226DC();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v28 = a4[3];
    v29 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v28);
    (*(v29 + 32))(v28, v29);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752273C();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v30 = a4[3];
    v31 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v30);
    (*(v31 + 32))(v30, v31);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752274C();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v32 = a4[3];
    v33 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v32);
    (*(v33 + 32))(v32, v33);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752275C();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v34 = a4[3];
    v35 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v34);
    (*(v35 + 32))(v34, v35);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752276C();
    goto LABEL_3;
  }

  if (swift_conformsToProtocol2() && a1)
  {
    v36 = a3[5];
    v37 = __swift_project_boxed_opaque_existential_1Tm_1(a3, a3[3]);
    v38 = a4[3];
    v39 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v38);
    v52 = (*(v39 + 32))(v38, v39);
    v53 = v40;
    sub_197438114(v37, &v52, a2, a4);
    goto LABEL_6;
  }

  if (swift_conformsToProtocol2() && a1)
  {
    sub_1975214DC();
    if ((v41 & 0x8000000000000000) == 0)
    {
      if (v41)
      {
        sub_1973FDED4(a3, &v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
        swift_dynamicCast();
        v42 = a4[3];
        v43 = a4[4];
        __swift_project_boxed_opaque_existential_1Tm_1(a4, v42);
        (*(v43 + 32))(v42, v43);
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
        sub_197412788(&qword_1ED7C77C8, sub_197411E68);
        sub_1975226EC();
        swift_endAccess();

        goto LABEL_6;
      }

      sub_1975221EC();

      v52 = 0xD00000000000001DLL;
      v53 = 0x8000000197524E70;
      v49 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v49);

      goto LABEL_45;
    }

    __break(1u);
  }

  else if (swift_conformsToProtocol2() && a1)
  {
    sub_1973FDED4(a3, &v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v44 = a4[3];
    v45 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v44);
    (*(v45 + 32))(v44, v45);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_197411E68();
    sub_1975226EC();
    swift_endAccess();

    sub_1974028C8(v50, v51);
    return;
  }

  sub_1975221EC();

  v52 = 0xD000000000000023;
  v53 = 0x8000000197525DA0;
  v46 = a4[3];
  v47 = a4[4];
  __swift_project_boxed_opaque_existential_1Tm_1(a4, v46);
  (*(v47 + 80))(v46, v47);
  v48 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v48);

LABEL_45:
  sub_1975223EC();
  __break(1u);
}

uint64_t sub_197438114(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4[3];
  v5 = a4[4];
  __swift_project_boxed_opaque_existential_1Tm_1(a4, v4);
  (*(v5 + 32))(v4, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
  sub_1975226EC();
  swift_endAccess();
}

void sub_1974381F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1973FE14C(a2, &v62, &qword_1EAF2AF20, &unk_19752F320);
  if (!*(&v63 + 1))
  {
    sub_1973FE58C(&v62, &qword_1EAF2AF20, &unk_19752F320);
    v11 = sub_19752178C();
    [a5 setValue:0 forKey:v11];

    return;
  }

  sub_1974028B8(&v62, v66);
  sub_197434728(v66, v65);
  sub_197404860(v65, &v62);
  sub_197438EA8(0, &qword_1ED7C7900, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    v10 = sub_19752178C();
    [a5 setValue:0 forKey:v10];

LABEL_19:
    v29 = v65;
    goto LABEL_20;
  }

  v12 = *(a1 + 120);
  if ((v12 & 0x20) != 0)
  {
    goto LABEL_16;
  }

  if ((*(a1 + 120) & 8) != 0)
  {
    sub_197404860(v65, &v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5D8, &qword_19752EA20);
    if (!swift_dynamicCast())
    {
      v64 = 0;
      v62 = 0u;
      v63 = 0u;
      sub_1973FE58C(&v62, &qword_1EAF2B5E0, &qword_19752EA28);
      *&v62 = 0;
      *(&v62 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197525840);
      sub_19752235C();
      MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
      *&v59 = a1;
      type metadata accessor for Schema.Attribute();
      sub_19752235C();
      goto LABEL_32;
    }

    sub_197438DC8(&v62, v58);
    sub_19749B32C(v58, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5C8, &unk_19752EA10);
    if (!swift_dynamicCast())
    {
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      sub_1973FE58C(&v59, &qword_1EAF2B5D0, &unk_197534040);
      *&v62 = 0;
      *(&v62 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000005FLL, 0x8000000197525860);
      sub_19752235C();
      MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
      v45 = [*(v5 + 16) description];
      v46 = sub_1975217BC();
      v48 = v47;

      MEMORY[0x19A8DFF80](v46, v48);

      goto LABEL_32;
    }

    sub_19749B314(&v59, &v62);
    __swift_project_boxed_opaque_existential_1Tm_0(&v62, *(&v63 + 1));
    v21 = sub_197520BAC();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_197520B9C();
    v24 = sub_197520B8C();
    v26 = v25;

    v27 = sub_1975212FC();
    v28 = sub_19752178C();
    [a5 setValue:v27 forKey:v28];
    sub_19744D0E0(v24, v26);

    __swift_destroy_boxed_opaque_existential_1Tm_1(v58);
  }

  else
  {
    if ((*(a1 + 120) & 0x90) != 0)
    {
      sub_197404860(v65, &v62);
      if (swift_dynamicCast())
      {
        v13 = v59;
        type metadata accessor for Schema.Attribute();
        sub_19744D340(v59, *(&v59 + 1), a1, &v62);
        sub_1973FE14C(&v62, &v59, &qword_1EAF2AF20, &unk_19752F320);
        v14 = *(&v60 + 1);
        if (*(&v60 + 1))
        {
          v15 = __swift_project_boxed_opaque_existential_1Tm_0(&v59, *(&v60 + 1));
          v16 = *(v14 - 8);
          v17 = *(v16 + 64);
          MEMORY[0x1EEE9AC00](v15, v15);
          v19 = &v57[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
          (*(v16 + 16))(v19);
          v20 = sub_19752281C();
          (*(v16 + 8))(v19, v14);
          __swift_destroy_boxed_opaque_existential_1Tm_1(&v59);
        }

        else
        {
          v20 = 0;
        }

        v32 = sub_19752178C();
        [a5 setValue:v20 forKey:v32];
        swift_unknownObjectRelease();

        sub_19744D0E0(v13, *(&v13 + 1));
        sub_1973FE58C(&v62, &qword_1EAF2AF20, &unk_19752F320);
        goto LABEL_19;
      }

      *&v62 = 0;
      *(&v62 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x8000000197525810);
      MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
      MEMORY[0x19A8DFF80](0xD000000000000025, 0x80000001975251B0);
      sub_19752235C();
      MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
      *&v59 = a1;
      type metadata accessor for Schema.Attribute();
      sub_19752235C();
LABEL_32:
      sub_1975223EC();
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      return;
    }

    if ((*(a1 + 120) & 1) == 0)
    {
LABEL_16:
      __swift_project_boxed_opaque_existential_1Tm_0(v66, v67);
      v30 = sub_19752281C();
      v31 = sub_19752178C();
      [a5 setValue:v30 forKey:v31];
      swift_unknownObjectRelease();

      goto LABEL_19;
    }

    type metadata accessor for Schema.CompositeAttribute();
    v33 = swift_dynamicCastClass();
    if (!v33)
    {
      *&v62 = 0;
      *(&v62 + 1) = 0xE000000000000000;
      sub_1975221EC();
      v59 = v62;
      MEMORY[0x19A8DFF80](a3, a4);
      MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197525790);
      v49 = *(v5 + 40);
      swift_beginAccess();
      v50 = *(v49 + 16);
      v51 = *(v49 + 24);

      MEMORY[0x19A8DFF80](v50, v51);

      MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x80000001975257C0);
      v58[0] = a1;
      type metadata accessor for Schema.Attribute();
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      v52 = [a5 description];
      v53 = sub_1975217BC();
      v55 = v54;

      MEMORY[0x19A8DFF80](v53, v55);

      goto LABEL_32;
    }

    v34 = v33;
    sub_197404860(v65, v58);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5C8, &unk_19752EA10);
    if (!swift_dynamicCast())
    {
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      sub_1973FE58C(&v59, &qword_1EAF2B5D0, &unk_197534040);
      *&v62 = 0;
      *(&v62 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000001CLL, 0x80000001975257F0);
      sub_19752235C();
      goto LABEL_32;
    }

    sub_19749B314(&v59, &v62);
    v35 = type metadata accessor for CompositeEncoder();
    v36 = swift_allocObject();
    v37 = MEMORY[0x1E69E7CC0];
    *(v36 + 32) = MEMORY[0x1E69E7CC0];

    *(v36 + 40) = sub_197441730(v37);
    v38 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    *(v36 + 16) = a3;
    *(v36 + 24) = a4;
    *(v36 + 48) = v34;
    *(v36 + 56) = v38;
    v56 = v34;
    __swift_project_boxed_opaque_existential_1Tm_0(&v62, *(&v63 + 1));
    *(&v60 + 1) = v35;
    *&v61 = sub_19749B3F4(&qword_1ED7C6928, type metadata accessor for CompositeEncoder);
    *&v59 = v36;

    sub_19752169C();
    __swift_destroy_boxed_opaque_existential_1Tm_1(&v59);
    v39 = *(v36 + 56);
    if ((v12 & 6) != 0)
    {
      v40 = v39;
      v41 = sub_197488AF8(v39, v56);
      v42 = sub_19752178C();
      [a5 setValue:v41 forKey:v42];
    }

    else
    {
      v43 = v39;
      v44 = sub_19752178C();
      [a5 setValue:v43 forKey:{v44, v56}];
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm_1(v65);
  v29 = &v62;
LABEL_20:
  __swift_destroy_boxed_opaque_existential_1Tm_1(v29);
  __swift_destroy_boxed_opaque_existential_1Tm_1(v66);
}

uint64_t sub_197438DC8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_197438DE0()
{
  sub_197438F34();

  return swift_deallocClassInstance();
}

uint64_t sub_197438E10()
{
  sub_197438E58(MEMORY[0x1E69E7D48]);

  return swift_deallocClassInstance();
}

uint64_t sub_197438E58(void (*a1)(void))
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  v5 = *(v1 + 32);

  a1(*(v1 + 48));
  return v1;
}

uint64_t sub_197438EA8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_197438EF0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 56);
}

uint64_t sub_197438F34()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return v0;
}

void *sub_197438F7C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19752242C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void sub_197439124()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = sub_19752178C();
  v4 = *(v1 + 88);
  v5 = *(v1 + 104);
  sub_197522B4C();
  v6 = sub_19752178C();

  [v2 setValue:v3 forKey:v6];
}

unint64_t sub_1974391D0()
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

void sub_197439224(uint64_t a1, uint64_t a2, int64_t a3, int a4)
{
  v5 = v4;
  v10 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_19747B580();
    *v5 = v12;
  }

  if (a3 < 0 || 1 << *(v12 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v12 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v12 + 36) == a4)
  {
    v13 = *(v12 + 56);
    v14 = *(v12 + 48) + 16 * a3;
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 8);
    *a1 = v15;
    *(a1 + 8) = v14;
    sub_197433E8C(v13 + 32 * a3, a2);
    sub_197439D60(a3, v12);
    *v5 = v12;
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_197439308(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1973F8490(MEMORY[0x1E69E7CC0]);
  v4 = sub_1974395C0(v2);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return v3;
  }

  v6 = 0;
  for (i = a1 + 32; ; i += 96)
  {
    sub_1973F7E64(i, v38);
    v9 = v38[0];
    v8 = v38[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v3;
    v11 = sub_1973F4028(v9, v8);
    v13 = v3[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v3[3] < v16)
    {
      sub_1973F8828(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_1973F4028(v9, v8);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_31;
      }

LABEL_10:
      if (v17)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v19 = v11;
    sub_19747A078();
    v11 = v19;
    v3 = v36;
    if (v17)
    {
LABEL_11:
      *(v3[7] + 8 * v11) = v6;
      goto LABEL_15;
    }

LABEL_13:
    v3[(v11 >> 6) + 8] |= 1 << v11;
    v20 = (v3[6] + 16 * v11);
    *v20 = v9;
    v20[1] = v8;
    *(v3[7] + 8 * v11) = v6;
    v21 = v3[2];
    v15 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v15)
    {
      goto LABEL_28;
    }

    v3[2] = v22;

LABEL_15:
    v23 = v38[2];
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v4;
    v25 = sub_1973F7814(v23);
    v27 = v4[2];
    v28 = (v26 & 1) == 0;
    v15 = __OFADD__(v27, v28);
    v29 = v27 + v28;
    if (v15)
    {
      goto LABEL_27;
    }

    v30 = v26;
    if (v4[3] < v29)
    {
      sub_1973F89B0(v29, v24);
      v25 = sub_1973F7814(v23);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_30;
      }

LABEL_20:
      if (v30)
      {
        goto LABEL_3;
      }

      goto LABEL_21;
    }

    if (v24)
    {
      goto LABEL_20;
    }

    v34 = v25;
    sub_197479F1C();
    v25 = v34;
    v4 = v37;
    if (v30)
    {
LABEL_3:
      *(v4[7] + 8 * v25) = v6;
      goto LABEL_4;
    }

LABEL_21:
    v4[(v25 >> 6) + 8] |= 1 << v25;
    *(v4[6] + 8 * v25) = v23;
    *(v4[7] + 8 * v25) = v6;
    v32 = v4[2];
    v15 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v15)
    {
      goto LABEL_29;
    }

    v4[2] = v33;

LABEL_4:
    ++v6;
    sub_1973F82A8(v38);
    if (v5 == v6)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_19752202C();
  sub_1975229CC();
  __break(1u);
LABEL_31:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

unint64_t sub_1974395C0(uint64_t a1)
{
  v1 = sub_1973F84A4(a1);

  return v1;
}

unint64_t sub_1974395F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1973F7950(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_19747B404();
      v13 = v21;
      goto LABEL_8;
    }

    sub_197439744(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_1973F7950(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v27 = *v25;
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {

    return sub_1974399E4(v13, a3, a4, a1, a2, v24);
  }
}

uint64_t sub_197439744(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1F8, &qword_19752D388);
  result = sub_19752243C();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v21 = 16 * (v18 | (v9 << 6));
      v32 = *(*(v5 + 48) + v21);
      v33 = *(*(v5 + 56) + v21);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_197522A5C();
      MEMORY[0x19A8E1190](v32);
      result = sub_197522A9C();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      *(*(v8 + 48) + v17) = v32;
      *(*(v8 + 56) + v17) = v33;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_1974399E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_197439A78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *(v3 + 16) = 0;
  *(v3 + 24) = -1;
  swift_beginAccess();
  v7 = *(v3 + 16);
  *(v3 + 16) = v5;
  v8 = *(v3 + 24);
  *(v3 + 24) = v6;
  sub_1974A1014(v7, v8);
  *(a3 + 24) |= 0x100000u;
  *(v3 + 56) = type metadata accessor for _ModelMetadata();
  *(v3 + 32) = a3;
  return v3;
}

uint64_t sub_197439B10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_197522AEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1973FE074(a1, a2);
  sub_19743A12C();

  v12 = type metadata accessor for _DestroyedBackingData();
  PersistentModel.persistentModelID.getter(a1, a2, &v19);
  v17 = v19;
  v18 = v20;
  v13 = sub_1973FE074(a1, a2);
  v14 = sub_197439D0C(a1, &v17, v13);
  v21 = v12;
  WitnessTable = swift_getWitnessTable();
  v19 = v14;
  (*(a2 + 64))(&v19, a1, a2);
  result = swift_getAssociatedTypeWitness();
  if (result != a1)
  {
    v21 = a1;
    v19 = v3;
    swift_unknownObjectRetain();
    sub_197522ABC();
    sub_1974CB5B4(v11, a1, a1, a1, a2, a2);
    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

uint64_t sub_197439D0C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = swift_allocObject();
  sub_197439A78(v5, a2, a3);
  return v5;
}

void sub_197439D60(int64_t a1, uint64_t a2)
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
    v32 = v8;
    while (1)
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
            v33 = v3;
            v18 = v2;
            v19 = v7;
            v20 = v4;
            v21 = *(v12 + 16);
            sub_197522A7C();
            v4 = v20;
            v7 = v19;
            v2 = v18;
            v3 = v33;
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          v22 = *(v12 + 33);
          sub_197522A7C();
          v8 = v32;
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
        break;
      }

      if (v24 < v8)
      {
        goto LABEL_19;
      }

LABEL_20:
      v25 = *(v2 + 48);
      v26 = (v25 + 16 * v3);
      v27 = (v25 + v9);
      if (16 * v3 != v9 || v26 >= v27 + 1)
      {
        *v26 = *v27;
      }

      v28 = 32 * v3;
      if (32 * v3 < (32 * v6) || *(v2 + 56) + 32 * v3 >= *(v2 + 56) + 32 * v6 + 32)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v28 == 32 * v6)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    if (v24 < v8)
    {
      goto LABEL_5;
    }

LABEL_19:
    if (v3 < v24)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_27:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v29 = *(v2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v31;
    ++*(v2 + 36);
  }
}

uint64_t sub_19743A12C()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  *(v0 + 96) = 0;

  swift_beginAccess();
  v2 = *(v0 + 104);
  *(v0 + 104) = 0;

  v3 = *(v0 + 16);
  *(v0 + 16) = 0;

  *(v0 + 24) |= 0x80000u;
  v4 = *(v0 + 32);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  swift_unknownObjectRelease();
  v5 = *(v0 + 48);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  swift_unknownObjectRelease();
  v6 = *(v0 + 64);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  result = swift_unknownObjectRelease();
  *(v0 + 112) = 256;
  return result;
}

uint64_t sub_19743A218(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1973F4028(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_19747BB04();
      v11 = v19;
      goto LABEL_8;
    }

    sub_19743A69C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1973F4028(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    return sub_1973F6E44(a1, v22[7] + 32 * v11, &qword_1EAF2AF20, &unk_19752F320);
  }

  sub_19743EF58(v11, a2, a3, a1, v22);
}

uint64_t sub_19743A360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a6;
  v42 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = AssociatedTypeWitness;
  v13 = type metadata accessor for DataStoreSaveChangesRequest();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = (&v32 - v17);
  v44[0] = a2;
  v44[1] = a3;
  v19 = a3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  swift_dynamicCast();
  v20 = v43;
  sub_19743E100(v43, a7, a8, v18);
  if (sub_19743EE9C(v13))
  {
    (*(v14 + 8))(v18, v13);
    return swift_unknownObjectRelease();
  }

  else
  {
    ObjectType = swift_getObjectType();
    v35 = a8;
    v38 = v20;
    v22 = *(v19 + 40);
    v23 = v22(ObjectType, v19);
    v32 = v24;
    v33 = v23;
    v45 = v13;
    boxed_opaque_existential_1Tm_0 = __swift_allocate_boxed_opaque_existential_1Tm_0(v44);
    v36 = v13;
    v37 = v14;
    (*(v14 + 16))(boxed_opaque_existential_1Tm_0, v18, v13);
    swift_beginAccess();
    sub_19743A964(v44, v33, v32);
    swift_endAccess();
    v26 = v22(ObjectType, v19);
    v28 = v27;
    v29 = v46;
    v30 = (*(v35 + 104))(v18, a7);
    v46 = v29;
    if (v29)
    {
      (*(v37 + 8))(v18, v36);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = v30;
      v45 = type metadata accessor for DataStoreSaveChangesResult();
      v44[0] = v31;
      swift_beginAccess();
      sub_19743A964(v44, v26, v28);
      swift_endAccess();
      swift_unknownObjectRelease();
      return (*(v37 + 8))(v18, v36);
    }
  }
}

uint64_t sub_19743A69C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B258, &qword_19752D3F0);
  v39 = a2;
  result = sub_19752243C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + 32 * v23);
      if (v39)
      {
        v28 = v27[1];
        v40 = *v27;
        v41 = v28;
      }

      else
      {
        sub_197404790(v27, &v40, &qword_1EAF2AF20, &unk_19752F320);
      }

      v29 = *(v8 + 40);
      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = (*(v8 + 56) + 32 * v16);
      v19 = v41;
      *v18 = v40;
      v18[1] = v19;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_19743A964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) == 1)
  {
    sub_197448384(a1, &qword_1EAF2B648, &unk_19752FD20);
    sub_19749F53C(a2, a3, v11);

    return sub_197448384(v11, &qword_1EAF2B648, &unk_19752FD20);
  }

  else
  {
    v7 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v7;
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_19743A218(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  return result;
}

uint64_t sub_19743AA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 40);
  v8 = v7(a2, a3);
  v10 = v9;
  swift_beginAccess();
  v11 = *(v3 + 24);
  if (*(v11 + 16) && (v12 = *(v4 + 24), , v13 = sub_1973F4028(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(*(v11 + 56) + 8 * v13);

    v17 = sub_19743ACB4();

    return v17;
  }

  else
  {

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000003ALL, 0x8000000197526F20);
    sub_1975227FC();
    MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
    v19 = v7(a2, a3);
    v21 = v20;
    v22 = *(v4 + 24);
    if (*(v22 + 16) && (v23 = v19, v24 = *(v4 + 24), , v25 = sub_1973F4028(v23, v21), v27 = v26, , (v27 & 1) != 0))
    {
      v28 = *(*(v22 + 56) + 8 * v25);
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B8D8, &qword_19752FB98);
    v29 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v29);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19743ACB4()
{
  sub_197404860(v0 + 16, v3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DataStoreSaveChangesRequestBuilder.StoreBuilder();
  swift_dynamicCast();
  return v2;
}

uint64_t sub_19743AD6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_197444B2C(0, v1, 0);
  v2 = v24;
  v4 = -1 << *(a1 + 32);
  v23 = a1 + 56;
  result = sub_19752206C();
  v6 = result;
  v7 = 0;
  v21 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v23 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v13 = *(v24 + 16);
    v12 = *(v24 + 24);
    v22 = *(*(a1 + 48) + 16 * v6);
    result = swift_unknownObjectRetain();
    if (v13 >= v12 >> 1)
    {
      result = sub_197444B2C((v12 > 1), v13 + 1, 1);
    }

    *(v24 + 16) = v13 + 1;
    *(v24 + 16 * v13 + 32) = v22;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v14 = *(v23 + 8 * v10);
    if ((v14 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v6 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v21;
    }

    else
    {
      v16 = v10 << 6;
      v17 = v10 + 1;
      v9 = v21;
      v18 = (a1 + 64 + 8 * v10);
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_197444BD8(v6, v11, 0);
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_197444BD8(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
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
  __break(1u);
  return result;
}

_OWORD *sub_19743AF90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a6;
  v22 = a7;
  v23 = a8;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v20);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_2, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v15 = (a5[6] + 16 * a1);
  *v15 = a2;
  v15[1] = a3;
  result = sub_1974028A0(&v20, (a5[7] + 48 * a1));
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}

_OWORD *sub_19743B06C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a6;
  v39 = a7;
  v40 = a8;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v37);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_2, a1, a6);
  v17 = *a5;
  v19 = sub_1973F4028(a2, a3);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a4 & 1) != 0)
  {
LABEL_7:
    v25 = *a5;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 48 * v19);
      __swift_destroy_boxed_opaque_existential_1Tm_2(v26);
      return sub_1974028A0(&v37, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a4 & 1) == 0)
  {
    sub_19747A934();
    goto LABEL_7;
  }

  sub_1973FF110(v22, a4 & 1);
  v28 = *a5;
  v29 = sub_1973F4028(a2, a3);
  if ((v23 & 1) != (v30 & 1))
  {
LABEL_14:
    result = sub_1975229CC();
    __break(1u);
    return result;
  }

  v19 = v29;
  v25 = *a5;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  v31 = v38;
  v32 = __swift_mutable_project_boxed_opaque_existential_2(&v37, v38);
  v33 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32, v32);
  v35 = &v37 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35);
  sub_19743AF90(v19, a2, a3, v35, v25, a6, a7, a8);

  return __swift_destroy_boxed_opaque_existential_1Tm_2(&v37);
}

uint64_t sub_19743B2AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  memset(v25, 0, sizeof(v25));
  v10 = sub_19743E750(v4, a2);
  v11 = *(v10 + 24);
  if (!*(v11 + 16) || (v12 = sub_1973F7814(a1), (v13 & 1) == 0))
  {
    v22 = 0u;
    v23 = 0u;
    goto LABEL_9;
  }

  v14 = *(*(v11 + 56) + 8 * v12);
  result = swift_beginAccess();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v16 = *(v10 + 32);
    if (v14 < *(v16 + 16))
    {
      sub_1973FE14C(v16 + 32 * v14 + 32, &v22, &qword_1EAF2AF20, &unk_19752F320);
      if (*(&v23 + 1))
      {
        sub_1974028B8(&v22, v24);
        sub_197404860(v24, &v22);
        if (swift_dynamicCast())
        {
          *(a4 + 24) = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
          *(a4 + 32) = sub_1973FF3D4();
          *(a4 + 40) = sub_1973FF428();

          *a4 = v19;
          *(a4 + 8) = v20;
          *(a4 + 16) = v21;
          __swift_destroy_boxed_opaque_existential_1Tm_1(v24);
          return sub_1973FE58C(v25, &qword_1EAF2B5E8, &qword_19752EA40);
        }

        __swift_destroy_boxed_opaque_existential_1Tm_1(v24);
LABEL_10:
        v17 = *a1;
        sub_197521FFC();
        sub_19743C9B4(v18, a1, v5, v10, v25, a2, v18, a3);

        swift_beginAccess();
        sub_1973FE14C(v25, a4, &qword_1EAF2B5E8, &qword_19752EA40);
        return sub_1973FE58C(v25, &qword_1EAF2B5E8, &qword_19752EA40);
      }

LABEL_9:
      sub_1973FE58C(&v22, &qword_1EAF2AF20, &unk_19752F320);
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19743B4F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a2;
  v60 = *v2;
  v5 = *(v60 + 80);
  v63 = sub_197521F5C();
  v62 = *(v63 - 8);
  v6 = *(v62 + 8);
  v8 = MEMORY[0x1EEE9AC00](v63, v7);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v50 - v12;
  v14 = *(v5 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v11, v16);
  v61 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v52 = &v50 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v50 - v23;
  v25 = *(a1 + 24);
  v26 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v25);
  (*(v26 + 32))(&v64, v25, v26);
  LODWORD(v27) = BYTE8(v64);
  if (BYTE8(v64) == 255)
  {
    *&v64 = 0;
    *(&v64 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000038, 0x8000000197526EE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B220, &qword_19752D3B0);
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v28 = v64;
  swift_beginAccess();
  v29 = v2[4];
  *&v64 = v28;
  BYTE8(v64) = v27;
  sub_1974ADEAC(v28, v27);
  v30 = sub_197405108();

  v58 = v30;
  sub_19752167C();

  sub_1974028C8(v64, SBYTE8(v64));
  if ((*(v14 + 48))(v13, 1, v5) != 1)
  {
    goto LABEL_32;
  }

  v24 = v14;
  (*(v62 + 1))(v13, v63);
  sub_1973FFC48(a1, &v64);
  v14 = sub_197443758(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v32 = *(v14 + 16);
  v31 = *(v14 + 24);
  v33 = v32 + 1;
  v51 = v27;
  v50 = v28;
  if (v32 >= v31 >> 1)
  {
LABEL_35:
    v14 = sub_197443758((v31 > 1), v33, 1, v14);
  }

  *(v14 + 16) = v33;
  sub_197402778(&v64, v14 + 40 * v32 + 32);
  v71 = v14;
  v34 = *(a1 + 24);
  v13 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v34);
  (*(v13 + 4))(&v64, v34, v13);
  v57 = v64;
  LODWORD(v63) = BYTE8(v64);
  v27 = v61;
  if (!*(v14 + 16))
  {
LABEL_33:
    sub_1974A1014(v50, v51);
    sub_1974A1014(v57, v63);
  }

  v62 = v24 + 16;
  v56 = (v24 + 56);
  v55 = (v24 + 8);
  v54 = v3;
  while ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
  {
    v35 = *(v14 + 16);
    if (!v35)
    {
      goto LABEL_31;
    }

LABEL_9:
    *(v14 + 16) = v35 - 1;
    v71 = v14;
    sub_197402778((v14 + 40 * v35 - 8), v70);
    v69 = MEMORY[0x1E69E7CC8];
    sub_1973FFC48(v70, &v64);
    v36 = *(v60 + 88);
    (*(v36 + 32))(&v64, &v69, v5, v36);
    v37 = *(v36 + 24);
    v37(&v64, v5, v36);
    v38 = v64;
    v39 = BYTE8(v64);
    if (BYTE8(v64) == 255)
    {
      v28 = v57;
      if (v63 == 255)
      {
        sub_1974ADEAC(v57, 255);
        sub_1974A1014(v38, 255);
LABEL_18:
        (*v62)(v52, v27, v5);
        sub_197521AAC();
        sub_197521A7C();
        goto LABEL_19;
      }

      sub_1974ADEAC(v57, v63);
LABEL_16:
      sub_1974A1014(v38, v39);
      sub_1974A1014(v28, v63);
      goto LABEL_19;
    }

    v40 = v63;
    v28 = v57;
    if (v63 == 255)
    {
      sub_1974ADEAC(v57, 255);
      sub_1974ADEAC(v38, v39);
      sub_1974028C8(v38, v39);
      v3 = v54;
      goto LABEL_16;
    }

    sub_1974ADEAC(v57, v63);
    sub_1974028EC(v38, v39);
    sub_1974ADEAC(v38, v39);
    sub_1974028EC(v38, v39);
    v41 = sub_19742291C(v38, v39, v28, v40);
    sub_1974028C8(v38, v39);
    sub_1974A1014(v28, v40);
    sub_1974028C8(v38, v39);
    sub_1974028C8(v38, v39);
    sub_1974A1014(v38, v39);
    v3 = v54;
    if (v41)
    {
      goto LABEL_18;
    }

LABEL_19:
    v37(&v67, v5, v36);
    v42 = v67;
    v14 = v68;
    a1 = v59;
    (*v62)(v59, v27, v5);
    (*v56)(a1, 0, 1, v5);
    v65[5] = v42;
    v66 = v14;
    swift_beginAccess();
    sub_19752166C();
    sub_19752168C();
    swift_endAccess();
    v33 = v69;
    v32 = v69 + 64;
    v43 = 1 << *(v69 + 32);
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v45 = v44 & *(v69 + 64);
    v13 = ((v43 + 63) >> 6);
    swift_bridgeObjectRetain_n();
    v24 = 0;
    if (v45)
    {
      while (1)
      {
        v31 = v24;
LABEL_28:
        v46 = __clz(__rbit64(v45));
        v45 &= v45 - 1;
        v47 = v46 | (v31 << 6);
        v48 = *(v33 + 48) + 16 * v47;
        v14 = *v48;
        a1 = *(v48 + 8);
        v28 = &v64;
        sub_1973FFC48(*(v33 + 56) + 40 * v47, v65);
        *&v64 = v14;
        BYTE8(v64) = a1;
        sub_1974028EC(v14, a1);
        sub_1974BF168(&v64, v65, v3, &v71);
        sub_1974050A8(&v64, &qword_1EAF2B8D0, &qword_19752FB90);
        if (!v45)
        {
          goto LABEL_24;
        }
      }
    }

    while (1)
    {
LABEL_24:
      v31 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v31 >= v13)
      {
        break;
      }

      v45 = *(v32 + 8 * v31);
      ++v24;
      if (v45)
      {
        v24 = v31;
        goto LABEL_28;
      }
    }

    v27 = v61;
    (*v55)(v61, v5);

    __swift_destroy_boxed_opaque_existential_0Tm(v70);

    v14 = v71;
    if (!v71[2])
    {
      goto LABEL_33;
    }
  }

  v14 = sub_19751C2C4(v14);
  v35 = *(v14 + 16);
  if (v35)
  {
    goto LABEL_9;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  (*(v14 + 32))(v24, v13, v5);
  (*(v14 + 16))(v52, v24, v5);
  sub_197521AAC();
  sub_197521A7C();
  sub_1974A1014(v28, v27);
  return (*(v14 + 8))(v24, v5);
}

uint64_t sub_19743BEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v16[3] = a3;
  v16[4] = a4;
  boxed_opaque_existential_1Tm_0 = __swift_allocate_boxed_opaque_existential_1Tm_0(v16);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm_0, a1, a3);
  v11 = sub_1974440A0(boxed_opaque_existential_1Tm_0, a2, a3, a4);
  v13 = v12;
  ObjectType = swift_getObjectType();
  sub_1974437D4(ObjectType, v11, v13, a2, v16, ObjectType, v13, a5);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

uint64_t sub_19743BFB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *v3;
  v8 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v51 - v13;
  if (*(v3 + 48) != 1)
  {
LABEL_29:
    v42 = v4[2];
    v43 = *(v42 + 24);
    v44 = *(v43 + 16);

    if (!v44 || (v45 = sub_1973F7814(a1), (v46 & 1) == 0))
    {
      v68 = 0u;
      v69 = 0u;
      goto LABEL_35;
    }

    v47 = *(*(v43 + 56) + 8 * v45);
    swift_beginAccess();
    if ((v47 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v48 = *(v42 + 32);
      if (v47 < *(v48 + 16))
      {
        sub_197413B20(v48 + 32 * v47 + 32, &v68);
LABEL_35:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
        return swift_dynamicCast();
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v54 = v12;
  v55 = v11;
  v56 = v10;
  v57 = a3;
  v15 = *(sub_197512E44() + 16);

  if (!v15)
  {
LABEL_42:
    *&v68 = 0;
    *(&v68 + 1) = 0xE000000000000000;
    sub_1975221EC();

    *&v68 = 0xD000000000000017;
    *(&v68 + 1) = 0x800000019752B400;
    sub_197433F28(&v58);
    v73[0] = v58;
    LOBYTE(v73[1]) = BYTE8(v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
    v49 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v49);

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

    sub_197413B20(v22 + 32 * v21 + 32, v73);
  }

  else
  {
    memset(v73, 0, 32);
  }

  sub_197413B20(v73, &v58);
  if (!*(&v59 + 1))
  {
    sub_1973FE5EC(&v58, &qword_1EAF2AF20, &unk_19752F320);
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    goto LABEL_15;
  }

  if (!v68)
  {
LABEL_15:
    sub_1973FE5EC(&v68, &qword_1EAF2B5F8, &qword_19752EA50);
    sub_197413B20(v73, &v68);
    if (*(&v69 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
      if (swift_dynamicCast())
      {
        v23 = v58;
        v24 = v56;
        sub_19744CC48(v58, v15, v8);
        v25 = v4[2];
        *(&v69 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
        v26 = swift_allocObject();
        *&v68 = v26;
        v26[2] = v23;
        v26[6] = v8;
        v26[7] = v24;
        boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v26 + 3);
        v28 = v55;
        (*(v55 + 16))(boxed_opaque_existential_1Tm_1, v14, v8);
        v26[8] = 1;
        v26[9] = 0;
        v26[10] = 0;
        v26[11] = 0;

        sub_1973FCF28(&v68, a1);

        sub_1973FE5EC(v73, &qword_1EAF2AF20, &unk_19752F320);
        return (*(v28 + 32))(v57, v14, v8);
      }
    }

    else
    {
      sub_1973FE5EC(&v68, &qword_1EAF2AF20, &unk_19752F320);
    }

    sub_197413B20(v73, &v65);
    if (v67)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4E0, &qword_197534B50);
      if (swift_dynamicCast())
      {
        if (*(&v59 + 1))
        {
          sub_19743099C(&v58, &v68);
          v30 = *(v4[5] + 16);
          if (!v30)
          {
            goto LABEL_44;
          }

          v31 = *(v4 + 32);
          v53 = v4[3];
          sub_1974ADEAC(v53, v31);
          v52 = v31;
          if (v31 != 255)
          {
            v32 = __swift_project_boxed_opaque_existential_1Tm_5(&v68, *(&v69 + 1));
            v33 = *v32;
            v34 = v32[1];
            v35 = *(v32 + 16);

            v36 = sub_197450578(v33, v34, v35, v53, v52);
            v37 = v56;
            sub_19744CC48(v36, v30, v8);
            v38 = v4[2];
            *(&v59 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
            v39 = swift_allocObject();
            *&v58 = v39;
            v39[2] = v36;
            v39[6] = v8;
            v39[7] = v37;
            v40 = __swift_allocate_boxed_opaque_existential_1Tm_1(v39 + 3);
            v41 = v55;
            (*(v55 + 16))(v40, v14, v8);
            v39[8] = 1;
            v39[9] = 0;
            v39[10] = 0;
            v39[11] = 0;

            sub_1973FCF28(&v58, a1);

            sub_1974A1014(v53, v52);

            sub_1973FE5EC(v73, &qword_1EAF2AF20, &unk_19752F320);
            (*(v41 + 32))(v57, v14, v8);
            return __swift_destroy_boxed_opaque_existential_1Tm_7(&v68);
          }

          *&v58 = 0;
          *(&v58 + 1) = 0xE000000000000000;

          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000060, 0x800000019752B420);
          v65 = v4;
          sub_1975227FC();
          while (1)
          {
LABEL_43:
            sub_1975223EC();
            __break(1u);
LABEL_44:
            *&v58 = 0;
            *(&v58 + 1) = 0xE000000000000000;
            sub_1975221EC();

            *&v58 = 0xD000000000000017;
            *(&v58 + 1) = 0x800000019752B400;
            sub_197433F28(&v65);
            v63 = v65;
            v64 = v66;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
            v50 = sub_1975217CC();
            MEMORY[0x19A8DFF80](v50);
          }
        }
      }

      else
      {
        *&v60 = 0;
        v58 = 0u;
        v59 = 0u;
      }

      sub_1973FE5EC(v73, &qword_1EAF2AF20, &unk_19752F320);
    }

    else
    {
      sub_1973FE5EC(v73, &qword_1EAF2AF20, &unk_19752F320);

      sub_1973FE5EC(&v65, &qword_1EAF2AF20, &unk_19752F320);
      v58 = 0u;
      v59 = 0u;
      *&v60 = 0;
    }

    sub_1973FE5EC(&v58, &qword_1EAF2C4E8, &qword_197534B58);
    goto LABEL_29;
  }

  sub_1973FE5EC(v73, &qword_1EAF2AF20, &unk_19752F320);

  v58 = v68;
  v59 = v69;
  v60 = v70;
  v61 = v71;
  v62 = v72;

  sub_1974416CC(v61);
  sub_19743099C((&v58 + 8), &v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B680, &unk_197534B40);
  return swift_dynamicCast();
}