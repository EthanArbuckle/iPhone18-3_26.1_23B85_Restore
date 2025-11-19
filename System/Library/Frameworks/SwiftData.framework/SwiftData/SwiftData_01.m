unint64_t sub_197403C30(void *a1, unsigned __int8 a2)
{
  v5 = *(v2 + 40);
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

  v6 = sub_197522A9C();

  return sub_1973FE8DC(a1, a2, v6);
}

_OWORD *sub_197403D34(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  v21 = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
  v22 = sub_1973FF3D4();
  v23 = sub_1973FF428();
  *&v19 = a4;
  *(&v19 + 1) = a5;
  v20 = a6;
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a7[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_1974028A0(&v19, (a7[7] + 48 * a1));
  v16 = a7[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v18;
  }

  return result;
}

void sub_197403E00(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v83 = a1;
  v72 = a6;
  Descriptor = type metadata accessor for FetchDescriptor();
  v12 = *(Descriptor - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](Descriptor, v14);
  v16 = v65 - v15;
  v17 = *(type metadata accessor for DataStoreFetchRequest() + 36);
  sub_1974076EC(a2 + v17, a3, a4, a5);
  if (!v6)
  {
    v77 = a3;
    v78 = v17;
    v66 = v12;
    v67 = Descriptor;
    v68 = a2;
    v69 = v16;
    v70 = a4;
    v71 = a5;
    v19 = v83;
    v20 = *(v83 + 24);
    v21 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFC8, &qword_19752C730);
    swift_initStackObject();
    v22 = v21;

    v23 = sub_197406C94(v21, v20);

    v24 = *(v19 + 16);
    sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
    v25 = v24;
    v26 = sub_197521E8C();
    v27 = v26;
    v65[0] = v22;
    if (v26 >> 62)
    {
      v28 = sub_1975220EC();
    }

    else
    {
      v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v78;
    v75 = v25;
    v65[1] = 0;
    if (v28)
    {
      if (v28 < 1)
      {
        __break(1u);
        return;
      }

      v30 = 0;
      v83 = v27 & 0xC000000000000001;
      v76 = MEMORY[0x1E69E7CC0];
      v73 = v28;
      v74 = v27;
      do
      {
        if (v83)
        {
          v31 = MEMORY[0x19A8E0960](v30, v27);
        }

        else
        {
          v31 = *(v27 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = MEMORY[0x19A8E1370](v31);
        if (([v32 isDeleted] & 1) == 0)
        {
          sub_197402910(v32, v25, v23, &v80);
          v34 = v80;
          v35 = v81;
          v36 = v82;
          if ([v32 isDeleted])
          {

            sub_1974028C8(v35, v36);
          }

          else
          {
            swift_beginAccess();
            sub_1974028EC(v35, v36);

            sub_1974028EC(v35, v36);
            v37 = v23[2];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v79 = v23[2];
            v23[2] = 0x8000000000000000;
            sub_197400CA8(v34, v35, v36, v35, v36, isUniquelyReferenced_nonNull_native);
            sub_1974028C8(v35, v36);
            v23[2] = v79;
            swift_endAccess();
            swift_beginAccess();
            v39 = sub_197400BC8(v35, v36);
            swift_endAccess();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v76 = sub_197400C8C(0, *(v76 + 2) + 1, 1, v76);
            }

            v41 = *(v76 + 2);
            v40 = *(v76 + 3);
            if (v41 >= v40 >> 1)
            {
              v76 = sub_197400C8C((v40 > 1), v41 + 1, 1, v76);
            }

            v42 = v76;
            *(v76 + 2) = v41 + 1;
            v43 = &v42[24 * v41];
            *(v43 + 4) = v34;
            *(v43 + 5) = v35;
            v43[48] = v36;
          }

          v29 = v78;
          v27 = v74;
          v25 = v75;
          v28 = v73;
        }

        ++v30;
        objc_autoreleasePoolPop(v33);
      }

      while (v28 != v30);
    }

    else
    {
      v76 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    for (i = v23[3]; *(i + 16); i = v23[3])
    {
      v45 = 0;
      v46 = (i + 64);
      v47 = 1 << *(i + 32);
      v48 = (v47 + 63) >> 6;
      while (1)
      {
        v50 = *v46++;
        v49 = v50;
        if (v50)
        {
          break;
        }

        v45 -= 64;
        if (!--v48)
        {
          goto LABEL_31;
        }
      }

      v47 = __clz(__rbit64(v49)) - v45;
LABEL_31:
      v51 = sub_197425424(&v80, v47, *(i + 36));
      v82 = v51;
      v52 = v80;
      v53 = v81;
      v54 = swift_endAccess();
      if (!v51)
      {
        goto LABEL_36;
      }

      v55 = MEMORY[0x19A8E1370](v54);
      if (([v51 isDeleted] & 1) == 0)
      {
        sub_197402910(v51, v25, v23, &v80);
        v57 = v80;
        v56 = v81;
        v58 = v82;
        if ([v51 isDeleted])
        {
        }

        else
        {
          swift_beginAccess();
          sub_1974028EC(v56, v58);

          sub_1974028EC(v56, v58);
          v59 = v23[2];
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v79 = v23[2];
          v23[2] = 0x8000000000000000;
          sub_197400CA8(v57, v56, v58, v56, v58, v60);
          sub_1974028C8(v56, v58);
          v23[2] = v79;
          swift_endAccess();
          swift_beginAccess();
          v61 = sub_197400BC8(v56, v58);
          swift_endAccess();
        }

        sub_1974028C8(v56, v58);
        v29 = v78;
        v25 = v75;
      }

      objc_autoreleasePoolPop(v55);
      sub_197425500(v52, v53, v51);
      swift_beginAccess();
    }

    swift_endAccess();
LABEL_36:

    v62 = v69;
    (*(v66 + 16))(v69, v68 + v29, v67);
    swift_beginAccess();
    v63 = v23[2];
    v64 = v76;

    sub_197406AAC();
    DataStoreFetchResult.init(descriptor:fetchedSnapshots:relatedSnapshots:)(v62, v64, v63, v72);
  }
}

_OWORD *sub_197404514(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  v35 = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
  v36 = sub_1973FF3D4();
  v37 = sub_1973FF428();
  *&v33 = a1;
  *(&v33 + 1) = a2;
  v34 = a3;
  v14 = *a7;
  v16 = sub_1973F4028(a4, a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a6 & 1) != 0)
  {
LABEL_7:
    v22 = *a7;
    if (v20)
    {
LABEL_8:
      v23 = (v22[7] + 48 * v16);
      __swift_destroy_boxed_opaque_existential_1Tm_2(v23);
      return sub_1974028A0(&v33, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a6 & 1) == 0)
  {
    sub_19747A934();
    goto LABEL_7;
  }

  sub_1973FF110(v19, a6 & 1);
  v25 = *a7;
  v26 = sub_1973F4028(a4, a5);
  if ((v20 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1975229CC();
    __break(1u);
    return result;
  }

  v16 = v26;
  v22 = *a7;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = __swift_mutable_project_boxed_opaque_existential_2(&v33, &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture);
  v29 = *(off_1F0BA5A48 + 8);
  MEMORY[0x1EEE9AC00](v28, v28);
  v31 = &v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31);
  sub_197403D34(v16, a4, a5, *v31, *(v31 + 1), v31[16], v22);

  return __swift_destroy_boxed_opaque_existential_1Tm_2(&v33);
}

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_197404790(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1974047F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_197404860(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1974048EC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  v18 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v20 = &v37 - v19;
  v21 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v37 - v27;
  v29 = sub_197521CAC();
  if (!v29)
  {
    return sub_197521A1C();
  }

  v51 = v29;
  v55 = sub_19752230C();
  v42 = sub_19752231C();
  sub_1975222BC();
  result = sub_197521C9C();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = sub_197521D2C();
      v33 = v20;
      v34 = v20;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      sub_1975222FC();
      result = sub_197521CBC();
      ++v31;
      v20 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_197404D0C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_19752135C();
  v5 = MEMORY[0x1E69695A8];
  sub_197404DE0(&qword_1ED7C9B68, MEMORY[0x1E69695A8]);
  v6 = sub_1975216AC();
  return sub_197404ED4(a1, v6, MEMORY[0x1E69695A8], &qword_1ED7C9B28, v5, MEMORY[0x1E69695C8]);
}

uint64_t sub_197404DE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_197404E28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_197404E70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditingState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_197404ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v23[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v23 - v12;
  v24 = v6;
  v14 = -1 << *(v6 + 32);
  v15 = a2 & ~v14;
  v23[0] = v6 + 64;
  if ((*(v6 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v13, *(v24 + 48) + v20 * v15, v8);
      sub_197404DE0(v25, v26);
      v21 = sub_19752173C();
      (*(v18 - 8))(v13, v8);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v23[0] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

uint64_t sub_1974050A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_197405108()
{
  result = qword_1ED7C93F8;
  if (!qword_1ED7C93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C93F8);
  }

  return result;
}

void sub_19740515C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v174 = a6;
  v179 = a3;
  v180 = a5;
  v193 = a7;
  v167 = sub_19752139C();
  v162 = sub_197521F5C();
  v155 = *(v162 - 8);
  v14 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v162, v15);
  v148 = v140 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v153 = *(AssociatedTypeWitness - 8);
  v18 = *(v153 + 64);
  v20 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v19);
  v172 = v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140[0] = v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v182 = v140 - v23;
  v181 = a10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v189 = a7;
  v190 = AssociatedTypeWitness;
  v191 = a9;
  v192 = AssociatedConformanceWitness;
  Result = type metadata accessor for DataStoreFetchResult();
  v150 = *(Result - 8);
  v25 = v150[8];
  v27 = MEMORY[0x1EEE9AC00](Result, v26);
  v161 = v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v176 = v140 - v30;
  v31 = type metadata accessor for EditingState();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v160 = v140 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for DataStoreFetchRequest();
  v173 = *(Request - 8);
  v35 = *(v173 + 64);
  v37 = MEMORY[0x1EEE9AC00](Request, v36);
  v168 = v140 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v39);
  v144 = v140 - v40;
  v41 = sub_197520C4C();
  v152 = sub_197521F5C();
  v151 = *(v152 - 8);
  v42 = *(v151 + 64);
  v44 = MEMORY[0x1EEE9AC00](v152, v43);
  v171 = (v140 - v45);
  v149 = v41;
  v46 = *(v41 - 8);
  v47 = *(v46 + 64);
  v49 = MEMORY[0x1EEE9AC00](v44, v48);
  v156 = v140 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v51);
  v164 = (v140 - v52);
  v177 = a9;
  v178 = a7;
  Descriptor = type metadata accessor for FetchDescriptor();
  v54 = *(Descriptor - 1);
  v55 = v54[8];
  v57 = MEMORY[0x1EEE9AC00](Descriptor, v56);
  v159 = v140 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v57, v59);
  v143 = v140 - v61;
  MEMORY[0x1EEE9AC00](v60, v62);
  v64 = v140 - v63;
  v189 = a2;
  v190 = v179;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  v179 = a8;
  swift_dynamicCast();
  v166 = v183;
  v188 = 0;
  LODWORD(a8) = *(a4 + Descriptor[15]);
  v65 = v54[2];
  v175 = a4;
  v158 = v54 + 2;
  v157 = v65;
  (v65)(v64, a4, Descriptor);
  v66 = 0;
  v169 = Descriptor;
  v163 = v64;
  if (a8 != 1)
  {
    goto LABEL_6;
  }

  if (*(v64 + Descriptor[12]) != 1)
  {
    v66 = 1;
    goto LABEL_6;
  }

  v67 = v54;
  v68 = *(v64 + Descriptor[9]);
  v189 = v68;
  v69 = v149;
  sub_197521AAC();
  swift_getWitnessTable();
  if (sub_197521D0C())
  {
LABEL_4:
    v66 = 1;
    Descriptor = v169;
    v64 = v163;
    v54 = v67;
    goto LABEL_6;
  }

  if (sub_197521A5C() != 1)
  {
    if (qword_1EAF2AD00 == -1)
    {
      goto LABEL_37;
    }

    goto LABEL_57;
  }

  v189 = v68;
  v113 = v171;
  sub_197521CFC();
  v114 = v46;
  if ((*(v46 + 48))(v113, 1, v69) == 1)
  {
    (*(v151 + 8))(v113, v152);
    goto LABEL_4;
  }

  v127 = *(v46 + 32);
  v128 = v164;
  v129 = v127(v164, v113, v69);
  MEMORY[0x1EEE9AC00](v129, v130);
  v136 = v178;
  v137 = v179;
  v138 = v177;
  v139 = v181;
  swift_getKeyPath();
  v89 = v149;
  sub_1974C1D0C();
  v131 = v156;
  sub_197520C5C();
  swift_getWitnessTable();
  v132 = sub_19752173C();
  v84 = *(v114 + 8);
  (v84)(v131, v89);
  Descriptor = v169;
  v64 = v163;
  if (v132)
  {
    (v84)(v128, v89);
    v66 = 1;
    v54 = v67;
  }

  else
  {
    if (qword_1EAF2AD00 != -1)
    {
      swift_once();
    }

    v133 = sub_19752157C();
    __swift_project_value_buffer(v133, qword_1EAF33E50);
    v100 = sub_19752155C();
    v134 = sub_197521DDC();
    if (os_log_type_enabled(v100, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&dword_1973F2000, v100, v134, "returnModelsAsFutures only works with a sort of \\.persistentModelID", v135, 2u);
      MEMORY[0x19A8E1B50](v135, -1, -1);

      (v84)(v164, v89);
    }

    else
    {
LABEL_54:

      (v84)(v164, v89);
    }

    v66 = 0;
    Descriptor = v169;
    v54 = v67;
  }

  while (1)
  {
LABEL_6:
    v156 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    LODWORD(v151) = 0;
    v152 = v181 + 80;
    v164 = (v173 + 8);
    v142 = (v150 + 4);
    v70 = v153;
    v173 = v153 + 16;
    v171 = (v153 + 32);
    v67 = (v153 + 8);
    v141 = v150 + 1;
    v140[1] = v181 + 96;
    v150 = v54 + 1;
    v146 = (v155 + 16);
    v145 = v167 - 8;
    v147 = (v155 + 8);
    v71 = v168;
    v155 = v153 + 8;
    if ((v66 & 1) == 0)
    {
      goto LABEL_14;
    }

    v72 = v143;
    v73 = v64;
    v74 = v157;
    (v157)(v143, v73, Descriptor);
    v72[Descriptor[12]] = 0;
    v75 = v160;
    sub_197404E70(&v156[v180], v160);
    v76 = v159;
    (v74)(v159, v72, Descriptor);
    v77 = v144;
    v78 = v75;
    v79 = v76;
    v81 = v177;
    v80 = v178;
    sub_197407438(v78, v79, v144);
    v82 = v170;
    v83 = (*(v181 + 96))(v77, v80, v81, v179);
    v84 = Descriptor;
    v85 = v82;
    if (v82)
    {
      break;
    }

    v120 = v83;
    v67 = *(v83 + 16);
    if (!v67)
    {
      AssociatedTypeWitness = v144;
LABEL_52:

      swift_unknownObjectRelease();
      (*v164)(AssociatedTypeWitness, Request);
      (*v150)(v143, v169);
LABEL_31:
      (*v150)(v163, v169);
      return;
    }

    v121 = 0;
    v122 = (v83 + 40);
    AssociatedTypeWitness = v144;
    while (v121 < *(v120 + 16))
    {
      v123 = *(v122 - 1);
      v124 = *v122;
      v125 = sub_1974028EC(v123, *v122);
      v126 = MEMORY[0x19A8E1370](v125);
      v138 = v181;
      sub_1974B9E14(v180, v123, v124, v175, v174 + 16, v178, v179, v177);
      v121 = (v121 + 1);
      objc_autoreleasePoolPop(v126);
      sub_1974028C8(v123, v124);
      v122 += 16;
      if (v67 == v121)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_57:
    swift_once();
LABEL_37:
    v115 = sub_19752157C();
    __swift_project_value_buffer(v115, qword_1EAF33E50);
    v116 = sub_19752155C();
    v117 = sub_197521DDC();
    v118 = os_log_type_enabled(v116, v117);
    v64 = v163;
    v54 = v67;
    if (v118)
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_1973F2000, v116, v117, "returnModelsAsFutures does not currently support sorting of modeled properties", v119, 2u);
      MEMORY[0x19A8E1B50](v119, -1, -1);
    }

    v66 = 0;
    Descriptor = v169;
  }

  (*v164)(v77, Request);
  (*v150)(v72, v84);
  while (1)
  {
    v86 = v167;
    v87 = v162;
    v187 = v85;
    v88 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
    if (!swift_dynamicCast())
    {
LABEL_32:
      swift_unknownObjectRelease();

      (*v150)(v163, v169);
      return;
    }

    v170 = 0;
    if (v186 == 2)
    {
      v84 = v169[9];
      v96 = v163;
      v97 = *(v163 + v84);
      if (sub_197521A5C() < 1)
      {
        v183 = 0;
        v184 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD00000000000007ALL, 0x8000000197527680);
        sub_1975227FC();
        MEMORY[0x19A8DFF80](10, 0xE100000000000000);
        v185 = v166;
        sub_1975227FC();
        LODWORD(v139) = 0;
        goto LABEL_61;
      }

      v98 = sub_197521A1C();

      *(v96 + v84) = v98;

      v64 = v96;
      LODWORD(v151) = 1;
      Descriptor = v169;
      v71 = v168;
      v67 = v155;
    }

    else
    {
      if (v186 != 1)
      {
        goto LABEL_32;
      }

      v89 = v148;
      v64 = v163;
      (*v146)(v148, v163, v87);
      v70 = v87;
      v90 = *(v86 - 8);
      if ((*(v90 + 48))(v89, 1, v86) == 1)
      {
        goto LABEL_59;
      }

      v91 = *v147;
      (*v147)(v89, v70);
      v188 = 1;
      v91(v64, v70);
      (*(v90 + 56))(v64, 1, 1, v86);

      v70 = v153;
      Descriptor = v169;
      v71 = v168;
      v67 = v155;
    }

LABEL_14:
    v92 = v160;
    sub_197404E70(&v156[v180], v160);
    v89 = v159;
    (v157)(v159, v64, Descriptor);
    v93 = v92;
    v84 = v177;
    v94 = v178;
    sub_197407438(v93, v89, v71);
    v95 = v170;
    (*(v181 + 80))(v71, v94, v84, v179);
    v85 = v95;
    if (!v95)
    {
      break;
    }

    (*v164)(v71, Request);
  }

  v84 = v176;
  v99 = Result;
  (*v142)(v176, v161, Result);
  v170 = swift_allocObject();
  *(v170 + 16) = MEMORY[0x1E69E7CC0];
  v100 = *(v84 + *(v99 + 52));

  if (!sub_197521A5C())
  {
LABEL_28:

    if (v151)
    {
      MEMORY[0x1EEE9AC00](v105, v106);
      v107 = v179;
      v140[-6] = v178;
      v140[-5] = v107;
      v136 = v177;
      v137 = v181;
      v138 = v175;
      swift_beginAccess();
      sub_197521AAC();
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_19752171C();
      v105 = swift_endAccess();
    }

    v182 = v140;
    v108 = Result;
    v109 = v176;
    v183 = *(v176 + *(Result + 56));
    MEMORY[0x1EEE9AC00](v105, v106);
    v110 = v179;
    v140[-8] = v178;
    v140[-7] = v110;
    v111 = v180;
    v112 = v181;
    v140[-6] = v177;
    v140[-5] = v112;
    v136 = v111;
    v137 = v170;
    v138 = v175;
    v139 = v109;
    sub_197405108();
    sub_19752166C();

    swift_getWitnessTable();
    sub_19752195C();

    swift_unknownObjectRelease();
    (*v164)(v168, Request);

    (*v141)(v109, v108);
    goto LABEL_31;
  }

  v101 = 0;
  while (1)
  {
    v64 = sub_197521A3C();
    sub_1975219EC();
    if (v64)
    {
      (*(v70 + 16))(v182, v100 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v101, AssociatedTypeWitness);
      v84 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        goto LABEL_53;
      }

      goto LABEL_22;
    }

    v104 = sub_19752222C();
    if (v140[0] != 8)
    {
      break;
    }

    v183 = v104;
    v64 = v104;
    (*v173)(v182, &v183, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    v84 = v101 + 1;
    if (__OFADD__(v101, 1))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_22:
    v89 = v172;
    v102 = (*v171)(v172, v182, AssociatedTypeWitness);
    v103 = MEMORY[0x19A8E1370](v102);
    sub_1974BA1A4(v180, v89, v175, v176, &v188, v174 + 16, v178, v179, v177, v181, &v183);
    v85 = 0;
    objc_autoreleasePoolPop(v103);
    (*v67)(v89, AssociatedTypeWitness);
    ++v101;
    if (v84 == sub_197521A5C())
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_59:
  (*v147)(v89, v70);
  v183 = 0;
  v184 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000007FLL, 0x8000000197527130);
  sub_1975227FC();
  MEMORY[0x19A8DFF80](10, 0xE100000000000000);
  v185 = v166;
  sub_1975227FC();
  LODWORD(v139) = 0;
LABEL_61:
  sub_1975223EC();
  __break(1u);
  objc_autoreleasePoolPop(v84);
  __break(1u);
  swift_endAccess();

  __break(1u);
}

uint64_t sub_1974068A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  result = PersistentModel.persistentModelID.getter(*(a2 + a3 - 32), *(a2 + a3 - 16), &v8);
  v7 = v9;
  *a4 = v8;
  *(a4 + 8) = v7;
  return result;
}

__n128 sub_197406900(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void DefaultStore.fetch<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v7[6] = a2;
  v7[7] = &type metadata for DefaultSnapshot;
  v7[8] = a3;
  v7[9] = sub_197406AAC();
  Result = type metadata accessor for DataStoreFetchResult();
  sub_197406BD8(a1, sub_197406C74, v7, Result, a4);
}

uint64_t sub_1974069EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 32);
  result = type metadata accessor for FetchDescriptor();
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_197406AAC()
{
  result = qword_1ED7C9400;
  if (!qword_1ED7C9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C9400);
  }

  return result;
}

uint64_t sub_197406B14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = *(a4 + 16);
  sub_19752139C();
  result = sub_197521F5C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    return (*(v9 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 36)) = (a2 - 1);
  return result;
}

void sub_197406BD8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = MEMORY[0x19A8E1370]();
  sub_197464510(a1, v5, a2, a3, a4, &v12, a5);
  objc_autoreleasePoolPop(v11);
}

void *sub_197406C94(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = MEMORY[0x1E69E7CC8];
  v2[2] = MEMORY[0x1E69E7CC8];
  v2[3] = v4;
  v2[5] = a2;
  v30 = MEMORY[0x1E69E7CD0];
  if (!a1)
  {

LABEL_12:
    v24 = MEMORY[0x1E69E7CD0];
    goto LABEL_13;
  }

  v6 = [a1 relationshipKeyPathsForPrefetching];
  if (!v6)
  {

    goto LABEL_12;
  }

  v7 = v6;
  v8 = sub_1975219CC();

  v11 = *(v8 + 16);
  if (!v11)
  {

    goto LABEL_12;
  }

  v27 = a1;
  v28 = v3;
  v26[5] = v8;
  v12 = (v8 + 40);
  do
  {
    v13 = *(v12 - 1);
    v14 = *v12;
    v29[0] = 46;
    v29[1] = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v9, v10);
    v26[2] = v29;

    v16 = sub_197412C34(0x7FFFFFFFFFFFFFFFLL, 1, sub_197412FF4, v26, v13, v14, v15);
    if (v16[2])
    {
      v17 = v16[4];
      v18 = v16[5];
      v19 = v16[6];
      v20 = v16[7];

      v21 = MEMORY[0x19A8DFF20](v17, v18, v19, v20);
      v23 = v22;

      sub_197414EA0(v29, v21, v23);
    }

    v12 += 2;
    --v11;
  }

  while (v11);

  v24 = v30;
  v3 = v28;
LABEL_13:
  v3[4] = v24;
  return v3;
}

uint64_t sub_197406E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_197407130();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1975215CC();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;
  v11 = v3;
  v12 = v8;
  sub_1974072C4(sub_197407CF0, v10, a2, a3);
  if (v4)
  {
  }

  else if ((*(a1 + *(type metadata accessor for FetchDescriptor() + 48)) & 1) != 0 && *(v3 + 48) == 1)
  {
    swift_beginAccess();
    v3 = sub_1974BBF60(a1, *(v8 + 16), a2, a3);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v8 + 16);
  }

  return v3;
}

uint64_t sub_19740702C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v8 = *((*(a3 + 48))(ObjectType, a3) + 72);

  v9 = sub_1973F7AAC();
  if (*(v8 + 16))
  {
    sub_1973F4028(v9, v10);
    v12 = v11;

    if (v12)
    {
      return a4(a2, a3);
    }
  }

  else
  {
  }

  return result;
}

void sub_197407130()
{
  if (*(v0 + 62) == 1 && !_SD_is_mainqueue_context())
  {
    if (qword_1EAF2ACC0 != -1)
    {
      swift_once();
    }

    v1 = sub_19752157C();
    __swift_project_value_buffer(v1, qword_1EAF33DE8);

    v2 = sub_19752155C();
    v3 = sub_197521DDC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      type metadata accessor for ModelContext(0);

      v6 = sub_1975217CC();
      v8 = sub_197462310(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_1973F2000, v2, v3, "%s: Unbinding from the main queue. This context was instantiated on the main queue but is being used off it. ModelContexts are not Sendable, consider using a ModelActor.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v5);
      MEMORY[0x19A8E1B50](v5, -1, -1);
      MEMORY[0x19A8E1B50](v4, -1, -1);
    }

    sub_1974B033C();
  }
}

uint64_t sub_1974072C4(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  if (*(v4 + 16))
  {
    v7 = *(v4 + 16);
  }

  else
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      goto LABEL_13;
    }

    v7 = result;
  }

  swift_beginAccess();
  v9 = *(v7 + 48);

  v10 = *(v9 + 16);
  if (!v10)
  {
  }

  v11 = 0;
  v12 = v9 + 32;
  while (v11 < *(v9 + 16))
  {
    sub_1974047F8(v12, v13, &qword_1EAF2AF38, &qword_19752C6A8);
    sub_19740702C(v13, v14, v15, a1);
    if (v5)
    {

      return sub_1974050A8(v13, &qword_1EAF2AF38, &qword_19752C6A8);
    }

    ++v11;
    result = sub_1974050A8(v13, &qword_1EAF2AF38, &qword_19752C6A8);
    v12 += 56;
    if (v10 == v11)
    {
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_197407438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1974074E0(a1, a3);
  v5 = *(type metadata accessor for DataStoreFetchRequest() + 36);
  Descriptor = type metadata accessor for FetchDescriptor();
  v7 = *(*(Descriptor - 8) + 32);

  return v7(a3 + v5, a2, Descriptor);
}

uint64_t sub_1974074E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditingState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FetchDescriptor.init(predicate:sortBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_19752139C();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  Descriptor = type metadata accessor for FetchDescriptor();
  v8 = a3 + Descriptor[10];
  v9 = a3 + Descriptor[11];
  *(a3 + Descriptor[16]) = 0;
  v10 = sub_197521F5C();
  v11 = *(v10 - 8);
  (*(v11 + 24))(a3, a1, v10);
  *(a3 + Descriptor[9]) = a2;
  *v8 = 0;
  *(v8 + 8) = 1;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(a3 + Descriptor[12]) = 1;
  sub_19752228C();
  *(a3 + Descriptor[13]) = sub_197521A1C();
  v12 = sub_197521A1C();
  result = (*(v11 + 8))(a1, v10);
  *(a3 + Descriptor[14]) = v12;
  *(a3 + Descriptor[15]) = 0;
  return result;
}

void sub_1974076EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = MEMORY[0x19A8E1370]();
  sub_1974DD97C(a1, a2, a3, a4, &v9, &v10);
  objc_autoreleasePoolPop(v8);
}

unint64_t sub_197407784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF90, &qword_19752C700);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v25 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B320, &qword_19752D4C8);
    v9 = sub_19752245C();
    v10 = &v7[*(v2 + 48)];
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1974047F8(v11, v7, &qword_1EAF2AF90, &qword_19752C700);
      result = sub_1974079DC(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_197520DAC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = (v9[7] + (v15 << 6));
      v19 = *v10;
      v20 = *(v10 + 1);
      v21 = *(v10 + 3);
      v18[2] = *(v10 + 2);
      v18[3] = v21;
      *v18 = v19;
      v18[1] = v20;
      v22 = v9[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_10;
      }

      v9[2] = v24;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_19740797C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1974079DC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_197520DAC();
  v5 = MEMORY[0x1E6968B10];
  sub_197404DE0(qword_1ED7C9228, MEMORY[0x1E6968B10]);
  v6 = sub_1975216AC();
  return sub_197404ED4(a1, v6, MEMORY[0x1E6968B10], &qword_1ED7C9220, v5, MEMORY[0x1E6968B20]);
}

void sub_197407AB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = MEMORY[0x19A8E1370]();
  sub_1974DF2EC(v4, a1, a2, a3, &v9, &v10);
  objc_autoreleasePoolPop(v8);
}

void sub_197407B4C(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t), uint64_t a6)
{
  v13 = MEMORY[0x19A8E1370]();
  v14 = a2[5];
  v15 = a2[6];
  sub_1974E5F50(v6, a1, a2[2], a2[3], a2[4], &v17, &v16, a3, a4, a5, a6);
  objc_autoreleasePoolPop(v13);
}

void sub_197407C0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_197407AB0(a1, a2, a3);
  if (!v3 && (v5 & 1) == 0)
  {
    v6 = v4;
    v7 = sub_1975229AC();
    v8 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v6 rightExpression:v8 modifier:0 type:4 options:0];
  }
}

uint64_t get_enum_tag_for_layout_string_9SwiftData19KeyPathParserResultVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_197407CF0(void *a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  ObjectType = swift_getObjectType();
  sub_19740515C(ObjectType, a1, a2, v7, v8, v9, v5, ObjectType, v6, a2);
}

void sub_197407D70(uint64_t *a1, uint64_t a2)
{
  v4 = MEMORY[0x19A8E1370]();
  sub_1974E11C0(a1, *(a2 + 16), &v6, &v5);
  objc_autoreleasePoolPop(v4);
}

void sub_197407E40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = MEMORY[0x19A8E1370]();
  v12 = a4[3];
  sub_1974E1428(v5, a1, a2, a3, a4[2], a4[4], &v13, a5);
  objc_autoreleasePoolPop(v11);
}

void sub_197407EE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_197407AB0(a1, a2, a3);
  v6 = v5;
  if (!v3 && (v4 & 1) != 0)
  {
    sub_1974DEF98();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_197408030(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1974080DC(uint64_t a1)
{
  result = sub_197408100(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

unint64_t sub_197408100(uint64_t a1)
{
  v2 = sub_197520DAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_19752118C();
  v9 = *(a1 + 8);
  if (*(v9 + 16))
  {
    result = sub_1974079DC(v7);
    if (v10)
    {
      sub_197408378(*(v9 + 56) + (result << 6), v12);
      (*(v3 + 8))(v7, v2);
      v11 = v12[0];
      sub_197407F9C(v12);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_197408234@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_197520DAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_19752118C();
  if (*(a1 + 16))
  {
    result = sub_1974079DC(v9);
    if (v11)
    {
      sub_197408378(*(a1 + 56) + (result << 6), v12);
      (*(v5 + 8))(v9, v4);
      sub_197408478(&v13, a2, &qword_1EAF2BBD8, &qword_1975319B0);
      return sub_197407F9C(v12);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1974083D4@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t type metadata accessor for DefaultHistoryTransaction()
{
  result = qword_1ED7C9210;
  if (!qword_1ED7C9210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_197408478(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1974084E0(uint64_t a1, char *a2, char *a3)
{
  v7 = MEMORY[0x19A8E1370]();
  sub_1974DD830(a1, a2, a3, &v8);
  objc_autoreleasePoolPop(v7);
  if (v3)
  {
    __break(1u);
  }
}

uint64_t sub_197408568(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

_UNKNOWN **sub_1974085B0(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v272) = a2;
  v273 = a1;
  v287 = *MEMORY[0x1E69E9840];
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF40, &unk_19752C6B0);
  v4 = *(*(v278 - 8) + 64);
  MEMORY[0x1EEE9AC00](v278, v5);
  v277 = &v247 - v6;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  v7 = *(*(v270 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v270, v8);
  v265 = &v247 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v267 = &v247 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v266 = &v247 - v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v269 = (&v247 - v18);
  v258 = sub_197521DFC();
  v257 = *(v258 - 1);
  v19 = *(v257 + 64);
  MEMORY[0x1EEE9AC00](v258, v20);
  v256 = &v247 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = sub_1975212CC();
  v280 = *(v282 - 8);
  v22 = *(v280 + 64);
  v24 = MEMORY[0x1EEE9AC00](v282, v23);
  v262 = &v247 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v260 = &v247 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v268 = &v247 - v31;
  MEMORY[0x1EEE9AC00](v30, v32);
  v279 = &v247 - v33;
  v34 = type metadata accessor for ModelConfiguration();
  v35 = *(*(v34 - 1) + 64);
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v247 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_19752157C();
  v40 = *(v39 - 1);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39, v42);
  v44 = &v247 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED7C9848 != -1)
  {
    goto LABEL_138;
  }

  while (1)
  {
    v45 = __swift_project_value_buffer(v39, qword_1ED7CE648);
    v263 = v40;
    v46 = *(v40 + 16);
    v274 = v44;
    v46(v44, v45, v39);
    v255 = OBJC_IVAR____TtC9SwiftData12DefaultStore_container;
    v47 = *(v3 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container);
    v48 = v3 + OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration;
    v49 = (v3 + OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration + *(v34 + 5));
    v50 = *v49;
    v51 = v49[1];
    v52 = objc_allocWithZone(MEMORY[0x1E695D6C8]);
    v275 = v47;
    v53 = sub_19752124C();
    v54 = [v52 initWithURL_];

    v55 = v54;
    v56 = sub_19752178C();
    [v55 setConfiguration_];

    v281 = v34;
    v57 = (v48 + *(v34 + 7));
    if (v57[1])
    {
      v58 = *v57;
      v59 = objc_allocWithZone(MEMORY[0x1E695D680]);
      v60 = sub_19752178C();
      v61 = [v59 initWithContainerIdentifier_];

      [v55 setCloudKitContainerOptions_];
    }

    v62 = *(v3 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationPlan);
    if (v62)
    {
      break;
    }

    v69 = v273;
LABEL_8:
    v70 = [v69 entities];
    v250 = sub_1973F3D34(0, &qword_1ED7C9BA0, 0x1E695D5B8);
    v71 = sub_1975219CC();

    if (!(v71 >> 62))
    {
      v261 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_10;
    }

    while (1)
    {
      v261 = sub_1975220EC();
LABEL_10:
      v253 = v39;
      v276 = v3;
      v254 = v48;
      v271 = v55;
      if (!v261)
      {
        goto LABEL_32;
      }

      v72 = 0;
      v251 = OBJC_IVAR____TtC9SwiftData12DefaultStore_hasSpotlight;
      v73 = v71 & 0xC000000000000001;
      v248 = v71 & 0xFFFFFFFFFFFFFF8;
      v247 = v71 + 32;
      v74 = &off_1E74AD000;
      v39 = &off_1E74AD000;
      v252 = v71;
      v249 = v71 & 0xC000000000000001;
LABEL_12:
      if (v73)
      {
        v75 = MEMORY[0x19A8E0960](v72, v71);
      }

      else
      {
        if (v72 >= *(v248 + 16))
        {
          __break(1u);
          goto LABEL_144;
        }

        v75 = *(v247 + 8 * v72);
      }

      v71 = v75;
      if (!__OFADD__(v72++, 1))
      {
        break;
      }

      __break(1u);
    }

    v77 = [v75 v74[379]];
    sub_1973F3D34(0, &qword_1ED7C9B98, 0x1E695D6D8);
    v40 = sub_1975219CC();

    v259 = v71;
    v34 = (v40 & 0xFFFFFFFFFFFFFF8);
    if (v40 >> 62)
    {
      v78 = sub_1975220EC();
    }

    else
    {
      v78 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = 0;
    v38 = v40 & 0xC000000000000001;
    while (1)
    {
      if (v78 == v44)
      {

        v3 = v276;
        v69 = v273;
        v48 = v254;
        v55 = v271;
        v71 = v252;
        if (*(v276 + v251))
        {
          goto LABEL_32;
        }

        v73 = v249;
        v74 = &off_1E74AD000;
        if (v72 == v261)
        {
          goto LABEL_32;
        }

        goto LABEL_12;
      }

      if (v38)
      {
        v79 = MEMORY[0x19A8E0960](v44, v40);
      }

      else
      {
        if (v44 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_135;
        }

        v79 = *(v40 + 8 * v44 + 32);
      }

      v80 = v79;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      v3 = [v79 isIndexedBySpotlight];

      ++v44;
      if (v3)
      {

        v3 = v276;
        *(v276 + v251) = 1;
        v69 = v273;
        v48 = v254;
        v55 = v271;
LABEL_32:

        v39 = v275;
        v81 = [v275 persistentStoreCoordinator];
        v284 = 0;
        v82 = [v81 _removeAllPersistentStores_];

        v83 = v284;
        if (!v82)
        {
          goto LABEL_149;
        }

        v84 = v282;
        if (*(v3 + 41) == 1)
        {
          sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
          v85 = v83;
          v86 = sub_197521F1C();
          [v55 setOption:v86 forKey:*MEMORY[0x1E695D458]];
        }

        else
        {
          v93 = v284;
        }

        sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
        v94 = sub_197521F1C();
        [v55 setOption:v94 forKey:*MEMORY[0x1E695D3C0]];

        v83 = sub_197521F1C();
        [v55 setOption:v83 forKey:*MEMORY[0x1E695D430]];

        if (*(v48 + *(v281 + 13)) == 1)
        {
          v83 = sub_197521F1C();
          [v55 setOption:v83 forKey:*MEMORY[0x1E695D498]];
        }

        v95 = v276;
        if (*(v48 + *(v281 + 14)) != 1)
        {
          v48 = v280;
          goto LABEL_60;
        }

        v96 = [v55 URL];
        v48 = v280;
        if (!v96)
        {
          goto LABEL_148;
        }

        v97 = v96;
        v98 = v268;
        sub_19752127C();

        v99 = v279;
        (*(v48 + 32))(v279, v98, v84);
        v100 = objc_opt_self();
        v101 = [v100 defaultManager];
        sub_19752128C();
        v102 = sub_19752178C();

        LOBYTE(v98) = [v101 fileExistsAtPath_];

        if (v98)
        {
          (*(v48 + 8))(v99, v84);
        }

        else
        {
          LOWORD(v284) = 256;
          v285 = 0;
          v286 = 0;
          v103 = v260;
          sub_1974A18AC(v260, 0, &v284);

          v104 = *(v276 + 24);
          v284 = *(v276 + 16);
          v285 = v104;

          MEMORY[0x19A8DFF80](0x65726F74732ELL, 0xE600000000000000);
          sub_19752125C();

          sub_197413CBC(&qword_1ED7C9DC0, MEMORY[0x1E6968FB0]);
          if (sub_19752173C())
          {
            v105 = *(v48 + 8);
            v105(v103, v84);
            v105(v99, v84);
          }

          else
          {
            v121 = [v100 defaultManager];
            sub_19752128C();
            v122 = v103;
            v123 = sub_19752178C();

            v124 = [v121 fileExistsAtPath_];

            if (v124)
            {
              v125 = [v100 defaultManager];
              v126 = v262;
              sub_19752126C();
              sub_19752128C();
              v127 = v84;
              v128 = *(v48 + 8);
              v128(v126, v127);
              v129 = sub_19752178C();

              v130 = [v125 fileExistsAtPath_];

              v281 = v128;
              v268 = (v48 + 8);
              if ((v130 & 1) == 0)
              {
                v131 = [v100 defaultManager];
                sub_19752126C();
                sub_19752128C();
                v128(v126, v282);
                v132 = sub_19752178C();

                v284 = 0;
                v133 = [v131 createDirectoryAtPath:v132 withIntermediateDirectories:1 attributes:0 error:&v284];

                if (v133)
                {
                  v134 = v284;
                }

                else
                {
                  v227 = v284;
                  v228 = sub_1975211DC();

                  swift_willThrow();
                  v264 = 0;
                }
              }

              v39 = v275;
              v95 = v276;
              v55 = v271;
              v229 = v260;
              v230 = v258;
              v231 = v257;
              v232 = v256;
              v233 = [*(v276 + v255) persistentStoreCoordinator];
              sub_197521DEC();
              v234 = v264;
              sub_197521ECC();
              if (v234)
              {

                (*(v231 + 8))(v232, v230);
                v264 = 0;
              }

              else
              {
                v264 = 0;
                (*(v231 + 8))(v232, v230);
              }

              v235 = sub_19752155C();
              v236 = sub_197521DCC();
              v237 = os_log_type_enabled(v235, v236);
              v238 = v281;
              if (v237)
              {
                v239 = swift_slowAlloc();
                *v239 = 0;
                _os_log_impl(&dword_1973F2000, v235, v236, "Moved default store into new location", v239, 2u);
                v240 = v239;
                v95 = v276;
                MEMORY[0x19A8E1B50](v240, -1, -1);
              }

              v241 = v282;
              v238(v229, v282);
              v238(v279, v241);
              v48 = v280;
              v69 = v273;
LABEL_60:
              v136 = *(v95 + OBJC_IVAR____TtC9SwiftData12DefaultStore_storeDescription);
              *(v95 + OBJC_IVAR____TtC9SwiftData12DefaultStore_storeDescription) = v55;
              v137 = v55;

              v138 = [v39 persistentStoreDescriptions];
              sub_1973F3D34(0, &qword_1ED7C9B90, 0x1E695D6C8);
              v3 = sub_1975219CC();

              v284 = v3;
              MEMORY[0x19A8E00D0]();
              if (*((v284 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v284 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v3 = *((v284 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1975219FC();
              }

              sub_197521A4C();
              v139 = sub_1975219BC();

              [v39 setPersistentStoreDescriptions_];

              v140 = sub_19752155C();
              v141 = sub_197521DCC();

              v142 = os_log_type_enabled(v140, v141);
              v279 = v137;
              if (v142)
              {
                v143 = v69;
                v3 = swift_slowAlloc();
                v144 = swift_slowAlloc();
                v284 = v144;
                *v3 = 136315138;
                v145 = [v137 URL];
                if (v145)
                {
                  v146 = v145;
                  sub_19752127C();
                }

                (*(v48 + 56))();
                v147 = sub_1975217CC();
                v149 = sub_197462310(v147, v148, &v284);

                *(v3 + 4) = v149;
                v48 = v280;
                _os_log_impl(&dword_1973F2000, v140, v141, "Store URL - %s", v3, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v144);
                MEMORY[0x19A8E1B50](v144, -1, -1);
                MEMORY[0x19A8E1B50](v3, -1, -1);

                v69 = v143;
              }

              else
              {
              }

              if (v272)
              {
                goto LABEL_102;
              }

              v284 = 0;
              v150 = [v39 load_];
              v151 = v284;
              if (v150)
              {
                v152 = OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager;
                v153 = *(v276 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager);
                if (v153 && (type metadata accessor for DefaultMigrationManager(0), (v154 = swift_dynamicCastClass()) != 0))
                {
                  v155 = *(v154 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager);
                  *(v154 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager) = 0;
                  v156 = v151;

                  v157 = v276;
                  v153 = *(v276 + v152);
                }

                else
                {
                  v161 = v151;
                  v157 = v276;
                }

                *(v157 + v152) = 0;

                if (*(v157 + OBJC_IVAR____TtC9SwiftData12DefaultStore_hasSpotlight) == 1)
                {
                  v162 = v279;
                  v163 = [v39 persistentStoreCoordinator];
                  v164 = [objc_allocWithZone(type metadata accessor for SwiftDataSpotlightDelegate()) initForStoreWithDescription:v162 coordinator:v163];

                  [v164 startSpotlightIndexing];
                }

                v165 = [v39 persistentStoreCoordinator];
                v166 = [v165 persistentStores];

                sub_1973F3D34(0, &qword_1ED7C9BA8, 0x1E695D6B8);
                v3 = sub_1975219CC();

                if (!(v3 >> 62))
                {
                  v167 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_79:
                  v159 = v267;
                  v168 = v266;
                  if (v167)
                  {
                    if (v167 >= 1)
                    {
                      v169 = 0;
                      v259 = OBJC_IVAR____TtC9SwiftData12DefaultStore_store;
                      v270 = v3 & 0xC000000000000001;
                      v170 = (v48 + 56);
                      v171 = (v48 + 48);
                      v258 = (v48 + 32);
                      v261 = (v48 + 8);
                      v172 = &off_1E74AD000;
                      v173 = v279;
                      v272 = v3;
                      v271 = v167;
                      v269 = v170;
                      v268 = v171;
                      while (1)
                      {
                        if (v270)
                        {
                          v178 = MEMORY[0x19A8E0960](v169, v3);
                        }

                        else
                        {
                          v178 = *(v3 + 8 * v169 + 32);
                        }

                        v179 = v172[326];
                        v281 = v178;
                        v180 = [v178 v179];
                        if (v180)
                        {
                          v181 = v180;
                          sub_19752127C();

                          v182 = 0;
                        }

                        else
                        {
                          v182 = 1;
                        }

                        v183 = *v170;
                        v184 = 1;
                        (*v170)(v168, v182, 1, v282);
                        v185 = [v173 v172[326]];
                        v280 = v169;
                        if (v185)
                        {
                          v186 = v185;
                          sub_19752127C();

                          v184 = 0;
                        }

                        v187 = v282;
                        v183(v159, v184, 1, v282);
                        v188 = v277;
                        v189 = *(v278 + 48);
                        sub_1973FE0E4(v168, v277, &qword_1EAF2AE78, &qword_19752C290);
                        sub_1973FE0E4(v159, v188 + v189, &qword_1EAF2AE78, &qword_19752C290);
                        v190 = *v268;
                        if ((*v268)(v188, 1, v187) == 1)
                        {
                          sub_19740C044(v159, &qword_1EAF2AE78, &qword_19752C290);
                          sub_19740C044(v168, &qword_1EAF2AE78, &qword_19752C290);
                          v191 = v190(v188 + v189, 1, v187);
                          v3 = v272;
                          v173 = v279;
                          v192 = v280;
                          if (v191 != 1)
                          {
                            goto LABEL_97;
                          }

                          sub_19740C044(v188, &qword_1EAF2AE78, &qword_19752C290);
                          v174 = v276;
                          v175 = v271;
                          v170 = v269;
                        }

                        else
                        {
                          v193 = v265;
                          sub_1973FE0E4(v188, v265, &qword_1EAF2AE78, &qword_19752C290);
                          if (v190(v188 + v189, 1, v187) == 1)
                          {
                            v159 = v267;
                            sub_19740C044(v267, &qword_1EAF2AE78, &qword_19752C290);
                            v194 = v266;
                            sub_19740C044(v266, &qword_1EAF2AE78, &qword_19752C290);
                            v195 = v193;
                            v168 = v194;
                            (*v261)(v195, v187);
                            v173 = v279;
                            v192 = v280;
                            v3 = v272;
LABEL_97:
                            sub_19740C044(v188, &qword_1EAF2AF40, &unk_19752C6B0);
                            v175 = v271;
                            v170 = v269;
LABEL_98:
                            v176 = v281;
                            goto LABEL_83;
                          }

                          v196 = v262;
                          (*v258)(v262, v188 + v189, v187);
                          sub_197413CBC(&qword_1ED7C9DC0, MEMORY[0x1E6968FB0]);
                          LODWORD(v260) = sub_19752173C();
                          v197 = *v261;
                          (*v261)(v196, v187);
                          v159 = v267;
                          sub_19740C044(v267, &qword_1EAF2AE78, &qword_19752C290);
                          v198 = v266;
                          sub_19740C044(v266, &qword_1EAF2AE78, &qword_19752C290);
                          v199 = v193;
                          v168 = v198;
                          v197(v199, v187);
                          sub_19740C044(v188, &qword_1EAF2AE78, &qword_19752C290);
                          v174 = v276;
                          v173 = v279;
                          v192 = v280;
                          v3 = v272;
                          v175 = v271;
                          v170 = v269;
                          if ((v260 & 1) == 0)
                          {
                            goto LABEL_98;
                          }
                        }

                        v176 = *&v259[v174];
                        *&v259[v174] = v281;
LABEL_83:
                        v169 = v192 + 1;

                        v177 = v175 == v169;
                        v172 = &off_1E74AD000;
                        if (v177)
                        {
                          goto LABEL_101;
                        }
                      }
                    }

                    __break(1u);
LABEL_146:
                    swift_once();
LABEL_125:
                    v214 = &byte_1EAF2B7A0;
LABEL_126:
                    v222 = *v214;
                    v224 = *(v214 + 1);
                    v223 = *(v214 + 2);
                    sub_19744BE3C();
                    swift_allocError();
                    *v225 = v222;
                    *(v225 + 8) = v224;
                    *(v225 + 16) = v223;
                    swift_willThrow();

                    v226 = v275;

                    (v39[1])(v274, v48);
                    v39 = v226;
                    goto LABEL_113;
                  }

LABEL_101:

                  v69 = v273;
LABEL_102:
                  v200 = [v69 entities];
                  v38 = sub_1975219CC();

                  if (v38 >> 62)
                  {
                    v44 = sub_1975220EC();
                    if (v44)
                    {
LABEL_104:
                      v40 = 0;
                      v39 = (v38 & 0xFFFFFFFFFFFFFF8);
                      v34 = &off_1E74AD000;
                      while (1)
                      {
                        if ((v38 & 0xC000000000000001) != 0)
                        {
                          v201 = MEMORY[0x19A8E0960](v40, v38);
                        }

                        else
                        {
                          if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
                          {
                            goto LABEL_137;
                          }

                          v201 = *(v38 + 8 * v40 + 32);
                        }

                        v3 = v201;
                        v202 = v40 + 1;
                        if (__OFADD__(v40, 1))
                        {
                          goto LABEL_136;
                        }

                        v203 = [v201 name];
                        if (!v203)
                        {
                          break;
                        }

                        v204 = v203;

                        ++v40;
                        if (v202 == v44)
                        {
                          goto LABEL_112;
                        }
                      }

                      v284 = 0;
                      v285 = 0xE000000000000000;
                      sub_1975221EC();
                      MEMORY[0x19A8DFF80](0xD000000000000045, 0x80000001975242A0);
                      sub_197413CBC(&qword_1EAF2ACC8, MEMORY[0x1E6968FB0]);
                      v242 = sub_1975227DC();
                      MEMORY[0x19A8DFF80](v242);

                      MEMORY[0x19A8DFF80](2618, 0xE200000000000000);
                      v83 = [v3 description];
                      v243 = sub_1975217BC();
                      v245 = v244;

                      MEMORY[0x19A8DFF80](v243, v245);

                      while (1)
                      {
LABEL_148:
                        sub_1975223EC();
                        __break(1u);
LABEL_149:
                        v246 = v83;
                        v83 = sub_1975211DC();

                        swift_willThrow();
                        swift_unexpectedError();
                        __break(1u);
                      }
                    }
                  }

                  else
                  {
                    v44 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v44)
                    {
                      goto LABEL_104;
                    }
                  }

LABEL_112:

                  (*(v263 + 8))(v274, v253);
                  v39 = v275;
                  goto LABEL_113;
                }

LABEL_144:
                v167 = sub_1975220EC();
                goto LABEL_79;
              }

              v158 = v284;
              v159 = sub_1975211DC();

              swift_willThrow();
              v283 = v159;
              v160 = v159;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
              if (swift_dynamicCast())
              {

                swift_willThrow();

                (*(v263 + 8))(v274, v253);
                goto LABEL_113;
              }

              swift_getErrorValue();
              v207 = sub_1975229EC();
              v209 = v208;
              v210 = *MEMORY[0x1E696A250];
              v211 = sub_1975217BC();
              v48 = v253;
              v39 = v263;
              if (v207 == v211 && v209 == v212)
              {
              }

              else
              {
                v213 = sub_19752282C();

                if ((v213 & 1) == 0)
                {
                  goto LABEL_122;
                }
              }

              swift_getErrorValue();
              if (sub_1975229DC() == 134506)
              {
                if (qword_1EAF2AD78 != -1)
                {
                  swift_once();
                }

                v214 = &byte_1EAF2B7E8;
                goto LABEL_126;
              }

LABEL_122:
              v215 = v159;
              v216 = sub_19752155C();
              v217 = sub_197521DDC();

              if (os_log_type_enabled(v216, v217))
              {
                v218 = swift_slowAlloc();
                v219 = swift_slowAlloc();
                *v218 = 138412290;
                v220 = v159;
                v221 = _swift_stdlib_bridgeErrorToNSError();
                *(v218 + 4) = v221;
                *v219 = v221;
                _os_log_impl(&dword_1973F2000, v216, v217, "Unresolved error loading container %@", v218, 0xCu);
                sub_19740C044(v219, &qword_1EAF2AF48, &unk_19752FBB0);
                MEMORY[0x19A8E1B50](v219, -1, -1);
                MEMORY[0x19A8E1B50](v218, -1, -1);
              }

              if (qword_1EAF2AD60 == -1)
              {
                goto LABEL_125;
              }

              goto LABEL_146;
            }

            v135 = *(v48 + 8);
            v135(v122, v84);
            v135(v279, v84);
          }
        }

        v39 = v275;
        v95 = v276;
        v69 = v273;
        v55 = v271;
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    swift_once();
  }

  v63 = *(v3 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationPlan + 8);
  v64 = *(v3 + 32);
  sub_19740B324(v48, v38, type metadata accessor for ModelConfiguration);
  v65 = objc_allocWithZone(type metadata accessor for DefaultMigrationManager(0));

  v67 = v264;
  v68 = sub_19746D78C(v66, v62, v63, v38);
  if (v67)
  {
    (*(v263 + 8))(v274, v39);

    v39 = v275;
    goto LABEL_113;
  }

  v87 = *(v68 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_caughtError);
  v69 = v273;
  if (!v87)
  {
    v264 = 0;
    v106 = *(v3 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager);
    *(v3 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager) = v68;
    v107 = v68;

    [v55 setOption:v107 forKey:*MEMORY[0x1E695D440]];
    goto LABEL_8;
  }

  v88 = v68;
  v283 = *(v68 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_caughtError);
  v89 = v87;
  v90 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
  if (swift_dynamicCast())
  {

    swift_willThrow();

    v91 = v275;
    v92 = v39;
    v39 = v91;
    (*(v263 + 8))(v274, v92);
  }

  else
  {
    v108 = v87;
    v109 = sub_19752155C();
    v110 = sub_197521DDC();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *v111 = 138412290;
      v113 = v87;
      v114 = _swift_stdlib_bridgeErrorToNSError();
      *(v111 + 4) = v114;
      *v112 = v114;
      _os_log_impl(&dword_1973F2000, v109, v110, "Unresolved error loading container %@", v111, 0xCu);
      sub_19740C044(v112, &qword_1EAF2AF48, &unk_19752FBB0);
      MEMORY[0x19A8E1B50](v112, -1, -1);
      MEMORY[0x19A8E1B50](v111, -1, -1);
    }

    if (qword_1EAF2AD60 != -1)
    {
      swift_once();
    }

    v115 = byte_1EAF2B7A0;
    v117 = qword_1EAF2B7A8;
    v116 = unk_1EAF2B7B0;
    sub_19744BE3C();
    swift_allocError();
    *v118 = v115;
    *(v118 + 8) = v117;
    *(v118 + 16) = v116;
    swift_willThrow();

    v119 = v275;

    v120 = v39;
    v39 = v119;
    (*(v263 + 8))(v274, v120);
  }

LABEL_113:
  v205 = *MEMORY[0x1E69E9840];
  return v39;
}

int *sub_19740A694(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = v48 - v10;
  *(v4 + 40) = 0;
  v12 = OBJC_IVAR____TtC9SwiftData12DefaultStore_requestedStoreURL;
  v13 = sub_1975212CC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v51 = v12;
  v49 = v15;
  v15((v5 + v12), 1, 1, v13);
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_hasSpotlight) = 0;
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_model) = 0;
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_storeDescription) = 0;
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_store) = 0;
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_errorOnLoad) = 0;
  v50 = OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager;
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager) = 0;
  v16 = (v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationPlan);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore__managedObjectContextFactory);
  v18 = type metadata accessor for DefaultStore.DefaultManagedObjectContextFactory();
  v19 = swift_allocObject();
  v17[3] = v18;
  v17[4] = &off_1F0BA5A68;
  *v17 = v19;
  v20 = OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B000, &qword_19752C760);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v5 + v20) = v21;
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore__contextsByEditorIdentifier) = MEMORY[0x1E69E7CC8];
  result = type metadata accessor for ModelConfiguration();
  v23 = (a1 + result[5]);
  v24 = v23[1];
  *(v5 + 16) = *v23;
  *(v5 + 24) = v24;
  v25 = *(a1 + result[10]);
  if (!v25)
  {
    goto LABEL_18;
  }

  *(v5 + 32) = v25;
  *(v5 + 40) = *(a1 + result[12]);
  *(v5 + 41) = (*(a1 + result[11]) & 1) == 0;
  v26 = *(v14 + 16);
  v48[0] = a1;
  v26(v11, a1, v13);
  v49(v11, 0, 1, v13);
  v27 = v51;
  swift_beginAccess();

  sub_197420984(v11, v5 + v27, &qword_1EAF2AE78, &qword_19752C290);
  swift_endAccess();
  v28 = v53;
  *v16 = v52;
  v16[1] = v28;
  v29 = *(v5 + v50);
  *(v5 + v50) = 0;

  v30 = v54;
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) = v54;
  v31 = *(v5 + 32);
  v32 = v30;

  result = [v32 persistentStoreCoordinator];
  v33 = result;
  v34 = *(v31 + 64);
  if (v34 >> 62)
  {
    if (v34 < 0)
    {
      v38 = *(v31 + 64);
    }

    result = sub_1975220EC();
    v35 = result;
    if (!result)
    {
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v35)
  {
LABEL_4:
    if (v35 >= 1)
    {
      for (i = 0; i != v35; ++i)
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          MEMORY[0x19A8E0960](i, v34);
        }

        else
        {
          v37 = *(v34 + 8 * i + 32);
        }

        sub_19750E574();
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

LABEL_13:

  v39 = v48[0];
  v40 = sub_19740B324(v48[0], v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration, type metadata accessor for ModelConfiguration);
  v41 = MEMORY[0x19A8E1370](v40);
  v42 = [*(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) managedObjectModel];
  v43 = *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_model);
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_model) = v42;
  v44 = v42;

  v45 = v48[1];
  v46 = sub_1974085B0(v44, 0);
  if (v45)
  {

    objc_autoreleasePoolPop(v41);
    sub_19740AB48(v39, type metadata accessor for ModelConfiguration);
  }

  else
  {
    v47 = v46;

    objc_autoreleasePoolPop(v41);
    sub_19740C0A4();
    sub_19740AB48(v39, type metadata accessor for ModelConfiguration);
  }

  return v5;
}

uint64_t sub_19740AB48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19740ABA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v5 = type metadata accessor for ModelConfiguration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + *(v9 + 60)))
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFF8, &unk_19752D470);
  v12 = *(v6 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_19752C280;
  sub_19740B324(a1, v14 + v13, type metadata accessor for ModelConfiguration);

  v16 = sub_19741A1AC(v15, v14);
  swift_setDeallocating();
  sub_19740AB48(v14 + v13, type metadata accessor for ModelConfiguration);
  swift_deallocClassInstance();
  if (!v16)
  {
    __break(1u);
LABEL_8:
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000031, 0x8000000197524750);
    MEMORY[0x19A8DFF80](0x6E6F436C65646F4DLL, 0xEE0072656E696174);
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v17 = (a1 + *(v5 + 20));
  v18 = *v17;
  v19 = v17[1];
  if (*(a1 + *(v5 + 28) + 8))
  {
    v20 = 0x1E695D668;
  }

  else
  {
    v20 = 0x1E695D688;
  }

  v21 = objc_allocWithZone(*v20);
  v22 = sub_19752178C();
  v23 = [v21 initWithName:v22 managedObjectModel:v16];

  sub_1973F3D34(0, &qword_1ED7C9B90, 0x1E695D6C8);
  v24 = v23;
  v25 = sub_1975219BC();
  [v24 setPersistentStoreDescriptions_];

  sub_19740B324(a1, v11, type metadata accessor for ModelConfiguration);
  v26 = type metadata accessor for DefaultStore(0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_19740A694(v11, a2, v32, v24);

  sub_19740AB48(a1, type metadata accessor for ModelConfiguration);
  return v29;
}

uint64_t sub_19740AF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a4;
  v46 = a6;
  v47 = a3;
  v45 = a2;
  v50 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF30, &qword_19752C6A0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v12 = &v44 - v11;
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v10, v15);
  v44 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v44 - v19;
  v21 = type metadata accessor for ModelConfiguration();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v44 - v29;
  v31 = *(v13 + 16);
  v31(v20, v50, a5);
  v32 = swift_dynamicCast();
  v33 = *(v22 + 56);
  if (v32)
  {
    v33(v12, 0, 1, v21);
    sub_19740B38C(v12, v30);
    v34 = *(v21 + 60);
    v35 = *&v30[v34];
    v36 = v45;

    *&v30[v34] = v36;
    sub_19741598C(v30, v27);
    v37 = v49;
    v38 = sub_19740ABA8(v27, v47, v48);
    if (v37)
    {
      return sub_19740B2C8(v30);
    }

    else
    {
      v43 = v38;
      sub_197413D04(&qword_1ED7C9B80, type metadata accessor for DefaultStore);
      sub_19740B2C8(v30);
      return v43;
    }
  }

  else
  {
    v33(v12, 1, 1, v21);
    sub_1974454C0(v12, &qword_1EAF2AF30, &qword_19752C6A0);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v41 = v44;
    v31(v44, v50, a5);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return (*(AssociatedConformanceWitness + 64))(v41, v47, v48, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_19740B2C8(uint64_t a1)
{
  v2 = type metadata accessor for ModelConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19740B324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19740B38C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ModelContext.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_19740B6EC(a1);

  return v5;
}

uint64_t DefaultStore.initializeState(for:)(uint64_t a1)
{
  v3 = sub_19752135C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v8, a1, v3);
  v9 = *(v1 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container);
  v10 = objc_allocWithZone(MEMORY[0x1E695D628]);
  v11 = v9;
  v12 = [v10 initWithConcurrencyType_];
  v13 = [v11 persistentStoreCoordinator];
  [v12 setPersistentStoreCoordinator_];

  v14 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v12 setMergePolicy_];

  [v12 set:1 isSwiftBound:?];
  type metadata accessor for DefaultStore.EditingContext();
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  type metadata accessor for DefaultStore.FutureCache();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E7CC8];
  v16[2] = MEMORY[0x1E69E7CC8];
  v16[3] = v17;
  v16[4] = v17;
  v16[5] = v17;
  v16[6] = v17;
  v16[7] = v17;
  *(v15 + 24) = v16;
  v18 = *(v1 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v25 = v1;
  v26 = v8;
  v27 = v15;
  v22 = sub_19740D8F8;
  v23 = &v24;
  v19 = v12;

  os_unfair_lock_lock(v18 + 4);
  sub_19740D8D0();
  os_unfair_lock_unlock(v18 + 4);

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_19740B6EC(uint64_t a1)
{
  v3 = type metadata accessor for EditingState();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v53 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF30, &qword_19752C6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v51 = &v45 - v11;
  v52 = type metadata accessor for ModelConfiguration();
  v12 = *(v52 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v52, v14);
  v49 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  swift_weakInit();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 57) = 0;
  v16 = MEMORY[0x1E69E7CD0];
  *(v1 + 64) = 0;
  *(v1 + 72) = v16;
  *(v1 + 80) = v16;
  *(v1 + 88) = v16;
  *(v1 + 96) = v16;
  *(v1 + 104) = v16;
  *(v1 + 112) = v16;
  *(v1 + 120) = v16;
  *(v1 + 128) = v16;
  *(v1 + 136) = v16;
  v17 = MEMORY[0x1E69E7CC8];
  *(v1 + 144) = 0;
  *(v1 + 152) = v17;
  *(v1 + 160) = v17;
  *(v1 + 168) = v17;
  *(v1 + 176) = 0;
  *(v1 + 180) = 0;
  v18 = v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  *(v1 + 184) = 0;
  sub_19752134C();
  v19 = (v18 + *(v4 + 28));
  *v19 = 0;
  v19[1] = 0;
  *(v18 + *(v4 + 32)) = 0;
  *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_timer) = 0;
  *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_hasAutosaveObservers) = 0;
  *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_AUTOSAVE_MAX_TIME) = 0x4022000000000000;
  *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_contextChanged) = 0;
  *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = 0;
  *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext__allowTemporaryLookup) = 0;
  v46 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
  *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration) = v17;
  _SD_Initialize_framework();
  v20 = *(v1 + 16);
  *(v1 + 16) = a1;

  swift_beginAccess();
  v21 = *(a1 + 48);
  v22 = *(v21 + 16);
  if (v22)
  {
    v47 = *(a1 + 48);
    v48 = v1;
    *(v1 + 62) = 0;
    v23 = v21 + 32;

    swift_beginAccess();
    v54 = 0;
    v50 = (v12 + 56);
    do
    {
      sub_1974047F8(v23, v56, &qword_1EAF2AF38, &qword_19752C6A8);
      v27 = v56[6];
      ObjectType = swift_getObjectType();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v30 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v31);
      (*(v27 + 56))(ObjectType, v27);
      v32 = v51;
      v33 = v52;
      v34 = swift_dynamicCast();
      v35 = *v50;
      if (v34)
      {
        v35(v32, 0, 1, v33);
        v24 = v49;
        sub_19740B38C(v32, v49);
        v25 = *(v24 + *(v33 + 52));
        sub_19740BE74(v24, type metadata accessor for ModelConfiguration);
        v54 |= v25;
      }

      else
      {
        v35(v32, 1, 1, v33);
        sub_1974050A8(v32, &qword_1EAF2AF30, &qword_19752C6A0);
      }

      v26 = v53;
      sub_197404E70(v18, v53);
      (*(v27 + 112))(v26, ObjectType, v27);
      swift_unknownObjectRelease();
      sub_19740BE74(v26, type metadata accessor for EditingState);
      sub_197414BEC(v56);
      v23 += 56;
      --v22;
    }

    while (v22);

    if (qword_1ED7C9B60 != -1)
    {
      swift_once();
    }

    v36 = qword_1ED7CE668;
    v37 = unk_1ED7CE670;
    v38 = v48;
    if ((qword_1ED7CE668 != 0x65666E6969726973 || unk_1ED7CE670 != 0xEE006465636E6572) && (sub_19752282C() & 1) == 0 && (v36 != 0xD000000000000014 || 0x8000000197527D00 != v37) && (sub_19752282C() & 1) == 0 && _SD_is_mainqueue_context() | v54 & 1 && (*(v38 + 62) & 1) == 0)
    {
      v39 = v46;
      swift_beginAccess();
      *(v38 + v39) = 1;
      sub_19740E114();
      if ([objc_opt_self() isMainThread])
      {
        if (_CFRunLoopCurrentIsMain())
        {
          v40 = [objc_opt_self() mainRunLoop];
          v41 = swift_allocObject();
          swift_weakInit();

          v42 = sub_19745F87C(0xA0uLL, sub_1974C1DB4, v41);

          v43 = *(v38 + 32);
          *(v38 + 32) = v42;
        }
      }

      sub_19740E114();
      *(v38 + 62) = 1;
    }

    return v38;
  }

  else
  {
    v56[0] = 0;
    v56[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000029, 0x8000000197527CD0);
    v55 = a1;
    type metadata accessor for ModelContainer();
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19740BE14()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19740BE74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DefaultStore.identifier.getter()
{
  v1 = *v0;
  v2 = *(v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore_store);
  if (v2 && (v3 = [v2 identifier]) != 0)
  {
    v4 = v3;
    v5 = sub_1975217BC();

    return v5;
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000052, 0x80000001975239B0);
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19740C044(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_19740C0A4()
{
  v2 = v0;
  v112[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1975212CC();
  v110 = *(v3 - 8);
  v4 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v95 = v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF40, &unk_19752C6B0);
  v7 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105, v8);
  v10 = v92 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v16 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v106 = v92 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v107 = v92 - v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v98 = v92 - v24;
  v25 = OBJC_IVAR____TtC9SwiftData12DefaultStore_container;
  v108 = v2;
  v26 = [*(v2 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) persistentStoreCoordinator];
  v27 = [v26 persistentStores];

  sub_1973F3D34(0, &qword_1ED7C9BA8, 0x1E695D6B8);
  v28 = sub_1975219CC();

  if (v28 >> 62)
  {
    v29 = sub_1975220EC();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v29)
  {
    v97 = v16;
    v30 = v108;
    v31 = *(v108 + v25);
    v112[0] = 0;
    v32 = [v31 load_];
    v33 = v112[0];
    if (v32)
    {
      v92[1] = v1;
      v34 = OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager;
      v35 = *(v30 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager);
      if (v35)
      {
        type metadata accessor for DefaultMigrationManager(0);
        v36 = swift_dynamicCastClass();
        v37 = v106;
        if (v36)
        {
          v38 = *(v36 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager);
          *(v36 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager) = 0;
          v39 = v33;

          v40 = v108;
          v35 = *(v108 + v34);
        }

        else
        {
          v57 = v33;
          v40 = v108;
        }
      }

      else
      {
        v51 = v112[0];
        v40 = v108;
        v37 = v106;
      }

      *(v40 + v34) = 0;

      v44 = &unk_1ED7CE000;
      if (*(v40 + OBJC_IVAR____TtC9SwiftData12DefaultStore_hasSpotlight) == 1)
      {
        v58 = *(v40 + OBJC_IVAR____TtC9SwiftData12DefaultStore_storeDescription);
        if (v58)
        {
          v59 = *(v40 + v25);
          v60 = v58;
          v61 = [v59 persistentStoreCoordinator];
          v62 = [objc_allocWithZone(type metadata accessor for SwiftDataSpotlightDelegate()) initForStoreWithDescription:v60 coordinator:v61];

          [v62 startSpotlightIndexing];
          v44 = &unk_1ED7CE000;
          v40 = v108;
        }
      }

      v63 = [*(v40 + v25) persistentStoreCoordinator];
      v64 = [v63 persistentStores];

      v65 = sub_1975219CC();
      if (v65 >> 62)
      {
        v66 = sub_1975220EC();
        v67 = v98;
        if (v66)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v67 = v98;
        if (v66)
        {
LABEL_25:
          if (v66 >= 1)
          {
            v68 = 0;
            v101 = v65 & 0xC000000000000001;
            v102 = OBJC_IVAR____TtC9SwiftData12DefaultStore_storeDescription;
            v99 = (v110 + 48);
            v100 = (v110 + 56);
            v93 = (v110 + 32);
            v94 = OBJC_IVAR____TtC9SwiftData12DefaultStore_store;
            v96 = (v110 + 8);
            v103 = v66;
            v104 = v65;
            while (1)
            {
              v110 = v68;
              v70 = v101 ? MEMORY[0x19A8E0960](v68, v65) : *(v65 + 8 * v68 + 32);
              v109 = v70;
              v71 = [v70 URL];
              v72 = v100;
              if (v71)
              {
                v73 = v71;
                sub_19752127C();

                v74 = 0;
              }

              else
              {
                v74 = 1;
              }

              v75 = *v72;
              (*v72)(v67, v74, 1, v3);
              v76 = *(v108 + v102);
              if (v76)
              {
                v77 = [v76 URL];
                if (v77)
                {
                  v78 = v77;
                  sub_19752127C();

                  v79 = 0;
                }

                else
                {
                  v79 = 1;
                }

                v75(v37, v79, 1, v3);
                v81 = v107;
                sub_19746F6B4(v37, v107);
              }

              else
              {
                v80 = v107;
                v75(v107, 1, 1, v3);
                v81 = v80;
              }

              v82 = *(v105 + 48);
              sub_1973FE0E4(v67, v10, &qword_1EAF2AE78, &qword_19752C290);
              sub_1973FE0E4(v81, &v10[v82], &qword_1EAF2AE78, &qword_19752C290);
              v83 = v67;
              v84 = v81;
              v85 = *v99;
              if ((*v99)(v10, 1, v3) == 1)
              {
                break;
              }

              v87 = v97;
              sub_1973FE0E4(v10, v97, &qword_1EAF2AE78, &qword_19752C290);
              if (v85(&v10[v82], 1, v3) == 1)
              {
                sub_19740C044(v107, &qword_1EAF2AE78, &qword_19752C290);
                v67 = v98;
                sub_19740C044(v98, &qword_1EAF2AE78, &qword_19752C290);
                (*v96)(v87, v3);
                v37 = v106;
                v65 = v104;
LABEL_28:
                sub_19740C044(v10, &qword_1EAF2AF40, &unk_19752C6B0);
                goto LABEL_29;
              }

              v88 = v95;
              (*v93)(v95, &v10[v82], v3);
              sub_197413CBC(&qword_1ED7C9DC0, MEMORY[0x1E6968FB0]);
              v89 = sub_19752173C();
              v90 = *v96;
              (*v96)(v88, v3);
              sub_19740C044(v107, &qword_1EAF2AE78, &qword_19752C290);
              v67 = v98;
              sub_19740C044(v98, &qword_1EAF2AE78, &qword_19752C290);
              v90(v87, v3);
              sub_19740C044(v10, &qword_1EAF2AE78, &qword_19752C290);
              v37 = v106;
              v65 = v104;
              if (v89)
              {
                goto LABEL_48;
              }

LABEL_29:
              v69 = v109;
LABEL_30:
              v68 = v110 + 1;

              if (v103 == v68)
              {
                goto LABEL_51;
              }
            }

            sub_19740C044(v84, &qword_1EAF2AE78, &qword_19752C290);
            sub_19740C044(v83, &qword_1EAF2AE78, &qword_19752C290);
            v86 = v85(&v10[v82], 1, v3);
            v67 = v83;
            v37 = v106;
            v65 = v104;
            if (v86 == 1)
            {
              sub_19740C044(v10, &qword_1EAF2AE78, &qword_19752C290);
LABEL_48:
              v69 = *(v108 + v94);
              *(v108 + v94) = v109;
              goto LABEL_30;
            }

            goto LABEL_28;
          }

          __break(1u);
          goto LABEL_54;
        }
      }

LABEL_51:

      goto LABEL_52;
    }

    v41 = v112[0];
    v42 = sub_1975211DC();

    swift_willThrow();
    v112[0] = v42;
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
    sub_1973F3D34(0, &qword_1EAF2AEA0, 0x1E696ABC0);
    if (!swift_dynamicCast())
    {
LABEL_18:

      goto LABEL_52;
    }

    v44 = v111;
    v45 = [v111 domain];
    v46 = sub_1975217BC();
    v48 = v47;

    v49 = *MEMORY[0x1E696A250];
    if (v46 == sub_1975217BC() && v48 == v50)
    {
    }

    else
    {
      v52 = sub_19752282C();

      if ((v52 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    if ([v44 code] == 134506)
    {
      if (qword_1EAF2AD78 == -1)
      {
LABEL_16:
        v53 = byte_1EAF2B7E8;
        v55 = qword_1EAF2B7F0;
        v54 = unk_1EAF2B7F8;
        sub_19744BE3C();
        swift_allocError();
        *v56 = v53;
        *(v56 + 8) = v55;
        *(v56 + 16) = v54;
        swift_willThrow();

        goto LABEL_18;
      }

LABEL_54:
      swift_once();
      goto LABEL_16;
    }

LABEL_17:
    swift_willThrow();
    goto LABEL_18;
  }

LABEL_52:
  v91 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19740CAD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3F8, &qword_19752D5B8);
  v36 = a2;
  result = sub_19752243C();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      v26 = *(v8 + 40);
      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_19740CD8C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v17 = _swift_stdlib_malloc_size_4(v16);
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

uint64_t sub_19740CEC0()
{
  v1 = v0;
  if (qword_1ED7C9CD8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED7CE678;
  *&v25[0] = 0;
  v3 = *(qword_1ED7CE678 + 16);
  os_unfair_lock_lock(v3 + 4);
  sub_19740D350(v2, v25, v1);
  os_unfair_lock_unlock(v3 + 4);

  swift_beginAccess();
  v21 = v1;
  v4 = *(v1 + 48);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v27 = MEMORY[0x1E69E7CC0];

    sub_19740D630(0, v5, 0);
    v6 = v27;
    v7 = v4 + 32;
    do
    {
      sub_197404790(v7, v25, &qword_1EAF2AF38, &qword_19752C6A8);
      *&v24[16] = v26;
      v23[1] = v25[1];
      *v24 = v25[2];
      v22 = *&v24[8];
      v23[0] = v25[0];
      sub_197414BEC(v23);
      v27 = v6;
      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        sub_19740D630((v8 > 1), v9 + 1, 1);
        v6 = v27;
      }

      v6[2] = v9 + 1;
      *&v6[2 * v9 + 4] = v22;
      v7 += 56;
      --v5;
    }

    while (v5);
  }

  v10 = v6[2];
  if (v10)
  {
    v11 = v6 + 4;
    type metadata accessor for DefaultStore(0);
    v12 = *MEMORY[0x1E695D420];
    for (i = v10 - 1; ; --i)
    {
      v14 = *v11;
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = v15;
        v17 = objc_opt_self();
        swift_unknownObjectRetain_n();
        v18 = [v17 defaultCenter];
        v19 = [*(v16 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) persistentStoreCoordinator];
        [v18 addObserver:v21 selector:sel__observeRemoteNotifications_ name:v12 object:v19];
        swift_unknownObjectRelease_n();
      }

      if (!i)
      {
        break;
      }

      v11 += 2;
    }
  }
}

void *sub_19740D174(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B400, &qword_19752D5C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF38, &qword_19752C6A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_19740D2C4()
{
  type metadata accessor for _ModelContainersRegistry();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B000, &qword_19752C760);
  result = swift_allocObject();
  *(result + 16) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = result;
  *(v0 + 24) = v2;
  qword_1ED7CE678 = v0;
  return result;
}

uint64_t sub_19740D350(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  v9 = *(v6 + 16);
  v7 = v6 + 16;
  v8 = v9;
  if (!v9 || (sub_19740C00C(v7 + 16 * v8, v17), Strong = swift_weakLoadStrong(), sub_19740FE8C(v17), !Strong) || (v11 = *a2, *a2 = Strong, result = , Strong != a3))
  {
    swift_weakInit();
    swift_weakAssign();
    v20 = *(a3 + 72);
    sub_19740C00C(v19, v18);
    swift_beginAccess();
    v13 = *(a1 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 24) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_19740D4C8(0, v13[2] + 1, 1, v13);
      *(a1 + 24) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_19740D4C8((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    sub_19740D5F8(v18, &v13[2 * v16 + 4]);
    *(a1 + 24) = v13;
    swift_endAccess();
    return sub_19740FE8C(v19);
  }

  return result;
}

void *sub_19740D4C8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3E8, &qword_19752D5A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_19740D630(void *a1, int64_t a2, char a3)
{
  result = sub_19740CD8C(a1, a2, a3, *v3, &qword_1EAF2B3D0, &unk_19752D590, &qword_1EAF2B3D8, &unk_19752FBA0);
  *v3 = result;
  return result;
}

uint64_t _s9SwiftData18ModelConfigurationV2id10Foundation3URLVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1975212CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_19740D6E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_19752135C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_197404D0C(a2);
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
      sub_19747A4FC();
      goto LABEL_7;
    }

    sub_19740DB88(v19, a3 & 1);
    v26 = *v4;
    v27 = sub_197404D0C(a2);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_19740DAD0(v16, v13, a1, v22);
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
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

uint64_t sub_19740D8D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_19740D918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC9SwiftData12DefaultStore__contextsByEditorIdentifier;
  swift_beginAccess();
  if (*(*(a1 + v6) + 16) && (sub_197404D0C(a2), (v7 & 1) != 0))
  {
    swift_endAccess();
    sub_1975221EC();

    sub_19752135C();
    sub_197413CBC(&qword_1EAF2AF28, MEMORY[0x1E69695A8]);
    v11 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v11);

    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();

    v8 = *(a1 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + v6);
    *(a1 + v6) = 0x8000000000000000;
    sub_19740D6E0(a3, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + v6) = v12;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_19740DAD0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_19752135C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_19740DB88(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_19752135C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF2B458, &unk_19752FD40);
  v44 = a2;
  result = sub_19752243C();
  v15 = result;
  if (*(v12 + 16))
  {
    v48 = v11;
    v40 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v12;
    v43 = v7;
    v45 = (v7 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      v30 = *(v15 + 40);
      sub_197413D04(&qword_1ED7C9B68, MEMORY[0x1E69695A8]);
      result = sub_1975216AC();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v45)(*(v15 + 48) + v47 * v23, v48, v6);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v12 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v12 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_19740DF64()
{
  result = getprogname();
  if (result)
  {
    result = sub_19752186C();
    qword_1ED7CE668 = result;
    unk_1ED7CE670 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL _SD_is_mainqueue_context()
{
  v1 = 1;
  if (!pthread_main_np())
  {
    return dispatch_get_specific("com.apple.CoreData.NSManagedObjectContext.mainQueue") != 0;
  }

  return v1;
}

void sub_19740DFF8(char a1)
{
  v3 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_19740E114();
}

uint64_t sub_19740E078(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  v6 = (v5 + *(type metadata accessor for EditingState() + 20));
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

void sub_19740E114()
{
  v1 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_hasAutosaveObservers))
    {
      return;
    }

    v34 = OBJC_IVAR____TtC9SwiftData12ModelContext_hasAutosaveObservers;
    v2 = sub_197508ED8();
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = (v2 + 32);
      do
      {
        v6 = *v5++;
        v7 = v6;
        v8 = [v4 defaultCenter];
        [v8 addObserver:v0 selector:sel_autosave name:v7 object:0];

        --v3;
      }

      while (v3);
    }

    v9 = sub_197509068();
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = objc_opt_self();
      v12 = (v9 + 32);
      do
      {
        v13 = *v12++;
        v14 = v13;
        v15 = [v11 defaultCenter];
        [v15 addObserver:v0 selector:sel_autosave name:v14 object:0];

        --v10;
      }

      while (v10);
    }

    v16 = 1;
  }

  else
  {
    if (!*(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_hasAutosaveObservers))
    {
      return;
    }

    v34 = OBJC_IVAR____TtC9SwiftData12ModelContext_hasAutosaveObservers;
    v17 = sub_197508ED8();
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = objc_opt_self();
      v20 = (v17 + 32);
      do
      {
        v21 = *v20++;
        v22 = v21;
        v23 = [v19 defaultCenter];
        [v23 removeObserver:v0 name:v22 object:0];

        --v18;
      }

      while (v18);
    }

    v24 = sub_197509068();
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = objc_opt_self();
      v27 = (v24 + 32);
      do
      {
        v28 = *v27++;
        v29 = v28;
        v30 = [v26 defaultCenter];
        [v30 removeObserver:v0 name:v29 object:0];

        --v25;
      }

      while (v25);
    }

    v31 = OBJC_IVAR____TtC9SwiftData12ModelContext_timer;
    v32 = *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_timer);
    if (v32)
    {
      [v32 invalidate];
      v33 = *(v0 + v31);
      *(v0 + v31) = 0;
    }

    v16 = 0;
  }

  *(v0 + v34) = v16;
}

void sub_19740E3D0(char a1)
{
  v2 = v1;
  v4 = sub_19752135C();
  v5 = *(v4 - 8);
  v70 = v4;
  v71 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v77 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EditingState();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v76 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  v78 = xmmword_19752F3C0;
  while (1)
  {
    swift_beginAccess();
    v14 = *(v1 + v13);
    if (*(v14 + 16))
    {
      v15 = 0;
      v16 = (v14 + 64);
      v17 = 1 << *(v14 + 32);
      v18 = (v17 + 63) >> 6;
      while (1)
      {
        v20 = *v16++;
        v19 = v20;
        if (v20)
        {
          break;
        }

        v15 -= 64;
        if (!--v18)
        {
          goto LABEL_10;
        }
      }

      v17 = __clz(__rbit64(v19)) - v15;
LABEL_10:
      sub_197439224(&v79, &v81, v17, *(v14 + 36));
    }

    else
    {
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = v78;
      LOBYTE(v83) = 0;
    }

    swift_endAccess();
    if (!v81 && v82 == 1)
    {
      break;
    }

    v84 = v79;
    v85 = v80;
    sub_197433E8C(&v81, v86);
    sub_1974028C8(v84, v85);
    sub_197433E8C(v86, v87);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = v88;
      ObjectType = swift_getObjectType();
      sub_197439B10(ObjectType, v22);
      swift_unknownObjectRelease();
    }

    sub_19743A0E0(v87);
  }

  sub_1974050A8(&v79, &qword_1EAF2B848, &qword_19752F3E0);
  v24 = *(v1 + v13);
  v25 = MEMORY[0x1E69E7CC8];
  *(v1 + v13) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v26 = v1[9];
  v27 = MEMORY[0x1E69E7CD0];
  v2[9] = MEMORY[0x1E69E7CD0];

  swift_beginAccess();
  v28 = v2[11];
  v2[11] = v27;

  swift_beginAccess();
  v29 = v2[13];
  v2[13] = v27;

  swift_beginAccess();
  v30 = v2[10];
  v2[10] = v27;

  swift_beginAccess();
  v31 = v2[14];
  v2[14] = v27;

  swift_beginAccess();
  v32 = v2[12];
  v2[12] = v27;

  v33 = v2[15];
  v2[15] = v27;

  v34 = v2[16];
  v2[16] = v27;

  v35 = v2[17];
  v2[17] = v27;

  v37 = sub_19740EDC4();
  if (*v36)
  {
    v38 = v36;

    *v38 = v25;
  }

  (v37)(&v84, 0);
  v39 = v2[19];
  v2[19] = v25;

  swift_beginAccess();
  v40 = v2[20];
  v2[20] = v25;

  swift_beginAccess();
  v41 = v2[21];
  v2[21] = v25;

  sub_19740EB4C();
  if (a1)
  {
    v42 = v2[2];
    if (v42)
    {
      swift_beginAccess();
      v43 = *(v42 + 48);
      v44 = *(v43 + 16);
      v45 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
      v75 = v43;

      v73 = v45;
      swift_beginAccess();
      v46 = v70;
      v74 = v44;
      if (v44)
      {
        v47 = 0;
        v48 = v75 + 32;
        v49 = v71;
        v69[1] = &v81;
        ++v71;
        v72 = (v49 + 2);
        while (v47 < *(v75 + 16))
        {
          sub_1974047F8(v48, &v84, &qword_1EAF2AF38, &qword_19752C6A8);
          v50 = v86[3];
          type metadata accessor for DefaultStore(0);
          v51 = swift_dynamicCastClass();
          if (v51)
          {
            v52 = v51;
            v53 = v76;
            sub_197404E70(v2 + v73, v76);
            v54 = v77;
            (*v72)(v77, v53, v46);
            v55 = v50;
            v56 = *(v52 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
            v58 = MEMORY[0x1EEE9AC00](v55, v57);
            v69[-2] = v52;
            v69[-1] = v54;
            v60 = MEMORY[0x1EEE9AC00](v58, v59);
            v69[-2] = sub_19740ED5C;
            v69[-1] = v61;
            *&v78 = v60;
            swift_unknownObjectRetain();

            os_unfair_lock_lock(v56 + 4);
            sub_19740508C(&v79);
            os_unfair_lock_unlock(v56 + 4);
            v62 = v79;

            if (v62)
            {
              v63 = v62[3];

              sub_19744A4E8();

              v64 = v62[2];
              v65 = swift_allocObject();
              *(v65 + 16) = sub_1974C1DA4;
              *(v65 + 24) = v62;
              *(&v82 + 1) = sub_1974C1DAC;
              v83 = v65;
              v79 = MEMORY[0x1E69E9820];
              v80 = 1107296256;
              v81 = sub_197472418;
              *&v82 = &block_descriptor_351;
              v66 = _Block_copy(&v79);
              v67 = v64;

              [v67 performBlockAndWait_];

              v46 = v70;
              _Block_release(v66);
              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

              if (isEscapingClosureAtFileLocation)
              {
                __break(1u);
                goto LABEL_30;
              }
            }

            (*v71)(v77, v46);
            swift_unknownObjectRelease();
            sub_19740BE74(v76, type metadata accessor for EditingState);
          }

          ++v47;
          sub_1974050A8(&v84, &qword_1EAF2AF38, &qword_19752C6A8);
          v48 += 56;
          if (v74 == v47)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_30:
      }
    }
  }
}

void sub_19740EB4C()
{
  sub_19740EC10();
  sub_19740EE18();
  sub_19740EF64();
  sub_19740F0B0();
  sub_19740F1FC();
  sub_19740F348();
  v1 = *(v0 + 128);
  v2 = MEMORY[0x1E69E7CD0];
  *(v0 + 128) = MEMORY[0x1E69E7CD0];

  v3 = *(v0 + 120);
  *(v0 + 120) = v2;

  swift_beginAccess();
  v4 = *(v0 + 40);
  if (v4)
  {
    v5 = v4;
    if ([v5 isUndoRegistrationEnabled])
    {
      [v5 removeAllActions];
    }
  }

  v6 = *(v0 + 176);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 176) = v8;
    *(v0 + 180) = 0;
    *(v0 + 50) = 0;
    *(v0 + 48) = 0;
  }
}

uint64_t sub_19740EC10()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 96);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + 96);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v5; result = swift_unknownObjectRelease())
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(v2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_197432360(0, ObjectType, v14);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      v16 = *(v1 + 96);
      *(v1 + 96) = MEMORY[0x1E69E7CD0];
    }

    v5 = *(v2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19740EE18()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 88);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + 88);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v5; result = swift_unknownObjectRelease())
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(v2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_197442A5C(0, ObjectType, v14);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      v16 = *(v1 + 88);
      *(v1 + 88) = MEMORY[0x1E69E7CD0];
    }

    v5 = *(v2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19740EF64()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 80);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + 80);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v5; result = swift_unknownObjectRelease())
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(v2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1974556E8(0, ObjectType, v14);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      v16 = *(v1 + 80);
      *(v1 + 80) = MEMORY[0x1E69E7CD0];
    }

    v5 = *(v2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19740F0B0()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 72);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + 72);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v5; result = swift_unknownObjectRelease())
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(v2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_197458088(0, ObjectType, v14);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      v16 = *(v1 + 72);
      *(v1 + 72) = MEMORY[0x1E69E7CD0];
    }

    v5 = *(v2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19740F1FC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 112);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + 112);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v5; result = swift_unknownObjectRelease())
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(v2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1974A7FC4(0, ObjectType, v14);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      v16 = *(v1 + 112);
      *(v1 + 112) = MEMORY[0x1E69E7CD0];
    }

    v5 = *(v2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19740F348()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 104);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + 104);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v5; result = swift_unknownObjectRelease())
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(v2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1974A7F6C(0, ObjectType, v14);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      v16 = *(v1 + 104);
      *(v1 + 104) = MEMORY[0x1E69E7CD0];
    }

    v5 = *(v2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_19740F494@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_19740F508(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_19752245C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 8);
      v9 = *i;
      sub_1974028EC(v7, v8);

      result = sub_197403C30(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v5[6] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_19740F620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for EditingState();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for DataStoreFetchRequest();
  v45 = *(Request - 8);
  v46 = Request;
  v12 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](Request, v13);
  v44 = &v42 - v14;
  v48 = a3;
  Descriptor = type metadata accessor for FetchDescriptor();
  v16 = *(Descriptor - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](Descriptor, v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v42 - v23;
  sub_197407130();
  v25 = swift_allocObject();
  v47 = v25;
  *(v25 + 16) = 0;
  v42 = (v25 + 16);
  v50 = v16;
  v26 = *(v16 + 16);
  v26(v24, a1, Descriptor);
  sub_197520C4C();
  v27 = sub_197521A1C();
  v28 = *(Descriptor + 36);
  v29 = *&v24[v28];

  *&v24[v28] = v27;
  if (v24[*(Descriptor + 48)] == 1 && *(v3 + 48) == 1)
  {
    v30 = v49;
    v31 = sub_1974BB758(v24, a2, v48);
    if (!v30)
    {
      v27 = *(v31 + 16);
    }
  }

  else
  {
    v32 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v33 = v3 + v32;
    v34 = v43;
    sub_197404E70(v33, v43);
    v26(v21, v24, Descriptor);
    v35 = v44;
    v36 = v34;
    v27 = v48;
    v37 = sub_197407438(v36, v21, v44);
    MEMORY[0x1EEE9AC00](v37, v38);
    *(&v42 - 4) = a2;
    *(&v42 - 3) = v27;
    *(&v42 - 2) = v47;
    *(&v42 - 1) = v35;
    v39 = v49;
    sub_1974072C4(sub_19740FA50, (&v42 - 6), a2, v27);
    (*(v45 + 8))(v35, v46);
    if (!v39)
    {
      v40 = v42;
      swift_beginAccess();
      v27 = *v40;
    }
  }

  (*(v50 + 8))(v24, Descriptor);

  return v27;
}

uint64_t sub_19740FA50(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  ObjectType = swift_getObjectType();
  return sub_19740FACC(ObjectType, a1, a2, v8, v7, v5, ObjectType, v6, a2);
}

uint64_t sub_19740FACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  swift_dynamicCast();
  v15 = (*(a9 + 88))(a5, a6, a8, a7, a9);
  result = swift_unknownObjectRelease();
  if (!v9)
  {
    result = swift_beginAccess();
    v17 = *(a4 + 16);
    v18 = __OFADD__(v17, v15);
    v19 = v17 + v15;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      *(a4 + 16) = v19;
    }
  }

  return result;
}

uint64_t sub_19740FBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void *))
{
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a1;
  v9 = MEMORY[0x19A8E1370]();
  v10 = a5(a1, v5, a4, v12);
  objc_autoreleasePoolPop(v9);
  return v10;
}

void sub_19740FC98(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, void *), void (*a4)(void), void (*a5)(uint64_t), SEL *a6)
{
  v13 = MEMORY[0x19A8E1370]();
  sub_1974E5C40(v6, a1, a2[2], a2[3], a2[4], a2[5], &v15, a3, &v14, a4, a5, a6);
  objc_autoreleasePoolPop(v13);
}

uint64_t sub_19740FE2C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
LABEL_5:

    return v1;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_19740FEBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_19740FF68()
{
  v4 = v1;
  v5 = type metadata accessor for EditingState();
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v228 = &v225 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v225 - v11;
  sub_197407130();
  v13 = objc_opt_self();
  v14 = [v13 defaultCenter];
  if (qword_1ED7C8178 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    [v14 postNotificationName:qword_1ED7C8180 object:v0 userInfo:0];

    sub_19743FB78(1);
    if (v4 || *(v0 + 48) != 1)
    {
      return;
    }

    if (v0[2])
    {
      v14 = v0[2];
    }

    else
    {
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        __break(1u);
LABEL_178:
        LODWORD(v224) = 0;
        v223 = 2451;
        goto LABEL_179;
      }

      v14 = Strong;
    }

    v225 = v13;
    v250 = v0;
    swift_beginAccess();
    v0 = *(v14 + 48);

    v4 = v0[2];
    v16 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v13 = 0;
      v2 = (v0 + 9);
      while (v13 < v0[2])
      {
        v235 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_19744304C(0, v16[2] + 1, 1, v16);
        }

        ObjectType = v16[2];
        v17 = v16[3];
        v14 = ObjectType + 1;
        if (ObjectType >= v17 >> 1)
        {
          v16 = sub_19744304C((v17 > 1), ObjectType + 1, 1, v16);
        }

        ++v13;
        v16[2] = v14;
        *&v16[2 * ObjectType + 4] = v235;
        swift_unknownObjectRetain();
        v2 += 56;
        if (v4 == v13)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_169;
    }

LABEL_16:
    v18 = v16;

    v19 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    v20 = v250;
    swift_beginAccess();
    v226 = v19;
    sub_197404E70(v20 + v19, v12);
    v21 = type metadata accessor for DataStoreSaveChangesRequestBuilder(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    v24 = swift_allocObject();

    v229 = v18;
    *&v235 = v24;
    sub_1974433F8(v12, v18);
    swift_beginAccess();
    v25 = v20[9];
    swift_beginAccess();
    v26 = v20[10];

    v0 = sub_19743E380(v27, v25);
    v14 = sub_19743AD6C(v0);
    v233 = 0;

    v28 = *(v14 + 16);
    if (v28)
    {
      v4 = 0;
      v13 = v14 + 40;
      *&v234 = v14;
      do
      {
        if (v4 >= *(v14 + 16))
        {
          goto LABEL_170;
        }

        v12 = *(v13 - 8);
        v2 = *v13;
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        if (sub_1973FE6F0(ObjectType, v2))
        {
          v34 = PersistentModel.modelContext.getter(ObjectType, v2);
          if (!v34)
          {
            goto LABEL_178;
          }

          v0 = v34;

          if (v0 != v250)
          {
            goto LABEL_178;
          }

          swift_unknownObjectRelease();
        }

        else
        {
          v29 = sub_1973FE074(ObjectType, v2);
          swift_beginAccess();
          v30 = *(v29 + 88);

          if ((v30 & 0xC000000000000001) != 0)
          {
            v31 = sub_1975220EC();
          }

          else
          {
            v31 = *(v30 + 16);
          }

          if (v31)
          {

            if (qword_1EAF2ACC0 != -1)
            {
              swift_once();
            }

            v203 = sub_19752157C();
            __swift_project_value_buffer(v203, qword_1EAF33DE8);
            swift_unknownObjectRetain();
            v189 = sub_19752155C();
            v204 = sub_197521DDC();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v189, v204))
            {
              v205 = swift_slowAlloc();
              *&v234 = swift_slowAlloc();
              v236[0] = v234;
              *v205 = 136315394;
              PersistentModel.persistentModelID.getter(ObjectType, v2, &v242);
              v237 = v242;
              LOBYTE(v238) = BYTE8(v242);
              v206 = sub_1975217CC();
              v208 = sub_197462310(v206, v207, v236);

              *(v205 + 4) = v208;
              *(v205 + 12) = 2080;
              v209 = sub_1973FE074(ObjectType, v2);
              swift_beginAccess();
              v210 = *(v209 + 88);

              sub_19752202C();
              v211 = sub_197521BDC();
              v213 = v212;

              v214 = sub_197462310(v211, v213, v236);

              *(v205 + 14) = v214;
              _os_log_impl(&dword_1973F2000, v189, v204, "This model %s has invalid keypaths: %s", v205, 0x16u);
              v215 = v234;
              swift_arrayDestroy();
              MEMORY[0x19A8E1B50](v215, -1, -1);
              v202 = v205;
LABEL_162:
              MEMORY[0x19A8E1B50](v202, -1, -1);
            }

LABEL_163:

            if (qword_1EAF2AD68 == -1)
            {
LABEL_164:
              v216 = byte_1EAF2B7B8;
              v218 = qword_1EAF2B7C0;
              v217 = unk_1EAF2B7C8;
              sub_19744BE3C();
              swift_allocError();
              *v219 = v216;
              *(v219 + 8) = v218;
              *(v219 + 16) = v217;
              swift_willThrow();

              swift_unknownObjectRelease();
              return;
            }

LABEL_176:
            swift_once();
            goto LABEL_164;
          }

          sub_197443690(ObjectType, v2, &v242);
          v0 = *(&v243 + 1);
          v32 = v244;
          v33 = __swift_project_boxed_opaque_existential_1(&v242, *(&v243 + 1));
          sub_19743BEDC(v33, v235, v0, v32, sub_197458C34);
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0Tm(&v242);
          v14 = v234;
        }

        v4 = (v4 + 1);
        v13 += 16;
      }

      while (v28 != v4);
    }

    v35 = v250;
    swift_beginAccess();
    v36 = v35[11];
    swift_beginAccess();
    v37 = v35[12];

    v0 = sub_19743E380(v38, v36);
    v39 = v233;
    ObjectType = sub_19743AD6C(v0);
    v233 = v39;

    *&v234 = *(ObjectType + 16);
    if (!v234)
    {
      break;
    }

    v13 = 0;
    v4 = (ObjectType + 40);
    while (v13 < *(ObjectType + 16))
    {
      v12 = *(v4 - 1);
      v40 = *v4;
      v2 = swift_getObjectType();
      swift_unknownObjectRetain();
      if (sub_1973FE6F0(v2, v40))
      {
        sub_1974258A4(v2, v40);
      }

      v41 = sub_1973FE074(v2, v40);
      swift_beginAccess();
      v42 = *(v41 + 88);

      if ((v42 & 0xC000000000000001) != 0)
      {
        v43 = sub_1975220EC();
      }

      else
      {
        v43 = *(v42 + 16);
      }

      if (v43)
      {

        if (qword_1EAF2ACC0 != -1)
        {
          swift_once();
        }

        v188 = sub_19752157C();
        __swift_project_value_buffer(v188, qword_1EAF33DE8);
        swift_unknownObjectRetain();
        v189 = sub_19752155C();
        v190 = sub_197521DDC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v189, v190))
        {
          v191 = swift_slowAlloc();
          *&v234 = swift_slowAlloc();
          v236[0] = v234;
          *v191 = 136315394;
          PersistentModel.persistentModelID.getter(v2, v40, &v242);
          v237 = v242;
          LOBYTE(v238) = BYTE8(v242);
          v192 = sub_1975217CC();
          v194 = sub_197462310(v192, v193, v236);

          *(v191 + 4) = v194;
          *(v191 + 12) = 2080;
          v195 = sub_1973FE074(v2, v40);
          swift_beginAccess();
          v196 = *(v195 + 88);

          sub_19752202C();
          v197 = sub_197521BDC();
          v199 = v198;

          v200 = sub_197462310(v197, v199, v236);

          *(v191 + 14) = v200;
          _os_log_impl(&dword_1973F2000, v189, v190, "This model %s has invalid keypaths: %s", v191, 0x16u);
          v201 = v234;
          swift_arrayDestroy();
          MEMORY[0x19A8E1B50](v201, -1, -1);
          v202 = v191;
          goto LABEL_162;
        }

        goto LABEL_163;
      }

      ++v13;
      sub_197443690(v2, v40, &v242);
      v0 = *(&v243 + 1);
      v14 = v244;
      v44 = __swift_project_boxed_opaque_existential_1(&v242, *(&v243 + 1));
      sub_19743BEDC(v44, v235, v0, v14, sub_1974426B8);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(&v242);
      v4 += 2;
      if (v234 == v13)
      {
        goto LABEL_39;
      }
    }

LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
  }

LABEL_39:

  v45 = v250;
  swift_beginAccess();
  v46 = v45[13];
  swift_beginAccess();
  v47 = v45[14];

  v49 = sub_19743E380(v48, v46);
  v50 = v233;
  v51 = sub_19743AD6C(v49);
  v233 = v50;

  v52 = *(v51 + 16);
  if (v52)
  {
    v53 = (v51 + 40);
    do
    {
      v57 = *(v53 - 1);
      v58 = *v53;
      v59 = swift_getObjectType();
      swift_unknownObjectRetain();
      if (sub_1973FE6F0(v59, v58))
      {
        sub_1974258A4(v59, v58);
      }

      sub_197443690(v59, v58, &v242);
      v54 = *(&v243 + 1);
      v55 = v244;
      v56 = __swift_project_boxed_opaque_existential_1(&v242, *(&v243 + 1));
      sub_19743BEDC(v56, v235, v54, v55, sub_1974BF118);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(&v242);
      v53 += 2;
      --v52;
    }

    while (v52);
  }

  v248 = MEMORY[0x1E69E7CC8];
  v249[0] = MEMORY[0x1E69E7CC8];
  v60 = v229;
  v61 = *(v229 + 16);
  if (!v61)
  {
LABEL_49:
    v70 = OBJC_IVAR____TtC9SwiftData12ModelContext_timer;
    v71 = v250;
    v72 = *(v250 + OBJC_IVAR____TtC9SwiftData12ModelContext_timer);
    if (v72)
    {
      *(v250 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = 0;
      [v72 invalidate];
      v73 = *(v71 + v70);
      *(v71 + v70) = 0;
    }

    v74 = v71[13];

    v76 = v71;
    sub_1974B6340(v75, 1);

    v77 = v71[9];
    v78 = MEMORY[0x1E69E7CD0];
    v76[9] = MEMORY[0x1E69E7CD0];

    v79 = v76[11];
    v76[11] = v78;

    v80 = v76[13];
    v76[13] = v78;

    v81 = v76[10];
    v76[10] = v78;

    v82 = v76[12];
    v76[12] = v78;

    v83 = v76[14];
    v76[14] = v78;

    *(v76 + 48) = 0;
    v246 = MEMORY[0x1E69E7CC0];
    v247 = MEMORY[0x1E69E7CC0];
    v245 = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v4 = (v249[0] + 64);
    v84 = 1 << *(v249[0] + 32);
    v85 = -1;
    if (v84 < 64)
    {
      v85 = ~(-1 << v84);
    }

    v13 = v85 & *(v249[0] + 64);
    *&v231 = v249[0];

    swift_beginAccess();
    v86 = 0;
    v14 = &qword_1EAF2AF20;
    v12 = (v84 + 63) >> 6;
    v0 = &unk_19752F320;
    v230 = v4;
    *&v227 = v12;
    if (!v13)
    {
LABEL_55:
      while (1)
      {
        v87 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          break;
        }

        if (v87 >= v12)
        {
          goto LABEL_63;
        }

        v13 = v4[v87];
        ++v86;
        if (v13)
        {
          goto LABEL_58;
        }
      }

LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    while (1)
    {
      v87 = v86;
LABEL_58:
      v88 = __clz(__rbit64(v13)) | (v87 << 6);
      v89 = (*(v231 + 48) + 16 * v88);
      v2 = *v89;
      ObjectType = v89[1];
      sub_1974047F8(*(v231 + 56) + 32 * v88, &v242, v14, &unk_19752F320);
      v232 = v243;
      v234 = v242;

      if (!ObjectType)
      {
        break;
      }

      v242 = v234;
      v243 = v232;
      v90 = *(v235 + 16);
      if (!*(v90 + 16))
      {
        goto LABEL_181;
      }

      v91 = v14;
      v92 = *(v235 + 16);

      v93 = sub_1973F4028(v2, ObjectType);
      if ((v94 & 1) == 0)
      {
        while (1)
        {

LABEL_181:
          v237 = 0;
          v238 = 0xE000000000000000;
          sub_1975221EC();
          v236[0] = v237;
          v236[1] = v238;
          MEMORY[0x19A8DFF80](0x6F662065726F7453, 0xEA00000000002072);
          MEMORY[0x19A8DFF80](v2, ObjectType);
          MEMORY[0x19A8DFF80](0xD000000000000042, 0x8000000197526550);
          sub_1974047F8(&v242, &v237, &qword_1EAF2AF20, &unk_19752F320);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
          v220 = sub_1975217CC();
          MEMORY[0x19A8DFF80](v220);

          LODWORD(v224) = 0;
          v223 = 2518;
LABEL_179:
          sub_1975223EC();
          __break(1u);
        }
      }

      v13 &= v13 - 1;
      v95 = (*(v90 + 56) + 16 * v93);
      v96 = *v95;
      v97 = v95[1];
      swift_unknownObjectRetain();

      v98 = swift_getObjectType();
      *(&v221 + 1) = &v247;
      *&v221 = v250;
      sub_1974450A0(v98, &v248, v2, ObjectType, &v242, v96, v97, v235, v221, &v246, &v245, v98, v97);

      swift_unknownObjectRelease();
      v14 = v91;
      v0 = &unk_19752F320;
      sub_1974050A8(&v242, v91, &unk_19752F320);
      v86 = v87;
      v4 = v230;
      v12 = v227;
      if (!v13)
      {
        goto LABEL_55;
      }
    }

LABEL_63:

    ObjectType = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
    v0 = v250;
    swift_beginAccess();
    v99 = *(v0 + ObjectType);
    v101 = *(v99 + 64);
    v4 = (v99 + 64);
    v100 = v101;
    v102 = 1 << *(*(v0 + ObjectType) + 32);
    v103 = -1;
    if (v102 < 64)
    {
      v103 = ~(-1 << v102);
    }

    v12 = v103 & v100;
    v13 = (v102 + 63) >> 6;
    *&v231 = *(v0 + ObjectType);

    v104 = 0;
    *&v234 = MEMORY[0x1E69E7CC0];
    v227 = xmmword_19752F3C0;
    v230 = ObjectType;
    *&v232 = v4;
    if (v12)
    {
      while (1)
      {
        v109 = v104;
LABEL_77:
        v112 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v113 = v112 | (v109 << 6);
        v114 = *(v231 + 48) + 16 * v113;
        v0 = *v114;
        v14 = *(v114 + 8);
        sub_19742FE50(*(v231 + 56) + 32 * v113, v236);
        v237 = v0;
        LOBYTE(v238) = v14;
        sub_197433E8C(v236, &v239);
        sub_1974028EC(v0, v14);
LABEL_78:
        sub_197446C28(&v237, &v242);
        if (v243 == __PAIR128__(1, 0))
        {
          break;
        }

        v115 = v242;
        v2 = BYTE8(v242);
        sub_197433E8C(&v243, &v237);
        v116 = swift_unknownObjectWeakLoadStrong();
        if (v116)
        {
          v0 = v116;
          v14 = v238;
          v105 = swift_getObjectType();
          v106 = sub_197432B8C(v105, v14);
          sub_197433EE8(v106 & 0xFFFFFFC7, v105, v14);
          v107 = sub_197432B8C(v105, v14);
          v108 = v105;
          ObjectType = v230;
          sub_197433EE8(v107 & 0xFFFFFFF8, v108, v14);
          sub_1974028C8(v115, v2);
          swift_unknownObjectRelease();
          sub_19743A0E0(&v237);
          v4 = v232;
          if (!v12)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v117 = v234;
          }

          else
          {
            v117 = sub_197445BA8(0, *(v234 + 16) + 1, 1, v234);
          }

          v14 = *(v117 + 2);
          v118 = *(v117 + 3);
          v0 = (v14 + 1);
          if (v14 >= v118 >> 1)
          {
            *&v234 = sub_197445BA8((v118 > 1), v14 + 1, 1, v117);
          }

          else
          {
            *&v234 = v117;
          }

          sub_19743A0E0(&v237);
          v119 = v234;
          *(v234 + 16) = v0;
          v120 = v119 + 16 * v14;
          *(v120 + 32) = v115;
          *(v120 + 40) = v2;
          v4 = v232;
          if (!v12)
          {
            goto LABEL_69;
          }
        }
      }

      v121 = v234;
      *&v232 = *(v234 + 16);
      if (!v232)
      {
LABEL_151:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B850, &qword_19752F3E8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_19752D100;
        *(inited + 32) = 0x6465747265736E69;
        *(inited + 40) = 0xE800000000000000;
        swift_beginAccess();
        *(inited + 48) = v247;
        *(inited + 56) = 0x64657461647075;
        *(inited + 64) = 0xE700000000000000;
        swift_beginAccess();
        *(inited + 72) = v246;
        *(inited + 80) = 0x646574656C6564;
        *(inited + 88) = 0xE700000000000000;
        swift_beginAccess();
        *(inited + 96) = v245;
        v183 = sub_197411FE8(inited, &qword_1EAF2B3E0, &qword_19752D5A0);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B858, &qword_19752F3F0);
        swift_arrayDestroy();
        v184 = sub_197446C98(v183);

        v185 = [v225 defaultCenter];
        if (qword_1ED7C7CD0 != -1)
        {
          swift_once();
        }

        v186 = qword_1ED7C7CD8;
        sub_197445CC4(v184);

        v187 = sub_1975215EC();

        [v185 postNotificationName:v186 object:v250 userInfo:v187];

        goto LABEL_166;
      }

      v13 = 0;
      v4 = (v234 + 40);
      v231 = xmmword_19752EA60;
      while (2)
      {
        if (v13 >= *(v121 + 16))
        {
          goto LABEL_173;
        }

        v122 = *(v4 - 1);
        v12 = *v4;
        v2 = v250;
        swift_beginAccess();
        v0 = *(v2 + ObjectType);
        sub_1974028EC(v122, v12);
        v123 = sub_197403C30(v122, v12);
        if (v124)
        {
          v14 = v123;
          v125 = *(v2 + ObjectType);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v0 = *(v2 + ObjectType);
          v236[0] = v0;
          *(v2 + ObjectType) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_19747B580();
            v0 = v236[0];
          }

          sub_1974028C8(*(v0[6] + 16 * v14), *(v0[6] + 16 * v14 + 8));
          sub_197433E8C(v0[7] + 32 * v14, &v242);
          sub_197439D60(v14, v0);
          *(v2 + ObjectType) = v0;
        }

        else
        {
          v242 = v231;
          *&v243 = 0;
          BYTE8(v243) = 0;
        }

        sub_1974050A8(&v242, &qword_1EAF2B640, &unk_19752F160);
        swift_endAccess();
        if (!v12)
        {
          v128 = [v122 storeIdentifier];
          v14 = sub_1975217BC();
          v2 = v129;

          goto LABEL_104;
        }

        if (v12 == 1)
        {
          v2 = v122[3];
          if (v2)
          {
            v14 = v122[2];
            v127 = v122[3];

LABEL_104:
            v0 = *(v235 + 16);
            if (v0[2])
            {
              v130 = *(v235 + 16);

              v14 = sub_1973F4028(v14, v2);
              v132 = v131;

              if (v132)
              {
                v2 = *(v0[7] + 16 * v14);
                swift_unknownObjectRetain();

                swift_getObjectType();
                if (swift_conformsToProtocol2())
                {
                  v133 = v2 == 0;
                }

                else
                {
                  v133 = 1;
                }

                if (v133)
                {
                  swift_unknownObjectRelease();
                  sub_1974028C8(v122, v12);
                  ObjectType = v230;
                }

                else
                {
                  v136 = sub_197404E70(v250 + v226, v228);
                  v14 = *(v2 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
                  v138 = MEMORY[0x1EEE9AC00](v136, v137);
                  *&v227 = v2;
                  MEMORY[0x1EEE9AC00](v138, v139);
                  v0 = &v222;
                  v223 = sub_19745A068;
                  v224 = v140;

                  os_unfair_lock_lock((v14 + 16));
                  v141 = v233;
                  sub_197431F70(&v242);
                  v233 = v141;
                  if (v141)
                  {
                    os_unfair_lock_unlock((v14 + 16));
                    __break(1u);
                    return;
                  }

                  os_unfair_lock_unlock((v14 + 16));
                  v2 = v242;

                  if (v2)
                  {
                    swift_beginAccess();
                    v142 = *(v2 + 16);
                    sub_1974028EC(v122, v12);
                    v143 = sub_197403C30(v122, v12);
                    ObjectType = v230;
                    if (v144)
                    {
                      v14 = v143;
                      v145 = *(v2 + 16);
                      v146 = swift_isUniquelyReferenced_nonNull_native();
                      v147 = *(v2 + 16);
                      v237 = v147;
                      *(v2 + 16) = 0x8000000000000000;
                      if ((v146 & 1) == 0)
                      {
                        sub_19747AF58();
                        v147 = v237;
                      }

                      sub_1974028C8(*(*(v147 + 48) + 16 * v14), *(*(v147 + 48) + 16 * v14 + 8));
                      v148 = *(*(v147 + 56) + 8 * v14);

                      sub_1974A1878(v14, v147);
                      sub_1974028C8(v122, v12);
                      *(v2 + 16) = v147;
                    }

                    else
                    {
                      sub_1974028C8(v122, v12);
                    }

                    swift_endAccess();
                    swift_beginAccess();
                    v149 = *(v2 + 24);
                    sub_1974028EC(v122, v12);
                    v150 = sub_197403C30(v122, v12);
                    if (v151)
                    {
                      v14 = v150;
                      v152 = *(v2 + 24);
                      v153 = swift_isUniquelyReferenced_nonNull_native();
                      v154 = *(v2 + 24);
                      v237 = v154;
                      *(v2 + 24) = 0x8000000000000000;
                      if ((v153 & 1) == 0)
                      {
                        sub_19747AF6C();
                        v154 = v237;
                      }

                      sub_1974028C8(*(*(v154 + 48) + 16 * v14), *(*(v154 + 48) + 16 * v14 + 8));
                      v155 = *(*(v154 + 56) + 8 * v14);

                      sub_1974A187C(v14, v154);
                      sub_1974028C8(v122, v12);
                      *(v2 + 24) = v154;
                    }

                    else
                    {
                      sub_1974028C8(v122, v12);
                    }

                    swift_endAccess();
                    swift_beginAccess();
                    v156 = *(v2 + 32);
                    sub_1974028EC(v122, v12);
                    v157 = sub_197403C30(v122, v12);
                    if (v158)
                    {
                      v14 = v157;
                      v159 = *(v2 + 32);
                      v160 = swift_isUniquelyReferenced_nonNull_native();
                      v161 = *(v2 + 32);
                      v237 = v161;
                      if ((v160 & 1) == 0)
                      {
                        sub_19747AF58();
                        v161 = v237;
                      }

                      sub_1974028C8(*(*(v161 + 48) + 16 * v14), *(*(v161 + 48) + 16 * v14 + 8));
                      v162 = *(*(v161 + 56) + 8 * v14);

                      sub_1974A1878(v14, v161);
                      sub_1974028C8(v122, v12);
                      *(v2 + 32) = v161;
                    }

                    else
                    {
                      sub_1974028C8(v122, v12);
                    }

                    swift_endAccess();
                    swift_beginAccess();
                    v163 = *(v2 + 40);
                    sub_1974028EC(v122, v12);
                    v164 = sub_197403C30(v122, v12);
                    if (v165)
                    {
                      v14 = v164;
                      v166 = *(v2 + 40);
                      v167 = swift_isUniquelyReferenced_nonNull_native();
                      v168 = *(v2 + 40);
                      v237 = v168;
                      if ((v167 & 1) == 0)
                      {
                        sub_19747AF94();
                        v168 = v237;
                      }

                      sub_1974028C8(*(*(v168 + 48) + 16 * v14), *(*(v168 + 48) + 16 * v14 + 8));
                      v169 = *(*(v168 + 56) + 8 * v14);

                      sub_1974A1884(v14, v168);
                      sub_1974028C8(v122, v12);
                      *(v2 + 40) = v168;
                    }

                    else
                    {
                      sub_1974028C8(v122, v12);
                    }

                    swift_endAccess();
                    swift_beginAccess();
                    v170 = *(v2 + 48);
                    sub_1974028EC(v122, v12);
                    v171 = sub_197403C30(v122, v12);
                    if (v172)
                    {
                      v14 = v171;
                      v173 = *(v2 + 48);
                      v174 = swift_isUniquelyReferenced_nonNull_native();
                      v175 = *(v2 + 48);
                      v237 = v175;
                      if ((v174 & 1) == 0)
                      {
                        sub_19747AF80();
                        v175 = v237;
                      }

                      sub_1974028C8(*(*(v175 + 48) + 16 * v14), *(*(v175 + 48) + 16 * v14 + 8));
                      v176 = *(*(v175 + 56) + 8 * v14);

                      sub_1974A1880(v14, v175);
                      sub_1974028C8(v122, v12);
                      *(v2 + 48) = v175;
                    }

                    else
                    {
                      sub_1974028C8(v122, v12);
                    }

                    swift_endAccess();
                    swift_beginAccess();
                    v0 = *(v2 + 56);
                    v177 = sub_197403C30(v122, v12);
                    if (v178)
                    {
                      v14 = v177;
                      v179 = *(v2 + 56);
                      v180 = swift_isUniquelyReferenced_nonNull_native();
                      v0 = *(v2 + 56);
                      v237 = v0;
                      if ((v180 & 1) == 0)
                      {
                        sub_19747AF58();
                        v0 = v237;
                      }

                      sub_1974028C8(*(v0[6] + 16 * v14), *(v0[6] + 16 * v14 + 8));
                      v181 = *(v0[7] + 8 * v14);

                      sub_1974A1878(v14, v0);
                      sub_1974028C8(v122, v12);
                      *(v2 + 56) = v0;
                    }

                    else
                    {
                      sub_1974028C8(v122, v12);
                    }

                    swift_endAccess();
                  }

                  else
                  {
                    sub_1974028C8(v122, v12);
                    ObjectType = v230;
                  }

                  swift_unknownObjectRelease();
                  sub_19740BE74(v228, type metadata accessor for EditingState);
                }
              }

              else
              {
                sub_1974028C8(v122, v12);

                ObjectType = v230;
              }
            }

            else
            {
              sub_1974028C8(v122, v12);
            }

LABEL_92:
            ++v13;
            v4 += 2;
            v121 = v234;
            if (v232 == v13)
            {
              goto LABEL_151;
            }

            continue;
          }

          v134 = v122;
          v135 = 1;
        }

        else
        {
          v134 = v122;
          v135 = 2;
        }

        break;
      }

      sub_1974028C8(v134, v135);
      goto LABEL_92;
    }

LABEL_69:
    if (v13 <= v104 + 1)
    {
      v110 = v104 + 1;
    }

    else
    {
      v110 = v13;
    }

    v111 = v110 - 1;
    while (1)
    {
      v109 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        break;
      }

      if (v109 >= v13)
      {
        v12 = 0;
        v237 = 0;
        v238 = 0;
        v239 = 0;
        v240 = v227;
        v104 = v111;
        v241 = 0;
        goto LABEL_78;
      }

      v12 = v4[v109];
      ++v104;
      if (v12)
      {
        v104 = v109;
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v62 = 0;
  v63 = (v229 + 40);
  while (1)
  {
    if (v62 >= *(v60 + 16))
    {
      __break(1u);
      goto LABEL_176;
    }

    v64 = *(v63 - 1);
    v65 = *v63;
    v66 = swift_getObjectType();
    swift_unknownObjectRetain();
    v67 = v66;
    v68 = v66;
    v69 = v233;
    sub_19743A360(v67, v64, v65, v235, &v248, v249, v68, v65);
    v233 = v69;
    if (v69)
    {
      break;
    }

    swift_unknownObjectRelease();
    ++v62;
    v63 += 2;
    v60 = v229;
    if (v61 == v62)
    {
      goto LABEL_49;
    }
  }

  swift_unknownObjectRelease();

LABEL_166:
}

uint64_t sub_197411C40(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197411C7C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

char *sub_197411CB8(char *a1, int64_t a2, char a3)
{
  result = sub_197425554(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_197411CD8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_197411D1C(uint64_t a1, char *a2)
{
  v5 = MEMORY[0x19A8E1370]();
  sub_1974DE89C(v2, *(a1 + 16), a2, &v6, &v7);
  objc_autoreleasePoolPop(v5);
}

uint64_t sub_197411DA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_197411DF0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_197411E30()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

unint64_t sub_197411E68()
{
  result = qword_1ED7C80F0[0];
  if (!qword_1ED7C80F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7C80F0);
  }

  return result;
}

unint64_t sub_197411EBC()
{
  result = qword_1ED7C93F0;
  if (!qword_1ED7C93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C93F0);
  }

  return result;
}

uint64_t sub_197411F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  Descriptor = type metadata accessor for FetchDescriptor();
  v9 = *(Descriptor - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, Descriptor);
  }

  else
  {
    v12 = *(a1 + *(a3 + 52));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

unint64_t sub_197411FE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_19752245C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1973F4028(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1974120E4(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 16 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_19741213C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_19747B128(&qword_1EAF2B2E0, &qword_19752D488);
      v11 = v19;
      goto LABEL_8;
    }

    sub_1974786EC(v16, a4 & 1, &qword_1EAF2B2E0, &qword_19752D488);
    v20 = *v5;
    v11 = sub_1973F4028(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      sub_1975229CC();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = *(v22 + 56);
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  sub_1974249D8(v11, a2, a3, a1, v22);
}

unint64_t sub_1974122A4()
{
  result = qword_1ED7C77E8;
  if (!qword_1ED7C77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C77E8);
  }

  return result;
}

unint64_t sub_1974122F8()
{
  result = qword_1ED7C77F0;
  if (!qword_1ED7C77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C77F0);
  }

  return result;
}

uint64_t sub_197412354(void *a1)
{
  v2 = a1[2];
  v3 = a1[4];
  result = type metadata accessor for FetchDescriptor();
  if (v5 <= 0x3F)
  {
    v6 = a1[3];
    result = sub_197521AAC();
    if (v7 <= 0x3F)
    {
      sub_197405108();
      result = sub_19752166C();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_19741241C(uint64_t a1)
{
  result = type metadata accessor for EditingState();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    result = type metadata accessor for FetchDescriptor();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1974124AC(uint64_t a1)
{
  v5 = *(a1 + 16);
  sub_19752139C();
  sub_197521F5C();
  if (v1 <= 0x3F)
  {
    sub_197520C4C();
    sub_197521AAC();
    if (v2 <= 0x3F)
    {
      sub_1974125B8();
      if (v3 <= 0x3F)
      {
        sub_19752228C();
        sub_197521AAC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1974125B8()
{
  if (!qword_1ED7C9368[0])
  {
    v0 = sub_197521F5C();
    if (!v1)
    {
      atomic_store(v0, qword_1ED7C9368);
    }
  }
}

uint64_t sub_197412608(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_197412644()
{
  result = qword_1ED7C80E8;
  if (!qword_1ED7C80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C80E8);
  }

  return result;
}

uint64_t sub_197412698(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2AEE0, &qword_19752E9C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197412710(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2AEE0, &qword_19752E9C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197412788(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2AEE0, &qword_19752E9C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_197412800(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
  v31 = v10;
  v32 = sub_197412788(&qword_1ED7C77C0, sub_197412644);
  v33 = sub_197412788(&qword_1ED7C77C8, sub_197411E68);
  *&v30 = a1;
  v11 = *a5;
  v13 = sub_1973F4028(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 48 * v13);
      __swift_destroy_boxed_opaque_existential_1Tm_2(v20);
      return sub_1974028A0(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_19747A934();
    goto LABEL_7;
  }

  sub_1973FF110(v16, a4 & 1);
  v22 = *a5;
  v23 = sub_1973F4028(a2, a3);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1975229CC();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_2(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_197412A6C(v13, a2, a3, *v28, v19);

  return __swift_destroy_boxed_opaque_existential_1Tm_2(&v30);
}

_OWORD *sub_197412A6C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
  v17 = sub_197412788(&qword_1ED7C77C0, sub_197412644);
  v18 = sub_197412788(&qword_1ED7C77C8, sub_197411E68);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_1974028A0(&v15, (a5[7] + 48 * a1));
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_197412C34@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1975218DC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_19741304C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_19741304C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1975218BC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_19752182C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_19752182C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1975218DC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_19741304C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1975218DC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_19741304C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_19741304C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_19752182C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197412FF4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_19752282C() & 1;
  }
}

char *sub_19741304C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B450, &unk_19752D610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_197413174()
{
  sub_19752132C();
  if (v0 <= 0x3F)
  {
    sub_197413274(319, qword_1ED7C8638, &type metadata for HistoryChange, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_197413274(319, &qword_1ED7CA7A8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_197413274(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_197413330(uint64_t a1)
{
  *(a1 + 8) = sub_197413360();
  result = sub_1974133B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197413360()
{
  result = qword_1ED7C9408;
  if (!qword_1ED7C9408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C9408);
  }

  return result;
}

unint64_t sub_1974133B4()
{
  result = qword_1ED7C9410[0];
  if (!qword_1ED7C9410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7C9410);
  }

  return result;
}

uint64_t sub_197413438(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1973F7950(a2, a3);
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
      sub_19741E5C8(&qword_1EAF2B1B0, &qword_19752D340);
      v11 = v19;
      goto LABEL_8;
    }

    sub_19741359C(v16, a4 & 1, &qword_1EAF2B1B0, &qword_19752D340);
    v20 = *v5;
    v11 = sub_1973F7950(a2, a3);
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
    v23 = *(v22 + 56);
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {

    return sub_197413824(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_19741359C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_19752243C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v36 = *(*(v7 + 48) + 16 * v22);
      v24 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = *(v23 + 8 * v22);
      }

      v26 = *(v10 + 40);
      sub_197522A5C();
      MEMORY[0x19A8E1190](v36);
      result = sub_197522A9C();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 16 * v18) = v36;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

unint64_t sub_19741382C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_197413874()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  v4 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t *sub_1974138C4(uint64_t AssociatedTypeWitness)
{
  if (swift_conformsToProtocol2() && AssociatedTypeWitness)
  {
    do
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      swift_beginAccess();
      if (swift_conformsToProtocol2())
      {
        v2 = AssociatedTypeWitness == 0;
      }

      else
      {
        v2 = 1;
      }
    }

    while (!v2);
  }

  if (swift_conformsToProtocol2() && AssociatedTypeWitness)
  {
    do
    {
      v3 = swift_getAssociatedTypeWitness();
      swift_beginAccess();
      if (swift_conformsToProtocol2())
      {
        v4 = v3 == 0;
      }

      else
      {
        v4 = 1;
      }
    }

    while (!v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
  v5 = sub_1975214EC();
  v6 = sub_1975214EC();
  if (v5)
  {
    if (!v6 || v5 != v6)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  result = sub_1975214DC();
  if (v8 < 1)
  {
    __break(1u);
    return result;
  }

  v9 = *result;
  return (swift_conformsToProtocol2() && v9);
}

uint64_t sub_197413A80()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_197413B20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_197413B90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_197413BF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_197413C58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_197413CBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_197413D04(unint64_t *a1, void (*a2)(uint64_t))
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

void _SD_Initialize_framework()
{
  if (_SD_Initialize_framework__SwiftDataFrameworkOnceToken[0] != -1)
  {
    dispatch_once(_SD_Initialize_framework__SwiftDataFrameworkOnceToken, &__block_literal_global);
  }
}

uint64_t ModelContainer.init(for:migrationPlan:configurations:)(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = type metadata accessor for ModelConfiguration();
  v146 = *(v9 - 8);
  v10 = *(v146 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = (&v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v138 - v16;
  v150 = v4;
  *(v4 + 40) = MEMORY[0x1E69E7CD0];
  v18 = (v4 + 40);
  v18[1] = MEMORY[0x1E69E7CC0];
  v142 = v18 + 1;
  v18[2] = MEMORY[0x1E69E7CC8];
  v147 = v18 + 2;
  v18[3] = 0;
  _SD_Initialize_framework();
  *(v18 - 3) = a1;
  *(v18 - 2) = a2;
  v143 = a2;
  v144 = a3;
  v149 = v18;
  *(v18 - 1) = a3;
  v19 = a4[2];

  v151 = a1;
  v145 = v9;
  if (v19)
  {
    v148 = a4;
    v20 = a1;
    v21 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    ModelConfiguration.init(isStoredInMemoryOnly:)(0, v17);
    v22 = *(v9 + 40);
    v23 = *&v17[v22];

    *&v17[v22] = a1;
    sub_19741598C(v17, v14);
    v24 = a4;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v25 = a4;
    }

    else
    {
LABEL_97:
      v25 = sub_1974773F8(0, *(v24 + 16) + 1, 1, v24, &qword_1EAF2AFF8, &unk_19752D470, type metadata accessor for ModelConfiguration);
    }

    v26 = v150;
    v21 = MEMORY[0x1E69E7CD0];
    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_1974773F8(v27 > 1, v28 + 1, 1, v25, &qword_1EAF2AFF8, &unk_19752D470, type metadata accessor for ModelConfiguration);
    }

    v25[2] = v28 + 1;
    v29 = (*(v146 + 80) + 32) & ~*(v146 + 80);
    v148 = v25;
    sub_19740B38C(v14, v25 + v29 + *(v146 + 72) * v28);
    sub_19740B2C8(v17);
    v20 = *(v26 + 16);
  }

  v166 = v21;
  v30 = *(v20 + 8);
  if (v30 >> 62)
  {
    goto LABEL_95;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:

  if (v31)
  {
    v32 = 0;
    v153 = v30 & 0xFFFFFFFFFFFFFF8;
    v154 = v30 & 0xC000000000000001;
    v33 = MEMORY[0x1E69E7CC8];
    v152 = v30;
    while (1)
    {
      if (v154)
      {
        v30 = MEMORY[0x19A8E0960](v32, v30);
        v34 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v41 = v166;
          goto LABEL_22;
        }
      }

      else
      {
        if (v32 >= *(v153 + 16))
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          v31 = sub_1975220EC();
          goto LABEL_10;
        }

        v30 = *(v30 + 8 * v32 + 32);

        v34 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_19;
        }
      }

      swift_beginAccess();
      v35 = *(v30 + 16);
      v36 = *(v30 + 24);

      sub_197414EA0(&v159, v35, v36);

      v37 = v31;
      v39 = *(v30 + 16);
      v38 = *(v30 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v159 = v33;
      sub_1973F883C(v30, v39, v38, isUniquelyReferenced_nonNull_native, &qword_1EAF2B380, &qword_19752D538, sub_1973FB840);

      v31 = v37;

      v33 = v159;
      ++v32;
      v30 = v152;
      if (v34 == v37)
      {
        goto LABEL_20;
      }
    }
  }

  v33 = MEMORY[0x1E69E7CC8];
  v41 = MEMORY[0x1E69E7CD0];
LABEL_22:

  v42 = v150;
  *(v150 + 72) = v41;
  *(v42 + 80) = v33;
  v43 = v148;
  v44 = v148[2];
  v140 = v41;
  v141 = v33;
  v139 = v44;
  if (!v44)
  {

LABEL_54:
    v79 = sub_19741A1AC(v151, v43);

    v80 = v149;
    swift_beginAccess();
    v30 = *v80 + 56;
    v81 = 1 << *(*v80 + 32);
    v82 = -1;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    v83 = v82 & *(*v80 + 56);
    v84 = (v81 + 63) >> 6;
    v152 = *v80;

    v85 = 0;
    v148 = v84;
    v146 = v30;
    while (v83)
    {
LABEL_64:
      sub_197414BA4(*(v152 + 48) + 40 * (__clz(__rbit64(v83)) | (v85 << 6)), &v163);
      v157[0] = v163;
      v157[1] = v164;
      v90 = v165;
      v158 = v165;
      v91 = *(&v164 + 1);
      v92 = __swift_project_boxed_opaque_existential_1(v157, *(&v164 + 1));
      v93 = *(v42 + 16);

      v94 = v92;
      v95 = v155;
      v96 = sub_19740AF04(v94, v93, v143, v144, v91, v90);
      v155 = v95;
      if (v95)
      {

        sub_197414BEC(v157);

        return v42;
      }

      v98 = v96;
      v99 = v97;

      sub_197414BA4(v157, &v159);
      *(&v161 + 1) = v98;
      v162 = v99;
      v30 = v142;
      swift_beginAccess();
      v100 = *v30;
      swift_unknownObjectRetain();
      v101 = swift_isUniquelyReferenced_nonNull_native();
      *v30 = v100;
      v154 = v99;
      if ((v101 & 1) == 0)
      {
        v100 = sub_19740D174(0, v100[2] + 1, 1, v100);
        *v30 = v100;
      }

      v103 = v100[2];
      v102 = v100[3];
      if (v103 >= v102 >> 1)
      {
        v100 = sub_19740D174((v102 > 1), v103 + 1, 1, v100);
      }

      v100[2] = v103 + 1;
      v104 = &v100[7 * v103];
      v105 = v159;
      v106 = v160;
      v107 = v161;
      v104[10] = v162;
      *(v104 + 3) = v106;
      *(v104 + 4) = v107;
      *(v104 + 2) = v105;
      *v30 = v100;
      swift_endAccess();
      ObjectType = swift_getObjectType();
      v109 = (*(v154 + 40))(ObjectType);
      v17 = v110;
      v111 = v147;
      swift_beginAccess();
      v153 = v98;
      swift_unknownObjectRetain();
      v112 = *v111;
      v113 = swift_isUniquelyReferenced_nonNull_native();
      v156 = *v111;
      v114 = v156;
      *v111 = 0x8000000000000000;
      v24 = sub_1973F4028(v109, v17);
      v116 = v114[2];
      v117 = (v115 & 1) == 0;
      v118 = v116 + v117;
      if (__OFADD__(v116, v117))
      {
        goto LABEL_94;
      }

      v119 = v115;
      v120 = v114[3];
      v149 = v109;
      if (v120 >= v118)
      {
        if ((v113 & 1) == 0)
        {
          sub_19747B284();
        }
      }

      else
      {
        sub_19740CAD4(v118, v113);
        v121 = sub_1973F4028(v109, v17);
        if ((v119 & 1) != (v122 & 1))
        {
          result = sub_1975229CC();
          __break(1u);
          return result;
        }

        v24 = v121;
      }

      v84 = v148;
      v14 = v156;
      if (v119)
      {
        v86 = (v156[7] + 16 * v24);
        v87 = *v86;
        v88 = v154;
        *v86 = v153;
        v86[1] = v88;

        swift_unknownObjectRelease();
      }

      else
      {
        v156[(v24 >> 6) + 8] |= 1 << v24;
        v123 = (v14[6] + 16 * v24);
        *v123 = v149;
        v123[1] = v17;
        v124 = (v14[7] + 16 * v24);
        v125 = v154;
        *v124 = v153;
        v124[1] = v125;
        v126 = v14[2];
        v127 = __OFADD__(v126, 1);
        v128 = v126 + 1;
        if (v127)
        {
          __break(1u);
          goto LABEL_97;
        }

        v14[2] = v128;
      }

      v83 &= v83 - 1;
      *v147 = v14;
      swift_endAccess();
      swift_unknownObjectRelease();
      sub_197414BEC(v157);
      v42 = v150;
      v30 = v146;
    }

    while (1)
    {
      v89 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        goto LABEL_90;
      }

      if (v89 >= v84)
      {

        sub_19740CEC0();

        return v42;
      }

      v83 = *(v30 + 8 * v89);
      ++v85;
      if (v83)
      {
        v85 = v89;
        goto LABEL_64;
      }
    }
  }

  v152 = v148 + ((*(v146 + 80) + 32) & ~*(v146 + 80));

  swift_beginAccess();
  v43 = v148;
  v45 = 0;
  while (1)
  {
    if (v45 >= *(v43 + 16))
    {
      goto LABEL_93;
    }

    v46 = v152 + *(v146 + 72) * v45;
    *(&v164 + 1) = v145;
    v165 = sub_197413D04(&qword_1ED7C9B58, type metadata accessor for ModelConfiguration);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v163);
    sub_19741598C(v46, boxed_opaque_existential_1);
    v48 = *v149;
    v49 = *(*v149 + 16);
    v153 = v45;
    if (v49)
    {
      break;
    }

LABEL_31:
    v59 = *(&v164 + 1);
    v60 = v165;
    __swift_project_boxed_opaque_existential_1(&v163, *(&v164 + 1));
    v154 = (*(v60 + 40))(v59, v60);
    if (v154)
    {
      v61 = *(v154 + 64);
      if (v61 >> 62)
      {
        if (v61 < 0)
        {
          v78 = *(v154 + 64);
        }

        v62 = sub_1975220EC();
      }

      else
      {
        v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v62)
      {
        v63 = 0;
        v30 = v61 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v61 & 0xC000000000000001) != 0)
          {
            v65 = MEMORY[0x19A8E0960](v63, v61);
            v64 = v65;
            v67 = v63 + 1;
            if (__OFADD__(v63, 1))
            {
              goto LABEL_91;
            }
          }

          else
          {
            if (v63 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_92;
            }

            v64 = *(v61 + 8 * v63 + 32);

            v67 = v63 + 1;
            if (__OFADD__(v63, 1))
            {
              goto LABEL_91;
            }
          }

          v68 = *(v151 + 8);
          *&v159 = v64;
          MEMORY[0x1EEE9AC00](v65, v66);
          *(&v138 - 2) = &v159;
          v69 = v155;
          v71 = sub_1974159FC(sub_197415B38, (&v138 - 4), v70);
          v155 = v69;
          if ((v71 & 1) == 0)
          {
            break;
          }

          ++v63;
          if (v67 == v62)
          {
            goto LABEL_45;
          }
        }

        if (qword_1EAF2AD58 != -1)
        {
          swift_once();
        }

        v133 = byte_1EAF2B788;
        v135 = qword_1EAF2B790;
        v134 = unk_1EAF2B798;
        sub_19744BE3C();
        swift_allocError();
        *v136 = v133;
        *(v136 + 8) = v135;
        *(v136 + 16) = v134;
        swift_willThrow();

        v42 = v150;

        goto LABEL_85;
      }

LABEL_45:

      v42 = v150;
    }

    else
    {
      v72 = *(&v164 + 1);
      v73 = v165;
      __swift_mutable_project_boxed_opaque_existential_1(&v163, *(&v164 + 1));
      v30 = *(v73 + 48);

      (v30)(v74, v72, v73);
    }

    v75 = *(&v164 + 1);
    v76 = v165;
    __swift_project_boxed_opaque_existential_1(&v163, *(&v164 + 1));
    v77 = v155;
    (*(v76 + 64))(v75, v76);
    if (v77)
    {

LABEL_85:

      sub_197414BEC(&v163);

      return v42;
    }

    v155 = 0;
    v45 = v153 + 1;
    sub_197414BA4(&v163, v157);
    swift_beginAccess();
    sub_197419B14(&v159, v157);
    swift_endAccess();
    sub_197414BEC(&v159);
    sub_197414BEC(&v163);
    v43 = v148;
    if (v45 == v139)
    {
      goto LABEL_54;
    }
  }

  v50 = *(v48 + 40);
  sub_197522A5C();
  v51 = v165;
  __swift_project_boxed_opaque_existential_1(&v163, *(&v164 + 1));
  v52 = *(v51 + 8);

  sub_1975216BC();
  v53 = sub_197522A9C();
  v30 = v48 + 56;
  v54 = -1 << *(v48 + 32);
  v55 = v53 & ~v54;
  if (((*(v48 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
  {
LABEL_30:

    goto LABEL_31;
  }

  v56 = ~v54;
  while (1)
  {
    sub_197414BA4(*(v48 + 48) + 40 * v55, &v159);
    v57 = *(&v160 + 1);
    v58 = v161;
    __swift_project_boxed_opaque_existential_1(&v159, *(&v160 + 1));
    LOBYTE(v57) = sub_19749BC0C(&v163, v57, v58);
    sub_197414BEC(&v159);
    if (v57)
    {
      break;
    }

    v55 = (v55 + 1) & v56;
    if (((*(v30 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (qword_1EAF2AD40 != -1)
  {
    swift_once();
  }

  v129 = byte_1EAF2B740;
  v131 = qword_1EAF2B748;
  v130 = unk_1EAF2B750;
  sub_19744BE3C();
  swift_allocError();
  *v132 = v129;
  *(v132 + 8) = v131;
  *(v132 + 16) = v130;
  swift_willThrow();

  sub_197414BEC(&v163);

  return v42;
}

uint64_t sub_197414C40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B410, &unk_19752D5D0);
  result = sub_1975221AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_197414EA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_197522A5C();
  sub_19752180C();
  v9 = sub_197522A9C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_19752282C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_197414FF0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_197414FF0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_197414C40(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_19747F6BC();
      goto LABEL_16;
    }

    sub_197415170(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_197522A5C();
  sub_19752180C();
  result = sub_197522A9C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_19752282C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1975229BC();
  __break(1u);
  return result;
}

uint64_t sub_197415170(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B410, &unk_19752D5D0);
  result = sub_1975221AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_197522A5C();

      sub_19752180C();
      result = sub_197522A9C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1974153BC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1975220EC();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1974D4C04(v3, 0);
  sub_1974F7B2C(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void static ModelConfiguration.GroupContainer.none.getter(uint64_t a1@<X8>)
{
  *a1 = 256;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a6;
  v36 = a6[1];
  v14 = *(a6 + 1);
  v13 = *(a6 + 2);
  v15 = type metadata accessor for ModelConfiguration();
  v16 = v15;
  *(a7 + v15[15]) = 0;
  v17 = 0x746C7561666564;
  if (a2)
  {
    v17 = a1;
  }

  v18 = 0xE700000000000000;
  if (a2)
  {
    v18 = a2;
  }

  v19 = v15[10];
  v20 = (a7 + v15[5]);
  *v20 = v17;
  v20[1] = v18;
  *(a7 + v19) = a3;
  v21 = sub_1975212CC();
  v22 = *(v21 - 8);
  (*(v22 + 16))(a7, a4, v21);
  *(a7 + v16[14]) = 0;
  sub_19752128C();
  v23 = sub_19752188C();

  *(a7 + v16[12]) = v23 & 1;
  *(a7 + v16[11]) = a5;
  v24 = (a7 + v16[6]);
  *v24 = 0;
  v24[1] = 0;
  v25 = a7 + v16[8];
  *v25 = 256;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  *(a7 + v16[13]) = 0;
  v26 = a7 + v16[9];
  *v26 = v12;
  *(v26 + 1) = v36;
  *(v26 + 8) = v14;
  *(v26 + 16) = v13;
  if (v12 == 1)
  {
    v27 = [objc_opt_self() processInfo];
    sub_1974A953C(0xD000000000000020, 0x80000001975237E0);
    v29 = v28;

    if (v29)
    {
      v30 = 0;
      v13 = 0;
    }

    else
    {
      v30 = sub_1974A98BC();
      v13 = v34;
    }

    result = (*(v22 + 8))(a4, v21);
    v33 = (a7 + v16[7]);
    *v33 = v30;
    goto LABEL_12;
  }

  v31 = *(v22 + 8);

  result = v31(a4, v21);
  v33 = (a7 + v16[7]);
  if (v13)
  {
    *v33 = v14;
LABEL_12:
    v33[1] = v13;
    return result;
  }

  *v33 = 0;
  v33[1] = 0;
  return result;
}

uint64_t ModelContainer.__allocating_init(for:migrationPlan:configurations:)(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for ModelContainer();
  v8 = swift_allocObject();
  ModelContainer.init(for:migrationPlan:configurations:)(a1, a2, a3, a4);
  return v8;
}

{
  v8 = swift_allocObject();
  ModelContainer.init(for:migrationPlan:configurations:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_197415840(uint64_t a1)
{
  result = sub_197415898(&qword_1ED7C9B70, type metadata accessor for ModelConfiguration);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197415898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_19741598C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1974159FC(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x19A8E0960](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1975220EC();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t _s9SwiftData6SchemaC6EntityC2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (!v6 && (sub_19752282C() & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v7 = a1[5];
  v8 = a1[6];
  swift_beginAccess();
  v9 = a2[6];
  if (v8)
  {
    if (!v9 || (v7 != a2[5] || v8 != v9) && (sub_19752282C() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v9)
  {
LABEL_16:
    v18 = 0;
    return v18 & 1;
  }

  swift_beginAccess();
  v10 = a1[10];
  swift_beginAccess();
  v11 = a2[10];

  v12 = sub_197415D98(v10, v11);

  if ((v12 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v13 = a1[11];
  swift_beginAccess();
  v14 = a2[11];

  v15 = sub_19741616C(v13, v14);

  if ((v15 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v16 = a1[4];
  swift_beginAccess();
  v17 = a2[4];

  v18 = sub_197416704(v16, v17);

  return v18 & 1;
}

uint64_t sub_197415D98(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v2)
    {
      v3 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v3 = a2;
      }

      a2 = a1;
      goto LABEL_15;
    }

    if (a1 == a2)
    {
LABEL_62:
      v4 = 1;
      return v4 & 1;
    }

    if (*(a1 + 16) == *(a2 + 16))
    {
      v6 = 0;
      v7 = a1 + 56;
      v8 = 1 << *(a1 + 32);
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      else
      {
        v9 = -1;
      }

      v10 = v9 & *(a1 + 56);
      v11 = (v8 + 63) >> 6;
      v12 = a2 + 56;
      if (!v10)
      {
LABEL_24:
        v15 = v6;
        while (1)
        {
          v6 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v6 >= v11)
          {
            goto LABEL_62;
          }

          v16 = *(v7 + 8 * v6);
          ++v15;
          if (v16)
          {
            v13 = __clz(__rbit64(v16));
            v14 = (v16 - 1) & v16;
            goto LABEL_29;
          }
        }

LABEL_66:
        __break(1u);
        return MEMORY[0x1EEE6A200](a1, a2);
      }

      while (2)
      {
        v13 = __clz(__rbit64(v10));
        v14 = (v10 - 1) & v10;
LABEL_29:
        v40 = a1;
        v41 = a2;
        v17 = *(*(a1 + 48) + 8 * (v13 | (v6 << 6)));
        v18 = *(a2 + 40);
        sub_197522A5C();
        swift_beginAccess();
        v19 = v17[2];
        v20 = v17[3];

        sub_19752180C();

        v21 = sub_197522A9C();
        v22 = -1 << *(v41 + 32);
        v23 = v21 & ~v22;
        if ((*(v12 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          v37 = v14;
          v38 = v11;
          v39 = v7;
          v24 = ~v22;
          v25 = *(v41 + 48);
          swift_beginAccess();
          swift_beginAccess();
          while (1)
          {
            v26 = *(v25 + 8 * v23);
            swift_beginAccess();
            v27 = v26[2] == v17[2] && v26[3] == v17[3];
            if (v27 || (sub_19752282C() & 1) != 0)
            {
              a1 = swift_beginAccess();
              v28 = v26[6];
              v29 = v17[6];
              v30 = *(v28 + 16);
              if (v30 == *(v29 + 16))
              {
                if (v30)
                {
                  v31 = v28 == v29;
                }

                else
                {
                  v31 = 1;
                }

                if (!v31)
                {
                  v32 = (v29 + 68);
                  v33 = (v28 + 68);
                  while (v30)
                  {
                    if (*(v33 - 4) != *(v32 - 4))
                    {
                      goto LABEL_32;
                    }

                    if ((*(v33 - 2) ^ *(v32 - 2)))
                    {
                      goto LABEL_32;
                    }

                    if ((*v33 ^ *v32))
                    {
                      goto LABEL_32;
                    }

                    if ((*(v33 - 3) ^ *(v32 - 3)))
                    {
                      goto LABEL_32;
                    }

                    if ((*(v33 - 1) ^ *(v32 - 1)))
                    {
                      goto LABEL_32;
                    }

                    v34 = *(v33 - 36);
                    v35 = *(v32 - 36);
                    if ((v34 ^ v35))
                    {
                      goto LABEL_32;
                    }

                    if ((v34 & v35) == 1)
                    {
                      a2 = *(v33 - 12);
                      v36 = *(v32 - 12);
                      if (a2)
                      {
                        if (!v36)
                        {
                          goto LABEL_32;
                        }

                        a1 = *(v33 - 20);
                        if (a1 != *(v32 - 20) || a2 != v36)
                        {
                          a1 = sub_19752282C();
                          if ((a1 & 1) == 0)
                          {
                            goto LABEL_32;
                          }
                        }
                      }

                      else if (v36)
                      {
                        goto LABEL_32;
                      }
                    }

                    v33 += 40;
                    v32 += 40;
                    if (!--v30)
                    {
                      goto LABEL_31;
                    }
                  }

                  __break(1u);
                  goto LABEL_66;
                }

LABEL_31:
                swift_beginAccess();
                if (v26[7] == v17[7])
                {
                  break;
                }
              }
            }

LABEL_32:
            v23 = (v23 + 1) & v24;
            if (((*(v12 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          a1 = v40;
          a2 = v41;
          v11 = v38;
          v7 = v39;
          v10 = v37;
          if (v37)
          {
            continue;
          }

          goto LABEL_24;
        }

        break;
      }

LABEL_63:
    }

    v4 = 0;
    return v4 & 1;
  }

  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v3 = a1;
  }

  if (!v2)
  {
LABEL_15:
    v4 = sub_1974F6334(v3, a2);
    return v4 & 1;
  }

  if (a2 < 0)
  {
    a1 = a2;
  }

  else
  {
    a1 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  a2 = v3;

  return MEMORY[0x1EEE6A200](a1, a2);
}

uint64_t sub_19741616C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      a2 = a1;
    }

    else
    {
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (v2 < 0)
      {
        a1 = v2;
      }

      else
      {
        a1 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x1EEE6A200](a1, a2);
    }

    v5 = sub_1974F6334(a2, v2);
    return v5 & 1;
  }

  if (v3)
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v4 = a2;
    }

    v5 = sub_1974F6334(v4, a1);
    return v5 & 1;
  }

  if (a1 == a2)
  {
LABEL_92:
    v5 = 1;
    return v5 & 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
LABEL_94:
    v5 = 0;
    return v5 & 1;
  }

  v6 = 0;
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a2 + 56;
  if (!v10)
  {
    goto LABEL_24;
  }

  while (2)
  {
    v47 = v11;
    v48 = v7;
    v13 = __clz(__rbit64(v10));
    v46 = (v10 - 1) & v10;
LABEL_29:
    v49 = a1;
    v16 = *(*(a1 + 48) + 8 * (v13 | (v6 << 6)));
    v17 = *(v2 + 40);
    sub_197522A5C();
    swift_beginAccess();
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);

    sub_19752180C();

    v20 = sub_197522A9C();
    v21 = -1 << *(v2 + 32);
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v22 = v20 & ~v21;
    if (((*(v12 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_93:

      goto LABEL_94;
    }

    v23 = ~v21;
    while (1)
    {
      v24 = *(*(v2 + 48) + 8 * v22);
      swift_beginAccess();
      v25 = *(v24 + 16) == *(v16 + 16) && *(v24 + 24) == *(v16 + 24);
      if (!v25 && (sub_19752282C() & 1) == 0)
      {
        goto LABEL_33;
      }

      a1 = swift_beginAccess();
      v26 = *(v24 + 56);
      v27 = *(v16 + 56);
      v28 = *(v26 + 16);
      if (v28 != *(v27 + 16))
      {
        goto LABEL_33;
      }

      if (v28)
      {
        v29 = v26 == v27;
      }

      else
      {
        v29 = 1;
      }

      if (!v29)
      {
        v30 = (v26 + 32);
        v31 = (v27 + 32);
        while (v28)
        {
          if (*v30 != *v31)
          {
            goto LABEL_33;
          }

          ++v30;
          ++v31;
          if (!--v28)
          {
            goto LABEL_48;
          }
        }

        __break(1u);
        goto LABEL_97;
      }

LABEL_48:
      swift_beginAccess();
      if (*(v24 + 64) != *(v16 + 64))
      {
        goto LABEL_33;
      }

      swift_beginAccess();
      if ((*(v24 + 72) != *(v16 + 72) || *(v24 + 80) != *(v16 + 80)) && (sub_19752282C() & 1) == 0)
      {
        goto LABEL_33;
      }

      swift_beginAccess();
      v32 = *(v24 + 88);
      if (v32 > 1)
      {
        v37 = 0x65646163736163;
        if (v32 == 2)
        {
          v34 = 0x65646163736163;
        }

        else
        {
          v34 = 2037278052;
        }

        if (v32 == 2)
        {
          v36 = 0xE700000000000000;
        }

        else
        {
          v36 = 0xE400000000000000;
        }

        v33 = 0x7966696C6C756ELL;
        v35 = 0xE800000000000000;
      }

      else
      {
        v33 = 0x7966696C6C756ELL;
        if (*(v24 + 88))
        {
          v34 = 0x7966696C6C756ELL;
        }

        else
        {
          v34 = 0x6E6F697463416F6ELL;
        }

        v35 = 0xE800000000000000;
        if (*(v24 + 88))
        {
          v36 = 0xE700000000000000;
        }

        else
        {
          v36 = 0xE800000000000000;
        }

        v37 = 0x65646163736163;
      }

      if (*(v16 + 88) == 2)
      {
        v38 = 0xE700000000000000;
      }

      else
      {
        v37 = 2037278052;
        v38 = 0xE400000000000000;
      }

      if (*(v16 + 88))
      {
        v35 = 0xE700000000000000;
      }

      else
      {
        v33 = 0x6E6F697463416F6ELL;
      }

      if (*(v16 + 88) <= 1u)
      {
        v39 = v33;
      }

      else
      {
        v39 = v37;
      }

      if (*(v16 + 88) <= 1u)
      {
        v40 = v35;
      }

      else
      {
        v40 = v38;
      }

      if (v34 == v39 && v36 == v40)
      {
      }

      else
      {
        v41 = sub_19752282C();

        if ((v41 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      swift_beginAccess();
      v42 = *(v24 + 104);
      v43 = *(v16 + 104);
      if (!v42)
      {
        if (!v43)
        {
          break;
        }

LABEL_32:

        goto LABEL_33;
      }

      if (!v43)
      {
        goto LABEL_32;
      }

      if (*(v24 + 96) == *(v16 + 96) && v42 == v43)
      {
        break;
      }

      v44 = sub_19752282C();

      if (v44)
      {
        goto LABEL_90;
      }

LABEL_33:
      v22 = (v22 + 1) & v23;
      if (((*(v12 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_93;
      }
    }

LABEL_90:

    v7 = v48;
    a1 = v49;
    v10 = v46;
    v11 = v47;
    if (v46)
    {
      continue;
    }

    break;
  }

LABEL_24:
  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_92;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v47 = v11;
      v48 = v7;
      v13 = __clz(__rbit64(v15));
      v46 = (v15 - 1) & v15;
      goto LABEL_29;
    }
  }

LABEL_97:
  __break(1u);
  return MEMORY[0x1EEE6A200](a1, a2);
}